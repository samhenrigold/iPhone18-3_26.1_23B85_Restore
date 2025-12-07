DH *__cdecl DH_generate_parameters(int prime_len, int generator, void (__cdecl *callback)(int, int, void *), void *cb_arg)
{
  v8 = DH_new();
  if (v8)
  {
    memset(&cb, 0, sizeof(cb));
    BN_GENCB_set_old(&cb, callback, cb_arg);
    if (!DH_generate_parameters_ex(v8, prime_len, generator, &cb))
    {
      DH_free(v8);
      return 0;
    }
  }

  return v8;
}

const CRYPTO_EX_DATA_IMPL *CRYPTO_get_ex_data_implementation(void)
{
  result = impl;
  if (!impl)
  {
    impl_check();
    return impl;
  }

  return result;
}

void impl_check()
{
  CRYPTO_lock(9, 2, 0, 0);
  if (!impl)
  {
    impl = impl_default;
  }

  CRYPTO_lock(10, 2, 0, 0);
}

int CRYPTO_set_ex_data_implementation(const CRYPTO_EX_DATA_IMPL *i)
{
  CRYPTO_lock(9, 2, 0, 0);
  v2 = 0;
  if (!impl)
  {
    impl = i;
    v2 = 1;
  }

  CRYPTO_lock(10, 2, 0, 0);
  return v2;
}

int CRYPTO_ex_data_new_class(void)
{
  v0 = impl;
  if (!impl)
  {
    impl_check();
    v0 = impl;
  }

  v1 = *v0;

  return v1();
}

void CRYPTO_cleanup_all_ex_data(void)
{
  v0 = impl;
  if (!impl)
  {
    impl_check();
    v0 = impl;
  }

  v1 = *(v0 + 8);

  v1();
}

int CRYPTO_get_ex_new_index(int class_index, uint64_t argl, void *argp, CRYPTO_EX_new *new_func, CRYPTO_EX_dup *dup_func, CRYPTO_EX_free *free_func)
{
  v11 = *&class_index;
  v12 = impl;
  if (!impl)
  {
    impl_check();
    v12 = impl;
  }

  v13 = *(v12 + 16);

  return v13(v11, argl, argp, new_func, dup_func, free_func);
}

int CRYPTO_new_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
  v5 = *&class_index;
  v6 = impl;
  if (!impl)
  {
    impl_check();
    v6 = impl;
  }

  v7 = *(v6 + 24);

  return v7(v5, obj, ad);
}

int CRYPTO_dup_ex_data(int class_index, CRYPTO_EX_DATA *to, CRYPTO_EX_DATA *from)
{
  v5 = *&class_index;
  v6 = impl;
  if (!impl)
  {
    impl_check();
    v6 = impl;
  }

  v7 = *(v6 + 32);

  return v7(v5, to, from);
}

void CRYPTO_free_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
  v5 = *&class_index;
  v6 = impl;
  if (!impl)
  {
    impl_check();
    v6 = impl;
  }

  v7 = *(v6 + 40);

  v7(v5, obj, ad);
}

int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val)
{
  sk = ad->sk;
  if (sk || (sk = sk_new_null(), (ad->sk = sk) != 0))
  {
    v7 = sk_num(sk);
    if (v7 > idx)
    {
LABEL_7:
      sk_set(ad->sk, idx, val);
      return 1;
    }

    v8 = idx - v7 + 1;
    while (sk_push(ad->sk, 0))
    {
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    v10 = 619;
  }

  else
  {
    v10 = 611;
  }

  ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", v10);
  return 0;
}

void *__cdecl CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx)
{
  sk = ad->sk;
  if (!sk || sk_num(sk) <= idx)
  {
    return 0;
  }

  v5 = ad->sk;

  return sk_value(v5, idx);
}

uint64_t int_new_class()
{
  CRYPTO_lock(9, 2, 0, 0);
  v0 = ex_class++;
  CRYPTO_lock(10, 2, 0, 0);
  return v0;
}

void int_cleanup()
{
  v0 = ex_data;
  if (!ex_data)
  {
    if (!ex_data_check())
    {
      return;
    }

    v0 = ex_data;
  }

  lh_doall(v0, def_cleanup_cb);
  lh_free(ex_data);
  ex_data = 0;
  impl = 0;
}

uint64_t int_get_new_index(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = def_get_class(a1);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  v13 = malloc_type_malloc(0x28uLL, 0x1080040EC4B14DAuLL);
  if (!v13)
  {
    ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 351);
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  *v13 = a2;
  v13[1] = a3;
  v13[3] = a6;
  v13[4] = a5;
  v13[2] = a4;
  CRYPTO_lock(9, 2, 0, 0);
  while (1)
  {
    v15 = sk_num(v12[1]);
    v16 = *(v12 + 4);
    if (v15 > v16)
    {
      break;
    }

    if (!sk_push(v12[1], 0))
    {
      ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 362);
      free(v14);
      v16 = 0xFFFFFFFFLL;
      goto LABEL_10;
    }
  }

  *(v12 + 4) = v16 + 1;
  sk_set(v12[1], v16, v14);
LABEL_10:
  CRYPTO_lock(10, 2, 0, 0);
  return v16;
}

uint64_t int_new_ex_data(uint64_t a1, uint64_t a2, const CRYPTO_EX_DATA *a3)
{
  result = def_get_class(a1);
  if (result)
  {
    v6 = result;
    a3->sk = 0;
    CRYPTO_lock(5, 2, 0, 0);
    v7 = sk_num(*(v6 + 8));
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = reallocarray(0, v7, 8uLL);
      if (v8)
      {
        v9 = 0;
        do
        {
          v8[v9] = sk_value(*(v6 + 8), v9);
          ++v9;
        }

        while (v7 != v9);
      }
    }

    CRYPTO_lock(6, 2, 0, 0);
    if (v7 < 1 || v8)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v11 = v8[i];
          if (v11)
          {
            if (*(v11 + 16))
            {
              v12 = CRYPTO_get_ex_data(a3, i);
              (*(v8[i] + 16))(a2, v12, a3, i, *v8[i], *(v8[i] + 8));
            }
          }
        }
      }

      free(v8);
      return 1;
    }

    else
    {
      ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 439);
      return 0;
    }
  }

  return result;
}

uint64_t int_dup_ex_data(uint64_t a1, CRYPTO_EX_DATA *a2, const CRYPTO_EX_DATA *a3)
{
  if (!a3->sk)
  {
    return 1;
  }

  result = def_get_class(a1);
  if (result)
  {
    v6 = result;
    val = 0;
    CRYPTO_lock(5, 2, 0, 0);
    LODWORD(v7) = sk_num(*(v6 + 8));
    v8 = sk_num(a3->sk);
    if (v8 >= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v8;
    }

    if (v7 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = reallocarray(0, v7, 8uLL);
      if (v9)
      {
        for (i = 0; i != v7; ++i)
        {
          v9[i] = sk_value(*(v6 + 8), i);
        }
      }
    }

    CRYPTO_lock(6, 2, 0, 0);
    if (v7 < 1 || v9)
    {
      if (v7 >= 1)
      {
        for (j = 0; j != v7; ++j)
        {
          v12 = CRYPTO_get_ex_data(a3, j);
          val = v12;
          v13 = v9[j];
          if (v13)
          {
            v14 = v13[4];
            if (v14)
            {
              v14(a2, a3, &val, j, *v13, v13[1]);
              v12 = val;
            }
          }

          CRYPTO_set_ex_data(a2, j, v12);
        }
      }

      free(v9);
      return 1;
    }

    else
    {
      ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 483);
      return 0;
    }
  }

  return result;
}

void int_free_ex_data(uint64_t a1, uint64_t a2, const CRYPTO_EX_DATA *a3)
{
  v5 = def_get_class(a1);
  if (v5)
  {
    v6 = v5;
    CRYPTO_lock(5, 2, 0, 0);
    v7 = sk_num(v6[1]);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = reallocarray(0, v7, 8uLL);
      if (v8)
      {
        for (i = 0; i != v7; ++i)
        {
          v8[i] = sk_value(v6[1], i);
        }
      }
    }

    CRYPTO_lock(6, 2, 0, 0);
    if (v7 < 1 || v8)
    {
      if (v7 >= 1)
      {
        for (j = 0; j != v7; ++j)
        {
          v11 = v8[j];
          if (v11 && *(v11 + 24))
          {
            v12 = CRYPTO_get_ex_data(a3, j);
            (*(v8[j] + 24))(a2, v12, a3, j, *v8[j], *(v8[j] + 8));
          }
        }
      }

      free(v8);
      if (a3->sk)
      {
        sk_free(a3->sk);
        a3->sk = 0;
      }
    }

    else
    {

      ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 521);
    }
  }
}

BOOL ex_data_check()
{
  CRYPTO_lock(9, 2, 0, 0);
  if (ex_data)
  {
    v0 = 1;
  }

  else
  {
    ex_data = lh_new(ex_class_item_LHASH_HASH, ex_class_item_LHASH_COMP);
    v0 = ex_data != 0;
  }

  CRYPTO_lock(10, 2, 0, 0);
  return v0;
}

void def_cleanup_cb(STACK **a1)
{
  sk_pop_free(a1[1], def_cleanup_util_cb);

  free(a1);
}

void *def_get_class(unsigned int a1)
{
  if (!ex_data && !ex_data_check())
  {
    return 0;
  }

  data[1] = 0;
  data[2] = 0;
  data[0] = a1;
  if (!OPENSSL_init_crypto(0))
  {
    return 0;
  }

  CRYPTO_lock(9, 2, 0, 0);
  v2 = lh_retrieve(ex_data, data);
  if (!v2)
  {
    v3 = malloc_type_malloc(0x18uLL, 0x1020040903548AEuLL);
    if (v3)
    {
      v2 = v3;
      *v3 = a1;
      v3[4] = 0;
      v4 = sk_new_null();
      v2[1] = v4;
      if (v4)
      {
        lh_insert(ex_data, v2);
        goto LABEL_5;
      }

      free(v2);
    }

    CRYPTO_lock(10, 2, 0, 0);
    ERR_put_error(15, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ex_data.c", 337);
    return 0;
  }

LABEL_5:
  CRYPTO_lock(10, 2, 0, 0);
  return v2;
}

void DES_ede3_cfb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, DES_cblock *ivec, int *num, int enc)
{
  v14 = length;
  v26[1] = *MEMORY[0x277D85DE8];
  v17 = *num;
  if (enc)
  {
    if (length)
    {
      do
      {
        if (!v17)
        {
          v26[0] = *ivec;
          DES_encrypt3(v26, ks1, ks2, ks3);
          v18 = WORD1(v26[0]);
          v19 = HIDWORD(v26[0]);
          *ivec = v26[0];
          *&(*ivec)[2] = v18;
          *&(*ivec)[4] = v19;
        }

        v20 = *in++;
        v21 = (*ivec)[v17];
        *out++ = v21 ^ v20;
        (*ivec)[v17] = v21 ^ v20;
        v17 = (v17 + 1) & 7;
        --v14;
      }

      while (v14);
    }
  }

  else if (length)
  {
    do
    {
      if (!v17)
      {
        v26[0] = *ivec;
        DES_encrypt3(v26, ks1, ks2, ks3);
        v22 = WORD1(v26[0]);
        v23 = HIDWORD(v26[0]);
        *ivec = v26[0];
        *&(*ivec)[2] = v22;
        *&(*ivec)[4] = v23;
      }

      v24 = *in++;
      v25 = (*ivec)[v17];
      (*ivec)[v17] = v24;
      *out++ = v25 ^ v24;
      v17 = (v17 + 1) & 7;
      --v14;
    }

    while (v14);
  }

  *num = v17;
}

void DES_ede3_cfb_encrypt(const unsigned __int8 *in, unsigned __int8 *out, int numbits, uint64_t length, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, DES_cblock *ivec, int enc)
{
  v70 = *MEMORY[0x277D85DE8];
  if (numbits > 64)
  {
    return;
  }

  v10 = length;
  v14 = (numbits + 7) >> 3;
  v15 = *ivec;
  v16 = *&(*ivec)[4];
  if (enc)
  {
    if (v14 <= length)
    {
      v17 = numbits + 7;
      if (numbits >= 0)
      {
        v17 = numbits;
      }

      v18 = numbits - (v17 & 0xFFFFFFF8);
      v60 = vnegq_s32(vdupq_n_s32(8 - v18));
      v61 = vdupq_n_s32(v18);
      while (1)
      {
        data = v15;
        v69 = v16;
        DES_encrypt3(&data, ks1, ks2, ks3);
        v19 = 0;
        v20 = &in[v14];
        if (v14 > 4)
        {
          if (v14 <= 6)
          {
            if (v14 != 5)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          if (v14 == 7)
          {
            goto LABEL_20;
          }

          if (v14 == 8)
          {
            v22 = *--v20;
            v19 = v22 << 24;
LABEL_20:
            v23 = *--v20;
            v19 |= v23 << 16;
LABEL_21:
            v24 = *--v20;
            v19 |= v24 << 8;
LABEL_22:
            v25 = *--v20;
            v19 |= v25;
LABEL_23:
            v21 = v19;
            v26 = *--v20;
            v19 = v26 << 24;
LABEL_24:
            v27 = *--v20;
            v19 |= v27 << 16;
LABEL_25:
            v28 = *--v20;
            v19 |= v28 << 8;
LABEL_26:
            v29 = *--v20;
            v19 |= v29;
            goto LABEL_27;
          }

          v21 = 0;
        }

        else
        {
          v21 = 0;
          if (v14 > 2)
          {
            if (v14 != 3)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v14 == 1)
          {
            goto LABEL_26;
          }

          if (v14 == 2)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        v30 = data ^ v19;
        v31 = v69 ^ v21;
        v32 = &out[v14];
        if (v14 <= 4)
        {
          if (v14 > 2)
          {
            if (v14 != 3)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          if (v14 != 1)
          {
            if (v14 != 2)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

          goto LABEL_46;
        }

        if (v14 <= 6)
        {
          if (v14 != 5)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        if (v14 == 7)
        {
          goto LABEL_40;
        }

        if (v14 == 8)
        {
          *--v32 = HIBYTE(v31);
LABEL_40:
          *--v32 = BYTE2(v31);
LABEL_41:
          *--v32 = BYTE1(v31);
LABEL_42:
          *--v32 = v31;
LABEL_43:
          *--v32 = HIBYTE(v30);
LABEL_44:
          *--v32 = BYTE2(v30);
LABEL_45:
          *--v32 = BYTE1(v30);
LABEL_46:
          *--v32 = v30;
        }

LABEL_47:
        if (numbits != 32)
        {
          if (numbits == 64)
          {
            v16 = v30;
            v30 = v31;
          }

          else
          {
            *v66 = v15;
            *&v66[4] = v16;
            *&v66[8] = v30;
            v67 = v31;
            __memmove_chk();
            if (v18)
            {
              v33 = v66;
              v34 = vld1_dup_s8(v33);
              v35 = vmovl_u8(vext_s8(v34, *&v66[1], 7uLL));
              v36 = vmovl_u8(*&v66[1]);
              *v66 = vmovn_s16(vuzp1q_s16(vorrq_s8(vshlq_u32(vmovl_u16(*v36.i8), v60), vshlq_u32(vmovl_u16(*v35.i8), v61)), vorrq_s8(vshlq_u32(vmovl_high_u16(v36), v60), vshlq_u32(vmovl_high_u16(v35), v61))));
            }

            v16 = *v66;
            v30 = *&v66[4];
          }
        }

        v15 = v16;
        v10 -= v14;
        in = &v20[v14];
        out = &v32[v14];
        v16 = v30;
        if (v10 < v14)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_57;
  }

  if (v14 <= length)
  {
    v62 = numbits - (v9 & 0xFFFFFFF8);
    v57 = vnegq_s32(vdupq_n_s32(8 - v62));
    v58 = vdupq_n_s32(v62);
    v30 = *&(*ivec)[4];
    while (1)
    {
      v37 = v15;
      v38 = v30;
      data = v15;
      v69 = v30;
      DES_encrypt3(&data, ks1, ks2, ks3);
      v39 = 0;
      v40 = &in[v14];
      if (v14 > 4)
      {
        if (v14 <= 6)
        {
          if (v14 != 5)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        }

        if (v14 == 7)
        {
          goto LABEL_74;
        }

        if (v14 == 8)
        {
          v42 = *--v40;
          v39 = v42 << 24;
LABEL_74:
          v43 = *--v40;
          v39 |= v43 << 16;
LABEL_75:
          v44 = *--v40;
          v39 |= v44 << 8;
LABEL_76:
          v45 = *--v40;
          v39 |= v45;
LABEL_77:
          v41 = v39;
          v46 = *--v40;
          v39 = v46 << 24;
LABEL_78:
          v47 = *--v40;
          v39 |= v47 << 16;
LABEL_79:
          v48 = *--v40;
          v39 |= v48 << 8;
LABEL_80:
          v49 = *--v40;
          v39 |= v49;
          goto LABEL_81;
        }

        v41 = 0;
      }

      else
      {
        v41 = 0;
        if (v14 > 2)
        {
          if (v14 != 3)
          {
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v14 == 1)
        {
          goto LABEL_80;
        }

        if (v14 == 2)
        {
          goto LABEL_79;
        }
      }

LABEL_81:
      if (numbits == 32)
      {
        v15 = v38;
        v30 = v39;
      }

      else
      {
        v15 = v39;
        v30 = v41;
        if (numbits != 64)
        {
          *v66 = v37;
          *&v66[4] = v38;
          *&v66[8] = v39;
          v67 = v41;
          __memmove_chk();
          if (v62)
          {
            v50 = v66;
            v51 = vld1_dup_s8(v50);
            v52 = vmovl_u8(vext_s8(v51, *&v66[1], 7uLL));
            v53 = vmovl_u8(*&v66[1]);
            *v66 = vmovn_s16(vuzp1q_s16(vorrq_s8(vshlq_u32(vmovl_u16(*v53.i8), v57), vshlq_u32(vmovl_u16(*v52.i8), v58)), vorrq_s8(vshlq_u32(vmovl_high_u16(v53), v57), vshlq_u32(vmovl_high_u16(v52), v58))));
          }

          v15 = *v66;
          v30 = *&v66[4];
        }
      }

      v54 = data ^ v39;
      v55 = &out[v14];
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
          if (v14 != 3)
          {
            goto LABEL_103;
          }

          goto LABEL_104;
        }

        if (v14 != 1)
        {
          if (v14 != 2)
          {
            goto LABEL_107;
          }

          goto LABEL_105;
        }

        goto LABEL_106;
      }

      v56 = v69 ^ v41;
      if (v14 <= 6)
      {
        if (v14 != 5)
        {
          goto LABEL_101;
        }

        goto LABEL_102;
      }

      if (v14 == 7)
      {
        goto LABEL_100;
      }

      if (v14 == 8)
      {
        *--v55 = HIBYTE(v56);
LABEL_100:
        *--v55 = BYTE2(v56);
LABEL_101:
        *--v55 = BYTE1(v56);
LABEL_102:
        *--v55 = v56;
LABEL_103:
        *--v55 = HIBYTE(v54);
LABEL_104:
        *--v55 = BYTE2(v54);
LABEL_105:
        *--v55 = BYTE1(v54);
LABEL_106:
        *--v55 = v54;
      }

LABEL_107:
      v10 -= v14;
      in = &v40[v14];
      out = &v55[v14];
      if (v10 < v14)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_57:
  v30 = *&(*ivec)[4];
LABEL_58:
  *ivec = v15;
  *&(*ivec)[4] = v30;
}

uint64_t BIO_new_NDEF(BIO *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = a2;
  v3 = *(a3 + 32);
  v13 = 0;
  v14 = 0;
  if (v3 && *(v3 + 24))
  {
    v6 = BIO_f_asn1();
    v7 = BIO_new(v6);
    v8 = v7;
    if (v7)
    {
      v7 = BIO_push(v7, a1);
      if (v7)
      {
        if (BIO_asn1_set_prefix(v8, ndef_prefix, ndef_prefix_free) >= 1 && BIO_asn1_set_suffix(v8, ndef_suffix, ndef_suffix_free) >= 1)
        {
          v9 = malloc_type_calloc(1uLL, 0x30uLL, 0xF004056C54A40uLL);
          if (v9)
          {
            v10 = v9;
            if (BIO_ctrl(v8, 153, 0, v9) <= 0)
            {
              free(v10);
            }

            else
            {
              v14 = 0;
              v15 = 0;
              v13 = v8;
              if ((*(v3 + 24))(10, &v16, a3, &v13) >= 1)
              {
                v11 = v15;
                *v10 = v16;
                v10[1] = a3;
                result = v14;
                v10[3] = v8;
                v10[4] = v11;
                v10[2] = result;
                return result;
              }
            }
          }
        }

        v7 = v8;
      }
    }
  }

  else
  {
    ERR_put_error(13, 4095, 202, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/bio_ndef.c", 111);
    v8 = 0;
    v7 = 0;
  }

  BIO_pop(v7);
  BIO_free(v8);
  return 0;
}

uint64_t ndef_prefix(uint64_t a1, unsigned __int8 **a2, _DWORD *a3, ASN1_VALUE ***a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = *a4;
  v7 = ASN1_item_ndef_i2d(**a4, 0, (*a4)[1]);
  v8 = malloc_type_malloc(v7, 0xA121BA37uLL);
  out = v8;
  v6[5] = v8;
  *a2 = v8;
  ASN1_item_ndef_i2d(*v6, &out, v6[1]);
  v9 = *v6[4];
  if (!v9)
  {
    return 0;
  }

  *a3 = v9 - *a2;
  return 1;
}

uint64_t ndef_prefix_free(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!*a4)
  {
    return 0;
  }

  free(*(*a4 + 40));
  *(*a4 + 40) = 0;
  *a2 = 0;
  *a3 = 0;
  return 1;
}

uint64_t ndef_suffix(uint64_t a1, unsigned __int8 **a2, _DWORD *a3, int8x16_t **a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = *a4;
  v7 = *((*a4)->i64[1] + 32);
  v13 = vextq_s8((*a4)[1], (*a4)[1], 8uLL);
  v14 = *(v6 + 32);
  if ((*(v7 + 24))(11, v6) < 1)
  {
    return 0;
  }

  v8 = ASN1_item_ndef_i2d(*v6, 0, *(v6 + 8));
  v9 = malloc_type_malloc(v8, 0x8A4108B9uLL);
  out = v9;
  *(v6 + 40) = v9;
  *a2 = v9;
  v10 = ASN1_item_ndef_i2d(*v6, &out, *(v6 + 8));
  v11 = **(v6 + 32);
  if (!v11)
  {
    return 0;
  }

  *a2 = v11;
  *a3 = v10 + *(v6 + 40) - **(v6 + 32);
  return 1;
}

uint64_t ndef_suffix_free(uint64_t a1, void *a2, _DWORD *a3, void **a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!*a4)
  {
    return 0;
  }

  free(*(*a4 + 5));
  *(*a4 + 5) = 0;
  *a2 = 0;
  *a3 = 0;
  free(*a4);
  *a4 = 0;
  return 1;
}

EC_GROUP *__cdecl EC_GROUP_new_curve_GFp(const BIGNUM *p, const BIGNUM *a, const BIGNUM *b, BN_CTX *a4)
{
  v8 = EC_GFp_mont_method();
  v9 = EC_GROUP_new(v8);
  v10 = v9;
  if (!v9 || !EC_GROUP_set_curve(v9, p, a, b, a4))
  {
    EC_GROUP_free(v10);
    return 0;
  }

  return v10;
}

char *OPENSSL_asc2uni(char *__s, unsigned int a2, void *a3, _DWORD *a4)
{
  v6 = __s;
  if ((a2 & 0x80000000) != 0)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = a2;
  }

  v8 = v7 + 1;
  if (v7 == -1)
  {
    return 0;
  }

  result = reallocarray(0, v8, 2uLL);
  if (!result)
  {
    return result;
  }

  if (((v8 >> 30) & 0x1FFFFFFFFLL) != 0)
  {
    free(result);
    return 0;
  }

  v10 = 2 * v8;
  v11 = 2 * v8 - 2;
  if (2 * v8 != 2)
  {
    v12 = 0;
    do
    {
      v13 = &result[v12];
      *v13 = 0;
      v14 = *v6++;
      v13[1] = v14;
      v12 += 2;
    }

    while (v12 < v11);
  }

  result[v11] = 0;
  result[v10 - 1] = 0;
  if (a4)
  {
    *a4 = v10;
  }

  if (a3)
  {
    *a3 = result;
  }

  return result;
}

_BYTE *OPENSSL_uni2asc(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = a2 >> 1;
  if (!a2 || (v5 = a2 >> 1, *(a1 + a2 - 1)))
  {
    v5 = v4 + 1;
  }

  result = malloc_type_malloc(v5, 0x471075E7uLL);
  if (result)
  {
    if (a2 >= 2)
    {
      v7 = (a1 + 1);
      v8 = result;
      do
      {
        v9 = *v7;
        v7 += 2;
        *v8++ = v9;
        --v4;
      }

      while (v4);
    }

    result[v5 - 1] = 0;
  }

  return result;
}

void gost_key_wrap_crypto_pro(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v12 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 512);
  Gost2814789_set_sbox(v10, v1);
  key_diversify_crypto_pro(v10, v9, v7, v11);
  Gost2814789_set_key(v10, v11, 256);
  *v3 = *v7;
  Gost2814789_encrypt(v5, (v3 + 8), v10);
  Gost2814789_encrypt(v5 + 2, (v3 + 16), v10);
  Gost2814789_encrypt(v5 + 4, (v3 + 24), v10);
  Gost2814789_encrypt(v5 + 6, (v3 + 32), v10);
  GOST2814789IMIT(v5);
}

char *key_diversify_crypto_pro(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  *a4 = *a2;
  *(a4 + 16) = v8;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + v7);
    v12 = 1;
    v13 = a4;
    do
    {
      v15 = *v13++;
      v14 = v15;
      if ((v12 & v11) != 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v10 += v16;
      if ((v12 & v11) != 0)
      {
        v14 = 0;
      }

      v9 += v14;
      v12 *= 2;
    }

    while (v12 < 256);
    v18 = 256;
    v19[0] = v10;
    v19[1] = v9;
    Gost2814789_set_key(a1, a4, 256);
    v18 = 0;
    result = Gost2814789_cfb64_encrypt(a4, a4, 0x20uLL, a1, v19, &v18, 1);
    ++v7;
  }

  while (v7 != 8);
  return result;
}

void gost_key_unwrap_crypto_pro(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = *MEMORY[0x277D85DE8];
  memset(v8, 0, 512);
  Gost2814789_set_sbox(v8, v1);
  key_diversify_crypto_pro(v8, v7, v5, v9);
  Gost2814789_set_key(v8, v9, 256);
  Gost2814789_decrypt(v5 + 2, v3, v8);
  Gost2814789_decrypt(v5 + 4, v3 + 2, v8);
  Gost2814789_decrypt(v5 + 6, v3 + 4, v8);
  Gost2814789_decrypt(v5 + 8, v3 + 6, v8);
  GOST2814789IMIT(v3);
}

void DES_xcbc_encrypt(const unsigned __int8 *input, unsigned __int8 *output, uint64_t length, DES_key_schedule *schedule, DES_cblock *ivec, const_DES_cblock *inw, const_DES_cblock *outw, int enc)
{
  v8 = ivec;
  v9 = length;
  v58 = *MEMORY[0x277D85DE8];
  v12 = *inw;
  v13 = *&(*inw)[4];
  v14 = *outw;
  v15 = *&(*outw)[4];
  v16 = *ivec;
  v17 = *&(*ivec)[4];
  ks = schedule;
  v55 = *outw;
  v18 = *inw;
  if (!enc)
  {
    if (length < 9)
    {
      if (!length)
      {
LABEL_52:
        *v8 = v16;
        *&(*v8)[4] = v17;
        v36 = HIBYTE(v17);
        (*v8)[6] = BYTE2(v17);
        goto LABEL_53;
      }
    }

    else
    {
      v52 = *&(*outw)[4];
      v53 = *&(*inw)[4];
      do
      {
        v25 = output;
        v26 = v16;
        v27 = v17;
        v28 = v9;
        v9 -= 8;
        v16 = *input;
        v17 = *(input + 1);
        v29 = input + 8;
        data = *input ^ v55;
        v57 = v17 ^ v52;
        DES_encrypt1(&data, schedule, 0);
        schedule = ks;
        v30 = v27 ^ v53 ^ v57;
        *v25 = v26 ^ v18 ^ data;
        *(v25 + 1) = v30;
        output = v25 + 8;
        v14 = v55;
        input += 8;
      }

      while (v28 > 0x10);
      v12 = v18;
      input = v29;
      v8 = ivec;
      v15 = v52;
      v13 = v53;
    }

    v37 = v16;
    v16 = *input;
    v38 = *(input + 1);
    data = v16 ^ v14;
    v57 = v38 ^ v15;
    v39 = v12;
    DES_encrypt1(&data, schedule, 0);
    v40 = data ^ v37 ^ v39;
    v41 = &output[v9];
    if (v9 <= 4)
    {
      if (v9 <= 2)
      {
        if (v9 == 1)
        {
LABEL_50:
          *(v41 - 1) = v40;
          goto LABEL_51;
        }

        if (v9 != 2)
        {
          goto LABEL_51;
        }

LABEL_49:
        *--v41 = BYTE1(v40);
        goto LABEL_50;
      }

      if (v9 == 3)
      {
LABEL_48:
        *--v41 = BYTE2(v40);
        goto LABEL_49;
      }

LABEL_47:
      *--v41 = HIBYTE(v40);
      goto LABEL_48;
    }

    v43 = v57 ^ v17 ^ v13;
    if (v9 > 6)
    {
      if (v9 != 7)
      {
        if (v9 != 8)
        {
LABEL_51:
          v17 = v38;
          goto LABEL_52;
        }

        *--v41 = HIBYTE(v43);
      }

      *--v41 = BYTE2(v43);
    }

    else if (v9 == 5)
    {
LABEL_46:
      *--v41 = v43;
      goto LABEL_47;
    }

    *--v41 = BYTE1(v43);
    goto LABEL_46;
  }

  if (length >= 8)
  {
    do
    {
      v19 = output;
      v20 = v9;
      v9 -= 8;
      v21 = *input;
      v22 = *(input + 1);
      input += 8;
      data = v16 ^ v12 ^ v21;
      v57 = v17 ^ v13 ^ v22;
      DES_encrypt1(&data, schedule, 1);
      v12 = v18;
      schedule = ks;
      v16 = data ^ v55;
      v17 = v57 ^ v15;
      output += 8;
      *v19 = data ^ v55;
      *(v19 + 1) = v17;
    }

    while (v20 > 0xF);
    v8 = ivec;
  }

  if (v9)
  {
    v23 = 0;
    v24 = &input[v9];
    if (v9 <= 3)
    {
      v42 = 0;
      if (v9 == 1)
      {
LABEL_36:
        v23 |= *(v24 - 1);
        goto LABEL_37;
      }

      if (v9 == 2)
      {
LABEL_35:
        v49 = *--v24;
        v23 |= v49 << 8;
        goto LABEL_36;
      }

      if (v9 != 3)
      {
        goto LABEL_37;
      }

LABEL_34:
      v48 = *--v24;
      v23 |= v48 << 16;
      goto LABEL_35;
    }

    if (v9 > 5)
    {
      if (v9 != 6)
      {
        v42 = 0;
        if (v9 != 7)
        {
LABEL_37:
          data = v12 ^ v16 ^ v23;
          v57 = v13 ^ v42 ^ v17;
          DES_encrypt1(&data, schedule, 1);
          LOBYTE(v16) = data ^ v55;
          v31 = (data ^ v55) >> 8;
          v32 = (data ^ v55) >> 16;
          v33 = (data ^ v55) >> 24;
          v17 = v57 ^ v15;
          v34 = (v57 ^ v15) >> 8;
          v35 = (v57 ^ v15) >> 16;
          v36 = (v57 ^ v15) >> 24;
          *output = data ^ v55;
          *(output + 1) = v17;
          goto LABEL_38;
        }

        v44 = *--v24;
        v23 = v44 << 16;
      }

      v45 = *--v24;
      v23 |= v45 << 8;
    }

    else if (v9 == 4)
    {
LABEL_33:
      v42 = v23;
      v47 = *--v24;
      v23 = v47 << 24;
      goto LABEL_34;
    }

    v46 = *--v24;
    v23 |= v46;
    goto LABEL_33;
  }

  v31 = v16 >> 8;
  v32 = HIWORD(v16);
  v33 = HIBYTE(v16);
  v34 = v17 >> 8;
  v35 = HIWORD(v17);
  v36 = HIBYTE(v17);
LABEL_38:
  *v8 = v16;
  (*v8)[1] = v31;
  (*v8)[2] = v32;
  (*v8)[3] = v33;
  (*v8)[4] = v17;
  (*v8)[5] = v34;
  (*v8)[6] = v35;
LABEL_53:
  (*v8)[7] = v36;
}

RSA *__cdecl PEM_read_RSAPrivateKey(FILE *fp, RSA **x, pem_password_cb *cb, void *u)
{
  PrivateKey = PEM_read_PrivateKey(fp, 0, cb, u);

  return pkey_get_rsa(PrivateKey, x);
}

rsa_st *pkey_get_rsa(EVP_PKEY *a1, RSA **a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = EVP_PKEY_get1_RSA(a1);
  EVP_PKEY_free(a1);
  if (v4 && a2)
  {
    RSA_free(*a2);
    *a2 = v4;
  }

  return v4;
}

RSA *__cdecl PEM_read_bio_RSAPrivateKey(BIO *bp, RSA **x, pem_password_cb *cb, void *u)
{
  bio_PrivateKey = PEM_read_bio_PrivateKey(bp, 0, cb, u);

  return pkey_get_rsa(bio_PrivateKey, x);
}

DSA *__cdecl PEM_read_DSAPrivateKey(FILE *fp, DSA **x, pem_password_cb *cb, void *u)
{
  PrivateKey = PEM_read_PrivateKey(fp, 0, cb, u);

  return pkey_get_dsa(PrivateKey, x);
}

dsa_st *pkey_get_dsa(EVP_PKEY *a1, DSA **a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = EVP_PKEY_get1_DSA(a1);
  EVP_PKEY_free(a1);
  if (v4 && a2)
  {
    DSA_free(*a2);
    *a2 = v4;
  }

  return v4;
}

DSA *__cdecl PEM_read_bio_DSAPrivateKey(BIO *bp, DSA **x, pem_password_cb *cb, void *u)
{
  bio_PrivateKey = PEM_read_bio_PrivateKey(bp, 0, cb, u);

  return pkey_get_dsa(bio_PrivateKey, x);
}

EC_KEY *__cdecl PEM_read_ECPrivateKey(FILE *fp, EC_KEY **x, pem_password_cb *cb, void *u)
{
  PrivateKey = PEM_read_PrivateKey(fp, 0, cb, u);

  return pkey_get_eckey(PrivateKey, x);
}

ec_key_st *pkey_get_eckey(EVP_PKEY *a1, EC_KEY **a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = EVP_PKEY_get1_EC_KEY(a1);
  EVP_PKEY_free(a1);
  if (v4 && a2)
  {
    EC_KEY_free(*a2);
    *a2 = v4;
  }

  return v4;
}

EC_KEY *__cdecl PEM_read_bio_ECPrivateKey(BIO *bp, EC_KEY **x, pem_password_cb *cb, void *u)
{
  bio_PrivateKey = PEM_read_bio_PrivateKey(bp, 0, cb, u);

  return pkey_get_eckey(bio_PrivateKey, x);
}

uint64_t pkey_dh_init(uint64_t a1)
{
  result = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  if (result)
  {
    *result = 0x200000400;
    *(result + 8) = 0;
    *(a1 + 40) = result;
    *(a1 + 64) = result + 12;
    *(a1 + 72) = 2;
    return 1;
  }

  return result;
}

uint64_t pkey_dh_copy(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  if (result)
  {
    *result = 0x200000400;
    *(result + 8) = 0;
    *(a1 + 40) = result;
    *(a1 + 64) = result + 12;
    *(a1 + 72) = 2;
    v5 = *(a2 + 40);
    *result = *v5;
    *(result + 8) = *(v5 + 8);
    return 1;
  }

  return result;
}

uint64_t pkey_dh_paramgen(uint64_t a1, EVP_PKEY *a2)
{
  v3 = *(a1 + 40);
  memset(v9, 0, sizeof(v9));
  if (*(a1 + 56))
  {
    v4 = v9;
    evp_pkey_set_cb_translate(v9, a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = DH_new();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  parameters = DH_generate_parameters_ex(v5, *v3, v3[1], v4);
  if (parameters)
  {
    EVP_PKEY_assign(a2, 28, v6);
  }

  else
  {
    DH_free(v6);
  }

  return parameters;
}

uint64_t pkey_dh_keygen(uint64_t a1, EVP_PKEY *a2)
{
  if (!*(a1 + 16))
  {
    ERR_put_error(5, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_pmeth.c", 220);
    return 0;
  }

  v4 = DH_new();
  if (!v4)
  {
    return 0;
  }

  EVP_PKEY_assign(a2, 28, v4);
  if (!EVP_PKEY_copy_parameters(a2, *(a1 + 16)))
  {
    return 0;
  }

  attributes = a2->attributes;

  return DH_generate_key(attributes);
}

uint64_t pkey_dh_derive(uint64_t a1, unsigned __int8 *key, void *a3)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(a1 + 24)) != 0)
  {
    result = DH_compute_key(key, *(*(v4 + 32) + 32), *(v3 + 32));
    if ((result & 0x80000000) == 0)
    {
      *a3 = result;
      return 1;
    }
  }

  else
  {
    ERR_put_error(5, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_pmeth.c", 239);
    return 0;
  }

  return result;
}

uint64_t pkey_dh_ctrl(uint64_t a1, int a2, int a3)
{
  if (a2 != 2)
  {
    v3 = *(a1 + 40);
    if (a2 == 4098)
    {
      v3[1] = a3;
    }

    else
    {
      if (a2 != 4097 || a3 < 256)
      {
        return 4294967294;
      }

      *v3 = a3;
    }
  }

  return 1;
}

uint64_t pkey_dh_ctrl_str(uint64_t *a1, char *__s1, const char *a3)
{
  __endptr = 0;
  if (strcmp(__s1, "dh_paramgen_prime_len"))
  {
    if (!strcmp(__s1, "dh_paramgen_generator"))
    {
      *__error() = 0;
      v6 = strtol(a3, &__endptr, 10);
      if (*a3)
      {
        if (!*__endptr)
        {
          v7 = v6;
          __error();
          if (v7 == v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    return 4294967294;
  }

  *__error() = 0;
  v8 = strtol(a3, &__endptr, 10);
  if (!*a3)
  {
    return 4294967294;
  }

  if (*__endptr)
  {
    return 4294967294;
  }

  v9 = v8;
  __error();
  if (v9 != v9)
  {
    return 4294967294;
  }

LABEL_11:

  return EVP_PKEY_CTX_ctrl(a1, 28, 2);
}

BIGNUM *GOST_le2bn(unsigned __int8 *a1, unint64_t a2, BIGNUM *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 > 0x40)
  {
    return 0;
  }

  if (a2)
  {
    v4 = a2;
    do
    {
      v5 = *a1++;
      s[--v4] = v5;
    }

    while (v4);
  }

  return BN_bin2bn(s, a2, a3);
}

uint64_t GOST_bn2le(const BIGNUM *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = BN_num_bits(a1);
  result = 0;
  v8 = v6 + 7;
  if (v6 < -7)
  {
    v8 = v6 + 14;
  }

  if (a3 <= 64)
  {
    v9 = (v8 >> 3);
    v10 = __OFSUB__(a3, v9);
    v11 = a3 - v9;
    if (v11 < 0 == v10)
    {
      BN_bn2bin(a1, to);
      if (v6 <= 0)
      {
        v9 = v9;
      }

      else
      {
        if (v9 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v9;
        }

        v13 = (a2 + v9 - 1);
        v14 = to;
        do
        {
          v15 = *v14++;
          *v13-- = v15;
          --v12;
        }

        while (v12);
      }

      bzero((a2 + v9), v11);
      return 1;
    }
  }

  return result;
}

uint64_t gost2001_compute_public(const EC_GROUP **a1)
{
  v2 = GOST_KEY_get0_group(a1);
  if (v2)
  {
    v3 = v2;
    v4 = BN_CTX_new();
    if (v4)
    {
      v5 = v4;
      BN_CTX_start(v4);
      v6 = GOST_KEY_get0_private_key(a1);
      if (v6)
      {
        v7 = v6;
        v8 = EC_POINT_new(v3);
        if (v8 && EC_POINT_mul(v3, v8, v7, 0, 0, v5) && GOST_KEY_set_public_key(a1, v8))
        {
          v9 = 1;
LABEL_13:
          EC_POINT_free(v8);
          BN_CTX_end(v5);
          BN_CTX_free(v5);
          return v9;
        }
      }

      else
      {
        v8 = 0;
      }

      ERR_put_error(50, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", 136);
      v9 = 0;
      goto LABEL_13;
    }

    v10 = 65;
    v11 = 118;
  }

  else
  {
    v10 = 112;
    v11 = 113;
  }

  ERR_put_error(50, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", v11);
  return 0;
}

ECDSA_SIG *gost2001_do_sign(const BIGNUM *a1, uint64_t a2)
{
  v4 = BN_CTX_new();
  if (v4)
  {
    v5 = v4;
    BN_CTX_start(v4);
    v6 = ECDSA_SIG_new();
    v7 = v6;
    if (v6)
    {
      v9 = v6->r;
      s = v6->s;
      v10 = GOST_KEY_get0_group(a2);
      v11 = BN_CTX_get(v5);
      if (v11)
      {
        v12 = v11;
        if (EC_GROUP_get_order(v10, v11, v5))
        {
          v13 = GOST_KEY_get0_private_key(a2);
          v14 = BN_CTX_get(v5);
          if (v14)
          {
            v15 = v14;
            if (BN_mod_ct(v14, a1, v12, v5))
            {
              if (!BN_is_zero(v15) || BN_one(v15))
              {
                a = v13;
                v31 = s;
                v16 = BN_CTX_get(v5);
                if (v16)
                {
                  v17 = v16;
                  v18 = BN_CTX_get(v5);
                  if (v18)
                  {
                    v19 = v18;
                    v20 = EC_POINT_new(v10);
                    if (v20)
                    {
                      r = 0;
                      v29 = 0;
                      while (1)
                      {
                        if (!BN_rand_range(v17, v12))
                        {
                          v26 = 120;
                          v27 = 194;
                          goto LABEL_39;
                        }

                        if (!BN_add(v17, v17, v12))
                        {
                          goto LABEL_33;
                        }

                        v21 = v19;
                        v22 = BN_num_bits(v17);
                        if (v22 <= BN_num_bits(v12) && !BN_add(v17, v17, v12))
                        {
                          goto LABEL_33;
                        }

                        if (!EC_POINT_mul(v10, v20, v17, 0, 0, v5))
                        {
                          v26 = 16;
                          v27 = 209;
                          goto LABEL_39;
                        }

                        v19 = v21;
                        if (!EC_POINT_get_affine_coordinates(v10, v20, v21, 0, v5))
                        {
                          break;
                        }

                        if (!BN_nnmod(v9, v21, v12, v5))
                        {
                          goto LABEL_33;
                        }

                        if (!BN_is_zero(v9))
                        {
                          v23 = v29;
                          if (!v29)
                          {
                            v23 = BN_CTX_get(v5);
                            if (!v23)
                            {
                              goto LABEL_33;
                            }
                          }

                          v29 = v23;
                          if (!BN_mod_mul(v23, a, v9, v12, v5))
                          {
                            goto LABEL_33;
                          }

                          v24 = r;
                          if (!r)
                          {
                            v24 = BN_CTX_get(v5);
                            if (!v24)
                            {
                              goto LABEL_33;
                            }
                          }

                          if (!BN_mod_mul(v24, v17, v15, v12, v5))
                          {
                            goto LABEL_33;
                          }

                          r = v24;
                          if (!BN_mod_add(v31, v29, v24, v12, v5))
                          {
                            goto LABEL_33;
                          }

                          if (!BN_is_zero(v31))
                          {
                            EC_POINT_free(v20);
                            BN_CTX_end(v5);
                            BN_CTX_free(v5);
                            return v7;
                          }
                        }
                      }

                      v26 = 16;
                      v27 = 214;
LABEL_39:
                      ERR_put_error(50, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", v27);
                    }

                    goto LABEL_33;
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
      ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", 166);
    }

    v20 = 0;
LABEL_33:
    EC_POINT_free(v20);
    BN_CTX_end(v5);
    BN_CTX_free(v5);
    ECDSA_SIG_free(v7);
    return 0;
  }

  ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", 160);
  return 0;
}

uint64_t gost2001_do_verify(const BIGNUM *a1, const BIGNUM **a2, uint64_t a3)
{
  v6 = BN_CTX_new();
  v7 = GOST_KEY_get0_group(a3);
  if (!v6)
  {
    EC_POINT_free(0);
    return 0;
  }

  v8 = v7;
  BN_CTX_start(v6);
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v12 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v13 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v14 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v24 = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  a = v9;
  v9 = BN_CTX_get(v6);
  if (!v9)
  {
    goto LABEL_17;
  }

  v22 = v9;
  if (!EC_GROUP_get_order(v8, v10, v6))
  {
    goto LABEL_16;
  }

  v15 = GOST_KEY_get0_public_key(a3);
  if (BN_is_zero(a2[1]) || BN_is_zero(*a2) || BN_cmp(a2[1], v10) > 0 || BN_cmp(*a2, v10) >= 1)
  {
    ERR_put_error(50, 4095, 122, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", 288);
    goto LABEL_16;
  }

  if (BN_mod_ct(v11, a1, v10, v6) && (!BN_is_zero(v11) || BN_one(v11)))
  {
    v9 = BN_mod_inverse_ct(v22, v11, v10, v6);
    if (!v9)
    {
      goto LABEL_17;
    }

    v18 = v9;
    if (BN_mod_mul(v12, a2[1], v9, v10, v6))
    {
      if (BN_sub(v14, v10, *a2) && BN_mod_mul(v13, v14, v18, v10, v6))
      {
        v9 = EC_POINT_new(v8);
        if (!v9)
        {
          goto LABEL_17;
        }

        v19 = v9;
        if (EC_POINT_mul(v8, v9, v12, v15, v13, v6))
        {
          if (EC_POINT_get_affine_coordinates(v8, v19, v24, 0, v6))
          {
            if (!BN_mod_ct(a, v24, v10, v6))
            {
LABEL_37:
              v16 = 0;
LABEL_38:
              v9 = v19;
              goto LABEL_18;
            }

            if (!BN_cmp(a, *a2))
            {
              v16 = 1;
              goto LABEL_38;
            }

            v20 = 121;
            v21 = 319;
          }

          else
          {
            v20 = 16;
            v21 = 313;
          }
        }

        else
        {
          v20 = 16;
          v21 = 309;
        }

        ERR_put_error(50, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", v21);
        goto LABEL_37;
      }
    }
  }

LABEL_16:
  v9 = 0;
LABEL_17:
  v16 = 0;
LABEL_18:
  EC_POINT_free(v9);
  BN_CTX_end(v6);
  BN_CTX_free(v6);
  return v16;
}

BOOL VKO_compute_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const BIGNUM *a5)
{
  v10 = GOST_KEY_get0_private_key(a4);
  v11 = GOST_KEY_get0_group(a4);
  v12 = GOST_KEY_get0_public_key(a3);
  v13 = EC_POINT_new(v11);
  if (v13 && (v14 = BN_CTX_new()) != 0)
  {
    v15 = v14;
    BN_CTX_start(v14);
    v16 = BN_CTX_get(v15);
    v20 = v16 && (v17 = v16, (v18 = BN_CTX_get(v15)) != 0) && (v19 = v18, EC_GROUP_get_order(v11, v18, v15)) && BN_mod_mul(v17, v10, a5, v19, v15) && EC_POINT_mul(v11, v13, 0, v12, v17, v15) && EC_POINT_get_affine_coordinates(v11, v13, a1, a2, v15) != 0;
    BN_CTX_end(v15);
    BN_CTX_free(v15);
  }

  else
  {
    v20 = 0;
  }

  EC_POINT_free(v13);
  return v20;
}

uint64_t gost2001_keygen(const EC_GROUP **a1)
{
  v2 = BN_new();
  v3 = BN_new();
  v4 = GOST_KEY_get0_group(a1);
  v5 = 0;
  if (v2 && v3)
  {
    if (EC_GROUP_get_order(v4, v2, 0))
    {
      do
      {
        if (!BN_rand_range(v3, v2))
        {
          ERR_put_error(50, 4095, 120, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001.c", 389);
          goto LABEL_9;
        }
      }

      while (BN_is_zero(v3));
      if (!GOST_KEY_set_private_key(a1, v3))
      {
        goto LABEL_9;
      }

      v5 = gost2001_compute_public(a1);
    }

    else
    {
LABEL_9:
      v5 = 0;
    }
  }

  BN_free(v3);
  BN_free(v2);
  return v5;
}

uint64_t pkey_gost_mac_init(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0x102004094E2EAF5uLL);
  if (result)
  {
    EVP_PKEY_CTX_set_data(a1, result);
    return 1;
  }

  return result;
}

uint64_t pkey_gost_mac_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_gost_mac_init(a1);
  if (result)
  {
    data = EVP_PKEY_CTX_get_data(a2);
    v6 = EVP_PKEY_CTX_get_data(a1);
    v8 = data[1];
    v7 = data[2];
    *v6 = *data;
    v6[1] = v8;
    v6[2] = v7;
    return 1;
  }

  return result;
}

void pkey_gost_mac_cleanup(uint64_t a1)
{
  data = EVP_PKEY_CTX_get_data(a1);

  free(data);
}

uint64_t pkey_gost_mac_keygen(uint64_t a1, EVP_PKEY *a2)
{
  data = EVP_PKEY_CTX_get_data(a1);
  if (*(data + 40))
  {
    v6 = data;
    v7 = malloc_type_malloc(0x20uLL, 0x24CC234DuLL);
    if (v7)
    {
      v8 = *(v6 + 24);
      *v7 = *(v6 + 8);
      *(v7 + 1) = v8;
      EVP_PKEY_assign(a2, 815, v7);
      return 1;
    }

    v4 = 65;
    v5 = 119;
  }

  else
  {
    v4 = 102;
    v5 = 113;
  }

  ERR_put_error(50, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gost89imit_pmeth.c", v5);
  return 0;
}

uint64_t pkey_gost_mac_signctx(int a1, unsigned __int8 *a2, uint64_t *a3, EVP_MD_CTX *ctx)
{
  s = *a3;
  if (a2)
  {
    result = EVP_DigestFinal_ex(ctx, a2, &s);
    v6 = s;
  }

  else
  {
    result = 1;
    v6 = 4;
  }

  *a3 = v6;
  return result;
}

uint64_t pkey_gost_mac_ctrl(uint64_t a1, int a2, int a3, const EVP_MD *a4)
{
  data = EVP_PKEY_CTX_get_data(a1);
  v9 = data;
  if (a2 != 7)
  {
    if (a2 == 6)
    {
      if (a3 == 32)
      {
        v10 = *&a4->type;
        *(data + 24) = *&a4->flags;
        *(data + 8) = v10;
        *(data + 40) |= 1u;
        return 1;
      }

      v14 = 101;
      v15 = 144;
    }

    else
    {
      if (a2 != 1)
      {
        return 4294967294;
      }

      if (EVP_MD_type(a4) == 815)
      {
        *v9 = a4;
        return 1;
      }

      v14 = 100;
      v15 = 136;
    }

    goto LABEL_22;
  }

  if (*(data + 40))
  {
    v13 = data + 8;
  }

  else
  {
    v12 = EVP_PKEY_CTX_get0_pkey(a1);
    if (!v12)
    {
      v14 = 102;
      v15 = 160;
      goto LABEL_22;
    }

    v13 = EVP_PKEY_get0(v12);
    if (!v13)
    {
      v14 = 102;
      v15 = 165;
LABEL_22:
      ERR_put_error(50, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gost89imit_pmeth.c", v15);
      return 0;
    }
  }

  v16 = *(*&a4->type + 72);
  if (!v16)
  {
    return 0;
  }

  return v16(a4, 3, 256, v13);
}

uint64_t pkey_gost_mac_ctrl_str(uint64_t a1, char *__s1, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (strcmp(__s1, "key"))
  {
    if (strcmp(__s1, "hexkey"))
    {
      return 4294967294;
    }

    len = 0;
    v9 = string_to_hex(a3, &len);
    if (v9)
    {
      v10 = v9;
      v6 = pkey_gost_mac_ctrl(a1, 6, len, v9);
      free(v10);
      return v6;
    }

    return 0;
  }

  v7 = strlen(a3);

  return pkey_gost_mac_ctrl(a1, 6, v7, a3);
}

uint64_t RSA_verify_PKCS1_PSS_mgf1(const RSA *a1, const void *a2, const EVP_MD *a3, const EVP_MD *a4, char *a5, int a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  memset(&ctx, 0, sizeof(ctx));
  EVP_MD_CTX_init(&ctx);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a3;
  }

  v13 = EVP_MD_size(a3);
  if (v13 < 0)
  {
    goto LABEL_38;
  }

  v14 = v13;
  if (a6 == -1)
  {
    a6 = v13;
LABEL_9:
    v17 = (BN_num_bits(a1->n) - 1) & 7;
    v18 = RSA_size(a1);
    if (*a5 >> v17)
    {
      v15 = 133;
      v16 = 120;
      goto LABEL_37;
    }

    v19 = v18;
    if (v17)
    {
      v20 = a5;
    }

    else
    {
      v20 = a5 + 1;
    }

    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    v22 = (__PAIR64__(v18, v17) - 1) >> 32;
    if (v22 < (v14 + a6 + 2))
    {
      v15 = 109;
      v16 = 129;
      goto LABEL_37;
    }

    if (v20[v22 - 1] != 188)
    {
      v15 = 134;
      v16 = 133;
      goto LABEL_37;
    }

    v37 = v21;
    v23 = v22 + ~v14;
    len = v23;
    v24 = malloc_type_malloc(v23, 0x6A1AA7ABuLL);
    v25 = v24;
    if (v24)
    {
      v26 = &v20[v23];
      if (PKCS1_MGF1(v24, len, v26, v14, v12) < 0)
      {
LABEL_43:
        v35 = 0;
        goto LABEL_39;
      }

      if (len >= 1)
      {
        v27 = len;
        v28 = v25;
        do
        {
          v29 = *v20++;
          *v28++ ^= v29;
          --v27;
        }

        while (v27);
      }

      if (v17)
      {
        *v25 &= 0xFFu >> (8 - v17);
      }

      v30 = 0;
      do
      {
        v31 = v25[v30];
        if (v25[v30])
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 < len - 1;
        }

        ++v30;
      }

      while (v32);
      if (v31 == 1)
      {
        if (a6 < 0 || ~v14 + v19 + v37 - a6 == v30)
        {
          if (!EVP_DigestInit_ex(&ctx, a3, 0) || !EVP_DigestUpdate(&ctx, &zeroes, 8uLL) || !EVP_DigestUpdate(&ctx, a2, v14) || len != v30 && !EVP_DigestUpdate(&ctx, &v25[v30], len - v30) || !EVP_DigestFinal_ex(&ctx, md, 0))
          {
            goto LABEL_43;
          }

          if (!timingsafe_bcmp(md, v26, v14))
          {
            v35 = 1;
            goto LABEL_39;
          }

          v33 = 104;
          v34 = 170;
        }

        else
        {
          v33 = 136;
          v34 = 156;
        }
      }

      else
      {
        v33 = 135;
        v34 = 152;
      }
    }

    else
    {
      v33 = 65;
      v34 = 140;
    }

    ERR_put_error(4, 4095, v33, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pss.c", v34);
    goto LABEL_43;
  }

  if (a6 > -3)
  {
    goto LABEL_9;
  }

  v15 = 136;
  v16 = 113;
LABEL_37:
  ERR_put_error(4, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pss.c", v16);
LABEL_38:
  v35 = 0;
  v25 = 0;
LABEL_39:
  free(v25);
  EVP_MD_CTX_cleanup(&ctx);
  return v35;
}

uint64_t RSA_padding_add_PKCS1_PSS_mgf1(const RSA *a1, unsigned __int8 *a2, const void *a3, const EVP_MD *a4, const EVP_MD *a5, int a6)
{
  v32 = 0u;
  memset(&v31, 0, sizeof(v31));
  EVP_MD_CTX_init(&v31);
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = a4;
  }

  v13 = EVP_MD_size(a4);
  if (v13 < 0)
  {
    goto LABEL_16;
  }

  v14 = v13;
  if (a6 == -1)
  {
    a6 = v13;
  }

  else if (a6 <= -3)
  {
    v15 = 136;
    v16 = 219;
LABEL_15:
    ERR_put_error(4, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pss.c", v16);
LABEL_16:
    v20 = 0;
    v21 = 0;
    goto LABEL_36;
  }

  v17 = (BN_num_bits(a1->n) - 1) & 7;
  v18 = RSA_size(a1);
  v19 = v18;
  if (!v17)
  {
    *a2++ = 0;
    v19 = v18 - 1;
  }

  if (a6 == -2)
  {
    a6 = v19 - v14 - 2;
  }

  else if (v19 < (v14 + a6 + 2))
  {
    v15 = 110;
    v16 = 232;
    goto LABEL_15;
  }

  if (a6 < 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = malloc_type_malloc(a6, 0x46D2CC2BuLL);
    v21 = v22;
    if (!v22)
    {
      ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pss.c", 238);
LABEL_35:
      v20 = 0;
      goto LABEL_36;
    }

    arc4random_buf(v22, a6);
  }

  if (!EVP_DigestInit_ex(&v31, a4, 0) || !EVP_DigestUpdate(&v31, &zeroes, 8uLL) || !EVP_DigestUpdate(&v31, a3, v14) || a6 && !EVP_DigestUpdate(&v31, v21, a6))
  {
    goto LABEL_35;
  }

  v23 = v19 + ~v14;
  if (!EVP_DigestFinal_ex(&v31, &a2[v23], 0) || PKCS1_MGF1(a2, v23, &a2[v23], v14, v12))
  {
    goto LABEL_35;
  }

  v24 = v19 - (v14 + a6) - 2;
  a2[v24] ^= 1u;
  if (a6 >= 1)
  {
    v25 = v24;
    v26 = a6;
    v27 = &a2[v25 + 1];
    v28 = v21;
    do
    {
      v29 = *v28++;
      *v27++ ^= v29;
      --v26;
    }

    while (v26);
  }

  if (v17)
  {
    *a2 &= 0xFFu >> (8 - v17);
  }

  a2[v19 - 1] = -68;
  v20 = 1;
LABEL_36:
  free(v21);
  EVP_MD_CTX_cleanup(&v31);
  return v20;
}

uint64_t EVP_PKEY_sign_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 72))
  {
    *(a1 + 8) = 8;
    v3 = *(v2 + 64);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 90);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_sign(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || (v6 = *a1) == 0 || (v7 = *(v6 + 72)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 107);
    return 4294967294;
  }

  if (*(a1 + 8) != 8)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 111);
    return 0xFFFFFFFFLL;
  }

  if ((*(v6 + 4) & 2) != 0)
  {
    v12 = EVP_PKEY_size(a1[2]);
    if (!a2)
    {
      *a3 = v12;
      return 1;
    }

    if (*a3 < v12)
    {
      ERR_put_error(6, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 114);
      return 0;
    }

    v7 = *(*a1 + 72);
  }

  return v7(a1, a2, a3, a4, a5);
}

uint64_t EVP_PKEY_verify_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 88))
  {
    *(a1 + 8) = 16;
    v3 = *(v2 + 80);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 124);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_verify(_DWORD *a1)
{
  if (a1 && *a1 && (v1 = *(*a1 + 88)) != 0)
  {
    if (a1[8] == 16)
    {

      return v1();
    }

    else
    {
      ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 145);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 141);
    return 4294967294;
  }
}

uint64_t EVP_PKEY_verify_recover_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 104))
  {
    *(a1 + 8) = 32;
    v3 = *(v2 + 96);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 157);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_verify_recover(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || (v6 = *a1) == 0 || (v7 = *(v6 + 104)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 174);
    return 4294967294;
  }

  if (*(a1 + 8) != 32)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 178);
    return 0xFFFFFFFFLL;
  }

  if ((*(v6 + 4) & 2) != 0)
  {
    v12 = EVP_PKEY_size(a1[2]);
    if (!a2)
    {
      *a3 = v12;
      return 1;
    }

    if (*a3 < v12)
    {
      ERR_put_error(6, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 181);
      return 0;
    }

    v7 = *(*a1 + 104);
  }

  return v7(a1, a2, a3, a4, a5);
}

uint64_t EVP_PKEY_encrypt_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 152))
  {
    *(a1 + 8) = 256;
    v3 = *(v2 + 144);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 191);
    return 4294967294;
  }

  return result;
}

int EVP_PKEY_encrypt(unsigned __int8 *enc_key, const unsigned __int8 *key, int key_len, EVP_PKEY *pub_key)
{
  if (!enc_key || (v6 = *enc_key) == 0 || (v7 = *(v6 + 152)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 208);
    return -2;
  }

  if (*(enc_key + 8) != 256)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 212);
    return -1;
  }

  v8 = v4;
  v10 = *&key_len;
  if ((*(v6 + 4) & 2) != 0)
  {
    v12 = EVP_PKEY_size(*(enc_key + 2));
    if (!key)
    {
      *v10 = v12;
      return 1;
    }

    if (*v10 < v12)
    {
      ERR_put_error(6, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 215);
      return 0;
    }

    v7 = *(*enc_key + 152);
  }

  return v7(enc_key, key, v10, pub_key, v8);
}

uint64_t EVP_PKEY_decrypt_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 168))
  {
    *(a1 + 8) = 512;
    v3 = *(v2 + 160);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 225);
    return 4294967294;
  }

  return result;
}

int EVP_PKEY_decrypt(unsigned __int8 *dec_key, const unsigned __int8 *enc_key, int enc_key_len, EVP_PKEY *private_key)
{
  if (!dec_key || (v6 = *dec_key) == 0 || (v7 = *(v6 + 168)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 242);
    return -2;
  }

  if (*(dec_key + 8) != 512)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 246);
    return -1;
  }

  v8 = v4;
  v10 = *&enc_key_len;
  if ((*(v6 + 4) & 2) != 0)
  {
    v12 = EVP_PKEY_size(*(dec_key + 2));
    if (!enc_key)
    {
      *v10 = v12;
      return 1;
    }

    if (*v10 < v12)
    {
      ERR_put_error(6, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 249);
      return 0;
    }

    v7 = *(*dec_key + 168);
  }

  return v7(dec_key, enc_key, v10, private_key, v8);
}

uint64_t EVP_PKEY_derive_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 184))
  {
    *(a1 + 8) = 1024;
    v3 = *(v2 + 176);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 259);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_derive_set_peer(uint64_t a1, const EVP_PKEY *a2)
{
  if (!a1 || (v3 = *a1) == 0 || !v3[23] && !v3[19] && !v3[21] || (v5 = v3[24]) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 279);
    return 4294967294;
  }

  v6 = *(a1 + 32);
  if (v6 != 256 && v6 != 512 && v6 != 1024)
  {
    v10 = 151;
    v11 = 285;
LABEL_24:
    ERR_put_error(6, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", v11);
    return 0xFFFFFFFFLL;
  }

  v7 = v5(a1, 2, 0, a2);
  v8 = v7;
  if (v7 < 1)
  {
    return v8;
  }

  if (v7 == 2)
  {
    return 1;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    v10 = 154;
    v11 = 298;
    goto LABEL_24;
  }

  if (*v12 != a2->type)
  {
    v10 = 101;
    v11 = 303;
    goto LABEL_24;
  }

  if (!EVP_PKEY_missing_parameters(a2) && !EVP_PKEY_cmp_parameters(*(a1 + 16), a2))
  {
    v10 = 153;
    v11 = 314;
    goto LABEL_24;
  }

  EVP_PKEY_free(*(a1 + 24));
  *(a1 + 24) = a2;
  v13 = (*(*a1 + 192))(a1, 2, 1, a2);
  if (v13 <= 0)
  {
    v8 = v13;
    *(a1 + 24) = 0;
  }

  else
  {
    v8 = 1;
    CRYPTO_add_lock(&a2->references, 1, 10, 0, 0);
  }

  return v8;
}

uint64_t EVP_PKEY_derive(uint64_t *a1, uint64_t a2, void *a3)
{
  if (!a1 || (v4 = *a1) == 0 || (v5 = *(v4 + 184)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 336);
    return 4294967294;
  }

  if (*(a1 + 8) != 1024)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 340);
    return 0xFFFFFFFFLL;
  }

  if ((*(v4 + 4) & 2) != 0)
  {
    v8 = EVP_PKEY_size(a1[2]);
    if (!a2)
    {
      *a3 = v8;
      return 1;
    }

    if (*a3 < v8)
    {
      ERR_put_error(6, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_fn.c", 343);
      return 0;
    }

    v5 = *(*a1 + 184);
  }

  return v5(a1, a2, a3);
}

int RSA_size(const RSA *a1)
{
  v1 = BN_num_bits(a1->n);
  v2 = v1 + 7;
  if (v1 < -7)
  {
    v2 = v1 + 14;
  }

  return v2 >> 3;
}

int RSA_flags(const RSA *r)
{
  if (r)
  {
    LODWORD(r) = r->meth->flags;
  }

  return r;
}

void RSA_blinding_off(RSA *rsa)
{
  BN_BLINDING_free(rsa->bignum_data);
  rsa->bignum_data = 0;
  rsa->flags |= 0x80u;
}

int RSA_blinding_on(RSA *rsa, BN_CTX *ctx)
{
  bignum_data = rsa->bignum_data;
  if (bignum_data)
  {
    BN_BLINDING_free(bignum_data);
    rsa->bignum_data = 0;
    rsa->flags |= 0x80u;
  }

  v5 = RSA_setup_blinding(rsa, ctx);
  rsa->bignum_data = v5;
  if (v5)
  {
    rsa->flags &= ~0x80u;
    LODWORD(v5) = 1;
  }

  return v5;
}

BN_BLINDING *__cdecl RSA_setup_blinding(RSA *rsa, BN_CTX *ctx)
{
  v4 = ctx;
  if (!ctx)
  {
    v4 = BN_CTX_new();
    if (!v4)
    {
      return 0;
    }
  }

  memset(&m, 0, sizeof(m));
  BN_CTX_start(v4);
  e = rsa->e;
  if (e)
  {
    goto LABEL_4;
  }

  d = rsa->d;
  if (d)
  {
    p = rsa->p;
    if (p)
    {
      q = rsa->q;
      if (q)
      {
        BN_CTX_start(v4);
        v12 = BN_CTX_get(v4);
        if (v12 && (v13 = v12, (v14 = BN_CTX_get(v4)) != 0) && (v15 = v14, (v16 = BN_CTX_get(v4)) != 0) && (v17 = v16, v18 = BN_value_one(), BN_sub(v15, p, v18)) && (v19 = BN_value_one(), BN_sub(v17, q, v19)) && BN_mul(v13, v15, v17, v4))
        {
          e = BN_mod_inverse_ct(0, d, v13, v4);
          BN_CTX_end(v4);
          if (e)
          {
LABEL_4:
            BN_init(&m);
            BN_with_flags(&m, rsa->n, 4);
            v6 = BN_BLINDING_create_param(0, e, &m, v4, rsa->meth->bn_mod_exp, rsa->_method_mod_n);
            v7 = v6;
            if (v6)
            {
              v8 = BN_BLINDING_thread_id(v6);
              CRYPTO_THREADID_current(v8);
            }

            else
            {
              ERR_put_error(4, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_crpt.c", 210);
            }

            goto LABEL_20;
          }
        }

        else
        {
          BN_CTX_end(v4);
        }
      }
    }
  }

  ERR_put_error(4, 4095, 140, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_crpt.c", 197);
  e = 0;
  v7 = 0;
LABEL_20:
  BN_CTX_end(v4);
  if (!ctx)
  {
    BN_CTX_free(v4);
  }

  if (!rsa->e)
  {
    BN_free(e);
  }

  return v7;
}

ASN1_VALUE *rsa_pss_params_create(EVP_MD *a1, EVP_MD *a2, int a3)
{
  v6 = RSA_PSS_PARAMS_new();
  if (!v6)
  {
    goto LABEL_10;
  }

  if (a3 != 20)
  {
    v7 = ASN1_INTEGER_new();
    *(v6 + 2) = v7;
    if (!v7 || !ASN1_INTEGER_set(v7, a3))
    {
      goto LABEL_10;
    }
  }

  if (!rsa_md_to_algor(v6, a1))
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    a2 = a1;
  }

  if (!rsa_md_to_mgf1(v6 + 1, a2) || !rsa_md_to_algor(v6 + 4, a2))
  {
LABEL_10:
    RSA_PSS_PARAMS_free(v6);
    return 0;
  }

  return v6;
}

uint64_t rsa_md_to_algor(void *a1, EVP_MD *md)
{
  if (!md)
  {
    return 1;
  }

  if (EVP_MD_type(md) != 64)
  {
    result = X509_ALGOR_new();
    *a1 = result;
    if (!result)
    {
      return result;
    }

    X509_ALGOR_set_md(result, md);
  }

  return 1;
}

BOOL rsa_md_to_mgf1(X509_ALGOR **a1, EVP_MD *md)
{
  pval = 0;
  obj = 0;
  *a1 = 0;
  if (!md || EVP_MD_type(md) == 64)
  {
    return 1;
  }

  v5 = rsa_md_to_algor(&obj, md);
  v6 = obj;
  if (v5 && ASN1_item_pack(obj, &X509_ALGOR_it, &pval))
  {
    v7 = X509_ALGOR_new();
    *a1 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = OBJ_nid2obj(911);
      X509_ALGOR_set0(v8, v9, 16, pval);
      pval = 0;
    }
  }

  ASN1_STRING_free(pval);
  X509_ALGOR_free(v6);
  return *a1 != 0;
}

uint64_t rsa_pss_get_param(uint64_t result, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  if (result)
  {
    v7 = result;
    result = rsa_algor_to_md(*result);
    *a2 = result;
    if (result)
    {
      result = rsa_algor_to_md(*(v7 + 32));
      *a3 = result;
      if (result)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = ASN1_INTEGER_get(v8);
          *a4 = v9;
          if (v9 < 0)
          {
            v10 = 150;
            v11 = 797;
LABEL_11:
            ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", v11);
            return 0;
          }
        }

        else
        {
          *a4 = 20;
        }

        v12 = *(v7 + 24);
        if (v12)
        {
          result = ASN1_INTEGER_get(v12);
          if (result == 1)
          {
            return result;
          }

          v10 = 139;
          v11 = 809;
          goto LABEL_11;
        }

        return 1;
      }
    }
  }

  return result;
}

const EVP_MD *rsa_algor_to_md(const ASN1_OBJECT **a1)
{
  if (a1)
  {
    v2 = OBJ_obj2nid(*a1);
    v3 = OBJ_nid2sn(v2);
    result = EVP_get_digestbyname(v3);
    if (!result)
    {
      ERR_put_error(4, 4095, 166, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 648);
      return 0;
    }
  }

  else
  {

    return EVP_sha1();
  }

  return result;
}

uint64_t rsa_pub_decode(uint64_t a1, uint64_t a2)
{
  memset(len, 0, sizeof(len));
  algor = 0;
  result = X509_PUBKEY_get0_param(0, &len[1], len, &algor, a2);
  if (result)
  {
    v4 = d2i_RSAPublicKey(0, &len[1], len[0]);
    if (v4)
    {
      v5 = v4;
      if (rsa_param_decode(v4, algor) && EVP_PKEY_assign(a1, **(a1 + 16), v5))
      {
        return 1;
      }

      RSA_free(v5);
    }

    else
    {
      ERR_put_error(4, 4095, 4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 168);
    }

    return 0;
  }

  return result;
}

uint64_t rsa_pub_encode(uint64_t a1, uint64_t a2)
{
  oct = 0;
  out = 0;
  v8 = 0;
  result = rsa_param_encode(a2, &oct, &v8);
  if (result)
  {
    v5 = i2d_RSAPublicKey(*(a2 + 32), &out);
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = OBJ_nid2obj(**(a2 + 16));
      if (X509_PUBKEY_set0_param(a1, v7, v8, oct, out, v6))
      {
        return 1;
      }

      free(out);
    }

    return 0;
  }

  return result;
}

uint64_t rsa_priv_decode(uint64_t a1, uint64_t a2)
{
  memset(len, 0, sizeof(len));
  algor = 0;
  result = PKCS8_pkey_get0(0, &len[1], len, &algor, a2);
  if (result)
  {
    v4 = d2i_RSAPrivateKey(0, &len[1], len[0]);
    if (v4)
    {
      v5 = v4;
      if (rsa_param_decode(v4, algor))
      {
        EVP_PKEY_assign(a1, **(a1 + 16), v5);
        return 1;
      }

      RSA_free(v5);
    }

    else
    {
      ERR_put_error(4, 4095, 4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 251);
    }

    return 0;
  }

  return result;
}

uint64_t rsa_priv_encode(uint64_t a1, uint64_t a2)
{
  a = 0;
  out = 0;
  ptype = 0;
  result = rsa_param_encode(a2, &a, &ptype);
  if (result)
  {
    v5 = i2d_RSAPrivateKey(*(a2 + 32), &out);
    if (v5 < 1)
    {
      v8 = 224;
    }

    else
    {
      v6 = v5;
      v7 = OBJ_nid2obj(**(a2 + 16));
      if (PKCS8_pkey_set0(a1, v7, 0, ptype, a, out, v6))
      {
        return 1;
      }

      v8 = 231;
    }

    ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", v8);
    ASN1_STRING_free(a);
    return 0;
  }

  return result;
}

BOOL rsa_sig_print(BIO *a1, const ASN1_OBJECT **a2, unsigned int *a3, int a4)
{
  if (OBJ_obj2nid(*a2) == 912)
  {
    v8 = rsa_pss_decode(a2);
    v9 = rsa_pss_param_print(a1, 0, v8, a4);
    RSA_PSS_PARAMS_free(v8);
    if (!v9)
    {
      return 0;
    }

    if (!a3)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return BIO_puts(a1, "\n") > 0;
  }

  return X509_signature_dump(a1, a3, a4);
}

uint64_t rsa_pkey_ctrl(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  md = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v5 = 4294967294;
  if (a2 <= 4)
  {
    switch(a2)
    {
      case 1:
        if (!a3)
        {
          PKCS7_SIGNER_INFO_get0_algs(a4, 0, 0, &v48);
        }

        break;
      case 2:
        if (**(a1 + 16) == 912)
        {
          return v5;
        }

        if (!a3)
        {
          PKCS7_RECIP_INFO_get0_alg(a4, &v48);
        }

        break;
      case 3:
        v6 = *(*(a1 + 32) + 96);
        if (v6)
        {
          if (rsa_pss_get_param(v6, &md, &v46, &v45))
          {
            *a4 = EVP_MD_type(md);
            return 2;
          }

          v17 = 68;
          v18 = 576;
          goto LABEL_45;
        }

        *a4 = 672;
        return 1;
      default:
        return v5;
    }

    goto LABEL_34;
  }

  if (a2 != 5)
  {
    if (a2 != 7)
    {
      if (a2 == 8 && **(a1 + 16) != 912)
      {
        *a4 = 0;
        return 1;
      }

      return v5;
    }

    if (**(a1 + 16) == 912)
    {
      return v5;
    }

    if (a3 != 1)
    {
      if (!a3)
      {
        v53 = 0;
        v54 = 0;
        v51 = 0;
        oct = 0;
        v9 = CMS_RecipientInfo_get0_pkey_ctx(a4);
        v50 = 1;
        data = 0;
        if (CMS_RecipientInfo_ktri_get0_algs(a4, 0, 0, &v51) < 1)
        {
          return 0;
        }

        if (!v9)
        {
LABEL_33:
          v8 = v51;
          goto LABEL_35;
        }

        if (RSA_pkey_ctx_ctrl(v9, 0xFFFFFFFFLL, 4102, 0, &v50) < 1)
        {
          return 0;
        }

        if (v50 != 4)
        {
          if (v50 == 1)
          {
            goto LABEL_33;
          }

          return 0;
        }

        if (EVP_PKEY_CTX_ctrl(v9, 6, 768) < 1 || RSA_pkey_ctx_ctrl(v9, 1016, 4104, 0, &v53) < 1 || (v28 = EVP_PKEY_CTX_ctrl(v9, 6, 768), v28 < 0))
        {
          v31 = 0;
        }

        else
        {
          v29 = v28;
          v30 = RSA_OAEP_PARAMS_new();
          v31 = v30;
          if (!v30 || !rsa_md_to_algor(v30, v54) || !rsa_md_to_mgf1(v31 + 1, v53))
          {
            goto LABEL_81;
          }

          if (v29)
          {
            v32 = X509_ALGOR_new();
            *(v31 + 2) = v32;
            if (!v32)
            {
              goto LABEL_81;
            }

            v33 = ASN1_OCTET_STRING_new();
            if (!v33)
            {
              goto LABEL_81;
            }

            v34 = v33;
            if (!ASN1_OCTET_STRING_set(v33, data, v29))
            {
              ASN1_OCTET_STRING_free(v34);
              goto LABEL_81;
            }

            v35 = *(v31 + 2);
            v36 = OBJ_nid2obj(992);
            X509_ALGOR_set0(v35, v36, 4, v34);
          }

          if (ASN1_item_pack(v31, &RSA_OAEP_PARAMS_it, &oct))
          {
            v37 = v51;
            v38 = OBJ_nid2obj(919);
            X509_ALGOR_set0(v37, v38, 16, oct);
            oct = 0;
            v5 = 1;
LABEL_82:
            RSA_OAEP_PARAMS_free(v31);
            ASN1_STRING_free(oct);
            return v5;
          }
        }

LABEL_81:
        v5 = 0;
        goto LABEL_82;
      }

LABEL_34:
      v8 = v48;
      if (!v48)
      {
        return 1;
      }

      goto LABEL_35;
    }

    v19 = CMS_RecipientInfo_get0_pkey_ctx(a4);
    if (!v19)
    {
      return 0;
    }

    v20 = v19;
    v54 = 0;
    if (CMS_RecipientInfo_ktri_get0_algs(a4, 0, 0, &v54))
    {
      v21 = OBJ_obj2nid(*&v54->type);
      if (v21 == 6)
      {
        return 1;
      }

      if (v21 == 919)
      {
        v22 = ASN1_TYPE_unpack_sequence(&RSA_OAEP_PARAMS_it, *&v54->md_size);
        if (!v22)
        {
LABEL_55:
          ERR_put_error(4, 4095, 161, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 980);
          v23 = 0;
LABEL_99:
          v5 = 0xFFFFFFFFLL;
LABEL_100:
          RSA_OAEP_PARAMS_free(v23);
          return v5;
        }

        v23 = v22;
        v24 = v22[1];
        if (v24)
        {
          v25 = rsa_mgf1_decode(v24);
          v23[3] = v25;
          if (!v25)
          {
            RSA_OAEP_PARAMS_free(v23);
            goto LABEL_55;
          }
        }

        else
        {
          v25 = v23[3];
        }

        v39 = rsa_algor_to_md(v25);
        if (!v39)
        {
          goto LABEL_99;
        }

        v40 = v39;
        if (!rsa_algor_to_md(*v23))
        {
          goto LABEL_99;
        }

        v41 = v23[2];
        if (v41)
        {
          if (OBJ_obj2nid(*v41) == 992)
          {
            v42 = v41[1];
            if (LODWORD(v42->sn) == 4)
            {
              *(v42->ln + 1) = 0;
              goto LABEL_90;
            }

            v43 = 160;
            v44 = 999;
          }

          else
          {
            v43 = 163;
            v44 = 995;
          }

          ERR_put_error(4, 4095, v43, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", v44);
          goto LABEL_99;
        }

LABEL_90:
        v5 = 0xFFFFFFFFLL;
        if (RSA_pkey_ctx_ctrl(v20, 0xFFFFFFFFLL, 4097, 4, 0) >= 1 && EVP_PKEY_CTX_ctrl(v20, 6, 768) >= 1 && RSA_pkey_ctx_ctrl(v20, 1016, 4101, 0, v40) >= 1)
        {
          if (EVP_PKEY_CTX_ctrl(v20, 6, 768) < 1)
          {
            v5 = 0xFFFFFFFFLL;
          }

          else
          {
            v5 = 1;
          }
        }

        goto LABEL_100;
      }

      ERR_put_error(4, 4095, 162, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 973);
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      LODWORD(v53) = 1;
      v54 = 0;
      v7 = CMS_SignerInfo_get0_pkey_ctx(a4);
      CMS_SignerInfo_get0_algs(a4, 0, 0, 0, &v54);
      if (!v7)
      {
        goto LABEL_21;
      }

      if (RSA_pkey_ctx_ctrl(v7, 0xFFFFFFFFLL, 4102, 0, &v53) >= 1)
      {
        if (v53 == 6)
        {
          v5 = rsa_ctx_to_pss_string(v7);
          if (!v5)
          {
            return v5;
          }

          v27 = v54;
          v10 = OBJ_nid2obj(912);
          v11 = v27;
          v12 = 16;
          v13 = v5;
          goto LABEL_36;
        }

        if (v53 == 1)
        {
LABEL_21:
          v8 = v54;
LABEL_35:
          v10 = OBJ_nid2obj(6);
          v11 = v8;
          v12 = 5;
          v13 = 0;
LABEL_36:
          X509_ALGOR_set0(v11, v10, v12, v13);
          return 1;
        }
      }

      return 0;
    }

    goto LABEL_34;
  }

  LODWORD(v53) = 0;
  v54 = 0;
  v15 = CMS_SignerInfo_get0_pkey_ctx(a4);
  CMS_SignerInfo_get0_algs(a4, 0, 0, 0, &v54);
  v16 = OBJ_obj2nid(*&v54->type);
  if (v16 == 912)
  {
    return rsa_pss_to_ctx(0, v15, v54, 0);
  }

  if (**&v15->type == 912)
  {
    v17 = 144;
    v18 = 830;
LABEL_45:
    ERR_put_error(4, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", v18);
    return 0;
  }

  if (v16 == 6)
  {
    return 1;
  }

  return OBJ_find_sigid_algs(v16, 0, &v53) && v53 == 6;
}

uint64_t old_rsa_priv_decode(uint64_t a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_RSAPrivateKey(0, a2, a3);
  if (v4)
  {
    EVP_PKEY_assign(a1, **(a1 + 16), v4);
    return 1;
  }

  else
  {
    ERR_put_error(4, 4095, 4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 198);
    return 0;
  }
}

uint64_t rsa_item_verify(EVP_MD_CTX *a1, uint64_t a2, uint64_t a3, const ASN1_OBJECT **a4, uint64_t a5, uint64_t a6)
{
  if (OBJ_obj2nid(*a4) == 912)
  {
    if (rsa_pss_to_ctx(a1, 0, a4, a6) <= 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    ERR_put_error(4, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 854);
    return 0xFFFFFFFFLL;
  }
}

uint64_t rsa_item_sign(uint64_t a1, uint64_t a2, uint64_t a3, X509_ALGOR *a4, X509_ALGOR *a5)
{
  v7 = *(a1 + 32);
  v14 = 0;
  if (RSA_pkey_ctx_ctrl(v7, 0xFFFFFFFFLL, 4102, 0, &v14) >= 1)
  {
    if (v14 != 6)
    {
      return 2;
    }

    result = rsa_ctx_to_pss_string(v7);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (!a5)
    {
      goto LABEL_7;
    }

    v10 = ASN1_STRING_dup(result);
    if (v10)
    {
      v11 = v10;
      v12 = OBJ_nid2obj(912);
      X509_ALGOR_set0(a5, v12, 16, v11);
LABEL_7:
      v13 = OBJ_nid2obj(912);
      X509_ALGOR_set0(a4, v13, 16, v9);
      return 3;
    }

    ASN1_STRING_free(v9);
  }

  return 0;
}

BOOL rsa_param_decode(uint64_t a1, X509_ALGOR *algor)
{
  ppval = 0;
  paobj = 0;
  pptype = 0;
  X509_ALGOR_get0(&paobj, &pptype, &ppval, algor);
  if (OBJ_obj2nid(paobj) != 912 || pptype == -1)
  {
    return 1;
  }

  if (pptype == 16)
  {
    v4 = rsa_pss_decode(algor);
    *(a1 + 96) = v4;
    return v4 != 0;
  }

  else
  {
    ERR_put_error(4, 4095, 149, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 126);
    return 0;
  }
}

const ASN1_OBJECT ***rsa_pss_decode(uint64_t a1)
{
  v1 = ASN1_TYPE_unpack_sequence(&RSA_PSS_PARAMS_it, *(a1 + 8));
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    if (v3)
    {
      v4 = rsa_mgf1_decode(v3);
      v2[4] = v4;
      if (!v4)
      {
        RSA_PSS_PARAMS_free(v2);
        return 0;
      }
    }
  }

  return v2;
}

void *rsa_mgf1_decode(const ASN1_OBJECT **a1)
{
  if (OBJ_obj2nid(*a1) != 911)
  {
    return 0;
  }

  v2 = a1[1];

  return ASN1_TYPE_unpack_sequence(&X509_ALGOR_it, v2);
}

uint64_t rsa_param_encode(uint64_t a1, ASN1_OCTET_STRING **oct, int *a3)
{
  v4 = *(a1 + 32);
  *oct = 0;
  if (**(a1 + 16) == 912)
  {
    v5 = *(v4 + 96);
    if (v5)
    {
      result = ASN1_item_pack(v5, &RSA_PSS_PARAMS_it, oct);
      if (!result)
      {
        return result;
      }

      v7 = 16;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 5;
  }

  *a3 = v7;
  return 1;
}

uint64_t pkey_rsa_print(BIO *a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 + 32);
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = BN_num_bits(v9);
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v12 = v11 >> 3;
    if ((v10 + 14) < 0xF)
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v8 + 40);
  if (v14)
  {
    v15 = BN_num_bits(v14);
    v16 = v15 + 7;
    if (v15 < -7)
    {
      v16 = v15 + 14;
    }

    v17 = v16 >> 3;
    v18 = v16 >> 3;
    if (v13 <= v17)
    {
      v13 = v18;
    }
  }

  if (a4)
  {
    v19 = *(v8 + 48);
    if (v19)
    {
      v20 = BN_num_bits(v19);
      v21 = v20 + 7;
      if (v20 < -7)
      {
        v21 = v20 + 14;
      }

      v22 = v21 >> 3;
      v23 = v21 >> 3;
      if (v13 <= v22)
      {
        v13 = v23;
      }
    }

    v24 = *(v8 + 56);
    if (v24)
    {
      v25 = BN_num_bits(v24);
      v26 = v25 + 7;
      if (v25 < -7)
      {
        v26 = v25 + 14;
      }

      v27 = v26 >> 3;
      v28 = v26 >> 3;
      if (v13 <= v27)
      {
        v13 = v28;
      }
    }

    v29 = *(v8 + 64);
    if (v29)
    {
      v30 = BN_num_bits(v29);
      v31 = v30 + 7;
      if (v30 < -7)
      {
        v31 = v30 + 14;
      }

      v32 = v31 >> 3;
      v33 = v31 >> 3;
      if (v13 <= v32)
      {
        v13 = v33;
      }
    }

    v34 = *(v8 + 72);
    if (v34)
    {
      v35 = BN_num_bits(v34);
      v36 = v35 + 7;
      if (v35 < -7)
      {
        v36 = v35 + 14;
      }

      v37 = v36 >> 3;
      v38 = v36 >> 3;
      if (v13 <= v37)
      {
        v13 = v38;
      }
    }

    v39 = *(v8 + 80);
    if (v39)
    {
      v40 = BN_num_bits(v39);
      v41 = v40 + 7;
      if (v40 < -7)
      {
        v41 = v40 + 14;
      }

      v42 = v41 >> 3;
      v43 = v41 >> 3;
      if (v13 <= v42)
      {
        v13 = v43;
      }
    }

    v44 = *(v8 + 88);
    if (v44)
    {
      v45 = BN_num_bits(v44);
      v46 = v45 + 7;
      if (v45 < -7)
      {
        v46 = v45 + 14;
      }

      v47 = v46 >> 3;
      v48 = v46 >> 3;
      if (v13 <= v47)
      {
        v13 = v48;
      }
    }
  }

  v49 = malloc_type_malloc(v13 + 10, 0x907920A4uLL);
  if (!v49)
  {
    ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 446);
    goto LABEL_72;
  }

  v50 = *(v8 + 32);
  if (v50)
  {
    v51 = BN_num_bits(v50);
  }

  else
  {
    v51 = 0;
  }

  if (!BIO_indent(a1, a3, 128))
  {
    goto LABEL_72;
  }

  v52 = **(a2 + 16) == 912 ? "RSA-PSS" : "RSA";
  if (BIO_printf(a1, "%s ", v52) < 1)
  {
    goto LABEL_72;
  }

  if (a4 && *(v8 + 48))
  {
    if (BIO_printf(a1, "Private-Key: (%d bit)\n", v51) >= 1)
    {
      v53 = "publicExponent:";
      v54 = "modulus:";
      goto LABEL_60;
    }

LABEL_72:
    v55 = 0;
    goto LABEL_73;
  }

  if (BIO_printf(a1, "Public-Key: (%d bit)\n", v51) < 1)
  {
    goto LABEL_72;
  }

  v53 = "Exponent:";
  v54 = "Modulus:";
LABEL_60:
  if (!ASN1_bn_print(a1, v54, *(v8 + 32), v49, a3) || !ASN1_bn_print(a1, v53, *(v8 + 40), v49, a3) || a4 && (!ASN1_bn_print(a1, "privateExponent:", *(v8 + 48), v49, a3) || !ASN1_bn_print(a1, "prime1:", *(v8 + 56), v49, a3) || !ASN1_bn_print(a1, "prime2:", *(v8 + 64), v49, a3) || !ASN1_bn_print(a1, "exponent1:", *(v8 + 72), v49, a3) || !ASN1_bn_print(a1, "exponent2:", *(v8 + 80), v49, a3) || !ASN1_bn_print(a1, "coefficient:", *(v8 + 88), v49, a3)) || **(a2 + 16) == 912 && !rsa_pss_param_print(a1, 1, *(v8 + 96), a3))
  {
    goto LABEL_72;
  }

  v55 = 1;
LABEL_73:
  free(v49);
  return v55;
}

BOOL rsa_pss_param_print(BIO *a1, int a2, uint64_t a3, int indent)
{
  if (!BIO_indent(a1, indent, 128))
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_7;
    }

    v11 = "(INVALID PSS PARAMETERS)\n";
    return BIO_puts(a1, v11) > 0;
  }

  if (!a3)
  {
    v11 = "No PSS parameter restrictions\n";
    return BIO_puts(a1, v11) > 0;
  }

  if (BIO_puts(a1, "PSS parameter restrictions:") >= 1)
  {
LABEL_7:
    if (BIO_puts(a1, "\n") >= 1)
    {
      v9 = a2 ? indent + 2 : indent;
      if (BIO_indent(a1, v9, 128) && BIO_puts(a1, "Hash Algorithm: ") >= 1)
      {
        v10 = *a3 ? i2a_ASN1_OBJECT(a1, **a3) : BIO_puts(a1, "sha1 (default)");
        if (v10 >= 1 && BIO_puts(a1, "\n") >= 1 && BIO_indent(a1, v9, 128) && BIO_puts(a1, "Mask Algorithm: ") >= 1)
        {
          v12 = *(a3 + 8);
          if (!v12)
          {
            v15 = BIO_puts(a1, "mgf1 with sha1 (default)");
            v14 = 0;
            if (v15 < 1)
            {
              goto LABEL_49;
            }

            BIO_puts(a1, "\n");
            if (!BIO_indent(a1, v9, 128))
            {
              goto LABEL_49;
            }

LABEL_32:
            v17 = "Minimum";
            if (!a2)
            {
              v17 = "";
            }

            if (BIO_printf(a1, "%s Salt Length: 0x", v17) >= 1 && ((v18 = *(a3 + 16)) == 0 ? (v19 = BIO_puts(a1, "14 (default)")) : (v19 = i2a_ASN1_INTEGER(a1, v18)), v19 >= 1 && (BIO_puts(a1, "\n"), BIO_indent(a1, v9, 128)) && BIO_puts(a1, "Trailer Field: 0x") >= 1 && ((v20 = *(a3 + 24)) == 0 ? (v21 = BIO_puts(a1, "BC (default)")) : (v21 = i2a_ASN1_INTEGER(a1, v20)), v21 >= 1)))
            {
              BIO_puts(a1, "\n");
              v8 = 1;
            }

            else
            {
LABEL_49:
              v8 = 0;
            }

            goto LABEL_29;
          }

          if (i2a_ASN1_OBJECT(a1, *v12) >= 1 && BIO_puts(a1, " with ") >= 1)
          {
            v13 = rsa_mgf1_decode(*(a3 + 8));
            v14 = v13;
            if (v13)
            {
              v15 = i2a_ASN1_OBJECT(a1, *v13);
            }

            else
            {
              v15 = BIO_puts(a1, "INVALID");
            }

            goto LABEL_32;
          }
        }
      }
    }

LABEL_28:
    v8 = 0;
    v14 = 0;
LABEL_29:
    X509_ALGOR_free(v14);
    return v8;
  }

  return 0;
}

ASN1_STRING *rsa_ctx_to_pss_string(uint64_t *a1)
{
  v11 = 0;
  md = 0;
  v2 = EVP_PKEY_CTX_get0_pkey(a1);
  v10 = 0;
  if (EVP_PKEY_CTX_ctrl(a1, -1, 248) < 1 || RSA_pkey_ctx_ctrl(a1, 1016, 4104, 0, &v11) < 1 || !RSA_pkey_ctx_ctrl(a1, 24, 4103, 0, &v10))
  {
    return 0;
  }

  v3 = v10;
  if (v10 == -1)
  {
    v3 = EVP_MD_size(md);
    v10 = v3;
  }

  else if ((v10 + 3) <= 1)
  {
    v4 = EVP_PKEY_size(v2);
    v10 = v4 - EVP_MD_size(md) - 2;
    v5 = EVP_PKEY_bits(v2);
    v3 = v10;
    if ((v5 & 7) == 1)
    {
      v3 = --v10;
    }

    if (v3 < 0)
    {
      return 0;
    }
  }

  v6 = rsa_pss_params_create(md, v11, v3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = ASN1_item_pack(v6, &RSA_PSS_PARAMS_it, 0);
  RSA_PSS_PARAMS_free(v7);
  return v8;
}

uint64_t rsa_pss_to_ctx(EVP_MD_CTX *a1, EVP_MD *a2, const ASN1_OBJECT **a3, uint64_t a4)
{
  v6 = a2;
  v17 = a2;
  md = 0;
  v15 = 0;
  if (OBJ_obj2nid(*a3) == 912)
  {
    v16 = 0;
    v8 = rsa_pss_decode(a3);
    if (rsa_pss_get_param(v8, &md, &v15, &v16))
    {
      if (a4)
      {
        if (EVP_DigestVerifyInit(a1, &v17, md, 0, a4))
        {
          v6 = v17;
LABEL_14:
          v9 = 0xFFFFFFFFLL;
          if (RSA_pkey_ctx_ctrl(v6, 0xFFFFFFFFLL, 4097, 6, 0) >= 1 && RSA_pkey_ctx_ctrl(v17, 24, 4098, v16, 0) >= 1)
          {
            if (RSA_pkey_ctx_ctrl(v17, 1016, 4101, 0, v15) < 1)
            {
              v9 = 0xFFFFFFFFLL;
            }

            else
            {
              v9 = 1;
            }
          }

          goto LABEL_10;
        }

LABEL_9:
        v9 = 0xFFFFFFFFLL;
LABEL_10:
        RSA_PSS_PARAMS_free(v8);
        return v9;
      }

      if (EVP_PKEY_CTX_ctrl(&v6->type, -1, 248) < 1)
      {
        goto LABEL_9;
      }

      v13 = EVP_MD_type(md);
      if (v13 == EVP_MD_type(0))
      {
        goto LABEL_14;
      }

      v10 = 158;
      v11 = 761;
    }

    else
    {
      v10 = 149;
      v11 = 748;
    }

    ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", v11);
    goto LABEL_9;
  }

  ERR_put_error(4, 4095, 155, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_ameth.c", 741);
  return 0xFFFFFFFFLL;
}

const ASN1_OBJECT **cms_Data_create()
{
  v0 = ASN1_item_new(&CMS_ContentInfo_it);
  if (v0)
  {
    *v0 = OBJ_nid2obj(21);
    CMS_set_detached(v0, 0);
  }

  return v0;
}

uint64_t CMS_set_detached(const ASN1_OBJECT **a1, int a2)
{
  result = CMS_get0_content(a1);
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (a2)
    {
      ASN1_OCTET_STRING_free(v5);
      *v4 = 0;
    }

    else
    {
      if (!v5)
      {
        v5 = ASN1_OCTET_STRING_new();
        *v4 = v5;
        if (!v5)
        {
          ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 375);
          return 0;
        }
      }

      v5->flags |= 0x20uLL;
    }

    return 1;
  }

  return result;
}

BIO *cms_content_bio(const ASN1_OBJECT **a1)
{
  result = CMS_get0_content(a1);
  if (!result)
  {
    return result;
  }

  method = result->method;
  if (!result->method)
  {
    v3 = BIO_s_null();
    goto LABEL_7;
  }

  if (method->bwrite == 32)
  {
    v3 = BIO_s_mem();
LABEL_7:

    return BIO_new(v3);
  }

  name = method->name;
  type = method->type;

  return BIO_new_mem_buf(name, type);
}

const ASN1_OBJECT **CMS_get0_content(const ASN1_OBJECT **a1)
{
  v1 = a1 + 1;
  v2 = OBJ_obj2nid(*a1);
  if (v2 > 24)
  {
    if (v2 > 204)
    {
      if (v2 == 205)
      {
        sn = (*v1)[1].sn;
        return (sn + 8);
      }

      if (v2 == 786)
      {
        sn = (*v1)->data;
        return (sn + 8);
      }

LABEL_15:
      sn = *v1;
      if (LODWORD((*v1)->sn) != 4)
      {
        ERR_put_error(46, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 270);
        return 0;
      }

      return (sn + 8);
    }

    if (v2 != 25)
    {
      if (v2 == 26)
      {
        ln = (*v1)->ln;
        return (ln + 16);
      }

      goto LABEL_15;
    }

LABEL_14:
    sn = *&(*v1)->nid;
    return (sn + 8);
  }

  if (v2 != 21)
  {
    if (v2 != 22)
    {
      if (v2 == 23)
      {
        ln = (*v1)->data;
        return (ln + 16);
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return v1;
}

BIO *CMS_dataInit(const ASN1_OBJECT **a1, BIO *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = cms_content_bio(a1);
    if (!v4)
    {
      ERR_put_error(46, 4095, 127, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 148);
      return v4;
    }
  }

  v5 = OBJ_obj2nid(*a1);
  if (v5 > 22)
  {
    switch(v5)
    {
      case 23:
        inited = cms_EnvelopedData_init_bio(a1);
        if (!inited)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      case 25:
        inited = cms_DigestedData_init_bio(a1);
        if (!inited)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      case 26:
        inited = cms_EncryptedData_init_bio(a1);
        if (!inited)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
    }

LABEL_20:
    ERR_put_error(46, 4095, 156, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 178);
    return 0;
  }

  if (v5 == 21)
  {
    return v4;
  }

  if (v5 != 22)
  {
    goto LABEL_20;
  }

  inited = cms_SignedData_init_bio(a1);
  if (!inited)
  {
LABEL_18:
    if (!a2)
    {
      BIO_free(v4);
    }

    return 0;
  }

LABEL_14:

  return BIO_push(inited, v4);
}

uint64_t CMS_dataFinal(const ASN1_OBJECT **a1, BIO *a2)
{
  result = CMS_get0_content(a1);
  if (result)
  {
    v5 = result;
    if (*result && (*(*result + 16) & 0x20) != 0)
    {
      parg = 0;
      type = BIO_find_type(a2, 1025);
      if (!type)
      {
        v10 = 105;
        v11 = 205;
        goto LABEL_18;
      }

      v7 = type;
      v8 = BIO_ctrl(type, 3, 0, &parg);
      BIO_set_flags(v7, 512);
      BIO_ctrl(v7, 130, 0, 0);
      ASN1_STRING_set0(*v5, parg, v8);
      (*v5)->flags &= ~0x20uLL;
    }

    v9 = OBJ_obj2nid(*a1);
    result = 1;
    if (v9 <= 24)
    {
      switch(v9)
      {
        case 21:
          return result;
        case 22:
          return cms_SignedData_final(a1, a2);
        case 23:
          return result;
      }

      goto LABEL_14;
    }

    if (v9 == 25)
    {
      return cms_DigestedData_do_final(a1, a2, 0);
    }

    if (v9 != 26 && v9 != 786)
    {
LABEL_14:
      v10 = 156;
      v11 = 232;
LABEL_18:
      ERR_put_error(46, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", v11);
      return 0;
    }
  }

  return result;
}

uint64_t CMS_get0_eContentType(uint64_t a1)
{
  result = cms_get0_econtent_type(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t cms_get0_econtent_type(uint64_t a1)
{
  v2 = OBJ_obj2nid(*a1);
  if (v2 <= 25)
  {
    if (v2 == 22)
    {
      return *(*(a1 + 8) + 16);
    }

    if (v2 != 23)
    {
      if (v2 == 25)
      {
        return *(*(a1 + 8) + 16);
      }

      goto LABEL_11;
    }

    return *(*(a1 + 8) + 24);
  }

  if (v2 == 26)
  {
    return *(*(a1 + 8) + 8);
  }

  if (v2 != 205)
  {
    if (v2 != 786)
    {
LABEL_11:
      ERR_put_error(46, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 303);
      return 0;
    }

    return *(*(a1 + 8) + 24);
  }

  return *(*(a1 + 8) + 40);
}

uint64_t CMS_set1_eContentType(uint64_t a1, const ASN1_OBJECT *a2)
{
  result = cms_get0_econtent_type(a1);
  if (result)
  {
    if (a2)
    {
      v4 = result;
      result = OBJ_dup(a2);
      if (!result)
      {
        return result;
      }

      v5 = result;
      ASN1_OBJECT_free(*v4);
      *v4 = v5;
    }

    return 1;
  }

  return result;
}

uint64_t CMS_is_detached(const ASN1_OBJECT **a1)
{
  v1 = CMS_get0_content(a1);
  if (v1)
  {
    return *v1 == 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BIO *cms_DigestAlgorithm_init_bio(X509_ALGOR *algor)
{
  paobj = 0;
  X509_ALGOR_get0(&paobj, 0, 0, algor);
  v1 = OBJ_obj2nid(paobj);
  v2 = OBJ_nid2sn(v1);
  digestbyname = EVP_get_digestbyname(v2);
  if (!digestbyname)
  {
    ERR_put_error(46, 4095, 149, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 392);
    v7 = 0;
    goto LABEL_6;
  }

  v4 = digestbyname;
  v5 = BIO_f_md();
  v6 = BIO_new(v5);
  v7 = v6;
  if (!v6 || !BIO_ctrl(v6, 111, 0, v4))
  {
    ERR_put_error(46, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 397);
LABEL_6:
    BIO_free(v7);
    return 0;
  }

  return v7;
}

uint64_t cms_DigestAlgorithm_find_ctx(EVP_MD_CTX *a1, BIO *a2, X509_ALGOR *algor)
{
  paobj = 0;
  X509_ALGOR_get0(&paobj, 0, 0, algor);
  v5 = OBJ_obj2nid(paobj);
  ctx = 0;
  type = BIO_find_type(a2, 520);
  if (type)
  {
    v7 = type;
    while (1)
    {
      BIO_ctrl(v7, 120, 0, &ctx);
      v8 = EVP_MD_CTX_md(ctx);
      if (EVP_MD_type(v8) == v5)
      {
        break;
      }

      v9 = EVP_MD_CTX_md(ctx);
      if (EVP_MD_pkey_type(v9) == v5)
      {
        break;
      }

      v10 = BIO_next(v7);
      ctx = 0;
      v7 = BIO_find_type(v10, 520);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return EVP_MD_CTX_copy_ex(a1, ctx);
  }

  else
  {
LABEL_6:
    ERR_put_error(46, 4095, 131, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 423);
    return 0;
  }
}

ASN1_VALUE *CMS_add0_CertificateChoices(uint64_t a1)
{
  v1 = cms_get0_certificate_choices(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (!*v1)
  {
    v3 = sk_new_null();
    *v2 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  v4 = ASN1_item_new(&CMS_CertificateChoices_it);
  if (v4 && !sk_push(*v2, v4))
  {
    ASN1_item_free(v4, &CMS_CertificateChoices_it);
    return 0;
  }

  return v4;
}

uint64_t cms_get0_certificate_choices(uint64_t a1)
{
  v2 = OBJ_obj2nid(*a1);
  if (v2 == 23)
  {
    return *(*(a1 + 8) + 8);
  }

  if (v2 == 22)
  {
    return *(a1 + 8) + 24;
  }

  ERR_put_error(46, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 451);
  return 0;
}

uint64_t CMS_add0_cert(uint64_t a1, const X509 *a2)
{
  result = cms_get0_certificate_choices(a1);
  if (result)
  {
    v5 = result;
    if (sk_num(*result) < 1)
    {
LABEL_7:
      result = CMS_add0_CertificateChoices(a1);
      if (result)
      {
        *result = 0;
        *(result + 8) = a2;
        return 1;
      }
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = sk_value(*v5, v6);
        if (!*v7 && !X509_cmp(*(v7 + 1), a2))
        {
          break;
        }

        if (++v6 >= sk_num(*v5))
        {
          goto LABEL_7;
        }
      }

      ERR_put_error(46, 4095, 175, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 494);
      return 0;
    }
  }

  return result;
}

uint64_t CMS_add1_cert(uint64_t a1, const X509 *a2)
{
  v3 = CMS_add0_cert(a1, a2);
  if (v3)
  {
    X509_up_ref(a2);
  }

  return v3;
}

ASN1_VALUE *CMS_add0_RevocationInfoChoice(uint64_t a1)
{
  v1 = cms_get0_revocation_choices(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (!*v1)
  {
    v3 = sk_new_null();
    *v2 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  v4 = ASN1_item_new(&CMS_RevocationInfoChoice_it);
  if (v4 && !sk_push(*v2, v4))
  {
    ASN1_item_free(v4, &CMS_RevocationInfoChoice_it);
    return 0;
  }

  return v4;
}

uint64_t cms_get0_revocation_choices(uint64_t a1)
{
  v2 = OBJ_obj2nid(*a1);
  if (v2 == 23)
  {
    v4 = *(*(a1 + 8) + 8);
    if (v4)
    {
      return v4 + 8;
    }

    else
    {
      return 0;
    }
  }

  else if (v2 == 22)
  {
    return *(a1 + 8) + 32;
  }

  else
  {
    ERR_put_error(46, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 533);
    return 0;
  }
}

ASN1_VALUE *CMS_add0_crl(uint64_t a1, uint64_t a2)
{
  result = CMS_add0_RevocationInfoChoice(a1);
  if (result)
  {
    *result = 0;
    *(result + 1) = a2;
    return 1;
  }

  return result;
}

ASN1_VALUE *CMS_add1_crl(uint64_t a1, uint64_t a2)
{
  result = CMS_add0_RevocationInfoChoice(a1);
  if (result)
  {
    *result = 0;
    *(result + 1) = a2;
    X509_CRL_up_ref(a2);
    return 1;
  }

  return result;
}

STACK *CMS_get1_certs(uint64_t a1)
{
  v1 = cms_get0_certificate_choices(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (sk_num(*v1) < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = sk_value(*v2, v3);
    if (!*v5)
    {
      break;
    }

LABEL_9:
    if (++v3 >= sk_num(*v2))
    {
      return v4;
    }
  }

  v6 = v5;
  if (!v4)
  {
    v4 = sk_new_null();
    if (!v4)
    {
      return v4;
    }
  }

  if (sk_push(v4, *(v6 + 1)))
  {
    X509_up_ref(*(v6 + 1));
    goto LABEL_9;
  }

  sk_pop_free(v4, X509_free);
  return 0;
}

STACK *CMS_get1_crls(uint64_t a1)
{
  v1 = cms_get0_revocation_choices(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (sk_num(*v1) < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = sk_value(*v2, v3);
    if (!*v5)
    {
      break;
    }

LABEL_9:
    if (++v3 >= sk_num(*v2))
    {
      return v4;
    }
  }

  v6 = v5;
  if (!v4)
  {
    v4 = sk_new_null();
    if (!v4)
    {
      return v4;
    }
  }

  if (sk_push(v4, *(v6 + 1)))
  {
    X509_CRL_up_ref(*(v6 + 1));
    goto LABEL_9;
  }

  sk_pop_free(v4, X509_CRL_free);
  return 0;
}

uint64_t cms_ias_cert_cmp(uint64_t a1, X509 *a)
{
  v4 = *a1;
  issuer_name = X509_get_issuer_name(a);
  result = X509_NAME_cmp(v4, issuer_name);
  if (!result)
  {
    v7 = *(a1 + 8);
    serialNumber = X509_get_serialNumber(a);

    return ASN1_INTEGER_cmp(v7, serialNumber);
  }

  return result;
}

uint64_t cms_keyid_cert_cmp(ASN1_OCTET_STRING *a1, X509 *x)
{
  X509_check_purpose(x, -1, -1);
  ex_xkusage = x->ex_xkusage;
  if (!ex_xkusage)
  {
    return 0xFFFFFFFFLL;
  }

  return ASN1_OCTET_STRING_cmp(a1, ex_xkusage);
}

uint64_t cms_set1_ias(ASN1_VALUE **a1, X509 *a2)
{
  v4 = ASN1_item_new(&CMS_IssuerAndSerialNumber_it);
  if (v4 && (issuer_name = X509_get_issuer_name(a2), X509_NAME_set(v4, issuer_name)) && (v6 = *(v4 + 1), serialNumber = X509_get_serialNumber(a2), ASN1_STRING_copy(v6, serialNumber)))
  {
    ASN1_item_free(*a1, &CMS_IssuerAndSerialNumber_it);
    *a1 = v4;
    return 1;
  }

  else
  {
    ASN1_item_free(v4, &CMS_IssuerAndSerialNumber_it);
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", 696);
    return 0;
  }
}

uint64_t cms_set1_keyid(ASN1_OCTET_STRING **a1, X509 *x)
{
  X509_check_purpose(x, -1, -1);
  ex_xkusage = x->ex_xkusage;
  if (ex_xkusage)
  {
    v5 = ASN1_STRING_dup(ex_xkusage);
    if (v5)
    {
      v6 = v5;
      ASN1_OCTET_STRING_free(*a1);
      *a1 = v6;
      return 1;
    }

    v8 = 65;
    v9 = 714;
  }

  else
  {
    v8 = 160;
    v9 = 709;
  }

  ERR_put_error(46, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_lib.c", v9);
  return 0;
}

char *__cdecl X509_NAME_oneline(X509_NAME *a, char *buf, int size)
{
  data = buf;
  v4 = a;
  v39 = *MEMORY[0x277D85DE8];
  if (buf)
  {
    if (a)
    {
      str = 0;
      goto LABEL_4;
    }

LABEL_60:
    strlcpy(data, "NO X509_NAME", size);
    return data;
  }

  v31 = BUF_MEM_new();
  if (!v31)
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_obj.c", 177);
    return 0;
  }

  v32 = v31;
  if (!BUF_MEM_grow(v31, 200))
  {
    str = v32;
LABEL_57:
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_obj.c", 177);
    BUF_MEM_free(str);
    return 0;
  }

  *v32->data = 0;
  if (!v4)
  {
    data = v32->data;
    free(v32);
    size = 200;
    goto LABEL_60;
  }

  str = v32;
  size = 200;
LABEL_4:
  if (sk_num(v4->entries) < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    p_entries = &v4->entries;
    do
    {
      v7 = sk_value(v4->entries, v6);
      v8 = OBJ_obj2nid(*v7);
      if (!v8 || (v9 = OBJ_nid2sn(v8)) == 0)
      {
        v9 = bufa;
        i2t_ASN1_OBJECT(bufa, 80, *v7);
      }

      v10 = strlen(v9);
      v11 = v10;
      v12 = *(v7 + 1);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v12 + 1);
      if (v13 == 27 && (v14 & 3) == 0)
      {
        v38 = 0uLL;
        v18 = str;
        if (v14 < 1)
        {
          goto LABEL_21;
        }

        for (i = 0; i != v14; ++i)
        {
          if (*(v15 + i))
          {
            *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = 1;
          }
        }

        if (DWORD1(v38) | v38 | DWORD2(v38))
        {
          *&v20 = 0x100000001;
          *(&v20 + 1) = 0x100000001;
        }

        else
        {
LABEL_21:
          v20 = xmmword_23E242ED0;
        }

        v38 = v20;
      }

      else
      {
        *&v17 = 0x100000001;
        *(&v17 + 1) = 0x100000001;
        v38 = v17;
        v18 = str;
      }

      if (v14 < 1)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          if (*(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3))))
          {
            if (*(v15 + v21) - 127 >= 0xFFFFFFA1)
            {
              ++v22;
            }

            else
            {
              v22 += 4;
            }
          }

          ++v21;
        }

        while (v14 != v21);
      }

      v23 = v5 + v10 + v22 + 2;
      if (v18)
      {
        if (!BUF_MEM_grow(v18, v5 + v10 + v22 + 3))
        {
          goto LABEL_57;
        }

        v24 = v18->data;
      }

      else
      {
        v24 = data;
        if (v23 >= size)
        {
          goto LABEL_53;
        }
      }

      v25 = &v24[v5];
      *v25++ = 47;
      memcpy(v25, v9, v11);
      v26 = &v25[v11];
      *v26 = 61;
      v27 = v26 + 1;
      if (v14 >= 1)
      {
        v28 = 0;
        v29 = *(*(v7 + 1) + 8);
        do
        {
          if (*(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3))))
          {
            v30 = *(v29 + v28);
            if ((v30 - 127) > 0xFFFFFFA0)
            {
              *v27++ = v30;
            }

            else
            {
              *v27 = 30812;
              v27[2] = X509_NAME_oneline_hex[v30 >> 4];
              v27[3] = X509_NAME_oneline_hex[v30 & 0xF];
              v27 += 4;
            }
          }

          ++v28;
        }

        while (v14 != v28);
      }

      *v27 = 0;
      ++v6;
      v4 = p_entries;
      v5 = v23;
    }

    while (v6 < sk_num(*p_entries));
  }

  if (str)
  {
    data = str->data;
    free(str);
    if (!v6)
    {
      goto LABEL_54;
    }
  }

  else
  {
LABEL_53:
    if (!v6)
    {
LABEL_54:
      *data = 0;
    }
  }

  return data;
}

ASN1_TYPE *__cdecl ASN1_generate_nconf(char *str, CONF *nconf)
{
  if (nconf)
  {
    memset(&v4, 0, sizeof(v4));
    X509V3_set_nconf(&v4, nconf);
    return ASN1_generate_v3(str, &v4);
  }

  else
  {

    return ASN1_generate_v3(str, 0);
  }
}

ASN1_TYPE *__cdecl ASN1_generate_v3(char *str, X509V3_CTX *cnf)
{
  memset(v54, 0, sizeof(v54));
  memset(&arg[1], 0, 32);
  pp = 0;
  out = 0;
  in = 0;
  v50 = 0;
  *pclass = 0;
  plength = 0;
  arg[0] = -1;
  HIDWORD(arg[1]) = 1;
  v55 = 0;
  if (CONF_parse_list(str, 44, 1, asn1_cb, arg))
  {
    return 0;
  }

  v5 = arg[1];
  if ((arg[1] & 0xFFFFFFFE) != 0x10)
  {
    v14 = arg[2];
    v15 = HIDWORD(arg[1]);
    v3 = ASN1_TYPE_new();
    if (!v3)
    {
      ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", 618);
      goto LABEL_97;
    }

    memset(&value, 0, sizeof(value));
    len = 0;
    if (!v14)
    {
      v14 = "";
    }

    if (v5 <= 4)
    {
      if ((v5 - 3) < 2)
      {
        v20 = ASN1_STRING_new();
        v3->value.ptr = v20;
        if (!v20)
        {
          v26 = 65;
          v27 = 723;
          goto LABEL_89;
        }

        if (v15 == 1)
        {
          if (!ASN1_STRING_set(v20, v14, -1))
          {
            v23 = 65;
            v24 = 741;
            goto LABEL_93;
          }
        }

        else
        {
          if (v15 != 3)
          {
            if (v5 != 3 || v15 != 4)
            {
              v26 = 175;
              v27 = 754;
              goto LABEL_89;
            }

            if (CONF_parse_list(v14, 44, 1, bitstr_cb, v20))
            {
              goto LABEL_56;
            }

            v23 = 188;
            v24 = 748;
            goto LABEL_93;
          }

          v21 = string_to_hex(v14, &len);
          if (!v21)
          {
            v23 = 178;
            v24 = 730;
            goto LABEL_93;
          }

          *(v3->value.ptr + 1) = v21;
          *v3->value.ptr = len;
          *(v3->value.ptr + 1) = v5;
        }

        if (v5 != 3 || asn1_abs_set_unused_bits(v3->value.ptr, 0))
        {
          goto LABEL_56;
        }

        goto LABEL_94;
      }

      if (v5 == 1)
      {
        if (v15 != 1)
        {
          v26 = 190;
          v27 = 636;
          goto LABEL_89;
        }

        value.section = 0;
        value.name = 0;
        value.value = v14;
        if (X509V3_get_value_BOOL(&value, &v3->value))
        {
          goto LABEL_56;
        }

        v23 = 176;
        v24 = 643;
        goto LABEL_93;
      }

      if (v5 == 2)
      {
LABEL_64:
        if (v15 != 1)
        {
          v26 = 185;
          v27 = 651;
          goto LABEL_89;
        }

        v28 = s2i_ASN1_INTEGER(0, v14);
        v3->value.ptr = v28;
        if (v28)
        {
          goto LABEL_56;
        }

        v23 = 180;
        v24 = 656;
LABEL_93:
        ERR_put_error(13, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", v24);
LABEL_94:
        ERR_asprintf_error_data("string=%s", v14);
        goto LABEL_95;
      }
    }

    else
    {
      if (v5 <= 0x1E)
      {
        if (((1 << v5) & 0x5C5C1000) != 0)
        {
          if (v15 == 1)
          {
            v16 = 4097;
            goto LABEL_55;
          }

          if (v15 == 2)
          {
            v16 = 4096;
LABEL_55:
            v25 = ASN1_tag2bit(v5);
            if (ASN1_mbstring_copy(&v3->value, v14, -1, v16, v25) > 0)
            {
              goto LABEL_56;
            }

            v23 = 65;
            v24 = 715;
            goto LABEL_93;
          }

          v26 = 177;
          v27 = 708;
LABEL_89:
          ERR_put_error(13, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", v27);
LABEL_95:
          ASN1_TYPE_free(v3);
          goto LABEL_96;
        }

        if (((1 << v5) & 0x1800000) != 0)
        {
          if (v15 == 1)
          {
            v22 = ASN1_STRING_new();
            v3->value.ptr = v22;
            if (v22)
            {
              if (ASN1_STRING_set(v22, v14, -1))
              {
                *(v3->value.ptr + 1) = v5;
                if (ASN1_TIME_check(v3->value.asn1_string))
                {
LABEL_56:
                  v3->type = v5;
                  goto LABEL_97;
                }

                v23 = 184;
                v24 = 688;
              }

              else
              {
                v23 = 65;
                v24 = 683;
              }
            }

            else
            {
              v23 = 65;
              v24 = 679;
            }

            goto LABEL_93;
          }

          v26 = 193;
          v27 = 675;
          goto LABEL_89;
        }

        if (v5 == 10)
        {
          goto LABEL_64;
        }
      }

      if (v5 == 6)
      {
        if (v15 != 1)
        {
          v26 = 191;
          v27 = 663;
          goto LABEL_89;
        }

        v29 = OBJ_txt2obj(v14, 0);
        v3->value.ptr = v29;
        if (v29)
        {
          goto LABEL_56;
        }

        v23 = 183;
        v24 = 667;
        goto LABEL_93;
      }

      if (v5 == 5)
      {
        if (!*v14)
        {
          goto LABEL_56;
        }

        v26 = 182;
        v27 = 629;
        goto LABEL_89;
      }
    }

    v23 = 196;
    v24 = 767;
    goto LABEL_93;
  }

  if (!cnf)
  {
    ERR_put_error(13, 4095, 192, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", 165);
    return 0;
  }

  v6 = arg[2];
  value.section = 0;
  v7 = sk_new_null();
  if (!v7)
  {
    free(value.section);
LABEL_96:
    v3 = 0;
    goto LABEL_97;
  }

  v8 = v7;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_32;
  }

  section = X509V3_get_section(cnf, v6);
  if (!section)
  {
    free(value.section);
    sk_pop_free(v8, ASN1_TYPE_free);
    goto LABEL_96;
  }

  v10 = section;
  if (sk_num(section) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sk_value(v10, v11);
      v13 = ASN1_generate_v3(*(v12 + 2), cnf);
      if (!v13 || !sk_push(v8, v13))
      {
        goto LABEL_39;
      }
    }

    while (++v11 < sk_num(v10));
  }

LABEL_32:
  if (v5 == 17)
  {
    v17 = i2d_ASN1_SET_ANY(v8, &value);
  }

  else
  {
    v17 = i2d_ASN1_SEQUENCE_ANY(v8, &value);
  }

  v18 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    v3 = ASN1_TYPE_new();
    if (v3)
    {
      v19 = ASN1_STRING_type_new(v5);
      v3->value.ptr = v19;
      if (v19)
      {
        v3->type = v5;
        v19->data = value.section;
        *v3->value.ptr = v18;
        value.section = 0;
      }
    }

    goto LABEL_40;
  }

LABEL_39:
  v3 = 0;
LABEL_40:
  free(value.section);
  sk_pop_free(v8, ASN1_TYPE_free);
  if (v10)
  {
    X509V3_section_free(cnf, v10);
  }

LABEL_97:
  if (v3 && (LODWORD(arg[0]) != -1 || v55))
  {
    v30 = i2d_ASN1_TYPE(v3, &out);
    ASN1_TYPE_free(v3);
    pp = out;
    if (LODWORD(arg[0]) == -1)
    {
      v33 = 0;
      v35 = v30;
      v32 = v30;
    }

    else
    {
      object = ASN1_get_object(&pp, &plength, &pclass[1], pclass, v30);
      if (object < 0)
      {
        v3 = 0;
        v36 = 0;
LABEL_127:
        free(out);
        free(v36);
        return v3;
      }

      v32 = v30 + out - pp;
      if (object)
      {
        v34 = 0;
        plength = 0;
        v33 = 2;
      }

      else
      {
        v33 = object & 0x20;
        v34 = plength;
      }

      v35 = ASN1_object_size(0, v34, arg[0]);
    }

    if (v55 >= 1)
    {
      v37 = 0;
      v38 = &arg[3 * v55 + 2];
      do
      {
        v39 = *(v38 - 1) + v35;
        *v38 = v39;
        v35 = ASN1_object_size(0, v39, *(v38 - 4));
        ++v37;
        v38 -= 3;
      }

      while (v37 < v55);
    }

    v40 = v35;
    v41 = malloc_type_malloc(v35, 0x33E3CAE9uLL);
    v36 = v41;
    if (v41)
    {
      v50 = v41;
      if (v55 >= 1)
      {
        v42 = 0;
        v43 = v54;
        do
        {
          ASN1_put_object(&v50, *(v43 - 2), *v43, *(v43 - 4), *(v43 - 3));
          if (*(v43 - 1))
          {
            v44 = v50++;
            *v44 = 0;
          }

          ++v42;
          v43 += 6;
        }

        while (v42 < v55);
      }

      if (LODWORD(arg[0]) != -1)
      {
        if (HIDWORD(arg[0]))
        {
          v45 = 0;
        }

        else
        {
          v45 = (arg[0] & 0xFFFFFFFE) == 16;
        }

        if (v45)
        {
          v46 = 32;
        }

        else
        {
          v46 = v33;
        }

        ASN1_put_object(&v50, v46, plength, arg[0], SHIDWORD(arg[0]));
      }

      memcpy(v50, pp, v32);
      in = v36;
      v3 = d2i_ASN1_TYPE(0, &in, v40);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_127;
  }

  return v3;
}

uint64_t asn1_cb(char *__s2, int a2, uint64_t a3)
{
  v4 = a2;
  if (a2 < 1)
  {
LABEL_5:
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = __s2 + 1;
    while (*(v7 - 1) != 58)
    {
      ++v6;
      ++v7;
      if (a2 == v6)
      {
        goto LABEL_5;
      }
    }

    v8 = ~v6 + a2;
    v4 = v6;
  }

  v9 = v4;
  if (v4 == -1)
  {
    v9 = strlen(__s2);
  }

  v10 = v9;
  v11 = &asn1_str2tag_tnst;
  v12 = 49;
  while (v10 != *(v11 + 2) || strncmp(*v11, __s2, v10))
  {
    v11 += 2;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  asn1_str2tag_tntmp = v11;
  v14 = *(v11 + 3);
  if (v14 == -1)
  {
LABEL_13:
    ERR_put_error(13, 4095, 194, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", 294);
    ERR_asprintf_error_data("tag=%s", __s2);
    return 0xFFFFFFFFLL;
  }

  if ((v14 & 0x10000) != 0)
  {
    v24 = 0;
    if (v14 <= 65540)
    {
      if (v14 == 65537)
      {
        if (*a3 != -1)
        {
          v20 = 181;
          v21 = 316;
          goto LABEL_55;
        }

        if (!parse_tagging(v7, v8, a3, (a3 + 4)))
        {
          return 0xFFFFFFFFLL;
        }

        return 1;
      }

      if (v14 == 65538)
      {
        if (!parse_tagging(v7, v8, &v24 + 1, &v24))
        {
          return 0xFFFFFFFFLL;
        }

        v17 = v24;
        v16 = HIDWORD(v24);
        v15 = a3;
        v18 = 1;
        v19 = 0;
        v23 = 0;
        goto LABEL_45;
      }

      if (v14 != 65540)
      {
        return 1;
      }

      v15 = a3;
      v16 = 3;
      v17 = 0;
      v18 = 0;
      v19 = 1;
LABEL_44:
      v23 = 1;
LABEL_45:
      if (append_exp(v15, v16, v17, v18, v19, v23))
      {
        return 1;
      }

      return 0xFFFFFFFFLL;
    }

    if (v14 > 65542)
    {
      if (v14 != 65543)
      {
        if (v14 == 65544)
        {
          if (!v7)
          {
            v20 = 177;
            v21 = 353;
            goto LABEL_55;
          }

          if (!strncmp(v7, "ASCII", 5uLL))
          {
            v22 = 1;
          }

          else if (!strncmp(v7, "UTF8", 4uLL))
          {
            v22 = 2;
          }

          else if (*v7 == 72 && v7[1] == 69 && v7[2] == 88)
          {
            v22 = 3;
          }

          else
          {
            if (strncmp(v7, "BITLIST", 7uLL))
            {
              v20 = 195;
              v21 = 365;
              goto LABEL_55;
            }

            v22 = 4;
          }

          *(a3 + 12) = v22;
        }

        return 1;
      }

      v15 = a3;
      v16 = 17;
    }

    else
    {
      if (v14 == 65541)
      {
        v15 = a3;
        v16 = 4;
        v17 = 0;
        v18 = 0;
LABEL_43:
        v19 = 0;
        goto LABEL_44;
      }

      v15 = a3;
      v16 = 16;
    }

    v17 = 0;
    v18 = 1;
    goto LABEL_43;
  }

  *(a3 + 8) = v14;
  *(a3 + 16) = v7;
  if (!v7 && __s2[v4])
  {
    v20 = 189;
    v21 = 305;
LABEL_55:
    ERR_put_error(13, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", v21);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t parse_tagging(uint64_t result, int a2, _DWORD *a3, int *a4)
{
  if (result)
  {
    v7 = result;
    __endptr = 0;
    v8 = strtoul(result, &__endptr, 10);
    v9 = __endptr;
    if (!__endptr || (*__endptr ? (v10 = __endptr > v7 + a2) : (v10 = 0), !v10))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        ERR_put_error(13, 4095, 187, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", 388);
      }

      else
      {
        *a3 = v8;
        if (!v9 || v7 - v9 == -a2)
        {
          goto LABEL_13;
        }

        v11 = *v9;
        if (v11 > 0x4F)
        {
          if (v11 == 80)
          {
            v12 = 192;
            goto LABEL_14;
          }

          if (v11 == 85)
          {
            *a4 = 0;
            return 1;
          }
        }

        else
        {
          if (v11 == 65)
          {
            v12 = 64;
            goto LABEL_14;
          }

          if (v11 == 67)
          {
LABEL_13:
            v12 = 128;
LABEL_14:
            *a4 = v12;
            return 1;
          }
        }

        ERR_put_error(13, 4095, 186, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", 417);
        ERR_asprintf_error_data("Char=%c", *v9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t append_exp(int *a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *a1;
  if (!a6 && v6 != -1)
  {
    v7 = 179;
    v8 = 501;
LABEL_6:
    ERR_put_error(13, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", v8);
    return 0;
  }

  v9 = a1[126];
  if (v9 == 20)
  {
    v7 = 174;
    v8 = 506;
    goto LABEL_6;
  }

  v11 = &a1[6 * v9];
  a1[126] = v9 + 1;
  if (v6 != -1)
  {
    a3 = a1[1];
    *a1 = -1;
    a2 = v6;
  }

  v11[6] = a2;
  v11[7] = a3;
  result = 1;
  v11[8] = a4;
  v11[9] = a5;
  return result;
}

uint64_t bitstr_cb(const char *a1, int a2, ASN1_BIT_STRING *a3)
{
  if (!a1)
  {
    return 0;
  }

  __endptr = 0;
  v6 = strtoul(a1, &__endptr, 10);
  if (__endptr)
  {
    if (*__endptr && __endptr != &a1[a2])
    {
      return 0;
    }
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = 187;
    v10 = 794;
    goto LABEL_12;
  }

  v8 = 1;
  if (!ASN1_BIT_STRING_set_bit(a3, v6, 1))
  {
    v9 = 65;
    v10 = 798;
LABEL_12:
    ERR_put_error(13, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_gen.c", v10);
    return 0;
  }

  return v8;
}

int MD4_Update(MD4_CTX *c, const void *data, size_t len)
{
  if (len)
  {
    v3 = len;
    v4 = data;
    *&c->Nl += 8 * len;
    num = c->num;
    if (num)
    {
      v7 = c->data;
      if (len <= 0x3F && num + len < 0x40)
      {
        memcpy(v7 + num, data, len);
        c->num += v3;
        return 1;
      }

      v8 = 64 - num;
      memcpy(v7 + num, data, 64 - num);
      md4_block_data_order(c, c->data, 1);
      v4 = (v4 + v8);
      v3 -= v8;
      c->num = 0;
      *v7 = 0u;
      *&c->data[4] = 0u;
      *&c->data[8] = 0u;
      *&c->data[12] = 0u;
    }

    if (v3 >= 0x40)
    {
      md4_block_data_order(c, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      c->num = v3;
      memcpy(c->data, v4, v3);
    }
  }

  return 1;
}

unint64_t md4_block_data_order(unint64_t result, _DWORD *a2, uint64_t a3)
{
  v183 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v184 = a3;
      v7 = a2[1];
      v9 = __ROR4__((v4 & v5 | v3 & ~v5) + v6 + *a2, 29);
      v8 = v4 & ~v9;
      v10 = v5 & v9;
      HIDWORD(v12) = (v4 & v5 | v3 & ~v5) + v6 + *a2;
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 29;
      v14 = a2[2];
      v13 = a2[3];
      HIDWORD(v12) = v7 + v3 + (v10 | v8);
      LODWORD(v12) = HIDWORD(v12);
      v15 = v12 >> 25;
      LODWORD(v12) = v14 + v4 + (v11 & __ROR4__(HIDWORD(v12), 25) | v5 & ~__ROR4__(HIDWORD(v12), 25));
      HIDWORD(v12) = v12;
      v16 = v12 >> 21;
      LODWORD(v12) = v13 + v5 + (v15 & __ROR4__(v12, 21) | v11 & ~__ROR4__(v12, 21));
      HIDWORD(v12) = v12;
      v17 = v12 >> 13;
      v19 = a2[4];
      v18 = a2[5];
      LODWORD(v12) = v19 + v11 + (v16 & __ROR4__(v12, 13) | v15 & ~__ROR4__(v12, 13));
      HIDWORD(v12) = v12;
      v20 = v12 >> 29;
      v21 = v18 + v15 + (v17 & __ROR4__(v12, 29) | v16 & ~__ROR4__(v12, 29));
      v22 = a2[6];
      v23 = a2[7];
      v24 = v17 & ~__ROR4__(v21, 25);
      v26 = __PAIR64__(v21, __ROR4__(v21, 25));
      v25 = v20 & v26;
      LODWORD(v26) = v21;
      v27 = v26 >> 25;
      HIDWORD(v26) = v22 + v16 + (v25 | v24);
      LODWORD(v26) = HIDWORD(v26);
      v28 = v26 >> 21;
      LODWORD(v26) = v23 + v17 + (v27 & __ROR4__(HIDWORD(v26), 21) | v20 & ~__ROR4__(HIDWORD(v26), 21));
      HIDWORD(v26) = v26;
      v29 = v26 >> 13;
      v31 = a2[8];
      v30 = a2[9];
      v32 = v31 + v20 + (v28 & __ROR4__(v26, 13) | v27 & ~__ROR4__(v26, 13));
      v34 = __PAIR64__(v32, __ROR4__(v32, 29));
      v33 = v29 & v34;
      LODWORD(v34) = v32;
      v35 = v34 >> 29;
      v36 = v30 + v27 + (v33 | v28 & ~__ROR4__(v32, 29));
      v38 = a2[10];
      v37 = a2[11];
      HIDWORD(v34) = v36;
      LODWORD(v34) = v36;
      v39 = v34 >> 25;
      LODWORD(v34) = v38 + v28 + (v35 & __ROR4__(v36, 25) | v29 & ~__ROR4__(v36, 25));
      HIDWORD(v34) = v34;
      v40 = v34 >> 21;
      LODWORD(v34) = v37 + v29 + (v39 & __ROR4__(v34, 21) | v35 & ~__ROR4__(v34, 21));
      HIDWORD(v34) = v34;
      v41 = v34 >> 13;
      v43 = a2[12];
      v42 = a2[13];
      LODWORD(v34) = v43 + v35 + (v40 & __ROR4__(v34, 13) | v39 & ~__ROR4__(v34, 13));
      HIDWORD(v34) = v34;
      v44 = v34 >> 29;
      v45 = v42 + v39 + (v41 & __ROR4__(v34, 29) | v40 & ~__ROR4__(v34, 29));
      v47 = a2[14];
      v46 = a2[15];
      v48 = v47 + v40 + (v44 & __ROR4__(v45, 25) | v41 & ~__ROR4__(v45, 25));
      HIDWORD(v34) = v48;
      LODWORD(v34) = v48;
      v49 = v34 >> 21;
      v51 = __PAIR64__(v45, __ROR4__(v45, 25));
      v50 = v49 & v51;
      v52 = v46 + v41 + (v49 & v51 | v44 & ~__ROR4__(v48, 21));
      LODWORD(v51) = v45;
      v53 = v51 >> 25;
      v54 = __PAIR64__(v52, __ROR4__(v52, 13));
      v55 = (v49 | __ROR4__(v45, 25)) & v54 | v50;
      LODWORD(v54) = v52;
      v56 = v54 >> 13;
      v57 = *a2 + 1518500249 + v44 + v55;
      v58 = v19 + 1518500249 + v53;
      v59 = __PAIR64__(v57, __ROR4__(v57, 29));
      v60 = (v56 | __ROR4__(v48, 21)) & v59 | v56 & __ROR4__(v48, 21);
      LODWORD(v59) = v57;
      v61 = v59 >> 29;
      v62 = v58 + v60;
      v63 = __PAIR64__(v62, __ROR4__(v62, 27));
      v64 = (v61 | __ROR4__(v52, 13)) & v63 | v61 & __ROR4__(v52, 13);
      LODWORD(v63) = v62;
      v65 = v63 >> 27;
      v66 = v31 + 1518500249 + v49 + v64;
      v67 = v43 + 1518500249 + v56;
      v68 = __PAIR64__(v66, __ROR4__(v66, 23));
      v69 = (v65 | __ROR4__(v57, 29)) & v68 | v65 & __ROR4__(v57, 29);
      LODWORD(v68) = v66;
      v70 = v68 >> 23;
      v71 = v67 + v69;
      v72 = __PAIR64__(v71, __ROR4__(v71, 19));
      v73 = (v70 | __ROR4__(v62, 27)) & v72 | v70 & __ROR4__(v62, 27);
      v74 = v7 + 1518500249 + v61;
      LODWORD(v72) = v71;
      v75 = v72 >> 19;
      v76 = v74 + v73;
      v77 = v18 + 1518500249 + v65;
      v78 = __PAIR64__(v76, __ROR4__(v76, 29));
      v79 = (v75 | __ROR4__(v66, 23)) & v78 | v75 & __ROR4__(v66, 23);
      LODWORD(v78) = v76;
      v80 = v78 >> 29;
      v81 = v77 + v79;
      v82 = __PAIR64__(v81, __ROR4__(v81, 27));
      v83 = (v80 | __ROR4__(v71, 19)) & v82 | v80 & __ROR4__(v71, 19);
      v84 = v30 + 1518500249 + v70;
      LODWORD(v82) = v81;
      v85 = v82 >> 27;
      v86 = v84 + v83;
      v87 = v42 + 1518500249 + v75;
      v88 = __PAIR64__(v86, __ROR4__(v86, 23));
      v89 = (v85 | __ROR4__(v76, 29)) & v88 | v85 & __ROR4__(v76, 29);
      LODWORD(v88) = v86;
      v90 = v88 >> 23;
      v91 = v87 + v89;
      v92 = __PAIR64__(v91, __ROR4__(v91, 19));
      v93 = (v90 | __ROR4__(v81, 27)) & v92 | v90 & __ROR4__(v81, 27);
      v94 = v14 + 1518500249 + v80;
      LODWORD(v92) = v91;
      v95 = v92 >> 19;
      v96 = v94 + v93;
      v97 = v22 + 1518500249 + v85;
      v98 = __PAIR64__(v96, __ROR4__(v96, 29));
      v99 = (v95 | __ROR4__(v86, 23)) & v98 | v95 & __ROR4__(v86, 23);
      LODWORD(v98) = v96;
      v100 = v98 >> 29;
      v101 = v97 + v99;
      v102 = __PAIR64__(v101, __ROR4__(v101, 27));
      v103 = (v100 | __ROR4__(v91, 19)) & v102 | v100 & __ROR4__(v91, 19);
      v104 = v38 + 1518500249 + v90;
      LODWORD(v102) = v101;
      v105 = v102 >> 27;
      v106 = v104 + v103;
      v107 = v47 + 1518500249 + v95;
      v108 = __PAIR64__(v106, __ROR4__(v106, 23));
      v109 = (v105 | __ROR4__(v96, 29)) & v108 | v105 & __ROR4__(v96, 29);
      LODWORD(v108) = v106;
      v110 = v108 >> 23;
      v111 = v107 + v109;
      v112 = __PAIR64__(v111, __ROR4__(v111, 19));
      v113 = (v110 | __ROR4__(v101, 27)) & v112 | v110 & __ROR4__(v101, 27);
      v114 = v13 + 1518500249 + v100;
      LODWORD(v112) = v111;
      v115 = v112 >> 19;
      v116 = v114 + v113;
      v117 = v23 + 1518500249 + v105;
      v118 = __PAIR64__(v116, __ROR4__(v116, 29));
      v119 = (v115 | __ROR4__(v106, 23)) & v118 | v115 & __ROR4__(v106, 23);
      LODWORD(v118) = v116;
      v120 = v118 >> 29;
      v121 = v117 + v119;
      v122 = __PAIR64__(v121, __ROR4__(v121, 27));
      v123 = (v120 | __ROR4__(v111, 19)) & v122 | v120 & __ROR4__(v111, 19);
      v124 = v37 + 1518500249 + v110;
      LODWORD(v122) = v121;
      v125 = v122 >> 27;
      v126 = v124 + v123;
      v127 = v46 + 1518500249 + v115 + ((v125 | __ROR4__(v116, 29)) & __ROR4__(v126, 23) | v125 & __ROR4__(v116, 29));
      HIDWORD(v122) = v127;
      LODWORD(v122) = v127;
      v128 = v122 >> 19;
      v129 = v128 ^ __ROR4__(v126, 23);
      v130 = *a2 + 1859775393 + v120 + (v129 ^ __ROR4__(v121, 27));
      v131 = __PAIR64__(v126, __ROR4__(v130, 29));
      v132 = v31 + 1859775393 + v125 + (v129 ^ v131);
      LODWORD(v131) = v126;
      v133 = v19 + 1859775393 + (v131 >> 23);
      HIDWORD(v131) = v130;
      LODWORD(v131) = v130;
      v134 = v131 >> 29;
      v135 = __PAIR64__(v132, __ROR4__(v132, 23));
      v136 = v133 + (v134 ^ __ROR4__(v127, 19) ^ v135);
      v137 = v14 + 1859775393 + v134;
      LODWORD(v135) = v132;
      v138 = v135 >> 23;
      v139 = __PAIR64__(v136, __ROR4__(v136, 21));
      v140 = v43 + 1859775393 + v128 + (v138 ^ __ROR4__(v130, 29) ^ v139);
      LODWORD(v139) = v136;
      v141 = v139 >> 21;
      v142 = __PAIR64__(v140, __ROR4__(v140, 17));
      v143 = v137 + (v141 ^ __ROR4__(v132, 23) ^ v142);
      v144 = v38 + 1859775393 + v138;
      LODWORD(v142) = v140;
      v145 = v142 >> 17;
      v146 = __PAIR64__(v143, __ROR4__(v143, 29));
      v147 = v144 + (v145 ^ __ROR4__(v136, 21) ^ v146);
      v148 = v22 + 1859775393 + v141;
      LODWORD(v146) = v143;
      v149 = v146 >> 29;
      v150 = __PAIR64__(v147, __ROR4__(v147, 23));
      v151 = v148 + (v149 ^ __ROR4__(v140, 17) ^ v150);
      LODWORD(v150) = v147;
      v152 = v150 >> 23;
      v153 = __PAIR64__(v151, __ROR4__(v151, 21));
      v154 = v47 + 1859775393 + v145 + (v152 ^ __ROR4__(v143, 29) ^ v153);
      v155 = v7 + 1859775393 + v149;
      LODWORD(v153) = v151;
      v156 = v153 >> 21;
      v157 = __PAIR64__(v154, __ROR4__(v154, 17));
      v158 = v155 + (v156 ^ __ROR4__(v147, 23) ^ v157);
      v159 = v30 + 1859775393 + v152;
      LODWORD(v157) = v154;
      v160 = v157 >> 17;
      v161 = __PAIR64__(v158, __ROR4__(v158, 29));
      v162 = v159 + (v160 ^ __ROR4__(v151, 21) ^ v161);
      LODWORD(v161) = v158;
      v163 = v161 >> 29;
      v164 = __PAIR64__(v162, __ROR4__(v162, 23));
      v165 = v18 + 1859775393 + v156 + (v163 ^ __ROR4__(v154, 17) ^ v164);
      v166 = v42 + 1859775393 + v160;
      LODWORD(v164) = v162;
      v167 = v164 >> 23;
      v168 = __PAIR64__(v165, __ROR4__(v165, 21));
      v169 = v166 + (v167 ^ __ROR4__(v158, 29) ^ v168);
      v170 = v13 + 1859775393 + v163;
      LODWORD(v168) = v165;
      result = (v168 >> 21);
      v171 = __PAIR64__(v169, __ROR4__(v169, 17));
      v172 = v170 + (result ^ __ROR4__(v162, 23) ^ v171);
      v173 = v37 + 1859775393 + v167;
      LODWORD(v171) = v169;
      v174 = v171 >> 17;
      v175 = __PAIR64__(v172, __ROR4__(v172, 29));
      v176 = v173 + (v174 ^ __ROR4__(v165, 21) ^ v175);
      LODWORD(v175) = v172;
      v177 = v175 >> 29;
      v178 = __PAIR64__(v176, __ROR4__(v176, 23));
      v179 = v23 + 1859775393 + result + (v177 ^ __ROR4__(v169, 17) ^ v178);
      LODWORD(v178) = v176;
      v180 = v178 >> 23;
      v181 = __PAIR64__(v179, __ROR4__(v179, 21));
      v182 = v46 + 1859775393 + v174 + (v180 ^ __ROR4__(v172, 29) ^ v181);
      LODWORD(v181) = v179;
      v6 += v177;
      v4 += v181 >> 21;
      v3 += v180;
      HIDWORD(v181) = v182;
      LODWORD(v181) = v182;
      v5 += v181 >> 17;
      *v183 = v6;
      v183[1] = v5;
      v183[2] = v4;
      v183[3] = v3;
      a2 += 16;
      a3 = v184 - 1;
    }

    while (v184 != 1);
  }

  return result;
}

int MD4_Final(unsigned __int8 *md, MD4_CTX *c)
{
  data = c->data;
  num = c->num;
  *(c->data + num) = 0x80;
  v6 = num + 1;
  if (num >= 0x38)
  {
    bzero(data + v6, 63 - num);
    md4_block_data_order(c, data, 1);
    v6 = 0;
  }

  bzero(data + v6, 56 - v6);
  Nh = c->Nh;
  c->data[14] = c->Nl;
  c->data[15] = Nh;
  md4_block_data_order(c, data, 1);
  c->num = 0;
  *data = 0u;
  *(data + 1) = 0u;
  *(data + 2) = 0u;
  *(data + 3) = 0u;
  *md = c->A;
  *(md + 1) = c->B;
  *(md + 2) = c->C;
  *(md + 3) = c->D;
  return 1;
}

int MD4_Init(MD4_CTX *c)
{
  *&c->data[13] = 0u;
  *&c->data[6] = 0u;
  *&c->data[10] = 0u;
  *&c->Nl = 0u;
  *&c->data[2] = 0u;
  *&c->A = xmmword_23E23D460;
  return 1;
}

uint64_t ecdh_KDF_X9_63(char *a1, size_t a2, const void *a3, size_t a4, const void *a5, size_t a6, const EVP_MD *a7)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 > 0x40000000 || a2 > 0x40000000 || a6 > 0x40000000)
  {
    return 0;
  }

  v14 = a2;
  v16 = EVP_MD_CTX_new();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = EVP_MD_size(a7);
  if (EVP_DigestInit_ex(v17, a7, 0))
  {
    v19 = 1;
    do
    {
      d = bswap32(v19);
      if (!EVP_DigestUpdate(v17, a3, a4) || !EVP_DigestUpdate(v17, &d, 4uLL) || !EVP_DigestUpdate(v17, a5, a6))
      {
        break;
      }

      if (v14 < v18)
      {
        if (EVP_DigestFinal(v17, md, 0))
        {
          memcpy(a1, md, v14);
          explicit_bzero(md, v18);
        }

        break;
      }

      if (!EVP_DigestFinal(v17, a1, 0))
      {
        break;
      }

      v14 -= v18;
      if (!v14)
      {
        v20 = 1;
        goto LABEL_24;
      }

      a1 += v18;
      ++v19;
    }

    while (EVP_DigestInit_ex(v17, a7, 0));
  }

  v20 = 0;
LABEL_24:
  EVP_MD_CTX_free(v17);
  return v20;
}

void DES_cfb_encrypt(const unsigned __int8 *in, unsigned __int8 *out, int numbits, uint64_t length, DES_key_schedule *schedule, DES_cblock *ivec, int enc)
{
  v70 = *MEMORY[0x277D85DE8];
  if (numbits >= 0)
  {
    v7 = numbits;
  }

  else
  {
    v7 = numbits + 7;
  }

  v8 = numbits + 14;
  if (numbits + 7 >= 0)
  {
    v8 = numbits + 7;
  }

  if ((numbits - 65) < 0xFFFFFFC0)
  {
    return;
  }

  v11 = length;
  v15 = v7 >> 3;
  v16 = (v8 >> 3);
  v64 = numbits - (v7 & 0xFFFFFFF8);
  v17.i32[0] = *ivec;
  v18.i32[0] = *&(*ivec)[4];
  if (enc)
  {
    if (v16 <= length)
    {
      v19 = &v65 + v15;
      v60 = vnegq_s32(vdupq_n_s32(8 - v64));
      v62 = vdupq_n_s32(v64);
      while (1)
      {
        data = v17.i32[0];
        v69 = v18.i32[0];
        DES_encrypt1(&data, schedule, 1);
        v20 = 0;
        v21 = &in[v16];
        if (v16 > 4)
        {
          if (v16 <= 6)
          {
            if (v16 != 5)
            {
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (v16 == 7)
          {
            goto LABEL_23;
          }

          if (v16 == 8)
          {
            v25 = *--v21;
            v20 = v25 << 24;
LABEL_23:
            v26 = *--v21;
            v20 |= v26 << 16;
LABEL_24:
            v27 = *--v21;
            v20 |= v27 << 8;
LABEL_25:
            v28 = *--v21;
            v20 |= v28;
LABEL_26:
            v29 = *--v21;
            v24 = v29 << 24;
LABEL_27:
            v30 = *--v21;
            v22 = v24 | (v30 << 16);
LABEL_28:
            v31 = *--v21;
            v32 = v22 | (v31 << 8);
LABEL_29:
            v33 = *--v21;
            v23 = v32 | v33;
            goto LABEL_30;
          }

          v23 = 0;
        }

        else
        {
          if (v16 > 2)
          {
            v24 = 0;
            if (v16 != 3)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v16 == 1)
          {
            v32 = 0;
            goto LABEL_29;
          }

          v22 = 0;
          v23 = 0;
          if (v16 == 2)
          {
            goto LABEL_28;
          }
        }

LABEL_30:
        LODWORD(v34) = data ^ v23;
        v35 = v69 ^ v20;
        v36 = &out[v16];
        if (v16 <= 4)
        {
          if (v16 > 2)
          {
            if (v16 != 3)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          if (v16 != 1)
          {
            if (v16 != 2)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (v16 <= 6)
        {
          if (v16 != 5)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (v16 == 7)
        {
          goto LABEL_43;
        }

        if (v16 == 8)
        {
          *--v36 = HIBYTE(v35);
LABEL_43:
          *--v36 = BYTE2(v35);
LABEL_44:
          *--v36 = BYTE1(v35);
LABEL_45:
          *--v36 = v35;
LABEL_46:
          *--v36 = BYTE3(v34);
LABEL_47:
          *--v36 = BYTE2(v34);
LABEL_48:
          *--v36 = BYTE1(v34);
LABEL_49:
          *--v36 = v34;
        }

LABEL_50:
        if (numbits != 32)
        {
          if (numbits == 64)
          {
            v18.i32[0] = v34;
            LODWORD(v34) = v35;
          }

          else
          {
            v65 = __PAIR64__(v18.u32[0], v17.u32[0]);
            v66 = v34;
            v67 = v35;
            if (v64)
            {
              v37 = vmovl_u8(*v19);
              v38 = vmovl_u8(*(v19 + 1));
              v65 = vmovn_s16(vuzp1q_s16(vorrq_s8(vshlq_u32(vmovl_u16(*v38.i8), v60), vshlq_u32(vmovl_u16(*v37.i8), v62)), vorrq_s8(vshlq_u32(vmovl_high_u16(v38), v60), vshlq_u32(vmovl_high_u16(v37), v62))));
              v18.i32[0] = v65;
              LODWORD(v34) = HIDWORD(v65);
            }

            else
            {
              v18 = *v19;
              v65 = v18;
              v34 = HIDWORD(*&v18);
            }
          }
        }

        v17.i32[0] = v18.i32[0];
        v11 -= v16;
        in = &v21[v16];
        out = &v36[v16];
        v18.i32[0] = v34;
        if (v11 < v16)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

  if (v16 <= length)
  {
    v63 = &v65 + v15;
    v59 = vnegq_s32(vdupq_n_s32(8 - v64));
    v61 = vdupq_n_s32(v64);
    LODWORD(v34) = *&(*ivec)[4];
    while (1)
    {
      v39 = v17.i32[0];
      v40 = v34;
      data = v17.i32[0];
      v69 = v34;
      DES_encrypt1(&data, schedule, 1);
      v41 = 0;
      v42 = &in[v16];
      if (v16 > 4)
      {
        if (v16 <= 6)
        {
          if (v16 != 5)
          {
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        if (v16 == 7)
        {
          goto LABEL_78;
        }

        if (v16 == 8)
        {
          v45 = *--v42;
          v41 = v45 << 24;
LABEL_78:
          v46 = *--v42;
          v41 |= v46 << 16;
LABEL_79:
          v47 = *--v42;
          v41 |= v47 << 8;
LABEL_80:
          v48 = *--v42;
          v41 |= v48;
LABEL_81:
          v49 = *--v42;
          v50 = v49 << 24;
LABEL_82:
          v51 = *--v42;
          v43 = v50 | (v51 << 16);
LABEL_83:
          v52 = *--v42;
          v43 |= v52 << 8;
LABEL_84:
          v53 = *--v42;
          v44 = v43 | v53;
          goto LABEL_85;
        }

        v44 = 0;
      }

      else
      {
        if (v16 > 2)
        {
          if (v16 != 3)
          {
            goto LABEL_81;
          }

          v50 = 0;
          goto LABEL_82;
        }

        v43 = 0;
        if (v16 == 1)
        {
          goto LABEL_84;
        }

        v44 = 0;
        if (v16 == 2)
        {
          goto LABEL_83;
        }
      }

LABEL_85:
      if (numbits == 32)
      {
        v17.i32[0] = v40;
        LODWORD(v34) = v44;
      }

      else
      {
        v17.i32[0] = v44;
        LODWORD(v34) = v41;
        if (numbits != 64)
        {
          v65 = __PAIR64__(v40, v39);
          v66 = v44;
          v67 = v41;
          if (v64)
          {
            v54 = vmovl_u8(*v63);
            v55 = vmovl_u8(*(v63 + 1));
            v65 = vmovn_s16(vuzp1q_s16(vorrq_s8(vshlq_u32(vmovl_u16(*v55.i8), v59), vshlq_u32(vmovl_u16(*v54.i8), v61)), vorrq_s8(vshlq_u32(vmovl_high_u16(v55), v59), vshlq_u32(vmovl_high_u16(v54), v61))));
            v17.i32[0] = v65;
            LODWORD(v34) = HIDWORD(v65);
          }

          else
          {
            v17 = *v63;
            v65 = v17;
            v34 = HIDWORD(*&v17);
          }
        }
      }

      v56 = data ^ v44;
      v57 = &out[v16];
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
          if (v16 != 3)
          {
            goto LABEL_107;
          }

          goto LABEL_108;
        }

        if (v16 != 1)
        {
          if (v16 != 2)
          {
            goto LABEL_111;
          }

          goto LABEL_109;
        }

        goto LABEL_110;
      }

      v58 = v69 ^ v41;
      if (v16 <= 6)
      {
        if (v16 != 5)
        {
          goto LABEL_105;
        }

        goto LABEL_106;
      }

      if (v16 == 7)
      {
        goto LABEL_104;
      }

      if (v16 == 8)
      {
        *--v57 = HIBYTE(v58);
LABEL_104:
        *--v57 = BYTE2(v58);
LABEL_105:
        *--v57 = BYTE1(v58);
LABEL_106:
        *--v57 = v58;
LABEL_107:
        *--v57 = HIBYTE(v56);
LABEL_108:
        *--v57 = BYTE2(v56);
LABEL_109:
        *--v57 = BYTE1(v56);
LABEL_110:
        *--v57 = v56;
      }

LABEL_111:
      v11 -= v16;
      in = &v42[v16];
      out = &v57[v16];
      if (v11 < v16)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_62:
  LODWORD(v34) = *&(*ivec)[4];
LABEL_63:
  *ivec = v17.i16[0];
  (*ivec)[2] = v17.u8[2];
  (*ivec)[3] = v17.u8[3];
  *&(*ivec)[4] = v34;
  (*ivec)[6] = BYTE2(v34);
  (*ivec)[7] = BYTE3(v34);
}

int ENGINE_ctrl(ENGINE *e, int cmd, uint64_t i, void *p, void (*f)(void))
{
  if (!e)
  {
    v14 = 67;
    v15 = 198;
    goto LABEL_14;
  }

  v8 = *&cmd;
  CRYPTO_lock(9, 30, 0, 0);
  v10 = *(e + 45);
  CRYPTO_lock(10, 30, 0, 0);
  if (v10 <= 0)
  {
    v14 = 130;
    v15 = 206;
    goto LABEL_14;
  }

  v11 = *(e + 17);
  LODWORD(v12) = v11 != 0;
  if ((v8 - 11) >= 8)
  {
    if (v8 == 10)
    {
      return v12;
    }

    if (v11)
    {
LABEL_21:

      LODWORD(v12) = v11(e, v8, i, p, f);
      return v12;
    }

    v14 = 120;
    v15 = 236;
LABEL_14:
    ERR_put_error(38, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_ctrl.c", v15);
    goto LABEL_15;
  }

  if (!v11)
  {
    v16 = 120;
    v17 = 225;
LABEL_18:
    ERR_put_error(38, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_ctrl.c", v17);
    LODWORD(v12) = -1;
    return v12;
  }

  if ((*(e + 176) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (v8 == 11)
  {
    v13 = *(e + 21);
    if (v13 && *v13)
    {
      if (*(v13 + 8))
      {
        LODWORD(v12) = *v13;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      return v12;
    }

LABEL_15:
    LODWORD(v12) = 0;
    return v12;
  }

  v19 = v8 == 17 || v8 == 15 || v8 == 13;
  if (v19 && !p)
  {
    v16 = 67;
    v17 = 128;
    goto LABEL_18;
  }

  v20 = *(e + 21);
  if (v8 == 13)
  {
    if (v20 && *v20)
    {
      do
      {
        v21 = *(v20 + 8);
        if (!v21)
        {
          break;
        }

        if (!strcmp(v21, p))
        {
          LODWORD(v12) = *v20;
          return v12;
        }

        v22 = *(v20 + 32);
        v20 += 32;
      }

      while (v22);
    }

    v16 = 137;
    v17 = 136;
    goto LABEL_18;
  }

  if (!v20)
  {
    goto LABEL_56;
  }

  v23 = *v20;
  if (*v20)
  {
    v24 = 0;
    v25 = (v20 + 32);
    do
    {
      if (v23 >= i)
      {
        break;
      }

      if (!*(v25 - 3))
      {
        break;
      }

      ++v24;
      v26 = *v25;
      v25 += 8;
      v23 = v26;
    }

    while (v26);
  }

  else
  {
    v24 = 0;
  }

  if (v23 != i)
  {
LABEL_56:
    v16 = 138;
    v17 = 145;
    goto LABEL_18;
  }

  if (v8 > 15)
  {
    if (v8 != 16)
    {
      if (v8 == 17)
      {
        v33 = v24;
        v34 = v20 + 32 * v24;
        v35 = *(v34 + 16);
        if (!v35)
        {
          LODWORD(v12) = 0;
          *p = 0;
          return v12;
        }

        v36 = strlen(*(v34 + 16));
        v30 = snprintf(p, v36 + 1, "%s", v35);
        v31 = *(*(e + 21) + 32 * v33 + 16);
        goto LABEL_72;
      }

      if (v8 == 18)
      {
        LODWORD(v12) = *(v20 + 32 * v24 + 24);
        return v12;
      }

LABEL_68:
      v16 = 110;
      v17 = 188;
      goto LABEL_18;
    }

    v12 = *(v20 + 32 * v24 + 16);
    if (v12)
    {
      LODWORD(v12) = strlen(v12);
    }
  }

  else
  {
    if (v8 != 12)
    {
      if (v8 == 14)
      {
        LODWORD(v12) = strlen(*(v20 + 32 * v24 + 8));
        return v12;
      }

      if (v8 == 15)
      {
        v27 = v24;
        v28 = *(v20 + 32 * v24 + 8);
        v29 = strlen(v28);
        v30 = snprintf(p, v29 + 1, "%s", v28);
        v31 = *(*(e + 21) + 32 * v27 + 8);
LABEL_72:
        if (strlen(v31) + 1 <= v30)
        {
          LODWORD(v12) = -1;
        }

        else
        {
          LODWORD(v12) = v30;
        }

        return v12;
      }

      goto LABEL_68;
    }

    v32 = v20 + 32 * v24;
    if (!*(v32 + 32))
    {
      goto LABEL_15;
    }

    if (*(v32 + 40))
    {
      LODWORD(v12) = *(v32 + 32);
    }

    else
    {
      LODWORD(v12) = 0;
    }
  }

  return v12;
}

int ENGINE_cmd_is_executable(ENGINE *e, int cmd)
{
  v2 = ENGINE_ctrl(e, 18, cmd, 0, 0);
  if ((v2 & 0x80000000) == 0)
  {
    return (v2 & 7) != 0;
  }

  ERR_put_error(38, 4095, 138, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_ctrl.c", 249);
  return 0;
}

int ENGINE_ctrl_cmd(ENGINE *e, const char *cmd_name, uint64_t i, void *p, void (*f)(void), int cmd_optional)
{
  if (!e || !cmd_name)
  {
    v13 = 67;
    v14 = 266;
LABEL_7:
    ERR_put_error(38, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_ctrl.c", v14);
    return 0;
  }

  if (*(e + 17))
  {
    v11 = ENGINE_ctrl(e, 13, 0, cmd_name, 0);
    if (v11 > 0)
    {
      return ENGINE_ctrl(e, v11, i, p, f) > 0;
    }
  }

  if (!cmd_optional)
  {
    v13 = 137;
    v14 = 282;
    goto LABEL_7;
  }

  ERR_clear_error();
  return 1;
}

int ENGINE_ctrl_cmd_string(ENGINE *e, const char *cmd_name, const char *arg, int cmd_optional)
{
  if (!e || !cmd_name)
  {
    v10 = 67;
    v11 = 303;
    goto LABEL_13;
  }

  if (!*(e + 17) || (v7 = ENGINE_ctrl(e, 13, 0, cmd_name, 0), v7 <= 0))
  {
    if (cmd_optional)
    {
      ERR_clear_error();
      return 1;
    }

    v10 = 137;
    v11 = 319;
    goto LABEL_13;
  }

  v8 = v7;
  if (!ENGINE_cmd_is_executable(e, v7))
  {
    v10 = 134;
    v11 = 323;
    goto LABEL_13;
  }

  v9 = ENGINE_ctrl(e, 18, v8, 0, 0);
  if (v9 < 0)
  {
    v10 = 110;
    v11 = 330;
    goto LABEL_13;
  }

  if ((v9 & 4) != 0)
  {
    if (arg)
    {
      v10 = 136;
      v11 = 337;
      goto LABEL_13;
    }

    v13 = e;
    v14 = v8;
    v15 = 0;
    goto LABEL_24;
  }

  if (!arg)
  {
    v10 = 135;
    v11 = 351;
    goto LABEL_13;
  }

  if ((v9 & 2) != 0)
  {
    v13 = e;
    v14 = v8;
    v15 = 0;
    v16 = arg;
    return ENGINE_ctrl(v13, v14, v15, v16, 0) > 0;
  }

  if (v9)
  {
    __endptr = 0;
    v17 = strtol(arg, &__endptr, 10);
    if (__endptr == arg || *__endptr)
    {
      v10 = 133;
      v11 = 371;
      goto LABEL_13;
    }

    v15 = v17;
    v13 = e;
    v14 = v8;
LABEL_24:
    v16 = 0;
    return ENGINE_ctrl(v13, v14, v15, v16, 0) > 0;
  }

  v10 = 110;
  v11 = 366;
LABEL_13:
  ERR_put_error(38, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_ctrl.c", v11);
  return 0;
}

int ASN1_PRINTABLE_type(const unsigned __int8 *s, int max)
{
  if (!s || max < 1)
  {
    return 19;
  }

  v2 = 0;
  v3 = 0;
  v4 = max + 1;
  do
  {
    v5 = *s;
    if (!*s)
    {
      break;
    }

    if ((v5 - 97) >= 0x1A && (v5 - 43) >= 0x10u)
    {
      v6 = v5 != 32 && (v5 - 65) >= 0x1Au;
      if (v6 && (v5 > 0x3F || ((1 << v5) & 0xA000038000000000) == 0))
      {
        v3 = 1;
      }
    }

    ++s;
    if (v5 < 0)
    {
      v2 = 1;
    }

    --v4;
  }

  while (v4 > 1);
  if (v3)
  {
    result = 22;
  }

  else
  {
    result = 19;
  }

  if (v2)
  {
    return 20;
  }

  return result;
}

int ASN1_UNIVERSALSTRING_to_string(ASN1_UNIVERSALSTRING *s)
{
  if (s->type != 28)
  {
    return 0;
  }

  length = s->length;
  if ((s->length & 3) != 0)
  {
    return 0;
  }

  data = s->data;
  if (length >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = &data[v4];
      if (data[v4] || v5[1] || v5[2])
      {
        return 0;
      }

      v4 += 4;
      if (v4 >= length)
      {
        if (length >= 4)
        {
          v6 = 3;
          do
          {
            *data++ = s->data[v6];
            v6 += 4;
          }

          while (v6 < s->length);
        }

        break;
      }
    }
  }

  *data = 0;
  v7 = s->length;
  s->length /= 4;
  s->type = ASN1_PRINTABLE_type(s->data, v7 / 4);
  return 1;
}

int ASN1_TYPE_get(ASN1_TYPE *a)
{
  result = a->type;
  if ((result | 4) != 5 && !a->value.ptr)
  {
    return 0;
  }

  return result;
}

void ASN1_TYPE_set(ASN1_TYPE *a, int type, void *value)
{
  pval = a;
  if (a->value.ptr)
  {
    ASN1_primitive_free(&pval, 0);
    a = pval;
  }

  a->type = type;
  if (type == 1)
  {
    if (value)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    a->value.BOOLean = v5;
  }

  else
  {
    a->value.ptr = value;
  }
}

int ASN1_TYPE_set1(ASN1_TYPE *a, int type, const void *value)
{
  if (type == 1 || !value)
  {
    goto LABEL_10;
  }

  if (type != 6)
  {
    v5 = ASN1_STRING_dup(value);
    if (!v5)
    {
      return v5;
    }

    value = v5;
LABEL_10:
    ASN1_TYPE_set(a, type, value);
LABEL_11:
    LODWORD(v5) = 1;
    return v5;
  }

  v5 = OBJ_dup(value);
  if (v5)
  {
    v6 = v5;
    pval = a;
    if (a->value.ptr)
    {
      ASN1_primitive_free(&pval, 0);
      a = pval;
    }

    a->type = 6;
    a->value.ptr = v6;
    goto LABEL_11;
  }

  return v5;
}

uint64_t ASN1_TYPE_cmp(const ASN1_OBJECT **a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *a1;
  if (*a1 != *a2)
  {
    return 0xFFFFFFFFLL;
  }

  switch(v3)
  {
    case 1:
      return (*(a1 + 2) - *(a2 + 8));
    case 5:
      return 0;
    case 6:
      return OBJ_cmp(a1[1], *(a2 + 8));
    default:
      return ASN1_STRING_cmp(a1[1], *(a2 + 8));
  }
}

int ASN1_TYPE_set_octetstring(ASN1_TYPE *a, unsigned __int8 *data, int len)
{
  v6 = ASN1_OCTET_STRING_new();
  if (v6)
  {
    v7 = v6;
    if (ASN1_STRING_set(v6, data, len))
    {
      pval = a;
      if (a->value.ptr)
      {
        ASN1_primitive_free(&pval, 0);
        a = pval;
      }

      a->type = 4;
      a->value.ptr = v7;
      LODWORD(v6) = 1;
    }

    else
    {
      ASN1_OCTET_STRING_free(v7);
      LODWORD(v6) = 0;
    }
  }

  return v6;
}

int ASN1_TYPE_get_octetstring(ASN1_TYPE *a, unsigned __int8 *data, int max_len)
{
  if (a->type == 4 && (ptr = a->value.ptr) != 0)
  {
    v7 = ASN1_STRING_data(ptr);
    v8 = ASN1_STRING_length(a->value.asn1_string);
    v9 = v8;
    if (v8 >= max_len)
    {
      v10 = max_len;
    }

    else
    {
      v10 = v8;
    }

    memcpy(data, v7, v10);
  }

  else
  {
    ERR_put_error(13, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_type.c", 225);
    return -1;
  }

  return v9;
}

int ASN1_TYPE_set_int_octetstring(ASN1_TYPE *a, uint64_t num, unsigned __int8 *data, int len)
{
  v8 = ASN1_item_new(&ASN1_INT_OCTETSTRING_it);
  v9 = v8;
  if (v8 && ASN1_INTEGER_set(*v8, num) && ASN1_OCTET_STRING_set(v9[1], data, len) && (v10 = ASN1_item_pack(v9, &ASN1_INT_OCTETSTRING_it, 0)) != 0)
  {
    v11 = v10;
    pval = a;
    if (a->value.ptr)
    {
      ASN1_primitive_free(&pval, 0);
      a = pval;
    }

    a->type = 16;
    a->value.ptr = v11;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  ASN1_item_free(v9, &ASN1_INT_OCTETSTRING_it);
  ASN1_STRING_free(0);
  return v12;
}

int ASN1_TYPE_get_int_octetstring(ASN1_TYPE *a, uint64_t *num, unsigned __int8 *data, int max_len)
{
  ptr = a->value.ptr;
  v6 = a->type != 16 || ptr == 0;
  if (v6 || (v10 = ASN1_item_unpack(ptr, &ASN1_INT_OCTETSTRING_it)) == 0)
  {
    ASN1_item_free(0, &ASN1_INT_OCTETSTRING_it);
LABEL_15:
    ERR_put_error(13, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_type.c", 299);
    return -1;
  }

  v11 = v10;
  if (num)
  {
    *num = ASN1_INTEGER_get(*v10);
  }

  if (data)
  {
    v12 = ASN1_STRING_length(v11[1]);
    if (v12 < max_len)
    {
      max_len = v12;
    }

    v13 = ASN1_STRING_data(v11[1]);
    memcpy(data, v13, max_len);
  }

  v14 = ASN1_STRING_length(v11[1]);
  ASN1_item_free(v11, &ASN1_INT_OCTETSTRING_it);
  if (v14 == -1)
  {
    goto LABEL_15;
  }

  return v14;
}

ASN1_VALUE *ASN1_TYPE_pack_sequence(ASN1_ITEM *it, void *obj, ASN1_VALUE **a3)
{
  v4 = ASN1_item_pack(obj, it, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!a3)
  {
    v6 = ASN1_item_new(&ASN1_ANY_it);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    ASN1_OCTET_STRING_free(v5);
    return 0;
  }

  v6 = *a3;
  if (!*a3)
  {
    v7 = ASN1_item_new(&ASN1_ANY_it);
    if (v7)
    {
      v6 = v7;
      *a3 = v7;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_7:
  pval = v6;
  v8 = v6;
  if (*(v6 + 1))
  {
    ASN1_primitive_free(&pval, 0);
    v8 = pval;
  }

  *v8 = 16;
  *(v8 + 1) = v5;
  return v6;
}

void *ASN1_TYPE_unpack_sequence(ASN1_ITEM *it, uint64_t a2)
{
  if (a2 && *a2 == 16 && (v3 = *(a2 + 8)) != 0)
  {
    return ASN1_item_unpack(v3, it);
  }

  else
  {
    return 0;
  }
}

BN_MONT_CTX *BN_MONT_CTX_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040E9A11DBBuLL);
  v1 = v0;
  if (v0)
  {
    v0->Ni.neg = 1;
    BN_init(&v0->RR);
    BN_init(&v1->N);
  }

  return v1;
}

void BN_MONT_CTX_free(BN_MONT_CTX *mont)
{
  if (mont)
  {
    BN_free(&mont->RR);
    BN_free(&mont->N);
    if (mont->Ni.neg)
    {

      free(mont);
    }
  }
}

BN_MONT_CTX *__cdecl BN_MONT_CTX_copy(BN_MONT_CTX *to, BN_MONT_CTX *from)
{
  v2 = to;
  if (to != from)
  {
    if (bn_copy(&to->RR, &from->RR) && bn_copy(&v2->N, &from->N))
    {
      v2->ri = from->ri;
      v2->Ni.d = from->Ni.d;
      *&v2->Ni.top = *&from->Ni.top;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

int BN_MONT_CTX_set(BN_MONT_CTX *mont, const BIGNUM *mod, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v6 = BN_CTX_get(ctx);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = BN_CTX_get(ctx);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  if (BN_is_zero(mod) || !bn_copy(&mont->N, mod))
  {
    goto LABEL_6;
  }

  mont->N.neg = 0;
  v16 = BN_num_bits(mod);
  v17 = v16 + 63;
  if (v16 < -63)
  {
    v17 = v16 + 126;
  }

  v18 = v17 >> 6;
  v19 = v17 & 0xFFFFFFC0;
  mont->ri = v19;
  if (v19 > v18 << 7)
  {
    goto LABEL_6;
  }

  BN_zero(v11);
  if (!BN_set_bit(v11, 64) || !bn_wexpand(v7, 2uLL) || !BN_set_word(v7, *mod->d) || !BN_mod_inverse_ct(v13, v11, v7, ctx) || !BN_lshift(v9, v13, 64) || BN_is_zero(v9) && !BN_set_bit(v9, 64))
  {
    goto LABEL_6;
  }

  if (!BN_sub_word(v9, 1uLL) || !BN_div_ct(v9, 0, v9, v7, ctx))
  {
    goto LABEL_6;
  }

  mont->Ni.d = 0;
  *&mont->Ni.top = 0;
  if (v9->top >= 1)
  {
    mont->Ni.d = *v9->d;
  }

  BN_zero(&mont->RR);
  if (BN_set_bit(&mont->RR, 2 * mont->ri))
  {
    v14 = BN_mod_ct(&mont->RR, &mont->RR, &mont->N, ctx) != 0;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  BN_CTX_end(ctx);
  return v14;
}

BN_MONT_CTX *__cdecl BN_MONT_CTX_set_locked(BN_MONT_CTX **pmont, int lock, const BIGNUM *mod, BN_CTX *ctx)
{
  CRYPTO_lock(5, lock, 0, 0);
  v8 = *pmont;
  CRYPTO_lock(6, lock, 0, 0);
  if (!v8)
  {
    v9 = BN_MONT_CTX_new();
    v8 = v9;
    if (v9 && BN_MONT_CTX_set(v9, mod, ctx))
    {
      CRYPTO_lock(9, lock, 0, 0);
      if (*pmont)
      {
        BN_MONT_CTX_free(v8);
        v8 = *pmont;
      }

      else
      {
        *pmont = v8;
      }

      CRYPTO_lock(10, lock, 0, 0);
    }

    else
    {
      BN_MONT_CTX_free(v8);
      return 0;
    }
  }

  return v8;
}

unint64_t bn_montgomery_multiply_words(unint64_t *a1, uint64_t *a2, uint64_t a3, const unint64_t *a4, unint64_t *a5, uint64_t a6, unsigned int a7)
{
  v7 = a7;
  v8 = a5;
  if (a7 < 1)
  {
    v16 = 0;
  }

  else
  {
    v14 = 8 * a7;
    bzero(a5, v14);
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    do
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = *(a3 + 8 * v15);
      v22 = (*v8 + v21 * v17) * a6;
      do
      {
        v23 = a2[v18 / 8];
        v24 = v8[v18 / 8];
        v25 = v23 * v21;
        v26 = HIDWORD(v23) * v21;
        v27 = HIDWORD(v26) + HIDWORD(v23) * HIDWORD(v21);
        v28 = v25 | (v26 << 32);
        v29 = v25 & (v26 << 32);
        v30 = (v26 << 32) + v23 * v21;
        v31 = v28 & ~v30 | v29;
        v32 = v23 * HIDWORD(v21);
        v33 = v30 | (v32 << 32);
        v34 = v30 & (v32 << 32);
        v35 = v30 + (v32 << 32);
        v36 = v27 + HIDWORD(v32) + (v31 >> 63) + ((v33 & ~v35 | v34) >> 63);
        v37 = v35 | v24;
        v38 = v35 & v24;
        v39 = v35 + v24;
        v40 = v36 + ((v37 & ~v39 | v38) >> 63);
        v41 = v39 | v20;
        v42 = v39 & v20;
        v43 = v39 + v20;
        v20 = v40 + ((v41 & ~v43 | v42) >> 63);
        v44 = a4[v18 / 8];
        v45 = v44 * v22;
        v46 = HIDWORD(v44) * v22;
        v47 = HIDWORD(v46) + HIDWORD(v44) * HIDWORD(v22);
        v48 = v45 | (v46 << 32);
        v49 = v45 & (v46 << 32);
        v50 = (v46 << 32) + v44 * v22;
        v51 = v48 & ~v50 | v49;
        v52 = v44 * HIDWORD(v22);
        v53 = v50 | (v52 << 32);
        v54 = v50 & (v52 << 32);
        v55 = v50 + (v52 << 32);
        v56 = v47 + HIDWORD(v52) + (v51 >> 63) + ((v53 & ~v55 | v54) >> 63);
        v57 = v55 | v43;
        v58 = v55 & v43;
        v59 = v55 + v43;
        v60 = v56 + ((v57 & ~v59 | v58) >> 63);
        v61 = v59 | v19;
        v62 = v59 & v19;
        v63 = v59 + v19;
        v19 = v60 + ((v61 & ~v63 | v62) >> 63);
        v8[v18 / 8] = v63;
        v18 += 8;
      }

      while (v14 != v18);
      v64 = v19 | v20;
      v65 = v19 & v20;
      v66 = v19 + v20;
      v67 = v64 & ~v66 | v65;
      v68 = v66 | v16;
      v69 = v66 & v16;
      v70 = v66 + v16;
      v16 = ((v68 & ~v70 | v69) >> 63) + (v67 >> 63);
      v8[v7] = v70;
      ++v8;
      ++v15;
    }

    while (v15 != v7);
  }

  v8[v7] = v16;
  v71 = v16 != 0;
  result = bn_sub_words(a1, v8, a4, v7);
  if (v7 >= 1)
  {
    do
    {
      v73 = *v8++;
      *a1 = v73 & (v71 - result) | *a1 & ~(v71 - result);
      ++a1;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t bn_montgomery_multiply(BIGNUM *a1, uint64_t a2, uint64_t a3, uint64_t a4, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = *(a4 + 40);
  if (v10 >= 2 && *(a2 + 8) == v10 && *(a3 + 8) == v10 && bn_wexpand(a1, v10) && (v11 = BN_CTX_get(ctx)) != 0 && (p_d = &v11->d, bn_wexpand(v11, (2 * *(a4 + 40) + 2))))
  {
    bn_montgomery_multiply_words(a1->d, *a2, *a3, *(a4 + 32), *p_d, *(a4 + 56), *(a4 + 40));
    a1->top = *(a4 + 40);
    bn_correct_top(a1);
    BN_set_negative(a1, *(a3 + 16) ^ *(a2 + 16));
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  BN_CTX_end(ctx);
  return v13;
}

uint64_t bn_mod_mul_montgomery(BIGNUM *a1, const BIGNUM *a2, const BIGNUM *a3, uint64_t a4, BN_CTX *ctx)
{
  v10 = *(a4 + 40);
  if (v10 < 2 || a2->top != v10 || a3->top != v10)
  {
    BN_CTX_start(ctx);
    v12 = BN_CTX_get(ctx);
    if (v12)
    {
      v13 = v12;
      if (a2 == a3)
      {
        if (BN_sqr(v12, a2, ctx))
        {
          goto LABEL_10;
        }
      }

      else if (BN_mul(v12, a2, a3, ctx))
      {
LABEL_10:
        v14 = bn_montgomery_reduce(a1, v13, a4);
LABEL_13:
        BN_CTX_end(ctx);
        return v14;
      }
    }

    v14 = 0;
    goto LABEL_13;
  }

  return bn_montgomery_multiply(a1, a2, a3, a4, ctx);
}

int BN_from_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (v9 = v8, bn_copy(v8, a)))
  {
    v10 = bn_montgomery_reduce(r, v9, mont);
  }

  else
  {
    v10 = 0;
  }

  BN_CTX_end(ctx);
  return v10;
}

uint64_t bn_montgomery_reduce(BIGNUM *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (!v4)
  {
    BN_zero(a1);
    return 1;
  }

  result = bn_wexpand(a1, *(a3 + 40));
  if (!result)
  {
    return result;
  }

  v8 = 2 * v4;
  if (2 * v4 < v4)
  {
    return 0;
  }

  result = bn_wexpand(a2, (2 * v4));
  if (result)
  {
    v9 = *(a2 + 2);
    v10 = *a2;
    if (v9 < v8)
    {
      bzero((v10 + 8 * v9), 8 * (v8 + ~v9) + 8);
    }

    if (v4 < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = *(a3 + 56);
      v14 = 8 * v4;
      do
      {
        v15 = bn_mul_add_words((v10 + v11), *(a3 + 32), v4, *(v10 + v11) * v13);
        v10 = *a2;
        v16 = *a2 + v14;
        v17 = *(v16 + v11);
        v18 = v17 | v15;
        v19 = v17 & v15;
        v20 = v17 + v15;
        v21 = v18 & ~v20 | v19;
        v22 = v20 | v12;
        v23 = v20 & v12;
        v24 = v20 + v12;
        v12 = ((v22 & ~v24 | v23) >> 63) + (v21 >> 63);
        *(v16 + v11) = v24;
        v11 += 8;
      }

      while (v14 != v11);
    }

    v25 = (v10 + 8 * v4);
    v26 = bn_sub_words(a1->d, v25, *(a3 + 32), v4);
    if (v4 >= 1)
    {
      d = a1->d;
      v28 = v4;
      do
      {
        v29 = *v25++;
        *d = v29 & (v12 - v26) | *d & ~(v12 - v26);
        ++d;
        --v28;
      }

      while (v28);
    }

    a1->top = v4;
    bn_correct_top(a1);
    BN_set_negative(a1, *(a3 + 48) ^ *(a2 + 4));
    return 1;
  }

  return result;
}

uint64_t do_dh_print(BIO *a1, uint64_t a2, int a3, int a4)
{
  if (a4 == 2)
  {
    v8 = *(a2 + 40);
LABEL_4:
    v10 = *(a2 + 32);
    v9 = v8;
    goto LABEL_5;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a4 >= 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  v11 = *(a2 + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = BN_num_bits(v11);
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  if ((v12 + 14) < 0xF)
  {
LABEL_9:
    v14 = 0;
    v15 = 67;
LABEL_43:
    ERR_put_error(5, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 382);
    v28 = 0;
    goto LABEL_44;
  }

  v16 = v13 >> 3;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = BN_num_bits(v17);
    v19 = v18 + 7;
    if (v18 < -7)
    {
      v19 = v18 + 14;
    }

    if (v16 <= v19 >> 3)
    {
      v16 = v19 >> 3;
    }
  }

  if (v10)
  {
    v20 = BN_num_bits(v10);
    v21 = v20 + 7;
    if (v20 < -7)
    {
      v21 = v20 + 14;
    }

    if (v16 <= v21 >> 3)
    {
      v16 = v21 >> 3;
    }
  }

  if (v9)
  {
    v22 = BN_num_bits(v9);
    v23 = v22 + 7;
    if (v22 < -7)
    {
      v23 = v22 + 14;
    }

    if (v16 <= v23 >> 3)
    {
      v16 = v23 >> 3;
    }
  }

  v24 = v16;
  v25 = "PKCS#3 DH Parameters";
  if (a4 == 1)
  {
    v25 = "PKCS#3 DH Public-Key";
  }

  if (a4 == 2)
  {
    v26 = "PKCS#3 DH Private-Key";
  }

  else
  {
    v26 = v25;
  }

  v14 = malloc_type_malloc(v24 + 10, 0xFA452FBAuLL);
  if (!v14)
  {
    v15 = 65;
    goto LABEL_43;
  }

  if (!BIO_indent(a1, a3, 128) || (v27 = BN_num_bits(*(a2 + 8)), BIO_printf(a1, "%s: (%d bit)\n", v26, v27) < 1) || !ASN1_bn_print(a1, "private-key:", v9, v14, a3 + 4) || !ASN1_bn_print(a1, "public-key:", v10, v14, a3 + 4) || !ASN1_bn_print(a1, "prime:", *(a2 + 8), v14, a3 + 4) || !ASN1_bn_print(a1, "generator:", *(a2 + 16), v14, a3 + 4) || *(a2 + 24) && (!BIO_indent(a1, a3 + 4, 128) || BIO_printf(a1, "recommended-private-length: %d bits\n", *(a2 + 24)) <= 0))
  {
    v15 = 7;
    goto LABEL_43;
  }

  v28 = 1;
LABEL_44:
  free(v14);
  return v28;
}

int DHparams_print_fp(FILE *fp, const DH *x)
{
  v4 = BIO_s_file();
  v5 = BIO_new(v4);
  if (v5)
  {
    v6 = v5;
    BIO_ctrl(v5, 106, 0, fp);
    v7 = do_dh_print(v6, x, 4, 0);
    BIO_free(v6);
    return v7;
  }

  else
  {
    ERR_put_error(5, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 484);
    return 0;
  }
}

uint64_t dh_pub_decode(EVP_PKEY *a1, uint64_t a2)
{
  pp = 0;
  in = 0;
  ppval = 0;
  *pptype = 0;
  algor = 0;
  result = X509_PUBKEY_get0_param(0, &in, &pptype[1], &algor, a2);
  if (result)
  {
    X509_ALGOR_get0(0, pptype, &ppval, algor);
    if (pptype[0] == 16)
    {
      pp = *(ppval + 1);
      v4 = d2i_DHparams(0, &pp, *ppval);
      if (v4)
      {
        v5 = d2i_ASN1_INTEGER(0, &in, pptype[1]);
        if (v5)
        {
          v6 = v5;
          v7 = ASN1_INTEGER_to_BN(v5, 0);
          v4->pub_key = v7;
          if (v7)
          {
            ASN1_INTEGER_free(v6);
            EVP_PKEY_assign(a1, 28, v4);
            return 1;
          }

          ERR_put_error(5, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 114);
          ASN1_INTEGER_free(v6);
          goto LABEL_11;
        }

        v8 = 108;
      }

      else
      {
        v8 = 103;
      }

      ERR_put_error(5, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", v8);
    }

    else
    {
      ERR_put_error(5, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 94);
      v4 = 0;
    }

LABEL_11:
    DH_free(v4);
    return 0;
  }

  return result;
}

uint64_t dh_pub_encode(uint64_t a1, uint64_t a2)
{
  out = 0;
  v3 = *(a2 + 32);
  v4 = ASN1_STRING_new();
  v5 = v4;
  if (!v4)
  {
    v12 = 143;
LABEL_10:
    ERR_put_error(5, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", v12);
    goto LABEL_11;
  }

  v6 = i2d_DHparams(v3, &v4->data);
  v5->length = v6;
  if (v6 <= 0)
  {
    v12 = 149;
    goto LABEL_10;
  }

  v7 = BN_to_ASN1_INTEGER(v3->pub_key, 0);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = i2d_ASN1_INTEGER(v7, &out);
  ASN1_INTEGER_free(v8);
  if (v9 <= 0)
  {
    v12 = 163;
    goto LABEL_10;
  }

  v10 = OBJ_nid2obj(28);
  if (X509_PUBKEY_set0_param(a1, v10, 16, v5, out, v9))
  {
    return 1;
  }

LABEL_11:
  free(out);
  ASN1_STRING_free(v5);
  return 0;
}

BOOL dh_pub_cmp(uint64_t a1, uint64_t a2)
{
  result = dh_cmp_parameters(a1, a2);
  if (result)
  {
    return BN_cmp(*(*(a2 + 32) + 32), *(*(a1 + 32) + 32)) == 0;
  }

  return result;
}

uint64_t dh_priv_decode(EVP_PKEY *a1, uint64_t a2)
{
  pp = 0;
  in = 0;
  ppval = 0;
  *pptype = 0;
  algor = 0;
  result = PKCS8_pkey_get0(0, &in, &pptype[1], &algor, a2);
  if (result)
  {
    X509_ALGOR_get0(0, pptype, &ppval, algor);
    if (pptype[0] == 16)
    {
      v4 = d2i_ASN1_INTEGER(0, &in, pptype[1]);
      if (v4)
      {
        pp = *(ppval + 1);
        v5 = d2i_DHparams(0, &pp, *ppval);
        if (v5)
        {
          v6 = v5;
          v7 = ASN1_INTEGER_to_BN(v4, 0);
          v6->priv_key = v7;
          if (v7)
          {
            if (DH_generate_key(v6))
            {
              EVP_PKEY_assign(a1, 28, v6);
              ASN1_INTEGER_free(v4);
              return 1;
            }
          }

          else
          {
            ERR_put_error(5, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 214);
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    ERR_put_error(5, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 228);
    v6 = 0;
LABEL_10:
    ASN1_INTEGER_free(v4);
    DH_free(v6);
    return 0;
  }

  return result;
}

uint64_t dh_priv_encode(uint64_t a1, uint64_t a2)
{
  out = 0;
  v4 = ASN1_STRING_new();
  if (!v4)
  {
    v11 = 65;
    v12 = 246;
LABEL_9:
    ERR_put_error(5, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", v12);
    v13 = 0;
    goto LABEL_10;
  }

  v5 = i2d_DHparams(*(a2 + 32), &v4->data);
  v4->length = v5;
  if (v5 <= 0)
  {
    v11 = 65;
    v12 = 252;
    goto LABEL_9;
  }

  v4->type = 16;
  v6 = BN_to_ASN1_INTEGER(*(*(a2 + 32) + 40), 0);
  if (!v6)
  {
    v11 = 106;
    v12 = 261;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = i2d_ASN1_INTEGER(v6, &out);
  ASN1_INTEGER_free(v7);
  v9 = OBJ_nid2obj(28);
  if (PKCS8_pkey_set0(a1, v9, 0, 16, v4, out, v8))
  {
    return 1;
  }

  v13 = out;
LABEL_10:
  free(v13);
  ASN1_STRING_free(v4);
  ASN1_INTEGER_free(0);
  return 0;
}

uint64_t dh_param_decode(EVP_PKEY *a1, const unsigned __int8 **a2, int a3)
{
  v4 = d2i_DHparams(0, a2, a3);
  if (v4)
  {
    EVP_PKEY_assign(a1, 28, v4);
    return 1;
  }

  else
  {
    ERR_put_error(5, 4095, 5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 300);
    return 0;
  }
}

BIGNUM *dh_copy_parameters(uint64_t a1, uint64_t a2)
{
  result = BN_dup(*(*(a2 + 32) + 8));
  if (result)
  {
    v5 = result;
    BN_free(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = v5;
    result = BN_dup(*(*(a2 + 32) + 16));
    if (result)
    {
      v6 = result;
      BN_free(*(*(a1 + 32) + 16));
      *(*(a1 + 32) + 16) = v6;
      return 1;
    }
  }

  return result;
}

uint64_t dh_pkey_public_check(uint64_t a1)
{
  v2 = *(a1 + 32);
  pub_key = v2->pub_key;
  if (pub_key)
  {

    return DH_check_pub_key_ex(v2, pub_key);
  }

  else
  {
    ERR_put_error(5, 4095, 125, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_ameth.c", 501);
    return 0;
  }
}

uint64_t ENGINE_register_pkey_meths(uint64_t a1)
{
  v1 = *(a1 + 96);
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
    return engine_table_register(&pkey_meth_table, engine_unregister_all_pkey_meths, a1, 0, v3, 0);
  }
}

ENGINE *ENGINE_register_all_pkey_meths()
{
  result = ENGINE_get_first();
  if (result)
  {
    v1 = result;
    do
    {
      ENGINE_register_pkey_meths(v1);
      result = ENGINE_get_next(v1);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t ENGINE_set_default_pkey_meths(uint64_t a1)
{
  v1 = *(a1 + 96);
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
    return engine_table_register(&pkey_meth_table, engine_unregister_all_pkey_meths, a1, 0, v3, 1);
  }
}

uint64_t ENGINE_get_pkey_meth(uint64_t a1)
{
  v3 = 0;
  v1 = *(a1 + 96);
  if (v1 && v1())
  {
    return v3;
  }

  ERR_put_error(38, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/tb_pkmeth.c", 134);
  return 0;
}

void engine_pkey_meths_free(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    v6 = 0;
    v3 = v1();
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 4 * v3;
      do
      {
        if ((*(result + 96))(result, &v6, 0, *v4))
        {
          EVP_PKEY_meth_free(v6);
        }

        ++v4;
      }

      while (v5 != v4);
    }
  }
}

int RSA_padding_add_none(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (fl <= tlen)
  {
    if (fl >= tlen)
    {
      memcpy(to, f, fl);
      return 1;
    }

    v4 = 122;
    v5 = 76;
  }

  else
  {
    v4 = 110;
    v5 = 71;
  }

  ERR_put_error(4, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_none.c", v5);
  return 0;
}

int RSA_padding_check_none(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (tlen >= fl)
  {
    v5 = tlen;
    bzero(to, tlen - fl);
    memcpy(&to[v5 - fl], f, fl);
  }

  else
  {
    ERR_put_error(4, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_none.c", 89);
    return -1;
  }

  return v5;
}

void BN_CTX_free(BN_CTX *c)
{
  if (c)
  {
    if (*(c + 4))
    {
      v2 = 0;
      do
      {
        BN_free(*(*c + 8 * v2));
        *(*c + 8 * v2++) = 0;
      }

      while (v2 < *(c + 4));
    }

    free(*c);
    free(*(c + 1));

    freezero(c, 0x30uLL);
  }
}

void BN_CTX_start(BN_CTX *ctx)
{
  v1 = (*(ctx + 16))++ + 1;
  if ((v1 & 0x100) != 0)
  {
    ERR_put_error(3, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_ctx.c", 99);
    *(ctx + 10) = 1;
  }
}

BIGNUM *__cdecl BN_CTX_get(BN_CTX *ctx)
{
  if (!*(ctx + 10))
  {
    if (!*(ctx + 16))
    {
      v5 = 66;
      v6 = 114;
LABEL_18:
      ERR_put_error(3, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_ctx.c", v6);
      v1 = 0;
      goto LABEL_19;
    }

    v3 = *(ctx + 3);
    if (v3 != *(ctx + 4))
    {
LABEL_13:
      v1 = *(*ctx + 8 * v3);
      if (v1)
      {
LABEL_16:
        *(*(ctx + 1) + v3) = *(ctx + 16);
        ++*(ctx + 3);
        BN_zero(v1);
        return v1;
      }

      v9 = BN_new();
      v1 = v9;
      if (v9)
      {
        v3 = *(ctx + 3);
        *(*ctx + 8 * v3) = v9;
        goto LABEL_16;
      }

      ERR_put_error(3, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_ctx.c", 129);
LABEL_19:
      *(ctx + 10) = 1;
      return v1;
    }

    if (v3)
    {
      if (__CFADD__(v3, v3))
      {
LABEL_17:
        v5 = 109;
        v6 = 121;
        goto LABEL_18;
      }

      v4 = 2 * v3;
    }

    else
    {
      v4 = 8;
    }

    v7 = recallocarray(*ctx, v3, v4, 8uLL);
    if (v7)
    {
      *ctx = v7;
      v8 = reallocarray(*(ctx + 1), v4, 1uLL);
      if (v8)
      {
        *(ctx + 1) = v8;
        *(ctx + 4) = v4;
        v3 = *(ctx + 3);
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

  return 0;
}

void BN_CTX_end(BN_CTX *ctx)
{
  if (ctx)
  {
    if (!*(ctx + 10))
    {
      LOBYTE(v2) = *(ctx + 16);
      if (v2)
      {
        v3 = *(ctx + 3);
        if (v3)
        {
          while (1)
          {
            v4 = v3 - 1;
            v2 = *(ctx + 16);
            if (*(*(ctx + 1) + v4) != v2)
            {
              break;
            }

            BN_zero(*(*ctx + 8 * v4));
            *(*(ctx + 1) + *(ctx + 3) - 1) = 0;
            v5 = *(ctx + 3);
            v3 = v5 - 1;
            *(ctx + 3) = v5 - 1;
            if (v5 == 1)
            {
              LOBYTE(v2) = *(ctx + 16);
              break;
            }
          }
        }

        *(ctx + 16) = v2 - 1;
      }
    }
  }
}

void ERR_load_CRYPTO_strings(void)
{
  if (!ERR_func_error_string(CRYPTO_str_functs))
  {
    ERR_load_strings(0, &CRYPTO_str_functs);

    ERR_load_strings(0, &CRYPTO_str_reasons);
  }
}

uint64_t GOSTR341194_Init(void *a1, int a2)
{
  bzero(a1, 0x1094uLL);

  return Gost2814789_set_sbox(a1 + 44, a2);
}

uint64_t GOSTR341194_Update(uint64_t a1, char *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    *a1 += 8 * __n;
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = (a1 + 8);
      if (__n <= 0x1F && v6 + __n < 0x20)
      {
        memcpy(v7 + v6, __src, __n);
        *(a1 + 40) += v3;
        return 1;
      }

      v8 = 32 - v6;
      memcpy(v7 + v6, __src, 32 - v6);
      GOSTR341194_block_data_order(a1, a1 + 8, 1);
      v4 += v8;
      v3 -= v8;
      *(a1 + 40) = 0;
      *v7 = 0u;
      *(a1 + 24) = 0u;
    }

    if (v3 >= 0x20)
    {
      GOSTR341194_block_data_order(a1, v4, v3 >> 5);
      v4 += v3 & 0xFFFFFFFFFFFFFFE0;
      v3 &= 0x1Fu;
    }

    if (v3)
    {
      *(a1 + 40) = v3;
      memcpy((a1 + 8), v4, v3);
    }
  }

  return 1;
}

void GOSTR341194_block_data_order(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 0;
    v7 = result + 4212;
    do
    {
      hash_step(result, (result + 4180), a2);
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v9 + *(v7 + v8) + *(a2 + v8);
        *(v7 + v8) = v10;
        v9 = v10 >> 8;
        ++v8;
      }

      while (v8 != 32);
      a2 += 32;
      ++v6;
    }

    while (v6 != a3);
  }
}

uint64_t GOSTR341194_Final(_OWORD *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = a2 + 8;
    bzero((a2 + 8 + v4), (32 - v4));
    hash_step(a2, (a2 + 4180), a2 + 8);
    v6 = 0;
    v7 = 0;
    v8 = a2 + 4212;
    do
    {
      v9 = v7 + *(v8 + v6) + *(v5 + v6);
      *(v8 + v6) = v9;
      v7 = v9 >> 8;
      ++v6;
    }

    while (v6 != 32);
  }

  v10 = *(a2 + 4);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  hash_step(a2, (a2 + 4180), v13);
  hash_step(a2, (a2 + 4180), a2 + 4212);
  v11 = *(a2 + 4196);
  *a1 = *(a2 + 4180);
  a1[1] = v11;
  return 1;
}

double hash_step(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = 0;
  v56 = *MEMORY[0x277D85DE8];
  do
  {
    *&v53[v6 * 4] = veorq_s8(*(a3 + v6 * 4), *&a2[v6]);
    v6 += 4;
  }

  while (v6 != 8);
  v7 = 0;
  v8 = v53;
  do
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v11 = *v10++;
      v48[v7 + v9] = v11;
      v9 += 4;
    }

    while (v9 != 32);
    ++v7;
    v8 += 8;
  }

  while (v7 != 4);
  Gost2814789_set_key(a1 + 44, v48, 256);
  Gost2814789_encrypt(a2, &v49, (a1 + 44));
  v12 = 0;
  v13 = *a2;
  *v54 = *(a2 + 2);
  *&v54[16] = *(a2 + 3);
  v55 = veor_s8(*v54, v13);
  v14 = *a3;
  *v51 = *(a3 + 8);
  *&v51[16] = *(a3 + 24);
  v15 = *v51;
  v16 = veor_s8(*v51, v14);
  *v51 = *&v51[8];
  *&v51[16] = v16;
  v52 = veor_s8(*v51, v15);
  do
  {
    *&v53[v12] = veorq_s8(*&v51[v12], *&v54[v12]);
    v12 += 16;
  }

  while (v12 != 32);
  v17 = 0;
  v18 = v53;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      v21 = *v20++;
      v48[v17 + v19] = v21;
      v19 += 4;
    }

    while (v19 != 32);
    ++v17;
    v18 += 8;
  }

  while (v17 != 4);
  Gost2814789_set_key(a1 + 44, v48, 256);
  Gost2814789_encrypt(a2 + 2, &v49 + 2, (a1 + 44));
  v22 = 0;
  v23 = *v54;
  *v54 = *&v54[8];
  *&v54[16] = v55;
  v24 = veor_s8(*v54, v23);
  v55 = v24;
  v55.i8[7] = ~v24.i8[7];
  v55.i16[2] = ~v24.i16[2];
  v55.i8[0] = ~v24.i8[0];
  v54[23] = ~v54[23];
  v54[20] = ~v54[20];
  *&v54[17] = ~*&v54[17];
  v54[14] = ~v54[14];
  v54[12] = ~v54[12];
  v54[10] = ~v54[10];
  *&v54[7] = ~*&v54[7];
  v54[5] = ~v54[5];
  v54[3] = ~v54[3];
  v54[1] = ~v54[1];
  v25 = *&v51[8];
  *&v51[16] = v52;
  *&v51[8] = *(&v25 + 1);
  v52 = veor_s8(*&v25, *v51);
  v26 = *&v51[8];
  *&v51[16] = v52;
  *v51 = v26;
  v52 = veor_s8(*&v26, *&v25);
  do
  {
    *&v53[v22] = veorq_s8(*&v51[v22], *&v54[v22]);
    v22 += 16;
  }

  while (v22 != 32);
  v27 = 0;
  v28 = v53;
  do
  {
    v29 = 0;
    v30 = v28;
    do
    {
      v31 = *v30++;
      v48[v27 + v29] = v31;
      v29 += 4;
    }

    while (v29 != 32);
    ++v27;
    v28 += 8;
  }

  while (v27 != 4);
  Gost2814789_set_key(a1 + 44, v48, 256);
  Gost2814789_encrypt(a2 + 4, &v50, (a1 + 44));
  v32 = 0;
  v33 = *v54;
  *v54 = *&v54[8];
  *&v54[16] = v55;
  v55 = veor_s8(*v54, v33);
  v34 = *v51;
  *v51 = *&v51[8];
  *&v51[16] = v52;
  v35 = *v51;
  v36 = veor_s8(*v51, v34);
  *v51 = *&v51[8];
  *&v51[16] = v36;
  v52 = veor_s8(*v51, v35);
  do
  {
    *&v53[v32] = veorq_s8(*&v51[v32], *&v54[v32]);
    v32 += 16;
  }

  while (v32 != 32);
  v37 = 0;
  v38 = v53;
  do
  {
    v39 = 0;
    v40 = v38;
    do
    {
      v41 = *v40++;
      v48[v37 + v39] = v41;
      v39 += 4;
    }

    while (v39 != 32);
    ++v37;
    v38 += 8;
  }

  while (v37 != 4);
  Gost2814789_set_key(a1 + 44, v48, 256);
  Gost2814789_encrypt(a2 + 6, &v50 + 2, (a1 + 44));
  v42 = 12;
  do
  {
    transform_3(&v49);
    --v42;
  }

  while (v42);
  for (i = 0; i != 32; i += 16)
  {
    *(&v49 + i) = veorq_s8(*(a3 + i), *(&v49 + i));
  }

  transform_3(&v49);
  for (j = 0; j != 8; j += 4)
  {
    *(&v49 + j * 4) = veorq_s8(*&a2[j], *(&v49 + j * 4));
  }

  v45 = 61;
  do
  {
    transform_3(&v49);
    --v45;
  }

  while (v45);
  result = *&v49;
  v47 = v50;
  *a2 = v49;
  *(a2 + 1) = v47;
  return result;
}