int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/shift.c.inc", 73);
    return 0;
  }

  else
  {
    r->neg = a->neg;
    v6 = n >> 6;
    v7 = (n >> 6) + 1;
    result = bn_wexpand(&r->d, (v7 + a->top));
    if (result)
    {
      d = a->d;
      v10 = r->d;
      top = a->top;
      r->d[(top + v6)] = 0;
      v12 = n & 0x3F;
      if ((n & 0x3F) != 0)
      {
        if (top >= 1)
        {
          v13 = v10[top + v6];
          v14 = &d[top - 1];
          v15 = top + 1;
          v16 = &v10[top + v6];
          do
          {
            v17 = *v14--;
            *v16 = v13 | (v17 >> (64 - v12));
            v13 = v17 << v12;
            *--v16 = v17 << v12;
            --v15;
          }

          while (v15 > 1);
        }
      }

      else if (top >= 1)
      {
        v18 = top - 1;
        do
        {
          v10[v6 + v18] = d[v18];
          v19 = v18-- + 1;
        }

        while (v19 > 1);
      }

      if (n >= 0x40)
      {
        bzero(v10, 8 * v6);
        LODWORD(top) = a->top;
      }

      r->top = v7 + top;
      bn_set_minimal_width(r);
      return 1;
    }
  }

  return result;
}

int BN_lshift1(BIGNUM *r, const BIGNUM *a)
{
  if (r == a)
  {
    result = bn_wexpand(&r->d, a->top + 1);
    if (!result)
    {
      return result;
    }

    top = a->top;
  }

  else
  {
    r->neg = a->neg;
    result = bn_wexpand(&r->d, a->top + 1);
    if (!result)
    {
      return result;
    }

    top = a->top;
    r->top = top;
  }

  if (top < 1)
  {
    return 1;
  }

  v6 = 0;
  d = r->d;
  v8 = a->d;
  do
  {
    v10 = *v8++;
    v9 = v10;
    *d++ = v6 | (2 * v10);
    v6 = v10 >> 63;
    --top;
  }

  while (top);
  if ((v9 & 0x8000000000000000) == 0)
  {
    return 1;
  }

  result = 1;
  *d = 1;
  ++r->top;
  return result;
}

void bn_rshift_words(void *__dst, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v5 = __dst;
  v6 = a3 >> 6;
  v7 = a4 - v6;
  if (a4 <= v6)
  {
    if (!a4)
    {
      return;
    }

    v13 = 8 * a4;
    goto LABEL_14;
  }

  v9 = a3 & 0x3F;
  if ((a3 & 0x3F) != 0)
  {
    if (a4 - 1 > v6)
    {
      v10 = ~v6 + a4;
      v11 = (a2 + 8 * v6 + 8);
      v12 = __dst;
      do
      {
        *v12++ = (*v11 << (64 - v9)) | (*(v11 - 1) >> v9);
        ++v11;
        --v10;
      }

      while (v10);
    }

    __dst[a4 - 1 - v6] = *(a2 + 8 * (a4 - 1)) >> v9;
  }

  else if (8 * v7)
  {
    memmove(__dst, (a2 + 8 * v6), 8 * v7);
  }

  if (a3 >= 0x40)
  {
    v13 = 8 * v6;
    __dst = &v5[a4 - v6];
LABEL_14:

    bzero(__dst, v13);
  }
}

int BN_rshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/shift.c.inc", 158);
    return 0;
  }

  else
  {
    result = bn_wexpand(&r->d, a->top);
    if (result)
    {
      bn_rshift_words(r->d, a->d, n, a->top);
      r->neg = a->neg;
      r->top = a->top;
      bn_set_minimal_width(r);
      return 1;
    }
  }

  return result;
}

uint64_t bn_rshift_secret_shift(uint64_t a1, const BIGNUM *a2, unsigned int a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (v9 = v8, BN_copy(a1, a2)) && bn_wexpand(v9, *(a1 + 8)))
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = v10 << 6;
      do
      {
        v13 = 1;
        bn_rshift_words(*v9, *a1, 1 << v11, *(a1 + 8));
        bn_select_words(*a1, -((a3 >> v11++) & 1), *v9, *a1, *(a1 + 8));
      }

      while (v12 >> v11);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  BN_CTX_end(ctx);
  return v13;
}

int BN_rshift1(BIGNUM *r, const BIGNUM *a)
{
  result = bn_wexpand(&r->d, a->top);
  if (result)
  {
    top = a->top;
    if (top)
    {
      d = r->d;
      v7 = a->d;
      if (top != 1)
      {
        v8 = v7 + 1;
        v9 = top - 1;
        v10 = r->d;
        do
        {
          *v10++ = *(v8++ - 1) >> 1;
          --v9;
        }

        while (v9);
      }

      d[top - 1] = v7[top - 1] >> 1;
    }

    r->top = top;
    r->neg = a->neg;
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
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
    result = bn_wexpand(&a->d, (v4 + 1));
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

uint64_t bn_is_bit_set_words(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >> 6 >= a2)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 8 * (a3 >> 6)) >> a3) & 1;
  }
}

int BN_is_bit_set(const BIGNUM *a, int n)
{
  if (n < 0 || (v2 = n >> 6, v2 >= a->top))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    return (a->d[v2] >> n) & 1;
  }

  return v3;
}

uint64_t BN_count_low_zero_bits(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  v4 = 0;
  v5 = *v2;
  v6 = v1 << 6;
  do
  {
    v7 = *v5++;
    v8 = (((v7 << 32) - 1) & ~(v7 << 32)) >> 63;
    v9 = v8 & 0x20;
    v10 = v8 & HIDWORD(v7) | v7 & ~v8;
    v11 = (((v10 << 48) - 1) & ~(v10 << 48)) >> 63;
    v12 = v11 & 0x10;
    v13 = v11 & (v10 >> 16) | v10 & ~v11;
    v14 = (((v13 << 56) - 1) & ~(v13 << 56)) >> 63;
    v15 = v14 & 8;
    v16 = v14 & (v13 >> 8) | v13 & ~v14;
    v17 = (((v16 << 60) - 1) & ~(v16 << 60)) >> 63;
    v18 = v17 & 4;
    v19 = v17 & (v16 >> 4) | v16 & ~v17;
    v20 = (((v19 << 62) - 1) & ~(v19 << 62)) >> 63;
    LODWORD(v17) = v20 & 2;
    v21 = v20 & (v19 >> 2);
    LODWORD(v19) = v19 & ~v20;
    v22 = ((v7 - 1) & ~v7) >> 63;
    v23 = v9 | v12 | v15 | v18 | v17 | (((((v21 | v19) << 63) - 1) & ~((v21 | v19) << 63)) >> 63);
    LODWORD(v19) = v22 | v4;
    v4 |= ~v22;
    result = (v3 + v23) & ~v19 | result;
    v3 += 64;
  }

  while (v6 != v3);
  return result;
}

uint64_t bn_jacobi(const BIGNUM *a1, const BIGNUM *a2, BN_CTX *a3)
{
  if (!BN_is_odd(a2))
  {
    v6 = 104;
    v7 = 73;
    goto LABEL_5;
  }

  if (!BN_is_negative(a2))
  {
    BN_CTX_start(a3);
    v9 = BN_CTX_get(a3);
    v10 = BN_CTX_get(a3);
    if (v10)
    {
      v11 = v10;
      if (BN_copy(v9, a1))
      {
        if (BN_copy(v11, a2))
        {
          v12 = 1;
          if (BN_is_zero(v9))
          {
LABEL_10:
            if (BN_is_one(v11))
            {
              v8 = v12;
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_38;
          }

          v13 = v11;
          while (1)
          {
            v11 = v9;
            v9 = v13;
            v14 = -1;
            do
            {
              ++v14;
            }

            while (!BN_is_bit_set(v11, v14));
            if (!BN_rshift(v11, v11, v14))
            {
              break;
            }

            if (v14)
            {
              if (v9->top)
              {
                v15 = *v9->d & 7;
              }

              else
              {
                v15 = 0;
              }

              v12 *= bn_jacobi_tab[v15];
            }

            top = v11->top;
            if (v11->neg)
            {
              if (top)
              {
                v17 = ~*v11->d;
              }

              else
              {
                LOBYTE(v17) = -1;
              }
            }

            else if (top)
            {
              v17 = *v11->d;
            }

            else
            {
              LOBYTE(v17) = 0;
            }

            if (v9->top)
            {
              v18 = *v9->d;
            }

            else
            {
              LOBYTE(v18) = 0;
            }

            if (!BN_nnmod(v9, v9, v11, a3))
            {
              break;
            }

            if ((v17 & v18 & 2) != 0)
            {
              v12 = -v12;
            }

            v11->neg = 0;
            is_zero = BN_is_zero(v9);
            v13 = v11;
            if (is_zero)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    v8 = 4294967294;
LABEL_38:
    BN_CTX_end(a3);
    return v8;
  }

  v6 = 109;
  v7 = 79;
LABEL_5:
  ERR_put_error(3, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/jacobi.c.inc", v7);
  return 4294967294;
}

int BIO_puts(BIO *bp, const char *buf)
{
  v4 = strlen(buf);
  if (v4 >> 31)
  {
    ERR_put_error(17, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", 201);
    return -1;
  }

  else
  {

    return BIO_write(bp, buf, v4);
  }
}

BIO *__cdecl BIO_find_type(BIO *b, int bio_type)
{
  for (; b; b = b->ptr)
  {
    if (b->method)
    {
      type = b->method->type;
      if (bio_type)
      {
        if (type == bio_type)
        {
          return b;
        }
      }

      else if ((type & bio_type) != 0)
      {
        return b;
      }
    }
  }

  return b;
}

int BIO_indent(BIO *b, int indent, int max)
{
  if (indent >= max)
  {
    v4 = max;
  }

  else
  {
    v4 = indent;
  }

  v5 = v4 + 1;
  while (--v5)
  {
    if (BIO_puts(b, " ") != 1)
    {
      return 0;
    }
  }

  return 1;
}

void *EVP_AEAD_CTX_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OPENSSL_malloc(0x248uLL);
  bzero(v8, 0x248uLL);
  if (!EVP_AEAD_CTX_init(v8, a1, a2, a3, a4) && v8)
  {
    if (*v8)
    {
      (*(*v8 + 24))(v8);
      *v8 = 0;
    }

    OPENSSL_free(v8);
    return 0;
  }

  return v8;
}

uint64_t EVP_AEAD_CTX_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 8))
  {

    return EVP_AEAD_CTX_init_with_direction(a1, a2, a3, a4, a5, 0);
  }

  else
  {
    ERR_put_error(30, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", 65);
    *a1 = 0;
    return 0;
  }
}

uint64_t EVP_AEAD_CTX_seal(uint64_t a1, char *a2, unint64_t *a3, size_t a4, uint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  if (__CFADD__(a8, *(*a1 + 2)))
  {
    v12 = 117;
    v13 = 123;
LABEL_10:
    ERR_put_error(30, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", v13);
    goto LABEL_11;
  }

  if (a4 < a8)
  {
    v12 = 103;
    v13 = 128;
    goto LABEL_10;
  }

  if (a7 != a2 && &a2[a4] > a7 && &a7[a8] > a2)
  {
    v12 = 115;
    v13 = 133;
    goto LABEL_10;
  }

  v16 = *(*a1 + 40);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (v16(a1, a2, &a2[a8], &v17, a4 - a8))
  {
    v14 = v17 + a8;
    result = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (a4)
  {
    bzero(a2, a4);
  }

  v14 = 0;
  result = 0;
LABEL_14:
  *a3 = v14;
  return result;
}

BOOL RSA_encrypt(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a1)
  {
    v10 = 67;
    v11 = 125;
    goto LABEL_7;
  }

  if (!a2)
  {
    v10 = 67;
    v11 = 129;
    goto LABEL_7;
  }

  if (BN_num_bytes(*(a1 + 8)) < 0x401)
  {
    v18 = 0;
    v19 = 0;
    if (!RSA_public_key_to_bytes(&v19, &v18, a1) || !v19)
    {
      return 0;
    }

    v14 = ccrsa_import_pub_n();
    v15 = malloc_type_malloc(24 * v14 + 40, 0x10600407F0B3959uLL);
    if (!v15)
    {
      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        RSA_encrypt_cold_3();
      }

      return 0;
    }

    v16 = v15;
    *v15 = v14;
    if (ccrsa_import_pub())
    {
      OPENSSL_free(v19);
      free(v16);
      return 0;
    }

    *a2 = ccrsa_block_size();
    switch(a7)
    {
      case 4:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          RSA_encrypt_cold_2();
        }

        v17 = 175;
        break;
      case 3:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          RSA_encrypt_cold_1();
        }

        v17 = 180;
        break;
      case 1:
        ccrng();
        v12 = ccrsa_encrypt_eme_pkcs1v15() == 0;
LABEL_32:
        OPENSSL_free(v19);
        free(v16);
        return v12;
      default:
LABEL_31:
        v12 = 0;
        goto LABEL_32;
    }

    ERR_put_error(4, 0, 143, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v17);
    goto LABEL_31;
  }

  v10 = 500;
  v11 = 133;
LABEL_7:
  ERR_put_error(4, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v11);
  return 0;
}

uint64_t RSA_padding_check_PKCS1_OAEP_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_padding_check_PKCS1_OAEP_mgf1_cold_1();
  }

  return 0;
}

uint64_t RSA_padding_add_PKCS1_OAEP_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_padding_add_PKCS1_OAEP_mgf1_cold_1();
  }

  return 0;
}

int RSA_verify(int type, const unsigned __int8 *m, unsigned int m_length, unsigned __int8 *sigbuf, unsigned int siglen, RSA *rsa)
{
  if (!rsa)
  {
    v12 = 67;
    v13 = 391;
    goto LABEL_11;
  }

  v7 = *&siglen;
  v9 = *&m_length;
  if (BN_num_bytes(rsa->version) >= 0x401)
  {
    v12 = 500;
    v13 = 395;
LABEL_11:
    ERR_put_error(4, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v13);
    return 0;
  }

  v14 = BN_num_bytes(rsa->version);
  v22 = 0xAAAAAAAAAAAAAAAALL;
  __s2 = 0;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0;
  if (!rsa->version || !rsa->meth)
  {
    v12 = 144;
    v13 = 404;
    goto LABEL_11;
  }

  if (type == 114 && v9 != 36)
  {
    v12 = 125;
    v13 = 409;
    goto LABEL_11;
  }

  v17 = malloc_type_malloc(v14, 0x76DCC784uLL);
  if (!v17)
  {
    v12 = 65;
    v13 = 415;
    goto LABEL_11;
  }

  v19 = v17;
  if (RSA_verify_raw(rsa, &v21, v17, v18, sigbuf, v7, 1) && RSA_add_pkcs1_prefix(&__s2, &v22, &v20, type, m, v9))
  {
    if (v21 == v22 && !memcmp(v19, __s2, v21))
    {
      v15 = 1;
      goto LABEL_20;
    }

    ERR_put_error(4, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 428);
  }

  v15 = 0;
LABEL_20:
  free(v19);
  if (v20 && __s2)
  {
    free(__s2);
  }

  return v15;
}

uint64_t RSA_add_pkcs1_prefix(void *a1, void *a2, _DWORD *a3, int a4, const void *a5, size_t a6)
{
  if (a4 == 4)
  {
    v12 = &kPKCS1SigPrefixes;
LABEL_9:
    v16 = v12[4];
    v17 = v16 + a6;
    if (v16 + a6 >= v16)
    {
      v20 = v17;
      v21 = malloc_type_malloc(v17, 0xE9349F5FuLL);
      if (v21)
      {
        v22 = v21;
        memcpy(v21, v12 + 5, v16);
        memcpy(&v22[v16], a5, a6);
        *a1 = v22;
        *a2 = v20;
        result = 1;
        *a3 = 1;
        return result;
      }

      v18 = 65;
      v19 = 545;
    }

    else
    {
      v18 = 140;
      v19 = 539;
    }
  }

  else if (a4 == 114)
  {
    if (a6 == 36)
    {
      *a1 = a5;
      *a2 = 36;
      *a3 = 0;
      return 1;
    }

    v18 = 125;
    v19 = 516;
  }

  else
  {
    v13 = &kPKCS1SigPrefixes;
    v14 = 6;
    while (--v14)
    {
      v12 = (v13 + 6);
      v15 = v13[6];
      v13 += 6;
      if (v15 == a4)
      {
        goto LABEL_9;
      }
    }

    v18 = 142;
    v19 = 559;
  }

  ERR_put_error(4, 0, v18, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v19);
  return 0;
}

uint64_t RSA_decrypt()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_decrypt_cold_1();
  }

  return 0;
}

uint64_t rsa_default_sign_raw()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    rsa_default_sign_raw_cold_1();
  }

  return 0;
}

uint64_t RSA_sign_raw()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_raw_cold_1();
  }

  return 0;
}

int RSA_sign(int type, const unsigned __int8 *m, unsigned int m_length, unsigned __int8 *sigret, unsigned int *siglen, RSA *rsa)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_cold_1();
  }

  return 0;
}

uint64_t RSA_sign_pss_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_pss_mgf1_cold_1();
  }

  return 0;
}

uint64_t ec_GFp_nistp224_point_get_affine_coordinates(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/p224-64.c.inc", 868);
    return 0;
  }

  else
  {
    v8 = *(a2 + 152) >> 48;
    v9 = *(a2 + 160) >> 40;
    v10 = *(a2 + 144);
    v31[0] = v10 & 0xFFFFFFFFFFFFFFLL;
    v31[1] = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30[0] = v11;
    v30[1] = v11;
    v29[5] = v11;
    v29[6] = v11;
    v29[3] = v11;
    v29[4] = v11;
    v29[1] = v11;
    v29[2] = v11;
    v29[0] = v11;
    v31[2] = v8 & 0xFFFFFFFFFFFFFFLL;
    v31[3] = v9 & 0xFFFFFFFFFFFFFFLL;
    v42 = v11;
    v43 = v11;
    v41[0] = v11;
    v41[1] = v11;
    v40[0] = v11;
    v40[1] = v11;
    v39[0] = v11;
    v39[1] = v11;
    v37 = v11;
    v38 = v11;
    v35 = v11;
    v36 = v11;
    v33 = v11;
    v34 = v11;
    v32 = v11;
    p224_felem_square(&v32, v31);
    p224_felem_reduce(&v42, &v32);
    p224_felem_mul(&v32, v31, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_square(&v32, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_mul(&v32, v31, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_square(&v32, &v42);
    p224_felem_reduce(v41, &v32);
    p224_felem_square(&v32, v41);
    p224_felem_reduce(v41, &v32);
    p224_felem_square(&v32, v41);
    p224_felem_reduce(v41, &v32);
    p224_felem_mul(&v32, v41, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_square(&v32, &v42);
    p224_felem_reduce(v41, &v32);
    v12 = 5;
    do
    {
      p224_felem_square(&v32, v41);
      p224_felem_reduce(v41, &v32);
      --v12;
    }

    while (v12);
    p224_felem_mul(&v32, v41, &v42);
    p224_felem_reduce(v41, &v32);
    p224_felem_square(&v32, v41);
    p224_felem_reduce(v40, &v32);
    v13 = 11;
    do
    {
      p224_felem_square(&v32, v40);
      p224_felem_reduce(v40, &v32);
      --v13;
    }

    while (v13);
    p224_felem_mul(&v32, v40, v41);
    p224_felem_reduce(v41, &v32);
    p224_felem_square(&v32, v41);
    p224_felem_reduce(v40, &v32);
    v14 = 23;
    do
    {
      p224_felem_square(&v32, v40);
      p224_felem_reduce(v40, &v32);
      --v14;
    }

    while (v14);
    p224_felem_mul(&v32, v40, v41);
    p224_felem_reduce(v40, &v32);
    p224_felem_square(&v32, v40);
    p224_felem_reduce(v39, &v32);
    v15 = 47;
    do
    {
      p224_felem_square(&v32, v39);
      p224_felem_reduce(v39, &v32);
      --v15;
    }

    while (v15);
    p224_felem_mul(&v32, v40, v39);
    p224_felem_reduce(v40, &v32);
    p224_felem_square(&v32, v40);
    p224_felem_reduce(v39, &v32);
    v16 = 23;
    do
    {
      p224_felem_square(&v32, v39);
      p224_felem_reduce(v39, &v32);
      --v16;
    }

    while (v16);
    p224_felem_mul(&v32, v41, v39);
    p224_felem_reduce(v41, &v32);
    v17 = 6;
    do
    {
      p224_felem_square(&v32, v41);
      p224_felem_reduce(v41, &v32);
      --v17;
    }

    while (v17);
    p224_felem_mul(&v32, v41, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_square(&v32, &v42);
    p224_felem_reduce(&v42, &v32);
    p224_felem_mul(&v32, &v42, v31);
    p224_felem_reduce(&v42, &v32);
    v18 = 97;
    do
    {
      p224_felem_square(&v32, &v42);
      p224_felem_reduce(&v42, &v32);
      --v18;
    }

    while (v18);
    p224_felem_mul(&v32, &v42, v40);
    p224_felem_reduce(v30, &v32);
    p224_felem_square(v29, v30);
    p224_felem_reduce(v31, v29);
    if (a3)
    {
      v19 = *(a2 + 8);
      *(&v20 + 1) = v19;
      *&v20 = *a2;
      *&v32 = *a2 & 0xFFFFFFFFFFFFFFLL;
      *(&v32 + 1) = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v20 + 1) = *(a2 + 16);
      *&v20 = v19;
      v21 = v20 >> 48;
      v22 = *(a2 + 16);
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v23;
      v43 = v23;
      *&v33 = v21 & 0xFFFFFFFFFFFFFFLL;
      *(&v33 + 1) = (v22 >> 40) & 0xFFFFFFFFFFFFFFLL;
      p224_felem_mul(v29, &v32, v31);
      p224_felem_reduce(&v42, v29);
      p224_felem_to_generic(a3, &v42);
    }

    if (a4)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v24;
      v43 = v24;
      v25 = *(a2 + 80);
      *(&v26 + 1) = v25;
      *&v26 = *(a2 + 72);
      *&v32 = v26 & 0xFFFFFFFFFFFFFFLL;
      *(&v32 + 1) = (v26 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v26 + 1) = *(a2 + 88);
      *&v26 = v25;
      v27 = (v26 >> 48) & 0xFFFFFFFFFFFFFFLL;
      v28 = *(a2 + 88);
      *&v33 = v27;
      *(&v33 + 1) = (v28 >> 40) & 0xFFFFFFFFFFFFFFLL;
      p224_felem_mul(v29, v31, v30);
      p224_felem_reduce(v31, v29);
      p224_felem_mul(v29, &v32, v31);
      p224_felem_reduce(&v42, v29);
      p224_felem_to_generic(a4, &v42);
    }

    return 1;
  }
}

unint64_t *ec_GFp_nistp224_add(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  *(&v6 + 1) = v5;
  *&v6 = *a3;
  v36.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v36.i64[1] = (v6 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v6 + 1) = a3[2];
  *&v6 = v5;
  v7 = (v6 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a3 + 1);
  v37 = v7;
  v38 = (v8 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v9 = a3[10];
  *(&v8 + 1) = v9;
  *&v8 = a3[9];
  v33.i64[0] = v8 & 0xFFFFFFFFFFFFFFLL;
  v33.i64[1] = (v8 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v8 + 1) = a3[11];
  *&v8 = v9;
  v10 = (v8 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a3 + 11);
  v34 = v10;
  v35 = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v12 = a3[19];
  *(&v11 + 1) = v12;
  *&v11 = a3[18];
  v30.i64[0] = v11 & 0xFFFFFFFFFFFFFFLL;
  v30.i64[1] = (v11 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v11 + 1) = a3[20];
  *&v11 = v12;
  v13 = (v11 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v14 = *(a3 + 10);
  v31 = v13;
  v32 = (v14 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v15 = a4[1];
  *(&v14 + 1) = v15;
  *&v14 = *a4;
  v29[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v29[1] = (v14 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v14 + 1) = a4[2];
  *&v14 = v15;
  v16 = (v14 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v17 = *(a4 + 1);
  v29[2] = v16;
  v29[3] = (v17 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v18 = a4[10];
  *(&v17 + 1) = v18;
  *&v17 = a4[9];
  v28[0] = v17 & 0xFFFFFFFFFFFFFFLL;
  v28[1] = (v17 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v17 + 1) = a4[11];
  *&v17 = v18;
  v19 = (v17 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v20 = *(a4 + 11);
  v28[2] = v19;
  v28[3] = (v20 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v21 = a4[19];
  *(&v20 + 1) = v21;
  *&v20 = a4[18];
  v25.i64[0] = v20 & 0xFFFFFFFFFFFFFFLL;
  v25.i64[1] = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v20 + 1) = a4[20];
  *&v20 = v21;
  v22 = (v20 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v23 = *(a4 + 10);
  v26 = v22;
  v27 = (v23 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_point_add(&v36, &v33, &v30, &v36, &v33, &v30, 0, v29, v28, &v25);
  p224_felem_to_generic(a2, &v36);
  p224_felem_to_generic(a2 + 9, &v33);
  return p224_felem_to_generic(a2 + 18, &v30);
}

unint64_t *ec_GFp_nistp224_dbl(uint64_t a1, unint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v21.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v21.i64[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = (v5 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v7 = *(a3 + 1);
  v22 = v6;
  v23 = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = a3[10];
  *(&v7 + 1) = v8;
  *&v7 = a3[9];
  v18.i64[0] = v7 & 0xFFFFFFFFFFFFFFLL;
  v18.i64[1] = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[11];
  *&v7 = v8;
  v9 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v10 = *(a3 + 11);
  v19 = v9;
  v20 = (v10 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v11 = a3[19];
  *(&v10 + 1) = v11;
  *&v10 = a3[18];
  v15.i64[0] = v10 & 0xFFFFFFFFFFFFFFLL;
  v15.i64[1] = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v10 + 1) = a3[20];
  *&v10 = v11;
  v12 = (v10 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v13 = *(a3 + 10);
  v16 = v12;
  v17 = (v13 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_point_double(&v21, v18.i64, v15.i64, &v21, &v18, &v15);
  p224_felem_to_generic(a2, &v21);
  p224_felem_to_generic(a2 + 9, &v18);
  return p224_felem_to_generic(a2 + 18, &v15);
}

unint64_t *ec_GFp_nistp224_point_mul(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  ec_GFp_nistp224_make_precomp(__b, a3);
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v6;
  v25[1] = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = 1;
  v8 = 220;
  v30 = 0u;
  v31 = 0u;
  do
  {
    if (!v7)
    {
      p224_point_double(&v26, v28.i64, v30.i64, &v26, &v28, &v30);
    }

    if (-858993459 * v8 < 0x33333334)
    {
      if (v8 == 220)
      {
        v10 = 0;
      }

      else
      {
        v10 = 32 * ((*(a4 + (((v8 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 4)) & 1);
      }

      v9 = v8 - 1;
      if (v8 - 1 <= 0xDF)
      {
        v11 = (*(a4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = (16 * ((*(a4 + (((v8 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 3)) & 1)) | v10 | (8 * ((*(a4 + (((v8 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 2)) & 1)) | (4 * ((*(a4 + (((v8 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 1)) & 1)) | (2 * ((*(a4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1));
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v18 = 0xAAAAAAAAAAAAAAAALL;
      ec_GFp_nistp_recode_scalar_bits(&v18, &v17, v12 | v11);
      p224_select_point(v17, 17, __b, &v19);
      p224_felem_neg(v25, &v21);
      v13 = 0;
      v14 = vdupq_n_s64(-v18);
      do
      {
        *(&v21 + v13 * 16) = vbslq_s8(v14, v25[v13], *(&v21 + v13 * 16));
        ++v13;
      }

      while (v13 != 2);
      if (v7)
      {
        v28 = v21;
        v29 = v22;
        v30 = v23;
        v31 = v24;
        v26 = v19;
        v27 = v20;
      }

      else
      {
        p224_point_add(&v26, &v28, &v30, &v26, &v28, &v30, 0, &v19, &v21, &v23);
      }

      v7 = 0;
    }

    else
    {
      v9 = v8 - 1;
    }

    v8 = v9;
  }

  while (v9 < 0xDD);
  p224_felem_to_generic(a2, &v26);
  p224_felem_to_generic(a2 + 9, &v28);
  return p224_felem_to_generic(a2 + 18, &v30);
}

unint64_t *ec_GFp_nistp224_point_mul_base(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  v14 = v5;
  v15 = v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a3[3];
  v13 = *(a3 + 1);
  v7 = 195;
  v8 = *a3;
  do
  {
    if (v4)
    {
      p224_point_double(&v20, v22.i64, v24.i64, &v20, &v22, &v24);
    }

    v9 = vandq_s8(vshlq_u64(vshlq_u64(v13, vsubq_s64(xmmword_1A90A9AC0, vdupq_n_s64(v7 - 168))), xmmword_1A90A9AD0), xmmword_1A90A9AE0);
    p224_select_point(v9.i64[1] | (8 * ((v6 >> (v7 + 92)) & 1)) | v9.i64[0] | (v8 >> (v7 + 116)) & 1, 16, &unk_1A90AA130, &v14);
    if (v4)
    {
      p224_point_add(&v20, &v22, &v24, &v20, &v22, &v24, 1, &v14, &v16, &v18);
    }

    else
    {
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v20 = v14;
      v21 = v15;
    }

    p224_select_point((8 * ((*(a3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1)) | (4 * ((*(a3 + (((v7 - 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 - 56)) & 1)) | (2 * ((*(a3 + (((v7 - 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 - 112)) & 1)) | (v8 >> (v7 + 88)) & 1, 16, &g_p224_pre_comp, &v14);
    v4 = 1;
    p224_point_add(&v20, &v22, &v24, &v20, &v22, &v24, 1, &v14, &v16, &v18);
    v10 = v7 - 169;
    --v7;
  }

  while (v10 < 0x1C);
  p224_felem_to_generic(a2, &v20);
  p224_felem_to_generic(a2 + 9, &v22);
  return p224_felem_to_generic(a2 + 18, &v24);
}

unint64_t *ec_GFp_nistp224_point_mul_public(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  ec_GFp_nistp224_make_precomp(__b, a4);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = 1;
  v9 = 220;
  do
  {
    if (!v8)
    {
      p224_point_double(&v31, v33.i64, v35.i64, &v31, &v33, &v35);
    }

    if (v9 <= 0x1B)
    {
      v10 = vandq_s8(vshlq_u64(vshlq_u64(*(a3 + 1), vsubq_s64(xmmword_1A90A9AC0, vdupq_n_s64(v9))), xmmword_1A90A9AD0), xmmword_1A90A9AE0);
      v11 = *a3;
      v12 = (&g_p224_pre_comp + 96 * (v10.i64[1] | (8 * ((a3[3] >> (v9 + 4)) & 1)) | v10.i64[0] | (*a3 >> (v9 + 28)) & 1));
      p224_point_add(&v31, &v33, &v35, &v31, &v33, &v35, 1, &v12[96], &v12[98], v12 + 100);
      if (v8)
      {
        ec_GFp_nistp224_point_mul_public_cold_1();
      }

      v13 = (&g_p224_pre_comp + 96 * ((8 * ((*(a3 + (((v9 + 168) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 88)) & 1)) | (4 * ((*(a3 + (((v9 + 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 112)) & 1)) | (2 * ((*(a3 + (((v9 + 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 56)) & 1)) | (v11 >> v9) & 1));
      p224_point_add(&v31, &v33, &v35, &v31, &v33, &v35, 1, v13, &v13[2], v13 + 4);
    }

    if (-858993459 * v9 < 0x33333334)
    {
      if (v9 == 220)
      {
        v14 = 0;
      }

      else
      {
        v14 = 32 * ((*(a5 + (((v9 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 4)) & 1);
      }

      if (v9 - 1 <= 0xDF)
      {
        v15 = (*(a5 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)) & 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = (16 * ((*(a5 + (((v9 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 3)) & 1)) | v14 | (8 * ((*(a5 + (((v9 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 2)) & 1)) | (4 * ((*(a5 + (((v9 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 1)) & 1)) | (2 * ((*(a5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      v24 = 0xAAAAAAAAAAAAAAAALL;
      ec_GFp_nistp_recode_scalar_bits(&v24, &v23, v16 | v15);
      v17 = &__b[6 * v23];
      v18 = v17[3];
      v27 = v17[2];
      v28 = v18;
      v19 = v17[5];
      v29 = v17[4];
      v30 = v19;
      v20 = v17[1];
      v25 = *v17;
      v26 = v20;
      if (v24)
      {
        p224_felem_neg(v27.i64, &v27);
      }

      if (v8)
      {
        v33 = v27;
        v34 = v28;
        v35 = v29;
        v36 = v30;
        v31 = v25;
        v32 = v26;
      }

      else
      {
        p224_point_add(&v31, &v33, &v35, &v31, &v33, &v35, 0, &v25, &v27, &v29);
      }

      v8 = 0;
      --v9;
    }

    else
    {
      --v9;
    }
  }

  while (v9 < 0xDD);
  p224_felem_to_generic(a2, &v31);
  p224_felem_to_generic(a2 + 9, &v33);
  return p224_felem_to_generic(a2 + 18, &v35);
}

unint64_t *ec_GFp_nistp224_felem_mul(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[5] = v5;
  v14[6] = v5;
  v14[3] = v5;
  v14[4] = v5;
  v14[1] = v5;
  v14[2] = v5;
  v14[0] = v5;
  v6 = a3[1];
  *(&v7 + 1) = v6;
  *&v7 = *a3;
  v16[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v16[1] = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[2];
  *&v7 = v6;
  v8 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v9 = *(a3 + 1);
  v16[2] = v8;
  v16[3] = (v9 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v10 = a4[1];
  *(&v9 + 1) = v10;
  *&v9 = *a4;
  v15[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v15[1] = (v9 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v9 + 1) = a4[2];
  *&v9 = v10;
  v11 = (v9 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v12 = *(a4 + 1);
  v15[2] = v11;
  v15[3] = (v12 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_felem_mul(v14, v16, v15);
  p224_felem_reduce(v16, v14);
  return p224_felem_to_generic(a2, v16);
}

unint64_t *ec_GFp_nistp224_felem_sqr(uint64_t a1, unint64_t *a2, void *a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v11[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v11[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = v5 >> 48;
  v7 = *(a3 + 1);
  v11[2] = v6 & 0xFFFFFFFFFFFFFFLL;
  v11[3] = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[5] = v8;
  v10[6] = v8;
  v10[3] = v8;
  v10[4] = v8;
  v10[1] = v8;
  v10[2] = v8;
  v10[0] = v8;
  p224_felem_square(v10, v11);
  p224_felem_reduce(v11, v10);
  return p224_felem_to_generic(a2, v11);
}

_OWORD *p224_felem_square(_OWORD *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 2 * *a2;
  v5 = a2[2];
  v6 = a2[3];
  *result = *a2 * *a2;
  result[1] = 2 * v3 * v2;
  result[2] = 2 * v5 * v2 + v3 * v3;
  result[3] = v6 * v4 + 2 * v5 * v3;
  result[4] = v6 * (2 * v3) + v5 * v5;
  result[5] = v6 * (2 * v5);
  result[6] = v6 * v6;
  return result;
}

uint64_t *p224_felem_reduce(uint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[6];
  v6 = a2[7];
  v8 = *(a2 + 6);
  v9 = (v8 >> 16) + *(a2 + 4);
  v10 = v8 << 40;
  v11 = __CFADD__(v10, v7);
  v12 = v10 + v7;
  if (v11)
  {
    ++v6;
  }

  v13 = (*(a2 + 2) - *(a2 + 6)) >> 64;
  v14 = a2[4] - a2[12];
  v15 = a2[10];
  v16 = a2[11];
  v17 = v15 << 40;
  v11 = __CFADD__(v14, v17);
  v18 = v14 + v17;
  if (v11)
  {
    ++v13;
  }

  *(&v19 + 1) = v16;
  *&v19 = v15;
  v20 = __PAIR128__(v6, v12) + (v19 >> 16);
  v21 = __PAIR128__(v13, v18) + (v9 >> 16);
  v23 = v5 - v15;
  v22 = (__PAIR128__(v4, v5) - __PAIR128__(v16, v15)) >> 64;
  v24 = v9 << 40;
  v25 = v23 + v24;
  if (__CFADD__(v23, v24))
  {
    ++v22;
  }

  *(&v26 + 1) = *(&v21 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v26 = v21;
  v27 = v20 + (v26 >> 56);
  v28 = (v27 >> 16) & 0xFFFF0000000000;
  v11 = __CFADD__(v25, v28);
  v29 = v25 + v28;
  if (v11)
  {
    ++v22;
  }

  v30 = (v21 & 0xFFFFFFFFFFFFFFLL) + (*(&v27 + 1) >> 8);
  v31 = __PAIR128__(v2, v3) - (v9 + (v27 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v34 = __PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v32 = (__PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v33 = v29 + (v31 >> 56) - 0x80000000000000;
  v35 = __PAIR128__(v32, v34) >> 56;
  v36 = HIBYTE(v32);
  v11 = __CFADD__(v30, v35);
  v37 = v30 + v35;
  if (v11)
  {
    ++v36;
  }

  *result = v31 & 0xFFFFFFFFFFFFFFLL;
  result[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  *(&v38 + 1) = v36;
  *&v38 = v37;
  result[2] = v37 & 0xFFFFFFFFFFFFFFLL;
  result[3] = (v38 >> 56) + (v27 & 0xFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t p224_felem_mul(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = (*a3 * *a2) >> 64;
  *result = *a3 * *a2;
  *(result + 8) = v7;
  *(result + 16) = v5 * v4 + v3 * v6;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  *(result + 32) = v8 * v6 + v5 * v3 + v10 * v4;
  *(result + 48) = v10 * v3 + v8 * v5 + v9 * v6 + v11 * v4;
  *(result + 64) = v9 * v5 + v10 * v8 + v11 * v3;
  v12 = (v11 * v8) >> 64;
  v13 = v11 * v8;
  *(result + 80) = v13 + v9 * v10;
  *(result + 88) = ((v9 * v10) >> 64) + __CFADD__(v13, v9 * v10) + v12;
  *(result + 96) = v11 * v9;
  return result;
}

unint64_t *p224_felem_to_generic(unint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  v4 = v2 + (HIBYTE(v3) << 40);
  v5 = v3 & 0xFFFFFFFFFFFFFFLL;
  v7 = (((a2[2] & v3 & (v2 | 0xFFFFFFFFFFLL)) + 1) | ((*a2 + (v2 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  v6 = v7 == 0;
  if (v7)
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xFFFFFFFFFFLL;
  if (v7)
  {
    v9 = -1;
  }

  v10 = *a2 - HIBYTE(v3) + ((v7 - 1) >> 63);
  v11 = v10 + (v10 >> 63 << 56);
  v12 = (v9 & v4) + (v10 >> 63);
  v13 = v8 + (v12 >> 56);
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14 + (v13 >> 56);
  *result = v11 | (v12 << 56);
  result[1] = (v12 >> 8) & 0xFFFFFFFFFFFFLL | (v13 << 48);
  result[2] = (v13 >> 16) & 0xFFFFFFFFFFLL | (v15 << 40);
  result[3] = v15 >> 24;
  return result;
}

double p224_point_add(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, int64x2_t *a4, int64x2_t *a5, int8x16_t *a6, int a7, unint64_t *a8, unint64_t *a9, int8x16_t *a10)
{
  v98 = *MEMORY[0x1E69E9840];
  v14.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v14.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v96 = v14;
  v97 = v14;
  v94 = v14;
  v95 = v14;
  v93[0] = v14;
  v93[1] = v14;
  v91 = v14;
  v92 = v14;
  v89 = v14;
  v90 = v14;
  v87 = v14;
  v88 = v14;
  v85 = v14;
  v86 = v14;
  v83 = v14;
  v84 = v14;
  v81 = v14;
  v82 = v14;
  v79 = v14;
  v80 = v14;
  v77 = v14;
  v78 = v14;
  v75 = v14;
  v76 = v14;
  v73 = v14;
  v74 = v14;
  v71 = v14;
  v72 = v14;
  v69 = v14;
  v70 = v14;
  if (a7)
  {
    v16 = a5->i64[0];
    v15 = a5->u64[1];
    v91.i64[0] = a5->i64[0];
    v91.i64[1] = v15;
    v18 = a5[1].u64[0];
    v17 = a5[1].u64[1];
    v92.i64[0] = v18;
    v92.i64[1] = v17;
    v19 = a4->u64[1];
    v63 = a4->i64[0];
    v94.i64[0] = a4->i64[0];
    v94.i64[1] = v19;
    v64 = v19;
    v20 = a4[1].u64[1];
    v66 = a4[1].u64[0];
    v95.i64[0] = v66;
    v95.i64[1] = v20;
  }

  else
  {
    p224_felem_square(&v76, a10);
    p224_felem_reduce(v94.i64, &v76);
    p224_felem_mul(&v76, &v94, a10);
    p224_felem_reduce(v91.i64, &v76);
    p224_felem_mul(&v69, &v91, a5);
    p224_felem_reduce(v91.i64, &v69);
    p224_felem_mul(&v69, &v94, a4);
    p224_felem_reduce(v94.i64, &v69);
    v15 = v91.u64[1];
    v16 = v91.i64[0];
    v17 = v92.u64[1];
    v18 = v92.i64[0];
    v64 = v94.u64[1];
    v63 = v94.i64[0];
    v20 = v95.u64[1];
    v66 = v95.i64[0];
  }

  v67 = v20;
  p224_felem_square(&v76, a6);
  p224_felem_reduce(v96.i64, &v76);
  p224_felem_mul(&v76, &v96, a6);
  p224_felem_reduce(v93[0].i64, &v76);
  p224_felem_mul(&v76, v93, a9);
  v76 = v76 - v16 + __PAIR128__(1, 256);
  v21 = (*&v77 - v15) >> 64;
  if (v77.i64[0] - v15 >= 0x1000000000100)
  {
    ++v21;
  }

  v77.i64[0] = v77.i64[0] - v15 - 0x1000000000100;
  v77.i64[1] = v21;
  v22 = (*&v78 - v18) >> 64;
  if (v78.i64[0] - v18 >= 0x100)
  {
    ++v22;
  }

  v78.i64[0] = v78.i64[0] - v18 - 256;
  v78.i64[1] = v22;
  v23 = (*&v79 - v17) >> 64;
  if (v79.i64[0] - v17 >= 0x100)
  {
    ++v23;
  }

  v79.i64[0] = v79.i64[0] - v17 - 256;
  v79.i64[1] = v23;
  p224_felem_reduce(v93[0].i64, &v76);
  p224_felem_mul(&v76, &v96, a8);
  v76 = v76 - v63 + __PAIR128__(1, 256);
  v24 = (*&v77 - v64) >> 64;
  if (v77.i64[0] - v64 >= 0x1000000000100)
  {
    ++v24;
  }

  v77.i64[0] = v77.i64[0] - v64 - 0x1000000000100;
  v77.i64[1] = v24;
  v25 = (*&v78 - v66) >> 64;
  if (v78.i64[0] - v66 >= 0x100)
  {
    ++v25;
  }

  v78.i64[0] = v78.i64[0] - v66 - 256;
  v78.i64[1] = v25;
  v26 = (*&v79 - v67) >> 64;
  if (v79.i64[0] - v67 >= 0x100)
  {
    ++v26;
  }

  v79.i64[0] = v79.i64[0] - v67 - 256;
  v79.i64[1] = v26;
  p224_felem_reduce(v96.i64, &v76);
  is_zero = p224_felem_is_zero(&v96);
  v28 = p224_felem_is_zero(v93);
  v29 = p224_felem_is_zero(a6);
  v30 = p224_felem_is_zero(a10);
  if ((v28 & is_zero & ~v29 & (v30 ^ 1)) != 0)
  {

    p224_point_double(a1, a2->i64, a3->i64, a4, a5, a6);
  }

  else
  {
    v32 = v30;
    if (a7)
    {
      v33 = a6[1];
      v89 = *a6;
      v90 = v33;
    }

    else
    {
      p224_felem_mul(&v76, a6, a10);
      p224_felem_reduce(v89.i64, &v76);
    }

    p224_felem_mul(&v76, &v96, &v89);
    p224_felem_reduce(v83.i64, &v76);
    v89 = v96;
    v90 = v97;
    p224_felem_square(&v76, &v96);
    p224_felem_reduce(v96.i64, &v76);
    p224_felem_mul(&v76, &v96, &v89);
    p224_felem_reduce(v89.i64, &v76);
    p224_felem_mul(&v76, &v94, &v96);
    p224_felem_reduce(v94.i64, &v76);
    p224_felem_mul(&v76, &v91, &v89);
    p224_felem_square(&v69, v93);
    v68 = v94;
    v34 = __CFADD__(v89.i64[0], 2 * v94.i64[0]);
    v69 = v69 - __PAIR128__(v34, v89.i64[0] + 2 * v94.i64[0]) + __PAIR128__(2, 512);
    v35 = __CFADD__(v89.i64[1], 2 * v94.i64[1]);
    v70 = v70 - __PAIR128__(v35, v89.i64[1] + 2 * v94.i64[1]) + __PAIR128__(1, 0xFFFDFFFFFFFFFE00);
    v65 = v95;
    v36 = __CFADD__(v90.i64[0], 2 * v95.i64[0]);
    v37 = *&v71 - __PAIR128__(v36, v90.i64[0] + 2 * v95.i64[0]);
    v71.i64[0] = v71.i64[0] - (v90.i64[0] + 2 * v95.i64[0]) - 512;
    v71.i64[1] = (v37 >= 0x200) + *(&v37 + 1) + 1;
    v38 = __CFADD__(v90.i64[1], 2 * v95.i64[1]);
    v39 = (*&v72 - __PAIR128__(v38, v90.i64[1] + 2 * v95.i64[1])) >> 64;
    v40 = (v72.i64[0] - (v90.i64[1] + 2 * v95.i64[1])) >= 0x200;
    v72.i64[0] = v72.i64[0] - (v90.i64[1] + 2 * v95.i64[1]) - 512;
    v72.i64[1] = v40 + v39 + 1;
    p224_felem_reduce(v87.i64, &v69);
    v94 = vaddq_s64(vsubq_s64(v68, v87), xmmword_1A90A9AF0);
    v95 = vaddq_s64(vsubq_s64(v65, v88), vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL));
    p224_felem_mul(&v69, v93, &v94);
    v41 = ((v69 - v76) >> 64) + 0x100000000000000;
    *&v69 = v69 - v76;
    *(&v69 + 1) = v41;
    v42 = ((v70 - *&v77) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v70 = v70 - v77.i64[0];
    *(&v70 + 1) = v42;
    v43 = ((*&v71 - *&v78) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v71.i64[0] -= v78.i64[0];
    v71.i64[1] = v43;
    v44 = ((*&v72 - *&v79) >> 64) + 0x100000000000000;
    v72.i64[0] -= v79.i64[0];
    v72.i64[1] = v44;
    v45 = ((*&v73 - *&v80) >> 64) + 0xFFFEFFFFFFFFFFLL;
    v73.i64[0] -= v80.i64[0];
    v73.i64[1] = v45;
    v46 = ((*&v74 - *&v81) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v74.i64[0] -= v81.i64[0];
    v74.i64[1] = v46;
    v47 = ((*&v75 - *&v82) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v75.i64[0] -= v82.i64[0];
    v75.i64[1] = v47;
    p224_felem_reduce(v85.i64, &v69);
    v48 = 0;
    v49 = vdupq_n_s64(-v29);
    do
    {
      *(&v87 + v48 * 8) = vbslq_s8(v49, *&a8[v48], *(&v87 + v48 * 8));
      v48 += 2;
    }

    while (v48 != 4);
    v50 = 0;
    v51 = vdupq_n_s64(-v32);
    do
    {
      *(&v87 + v50 * 16) = vbslq_s8(v51, a4[v50], *(&v87 + v50 * 16));
      ++v50;
    }

    while (v50 != 2);
    for (i = 0; i != 4; i += 2)
    {
      *(&v85 + i * 8) = vbslq_s8(v49, *&a9[i], *(&v85 + i * 8));
    }

    for (j = 0; j != 2; ++j)
    {
      *(&v85 + j * 16) = vbslq_s8(v51, a5[j], *(&v85 + j * 16));
    }

    for (k = 0; k != 2; ++k)
    {
      *(&v83 + k * 16) = vbslq_s8(v49, a10[k], *(&v83 + k * 16));
    }

    for (m = 0; m != 2; ++m)
    {
      *(&v83 + m * 16) = vbslq_s8(v51, a6[m], *(&v83 + m * 16));
    }

    v56 = v88;
    *a1 = v87;
    a1[1] = v56;
    v57 = v86;
    *a2 = v85;
    a2[1] = v57;
    result = *v83.i64;
    v58 = v84;
    *a3 = v83;
    a3[1] = v58;
  }

  return result;
}

unint64_t p224_felem_is_zero(int8x16_t *a1)
{
  v1 = a1[1].i64[0];
  v2 = a1[1].u64[1];
  v3 = veorq_s8(*a1, xmmword_1A90A9B00);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(veorq_s8(*a1, xmmword_1A90A9B10), vextq_s8(v3, v3, 8uLL)), vdupq_n_s64(v1 ^ 0xFFFFFFFFFFFFFFuLL)), veorq_s8(vdupq_n_s64(v2), xmmword_1A90A9B20));
  v3.i64[0] = -1;
  v3.i64[1] = -1;
  v5 = vaddq_s64(v4, v3);
  return (v5.i64[0] | ((vorrq_s8(vdupq_laneq_s64(*a1, 1), *a1).u64[0] | v1 | v2) - 1) | v5.i64[1]) >> 63;
}

uint64_t *p224_point_double(int64x2_t *a1, uint64_t *a2, uint64_t *a3, int64x2_t *a4, int64x2_t *a5, int64x2_t *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v11.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v68 = v11;
  v69 = v11;
  v66 = v11;
  v67 = v11;
  v64 = v11;
  v65 = v11;
  v63 = v11;
  v61 = v11;
  v62 = v11;
  v59 = v11;
  v60 = v11;
  v57 = v11;
  v58 = v11;
  v55 = v11;
  v56 = v11;
  v53 = v11;
  v54 = v11;
  v51 = v11;
  v52 = v11;
  v49[1] = v11;
  v50 = v11;
  v49[0] = v11;
  v40 = *a4;
  v42 = a4[1];
  p224_felem_square(&v63, a6);
  p224_felem_reduce(v54.i64, &v63);
  p224_felem_square(&v63, a5);
  p224_felem_reduce(v52.i64, &v63);
  p224_felem_mul(&v63, a4, &v52);
  p224_felem_reduce(v50.i64, &v63);
  v44 = vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL);
  v47 = vaddq_s64(vsubq_s64(v40, v54), xmmword_1A90A9AF0);
  v48 = vaddq_s64(vsubq_s64(v42, v55), v44);
  v12 = v54.i64[1];
  v13 = v54.i64[0];
  v14 = v55.i64[1];
  v15 = v55.i64[0];
  v46[0] = 3 * (v54.i64[0] + v40.i64[0]);
  v46[1] = 3 * (v54.i64[1] + v40.i64[1]);
  v46[2] = 3 * (v55.i64[0] + v42.i64[0]);
  v46[3] = 3 * (v55.i64[1] + v42.i64[1]);
  p224_felem_mul(&v63, &v47, v46);
  p224_felem_reduce(v49, &v63);
  p224_felem_square(&v63, v49);
  v41 = v51;
  v43 = v50;
  v63 = v63 - (8 * v50.i64[0]) + __PAIR128__(1, 256);
  v17 = (*&v64 - 8 * v50.i64[1]) >> 64;
  v16 = v64.i64[0] - 8 * v50.i64[1];
  v18 = __CFADD__(v16, 0xFFFEFFFFFFFFFF00);
  v19 = v16 - 0x1000000000100;
  if (v18)
  {
    ++v17;
  }

  v64.i64[0] = v19;
  v64.i64[1] = v17;
  v21 = (v65 - (8 * v51.i64[0])) >> 64;
  v20 = v65 - 8 * v51.i64[0];
  v18 = v20 >= 0x100;
  v22 = v20 - 256;
  if (v18)
  {
    ++v21;
  }

  *&v65 = v22;
  *(&v65 + 1) = v21;
  v24 = (v66 - (8 * v51.i64[1])) >> 64;
  v23 = v66 - 8 * v51.i64[1];
  v18 = v23 >= 0x100;
  v25 = v23 - 256;
  if (v18)
  {
    ++v24;
  }

  *&v66 = v25;
  *(&v66 + 1) = v24;
  p224_felem_reduce(a1->i64, &v63);
  v26 = vaddq_s64(*a6, *a5);
  v27 = vaddq_s64(a6[1], a5[1]);
  v28 = v52.i64[0] + v13;
  v29 = v52.i64[1] + v12;
  v30 = v53.i64[0] + v15;
  v31 = v53.i64[1] + v14;
  v47 = v26;
  v48 = v27;
  p224_felem_square(&v63, &v47);
  v63 = v63 - v28 + __PAIR128__(1, 256);
  v32 = (*&v64 - v29) >> 64;
  if ((v64.i64[0] - v29) >= 0x1000000000100)
  {
    ++v32;
  }

  v64.i64[0] = v64.i64[0] - v29 - 0x1000000000100;
  v64.i64[1] = v32;
  v33 = (v65 - v30) >> 64;
  if ((v65 - v30) >= 0x100)
  {
    ++v33;
  }

  *&v65 = v65 - v30 - 256;
  *(&v65 + 1) = v33;
  v34 = (v66 - v31) >> 64;
  if ((v66 - v31) >= 0x100)
  {
    ++v34;
  }

  *&v66 = v66 - v31 - 256;
  *(&v66 + 1) = v34;
  p224_felem_reduce(a3, &v63);
  v35 = vaddq_s64(vsubq_s64(vshlq_n_s64(v41, 2uLL), a1[1]), v44);
  v50 = vaddq_s64(vsubq_s64(vshlq_n_s64(v43, 2uLL), *a1), xmmword_1A90A9AF0);
  v51 = v35;
  p224_felem_mul(&v63, v49, &v50);
  p224_felem_square(&v56, &v52);
  v36 = ((v63 - *&v56 * 8) >> 64) + 0x100000000000000;
  *&v63 = v63 - 8 * v56.i64[0];
  *(&v63 + 1) = v36;
  v37 = *&v64 - *&v57 * 8;
  v64.i64[0] -= 8 * v57.i64[0];
  v64.i64[1] = *(&v37 + 1) + 0xFFFFFFFFFFFFFFLL;
  v65 = v65 - *&v58 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v66 = v66 - *&v59 * 8 + __PAIR128__(0x100000000000000, 0);
  v67 = v67 - *&v60 * 8 + __PAIR128__(0xFFFEFFFFFFFFFFLL, 0);
  v68 = v68 - *&v61 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v38 = ((*&v69 - *&v62 * 8) >> 64) + 0xFFFFFFFFFFFFFFLL;
  v69.i64[0] -= 8 * v62.i64[0];
  v69.i64[1] = v38;
  return p224_felem_reduce(a2, &v63);
}

void ec_GFp_nistp224_make_precomp(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = *a2 & 0xFFFFFFFFFFFFFFLL;
  v4 = (a1 + 96);
  *(a1 + 104) = (*a2 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 112) = (*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 120) = (*(a2 + 16) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 128) = *(a2 + 72) & 0xFFFFFFFFFFFFFFLL;
  v5 = (a1 + 128);
  *(a1 + 136) = (*(a2 + 72) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 144) = (*(a2 + 80) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 152) = (*(a2 + 88) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 160) = *(a2 + 144) & 0xFFFFFFFFFFFFFFLL;
  v6 = (a1 + 160);
  *(a1 + 168) = (*(a2 + 144) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 176) = (*(a2 + 152) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 184) = (*(a2 + 160) >> 40) & 0xFFFFFFFFFFFFFFLL;
  v7 = 2;
  do
  {
    v8 = a1 + v3;
    if (v7)
    {
      p224_point_add((v8 + 192), (v8 + 224), (v8 + 256), v4, v5, v6, 0, (v8 + 96), (v8 + 128), (v8 + 160));
    }

    else
    {
      p224_point_double((v8 + 192), (v8 + 224), (v8 + 256), (a1 + 96 * (v7 >> 1)), (a1 + 96 * (v7 >> 1) + 32), (a1 + 96 * (v7 >> 1) + 64));
    }

    ++v7;
    v3 += 96;
  }

  while (v3 != 1440);
}

uint64_t p224_select_point(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      for (j = 0; j != 96; j += 8)
      {
        *(a4 + j) |= *(a3 + j) & ((((i ^ result) - 1) & ~result) >> 63);
      }

      a3 += 96;
    }
  }

  return result;
}

uint64_t *p224_felem_neg(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v3 = a2[1];
  v4 = *a2 <= 0x100uLL;
  v7[0] = 256 - *a2;
  v7[1] = v4;
  v8 = 0xFFFEFFFFFFFFFF00 - __PAIR128__(v4, v3);
  v5 = a2[3];
  v9 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v2, a2[2]);
  v10 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v9, v5);
  return p224_felem_reduce(a1, v7);
}

uint64_t bn_mod_u16_consttime(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = BN_num_bits_word((a2 - 1));
  if (v4 >= 0x11)
  {
    bn_mod_u16_consttime_cold_1();
  }

  v5 = *(a1 + 8);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v4;
  LODWORD(result) = 0;
  v8 = v5 - 1;
  v9 = ((a2 | (1 << (v6 | 0x20u))) - 1) / a2;
  do
  {
    v10 = *(*a1 + 8 * v8 + 4);
    v11 = mod_u16((__PAIR64__(result, v10) >> 16), a2, v6, v9);
    v12 = mod_u16(v10 | (v11 << 16), a2, v6, v9);
    v13 = *(*a1 + 8 * v8);
    v14 = mod_u16((__PAIR64__(v12, v13) >> 16), a2, v6, v9);
    result = mod_u16(v13 | (v14 << 16), a2, v6, v9);
    v15 = v8-- + 1;
  }

  while (v15 > 1);
  return result;
}

uint64_t mod_u16(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (a1 - ((((a4 * a1) >> 32) + ((a1 - ((a4 * a1) >> 32)) >> 1)) >> (a3 - 1)) * a2 >= a2)
  {
    mod_u16_cold_1();
  }

  return (a1 - ((((a4 * a1) >> 32) + ((a1 - ((a4 * a1) >> 32)) >> 1)) >> (a3 - 1)) * a2);
}

BIO *__cdecl BIO_new_mem_buf(void *buf, int len)
{
  v2 = *&len;
  v4 = *&len;
  if ((*&len & 0x8000000000000000) != 0)
  {
    v4 = strlen(buf);
    if (buf)
    {
      goto LABEL_7;
    }
  }

  else if (buf)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    ERR_put_error(17, 0, 111, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio_mem.c", 75);
    return 0;
  }

LABEL_7:
  result = BIO_new(&mem_method);
  if (result)
  {
    v6 = *&result->num;
    *v6 = v4;
    v6[1] = buf;
    v6[2] = v4;
    result->init |= 0x200u;
    result->flags = 0;
  }

  return result;
}

uint64_t mem_write(uint64_t a1, const void *a2, unsigned int a3)
{
  BIO_clear_retry_flags(a1);
  if (a3 < 1)
  {
    return 0;
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    ERR_put_error(17, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio_mem.c", 168);
    return 0xFFFFFFFFLL;
  }

  else if (BUF_MEM_append(*(a1 + 40), a2, a3))
  {
    return a3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

size_t mem_read(uint64_t a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  BIO_clear_retry_flags(a1);
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *v6;
  if (*v6 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v7;
  }

  if (v3 >= 1)
  {
    memcpy(a2, v6[1], v3);
    v8 = *v6;
    v9 = *v6 - v3;
    *v6 = v9;
    if ((*(a1 + 25) & 2) != 0)
    {
      v6[1] += v3;
    }

    else if (v8 != v3)
    {
      memmove(v6[1], (v6[1] + v3), v9);
    }

    return v3;
  }

  if (v7)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    BIO_set_retry_read(a1);
  }

  return v3;
}

size_t mem_gets(uint64_t a1, void *a2, int a3)
{
  BIO_clear_retry_flags(a1);
  v6 = (a3 - 1);
  if (a3 < 1)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  if (*v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v7;
  }

  if (v8)
  {
    v9 = v7[1];
    v10 = memchr(v9, 10, v8);
    if (v10)
    {
      LODWORD(v8) = v10 - v9 + 1;
    }
  }

  result = mem_read(a1, a2, v8);
  if ((result & 0x80000000) == 0)
  {
    *(a2 + result) = 0;
  }

  return result;
}

uint64_t mem_ctrl(uint64_t a1, int a2, int a3, uint64_t **a4)
{
  result = 0;
  v8 = *(a1 + 40);
  if (a2 > 9)
  {
    if (a2 <= 113)
    {
      if (a2 == 10)
      {
        return *v8;
      }

      else
      {
        return a2 == 11;
      }
    }

    switch(a2)
    {
      case 114:
        mem_free(a1);
        *(a1 + 20) = a3;
        *(a1 + 40) = a4;
        break;
      case 115:
        if (a4)
        {
          *a4 = v8;
        }

        break;
      case 130:
        *(a1 + 32) = a3;
        break;
      default:
        return result;
    }

    return 1;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return *v8 == 0;
      }

      return result;
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = v8[2];
      if ((*(a1 + 25) & 2) != 0)
      {
        v11 = &v9[*v8 - v10];
        *v8 = v10;
        v8[1] = v11;
      }

      else
      {
        if (v10)
        {
          bzero(v9, v10);
        }

        *v8 = 0;
      }
    }

    return 1;
  }

  if (a2 != 3)
  {
    if (a2 == 8)
    {
      return *(a1 + 20);
    }

    if (a2 != 9)
    {
      return result;
    }

    *(a1 + 20) = a3;
    return 1;
  }

  result = *v8;
  if (a4)
  {
    *a4 = v8[1];
  }

  return result;
}

BUF_MEM *mem_new(uint64_t a1)
{
  result = BUF_MEM_new();
  if (result)
  {
    *(a1 + 16) = 0x100000001;
    *(a1 + 32) = -1;
    *(a1 + 40) = result;
    return 1;
  }

  return result;
}

uint64_t mem_free(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        if ((*(a1 + 25) & 2) != 0)
        {
          v2->data = 0;
        }

        BUF_MEM_free(v2);
        *(a1 + 40) = 0;
      }
    }
  }

  return 1;
}

uint64_t null_cipher(int a1, void *__dst, void *__src, size_t __n)
{
  if (__src != __dst && __n)
  {
    memcpy(__dst, __src, __n);
  }

  return 1;
}

int SHA256_Final(unsigned __int8 *md, SHA256_CTX *c)
{
  if (c->md_len > 0x20)
  {
    return 0;
  }

  BCM_sha256_final(md, c);
  return 1;
}

unsigned __int8 *EC_POINT_point2buf(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t a3, unsigned __int8 **a4, uint64_t a5, BN_CTX *a6)
{
  *a4 = 0;
  result = EC_POINT_point2oct(a1, a2, a3, 0, 0, a6);
  if (result)
  {
    v11 = result;
    result = OPENSSL_malloc(result);
    if (result)
    {
      v13 = result;
      result = EC_POINT_point2oct(a1, a2, a3, result, v11, v12);
      if (result)
      {
        *a4 = v13;
      }

      else
      {
        OPENSSL_free(v13);
        return 0;
      }
    }
  }

  return result;
}

int EC_POINT_set_compressed_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, int y_bit, BN_CTX *a5)
{
  if (!EC_GROUP_cmp(a1, *a2, 0))
  {
    if (BN_is_negative(x) || (BN_cmp(x, (a1 + 320)) & 0x80000000) == 0)
    {
      v10 = 107;
      v11 = 265;
      goto LABEL_6;
    }

    ERR_clear_error();
    if (a5)
    {
      v14 = 0;
    }

    else
    {
      v14 = BN_CTX_new();
      a5 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    v23 = y_bit != 0;
    BN_CTX_start(a5);
    v15 = BN_CTX_get(a5);
    v16 = BN_CTX_get(a5);
    v17 = BN_CTX_get(a5);
    v18 = BN_CTX_get(a5);
    v19 = BN_CTX_get(a5);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    if (!EC_GROUP_get_curve_GFp(a1, 0, v17, v18, a5) || !BN_mod_sqr(v16, x, (a1 + 320), a5) || !BN_mod_mul(v15, v16, x, (a1 + 320), a5))
    {
      goto LABEL_35;
    }

    if (*(a1 + 132))
    {
      if (!bn_mod_lshift1_consttime(v16, x, a1 + 320, a5) || !bn_mod_add_consttime(v16, v16, x, a1 + 320, a5) || !bn_mod_sub_consttime(v15, v15, v16, a1 + 320, a5))
      {
        goto LABEL_35;
      }
    }

    else if (!BN_mod_mul(v16, v17, x, (a1 + 320), a5) || !bn_mod_add_consttime(v15, v15, v16, a1 + 320, a5))
    {
      goto LABEL_35;
    }

    if (!bn_mod_add_consttime(v15, v15, v18, a1 + 320, a5))
    {
LABEL_35:
      v12 = 0;
      goto LABEL_36;
    }

    if (BN_mod_sqrt(v20, v15, (a1 + 320), a5))
    {
      if (BN_is_odd(v20) == v23)
      {
LABEL_26:
        if (BN_is_odd(v20) == v23)
        {
          v12 = EC_POINT_set_affine_coordinates_GFp(a1, a2, x, v20, a5) != 0;
LABEL_36:
          BN_CTX_end(a5);
          BN_CTX_free(v14);
          return v12;
        }

        v21 = 68;
        v22 = 345;
        goto LABEL_34;
      }

      if (!BN_is_zero(v20))
      {
        if (!BN_usub(v20, (a1 + 320), v20))
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v21 = 108;
      v22 = 337;
    }

    else if ((ERR_peek_last_error() & 0xFF000FFF) == 0x300006E)
    {
      ERR_clear_error();
      v21 = 107;
      v22 = 328;
    }

    else
    {
      v21 = 3;
      v22 = 330;
    }

LABEL_34:
    ERR_put_error(15, 0, v21, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v22);
    goto LABEL_35;
  }

  v10 = 106;
  v11 = 259;
LABEL_6:
  ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v11);
  return 0;
}

_DWORD *SPAKE2PLUS_CTX_new_context(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const unsigned __int8 *a8, int a9, const unsigned __int8 *a10, int a11, const unsigned __int8 *a12, size_t a13, const BIGNUM *a14, const BIGNUM *a15)
{
  if (!a1)
  {
    v26 = 0;
    if (!a8)
    {
      return v26;
    }

    v27 = a10 && a12 == 0;
    if (!v27 || a15 != 0)
    {
      return v26;
    }

    goto LABEL_24;
  }

  if (a1 != 1)
  {
LABEL_24:
    v40 = a14;
    v41 = a12;
    v39 = a15;
    v38 = 0;
    goto LABEL_25;
  }

  if (a10)
  {
    v23 = 1;
  }

  else
  {
    v23 = a8 == 0;
  }

  if (v23 || a12 == 0 || a14 != 0)
  {
    return 0;
  }

  v40 = a14;
  v41 = a12;
  v39 = a15;
  v38 = 1;
LABEL_25:
  v29 = OPENSSL_zalloc(0x160uLL);
  v26 = v29;
  if (v29)
  {
    *(v29 + 12) = a1;
    v44[0] = a2;
    v44[1] = a3;
    v43[0] = a4;
    v43[1] = a5;
    v42[0] = a6;
    v42[1] = a7;
    if (!CBS_stow(v44, v29, v29 + 1))
    {
      goto LABEL_46;
    }

    if (!CBS_stow(v43, v26 + 2, v26 + 3))
    {
      goto LABEL_46;
    }

    if (!CBS_stow(v42, v26 + 4, v26 + 5))
    {
      goto LABEL_46;
    }

    if (a8)
    {
      BN_init((v26 + 7));
      if (!BN_bin2bn(a8, a9, (v26 + 7)))
      {
        goto LABEL_46;
      }
    }

    if (a10)
    {
      BN_init((v26 + 10));
      if (!BN_bin2bn(a10, a11, (v26 + 10)))
      {
        goto LABEL_46;
      }
    }

    v30 = EC_group_p256();
    v31 = v30;
    if (v41)
    {
      v32 = EC_POINT_new(v30);
      v26[13] = v32;
      if (!EC_POINT_oct2point(v31, v32, v41, a13, 0))
      {
        goto LABEL_46;
      }
    }

    if (v40)
    {
      BN_init((v26 + 14));
      if (!BN_copy((v26 + 14), v40))
      {
LABEL_46:
        SPAKE2PLUS_CTX_free(v26);
        return 0;
      }
    }

    else if (!a1)
    {
      BN_init((v26 + 14));
      v34 = EC_GROUP_get0_order(v31, v33);
      if (!BN_rand_range_ex(v26 + 14, 1uLL, v34))
      {
        goto LABEL_46;
      }
    }

    if (v39)
    {
      BN_init((v26 + 17));
      if (!BN_copy((v26 + 17), v39))
      {
        goto LABEL_46;
      }
    }

    else if (v38)
    {
      BN_init((v26 + 17));
      v36 = EC_GROUP_get0_order(v31, v35);
      if (!BN_rand_range_ex(v26 + 17, 1uLL, v36))
      {
        goto LABEL_46;
      }
    }

    *(v26 + 13) = 0;
  }

  return v26;
}

void SPAKE2PLUS_CTX_free(void *a1)
{
  if (a1)
  {
    OPENSSL_free(*a1);
    OPENSSL_free(a1[2]);
    OPENSSL_free(a1[4]);
    BN_free((a1 + 7));
    BN_free((a1 + 10));
    BN_free((a1 + 14));
    BN_free((a1 + 17));
    EC_POINT_free(a1[13]);
    EC_POINT_free(a1[20]);
    EC_POINT_free(a1[21]);
    EC_POINT_free(a1[22]);
    EC_POINT_free(a1[23]);

    OPENSSL_free(a1);
  }
}

uint64_t SPAKE2PLUS_generate_prover_share(uint64_t a1, unsigned __int8 *a2, void *a3, size_t a4)
{
  if (!*(a1 + 48) && !*(a1 + 52))
  {
    v10 = EC_group_p256();
    v11 = EC_POINT_new(v10);
    if (v11)
    {
      v12 = EC_POINT_new(v10);
      if (v12 && EC_POINT_mul(v10, v11, (a1 + 112), 0, 0, 0))
      {
        v13 = EC_POINT_new(v10);
        if (EC_POINT_oct2point(v10, v13, M_bytes, 0x21uLL, 0))
        {
          if (EC_POINT_mul(v10, v12, 0, v13, (a1 + 56), 0))
          {
            v14 = EC_POINT_new(v10);
            *(a1 + 160) = v14;
            if (EC_POINT_add(v10, v14, v11, v12, 0))
            {
              v15 = EC_POINT_point2oct(v10, *(a1 + 160), POINT_CONVERSION_UNCOMPRESSED, a2, a4, 0);
              if (v15)
              {
                v16 = v15;
                *a3 = v15;
                if (v15 << 32)
                {
                  memcpy((a1 + 192), a2, v15);
                }

                *(a1 + 264) = v16;
                v5 = 1;
                *(a1 + 52) = 1;
                goto LABEL_18;
              }
            }
          }
        }

LABEL_17:
        v5 = 0;
LABEL_18:
        EC_POINT_free(v11);
        EC_POINT_free(v12);
        EC_POINT_free(v13);
        return v5;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t SPAKE2PLUS_process_prover_share(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, size_t *a5, size_t a6, void *a7, size_t *a8, size_t a9, void *__dst, size_t *a11, size_t a12)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  v12 = 0;
  if (a3 == 65 && !*(a1 + 52))
  {
    v20 = EC_group_p256();
    v21 = EC_POINT_new(v20);
    if (v21)
    {
      v22 = EC_POINT_new(v20);
      if (v22 && EC_POINT_mul(v20, v21, (a1 + 136), 0, 0, 0))
      {
        v42 = EC_POINT_new(v20);
        if (EC_POINT_oct2point(v20, v42, M_bytes, 0x21uLL, 0))
        {
          r = v22;
          v23 = EC_POINT_new(v20);
          if (EC_POINT_oct2point(v20, v23, N_bytes, 0x21uLL, 0))
          {
            v40 = v23;
            if (EC_POINT_mul(v20, r, 0, v23, (a1 + 56), 0))
            {
              v24 = EC_POINT_new(v20);
              *(a1 + 168) = v24;
              v22 = r;
              if (EC_POINT_add(v20, v24, v21, r, 0) && (v25 = EC_POINT_point2oct(v20, *(a1 + 168), POINT_CONVERSION_UNCOMPRESSED, a4, a6, 0)) != 0 && (*a5 = v25, v26 = EC_POINT_new(v20), *(a1 + 160) = v26, EC_POINT_oct2point(v20, v26, a2, 0x41uLL, 0)))
              {
                v27 = EC_POINT_new(v20);
                if (EC_POINT_mul(v20, v27, 0, v42, (a1 + 56), 0))
                {
                  b = v27;
                  if (EC_POINT_invert(v20, v27, 0))
                  {
                    v28 = EC_POINT_new(v20);
                    if (v28)
                    {
                      v29 = EC_POINT_new(v20);
                      *(a1 + 176) = v29;
                      if (v29)
                      {
                        if (EC_POINT_add(v20, v28, *(a1 + 160), b, 0))
                        {
                          if (EC_POINT_mul(v20, *(a1 + 176), 0, v28, (a1 + 136), 0))
                          {
                            v30 = EC_POINT_new(v20);
                            *(a1 + 184) = v30;
                            if (EC_POINT_mul(v20, v30, 0, *(a1 + 104), (a1 + 136), 0))
                            {
                              *&v31 = 0xAAAAAAAAAAAAAAAALL;
                              *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
                              v48[0] = v31;
                              v48[1] = v31;
                              v44 = 32;
                              __n = 32;
                              __src[0] = v31;
                              __src[1] = v31;
                              v46[0] = v31;
                              v46[1] = v31;
                              if (compute_transcript_and_confirmation_messages(a1, a2, 0x41uLL, a4, *a5, v48, &__n, __src, &v44, v46, &v43))
                              {
                                if (v44 >= a9)
                                {
                                  v32 = a9;
                                }

                                else
                                {
                                  v32 = v44;
                                }

                                if (v32)
                                {
                                  memcpy(a7, __src, v32);
                                }

                                *a8 = v32;
                                v33 = __n;
                                if (__n)
                                {
                                  memcpy((a1 + 272), v48, __n);
                                }

                                *(a1 + 304) = v33;
                                if (a12 >= 0x20)
                                {
                                  v34 = 32;
                                }

                                else
                                {
                                  v34 = a12;
                                }

                                if (a12)
                                {
                                  memcpy(__dst, v46, v34);
                                }

                                *a11 = v34;
                                *(a1 + 52) = 3;
                                v12 = 1;
                                v22 = r;
                                v35 = v42;
                                goto LABEL_48;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v12 = 0;
                  v35 = v42;
LABEL_48:
                  v36 = v40;
                  v37 = b;
                  goto LABEL_37;
                }

                v37 = v27;
              }

              else
              {
                v37 = 0;
              }

              v28 = 0;
              v12 = 0;
              v35 = v42;
            }

            else
            {
              v37 = 0;
              v28 = 0;
              v12 = 0;
              v22 = r;
              v35 = v42;
            }

            v36 = v40;
          }

          else
          {
            v37 = 0;
            v28 = 0;
            v12 = 0;
            v36 = v23;
            v22 = r;
            v35 = v42;
          }
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v28 = 0;
          v12 = 0;
          v35 = v42;
        }

LABEL_37:
        EC_POINT_free(v21);
        EC_POINT_free(v22);
        EC_POINT_free(v35);
        EC_POINT_free(v36);
        EC_POINT_free(v37);
        EC_POINT_free(v28);
        return v12;
      }
    }

    else
    {
      v22 = 0;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    v28 = 0;
    v12 = 0;
    goto LABEL_37;
  }

  return v12;
}

size_t compute_transcript_and_confirmation_messages(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, void *a6, void *a7, void *a8, void *a9, _OWORD *a10, void *a11)
{
  data[1] = *MEMORY[0x1E69E9840];
  v17 = EC_group_p256();
  v77 = -86;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buf[2] = v18;
  buf[3] = v18;
  buf[0] = v18;
  buf[1] = v18;
  v19 = EC_POINT_point2oct(v17, *(a1 + 176), POINT_CONVERSION_UNCOMPRESSED, buf, 0x41uLL, 0);
  if (!v19)
  {
    v25 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v75 = -86;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74[2] = v20;
  v74[3] = v20;
  v74[0] = v20;
  v74[1] = v20;
  v21 = EC_POINT_point2oct(v17, *(a1 + 184), POINT_CONVERSION_UNCOMPRESSED, v74, 0x41uLL, 0);
  if (!v21 || (*&v22 = 0xAAAAAAAAAAAAAAAALL, *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL, v73[0] = v22, v73[1] = v22, v23 = BN_num_bytes((a1 + 56)), !BN_bn2bin_padded(v73, v23, (a1 + 56))))
  {
    v25 = 0;
    v24 = 0;
LABEL_18:
    v19 = 0;
    goto LABEL_20;
  }

  __dst = a6;
  v24 = EC_POINT_new(v17);
  if (!EC_POINT_oct2point(v17, v24, M_bytes, 0x21uLL, 0))
  {
    v25 = 0;
    goto LABEL_18;
  }

  v53 = a7;
  v25 = EC_POINT_new(v17);
  if (!EC_POINT_oct2point(v17, v25, N_bytes, 0x21uLL, 0))
  {
    goto LABEL_18;
  }

  v52 = a8;
  v72 = -86;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71[2] = v26;
  v71[3] = v26;
  v71[0] = v26;
  v71[1] = v26;
  v27 = EC_POINT_point2oct(v17, v24, POINT_CONVERSION_UNCOMPRESSED, v71, 0x41uLL, 0);
  if (!v27)
  {
    goto LABEL_18;
  }

  v51 = v27;
  v70 = -86;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[2] = v28;
  v69[3] = v28;
  v69[0] = v28;
  v69[1] = v28;
  v29 = EC_POINT_point2oct(v17, v25, POINT_CONVERSION_UNCOMPRESSED, v69, 0x41uLL, 0);
  if (!v29)
  {
    goto LABEL_18;
  }

  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.data[10] = v30;
  *&c.data[14] = v30;
  *&c.data[2] = v30;
  *&c.data[6] = v30;
  *&c.h[4] = v30;
  *&c.Nl = v30;
  *c.h = v30;
  SHA256_Init(&c);
  v48 = *a1;
  data[0] = *(a1 + 8);
  v31 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v48, v31);
  v49 = *(a1 + 16);
  data[0] = *(a1 + 24);
  v32 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v49, v32);
  v50 = *(a1 + 32);
  data[0] = *(a1 + 40);
  v33 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v50, v33);
  data[0] = v51;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v71, v51);
  data[0] = v29;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v69, v29);
  data[0] = a3;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, a2, a3);
  data[0] = a5;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, a4, a5);
  data[0] = v19;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, buf, v19);
  data[0] = v21;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v74, v21);
  v34 = BN_num_bytes((a1 + 56));
  data[0] = v34;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v73, v34);
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md[0] = v35;
  md[1] = v35;
  SHA256_Final(md, &c);
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  key[0] = v36;
  key[1] = v36;
  v66[0] = v36;
  v66[1] = v36;
  v37 = EVP_sha256();
  if (!HKDF(key, 64, v37, md, 32, 0, 0, "ConfirmationKeys", 16))
  {
    goto LABEL_18;
  }

  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v38;
  v64 = v38;
  v39 = EVP_sha256();
  if (!HKDF(&v63, 32, v39, md, 32, 0, 0, "SharedKey", 9))
  {
    goto LABEL_18;
  }

  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__src = v40;
  v62 = v40;
  __n_4 = 32;
  v41 = EVP_sha256();
  if (!HMAC(v41, key, 32, a4, a5, __src, &__n_4))
  {
    goto LABEL_18;
  }

  *&v42 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v59 = v42;
  v60 = v42;
  __n = 32;
  v43 = EVP_sha256();
  if (!HMAC(v43, v66, 32, a2, a3, v59, &__n))
  {
    goto LABEL_18;
  }

  v44 = __n_4;
  if (__n_4)
  {
    memcpy(__dst, __src, __n_4);
  }

  *v53 = v44;
  v45 = __n;
  if (__n)
  {
    memcpy(v52, v59, __n);
  }

  *a9 = v45;
  v46 = v64;
  *a10 = v63;
  a10[1] = v46;
  *a11 = 32;
  v19 = 1;
LABEL_20:
  EC_POINT_free(v24);
  EC_POINT_free(v25);
  return v19;
}

uint64_t SPAKE2PLUS_compute_prover_confirmation(uint64_t a1, const void *a2, uint64_t a3, char *a4, uint64_t a5, void *a6, size_t *a7, size_t a8, void *__dst, size_t *a10, size_t a11)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    return 0;
  }

  v11 = 0;
  if (a5 == 32 && a3 == 65 && *(a1 + 52) == 1)
  {
    v18 = EC_group_p256();
    v19 = EC_POINT_new(v18);
    *(a1 + 168) = v19;
    if (EC_POINT_oct2point(v18, v19, a2, 0x41uLL, 0))
    {
      v20 = EC_POINT_new(v18);
      if (EC_POINT_oct2point(v18, v20, N_bytes, 0x21uLL, 0))
      {
        v21 = EC_POINT_new(v18);
        if (v21 && EC_POINT_mul(v18, v21, 0, v20, (a1 + 56), 0) && EC_POINT_invert(v18, v21, 0))
        {
          v22 = EC_POINT_new(v18);
          if (v22)
          {
            if (EC_POINT_add(v18, v22, *(a1 + 168), v21, 0))
            {
              v23 = EC_POINT_new(v18);
              *(a1 + 176) = v23;
              if (EC_POINT_mul(v18, v23, 0, v22, (a1 + 112), 0))
              {
                v24 = EC_POINT_new(v18);
                *(a1 + 184) = v24;
                if (EC_POINT_mul(v18, v24, 0, v22, (a1 + 80), 0))
                {
                  *&v25 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  __src[0] = v25;
                  __src[1] = v25;
                  v33[0] = v25;
                  v33[1] = v25;
                  v30 = 32;
                  v32[0] = v25;
                  v32[1] = v25;
                  v11 = 0;
                  if (!compute_transcript_and_confirmation_messages(a1, (a1 + 192), *(a1 + 264), a2, 0x41uLL, __src, &v31, v33, &v30, v32, &v29) || v30 != 32)
                  {
                    goto LABEL_33;
                  }

                  if (!CRYPTO_memcmp(v33, a4, 32))
                  {
                    if (a8 >= 0x20)
                    {
                      v26 = 32;
                    }

                    else
                    {
                      v26 = a8;
                    }

                    if (a8)
                    {
                      memcpy(a6, __src, v26);
                    }

                    *a7 = v26;
                    if (a11 >= 0x20)
                    {
                      v27 = 32;
                    }

                    else
                    {
                      v27 = a11;
                    }

                    if (a11)
                    {
                      memcpy(__dst, v32, v27);
                    }

                    *a10 = v27;
                    *(a1 + 52) = 3;
                    v11 = 1;
                    goto LABEL_33;
                  }
                }
              }
            }
          }

LABEL_32:
          v11 = 0;
LABEL_33:
          EC_POINT_free(v20);
          EC_POINT_free(v21);
          EC_POINT_free(v22);
          return v11;
        }

LABEL_31:
        v22 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_31;
  }

  return v11;
}

int AES_set_encrypt_key(const unsigned __int8 *userKey, const int bits, AES_KEY *key)
{
  if (bits == 128 || bits == 256 || bits == 192)
  {
    return aes_nohw_set_encrypt_key(userKey, bits, key);
  }

  else
  {
    return -2;
  }
}

double ec_GFp_nistp256_add(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v22 = *a3;
  v23 = v5;
  v6 = *(a3 + 88);
  v20 = *(a3 + 72);
  v21 = v6;
  v7 = a3[10];
  v18 = a3[9];
  v19 = v7;
  v8 = a4[1];
  v17[0] = *a4;
  v17[1] = v8;
  v9 = *(a4 + 88);
  v16[0] = *(a4 + 72);
  v16[1] = v9;
  v10 = *(a4 + 10);
  v15[0] = *(a4 + 9);
  v15[1] = v10;
  fiat_p256_point_add(&v22, &v20, &v18, &v22, &v20, &v18, 0, v17, v16, v15);
  v11 = v23;
  *a2 = v22;
  a2[1] = v11;
  v12 = v21;
  *(a2 + 72) = v20;
  *(a2 + 88) = v12;
  result = *&v18;
  v14 = v19;
  a2[9] = v18;
  a2[10] = v14;
  return result;
}

double ec_GFp_nistp256_dbl(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  v15 = *a3;
  v16 = v4;
  v5 = *(a3 + 88);
  v13 = *(a3 + 72);
  v14 = v5;
  v6 = a3[10];
  v11 = a3[9];
  v12 = v6;
  fiat_p256_point_double(&v15, &v13, &v11, &v15, &v13, &v11);
  v7 = v16;
  *a2 = v15;
  a2[1] = v7;
  v8 = v14;
  *(a2 + 72) = v13;
  *(a2 + 88) = v8;
  result = *&v11;
  v10 = v12;
  a2[9] = v11;
  a2[10] = v10;
  return result;
}

double ec_GFp_nistp256_point_mul(uint64_t a1, int8x16_t *a2, unsigned __int128 *a3, uint64_t a4)
{
  v84 = *MEMORY[0x1E69E9840];
  bzero(v79, 0x660uLL);
  v6 = a3[1];
  v81[0] = *a3;
  v81[1] = v6;
  v7 = *(a3 + 88);
  v82[0] = *(a3 + 72);
  v82[1] = v7;
  v8 = a3[9];
  v9 = a3[10];
  v10 = -1440;
  v11 = 2;
  v83[0] = v8;
  v83[1] = v9;
  do
  {
    v12 = &v79[v10];
    if (v11)
    {
      fiat_p256_point_add(v12[102].i64, v12[104].i64, v12[106].i64, v81, v82, v83, 0, &v12[96], &v12[98], v12 + 100);
    }

    else
    {
      fiat_p256_point_double(v12[102].i64, v12[104].i64, v12[106].i64, &v79[96 * (v11 >> 1)], &v79[96 * (v11 >> 1) + 32], &v79[96 * (v11 >> 1) + 64]);
    }

    ++v11;
    v10 += 96;
  }

  while (v10);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v13 = 1;
  v73 = 0u;
  v74 = 0u;
  for (i = 255; i < 0x100; --i)
  {
    if (!v13)
    {
      fiat_p256_point_double(v73.i64, v75.i64, v77.i64, &v73, &v75, &v77);
    }

    if (-858993459 * i <= 0x33333333)
    {
      if (i <= 0xFB)
      {
        v15 = 32 * ((*(a4 + 8 * ((i + 4) >> 6)) >> (i + 4)) & 1);
        v16 = i + 3;
      }

      else
      {
        if (i != 252)
        {
          if (i > 0xFD)
          {
            v19 = 0;
            if (i == 255)
            {
LABEL_17:
              if ((i - 1) <= 0xFF)
              {
                v21 = (*(a4 + 8 * ((i - 1) >> 6)) >> (i - 1)) & 1;
              }

              else
              {
                v21 = 0;
              }

              v22 = (2 * ((*(a4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1)) | v19;
              v65 = 0xAAAAAAAAAAAAAAAALL;
              v66 = 0xAAAAAAAAAAAAAAAALL;
              ec_GFp_nistp_recode_scalar_bits(&v66, &v65, v22 | v21);
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0uLL;
              v28 = v65;
              v29 = &v80;
              v30 = 17;
              v31 = 0uLL;
              v32 = 0uLL;
              v33 = 0uLL;
              do
              {
                v34 = v28-- != 0;
                v35 = v34;
                v36 = v35 << 63 >> 63;
                v26 = v26 & v36 | v29[-2].i64[0] & ~v36;
                v25 = v25 & v36 | v29[-2].i64[1] & ~v36;
                v24 = v24 & v36 | v29[-1].i64[0] & ~v36;
                v37 = vdupq_n_s64(v36);
                v38 = vdupq_n_s64(~v36);
                v31 = vorrq_s8(vandq_s8(v37, v31), vandq_s8(v38, v29[-3]));
                v27 = vorrq_s8(vandq_s8(v37, v27), vandq_s8(v38, v29[-4]));
                v23 = v23 & v36 | v29[-1].i64[1] & ~v36;
                v40 = *v29;
                v39 = v29[1];
                v29 += 6;
                v33 = vorrq_s8(vandq_s8(v33, v37), vandq_s8(v39, v38));
                v32 = vorrq_s8(vandq_s8(v32, v37), vandq_s8(v40, v38));
                --v30;
              }

              while (v30);
              v67 = v27;
              v68 = v31;
              v71 = v32;
              v72 = v33;
              v34 = __CFADD__(v25, -(-__PAIR128__(v29, v26) >> 64));
              v41 = v25 + -(-__PAIR128__(v29, v26) >> 64);
              v42 = v34;
              v34 = v41 == 0;
              v43 = -v41;
              v45 = (v42 + !v34);
              v44 = v24 + v45;
              v46 = __CFADD__(v24, v45);
              v34 = v44 == 0;
              v47 = -v44;
              v49 = (v46 + !v34);
              v48 = v23 + v49;
              v50 = __CFADD__(v23, v49);
              v34 = v48 == 0;
              v51 = -v48;
              if (v50 + !v34)
              {
                v52 = -1;
              }

              else
              {
                v52 = 0;
              }

              v53 = v52 - v26;
              v34 = __CFADD__(__CFADD__(-v26, v52), v43);
              v54 = __CFADD__(-v26, v52) + v43;
              v34 |= __CFADD__(v52, v54);
              v54 += v52;
              v56 = v34;
              v34 = __CFADD__(v34, v47);
              v55 = v56 + v47;
              v57 = v51 + v34 + (v52 & 0xFFFFFFFF00000001);
              if (v66)
              {
                v58 = 0;
              }

              else
              {
                v58 = -1;
              }

              if (v66)
              {
                v59 = -1;
              }

              else
              {
                v59 = 0;
              }

              v69.i64[0] = v58 & v26 | v59 & v53;
              v69.i64[1] = v59 & v54 | v58 & v25;
              v70.i64[0] = v59 & v55 | v58 & v24;
              v70.i64[1] = v57 & v59 | v58 & v23;
              if (v13)
              {
                v73 = v67;
                v74 = v68;
                v75 = v69;
                v76 = v70;
                v77 = v71;
                v78 = v72;
              }

              else
              {
                fiat_p256_point_add(v73.i64, v75.i64, v77.i64, &v73, &v75, &v77, 0, &v67, &v69, &v71);
              }

              v13 = 0;
              continue;
            }

            v20 = 255;
LABEL_16:
            v19 |= 4 * ((*(a4 + 8 * (v20 >> 6)) >> v20) & 1);
            goto LABEL_17;
          }

          v17 = 0;
          v18 = 255;
LABEL_15:
          v19 = (8 * ((*(a4 + 8 * (v18 >> 6)) >> v18) & 1)) | v17;
          v20 = i + 1;
          goto LABEL_16;
        }

        v15 = 0;
        v16 = 255;
      }

      v17 = (16 * ((*(a4 + 8 * (v16 >> 6)) >> v16) & 1)) | v15;
      v18 = i + 2;
      goto LABEL_15;
    }
  }

  v60 = v74;
  *a2 = v73;
  a2[1] = v60;
  v61 = v76;
  *(a2 + 72) = v75;
  *(a2 + 88) = v61;
  result = *v77.i64;
  v63 = v78;
  a2[9] = v77;
  a2[10] = v63;
  return result;
}

double ec_GFp_nistp256_point_mul_base(uint64_t a1, _OWORD *a2, unint64_t *a3)
{
  v4 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v6 = 31;
  v16 = v5;
  v17 = v5;
  do
  {
    if (v4)
    {
      fiat_p256_point_double(&v22, &v24, v26.i64, &v22, &v24, &v26);
    }

    v7 = a3[2];
    v8 = a3[3];
    v10 = *a3;
    v9 = a3[1];
    fiat_p256_select_point_affine((8 * ((v8 >> (v6 + 32)) & 1)) | (4 * ((v7 >> (v6 + 32)) & 1)) | (2 * ((v9 >> (v6 + 32)) & 1)) | (*a3 >> (v6 + 32)) & 1, &unk_1A90AF1C8, &v16);
    if (v4)
    {
      fiat_p256_point_add(&v22, &v24, v26.i64, &v22, &v24, &v26, 1, &v16, &v18, &v20);
    }

    else
    {
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v27 = v21;
    }

    fiat_p256_select_point_affine((8 * ((v8 >> v6) & 1)) | (4 * ((v7 >> v6) & 1)) | (2 * ((v9 >> v6) & 1)) | (v10 >> v6) & 1, &fiat_p256_g_pre_comp, &v16);
    v4 = 1;
    fiat_p256_point_add(&v22, &v24, v26.i64, &v22, &v24, &v26, 1, &v16, &v18, &v20);
    --v6;
  }

  while (v6 < 0x20);
  v11 = v23;
  *a2 = v22;
  a2[1] = v11;
  v12 = v25;
  *(a2 + 72) = v24;
  *(a2 + 88) = v12;
  result = *v26.i64;
  v14 = v27;
  a2[9] = v26;
  a2[10] = v14;
  return result;
}

double ec_GFp_nistp256_point_mul_public(uint64_t a1, _OWORD *a2, unint64_t *a3, _OWORD *a4, _DWORD *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a4[1];
  v73[0] = *a4;
  v73[1] = v9;
  v10 = *(a4 + 88);
  v74[0] = *(a4 + 72);
  v74[1] = v10;
  memset(v76, 170, sizeof(v76));
  v11 = a4[10];
  v75[0] = a4[9];
  v75[1] = v11;
  v12.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v12.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v72[0] = v12;
  v72[1] = v12;
  v71[0] = v12;
  v71[1] = v12;
  v70[0] = v12;
  v70[1] = v12;
  fiat_p256_point_double(v70, v71, v72[0].i64, v73, v74, v75);
  for (i = 0; i != 42; i += 6)
  {
    fiat_p256_point_add(&v76[i * 16], &v76[i * 16 + 32], &v76[i * 16 + 64], &v73[i], &v73[i + 2], &v75[i], 0, v70, v71, v72);
  }

  v69 = -86;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68[14] = v14;
  v68[15] = v14;
  v68[12] = v14;
  v68[13] = v14;
  v68[10] = v14;
  v68[11] = v14;
  v68[8] = v14;
  v68[9] = v14;
  v68[6] = v14;
  v68[7] = v14;
  v68[4] = v14;
  v68[5] = v14;
  v68[2] = v14;
  v68[3] = v14;
  v68[0] = v14;
  v68[1] = v14;
  v15 = 256;
  ec_compute_wNAF(a1, v68, a5, 0x100uLL, 4);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v17 = 1;
  do
  {
    if (!v17)
    {
      fiat_p256_point_double(&v62, &v64, v66.i64, &v62, &v64, &v66);
    }

    if (v15 <= 0x1F)
    {
      v19 = a3[2];
      v18 = a3[3];
      v20 = *a3;
      v21 = a3[1];
      v22 = (8 * ((v18 >> (v15 + 32)) & 1)) | (4 * ((v19 >> (v15 + 32)) & 1)) | (2 * ((v21 >> (v15 + 32)) & 1)) | (*a3 >> (v15 + 32)) & 1;
      if (v22)
      {
        fiat_p256_point_add(&v62, &v64, v66.i64, &v62, &v64, &v66, 1, &fiat_p256_g_pre_comp[8 * v22 + 112], &fiat_p256_g_pre_comp[8 * v22 + 116], fiat_p256_one);
        v17 = 0;
      }

      v23 = (8 * ((v18 >> v15) & 1)) | (4 * ((v19 >> v15) & 1)) | (2 * ((v21 >> v15) & 1)) | (v20 >> v15) & 1;
      if (v23)
      {
        fiat_p256_point_add(&v62, &v64, v66.i64, &v62, &v64, &v66, 1, &fiat_p256_g_pre_comp[8 * v23 - 8], &fiat_p256_g_pre_comp[8 * v23 - 4], fiat_p256_one);
        v17 = 0;
      }
    }

    v24 = *(v68 + v15);
    if (*(v68 + v15))
    {
      if ((v24 & 1) == 0)
      {
        ec_GFp_nistp256_point_mul_public_cold_1();
      }

      if (v24 >= 0)
      {
        v25 = *(v68 + v15);
      }

      else
      {
        v25 = -v24;
      }

      v26 = v25 >> 1;
      v27 = &v73[6 * v26];
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = v28;
      v61 = v28;
      if (v24 < 0)
      {
        v34 = v27[2].i64[0];
        v35 = v27[2].i64[1];
        v36 = v34 == 0;
        v37 = -v34;
        v38 = v16 + !v36;
        v36 = __CFADD__(v35, v38);
        v39 = v35 + v38;
        v40 = v36;
        v36 = v39 == 0;
        v41 = -v39;
        v42 = v27[3].i64[0];
        v43 = v27[3].i64[1];
        v45 = (v40 + !v36);
        v44 = v42 + v45;
        v46 = __CFADD__(v42, v45);
        v36 = v44 == 0;
        v47 = -v44;
        v49 = (v46 + !v36);
        v48 = v43 + v49;
        v50 = __CFADD__(v43, v49);
        v36 = v48 == 0;
        v51 = -v48;
        if (v50 + !v36)
        {
          v52 = -1;
        }

        else
        {
          v52 = 0;
        }

        v36 = __CFADD__(__CFADD__(v37, v52), v41);
        v53 = __CFADD__(v37, v52) + v41;
        *&v60 = v37 + v52;
        *(&v60 + 1) = v52 + v53;
        v54 = (__PAIR128__(v52 & 0xFFFFFFFF00000001, v36 | __CFADD__(v52, v53)) + __PAIR128__(v51, v47)) >> 64;
        v16 = (v36 | __CFADD__(v52, v53)) + v47;
        v61 = __PAIR128__(v54, v16);
        v29 = &v60;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = &v27[2];
        if (v17)
        {
LABEL_18:
          v30 = &v73[6 * v26];
          v31 = v30[1];
          v62 = *v30;
          v63 = v31;
          v32 = *(v29 + 1);
          v64 = *v29;
          v65 = v32;
          v33 = v27[5];
          v66 = v27[4];
          v67 = v33;
LABEL_33:
          v17 = 0;
          goto LABEL_34;
        }
      }

      fiat_p256_point_add(&v62, &v64, v66.i64, &v62, &v64, &v66, 0, v27, v29, v27 + 4);
      goto LABEL_33;
    }

LABEL_34:
    --v15;
  }

  while (v15 != -1);
  v55 = v63;
  *a2 = v62;
  a2[1] = v55;
  v56 = v65;
  *(a2 + 72) = v64;
  *(a2 + 88) = v56;
  result = *v66.i64;
  v58 = v67;
  a2[9] = v66;
  a2[10] = v58;
  return result;
}

uint64_t ec_GFp_nistp256_cmp_x_coordinate(uint64_t a1, __int128 *a2, const unint64_t *a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    return 0;
  }

  v7 = a2[10];
  v96[0] = a2[9];
  v96[1] = v7;
  fiat_p256_mul(v96, v96, v96);
  v8 = *(a3 + 1);
  v94 = *a3;
  v95 = v8;
  fiat_p256_mul(&v94, &v94, v96);
  v9 = 0;
  v10 = a2[1];
  v92 = *a2;
  v11 = (v92 * 0xFFFFFFFF00000001) >> 64;
  v12 = (v92 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v13 = 0xFFFFFFFFLL * v92 + __CFADD__(-v92, v92) + v12;
  v14 = __CFADD__(__CFADD__(-v92, v92), v12) | __CFADD__(0xFFFFFFFFLL * v92, __CFADD__(-v92, v92) + v12) ? ((v92 * 0xFFFFFFFFuLL) >> 64) + 1 : (v92 * 0xFFFFFFFFuLL) >> 64;
  v31 = __CFADD__(v13, *(&v92 + 1));
  v15 = v13 + *(&v92 + 1);
  v16 = v31;
  v17 = 0xFFFFFFFF00000001 * v15;
  v18 = (__PAIR128__(0xFFFFFFFFLL, -1) * v15) >> 64;
  v19 = v16 + __CFADD__(-v15, v15) + v14;
  v31 = __CFADD__(v19, v18);
  v20 = v19 + v18;
  v21 = v31 - 0xFFFFFFFFLL * v92;
  v22 = __CFADD__(v31, 0xFFFFFFFF00000001 * v92);
  v31 = __CFADD__(v17, v11);
  v23 = v17 + v11;
  v24 = v31;
  v31 = __CFADD__((v15 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFFLL * v15);
  v93 = v10;
  v25 = (v15 * 0xFFFFFFFF00000001) >> 64;
  v26 = (v15 * 0xFFFFFFFFuLL) >> 64;
  v28 = v31 + v21;
  v31 = __CFADD__(v31, v21) | __CFADD__(v26, v28);
  v27 = v26 + v28;
  v29 = v22 + v31 + v23;
  v30 = __CFADD__(v31, v23) | __CFADD__(v22, v31 + v23) ? v24 + 1 : v24;
  v31 = __CFADD__(v20, v93);
  v32 = v20 + v93;
  v33 = v31;
  v34 = v31 + v27;
  v36 = __CFADD__(v31, v27);
  v31 = __CFADD__(v36, v29);
  v35 = v36 + v29;
  v37 = (v32 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v38 = v25 + v31 + v30;
  v39 = 0xFFFFFFFF * v32;
  v40 = (__PAIR128__(0xFFFFFFFFLL, -1) * v32) >> 64;
  v41 = 0xFFFFFFFF00000001 * v32;
  v42 = v33 + __CFADD__(-v32, v32) + v27;
  v31 = __CFADD__(__CFADD__(__CFADD__(-v32, v32), v34) | __CFADD__(v40, __CFADD__(-v32, v32) + v34), v35);
  v43 = (__CFADD__(__CFADD__(-v32, v32), v34) | __CFADD__(v40, __CFADD__(-v32, v32) + v34)) + v35;
  v44 = v31;
  v31 = __CFADD__(v41, v38);
  v45 = v41 + v38;
  v46 = v31;
  v47 = 0xFFFFFFFF * v32;
  v48 = (v32 * 0xFFFFFFFF00000001) >> 64;
  v49 = (v32 * 0xFFFFFFFFuLL) >> 64;
  v50 = v42 + v37 + v39;
  v31 = __CFADD__(__CFADD__(v37, v39), v43) | __CFADD__(v49, (__PAIR128__(v43, v37) + v47) >> 64);
  v51 = v49 + ((__PAIR128__(v43, v37) + v47) >> 64);
  v52 = v44 + v31 + v45;
  v53 = __CFADD__(v31, v45) | __CFADD__(v44, v31 + v45) ? v46 + 1 : v46;
  v54 = __CFADD__(v50, *(&v93 + 1));
  v55 = v50 + *(&v93 + 1);
  v56 = v54;
  v57 = v54 + v51;
  v59 = __CFADD__(v54, v51);
  v31 = __CFADD__(v59, v52);
  v58 = v59 + v52;
  v60 = (v55 * 0xFFFFFFFF00000001) >> 64;
  v61 = v48 + v31 + v53;
  v62 = 0xFFFFFFFF00000001 * v55;
  v63 = -v55;
  v64 = (__PAIR128__(0xFFFFFFFFLL, -1) * v55) >> 64;
  v65 = __CFADD__((v55 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v55) ? ((v55 * 0xFFFFFFFFuLL) >> 64) + 1 : (v55 * 0xFFFFFFFFuLL) >> 64;
  v31 = __CFADD__(v63, v55);
  v66 = v56 + __CFADD__(v63, v55) + v51 + v64;
  v68 = __CFADD__(v31, v57) | __CFADD__(v64, v31 + v57);
  v67 = v65 + v68 + v58;
  v70 = __CFADD__(v68, v58) | __CFADD__(v65, v68 + v58);
  v69 = v61 + v70 + v62;
  v71 = __CFADD__(v70, v62) | __CFADD__(v61, v70 + v62) ? v60 + 1 : v60;
  v72 = v67 - (1 - __CFADD__(v66, 1));
  v73 = v71 - -((v69 - (1 - (__CFADD__(v72, 0xFFFFFFFF00000001) + BYTE8(v72)))) >> 64);
  if (1 == __CFADD__(v73, 0xFFFFFFFFLL) + BYTE8(v73))
  {
    v9 = -1;
    v74 = 0;
  }

  else
  {
    v74 = -1;
  }

  v75 = v9 & (v66 + 1) | v74 & v66;
  v76 = v9 & (v72 - 0xFFFFFFFF) | v74 & v67;
  v77 = v9 & (v69 - (1 - (__CFADD__(v72, 0xFFFFFFFF00000001) + BYTE8(v72)))) | v74 & v69;
  v78 = v9 & (v73 + 0xFFFFFFFF) | v71 & v74;
  *&v92 = v75;
  *(&v92 + 1) = v76;
  *&v93 = v77;
  *(&v93 + 1) = v78;
  v79 = v94 == v75 && *(&v94 + 1) == v76;
  v80 = v79 && v95 == v77;
  if (v80 && *(&v95 + 1) == v78)
  {
    return 1;
  }

  v82 = *(a1 + 328);
  if (v82 != *(a1 + 264))
  {
    ec_GFp_nistp256_cmp_x_coordinate_cold_1();
  }

  if ((v91 = 0xAAAAAAAAAAAAAAAALL, *&v83 = 0xAAAAAAAAAAAAAAAALL, *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL, v89 = v83, v90 = v83, v87 = v83, v88 = v83, !bn_add_words(&v87, a3, *(a1 + 256), v82)) && bn_less_than_words(&v87, *(a1 + 320), *(a1 + 328)) && ((v94 = v87, v95 = v88, fiat_p256_mul(&v94, &v94, v96), v94 == v92) ? (v84 = *(&v94 + 1) == *(&v92 + 1)) : (v84 = 0), v84 ? (v85 = v95 == v93) : (v85 = 0), v85 ? (v86 = *(&v95 + 1) == *(&v93 + 1)) : (v86 = 0), v86))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

double fiat_p256_point_add(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned __int128 *a4, unsigned __int128 *a5, unint64_t *a6, int a7, unint64_t *a8, unint64_t *a9, int8x16_t *a10)
{
  v230 = *MEMORY[0x1E69E9840];
  v12.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v12.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v228 = v12;
  v229 = v12;
  v226 = v12;
  v227 = v12;
  v224 = v12;
  v225 = v12;
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v194 = v14 | *a6 | v15 | v16;
  v17 = a10->i64[0];
  v18 = a10->u64[1];
  v20 = a10[1].u64[0];
  v19 = a10[1].u64[1];
  v196 = v18 | a10->i64[0] | v20 | v19;
  v222 = v12;
  v223 = v12;
  fiat_p256_square(v222.i64, a6);
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v23;
  v221 = v23;
  v218 = v23;
  v219 = v23;
  v216 = v23;
  v217 = v23;
  if (a7)
  {
    v24 = a4;
    v25 = a4[1];
    *(&v27 + 1) = v14;
    *&v27 = v13;
    v26 = v27 >> 63;
    v220 = *a4;
    v221 = v25;
    *(&v27 + 1) = v15;
    *&v27 = v14;
    v28 = v27 >> 63;
    *(&v27 + 1) = v16;
    *&v27 = v15;
    v29 = v27 >> 63;
    v30 = v29 - __PAIR128__(v22, -((v28 - __PAIR128__(v21, (1 - __CFADD__(v26, 0xFFFFFFFF00000000)))) >> 64));
    if ((v16 < 0) + (v16 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if ((v16 < 0) + (v16 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    *&v216 = v31 & ((2 * v13) | 1) | v32 & (2 * v13);
    *(&v216 + 1) = v31 & (v26 - 0x100000000) | v32 & v26;
    *&v217 = v31 & (v28 - (1 - __CFADD__(v26, 0xFFFFFFFF00000000))) | v32 & v28;
    *(&v217 + 1) = v31 & (v30 + 0xFFFFFFFF) | v32 & v29;
    v33 = a10;
    v34 = a5;
    v35 = a5[1];
    v218 = *a5;
    v219 = v35;
  }

  else
  {
    v214 = v23;
    v215 = v23;
    fiat_p256_square(&v214, a10);
    v36 = fiat_p256_mul(&v220, a4, &v214);
    v38 = v17 + v13;
    v39 = v14 + __CFADD__(v17, v13) + v18;
    v40 = v15 + (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20;
    v41 = v16 + (__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20)) + v19;
    if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20), v19) | __CFADD__(v16, (__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20)) + v19))
    {
      v42 = 1;
    }

    else
    {
      v42 = 0;
    }

    v43 = v39 - __PAIR128__(v37, (1 - __CFADD__(v38, 1)));
    v44 = v41 - __PAIR128__(v36, -((v40 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43))))) >> 64));
    v45 = -(v42 + (v42 < (1 - (__CFADD__(v44, 0xFFFFFFFFLL) + BYTE8(v44)))));
    v46 = v45 == 0;
    if (v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1;
    }

    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    *&v216 = v47 & (v38 + 1) | v48 & v38;
    *(&v216 + 1) = v47 & (v43 - 0xFFFFFFFF) | v48 & v39;
    *&v217 = v47 & (v40 - (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43)))) | v48 & v40;
    *(&v217 + 1) = v47 & (v44 + 0xFFFFFFFF) | v48 & v41;
    fiat_p256_square(&v216, &v216);
    v49 = v216 - v222.i64[0];
    v50 = v222.i64[1] + -((v216 - __PAIR128__(v222.u64[0], v222.u64[0])) >> 64);
    v51 = *(&v216 + 1) - v50;
    v58 = __CFADD__(v223.i64[0], -((*(&v216 + 1) - __PAIR128__(v50, v50)) >> 64));
    v52 = v223.i64[0] + -((*(&v216 + 1) - __PAIR128__(v50, v50)) >> 64);
    v53 = v58;
    v54 = v217 - v52;
    v58 = __CFADD__(v223.i64[1], -((v217 - __PAIR128__(v53, v52)) >> 64));
    v55 = v223.i64[1] + -((v217 - __PAIR128__(v53, v52)) >> 64);
    v56 = v58;
    v57 = *(&v217 + 1) - __PAIR128__(v56, v55);
    v58 = __CFADD__(__CFADD__(v49, *(&v57 + 1)), v51) | __CFADD__(DWORD2(v57), __CFADD__(v49, *(&v57 + 1)) + v51);
    v59 = DWORD2(v57) + __CFADD__(v49, *(&v57 + 1)) + v51;
    v60 = v57 + __CFADD__(v58, v54) + (*(&v57 + 1) & 0xFFFFFFFF00000001);
    v62 = ((v49 + *(&v57 + 1)) - __PAIR128__(v214, v214)) >> 64;
    v61 = v49 + *(&v57 + 1) - v214;
    v63 = v59 - __PAIR128__(*(&v214 + 1) + -v62, *(&v214 + 1) + -v62);
    v64 = (v58 + v54 - __PAIR128__(v215 + -BYTE8(v63), v215 + -BYTE8(v63))) >> 64;
    if (((v60 - __PAIR128__(*(&v215 + 1) + -v64, *(&v215 + 1) + -v64)) >> 64))
    {
      v65 = -1;
    }

    else
    {
      v65 = 0;
    }

    v66 = __CFADD__(v61, v65) + v63;
    *&v216 = v61 + v65;
    *(&v216 + 1) = v65 + v66;
    v217 = __PAIR128__(v65 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v61, v65), v63) | __CFADD__(v65, v66)) + __PAIR128__(v60 - (*(&v215 + 1) + -((v58 + v54 - __PAIR128__(v215 + -BYTE8(v63), v215 + -BYTE8(v63))) >> 64)), v58 + v54 - (v215 + -BYTE8(v63)));
    fiat_p256_mul(&v218, a10, &v214);
    v34 = a5;
    fiat_p256_mul(&v218, &v218, a5);
    v24 = a4;
    v33 = a10;
  }

  *&v67 = 0xAAAAAAAAAAAAAAAALL;
  *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v214 = v67;
  v215 = v67;
  fiat_p256_mul(&v214, a8, &v222);
  v68 = v214 - v220;
  v69 = *(&v220 + 1) + -((v214 - __PAIR128__(v220, v220)) >> 64);
  v70 = *(&v214 + 1) - v69;
  v58 = __CFADD__(v221, -((*(&v214 + 1) - __PAIR128__(v69, v69)) >> 64));
  v71 = v221 + -((*(&v214 + 1) - __PAIR128__(v69, v69)) >> 64);
  v72 = v58;
  v74 = v215 - v71;
  v73 = (v215 - __PAIR128__(v72, v71)) >> 64;
  v58 = __CFADD__(*(&v221 + 1), -v73);
  v75 = *(&v221 + 1) + -v73;
  v76 = v58;
  v77 = *(&v215 + 1) - v75;
  if (((*(&v215 + 1) - __PAIR128__(v76, v75)) >> 64))
  {
    v78 = -1;
  }

  else
  {
    v78 = 0;
  }

  v79 = v68 + v78;
  v80 = v78 + __CFADD__(v68, v78) + v70;
  v212[0] = v68 + v78;
  v212[1] = v80;
  v81 = __PAIR128__(v78 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v78), v70) | __CFADD__(v78, __CFADD__(v68, v78) + v70)) + __PAIR128__(v77, v74);
  v213 = __PAIR128__(v78 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v78), v70) | __CFADD__(v78, __CFADD__(v68, v78) + v70)) + __PAIR128__(v77, v74);
  fiat_p256_mul(v224.i64, v212, &v216);
  *&v82 = 0xAAAAAAAAAAAAAAAALL;
  *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v211[0] = v82;
  v211[1] = v82;
  fiat_p256_mul(v211, a6, &v222);
  *&v83 = 0xAAAAAAAAAAAAAAAALL;
  *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v209 = v83;
  v210 = v83;
  v84 = fiat_p256_mul(&v209, a9, v211);
  v86 = v209 - v218;
  v87 = *(&v218 + 1) + -((v209 - __PAIR128__(v218, v218)) >> 64);
  v88 = *(&v209 + 1) - v87;
  v58 = __CFADD__(v219, -((*(&v209 + 1) - __PAIR128__(v87, v87)) >> 64));
  v89 = v219 + -((*(&v209 + 1) - __PAIR128__(v87, v87)) >> 64);
  v90 = v58;
  v92 = v210 - v89;
  v91 = (v210 - __PAIR128__(v90, v89)) >> 64;
  v58 = __CFADD__(*(&v219 + 1), -v91);
  v93 = *(&v219 + 1) + -v91;
  v94 = v58;
  if (((*(&v210 + 1) - __PAIR128__(v94, v93)) >> 64))
  {
    v95 = -1;
  }

  else
  {
    v95 = 0;
  }

  v96 = v86 + v95;
  v97 = __CFADD__(v86, v95) + v88;
  v98 = __PAIR128__(v95 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v86, v95), v88) | __CFADD__(v95, v97)) + __PAIR128__(*(&v210 + 1) - v93, v92);
  *(&v100 + 1) = v95 + v97;
  *&v100 = v86 + v95;
  v99 = v100 >> 63;
  *(&v100 + 1) = (__CFADD__(__CFADD__(v86, v95), v88) | __CFADD__(v95, v97)) + v92;
  *&v100 = v95 + v97;
  v101 = v100 >> 63;
  v102 = v98 >> 63;
  v103 = v99 - 0x100000000;
  v104 = v101 - (1 - __CFADD__(v99, 0xFFFFFFFF00000000));
  v105 = v102 - __PAIR128__(v85, -((v101 - __PAIR128__(v84, (1 - __CFADD__(v99, 0xFFFFFFFF00000000)))) >> 64));
  if ((v98 < 0) + (*(&v98 + 1) >> 63 < (1 - (__CFADD__(v105, 0xFFFFFFFFLL) + BYTE8(v105)))))
  {
    v106 = 0;
  }

  else
  {
    v106 = -1;
  }

  v205 = v106 & ((2 * v96) | 1) | *(&v105 + 1) & (2 * v96);
  v206 = v106 & v103 | *(&v105 + 1) & v99;
  v207 = v106 & v104 | *(&v105 + 1) & v101;
  v208 = v106 & (v105 + 0xFFFFFFFF) | *(&v105 + 1) & v102;
  v107 = v80 | v79 | v81 | *(&v81 + 1) | v206 | v205 | v207 | v208;
  if (((v196 | -v196) & (v194 | -v194) & ~v107 & (v107 - 1) & 0x8000000000000000) == 0)
  {
    *(&v110 + 1) = v80;
    *&v110 = v79;
    v109 = v110 >> 63;
    *(&v110 + 1) = v81;
    *&v110 = v80;
    v111 = v110 >> 63;
    v112 = v81 >> 63;
    v113 = v112 - __PAIR128__(v104, -((v111 - __PAIR128__(v103, (1 - __CFADD__(v109, 0xFFFFFFFF00000000)))) >> 64));
    if (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)) + (*(&v81 + 1) >> 63 < (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)))))
    {
      v114 = 0;
    }

    else
    {
      v114 = -1;
    }

    if (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)) + (*(&v81 + 1) >> 63 < (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)))))
    {
      v115 = -1;
    }

    else
    {
      v115 = 0;
    }

    v204[0] = v114 & ((2 * v79) | 1) | v115 & (2 * v79);
    v204[1] = v114 & (v109 - 0x100000000) | v115 & v109;
    v204[2] = v114 & (v111 - (1 - __CFADD__(v109, 0xFFFFFFFF00000000))) | v115 & v111;
    v204[3] = v114 & (v113 + 0xFFFFFFFF) | v115 & v112;
    fiat_p256_square(v204, v204);
    *&v116 = 0xAAAAAAAAAAAAAAAALL;
    *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v202 = v116;
    v203 = v116;
    fiat_p256_mul(&v202, v212, v204);
    *&v117 = 0xAAAAAAAAAAAAAAAALL;
    *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v200 = v117;
    v201 = v117;
    fiat_p256_mul(&v200, &v220, v204);
    fiat_p256_square(v228.i64, &v205);
    v118 = v228.i64[0] - v202;
    v119 = *(&v202 + 1) + -((v228.u64[0] - __PAIR128__(v202, v202)) >> 64);
    v120 = v228.i64[1] - v119;
    v58 = __CFADD__(v203, -((v228.u64[1] - __PAIR128__(v119, v119)) >> 64));
    v121 = v203 + -((v228.u64[1] - __PAIR128__(v119, v119)) >> 64);
    v122 = v58;
    v124 = v229.i64[0] - v121;
    v123 = (v229.u64[0] - __PAIR128__(v122, v121)) >> 64;
    v58 = __CFADD__(*(&v203 + 1), -v123);
    v125 = *(&v203 + 1) + -v123;
    v126 = v58;
    if (((v229.u64[1] - __PAIR128__(v126, v125)) >> 64))
    {
      v127 = -1;
    }

    else
    {
      v127 = 0;
    }

    v128 = v118 + v127 - v200;
    v129 = v127 + __CFADD__(v118, v127) + v120 - __PAIR128__(*(&v200 + 1) + -(((v118 + v127) - __PAIR128__(v124, v200)) >> 64), *(&v200 + 1) + -(((v118 + v127) - __PAIR128__(v124, v200)) >> 64));
    v131 = ((__CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + v124 - __PAIR128__(v201 + -BYTE8(v129), v201 + -BYTE8(v129))) >> 64;
    v130 = (__CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + v124 - (v201 + -BYTE8(v129));
    v132 = ((__PAIR128__(v127 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + __PAIR128__(v229.i64[1] - v125, v124)) >> 64) - __PAIR128__(*(&v201 + 1) + -v131, *(&v201 + 1) + -v131);
    v133 = v132 + __CFADD__(__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129), v130) + (*(&v132 + 1) & 0xFFFFFFFF00000001);
    LOBYTE(v131) = ((v128 + *(&v132 + 1)) - __PAIR128__(*(&v132 + 1) & 0xFFFFFFFF00000001, v200)) >> 64;
    v134 = v128 + *(&v132 + 1) - v200;
    v135 = DWORD2(v132) + __CFADD__(v128, *(&v132 + 1)) + v129 - (*(&v200 + 1) + -(((v128 + *(&v132 + 1)) - __PAIR128__(*(&v132 + 1) & 0xFFFFFFFF00000001, v200)) >> 64));
    LOBYTE(v131) = (DWORD2(v132) + __CFADD__(v128, *(&v132 + 1)) + v129 - __PAIR128__(*(&v200 + 1) + -v131, *(&v200 + 1) + -v131)) >> 64;
    v136 = (__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129)) + v130 - (v201 + -v131);
    LOBYTE(v131) = ((__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129)) + v130 - __PAIR128__(v201 + -v131, v201 + -v131)) >> 64;
    v137 = v133 - (*(&v201 + 1) + -v131);
    if (((v133 - __PAIR128__(*(&v201 + 1) + -v131, *(&v201 + 1) + -v131)) >> 64))
    {
      v138 = -1;
    }

    else
    {
      v138 = 0;
    }

    v139 = v134 + v138;
    v191 = (__CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + v136;
    v193 = v138 + __CFADD__(v134, v138) + v135;
    v140 = __PAIR128__(v138 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + __PAIR128__(v137, v136);
    v187 = (__PAIR128__(v138 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + __PAIR128__(v137, v136)) >> 64;
    v142 = v200 - (v134 + v138);
    v141 = (v200 - __PAIR128__(v137, v134 + v138)) >> 64;
    v143 = *(&v200 + 1) - __PAIR128__(v193 + -v141, v193 + -v141);
    v144 = (v201 - __PAIR128__(v140 + -BYTE8(v143), v140 + -BYTE8(v143))) >> 64;
    if (((*(&v201 + 1) - __PAIR128__(*(&v140 + 1) + -v144, *(&v140 + 1) + -v144)) >> 64))
    {
      v145 = -1;
    }

    else
    {
      v145 = 0;
    }

    v146 = __CFADD__(v142, v145) + v143;
    v226.i64[0] = v142 + v145;
    v226.i64[1] = v145 + v146;
    v227 = __PAIR128__(v145 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v142, v145), v143) | __CFADD__(v145, v146)) + __PAIR128__(*(&v201 + 1) - (*(&v140 + 1) + -((v201 - __PAIR128__(v140 + -BYTE8(v143), v140 + -BYTE8(v143))) >> 64)), v201 - (v140 + -BYTE8(v143)));
    fiat_p256_mul(v226.i64, &v226, &v205);
    *&v147 = 0xAAAAAAAAAAAAAAAALL;
    *(&v147 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v198 = v147;
    v199 = v147;
    fiat_p256_mul(&v198, &v218, &v202);
    v149 = v226.i64[0] - v198;
    v150 = v226.i64[1] - (*(&v198 + 1) + -((v226.u64[0] - __PAIR128__(v148, v198)) >> 64));
    v58 = __CFADD__(v199, -((v226.u64[1] - __PAIR128__(*(&v198 + 1) + -((v226.u64[0] - __PAIR128__(v148, v198)) >> 64), *(&v198 + 1) + -((v226.u64[0] - __PAIR128__(v148, v198)) >> 64))) >> 64));
    v151 = v199 + -((v226.u64[1] - __PAIR128__(*(&v198 + 1) + -((v226.u64[0] - __PAIR128__(v148, v198)) >> 64), *(&v198 + 1) + -((v226.u64[0] - __PAIR128__(v148, v198)) >> 64))) >> 64);
    v152 = v58;
    v153 = v227 - v151;
    v58 = __CFADD__(*(&v199 + 1), -((v227 - __PAIR128__(v152, v151)) >> 64));
    v154 = *(&v199 + 1) + -((v227 - __PAIR128__(v152, v151)) >> 64);
    v155 = v58;
    v156 = *(&v227 + 1) - __PAIR128__(v155, v154);
    v157 = __CFADD__(v149, *(&v156 + 1)) + v150;
    v159 = __CFADD__(__CFADD__(v149, *(&v156 + 1)), v150) | __CFADD__(DWORD2(v156), v157);
    v158 = v159 + v153;
    v160 = v156 + __CFADD__(v159, v153) + (*(&v156 + 1) & 0xFFFFFFFF00000001);
    v161 = v149 + *(&v156 + 1) - v198;
    v162 = DWORD2(v156) + v157 - (*(&v198 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v198, v198)) >> 64));
    v58 = __CFADD__(v199, -((DWORD2(v156) + v157 - __PAIR128__(DWORD2(v156) + v157, *(&v198 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v198, v198)) >> 64))) >> 64));
    v163 = v199 + -((DWORD2(v156) + v157 - __PAIR128__(DWORD2(v156) + v157, *(&v198 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v198, v198)) >> 64))) >> 64);
    v164 = v58;
    v166 = v158 - v163;
    v165 = (v158 - __PAIR128__(v164, v163)) >> 64;
    v58 = __CFADD__(*(&v199 + 1), -v165);
    v167 = *(&v199 + 1) + -v165;
    v168 = v58;
    if (((v160 - __PAIR128__(v168, v167)) >> 64))
    {
      v169 = -1;
    }

    else
    {
      v169 = 0;
    }

    v170 = v161 + v169;
    v171 = v169 + __CFADD__(v161, v169) + v162;
    v172 = __PAIR128__(v169 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v161, v169), v162) | __CFADD__(v169, __CFADD__(v161, v169) + v162)) + __PAIR128__(v160 - v167, v166);
    v173 = v34;
    if (v194)
    {
      v174 = 0;
    }

    else
    {
      v174 = -1;
    }

    v175 = v24;
    if (v194)
    {
      v176 = -1;
    }

    else
    {
      v176 = 0;
    }

    v177 = a8[1] & v174 | v176 & v193;
    v178 = a8[2] & v174 | v176 & v191;
    v179 = a8[3] & v174;
    v228.i64[0] = v174 & *a8 | v176 & v139;
    v228.i64[1] = v177;
    v229.i64[0] = v178;
    v229.i64[1] = v179 | v176 & v187;
    fiat_p256_cmovznz(a1, v196, v175, &v228);
    v180 = a9[1] & v174 | v176 & v171;
    v181 = a9[2] & v174 | v176 & v172;
    v182 = a9[3] & v174;
    v226.i64[0] = *a9 & v174 | v176 & v170;
    v226.i64[1] = v180;
    *&v227 = v181;
    *(&v227 + 1) = v182 | *(&v172 + 1) & v176;
    fiat_p256_cmovznz(a2, v196, v173, &v226);
    v183 = vdupq_n_s64(v176);
    v184 = vdupq_n_s64(v174);
    v185 = vorrq_s8(vandq_s8(v224, v183), vandq_s8(*v33, v184));
    v186 = vorrq_s8(vandq_s8(v225, v183), vandq_s8(v33[1], v184));
    v224 = v185;
    v225 = v186;
    *&result = fiat_p256_cmovznz(a3, v196, a6, &v224).u64[0];
  }

  else
  {

    fiat_p256_point_double(a1, a2, a3, v24, v34, a6);
  }

  return result;
}

uint64_t *fiat_p256_point_double(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v253 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v251 = v10;
  v252 = v10;
  *v250 = v10;
  *&v250[16] = v10;
  *v249 = v10;
  *&v249[16] = v10;
  v243[0] = v10;
  v243[1] = v10;
  fiat_p256_square(&v251, a6);
  fiat_p256_square(v250, a5);
  fiat_p256_mul(v249, a4, v250);
  v13 = *a4;
  v14 = a4[1];
  v15 = v251;
  v17 = *a4 - v251;
  v18 = __CFADD__(*(&v251 + 1), -((*a4 - __PAIR128__(v16, v251)) >> 64));
  v19 = *(&v251 + 1) + -((*a4 - __PAIR128__(v16, v251)) >> 64);
  v20 = v18;
  v21 = v14 - v19;
  v22 = v252;
  v18 = __CFADD__(v252, -((v14 - __PAIR128__(v20, v19)) >> 64));
  v23 = v252 + -((v14 - __PAIR128__(v20, v19)) >> 64);
  v24 = v18;
  v25 = a4[2];
  v26 = a4[3];
  v27 = v25 - v23;
  v18 = __CFADD__(*(&v252 + 1), -((v25 - __PAIR128__(v24, v23)) >> 64));
  v28 = *(&v252 + 1) + -((v25 - __PAIR128__(v24, v23)) >> 64);
  v29 = v18;
  v30 = v26 - __PAIR128__(v29, v28);
  v31 = __CFADD__(v17, *(&v30 + 1)) + v21;
  v32 = __CFADD__(__CFADD__(v17, *(&v30 + 1)), v21) | __CFADD__(DWORD2(v30), v31);
  v245 = v17 + *(&v30 + 1);
  v246 = DWORD2(v30) + v31;
  v247 = v32 + v27;
  v248 = v30 + __CFADD__(v32, v27) + (*(&v30 + 1) & 0xFFFFFFFF00000001);
  v18 = __CFADD__(v251, v13);
  v33 = v251 + v13;
  v35 = v18;
  v18 = __CFADD__(v18, v14);
  v34 = v35 + v14;
  v36 = v18;
  v37 = v252 + v25;
  v38 = __CFADD__(v252, v25);
  v39 = *(&v252 + 1) + v26;
  v40 = __CFADD__(*(&v252 + 1), v26);
  v42 = v34 + *(&v251 + 1);
  v18 = __CFADD__(__CFADD__(v34, *(&v251 + 1)), v37) | __CFADD__(v36, (__PAIR128__(v37, v34) + *(&v251 + 1)) >> 64);
  v41 = v36 + ((__PAIR128__(v37, v34) + *(&v251 + 1)) >> 64);
  v44 = v18 + v39;
  v18 = __CFADD__(v18, v39) | __CFADD__(v38, v44);
  v43 = v38 + v44;
  if (v18)
  {
    v45 = v40 + 1;
  }

  else
  {
    v45 = v40;
  }

  v46 = v42 - __PAIR128__(v26, (1 - __CFADD__(v33, 1)));
  v47 = v43 - -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64);
  v48 = -(v45 + (v45 < (1 - (__CFADD__(v47, 0xFFFFFFFFLL) + ((v43 - __PAIR128__(DWORD2(v30), -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64))) >> 64)))));
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = -1;
  }

  if (v48)
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = v49 & (v33 + 1) | v50 & v33;
  v52 = v49 & (v46 - 0xFFFFFFFF) | v50 & v42;
  v53 = v49 & (v41 - (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46)))) | v50 & v41;
  v54 = v49 & (v47 + 0xFFFFFFFF) | v50 & v43;
  *(&v56 + 1) = v52;
  *&v56 = v51;
  v55 = v56 >> 63;
  *(&v56 + 1) = v53;
  *&v56 = v52;
  v57 = v56 >> 63;
  *(&v56 + 1) = v54;
  *&v56 = v53;
  v58 = v56 >> 63;
  v59 = v57 - (1 - __CFADD__(v55, 0xFFFFFFFF00000000));
  v60 = v58 - -((v57 - __PAIR128__(v11, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64);
  v61 = 1 - (__CFADD__(v60, 0xFFFFFFFFLL) + ((v58 - __PAIR128__(v12, -((v57 - __PAIR128__(v11, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v62 = 0;
  }

  else
  {
    v62 = -1;
  }

  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  v64 = v62 & ((2 * v51) | 1) | v63 & (2 * v51);
  v65 = v62 & (v55 - 0x100000000) | v63 & v55;
  v66 = v62 & v59;
  v67 = v62 & v59 | v63 & v57;
  v68 = v62 & (v60 + 0xFFFFFFFF) | v63 & v58;
  v18 = __CFADD__(v64, v51);
  v69 = v64 + v51;
  v71 = v18;
  v18 = __CFADD__(v18, v52);
  v70 = v71 + v52;
  v72 = v18;
  v18 = __CFADD__(v70, v65);
  v73 = v70 + v65;
  v75 = v18;
  v18 = __CFADD__(v18, v53);
  v74 = v75 + v53;
  v18 |= __CFADD__(v72, v74);
  v74 += v72;
  v76 = v18;
  v18 = __CFADD__(v74, v67);
  v77 = v74 + v67;
  v79 = v18;
  v18 = __CFADD__(v18, v54);
  v78 = v79 + v54;
  v18 |= __CFADD__(v76, v78);
  v78 += v76;
  v80 = v18;
  v18 = __CFADD__(v78, v68);
  v81 = v78 + v68;
  if (v18)
  {
    ++v80;
  }

  v82 = v73 - __PAIR128__(v72, (1 - __CFADD__(v69, 1)));
  v83 = v81 - __PAIR128__(v66, -((v77 - __PAIR128__(v64, (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82))))) >> 64));
  if (v80 + (v80 < (1 - (__CFADD__(v83, 0xFFFFFFFFLL) + BYTE8(v83)))))
  {
    v84 = 0;
  }

  else
  {
    v84 = -1;
  }

  v244[0] = v84 & (v69 + 1) | v69 & *(&v83 + 1);
  v244[1] = v84 & (v82 - 0xFFFFFFFF) | *(&v83 + 1) & v73;
  v244[2] = v84 & (v77 - (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82)))) | *(&v83 + 1) & v77;
  v244[3] = v84 & (v83 + 0xFFFFFFFF) | *(&v83 + 1) & v81;
  fiat_p256_mul(v243, &v245, v244);
  fiat_p256_square(a1, v243);
  v85 = *v249 >> 63;
  v86 = *&v249[8] >> 63;
  v87 = *&v249[16] >> 63;
  v89 = v86 - (1 - __CFADD__(v85, 0xFFFFFFFF00000000));
  v92 = v87 - -((v86 - __PAIR128__(v88, (1 - __CFADD__(v85, 0xFFFFFFFF00000000)))) >> 64);
  v91 = (v87 - __PAIR128__(v90, -((v86 - __PAIR128__(v88, (1 - __CFADD__(v85, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v93 = v92 + 0xFFFFFFFF;
  v94 = 1 - (__CFADD__(v92, 0xFFFFFFFFLL) + v91);
  if ((*&v249[24] < 0) + (*&v249[24] >> 63 < v94))
  {
    v95 = 0;
  }

  else
  {
    v95 = -1;
  }

  if ((*&v249[24] < 0) + (*&v249[24] >> 63 < v94))
  {
    v96 = -1;
  }

  else
  {
    v96 = 0;
  }

  v97 = v95 & ((2 * *v249) | 1) | v96 & (2 * *v249);
  v98 = v95 & (v85 - 0x100000000) | v96 & v85;
  v99 = v95 & v89 | v96 & v86;
  v100 = v95 & v93 | v96 & v87;
  *(&v102 + 1) = v98;
  *&v102 = v97;
  v101 = v102 >> 63;
  *(&v102 + 1) = v99;
  *&v102 = v98;
  v103 = v102 >> 63;
  *(&v102 + 1) = v100;
  *&v102 = v99;
  v104 = v102 >> 63;
  v105 = v103 - (1 - __CFADD__(v101, 0xFFFFFFFF00000000));
  v106 = v104 - __PAIR128__(v96, -((v103 - __PAIR128__(v93, (1 - __CFADD__(v101, 0xFFFFFFFF00000000)))) >> 64));
  v107 = v106 + 0xFFFFFFFF;
  if ((v100 < 0) + (v100 >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)))))
  {
    v108 = 0;
  }

  else
  {
    v108 = -1;
  }

  v109 = ((2 * v97) | 1) & v108 | *(&v106 + 1) & (2 * v97);
  *&v239[8] = v108 & v105 | *(&v106 + 1) & v103;
  *&v239[16] = v108 & v107 | *(&v106 + 1) & v104;
  *v239 = v108 & (v101 - 0x100000000) | *(&v106 + 1) & v101;
  *(&v111 + 1) = *v239;
  *&v111 = v109;
  v110 = v111 >> 63;
  v112 = *v239 >> 63;
  v113 = *&v239[8] >> 63;
  v114 = v112 - (1 - __CFADD__(v110, 0xFFFFFFFF00000000));
  v116 = v113 - -((v112 - __PAIR128__(v105, (1 - __CFADD__(v110, 0xFFFFFFFF00000000)))) >> 64);
  v115 = (v113 - __PAIR128__(v107, -((v112 - __PAIR128__(v105, (1 - __CFADD__(v110, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v117 = v116 + 0xFFFFFFFF;
  v118 = 1 - (__CFADD__(v116, 0xFFFFFFFFLL) + v115);
  if ((*&v239[16] < 0) + (*&v239[16] >> 63 < v118))
  {
    v119 = 0;
  }

  else
  {
    v119 = -1;
  }

  if ((*&v239[16] < 0) + (*&v239[16] >> 63 < v118))
  {
    v120 = -1;
  }

  else
  {
    v120 = 0;
  }

  v121 = v120 & (2 * v109);
  v122 = v119 & (v110 - 0x100000000) | v120 & v110;
  v123 = v119 & v114 | v120 & v112;
  v124 = v119 & v117 | v120 & v113;
  v126 = (*a1 - __PAIR128__(((2 * v109) | 1) & v119 | v121, ((2 * v109) | 1) & v119 | v121)) >> 64;
  v125 = *a1 - (((2 * v109) | 1) & v119 | v121);
  LODWORD(v126) = -v126;
  v18 = __CFADD__(v122, v126);
  v127 = v122 + v126;
  v128 = v18;
  v129 = a1[1] - v127;
  v130 = -((a1[1] - __PAIR128__(v128, v127)) >> 64);
  v18 = __CFADD__(v123, v130);
  v131 = v123 + v130;
  v132 = v18;
  v133 = a1[2] - v131;
  v134 = -((a1[2] - __PAIR128__(v132, v131)) >> 64);
  v18 = __CFADD__(v124, v134);
  v135 = v124 + v134;
  v136 = v18;
  v137 = a1[3] - __PAIR128__(v136, v135);
  *a1 = v125 + *(&v137 + 1);
  a1[1] = DWORD2(v137) + __CFADD__(v125, *(&v137 + 1)) + v129;
  a1[2] = (__CFADD__(__CFADD__(v125, *(&v137 + 1)), v129) | __CFADD__(DWORD2(v137), __CFADD__(v125, *(&v137 + 1)) + v129)) + v133;
  a1[3] = v137 + __CFADD__(__CFADD__(__CFADD__(v125, *(&v137 + 1)), v129) | __CFADD__(DWORD2(v137), __CFADD__(v125, *(&v137 + 1)) + v129), v133) + (*(&v137 + 1) & 0xFFFFFFFF00000001);
  v138 = *v250;
  v139 = *v250 + v15;
  v140 = *&v250[16];
  v141 = v22 + (__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8])) + *&v250[16];
  v142 = *(&v22 + 1) + (__CFADD__(__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8]), v140) | __CFADD__(v22, (__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8])) + v140)) + *&v250[24];
  if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8]), *&v250[16]) | __CFADD__(v22, (__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8])) + *&v250[16]), *&v250[24]) | __CFADD__(*(&v22 + 1), (__CFADD__(__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8]), *&v250[16]) | __CFADD__(v22, (__CFADD__(__CFADD__(*v250, v15), *&v250[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v250, v15) + *&v250[8])) + *&v250[16])) + *&v250[24]))
  {
    v143 = 1;
  }

  else
  {
    v143 = 0;
  }

  v144 = *(&v139 + 1) - __PAIR128__(v117, (1 - __CFADD__(v139, 1)));
  v146 = v142 - -((v141 - __PAIR128__(v120, (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144))))) >> 64);
  v145 = (v142 - __PAIR128__(v121, -((v141 - __PAIR128__(v120, (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144))))) >> 64))) >> 64;
  v147 = v146 + 0xFFFFFFFF;
  v148 = -(v143 + (v143 < (1 - (__CFADD__(v146, 0xFFFFFFFFLL) + v145))));
  v149 = v148 == 0;
  if (v148)
  {
    v150 = 0;
  }

  else
  {
    v150 = -1;
  }

  if (v149)
  {
    v151 = 0;
  }

  else
  {
    v151 = -1;
  }

  v152 = v150 & (v139 + 1) | v151 & v139;
  v153 = v150 & (v144 - 0xFFFFFFFF) | v151 & *(&v139 + 1);
  v154 = v150 & (v141 - (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144)))) | v151 & v141;
  v238 = v150 & v147 | v151 & v142;
  v155 = a6[1];
  v157 = (*a6 + *a5) >> 64;
  v156 = *a6 + *a5;
  v158 = __CFADD__(__CFADD__(*a6, *a5), a5[1]);
  v159 = a5[2];
  v160 = a5[3];
  v161 = a6[2];
  v162 = a6[3];
  v18 = __CFADD__(v161, v159);
  v163 = v161 + v159;
  v164 = v18;
  v18 = __CFADD__(v162, v160);
  v165 = v162 + v160;
  v166 = v18;
  v168 = v157 + v155;
  v18 = __CFADD__(__CFADD__(v157, v155), v163) | __CFADD__(v158, (__PAIR128__(v163, v157) + v155) >> 64);
  v167 = v158 + ((__PAIR128__(v163, v157) + v155) >> 64);
  v169 = v164 + v18 + v165;
  if (__CFADD__(v18, v165) | __CFADD__(v164, v18 + v165))
  {
    v170 = v166 + 1;
  }

  else
  {
    v170 = v166;
  }

  v171 = v168 - __PAIR128__(v166, (1 - __CFADD__(v156, 1)));
  v172 = v169 - __PAIR128__(v151, -((v167 - __PAIR128__(v147, (1 - (__CFADD__(v171, 0xFFFFFFFF00000001) + BYTE8(v171))))) >> 64));
  if (v170 + (v170 < (1 - (__CFADD__(v172, 0xFFFFFFFFLL) + BYTE8(v172)))))
  {
    v173 = 0;
  }

  else
  {
    v173 = -1;
  }

  v245 = v173 & (v156 + 1) | *(&v172 + 1) & v156;
  v246 = v173 & (v171 - 0xFFFFFFFF) | *(&v172 + 1) & v168;
  v247 = v173 & (v167 - (1 - (__CFADD__(v171, 0xFFFFFFFF00000001) + BYTE8(v171)))) | *(&v172 + 1) & v167;
  v248 = v173 & (v172 + 0xFFFFFFFF) | *(&v172 + 1) & v169;
  fiat_p256_square(a3, &v245);
  v177 = *a3 - v152;
  v178 = a3[1] - (v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64));
  v18 = __CFADD__(v154, -((a3[1] - __PAIR128__(v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64), v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64))) >> 64));
  v179 = v154 + -((a3[1] - __PAIR128__(v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64), v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64))) >> 64);
  v180 = v18;
  v181 = a3[2] - v179;
  v18 = __CFADD__(v238, -((a3[2] - __PAIR128__(v180, v179)) >> 64));
  v182 = v238 + -((a3[2] - __PAIR128__(v180, v179)) >> 64);
  v183 = v18;
  v184 = a3[3] - __PAIR128__(v183, v182);
  v185 = __CFADD__(v177, *(&v184 + 1)) + v178;
  v186 = __CFADD__(__CFADD__(v177, *(&v184 + 1)), v178) | __CFADD__(DWORD2(v184), v185);
  *a3 = v177 + *(&v184 + 1);
  a3[1] = DWORD2(v184) + v185;
  a3[2] = v186 + v181;
  a3[3] = v184 + __CFADD__(v186, v181) + (*(&v184 + 1) & 0xFFFFFFFF00000001);
  v187 = a1[1];
  v188 = v109 - *a1;
  v18 = __CFADD__(v187, -((v109 - __PAIR128__(v186 + v181, *a1)) >> 64));
  v189 = v187 + -((v109 - __PAIR128__(v186 + v181, *a1)) >> 64);
  v190 = v18;
  v191 = *v239 - v189;
  v192 = a1[2];
  v193 = a1[3];
  v18 = __CFADD__(v192, -((*v239 - __PAIR128__(v190, v189)) >> 64));
  v194 = v192 + -((*v239 - __PAIR128__(v190, v189)) >> 64);
  v195 = v18;
  v197 = *&v239[8] - v194;
  v196 = (*&v239[8] - __PAIR128__(v195, v194)) >> 64;
  v18 = __CFADD__(v193, -v196);
  v198 = v193 + -v196;
  v199 = v18;
  v200 = *&v239[16] - __PAIR128__(v199, v198);
  v201 = __CFADD__(v188, *(&v200 + 1)) + v191;
  v202 = __CFADD__(__CFADD__(v188, *(&v200 + 1)), v191) | __CFADD__(DWORD2(v200), v201);
  *a2 = v188 + *(&v200 + 1);
  a2[1] = DWORD2(v200) + v201;
  a2[2] = v202 + v197;
  a2[3] = v200 + __CFADD__(v202, v197) + (*(&v200 + 1) & 0xFFFFFFFF00000001);
  v203 = v138 >> 63;
  *(&v205 + 1) = v140;
  *&v205 = *(&v138 + 1);
  v204 = v205 >> 63;
  v206 = v140 >> 63;
  v207 = v206 - -((v204 - __PAIR128__(v174, (1 - __CFADD__(v203, 0xFFFFFFFF00000000)))) >> 64);
  v208 = 1 - (__CFADD__(v207, 0xFFFFFFFFLL) + ((v206 - __PAIR128__(v175, -((v204 - __PAIR128__(v174, (1 - __CFADD__(v203, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v140 < 0) + (*(&v140 + 1) >> 63 < v208))
  {
    v209 = 0;
  }

  else
  {
    v209 = -1;
  }

  if ((v140 < 0) + (*(&v140 + 1) >> 63 < v208))
  {
    v210 = -1;
  }

  else
  {
    v210 = 0;
  }

  *v250 = v209 & ((2 * v138) | 1) | v210 & (2 * v138);
  *&v250[8] = v209 & (v203 - 0x100000000) | v210 & v203;
  *&v250[16] = v209 & (v204 - (1 - __CFADD__(v203, 0xFFFFFFFF00000000))) | v210 & v204;
  *&v250[24] = v209 & (v207 + 0xFFFFFFFF) | v210 & v206;
  fiat_p256_square(v250, v250);
  result = fiat_p256_mul(a2, v243, a2);
  v212 = *v250 >> 63;
  v213 = *&v250[8] >> 63;
  v214 = *&v250[16] >> 63;
  v216 = v213 - (1 - __CFADD__(v212, 0xFFFFFFFF00000000));
  v218 = v214 - -((v213 - __PAIR128__(v215, (1 - __CFADD__(v212, 0xFFFFFFFF00000000)))) >> 64);
  v219 = 1 - (__CFADD__(v218, 0xFFFFFFFFLL) + ((v214 - __PAIR128__(v217, -((v213 - __PAIR128__(v215, (1 - __CFADD__(v212, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((*&v250[24] < 0) + (*&v250[24] >> 63 < v219))
  {
    v220 = 0;
  }

  else
  {
    v220 = -1;
  }

  if ((*&v250[24] < 0) + (*&v250[24] >> 63 < v219))
  {
    v221 = -1;
  }

  else
  {
    v221 = 0;
  }

  v222 = v220 & (v212 - 0x100000000) | v221 & v212;
  v223 = v220 & v216 | v221 & v213;
  v224 = v220 & (v218 + 0xFFFFFFFF) | v221 & v214;
  v225 = *a2 - (v220 & ((2 * *v250) | 1) | v221 & (2 * *v250));
  v226 = -((*a2 - __PAIR128__(*a2, v220 & ((2 * *v250) | 1) | v221 & (2 * *v250))) >> 64);
  v18 = __CFADD__(v222, v226);
  v227 = v222 + v226;
  v228 = v18;
  v229 = a2[1] - v227;
  v230 = -((a2[1] - __PAIR128__(v228, v227)) >> 64);
  v18 = __CFADD__(v223, v230);
  v231 = v223 + v230;
  v232 = v18;
  v233 = a2[2] - v231;
  v234 = -((a2[2] - __PAIR128__(v232, v231)) >> 64);
  v18 = __CFADD__(v224, v234);
  v235 = v224 + v234;
  v236 = v18;
  v237 = a2[3] - __PAIR128__(v236, v235);
  *a2 = v225 + *(&v237 + 1);
  a2[1] = DWORD2(v237) + __CFADD__(v225, *(&v237 + 1)) + v229;
  a2[2] = (__CFADD__(__CFADD__(v225, *(&v237 + 1)), v229) | __CFADD__(DWORD2(v237), __CFADD__(v225, *(&v237 + 1)) + v229)) + v233;
  a2[3] = v237 + __CFADD__(__CFADD__(__CFADD__(v225, *(&v237 + 1)), v229) | __CFADD__(DWORD2(v237), __CFADD__(v225, *(&v237 + 1)) + v229), v233) + (*(&v237 + 1) & 0xFFFFFFFF00000001);
  return result;
}

int8x16_t fiat_p256_cmovznz(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (a2)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a4 + 24) & v5 | *(a3 + 24) & v4;
  v7 = vandq_s8(*(a4 + 8), vdupq_n_s64(v5));
  v8 = vandq_s8(*(a3 + 8), vdupq_n_s64(v4));
  *a1 = v4 & *a3 | v5 & *a4;
  result = vorrq_s8(v7, v8);
  *(a1 + 8) = result;
  *(a1 + 24) = v6;
  return result;
}

double fiat_p256_select_point_affine(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = 0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  v7 = a3 + 2;
  v8 = a1 - 1;
  do
  {
    fiat_p256_cmovznz(a3, v6 ^ v8, a2, a3);
    fiat_p256_cmovznz(v7, v6++ ^ v8, a2 + 32, v7);
    a2 += 64;
  }

  while (v6 != 15);

  *&result = fiat_p256_cmovznz((a3 + 4), a1, (a3 + 4), &fiat_p256_one).u64[0];
  return result;
}

BIO *__cdecl BIO_new_fp(FILE *stream, int close_flag)
{
  v4 = BIO_new(&methods_filep);
  v5 = v4;
  if (v4)
  {
    BIO_ctrl(v4, 106, close_flag, stream);
  }

  return v5;
}

uint64_t file_write(uint64_t a1, void *__ptr, int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  LODWORD(result) = fwrite(__ptr, a3, 1uLL, *(a1 + 40));
  if (result <= 0)
  {
    return result;
  }

  else
  {
    return a3;
  }
}

size_t file_read(uint64_t a1, void *__ptr, int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = fread(__ptr, 1uLL, a3, *(a1 + 40));
  if (!v4 && ferror(*(a1 + 40)))
  {
    ERR_put_error(2, 0, 0, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 161);
    ERR_put_error(17, 0, 2, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 162);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

char *file_gets(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = fgets(a2, a3, *(a1 + 40));
  if (result)
  {
    return strlen(a2);
  }

  *a2 = 0;
  return result;
}

uint64_t file_ctrl(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = a3;
  result = 0;
  if (a2 > 10)
  {
    if (a2 <= 107)
    {
      switch(a2)
      {
        case 11:
          return fflush(*(a1 + 40)) == 0;
        case 106:
          file_free(a1);
          *(a1 + 40) = a4;
          result = 1;
          *(a1 + 16) = 1;
          *(a1 + 20) = v4 & 1;
          break;
        case 107:
          if (a4)
          {
            *a4 = *(a1 + 40);
          }

          return 1;
      }

      return result;
    }

    if (a2 != 108)
    {
      if (a2 != 128)
      {
        if (a2 != 133)
        {
          return result;
        }

LABEL_17:

        JUMPOUT(0x1AC57E7E0);
      }

      goto LABEL_24;
    }

    file_free(a1);
    *(a1 + 20) = v4 & 1;
    if ((v4 & 8) != 0)
    {
      if ((v4 & 2) != 0)
      {
        v9 = "ab+";
      }

      else
      {
        v9 = "ab";
      }
    }

    else
    {
      v8 = v4 & 6;
      if (v8 == 6)
      {
        v9 = "rb+";
      }

      else
      {
        if ((v4 & 4) != 0)
        {
          v9 = "wb";
        }

        else
        {
          v9 = "rb";
        }

        if (!v8)
        {
          v11 = 100;
          v12 = 235;
LABEL_43:
          ERR_put_error(17, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", v12);
          return 0;
        }
      }
    }

    v10 = fopen(a4, v9);
    if (v10)
    {
      *(a1 + 40) = v10;
      result = 1;
      *(a1 + 16) = 1;
      return result;
    }

    ERR_put_error(2, 0, 0, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 241);
    ERR_add_error_data(5, "fopen('", a4, "','", v9, "')");
    v11 = 2;
    v12 = 243;
    goto LABEL_43;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      LODWORD(result) = feof(*(a1 + 40));
      return result;
    }

    v4 = 0;
LABEL_24:
    LODWORD(result) = fseek(*(a1 + 40), v4, 0);
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_17;
    case 8:
      return *(a1 + 20);
    case 9:
      *(a1 + 20) = a3;
      return 1;
  }

  return result;
}

uint64_t file_free(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        fclose(v2);
        *(a1 + 40) = 0;
      }
    }

    *(a1 + 16) = 0;
  }

  return 1;
}

BOOL BIO_hexdump(BIO *a1, uint64_t a2, unint64_t a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  indent[1] = 0;
  v18 = 0u;
  v19 = 0u;
  indent[0] = a4;
  v22 = -21846;
  data = 0xAAAAAAAAAAAAAAAALL;
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  for (i = 0; i != a3; v7 = i >= a3)
  {
    if (!v6)
    {
      BIO_indent(a1, indent[0], -1);
      LOBYTE(data) = hexbyte_hextable[DWORD2(v19) >> 28];
      BYTE1(data) = hexbyte_hextable[(*(&v19 + 1) >> 24) & 0xFLL];
      BYTE2(data) = hexbyte_hextable[(*(&v19 + 1) >> 20) & 0xFLL];
      BYTE3(data) = hexbyte_hextable[(*(&v19 + 1) >> 16) & 0xFLL];
      BYTE4(data) = hexbyte_hextable[WORD4(v19) >> 12];
      BYTE5(data) = hexbyte_hextable[(*(&v19 + 1) >> 8) & 0xFLL];
      BYTE6(data) = hexbyte_hextable[BYTE8(v19) >> 4];
      HIBYTE(data) = hexbyte_hextable[BYTE8(v19) & 0xF];
      v22 = 8224;
      if (BIO_write(a1, &data, 10) < 0)
      {
        break;
      }

      v6 = DWORD1(v19);
    }

    v9 = *(a2 + i);
    LOBYTE(data) = hexbyte_hextable[v9 >> 4];
    BYTE1(data) = hexbyte_hextable[v9 & 0xF];
    BYTE2(data) = 32;
    if (v6 == 15)
    {
      *(&data + 3) = 31776;
      v10 = 5;
    }

    else if (v6 == 7)
    {
      BYTE3(data) = 32;
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (BIO_write(a1, &data, v10) < 0)
    {
      break;
    }

    v11 = *(a2 + i);
    if ((v11 - 127) < 0xFFFFFFA1)
    {
      LOBYTE(v11) = 46;
    }

    *(&v18 + DWORD1(v19)) = v11;
    v6 = DWORD1(v19) + 1;
    DWORD1(v19) = v6;
    ++*(&v19 + 1);
    if (v6 == 16)
    {
      LOWORD(v19) = 2684;
      if (BIO_write(a1, &v18, 18) < 0)
      {
        break;
      }

      v6 = 0;
      DWORD1(v19) = 0;
    }

    ++i;
  }

  if (!v7)
  {
    return 0;
  }

  v12 = DWORD1(v19);
  if (!DWORD1(v19))
  {
    return 1;
  }

  qmemcpy(&data, "    |", 5);
  if (DWORD1(v19) <= 0xF)
  {
    for (j = DWORD1(v19); j < 0x10; DWORD1(v19) = j)
    {
      v14 = j == 15 ? 5 : 3;
      v15 = j == 7 ? 4 : v14;
      if (BIO_write(a1, &data, v15) < 0)
      {
        return 0;
      }

      j = DWORD1(v19) + 1;
    }
  }

  *(&v18 + v12) = 124;
  *(&v18 + v12 + 1) = 10;
  return (BIO_write(a1, &v18, v12 + 2) & 0x80000000) == 0;
}

BOOL SSL_SESSION_to_bytes_for_ticket(uint64_t a1, void *a2, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v6;
  v10[2] = v6;
  v10[0] = v6;
  CBB_zero(v10);
  v8 = CBB_init(v10, 0x100uLL) && bssl::SSL_SESSION_to_bytes_full(a1, v10, 1) && CBB_finish(v10, a2, a3) != 0;
  CBB_cleanup(v10, v7);
  return v8;
}

ssize_t sock_write(uint64_t a1, const void *a2, int a3)
{
  EVP_HPKE_KEY_cleanup();
  v6 = write(*(a1 + 32), a2, a3);
  BIO_clear_retry_flags(a1);
  if (v6 <= 0 && bio_socket_should_retry(v6))
  {
    BIO_set_retry_write(a1);
  }

  return v6;
}

void *sock_read(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  if (a2)
  {
    EVP_HPKE_KEY_cleanup();
    v3 = read(*(a1 + 32), v3, a3);
    BIO_clear_retry_flags(a1);
    if (v3 <= 0)
    {
      if (bio_socket_should_retry(v3))
      {
        BIO_set_retry_read(a1);
      }
    }
  }

  return v3;
}

uint64_t sock_ctrl(_DWORD *a1, int a2, int a3, _DWORD *a4)
{
  if (a2 <= 10)
  {
    if (a2 == 8)
    {
      return a1[5];
    }

    if (a2 != 9)
    {
      return 0;
    }

    a1[5] = a3;
    return 1;
  }

  if (a2 == 11)
  {
    return 1;
  }

  if (a2 != 105)
  {
    if (a2 == 104)
    {
      if (a1[5])
      {
        if (a1[4])
        {
          close(a1[8]);
        }

        a1[4] = 0;
        a1[6] = 0;
      }

      a1[8] = *a4;
      result = 1;
      a1[4] = 1;
      a1[5] = a3;
      return result;
    }

    return 0;
  }

  if (!a1[4])
  {
    return -1;
  }

  v8 = a1[8];
  result = v8;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sock_free(_DWORD *a1)
{
  if (a1[5])
  {
    if (a1[4])
    {
      close(a1[8]);
    }

    a1[4] = 0;
    a1[6] = 0;
  }

  return 1;
}

unint64_t bn_mont_n0(unint64_t **a1)
{
  if (BN_is_zero(a1))
  {
    bn_mont_n0_cold_1();
  }

  if (BN_is_negative(a1))
  {
    bn_mont_n0_cold_2();
  }

  if (!BN_is_odd(a1))
  {
    bn_mont_n0_cold_6();
  }

  v2 = **a1;
  if ((v2 & 1) == 0)
  {
    bn_mont_n0_cold_5();
  }

  v3 = 0;
  v4 = 64;
  v5 = 1;
  do
  {
    v6 = 1 << v4;
    if ((v4 & 0x40) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1 << v4;
    }

    if ((v4 & 0x40) == 0)
    {
      v6 = 0;
    }

    if (v6 != v5 - (((v3 * v2) >> 64) + (v3 * v2 != 0)) || v7 != -(v3 * v2))
    {
      bn_mont_n0_cold_3();
    }

    v9 = -(v5 & 1);
    v5 = (v2 & v9 & v5) + ((v2 & v9 ^ v5) >> 1);
    result = v9 & 0x8000000000000000 | (v3 >> 1);
    v3 = result;
    --v4;
  }

  while (v4);
  if (-(result * v2) ^ 1 | (v5 - (((result * v2) >> 64) + (result * v2 != 0))))
  {
    bn_mont_n0_cold_4();
  }

  return result;
}

uint64_t bn_mont_ctx_set_RR_consttime(BIGNUM *a1, BN_CTX *a2)
{
  if (BN_is_zero(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_1();
  }

  if (BN_is_negative(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_2();
  }

  if (!BN_is_odd(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_7();
  }

  if (bn_minimal_width(&a1[1]) != a1[1].top)
  {
    bn_mont_ctx_set_RR_consttime_cold_3();
  }

  v4 = BN_num_bits(a1 + 1);
  if (v4 == 1)
  {
    BN_zero(a1);
LABEL_16:
    top = a1[1].top;

    return bn_resize_words(a1, top);
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      bn_mont_ctx_set_RR_consttime_cold_4();
    }

    v6 = a1[1].top;
    if (v6 << 6 < v4)
    {
      bn_mont_ctx_set_RR_consttime_cold_6();
    }

    if (BN_set_bit(a1, v4 - 1) && bn_mod_lshift_consttime(a1, a1, v6 - v5 + (v6 << 6) + 1, &a1[1], a2))
    {
      if (v6 != a1[1].top)
      {
        bn_mont_ctx_set_RR_consttime_cold_5();
      }

      v7 = 6;
      while (BN_mod_mul_montgomery(a1, a1, a1, a1, a2))
      {
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }
}

int RSA_padding_add_PKCS1_type_1(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (*&tlen <= 0xAuLL)
  {
    v4 = 126;
    v5 = 77;
LABEL_5:
    ERR_put_error(4, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v5);
    return 0;
  }

  v6 = *&fl;
  v7 = *&tlen;
  if ((*&tlen - 11) < *&fl)
  {
    v4 = 118;
    v5 = 82;
    goto LABEL_5;
  }

  *to = 256;
  memset(to + 2, 255, *&tlen - *&fl - 3);
  to[~v6 + v7] = 0;
  if (v6)
  {
    memcpy(&to[v7 - v6], f, v6);
  }

  return 1;
}

int RSA_padding_check_PKCS1_type_1(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (*&rsa_len <= 1uLL)
  {
    v5 = 116;
    v6 = 100;
LABEL_11:
    ERR_put_error(4, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v6);
    return 0;
  }

  if (**&fl || *(*&fl + 1) != 1)
  {
    v5 = 107;
    v6 = 106;
    goto LABEL_11;
  }

  v7 = *&rsa_len - 2;
  if (*&rsa_len == 2)
  {
    goto LABEL_14;
  }

  v8 = *&tlen;
  v9 = 0;
  while (*(*&fl + v9 + 2) == 255)
  {
    if (v7 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if (*(*&fl + v9 + 2))
  {
    v5 = 102;
    v6 = 118;
    goto LABEL_11;
  }

  if (v7 == v9)
  {
LABEL_14:
    v5 = 131;
    v6 = 124;
    goto LABEL_11;
  }

  if ((v9 + 2) <= 9)
  {
    v5 = 103;
    v6 = 129;
    goto LABEL_11;
  }

  v11 = *&rsa_len - v9 - 3;
  if (v11 > f)
  {
    v5 = 113;
    v6 = 137;
    goto LABEL_11;
  }

  if (*&rsa_len - 3 != v9)
  {
    memcpy(to, (*&fl + v9 + 3), v11);
  }

  *v8 = v11;
  return 1;
}

int RSA_padding_add_none(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (*&fl > *&tlen)
  {
    v4 = 114;
    v5 = 149;
LABEL_5:
    ERR_put_error(4, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v5);
    return 0;
  }

  if (*&fl < *&tlen)
  {
    v4 = 116;
    v5 = 154;
    goto LABEL_5;
  }

  if (*&fl)
  {
    memcpy(to, f, *&fl);
  }

  return 1;
}

uint64_t RSA_padding_add_PKCS1_PSS_mgf1(const RSA *a1, unsigned __int8 *a2, const void *a3, EVP_MD *md, const EVP_MD *a5, unsigned int a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = md;
  }

  v12 = EVP_MD_size(md);
  if (BN_is_zero(a1->version))
  {
    v13 = 120;
    v14 = 328;
LABEL_37:
    ERR_put_error(4, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v14);
    v27 = 0;
    v21 = 0;
    goto LABEL_38;
  }

  v15 = (BN_num_bits(a1->version) - 1) & 7;
  v16 = RSA_size(a1);
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      RSA_padding_add_PKCS1_PSS_mgf1_cold_1();
    }

    *a2++ = 0;
    v17 = v16 - 1;
  }

  if (v17 < v12 + 2)
  {
    v13 = 114;
    v14 = 341;
    goto LABEL_37;
  }

  v18 = v12;
  if (a6 != -1)
  {
    if (a6 == -2)
    {
      v18 = v17 - v12 - 2;
    }

    else
    {
      if ((a6 & 0x80000000) != 0)
      {
        v13 = 138;
        v14 = 355;
        goto LABEL_37;
      }

      v18 = a6;
    }
  }

  v19 = v17 - v12;
  if (v17 - v12 - 2 < v18)
  {
    v13 = 114;
    v14 = 362;
    goto LABEL_37;
  }

  if (v18)
  {
    v20 = OPENSSL_malloc(v18);
    v21 = v20;
    if (!v20)
    {
LABEL_35:
      v27 = 0;
      goto LABEL_38;
    }

    BCM_rand_bytes(v20, v18);
  }

  else
  {
    v21 = 0;
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v29.digest = v22;
  *&v29.flags = v22;
  EVP_MD_CTX_init(&v29);
  if (!EVP_DigestInit_ex(&v29, md, 0) || !EVP_DigestUpdate(&v29, &kPSSZeroes, 8uLL) || !EVP_DigestUpdate(&v29, a3, v12) || !EVP_DigestUpdate(&v29, v21, v18))
  {
    EVP_MD_CTX_cleanup(&v29);
    goto LABEL_35;
  }

  v23 = EVP_DigestFinal_ex(&v29, &a2[v19 - 1], 0);
  EVP_MD_CTX_cleanup(&v29);
  if (!v23 || !PKCS1_MGF1(a2, v19 - 1, &a2[v19 - 1], v12, v11))
  {
    goto LABEL_35;
  }

  a2[v17 - (v12 + v18) - 2] ^= 1u;
  if (v18)
  {
    v24 = &a2[~(v12 + v18) + v17];
    v25 = v21;
    do
    {
      v26 = *v25++;
      *v24++ ^= v26;
      --v18;
    }

    while (v18);
  }

  if (v15)
  {
    *a2 &= 0xFFu >> (8 - v15);
  }

  a2[v17 - 1] = -68;
  v27 = 1;
LABEL_38:
  OPENSSL_free(v21);
  return v27;
}

uint64_t EVP_marshal_public_key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {

    return v4(a1);
  }

  else
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 147);
    return 0;
  }
}

EVP_PKEY *EVP_parse_private_key(__int128 *a1)
{
  memset(v10, 170, sizeof(v10));
  memset(v9, 170, sizeof(v9));
  if (!CBS_get_asn1(a1, &v10[1], 536870928) || !CBS_get_asn1_uint64(&v10[1], v9) || v9[0] || !CBS_get_asn1(&v10[1], v10, 536870928) || !CBS_get_asn1(&v10[1], &v9[1], 4))
  {
    v6 = 102;
    v7 = 163;
LABEL_12:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = parse_key_type(v10);
  if (!v1)
  {
    v6 = 128;
    v7 = 168;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = EVP_PKEY_new();
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    EVP_PKEY_free(v4);
    return 0;
  }

  evp_pkey_set_method(v3, v2);
  v5 = *(v4->pkey.ptr + 6);
  if (!v5)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 183);
    goto LABEL_17;
  }

  if (!v5(v4, v10, &v9[1]))
  {
    goto LABEL_17;
  }

  return v4;
}

uint64_t EVP_marshal_private_key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 56)) != 0)
  {

    return v4(a1);
  }

  else
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 199);
    return 0;
  }
}

EVP_PKEY *__cdecl d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length < 0)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 250);
    return 0;
  }

  *&v15 = *pp;
  *(&v15 + 1) = length;
  v8 = EVP_PKEY_new();
  if (v8)
  {
    v9 = v8;
    switch(type)
    {
      case 6:
        v12 = RSA_parse_private_key(&v15);
        if (v12 && EVP_PKEY_assign_RSA(v9, v12))
        {
          goto LABEL_20;
        }

        RSA_free(v12);
        break;
      case 116:
        v11 = DSA_parse_private_key(&v15);
        if (v11 && EVP_PKEY_assign_DSA(v9, v11))
        {
          goto LABEL_20;
        }

        DSA_free(v11);
        break;
      case 408:
        v10 = EC_KEY_parse_private_key(&v15, 0);
        if (v10 && EVP_PKEY_assign_EC_KEY(v9, v10))
        {
          goto LABEL_20;
        }

        EC_KEY_free(v10);
        break;
      default:
        ERR_put_error(6, 0, 127, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 238);
        break;
    }

    EVP_PKEY_free(v9);
  }

  ERR_clear_error();
  *&v15 = *pp;
  *(&v15 + 1) = length;
  v13 = EVP_parse_private_key(&v15);
  v9 = v13;
  if (!v13)
  {
    return v9;
  }

  if (v13->save_type != type)
  {
    ERR_put_error(6, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 267);
    EVP_PKEY_free(v9);
    return 0;
  }

LABEL_20:
  if (a)
  {
    EVP_PKEY_free(*a);
    *a = v9;
  }

  *pp = v15;
  return v9;
}

DSA *dsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = DSA_parse_parameters(a2);
    if (!v6 || *(a2 + 8))
    {
      v7 = 81;
LABEL_10:
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
      goto LABEL_11;
    }
  }

  else
  {
    result = DSA_new();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  v9 = BN_new();
  v6->p = v9;
  if (v9)
  {
    if (BN_parse_asn1_unsigned(a3, v9) && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &dsa_asn1_meth);
      *(a1 + 8) = v6;
      return 1;
    }

    v7 = 93;
    goto LABEL_10;
  }

LABEL_11:
  DSA_free(v6);
  return 0;
}

uint64_t dsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3 && *(v3 + 8) && *(v3 + 16) != 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v5;
  v10[2] = v5;
  v10[0] = v5;
  v9[1] = v5;
  v9[2] = v5;
  v8[2] = v5;
  v9[0] = v5;
  v8[0] = v5;
  v8[1] = v5;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAF9E4, 7uLL) && (!v4 || DSA_marshal_parameters(v9, v3)) && CBB_add_asn1(v10, v7, 3u) && CBB_add_u8(v7, 0) && BN_marshal_asn1(v7, *(v3 + 24)) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", 121);
  return 0;
}

BOOL dsa_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = DSA_get0_pub_key(*(a2 + 8));
  v4 = DSA_get0_pub_key(v2);
  return BN_cmp(v3, v4) == 0;
}

uint64_t dsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DSA_parse_parameters(a2);
  if (!v6 || *(a2 + 8))
  {
    v7 = 135;
LABEL_4:
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
LABEL_5:
    v8 = 0;
LABEL_6:
    BN_CTX_free(v8);
    DSA_free(v6);
    return 0;
  }

  v10 = BN_new();
  v6->q = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  if (!BN_parse_asn1_unsigned(a3, v10) || *(a3 + 8))
  {
    v7 = 145;
    goto LABEL_4;
  }

  if (!dsa_check_key(&v6->pad))
  {
    v7 = 153;
    goto LABEL_4;
  }

  v8 = BN_CTX_new();
  v11 = BN_new();
  v6->p = v11;
  if (!v8 || !v11 || !BN_mod_exp_mont_consttime(v11, *&v6->write_params, v6->q, *&v6->pad, v8, 0))
  {
    goto LABEL_6;
  }

  BN_CTX_free(v8);
  evp_pkey_set_method(a1, &dsa_asn1_meth);
  *(a1 + 8) = v6;
  return 1;
}

uint64_t dsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && v2[4])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[1] = v4;
    v11[2] = v4;
    v11[0] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v9[2] = v4;
    v10[0] = v4;
    v9[0] = v4;
    v9[1] = v4;
    v8[1] = v4;
    v8[2] = v4;
    v8[0] = v4;
    if (CBB_add_asn1(a1, v11, 0x20000010u) && CBB_add_asn1_uint64(v11, 0) && CBB_add_asn1(v11, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 6u) && CBB_add_bytes(v9, &unk_1F1CAF9E4, 7uLL) && DSA_marshal_parameters(v10, v2) && CBB_add_asn1(v11, v8, 4u) && BN_marshal_asn1(v8, v2[4]) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 194;
  }

  else
  {
    v6 = 118;
    v7 = 179;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
  return 0;
}

uint64_t dsa_bits(uint64_t a1)
{
  v1 = EVP_AEAD_CTX_aead(*(a1 + 8));

  return BN_num_bits(v1);
}

uint64_t dsa_copy_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!dup_bn_into(v2, *v3) || !dup_bn_into(v2 + 1, v3[1]))
  {
    return 0;
  }

  v4 = v3[2];

  return dup_bn_into(v2 + 2, v4);
}

BOOL dsa_cmp_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EVP_AEAD_CTX_aead(v2);
  v5 = EVP_AEAD_CTX_aead(v3);
  if (BN_cmp(v4, v5))
  {
    return 0;
  }

  v6 = EVP_HPKE_CTX_aead(v2);
  v7 = EVP_HPKE_CTX_aead(v3);
  if (BN_cmp(v6, v7))
  {
    return 0;
  }

  v9 = EVP_HPKE_CTX_kdf(v2);
  v10 = EVP_HPKE_CTX_kdf(v3);
  return BN_cmp(v9, v10) == 0;
}

BOOL EVP_PKEY_assign_DSA(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &dsa_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t dup_bn_into(BIGNUM **a1, BIGNUM *a)
{
  result = BN_dup(a);
  if (result)
  {
    v4 = result;
    BN_free(*a1);
    *a1 = v4;
    return 1;
  }

  return result;
}

uint64_t MLKEM768_parse_public_key(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  cckem_kyber768();
  v4 = cckem_sizeof_pub_ctx();
  v5 = malloc_type_malloc(v4, 0x9C9C07E6uLL);
  *a1 = v5;
  if (v5)
  {
    memset(__b, 170, sizeof(__b));
    result = CBS_copy_bytes(a2, __b, 0x4A0uLL);
    if (result)
    {
      cckem_pub_ctx_init();
      return cckem_import_pubkey() == 0;
    }
  }

  else
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      MLKEM768_parse_public_key_cold_1();
    }

    return 0;
  }

  return result;
}

void MLKEM768_encap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    ccrng();
    if (cckem_encapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      MLKEM768_encap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    MLKEM768_encap_cold_2();
  }
}

BOOL MLKEM768_decap(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      MLKEM768_decap_cold_2();
    }

    return 0;
  }

  if (cckem_decapsulate())
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      MLKEM768_decap_cold_1();
    }

    return 0;
  }

  return 1;
}

void KYBER_generate_key(uint64_t a1, uint64_t *a2)
{
  cckem_kyber768();
  v3 = cckem_sizeof_full_ctx();
  v4 = malloc_type_malloc(v3, 0xDF036E84uLL);
  *a2 = v4;
  if (v4)
  {
    cckem_full_ctx_init();
    ccrng();
    cckem_generate_key();
    cckem_public_ctx();
    if (cckem_export_pubkey() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_generate_key_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_generate_key_cold_2();
  }
}

uint64_t KYBER_parse_public_key(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  cckem_kyber768();
  v4 = cckem_sizeof_pub_ctx();
  v5 = malloc_type_malloc(v4, 0x3888F686uLL);
  *a1 = v5;
  if (v5)
  {
    memset(__b, 170, sizeof(__b));
    result = CBS_copy_bytes(a2, __b, 0x4A0uLL);
    if (result)
    {
      cckem_pub_ctx_init();
      return cckem_import_pubkey() == 0;
    }
  }

  else
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      KYBER_parse_public_key_cold_1();
    }

    return 0;
  }

  return result;
}

void KYBER_encap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    ccrng();
    if (cckem_encapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_encap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_encap_cold_2();
  }
}

void KYBER_decap(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    if (cckem_decapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_decap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_decap_cold_2();
  }
}

double EVP_aead_aes_128_gcm_tls13_init()
{
  unk_1ED4C01D0 = 0u;
  *&qword_1ED4C01E0 = 0u;
  unk_1ED4C0200 = 0u;
  *&result = 269487120;
  EVP_aead_aes_128_gcm_tls13_storage = 269487120;
  dword_1ED4C01CC = 1;
  qword_1ED4C01D8 = aead_aes_gcm_init_with_dir;
  qword_1ED4C01E0 = aead_aes_gcm_cleanup;
  qword_1ED4C01F0 = aead_aes_gcm_tls13_seal_scatter;
  qword_1ED4C01F8 = aead_aes_gcm_open_gather;
  return result;
}

uint64_t aes_init_key(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*a1 + 20) & 0x3F;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_2();
        }

        return 0;
      case 4u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_1();
        }

        return 0;
      case 5u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_4();
        }

        return 0;
    }

LABEL_22:
    v8 = g_boringssl_log;
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      aes_init_key_cold_5(v4, v8);
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      aes_init_key_cold_3();
    }

    return 0;
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  if ((*(a1 + 24) - 65) < 0xFFFFFFC0)
  {
    return 0;
  }

  if (a4)
  {
    v7 = ccaes_cbc_encrypt_mode();
  }

  else
  {
    v7 = ccaes_cbc_decrypt_mode();
  }

  v9 = v7;
  result = malloc_type_malloc(((v7[1] + ((*v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0) + 16, 0x7A0E2781uLL);
  if (result)
  {
    v10 = result;
    *result = v9;
    if (!cccbc_init() && !cccbc_set_iv())
    {
      *(a1 + 8) = v10;
      return 1;
    }

    free(v10);
    return 0;
  }

  return result;
}

uint64_t aes_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(*a1 + 20) & 2) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (!v6 || !*v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 && (!a2 || !a3))
  {
    aes_cipher_cold_1();
  }

  if (a4 % *(*v6 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = cccbc_set_iv();
  if (cccbc_update() | v7)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 52) = *(v6 + 16 + ((**v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  return 1;
}

void aes_cleanup(void *a1)
{
  if ((*(*a1 + 20) & 2) != 0)
  {
    v2 = a1[1];
    if (v2)
    {
      cc_clear();
      free(v2);
    }
  }

  a1[1] = 0;
}

uint64_t pkey_ec_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  if (!v3)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 212);
      return 0;
    }

    v3 = EC_KEY_get0_group(*(v4 + 8));
  }

  v5 = EC_KEY_new();
  v6 = v5;
  if (v5 && EC_KEY_set_group(v5, v3) && EC_KEY_generate_key(v6))
  {
    EVP_PKEY_assign_EC_KEY(a2, v6);
    return 1;
  }

  EC_KEY_free(v6);
  return 0;
}

uint64_t pkey_ec_sign(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, const unsigned __int8 *a4, int a5)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!a2)
  {
    *a3 = ECDSA_size(*(v6 + 8));
    return 1;
  }

  v11 = *a3;
  if (v11 < ECDSA_size(*(v6 + 8)))
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 120);
    return 0;
  }

  siglen = -1431655766;
  result = ECDSA_sign(0, a4, a5, a2, &siglen, v7);
  if (result)
  {
    *a3 = siglen;
    return 1;
  }

  return result;
}

uint64_t pkey_ec_derive(uint64_t a1, void *a2, size_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    ERR_put_error(6, 0, 117, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 141);
    return 0;
  }

  v7 = *(v3 + 8);
  if (!a2)
  {
    v12 = EC_KEY_get0_group(*(v3 + 8));
    v10 = (EC_GROUP_get_degree(v12) + 7) >> 3;
    goto LABEL_9;
  }

  v8 = EC_KEY_get0_public_key(*(v4 + 8));
  v9 = ECDH_compute_key(a2, *a3, v8, v7, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return 0;
  }

  v10 = v9;
LABEL_9:
  *a3 = v10;
  return 1;
}

uint64_t pkey_ec_paramgen(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 8))
  {
    v4 = EC_KEY_new();
    v5 = v4;
    if (v4 && EC_KEY_set_group(v4, *(v2 + 8)))
    {
      EVP_PKEY_assign_EC_KEY(a2, v5);
      return 1;
    }

    EC_KEY_free(v5);
  }

  else
  {
    ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 231);
  }

  return 0;
}

EVP_MD_CTX *EVP_MD_CTX_create(void)
{
  result = OPENSSL_malloc(0x20uLL);
  if (result)
  {
    *&result->digest = 0u;
    *&result->flags = 0u;
  }

  return result;
}

void EVP_MD_CTX_destroy(EVP_MD_CTX *ctx)
{
  if (ctx)
  {
    EVP_MD_CTX_cleanup(ctx);

    OPENSSL_free(ctx);
  }
}

double EVP_MD_CTX_move(uint64_t a1, _OWORD *a2)
{
  EVP_MD_CTX_cleanup(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  EVP_DigestFinal_ex(ctx, md, s);
  EVP_MD_CTX_cleanup(ctx);
  return 1;
}

uint64_t eckey_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = EC_KEY_get0_group(v3);
  v5 = EC_KEY_get0_public_key(v3);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v6;
  v11[2] = v6;
  v11[0] = v6;
  v10[1] = v6;
  v10[2] = v6;
  v9[2] = v6;
  v10[0] = v6;
  v9[0] = v6;
  v9[1] = v6;
  v8[1] = v6;
  v8[2] = v6;
  v8[0] = v6;
  if (CBB_add_asn1(a1, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 6u) && CBB_add_bytes(v9, &unk_1F1CAFC04, 7uLL) && EC_KEY_marshal_curve_name(v10, v4) && CBB_add_asn1(v11, v8, 3u) && CBB_add_u8(v8, 0) && EC_POINT_point2cbb(v8, v4, v5, POINT_CONVERSION_UNCOMPRESSED, 0) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 85);
  return 0;
}

uint64_t eckey_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EC_KEY_get0_group(v3);
  v5 = EC_KEY_get0_public_key(v2);
  v6 = EC_KEY_get0_public_key(v3);
  v7 = EC_POINT_cmp(v4, v5, v6, 0);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -2;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t eckey_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = EC_KEY_parse_parameters(a2);
  if (!v6 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 138);
    return 0;
  }

  v8 = EC_KEY_parse_private_key(a3, v6);
  if (!v8 || *(a3 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 144);
    EC_KEY_free(v8);
    return 0;
  }

  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = v8;
  return 1;
}

uint64_t eckey_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  enc_flags = EC_KEY_get_enc_flags(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v5;
  v11[2] = v5;
  v11[0] = v5;
  v10[1] = v5;
  v10[2] = v5;
  v9[2] = v5;
  v10[0] = v5;
  v9[0] = v5;
  v9[1] = v5;
  v8[1] = v5;
  v8[2] = v5;
  v8[0] = v5;
  if (CBB_add_asn1(a1, v11, 0x20000010u))
  {
    if (CBB_add_asn1_uint64(v11, 0))
    {
      if (CBB_add_asn1(v11, v10, 0x20000010u))
      {
        if (CBB_add_asn1(v10, v9, 6u))
        {
          if (CBB_add_bytes(v9, &unk_1F1CAFC04, 7uLL))
          {
            v6 = EC_KEY_get0_group(v3);
            if (EC_KEY_marshal_curve_name(v10, v6))
            {
              if (CBB_add_asn1(v11, v8, 4u) && EC_KEY_marshal_private_key(v8, v3, enc_flags | 1u) && CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 173);
  return 0;
}

uint64_t eckey_set1_tls_encodedpoint(uint64_t a1, const unsigned __int8 *a2, size_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {

    return EC_KEY_oct2key(v4, a2, a3, 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 184);
    return 0;
  }
}

unsigned __int8 *eckey_get1_tls_encodedpoint(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, BN_CTX *a6)
{
  v7 = *(a1 + 8);
  if (v7)
  {

    return EC_KEY_key2buf(v7, POINT_CONVERSION_UNCOMPRESSED, a2, 0, a5, a6);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 195);
    return 0;
  }
}

uint64_t ec_bits(uint64_t a1)
{
  v1 = EC_KEY_get0_group(*(a1 + 8));
  if (v1)
  {

    return EC_GROUP_order_bits(v1);
  }

  else
  {
    ERR_clear_error();
    return 0;
  }
}

uint64_t ec_copy_parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v8 = 120;
    v9 = 225;
LABEL_10:
    ERR_put_error(6, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", v9);
    return 0;
  }

  v4 = EC_KEY_get0_group(v3);
  if (!v4)
  {
    v8 = 118;
    v9 = 230;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = EC_KEY_new();
    *(a1 + 8) = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return EC_KEY_set_group(v6, v5);
}

uint64_t ec_cmp_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 4294967294;
  }

  v5 = EC_KEY_get0_group(v2);
  v6 = EC_KEY_get0_group(v3);
  if (!v5 || v6 == 0)
  {
    return 4294967294;
  }

  else
  {
    return EC_GROUP_cmp(v5, v6, 0) == 0;
  }
}

BOOL EVP_PKEY_assign_EC_KEY(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t bssl::close_early_data(uint64_t a1, int a2)
{
  v2 = *(a1 + 1600);
  if ((v2 & 0x400) == 0)
  {
    bssl::close_early_data();
  }

  v4 = *a1;
  *(a1 + 1600) = v2 & 0xFFFFDFFF;
  if (v4[21])
  {
    goto LABEL_3;
  }

  if (!a2)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    bssl::SSLAEADContext::CreateNullCipher(&v9);
    if (!v9)
    {
      std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v9, 0);
      return 0;
    }

    v6 = *(*v4 + 144);
    v8 = v9;
    v9 = 0;
    v7 = v6(v4, 0, &v8, 0, 0);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v8, 0);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v9, 0);
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (*(v4[6] + 204) != a2)
    {
      bssl::close_early_data();
    }

    return 1;
  }

  if (a2 != 2)
  {
    bssl::close_early_data();
  }

  result = bssl::tls13_set_traffic_key(v4, 2, 1, *(a1 + 1536), (a1 + 130), *(a1 + 178));
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1A905F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, bssl::SSLAEADContext *a9, bssl::SSLAEADContext *a10)
{
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t rsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v4;
  v10[2] = v4;
  v9[2] = v4;
  v10[0] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAFCAC, 9uLL) && CBB_add_asn1(v9, v7, 5u) && CBB_add_asn1(v10, v6, 3u) && CBB_add_u8(v6, 0) && RSA_marshal_public_key(v6, v3) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 82);
  return 0;
}

BOOL rsa_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EVP_HPKE_CTX_aead(v3);
  v5 = EVP_HPKE_CTX_aead(v2);
  if (BN_cmp(v4, v5))
  {
    return 0;
  }

  v7 = EVP_HPKE_CTX_kdf(v3);
  v8 = EVP_HPKE_CTX_kdf(v2);
  return BN_cmp(v7, v8) == 0;
}

uint64_t rsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 144);
  }

  else
  {
    v7 = RSA_parse_private_key(a3);
    if (v7 && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &rsa_asn1_meth);
      *(a1 + 8) = v7;
      return 1;
    }

    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 150);
    RSA_free(v7);
  }

  return 0;
}

uint64_t rsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v4;
  v10[2] = v4;
  v9[2] = v4;
  v10[0] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1_uint64(v10, 0) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAFCAC, 9uLL) && CBB_add_asn1(v9, v7, 5u) && CBB_add_asn1(v10, v6, 4u) && RSA_marshal_private_key(v6, v3) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 131);
  return 0;
}

int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, rsa_st *key)
{
  evp_pkey_set_method(pkey, &rsa_asn1_meth);
  *&pkey->references = key;
  if (!key)
  {
    return 0;
  }

  RSA_up_ref(key);
  return 1;
}

BOOL EVP_PKEY_assign_RSA(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &rsa_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t EVP_PKEY_get0_RSA(uint64_t a1)
{
  if (*(a1 + 4) == 6)
  {
    return *(a1 + 8);
  }

  ERR_put_error(6, 0, 107, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 229);
  return 0;
}

BOOL PKCS5_PBKDF2_HMAC(const void *a1, int a2, const unsigned __int8 *a3, size_t a4, unsigned int a5, EVP_MD *md, size_t a7, char *a8)
{
  *&ctx.key[76] = *MEMORY[0x1E69E9840];
  v16 = EVP_MD_size(md);
  ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.i_ctx.md_data = v17;
  *&ctx.o_ctx.engine = v17;
  *&ctx.md_ctx.md_data = v17;
  *&ctx.i_ctx.engine = v17;
  *&ctx.md = v17;
  *&ctx.md_ctx.engine = v17;
  HMAC_CTX_init(&ctx);
  HMAC_Init_ex(&ctx, a1, a2, md, 0);
  if (!v18)
  {
LABEL_27:
    v35 = 0;
    goto LABEL_28;
  }

  if (a7)
  {
    v19 = 1;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    do
    {
      *data = bswap32(v19);
      v21 = v16 >= a7 ? a7 : v16;
      *&ctx.key[36] = v20;
      *&ctx.key[52] = v20;
      *&ctx.key[20] = v20;
      *&ctx.key[4] = v20;
      HMAC_Init_ex(&ctx, 0, 0, 0, 0);
      if (!v22)
      {
        goto LABEL_27;
      }

      HMAC_Update(&ctx, a3, a4);
      if (!v23)
      {
        goto LABEL_27;
      }

      HMAC_Update(&ctx, data, 4uLL);
      if (!v24)
      {
        goto LABEL_27;
      }

      HMAC_Final(&ctx, &ctx.key[4], 0);
      if (!v25)
      {
        goto LABEL_27;
      }

      if (v16)
      {
        memcpy(a8, &ctx.key[4], v21);
      }

      if (a5 >= 2)
      {
        if (v21 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v21;
        }

        v27 = 1;
        do
        {
          HMAC_Init_ex(&ctx, 0, 0, 0, 0);
          if (!v28)
          {
            goto LABEL_27;
          }

          HMAC_Update(&ctx, &ctx.key[4], v16);
          if (!v29)
          {
            goto LABEL_27;
          }

          HMAC_Final(&ctx, &ctx.key[4], 0);
          if (!v30)
          {
            goto LABEL_27;
          }

          if (v16)
          {
            v31 = &ctx.key[4];
            v32 = a8;
            v33 = v26;
            do
            {
              v34 = *v31++;
              *v32++ ^= v34;
              --v33;
            }

            while (v33);
          }
        }

        while (++v27 != a5);
      }

      a8 += v21;
      ++v19;
      a7 -= v21;
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    }

    while (a7);
  }

  v35 = a5 != 0;
LABEL_28:
  HMAC_CTX_cleanup(&ctx);
  return v35;
}

int PKCS5_PBKDF2_HMAC_SHA1(const char *pass, int passlen, const unsigned __int8 *salt, int saltlen, int iter, int keylen, unsigned __int8 *out)
{
  v8 = *&keylen;
  v10 = *&saltlen;
  v14 = EVP_sha1();

  return PKCS5_PBKDF2_HMAC(pass, passlen, salt, v10, iter, v14, v8, out);
}

BN_CTX *BN_CTX_new(void)
{
  result = OPENSSL_malloc(0x30uLL);
  if (result)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
  }

  return result;
}

void BN_CTX_free(BN_CTX *c)
{
  if (c)
  {
    if (*(c + 4) && !*(c + 40))
    {
      BN_CTX_free_cold_1();
    }

    OPENSSL_sk_pop_free_ex(*c, sk_BIGNUM_call_free_func, BN_free);
    OPENSSL_free(*(c + 1));

    OPENSSL_free(c);
  }
}

void BN_CTX_start(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v2 = *(ctx + 4);
    v3 = *(ctx + 2);
    if (v3 != *(ctx + 3))
    {
      v6 = *(ctx + 1);
      goto LABEL_14;
    }

    if (v3)
    {
      v4 = (3 * v3) >> 1;
    }

    else
    {
      v4 = 32;
    }

    if (v4 > v3 && v4 >> 61 == 0)
    {
      v6 = OPENSSL_realloc(*(ctx + 1), 8 * v4);
      if (v6)
      {
        *(ctx + 1) = v6;
        *(ctx + 3) = v4;
        v3 = *(ctx + 2);
LABEL_14:
        v6[v3] = v2;
        ++*(ctx + 2);
        return;
      }
    }

    *(ctx + 20) = 257;
  }
}

BIGNUM *__cdecl BN_CTX_get(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v3 = *ctx;
    if (*ctx || (v3 = OPENSSL_sk_new_null(), (*ctx = v3) != 0))
    {
      v4 = *(ctx + 4);
      if (v4 != EVP_MD_CTX_md(v3) || (v5 = BN_new()) != 0 && OPENSSL_sk_push(*ctx, v5))
      {
        v2 = OPENSSL_sk_value(*ctx, *(ctx + 4));
        BN_zero(v2);
        ++*(ctx + 4);
        return v2;
      }

      ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/ctx.c.inc", 172);
      BN_free(v5);
    }

    v2 = 0;
    *(ctx + 40) = 1;
    return v2;
  }

  if (!*(ctx + 41))
  {
    return 0;
  }

  ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/ctx.c.inc", 155);
  v2 = 0;
  *(ctx + 41) = 0;
  return v2;
}

void BN_CTX_end(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v1 = *(ctx + 2);
    if (!v1)
    {
      BN_CTX_end_cold_1();
    }

    v2 = v1 - 1;
    *(ctx + 2) = v2;
    *(ctx + 4) = *(*(ctx + 1) + 8 * v2);
  }
}

BOOL bio_errno_should_retry(int a1)
{
  if (a1 != -1)
  {
    return 0;
  }

  if (*__error() == 35 || *__error() == 57 || *__error() == 4 || *__error() == 35 || *__error() == 100 || *__error() == 36)
  {
    return 1;
  }

  return *__error() == 37;
}

BOOL bssl::tls13_add_certificate_in_buffer(bssl *this, bssl::SSL_HANDSHAKE *a2, void *a3, unsigned __int8 **a4, unint64_t *a5)
{
  v7 = a2;
  v9 = *this;
  v10 = *(this + 190);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[1] = v11;
  v54[2] = v11;
  v54[0] = v11;
  CBB_zero(v54);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53[1] = v12;
  v53[2] = v12;
  v53[0] = v12;
  v52[1] = v12;
  v52[2] = v12;
  v52[0] = v12;
  if ((*(this + 1602) & 0x10) != 0)
  {
    if (!CBB_init(v54, 0x400uLL))
    {
      goto LABEL_17;
    }

    v14 = v54;
  }

  else
  {
    if (!(*(*v9 + 88))(v9, v54, v53, 11))
    {
      goto LABEL_17;
    }

    v14 = v53;
  }

  if (!CBB_add_u8(v14, 0) || !CBB_add_u24_length_prefixed(v14, v52))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 584);
    goto LABEL_17;
  }

  v16 = *(this + 400);
  if ((v16 & 0x400000) != 0 && *(this + 747) == 2 && (v9[180] & 1) == 0 && (v7 & 1) == 0)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v17;
    v51 = v17;
    v48 = v17;
    v49 = v17;
    v46 = v17;
    v47 = v17;
    if (!CBB_add_u24_length_prefixed(v52, &v49) || !EVP_marshal_public_key(&v49, *(v10 + 8)) || !CBB_add_u16_length_prefixed(v52, &v46))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 597);
      v19 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v18 = bssl::ssl_add_message_cbb(v9, v54);
LABEL_64:
    v19 = v18;
    goto LABEL_18;
  }

  if (v16 & 0x200000) == 0 || *(this + 746) != 2 || (v7)
  {
    if (!bssl::ssl_has_certificate(this, v15))
    {
      if (!a3)
      {
        v18 = bssl::ssl_add_message_cbb(v9, v54);
        goto LABEL_64;
      }

      v41 = CBB_finish(v54, a3, a4);
      goto LABEL_60;
    }

    if (!ssl_credential_st::UsesX509(*(this + 190)))
    {
      __assert_rtn("tls13_add_certificate_in_buffer", "tls13_both.cc", 637, "hs->credential->UsesX509()");
    }

    v21 = OPENSSL_sk_value(*(v10 + 48), 0);
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v22;
    v51 = v22;
    v48 = v22;
    v49 = v22;
    v46 = v22;
    v47 = v22;
    if (!CBB_add_u24_length_prefixed(v52, &v49) || (v23 = CRYPTO_BUFFER_data(v21), v24 = CRYPTO_BUFFER_len(v21), !CBB_add_bytes(&v49, v23, v24)) || !CBB_add_u16_length_prefixed(v52, &v46))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 644);
      v19 = 0;
      goto LABEL_18;
    }

    v25 = *(this + 400);
    if ((v25 & 4) != 0 && *(v10 + 72))
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v26;
      v45 = v26;
      v43 = v26;
      if (!CBB_add_u16(&v46, 0x12u) || !CBB_add_u16_length_prefixed(&v46, &v43) || (v27 = CRYPTO_BUFFER_data(*(v10 + 72)), v28 = CRYPTO_BUFFER_len(*(v10 + 72)), !CBB_add_bytes(&v43, v27, v28)) || !CBB_flush(&v46))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 657);
        goto LABEL_17;
      }

      v25 = *(this + 400);
    }

    if ((v25 & 0x80) == 0 || !*(v10 + 80) || (*&v29 = 0xAAAAAAAAAAAAAAAALL, *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL, v44 = v29, v45 = v29, v42[2] = v29, v43 = v29, v42[0] = v29, v42[1] = v29, CBB_add_u16(&v46, 5u)) && CBB_add_u16_length_prefixed(&v46, &v43) && CBB_add_u8(&v43, 1u) && CBB_add_u24_length_prefixed(&v43, v42) && (v30 = CRYPTO_BUFFER_data(*(v10 + 80)), v31 = CRYPTO_BUFFER_len(*(v10 + 80)), CBB_add_bytes(v42, v30, v31)) && CBB_flush(&v46))
    {
      if (*(v10 + 4) != 1 || (*&v32 = 0xAAAAAAAAAAAAAAAALL, *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL, v44 = v32, v45 = v32, v43 = v32, CBB_add_u16(&v46, 0x22u)) && CBB_add_u16_length_prefixed(&v46, &v43) && (v33 = CRYPTO_BUFFER_data(*(v10 + 56)), v34 = CRYPTO_BUFFER_len(*(v10 + 56)), CBB_add_bytes(&v43, v33, v34)) && CBB_flush(&v46))
      {
        for (i = 1; i < EVP_MD_CTX_md(*(v10 + 48)); ++i)
        {
          v36 = OPENSSL_sk_value(*(v10 + 48), i);
          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v44 = v37;
          v45 = v37;
          v43 = v37;
          if (CBB_add_u24_length_prefixed(v52, &v43))
          {
            v38 = CRYPTO_BUFFER_data(v36);
            v39 = CRYPTO_BUFFER_len(v36);
            if (CBB_add_bytes(&v43, v38, v39))
            {
              if (CBB_add_u16(v52, 0))
              {
                continue;
              }
            }
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 696);
          goto LABEL_17;
        }

        if ((*(this + 1602) & 0x10) != 0)
        {
          v18 = bssl::tls13_add_compressed_certificate(v9, v54, this, v53, a3, a4);
          goto LABEL_64;
        }

        if (!a3)
        {
          v18 = bssl::ssl_add_message_cbb(v9, v54);
          goto LABEL_64;
        }

        v41 = CBB_finish(v54, a3, a4);
LABEL_60:
        v19 = v41 != 0;
        goto LABEL_18;
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 684);
    }

    else
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 672);
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v40;
  v51 = v40;
  v48 = v40;
  v49 = v40;
  v46 = v40;
  v47 = v40;
  if (CBB_add_u24_length_prefixed(v52, &v49) && EVP_marshal_public_key(&v49, *(v10 + 8)) && CBB_add_u16_length_prefixed(v52, &v46))
  {
    if ((*(this + 1602) & 0x10) != 0)
    {
      v18 = bssl::tls13_add_compressed_certificate(v9, v54, this, v53, a3, a4);
      goto LABEL_64;
    }

    goto LABEL_15;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 612);
  v19 = 0;
LABEL_18:
  CBB_cleanup(v54, v13);
  return v19;
}

uint64_t bssl::tls13_add_compressed_certificate(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  __s2 = 0;
  v34 = 0;
  if (bssl::CBBFinishArray(a2, &__s2))
  {
    v12 = a1[15];
    v13 = *(v12 + 736);
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *(v12 + 728);
    v15 = 24 * v13;
    while (*(v14 + 16) != *(a3 + 744))
    {
      v14 += 24;
      v15 -= 24;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    if (*v14)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32[1] = v16;
      v32[2] = v16;
      v32[0] = v16;
      if ((*(*a1 + 88))(a1, a2, a4, 25) && CBB_add_u16(a4, *(a3 + 744)) && CBB_add_u24(a4, v34) && CBB_add_u24_length_prefixed(a4, v32))
      {
        v17 = *(a3 + 1592);
        if (v17 && (*(a3 + 1602) & 8) == 0 && *(v17 + 146) == *(a3 + 744) && (v18 = *(v17 + 160), v18 == v34) && !memcmp(*(v17 + 152), __s2, v18) && (v31 = *(v17 + 176)) != 0)
        {
          if (!CBB_add_bytes(v32, *(v17 + 168), v31))
          {
            v19 = 522;
            goto LABEL_29;
          }
        }

        else
        {
          if (!(*v14)(a1, v32, __s2, v34))
          {
            v19 = 527;
            goto LABEL_29;
          }

          if (v17 && (*(a3 + 1602) & 8) != 0)
          {
            *(v17 + 146) = *(a3 + 744);
            v23 = __s2;
            v22 = v34;
            if (!bssl::Array<unsigned char>::InitUninitialized(v17 + 152, v34))
            {
              goto LABEL_25;
            }

            if (v22)
            {
              v25 = *(v17 + 152);
              do
              {
                v26 = *v23++;
                *v25++ = v26;
                --v22;
              }

              while (v22);
            }

            v27 = CBB_data(v32, v24);
            v28 = CBB_len(v32);
            if (!bssl::Array<unsigned char>::InitUninitialized(v17 + 168, v28))
            {
              goto LABEL_25;
            }

            if (v28)
            {
              v29 = *(v17 + 168);
              do
              {
                v30 = *v27++;
                *v29++ = v30;
                --v28;
              }

              while (v28);
            }
          }
        }

        if (a5)
        {
          if (!CBB_finish(a2, a5, a6))
          {
            v19 = 547;
LABEL_29:
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", v19);
            goto LABEL_25;
          }
        }

        else if ((bssl::ssl_add_message_cbb(a1, a2) & 1) == 0)
        {
          v19 = 542;
          goto LABEL_29;
        }

        v20 = 1;
        goto LABEL_26;
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 511);
    }

    else
    {
LABEL_24:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 500);
    }
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 487);
  }

LABEL_25:
  v20 = 0;
LABEL_26:
  OPENSSL_free(__s2);
  return v20;
}

void sub_1A9060C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls13_add_key_update(bssl *this, ssl_st *a2)
{
  v2 = a2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v4;
  v10[2] = v4;
  v10[0] = v4;
  CBB_zero(v10);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v5;
  v9[2] = v5;
  v9[0] = v5;
  if (*(*this + 88))(this, v10, v9, 24) && CBB_add_u8(v9, v2) && bssl::ssl_add_message_cbb(this, v10) && (bssl::tls13_rotate_traffic_key(this, 1))
  {
    *(*(this + 6) + 222) |= 0x100u;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  CBB_cleanup(v10, v6);
  return v7;
}

void sub_1A9060D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  CBB_cleanup(va, a2);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_client_hello_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a4;
  LODWORD(result) = bssl::ssl_parse_client_hello_with_trailing_data(a1, &v5, a2);
  if (v6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t bssl::ssl_parse_client_hello_with_trailing_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 104) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  memset(v16, 170, sizeof(v16));
  result = CBS_get_u16(a2, (a3 + 24));
  if (result)
  {
    result = CBS_get_bytes(a2, &v16[2], 0x20uLL);
    if (result)
    {
      result = CBS_get_u8_length_prefixed(a2, v16);
      if (result)
      {
        v8 = v16[1];
        if (v16[1] > 0x20)
        {
          return 0;
        }

        v9 = v16[3];
        *(a3 + 32) = v16[2];
        *(a3 + 40) = v9;
        *(a3 + 48) = v16[0];
        *(a3 + 56) = v8;
        if (!SSL_is_dtls(*a3) || (v15[2] = 0xAAAAAAAAAAAAAAAALL, v15[3] = 0xAAAAAAAAAAAAAAAALL, result = CBS_get_u8_length_prefixed(a2, &v15[2]), result))
        {
          memset(v15, 170, sizeof(v15));
          result = CBS_get_u16_length_prefixed(a2, &v15[2]);
          if (result)
          {
            result = 0;
            if (v15[3] >= 2 && (v15[3] & 1) == 0)
            {
              result = CBS_get_u8_length_prefixed(a2, v15);
              if (result)
              {
                v10 = v15[1];
                if (!v15[1])
                {
                  return 0;
                }

                v11 = v15[3];
                *(a3 + 64) = v15[2];
                *(a3 + 72) = v11;
                *(a3 + 80) = v15[0];
                *(a3 + 88) = v10;
                v12 = *(a2 + 8);
                if (v12)
                {
                  *&v14 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  if (!CBS_get_u16_length_prefixed(a2, &v14) || !bssl::tls1_check_duplicate_extensions(&v14))
                  {
                    return 0;
                  }

                  v13 = *(&v14 + 1);
                  *(a3 + 96) = v14;
                  *(a3 + 104) = v13;
                  v12 = *(a2 + 8);
                }

                else
                {
                  *(a3 + 96) = 0;
                  *(a3 + 104) = 0;
                }

                *(a3 + 8) = v5;
                *(a3 + 16) = v6 - v12;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_client_hello_get_extension(uint64_t a1, _OWORD *a2, int a3)
{
  v3 = *(a1 + 104);
  v9 = *(a1 + 96);
  v10 = v3;
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v8 = -21846;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    result = CBS_get_u16(&v9, &v8);
    if (!result)
    {
      break;
    }

    result = CBS_get_u16_length_prefixed(&v9, &v7);
    if (!result)
    {
      break;
    }

    if (v8 == a3)
    {
      *a2 = v7;
      return 1;
    }

    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::tls1_get_shared_group(bssl *this, ssl_st *a2, unsigned __int16 *a3)
{
  v3 = *this;
  if ((*(*this + 180) & 1) == 0)
  {
    bssl::tls1_get_shared_group();
  }

  v4 = *(this + 1);
  v5 = *(v4 + 120);
  if (v5)
  {
    v6 = *(v4 + 112);
  }

  else
  {
    v6 = &bssl::kDefaultGroups;
    v5 = 4;
  }

  v7 = *(this + 85);
  v8 = *(this + 86);
  if ((*(v3 + 146) & 0x40) != 0)
  {
    v14 = a2;
    v15 = &v6[v5];
    v9 = v6;
LABEL_9:
    while (!v8)
    {
LABEL_16:
      if (++v9 == v15)
      {
        return 0;
      }
    }

    v10 = *v9;
    v11 = 2 * v8;
    v12 = v7;
    while (v10 != *v12 || bssl::ssl_protocol_version(v3, a2, a3) <= 0x303 && (v10 == 4588 || v10 == 25497))
    {
      ++v12;
      v11 -= 2;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    LOWORD(v14->version) = v10;
    return 1;
  }

  else
  {
    if (v8)
    {
      v14 = a2;
      v15 = &v7[v8];
      v9 = *(this + 85);
      v7 = v6;
      v8 = v5;
      goto LABEL_9;
    }

    return 0;
  }
}

uint64_t bssl::ssl_alpn_list_contains_protocol(unsigned __int8 *a1, uint64_t a2, const void *a3, size_t a4)
{
  v9 = a1;
  v10 = a2;
  __s1 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    result = CBS_get_u8_length_prefixed(&v9, &__s1);
    if (!result)
    {
      break;
    }

    if (v8 == a4 && !memcmp(__s1, a3, a4))
    {
      return 1;
    }

    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::ssl_negotiate_alpn(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!v4[10] || (bssl::ssl_client_hello_get_extension(a3, &v22, 16) & 1) == 0)
  {
    if (!v4[21])
    {
      return 1;
    }

    ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1514);
    result = 0;
    v10 = 120;
LABEL_19:
    *a2 = v10;
    return result;
  }

  *(a1 + 1600) &= ~0x4000u;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(&v22, &v20) || *(&v22 + 1) || !bssl::ssl_is_valid_alpn_list(v20, v21))
  {
    ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1529);
    result = 0;
    v10 = 50;
    goto LABEL_19;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18 = -86;
  v6 = (v4[10])(v4, &v19, &v18, v20, v21, v4[11]);
  if ((v6 & 0xFFFFFFFD) == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  if (v4[21])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  result = 1;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_22;
      }

      return result;
    }

    v13 = v18;
    if (v18)
    {
      v14 = v4[6];
      v15 = v19;
      result = bssl::Array<unsigned char>::InitUninitialized(v14 + 496, v18);
      if (result)
      {
        v16 = *(v14 + 496);
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v13;
        }

        while (v13);
        return 1;
      }
    }

    else
    {
      ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1556);
      result = 0;
    }

    v10 = 80;
    goto LABEL_19;
  }

  if (v8 == 2)
  {
    *a2 = 120;
    v11 = 307;
    v12 = 1571;
    goto LABEL_30;
  }

  if (v8 != 3)
  {
LABEL_22:
    *a2 = 80;
    v11 = 68;
    v12 = 1576;
LABEL_30:
    ERR_put_error(16, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v12);
    return 0;
  }

  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_serverhello(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = -21846;
  if (CBS_get_u16(a3, &v7) && !*(a3 + 8))
  {
    if (!v7)
    {
      return 1;
    }

    ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2002);
    v5 = 115;
  }

  else
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1995);
    v5 = 50;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_clienthello(uint64_t a1, unsigned __int8 **a2, _OWORD *a3, int *a4, char *a5, uint64_t a6, unsigned __int8 **a7)
{
  if (&a7[1][*a7] == (*(a6 + 96) + *(a6 + 104)))
  {
    memset(v20, 170, sizeof(v20));
    if (CBS_get_u16_length_prefixed(a7, &v20[1]) && CBS_get_u16_length_prefixed(&v20[1], a2) && CBS_get_u32(&v20[1], a4) && CBS_get_u16_length_prefixed(a7, v20) && *(&v20[0] + 1) && !a7[1])
    {
      *a3 = v20[0];
      if (*(&v20[1] + 1))
      {
        v17 = 1;
        do
        {
          memset(v19, 170, sizeof(v19));
          if (!CBS_get_u16_length_prefixed(&v20[1], &v19[1]) || !CBS_get_u32(&v20[1], v19))
          {
            v16 = 2045;
            goto LABEL_11;
          }

          ++v17;
        }

        while (*(&v20[1] + 1));
        if (*(&v20[0] + 1))
        {
          goto LABEL_23;
        }

        v18 = 0;
LABEL_26:
        if (v17 == v18)
        {
          return 1;
        }

        v8 = 271;
        v9 = 2068;
        goto LABEL_3;
      }

      v17 = 1;
LABEL_23:
      v18 = 0;
      while (1)
      {
        *&v19[1] = 0xAAAAAAAAAAAAAAAALL;
        *&v19[3] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u8_length_prefixed(v20, &v19[1]))
        {
          break;
        }

        ++v18;
        if (!*(&v20[0] + 1))
        {
          goto LABEL_26;
        }
      }

      v16 = 2059;
    }

    else
    {
      v16 = 2031;
    }

LABEL_11:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v16);
    result = 0;
    v11 = 50;
    goto LABEL_12;
  }

  v8 = 267;
  v9 = 2018;
LABEL_3:
  ERR_put_error(16, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v9);
  result = 0;
  v11 = 47;
LABEL_12:
  *a5 = v11;
  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(*(*a1 + 48) + 222) & 0x20) == 0)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v6;
  v7[2] = v6;
  v7[0] = v6;
  result = CBB_add_u16(a2, 0x29u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v7);
    if (result)
    {
      result = CBB_add_u16(v7, 0);
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_parse_clienthello(uint64_t a1, BOOL *a2, unsigned __int8 **a3, _BYTE *a4, uint64_t a5)
{
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_get_extension(a5, &v19, 51))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u16_length_prefixed(&v19, &v17) || *(&v19 + 1))
    {
      v13 = 2404;
LABEL_17:
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v13);
      return 0;
    }

    else
    {
      if (v18)
      {
        v9 = 0;
        v10 = 0;
        v11 = *(*(a1 + 1536) + 6);
        while (1)
        {
          v16 = -21846;
          v14 = 0xAAAAAAAAAAAAAAAALL;
          v15 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16(&v17, &v16) || !CBS_get_u16_length_prefixed(&v17, &v14) || !v15)
          {
            v13 = 2418;
            goto LABEL_17;
          }

          if (v16 == v11)
          {
            if (v10)
            {
              ERR_put_error(16, 0, 264, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2424);
              *a4 = 47;
              return 0;
            }

            v9 = v14;
            v10 = v15;
          }

          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      v10 = 0;
      v9 = 0;
LABEL_20:
      if (a3)
      {
        *a3 = v9;
        a3[1] = v10;
      }

      *a2 = v10 != 0;
      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2396);
    result = 0;
    *a4 = 109;
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_add_serverhello(void *a1, uint64_t *a2)
{
  if (a1[209])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v4;
    v13 = v4;
    v11 = v4;
    result = CBB_add_u16(a2, 0x8A3Bu);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, &v11);
      if (result)
      {
        v6 = a1[208];
        v7 = a1[209];
        v8 = &v11;
        goto LABEL_5;
      }
    }
  }

  else
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v9;
    v13 = v9;
    v10[2] = v9;
    v11 = v9;
    v10[0] = v9;
    v10[1] = v9;
    result = CBB_add_u16(a2, 0x33u);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, &v11);
      if (result)
      {
        result = CBB_add_u16(&v11, *(a1[192] + 6));
        if (result)
        {
          result = CBB_add_u16_length_prefixed(&v11, v10);
          if (result)
          {
            v6 = a1[81];
            v7 = a1[82];
            v8 = v10;
LABEL_5:
            result = CBB_add_bytes(v8, v6, v7);
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

uint64_t bssl::ssl_ext_pake_parse_serverhello(uint64_t a1, _WORD *a2, uint64_t a3, char *a4, unsigned __int16 **a5)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v20, 170, sizeof(v20));
  if (!CBS_get_u16(a5, v20) || !CBS_get_u16_length_prefixed(a5, &v20[1]))
  {
    inited = 0;
    v14 = 50;
LABEL_9:
    *a4 = v14;
    return inited;
  }

  if (v20[0] != 32150)
  {
    return 0;
  }

  if (*&v20[5] != 97)
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3125);
LABEL_13:
    inited = 0;
    v14 = 47;
    goto LABEL_9;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v10;
  v22[1] = v10;
  __n = 32;
  v19 = 32;
  __src[0] = v10;
  __src[1] = v10;
  if (!SPAKE2PLUS_compute_prover_confirmation(*(a1 + 1680), *&v20[1], 65, (*&v20[1] + 65), 32, v22, &v19, 0x20uLL, __src, &__n, 0x20uLL))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3139);
    goto LABEL_13;
  }

  __dst = 0;
  v17 = 0;
  inited = bssl::Array<unsigned char>::InitUninitialized(&__dst, __n);
  if (inited)
  {
    memcpy(__dst, __src, __n);
    OPENSSL_free(*a3);
    v12 = 0;
    v13 = v17;
    *a3 = __dst;
    *(a3 + 8) = v13;
    __dst = 0;
    v17 = 0;
    *a2 = 32150;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3146);
    *a4 = 80;
    v12 = __dst;
  }

  OPENSSL_free(v12);
  return inited;
}

void sub_1A9061B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_get_local_application_settings(uint64_t a1, void *a2, void *__s1, size_t __n)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 160);
  if (!v5)
  {
    return 0;
  }

  v9 = (*(v4 + 152) + 16);
  v10 = 32 * v5;
  while (__n != *(v9 - 1) || memcmp(__s1, *(v9 - 2), __n))
  {
    v9 += 4;
    v10 -= 32;
    if (!v10)
    {
      return 0;
    }
  }

  v12 = v9[1];
  *a2 = *v9;
  a2[1] = v12;
  return 1;
}

uint64_t bssl::ssl_negotiate_alps(bssl **a1, ssl_st *a2, uint64_t a3)
{
  v3 = *a1;
  if (!*(*(*a1 + 6) + 504))
  {
    return 1;
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0;
  v23 = 0;
  v7 = (*(a1[1] + 309) & 0x2000) != 0 ? 17613 : 17513;
  if (bssl::ssl_protocol_version(v3, a2, a3) < 0x304 || !bssl::ssl_get_local_application_settings(a1, &v22, *(*(v3 + 6) + 496), *(*(v3 + 6) + 504)) || !bssl::ssl_client_hello_get_extension(a3, &v24, v7))
  {
    return 1;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_u16_length_prefixed(&v24, &v20) && !*(&v24 + 1) && v21)
  {
    v8 = 0;
    do
    {
      __s1 = 0xAAAAAAAAAAAAAAAALL;
      __n = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(&v20, &__s1) || !__n)
      {
        v16 = 3426;
        goto LABEL_25;
      }

      v9 = *(v3 + 6);
      if (__n == *(v9 + 504))
      {
        v8 |= memcmp(__s1, *(v9 + 496), __n) == 0;
      }
    }

    while (v21);
    if ((v8 & 1) == 0)
    {
      return 1;
    }

    *(a1[192] + 440) |= 0x40u;
    v10 = a1[192];
    v12 = v22;
    v11 = v23;
    if (bssl::Array<unsigned char>::InitUninitialized(v10 + 408, v23))
    {
      if (v11)
      {
        v13 = *(v10 + 51);
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }

      return 1;
    }

    v17 = 80;
  }

  else
  {
    v16 = 3417;
LABEL_25:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v16);
    v17 = 50;
  }

  LOBYTE(a2->version) = v17;
  return 0;
}

BOOL bssl::ssl_add_serverhello_tlsext(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = v5;
  v12[2] = v5;
  v12[0] = v5;
  if (CBB_add_u16_length_prefixed(a2, v12))
  {
    v8 = 0;
    v9 = &off_1F1CAFD70;
    do
    {
      if (((*(a1 + 376) >> v8) & 1) != 0 && !(*v9)(a1, v12))
      {
        ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4350);
        ERR_add_error_dataf("extension %u", *(v9 - 16));
        goto LABEL_11;
      }

      ++v8;
      v9 += 5;
    }

    while (v8 != 30);
    if (bssl::ssl_protocol_version(v4, v6, v7) <= 0x303 && !CBB_len(v12))
    {
      CBB_discard_child(a2, v10);
    }

    return CBB_flush(a2) != 0;
  }

  else
  {
LABEL_11:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4365);
    return 0;
  }
}

uint64_t bssl::ssl_parse_clienthello_tlsext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 376) = 0;
  v5 = *(a2 + 104);
  *v23 = *(a2 + 96);
  v24 = v5;
  if (v5)
  {
    while (2)
    {
      v22 = -21846;
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u16(v23, &v22) || !CBS_get_u16_length_prefixed(v23, &v20))
      {
        v16 = 50;
LABEL_29:
        bssl::ssl_send_alert(v4, 2, v16);
        return 0;
      }

      v6 = 0;
      v7 = bssl::kExtensions;
      while (*v7 != v22)
      {
        ++v6;
        v7 += 20;
        if (v6 == 30)
        {
          goto LABEL_9;
        }
      }

      *(a1 + 376) |= 1 << v6;
      v19 = 50;
      if (((*(v7 + 3))(a1, &v19, &v20) & 1) == 0)
      {
        v16 = v19;
        ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4397);
        ERR_add_error_dataf("extension %u", v22);
        goto LABEL_29;
      }

LABEL_9:
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v18 = v4;
  v8 = 0;
  v9 = bssl::kExtensions;
  do
  {
    if (((1 << v8) & *(a1 + 376)) == 0)
    {
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v10 = *v9;
      if (v10 == 65281 && bssl::ssl_client_cipher_list_contains_cipher(a2, 255))
      {
        v20 = &bssl::ssl_scan_clienthello_tlsext(bssl::SSL_HANDSHAKE *,ssl_early_callback_ctx const*,int *)::kFakeRenegotiateExtension;
        v21 = 1;
        *(a1 + 376) |= 1 << v8;
        v11 = &v20;
      }

      else
      {
        v11 = 0;
      }

      LOBYTE(v22) = 50;
      if (((*(v9 + 3))(a1, &v22, v11) & 1) == 0)
      {
        ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4425);
        ERR_add_error_dataf("extension %u", v10);
        v16 = v22;
        v4 = v18;
        goto LABEL_29;
      }
    }

    ++v8;
    v9 += 20;
  }

  while (v8 != 30);
  v12 = *a1;
  v23[0] = 112;
  v13 = *(v12 + 15);
  v14 = *(v13 + 528);
  if (!v14)
  {
    v13 = *(v12 + 16);
    v14 = *(v13 + 528);
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  v15 = v14(v12, v23, *(v13 + 536));
  if (v15 != 2)
  {
    if (v15 != 3)
    {
      *(a1 + 1600) = *(a1 + 1600) & 0xFFFFFEFF | ((*(*(v12 + 6) + 512) != 0) << 8);
      return 1;
    }

LABEL_22:
    *(a1 + 1600) &= ~0x100u;
    return 1;
  }

  bssl::ssl_send_alert(v12, 2, v23[0]);
  ERR_put_error(16, 0, 132, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4445);
  return 0;
}

uint64_t bssl::ssl_process_ticket(uint64_t **a1, SSL_SESSION **a2, _BYTE *a3, const unsigned __int8 *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  *a3 = 0;
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, 0);
  v16 = 2;
  if ((SSL_get_options(*a1) & 0x4000) == 0 && a7 <= 0x20)
  {
    v17 = bssl::ssl_protocol_version(v13, v14, v15);
    v18 = v17;
    v42 = 0;
    v43 = 0;
    v19 = a1[199];
    if (v17 < 0x304 || v19 == 0)
    {
      if (v17 <= 0x303 && v19 && (*(a1 + 1602) & 8) == 0)
      {
        v16 = *(v19 + 232);
        if (v16)
        {
          v21 = *(v19 + 224);
          if (bssl::Array<unsigned char>::InitUninitialized(&v42, *(v19 + 232)))
          {
            v22 = v42;
            do
            {
              v23 = *v21++;
              *v22++ = v23;
              --v16;
            }

            while (v16);
            *a3 = *(v19 + 240);
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (*(v19 + 241))
        {
LABEL_24:
          v16 = 2;
          goto LABEL_42;
        }
      }
    }

    else if ((*(a1 + 1602) & 8) == 0)
    {
      v16 = *(v19 + 136);
      if (v16)
      {
        v24 = *(v19 + 128);
        if (bssl::Array<unsigned char>::InitUninitialized(&v42, *(v19 + 136)))
        {
          v25 = v42;
          do
          {
            v26 = *v24++;
            *v25++ = v26;
            --v16;
          }

          while (v16);
          goto LABEL_41;
        }

LABEL_22:
        v16 = 3;
        goto LABEL_42;
      }

      if (*(v19 + 144))
      {
        goto LABEL_24;
      }
    }

    v27 = v13[16];
    if (*(v27 + 808))
    {
      *&ctx.key[4] = 0;
      *&ctx.key[12] = 0;
      inited = bssl::Array<unsigned char>::InitUninitialized(&ctx.key[4], a5);
      v29 = *&ctx.key[4];
      if (inited)
      {
        ctx.md = 0xAAAAAAAAAAAAAAAALL;
        v16 = (*(*((*a1)[16] + 808) + 16))();
        if (v16)
        {
          v29 = *&ctx.key[4];
        }

        else
        {
          if (*&ctx.key[12] < ctx.md)
          {
            abort();
          }

          *&ctx.key[12] = ctx.md;
          OPENSSL_free(v42);
          v29 = 0;
          v42 = *&ctx.key[4];
          v43 = *&ctx.key[12];
          *&ctx.key[4] = 0;
          *&ctx.key[12] = 0;
        }
      }

      else
      {
        v16 = 3;
      }

      OPENSSL_free(v29);
    }

    else if (a5 >= 0x20)
    {
      if (*(v27 + 560))
      {
        v46 = 0xAAAAAAAAAAAAAAAALL;
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&ctx.key[116] = v30;
        v45 = v30;
        *&ctx.key[84] = v30;
        *&ctx.key[100] = v30;
        *&ctx.key[52] = v30;
        *&ctx.key[68] = v30;
        *&ctx.key[20] = v30;
        *&ctx.key[36] = v30;
        *&ctx.key[4] = v30;
        EVP_CIPHER_CTX_init(&ctx.key[4]);
        ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
        *&v31 = 0xAAAAAAAAAAAAAAAALL;
        *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&ctx.i_ctx.md_data = v31;
        *&ctx.o_ctx.engine = v31;
        *&ctx.md_ctx.md_data = v31;
        *&ctx.i_ctx.engine = v31;
        *&ctx.md = v31;
        *&ctx.md_ctx.engine = v31;
        HMAC_CTX_init(&ctx);
        v32 = (*((*a1)[16] + 560))();
        if (v32 < 0)
        {
          v16 = 3;
        }

        else if (v32)
        {
          if (v32 == 2)
          {
            *a3 = 1;
          }

          else if (v32 != 1)
          {
            __assert_rtn("ssl_decrypt_ticket_with_cb", "extensions.cc", 4669, "cb_ret == 1");
          }

          v16 = bssl::decrypt_ticket_with_cipher_ctx(&v42, &ctx.key[4], &ctx, a4, a5);
        }

        else
        {
          v16 = 2;
        }

        HMAC_CTX_cleanup(&ctx);
        EVP_CIPHER_CTX_cleanup(&ctx.key[4]);
      }

      else
      {
        v16 = bssl::ssl_decrypt_ticket_with_ticket_keys(a1, &v42, a4, a5);
      }
    }

    else
    {
      v16 = 2;
    }

LABEL_41:
    if (!v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    if ((*(a1 + 1602) & 8) == 0)
    {
LABEL_43:
      if (v16)
      {
LABEL_65:
        OPENSSL_free(v42);
        return v16;
      }

      goto LABEL_44;
    }

    if (v16)
    {
      if (v16 != 2)
      {
        goto LABEL_65;
      }

      if (v18 < 0x304)
      {
        *(v19 + 241) = 1;
      }

      else
      {
        *(v19 + 144) = 1;
      }

      goto LABEL_58;
    }

    v36 = v42;
    v35 = v43;
    if (v18 < 0x304)
    {
      if (bssl::Array<unsigned char>::InitUninitialized(v19 + 224, v43))
      {
        if (v35)
        {
          v39 = *(v19 + 224);
          do
          {
            v40 = *v36++;
            *v39++ = v40;
            --v35;
          }

          while (v35);
        }

        *(v19 + 240) = *a3;
        goto LABEL_44;
      }
    }

    else if (bssl::Array<unsigned char>::InitUninitialized(v19 + 128, v43))
    {
      if (v35)
      {
        v37 = *(v19 + 128);
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
      }

LABEL_44:
      v33 = SSL_SESSION_from_bytes(v42, v43, v13[15]);
      v34 = v33;
      *&ctx.key[4] = v33;
      if (v33)
      {
        v33->session_id[19] = 32;
        SHA256(a4, a5, &v33->master_key[39]);
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v34);
        v16 = 0;
        goto LABEL_65;
      }

      ERR_clear_error();
LABEL_58:
      v16 = 2;
      goto LABEL_65;
    }

    v16 = 3;
    goto LABEL_65;
  }

  return v16;
}

void sub_1A9062600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HMAC_CTX *ctx)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t bssl::ssl_decrypt_ticket_with_ticket_keys(uint64_t a1, ssl_ctx_st *a2, uint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4 <= 0x1F)
  {
    bssl::ssl_decrypt_ticket_with_ticket_keys();
  }

  v7 = *(*a1 + 128);
  if (!bssl::ssl_ctx_rotate_ticket_encryption_key(v7, a2))
  {
    return 3;
  }

  v8 = EVP_aes_128_cbc();
  EVP_CIPHER_iv_length(v8);
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.key[116] = v9;
  v21 = v9;
  *&ctx.key[84] = v9;
  *&ctx.key[100] = v9;
  *&ctx.key[52] = v9;
  *&ctx.key[68] = v9;
  *&ctx.key[20] = v9;
  *&ctx.key[36] = v9;
  *&ctx.key[4] = v9;
  EVP_CIPHER_CTX_init(&ctx.key[4]);
  ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.i_ctx.md_data = v10;
  *&ctx.o_ctx.engine = v10;
  *&ctx.md_ctx.md_data = v10;
  *&ctx.i_ctx.engine = v10;
  *&ctx.md = v10;
  *&ctx.md_ctx.engine = v10;
  HMAC_CTX_init(&ctx);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase(&v19, (v7 + 24));
  v11 = *(v7 + 544);
  if (v11 && (*a3 == *v11 ? (v12 = *(a3 + 8) == *(v11 + 8)) : (v12 = 0), v12) || (v11 = *(v7 + 552)) != 0 && (*a3 == *v11 ? (v13 = *(a3 + 8) == *(v11 + 8)) : (v13 = 0), v13))
  {
    v16 = EVP_sha256();
    HMAC_Init_ex(&ctx, (v11 + 16), 16, v16, 0);
    if (v17)
    {
      v14 = EVP_DecryptInit_ex(&ctx.key[4], v8, 0, (v11 + 32), (a3 + 16)) != 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = 3;
  }

  else
  {
    v14 = 0;
    v15 = 2;
  }

  CRYPTO_MUTEX_unlock_read(v19);
  if (v14)
  {
    v15 = bssl::decrypt_ticket_with_cipher_ctx(a2, &ctx.key[4], &ctx, a3, a4);
  }

  HMAC_CTX_cleanup(&ctx);
  EVP_CIPHER_CTX_cleanup(&ctx.key[4]);
  return v15;
}

void sub_1A9062874(_Unwind_Exception *a1, uint64_t a2, HMAC_CTX *ctx, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t ctxa, uint64_t ctx_8, uint64_t ctx_16, uint64_t ctx_24, uint64_t ctx_32, uint64_t ctx_40, uint64_t ctx_48, uint64_t ctx_56, uint64_t ctx_64, uint64_t ctx_72, uint64_t ctx_80, uint64_t ctx_88, uint64_t ctx_96, uint64_t ctx_104, uint64_t ctx_112)
{
  HMAC_CTX_cleanup(&ctxa);
  EVP_CIPHER_CTX_cleanup(&ctx_112);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls1_parse_peer_sigalgs(bssl **a1, const ssl_st *a2, unsigned __int16 a3)
{
  if (bssl::ssl_protocol_version(*a1, a2, a3) < 0x303)
  {
    return 1;
  }

  if (!a2->method)
  {
    return 0;
  }

  return bssl::parse_u16_array(&a2->version, (a1 + 83));
}

uint64_t bssl::parse_u16_array(__int128 *a1, uint64_t a2)
{
  v11 = *a1;
  v2 = *(&v11 + 1);
  if ((BYTE8(v11) & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    if (bssl::Array<unsigned short>::InitUninitialized(&v9, *(&v11 + 1) >> 1))
    {
      if (!v10)
      {
LABEL_8:
        if (v2)
        {
          __assert_rtn("parse_u16_array", "extensions.cc", 2605, "CBS_len(&copy) == 0");
        }

        OPENSSL_free(*a2);
        v6 = v10;
        *a2 = v9;
        *(a2 + 8) = v6;
        v9 = 0;
        v10 = 0;
        v7 = 1;
        goto LABEL_13;
      }

      v4 = 0;
      v5 = 0;
      while (CBS_get_u16(&v11, v9 + v4))
      {
        ++v5;
        v4 += 2;
        if (v5 >= v10)
        {
          v2 = *(&v11 + 1);
          goto LABEL_8;
        }
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2600);
    }

    v7 = 0;
LABEL_13:
    OPENSSL_free(v9);
    return v7;
  }

  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2590);
  return 0;
}

uint64_t bssl::tls1_get_legacy_signature_algorithm(bssl *this, unsigned __int16 *a2, const evp_pkey_st *a3)
{
  v4 = EVP_PKEY_id(a2);
  if (v4 == 6)
  {
    v5 = -255;
    goto LABEL_5;
  }

  if (v4 == 408)
  {
    v5 = 515;
LABEL_5:
    *this = v5;
    return 1;
  }

  return 0;
}

uint64_t bssl::tls1_choose_signature_algorithm(bssl *this, bssl::SSL_HANDSHAKE *a2, const ssl_credential_st *a3, unsigned __int16 *a4)
{
  v7 = *this;
  if (ssl_credential_st::UsesPrivateKey(a2))
  {
    v10 = bssl::ssl_protocol_version(v7, v8, v9);
    if (v10 > 0x302)
    {
      if (*(a2 + 1) == 1)
      {
        v15 = *(this + 87);
        v16 = *(this + 88);
      }

      else
      {
        v17 = *(this + 84) == 0;
        v18 = v10 == 771;
        if (v18 && v17)
        {
          v16 = 2;
        }

        else
        {
          v16 = *(this + 84);
        }

        if (v18 && v17)
        {
          v15 = &bssl::tls1_choose_signature_algorithm(bssl::SSL_HANDSHAKE *,ssl_credential_st const*,unsigned short *)::kTLS12Default;
        }

        else
        {
          v15 = *(this + 83);
        }
      }

      v19 = *(a2 + 5);
      if (v19)
      {
        v20 = *(a2 + 4);
      }

      else
      {
        v20 = &bssl::kSignSignatureAlgorithms;
        v19 = 12;
      }

      v21 = &v20[v19];
      while (1)
      {
        v22 = *v20;
        if (bssl::ssl_pkey_supports_algorithm(v7, *(a2 + 1), *v20, 0))
        {
          if (v16)
          {
            v23 = 2 * v16;
            v24 = v15;
            while (*v24 != v22)
            {
              v24 += 2;
              v23 -= 2;
              if (!v23)
              {
                v24 = &v15[2 * v16];
                break;
              }
            }
          }

          else
          {
            v24 = v15;
          }

          if (v24 - v15 != 2 * v16)
          {
            break;
          }
        }

        if (++v20 == v21)
        {
          v13 = 253;
          v14 = 4910;
          goto LABEL_34;
        }
      }

      *a3 = v22;
      return 1;
    }

    v11 = EVP_PKEY_id(*(a2 + 1));
    if (v11 == 6)
    {
      v12 = -255;
      goto LABEL_31;
    }

    if (v11 == 408)
    {
      v12 = 515;
LABEL_31:
      *a3 = v12;
      return 1;
    }

    v13 = 253;
    v14 = 4873;
  }

  else
  {
    v13 = 228;
    v14 = 4864;
  }

LABEL_34:
  ERR_put_error(16, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v14);
  return 0;
}

uint64_t bssl::tls1_verify_channel_id(bssl **a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v29 = -21846;
  v28 = *(a2 + 8);
  s = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(&v28, &v29) || !CBS_get_u16_length_prefixed(&v28, &s) || *(&v28 + 1) || v29 != 30032 || v27 != 128)
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4925);
    bssl::ssl_send_alert(v3, 2, 50);
    return 0;
  }

  v4 = EC_group_p256();
  v5 = ECDSA_SIG_new();
  v25 = v5;
  v6 = BN_new();
  v24 = v6;
  v7 = BN_new();
  v8 = v7;
  v23 = v7;
  if (!v5 || !v6 || !v7)
  {
    v11 = 0;
    v18 = 0;
    v23 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = s;
  if (BN_bin2bn(s, 32, v6) && BN_bin2bn(v9 + 32, 32, v8) && BN_bin2bn(v9 + 64, 32, v5->r) && BN_bin2bn(v9 + 96, 32, v5->s))
  {
    eckey = EC_KEY_new();
    v10 = EC_POINT_new(v4);
    v11 = 0;
    v21 = v10;
    if (!eckey || !v10)
    {
      goto LABEL_34;
    }

    if (EC_POINT_set_affine_coordinates_GFp(v4, v10, v6, v8, 0))
    {
      if (EC_KEY_set_group(eckey, v4))
      {
        if (EC_KEY_set_public_key(eckey, v21))
        {
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v32 = v13;
          v33 = v13;
          *dgst = v13;
          v31 = v13;
          *dgst_len = 0xAAAAAAAAAAAAAAAALL;
          if (bssl::tls1_channel_id_hash(a1, dgst, dgst_len, v12))
          {
            if (ECDSA_do_verify(dgst, dgst_len[0], v5, eckey))
            {
              v14 = (*(v3 + 6) + 520);
              v15 = *v9;
              v16 = *(v9 + 1);
              v17 = *(v9 + 3);
              v14[2] = *(v9 + 2);
              v14[3] = v17;
              *v14 = v15;
              v14[1] = v16;
              *(*(v3 + 6) + 222) |= 0x80u;
              v11 = 1;
LABEL_34:
              std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](&v21, 0);
              std::unique_ptr<ec_key_st,bssl::internal::Deleter>::reset[abi:ne200100](&eckey, 0);
              goto LABEL_26;
            }

            ERR_put_error(16, 0, 129, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4967);
            bssl::ssl_send_alert(v3, 2, 51);
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_34;
  }

  v11 = 0;
LABEL_26:
  v23 = 0;
LABEL_27:
  BN_free(v8);
  v18 = v11;
LABEL_28:
  v24 = 0;
  if (v6)
  {
    BN_free(v6);
  }

  v25 = 0;
  if (v5)
  {
    ECDSA_SIG_free(v5);
  }

  return v18;
}