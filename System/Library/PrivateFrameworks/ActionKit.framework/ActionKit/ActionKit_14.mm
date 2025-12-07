uint64_t ec_pkey_check(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {

    return EC_KEY_check_key(v2);
  }

  else
  {
    ERR_put_error(16, 4095, 125, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 649);
    return 0;
  }
}

uint64_t ec_pkey_param_check(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {

    return EC_GROUP_check(v2, 0);
  }

  else
  {
    ERR_put_error(16, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 671);
    return 0;
  }
}

EC_KEY *eckey_type2param(int a1, const ASN1_OBJECT *a2)
{
  if (a1 != 6)
  {
    if (a1 != 16)
    {
      ERR_put_error(16, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 180);
      v3 = 0;
LABEL_13:
      v4 = 0;
LABEL_14:
      EC_KEY_free(v3);
      v3 = 0;
      goto LABEL_15;
    }

    in = a2->ln;
    v3 = d2i_ECParameters(0, &in, SLODWORD(a2->sn));
    if (v3)
    {
      v4 = 0;
      goto LABEL_15;
    }

    v7 = 142;
    v8 = 159;
LABEL_12:
    ERR_put_error(16, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v8);
    goto LABEL_13;
  }

  v3 = EC_KEY_new();
  if (!v3)
  {
    v7 = 65;
    v8 = 170;
    goto LABEL_12;
  }

  v5 = OBJ_obj2nid(a2);
  v6 = EC_GROUP_new_by_curve_name(v5);
  v4 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  EC_GROUP_set_asn1_flag(v6, 1);
  if (!EC_KEY_set_group(v3, v4))
  {
    goto LABEL_14;
  }

LABEL_15:
  EC_GROUP_free(v4);
  return v3;
}

ASN1_STRING *eckey_param2type(int *a1, ASN1_OBJECT **a2, EC_KEY *a3)
{
  if (!a3 || (v6 = EC_KEY_get0_group(a3)) == 0)
  {
    v10 = 124;
    v11 = 84;
    goto LABEL_7;
  }

  v7 = v6;
  if (!EC_GROUP_get_asn1_flag(v6) || (curve_name = EC_GROUP_get_curve_name(v7)) == 0)
  {
    result = ASN1_STRING_new();
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = i2d_ECParameters(a3, &result->data);
    v13->length = v14;
    if (v14 > 0)
    {
      *a2 = v13;
      v9 = 16;
      goto LABEL_11;
    }

    ASN1_STRING_free(v13);
    v10 = 16;
    v11 = 101;
LABEL_7:
    ERR_put_error(16, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", v11);
    return 0;
  }

  *a2 = OBJ_nid2obj(curve_name);
  v9 = 6;
LABEL_11:
  *a1 = v9;
  return 1;
}

uint64_t do_EC_KEY_print(BIO *a1, EC_KEY *a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (!a2)
  {
    v10 = 0;
    v18 = 0;
    v12 = 0;
LABEL_12:
    v19 = 67;
LABEL_44:
    ERR_put_error(16, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_ameth.c", 514);
    v28 = 0;
    goto LABEL_45;
  }

  v6 = a3;
  v8 = EC_KEY_get0_group(a2);
  if (!v8)
  {
    v10 = 0;
    v18 = 0;
    v12 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = BN_CTX_new();
  if (!v10)
  {
    v18 = 0;
    v12 = 0;
    v4 = 0;
LABEL_43:
    v19 = 65;
    goto LABEL_44;
  }

  v11 = "ECDSA-Parameters";
  if (a4 < 1)
  {
    v4 = 0;
    v12 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v12 = EC_KEY_get0_public_key(v4);
  if (v12)
  {
    conv_form = EC_KEY_get_conv_form(v4);
    v14 = EC_POINT_point2bn(v9, v12, conv_form, 0, v10);
    v12 = v14;
    if (!v14)
    {
      v18 = 0;
      v4 = 0;
      v19 = 16;
      goto LABEL_44;
    }

    v15 = BN_num_bits(v14);
    v16 = v15 + 7;
    if (v15 < -7)
    {
      v16 = v15 + 14;
    }

    v17 = v16 >> 3;
  }

  else
  {
    v17 = 0;
  }

  if (a4 == 2)
  {
    v21 = EC_KEY_get0_private_key(v4);
    v20 = v21;
    if (v21)
    {
      v22 = BN_num_bits(v21);
      v23 = v22 + 7;
      if (v22 < -7)
      {
        v23 = v22 + 14;
      }

      v24 = v23 >> 3;
      v25 = v23 >> 3;
      if (v17 <= v24)
      {
        v17 = v25;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v4 = malloc_type_malloc(v17 + 10, 0xA71173E3uLL);
  if (!v4)
  {
    v18 = 0;
    goto LABEL_43;
  }

  v26 = "Public-Key";
  if (a4 != 1)
  {
    v26 = "ECDSA-Parameters";
  }

  if (a4 == 2)
  {
    v11 = "Private-Key";
  }

  else
  {
    v11 = v26;
  }

LABEL_30:
  if (!BIO_indent(a1, v6, 128))
  {
    v18 = 0;
LABEL_41:
    v19 = 32;
    goto LABEL_44;
  }

  v18 = BN_new();
  if (!v18)
  {
    goto LABEL_41;
  }

  if (!EC_GROUP_get_order(v9, v18, 0))
  {
    goto LABEL_41;
  }

  v27 = BN_num_bits(v18);
  if (BIO_printf(a1, "%s: (%d bit)\n", v11, v27) < 1 || v20 && !ASN1_bn_print(a1, "priv:", v20, v4, v6))
  {
    goto LABEL_41;
  }

  if (v12 && !ASN1_bn_print(a1, "pub: ", v12, v4, v6) || !ECPKParameters_print(a1, v9, v6))
  {
    goto LABEL_41;
  }

  v28 = 1;
LABEL_45:
  BN_free(v12);
  BN_free(v18);
  BN_CTX_free(v10);
  free(v4);
  return v28;
}

unint64_t BN_mod_word(const BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return -1;
  }

  if (w >= 0x100000001)
  {
    v4 = BN_dup(a);
    if (v4)
    {
      v5 = v4;
      v6 = BN_div_word(v4, w);
      BN_free(v5);
      return v6;
    }

    return -1;
  }

  top = a->top;
  if (top < 1)
  {
    return 0;
  }

  result = 0;
  d = a->d;
  v10 = top + 1;
  v11 = &d[top - 1];
  do
  {
    v12 = *v11--;
    *(&v13 + 1) = result;
    *&v13 = v12;
    result = (v12 | (((v13 >> 32) % w) << 32)) % w;
    --v10;
  }

  while (v10 > 1);
  return result;
}

unint64_t BN_div_word(BIGNUM *a, unint64_t w)
{
  v15 = 0;
  if (!w)
  {
    return -1;
  }

  if (!a->top)
  {
    return 0;
  }

  v4 = BN_num_bits_word(w);
  v5 = v4;
  v6 = 64 - v4;
  if (!BN_lshift(a, a, 64 - v4))
  {
    return -1;
  }

  top = a->top;
  if (top >= 1)
  {
    v8 = w << -v5;
    d = a->d;
    v10 = top - 1;
    do
    {
      v14 = 0;
      bn_div_rem_words(v15, d[v10], v8, &v14, &v15);
      d = a->d;
      a->d[v10] = v14;
      v11 = v10-- + 1;
    }

    while (v11 > 1);
    v12 = a->top;
    if (v12 >= 1 && !a->d[v12 - 1])
    {
      a->top = v12 - 1;
    }
  }

  v15 >>= v6;
  BN_set_negative(a, a->neg);
  return v15;
}

int BN_add_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    goto LABEL_15;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      v5 = BN_sub_word(a, v2);
      BN_set_negative(a, a->neg == 0);
      return v5;
    }

    v6 = 0;
    top = a->top;
    while ((top & ~(top >> 31)) != v6)
    {
      v8 = a->d[v6];
      v9 = __CFADD__(v8, v2);
      a->d[v6++] = v8 + v2;
      v2 = 1;
      if (!v9)
      {
        return v2;
      }
    }

    if ((top & 0x80000000) == 0)
    {
      if (!bn_wexpand(a, (top + 1)))
      {
        LODWORD(v2) = 0;
        return v2;
      }

      ++a->top;
      a->d[top] = v2;
    }

LABEL_15:
    LODWORD(v2) = 1;
    return v2;
  }

  return BN_set_word(a, v2);
}

int BN_sub_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return 1;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      v4 = BN_add_word(a, v2);
      v6 = a->neg == 0;
      v5 = a;
      goto LABEL_7;
    }

    d = a->d;
    v8 = *a->d;
    v9 = a->top - 1;
    if (a->top == 1 && v8 < v2)
    {
      *d = v2 - v8;
      v4 = 1;
      goto LABEL_4;
    }

    v10 = 0;
    v11 = v8 - v2;
    if (v8 < v2)
    {
      v2 = 1;
      do
      {
        *d = v11;
        v12 = d[1];
        ++d;
        v8 = v12;
        ++v10;
        v11 = -1;
      }

      while (!v12);
    }

    v13 = v8 - v2;
    *d = v13;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 == v9;
    }

    if (v14)
    {
      a->top = v10;
    }

    return 1;
  }

  v4 = BN_set_word(a, v2);
  if (v4)
  {
LABEL_4:
    v5 = a;
    v6 = 1;
LABEL_7:
    BN_set_negative(v5, v6);
  }

  return v4;
}

int BN_mul_word(BIGNUM *a, unint64_t w)
{
  top = a->top;
  if (!top)
  {
    return 1;
  }

  if (w)
  {
    v4 = bn_mul_words(a->d, a->d, top, w);
    if (v4)
    {
      v5 = v4;
      result = bn_wexpand(a, (a->top + 1));
      if (!result)
      {
        return result;
      }

      d = a->d;
      v8 = a->top;
      a->top = v8 + 1;
      d[v8] = v5;
    }
  }

  else
  {
    BN_zero(a);
  }

  return 1;
}

uint64_t cms_get0_enveloped(uint64_t a1)
{
  if (OBJ_obj2nid(*a1) == 23)
  {
    return *(a1 + 8);
  }

  ERR_put_error(46, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 74);
  return 0;
}

uint64_t cms_env_asn1_ctrl(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return 0;
    }

    result = *(*(a1 + 8) + 40);
LABEL_6:
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 176);
      if (v3)
      {
        v4 = v3();
        if (v4 == -2)
        {
          v5 = 125;
          v6 = 120;
LABEL_13:
          ERR_put_error(46, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v6);
          return 0;
        }

        if (v4 <= 0)
        {
          v5 = 111;
          v6 = 124;
          goto LABEL_13;
        }
      }
    }

    return 1;
  }

  result = *(*(a1 + 8) + 40);
  if (result)
  {
    result = EVP_PKEY_CTX_get0_pkey(result);
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t CMS_get0_RecipientInfos(uint64_t a1)
{
  result = cms_get0_enveloped(a1);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CMS_RecipientInfo_get0_pkey_ctx(uint64_t a1)
{
  if (!*a1)
  {
    v1 = 48;
    return *(*(a1 + 8) + v1);
  }

  if (*a1 == 1)
  {
    v1 = 40;
    return *(*(a1 + 8) + v1);
  }

  return 0;
}

ASN1_VALUE *CMS_EnvelopedData_create(ASN1_OBJECT *a1)
{
  v2 = CMS_ContentInfo_new();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  if (!*(v2 + 1))
  {
    v5 = ASN1_item_new(&CMS_EnvelopedData_it);
    *(v3 + 1) = v5;
    if (v5)
    {
      *v5 = 0;
      v6 = OBJ_nid2obj(21);
      v7 = *v3;
      **(*(v3 + 1) + 24) = v6;
      ASN1_OBJECT_free(v7);
      *v3 = OBJ_nid2obj(23);
      v4 = *(v3 + 1);
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 86);
    }

LABEL_10:
    CMS_ContentInfo_free(v3);
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 180);
    return 0;
  }

  v4 = cms_get0_enveloped(v2);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!cms_EncryptedContent_init(*(v4 + 24), a1, 0, 0))
  {
    goto LABEL_10;
  }

  return v3;
}

ASN1_VALUE *CMS_add1_recipient_cert(uint64_t a1, X509 *a2, uint64_t a3)
{
  v3 = a3;
  v5 = cms_get0_enveloped(a1);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  v7 = ASN1_item_new(&CMS_RecipientInfo_it);
  if (!v7)
  {
LABEL_21:
    v14 = 65;
    v15 = 286;
    goto LABEL_22;
  }

  v8 = X509_get0_pubkey(a2);
  if (!v8)
  {
    v14 = 113;
    v15 = 258;
LABEL_22:
    ERR_put_error(46, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v15);
    goto LABEL_23;
  }

  v9 = v8;
  ptr = v8->pkey.ptr;
  if (!ptr)
  {
    goto LABEL_9;
  }

  v11 = *(ptr + 22);
  if (!v11)
  {
    goto LABEL_9;
  }

  v18 = 0;
  if (v11(v8, 8, 0, &v18) < 1)
  {
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (cms_RecipientInfo_kari_init(v7, a2, v9, v3))
    {
      goto LABEL_20;
    }

LABEL_23:
    ASN1_item_free(v7, &CMS_RecipientInfo_it);
    return 0;
  }

  if (v18)
  {
    v14 = 125;
    v15 = 275;
    goto LABEL_22;
  }

LABEL_9:
  v12 = ASN1_item_new(&CMS_KeyTransRecipientInfo_it);
  *(v7 + 1) = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  *v7 = 0;
  *v12 = (v3 & 0x10000) >> 15;
  if (!cms_set1_SignerIdentifier(*(v12 + 1), a2, HIWORD(v3) & 1))
  {
    goto LABEL_23;
  }

  X509_up_ref(a2);
  EVP_PKEY_up_ref(v9);
  *(v13 + 4) = a2;
  *(v13 + 5) = v9;
  if ((v3 & 0x40000) != 0)
  {
    v16 = EVP_PKEY_CTX_new(v9, 0);
    *(v13 + 6) = v16;
    if (!v16 || EVP_PKEY_encrypt_init(v16) < 1)
    {
      goto LABEL_23;
    }
  }

  else if (!cms_env_asn1_ctrl(v7))
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!sk_push(*(v6 + 16), v7))
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t cms_pkey_get_ri_type(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 176)) != 0 && (v4 = 0, v2() > 0))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CMS_RecipientInfo_ktri_get0_algs(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 299);
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    if (a2)
    {
      *a2 = v5[5];
    }

    if (a3)
    {
      *a3 = v5[4];
    }

    if (a4)
    {
      *a4 = v5[2];
    }

    return 1;
  }
}

uint64_t CMS_RecipientInfo_ktri_get0_signer_id(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 322);
    return 0;
  }

  else
  {
    v6 = *(*(a1 + 8) + 8);

    return cms_SignerIdentifier_get0_signer_id(v6, a2, a3, a4);
  }
}

uint64_t CMS_RecipientInfo_ktri_cert_cmp(uint64_t a1, X509 *a2)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 334);
    return 4294967294;
  }

  else
  {
    v4 = *(*(a1 + 8) + 8);

    return cms_SignerIdentifier_cert_cmp(v4, a2);
  }
}

uint64_t CMS_RecipientInfo_set0_pkey(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    ERR_put_error(46, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 345);
    return 0;
  }

  else
  {
    EVP_PKEY_free(*(*(a1 + 8) + 40));
    *(*(a1 + 8) + 40) = a2;
    return 1;
  }
}

uint64_t CMS_RecipientInfo_kekri_id_cmp(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*a1 == 2)
  {
    v3 = *(a1 + 8);
    a.data = a2;
    a.flags = 0;
    a.length = a3;
    a.type = 4;
    return ASN1_OCTET_STRING_cmp(&a, **(v3 + 8));
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 514);
    return 4294967294;
  }
}

ASN1_VALUE *CMS_add0_recipient_key(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = cms_get0_enveloped(a1);
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  if (a2 > 788)
  {
    if (a2 == 789)
    {
      v18 = 24;
      goto LABEL_15;
    }

    if (a2 == 790)
    {
      v18 = 32;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 == 788)
    {
      v18 = 16;
LABEL_15:
      if (v18 == a4)
      {
        goto LABEL_16;
      }

      v19 = 118;
      v20 = 588;
      goto LABEL_26;
    }

LABEL_9:
    v19 = 153;
    v20 = 583;
LABEL_26:
    ERR_put_error(46, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v20);
LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  switch(a4)
  {
    case 16:
      a2 = 788;
      break;
    case 32:
      a2 = 790;
      break;
    case 24:
      a2 = 789;
      break;
    default:
      v19 = 118;
      v20 = 574;
      goto LABEL_26;
  }

LABEL_16:
  v21 = ASN1_item_new(&CMS_RecipientInfo_it);
  if (!v21 || (v22 = ASN1_item_new(&CMS_KEKRecipientInfo_it), (*(v21 + 1) = v22) == 0) || (v23 = v22, *v21 = 2, a8) && (v24 = ASN1_item_new(&CMS_OtherKeyAttribute_it), (*(*(v23 + 1) + 16) = v24) == 0) || !sk_push(*(v17 + 16), v21))
  {
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 637);
LABEL_28:
    ASN1_item_free(v21, &CMS_RecipientInfo_it);
    return 0;
  }

  *v23 = 4;
  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
  ASN1_STRING_set0(**(v23 + 1), a5, a6);
  v25 = *(v23 + 1);
  *(v25 + 8) = a7;
  v26 = *(v25 + 16);
  if (v26)
  {
    *v26 = a8;
    v26[1] = a9;
  }

  v27 = *(v23 + 2);
  v28 = OBJ_nid2obj(a2);
  X509_ALGOR_set0(v27, v28, -1, 0);
  return v21;
}

uint64_t CMS_RecipientInfo_kekri_get0_id(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (*a1 == 2)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 8);
    if (a2)
    {
      *a2 = *(v6 + 16);
    }

    if (a3)
    {
      *a3 = *v7;
    }

    if (a4)
    {
      *a4 = v7[1];
    }

    if (a5)
    {
      v8 = v7[2];
      if (v8)
      {
        v8 = *v8;
      }

      *a5 = v8;
    }

    if (a6)
    {
      v9 = v7[2];
      if (v9)
      {
        *a6 = *(v9 + 8);
      }

      else
      {
        *a6 = 0;
      }
    }

    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 651);
    return 0;
  }
}

uint64_t CMS_RecipientInfo_set0_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v3 = *(a1 + 8);
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 684);
    return 0;
  }
}

EVP_CIPHER_CTX *CMS_RecipientInfo_decrypt(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 != 3)
  {
    if (v3 != 2)
    {
      if (v3)
      {
        v19 = 155;
        v20 = 824;
      }

      else
      {
        v4 = *(a2 + 1);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = *(*(a1 + 8) + 24);
          *size.rd_key = 0;
          if (!*(v6 + 52) || *(v6 + 48))
          {
            v7 = 0;
            goto LABEL_8;
          }

          v23 = OBJ_obj2nid(**(v6 + 8));
          v24 = OBJ_nid2sn(v23);
          cipherbyname = EVP_get_cipherbyname(v24);
          if (cipherbyname)
          {
            v7 = EVP_CIPHER_key_length(cipherbyname);
LABEL_8:
            v8 = EVP_PKEY_CTX_new(v5, 0);
            *(v4 + 48) = v8;
            if (v8)
            {
              if (EVP_PKEY_decrypt_init(v8) >= 1 && cms_env_asn1_ctrl(a2))
              {
                if (EVP_PKEY_CTX_ctrl(*(v4 + 48), -1, 512) <= 0)
                {
                  v10 = 110;
                  v11 = 465;
                }

                else
                {
                  v9 = EVP_PKEY_decrypt(*(v4 + 48), 0, &size, *(*(v4 + 24) + 8)) < 1 || *size.rd_key == 0;
                  if (!v9 && (!v7 || *size.rd_key == v7))
                  {
                    v28 = malloc_type_malloc(*size.rd_key, 0x1808DBF0uLL);
                    if (v28)
                    {
                      if (EVP_PKEY_decrypt(*(v4 + 48), v28, &size, *(*(v4 + 24) + 8)) > 0)
                      {
                        freezero(*(v6 + 32), *(v6 + 40));
                        v31 = *size.rd_key;
                        *(v6 + 32) = v28;
                        *(v6 + 40) = v31;
                        EVP_PKEY_CTX_free(*(v4 + 48));
                        *(v4 + 48) = 0;
                        return 1;
                      }

                      v32 = 104;
                      v33 = 485;
                    }

                    else
                    {
                      v32 = 65;
                      v33 = 479;
                    }

                    ERR_put_error(46, 4095, v32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v33);
                    goto LABEL_50;
                  }

                  v10 = 104;
                  v11 = 472;
                }

                ERR_put_error(46, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v11);
              }

              v28 = 0;
LABEL_50:
              EVP_PKEY_CTX_free(*(v4 + 48));
              *(v4 + 48) = 0;
              free(v28);
            }

            return 0;
          }

          v19 = 148;
          v20 = 446;
        }

        else
        {
          v19 = 133;
          v20 = 436;
        }
      }

LABEL_33:
      ERR_put_error(46, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v20);
      return 0;
    }

    memset(&size, 0, sizeof(size));
    v12 = *(a2 + 1);
    if (!*(v12 + 32))
    {
      v19 = 130;
      v20 = 759;
      goto LABEL_33;
    }

    v13 = *(*(a1 + 8) + 24);
    v14 = OBJ_obj2nid(**(v12 + 16));
    if ((v14 - 788) >= 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = 8 * (v14 - 788) + 16;
    }

    if (v15 != *(v12 + 40))
    {
      v19 = 118;
      v20 = 765;
      goto LABEL_33;
    }

    if (**(v12 + 24) > 15)
    {
      if (!AES_set_decrypt_key(*(v12 + 32), 8 * v15, &size))
      {
        v22 = malloc_type_malloc(**(v12 + 24) - 8, 0x32D5F5E5uLL);
        if (v22)
        {
          v26 = AES_unwrap_key(&size, 0, v22, *(*(v12 + 24) + 8), **(v12 + 24));
          if (v26 > 0)
          {
            v27 = v26;
            freezero(*(v13 + 32), *(v13 + 40));
            *(v13 + 32) = v22;
            *(v13 + 40) = v27;
LABEL_40:
            explicit_bzero(&size, 0xF4uLL);
          }

          v29 = 157;
          v30 = 791;
        }

        else
        {
          v29 = 65;
          v30 = 783;
        }

        ERR_put_error(46, 4095, v29, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v30);
LABEL_39:
        free(v22);
        goto LABEL_40;
      }

      v16 = 115;
      v17 = 777;
    }

    else
    {
      v16 = 117;
      v17 = 772;
    }

    ERR_put_error(46, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v17);
    v22 = 0;
    goto LABEL_39;
  }

  return cms_RecipientInfo_pwri_crypt(a1, a2, 0);
}

EVP_CIPHER_CTX *CMS_RecipientInfo_encrypt(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {

        return cms_RecipientInfo_kari_encrypt(a1, a2);
      }

      goto LABEL_12;
    }

    *size.rd_key = 0;
    v6 = *(a2 + 8);
    v7 = *(*(a1 + 8) + 24);
    v8 = *(v6 + 48);
    if (v8)
    {
      if (!cms_env_asn1_ctrl(a2))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = EVP_PKEY_CTX_new(*(v6 + 40), 0);
      if (!v12)
      {
        return 0;
      }

      v8 = v12;
      if (EVP_PKEY_encrypt_init(v12) < 1)
      {
        goto LABEL_33;
      }
    }

    if (EVP_PKEY_CTX_ctrl(v8, -1, 256) <= 0)
    {
      ERR_put_error(46, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 390);
    }

    else if (EVP_PKEY_encrypt(v8, 0, &size, *(v7 + 32)) >= 1)
    {
      v13 = malloc_type_malloc(*size.rd_key, 0x294B5E0uLL);
      if (v13)
      {
        if (EVP_PKEY_encrypt(v8, v13, &size, *(v7 + 32)) >= 1)
        {
          ASN1_STRING_set0(*(v6 + 24), v13, size.rd_key[0]);
          v13 = 0;
          v14 = 1;
LABEL_35:
          EVP_PKEY_CTX_free(v8);
          *(v6 + 48) = 0;
          free(v13);
          return v14;
        }
      }

      else
      {
        ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 400);
      }

LABEL_34:
      v14 = 0;
      goto LABEL_35;
    }

LABEL_33:
    v13 = 0;
    goto LABEL_34;
  }

  if (v2 == 2)
  {
    memset(&size, 0, sizeof(size));
    v9 = *(a2 + 8);
    if (!*(v9 + 32))
    {
      v4 = 130;
      v5 = 710;
      goto LABEL_27;
    }

    v10 = *(*(a1 + 8) + 24);
    if (AES_set_encrypt_key(*(v9 + 32), 8 * *(v9 + 40), &size))
    {
      ERR_put_error(46, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 715);
      v11 = 0;
    }

    else
    {
      v11 = malloc_type_malloc(*(v10 + 40) + 8, 0x7E8D8CDuLL);
      if (v11)
      {
        v15 = AES_wrap_key(&size, 0, v11, *(v10 + 32), *(v10 + 40));
        if (v15 > 0)
        {
          ASN1_STRING_set0(*(v9 + 24), v11, v15);
          goto LABEL_41;
        }

        v16 = 159;
        v17 = 727;
      }

      else
      {
        v16 = 65;
        v17 = 721;
      }

      ERR_put_error(46, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v17);
    }

    free(v11);
LABEL_41:
    explicit_bzero(&size, 0xF4uLL);
  }

  if (v2 != 3)
  {
LABEL_12:
    v4 = 154;
    v5 = 846;
LABEL_27:
    ERR_put_error(46, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", v5);
    return 0;
  }

  return cms_RecipientInfo_pwri_crypt(a1, a2, 1);
}

BIO *cms_EnvelopedData_init_bio(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 24);
  inited = cms_EncryptedContent_init_bio(v2);
  if (!inited || !*(v2 + 24))
  {
    return inited;
  }

  v4 = *(*(a1 + 8) + 16);
  if (sk_num(v4) < 1)
  {
LABEL_7:
    v7 = *(a1 + 8);
    if (*v7 > 3)
    {
      goto LABEL_35;
    }

    v8 = *(v7 + 8);
    if (v8)
    {
      if (sk_num(*v8) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *sk_value(*v8, v9);
          if (v10 == 3)
          {
            if (*v7 <= 2)
            {
              *v7 = 3;
            }
          }

          else if (v10 == 4)
          {
            v14 = 4;
            goto LABEL_34;
          }

          ++v9;
        }

        while (v9 < sk_num(*v8));
      }

      if (sk_num(v8[1]) >= 1)
      {
        v11 = 0;
        v14 = 4;
        do
        {
          if (*sk_value(v8[1], v11) == 1)
          {
            goto LABEL_34;
          }

          ++v11;
        }

        while (v11 < sk_num(v8[1]));
      }
    }

    if (*v7 > 2)
    {
      goto LABEL_35;
    }

    if (sk_num(*(v7 + 16)) >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = sk_value(*(v7 + 16), v12);
        if (*v13)
        {
          break;
        }

        if (**(v13 + 1))
        {
          goto LABEL_28;
        }

LABEL_29:
        if (++v12 >= sk_num(*(v7 + 16)))
        {
          goto LABEL_30;
        }
      }

      if ((*v13 - 3) < 2)
      {
        v14 = 3;
        goto LABEL_34;
      }

LABEL_28:
      *v7 = 2;
      goto LABEL_29;
    }

LABEL_30:
    if (*(v7 + 8) || *(v7 + 32))
    {
      v14 = 2;
    }

    else
    {
      if (*v7 == 2)
      {
        goto LABEL_35;
      }

      v14 = 0;
    }

LABEL_34:
    *v7 = v14;
LABEL_35:
    *(v2 + 24) = 0;
    freezero(*(v2 + 32), *(v2 + 40));
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    return inited;
  }

  v5 = 0;
  while (1)
  {
    v6 = sk_value(v4, v5);
    if (CMS_RecipientInfo_encrypt(a1, v6) <= 0)
    {
      break;
    }

    if (++v5 >= sk_num(v4))
    {
      goto LABEL_7;
    }
  }

  ERR_put_error(46, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_env.c", 945);
  *(v2 + 24) = 0;
  freezero(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  BIO_free(inited);
  return 0;
}

void *__cdecl PEM_ASN1_read_bio(d2i_of_void *d2i, const char *name, BIO *bp, void **x, pem_password_cb *cb, void *u)
{
  plen = 0;
  pdata = 0;
  if (!PEM_bytes_read_bio(&pdata, &plen, 0, name, bp, cb, u))
  {
    return 0;
  }

  v12 = pdata;
  v8 = (d2i)(x, &v12, plen);
  if (!v8)
  {
    ERR_put_error(9, 4095, 13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_oth.c", 84);
  }

  free(pdata);
  return v8;
}

int RSA_padding_add_X931(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  v4 = tlen - fl;
  if (tlen - fl > 1)
  {
    v8 = to;
    if (v4 == 2)
    {
      v9 = 106;
    }

    else
    {
      *to = 107;
      v8 = to + 1;
      if (v4 >= 4)
      {
        v10 = v4 - 3;
        memset(v8, 187, v10);
        v8 += v10;
      }

      v9 = -70;
    }

    *v8 = v9;
    v11 = v8 + 1;
    memcpy(v11, f, fl);
    *(v11 + fl) = -52;
    return 1;
  }

  else
  {
    ERR_put_error(4, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_x931.c", 81);
    return -1;
  }
}

int RSA_padding_check_X931(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (rsa_len == fl)
  {
    v5 = *f;
    if ((v5 & 0xFE) == 0x6A)
    {
      if (v5 == 107)
      {
        if (rsa_len < 4)
        {
LABEL_20:
          v10 = 138;
          v11 = 129;
          goto LABEL_10;
        }

        v6 = 0;
        v7 = rsa_len - 3;
        v8 = f + 2;
        while (1)
        {
          v9 = *(v8 - 1);
          if (v9 != 187)
          {
            break;
          }

          ++v6;
          ++v8;
          if (v7 == v6)
          {
            v8 = &f[rsa_len - 2];
            v6 = rsa_len - 3;
            goto LABEL_16;
          }
        }

        if (v9 != 186)
        {
          v10 = 138;
          v11 = 123;
          goto LABEL_10;
        }

        if (!v6)
        {
          goto LABEL_20;
        }

LABEL_16:
        v12 = v7 - v6;
        if (v7 - v6 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v8 = f + 1;
        v12 = rsa_len - 2;
        if (rsa_len - 2 < 0)
        {
LABEL_19:
          v10 = 139;
          v11 = 138;
          goto LABEL_10;
        }
      }

      if (v8[v12] == 204)
      {
        memcpy(to, v8, v12);
        return v12;
      }

      goto LABEL_19;
    }
  }

  v10 = 137;
  v11 = 112;
LABEL_10:
  ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_x931.c", v11);
  return -1;
}

int RSA_X931_hash_id(int nid)
{
  if (nid > 672)
  {
    if (nid != 673)
    {
      if (nid == 674)
      {
        return 53;
      }

      return -1;
    }

    return 54;
  }

  else
  {
    if (nid != 64)
    {
      if (nid == 672)
      {
        return 52;
      }

      return -1;
    }

    return 51;
  }
}

uint64_t des_ede_init_key(uint64_t a1, const_DES_cblock *key)
{
  DES_set_key_unchecked(key, *(a1 + 120));
  DES_set_key_unchecked(&(*key)[8], (*(a1 + 120) + 128));
  v4 = *(a1 + 120);
  v5 = v4[5];
  v4[20] = v4[4];
  v4[21] = v5;
  v6 = v4[7];
  v4[22] = v4[6];
  v4[23] = v6;
  v7 = v4[1];
  v4[16] = *v4;
  v4[17] = v7;
  v8 = v4[3];
  v4[18] = v4[2];
  v4[19] = v8;
  return 1;
}

uint64_t des_ede_cbc_cipher(uint64_t a1, unsigned __int8 *output, unsigned __int8 *input, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; output += 0x7FFFFFFFFFFFFF00)
  {
    DES_ede3_cbc_encrypt(input, output, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    input += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ede3_cbc_encrypt(input, output, i, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t des3_ctrl(uint64_t a1, int a2, int a3, DES_cblock *ret)
{
  if (a2 != 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = DES_random_key(ret);
  if (result)
  {
    if (*(a1 + 104) < 16)
    {
      return 1;
    }

    result = DES_random_key(&(*ret)[8]);
    if (result)
    {
      if (*(a1 + 104) < 24)
      {
        return 1;
      }

      result = DES_random_key(&(*ret)[16]);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t des_ede_cfb64_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_ede3_cfb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), (a1 + 88), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ede3_cfb64_encrypt(in, out, i, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), (a1 + 88), *(a1 + 16));
  }

  return 1;
}

uint64_t des_ede_ofb_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_ede3_ofb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ede3_ofb64_encrypt(in, out, i, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t des_ede_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      DES_ecb3_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t des_ede3_init_key(uint64_t a1, const_DES_cblock *key)
{
  DES_set_key_unchecked(key, *(a1 + 120));
  DES_set_key_unchecked(&(*key)[8], (*(a1 + 120) + 128));
  DES_set_key_unchecked(&(*key)[16], (*(a1 + 120) + 256));
  return 1;
}

uint64_t des_ede3_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 113) & 0x20) != 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = 8 * a4;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      in = *(a3 + (i >> 3)) >> (i & 7 ^ 7) << 7;
      DES_ede3_cfb_encrypt(&in, &out, 1, 1, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), *(a1 + 16));
      *(a2 + (i >> 3)) = ((out & 0x80) >> (i & 7)) | (-129 >> (i & 7)) & *(a2 + (i >> 3));
    }
  }

  return 1;
}

uint64_t des_ede3_cfb8_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    DES_ede3_cfb_encrypt(in, out, 8, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    DES_ede3_cfb_encrypt(in, out, 8, i, *(a1 + 120), (*(a1 + 120) + 128), (*(a1 + 120) + 256), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

void OPENSSL_load_builtin_modules(void)
{
  ASN1_add_oid_module();

  ENGINE_add_conf_module();
}

uint64_t DH_check_params_ex(uint64_t a1)
{
  v3 = 0;
  result = DH_check_params(a1, &v3);
  if (result)
  {
    v2 = v3;
    if (v3)
    {
      ERR_put_error(5, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 84);
    }

    if ((v2 & 8) != 0)
    {
      ERR_put_error(5, 4095, 120, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 86);
    }

    return v2 == 0;
  }

  return result;
}

uint64_t DH_check_params(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if (!BN_is_odd(*(a1 + 8)))
  {
    *a2 |= 1u;
  }

  v4 = *(a1 + 16);
  v5 = BN_value_one();
  if (BN_cmp(v4, v5) <= 0)
  {
    *a2 |= 8u;
  }

  v6 = BN_dup(*(a1 + 8));
  v7 = v6;
  if (v6 && BN_sub_word(v6, 1uLL))
  {
    if ((BN_cmp(*(a1 + 16), v7) & 0x80000000) == 0)
    {
      *a2 |= 8u;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  BN_free(v7);
  return v8;
}

uint64_t DH_check_ex(const DH *a1)
{
  codes = 0;
  result = DH_check(a1, &codes);
  if (result)
  {
    v2 = codes;
    if ((codes & 8) != 0)
    {
      ERR_put_error(5, 4095, 120, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 139);
      if ((v2 & 0x10) == 0)
      {
LABEL_4:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((codes & 0x10) == 0)
    {
      goto LABEL_4;
    }

    ERR_put_error(5, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 141);
    if ((v2 & 0x20) == 0)
    {
LABEL_5:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    ERR_put_error(5, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 143);
    if ((v2 & 0x40) == 0)
    {
LABEL_6:
      if ((v2 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    ERR_put_error(5, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 145);
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    ERR_put_error(5, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 147);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return v2 == 0;
      }

LABEL_9:
      ERR_put_error(5, 4095, 118, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 151);
      return v2 == 0;
    }

LABEL_17:
    ERR_put_error(5, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 149);
    if ((v2 & 2) == 0)
    {
      return v2 == 0;
    }

    goto LABEL_9;
  }

  return result;
}

int DH_check(const DH *dh, int *codes)
{
  *codes = 0;
  if (!DH_check_params(dh, codes))
  {
    v5 = 0;
    goto LABEL_28;
  }

  v4 = BN_CTX_new();
  v5 = v4;
  if (v4)
  {
    BN_CTX_start(v4);
    if (dh->q)
    {
      v6 = BN_CTX_get(v5);
      if (!v6)
      {
        goto LABEL_28;
      }

      v7 = v6;
      v8 = BN_CTX_get(v5);
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = v8;
      if ((*codes & 8) == 0)
      {
        if (!BN_mod_exp_ct(v8, dh->g, dh->q, dh->p, v5))
        {
          goto LABEL_28;
        }

        if (!BN_is_one(v9))
        {
          *codes |= 8u;
        }
      }

      is_prime = BN_is_prime_ex(dh->q, 64, v5, 0);
      if (is_prime < 0)
      {
        goto LABEL_28;
      }

      if (!is_prime)
      {
        *codes |= 0x10u;
      }

      if (!BN_div_ct(v7, v9, dh->p, dh->q, v5))
      {
        goto LABEL_28;
      }

      if (!BN_is_one(v9))
      {
        *codes |= 0x20u;
      }

      j = dh->j;
      if (j && BN_cmp(j, v7))
      {
        *codes |= 0x40u;
      }
    }

    v12 = BN_is_prime_ex(dh->p, 64, v5, 0);
    if ((v12 & 0x80000000) == 0)
    {
      if (!v12)
      {
        v16 = 1;
        goto LABEL_31;
      }

      if (dh->q)
      {
LABEL_32:
        v17 = 1;
        goto LABEL_29;
      }

      v13 = BN_CTX_get(v5);
      if (v13)
      {
        v14 = v13;
        if (BN_rshift1(v13, dh->p))
        {
          v15 = BN_is_prime_ex(v14, 64, v5, 0);
          if ((v15 & 0x80000000) == 0)
          {
            if (!v15)
            {
              v16 = 2;
LABEL_31:
              *codes |= v16;
              goto LABEL_32;
            }

            goto LABEL_32;
          }
        }
      }
    }
  }

LABEL_28:
  v17 = 0;
LABEL_29:
  BN_CTX_end(v5);
  BN_CTX_free(v5);
  return v17;
}

uint64_t DH_check_pub_key_ex(const DH *a1, const BIGNUM *a2)
{
  codes = 0;
  result = DH_check_pub_key(a1, a2, &codes);
  if (result)
  {
    v3 = codes;
    if (codes)
    {
      ERR_put_error(5, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 240);
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          return v3 == 0;
        }

LABEL_5:
        ERR_put_error(5, 4095, 122, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 244);
        return v3 == 0;
      }
    }

    else if ((codes & 2) == 0)
    {
      goto LABEL_4;
    }

    ERR_put_error(5, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_check.c", 242);
    if ((v3 & 4) == 0)
    {
      return v3 == 0;
    }

    goto LABEL_5;
  }

  return result;
}

int DH_check_pub_key(const DH *dh, const BIGNUM *pub_key, int *codes)
{
  *codes = 0;
  v6 = BN_CTX_new();
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  BN_CTX_start(v6);
  v8 = BN_CTX_get(v7);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = BN_value_one();
  if (BN_cmp(pub_key, v10) <= 0)
  {
    *codes |= 1u;
  }

  p = dh->p;
  v12 = BN_value_one();
  if (!BN_sub(v9, p, v12))
  {
    goto LABEL_14;
  }

  if ((BN_cmp(pub_key, v9) & 0x80000000) == 0)
  {
    *codes |= 2u;
  }

  if (!dh->q)
  {
    goto LABEL_13;
  }

  v13 = BN_CTX_get(v7);
  if (!v13 || (v14 = v13, !BN_mod_exp_ct(v13, pub_key, dh->q, dh->p, v7)))
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (!BN_is_one(v14))
  {
    *codes = 4;
  }

LABEL_13:
  v15 = 1;
LABEL_15:
  BN_CTX_end(v7);
  BN_CTX_free(v7);
  return v15;
}

void BF_set_key(BF_KEY *key, int len, const unsigned __int8 *data)
{
  v25[1] = *MEMORY[0x277D85DE8];
  memcpy(key, &bf_init, sizeof(BF_KEY));
  v6 = 0;
  if (len >= 72)
  {
    v7 = 72;
  }

  else
  {
    v7 = len;
  }

  v8 = &data[v7];
  v9 = data;
  do
  {
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    if (v10 >= v8)
    {
      v10 = data;
    }

    v15 = *v10;
    v13 = v10 + 1;
    v14 = v15;
    if (v13 >= v8)
    {
      v13 = data;
    }

    v17 = *v13;
    v16 = v13 + 1;
    v18 = (v11 << 16) | (v14 << 8) | v17;
    if (v16 >= v8)
    {
      v16 = data;
    }

    v19 = *v16;
    v9 = v16 + 1;
    v20 = v19 | (v18 << 8);
    if (v9 >= v8)
    {
      v9 = data;
    }

    key->P[v6++] ^= v20;
  }

  while (v6 != 18);
  v25[0] = 0;
  v21 = -2;
  v22 = key;
  do
  {
    BF_encrypt(v25, key);
    *v22->P = v25[0];
    v22 = (v22 + 8);
    v21 += 2;
  }

  while (v21 < 0x10);
  v23 = -2;
  v24 = 18;
  do
  {
    BF_encrypt(v25, key);
    *&key->P[v24] = v25[0];
    v23 += 2;
    v24 += 2;
  }

  while (v23 < 0x3FE);
}

void ERR_load_PEM_strings(void)
{
  if (!ERR_func_error_string(PEM_str_functs))
  {
    ERR_load_strings(0, &PEM_str_functs);

    ERR_load_strings(0, &PEM_str_reasons);
  }
}

uint64_t PKCS5_pbe_set0_algor(X509_ALGOR *a1, int a2, unsigned int a3, const void *a4, int a5)
{
  oct = 0;
  v10 = ASN1_item_new(&PBEPARAM_it);
  if (!v10)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbe.c", 130);
    goto LABEL_20;
  }

  v11 = v10;
  if (a3 >= 1)
  {
    v12 = a3;
  }

  else
  {
    v12 = 2048;
  }

  if (!ASN1_INTEGER_set(*(v10 + 1), v12))
  {
    v14 = 136;
LABEL_19:
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbe.c", v14);
    ASN1_item_free(v11, &PBEPARAM_it);
    goto LABEL_20;
  }

  if (!a5)
  {
    a5 = 8;
  }

  if (!ASN1_STRING_set(*v11, 0, a5))
  {
    v14 = 142;
    goto LABEL_19;
  }

  v13 = ASN1_STRING_data(*v11);
  if (a4)
  {
    memcpy(v13, a4, a5);
  }

  else
  {
    arc4random_buf(v13, a5);
  }

  if (!ASN1_item_pack(v11, &PBEPARAM_it, &oct))
  {
    v14 = 152;
    goto LABEL_19;
  }

  ASN1_item_free(v11, &PBEPARAM_it);
  v15 = OBJ_nid2obj(a2);
  if (X509_ALGOR_set0(a1, v15, 16, oct))
  {
    return 1;
  }

LABEL_20:
  ASN1_STRING_free(oct);
  return 0;
}

X509_ALGOR *__cdecl PKCS5_pbe_set(int alg, int iter, unsigned __int8 *salt, int saltlen)
{
  v8 = X509_ALGOR_new();
  v9 = v8;
  if (v8)
  {
    if (!PKCS5_pbe_set0_algor(v8, alg, iter, salt, saltlen))
    {
      X509_ALGOR_free(v9);
      return 0;
    }
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbe.c", 177);
  }

  return v9;
}

uint64_t pk7_cb(int a1, PKCS7 **a2, uint64_t a3, BIO **a4)
{
  if (a1 > 11)
  {
    if (a1 != 12)
    {
      if (a1 != 13)
      {
        return 1;
      }

      return PKCS7_dataFinal(*a2, a4[1]) >= 1;
    }

LABEL_10:
    result = PKCS7_dataInit(*a2, *a4);
    a4[1] = result;
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (a1 != 10)
  {
    if (a1 != 11)
    {
      return 1;
    }

    return PKCS7_dataFinal(*a2, a4[1]) >= 1;
  }

  if (PKCS7_stream(a4 + 2, *a2) >= 1)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t si_cb(int a1, uint64_t a2)
{
  if (a1 == 3)
  {
    EVP_PKEY_free(*(*a2 + 56));
  }

  return 1;
}

uint64_t ri_cb(int a1, uint64_t a2)
{
  if (a1 == 3)
  {
    X509_free(*(*a2 + 32));
  }

  return 1;
}

uint64_t HKDF(uint64_t a1, size_t a2, EVP_MD *a3, const unsigned __int8 *a4, size_t a5, void *a6, int a7, const unsigned __int8 *a8, size_t a9)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  result = HKDF_extract(md, &v14, a3, a4, a5, a6, a7);
  if (result)
  {
    return HKDF_expand(a1, a2, a3, md, v14, a8, a9) != 0;
  }

  return result;
}

uint64_t HKDF_extract(unsigned __int8 *md, void *a2, EVP_MD *evp_md, const unsigned __int8 *a4, size_t a5, void *key, int key_len)
{
  md_len = 0;
  if (HMAC(evp_md, key, key_len, a4, a5, md, &md_len))
  {
    *a2 = md_len;
    return 1;
  }

  else
  {
    ERR_put_error(15, 4095, 15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/hkdf/hkdf.c", 60);
    return 0;
  }
}

uint64_t HKDF_expand(uint64_t a1, size_t a2, EVP_MD *md, const void *a4, int a5, const unsigned __int8 *a6, size_t a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = EVP_MD_size(md);
  v15 = a2 + v14;
  if (!__CFADD__(a2, v14))
  {
    v16 = v14;
    v17 = v15 - 1;
    v18 = (v15 - 1) / v14;
    if (v18 < 0x100)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      memset(&ctx, 0, sizeof(ctx));
      HMAC_CTX_init(&ctx);
      HMAC_Init_ex(&ctx, a4, a5, md, 0);
      if (v19 && v17 >= v16)
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v30 = v21;
          if (v21 != 1)
          {
            HMAC_Init_ex(&ctx, 0, 0, 0, 0);
            if (!v22)
            {
              break;
            }

            HMAC_Update(&ctx, data, v16);
            if (!v23)
            {
              break;
            }
          }

          HMAC_Update(&ctx, a6, a7);
          if (!v24)
          {
            break;
          }

          HMAC_Update(&ctx, &v30, 1uLL);
          if (!v25)
          {
            break;
          }

          HMAC_Final(&ctx, data, 0);
          if (!v26)
          {
            break;
          }

          v27 = v20 + v16 <= a2 ? v16 : a2 - v20;
          memcpy((a1 + v20), data, v27);
          v20 += v27;
        }

        while (v18 > v21++);
      }

      HMAC_CTX_cleanup(&ctx);
      explicit_bzero(data, 0x40uLL);
    }
  }

  ERR_put_error(15, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/hkdf/hkdf.c", 83);
  return 0;
}

int X509_alias_set1(X509 *x, unsigned __int8 *name, int len)
{
  if (name)
  {
    if (x)
    {
      ex_pcpathlen = x[1].ex_pcpathlen;
      if (ex_pcpathlen || (v7 = ASN1_item_new(&X509_CERT_AUX_it), ex_pcpathlen = v7, (x[1].ex_pcpathlen = v7) != 0))
      {
        v7 = *(ex_pcpathlen + 16);
        if (v7 || (v7 = ASN1_UTF8STRING_new(), (*(ex_pcpathlen + 16) = v7) != 0))
        {

          LODWORD(v7) = ASN1_STRING_set(v7, name, len);
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
    if (x)
    {
      v8 = x[1].ex_pcpathlen;
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          ASN1_UTF8STRING_free(v9);
          *(x[1].ex_pcpathlen + 16) = 0;
        }
      }
    }

    LODWORD(v7) = 1;
  }

  return v7;
}

int X509_keyid_set1(X509 *x, unsigned __int8 *id, int len)
{
  if (id)
  {
    if (x)
    {
      ex_pcpathlen = x[1].ex_pcpathlen;
      if (ex_pcpathlen || (v7 = ASN1_item_new(&X509_CERT_AUX_it), ex_pcpathlen = v7, (x[1].ex_pcpathlen = v7) != 0))
      {
        v7 = *(ex_pcpathlen + 24);
        if (v7 || (v7 = ASN1_OCTET_STRING_new(), (*(ex_pcpathlen + 24) = v7) != 0))
        {

          LODWORD(v7) = ASN1_STRING_set(v7, id, len);
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
    if (x)
    {
      v8 = x[1].ex_pcpathlen;
      if (v8)
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          ASN1_OCTET_STRING_free(v9);
          *(x[1].ex_pcpathlen + 24) = 0;
        }
      }
    }

    LODWORD(v7) = 1;
  }

  return v7;
}

unsigned __int8 *__cdecl X509_alias_get0(X509 *x, int *len)
{
  ex_pcpathlen = x[1].ex_pcpathlen;
  if (!ex_pcpathlen)
  {
    return 0;
  }

  v3 = *(ex_pcpathlen + 16);
  if (!v3)
  {
    return 0;
  }

  if (len)
  {
    *len = *v3;
  }

  return *(v3 + 8);
}

unsigned __int8 *__cdecl X509_keyid_get0(X509 *x, int *len)
{
  ex_pcpathlen = x[1].ex_pcpathlen;
  if (!ex_pcpathlen)
  {
    return 0;
  }

  v3 = *(ex_pcpathlen + 24);
  if (!v3)
  {
    return 0;
  }

  if (len)
  {
    *len = *v3;
  }

  return *(v3 + 8);
}

int X509_add1_trust_object(X509 *x, ASN1_OBJECT *obj)
{
  v3 = OBJ_dup(obj);
  if (v3)
  {
    if ((v4 = v3, !x) || (ex_pcpathlen = x[1].ex_pcpathlen) == 0 && (ex_pcpathlen = ASN1_item_new(&X509_CERT_AUX_it), (x[1].ex_pcpathlen = ex_pcpathlen) == 0) || (v6 = *ex_pcpathlen) == 0 && (v6 = sk_new_null(), (*ex_pcpathlen = v6) == 0) || (LODWORD(v3) = sk_push(v6, v4), !v3))
    {
      ASN1_OBJECT_free(v4);
      LODWORD(v3) = 0;
    }
  }

  return v3;
}

int X509_add1_reject_object(X509 *x, ASN1_OBJECT *obj)
{
  v3 = OBJ_dup(obj);
  if (v3)
  {
    if ((v4 = v3, !x) || (ex_pcpathlen = x[1].ex_pcpathlen) == 0 && (ex_pcpathlen = ASN1_item_new(&X509_CERT_AUX_it), (x[1].ex_pcpathlen = ex_pcpathlen) == 0) || (v6 = *(ex_pcpathlen + 8)) == 0 && (v6 = sk_new_null(), (*(ex_pcpathlen + 8) = v6) == 0) || (LODWORD(v3) = sk_push(v6, v4), !v3))
    {
      ASN1_OBJECT_free(v4);
      LODWORD(v3) = 0;
    }
  }

  return v3;
}

void X509_trust_clear(X509 *x)
{
  ex_pcpathlen = x[1].ex_pcpathlen;
  if (ex_pcpathlen)
  {
    if (*ex_pcpathlen)
    {
      sk_pop_free(*ex_pcpathlen, ASN1_OBJECT_free);
      *x[1].ex_pcpathlen = 0;
    }
  }
}

void X509_reject_clear(X509 *x)
{
  ex_pcpathlen = x[1].ex_pcpathlen;
  if (ex_pcpathlen)
  {
    v3 = *(ex_pcpathlen + 8);
    if (v3)
    {
      sk_pop_free(v3, ASN1_OBJECT_free);
      *(x[1].ex_pcpathlen + 8) = 0;
    }
  }
}

char *CRYPTO_ofb128_encrypt(char *result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v12 = result;
  v13 = *a6;
  if (*a6)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a3;
  }

  else
  {
    do
    {
      v16 = *v12++;
      *a2++ = *(a5 + v13) ^ v16;
      v15 = a3 - 1;
      v13 = (v13 + 1) & 0xF;
      if (!v13)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  if (v15 < 0x10)
  {
    v19 = v13;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  do
  {
    result = a7(a5, a5, a4);
    if (v13 <= 0xF)
    {
      v17 = v13;
      do
      {
        *&a2[v17] = *(a5 + v17) ^ *&v12[v17];
        v18 = v17 >= 8;
        v17 += 8;
      }

      while (!v18);
    }

    v13 = 0;
    v19 = 0;
    v15 -= 16;
    a2 += 16;
    v12 += 16;
  }

  while (v15 > 0xF);
  if (v15)
  {
LABEL_18:
    result = a7(a5, a5, a4);
    do
    {
      a2[v19] = *(a5 + v19) ^ v12[v19];
      ++v19;
      --v15;
    }

    while (v15);
  }

LABEL_20:
  *a6 = v19;
  return result;
}

uint64_t i2r_certpol(int a1, STACK *a2, BIO *a3, int a4)
{
  v5 = a2;
  if (sk_num(a2) >= 1)
  {
    v6 = 0;
    v23 = a4 + 4;
    v20 = v5;
    do
    {
      v22 = v6;
      v7 = sk_value(v5, v6);
      BIO_printf(a3, "%*sPolicy: ", a4, "");
      i2a_ASN1_OBJECT(a3, *v7);
      BIO_puts(a3, "\n");
      v8 = *(v7 + 1);
      if (v8 && sk_num(*(v7 + 1)) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = sk_value(v8, v9);
          v11 = OBJ_obj2nid(*v10);
          if (v11 == 165)
          {
            BIO_printf(a3, "%*sUser Notice:\n", a4 + 2, "");
            v12 = *(v10 + 1);
            v13 = *v12;
            if (*v12)
            {
              BIO_printf(a3, "%*sOrganization: %.*s\n", v23, "", **v13, *(*v13 + 8));
              v14 = sk_num(*(v13 + 8));
              v15 = "s";
              if (v14 <= 1)
              {
                v15 = "";
              }

              BIO_printf(a3, "%*sNumber%s: ", v23, "", v15);
              if (sk_num(*(v13 + 8)) >= 1)
              {
                v16 = 0;
                do
                {
                  v17 = sk_value(*(v13 + 8), v16);
                  if (v16)
                  {
                    BIO_puts(a3, ", ");
                  }

                  v18 = i2s_ASN1_INTEGER(0, v17);
                  BIO_puts(a3, v18);
                  free(v18);
                  ++v16;
                }

                while (v16 < sk_num(*(v13 + 8)));
              }

              BIO_puts(a3, "\n");
            }

            if (v12[1])
            {
              BIO_printf(a3, "%*sExplicit Text: %.*s\n");
            }
          }

          else if (v11 == 164)
          {
            BIO_printf(a3, "%*sCPS: %.*s\n");
          }

          else
          {
            BIO_printf(a3, "%*sUnknown Qualifier: ", v23, "");
            i2a_ASN1_OBJECT(a3, *v10);
            BIO_puts(a3, "\n");
          }

          ++v9;
        }

        while (v9 < sk_num(v8));
      }

      v6 = v22 + 1;
      v5 = v20;
    }

    while (v22 + 1 < sk_num(v20));
  }

  return 1;
}

STACK *r2i_certpol(uint64_t a1, X509V3_CTX *a2, const char *a3)
{
  v5 = sk_new_null();
  if (!v5)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", 431);
    return v5;
  }

  v6 = X509V3_parse_list(a3);
  v7 = v6;
  if (!v6)
  {
    v50 = 34;
    v51 = 436;
LABEL_74:
    ERR_put_error(34, 4095, v50, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v51);
    goto LABEL_100;
  }

  if (sk_num(v6) < 1)
  {
LABEL_71:
    sk_pop_free(v7, X509V3_conf_free);
    return v5;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = sk_value(v7, v9);
    v11 = v10;
    if (*(v10 + 2) || (v12 = *(v10 + 1)) == 0)
    {
      v52 = 134;
      v53 = 443;
LABEL_76:
      ERR_put_error(34, 4095, v52, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v53);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v11, v11[1], v11[2]);
      goto LABEL_100;
    }

    if (!strcmp(*(v10 + 1), "ia5org"))
    {
      v8 = 1;
      goto LABEL_70;
    }

    if (*v12 == 64)
    {
      break;
    }

    v48 = OBJ_txt2obj(v12, 0);
    if (!v48)
    {
      v52 = 110;
      v53 = 465;
      goto LABEL_76;
    }

    v49 = v48;
    v15 = ASN1_item_new(&POLICYINFO_it);
    *v15 = v49;
LABEL_69:
    if (!sk_push(v5, v15))
    {
      ASN1_item_free(v15, &POLICYINFO_it);
      v50 = 65;
      v51 = 474;
      goto LABEL_74;
    }

LABEL_70:
    if (++v9 >= sk_num(v7))
    {
      goto LABEL_71;
    }
  }

  section = X509V3_get_section(a2, (v12 + 1));
  if (!section)
  {
    v52 = 135;
    v53 = 455;
    goto LABEL_76;
  }

  v14 = section;
  v15 = ASN1_item_new(&POLICYINFO_it);
  if (!v15)
  {
LABEL_84:
    v42 = 0;
LABEL_85:
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", 568);
    goto LABEL_99;
  }

  v67 = v8;
  if (sk_num(v14) < 1)
  {
LABEL_64:
    if (!*v15)
    {
      ERR_put_error(34, 4095, 139, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", 561);
      goto LABEL_92;
    }

    X509V3_section_free(a2, v14);
    v8 = v67;
    goto LABEL_69;
  }

  v16 = 0;
  if (v8)
  {
    v17 = 22;
  }

  else
  {
    v17 = 26;
  }

  v63 = v17;
  v64 = v15;
  ctx = a2;
  v66 = v14;
  while (1)
  {
    v18 = sk_value(v14, v16);
    v19 = v18[1];
    if (!strcmp(v19, "policyIdentifier"))
    {
      v41 = OBJ_txt2obj(v18[2], 0);
      if (v41)
      {
        *v15 = v41;
        goto LABEL_63;
      }

      v58 = 110;
      v59 = 503;
LABEL_91:
      ERR_put_error(34, 4095, v58, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v59);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v18, v18[1], v18[2]);
LABEL_92:
      v42 = 0;
      goto LABEL_99;
    }

    if (!name_cmp(v19, "CPS"))
    {
      v42 = ASN1_item_new(&POLICYQUALINFO_it);
      if (!v42)
      {
        goto LABEL_85;
      }

      *v42 = OBJ_nid2obj(164);
      v43 = ASN1_IA5STRING_new();
      *(v42 + 1) = v43;
      if (!v43)
      {
        goto LABEL_85;
      }

      v44 = v43;
      v45 = v18[2];
      v46 = strlen(v45);
      if (!ASN1_STRING_set(v44, v45, v46))
      {
        goto LABEL_85;
      }

      v47 = *(v15 + 1);
      if (!v47)
      {
        v47 = sk_new_null();
        *(v15 + 1) = v47;
        if (!v47)
        {
          goto LABEL_85;
        }
      }

      if (!sk_push(v47, v42))
      {
        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (name_cmp(v18[1], "userNotice"))
    {
      v58 = 138;
      v59 = 555;
      goto LABEL_91;
    }

    v20 = v18[2];
    if (*v20 != 64)
    {
      v58 = 137;
      v59 = 532;
      goto LABEL_91;
    }

    v21 = X509V3_get_section(a2, v20 + 1);
    if (!v21)
    {
      ERR_put_error(34, 4095, 135, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", 538);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v18, v18[1], v18[2]);
      goto LABEL_98;
    }

    v22 = v21;
    data = ASN1_item_new(&POLICYQUALINFO_it);
    if (!data || (*data = OBJ_nid2obj(165), (v23 = ASN1_item_new(&USERNOTICE_it)) == 0))
    {
LABEL_81:
      v56 = 65;
      v57 = 654;
LABEL_82:
      ERR_put_error(34, 4095, v56, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v57);
      goto LABEL_97;
    }

    v24 = v23;
    *(data + 1) = v23;
    if (sk_num(v22) >= 1)
    {
      break;
    }

LABEL_48:
    v39 = *v24;
    if (*v24 && (!*(v39 + 1) || !*v39))
    {
      v56 = 142;
      v57 = 647;
      goto LABEL_82;
    }

    a2 = ctx;
    X509V3_section_free(ctx, v22);
    v15 = v64;
    v40 = *(v64 + 1);
    if (!v40)
    {
      v40 = sk_new_null();
      *(v64 + 1) = v40;
      if (!v40)
      {
        v42 = 0;
        v14 = v66;
        goto LABEL_85;
      }
    }

    v14 = v66;
    if (!sk_push(v40, data))
    {
      goto LABEL_84;
    }

LABEL_63:
    if (++v16 >= sk_num(v14))
    {
      goto LABEL_64;
    }
  }

  v25 = 0;
  while (1)
  {
    v26 = sk_value(v22, v25);
    v27 = v26[1];
    if (!strcmp(v27, "explicitText"))
    {
      v36 = *(v24 + 1);
      if (!v36)
      {
        v36 = ASN1_UTF8STRING_new();
        *(v24 + 1) = v36;
        if (!v36)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_46;
    }

    if (!strcmp(v27, "organization"))
    {
      v37 = *v24;
      if (!*v24)
      {
        v37 = ASN1_item_new(&NOTICEREF_it);
        if (!v37)
        {
          goto LABEL_81;
        }

        *v24 = v37;
      }

      v36 = *v37;
      *(*v37 + 4) = v63;
LABEL_46:
      v38 = strlen(v26[2]);
      if (!ASN1_STRING_set(v36, v26[2], v38))
      {
        goto LABEL_81;
      }

      goto LABEL_47;
    }

    if (strcmp(v27, "noticeNumbers"))
    {
      v60 = 138;
      v61 = 639;
      goto LABEL_96;
    }

    v28 = *v24;
    if (!*v24)
    {
      v29 = ASN1_item_new(&NOTICEREF_it);
      if (!v29)
      {
        goto LABEL_81;
      }

      v28 = v29;
      *v24 = v29;
    }

    v30 = X509V3_parse_list(v26[2]);
    if (!v30)
    {
      break;
    }

    v31 = v30;
    if (!sk_num(v30))
    {
      ERR_put_error(34, 4095, 141, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", 627);
      ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v26, v26[1], v26[2]);
LABEL_80:
      sk_pop_free(v31, X509V3_conf_free);
      goto LABEL_97;
    }

    v32 = *(v28 + 1);
    if (sk_num(v31) >= 1)
    {
      v33 = 0;
      while (1)
      {
        v34 = sk_value(v31, v33);
        v35 = s2i_ASN1_INTEGER(0, *(v34 + 1));
        if (!v35)
        {
          v54 = 140;
          v55 = 671;
          goto LABEL_79;
        }

        if (!sk_push(v32, v35))
        {
          break;
        }

        if (++v33 >= sk_num(v31))
        {
          goto LABEL_38;
        }
      }

      v54 = 65;
      v55 = 680;
LABEL_79:
      ERR_put_error(34, 4095, v54, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v55);
      sk_pop_free(v32, ASN1_STRING_free);
      goto LABEL_80;
    }

LABEL_38:
    sk_pop_free(v31, X509V3_conf_free);
LABEL_47:
    if (++v25 >= sk_num(v22))
    {
      goto LABEL_48;
    }
  }

  v60 = 141;
  v61 = 627;
LABEL_96:
  ERR_put_error(34, 4095, v60, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cpols.c", v61);
  ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v26, v26[1], v26[2]);
LABEL_97:
  v15 = v64;
  a2 = ctx;
  ASN1_item_free(data, &POLICYQUALINFO_it);
  X509V3_section_free(ctx, v22);
LABEL_98:
  v42 = 0;
  v14 = v66;
LABEL_99:
  ASN1_item_free(v42, &POLICYQUALINFO_it);
  ASN1_item_free(v15, &POLICYINFO_it);
  X509V3_section_free(a2, v14);
LABEL_100:
  sk_pop_free(v7, X509V3_conf_free);
  sk_pop_free(v5, POLICYINFO_free);
  return 0;
}

uint64_t OpenSSL_add_all_ciphers_internal()
{
  v0 = EVP_des_cfb64();
  EVP_add_cipher(v0);
  v1 = EVP_des_cfb1();
  EVP_add_cipher(v1);
  v2 = EVP_des_cfb8();
  EVP_add_cipher(v2);
  v3 = EVP_des_ede_cfb64();
  EVP_add_cipher(v3);
  v4 = EVP_des_ede3_cfb64();
  EVP_add_cipher(v4);
  v5 = EVP_des_ede3_cfb1();
  EVP_add_cipher(v5);
  v6 = EVP_des_ede3_cfb8();
  EVP_add_cipher(v6);
  v7 = EVP_des_ofb();
  EVP_add_cipher(v7);
  v8 = EVP_des_ede_ofb();
  EVP_add_cipher(v8);
  v9 = EVP_des_ede3_ofb();
  EVP_add_cipher(v9);
  v10 = EVP_desx_cbc();
  EVP_add_cipher(v10);
  OBJ_NAME_add("DESX", 32770, "DESX-CBC");
  OBJ_NAME_add("desx", 32770, "DESX-CBC");
  v11 = EVP_des_cbc();
  EVP_add_cipher(v11);
  OBJ_NAME_add("DES", 32770, "DES-CBC");
  OBJ_NAME_add("des", 32770, "DES-CBC");
  v12 = EVP_des_ede_cbc();
  EVP_add_cipher(v12);
  v13 = EVP_des_ede3_cbc();
  EVP_add_cipher(v13);
  OBJ_NAME_add("DES3", 32770, "DES-EDE3-CBC");
  OBJ_NAME_add("des3", 32770, "DES-EDE3-CBC");
  v14 = EVP_des_ecb();
  EVP_add_cipher(v14);
  v15 = EVP_des_ede();
  EVP_add_cipher(v15);
  v16 = EVP_des_ede3();
  EVP_add_cipher(v16);
  v17 = EVP_rc4();
  EVP_add_cipher(v17);
  v18 = EVP_rc4_40();
  EVP_add_cipher(v18);
  v19 = EVP_rc4_hmac_md5();
  EVP_add_cipher(v19);
  v20 = EVP_idea_ecb();
  EVP_add_cipher(v20);
  v21 = EVP_idea_cfb64();
  EVP_add_cipher(v21);
  v22 = EVP_idea_ofb();
  EVP_add_cipher(v22);
  v23 = EVP_idea_cbc();
  EVP_add_cipher(v23);
  OBJ_NAME_add("IDEA", 32770, "IDEA-CBC");
  OBJ_NAME_add("idea", 32770, "IDEA-CBC");
  v24 = EVP_rc2_ecb();
  EVP_add_cipher(v24);
  v25 = EVP_rc2_cfb64();
  EVP_add_cipher(v25);
  v26 = EVP_rc2_ofb();
  EVP_add_cipher(v26);
  v27 = EVP_rc2_cbc();
  EVP_add_cipher(v27);
  v28 = EVP_rc2_40_cbc();
  EVP_add_cipher(v28);
  v29 = EVP_rc2_64_cbc();
  EVP_add_cipher(v29);
  OBJ_NAME_add("RC2", 32770, "RC2-CBC");
  OBJ_NAME_add("rc2", 32770, "RC2-CBC");
  v30 = EVP_bf_ecb();
  EVP_add_cipher(v30);
  v31 = EVP_bf_cfb64();
  EVP_add_cipher(v31);
  v32 = EVP_bf_ofb();
  EVP_add_cipher(v32);
  v33 = EVP_bf_cbc();
  EVP_add_cipher(v33);
  OBJ_NAME_add("BF", 32770, "BF-CBC");
  OBJ_NAME_add("bf", 32770, "BF-CBC");
  OBJ_NAME_add("blowfish", 32770, "BF-CBC");
  v34 = EVP_cast5_ecb();
  EVP_add_cipher(v34);
  v35 = EVP_cast5_cfb64();
  EVP_add_cipher(v35);
  v36 = EVP_cast5_ofb();
  EVP_add_cipher(v36);
  v37 = EVP_cast5_cbc();
  EVP_add_cipher(v37);
  OBJ_NAME_add("CAST", 32770, "CAST5-CBC");
  OBJ_NAME_add("cast", 32770, "CAST5-CBC");
  OBJ_NAME_add("CAST-cbc", 32770, "CAST5-CBC");
  OBJ_NAME_add("cast-cbc", 32770, "CAST5-CBC");
  v38 = EVP_aes_128_ecb();
  EVP_add_cipher(v38);
  v39 = EVP_aes_128_cbc();
  EVP_add_cipher(v39);
  v40 = EVP_aes_128_ccm();
  EVP_add_cipher(v40);
  v41 = EVP_aes_128_cfb128();
  EVP_add_cipher(v41);
  v42 = EVP_aes_128_cfb1();
  EVP_add_cipher(v42);
  v43 = EVP_aes_128_cfb8();
  EVP_add_cipher(v43);
  v44 = EVP_aes_128_ofb();
  EVP_add_cipher(v44);
  v45 = EVP_aes_128_ctr();
  EVP_add_cipher(v45);
  v46 = EVP_aes_128_gcm();
  EVP_add_cipher(v46);
  v47 = EVP_aes_128_wrap();
  EVP_add_cipher(v47);
  v48 = EVP_aes_128_xts();
  EVP_add_cipher(v48);
  OBJ_NAME_add("AES128", 32770, "AES-128-CBC");
  OBJ_NAME_add("aes128", 32770, "AES-128-CBC");
  v49 = EVP_aes_192_ecb();
  EVP_add_cipher(v49);
  v50 = EVP_aes_192_cbc();
  EVP_add_cipher(v50);
  v51 = EVP_aes_192_ccm();
  EVP_add_cipher(v51);
  v52 = EVP_aes_192_cfb128();
  EVP_add_cipher(v52);
  v53 = EVP_aes_192_cfb1();
  EVP_add_cipher(v53);
  v54 = EVP_aes_192_cfb8();
  EVP_add_cipher(v54);
  v55 = EVP_aes_192_ofb();
  EVP_add_cipher(v55);
  v56 = EVP_aes_192_ctr();
  EVP_add_cipher(v56);
  v57 = EVP_aes_192_gcm();
  EVP_add_cipher(v57);
  v58 = EVP_aes_192_wrap();
  EVP_add_cipher(v58);
  OBJ_NAME_add("AES192", 32770, "AES-192-CBC");
  OBJ_NAME_add("aes192", 32770, "AES-192-CBC");
  v59 = EVP_aes_256_ecb();
  EVP_add_cipher(v59);
  v60 = EVP_aes_256_cbc();
  EVP_add_cipher(v60);
  v61 = EVP_aes_256_ccm();
  EVP_add_cipher(v61);
  v62 = EVP_aes_256_cfb128();
  EVP_add_cipher(v62);
  v63 = EVP_aes_256_cfb1();
  EVP_add_cipher(v63);
  v64 = EVP_aes_256_cfb8();
  EVP_add_cipher(v64);
  v65 = EVP_aes_256_ofb();
  EVP_add_cipher(v65);
  v66 = EVP_aes_256_ctr();
  EVP_add_cipher(v66);
  v67 = EVP_aes_256_gcm();
  EVP_add_cipher(v67);
  v68 = EVP_aes_256_wrap();
  EVP_add_cipher(v68);
  v69 = EVP_aes_256_xts();
  EVP_add_cipher(v69);
  OBJ_NAME_add("AES256", 32770, "AES-256-CBC");
  OBJ_NAME_add("aes256", 32770, "AES-256-CBC");
  v70 = EVP_aes_128_cbc_hmac_sha1();
  EVP_add_cipher(v70);
  v71 = EVP_aes_256_cbc_hmac_sha1();
  EVP_add_cipher(v71);
  v72 = EVP_camellia_128_ecb();
  EVP_add_cipher(v72);
  v73 = EVP_camellia_128_cbc();
  EVP_add_cipher(v73);
  v74 = EVP_camellia_128_cfb128();
  EVP_add_cipher(v74);
  v75 = EVP_camellia_128_cfb1();
  EVP_add_cipher(v75);
  v76 = EVP_camellia_128_cfb8();
  EVP_add_cipher(v76);
  v77 = EVP_camellia_128_ofb();
  EVP_add_cipher(v77);
  OBJ_NAME_add("CAMELLIA128", 32770, "CAMELLIA-128-CBC");
  OBJ_NAME_add("camellia128", 32770, "CAMELLIA-128-CBC");
  v78 = EVP_camellia_192_ecb();
  EVP_add_cipher(v78);
  v79 = EVP_camellia_192_cbc();
  EVP_add_cipher(v79);
  v80 = EVP_camellia_192_cfb128();
  EVP_add_cipher(v80);
  v81 = EVP_camellia_192_cfb1();
  EVP_add_cipher(v81);
  v82 = EVP_camellia_192_cfb8();
  EVP_add_cipher(v82);
  v83 = EVP_camellia_192_ofb();
  EVP_add_cipher(v83);
  OBJ_NAME_add("CAMELLIA192", 32770, "CAMELLIA-192-CBC");
  OBJ_NAME_add("camellia192", 32770, "CAMELLIA-192-CBC");
  v84 = EVP_camellia_256_ecb();
  EVP_add_cipher(v84);
  v85 = EVP_camellia_256_cbc();
  EVP_add_cipher(v85);
  v86 = EVP_camellia_256_cfb128();
  EVP_add_cipher(v86);
  v87 = EVP_camellia_256_cfb1();
  EVP_add_cipher(v87);
  v88 = EVP_camellia_256_cfb8();
  EVP_add_cipher(v88);
  v89 = EVP_camellia_256_ofb();
  EVP_add_cipher(v89);
  OBJ_NAME_add("CAMELLIA256", 32770, "CAMELLIA-256-CBC");
  OBJ_NAME_add("camellia256", 32770, "CAMELLIA-256-CBC");
  v90 = EVP_chacha20();
  EVP_add_cipher(v90);
  v91 = EVP_chacha20_poly1305();
  EVP_add_cipher(v91);
  v92 = EVP_gost2814789_ecb();
  EVP_add_cipher(v92);
  v93 = EVP_gost2814789_cfb64();
  EVP_add_cipher(v93);
  v94 = EVP_gost2814789_cnt();
  EVP_add_cipher(v94);
  v95 = EVP_sm4_ecb();
  EVP_add_cipher(v95);
  v96 = EVP_sm4_cbc();
  EVP_add_cipher(v96);
  v97 = EVP_sm4_cfb128();
  EVP_add_cipher(v97);
  v98 = EVP_sm4_ofb();
  EVP_add_cipher(v98);
  v99 = EVP_sm4_ctr();
  EVP_add_cipher(v99);
  OBJ_NAME_add("SM4", 32770, "SM4-CBC");

  return OBJ_NAME_add("sm4", 32770, "SM4-CBC");
}

uint64_t OpenSSL_add_all_digests_internal()
{
  v0 = EVP_md4();
  EVP_add_digest(v0);
  v1 = EVP_md5();
  EVP_add_digest(v1);
  v2 = EVP_md5_sha1();
  EVP_add_digest(v2);
  OBJ_NAME_add("ssl2-md5", 32769, "MD5");
  OBJ_NAME_add("ssl3-md5", 32769, "MD5");
  v3 = EVP_sha1();
  EVP_add_digest(v3);
  OBJ_NAME_add("ssl3-sha1", 32769, "SHA1");
  OBJ_NAME_add("RSA-SHA1-2", 32769, "RSA-SHA1");
  v4 = EVP_gostr341194();
  EVP_add_digest(v4);
  v5 = EVP_gost2814789imit();
  EVP_add_digest(v5);
  v6 = EVP_streebog256();
  EVP_add_digest(v6);
  v7 = EVP_streebog512();
  EVP_add_digest(v7);
  v8 = EVP_ripemd160();
  EVP_add_digest(v8);
  OBJ_NAME_add("ripemd", 32769, "RIPEMD160");
  OBJ_NAME_add("rmd160", 32769, "RIPEMD160");
  v9 = EVP_sha224();
  EVP_add_digest(v9);
  v10 = EVP_sha256();
  EVP_add_digest(v10);
  v11 = EVP_sha384();
  EVP_add_digest(v11);
  v12 = EVP_sha512();
  EVP_add_digest(v12);
  v13 = EVP_sha512_224();
  EVP_add_digest(v13);
  v14 = EVP_sha512_256();
  EVP_add_digest(v14);
  v15 = EVP_sha3_224();
  EVP_add_digest(v15);
  v16 = EVP_sha3_256();
  EVP_add_digest(v16);
  v17 = EVP_sha3_384();
  EVP_add_digest(v17);
  v18 = EVP_sha3_512();
  EVP_add_digest(v18);
  v19 = EVP_sm3();
  EVP_add_digest(v19);
  v20 = EVP_whirlpool();

  return EVP_add_digest(v20);
}

void OPENSSL_add_all_algorithms_noconf(void)
{
  OPENSSL_cpuid_setup();
  pthread_once(&OpenSSL_add_all_ciphers_add_all_ciphers_once, OpenSSL_add_all_ciphers_internal);

  pthread_once(&OpenSSL_add_all_digests_add_all_digests_once, OpenSSL_add_all_digests_internal);
}

void OPENSSL_add_all_algorithms_conf(void)
{
  OPENSSL_add_all_algorithms_noconf();

  OPENSSL_config(0);
}

int BN_kronecker(const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v6 = BN_CTX_get(ctx);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_50;
  }

  v9 = v8;
  if (!bn_copy(v7, a) || !bn_copy(v9, b))
  {
    goto LABEL_50;
  }

  if (BN_is_zero(v9))
  {
    is_word = BN_abs_is_word(v7, 1);
    goto LABEL_51;
  }

  if (!BN_is_odd(v7) && !BN_is_odd(v9))
  {
    is_word = 0;
    goto LABEL_51;
  }

  v11 = -1;
  do
  {
    ++v11;
  }

  while (!BN_is_bit_set(v9, v11));
  if (!BN_rshift(v9, v9, v11))
  {
LABEL_50:
    is_word = -2;
    goto LABEL_51;
  }

  if (v11)
  {
    if (v7->top)
    {
      v13 = *v7->d & 7;
    }

    else
    {
      v13 = 0;
    }

    v12 = BN_kronecker_tab[v13];
  }

  else
  {
    v12 = 1;
  }

  if (BN_is_negative(v9))
  {
    BN_set_negative(v9, 0);
    if (BN_is_negative(v7))
    {
      v12 = -v12;
    }
  }

  if (!BN_is_zero(v7))
  {
    while (1)
    {
      v14 = v7;
      v7 = v9;
      v15 = -1;
      do
      {
        ++v15;
      }

      while (!BN_is_bit_set(v14, v15));
      if (!BN_rshift(v14, v14, v15))
      {
        goto LABEL_50;
      }

      if (v15)
      {
        if (v7->top)
        {
          v16 = *v7->d & 7;
        }

        else
        {
          v16 = 0;
        }

        v12 *= BN_kronecker_tab[v16];
      }

      is_negative = BN_is_negative(v14);
      top = v14->top;
      if (is_negative)
      {
        if (top)
        {
          v19 = ~*v14->d;
        }

        else
        {
          LOBYTE(v19) = -1;
        }
      }

      else if (top)
      {
        v19 = *v14->d;
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      if (v7->top)
      {
        v20 = *v7->d;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      if (!BN_nnmod(v7, v7, v14, ctx))
      {
        goto LABEL_50;
      }

      if ((v19 & v20 & 2) != 0)
      {
        v12 = -v12;
      }

      BN_set_negative(v14, 0);
      v9 = v14;
      if (BN_is_zero(v7))
      {
        goto LABEL_24;
      }
    }
  }

  v14 = v9;
LABEL_24:
  if (BN_is_one(v14))
  {
    is_word = v12;
  }

  else
  {
    is_word = 0;
  }

LABEL_51:
  BN_CTX_end(ctx);
  return is_word;
}

unint64_t idea_set_encrypt_key(unint64_t result, int *a2)
{
  v2 = *result;
  *a2 = v2 << 8;
  *a2 = *(result + 1) | (v2 << 8);
  v3 = *(result + 2);
  a2[1] = v3 << 8;
  v4 = *(result + 3) | (v3 << 8);
  a2[1] = v4;
  v5 = *(result + 4);
  a2[2] = v5 << 8;
  v6 = *(result + 5) | (v5 << 8);
  a2[2] = v6;
  v7 = *(result + 6);
  a2[3] = v7 << 8;
  v8 = *(result + 7) | (v7 << 8);
  a2[3] = v8;
  v9 = *(result + 8);
  a2[4] = v9 << 8;
  v10 = *(result + 9) | (v9 << 8);
  a2[4] = v10;
  v11 = *(result + 10);
  a2[5] = v11 << 8;
  v12 = *(result + 11) | (v11 << 8);
  a2[5] = v12;
  v13 = *(result + 12);
  a2[6] = v13 << 8;
  v14 = *(result + 13) | (v13 << 8);
  a2[6] = v14;
  v15 = *(result + 14);
  a2[7] = v15 << 8;
  v16 = *(result + 15) | (v15 << 8);
  a2[7] = v16;
  v17 = a2 + 15;
  for (i = 5; ; --i)
  {
    v19 = ((v8 >> 7) | (v6 << 9));
    *(v17 - 7) = ((v6 >> 7) | (v4 << 9));
    *(v17 - 6) = v19;
    v6 = ((v10 >> 7) | (v8 << 9));
    v8 = ((v12 >> 7) | (v10 << 9));
    *(v17 - 5) = v6;
    *(v17 - 4) = v8;
    v10 = ((v14 >> 7) | (v12 << 9));
    v12 = ((v16 >> 7) | (v14 << 9));
    *(v17 - 3) = v10;
    *(v17 - 2) = v12;
    if (!i)
    {
      break;
    }

    result = *(v17 - 15);
    v14 = ((result >> 7) | (v16 << 9));
    v16 = ((result << 9) | (v4 >> 7));
    *(v17 - 1) = v14;
    *v17 = v16;
    v17 += 8;
    v4 = v19;
  }

  return result;
}

int32x2_t idea_set_decrypt_key(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a1 + 192);
  for (i = a2; ; i += 6)
  {
    v5 = *v3;
    if (v5)
    {
      v6 = 0x10001 % v5;
      if (v6)
      {
        v7 = 0;
        v8 = 1;
        v9 = 65537;
        do
        {
          v10 = v5;
          v11 = v8;
          v5 = v6;
          v8 = v7 - (v9 - v6) / v10 * v8;
          v6 = v10 % v6;
          v7 = v11;
          v9 = v10;
        }

        while (v6);
        LODWORD(v5) = v8 + 65537;
        if (v8 >= 0)
        {
          LODWORD(v5) = v8;
        }
      }

      else
      {
        LODWORD(v5) = 1;
      }
    }

    *i = v5;
    i[1] = -*(v3 + 4);
    i[2] = -*(v3 + 2);
    v12 = v3[3];
    if (v12)
    {
      v13 = 0x10001 % v12;
      if (v13)
      {
        v14 = 0;
        v15 = 1;
        v16 = 65537;
        do
        {
          v17 = v12;
          v18 = v15;
          v12 = v13;
          v15 = v14 - (v16 - v13) / v17 * v15;
          v13 = v17 % v13;
          v14 = v18;
          v16 = v17;
        }

        while (v13);
        LODWORD(v12) = v15 + 65537;
        if (v15 >= 0)
        {
          LODWORD(v12) = v15;
        }
      }

      else
      {
        LODWORD(v12) = 1;
      }
    }

    i[3] = v12;
    if (v2 == 8)
    {
      break;
    }

    i[4] = *(v3 - 2);
    v19 = *(v3 - 1);
    v3 -= 6;
    i[5] = v19;
    ++v2;
  }

  *(a2 + 4) = vrev64_s32(*(a2 + 4));
  result = vrev64_s32(*(a2 + 196));
  *(a2 + 196) = result;
  return result;
}

void *def_create(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xA0040A8488062uLL);
  v3 = v2;
  if (v2 && !(*(a1 + 16))(v2))
  {
    free(v3);
    return 0;
  }

  return v3;
}

uint64_t def_init_default(uint64_t result)
{
  if (result)
  {
    *result = &default_method;
    *(result + 8) = &CONF_type_default;
    *(result + 16) = 0;
    return 1;
  }

  return result;
}

CONF *def_destroy(CONF *result)
{
  if (result)
  {
    v1 = result;
    _CONF_free_data(result);
    free(v1);
    return 1;
  }

  return result;
}

CONF *def_destroy_data(CONF *result)
{
  if (result)
  {
    _CONF_free_data(result);
    return 1;
  }

  return result;
}

uint64_t def_load_bio(CONF *a1, BIO *a2, uint64_t *a3)
{
  data = a1->data;
  v7 = BUF_MEM_new();
  if (!v7)
  {
    ERR_put_error(14, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", 229);
    v81 = 0;
    v64 = 0;
    v11 = 0;
    goto LABEL_149;
  }

  v8 = v7;
  v9 = strdup("default");
  section = v9;
  if (!v9)
  {
    v82 = 65;
    v83 = 235;
LABEL_147:
    ERR_put_error(14, 4095, v82, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", v83);
    v64 = 0;
    v11 = 0;
    goto LABEL_148;
  }

  v10 = v9;
  if (!_CONF_new_data(a1))
  {
    v82 = 65;
    v83 = 240;
    goto LABEL_147;
  }

  v89 = _CONF_new_section(a1, v10);
  if (!v89)
  {
    v82 = 103;
    v83 = 246;
    goto LABEL_147;
  }

  v11 = 0;
  if (!BUF_MEM_grow(v8, 512))
  {
LABEL_139:
    v79 = 7;
    v80 = 254;
    goto LABEL_140;
  }

  v88 = a2;
  while (2)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = &v8->data[v13];
      *v14 = 0;
      BIO_gets(a2, v14, 511);
      v14[511] = 0;
      v15 = strlen(v14);
      if ((v12 & 1) == 0 && !v15)
      {
        BUF_MEM_free(v8);
        free(section);
        return 1;
      }

      LODWORD(v16) = v15;
      if (v15 >= 1)
      {
        v16 = v15 & 0x7FFFFFFF;
        while (1)
        {
          v17 = v14[v16 - 1];
          v18 = v17 == 13 || v17 == 10;
          if (!v18)
          {
            break;
          }

          if (v16-- <= 1)
          {
            LODWORD(v16) = 0;
            break;
          }
        }
      }

      if (v15)
      {
        v20 = v16 == v15;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      if (!v20)
      {
        v14[v16] = 0;
        ++v11;
      }

      v22 = v16 + v13;
      if (v22 >= 1)
      {
        v23 = &v8->data[v22];
        meth_data = a1->meth_data;
        if ((meth_data[*(v23 - 1)] & 0x20) != 0)
        {
          v13 = v22 - 1;
          if (v22 == 1 || (meth_data[*(v23 - 2)] & 0x20) == 0)
          {
            v12 = 1;
            goto LABEL_117;
          }
        }
      }

      if (v21)
      {
        v12 = 1;
        v13 = v22;
        goto LABEL_117;
      }

      v25 = v8->data;
      v26 = a1->meth_data;
      v27 = *v25;
      v28 = v26[*v25];
      v29 = v25;
      if ((v28 & 0x800) == 0)
      {
        v29 = v8->data;
        if ((v28 & 0x10) != 0)
        {
          v29 = v25 + 1;
          while (1)
          {
            v27 = *v29;
            v28 = v26[*v29];
            if ((v28 & 0x800) != 0)
            {
              break;
            }

            ++v29;
            if ((v28 & 0x10) == 0)
            {
              --v29;
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          while ((v28 & 0x80) == 0)
          {
            if ((v28 & 0x400) != 0)
            {
              for (i = v29; ; v29 = i)
              {
                v32 = *++i;
                v31 = v32;
                if ((v26[v32] & 8) != 0)
                {
                  break;
                }

                if (v31 == v27)
                {
                  if (v29[2] != v27)
                  {
                    v31 = v27;
                    break;
                  }

                  i = (v29 + 2);
                }
              }

              v29 += 2;
              if (v31 != v27)
              {
                v29 = i;
              }
            }

            else if ((v28 & 0x40) != 0)
            {
              v33 = (v29 + 1);
              v34 = v26[v29[1]];
              v35 = v29[1] == v27;
              if (v29[1] != v27 && (v34 & 8) == 0)
              {
                while (1)
                {
                  v37 = v33;
                  if ((v34 & 0x20) != 0)
                  {
                    v38 = v29[2];
                    v29 += 2;
                    v37 = v29;
                    if ((v26[v38] & 8) != 0)
                    {
                      break;
                    }
                  }

                  v33 = v37 + 1;
                  v39 = v37[1];
                  v34 = v26[v37[1]];
                  v35 = v39 == v27;
                  v40 = v39 != v27 && (v34 & 8) == 0;
                  v29 = v37;
                  if (!v40)
                  {
                    v29 = v37;
                    goto LABEL_62;
                  }
                }
              }

              else
              {
LABEL_62:
                v29 += 2;
                if (!v35)
                {
                  v29 = v33;
                }
              }
            }

            else if ((v28 & 0x20) != 0)
            {
              v41 = *++v29;
              if ((v26[v41] & 8) == 0)
              {
                ++v29;
              }
            }

            else
            {
              if ((v28 & 8) != 0)
              {
                goto LABEL_73;
              }

              ++v29;
            }

            v27 = *v29;
            v28 = v26[*v29];
          }
        }
      }

      *v29 = 0;
      v26 = a1->meth_data;
      do
      {
LABEL_73:
        v42 = v25;
        v44 = *v25++;
        v43 = v44;
        v45 = v26[v44];
      }

      while ((v45 & 0x18) == 0x10);
      if ((v45 & 8) != 0)
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_117;
      }

      v46 = v25 - 1;
      v47 = (v25 - 1);
      if (v43 == 91)
      {
        break;
      }

      for (; (v45 & 0x20) != 0; v45 = v26[*v47])
      {
        v48 = *++v47;
        if ((v26[v48] & 8) == 0)
        {
          ++v47;
        }

LABEL_81:
        v43 = *v47;
      }

      if ((v45 & 0x307) != 0)
      {
        ++v47;
        goto LABEL_81;
      }

      if (v43 == 58 && v47[1] == 58)
      {
        *v47 = 0;
        v47 += 2;
        v49 = v47;
        v26 = a1->meth_data;
        while (1)
        {
          while ((v26[*v47] & 0x20) != 0)
          {
            v50 = *++v47;
            if ((v26[v50] & 8) == 0)
            {
              ++v47;
            }
          }

          if ((v26[*v47] & 0x307) == 0)
          {
            break;
          }

          ++v47;
        }

        v51 = v46;
        v46 = v49;
      }

      else
      {
        v51 = 0;
      }

      v52 = v47;
      do
      {
        v53 = v52;
        v55 = *v52++;
        v54 = v55;
      }

      while ((v26[v55] & 0x18) == 0x10);
      if (v54 != 61)
      {
        v79 = 101;
        v80 = 346;
        goto LABEL_140;
      }

      *v47 = 0;
      v56 = a1->meth_data;
      v57 = 1;
      v58 = v53;
      do
      {
        v59 = *++v58;
        v60 = v57++;
      }

      while ((v56[v59] & 0x18) == 0x10);
      do
      {
        v61 = v60;
        v62 = *++v53;
        --v60;
      }

      while ((v56[v62] & 8) == 0);
      do
      {
        v63 = v53;
        if (!v61)
        {
          break;
        }

        --v53;
        ++v61;
      }

      while ((v56[*(v63 - 1)] & 0x10) != 0);
      *v63 = 0;
      v64 = malloc_type_malloc(0x18uLL, 0x100402FEFCB83uLL);
      if (!v64)
      {
        v86 = 65;
        v87 = 361;
LABEL_162:
        ERR_put_error(14, 4095, v86, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", v87);
        goto LABEL_148;
      }

      v65 = section;
      if (!v51)
      {
        v51 = section;
      }

      v66 = strdup(v46);
      v64->value = 0;
      v64->name = v66;
      if (!v66)
      {
        v86 = 65;
        v87 = 369;
        goto LABEL_162;
      }

      if (!str_copy(a1, v51, &v64->value, v58))
      {
        goto LABEL_148;
      }

      v67 = strcmp(v51, v65);
      v68 = v89;
      if (v67)
      {
        v69 = _CONF_get_section(a1, v51);
        if (!v69)
        {
          v69 = _CONF_new_section(a1, v51);
          if (!v69)
          {
            v86 = 103;
            v87 = 380;
            goto LABEL_162;
          }
        }

        v68 = v69;
      }

      if (!_CONF_add_string(a1, v68, v64))
      {
        v86 = 65;
        v87 = 387;
        goto LABEL_162;
      }

      v12 = 0;
      v13 = 0;
      a2 = v88;
LABEL_117:
      if (!BUF_MEM_grow(v8, v13 + 512))
      {
        goto LABEL_139;
      }
    }

    do
    {
      v71 = *++v42;
      v70 = v71;
    }

    while ((v26[v71] & 0x18) == 0x10);
    v72 = v42;
LABEL_121:
    v73 = v72;
    while (2)
    {
      v74 = v26[v70];
      if ((v74 & 0x20) != 0)
      {
        v75 = *++v73;
        if ((v26[v75] & 8) == 0)
        {
          ++v73;
        }

        goto LABEL_127;
      }

      if ((v74 & 0x307) != 0)
      {
        ++v73;
LABEL_127:
        v70 = *v73;
        continue;
      }

      break;
    }

    v76 = v73 - 1;
    do
    {
      v77 = *++v76;
      v70 = v77;
    }

    while ((v26[v77] & 0x18) == 0x10);
    if (!v70)
    {
      goto LABEL_163;
    }

    if (v70 == 93)
    {
      *v73 = 0;
      if (!str_copy(a1, 0, &section, v42))
      {
        goto LABEL_141;
      }

      v78 = section;
      v89 = _CONF_get_section(a1, section);
      if (!v89)
      {
        v89 = _CONF_new_section(a1, v78);
        if (!v89)
        {
          v79 = 103;
          v80 = 329;
          goto LABEL_140;
        }
      }

      if (!BUF_MEM_grow(v8, 512))
      {
        goto LABEL_139;
      }

      continue;
    }

    break;
  }

  v18 = v76 == v72;
  v72 = v76;
  if (!v18)
  {
    goto LABEL_121;
  }

LABEL_163:
  v79 = 100;
  v80 = 320;
LABEL_140:
  ERR_put_error(14, 4095, v79, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", v80);
LABEL_141:
  v64 = 0;
LABEL_148:
  BUF_MEM_free(v8);
  v81 = section;
LABEL_149:
  free(v81);
  if (a3)
  {
    *a3 = v11;
  }

  ERR_asprintf_error_data("line %ld", v11);
  v84 = a1->data;
  if (data != v84 && v84)
  {
    CONF_free(v84);
    a1->data = 0;
  }

  if (v64)
  {
    free(v64->name);
    free(v64->value);
    free(v64);
  }

  return 0;
}

uint64_t def_load(CONF *a1, char *filename, uint64_t *a3)
{
  v5 = BIO_new_file(filename, "rb");
  if (v5)
  {
    v6 = v5;
    bio = def_load_bio(a1, v5, a3);
    BIO_free(v6);
    return bio;
  }

  else
  {
    if ((ERR_peek_last_error() & 0xFFF) == 0x80)
    {
      v9 = 114;
      v10 = 200;
    }

    else
    {
      v9 = 2;
      v10 = 202;
    }

    ERR_put_error(14, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", v10);
    return 0;
  }
}

BUF_MEM *str_copy(const CONF *a1, char *a2, void **a3, char *a4)
{
  result = BUF_MEM_new();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = strlen(a4);
  if (!BUF_MEM_grow(v9, v10 + 1))
  {
    goto LABEL_86;
  }

  v52 = 0;
  v11 = 0;
  while (1)
  {
    for (i = a4; ; ++i)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            meth_data = a1->meth_data;
            v14 = *i;
            v15 = meth_data[*i];
            if ((v15 & 0x40) == 0)
            {
              break;
            }

            v17 = i + 1;
            v18 = *(i + 1);
            v19 = meth_data[*(i + 1)];
            if (v18 != v14 && (v19 & 8) == 0)
            {
              v21 = v11;
              while (1)
              {
                if ((v19 & 0x20) != 0)
                {
                  v18 = *(i + 2);
                  v17 = i + 2;
                  if ((meth_data[*(i + 2)] & 8) != 0)
                  {
                    break;
                  }
                }

                i = v17;
                v11 = v21 + 1;
                v9->data[v21] = v18;
                v22 = *++v17;
                v18 = v22;
                meth_data = a1->meth_data;
                v19 = meth_data[v22];
                v23 = v22 != v14 && (v19 & 8) == 0;
                ++v21;
                if (!v23)
                {
                  goto LABEL_44;
                }
              }

              v11 = v21;
            }

LABEL_44:
            if (v18 == v14)
            {
              i = v17 + 1;
            }

            else
            {
              i = v17;
            }
          }

          if ((meth_data[*i] & 0x400) == 0)
          {
            break;
          }

          v24 = i + 1;
          v25 = *(i + 1);
          if ((meth_data[*(i + 1)] & 8) == 0)
          {
            v26 = v11;
            do
            {
              if (v25 == v14)
              {
                if (*(i + 2) != v14)
                {
                  v25 = v14;
                  break;
                }

                LOBYTE(v25) = v14;
                v24 = i + 2;
              }

              i = v24;
              v9->data[v26++] = v25;
              ++v11;
              v27 = *++v24;
              v25 = v27;
            }

            while ((*(a1->meth_data + v27) & 8) == 0);
          }

          if (v25 == v14)
          {
            i += 2;
          }

          else
          {
            i = v24;
          }
        }

        if ((v15 & 0x20) == 0)
        {
          break;
        }

        v28 = *(i + 1);
        if ((meth_data[*(i + 1)] & 8) != 0)
        {
LABEL_80:
          v9->data[v11] = 0;
          free(*a3);
          *a3 = v9->data;
          free(v9);
          return 1;
        }

        i += 2;
        if (v28 == 116)
        {
          v29 = 9;
        }

        else
        {
          v29 = v28;
        }

        if (v28 == 110)
        {
          v29 = 10;
        }

        if (v28 == 114)
        {
          v29 = 13;
        }

        if (v28 == 98)
        {
          v30 = 8;
        }

        else
        {
          v30 = v29;
        }

        v9->data[v11++] = v30;
      }

      if ((v15 & 8) != 0)
      {
        goto LABEL_80;
      }

      v16 = i + 1;
      if (v14 == 36)
      {
        break;
      }

      v9->data[v11++] = v14;
    }

    v31 = *v16;
    section = a2;
    if (v31 == 123)
    {
      v32 = 125;
    }

    else
    {
      if (v31 != 40)
      {
        v32 = 0;
        v33 = 1;
        goto LABEL_57;
      }

      v32 = 41;
    }

    v33 = 0;
    v16 = i + 2;
LABEL_57:
    v34 = (v16 - 1);
    v35 = (v16 + 1);
    do
    {
      v36 = v35;
      v38 = *++v34;
      v37 = v38;
      ++v35;
    }

    while ((meth_data[v38] & 0x107) != 0);
    if (v37 != 58)
    {
      goto LABEL_65;
    }

    if (v34[1] != 58)
    {
      LOBYTE(v37) = 58;
LABEL_65:
      v36 = v34;
      v39 = v16;
      v16 = section;
      v34 = 0;
      goto LABEL_66;
    }

    *v34 = 0;
    v39 = v34 + 2;
    do
    {
      v40 = *++v36;
      LOBYTE(v37) = v40;
    }

    while ((*(a1->meth_data + v40) & 0x107) != 0);
    v52 = 58;
LABEL_66:
    *v36 = 0;
    a4 = v36;
    if (v33)
    {
      goto LABEL_69;
    }

    if (v32 != v37)
    {
      break;
    }

    a4 = v36 + 1;
LABEL_69:
    v50 = a3;
    string = _CONF_get_string(a1, v16, v39);
    v42 = string;
    if (v34)
    {
      *v34 = v52;
    }

    *v36 = v37;
    if (!string)
    {
      v48 = 104;
      v49 = 566;
      goto LABEL_85;
    }

    v43 = i - a4 + strlen(string) + *&v9->length;
    if (v43 > 0x10000)
    {
      v48 = 116;
      v49 = 571;
      goto LABEL_85;
    }

    if (!BUF_MEM_grow_clean(v9, v43))
    {
      v48 = 109;
      v49 = 575;
      goto LABEL_85;
    }

    v44 = *v42;
    if (*v42)
    {
      v45 = v11;
      v46 = (v42 + 1);
      a3 = v50;
      a2 = section;
      do
      {
        v9->data[v45++] = v44;
        v47 = *v46++;
        v44 = v47;
        ++v11;
      }

      while (v47);
    }

    else
    {
      a3 = v50;
      a2 = section;
    }

    *v36 = v37;
  }

  v48 = 102;
  v49 = 547;
LABEL_85:
  ERR_put_error(14, 4095, v48, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_def.c", v49);
LABEL_86:
  BUF_MEM_free(v9);
  return 0;
}

uint64_t dump_value_LHASH_DOALL_ARG(uint64_t a1, BIO *bio)
{
  if (*(a1 + 8))
  {
    return BIO_printf(bio, "[%s] %s=%s\n");
  }

  else
  {
    return BIO_printf(bio, "[[%s]]\n");
  }
}

uint64_t def_init_WIN32(uint64_t result)
{
  if (result)
  {
    *result = &WIN32_method;
    *(result + 8) = &CONF_type_win32;
    *(result + 16) = 0;
    return 1;
  }

  return result;
}

void CRYPTO_lock(int mode, int type, const char *file, int line)
{
  if (type <= 0x28)
  {
    if (mode)
    {
      pthread_mutex_lock(&locks + type);
    }

    else if ((mode & 2) != 0)
    {
      pthread_mutex_unlock(&locks + type);
    }
  }
}

int CRYPTO_add_lock(int *pointer, int amount, int type, const char *file, int line)
{
  if (type < 0x29)
  {
    v8 = (&locks + 64 * type);
    pthread_mutex_lock(v8);
    v7 = *pointer + amount;
    *pointer = v7;
    pthread_mutex_unlock(v8);
  }

  else
  {
    v7 = *pointer + amount;
    *pointer = v7;
  }

  return v7;
}

int X509_NAME_get_text_by_NID(X509_NAME *name, int nid, char *buf, int len)
{
  v7 = OBJ_nid2obj(nid);
  if (!v7)
  {
    return -1;
  }

  return X509_NAME_get_text_by_OBJ(name, v7, buf, len);
}

int X509_NAME_get_text_by_OBJ(X509_NAME *name, ASN1_OBJECT *obj, char *buf, int len)
{
  LODWORD(length) = -1;
  index_by_OBJ = X509_NAME_get_index_by_OBJ(name, obj, -1);
  if ((index_by_OBJ & 0x80000000) == 0)
  {
    value = X509_NAME_get_entry(name, index_by_OBJ)->value;
    if (value->length >= len)
    {
      length = (len - 1);
    }

    else
    {
      length = value->length;
    }

    if (buf)
    {
      if ((length & 0x80000000) == 0)
      {
        memcpy(buf, value->data, length);
        buf[length] = 0;
      }
    }

    else
    {
      LODWORD(length) = value->length;
    }
  }

  return length;
}

int X509_NAME_get_index_by_OBJ(X509_NAME *name, ASN1_OBJECT *obj, int lastpos)
{
  if (name)
  {
    if (lastpos < 0)
    {
      v4 = -1;
    }

    else
    {
      v4 = lastpos;
    }

    entries = name->entries;
    v6 = sk_num(name->entries);
    while (++v4 < v6)
    {
      v7 = sk_value(entries, v4);
      if (!OBJ_cmp(*v7, obj))
      {
        return v4;
      }
    }
  }

  return -1;
}

ASN1_STRING *__cdecl X509_NAME_ENTRY_get_data(ASN1_STRING *ne)
{
  if (ne)
  {
    return ne->data;
  }

  return ne;
}

X509_NAME_ENTRY *__cdecl X509_NAME_get_entry(X509_NAME *name, int loc)
{
  if (!name)
  {
    return 0;
  }

  v4 = sk_num(name->entries);
  if (loc < 0 || v4 <= loc)
  {
    return 0;
  }

  entries = name->entries;

  return sk_value(entries, loc);
}

int X509_NAME_entry_count(X509_NAME *name)
{
  if (name)
  {
    LODWORD(name) = sk_num(name->entries);
  }

  return name;
}

int X509_NAME_get_index_by_NID(X509_NAME *name, int nid, int lastpos)
{
  v5 = OBJ_nid2obj(nid);
  if (!v5)
  {
    return -2;
  }

  return X509_NAME_get_index_by_OBJ(name, v5, lastpos);
}

X509_NAME_ENTRY *__cdecl X509_NAME_delete_entry(X509_NAME *name, int loc)
{
  if (!name)
  {
    return 0;
  }

  v4 = sk_num(name->entries);
  v5 = 0;
  if ((loc & 0x80000000) == 0 && v4 > loc)
  {
    entries = name->entries;
    v5 = sk_delete(name->entries, loc);
    v7 = sk_num(entries);
    name->modified = 1;
    if (v7 != loc)
    {
      v8 = v7;
      if (loc)
      {
        set = *(sk_value(entries, loc - 1) + 4) + 1;
      }

      else
      {
        set = v5->set;
      }

      if (set < *(sk_value(entries, loc) + 4) && v8 > loc)
      {
        do
        {
          v12 = sk_value(entries, loc);
          --*(v12 + 4);
          ++loc;
        }

        while (v8 != loc);
      }
    }
  }

  return v5;
}

int X509_NAME_add_entry_by_OBJ(X509_NAME *name, ASN1_OBJECT *obj, int type, unsigned __int8 *bytes, int len, int loc, int set)
{
  v10 = X509_NAME_ENTRY_create_by_OBJ(0, obj, type, bytes, len);
  if (v10)
  {
    v11 = v10;
    v12 = X509_NAME_add_entry(name, v10, loc, set);
    X509_NAME_ENTRY_free(v11);
    LODWORD(v10) = v12;
  }

  return v10;
}

X509_NAME_ENTRY *__cdecl X509_NAME_ENTRY_create_by_OBJ(X509_NAME_ENTRY **ne, ASN1_OBJECT *obj, int type, const unsigned __int8 *bytes, int len)
{
  if (ne && (v10 = *ne) != 0 || (v10 = X509_NAME_ENTRY_new()) != 0)
  {
    if (X509_NAME_ENTRY_set_object(v10, obj) && X509_NAME_ENTRY_set_data(v10, type, bytes, len))
    {
      if (ne && !*ne)
      {
        *ne = v10;
      }
    }

    else
    {
      if (!ne || v10 != *ne)
      {
        X509_NAME_ENTRY_free(v10);
      }

      return 0;
    }
  }

  return v10;
}

int X509_NAME_add_entry(X509_NAME *name, X509_NAME_ENTRY *ne, int loc, int set)
{
  if (!name)
  {
    return name;
  }

  v7 = name;
  entries = name->entries;
  v9 = sk_num(name->entries);
  if (v9 >= loc)
  {
    v10 = loc;
  }

  else
  {
    v10 = v9;
  }

  if (loc >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = set == 0;
  v7->modified = 1;
  if (set == -1)
  {
    if (v11)
    {
      v13 = sk_value(entries, v11 - 1);
      v12 = 0;
      goto LABEL_13;
    }

    v14 = 0;
    v12 = 1;
  }

  else
  {
    if (v11 < v9)
    {
      v13 = sk_value(entries, v11);
LABEL_13:
      v14 = *(v13 + 4);
      goto LABEL_18;
    }

    if (v11)
    {
      v14 = *(sk_value(entries, v11 - 1) + 4) + 1;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_18:
  name = X509_NAME_ENTRY_dup(ne);
  if (name)
  {
    v15 = name;
    LODWORD(name->bytes) = v14;
    if (sk_insert(entries, name, v11))
    {
      if (v12)
      {
        v16 = sk_num(entries);
        v17 = v11 + 1;
        if (v17 < v16)
        {
          v18 = v16;
          do
          {
            v19 = sk_value(entries, v17);
            ++*(v19 + 4);
            ++v17;
          }

          while (v18 != v17);
        }
      }

      LODWORD(name) = 1;
    }

    else
    {
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509name.c", 290);
      X509_NAME_ENTRY_free(v15);
      LODWORD(name) = 0;
    }
  }

  return name;
}

int X509_NAME_add_entry_by_NID(X509_NAME *name, int nid, int type, unsigned __int8 *bytes, int len, int loc, int set)
{
  v10 = X509_NAME_ENTRY_create_by_NID(0, nid, type, bytes, len);
  if (v10)
  {
    v11 = v10;
    v12 = X509_NAME_add_entry(name, v10, loc, set);
    X509_NAME_ENTRY_free(v11);
    LODWORD(v10) = v12;
  }

  return v10;
}

X509_NAME_ENTRY *__cdecl X509_NAME_ENTRY_create_by_NID(X509_NAME_ENTRY **ne, int nid, int type, unsigned __int8 *bytes, int len)
{
  v9 = OBJ_nid2obj(nid);
  if (v9)
  {
    v10 = v9;
    v11 = X509_NAME_ENTRY_create_by_OBJ(ne, v9, type, bytes, len);
    ASN1_OBJECT_free(v10);
    return v11;
  }

  else
  {
    ERR_put_error(11, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509name.c", 335);
    return 0;
  }
}

int X509_NAME_add_entry_by_txt(X509_NAME *name, const char *field, int type, const unsigned __int8 *bytes, int len, int loc, int set)
{
  v10 = X509_NAME_ENTRY_create_by_txt(0, field, type, bytes, len);
  if (v10)
  {
    v11 = v10;
    v12 = X509_NAME_add_entry(name, v10, loc, set);
    X509_NAME_ENTRY_free(v11);
    LODWORD(v10) = v12;
  }

  return v10;
}

X509_NAME_ENTRY *__cdecl X509_NAME_ENTRY_create_by_txt(X509_NAME_ENTRY **ne, const char *field, int type, const unsigned __int8 *bytes, int len)
{
  v10 = OBJ_txt2obj(field, 0);
  if (v10)
  {
    v11 = v10;
    v12 = X509_NAME_ENTRY_create_by_OBJ(ne, v10, type, bytes, len);
    ASN1_OBJECT_free(v11);
    return v12;
  }

  else
  {
    ERR_put_error(11, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509name.c", 316);
    ERR_asprintf_error_data("name=%s", field);
    return 0;
  }
}

int X509_NAME_ENTRY_set_object(X509_NAME_ENTRY *ne, ASN1_OBJECT *obj)
{
  if (ne && obj)
  {
    ASN1_OBJECT_free(ne->object);
    v4 = OBJ_dup(obj);
    ne->object = v4;
    return v4 != 0;
  }

  else
  {
    ERR_put_error(11, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509name.c", 376);
    return 0;
  }
}

int X509_NAME_ENTRY_set_data(X509_NAME_ENTRY *ne, int type, const unsigned __int8 *bytes, int len)
{
  if (ne)
  {
    v4 = len;
    v7 = ne;
    if (bytes || !len)
    {
      if (type >= 1 && (type & 0x1000) != 0)
      {
        v8 = OBJ_obj2nid(ne->object);
        LODWORD(ne) = ASN1_STRING_set_by_NID(&v7->value, bytes, v4, type, v8) != 0;
      }

      else
      {
        if (len < 0)
        {
          v4 = strlen(bytes);
        }

        LODWORD(ne) = ASN1_STRING_set(v7->value, bytes, v4);
        if (ne)
        {
          if (type != -1)
          {
            if (type == -2)
            {
              v7->value->type = ASN1_PRINTABLE_type(bytes, v4);
            }

            else
            {
              v7->value->type = type;
            }
          }

          LODWORD(ne) = 1;
        }
      }
    }

    else
    {
      LODWORD(ne) = 0;
    }
  }

  return ne;
}

ASN1_OBJECT *__cdecl X509_NAME_ENTRY_get_object(ASN1_OBJECT *ne)
{
  if (ne)
  {
    return ne->sn;
  }

  return ne;
}

uint64_t engine_unlocked_init(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 184);
  if (v2 || (v2 = *(a1 + 120)) == 0)
  {
    result = 1;
LABEL_3:
    ++*(a1 + 180);
    *(a1 + 184) = v2 + 1;
    return result;
  }

  result = v2(a1);
  if (result)
  {
    LODWORD(v2) = *(a1 + 184);
    goto LABEL_3;
  }

  return result;
}

uint64_t engine_unlocked_finish(uint64_t a1, int a2)
{
  v3 = *(a1 + 184) - 1;
  *(a1 + 184) = v3;
  if (v3 || (v5 = *(a1 + 128)) == 0)
  {
    v4 = 1;
  }

  else if (a2)
  {
    CRYPTO_lock(10, 30, 0, 0);
    v4 = (*(a1 + 128))(a1);
    CRYPTO_lock(9, 30, 0, 0);
    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    v4 = v5(a1);
    if (!v4)
    {
      return v4;
    }
  }

  if (!engine_free_util(a1, 0))
  {
    ERR_put_error(38, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_init.c", 109);
    return 0;
  }

  return v4;
}

int ENGINE_init(ENGINE *e)
{
  if (!e)
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_init.c", 122);
    return 0;
  }

  CRYPTO_lock(9, 30, 0, 0);
  LODWORD(v2) = *(e + 46);
  if (v2 || (v2 = *(e + 15)) == 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2(e);
    if (!v3)
    {
      goto LABEL_5;
    }

    LODWORD(v2) = *(e + 46);
  }

  ++*(e + 45);
  *(e + 46) = v2 + 1;
LABEL_5:
  CRYPTO_lock(10, 30, 0, 0);
  return v3;
}

int ENGINE_finish(ENGINE *e)
{
  if (!e)
  {
    return 1;
  }

  CRYPTO_lock(9, 30, 0, 0);
  v2 = engine_unlocked_finish(e, 1);
  CRYPTO_lock(10, 30, 0, 0);
  if (!v2)
  {
    ERR_put_error(38, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_init.c", 143);
  }

  return v2;
}

int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  result = BN_div_ct(0, r, m, d, ctx);
  if (result)
  {
    if (BN_is_negative(r))
    {

      return BN_usub(r, d, r);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int BN_mod_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
{
  result = BN_add(r, a, b);
  if (result)
  {

    return BN_nnmod(r, r, m, ctx);
  }

  return result;
}

int BN_mod_add_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m)
{
  result = BN_uadd(r, a, b);
  if (result)
  {
    if (BN_ucmp(r, m) < 0)
    {
      return 1;
    }

    else
    {

      return BN_usub(r, r, m);
    }
  }

  return result;
}

int BN_mod_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
{
  result = BN_sub(r, a, b);
  if (result)
  {

    return BN_nnmod(r, r, m, ctx);
  }

  return result;
}

int BN_mod_sub_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m)
{
  if (BN_ucmp(a, b) < 0)
  {
    result = BN_usub(r, b, a);
    if (!result)
    {
      return result;
    }

    v8 = r;
    v9 = m;
    v10 = r;
  }

  else
  {
    v8 = r;
    v9 = a;
    v10 = b;
  }

  return BN_usub(v8, v9, v10);
}

int BN_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  if (r == a || (v10 = r, r == b))
  {
    v10 = BN_CTX_get(ctx);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else if (!r)
  {
    goto LABEL_10;
  }

  if (a == b)
  {
    if (BN_sqr(v10, a, ctx))
    {
      goto LABEL_8;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!BN_mul(v10, a, b, ctx))
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = BN_nnmod(r, v10, m, ctx) != 0;
LABEL_11:
  BN_CTX_end(ctx);
  return v11;
}

int BN_mod_lshift1(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx)
{
  result = BN_lshift1(r, a);
  if (result)
  {

    return BN_nnmod(r, r, m, ctx);
  }

  return result;
}

int BN_mod_lshift1_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *m)
{
  result = BN_lshift1(r, a);
  if (result)
  {
    if (BN_ucmp(r, m) < 0)
    {
      return 1;
    }

    else
    {

      return BN_usub(r, r, m);
    }
  }

  return result;
}

int BN_mod_lshift(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  if (BN_nnmod(r, a, m, ctx))
  {
    if (!BN_is_negative(m))
    {
      v11 = m;
      goto LABEL_8;
    }

    v10 = BN_CTX_get(ctx);
    if (v10)
    {
      v11 = v10;
      if (bn_copy(v10, m))
      {
        BN_set_negative(v11, 0);
LABEL_8:
        v12 = BN_mod_lshift_quick(r, r, n, v11);
        goto LABEL_9;
      }
    }
  }

  v12 = 0;
LABEL_9:
  BN_CTX_end(ctx);
  return v12;
}

int BN_mod_lshift_quick(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m)
{
  result = bn_copy(r, a);
  if (result)
  {
    if (n < 1)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v8 = BN_num_bits(m);
        v9 = BN_num_bits(r);
        v10 = v8 - v9;
        if (v8 - v9 < 0)
        {
          break;
        }

        if (v8 == v9)
        {
          v10 = 1;
        }

        if (v10 >= n)
        {
          v11 = n;
        }

        else
        {
          v11 = v10;
        }

        result = BN_lshift(r, r, v11);
        if (!result)
        {
          return result;
        }

        if ((BN_ucmp(r, m) & 0x80000000) == 0)
        {
          result = BN_usub(r, r, m);
          if (!result)
          {
            return result;
          }
        }

        v12 = __OFSUB__(n, v11);
        n -= v11;
        if ((n < 0) ^ v12 | (n == 0))
        {
          return 1;
        }
      }

      ERR_put_error(3, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_mod.c", 296);
      return 0;
    }
  }

  return result;
}

X509_ALGOR *PKCS5_pbe2_set_iv(const EVP_CIPHER *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = a4;
  v10 = a2;
  v28 = *MEMORY[0x277D85DE8];
  ptr = a6;
  memset(&a, 0, sizeof(a));
  v12 = EVP_CIPHER_type(a1);
  if (!v12)
  {
    ERR_put_error(13, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbev2.c", 198);
    v20 = 0;
    v16 = 0;
LABEL_26:
    ASN1_item_free(v16, &PBE2PARAM_it);
    X509_ALGOR_free(0);
    X509_ALGOR_free(v20);
    return 0;
  }

  v13 = v12;
  v14 = OBJ_nid2obj(v12);
  v15 = ASN1_item_new(&PBE2PARAM_it);
  v16 = v15;
  if (!v15 || (v17 = *(v15 + 1), *v17 = v14, v18 = ASN1_TYPE_new(), (*(v17 + 8) = v18) == 0))
  {
LABEL_24:
    v20 = 0;
LABEL_25:
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbev2.c", 278);
    goto LABEL_26;
  }

  if (EVP_CIPHER_iv_length(a1))
  {
    v19 = EVP_CIPHER_iv_length(a1);
    if (a5)
    {
      __memcpy_chk();
    }

    else
    {
      arc4random_buf(__buf, v19);
    }
  }

  EVP_CIPHER_CTX_init(&a);
  if (!EVP_CipherInit_ex(&a, a1, 0, 0, __buf, 0))
  {
LABEL_17:
    v20 = 0;
    goto LABEL_26;
  }

  if (EVP_CIPHER_param_to_asn1(&a, *(v17 + 8)) < 0)
  {
    ERR_put_error(13, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbev2.c", 227);
    EVP_CIPHER_CTX_cleanup(&a);
    goto LABEL_17;
  }

  if (a6 == -1 && EVP_CIPHER_CTX_ctrl(&a, 7, 0, &ptr) <= 0)
  {
    ERR_clear_error();
    ptr = 163;
  }

  EVP_CIPHER_CTX_cleanup(&a);
  if (v13 == 37)
  {
    v21 = EVP_CIPHER_key_length(a1);
  }

  else
  {
    v21 = -1;
  }

  X509_ALGOR_free(*v16);
  v22 = PKCS5_pbkdf2_set(v10, a3, v8, ptr, v21);
  *v16 = v22;
  if (!v22)
  {
    goto LABEL_24;
  }

  v20 = X509_ALGOR_new();
  if (!v20)
  {
    goto LABEL_25;
  }

  v23 = ASN1_TYPE_new();
  v20->parameter = v23;
  if (!v23)
  {
    goto LABEL_25;
  }

  v20->algorithm = OBJ_nid2obj(161);
  if (!ASN1_item_pack(v16, &PBE2PARAM_it, &v20->parameter->value))
  {
    goto LABEL_25;
  }

  v20->parameter->type = 16;
  ASN1_item_free(v16, &PBE2PARAM_it);
  return v20;
}

X509_ALGOR *PKCS5_pbkdf2_set(unsigned int a1, const void *a2, int a3, int a4, unsigned int a5)
{
  v10 = ASN1_item_new(&PBKDF2PARAM_it);
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = ASN1_OCTET_STRING_new();
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  *(*v10 + 8) = v11;
  **v10 = 4;
  v13 = a3 ? a3 : 8;
  v14 = malloc_type_malloc(v13, 0xB9EA159FuLL);
  v12->data = v14;
  if (!v14)
  {
    goto LABEL_25;
  }

  v12->length = v13;
  if (a2)
  {
    memcpy(v14, a2, v13);
  }

  else
  {
    arc4random_buf(v14, v13);
  }

  v15 = a1 >= 1 ? a1 : 2048;
  if (!ASN1_INTEGER_set(*(v10 + 1), v15))
  {
    goto LABEL_25;
  }

  if (a5 >= 1)
  {
    v16 = ASN1_INTEGER_new();
    *(v10 + 2) = v16;
    if (!v16 || !ASN1_INTEGER_set(v16, a5))
    {
      goto LABEL_25;
    }
  }

  if (a4 >= 1 && a4 != 163)
  {
    v17 = X509_ALGOR_new();
    *(v10 + 3) = v17;
    if (v17)
    {
      v18 = v17;
      v19 = OBJ_nid2obj(a4);
      X509_ALGOR_set0(v18, v19, 5, 0);
      goto LABEL_21;
    }

LABEL_25:
    v20 = 0;
LABEL_26:
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/p5_pbev2.c", 370);
    ASN1_item_free(v10, &PBKDF2PARAM_it);
    X509_ALGOR_free(v20);
    return 0;
  }

LABEL_21:
  v20 = X509_ALGOR_new();
  if (!v20)
  {
    goto LABEL_26;
  }

  v20->algorithm = OBJ_nid2obj(69);
  v21 = ASN1_TYPE_new();
  v20->parameter = v21;
  if (!v21 || !ASN1_item_pack(v10, &PBKDF2PARAM_it, &v21->value))
  {
    goto LABEL_26;
  }

  v20->parameter->type = 16;
  ASN1_item_free(v10, &PBKDF2PARAM_it);
  return v20;
}

int PKCS5_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen, ASN1_TYPE *param, const EVP_CIPHER *cipher, const EVP_MD *md, int en_de)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!param || param->type != 16 || !param->value.ptr)
  {
    v21 = 95;
    goto LABEL_10;
  }

  v14 = EVP_MD_size(md);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = v14;
    v30 = 0u;
    memset(&ctxa, 0, sizeof(ctxa));
    ptr = param->value.ptr;
    in = *(ptr + 1);
    v17 = d2i_PBEPARAM(0, &in, *ptr);
    if (v17)
    {
      v18 = v17;
      iter = v17->iter;
      if (iter)
      {
        v20 = ASN1_INTEGER_get(iter);
        if (v20 <= 0)
        {
          ERR_put_error(6, 4095, 135, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt.c", 112);
          PBEPARAM_free(v18);
          return 0;
        }
      }

      else
      {
        v20 = 1;
      }

      data = v18->salt->data;
      cnt = v18->salt->length;
      if (pass)
      {
        if (passlen == -1)
        {
          passlen = strlen(pass);
        }
      }

      else
      {
        passlen = 0;
      }

      EVP_MD_CTX_init(&ctxa);
      if (EVP_DigestInit_ex(&ctxa, md, 0) && EVP_DigestUpdate(&ctxa, pass, passlen) && EVP_DigestUpdate(&ctxa, data, cnt) && EVP_DigestFinal_ex(&ctxa, mda, 0))
      {
        if (v20 >= 2)
        {
          v24 = v20 - 1;
          while (EVP_DigestInit_ex(&ctxa, md, 0) && EVP_DigestUpdate(&ctxa, mda, v15) && EVP_DigestFinal_ex(&ctxa, mda, 0))
          {
            if (!--v24)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_33;
        }

LABEL_28:
        if (EVP_CIPHER_key_length(cipher) < 0x41)
        {
          EVP_CIPHER_key_length(cipher);
          __memcpy_chk();
          if (EVP_CIPHER_iv_length(cipher) < 0x11)
          {
            EVP_CIPHER_iv_length(cipher);
            EVP_CIPHER_iv_length(cipher);
            __memcpy_chk();
            if (EVP_CipherInit_ex(ctx, cipher, 0, key, iv, en_de))
            {
              explicit_bzero(mda, 0x40uLL);
            }

            goto LABEL_33;
          }

          v25 = 102;
          v26 = 148;
        }

        else
        {
          v25 = 137;
          v26 = 143;
        }

        ERR_put_error(6, 4095, v25, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt.c", v26);
      }

LABEL_33:
      EVP_MD_CTX_cleanup(&ctxa);
      PBEPARAM_free(v18);
      return 0;
    }

    v21 = 105;
LABEL_10:
    ERR_put_error(6, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p5_crpt.c", v21);
  }

  return 0;
}

int BN_lshift1(BIGNUM *r, const BIGNUM *a)
{
  top = a->top;
  if (top <= 0)
  {
    BN_zero(r);
  }

  else
  {
    v5 = top + 1;
    result = bn_wexpand(r, (top + 1));
    if (!result)
    {
      return result;
    }

    d = a->d;
    v8 = a->top;
    v9 = &a->d[v8];
    v11 = *(v9 - 1);
    v10 = v9 - 1;
    v12 = r->d;
    v13 = &r->d[v8];
    for (i = v11 >> 63; ; i = v17 >> 63)
    {
      *v13-- = i;
      if (v10 <= d)
      {
        break;
      }

      v15 = *v10;
      v16 = *--v10;
      *(&v17 + 1) = v15;
      *&v17 = v16;
    }

    *v13 = 2 * *v10;
    while (v13 > v12)
    {
      *--v13 = 0;
    }

    r->top = v5;
    bn_correct_top(r);
    BN_set_negative(r, a->neg);
  }

  return 1;
}

int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_shift.c", 32);
    return 0;
  }

  else
  {
    top = a->top;
    if (top <= 0)
    {
      BN_zero(r);
    }

    else
    {
      v7 = n;
      v8 = n >> 6;
      v9 = v8 + top + 1;
      result = bn_wexpand(r, v9);
      if (!result)
      {
        return result;
      }

      v11 = v7 & 0x3F;
      v12 = -n & 0x3FLL;
      v13 = (v7 & 0x3F) + v12;
      d = a->d;
      v15 = a->top;
      v16 = &a->d[v15];
      v18 = *(v16 - 1);
      v17 = v16 - 1;
      v19 = r->d;
      v20 = &r->d[v15 + v8];
      *v20 = (v18 >> v12) & -(v13 >> 6);
      v21 = v20 - 1;
      if (v17 > d)
      {
        v22 = &v19[v8 - 1];
        v23 = d - 1;
        v24 = &d[-(v13 >> 6) - 1];
        do
        {
          *(v22 + 8 * v15) = (*(v24 + 8 * v15) >> v12) | (v23[v15] << v11);
          v22 -= 8;
          --v23;
          v24 -= 8;
        }

        while (&v23[v15] > d);
        v21 = (v22 + 8 * v15);
        v17 = &v23[v15];
      }

      *v21 = *v17 << v11;
      while (v21 > v19)
      {
        *--v21 = 0;
      }

      r->top = v9;
      bn_correct_top(r);
      BN_set_negative(r, a->neg);
    }

    return 1;
  }
}

int BN_rshift1(BIGNUM *r, const BIGNUM *a)
{
  top = a->top;
  if (top)
  {
    result = bn_wexpand(r, a->top);
    if (!result)
    {
      return result;
    }

    d = a->d;
    v7 = r->d;
    if (top == 1)
    {
      v8 = a->d;
    }

    else
    {
      v9 = top - 1;
      v8 = a->d;
      do
      {
        v10 = v8[1];
        ++v8;
        *(&v11 + 1) = v10;
        *&v11 = *d;
        *v7++ = v11 >> 1;
        d = v8;
        --v9;
      }

      while (v9);
    }

    *v7 = *v8 >> 1;
    r->top = top;
    bn_correct_top(r);
    BN_set_negative(r, a->neg);
  }

  else
  {
    BN_zero(r);
  }

  return 1;
}

int BN_rshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_shift.c", 103);
    return 0;
  }

  else
  {
    v6 = n;
    top = a->top;
    if (top <= n >> 6)
    {
      BN_zero(r);
    }

    else
    {
      v8 = n >> 6;
      v9 = top - v8;
      result = bn_wexpand(r, top - v8);
      if (!result)
      {
        return result;
      }

      v11 = v6 & 0x3F;
      v12 = &a->d[v8];
      d = r->d;
      if (v9 >= 2)
      {
        v14 = ~v8 + top;
        do
        {
          v15 = v12[((-n & 0x3FuLL) + v11) >> 6] << (-n & 0x3F);
          v16 = *v12++;
          *d++ = (v16 >> v11) | v15;
          --v14;
        }

        while (v14);
      }

      *d = *v12 >> v11;
      r->top = v9;
      bn_correct_top(r);
      BN_set_negative(r, a->neg);
    }

    return 1;
  }
}

uint64_t timingsafe_memcmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = 0;
    do
    {
      v6 = *a1++;
      v5 = v6;
      v7 = *a2++;
      v8 = v5 - v7;
      v9 = v7 - v5;
      v3 = ((v8 >> 8) - (v9 >> 8)) & ~v4 | v3;
      v4 |= (v9 >> 8) | (v8 >> 8);
      --a3;
    }

    while (a3);
  }

  return v3;
}

uint64_t whirlpool_block(unint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v9 = a1[7];
  do
  {
    v44 = a2;
    v45 = a3;
    v11 = 0;
    v12 = *a2 ^ v3;
    v13 = a2[1] ^ v4;
    v14 = a2[2] ^ v5;
    v15 = a2[3] ^ v6;
    result = a2[4] ^ v7;
    v17 = a2[5] ^ v8;
    v18 = a2[6] ^ v10;
    v19 = a2[7] ^ v9;
    v37 = v9;
    v38 = v10;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v5;
    v20 = v6;
    v21 = v5;
    v43 = v4;
    v36 = v12;
    do
    {
      v49 = result;
      v53 = v17;
      v54 = v18;
      v55 = v19;
      v56 = v11 * 8;
      v22 = *(Cx + ((v4 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v3 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v21 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v20 >> 12) & 0xFF0) + 6);
      v23 = *(Cx + ((v4 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v3 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v21 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v20 >> 20) & 0xFF0) + 5);
      v24 = *(Cx + ((v4 >> 4) & 0xFF0) + 7) ^ *(Cx + ((v3 >> 12) & 0xFF0) + 6) ^ Cx[2 * v21] ^ *(Cx + ((v20 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v7 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v8 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v10 >> 28) & 0xFF0) + 4);
      v25 = *(Cx + ((v4 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v3 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v21 >> 4) & 0xFF0) + 7) ^ Cx[2 * v20] ^ *(Cx + ((v7 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v8 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v10 >> 36) & 0xFF0) + 3);
      v26 = *(Cx + ((v4 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v3 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v21 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v20 >> 4) & 0xFF0) + 7) ^ Cx[2 * v7] ^ *(Cx + ((v8 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v10 >> 44) & 0xFF0) + 2);
      v52 = *(Cx + ((v4 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v3 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v21 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v20 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v7 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v8 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v10 >> 4) & 0xFF0) + 7) ^ Cx[2 * v9];
      v51 = Cx[v11 + 512] ^ Cx[2 * v3] ^ *(Cx + ((v4 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v21 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v20 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v7 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v8 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v10 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v9 >> 4) & 0xFF0) + 7);
      v4 = Cx[2 * v4] ^ *(Cx + ((v3 >> 4) & 0xFF0) + 7) ^ *(Cx + ((v21 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v20 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v7 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v8 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v10 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v9 >> 12) & 0xFF0) + 6);
      v21 = v24 ^ *(Cx + ((v9 >> 20) & 0xFF0) + 5);
      v47 = v25 ^ *(Cx + ((v9 >> 28) & 0xFF0) + 4);
      v50 = v26 ^ *(Cx + ((v9 >> 36) & 0xFF0) + 3);
      v48 = v22 ^ *(Cx + ((v7 >> 4) & 0xFF0) + 7) ^ Cx[2 * v8] ^ *(Cx + ((v10 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v9 >> 44) & 0xFF0) + 2);
      v46 = v23 ^ *(Cx + ((v7 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v8 >> 4) & 0xFF0) + 7) ^ Cx[2 * v10] ^ *(Cx + ((v9 >> 52) & 0xFF0) + 1);
      v27 = *(Cx + ((v12 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v13 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v14 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v15 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v49 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v53 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v54 >> 4) & 0xFF0) + 7) ^ Cx[2 * v19];
      v28 = *(Cx + ((v12 >> 4) & 0xFF0) + 7) ^ Cx[2 * v13] ^ *(Cx + ((v14 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v15 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v49 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v53 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v54 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v19 >> 12) & 0xFF0) + 6);
      v29 = *(Cx + ((v12 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v13 >> 4) & 0xFF0) + 7) ^ Cx[2 * v14] ^ *(Cx + ((v15 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v49 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v53 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v54 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v19 >> 20) & 0xFF0) + 5);
      v30 = *(Cx + ((v12 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v13 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v14 >> 4) & 0xFF0) + 7) ^ Cx[2 * v15] ^ *(Cx + ((v49 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v53 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v54 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v19 >> 28) & 0xFF0) + 4);
      v31 = *(Cx + ((v12 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v13 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v14 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v15 >> 4) & 0xFF0) + 7) ^ Cx[2 * v49] ^ *(Cx + ((v53 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v54 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v19 >> 36) & 0xFF0) + 3);
      v32 = *(Cx + ((v12 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v13 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v14 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v15 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v49 >> 4) & 0xFF0) + 7) ^ Cx[2 * v53] ^ *(Cx + ((v54 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v19 >> 44) & 0xFF0) + 2);
      v10 = v46;
      v20 = v47;
      v8 = v48;
      v33 = *(Cx + ((v12 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v13 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v14 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v15 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v49 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v53 >> 4) & 0xFF0) + 7) ^ Cx[2 * v54];
      v7 = v50;
      v3 = v51;
      v34 = v27 ^ v52;
      v12 = Cx[2 * v12] ^ *(Cx + ((v13 >> 52) & 0xFF0) + 1) ^ *(Cx + ((v14 >> 44) & 0xFF0) + 2) ^ *(Cx + ((v15 >> 36) & 0xFF0) + 3) ^ *(Cx + ((v49 >> 28) & 0xFF0) + 4) ^ *(Cx + ((v53 >> 20) & 0xFF0) + 5) ^ *(Cx + ((v54 >> 12) & 0xFF0) + 6) ^ *(Cx + ((v55 >> 4) & 0xFF0) + 7) ^ v51;
      v13 = v28 ^ v4;
      v14 = v29 ^ v21;
      v15 = v30 ^ v47;
      result = v31 ^ v50;
      v17 = v32 ^ v48;
      v18 = v33 ^ *(Cx + ((v55 >> 52) & 0xFF0) + 1) ^ v46;
      ++v11;
      v9 = v52;
      v19 = v34;
    }

    while (v56 != 72);
    v3 = v12 ^ v36;
    *a1 = v12 ^ v36;
    v4 = v43 ^ v44[1] ^ v13;
    a1[1] = v4;
    v5 = v42 ^ v44[2] ^ v14;
    a1[2] = v5;
    v6 = v41 ^ v44[3] ^ v15;
    a1[3] = v6;
    v7 = v40 ^ v44[4] ^ result;
    a1[4] = v7;
    v8 = v39 ^ v44[5] ^ v17;
    a1[5] = v8;
    v10 = v38 ^ v44[6] ^ v18;
    a1[6] = v10;
    v9 = v37 ^ v44[7] ^ v34;
    a1[7] = v9;
    a2 = v44 + 8;
    a3 = v45 - 1;
  }

  while (v45 != 1);
  return result;
}

void RC2_cfb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, RC2_KEY *schedule, unsigned __int8 *ivec, int *num, int enc)
{
  v10 = length;
  v23 = *MEMORY[0x277D85DE8];
  v13 = *num;
  if (enc)
  {
    if (length)
    {
      do
      {
        if (!v13)
        {
          *&v14 = *ivec;
          *(&v14 + 1) = HIDWORD(*ivec);
          *v22 = v14;
          RC2_encrypt(v22, schedule);
          v15 = v22[1];
          *ivec = v22[0];
          *(ivec + 1) = v15;
        }

        v16 = *in++;
        v17 = ivec[v13];
        *out++ = v17 ^ v16;
        ivec[v13] = v17 ^ v16;
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
        *&v18 = *ivec;
        *(&v18 + 1) = HIDWORD(*ivec);
        *v22 = v18;
        RC2_encrypt(v22, schedule);
        v19 = v22[1];
        *ivec = v22[0];
        *(ivec + 1) = v19;
      }

      v20 = *in++;
      v21 = ivec[v13];
      ivec[v13] = v20;
      *out++ = v21 ^ v20;
      v13 = (v13 + 1) & 7;
      --v10;
    }

    while (v10);
  }

  *num = v13;
}

unint64_t CRYPTO_gcm128_init(uint64_t a1, uint64_t a2, void (*a3)(unsigned int *, unsigned int *, uint64_t))
{
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0u;
  v4 = (a1 + 80);
  *(a1 + 376) = a3;
  *(a1 + 384) = 0;
  *(a1 + 384) = a2;
  a3(v4, v4, a2);
  v5 = *(a1 + 87);
  v6 = (*(a1 + 84) << 24) | (*(a1 + 85) << 16) | (bswap32(*v4) << 32) | (*(a1 + 86) << 8) | v5;
  v7 = bswap32(*(a1 + 88));
  v8 = *(a1 + 94);
  v9 = *(a1 + 95);
  v10 = (*(a1 + 92) << 24) | (*(a1 + 93) << 16);
  *v4 = v6;
  v11 = v10 | (v7 << 32) | (v8 << 8) | v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  *(&v13 + 1) = v5;
  *&v13 = v11;
  v12 = v13 >> 1;
  v14 = (v9 << 63 >> 63) & 0xE100000000000000 ^ (v6 >> 1);
  *(&v13 + 1) = v6 >> 1;
  *&v13 = v12;
  v15 = v13 >> 1;
  v16 = (v12 << 63 >> 63) & 0xE100000000000000 ^ (v14 >> 1);
  v17 = (v15 << 63 >> 63) & 0xE100000000000000 ^ (v16 >> 1);
  *(a1 + 104) = 0;
  *(a1 + 112) = v17;
  *(&v13 + 1) = v14 >> 1;
  *&v13 = v15;
  v18 = v13 >> 1;
  *(a1 + 120) = v18;
  *(a1 + 128) = v16;
  *(a1 + 136) = v15;
  *(a1 + 144) = v17 ^ v16;
  *(a1 + 152) = v18 ^ v15;
  *(a1 + 160) = v14;
  result = v17 ^ v14;
  *(a1 + 168) = v12;
  *(a1 + 176) = v17 ^ v14;
  *(a1 + 184) = v18 ^ v12;
  *(a1 + 192) = v16 ^ v14;
  v20 = v17 ^ v16 ^ v14;
  *(a1 + 200) = v15 ^ v12;
  *(a1 + 208) = v20;
  v21 = v18 ^ v15 ^ v12;
  *(a1 + 216) = v21;
  *(a1 + 224) = v6;
  *(a1 + 232) = v11;
  *(a1 + 240) = v17 ^ v6;
  *(a1 + 248) = v18 ^ v11;
  *(a1 + 256) = v16 ^ v6;
  *(a1 + 264) = v15 ^ v11;
  *(a1 + 272) = v17 ^ v16 ^ v6;
  *(a1 + 280) = v18 ^ v15 ^ v11;
  *(a1 + 288) = v14 ^ v6;
  *(a1 + 296) = v12 ^ v11;
  *(a1 + 304) = v17 ^ v14 ^ v6;
  *(a1 + 312) = v18 ^ v12 ^ v11;
  *(a1 + 320) = v16 ^ v14 ^ v6;
  *(a1 + 328) = v15 ^ v12 ^ v11;
  *(a1 + 336) = v20 ^ v6;
  *(a1 + 344) = v21 ^ v11;
  return result;
}

uint64_t CRYPTO_gcm128_setiv(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  *(a1 + 368) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (a3 == 12)
  {
    v5 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v5;
    *(a1 + 15) = 1;
    v6 = 2;
  }

  else
  {
    v8 = a3;
    if (a3 >= 0x10)
    {
      do
      {
        for (i = 0; i != 16; ++i)
        {
          *(a1 + i) ^= *(v3 + i);
        }

        gcm_gmult_4bit(a1, a1 + 96);
        v3 += 2;
        v8 -= 16;
      }

      while (v8 > 0xF);
    }

    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        *(a1 + j) ^= *(v3 + j);
      }

      gcm_gmult_4bit(a1, a1 + 96);
    }

    v11 = vdupq_n_s64(8 * a3);
    v12 = vmovn_s64(vshlq_u64(v11, xmmword_23E22F3A0));
    v13 = vmovn_s64(vshlq_u64(v11, xmmword_23E22F390));
    *v11.i8 = vmovn_s64(vshlq_u64(v11, xmmword_23E22F3B0));
    v12.i8[1] = v12.i8[4];
    v12.i8[2] = v13.i8[0];
    v12.i8[3] = v13.i8[4];
    v12.i8[4] = v11.i8[0];
    v12.i8[5] = v11.i8[4];
    v12.i8[6] = a3 >> 5;
    v12.i8[7] = 8 * a3;
    *(a1 + 8) = veor_s8(*(a1 + 8), v12);
    gcm_gmult_4bit(a1, a1 + 96);
    v6 = bswap32(*(a1 + 12)) + 1;
  }

  result = (*(a1 + 376))(a1, a1 + 32, *(a1 + 384));
  *(a1 + 12) = bswap32(v6);
  return result;
}

_BYTE *gcm_gmult_4bit(_BYTE *result, uint64_t a2)
{
  v2 = result[15];
  v3 = (a2 + 16 * (v2 & 0xF));
  *(&v4 + 1) = *v3;
  *&v4 = v3[1];
  v5 = (a2 + (v2 & 0xF0));
  v6 = rem_4bit[v4 & 0xF] ^ (*v3 >> 4) ^ *v5;
  v7 = v5[1] ^ (v4 >> 4);
  for (i = 14; i < 0xFFFFFFFFFFFFFFFELL; --i)
  {
    v9 = result[i];
    v10 = v7 & 0xF;
    *(&v11 + 1) = v6;
    *&v11 = v7;
    v12 = (a2 + 16 * (v9 & 0xF));
    v13 = v12[1] ^ (v11 >> 4);
    *(&v11 + 1) = rem_4bit[v10] ^ (v6 >> 4) ^ *v12;
    *&v11 = v13;
    v14 = (a2 + (v9 & 0xF0));
    v15 = v14[1];
    v6 = rem_4bit[v13 & 0xF] ^ (*(&v11 + 1) >> 4) ^ *v14;
    v7 = v15 ^ (v11 >> 4);
  }

  *result = HIBYTE(v6);
  result[1] = BYTE6(v6);
  result[2] = BYTE5(v6);
  result[3] = BYTE4(v6);
  result[4] = BYTE3(v6);
  result[5] = BYTE2(v6);
  result[6] = BYTE1(v6);
  result[7] = v6;
  result[8] = HIBYTE(v7);
  result[9] = BYTE6(v7);
  result[10] = BYTE5(v7);
  result[11] = BYTE4(v7);
  result[12] = BYTE3(v7);
  result[13] = BYTE2(v7);
  result[14] = BYTE1(v7);
  result[15] = v7;
  return result;
}

uint64_t CRYPTO_gcm128_aad(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a1 + 56))
  {
    return 4294967294;
  }

  v5 = *(a1 + 48);
  v6 = __CFADD__(v5, a3);
  v7 = v5 + a3;
  v8 = v6;
  result = 0xFFFFFFFFLL;
  if (v7 <= 0x2000000000000000 && (v8 & 1) == 0)
  {
    *(a1 + 48) = v7;
    v10 = *(a1 + 372);
    if (v10)
    {
      if (!a3)
      {
        goto LABEL_23;
      }

      v11 = (a1 + 64);
      do
      {
        v12 = *a2++;
        v11[v10] ^= v12;
        v13 = a3 - 1;
        v10 = (v10 + 1) & 0xF;
        if (!v10)
        {
          break;
        }

        --a3;
      }

      while (a3);
      if (v10)
      {
LABEL_23:
        result = 0;
        *(a1 + 372) = v10;
        return result;
      }

      gcm_gmult_4bit(v11, a1 + 96);
    }

    else
    {
      v13 = a3;
    }

    if ((v13 & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      gcm_ghash_4bit((a1 + 64), a1 + 96, a2, v13 & 0xFFFFFFFFFFFFFFF0);
      a2 += v13 & 0xFFFFFFFFFFFFFFF0;
      v13 &= 0xFu;
    }

    if (v13)
    {
      v14 = (a1 + 64);
      v15 = v13;
      do
      {
        v16 = *a2++;
        *v14++ ^= v16;
        --v15;
      }

      while (v15);
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_23;
  }

  return result;
}

_BYTE *gcm_ghash_4bit(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = result[15];
  do
  {
    v5 = *(a3 + 15) ^ v4;
    v6 = (a2 + 16 * (v5 & 0xF));
    *(&v7 + 1) = *v6;
    *&v7 = v6[1];
    v8 = (a2 + (v5 & 0xF0));
    v9 = rem_4bit[v7 & 0xF] ^ (*v6 >> 4) ^ *v8;
    v4 = v8[1] ^ (v7 >> 4);
    for (i = 14; i < 0xFFFFFFFFFFFFFFFELL; --i)
    {
      v11 = *(a3 + i) ^ result[i];
      v12 = v4 & 0xF;
      *(&v13 + 1) = v9;
      *&v13 = v4;
      v14 = (a2 + 16 * (v11 & 0xF));
      v15 = v14[1] ^ (v13 >> 4);
      *(&v13 + 1) = rem_4bit[v12] ^ (v9 >> 4) ^ *v14;
      *&v13 = v15;
      v16 = (a2 + (v11 & 0xF0));
      v17 = v16[1];
      v9 = rem_4bit[v15 & 0xF] ^ (*(&v13 + 1) >> 4) ^ *v16;
      v4 = v17 ^ (v13 >> 4);
    }

    *result = HIBYTE(v9);
    result[1] = BYTE6(v9);
    result[2] = BYTE5(v9);
    result[3] = BYTE4(v9);
    result[4] = BYTE3(v9);
    result[5] = BYTE2(v9);
    result[6] = BYTE1(v9);
    result[7] = v9;
    result[8] = HIBYTE(v4);
    result[9] = BYTE6(v4);
    result[10] = BYTE5(v4);
    result[11] = BYTE4(v4);
    result[12] = BYTE3(v4);
    result[13] = BYTE2(v4);
    result[14] = BYTE1(v4);
    a3 += 16;
    result[15] = v4;
    a4 -= 16;
  }

  while (a4);
  return result;
}

uint64_t CRYPTO_gcm128_encrypt(uint64_t a1, char *a2, void *a3, unint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = __CFADD__(v5, a4);
  v7 = v5 + a4;
  v8 = v6;
  result = 0xFFFFFFFFLL;
  if (v7 <= 0xFFFFFFFE0 && (v8 & 1) == 0)
  {
    v10 = a4;
    v14 = *(a1 + 376);
    v13 = *(a1 + 384);
    *(a1 + 56) = v7;
    if (*(a1 + 372))
    {
      gcm_gmult_4bit((a1 + 64), a1 + 96);
      *(a1 + 372) = 0;
    }

    v15 = *(a1 + 12);
    LODWORD(v16) = *(a1 + 368);
    if (v16)
    {
      if (!v10)
      {
        goto LABEL_28;
      }

      v17 = (a1 + 64);
      do
      {
        v18 = *a2++;
        v19 = *(a1 + 16 + v16) ^ v18;
        *a3 = v19;
        a3 = (a3 + 1);
        v17[v16] ^= v19;
        v20 = v10 - 1;
        LODWORD(v16) = (v16 + 1) & 0xF;
        if (!v16)
        {
          break;
        }

        --v10;
      }

      while (v10);
      if (v16)
      {
LABEL_28:
        result = 0;
        *(a1 + 368) = v16;
        return result;
      }

      gcm_gmult_4bit(v17, a1 + 96);
    }

    else
    {
      v20 = v10;
    }

    v21 = bswap32(v15);
    if (v20 >= 0xC00)
    {
      do
      {
        for (i = 0; i != 384; i += 2)
        {
          v23 = &a3[i];
          v14(a1, a1 + 16, v13);
          *(a1 + 12) = bswap32(++v21);
          *v23 = *(a1 + 16) ^ *&a2[i * 8];
          v23[1] = *(a1 + 24) ^ *&a2[i * 8 + 8];
        }

        a3 += 384;
        gcm_ghash_4bit((a1 + 64), a1 + 96, (a3 - 384), 3072);
        v20 -= 3072;
        a2 += 3072;
      }

      while (v20 > 0xBFF);
    }

    v24 = v20 & 0xFF0;
    if ((v20 & 0xFF0) != 0)
    {
      do
      {
        v14(a1, a1 + 16, v13);
        *(a1 + 12) = bswap32(++v21);
        *a3 = *(a1 + 16) ^ *a2;
        a3[1] = *(a1 + 24) ^ *(a2 + 1);
        a3 += 2;
        a2 += 16;
        v20 -= 16;
      }

      while (v20 > 0xF);
      gcm_ghash_4bit((a1 + 64), a1 + 96, a3 - v24, v24);
    }

    if (v20)
    {
      v14(a1, a1 + 16, v13);
      v16 = 0;
      *(a1 + 12) = bswap32(v21 + 1);
      do
      {
        v25 = *(a1 + 16 + v16) ^ a2[v16];
        *(a3 + v16) = v25;
        *(a1 + 64 + v16++) ^= v25;
      }

      while (v20 != v16);
    }

    else
    {
      LODWORD(v16) = 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t CRYPTO_gcm128_decrypt(uint64_t a1, char *a2, void *a3, unint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = __CFADD__(v5, a4);
  v7 = v5 + a4;
  v8 = v6;
  result = 0xFFFFFFFFLL;
  if (v7 <= 0xFFFFFFFE0 && (v8 & 1) == 0)
  {
    v10 = a4;
    v14 = *(a1 + 376);
    v13 = *(a1 + 384);
    *(a1 + 56) = v7;
    if (*(a1 + 372))
    {
      gcm_gmult_4bit((a1 + 64), a1 + 96);
      *(a1 + 372) = 0;
    }

    v15 = *(a1 + 12);
    LODWORD(v16) = *(a1 + 368);
    if (v16)
    {
      if (!v10)
      {
        goto LABEL_28;
      }

      v17 = (a1 + 64);
      do
      {
        v18 = *a2++;
        *a3 = *(a1 + 16 + v16) ^ v18;
        a3 = (a3 + 1);
        v17[v16] ^= v18;
        v19 = v10 - 1;
        LODWORD(v16) = (v16 + 1) & 0xF;
        if (!v16)
        {
          break;
        }

        --v10;
      }

      while (v10);
      if (v16)
      {
LABEL_28:
        result = 0;
        *(a1 + 368) = v16;
        return result;
      }

      gcm_gmult_4bit(v17, a1 + 96);
    }

    else
    {
      v19 = v10;
    }

    v20 = bswap32(v15);
    if (v19 >= 0xC00)
    {
      do
      {
        gcm_ghash_4bit((a1 + 64), a1 + 96, a2, 3072);
        v21 = -3072;
        do
        {
          v14(a1, a1 + 16, v13);
          *(a1 + 12) = bswap32(++v20);
          *a3 = *(a1 + 16) ^ *a2;
          a3[1] = *(a1 + 24) ^ *(a2 + 1);
          a3 += 2;
          a2 += 16;
          v21 += 16;
        }

        while (v21);
        v19 -= 3072;
      }

      while (v19 > 0xBFF);
    }

    v22 = v19 & 0xFF0;
    if ((v19 & 0xFF0) != 0)
    {
      gcm_ghash_4bit((a1 + 64), a1 + 96, a2, v22);
      do
      {
        v14(a1, a1 + 16, v13);
        *(a1 + 12) = bswap32(++v20);
        *a3 = *(a1 + 16) ^ *a2;
        a3[1] = *(a1 + 24) ^ *(a2 + 1);
        a3 += 2;
        a2 += 16;
        v19 -= 16;
      }

      while (v19 > 0xF);
    }

    if (v19)
    {
      (v14)(a1, a1 + 16, v13, v22);
      v16 = 0;
      *(a1 + 12) = bswap32(v20 + 1);
      do
      {
        v23 = a2[v16];
        *(a1 + 64 + v16) ^= v23;
        *(a3 + v16) = *(a1 + 16 + v16) ^ v23;
        ++v16;
      }

      while (v19 != v16);
    }

    else
    {
      LODWORD(v16) = 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t CRYPTO_gcm128_encrypt_ctr32(uint64_t a1, char *a2, _BYTE *a3, unint64_t a4, void (*a5)(char *, _BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 56);
  v7 = __CFADD__(v6, a4);
  v8 = v6 + a4;
  v9 = v7;
  result = 0xFFFFFFFFLL;
  if (v8 <= 0xFFFFFFFE0 && (v9 & 1) == 0)
  {
    v12 = a4;
    v15 = *(a1 + 384);
    *(a1 + 56) = v8;
    if (*(a1 + 372))
    {
      gcm_gmult_4bit((a1 + 64), a1 + 96);
      *(a1 + 372) = 0;
    }

    v16 = *(a1 + 12);
    LODWORD(v17) = *(a1 + 368);
    if (v17)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v18 = (a1 + 64);
      do
      {
        v19 = *a2++;
        v20 = *(a1 + 16 + v17) ^ v19;
        *a3++ = v20;
        v18[v17] ^= v20;
        v21 = v12 - 1;
        LODWORD(v17) = (v17 + 1) & 0xF;
        if (!v17)
        {
          break;
        }

        --v12;
      }

      while (v12);
      if (v17)
      {
LABEL_25:
        result = 0;
        *(a1 + 368) = v17;
        return result;
      }

      gcm_gmult_4bit(v18, a1 + 96);
    }

    else
    {
      v21 = v12;
    }

    v22 = bswap32(v16);
    if (v21 >= 0xC00)
    {
      do
      {
        a5(a2, a3, 192, v15, a1);
        v22 += 192;
        *(a1 + 12) = bswap32(v22);
        gcm_ghash_4bit((a1 + 64), a1 + 96, a3, 3072);
        a3 += 3072;
        a2 += 3072;
        v21 -= 3072;
      }

      while (v21 > 0xBFF);
    }

    v23 = v21 & 0xFF0;
    if ((v21 & 0xFF0) != 0)
    {
      a5(a2, a3, v21 >> 4, v15, a1);
      v22 += v21 >> 4;
      *(a1 + 12) = bswap32(v22);
      a2 += v23;
      v21 &= 0xFu;
      gcm_ghash_4bit((a1 + 64), a1 + 96, a3, v23);
      a3 += v23;
    }

    if (v21)
    {
      (*(a1 + 376))(a1, a1 + 16, v15);
      v17 = 0;
      *(a1 + 12) = bswap32(v22 + 1);
      do
      {
        v24 = *(a1 + 16 + v17) ^ a2[v17];
        a3[v17] = v24;
        *(a1 + 64 + v17++) ^= v24;
      }

      while (v21 != v17);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t CRYPTO_gcm128_decrypt_ctr32(uint64_t a1, char *a2, _BYTE *a3, unint64_t a4, void (*a5)(char *, _BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 56);
  v7 = __CFADD__(v6, a4);
  v8 = v6 + a4;
  v9 = v7;
  result = 0xFFFFFFFFLL;
  if (v8 <= 0xFFFFFFFE0 && (v9 & 1) == 0)
  {
    v12 = a4;
    v15 = *(a1 + 384);
    *(a1 + 56) = v8;
    if (*(a1 + 372))
    {
      gcm_gmult_4bit((a1 + 64), a1 + 96);
      *(a1 + 372) = 0;
    }

    v16 = *(a1 + 12);
    LODWORD(v17) = *(a1 + 368);
    if (v17)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v18 = (a1 + 64);
      do
      {
        v19 = *a2++;
        *a3++ = *(a1 + 16 + v17) ^ v19;
        v18[v17] ^= v19;
        v20 = v12 - 1;
        LODWORD(v17) = (v17 + 1) & 0xF;
        if (!v17)
        {
          break;
        }

        --v12;
      }

      while (v12);
      if (v17)
      {
LABEL_25:
        result = 0;
        *(a1 + 368) = v17;
        return result;
      }

      gcm_gmult_4bit(v18, a1 + 96);
    }

    else
    {
      v20 = v12;
    }

    v21 = bswap32(v16);
    if (v20 >= 0xC00)
    {
      do
      {
        gcm_ghash_4bit((a1 + 64), a1 + 96, a2, 3072);
        a5(a2, a3, 192, v15, a1);
        v21 += 192;
        *(a1 + 12) = bswap32(v21);
        a3 += 3072;
        a2 += 3072;
        v20 -= 3072;
      }

      while (v20 > 0xBFF);
    }

    v22 = v20 & 0xFF0;
    if ((v20 & 0xFF0) != 0)
    {
      gcm_ghash_4bit((a1 + 64), a1 + 96, a2, v20 & 0xFF0);
      a5(a2, a3, v20 >> 4, v15, a1);
      v21 += v20 >> 4;
      *(a1 + 12) = bswap32(v21);
      a3 += v22;
      a2 += v22;
      v20 &= 0xFu;
    }

    if (v20)
    {
      (*(a1 + 376))(a1, a1 + 16, v15);
      v17 = 0;
      *(a1 + 12) = bswap32(v21 + 1);
      do
      {
        v23 = a2[v17];
        *(a1 + 64 + v17) ^= v23;
        a3[v17] = *(a1 + 16 + v17) ^ v23;
        ++v17;
      }

      while (v20 != v17);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t CRYPTO_gcm128_finish(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 48);
  v7 = vshlq_n_s64(v6, 3uLL);
  if (*(a1 + 368))
  {
    v13 = *(a1 + 48);
    v14 = v7;
    gcm_gmult_4bit((a1 + 64), a1 + 96);
    v6 = v13;
    v7 = v14;
  }

  v9 = *(a1 + 64);
  v8 = (a1 + 64);
  v10.i64[0] = 65280;
  v10.i64[1] = 65280;
  v11.i64[0] = 255;
  v11.i64[1] = 255;
  v8[-1] = v7;
  *v8 = veorq_s8(v9, vsraq_n_u64(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v7, xmmword_23E22F3E0), xmmword_23E22F430), vandq_s8(vshlq_u64(v7, xmmword_23E22F3F0), xmmword_23E22F420)), vandq_s8(vshrq_n_u64(v7, 0x28uLL), v10)), vshlq_n_s64(vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v6, xmmword_23E22F3C0), xmmword_23E22F410), vandq_s8(vshlq_u64(v6, xmmword_23E22F3D0), xmmword_23E22F400)), vorrq_s8(vandq_s8(vshrq_n_u64(v7, 8uLL), v10), vandq_s8(vshrq_n_u64(v7, 0x18uLL), v11))), 0x20uLL)), v7, 0x38uLL));
  gcm_gmult_4bit(v8, v8[2].i64);
  *v8 = veorq_s8(*v8, v8[-2]);
  if (!a2 || a3 > 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  return memcmp(v8, a2, a3);
}

void *CRYPTO_gcm128_tag(uint64_t a1, void *a2, size_t a3)
{
  CRYPTO_gcm128_finish(a1, 0, 0);
  if (a3 >= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = a3;
  }

  return memcpy(a2, (a1 + 64), v6);
}

void *CRYPTO_gcm128_new(uint64_t a1, void (*a2)(unsigned int *, unsigned int *, uint64_t))
{
  v4 = malloc_type_malloc(0x188uLL, 0x1080040DB0FD529uLL);
  v5 = v4;
  if (v4)
  {
    CRYPTO_gcm128_init(v4, a1, a2);
  }

  return v5;
}

STACK *i2v_EXTENDED_KEY_USAGE(int a1, STACK *a2, STACK *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a3)
  {
    v4 = a3;
    v5 = 0;
  }

  else
  {
    v4 = sk_new_null();
    v9 = v4;
    v5 = v4;
    if (!v4)
    {
      return v4;
    }
  }

  if (sk_num(a2) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = sk_value(a2, v6);
      if (!v7 || !i2t_ASN1_OBJECT(buf, 80, v7) || !X509V3_add_value(0, buf, &v9))
      {
        break;
      }

      if (++v6 >= sk_num(a2))
      {
        return v9;
      }
    }

    sk_pop_free(v5, X509V3_conf_free);
    return 0;
  }

  return v4;
}

STACK *v2i_EXTENDED_KEY_USAGE(uint64_t a1, uint64_t a2, const STACK *a3)
{
  v4 = sk_new_null();
  if (v4)
  {
    if (sk_num(a3) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = sk_value(a3, v5);
        v7 = *(v6 + 2);
        if (!v7)
        {
          v7 = *(v6 + 1);
        }

        v8 = OBJ_txt2obj(v7, 0);
        if (!v8)
        {
          sk_pop_free(v4, ASN1_OBJECT_free);
          ERR_put_error(34, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_extku.c", 209);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v6, *(v6 + 1), *(v6 + 2));
          return 0;
        }

        v9 = v8;
        if (!sk_push(v4, v8))
        {
          break;
        }

        if (++v5 >= sk_num(a3))
        {
          return v4;
        }
      }

      ASN1_OBJECT_free(v9);
      sk_pop_free(v4, ASN1_OBJECT_free);
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_extku.c", 216);
      return 0;
    }
  }

  else
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_extku.c", 197);
  }

  return v4;
}

int asn1_set_choice_selector(ASN1_VALUE **pval, int value, const ASN1_ITEM *it)
{
  v3 = *pval;
  utype = it->utype;
  result = *(*pval + utype);
  *(v3 + utype) = value;
  return result;
}

int asn1_do_lock(ASN1_VALUE **pval, int op, const ASN1_ITEM *it)
{
  itype = it->itype;
  if (itype != 6 && itype != 1)
  {
    return 0;
  }

  funcs = it->funcs;
  if (!funcs || (funcs[2] & 1) == 0)
  {
    return 0;
  }

  v7 = *pval;
  v8 = funcs[3];
  if (op)
  {
    return CRYPTO_add_lock((v7 + v8), op, funcs[4], 0, 0);
  }

  result = 1;
  *(v7 + v8) = 1;
  return result;
}

void asn1_enc_init(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  if (pval)
  {
    funcs = it->funcs;
    if (*pval)
    {
      v3 = funcs == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && (funcs[2] & 2) != 0)
    {
      v4 = *pval + funcs[8];
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 4) = 1;
    }
  }
}

void asn1_enc_cleanup(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 32);
    if (*result)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && (*(v2 + 8) & 2) != 0)
    {
      v4 = *result + *(v2 + 32);
      freezero(*v4, *(v4 + 8));
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 1;
    }
  }
}

int asn1_enc_save(ASN1_VALUE **pval, const unsigned __int8 *in, int inlen, const ASN1_ITEM *it)
{
  v11 = 0;
  v12 = 0;
  if (!pval)
  {
    return 1;
  }

  v4 = *(*&inlen + 32);
  if (!*pval || v4 == 0)
  {
    return 1;
  }

  v6 = 1;
  if ((*(v4 + 8) & 2) != 0)
  {
    v9 = *pval + *(v4 + 32);
    freezero(*v9, *(v9 + 1));
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 4) = 1;
    if (CBS_stow(in, &v12, &v11))
    {
      v10 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {
        *v9 = v12;
        *(v9 + 1) = v10;
        *(v9 + 4) = 0;
        return v6;
      }

      freezero(v12, v11);
    }

    return 0;
  }

  return v6;
}

int asn1_enc_restore(int *len, unsigned __int8 **out, ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  if (!pval)
  {
    return 0;
  }

  funcs = it->funcs;
  if (!*pval || funcs == 0)
  {
    return 0;
  }

  if ((funcs[2] & 2) == 0)
  {
    return 0;
  }

  v7 = *pval + funcs[8];
  if (*(v7 + 4))
  {
    return 0;
  }

  if (out)
  {
    memcpy(*out, *v7, *(v7 + 1));
    *out += *(v7 + 1);
  }

  if (len)
  {
    *len = *(v7 + 1);
  }

  return 1;
}

const ASN1_TEMPLATE *__cdecl asn1_do_adb(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt, int nullerr)
{
  if ((tt->flags & 0x300) == 0)
  {
    return tt;
  }

  item = tt->item;
  if (!*pval)
  {
    tt = item->size;
    if (tt)
    {
      return tt;
    }

    goto LABEL_13;
  }

  v5 = *(*pval + item->utype);
  if ((tt->flags & 0x100) != 0)
  {
    v6 = OBJ_obj2nid(v5);
  }

  else
  {
    v6 = ASN1_INTEGER_get(v5);
  }

  tcount = item->tcount;
  if (tcount < 1)
  {
LABEL_12:
    tt = item->funcs;
    if (tt)
    {
      return tt;
    }

LABEL_13:
    if (nullerr)
    {
      ERR_put_error(13, 4095, 164, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_utl.c", 297);
    }

    return 0;
  }

  tt = &item->templates->tag;
  while (tt[-1].item != v6)
  {
    tt = (tt + 48);
    if (!--tcount)
    {
      goto LABEL_12;
    }
  }

  return tt;
}

uint64_t SM4_set_key(unsigned int *a1, uint64_t a2)
{
  v2 = 0;
  v9 = *MEMORY[0x277D85DE8];
  v3 = bswap32(a1[1]);
  v8[0] = bswap32(*a1) ^ 0xA3B1BAC6;
  v8[1] = v3 ^ 0x56AA3350;
  v4 = bswap32(a1[3]);
  v8[2] = bswap32(a1[2]) ^ 0x677D9197;
  v8[3] = v4 ^ 0xB27022DC;
  do
  {
    v5 = SM4_set_key_CK[v2];
    v6 = v8[v2 & 3 ^ 2] ^ v8[(v2 + 1) & 3] ^ v8[(v2 - 1) & 3] ^ v5;
    LODWORD(v6) = (SM4_S[v6 >> 24] << 24) | (SM4_S[BYTE2(v6)] << 16) | (SM4_S[BYTE1(v6)] << 8) | SM4_S[(LOBYTE(v8[v2 & 3 ^ 2]) ^ LOBYTE(v8[(v2 + 1) & 3]) ^ LOBYTE(v8[(v2 - 1) & 3]) ^ v5)];
    LODWORD(v6) = v8[v2 & 3] ^ __ROR4__(v6, 9) ^ __ROR4__(v6, 19) ^ v6;
    v8[v2 & 3] = v6;
    *(a2 + 4 * v2++) = v6;
  }

  while (v2 != 32);
  return 1;
}

uint64_t SM4_encrypt(unsigned int *a1, _BYTE *a2, _DWORD *a3)
{
  v3 = bswap32(a1[1]);
  v4 = bswap32(a1[2]);
  v5 = bswap32(a1[3]);
  v6 = v4 ^ *a3 ^ v5 ^ v3;
  LODWORD(v6) = (SM4_S[v6 >> 24] << 24) | (SM4_S[BYTE2(v6)] << 16) | (SM4_S[BYTE1(v6)] << 8) | SM4_S[(v4 ^ *a3 ^ v5 ^ v3)];
  v7 = bswap32(*a1) ^ __ROR4__(v6, 30) ^ __ROR4__(v6, 22) ^ __ROR4__(v6, 14) ^ __ROR4__(v6, 8) ^ v6;
  v8 = v4 ^ a3[1] ^ v5 ^ v7;
  HIDWORD(v9) = (SM4_S[v8 >> 24] << 24) | (SM4_S[BYTE2(v8)] << 16) | (SM4_S[BYTE1(v8)] << 8) | SM4_S[(v4 ^ *(a3 + 4) ^ v5 ^ v7)];
  LODWORD(v9) = HIDWORD(v9);
  v10 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v3 ^ HIDWORD(v9);
  v11 = a3[2] ^ v5 ^ v10 ^ v7;
  HIDWORD(v9) = (SM4_S[v11 >> 24] << 24) | (SM4_S[BYTE2(v11)] << 16) | (SM4_S[BYTE1(v11)] << 8) | SM4_S[(*(a3 + 8) ^ v5 ^ v10 ^ v7)];
  LODWORD(v9) = HIDWORD(v9);
  v12 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v4 ^ HIDWORD(v9);
  v13 = v10 ^ v7 ^ a3[3] ^ v12;
  HIDWORD(v9) = (SM4_S[v13 >> 24] << 24) | (SM4_S[BYTE2(v13)] << 16) | (SM4_S[BYTE1(v13)] << 8) | SM4_S[(v10 ^ v7 ^ *(a3 + 12) ^ v12)];
  LODWORD(v9) = HIDWORD(v9);
  LODWORD(v13) = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v5 ^ HIDWORD(v9);
  v14 = v12 ^ a3[4] ^ v10 ^ v13;
  v15 = SM4_SBOX_T[HIBYTE(v14)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v14)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v14)], 16) ^ __ROR4__(SM4_SBOX_T[(v12 ^ *(a3 + 16) ^ v10 ^ v13)], 24) ^ v7;
  LODWORD(v11) = v12 ^ a3[5] ^ v13 ^ v15;
  v16 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v12 ^ *(a3 + 20) ^ v13 ^ v15)], 24) ^ v10;
  v17 = a3[6] ^ v13 ^ v16 ^ v15;
  v18 = SM4_SBOX_T[HIBYTE(v17)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v17)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v17)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 24) ^ v13 ^ v16 ^ v15)], 24) ^ v12;
  LODWORD(v11) = a3[7] ^ v16 ^ v15 ^ v18;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 28) ^ v16 ^ v15 ^ v18)], 24) ^ v13;
  LODWORD(v11) = v18 ^ a3[8] ^ v16 ^ v13;
  v19 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v18 ^ *(a3 + 32) ^ v16 ^ v13)], 24) ^ v15;
  LODWORD(v11) = v18 ^ a3[9] ^ v13 ^ v19;
  v20 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v18 ^ *(a3 + 36) ^ v13 ^ v19)], 24) ^ v16;
  v21 = a3[10] ^ v13 ^ v20 ^ v19;
  v22 = SM4_SBOX_T[HIBYTE(v21)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v21)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v21)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 40) ^ v13 ^ v20 ^ v19)], 24) ^ v18;
  LODWORD(v11) = a3[11] ^ v20 ^ v19 ^ v22;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 44) ^ v20 ^ v19 ^ v22)], 24) ^ v13;
  LODWORD(v11) = v22 ^ a3[12] ^ v20 ^ v13;
  v23 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v22 ^ *(a3 + 48) ^ v20 ^ v13)], 24) ^ v19;
  LODWORD(v11) = v22 ^ a3[13] ^ v13 ^ v23;
  v24 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v22 ^ *(a3 + 52) ^ v13 ^ v23)], 24) ^ v20;
  v25 = a3[14] ^ v13 ^ v24 ^ v23;
  v26 = SM4_SBOX_T[HIBYTE(v25)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v25)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v25)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 56) ^ v13 ^ v24 ^ v23)], 24) ^ v22;
  LODWORD(v11) = a3[15] ^ v24 ^ v23 ^ v26;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 60) ^ v24 ^ v23 ^ v26)], 24) ^ v13;
  LODWORD(v11) = v26 ^ a3[16] ^ v24 ^ v13;
  v27 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v26 ^ *(a3 + 64) ^ v24 ^ v13)], 24) ^ v23;
  LODWORD(v11) = v26 ^ a3[17] ^ v13 ^ v27;
  v28 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v26 ^ *(a3 + 68) ^ v13 ^ v27)], 24) ^ v24;
  v29 = a3[18] ^ v13 ^ v28 ^ v27;
  v30 = SM4_SBOX_T[HIBYTE(v29)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v29)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v29)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 72) ^ v13 ^ v28 ^ v27)], 24) ^ v26;
  LODWORD(v11) = a3[19] ^ v28 ^ v27 ^ v30;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 76) ^ v28 ^ v27 ^ v30)], 24) ^ v13;
  LODWORD(v11) = v30 ^ a3[20] ^ v28 ^ v13;
  v31 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v30 ^ *(a3 + 80) ^ v28 ^ v13)], 24) ^ v27;
  LODWORD(v11) = v30 ^ a3[21] ^ v13 ^ v31;
  LODWORD(v11) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v30 ^ *(a3 + 84) ^ v13 ^ v31)], 24) ^ v28;
  v32 = a3[22] ^ v13 ^ v11 ^ v31;
  v33 = SM4_SBOX_T[HIBYTE(v32)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v32)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v32)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 88) ^ v13 ^ v11 ^ v31)], 24) ^ v30;
  v34 = a3[23] ^ v11 ^ v31 ^ v33;
  LODWORD(v13) = SM4_SBOX_T[HIBYTE(v34)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v34)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v34)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 92) ^ v11 ^ v31 ^ v33)], 24) ^ v13;
  v35 = v33 ^ a3[24] ^ v11 ^ v13;
  v36 = SM4_SBOX_T[HIBYTE(v35)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v35)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v35)], 16) ^ __ROR4__(SM4_SBOX_T[(v33 ^ *(a3 + 96) ^ v11 ^ v13)], 24) ^ v31;
  v37 = v33 ^ a3[25] ^ v13 ^ v36;
  v38 = SM4_SBOX_T[HIBYTE(v37)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v37)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v37)], 16) ^ __ROR4__(SM4_SBOX_T[(v33 ^ *(a3 + 100) ^ v13 ^ v36)], 24) ^ v11;
  v39 = a3[26] ^ v13 ^ v38 ^ v36;
  v40 = SM4_SBOX_T[HIBYTE(v39)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v39)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v39)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 104) ^ v13 ^ v38 ^ v36)], 24) ^ v33;
  LODWORD(v11) = a3[27] ^ v38 ^ v36 ^ v40;
  v41 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 108) ^ v38 ^ v36 ^ v40)], 24) ^ v13;
  v42 = v40 ^ a3[28] ^ v38 ^ v41;
  HIDWORD(v9) = (SM4_S[v42 >> 24] << 24) | (SM4_S[BYTE2(v42)] << 16) | (SM4_S[BYTE1(v42)] << 8) | SM4_S[(v40 ^ *(a3 + 112) ^ v38 ^ v41)];
  LODWORD(v9) = HIDWORD(v9);
  v43 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v36 ^ HIDWORD(v9);
  v44 = v40 ^ a3[29] ^ v41 ^ v43;
  HIDWORD(v9) = (SM4_S[v44 >> 24] << 24) | (SM4_S[BYTE2(v44)] << 16) | (SM4_S[BYTE1(v44)] << 8) | SM4_S[(v40 ^ *(a3 + 116) ^ v41 ^ v43)];
  LODWORD(v9) = HIDWORD(v9);
  v45 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v38 ^ HIDWORD(v9);
  v46 = a3[30] ^ v41 ^ v45 ^ v43;
  result = SM4_S[BYTE1(v46)];
  HIDWORD(v9) = (SM4_S[v46 >> 24] << 24) | (SM4_S[BYTE2(v46)] << 16) | (result << 8) | SM4_S[(*(a3 + 120) ^ v41 ^ v45 ^ v43)];
  LODWORD(v9) = HIDWORD(v9);
  v48 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v40 ^ HIDWORD(v9);
  v49 = v45 ^ v43 ^ a3[31] ^ v48;
  HIDWORD(v9) = (SM4_S[v49 >> 24] << 24) | (SM4_S[BYTE2(v49)] << 16) | (SM4_S[BYTE1(v49)] << 8) | SM4_S[(v45 ^ v43 ^ *(a3 + 124) ^ v48)];
  LODWORD(v9) = HIDWORD(v9);
  v50 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v41 ^ HIDWORD(v9);
  *a2 = HIBYTE(v50);
  a2[1] = BYTE2(v50);
  a2[2] = BYTE1(v50);
  a2[3] = v50;
  a2[4] = HIBYTE(v48);
  a2[5] = BYTE2(v48);
  a2[6] = BYTE1(v48);
  a2[7] = v48;
  a2[8] = HIBYTE(v45);
  a2[9] = BYTE2(v45);
  a2[10] = BYTE1(v45);
  a2[11] = v45;
  a2[12] = HIBYTE(v43);
  a2[13] = BYTE2(v43);
  a2[14] = BYTE1(v43);
  a2[15] = v43;
  return result;
}

uint64_t SM4_decrypt(unsigned int *a1, _BYTE *a2, _DWORD *a3)
{
  v3 = bswap32(a1[1]);
  v4 = bswap32(a1[2]);
  v5 = bswap32(a1[3]);
  v6 = v4 ^ a3[31] ^ v5 ^ v3;
  LODWORD(v6) = (SM4_S[v6 >> 24] << 24) | (SM4_S[BYTE2(v6)] << 16) | (SM4_S[BYTE1(v6)] << 8) | SM4_S[(v4 ^ *(a3 + 124) ^ v5 ^ v3)];
  v7 = bswap32(*a1) ^ __ROR4__(v6, 30) ^ __ROR4__(v6, 22) ^ __ROR4__(v6, 14) ^ __ROR4__(v6, 8) ^ v6;
  v8 = v4 ^ a3[30] ^ v5 ^ v7;
  HIDWORD(v9) = (SM4_S[v8 >> 24] << 24) | (SM4_S[BYTE2(v8)] << 16) | (SM4_S[BYTE1(v8)] << 8) | SM4_S[(v4 ^ *(a3 + 120) ^ v5 ^ v7)];
  LODWORD(v9) = HIDWORD(v9);
  v10 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v3 ^ HIDWORD(v9);
  v11 = a3[29] ^ v5 ^ v10 ^ v7;
  HIDWORD(v9) = (SM4_S[v11 >> 24] << 24) | (SM4_S[BYTE2(v11)] << 16) | (SM4_S[BYTE1(v11)] << 8) | SM4_S[(*(a3 + 116) ^ v5 ^ v10 ^ v7)];
  LODWORD(v9) = HIDWORD(v9);
  v12 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v4 ^ HIDWORD(v9);
  v13 = v10 ^ v7 ^ a3[28] ^ v12;
  HIDWORD(v9) = (SM4_S[v13 >> 24] << 24) | (SM4_S[BYTE2(v13)] << 16) | (SM4_S[BYTE1(v13)] << 8) | SM4_S[(v10 ^ v7 ^ *(a3 + 112) ^ v12)];
  LODWORD(v9) = HIDWORD(v9);
  LODWORD(v13) = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v5 ^ HIDWORD(v9);
  v14 = v12 ^ a3[27] ^ v10 ^ v13;
  v15 = SM4_SBOX_T[HIBYTE(v14)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v14)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v14)], 16) ^ __ROR4__(SM4_SBOX_T[(v12 ^ *(a3 + 108) ^ v10 ^ v13)], 24) ^ v7;
  LODWORD(v11) = v12 ^ a3[26] ^ v13 ^ v15;
  v16 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v12 ^ *(a3 + 104) ^ v13 ^ v15)], 24) ^ v10;
  v17 = a3[25] ^ v13 ^ v16 ^ v15;
  v18 = SM4_SBOX_T[HIBYTE(v17)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v17)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v17)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 100) ^ v13 ^ v16 ^ v15)], 24) ^ v12;
  LODWORD(v11) = a3[24] ^ v16 ^ v15 ^ v18;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 96) ^ v16 ^ v15 ^ v18)], 24) ^ v13;
  LODWORD(v11) = v18 ^ a3[23] ^ v16 ^ v13;
  v19 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v18 ^ *(a3 + 92) ^ v16 ^ v13)], 24) ^ v15;
  LODWORD(v11) = v18 ^ a3[22] ^ v13 ^ v19;
  v20 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v18 ^ *(a3 + 88) ^ v13 ^ v19)], 24) ^ v16;
  v21 = a3[21] ^ v13 ^ v20 ^ v19;
  v22 = SM4_SBOX_T[HIBYTE(v21)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v21)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v21)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 84) ^ v13 ^ v20 ^ v19)], 24) ^ v18;
  LODWORD(v11) = a3[20] ^ v20 ^ v19 ^ v22;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 80) ^ v20 ^ v19 ^ v22)], 24) ^ v13;
  LODWORD(v11) = v22 ^ a3[19] ^ v20 ^ v13;
  v23 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v22 ^ *(a3 + 76) ^ v20 ^ v13)], 24) ^ v19;
  LODWORD(v11) = v22 ^ a3[18] ^ v13 ^ v23;
  v24 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v22 ^ *(a3 + 72) ^ v13 ^ v23)], 24) ^ v20;
  v25 = a3[17] ^ v13 ^ v24 ^ v23;
  v26 = SM4_SBOX_T[HIBYTE(v25)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v25)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v25)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 68) ^ v13 ^ v24 ^ v23)], 24) ^ v22;
  LODWORD(v11) = a3[16] ^ v24 ^ v23 ^ v26;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 64) ^ v24 ^ v23 ^ v26)], 24) ^ v13;
  LODWORD(v11) = v26 ^ a3[15] ^ v24 ^ v13;
  v27 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v26 ^ *(a3 + 60) ^ v24 ^ v13)], 24) ^ v23;
  LODWORD(v11) = v26 ^ a3[14] ^ v13 ^ v27;
  v28 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v26 ^ *(a3 + 56) ^ v13 ^ v27)], 24) ^ v24;
  v29 = a3[13] ^ v13 ^ v28 ^ v27;
  v30 = SM4_SBOX_T[HIBYTE(v29)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v29)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v29)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 52) ^ v13 ^ v28 ^ v27)], 24) ^ v26;
  LODWORD(v11) = a3[12] ^ v28 ^ v27 ^ v30;
  LODWORD(v13) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 48) ^ v28 ^ v27 ^ v30)], 24) ^ v13;
  LODWORD(v11) = v30 ^ a3[11] ^ v28 ^ v13;
  v31 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v30 ^ *(a3 + 44) ^ v28 ^ v13)], 24) ^ v27;
  LODWORD(v11) = v30 ^ a3[10] ^ v13 ^ v31;
  LODWORD(v11) = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(v30 ^ *(a3 + 40) ^ v13 ^ v31)], 24) ^ v28;
  v32 = a3[9] ^ v13 ^ v11 ^ v31;
  v33 = SM4_SBOX_T[HIBYTE(v32)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v32)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v32)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 36) ^ v13 ^ v11 ^ v31)], 24) ^ v30;
  v34 = a3[8] ^ v11 ^ v31 ^ v33;
  LODWORD(v13) = SM4_SBOX_T[HIBYTE(v34)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v34)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v34)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 32) ^ v11 ^ v31 ^ v33)], 24) ^ v13;
  v35 = v33 ^ a3[7] ^ v11 ^ v13;
  v36 = SM4_SBOX_T[HIBYTE(v35)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v35)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v35)], 16) ^ __ROR4__(SM4_SBOX_T[(v33 ^ *(a3 + 28) ^ v11 ^ v13)], 24) ^ v31;
  v37 = v33 ^ a3[6] ^ v13 ^ v36;
  v38 = SM4_SBOX_T[HIBYTE(v37)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v37)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v37)], 16) ^ __ROR4__(SM4_SBOX_T[(v33 ^ *(a3 + 24) ^ v13 ^ v36)], 24) ^ v11;
  v39 = a3[5] ^ v13 ^ v38 ^ v36;
  v40 = SM4_SBOX_T[HIBYTE(v39)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v39)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v39)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 20) ^ v13 ^ v38 ^ v36)], 24) ^ v33;
  LODWORD(v11) = a3[4] ^ v38 ^ v36 ^ v40;
  v41 = SM4_SBOX_T[BYTE3(v11)] ^ __ROR4__(SM4_SBOX_T[BYTE2(v11)], 8) ^ __ROR4__(SM4_SBOX_T[BYTE1(v11)], 16) ^ __ROR4__(SM4_SBOX_T[(*(a3 + 16) ^ v38 ^ v36 ^ v40)], 24) ^ v13;
  v42 = v40 ^ a3[3] ^ v38 ^ v41;
  HIDWORD(v9) = (SM4_S[v42 >> 24] << 24) | (SM4_S[BYTE2(v42)] << 16) | (SM4_S[BYTE1(v42)] << 8) | SM4_S[(v40 ^ *(a3 + 12) ^ v38 ^ v41)];
  LODWORD(v9) = HIDWORD(v9);
  v43 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v36 ^ HIDWORD(v9);
  v44 = v40 ^ a3[2] ^ v41 ^ v43;
  HIDWORD(v9) = (SM4_S[v44 >> 24] << 24) | (SM4_S[BYTE2(v44)] << 16) | (SM4_S[BYTE1(v44)] << 8) | SM4_S[(v40 ^ *(a3 + 8) ^ v41 ^ v43)];
  LODWORD(v9) = HIDWORD(v9);
  v45 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v38 ^ HIDWORD(v9);
  v46 = a3[1] ^ v41 ^ v45 ^ v43;
  result = SM4_S[BYTE1(v46)];
  HIDWORD(v9) = (SM4_S[v46 >> 24] << 24) | (SM4_S[BYTE2(v46)] << 16) | (result << 8) | SM4_S[(*(a3 + 4) ^ v41 ^ v45 ^ v43)];
  LODWORD(v9) = HIDWORD(v9);
  v48 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v40 ^ HIDWORD(v9);
  v49 = v45 ^ v43 ^ *a3 ^ v48;
  HIDWORD(v9) = (SM4_S[v49 >> 24] << 24) | (SM4_S[BYTE2(v49)] << 16) | (SM4_S[BYTE1(v49)] << 8) | SM4_S[(v45 ^ v43 ^ *a3 ^ v48)];
  LODWORD(v9) = HIDWORD(v9);
  v50 = (v9 >> 30) ^ __ROR4__(HIDWORD(v9), 22) ^ __ROR4__(HIDWORD(v9), 14) ^ __ROR4__(HIDWORD(v9), 8) ^ v41 ^ HIDWORD(v9);
  *a2 = HIBYTE(v50);
  a2[1] = BYTE2(v50);
  a2[2] = BYTE1(v50);
  a2[3] = v50;
  a2[4] = HIBYTE(v48);
  a2[5] = BYTE2(v48);
  a2[6] = BYTE1(v48);
  a2[7] = v48;
  a2[8] = HIBYTE(v45);
  a2[9] = BYTE2(v45);
  a2[10] = BYTE1(v45);
  a2[11] = v45;
  a2[12] = HIBYTE(v43);
  a2[13] = BYTE2(v43);
  a2[14] = BYTE1(v43);
  a2[15] = v43;
  return result;
}

double CRYPTO_poly1305_init(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2 & 0x3FFFFFF;
  *(a1 + 8) = (*(a2 + 3) >> 2) & 0x3FFFF03;
  *(a1 + 16) = (*(a2 + 6) >> 4) & 0x3FFC0FF;
  *(a1 + 24) = (*(a2 + 9) >> 6) & 0x3F03FFF;
  *(a1 + 32) = (a2[3] >> 8) & 0xFFFFF;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 104) = a2[7];
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t *CRYPTO_poly1305_update(uint64_t *result, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  v6 = result[14];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = 16 - v6;
  if (16 - v6 >= a3)
  {
    v7 = a3;
  }

  if (v7)
  {
    v8 = result + 15;
    v9 = a2;
    v10 = v7;
    do
    {
      v11 = *v9++;
      *(v8 + result[14]) = v11;
      v8 = (v8 + 1);
      --v10;
    }

    while (v10);
    v6 = result[14];
  }

  v12 = v6 + v7;
  result[14] = v12;
  if (v12 >= 0x10)
  {
    v4 = &a2[v7];
    v3 = a3 - v7;
    result = poly1305_blocks(result, result + 30, 0x10uLL);
    v5[14] = 0;
LABEL_10:
    if (v3 >= 0x10)
    {
      result = poly1305_blocks(v5, v4, v3 & 0xFFFFFFFFFFFFFFF0);
      v4 += v3 & 0xFFFFFFFFFFFFFFF0;
      v3 &= 0xFu;
    }

    if (v3)
    {
      v13 = v5 + 15;
      v14 = v3;
      do
      {
        v15 = *v4++;
        *(v13 + v5[14]) = v15;
        v13 = (v13 + 1);
        --v14;
      }

      while (v14);
      v5[14] += v3;
    }
  }

  return result;
}

double CRYPTO_poly1305_finish(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    *(a1 + 120 + v4) = 1;
    if ((v4 + 1) <= 0xF)
    {
      bzero((a1 + v4 + 121), 15 - v4);
    }

    *(a1 + 136) = 1;
    poly1305_blocks(a1, (a1 + 120), 0x10uLL);
  }

  v5 = *(a1 + 56) + (*(a1 + 48) >> 26);
  v6 = v5 & 0x3FFFFFF;
  v7 = *(a1 + 64) + (v5 >> 26);
  v8 = v7 & 0x3FFFFFF;
  v9 = *(a1 + 72) + (v7 >> 26);
  v10 = 5 * (v9 >> 26) + *(a1 + 40);
  v11 = v10 & 0x3FFFFFF;
  v12 = (*(a1 + 48) & 0x3FFFFFFLL) + (v10 >> 26);
  v13 = v12 + ((v11 + 5) >> 26);
  v14 = v6 + (v13 >> 26);
  v15 = v8 + (v14 >> 26);
  v16 = (v9 | 0xFFFFFFFFFC000000) + (v15 >> 26);
  v17 = v9 & (v16 >> 63);
  v18 = (v16 >> 63) - 1;
  v19 = v18 & 0x3FFFFFF & v13 | v12 & (v16 >> 63);
  v20 = v18 & 0x3FFFFFF & v14 | v6 & (v16 >> 63);
  v21 = v18 & 0x3FFFFFF & v15 | v8 & (v16 >> 63);
  v22 = ((v18 & 0x3FFFFFF & (v11 + 5) | v11 & (v16 >> 63)) & 0xFFFFFFFF03FFFFFFLL | ((v19 & 0x3F) << 26)) + *(a1 + 80);
  v23 = *(a1 + 96);
  v24 = ((v19 >> 6) | (v20 << 20)) + *(a1 + 88);
  v25 = *(a1 + 104);
  *a2 = v22;
  *(a2 + 2) = BYTE2(v22);
  v26 = v24 + HIDWORD(v22);
  *(a2 + 3) = BYTE3(v22);
  *(a2 + 4) = v26;
  *(a2 + 6) = BYTE2(v26);
  v27 = v23 + (v20 >> 12) + ((v21 & 0x3FFFF) << 14) + HIDWORD(v26);
  *(a2 + 7) = BYTE3(v26);
  *(a2 + 8) = v27;
  *(a2 + 10) = BYTE2(v27);
  *(a2 + 11) = BYTE3(v27);
  v28 = v25 + (v21 >> 18) + ((v18 & v16 | v17) << 8) + HIDWORD(v27);
  *(a2 + 12) = v28;
  *(a2 + 14) = BYTE2(v28);
  *(a2 + 15) = BYTE3(v28);
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t *poly1305_blocks(uint64_t *result, _DWORD *a2, unint64_t a3)
{
  v4 = result[5];
  v3 = result[6];
  v5 = result[7];
  v6 = result[8];
  v7 = result[9];
  if (a3 >= 0x10)
  {
    v8 = *result;
    v9 = result[1];
    v10 = result[2];
    v11 = result[3];
    v12 = result[4];
    v13 = 5 * v10;
    v14 = 5 * v11;
    v15 = 5 * v12;
    do
    {
      v16 = v4 + (*a2 & 0x3FFFFFF);
      v17 = v3 + ((*(a2 + 3) >> 2) & 0x3FFFFFF);
      v18 = v5 + ((*(a2 + 6) >> 4) & 0x3FFFFFF);
      v19 = v6 + (*(a2 + 9) >> 6);
      v20 = (((*(result + 136) == 0) << 24) | (a2[3] >> 8)) + v7;
      v21 = v16 * v8 + v17 * v15 + v18 * v14 + v19 * v13 + 5 * v9 * v20;
      v22 = v16 * v9 + v17 * v8 + v18 * v15 + v19 * v14 + v20 * v13;
      v23 = v16 * v10 + v17 * v9 + v18 * v8 + v19 * v15 + v20 * v14;
      v24 = v16 * v11 + v17 * v10 + v18 * v9 + v19 * v8 + v20 * v15;
      v25 = v16 * v12 + v17 * v11 + v18 * v10 + v19 * v9 + v20 * v8;
      v26 = v21 & 0x3FFFFFF;
      v27 = v22 + (v21 >> 26);
      v28 = v27 & 0x3FFFFFF;
      v29 = v23 + (v27 >> 26);
      v5 = v29 & 0x3FFFFFF;
      v30 = v24 + (v29 >> 26);
      v6 = v30 & 0x3FFFFFF;
      v31 = v25 + (v30 >> 26);
      v7 = v31 & 0x3FFFFFF;
      v32 = 5 * (v31 >> 26) + v26;
      v4 = v32 & 0x3FFFFFF;
      v3 = v28 + (v32 >> 26);
      a2 += 4;
      a3 -= 16;
    }

    while (a3 > 0xF);
  }

  result[5] = v4;
  result[6] = v3;
  result[7] = v5;
  result[8] = v6;
  result[9] = v7;
  return result;
}

void *reallocarray(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 && (a3 | a2) >> 32 && !is_mul_ok(a2, a3))
  {
    *__error() = 12;
    return 0;
  }

  else
  {
    v5 = a3 * a2;

    return malloc_type_realloc(a1, v5, 0x490A3583uLL);
  }
}

EVP_PKEY *__cdecl EVP_PKCS82PKEY(PKCS8_PRIV_KEY_INFO *p8)
{
  v10 = *MEMORY[0x277D85DE8];
  o = 0;
  if (!PKCS8_pkey_get0(&o, 0, 0, 0, p8))
  {
    return 0;
  }

  v2 = EVP_PKEY_new();
  if (v2)
  {
    v3 = OBJ_obj2nid(o);
    if (!EVP_PKEY_set_type(v2, v3))
    {
      ERR_put_error(6, 4095, 118, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pkey.c", 86);
      i2t_ASN1_OBJECT(buf, 80, o);
      ERR_asprintf_error_data("TYPE=%s", buf);
LABEL_11:
      EVP_PKEY_free(v2);
      return 0;
    }

    v4 = *(v2->pkey.ptr + 8);
    if (!v4)
    {
      v5 = 144;
      v6 = 98;
      goto LABEL_10;
    }

    if (!v4(v2, p8))
    {
      v5 = 145;
      v6 = 94;
LABEL_10:
      ERR_put_error(6, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pkey.c", v6);
      goto LABEL_11;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pkey.c", 81);
  }

  return v2;
}

PKCS8_PRIV_KEY_INFO *__cdecl EVP_PKEY2PKCS8(EVP_PKEY *pkey)
{
  v2 = PKCS8_PRIV_KEY_INFO_new();
  v3 = v2;
  if (v2)
  {
    ptr = pkey->pkey.ptr;
    if (!ptr)
    {
      v6 = 118;
      v7 = 132;
      goto LABEL_9;
    }

    v5 = *(ptr + 9);
    if (!v5)
    {
      v6 = 144;
      v7 = 128;
      goto LABEL_9;
    }

    if (!v5(v2, pkey))
    {
      v6 = 146;
      v7 = 124;
LABEL_9:
      ERR_put_error(6, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pkey.c", v7);
      PKCS8_PRIV_KEY_INFO_free(v3);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_pkey.c", 117);
  }

  return v3;
}

void CONF_set_nconf(CONF *conf, LHASH *hash)
{
  v4 = default_CONF_method;
  if (!default_CONF_method)
  {
    v4 = NCONF_default();
    default_CONF_method = v4;
  }

  (v4->init)(conf);
  conf->data = hash;
}

LHASH *__cdecl CONF_load(LHASH *conf, const char *file, uint64_t *eline)
{
  v5 = BIO_new_file(file, "rb");
  if (v5)
  {
    v6 = v5;
    bio = CONF_load_bio(conf, v5, eline);
    BIO_free(v6);
    return bio;
  }

  else
  {
    ERR_put_error(14, 4095, 2, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 97);
    return 0;
  }
}

LHASH *__cdecl CONF_load_bio(LHASH *conf, BIO *bp, uint64_t *eline)
{
  v6 = default_CONF_method;
  if (!default_CONF_method)
  {
    v6 = NCONF_default();
    default_CONF_method = v6;
  }

  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  (v6->init)(v8);
  v9 = conf;
  if ((*(v8[0] + 40))(v8, bp, eline))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

LHASH *__cdecl CONF_load_fp(LHASH *conf, FILE *fp, uint64_t *eline)
{
  v5 = BIO_new_fp(fp, 0);
  if (v5)
  {
    v6 = v5;
    bio = CONF_load_bio(conf, v5, eline);
    BIO_free(v6);
    return bio;
  }

  else
  {
    ERR_put_error(14, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 114);
    return 0;
  }
}

int NCONF_load_bio(CONF *conf, BIO *bp, uint64_t *eline)
{
  if (conf)
  {
    load_bio = conf->meth->load_bio;

    return load_bio();
  }

  else
  {
    ERR_put_error(14, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 285);
    return 0;
  }
}

STACK *__cdecl CONF_get_section(STACK *conf, const char *section)
{
  if (conf)
  {
    v3 = conf;
    memset(&confa, 0, sizeof(confa));
    v4 = default_CONF_method;
    if (!default_CONF_method)
    {
      v4 = NCONF_default();
      default_CONF_method = v4;
    }

    (v4->init)(&confa);
    confa.data = v3;
    return NCONF_get_section(&confa, section);
  }

  return conf;
}

STACK *__cdecl NCONF_get_section(const CONF *conf, const char *section)
{
  if (!conf)
  {
    v3 = 105;
    v4 = 296;
LABEL_8:
    ERR_put_error(14, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", v4);
    return 0;
  }

  if (!section)
  {
    v3 = 107;
    v4 = 301;
    goto LABEL_8;
  }

  return _CONF_get_section_values(conf, section);
}

char *__cdecl CONF_get_string(LHASH *conf, const char *group, const char *name)
{
  if (conf)
  {
    memset(&confa, 0, sizeof(confa));
    v6 = default_CONF_method;
    if (!default_CONF_method)
    {
      v6 = NCONF_default();
      default_CONF_method = v6;
    }

    (v6->init)(&confa);
    confa.data = conf;
    return NCONF_get_string(&confa, group, name);
  }

  else
  {

    return NCONF_get_string(0, group, name);
  }
}

char *__cdecl NCONF_get_string(const CONF *conf, const char *group, const char *name)
{
  string = _CONF_get_string(conf, group, name);
  if (!string)
  {
    if (conf)
    {
      ERR_put_error(14, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 322);
      v7 = "";
      if (group)
      {
        v7 = group;
      }

      ERR_asprintf_error_data("group=%s name=%s", v7, name);
    }

    else
    {
      ERR_put_error(14, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 319);
    }
  }

  return string;
}

uint64_t CONF_get_number(LHASH *conf, const char *group, const char *name)
{
  result = 0;
  if (conf)
  {
    v5 = conf;
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    v6 = default_CONF_method;
    if (!default_CONF_method)
    {
      v6 = NCONF_default();
      default_CONF_method = v6;
    }

    (v6->init)(v8);
    v9 = v5;
    conf = v8;
  }

  if (!NCONF_get_number_e(conf, group, name, &result))
  {
    ERR_clear_error();
  }

  return result;
}

int NCONF_get_number_e(const CONF *conf, const char *group, const char *name, uint64_t *result)
{
  if (result)
  {
    string = NCONF_get_string(conf, group, name);
    if (string)
    {
      v7 = string;
      *result = 0;
      if ((conf->meth->is_number)(conf, *string))
      {
        v8 = v7 + 1;
        do
        {
          v9 = 10 * *result;
          *result = v9 + (conf->meth->to_int)(conf, *(v8 - 1));
        }

        while ((conf->meth->is_number)(conf, *v8++));
      }

      LODWORD(string) = 1;
    }
  }

  else
  {
    ERR_put_error(14, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 335);
    LODWORD(string) = 0;
  }

  return string;
}

void CONF_free(LHASH *conf)
{
  v2 = default_CONF_method;
  if (!default_CONF_method)
  {
    v2 = NCONF_default();
    default_CONF_method = v2;
  }

  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  (v2->init)(v3);
  v4 = conf;
  (*(v3[0] + 32))(v3);
}

void NCONF_free_data(CONF *conf)
{
  if (conf)
  {
    (conf->meth->destroy_data)(conf);
  }
}

int CONF_dump_fp(LHASH *conf, FILE *out)
{
  v3 = BIO_new_fp(out, 0);
  if (v3)
  {
    v4 = v3;
    v5 = CONF_dump_bio(conf, v3);
    BIO_free(v4);
    return v5;
  }

  else
  {
    ERR_put_error(14, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 199);
    return 0;
  }
}

int CONF_dump_bio(LHASH *conf, BIO *out)
{
  v4 = default_CONF_method;
  if (!default_CONF_method)
  {
    v4 = NCONF_default();
    default_CONF_method = v4;
  }

  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  (v4->init)(v6);
  v7 = conf;
  return (*(v6[0] + 48))(v6, out);
}

int NCONF_dump_bio(const CONF *conf, BIO *out)
{
  if (conf)
  {
    dump = conf->meth->dump;

    return dump();
  }

  else
  {
    ERR_put_error(14, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 370);
    return 0;
  }
}

CONF *__cdecl NCONF_new(CONF_METHOD *meth)
{
  if (!meth)
  {
    meth = NCONF_default();
  }

  v1 = (meth->create)();
  if (!v1)
  {
    ERR_put_error(14, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 232);
  }

  return v1;
}

void NCONF_free(CONF *conf)
{
  if (conf)
  {
    (conf->meth->destroy)(conf);
  }
}

int NCONF_load(CONF *conf, const char *file, uint64_t *eline)
{
  if (conf)
  {
    load = conf->meth->load;

    return load();
  }

  else
  {
    ERR_put_error(14, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 259);
    return 0;
  }
}

int NCONF_load_fp(CONF *conf, FILE *fp, uint64_t *eline)
{
  v5 = BIO_new_fp(fp, 0);
  if (v5)
  {
    v6 = v5;
    bio = NCONF_load_bio(conf, v5, eline);
    BIO_free(v6);
    return bio;
  }

  else
  {
    ERR_put_error(14, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 273);
    return 0;
  }
}

int NCONF_dump_fp(const CONF *conf, FILE *out)
{
  v3 = BIO_new_fp(out, 0);
  if (v3)
  {
    v4 = v3;
    v5 = NCONF_dump_bio(conf, v3);
    BIO_free(v4);
    return v5;
  }

  else
  {
    ERR_put_error(14, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/conf/conf_lib.c", 358);
    return 0;
  }
}

int (__cdecl *__cdecl sk_set_cmp_func(STACK *sk, int (__cdecl *c)(const char *const *, const char *const *)))(const char *const *, const char *const *)
{
  result = sk->comp;
  if (result != c)
  {
    sk->sorted = 0;
  }

  sk->comp = c;
  return result;
}

STACK *__cdecl sk_dup(STACK *st)
{
  v2 = sk_new(st->comp);
  v3 = v2;
  if (v2)
  {
    v4 = reallocarray(v2->data, st->num_alloc, 8uLL);
    if (v4)
    {
      v3->data = v4;
      num = st->num;
      v3->num = num;
      memcpy(v4, st->data, 8 * num);
      *&v3->sorted = *&st->sorted;
      v3->comp = st->comp;
    }

    else
    {
      free(v3->data);
      free(v3);
      return 0;
    }
  }

  return v3;
}

STACK *__cdecl sk_new(int (__cdecl *cmp)(const char *const *, const char *const *))
{
  v2 = malloc_type_malloc(0x20uLL, 0x1080040FC7F6965uLL);
  if (v2 && (v3 = reallocarray(0, 4uLL, 8uLL), (v2->data = v3) != 0))
  {
    for (i = 0; i != 4; ++i)
    {
      v2->data[i] = 0;
    }

    v2->comp = cmp;
    v2->num = 0;
    *&v2->sorted = 0x400000000;
  }

  else
  {
    free(v2);
    return 0;
  }

  return v2;
}

void sk_free(STACK *a1)
{
  if (a1)
  {
    free(a1->data);

    free(a1);
  }
}

int sk_insert(STACK *sk, char *data, int where)
{
  if (sk)
  {
    v5 = sk;
    num_alloc = sk->num_alloc;
    num = sk->num;
    if (num_alloc <= sk->num + 1)
    {
      sk = reallocarray(sk->data, num_alloc, 0x10uLL);
      if (!sk)
      {
        return sk;
      }

      v5->data = sk;
      v5->num_alloc *= 2;
      num = v5->num;
    }

    v8 = v5->data;
    if (where < 0 || num <= where)
    {
      v8[num] = data;
    }

    else
    {
      memmove(&v8[where + 1], &v8[where], 8 * (num - where));
      v5->data[where] = data;
      num = v5->num;
    }

    LODWORD(sk) = num + 1;
    v5->num = num + 1;
    v5->sorted = 0;
  }

  return sk;
}

char *__cdecl sk_delete_ptr(STACK *st, char *p)
{
  num = st->num;
  if (num < 1)
  {
    return 0;
  }

  v3 = 0;
  while (st->data[v3] != p)
  {
    if (num == ++v3)
    {
      return 0;
    }
  }

  return sk_delete(st, v3);
}

char *__cdecl sk_delete(STACK *st, int loc)
{
  v2 = 0;
  if (st && (loc & 0x80000000) == 0)
  {
    num = st->num;
    if (st->num <= loc)
    {
      return 0;
    }

    else
    {
      v5 = &st->data[loc];
      v2 = *v5;
      v6 = num - 1;
      if (v6 != loc)
      {
        memmove(v5, v5 + 1, 8 * (v6 - loc));
        v6 = st->num - 1;
      }

      st->num = v6;
    }
  }

  return v2;
}

unint64_t internal_find(STACK *st, char *a2, int a3)
{
  *key = a2;
  if (!st)
  {
    return 0xFFFFFFFFLL;
  }

  if (st->comp)
  {
    sk_sort(st);
    if (a2)
    {
      v6 = OBJ_bsearch_ex_(key, st->data, st->num, 8, st->comp, a3);
      if (v6)
      {
        return (v6 - st->data) >> 3;
      }
    }

    return 0xFFFFFFFFLL;
  }

  num = st->num;
  if (num < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (st->data[result] != a2)
  {
    if (num == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *__cdecl sk_shift(STACK *st)
{
  if (st && st->num >= 1)
  {
    return sk_delete(st, 0);
  }

  else
  {
    return 0;
  }
}

char *__cdecl sk_pop(STACK *st)
{
  if (st && st->num >= 1)
  {
    return sk_delete(st, st->num - 1);
  }

  else
  {
    return 0;
  }
}

void sk_zero(STACK *st)
{
  if (st)
  {
    num = st->num;
    if (num >= 1)
    {
      bzero(st->data, 8 * num);
      st->num = 0;
    }
  }
}

void sk_pop_free(STACK *st, void (__cdecl *func)(void *))
{
  if (st)
  {
    num = st->num;
    if (st->num >= 1)
    {
      v5 = 0;
      do
      {
        if (st->data[v5])
        {
          (func)();
          num = st->num;
        }

        ++v5;
      }

      while (v5 < num);
    }

    free(st->data);

    free(st);
  }
}

int sk_num(const STACK *a1)
{
  if (a1)
  {
    return a1->num;
  }

  else
  {
    return -1;
  }
}

char *__cdecl sk_value(const STACK *a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a1->num <= a2)
    {
      return 0;
    }

    else
    {
      return a1->data[a2];
    }
  }

  return result;
}

char *__cdecl sk_set(STACK *a1, int a2, char *a3)
{
  v3 = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a1->num <= a2)
    {
      return 0;
    }

    else
    {
      a1->sorted = 0;
      a1->data[a2] = a3;
      return a3;
    }
  }

  return v3;
}

void sk_sort(STACK *st)
{
  if (st)
  {
    if (!st->sorted)
    {
      qsort(st->data, st->num, 8uLL, st->comp);
      st->sorted = 1;
    }
  }
}

int sk_is_sorted(const STACK *st)
{
  if (!st || st->sorted)
  {
    return 1;
  }

  if (st->comp)
  {
    return st->num < 2;
  }

  return 0;
}

uint64_t idea_init_key(EVP_CIPHER_CTX *ctx, unint64_t a2, uint64_t a3, int a4)
{
  if (!a4 && (EVP_CIPHER_CTX_flags(ctx) & 0xF0007) != 4 && (EVP_CIPHER_CTX_flags(ctx) & 0xF0007) != 3)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    idea_set_encrypt_key(a2, v7);
    idea_set_decrypt_key(v7, ctx->cipher_data);
    explicit_bzero(v7, 0xD8uLL);
  }

  idea_set_encrypt_key(a2, ctx->cipher_data);
  return 1;
}

uint64_t idea_cbc_cipher(uint64_t a1, _DWORD *a2, unsigned int *a3, unint64_t a4)
{
  for (i = a4; i > 0x7FFFFFFFFFFFFEFFLL; a2 += 0x1FFFFFFFFFFFFFC0)
  {
    idea_cbc_encrypt(a3, a2, 0x7FFFFFFFFFFFFF00, *(a1 + 120), a1 + 40, *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    a3 += 0x1FFFFFFFFFFFFFC0;
  }

  if (i)
  {
    idea_cbc_encrypt(a3, a2, i, *(a1 + 120), a1 + 40, *(a1 + 16));
  }

  return 1;
}

uint64_t idea_cfb64_cipher(uint64_t a1, _BYTE *a2, unint64_t *a3, unint64_t a4)
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
      idea_cfb64_encrypt(a3, a2, v8, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
      a3 = (a3 + v8);
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

uint64_t idea_ofb_cipher(uint64_t a1, _BYTE *a2, unint64_t *a3, unint64_t a4)
{
  for (i = a4; i > 0x7FFFFFFFFFFFFEFFLL; a2 += 0x7FFFFFFFFFFFFF00)
  {
    idea_ofb64_encrypt(a3, a2, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    a3 += 0xFFFFFFFFFFFFFE0;
  }

  if (i)
  {
    idea_ofb64_encrypt(a3, a2, i, *(a1 + 120), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t idea_ecb_cipher(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      idea_ecb_encrypt((a3 + v9), (a2 + v9), a1[15]);
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

int BN_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
  if (!BN_get_flags(p, 4u))
  {
    BN_CTX_start(ctx);
    v9 = BN_CTX_get(ctx);
    if (v9)
    {
      v10 = v9;
      if (r == a || (v11 = r, r == p))
      {
        v11 = BN_CTX_get(ctx);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else if (!r)
      {
        goto LABEL_20;
      }

      if (BN_one(v11) && (!BN_is_odd(p) || bn_copy(v11, a)) && bn_copy(v10, a))
      {
        if (BN_num_bits(p) < 2)
        {
LABEL_19:
          v8 = bn_copy(r, v11);
LABEL_21:
          BN_CTX_end(ctx);
          return v8;
        }

        v12 = 1;
        while (BN_sqr(v10, v10, ctx) && (!BN_is_bit_set(p, v12) || BN_mul(v11, v11, v10, ctx)))
        {
          if (++v12 >= BN_num_bits(p))
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  ERR_put_error(3, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_exp.c", 132);
  return -1;
}

int BN_mod_exp_simple(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx)
{
  v35 = *MEMORY[0x277D85DE8];
  if (BN_get_flags(p, 4u))
  {
    ERR_put_error(3, 4095, 66, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_exp.c", 190);
    LODWORD(v10) = -1;
    return v10;
  }

  v11 = BN_num_bits(p);
  if (v11)
  {
    v12 = v11;
    BN_CTX_start(ctx);
    v10 = BN_CTX_get(ctx);
    if (!v10)
    {
LABEL_53:
      BN_CTX_end(ctx);
      return v10;
    }

    v13 = BN_CTX_get(ctx);
    v32 = v13;
    if (v13)
    {
      v14 = v13;
      if (BN_nnmod(v13, a, m, ctx))
      {
        if (BN_is_zero(v14))
        {
          BN_zero(r);
LABEL_9:
          LODWORD(v10) = 1;
          goto LABEL_53;
        }

        v34 = 0;
        memset(v33, 0, sizeof(v33));
        if (v12 > 671)
        {
          v16 = 6;
          goto LABEL_23;
        }

        if (v12 > 239)
        {
          v16 = 5;
          goto LABEL_23;
        }

        if (v12 > 79)
        {
          v16 = 4;
          goto LABEL_23;
        }

        if (v12 >= 24)
        {
          v16 = 3;
LABEL_23:
          if (BN_mod_mul(v10, v14, v14, m, ctx))
          {
            v17 = v33;
            v18 = 2;
            while (1)
            {
              v19 = BN_CTX_get(ctx);
              *v17 = v19;
              if (!v19 || !BN_mod_mul(v19, *(v17 - 1), v10, m, ctx))
              {
                break;
              }

              v20 = v18 >> (v16 - 1);
              ++v17;
              ++v18;
              if (v20)
              {
                goto LABEL_30;
              }
            }
          }

          goto LABEL_52;
        }

        v16 = 1;
LABEL_30:
        if (BN_one(r))
        {
          LOBYTE(v10) = 0;
          v21 = v12 - 1;
          v22 = 1;
          while (1)
          {
            while (!BN_is_bit_set(p, v21))
            {
              if ((v10 & 1) != 0 && !BN_mod_mul(r, r, r, m, ctx))
              {
                goto LABEL_52;
              }

              if (!v21)
              {
                goto LABEL_9;
              }

              --v21;
            }

            if (v16 < 2)
            {
              v23 = 0;
              v29 = 0;
            }

            else
            {
              v31 = v22;
              v23 = 0;
              v24 = v21 - 1;
              v25 = 1;
              for (i = 1; i != v16; ++i)
              {
                if (v24 < 0)
                {
                  break;
                }

                is_bit_set = BN_is_bit_set(p, v24);
                v28 = (v25 << (i - v23)) | 1;
                if (is_bit_set)
                {
                  v23 = i;
                  v25 = v28;
                }

                --v24;
              }

              v29 = v25 >> 1;
              v22 = v31;
            }

            if (!(v22 & 1 | (v23 < 0)))
            {
              break;
            }

LABEL_49:
            if (!BN_mod_mul(r, r, *&v33[8 * v29 - 8], m, ctx))
            {
              goto LABEL_52;
            }

            v22 = 0;
            LODWORD(v10) = 1;
            v21 += ~v23;
            if (v21 < 0)
            {
              goto LABEL_53;
            }
          }

          v30 = v23 + 1;
          while (BN_mod_mul(r, r, r, m, ctx))
          {
            if (!--v30)
            {
              goto LABEL_49;
            }
          }
        }
      }
    }

LABEL_52:
    LODWORD(v10) = 0;
    goto LABEL_53;
  }

  if (BN_abs_is_word(m, 1))
  {
    BN_zero(r);
    LODWORD(v10) = 1;
    return v10;
  }

  return BN_one(r);
}

int BN_mod_exp_mont_consttime(BIGNUM *rr, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
  if (!BN_is_odd(m))
  {
    ERR_put_error(3, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_exp.c", 396);
    return 0;
  }

  top = m->top;
  v13 = BN_num_bits(p);
  if (v13)
  {
    v14 = v13;
    memset(&b, 0, sizeof(b));
    memset(&r, 0, sizeof(r));
    BN_CTX_start(ctx);
    v15 = in_mont;
    if (!in_mont)
    {
      v51 = BN_MONT_CTX_new();
      if (!v51)
      {
        v49 = 0;
        v23 = 0;
        v50 = 0;
        goto LABEL_84;
      }

      v15 = v51;
      if (!BN_MONT_CTX_set(v51, m, ctx))
      {
        v49 = 0;
        v23 = 0;
        v50 = 0;
        goto LABEL_83;
      }
    }

    v60 = rr;
    if (v14 <= 22)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    if (v14 <= 89)
    {
      v17 = v16;
    }

    else
    {
      v17 = 4;
    }

    if (v14 <= 306)
    {
      v18 = v17;
    }

    else
    {
      v18 = 5;
    }

    if (v14 <= 937)
    {
      v19 = v18;
    }

    else
    {
      v19 = 6;
    }

    v20 = 1 << v19;
    v21 = 2 * top;
    if (2 * top <= 1 << v19)
    {
      v21 = 1 << v19;
    }

    v62 = 8 * (v21 + (top << v19));
    v22 = malloc_type_calloc(v62 + 64, 1uLL, 0x31662882uLL);
    v23 = v22;
    if (v22)
    {
      v61 = v22;
      v59 = (v22 & 0xFFFFFFFFFFFFFFC0) + 64;
      b.d = (v59 + ((8 * top) << v19));
      r.d = &b.d[top];
      r.top = 0;
      r.dmax = top;
      b.top = 0;
      b.dmax = top;
      *&r.neg = 0x200000000;
      *&b.neg = 0x200000000;
      v24 = BN_value_one();
      if (BN_to_montgomery(&b, v24, v15, ctx) && BN_nnmod(&r, a, m, ctx) && BN_to_montgomery(&r, &r, v15, ctx))
      {
        if (b.top >= top)
        {
          v25 = top;
        }

        else
        {
          v25 = b.top;
        }

        if (v25 >= 1)
        {
          d = b.d;
          v27 = v59;
          do
          {
            v28 = *d++;
            *v27 = v28;
            v27 += (1 << v19);
            --v25;
          }

          while (v25);
        }

        v29 = v61 & 0x3F;
        if (r.top >= top)
        {
          v30 = top;
        }

        else
        {
          v30 = r.top;
        }

        if (v30 >= 1)
        {
          v31 = r.d;
          v32 = &v61[-v29 + 72];
          do
          {
            v33 = *v31++;
            *v32 = v33;
            v32 += 8 * (1 << v19);
            --v30;
          }

          while (v30);
        }

        if (v19 < 2)
        {
LABEL_54:
          v45 = v14 - 1;
          v46 = 0;
          v47 = (v14 - 1) % v19;
          if (v47 < 0)
          {
            v49 = v62;
          }

          else
          {
            v48 = v47 + 1;
            v49 = v62;
            do
            {
              v46 = BN_is_bit_set(p, v45--) + 2 * v46;
              --v48;
            }

            while (v48);
          }

          if (MOD_EXP_CTIME_COPY_FROM_PREBUF(&b, top, v59, v46, v19))
          {
LABEL_74:
            if (v45 < 0)
            {
              v57 = BN_from_montgomery(v60, &b, v15, ctx);
              v23 = v61;
              v50 = v57 != 0;
              if (in_mont)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            }

            v53 = 0;
            v54 = v19;
            while (BN_mod_mul_montgomery(&b, &b, &b, v15, ctx))
            {
              v53 = BN_is_bit_set(p, v45--) + 2 * v53;
              if (!--v54)
              {
                if (!MOD_EXP_CTIME_COPY_FROM_PREBUF(&r, top, v59, v53, v19))
                {
                  break;
                }

                v55 = BN_mod_mul_montgomery(&b, &b, &r, v15, ctx);
                v50 = 0;
                v23 = v61;
                if (v55)
                {
                  goto LABEL_74;
                }

                goto LABEL_82;
              }
            }
          }

          v50 = 0;
          v23 = v61;
LABEL_82:
          if (in_mont)
          {
            goto LABEL_84;
          }

LABEL_83:
          v56 = v23;
          BN_MONT_CTX_free(v15);
          v23 = v56;
          goto LABEL_84;
        }

        if (BN_mod_mul_montgomery(&b, &r, &r, v15, ctx))
        {
          if (b.top >= top)
          {
            v34 = top;
          }

          else
          {
            v34 = b.top;
          }

          if (v34 >= 1)
          {
            v35 = b.d;
            v36 = &v61[-v29 + 80];
            do
            {
              v37 = *v35++;
              *v36 = v37;
              v36 += 8 * (1 << v19);
              --v34;
            }

            while (v34);
          }

          if (v20 <= 4)
          {
            v38 = 4;
          }

          else
          {
            v38 = v20;
          }

          v58 = v38;
          v39 = &v61[-v29 + 88];
          v40 = 3;
          while (BN_mod_mul_montgomery(&b, &r, &b, v15, ctx))
          {
            if (b.top >= top)
            {
              v41 = top;
            }

            else
            {
              v41 = b.top;
            }

            if (v41 >= 1)
            {
              v42 = b.d;
              v43 = v39;
              do
              {
                v44 = *v42++;
                *v43 = v44;
                v43 += (1 << v19);
                --v41;
              }

              while (v41);
            }

            ++v40;
            v39 += 8;
            if (v40 == v58)
            {
              goto LABEL_54;
            }
          }
        }
      }

      v50 = 0;
      v49 = v62;
      v23 = v61;
      if (!in_mont)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v50 = 0;
      v49 = v62;
      if (!in_mont)
      {
        goto LABEL_83;
      }
    }

LABEL_84:
    freezero(v23, v49 + 64);
    BN_CTX_end(ctx);
    return v50;
  }

  if (BN_abs_is_word(m, 1))
  {
    BN_zero(rr);
    return 1;
  }

  return BN_one(rr);
}