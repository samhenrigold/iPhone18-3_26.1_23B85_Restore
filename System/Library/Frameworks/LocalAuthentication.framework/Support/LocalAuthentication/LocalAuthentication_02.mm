uint64_t sub_100038AB0(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_100038B44(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_100038AB0(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_100038C54(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  HIDWORD(v52) = 0;
  v57 = 0u;
  v58 = 0u;
  __s = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v52) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_10001FF10((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v56 = v30;
          v31 = *(a1 + 14);
          v57 = *(a1 + 10);
          v58 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v56;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_1000201EC(v33, 32, &v57, &unk_100063188, 0x20uLL);
            v35 = sub_10002011C(v34);
            LODWORD(a1) = sub_10001FE98(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v52) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v51 = v53;
            sub_1000200D4(v39, v40, &v57);
          }

          sub_10002010C();
          LODWORD(a1) = sub_10001B398(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_100020128();
      LODWORD(a1) = sub_10002D36C(v21, v22);
      if (a1)
      {
        sub_1000200FC();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_10001B398(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v52 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v52) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_1000201EC(v36, 32, v14 + 12, &unk_100063188, a5);
        v38 = sub_10002011C(v37);
        LODWORD(a1) = sub_10001FE98(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v52);
        goto LABEL_44;
      }

      v28 = sub_100020128();
      LODWORD(a1) = sub_10002D36C(v28, v29);
      if (a1)
      {
        sub_1000200FC();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v51 = v53;
          sub_1000200D4(v48, v49, v14 + 12);
          v23 = v53;
        }

        else
        {
          v23 = (v14 + 12);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_10001C840(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t sub_100038F88(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), uint64_t a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v7 = a3;
  HIDWORD(v51) = 0;
  __s = 0u;
  v55 = 0u;
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_100020128();
            if (!sub_10001B7B8(v15, v16))
            {
              goto LABEL_40;
            }

            sub_1000200FC();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v51 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v51) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_1000201EC(v25, 32, (a1 + 3), &unk_100063188, a5);
              v27 = sub_10002011C(v26);
              sub_10001FE98(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v51);
              goto LABEL_37;
            }

            v23 = sub_100020128();
            if (!sub_10001B7B8(v23, v24))
            {
              goto LABEL_40;
            }

            sub_1000200FC();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((v7 & 8) != 0)
            {
              v39 = ccsha256_di();
              sub_1000200D4(v39, v40, (a1 + 3));
            }

            sub_10002010C();
          }

          if (!sub_10001B74C(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v51) = 32;
    if (*a7 >= 0x20)
    {
      *v52 = 0uLL;
      v53 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          sub_100020134(a1, a2, a3, a4);
          v28 = ccaes_cbc_decrypt_mode();
          v29 = sub_1000201EC(v28, 32, v52, &unk_100063188, 0x20uLL);
          v30 = sub_10002011C(v29);
          v31 = sub_10001FE98(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        sub_100020134(a1, a2, a3, a4);
        if (v7 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v51) = 32;
        if ((v7 & 8) != 0)
        {
          v41 = ccsha256_di();
          p_s = &__s;
          sub_1000200D4(v41, v42, v52);
        }

        sub_10002010C();
        v31 = sub_10001B74C(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          sub_10001C840(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        sub_10001C840(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51, *v52, *&v52[8], v53, __s, v55);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((v7 & 8) != 0)
  {
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t sub_100039268(void *a1, void *a2, unint64_t *a3)
{
  v5 = cczp_bitlen();
  v6 = calloc(((v5 + 7) >> 2) | 1, 1uLL);
  if (!v6)
  {
    return 4294967279;
  }

  v7 = v6;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_100039374(uint64_t a1, uint64_t a2)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000393DC()
{
  sub_100020C68();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100020CE0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000394AC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_100020B5C();
    sub_1000393DC();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100039518(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_100020B70();
    sub_1000393DC();
    return 0;
  }

  return result;
}

uint64_t sub_100039590()
{
  sub_100020CC0();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1000395F0(uint64_t result)
{
  if (result)
  {
    sub_100020B70();
    sub_1000393DC();
    return 0;
  }

  return result;
}

__n128 sub_100039688(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = sub_100020BF8(a1);
  if (sub_100020CF8(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v20))
  {
    *a4 = v19;
    *a3 = v21 - v19;
    result = v22;
    *v4 = v22;
  }

  return result;
}

uint64_t sub_1000396E4()
{
  sub_100020C68();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_10001C6B4();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_100039790(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_100039790(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_100039790(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_10003980C()
{
  sub_100020CC0();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_10003985C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100020C40(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_1000398D0()
{
  sub_100020C68();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_1000205BC(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_1000399C4(uint64_t a1)
{
  if (a1)
  {
    return sub_1000393DC() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_100039A0C(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10003BFBC);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_100039BDC()
{
  result = sub_100020CEC();
  if (v0 && v3 && v4 && v5)
  {
    if (sub_100039374(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!sub_100020CA8(v6))
      {
        return 4294967279;
      }

      sub_100020BC8();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        sub_100020B10(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        sub_100020AF0();
        sub_100020BA4(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        sub_100020AF0();
        if (v23 == v1)
        {
          v24 = sub_100020C90();
          if (v24)
          {
            return sub_100020AC0(v24);
          }
        }
      }

      sub_100020B84();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100039CE0()
{
  result = sub_100020CEC();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = sub_100020C74();
    if (sub_100020CA8(v5))
    {
      sub_100020BC8();
      v6 = ccder_blob_encode_body();
      if (v6 && (sub_100020C5C(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (sub_100020B10(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), sub_100020AF0(), sub_100020BA4(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), sub_100020AF0(), v30 == v1) && (v31 = sub_100020C90()) != 0)
      {
        return sub_100020AC0(v31);
      }

      else
      {
        sub_100020B84();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_100039DC4()
{
  sub_100020C68();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_100039CE0();
    }
  }

  return result;
}

uint64_t sub_100039E7C()
{
  result = sub_100020CEC();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = sub_100020C74();
    v4 = sub_100020CA8(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_100020B3C(), sub_10001C6B4(), ccder_blob_encode_tl(), sub_100020B3C(), v6 == v5) && (v7 = sub_100020C90()) != 0)
      {
        return sub_100020AC0(v7);
      }

      else
      {
        sub_100020B84();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_100039FA4(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(&v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), sub_100020AF0(), sub_10001C6B4(), ccder_blob_encode_tl(), sub_100020AF0(), v16 == v14) && sub_100020C90())
      {
        result = sub_100020BEC();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10003A1A8()
{
  result = sub_100020CEC();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = sub_100020C74();
    if (sub_100020CA8(v5))
    {
      sub_100020BC8();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (sub_100020B10(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), sub_100020AF0(), sub_100020BA4(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), sub_100020AF0(), v22 == v1) && (v23 = sub_100020C90()) != 0)
      {
        return sub_100020AC0(v23);
      }

      else
      {
        sub_100020B84();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10003A298(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_100039A0C(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v6 = ccder_sizeof();
      v7 = sub_100020CA8(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), sub_100020B3C(), v15 = v3, v16 = v8, sub_10001C6B4(), ccder_blob_encode_tl(), sub_100020B3C(), v9 == v3) && (v10 = sub_100020C90()) != 0)
        {
          v4 = 0;
          v10[1] = v3;
          v10[2] = 0;
          *v10 = *a1;
          *a1 = v10;
          v3 = 0;
        }

        else
        {
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_10003A424(uint64_t a1)
{
  v4 = sub_100020BF8(a1);
  if (v2)
  {
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v4;
  return 1;
}

uint64_t sub_10003A4CC(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    sub_100020ADC();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    sub_100020C40(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    sub_100020ADC();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      sub_100020C40(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return sub_100020B00(v24, v25, v26, v27, v28, v29, v30, v31, v36);
      }
    }

    return 0;
  }

  LODWORD(v39) = v4;
  result = sub_10003A5A8(&v36, 4, v5, &v39);
  if (result)
  {
    v15 = v39;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10003A5A8(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100020C40(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_100020B00(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10003A628(uint64_t a1)
{
  v17 = sub_100020BF8(a1);
  if (v2)
  {
    sub_100020C5C(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100020C5C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100020B00(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10003A684(uint64_t a1)
{
  v17 = sub_100020BF8(a1);
  if (v2)
  {
    sub_100020C5C(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_100020C5C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100020B00(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10003A6E4(uint64_t a1, void *a2)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100020C40(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_100020B00(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_10003A74C()
{
  sub_100020C68();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (sub_100039FA4(&v19, off_1000629E0, *v2) || sub_100039FA4(&v19, off_1000629E8, v3[1]) || sub_100039FA4(&v19, off_1000629F0, *(v3 + 1)) || sub_100039FA4(&v19, off_100062A00, v3[4]) || sub_100039FA4(&v19, off_100062A10, v3[5]) || sub_100039FA4(&v19, off_100062A28, *(v3 + 26)) || sub_100039FA4(&v19, off_100062A30, *(v3 + 34)) || sub_100039FA4(&v19, off_100062738, *(v3 + 42)) || sub_100039FA4(&v19, off_100062900, *(v3 + 46)) || (v4 = sub_100039CE0(), v4) || v1 && (sub_100039FA4(&v19, off_100062A18, *(v3 + 66)) || sub_100039FA4(&v19, off_100062A20, *(v3 + 67)) || sub_100039FA4(&v19, off_100062D08, *(v3 + 17)) || (v4 = sub_100039FA4(&v19, off_100062D58, *(v3 + 19)), v4)) || (v6 = sub_100020C04(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    sub_100020BDC(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  sub_100020414(&v19);
  return v14;
}

uint64_t sub_10003A93C(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v15, 0x228uLL);
      v15[4] = off_1000629E8;
      v15[9] = off_1000629F0;
      v15[14] = off_100062A00;
      v15[19] = off_100062A10;
      v15[24] = off_100062A18;
      v15[29] = off_100062A20;
      v15[34] = off_100062A28;
      v15[39] = off_100062A30;
      v15[44] = off_100062738;
      v15[49] = off_100062900;
      v15[54] = off_100062AF8;
      v16[2] = off_100062D08;
      v16[7] = off_100062D58;
      sub_100020A80();
      sub_100020D18(v6, v7, v8, v9, v10, v11, v12, v13, 14);
      *v5 = sub_100039590();
      *(v5 + 1) = sub_100039590();
      *(v5 + 1) = sub_100039590();
      *(v5 + 4) = sub_100039590();
      *(v5 + 5) = sub_100039590();
      *(v5 + 26) = sub_100039590();
      *(v5 + 34) = sub_100039590();
      *(v5 + 42) = sub_100039590();
      *(v5 + 46) = sub_100039590();
      sub_10003985C(v16, 4, v5 + 50, 16);
      v5[66] = sub_100039590();
      v5[67] = sub_100039590();
      *(v5 + 68) = sub_100039590();
      sub_100039590();
      result = sub_100020BEC();
      *(v5 + 76) = v14;
    }
  }

  return result;
}

uint64_t sub_10003AB90(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_100020C24(v3);
        bzero(v15, 0x98uLL);
        v15[4] = off_100062A00;
        v15[9] = off_100062900;
        v15[14] = off_1000629E0;
        sub_100020A80();
        if (sub_100020D18(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = sub_100039590();
          v5[1] = sub_100039590();
          v5[2] = sub_100039590();
          sub_100039590();
          result = sub_100020BEC();
          v5[3] = v14;
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

uint64_t sub_10003ACBC(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_100020C24(v3);
          sub_100020C24(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_100062CB0;
          v13 = off_1000627D8;
          sub_100020A80();
          sub_1000393DC();
          if (sub_10003985C(v10, 4, v7, 16) && sub_10003985C(&v11 + 8, 4, v8, 16))
          {
            return sub_10003985C(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003AE1C(uint64_t a1)
{
  result = sub_100020CD4(__stack_chk_guard);
  if (v3)
  {
    if (a1)
    {
      v5 = v4;
      if (v4)
      {
        v6 = v3;
        memset_s(v4, 0x58uLL, 0, 0x58uLL);
        bzero(v16, 0x200uLL);
        v16[4] = off_1000627D8;
        v17[2] = off_1000627B8;
        v18[2] = off_1000627B0;
        v18[7] = off_1000627D0;
        v18[12] = off_100062A58;
        v20 = off_100062A00;
        v21 = off_100062A08;
        v22 = off_100062900;
        v23 = off_1000629F0;
        v24 = off_1000629F8;
        v25 = off_100062BB8;
        v26 = off_100062C28;
        sub_100020A80();
        sub_100020D18(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
        *v5 = sub_100039590();
        if (!sub_10003985C(v17, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_10003985C(v18, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_100039590();
        v5[10] = sub_100039590();
        v5[11] = sub_100039590();
        v5[12] = sub_100039590();
        v5[15] = sub_100039590();
        v5[13] = sub_100039590();
        v5[14] = sub_100039590();
        if (!sub_100020968(&v19, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v5[9];
        if ((v14 & 0x400) != 0)
        {
          *(v5 + 9) = sub_100039590();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 0x800) == 0)
        {
          return 0;
        }

        sub_100039590();
        result = sub_100020BEC();
        v5[20] = v15;
      }
    }
  }

  return result;
}

uint64_t sub_10003B094(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_100039DC4();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_100039DC4();
      }

      v7 = sub_100020C04(a1, a2);
      if (!v7)
      {
        v3 = 0;
        sub_100020BDC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100020414(&v18);
  return v3;
}

uint64_t sub_10003B150(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_100020B48();
        if (sub_1000393DC())
        {
          if (!sub_1000398D0())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_1000398D0())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100020414(&v6);
  return v3;
}

uint64_t sub_10003B228(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && sub_100039CE0() || a1[2] && sub_100039CE0() || a1[4] && sub_100039CE0() || a1[6] && sub_100039CE0() || a1[8] && sub_100039CE0() || a1[10] && sub_100039CE0())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = sub_100039A0C(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_100020BDC(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  sub_100020414(&v17);
  return v3;
}

uint64_t sub_10003B388(uint64_t a1, uint64_t a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v82, 0xE8uLL);
  v81 = off_100062788;
  v82[4] = off_100062D78;
  v82[9] = off_100062D70;
  v82[14] = off_100062748;
  v82[19] = off_100062D68;
  v82[24] = off_1000627C0;
  v75 = 0;
  v76 = 0;
  v77 = &v81;
  sub_100020A80();
  sub_100020D18(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  sub_100020A94();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = sub_100020AA8(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  sub_100020A94();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = sub_100020AA8(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  sub_100020A94();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = sub_100020AA8(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  sub_100020A94();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = sub_100020AA8(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  sub_100020A94();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = sub_100020AA8(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  sub_100020A94();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v78;
  __s[11] = (v79 - v78);
  return result;
}

uint64_t sub_10003B580(uint64_t a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_100039DC4())
      {
        v5 = sub_100039DC4();
        if (!v5)
        {
          v7 = sub_100020C04(v5, v6);
          if (!v7)
          {
            v3 = 0;
            sub_100020BDC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100020414(&v18);
  return v3;
}

uint64_t sub_10003B630(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_100020C24(a3);
        sub_100020B48();
        if (sub_1000393DC())
        {
          sub_1000398D0();
          sub_1000398D0();
          v3 = 0;
        }
      }
    }
  }

  sub_100020414(&v5);
  return v3;
}

uint64_t sub_10003B6DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_100020A80();
    sub_1000393DC();
    return sub_100039590() & 0x1F;
  }

  return v2;
}

uint64_t sub_10003B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_100062A38;
  v10[4] = off_100062A40;
  v10[9] = off_100062A48;
  v10[14] = off_100062A50;
  v10[19] = off_1000627C0;
  v11[2] = off_100062D60;
  v6 = xmmword_100043300;
  v7 = 0;
  v8 = &v9;
  sub_100020A80();
  sub_1000393DC();
  *a3 = sub_100039590();
  *(a3 + 4) = sub_100039590();
  *(a3 + 8) = sub_100039590();
  *(a3 + 12) = sub_100039590();
  v5 = 65;
  if (!sub_10003A5A8(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_10003985C(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_10003B908(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_100062730;
      if (off_100062730)
      {
        sub_100020B5C();
        sub_1000393DC();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_10003BCC8(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_100020BF8(a1);
  sub_100020ADC();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_100020C40(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_100020B00(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_10003BD68(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = sub_100020CF8(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10003BDE4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_10001C6B4();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10003BEB0(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v72) = a6;
  *(&v72 + 1) = a6 + a7;
  sub_10001C6B4();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100020CE0(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = sub_10003BD68(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_100020C4C();
    *a5 = v37;
  }

  v38 = sub_100020CE0(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = sub_10003BD68(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_100020C4C();
    *a4 = v55;
  }

  v56 = sub_100020CE0(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!sub_10003BD68(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_100020C4C();
    *a3 = v65;
  }

  sub_100020A94();
  if (ccder_blob_decode_range())
  {
    v72 = v77;
    if (a1)
    {
      if (a2)
      {
        *a1 = v75;
        *a2 = (v76 - v75);
      }
    }
  }

  if (v72 == *(&v72 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_10003BFBC(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10003C1B8(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = a1 + 1;
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = (v11 + 1);
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003C284(unint64_t a1, uint64_t a2, void *a3)
{
  v48.n128_u64[0] = a1;
  v48.n128_u64[1] = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_10003BD68(&v48, 0x8000000000000005, a3 + 3, v4, v5, v6, v7, v8, v9, v10) || !sub_10003BD68(&v48, 0x8000000000000004, a3 + 5, v11, v12, v13, v14, v15, v16, v17) || !sub_10003BD68(&v48, 0x8000000000000003, a3 + 2, v18, v19, v20, v21, v22, v23, v24) || !sub_10003BD68(&v48, 0x8000000000000002, a3 + 4, v25, v26, v27, v28, v29, v30, v31) || !sub_10003BD68(&v48, 0x8000000000000001, a3 + 1, v32, v33, v34, v35, v36, v37, v38))
  {
    return 4294967277;
  }

  v46 = sub_10003BD68(&v48, 0x8000000000000000, a3, v39, v40, v41, v42, v43, v44, v45);
  result = 4294967277;
  if (v46)
  {
    if (v48.n128_u64[0] == v48.n128_u64[1])
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}