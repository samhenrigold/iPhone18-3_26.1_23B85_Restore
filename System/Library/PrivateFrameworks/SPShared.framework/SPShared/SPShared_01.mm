uint64_t sub_2644C9B58@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = a6;
  v13 = a5;
  v31[2] = *MEMORY[0x277D85DE8];
  v15 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v15)
    {
      v31[0] = a3;
      LOWORD(v31[1]) = a4;
      BYTE2(v31[1]) = BYTE2(a4);
      BYTE3(v31[1]) = BYTE3(a4);
      BYTE4(v31[1]) = BYTE4(a4);
      BYTE5(v31[1]) = BYTE5(a4);
      v16 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v16 != 2)
        {
          result = CCCryptorGCMOneshotEncrypt();
          v22 = result;
          goto LABEL_42;
        }

        v26 = *(a5 + 16);
        v25 = *(a5 + 24);
        sub_2644C206C(a5, a6);
        if (sub_2644EABFC() && __OFSUB__(v26, sub_2644EAC2C()))
        {
          goto LABEL_51;
        }

        if (!__OFSUB__(v25, v26))
        {
LABEL_34:
          sub_2644EAC1C();
LABEL_39:
          v22 = CCCryptorGCMOneshotEncrypt();
          result = sub_2644C20C0(v13, v12);
          goto LABEL_42;
        }

        goto LABEL_49;
      }

      if (!v16)
      {
        goto LABEL_41;
      }

      if (a5 >> 32 >= a5)
      {
        sub_2644C206C(a5, a6);
        if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
        {
          goto LABEL_34;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v30 = a9;
    v23 = a3;
    a9 = ((a3 >> 32) - a3);
    if (a3 >> 32 >= a3)
    {
      v13 = a11;
      v12 = a5;
      sub_2644C206C(a5, a6);
      if (!sub_2644EABFC() || !__OFSUB__(v23, sub_2644EAC2C()))
      {
        sub_2644EAC1C();
        sub_2644CA2B8(v12, a6, v31, a10, a11);
        v18 = v11;
        v19 = v12;
        v20 = a6;
        if (v11)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v15 == 2)
  {
    v30 = a9;
    a9 = *(a3 + 16);
    v17 = *(a3 + 24);
    sub_2644C206C(a5, a6);
    if (sub_2644EABFC() && __OFSUB__(a9, sub_2644EAC2C()))
    {
      goto LABEL_45;
    }

    if (!__OFSUB__(v17, a9))
    {
      sub_2644EAC1C();
      sub_2644CA2B8(v13, v12, v31, a10, a11);
      v18 = v11;
      v19 = v13;
      v20 = v12;
      if (v11)
      {
LABEL_17:
        sub_2644C20C0(v19, v20);

        __break(1u);
        goto LABEL_18;
      }

LABEL_11:
      result = sub_2644C20C0(v19, v20);
      v22 = v31[0];
      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_18:
  v24 = v12 >> 62;
  memset(v31, 0, 14);
  if ((v12 >> 62) <= 1)
  {
    if (!v24)
    {
      goto LABEL_41;
    }

    if (v13 >> 32 >= v13)
    {
      sub_2644C206C(v13, v12);
      if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
      {
        sub_2644EAC1C();
        goto LABEL_39;
      }

LABEL_54:
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v24 != 2)
  {
LABEL_41:
    result = CCCryptorGCMOneshotEncrypt();
    v22 = result;
    goto LABEL_42;
  }

  v30 = a9;
  v27 = *(v13 + 16);
  v28 = *(v13 + 24);
  sub_2644C206C(v13, v12);
  if (sub_2644EABFC() && __OFSUB__(v27, sub_2644EAC2C()))
  {
    goto LABEL_52;
  }

  if (__OFSUB__(v28, v27))
  {
    goto LABEL_50;
  }

  sub_2644EAC1C();
  v22 = CCCryptorGCMOneshotEncrypt();
  result = sub_2644C20C0(v13, v12);
LABEL_12:
  a9 = v30;
LABEL_42:
  *a9 = v22;
  return result;
}

uint64_t sub_2644CA2B8@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, _DWORD *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v11 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v11 != 2)
  {
LABEL_15:
    result = CCCryptorGCMOneshotEncrypt();
    goto LABEL_16;
  }

  v17 = a8;
  v12 = *(a3 + 16);
  v16 = *(a3 + 24);
  a8 = sub_2644EABFC();
  if (a8)
  {
    v13 = sub_2644EAC2C();
    if (__OFSUB__(v12, v13))
    {
      goto LABEL_18;
    }

    a8 = (a8 + v12 - v13);
  }

  if (__OFSUB__(v16, v12))
  {
    __break(1u);
LABEL_11:
    v14 = a3;
    if (a3 >> 32 >= a3)
    {
      v17 = a8;
      if (!sub_2644EABFC() || !__OFSUB__(v14, sub_2644EAC2C()))
      {
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  sub_2644EAC1C();
  result = CCCryptorGCMOneshotEncrypt();
  a8 = v17;
LABEL_16:
  *a8 = result;
  return result;
}

uint64_t EncryptedData.init(initializationVector:tag:cipherText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Data.hmac(key:algorithm:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  v9 = *a3;
  v12[0] = sub_2644CFE44(qword_2644ED8A8[v9]);
  v12[1] = v10;
  sub_2644C206C(a1, a2);
  sub_2644C206C(a4, a5);
  sub_2644CF504(v12, a1, a2, a4, a5, v9);
  return v12[0];
}

void sub_2644CA608(void *key, uint64_t a2, uint64_t a3, unint64_t a4, char a5, void *a6)
{
  data[2] = *MEMORY[0x277D85DE8];
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      data[0] = a3;
      LOWORD(data[1]) = a4;
      BYTE2(data[1]) = BYTE2(a4);
      BYTE3(data[1]) = BYTE3(a4);
      if (key)
      {
        v10 = a2 - key;
      }

      else
      {
        v10 = 0;
      }

      BYTE4(data[1]) = BYTE4(a4);
      v11 = BYTE6(a4);
      BYTE5(data[1]) = BYTE5(a4);
      v12 = dword_2644ED8D8[a5];
      v13 = data;
      v14 = key;
      goto LABEL_39;
    }

    v23 = a3;
    v24 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      macOut = a6;
      v17 = sub_2644EABFC();
      if (!v17)
      {
LABEL_25:
        v26 = sub_2644EAC1C();
        if (v26 >= v24)
        {
          v27 = v24;
        }

        else
        {
          v27 = v26;
        }

        if (key)
        {
          v10 = a2 - key;
        }

        else
        {
          v10 = 0;
        }

        if (v17)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }

LABEL_34:
        v12 = dword_2644ED8D8[a5];
        v14 = key;
        v13 = v17;
        a6 = macOut;
        goto LABEL_39;
      }

      v25 = sub_2644EAC2C();
      if (!__OFSUB__(v23, v25))
      {
        v17 += v23 - v25;
        goto LABEL_25;
      }

LABEL_43:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    macOut = a6;
    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v17 = sub_2644EABFC();
    if (v17)
    {
      v18 = sub_2644EAC2C();
      if (__OFSUB__(v16, v18))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 += v16 - v18;
    }

    v19 = __OFSUB__(v15, v16);
    v20 = v15 - v16;
    if (!v19)
    {
      v21 = sub_2644EAC1C();
      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      if (key)
      {
        v10 = a2 - key;
      }

      else
      {
        v10 = 0;
      }

      if (v17)
      {
        v11 = v22;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (key)
  {
    v10 = a2 - key;
  }

  else
  {
    v10 = 0;
  }

  memset(data, 0, 14);
  v12 = dword_2644ED8D8[a5];
  v13 = data;
  v14 = key;
  v11 = 0;
LABEL_39:
  CCHmac(v12, v14, v10, v13, v11, a6);
}

uint64_t EncryptedData.initializationVector.getter()
{
  v1 = *v0;
  sub_2644C206C(*v0, *(v0 + 8));
  return v1;
}

uint64_t EncryptedData.tag.getter()
{
  v1 = *(v0 + 16);
  sub_2644C206C(v1, *(v0 + 24));
  return v1;
}

uint64_t EncryptedData.cipherText.getter()
{
  v1 = *(v0 + 32);
  sub_2644C206C(v1, *(v0 + 40));
  return v1;
}

uint64_t EncryptedData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644EBACC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  sub_2644D1034();
  sub_2644EB96C();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  sub_2644EB96C();
  v11 = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  sub_2644EB96C();
  __swift_destroy_boxed_opaque_existential_0(v9);
  *a2 = v7;
  a2[1] = v8;
  v5 = v11;
  a2[2] = v7;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  sub_2644C206C(v7, v8);
  sub_2644C206C(v7, v5);
  sub_2644C206C(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2644C20C0(v7, v8);
  sub_2644C20C0(v7, v5);
  return sub_2644C20C0(v7, v8);
}

uint64_t EncryptedData.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644C206C(v3, v4);
  sub_2644EBAFC();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_2644D1088();
  sub_2644EB97C();
  sub_2644C20C0(v3, v4);
  if (!v2)
  {
    v8 = v7;
    v9 = v13;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_2644C206C(v5, v6);
    sub_2644EB97C();
    sub_2644C20C0(v5, v6);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_2644C206C(v9, v8);
    sub_2644EB97C();
    sub_2644C20C0(v9, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t EncryptedData.decrypt(key:)(uint64_t result, unint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 < 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 16)
      {
        goto LABEL_11;
      }

LABEL_15:
      sub_2644D0F90();
      swift_allocError();
      *v17 = 10;
      return swift_willThrow();
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v9)
  {
    goto LABEL_18;
  }

  if (v9 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 257)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v12 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 257)
  {
    goto LABEL_15;
  }

LABEL_18:
  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = result;
      v20 = a2;
      result = BYTE6(v8);
      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v19 = result;
      v20 = a2;
      result = HIDWORD(v7) - v7;
      goto LABEL_27;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  if (v18 == 2)
  {
    v19 = result;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    result = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      v20 = a2;
      goto LABEL_27;
    }

    goto LABEL_37;
  }

  v19 = result;
  v20 = a2;
  result = 0;
LABEL_27:
  v31 = sub_2644CFE44(result);
  v32 = v23;
  sub_2644C206C(v7, v8);
  sub_2644C206C(v4, v3);
  sub_2644C206C(v19, v20);
  sub_2644C206C(v5, v6);
  v24 = sub_2644D11C8(&v31, v7, v8, v4, v3, v19, v20, v5, v6);
  v25 = v5;
  v26 = v3;
  v27 = v24;
  sub_2644C20C0(v25, v6);
  sub_2644C20C0(v19, v20);
  sub_2644C20C0(v4, v26);
  sub_2644C20C0(v7, v8);
  if (!v27)
  {
    return v31;
  }

  CryptoError.init(rawValue:)(v27);
  v28 = v33;
  sub_2644D0F90();
  swift_allocError();
  if (v28 == 13)
  {
    v30 = 8;
  }

  else
  {
    v30 = v28;
  }

  *v29 = v30;
  swift_willThrow();
  return sub_2644C20C0(v31, v32);
}

void sub_2644CAF3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v17 = a10;
  v16 = a11;
  v115[2] = *MEMORY[0x277D85DE8];
  v18 = a4 >> 62;
  v109 = a9;
  if ((a4 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v23 = *(a3 + 16);
      v22 = *(a3 + 24);
      sub_2644C206C(a5, a6);
      sub_2644C206C(v12, v11);
      sub_2644C206C(a10, a11);
      sub_2644C206C(a10, a11);
      if (sub_2644EABFC() && __OFSUB__(v23, sub_2644EAC2C()))
      {
        goto LABEL_196;
      }

      if (!__OFSUB__(v22, v23))
      {
        sub_2644EAC1C();
        v14 = a5;
        v17 = a10;
        v16 = a11;
        sub_2644CD8FC(a5, a6, v12, v11, a10, a11, v115, a1, a2);
        if (v112)
        {
          sub_2644C20C0(a10, a11);
          sub_2644C20C0(a5, a6);
          v81 = v12;
LABEL_254:
          v85 = v11;
LABEL_257:
          sub_2644C20C0(v81, v85);
          v82 = v17;
          v83 = v16;
          goto LABEL_258;
        }

        sub_2644C20C0(a10, a11);
        v24 = v115[0];
        v13 = a6;
        a9 = v109;
LABEL_193:
        sub_2644C20C0(v14, v13);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, v16);
        *a9 = v24;
        return;
      }

LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    memset(v115, 0, 14);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a10, a11);
    sub_2644C206C(v12, v11);
    sub_2644C206C(a10, a11);
    v26 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v32 = v14;
        v33 = *(v14 + 16);
        v34 = *(v14 + 24);
        sub_2644C206C(v32, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(v32, v13);
        if (sub_2644EABFC() && __OFSUB__(v33, sub_2644EAC2C()))
        {
          goto LABEL_203;
        }

        if (__OFSUB__(v34, v33))
        {
          goto LABEL_201;
        }

        sub_2644EAC1C();
        v17 = a10;
        sub_2644CEB14(v12, v11, a10, a11, v114, a1, a2);
        v14 = a5;
        if (!v112)
        {
          sub_2644C20C0(v12, v11);
          v24 = v114[0];
          goto LABEL_192;
        }

LABEL_253:
        sub_2644C20C0(a5, v13);
        sub_2644C20C0(a5, v13);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        v81 = v12;
        goto LABEL_254;
      }

      memset(v114, 0, 14);
      sub_2644C206C(a10, a11);
      v40 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v40)
        {
          v113[0] = v12;
          v28 = v12;
          LOWORD(v113[1]) = v11;
          BYTE2(v113[1]) = BYTE2(v11);
          BYTE3(v113[1]) = BYTE3(v11);
          BYTE4(v113[1]) = BYTE4(v11);
          BYTE5(v113[1]) = BYTE5(v11);
          v41 = a11 >> 62;
          if ((a11 >> 62) <= 1)
          {
            if (!v41)
            {
LABEL_59:
              sub_2644C206C(a5, v13);
              sub_2644C206C(v28, v11);
              sub_2644C206C(a10, a11);
              sub_2644C206C(a5, v13);
              v12 = v28;
              v14 = a5;
LABEL_189:
              v24 = CCCryptorGCMOneshotDecrypt();
              goto LABEL_190;
            }

            v105 = v13;
            v78 = v11;
            if (a10 >> 32 < a10)
            {
LABEL_220:
              __break(1u);
              goto LABEL_221;
            }

            sub_2644C206C(a5, v105);
            sub_2644C206C(v12, v11);
            v98 = a10;
            sub_2644C206C(a10, a11);
            sub_2644C206C(a5, v105);
            if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
            {
              goto LABEL_244;
            }

LABEL_163:
            sub_2644EAC1C();
            v24 = CCCryptorGCMOneshotDecrypt();
            v17 = v98;
            sub_2644C20C0(v98, a11);
            v11 = v78;
            v12 = v28;
LABEL_176:
            v13 = v105;
            v14 = a5;
            goto LABEL_191;
          }

          if (v41 != 2)
          {
            goto LABEL_59;
          }

          v64 = *(a10 + 16);
          v65 = *(a10 + 24);
          sub_2644C206C(a5, v13);
          v90 = v11;
          sub_2644C206C(v12, v11);
          v96 = a10;
          sub_2644C206C(a10, a11);
          v104 = v13;
          sub_2644C206C(a5, v13);
          if (sub_2644EABFC() && __OFSUB__(v64, sub_2644EAC2C()))
          {
            goto LABEL_236;
          }

          if (__OFSUB__(v65, v64))
          {
            goto LABEL_228;
          }

LABEL_124:
          sub_2644EAC1C();
          v24 = CCCryptorGCMOneshotDecrypt();
          v17 = v96;
          sub_2644C20C0(v96, a11);
          v11 = v90;
          v12 = v28;
          v13 = v104;
LABEL_146:
          v14 = a5;
          goto LABEL_147;
        }

        v94 = a10;
        if (v12 >> 32 < v12)
        {
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
          goto LABEL_218;
        }

        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        sub_2644C206C(a10, a11);
        if (sub_2644EABFC() && __OFSUB__(v12, sub_2644EAC2C()))
        {
          goto LABEL_216;
        }

LABEL_90:
        sub_2644EAC1C();
        v87 = a1;
        goto LABEL_91;
      }

      if (v40 == 2)
      {
        v49 = v14;
        v50 = *(v12 + 16);
        v51 = *(v12 + 24);
        sub_2644C206C(v49, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(v49, v13);
        v93 = a10;
        sub_2644C206C(a10, a11);
        if (sub_2644EABFC() && __OFSUB__(v50, sub_2644EAC2C()))
        {
          goto LABEL_213;
        }

        if (__OFSUB__(v51, v50))
        {
          goto LABEL_211;
        }

        goto LABEL_73;
      }

      v56 = a11 >> 62;
      memset(v113, 0, 14);
      if ((a11 >> 62) <= 1)
      {
        if (!v56)
        {
          goto LABEL_188;
        }

        v92 = v11;
        if (a10 >> 32 < a10)
        {
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
          goto LABEL_248;
        }

        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        v100 = a10;
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
        {
LABEL_248:
          __break(1u);
        }

        goto LABEL_180;
      }

      if (v56 != 2)
      {
LABEL_188:
        sub_2644C206C(v14, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(v14, v13);
        goto LABEL_189;
      }

      v75 = v11;
      v76 = *(a10 + 16);
      v77 = *(a10 + 24);
      sub_2644C206C(v14, v13);
      v108 = v12;
      v91 = v75;
      sub_2644C206C(v12, v75);
      v72 = a10;
      sub_2644C206C(a10, a11);
      sub_2644C206C(v14, v13);
      if (sub_2644EABFC() && __OFSUB__(v76, sub_2644EAC2C()))
      {
        goto LABEL_240;
      }

      if (__OFSUB__(v77, v76))
      {
        goto LABEL_232;
      }
    }

    else
    {
      if (v26)
      {
        if (v14 >> 32 >= v14)
        {
          sub_2644C206C(v14, v13);
          sub_2644C206C(v12, v11);
          sub_2644C206C(a10, a11);
          sub_2644C206C(v14, v13);
          if (!sub_2644EABFC() || !__OFSUB__(v14, sub_2644EAC2C()))
          {
            sub_2644EAC1C();
            v86 = a1;
            v88 = a2;
            v35 = v12;
            v36 = v11;
            v37 = a10;
LABEL_48:
            sub_2644CEB14(v35, v36, v37, a11, v114, v86, v88);
            if (!v112)
            {
              sub_2644C20C0(v12, v11);
              v24 = v114[0];
              v14 = a5;
              goto LABEL_192;
            }

            goto LABEL_253;
          }

LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        goto LABEL_199;
      }

      v114[0] = v14;
      LOWORD(v114[1]) = v13;
      BYTE2(v114[1]) = BYTE2(v13);
      BYTE3(v114[1]) = BYTE3(v13);
      BYTE4(v114[1]) = BYTE4(v13);
      BYTE5(v114[1]) = BYTE5(v13);
      sub_2644C206C(a10, a11);
      v27 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v27)
        {
          v113[0] = v12;
          v28 = v12;
          LOWORD(v113[1]) = v11;
          BYTE2(v113[1]) = BYTE2(v11);
          BYTE3(v113[1]) = BYTE3(v11);
          BYTE4(v113[1]) = BYTE4(v11);
          BYTE5(v113[1]) = BYTE5(v11);
          v29 = a11 >> 62;
          if ((a11 >> 62) <= 1)
          {
            if (!v29)
            {
              goto LABEL_59;
            }

            v105 = v13;
            v78 = v11;
            if (a10 >> 32 < a10)
            {
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
              goto LABEL_220;
            }

            sub_2644C206C(a5, v105);
            sub_2644C206C(v12, v11);
            v98 = a10;
            sub_2644C206C(a10, a11);
            sub_2644C206C(a5, v105);
            if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
            {
              goto LABEL_242;
            }

            goto LABEL_163;
          }

          if (v29 != 2)
          {
            goto LABEL_59;
          }

          v59 = *(a10 + 16);
          v60 = *(a10 + 24);
          sub_2644C206C(a5, v13);
          v90 = v11;
          sub_2644C206C(v12, v11);
          v96 = a10;
          sub_2644C206C(a10, a11);
          v104 = v13;
          sub_2644C206C(a5, v13);
          if (sub_2644EABFC() && __OFSUB__(v59, sub_2644EAC2C()))
          {
            goto LABEL_234;
          }

          if (__OFSUB__(v60, v59))
          {
            goto LABEL_226;
          }

          goto LABEL_124;
        }

        v94 = a10;
        if (v12 >> 32 < v12)
        {
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        sub_2644C206C(a10, a11);
        if (sub_2644EABFC() && __OFSUB__(v12, sub_2644EAC2C()))
        {
          goto LABEL_214;
        }

        goto LABEL_90;
      }

      if (v27 == 2)
      {
        v44 = v14;
        v45 = *(v12 + 16);
        v46 = *(v12 + 24);
        sub_2644C206C(v44, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(v44, v13);
        v93 = a10;
        sub_2644C206C(a10, a11);
        if (sub_2644EABFC() && __OFSUB__(v45, sub_2644EAC2C()))
        {
          goto LABEL_212;
        }

        if (__OFSUB__(v46, v45))
        {
          goto LABEL_210;
        }

LABEL_73:
        sub_2644EAC1C();
        v17 = v93;
        sub_2644CF230(v93, a11, v113, a1);
        v14 = a5;
        if (!v112)
        {
          sub_2644C20C0(v93, a11);
          sub_2644C20C0(v93, a11);
          v24 = v113[0];
          goto LABEL_147;
        }

LABEL_252:
        sub_2644C20C0(v14, v13);
        v84 = v14;
LABEL_256:
        sub_2644C20C0(v84, v13);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        v81 = v17;
        v85 = a11;
        goto LABEL_257;
      }

      v54 = a11 >> 62;
      memset(v113, 0, 14);
      if ((a11 >> 62) <= 1)
      {
        if (!v54)
        {
          goto LABEL_188;
        }

        v92 = v11;
        if (a10 >> 32 < a10)
        {
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        v100 = a10;
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
        {
          goto LABEL_246;
        }

LABEL_180:
        sub_2644EAC1C();
        v24 = CCCryptorGCMOneshotDecrypt();
        v17 = v100;
        sub_2644C20C0(v100, a11);
        v11 = v92;
        v14 = a5;
        goto LABEL_191;
      }

      if (v54 != 2)
      {
        goto LABEL_188;
      }

      v69 = v11;
      v70 = *(a10 + 16);
      v71 = *(a10 + 24);
      sub_2644C206C(v14, v13);
      v108 = v12;
      v91 = v69;
      sub_2644C206C(v12, v69);
      v72 = a10;
      sub_2644C206C(a10, a11);
      sub_2644C206C(v14, v13);
      if (sub_2644EABFC() && __OFSUB__(v70, sub_2644EAC2C()))
      {
        goto LABEL_238;
      }

      if (__OFSUB__(v71, v70))
      {
        goto LABEL_230;
      }
    }

    sub_2644EAC1C();
    v24 = CCCryptorGCMOneshotDecrypt();
    v17 = v72;
    sub_2644C20C0(v72, a11);
    v11 = v91;
    v12 = v108;
    goto LABEL_146;
  }

  if (!v18)
  {
    v115[0] = a3;
    LOWORD(v115[1]) = a4;
    BYTE2(v115[1]) = BYTE2(a4);
    BYTE3(v115[1]) = BYTE3(a4);
    BYTE4(v115[1]) = BYTE4(a4);
    v101 = v115 + BYTE6(a4);
    BYTE5(v115[1]) = BYTE5(a4);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a10, a11);
    sub_2644C206C(v12, v11);
    sub_2644C206C(a10, a11);
    v19 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (!v19)
      {
        v114[0] = a5;
        LOWORD(v114[1]) = v13;
        BYTE2(v114[1]) = BYTE2(v13);
        BYTE3(v114[1]) = BYTE3(v13);
        BYTE4(v114[1]) = BYTE4(v13);
        BYTE5(v114[1]) = BYTE5(v13);
        sub_2644C206C(a10, a11);
        v20 = v11 >> 62;
        if ((v11 >> 62) <= 1)
        {
          if (!v20)
          {
            v113[0] = v12;
            v107 = v12;
            LOWORD(v113[1]) = v11;
            BYTE2(v113[1]) = BYTE2(v11);
            BYTE3(v113[1]) = BYTE3(v11);
            BYTE4(v113[1]) = BYTE4(v11);
            BYTE5(v113[1]) = BYTE5(v11);
            v21 = a11 >> 62;
            if ((a11 >> 62) <= 1)
            {
              if (!v21)
              {
                goto LABEL_54;
              }

              if (a10 >> 32 >= a10)
              {
                sub_2644C206C(a5, v13);
                sub_2644C206C(v12, v11);
                v97 = a10;
                sub_2644C206C(a10, a11);
                sub_2644C206C(a5, v13);
                if (!sub_2644EABFC() || !__OFSUB__(a10, sub_2644EAC2C()))
                {
LABEL_159:
                  sub_2644EAC1C();
                  v24 = CCCryptorGCMOneshotDecrypt();
                  v17 = v97;
                  sub_2644C20C0(v97, a11);
                  v12 = v107;
                  v14 = a5;
                  goto LABEL_191;
                }

                goto LABEL_241;
              }

              goto LABEL_217;
            }

            if (v21 == 2)
            {
              v57 = *(a10 + 16);
              v58 = *(a10 + 24);
              sub_2644C206C(a5, v13);
              v89 = v11;
              sub_2644C206C(v12, v11);
              v95 = a10;
              sub_2644C206C(a10, a11);
              v103 = v13;
              sub_2644C206C(a5, v13);
              if (sub_2644EABFC() && __OFSUB__(v57, sub_2644EAC2C()))
              {
                goto LABEL_233;
              }

              if (__OFSUB__(v58, v57))
              {
                goto LABEL_225;
              }

              goto LABEL_119;
            }

LABEL_183:
            sub_2644C206C(a5, v13);
            sub_2644C206C(v107, v11);
            sub_2644C206C(a10, a11);
            sub_2644C206C(a5, v13);
            v14 = a5;
            v12 = v107;
            goto LABEL_189;
          }

          v42 = v12;
          v43 = v12 >> 32;
          if (v12 >> 32 >= v12)
          {
            goto LABEL_76;
          }

          goto LABEL_206;
        }

        if (v20 == 2)
        {
          v42 = *(v12 + 16);
          v43 = *(v12 + 24);
LABEL_76:
          v14 = a5;
          sub_2644C206C(a5, v13);
          sub_2644C206C(v12, v11);
          sub_2644C206C(a10, a11);
          sub_2644C206C(a5, v13);
          sub_2644C206C(a10, a11);
          v47 = v11 & 0x3FFFFFFFFFFFFFFFLL;
          v48 = v114 + BYTE6(v13);
LABEL_77:
          v52 = sub_2644D10DC(v42, v43, v47, a10, a11, v114, v48, v115, v101, a1);
          if (!v112)
          {
            v24 = v52;
            sub_2644C20C0(a10, a11);
LABEL_190:
            sub_2644C20C0(a10, a11);
            goto LABEL_191;
          }

          goto LABEL_252;
        }

        v53 = a11 >> 62;
        memset(v113, 0, 14);
        if ((a11 >> 62) <= 1)
        {
          if (!v53)
          {
            goto LABEL_101;
          }

          v105 = v13;
          v79 = v12;
          v80 = v11;
          if (a10 >> 32 < a10)
          {
LABEL_221:
            __break(1u);
            goto LABEL_222;
          }

          sub_2644C206C(a5, v105);
          sub_2644C206C(v79, v11);
          v99 = a10;
          sub_2644C206C(a10, a11);
          sub_2644C206C(a5, v105);
          if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
          {
            goto LABEL_245;
          }

LABEL_175:
          sub_2644EAC1C();
          v24 = CCCryptorGCMOneshotDecrypt();
          v17 = v99;
          sub_2644C20C0(v99, a11);
          v11 = v80;
          v12 = v79;
          goto LABEL_176;
        }

        if (v53 != 2)
        {
          goto LABEL_101;
        }

        v66 = *(a10 + 16);
        v67 = *(a10 + 24);
        sub_2644C206C(a5, v13);
        v107 = v12;
        v89 = v11;
        sub_2644C206C(v12, v11);
        v68 = a10;
        sub_2644C206C(a10, a11);
        v103 = v13;
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(v66, sub_2644EAC2C()))
        {
          goto LABEL_237;
        }

        if (__OFSUB__(v67, v66))
        {
          goto LABEL_229;
        }

        goto LABEL_139;
      }

      if (a5 >> 32 >= a5)
      {
        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
          v86 = a1;
          v88 = a2;
          v35 = v12;
          v36 = v11;
          v17 = a10;
          v37 = a10;
          goto LABEL_48;
        }

        goto LABEL_204;
      }

      goto LABEL_198;
    }

    if (v19 == 2)
    {
      v31 = *(a5 + 16);
      v30 = *(a5 + 24);
      sub_2644C206C(a5, v13);
      sub_2644C206C(v12, v11);
      sub_2644C206C(a10, a11);
      sub_2644C206C(a5, v13);
      if (sub_2644EABFC() && __OFSUB__(v31, sub_2644EAC2C()))
      {
        goto LABEL_202;
      }

      if (__OFSUB__(v30, v31))
      {
        goto LABEL_200;
      }

      sub_2644EAC1C();
      v17 = a10;
      sub_2644CEB14(v12, v11, a10, a11, v114, a1, a2);
      if (!v112)
      {
        sub_2644C20C0(v12, v11);
        v24 = v114[0];
        v14 = a5;
        a9 = v109;
LABEL_192:
        sub_2644C20C0(v17, a11);
        sub_2644C20C0(v14, v13);
        sub_2644C20C0(v12, v11);
        sub_2644C20C0(v17, a11);
        goto LABEL_193;
      }

      goto LABEL_253;
    }

    memset(v114, 0, 14);
    sub_2644C206C(a10, a11);
    v38 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v38 == 2)
      {
        v42 = *(v12 + 16);
        v43 = *(v12 + 24);
        v14 = a5;
        sub_2644C206C(a5, v13);
        sub_2644C206C(v12, v11);
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v13);
        sub_2644C206C(a10, a11);
        v47 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v48 = v114;
        goto LABEL_77;
      }

      v55 = a11 >> 62;
      memset(v113, 0, 14);
      if ((a11 >> 62) <= 1)
      {
        if (!v55)
        {
LABEL_101:
          sub_2644C206C(a5, v13);
          sub_2644C206C(v12, v11);
          sub_2644C206C(a10, a11);
          sub_2644C206C(a5, v13);
          v14 = a5;
          goto LABEL_189;
        }

        v105 = v13;
        v79 = v12;
        v80 = v11;
        if (a10 >> 32 < a10)
        {
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        sub_2644C206C(a5, v105);
        sub_2644C206C(v79, v11);
        v99 = a10;
        sub_2644C206C(a10, a11);
        sub_2644C206C(a5, v105);
        if (sub_2644EABFC() && __OFSUB__(a10, sub_2644EAC2C()))
        {
          goto LABEL_247;
        }

        goto LABEL_175;
      }

      if (v55 != 2)
      {
        goto LABEL_101;
      }

      v73 = *(a10 + 16);
      v74 = *(a10 + 24);
      sub_2644C206C(a5, v13);
      v107 = v12;
      v89 = v11;
      sub_2644C206C(v12, v11);
      v68 = a10;
      sub_2644C206C(a10, a11);
      v103 = v13;
      sub_2644C206C(a5, v13);
      if (sub_2644EABFC() && __OFSUB__(v73, sub_2644EAC2C()))
      {
        goto LABEL_239;
      }

      if (__OFSUB__(v74, v73))
      {
        goto LABEL_231;
      }

LABEL_139:
      sub_2644EAC1C();
      v24 = CCCryptorGCMOneshotDecrypt();
      v17 = v68;
      v63 = v68;
      goto LABEL_140;
    }

    if (!v38)
    {
      v113[0] = v12;
      v107 = v12;
      LOWORD(v113[1]) = v11;
      BYTE2(v113[1]) = BYTE2(v11);
      BYTE3(v113[1]) = BYTE3(v11);
      BYTE4(v113[1]) = BYTE4(v11);
      BYTE5(v113[1]) = BYTE5(v11);
      v39 = a11 >> 62;
      if ((a11 >> 62) <= 1)
      {
        if (!v39)
        {
LABEL_54:
          sub_2644C206C(a5, v13);
          sub_2644C206C(v107, v11);
          sub_2644C206C(a10, a11);
          sub_2644C206C(a5, v13);
          v14 = a5;
          v12 = v107;
          v24 = CCCryptorGCMOneshotDecrypt();
          sub_2644C20C0(a10, a11);
LABEL_147:
          a9 = v109;
          goto LABEL_191;
        }

        if (a10 >> 32 >= a10)
        {
          sub_2644C206C(a5, v13);
          sub_2644C206C(v12, v11);
          v97 = a10;
          sub_2644C206C(a10, a11);
          sub_2644C206C(a5, v13);
          if (!sub_2644EABFC() || !__OFSUB__(a10, sub_2644EAC2C()))
          {
            goto LABEL_159;
          }

          goto LABEL_243;
        }

        goto LABEL_219;
      }

      if (v39 == 2)
      {
        v61 = *(a10 + 16);
        v62 = *(a10 + 24);
        sub_2644C206C(a5, v13);
        v89 = v11;
        sub_2644C206C(v12, v11);
        v95 = a10;
        sub_2644C206C(a10, a11);
        v103 = v13;
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(v61, sub_2644EAC2C()))
        {
          goto LABEL_235;
        }

        if (__OFSUB__(v62, v61))
        {
          goto LABEL_227;
        }

LABEL_119:
        sub_2644EAC1C();
        v24 = CCCryptorGCMOneshotDecrypt();
        v17 = v95;
        v63 = v95;
LABEL_140:
        sub_2644C20C0(v63, a11);
        v11 = v89;
        v13 = v103;
        v12 = v107;
        goto LABEL_146;
      }

      goto LABEL_183;
    }

    v94 = a10;
    if (v12 >> 32 < v12)
    {
      goto LABEL_208;
    }

    sub_2644C206C(a5, v13);
    sub_2644C206C(v12, v11);
    sub_2644C206C(a10, a11);
    sub_2644C206C(a5, v13);
    sub_2644C206C(a10, a11);
    if (sub_2644EABFC() && __OFSUB__(v12, sub_2644EAC2C()))
    {
      goto LABEL_215;
    }

    sub_2644EAC1C();
    v87 = a1;
LABEL_91:
    v17 = v94;
    sub_2644CF230(v94, a11, v113, v87);
    if (!v112)
    {
      sub_2644C20C0(v94, a11);
      sub_2644C20C0(v94, a11);
      v24 = v113[0];
      v14 = a5;
LABEL_191:
      sub_2644C20C0(v12, v11);
      goto LABEL_192;
    }

    sub_2644C20C0(a5, v13);
    v84 = a5;
    goto LABEL_256;
  }

  v25 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_195;
  }

  sub_2644C206C(a5, a6);
  sub_2644C206C(v12, v11);
  sub_2644C206C(a10, a11);
  sub_2644C206C(a10, a11);
  if (sub_2644EABFC() && __OFSUB__(v25, sub_2644EAC2C()))
  {
    goto LABEL_197;
  }

  sub_2644EAC1C();
  v14 = a5;
  sub_2644CD8FC(a5, v13, v12, v11, a10, a11, v115, a1, a2);
  if (!v112)
  {
    sub_2644C20C0(a10, a11);
    v24 = v115[0];
    v17 = a10;
    v16 = a11;
    a9 = v109;
    goto LABEL_193;
  }

  sub_2644C20C0(a10, a11);
  sub_2644C20C0(a5, v13);
  sub_2644C20C0(v12, v11);
  v82 = a10;
  v83 = a11;
LABEL_258:
  sub_2644C20C0(v82, v83);

  __break(1u);
}

void sub_2644CD8FC(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v13 = a7;
  v86[2] = *MEMORY[0x277D85DE8];
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    v84 = a9;
    if (!v17)
    {
      v86[0] = a3;
      LOWORD(v86[1]) = a4;
      BYTE2(v86[1]) = BYTE2(a4);
      BYTE3(v86[1]) = BYTE3(a4);
      BYTE4(v86[1]) = BYTE4(a4);
      BYTE5(v86[1]) = BYTE5(a4);
      v18 = a8;
      sub_2644C206C(a7, a8);
      v19 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v19 != 2)
        {
          v47 = v18 >> 62;
          memset(v85, 0, 14);
          if ((v18 >> 62) <= 1)
          {
            if (!v47)
            {
LABEL_50:
              v48 = a5;
              sub_2644C206C(a5, a6);
              v32 = CCCryptorGCMOneshotDecrypt();
              sub_2644C20C0(v48, a6);
              goto LABEL_14;
            }

            v81 = v13;
            if (v13 >> 32 >= v13)
            {
              v79 = a5;
              sub_2644C206C(a5, a6);
              if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
              {
                goto LABEL_102;
              }

              goto LABEL_131;
            }

            goto LABEL_119;
          }

          if (v47 == 2)
          {
            v60 = v13;
            v61 = *(v13 + 16);
            v78 = a5;
            v81 = v60;
            v62 = *(v60 + 24);
            sub_2644C206C(a5, a6);
            if (sub_2644EABFC() && __OFSUB__(v61, sub_2644EAC2C()))
            {
              goto LABEL_127;
            }

            if (__OFSUB__(v62, v61))
            {
              goto LABEL_123;
            }

LABEL_98:
            sub_2644EAC1C();
            v32 = CCCryptorGCMOneshotDecrypt();
            v73 = v78;
            v74 = a6;
            goto LABEL_101;
          }

          v33 = a9;
LABEL_89:
          sub_2644C206C(a5, a6);
          v69 = CCCryptorGCMOneshotDecrypt();
          v70 = a5;
          v32 = v69;
          sub_2644C20C0(v70, a6);
          goto LABEL_15;
        }

        v41 = v13;
        v42 = *(a5 + 16);
        v43 = *(a5 + 24);
        v77 = a5;
        sub_2644C206C(a5, a6);
        if (sub_2644EABFC() && __OFSUB__(v42, sub_2644EAC2C()))
        {
          goto LABEL_113;
        }

        if (!__OFSUB__(v43, v42))
        {
          sub_2644EAC1C();
          v75 = a10;
          v13 = v41;
          goto LABEL_40;
        }

        goto LABEL_111;
      }

      if (!v19)
      {
        v85[0] = a5;
        LOWORD(v85[1]) = a6;
        BYTE2(v85[1]) = BYTE2(a6);
        BYTE3(v85[1]) = BYTE3(a6);
        BYTE4(v85[1]) = BYTE4(a6);
        BYTE5(v85[1]) = BYTE5(a6);
        v20 = v18 >> 62;
        if ((v18 >> 62) <= 1)
        {
          if (!v20)
          {
            goto LABEL_50;
          }

          v81 = v13;
          if (v13 >> 32 >= v13)
          {
            v79 = a5;
            sub_2644C206C(a5, a6);
            if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
            {
LABEL_102:
              sub_2644EAC1C();
              v32 = CCCryptorGCMOneshotDecrypt();
              sub_2644C20C0(v79, a6);
              goto LABEL_103;
            }

            goto LABEL_129;
          }

          goto LABEL_117;
        }

        if (v20 == 2)
        {
          v52 = v13;
          v53 = *(v13 + 16);
          v81 = v52;
          v54 = *(v52 + 24);
          v78 = a5;
          sub_2644C206C(a5, a6);
          if (sub_2644EABFC() && __OFSUB__(v53, sub_2644EAC2C()))
          {
            goto LABEL_125;
          }

          if (__OFSUB__(v54, v53))
          {
            goto LABEL_121;
          }

          goto LABEL_98;
        }

        v33 = a9;
        goto LABEL_89;
      }

      v41 = v13;
      if (a5 >> 32 >= a5)
      {
        v77 = a5;
        sub_2644C206C(a5, a6);
        if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
          v75 = a10;
LABEL_40:
          sub_2644CF230(v41, v18, v85, v75);
          v12 = v11;
          if (!v11)
          {
            sub_2644C20C0(v77, a6);
            v32 = v85[0];
            goto LABEL_14;
          }

          goto LABEL_133;
        }

        goto LABEL_115;
      }

      goto LABEL_109;
    }

    v35 = a3;
    if (a3 >> 32 >= a3)
    {
      sub_2644C206C(a5, a6);
      v29 = a8;
      sub_2644C206C(a7, a8);
      if (!sub_2644EABFC() || !__OFSUB__(v35, sub_2644EAC2C()))
      {
        v13 = a7;
        sub_2644EAC1C();
        sub_2644CEB14(a5, a6, a7, a8, v86, a10, a11);
        v12 = v11;
        v30 = a5;
        v31 = a6;
        if (v11)
        {
          goto LABEL_20;
        }

LABEL_13:
        sub_2644C20C0(v30, v31);
        v32 = v86[0];
        v18 = v29;
LABEL_14:
        v33 = v84;
LABEL_15:
        sub_2644C20C0(v13, v18);
        *v33 = v32;
        return;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    __break(1u);
    goto LABEL_106;
  }

  if (v17 != 2)
  {
    memset(v86, 0, 14);
    v18 = a8;
    sub_2644C206C(a7, a8);
    v39 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v39 != 2)
      {
        v49 = v18 >> 62;
        memset(v85, 0, 14);
        if ((v18 >> 62) <= 1)
        {
          v33 = a9;
          if (v49)
          {
            if (v13 >> 32 >= v13)
            {
              v80 = a5;
              sub_2644C206C(a5, a6);
              if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
              {
                sub_2644EAC1C();
                v32 = CCCryptorGCMOneshotDecrypt();
                sub_2644C20C0(v80, a6);
                goto LABEL_15;
              }

LABEL_132:
              __break(1u);
            }

            goto LABEL_120;
          }

          v50 = a5;
          sub_2644C206C(a5, a6);
          v32 = CCCryptorGCMOneshotDecrypt();
          v51 = v50;
LABEL_92:
          sub_2644C20C0(v51, a6);
          goto LABEL_15;
        }

        if (v49 == 2)
        {
          v63 = a6;
          v84 = a9;
          v64 = v13;
          v65 = *(v13 + 16);
          v81 = v64;
          v66 = *(v64 + 24);
          v67 = a5;
          v68 = v63;
          sub_2644C206C(a5, v63);
          if (sub_2644EABFC() && __OFSUB__(v65, sub_2644EAC2C()))
          {
            goto LABEL_128;
          }

          if (__OFSUB__(v66, v65))
          {
            goto LABEL_124;
          }

          sub_2644EAC1C();
          v32 = CCCryptorGCMOneshotDecrypt();
          v73 = v67;
          v74 = v68;
          goto LABEL_101;
        }

        v33 = a9;
LABEL_91:
        sub_2644C206C(a5, a6);
        v71 = CCCryptorGCMOneshotDecrypt();
        v72 = a5;
        v32 = v71;
        v51 = v72;
        goto LABEL_92;
      }

      v33 = a9;
      v77 = a5;
      v44 = v13;
      v45 = *(a5 + 16);
      v46 = *(a5 + 24);
      sub_2644C206C(a5, a6);
      if (sub_2644EABFC() && __OFSUB__(v45, sub_2644EAC2C()))
      {
        goto LABEL_114;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_112;
      }

      sub_2644EAC1C();
      v13 = v44;
      sub_2644CF230(v44, v18, v85, a10);
    }

    else
    {
      if (!v39)
      {
        v85[0] = a5;
        LOWORD(v85[1]) = a6;
        BYTE2(v85[1]) = BYTE2(a6);
        BYTE3(v85[1]) = BYTE3(a6);
        BYTE4(v85[1]) = BYTE4(a6);
        BYTE5(v85[1]) = BYTE5(a6);
        v40 = v18 >> 62;
        if ((v18 >> 62) <= 1)
        {
          v84 = a9;
          if (!v40)
          {
            goto LABEL_50;
          }

          v81 = v13;
          if (v13 >> 32 >= v13)
          {
            v79 = a5;
            sub_2644C206C(a5, a6);
            if (!sub_2644EABFC() || !__OFSUB__(v13, sub_2644EAC2C()))
            {
              goto LABEL_102;
            }

            goto LABEL_130;
          }

          goto LABEL_118;
        }

        if (v40 == 2)
        {
          v55 = a6;
          v84 = a9;
          v56 = v13;
          v57 = *(v13 + 16);
          v81 = v56;
          v83 = a6;
          v58 = *(v56 + 24);
          v59 = a5;
          sub_2644C206C(a5, v55);
          if (sub_2644EABFC() && __OFSUB__(v57, sub_2644EAC2C()))
          {
            goto LABEL_126;
          }

          if (__OFSUB__(v58, v57))
          {
            goto LABEL_122;
          }

          sub_2644EAC1C();
          v32 = CCCryptorGCMOneshotDecrypt();
          v73 = v59;
          v74 = v83;
LABEL_101:
          sub_2644C20C0(v73, v74);
LABEL_103:
          v13 = v81;
          goto LABEL_14;
        }

        v33 = a9;
        goto LABEL_91;
      }

      v33 = a9;
      if (a5 >> 32 < a5)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v77 = a5;
      sub_2644C206C(a5, a6);
      if (sub_2644EABFC() && __OFSUB__(a5, sub_2644EAC2C()))
      {
        goto LABEL_116;
      }

      sub_2644EAC1C();
      sub_2644CF230(v13, v18, v85, a10);
    }

    if (!v11)
    {
      sub_2644C20C0(v77, a6);
      v32 = v85[0];
      goto LABEL_15;
    }

LABEL_133:
    sub_2644C20C0(v77, a6);
    v37 = v13;
    v38 = v18;
    goto LABEL_134;
  }

  v84 = a9;
  v23 = *(a3 + 16);
  v24 = *(a3 + 24);
  sub_2644C206C(a5, a6);
  v27 = a7;
  v28 = a7;
  v29 = a8;
  sub_2644C206C(v28, a8);
  if (sub_2644EABFC() && __OFSUB__(v23, sub_2644EAC2C()))
  {
    goto LABEL_107;
  }

  if (__OFSUB__(v24, v23))
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_2644EAC1C();
  v13 = v27;
  sub_2644CEB14(a5, a6, v27, a8, v86, a10, a11);
  v12 = v11;
  v30 = a5;
  v31 = a6;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_20:
  sub_2644C20C0(v30, v31);
  v37 = v13;
  v38 = v29;
LABEL_134:
  sub_2644C20C0(v37, v38);

  __break(1u);
}

void sub_2644CEB14(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = a10;
  v31[2] = *MEMORY[0x277D85DE8];
  v16 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v24 = a6 >> 62;
      memset(v31, 0, 14);
      if ((a6 >> 62) <= 1)
      {
        if (!v24)
        {
          goto LABEL_38;
        }

        if (a5 >> 32 >= a5)
        {
          sub_2644C206C(a5, a6);
          if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
          {
            goto LABEL_37;
          }

LABEL_54:
          __break(1u);
        }

        goto LABEL_48;
      }

      if (v24 == 2)
      {
        v29 = a9;
        v27 = *(a5 + 16);
        v28 = *(a5 + 24);
        sub_2644C206C(a5, a6);
        if (sub_2644EABFC() && __OFSUB__(v27, sub_2644EAC2C()))
        {
          goto LABEL_52;
        }

        if (__OFSUB__(v28, v27))
        {
          goto LABEL_50;
        }

LABEL_43:
        sub_2644EAC1C();
        v23 = CCCryptorGCMOneshotDecrypt();
        sub_2644C20C0(a5, a6);
        goto LABEL_18;
      }

LABEL_38:
      v23 = CCCryptorGCMOneshotDecrypt();
      goto LABEL_39;
    }

    v18 = a10;
    v29 = a9;
    v30 = v11;
    v19 = *(a3 + 16);
    v20 = *(a3 + 24);
    sub_2644C206C(a5, a6);
    a9 = sub_2644EABFC();
    if (a9)
    {
      v21 = sub_2644EAC2C();
      if (__OFSUB__(v19, v21))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      a9 = (a9 + v19 - v21);
    }

    if (!__OFSUB__(v20, v19))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v31[0] = a3;
    LOWORD(v31[1]) = a4;
    BYTE2(v31[1]) = BYTE2(a4);
    BYTE3(v31[1]) = BYTE3(a4);
    BYTE4(v31[1]) = BYTE4(a4);
    BYTE5(v31[1]) = BYTE5(a4);
    v17 = a6 >> 62;
    if ((a6 >> 62) <= 1)
    {
      if (!v17)
      {
        goto LABEL_38;
      }

      if (a5 >> 32 >= a5)
      {
        sub_2644C206C(a5, a6);
        if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
        {
LABEL_37:
          sub_2644EAC1C();
          v23 = CCCryptorGCMOneshotDecrypt();
          sub_2644C20C0(a5, a6);
          goto LABEL_39;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    if (v17 == 2)
    {
      v29 = a9;
      v26 = *(a5 + 16);
      v25 = *(a5 + 24);
      sub_2644C206C(a5, a6);
      if (sub_2644EABFC() && __OFSUB__(v26, sub_2644EAC2C()))
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v25, v26))
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v22 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_45;
  }

  v18 = v15;
  v29 = a9;
  v30 = v11;
  sub_2644C206C(a5, a6);
  if (sub_2644EABFC() && __OFSUB__(v22, sub_2644EAC2C()))
  {
    goto LABEL_46;
  }

LABEL_16:
  sub_2644EAC1C();
  sub_2644CF230(a5, a6, v31, v18);
  if (!v30)
  {
    sub_2644C20C0(a5, a6);
    v23 = v31[0];
LABEL_18:
    a9 = v29;
LABEL_39:
    *a9 = v23;
    return;
  }

  sub_2644C20C0(a5, a6);

  __break(1u);
}

uint64_t sub_2644CF230@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, _DWORD *a9@<X8>, uint64_t a10)
{
  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v12 != 2)
  {
LABEL_14:
    result = CCCryptorGCMOneshotDecrypt();
    goto LABEL_15;
  }

  v17 = a9;
  v13 = *(a3 + 16);
  v16 = *(a3 + 24);
  a9 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
  if (sub_2644EABFC())
  {
    a9 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
    if (__OFSUB__(v13, sub_2644EAC2C()))
    {
      goto LABEL_17;
    }
  }

  if (__OFSUB__(v16, v13))
  {
    __break(1u);
LABEL_10:
    v14 = a3;
    if (a3 >> 32 >= a3)
    {
      v17 = a9;
      if (!sub_2644EABFC() || !__OFSUB__(v14, sub_2644EAC2C()))
      {
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  sub_2644EAC1C();
  result = CCCryptorGCMOneshotDecrypt();
  a9 = v17;
LABEL_15:
  *a9 = result;
  return result;
}

uint64_t sub_2644CF504(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      *(&v41 + 7) = 0;
      *&v41 = 0;
      v28 = a6;
      sub_2644C206C(a4, a5);
      sub_2644CFC14(a2, a3, a4, a5, v28, &v41);
      sub_2644C20C0(a2, a3);
      return sub_2644C20C0(a4, a5);
    }

    v40 = a6;
    sub_2644C206C(a4, a5);
    v36 = a3;
    v38 = a2;
    sub_2644C206C(a2, a3);

    sub_2644C20C0(v12, v11);
    *&v41 = v12;
    *(&v41 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v17 = *(&v41 + 1);
    v18 = *(v41 + 16);
    v19 = *(v41 + 24);
    v20 = sub_2644EABFC();
    if (!v20)
    {
      sub_2644C20C0(v38, a3);
      result = sub_2644C20C0(a4, a5);
      __break(1u);
      goto LABEL_28;
    }

    v21 = v20;
    v22 = sub_2644EAC2C();
    v23 = v18 - v22;
    if (!__OFSUB__(v18, v22))
    {
      if (!__OFSUB__(v19, v18))
      {
        sub_2644EAC1C();
        sub_2644C206C(a4, a5);
        sub_2644CFC14(v38, v36, a4, a5, v40, (v21 + v23));
        sub_2644C20C0(v38, v36);
        sub_2644C20C0(a4, a5);
        sub_2644C20C0(v38, v36);
        *a1 = v41;
        a1[1] = v17 | 0x8000000000000000;
        return sub_2644C20C0(a4, a5);
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = a6;
  if (!v13)
  {
    sub_2644C206C(a4, a5);
    sub_2644C206C(a2, a3);
    sub_2644C20C0(v12, v11);
    *&v41 = v12;
    WORD4(v41) = v11;
    BYTE10(v41) = BYTE2(v11);
    BYTE11(v41) = BYTE3(v11);
    BYTE12(v41) = BYTE4(v11);
    BYTE13(v41) = BYTE5(v11);
    BYTE14(v41) = BYTE6(v11);
    sub_2644C206C(a4, a5);
    sub_2644CFC14(a2, a3, a4, a5, v39, &v41);
    v15 = v41;
    v16 = DWORD2(v41) | ((WORD6(v41) | (BYTE14(v41) << 16)) << 32);
    sub_2644C20C0(a2, a3);
    sub_2644C20C0(a4, a5);
    sub_2644C20C0(a2, a3);
    *a1 = v15;
    a1[1] = v16;
    return sub_2644C20C0(a4, a5);
  }

  v24 = v11 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a4, a5);
  sub_2644C206C(a2, a3);
  sub_2644C206C(v12, v11);
  sub_2644C20C0(v12, v11);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v12;
  v27 = v12 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v27 < v12)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (sub_2644EABFC() && __OFSUB__(v12, sub_2644EAC2C()))
    {
LABEL_26:
      __break(1u);
    }

    sub_2644EAC3C();
    swift_allocObject();
    v26 = v12;
    v29 = sub_2644EABDC();

    v24 = v29;
    v27 = v12 >> 32;
  }

  if (v27 < v26)
  {
    goto LABEL_22;
  }

  v35 = a1;
  v37 = a3;
  v30 = v26;

  result = sub_2644EABFC();
  if (result)
  {
    v32 = result;
    v33 = sub_2644EAC2C();
    v34 = v30 - v33;
    if (!__OFSUB__(v30, v33))
    {
      sub_2644EAC1C();
      sub_2644C206C(a4, a5);
      sub_2644CFC14(a2, v37, a4, a5, v39, (v32 + v34));

      sub_2644C20C0(a2, v37);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a2, v37);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a2, v37);
      *v35 = v12;
      v35[1] = v24 | 0x4000000000000000;
      return sub_2644C20C0(a4, a5);
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2644CFAA4(int *a1, CC_SHA256_CTX *a2)
{
  result = sub_2644EACBC();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2644EABFC();
  if (result)
  {
    v6 = result;
    result = sub_2644EAC2C();
    v7 = __OFSUB__(v5, result);
    v8 = v5 - result;
    if (!v7)
    {
      sub_2644EAC1C();
      CC_SHA256_Final((v6 + v8), a2);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2644CFB3C(int *a1, uint64_t a2, unint64_t a3)
{
  result = sub_2644EACBC();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2644EABFC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  result = sub_2644EAC2C();
  v10 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v8 - v7;
  v12 = sub_2644EAC1C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  sub_2644C84D4((v9 + v10), v9 + v10 + v13, a2, a3);

  return sub_2644C20C0(a2, a3);
}

uint64_t sub_2644CFC14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, void *a6)
{
  v6 = a4;
  v7 = a3;
  key[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(key, 0, 14);
      v10 = key;
      v9 = key;
      goto LABEL_23;
    }

    v11 = a5;
    v23 = a6;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_2644EABFC();
    v14 = a1;
    if (a1)
    {
      a1 = sub_2644EAC2C();
      if (__OFSUB__(v12, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    key[0] = a1;
    LOWORD(key[1]) = a2;
    BYTE2(key[1]) = BYTE2(a2);
    BYTE3(key[1]) = BYTE3(a2);
    BYTE4(key[1]) = BYTE4(a2);
    BYTE5(key[1]) = BYTE5(a2);
    v9 = key + BYTE6(a2);
    v10 = key;
    goto LABEL_23;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = a5;
  v23 = a6;
  v14 = sub_2644EABFC();
  if (v14)
  {
    v18 = sub_2644EAC2C();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v19 = sub_2644EAC1C();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v20 + v14);
  if (v14)
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  v10 = v14;
  a3 = v7;
  a4 = v6;
  a5 = v11;
  a6 = v23;
LABEL_23:
  sub_2644CA608(v10, v9, a3, a4, a5, a6);
  return sub_2644C20C0(v7, v6);
}

unint64_t sub_2644CFE24(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2644CFE44(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2644EAC3C();
      swift_allocObject();
      sub_2644EAC0C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644EACDC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2644CFEE4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v63 = *MEMORY[0x277D85DE8];
  v17 = *a1;
  v16 = a1[1];
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 != 2)
    {
      *(&v62 + 7) = 0;
      *&v62 = 0;
      v20 = a8;
      sub_2644C206C(a2, a3);
      sub_2644C206C(a4, a5);
      sub_2644C206C(a6, a7);
      sub_2644C8988(&v62, &v62, a2, a3, a4, a5, a6, a7, &v61, v20, a9);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      if (!v9)
      {
        v20 = v61;
      }

      goto LABEL_35;
    }

    v20 = a4;
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(v17, v16);
    sub_2644C20C0(v17, v16);
    *&v62 = v17;
    *(&v62 + 1) = v16 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v21 = *(&v62 + 1);
    v22 = a6;
    v49 = v62;
    v23 = *(v62 + 16);
    v51 = *(v62 + 24);
    sub_2644C206C(a2, a3);
    v53 = v20;
    v55 = a5;
    sub_2644C206C(v20, a5);
    v24 = v22;
    sub_2644C206C(v22, a7);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_43;
    }

    v26 = result;
    v27 = sub_2644EAC2C();
    v28 = v23 - v27;
    if (!__OFSUB__(v23, v27))
    {
      v29 = __OFSUB__(v51, v23);
      v30 = v51 - v23;
      if (!v29)
      {
        v31 = sub_2644EAC1C();
        if (v31 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        a6 = v24;
        sub_2644C8988((v26 + v28), v26 + v28 + v32, a2, a3, v20, v55, v24, a7, &v61, a8, a9);
        v33 = v21 | 0x8000000000000000;
        sub_2644C20C0(v24, a7);
        sub_2644C20C0(v20, v55);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v20, v55);
        if (v9)
        {
          sub_2644C20C0(v24, a7);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(v20, v55);
        }

        else
        {
          v20 = v61;
          sub_2644C20C0(v24, a7);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(v53, v55);
        }

        *a1 = v49;
        a1[1] = v33;
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v18)
  {
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C20C0(v17, v16);
    *&v62 = v17;
    WORD4(v62) = v16;
    BYTE10(v62) = BYTE2(v16);
    BYTE11(v62) = BYTE3(v16);
    BYTE12(v62) = BYTE4(v16);
    BYTE13(v62) = BYTE5(v16);
    BYTE14(v62) = BYTE6(v16);
    sub_2644C8988(&v62, &v62 + BYTE6(v16), a2, a3, a4, a5, a6, a7, &v61, a8, a9);
    if (v9)
    {
      v19 = v62;
      v20 = DWORD2(v62) | ((WORD6(v62) | (BYTE14(v62) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a6, a7);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      *a1 = v19;
      a1[1] = v20;
    }

    else
    {
      v20 = v61;
      v59 = v62;
      v37 = DWORD2(v62) | ((WORD6(v62) | (BYTE14(v62) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      sub_2644C20C0(a6, a7);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, a5);
      *a1 = v59;
      a1[1] = v37;
    }

LABEL_35:
    sub_2644C20C0(a6, a7);
    return v20;
  }

  v20 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(v17, v16);
  sub_2644C20C0(v17, v16);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v17;
  v36 = v17 >> 32;
  v54 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v36 < v17)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_2644EABFC() && __OFSUB__(v17, sub_2644EAC2C()))
    {
LABEL_41:
      __break(1u);
    }

    sub_2644EAC3C();
    swift_allocObject();
    v38 = sub_2644EABDC();

    v35 = v17;
    v20 = v38;
    v36 = v17 >> 32;
  }

  v56 = a5;
  v52 = a6;
  v39 = v36 - v35;
  if (v36 < v35)
  {
    goto LABEL_37;
  }

  v40 = v35;
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, v56);
  v50 = a7;
  sub_2644C206C(v52, a7);

  result = sub_2644EABFC();
  if (result)
  {
    v41 = result;
    v42 = sub_2644EAC2C();
    v43 = v40 - v42;
    if (!__OFSUB__(v40, v42))
    {
      v44 = sub_2644EAC1C();
      if (v44 >= v39)
      {
        v45 = v39;
      }

      else
      {
        v45 = v44;
      }

      v46 = (v41 + v43);
      v47 = v41 + v43 + v45;
      a6 = v52;
      a7 = v50;
      sub_2644C8988(v46, v47, a2, a3, v54, v56, v52, v50, &v62, a8, a9);
      v48 = v20 | 0x4000000000000000;
      if (v9)
      {
        sub_2644C20C0(v52, v50);
        sub_2644C20C0(v54, v56);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v54, v56);
        sub_2644C20C0(v52, v50);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v54, v56);
        *a1 = v17;
        a1[1] = v48;
      }

      else
      {
        sub_2644C20C0(v52, v50);
        sub_2644C20C0(v54, v56);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        v20 = v62;
        sub_2644C20C0(v54, v56);
        sub_2644C20C0(v52, v50);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(v54, v56);
        *a1 = v17;
        a1[1] = v48;
      }

      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2644D0790(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, unint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&v58 + 7) = 0;
      *&v58 = 0;
      sub_2644C206C(a3, a4);
      sub_2644C206C(a5, a6);
      sub_2644C206C(a7, a8);
      v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, a7, a8, &v58, &v58);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      goto LABEL_27;
    }

    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(v15, v14);
    sub_2644C20C0(v15, v14);
    *&v58 = v15;
    *(&v58 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
    v53 = a1;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v21 = *(v58 + 16);
    v54 = *(v58 + 24);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    v50 = a7;
    sub_2644C206C(a7, a8);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_35;
    }

    v23 = result;
    v24 = sub_2644EAC2C();
    v25 = v21 - v24;
    if (!__OFSUB__(v21, v24))
    {
      v26 = __OFSUB__(v54, v21);
      v27 = v54 - v21;
      if (!v26)
      {
        v28 = sub_2644EAC1C();
        if (v28 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        v30 = v23 + v25;
        v31 = v30 + v29;
        sub_2644C206C(a3, a4);
        sub_2644C206C(a5, a6);
        sub_2644C206C(v50, a8);
        v32 = v30;
        a7 = v50;
        v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, v50, a8, v32, v31);
        sub_2644C20C0(v50, a8);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(v50, a8);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a5, a6);
        sub_2644C20C0(v50, a8);
        sub_2644C20C0(a3, a4);
        sub_2644C20C0(a5, a6);
        v33 = *(&v58 + 1) | 0x8000000000000000;
        v34 = v53;
        *v53 = v58;
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v16)
  {
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    sub_2644C20C0(v15, v14);
    *&v58 = v15;
    WORD4(v58) = v14;
    BYTE10(v58) = BYTE2(v14);
    BYTE11(v58) = BYTE3(v14);
    BYTE12(v58) = BYTE4(v14);
    BYTE13(v58) = BYTE5(v14);
    BYTE14(v58) = BYTE6(v14);
    sub_2644C206C(a3, a4);
    sub_2644C206C(a5, a6);
    sub_2644C206C(a7, a8);
    v17 = sub_2644CFEE4(a2, a3, a4, a5, a6, a7, a8, &v58, &v58 + BYTE6(v14));
    sub_2644C20C0(a7, a8);
    sub_2644C20C0(a5, a6);
    sub_2644C20C0(a3, a4);
    v18 = v58;
    v19 = DWORD2(v58) | ((WORD6(v58) | (BYTE14(v58) << 16)) << 32);
    sub_2644C20C0(a3, a4);
    sub_2644C20C0(a5, a6);
    sub_2644C20C0(a7, a8);
    sub_2644C20C0(a3, a4);
    sub_2644C20C0(a5, a6);
    *a1 = v18;
    a1[1] = v19;
LABEL_27:
    sub_2644C20C0(a7, a8);
    return v17;
  }

  v55 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  sub_2644C206C(a7, a8);
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  sub_2644C206C(a7, a8);
  sub_2644C206C(v15, v14);
  sub_2644C20C0(v15, v14);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v15;
  v38 = v15 >> 32;
  v51 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v38 < v15)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (sub_2644EABFC() && __OFSUB__(v15, sub_2644EAC2C()))
    {
LABEL_33:
      __break(1u);
    }

    sub_2644EAC3C();
    swift_allocObject();
    v39 = sub_2644EABDC();

    v37 = v15;
    v55 = v39;
    v38 = v15 >> 32;
  }

  v40 = v38 - v37;
  if (v38 < v37)
  {
    goto LABEL_29;
  }

  v49 = v37;
  sub_2644C206C(a3, a4);
  sub_2644C206C(a5, a6);
  v48 = a8;
  sub_2644C206C(a7, a8);

  result = sub_2644EABFC();
  if (result)
  {
    v41 = result;
    v42 = sub_2644EAC2C();
    v43 = v49 - v42;
    if (!__OFSUB__(v49, v42))
    {
      v44 = sub_2644EAC1C();
      if (v44 >= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v44;
      }

      v46 = v41 + v43;
      v47 = v41 + v43 + v45;
      sub_2644C206C(a3, a4);
      sub_2644C206C(a5, a6);
      a7 = v51;
      a8 = v48;
      sub_2644C206C(v51, v48);
      v57 = sub_2644CFEE4(a2, a3, a4, a5, a6, v51, v48, v46, v47);
      sub_2644C20C0(v51, v48);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(v51, v48);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(a3, a4);

      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      sub_2644C20C0(v51, v48);
      sub_2644C20C0(a3, a4);
      sub_2644C20C0(a5, a6);
      v33 = v55 | 0x4000000000000000;
      v34 = a1;
      *a1 = v15;
      v17 = v57;
LABEL_26:
      v34[1] = v33;
      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_2644D0F90()
{
  result = qword_27FF6F930;
  if (!qword_27FF6F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F930);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2644D1034()
{
  result = qword_2814ABF40;
  if (!qword_2814ABF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF40);
  }

  return result;
}

unint64_t sub_2644D1088()
{
  result = qword_2814ABF48;
  if (!qword_2814ABF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF48);
  }

  return result;
}

uint64_t sub_2644D10DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_2644EABFC();
  if (result)
  {
    result = sub_2644EAC2C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_2644EAC1C();
  result = sub_2644CF230(a4, a5, &v16, a10);
  if (!v10)
  {
    return v16;
  }

  return result;
}

uint64_t sub_2644D11C8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a7;
  v12 = a4;
  v15 = a9;
  v87 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      *(&v86 + 7) = 0;
      *&v86 = 0;
      sub_2644C206C(a8, a9);
      sub_2644C206C(a2, a3);
      sub_2644C206C(v12, a5);
      v26 = a6;
      v22 = a5;
      sub_2644C206C(v26, v9);
      v46 = a8;
      sub_2644CAF3C(&v86, &v86, a2, a3, v12, v22, v26, v9, &v85, a8, a9);
      sub_2644C20C0(a2, a3);
      if (v77)
      {
        v25 = a8;
        goto LABEL_33;
      }

      v47 = v12;
      v12 = v85;
      v25 = v46;
      goto LABEL_35;
    }

    sub_2644C206C(a2, a3);
    sub_2644C206C(v12, a5);
    sub_2644C206C(a6, v9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    sub_2644C206C(a6, a7);
    sub_2644C206C(v16, v17);
    sub_2644C20C0(v16, v17);
    *&v86 = v16;
    *(&v86 + 1) = v17 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v28 = *(&v86 + 1);
    v29 = *(v86 + 16);
    v65 = *(v86 + 24);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    v73 = a5;
    sub_2644C206C(a4, a5);
    v61 = a6;
    sub_2644C206C(a6, a7);
    result = sub_2644EABFC();
    if (!result)
    {
      __break(1u);
      goto LABEL_44;
    }

    v31 = result;
    v32 = sub_2644EAC2C();
    v33 = v29 - v32;
    if (!__OFSUB__(v29, v32))
    {
      v34 = v65 - v29;
      if (!__OFSUB__(v65, v29))
      {
        v66 = v86;
        v35 = sub_2644EAC1C();
        if (v35 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v35;
        }

        v12 = a4;
        v26 = a6;
        sub_2644CAF3C(v31 + v33, v31 + v33 + v36, a2, a3, a4, v73, a6, a7, &v85, a8, a9);
        v37 = v77;
        v78 = v28 | 0x8000000000000000;
        if (v37)
        {
          v15 = a9;
          sub_2644C20C0(a8, a9);
          sub_2644C20C0(a6, a7);
          v22 = v73;
          sub_2644C20C0(a4, v73);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(a2, a3);
          sub_2644C20C0(a4, v73);
          sub_2644C20C0(v61, a7);
          sub_2644C20C0(a8, a9);
          sub_2644C20C0(a2, a3);
          *a1 = v66;
          a1[1] = v78;
          v9 = a7;
          v25 = a8;
          goto LABEL_33;
        }

        v15 = a9;
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a6, a7);
        v22 = v73;
        sub_2644C20C0(a4, v73);
        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a2, a3);
        v47 = a4;
        v12 = v85;
        sub_2644C20C0(a4, v73);
        sub_2644C20C0(v61, a7);
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a2, a3);
        *a1 = v66;
        a1[1] = v78;
        v9 = a7;
        v25 = a8;
LABEL_35:
        sub_2644C20C0(v47, v22);
        sub_2644C20C0(v26, v9);
        sub_2644C20C0(v25, v15);
        return v12;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v63 = *a1;
  if (!v18)
  {
    v54 = v16 >> 8;
    v55 = v16 >> 16;
    v56 = v16 >> 24;
    v57 = HIDWORD(v16);
    v58 = v16 >> 40;
    v59 = HIWORD(v16);
    v60 = HIBYTE(v16);
    sub_2644C206C(a2, a3);
    sub_2644C206C(a4, a5);
    v21 = a6;
    sub_2644C206C(a6, a7);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a8, a9);
    sub_2644C206C(a2, a3);
    v12 = a4;
    sub_2644C206C(a4, a5);
    v9 = a7;
    sub_2644C206C(a6, a7);
    sub_2644C20C0(v63, v17);
    LOBYTE(v86) = v63;
    BYTE1(v86) = v54;
    v22 = a5;
    BYTE2(v86) = v55;
    BYTE3(v86) = v56;
    BYTE4(v86) = v57;
    BYTE5(v86) = v58;
    BYTE6(v86) = v59;
    BYTE7(v86) = v60;
    WORD4(v86) = v17;
    BYTE10(v86) = BYTE2(v17);
    BYTE11(v86) = BYTE3(v17);
    BYTE12(v86) = BYTE4(v17);
    BYTE13(v86) = BYTE5(v17);
    BYTE14(v86) = BYTE6(v17);
    v23 = a5;
    v24 = v21;
    sub_2644CAF3C(&v86, &v86 + BYTE6(v17), a2, a3, a4, v23, v21, a7, &v85, a8, a9);
    v25 = a8;
    if (v77)
    {
      v69 = v86;
      v64 = DWORD2(v86) | ((WORD6(v86) | (BYTE14(v86) << 16)) << 32);
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, v22);
      sub_2644C20C0(v24, a7);
      v15 = a9;
      sub_2644C20C0(a8, a9);
      sub_2644C20C0(a2, a3);
      *a1 = v69;
      a1[1] = v64;
      v26 = v24;
LABEL_33:
      sub_2644C20C0(v12, v22);
      sub_2644C20C0(v26, v9);
      sub_2644C20C0(v25, v15);
      return v12;
    }

    v47 = a4;
    v12 = v85;
    v72 = v86;
    v67 = DWORD2(v86) | ((WORD6(v86) | (BYTE14(v86) << 16)) << 32);
    sub_2644C20C0(a2, a3);
    sub_2644C20C0(a4, v22);
    sub_2644C20C0(v24, a7);
    v15 = a9;
    sub_2644C20C0(a8, a9);
    sub_2644C20C0(a2, a3);
    *a1 = v72;
    a1[1] = v67;
    v26 = v24;
    goto LABEL_35;
  }

  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, a5);
  sub_2644C206C(a6, a7);
  sub_2644C206C(a8, a9);
  sub_2644C206C(a8, a9);
  v40 = a3;
  v26 = a6;
  v41 = a5;
  v42 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2644C206C(a2, v40);
  sub_2644C206C(a4, v41);
  sub_2644C206C(v26, a7);
  sub_2644C206C(v16, v17);
  sub_2644C20C0(v16, v17);
  *a1 = xmmword_2644ECCF0;
  sub_2644C20C0(0, 0xC000000000000000);
  v43 = v16 >> 32;
  v74 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v43 < v63)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (sub_2644EABFC() && __OFSUB__(v63, sub_2644EAC2C()))
    {
LABEL_42:
      __break(1u);
    }

    sub_2644EAC3C();
    swift_allocObject();
    v48 = sub_2644EABDC();

    v42 = v48;
  }

  if (v43 < v63)
  {
    goto LABEL_38;
  }

  sub_2644C206C(a8, a9);
  sub_2644C206C(a2, a3);
  sub_2644C206C(a4, v41);
  sub_2644C206C(v26, a7);

  result = sub_2644EABFC();
  if (result)
  {
    v49 = result;
    v50 = sub_2644EAC2C();
    v51 = v63 - v50;
    if (!__OFSUB__(v63, v50))
    {
      v52 = sub_2644EAC1C();
      if (v52 >= v43 - v63)
      {
        v53 = v43 - v63;
      }

      else
      {
        v53 = v52;
      }

      v25 = a8;
      v47 = a4;
      sub_2644CAF3C(v49 + v51, v49 + v51 + v53, a2, a3, a4, v74, v26, a7, &v86, a8, a9);
      v62 = v42 | 0x4000000000000000;
      if (v77)
      {
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(v26, a7);
        v22 = v74;
        sub_2644C20C0(a4, v74);
        sub_2644C20C0(a2, a3);

        sub_2644C20C0(a2, a3);
        sub_2644C20C0(a4, v74);
        sub_2644C20C0(v26, a7);
        sub_2644C20C0(a8, a9);
        sub_2644C20C0(a2, a3);
        *a1 = v63;
        a1[1] = v62;
        v12 = a4;
        v9 = a7;
        v15 = a9;
        goto LABEL_33;
      }

      sub_2644C20C0(a8, a9);
      sub_2644C20C0(v26, a7);
      sub_2644C20C0(a4, v74);
      sub_2644C20C0(a2, a3);

      v12 = v86;
      sub_2644C20C0(a2, a3);
      sub_2644C20C0(a4, v74);
      sub_2644C20C0(v26, a7);
      sub_2644C20C0(a8, a9);
      sub_2644C20C0(a2, a3);
      *a1 = v63;
      a1[1] = v62;
      v22 = v74;
      v9 = a7;
      v15 = a9;
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_2644D1C84()
{
  result = qword_27FF6F938;
  if (!qword_27FF6F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F938);
  }

  return result;
}

unint64_t sub_2644D1CDC()
{
  result = qword_27FF6F940;
  if (!qword_27FF6F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F940);
  }

  return result;
}

unint64_t sub_2644D1D34()
{
  result = qword_27FF6F948;
  if (!qword_27FF6F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F948);
  }

  return result;
}

unint64_t sub_2644D1D8C()
{
  result = qword_27FF6F950;
  if (!qword_27FF6F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2644D1F80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2644D1FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2644D2040()
{
  result = qword_27FF6F958;
  if (!qword_27FF6F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F958);
  }

  return result;
}

unint64_t sub_2644D2094()
{
  result = qword_27FF6F960;
  if (!qword_27FF6F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F960);
  }

  return result;
}

uint64_t sub_2644D212C()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF715F8);
  __swift_project_value_buffer(v0, qword_27FF715F8);
  return sub_2644EADFC();
}

uint64_t AsynchronousCache.__allocating_init(timeout:timeoutError:fetchBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  AsynchronousCache.init(timeout:timeoutError:fetchBlock:)(a1, a2, a3, a4);
  return v8;
}

double *AsynchronousCache.init(timeout:timeoutError:fetchBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v7 = *v4;
  v8 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2644EB55C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F878, &unk_2644ED920);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v4 + 2) = v14;
  sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D85268], v10);
  sub_2644EB08C();
  v25 = MEMORY[0x277D84F90];
  sub_2644D2618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  *(v4 + 3) = sub_2644EB59C();
  *(v4 + 4) = sub_2644EB13C();
  v15 = *(*v4 + 168);
  v16 = *(*&v7 + 96);
  sub_2644EAF5C();
  *(v5 + v15) = sub_2644EB13C();
  v17 = *(*v5 + 176);
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();
  *(v5 + v17) = sub_2644EB13C();
  v18 = *(*v5 + 184);
  sub_2644EAEDC();
  *(v5 + v18) = sub_2644EB13C();
  v5[5] = a4;
  (*(*(v16 - 8) + 32))(v5 + *(*v5 + 152), v22, v16);
  v19 = (v5 + *(*v5 + 160));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  return v5;
}

unint64_t sub_2644D2618()
{
  result = qword_2814AC6A8;
  if (!qword_2814AC6A8)
  {
    sub_2644EB4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC6A8);
  }

  return result;
}

uint64_t sub_2644D2670(uint64_t a1)
{
  sub_2644EAECC();
  sub_2644EADDC();
  return v2;
}

uint64_t sub_2644D2728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v116 = a2;
  v115 = a3;
  v113 = *a1;
  v3 = v113;
  v4 = v113[10];
  v114 = *(v4 - 1);
  v5 = *(v114 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v105 = &v97[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v6);
  v111 = &v97[-v8];
  MEMORY[0x28223BE20](v7);
  v108 = &v97[-v9];
  v10 = v3[11];
  v112 = sub_2644EB60C();
  v106 = *(v112 - 1);
  v11 = MEMORY[0x28223BE20](v112);
  v13 = &v97[-v12];
  v14 = *(v10 - 1);
  v15 = MEMORY[0x28223BE20](v11);
  v110 = &v97[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v97[-v18];
  v109 = v19;
  MEMORY[0x28223BE20](v17);
  v21 = &v97[-v20];
  swift_beginAccess();
  v22 = v3[13];

  sub_2644EB1AC();

  if ((*(v14 + 48))(v13, 1, v10) == 1)
  {
    (*(v106 + 8))(v13, v112);
    swift_beginAccess();
    v23 = v113[12];
    v24 = v113[14];
    v25 = sub_2644EAF5C();

    v113 = v25;
    sub_2644EB1AC();

    v26 = v118[0];
    v27 = v4;
    if (v118[0])
    {
      v28 = v116;
      if (qword_27FF6F5C0 != -1)
      {
        swift_once();
      }

      v29 = sub_2644EAE0C();
      __swift_project_value_buffer(v29, qword_27FF715F8);
      v30 = v114;
      v31 = *(v114 + 16);
      v32 = v105;
      v31(v105, v28, v4);
      v33 = sub_2644EADEC();
      v34 = sub_2644EB48C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v116 = v26;
        v36 = v35;
        v112 = swift_slowAlloc();
        v118[0] = v112;
        *v36 = 136315138;
        v31(v111, v32, v4);
        v37 = sub_2644EB23C();
        v39 = v38;
        (*(v30 + 8))(v32, v4);
        v40 = sub_2644B73B8(v37, v39, v118);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_2644B1000, v33, v34, "already have a request in-flight for %s -- returning existing future", v36, 0xCu);
        v41 = v112;
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x26673AD40](v41, -1, -1);
        v42 = v36;
        v26 = v116;
        MEMORY[0x26673AD40](v42, -1, -1);
      }

      else
      {

        (*(v30 + 8))(v32, v4);
      }

      v118[0] = v26;
      swift_getWitnessTable();
      v75 = sub_2644EAF7C();
    }

    else
    {
      v77 = swift_allocObject();
      v112 = v77;
      v77[2] = 0;
      v110 = v77 + 2;
      v78 = swift_allocObject();
      v106 = v22;
      v79 = v78;
      swift_weakInit();
      v80 = v114;
      v107 = v10;
      v81 = *(v114 + 16);
      v108 = (v114 + 16);
      v109 = v81;
      v81(v111, v116, v4);
      v82 = (*(v80 + 80) + 64) & ~*(v80 + 80);
      v83 = (v5 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      v85 = v27;
      v86 = v107;
      v84[2] = v27;
      v84[3] = v86;
      v87 = v106;
      v84[4] = v23;
      v84[5] = v87;
      v84[6] = v24;
      v84[7] = v79;
      v88 = v84 + v82;
      v89 = v111;
      v90 = v85;
      (*(v80 + 32))(v88, v111);
      *(v84 + v83) = v112;

      v91 = sub_2644EAF6C();
      v92 = v89;
      v93 = v116;
      v94 = v109;
      v109(v92, v116, v90);
      v117 = v91;
      v114 = v91;
      swift_beginAccess();
      sub_2644EB18C();

      v95 = v111;
      sub_2644EB1BC();
      swift_endAccess();
      v94(v95, v93, v90);
      v96 = v110;
      swift_beginAccess();
      v119[5] = *v96;
      swift_beginAccess();
      sub_2644EAEDC();
      sub_2644EB18C();

      sub_2644EB1BC();
      swift_endAccess();
      v117 = v114;
      swift_getWitnessTable();
      v75 = sub_2644EAF7C();
    }
  }

  else
  {
    v43 = v116;
    v106 = v22;
    v112 = v4;
    v44 = *(v14 + 32);
    v102 = v14 + 32;
    v101 = v44;
    v44(v21, v13, v10);
    if (qword_27FF6F5C0 != -1)
    {
      swift_once();
    }

    v45 = sub_2644EAE0C();
    __swift_project_value_buffer(v45, qword_27FF715F8);
    v46 = v114;
    v47 = *(v114 + 16);
    v48 = v108;
    v47(v108, v43, v112);
    v116 = v14;
    v49 = *(v14 + 16);
    v50 = v107;
    v103 = v21;
    v105 = (v14 + 16);
    v104 = v49;
    v49(v107, v21, v10);
    v51 = sub_2644EADEC();
    v52 = sub_2644EB48C();
    v53 = v10;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v99 = v51;
      v55 = v54;
      v100 = swift_slowAlloc();
      v119[0] = v100;
      *v55 = 136315394;
      v98 = v52;
      v56 = v112;
      v47(v111, v48, v112);
      v57 = sub_2644EB23C();
      v59 = v58;
      (*(v46 + 8))(v48, v56);
      v60 = sub_2644B73B8(v57, v59, v119);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = v110;
      v104(v110, v50, v53);
      v62 = sub_2644EB23C();
      v64 = v63;
      v111 = *(v116 + 8);
      (v111)(v50, v53);
      v65 = sub_2644B73B8(v62, v64, v119);

      *(v55 + 14) = v65;
      v66 = v99;
      _os_log_impl(&dword_2644B1000, v99, v98, "already have a cached value for %s -- %s", v55, 0x16u);
      v67 = v100;
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v67, -1, -1);
      MEMORY[0x26673AD40](v55, -1, -1);

      v68 = v113;
    }

    else
    {

      v111 = *(v116 + 8);
      (v111)(v50, v10);
      (*(v46 + 8))(v48, v112);
      v68 = v113;
      v61 = v110;
    }

    v69 = v68[12];
    v70 = v68[14];
    sub_2644EAF5C();
    v71 = v103;
    v104(v61, v103, v53);
    v72 = (*(v116 + 80) + 56) & ~*(v116 + 80);
    v73 = swift_allocObject();
    *(v73 + 2) = v112;
    *(v73 + 3) = v53;
    v74 = v106;
    *(v73 + 4) = v69;
    *(v73 + 5) = v74;
    *(v73 + 6) = v70;
    v101(&v73[v72], v61, v53);
    v119[0] = sub_2644EAF6C();
    swift_getWitnessTable();
    v75 = sub_2644EAF7C();

    result = (v111)(v71, v53);
  }

  *v115 = v75;
  return result;
}

uint64_t sub_2644D3408(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_2644EBABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  (*(*(a5 - 8) + 16))(&v16 - v13, a3, a5);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return (*(v12 + 8))(v14, v11);
}

void *sub_2644D353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v74 = a5;
  v76 = a4;
  v64 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F858, "$1");
  MEMORY[0x28223BE20](v14 - 8);
  v73 = &v57 - v15;
  v77 = a10;
  v78 = a7;
  v75 = a8;
  v16 = sub_2644EAECC();
  v17 = sub_2644B4694(255, &qword_27FF6F868, 0x277CBEB88);
  WitnessTable = swift_getWitnessTable();
  v19 = sub_2644C0CB0(&qword_27FF6F870, &qword_27FF6F868, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v72 = v16;
  v82 = v16;
  v83 = v17;
  v70 = WitnessTable;
  v84 = WitnessTable;
  v85 = v19;
  v20 = sub_2644EAE7C();
  v21 = sub_2644B4694(255, &qword_2814AC6A0, 0x277D85C78);
  v22 = swift_getWitnessTable();
  v23 = sub_2644C0CB0(&unk_2814AC428, &qword_2814AC6A0, 0x277D85C78, MEMORY[0x277D85228]);
  v82 = v20;
  v83 = v21;
  v84 = v22;
  v85 = v23;
  v24 = sub_2644EAEBC();
  v68 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v67 = &v57 - v25;
  v26 = swift_getWitnessTable();
  v82 = v24;
  v83 = v21;
  v71 = v21;
  v66 = v26;
  v84 = v26;
  v85 = v23;
  v69 = v23;
  v27 = sub_2644EAEBC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v63 = &v57 - v30;
  v31 = a6;
  v32 = *(a6 - 8);
  MEMORY[0x28223BE20](v29);
  v65 = v33;
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = result;
    v62 = v27;
    v58 = v32;
    v60 = *(v32 + 16);
    v61 = v32 + 16;
    v60(v34, v76, v31);
    v37 = swift_allocObject();
    v38 = v78;
    v37[2] = v31;
    v37[3] = v38;
    v37[4] = v75;
    v37[5] = a9;
    v59 = a9;
    v37[6] = v77;
    v37[7] = v64;
    v37[8] = a2;
    v80 = sub_2644D68EC;
    v81 = v37;
    v64 = v28;
    swift_beginAccess();
    sub_2644EBABC();
    swift_getFunctionTypeMetadata1();
    sub_2644EB18C();

    sub_2644EB1BC();
    swift_endAccess();
    v39 = v76;
    v79 = (*(v36 + *(*v36 + 160)))(v76);
    v40 = v36[3];

    v57 = v34;
    v41 = v58;
    v42 = v67;
    Publisher.timeout(_:queue:customError:)(v40, sub_2644D6914, v36, v72, v70, v67);

    v79 = v36[3];
    v43 = v79;
    v44 = sub_2644EB53C();
    v45 = v73;
    (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
    v46 = v43;
    v47 = v63;
    sub_2644EAFFC();
    sub_2644D6970(v45);

    (*(v68 + 8))(v42, v24);
    v48 = v57;
    v60(v57, v39, v31);
    v49 = (*(v41 + 80) + 64) & ~*(v41 + 80);
    v50 = swift_allocObject();
    v51 = v78;
    *(v50 + 2) = v31;
    *(v50 + 3) = v51;
    v52 = v59;
    *(v50 + 4) = v75;
    *(v50 + 5) = v52;
    *(v50 + 6) = v77;
    *(v50 + 7) = v36;
    (*(v41 + 32))(&v50[v49], v48, v31);

    v53 = v62;
    v54 = swift_getWitnessTable();
    v55 = Publisher.futureSink(_:)(sub_2644D69D8, v50, v53, v54);

    (*(v64 + 8))(v47, v53);
    v56 = v74;
    swift_beginAccess();
    *(v56 + 16) = v55;
  }

  return result;
}

uint64_t sub_2644D3D34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a3;
  v54 = *a1;
  v5 = v54;
  v55 = a4;
  v6 = *(v54 + 80);
  v50 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v9;
  v10 = *(v5 + 88);
  v11 = sub_2644EB60C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  swift_beginAccess();

  sub_2644EB1AC();

  v49 = *(v10 - 8);
  v17 = (*(v49 + 48))(v16, 1, v10);
  result = (*(v12 + 8))(v16, v11);
  if (v17 != 1)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  sub_2644EAF5C();

  sub_2644EB1AC();

  if (v57)
  {
    goto LABEL_3;
  }

  v19 = a2;
  swift_beginAccess();
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();

  sub_2644EB1AC();

  if (v57)
  {
    result = sub_2644B3C64(v57, v58);
    goto LABEL_6;
  }

  swift_beginAccess();
  sub_2644EAEDC();

  sub_2644EB1AC();

  if (v56[0])
  {
LABEL_3:

LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  v47 = v10;
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v21 = sub_2644EAE0C();
  __swift_project_value_buffer(v21, qword_27FF715F8);
  v22 = v50;
  v23 = v48;
  v54 = *(v50 + 16);
  (v54)(v48, a2, v6);
  v24 = sub_2644EADEC();
  v46 = sub_2644EB47C();
  v25 = os_log_type_enabled(v24, v46);
  v26 = v6;
  v27 = v53;
  if (v25)
  {
    v28 = swift_slowAlloc();
    v44 = v24;
    v29 = v28;
    v45 = swift_slowAlloc();
    v56[0] = v45;
    *v29 = 136315138;
    (v54)(v27, v23, v26);
    v30 = sub_2644EB23C();
    v31 = v22;
    v32 = v30;
    v33 = v19;
    v35 = v34;
    (*(v31 + 8))(v23, v26);
    v36 = sub_2644B73B8(v32, v35, v56);
    v19 = v33;
    v27 = v53;

    v37 = v29;
    *(v29 + 4) = v36;
    v38 = v44;
    v39 = v37;
    _os_log_impl(&dword_2644B1000, v44, v46, "Inserting cached value for: %s", v37, 0xCu);
    v40 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26673AD40](v40, -1, -1);
    MEMORY[0x26673AD40](v39, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v23, v26);
  }

  (v54)(v27, v19, v26);
  v41 = v49;
  v42 = v51;
  v43 = v47;
  (*(v49 + 16))(v51, v52, v47);
  v20 = 1;
  (*(v41 + 56))(v42, 0, 1, v43);
  swift_beginAccess();
  sub_2644EB18C();
  sub_2644EB1BC();
  result = swift_endAccess();
LABEL_7:
  *v55 = v20;
  return result;
}

uint64_t sub_2644D44B0(_BYTE *a1, void *a2)
{
  v35 = *a2;
  v4 = *(v35 + 88);
  v5 = sub_2644EB60C();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v34 = &v28[-v7];
  v8 = *(v35 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-v13];
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v15 = sub_2644EAE0C();
  __swift_project_value_buffer(v15, qword_27FF715F8);
  v16 = *(v9 + 16);
  v33 = a1;
  v37 = v16;
  v16(v14, a1, v8);
  v17 = sub_2644EADEC();
  v18 = sub_2644EB47C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a2;
    v20 = v19;
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v20 = 136315138;
    v29 = v18;
    v21 = v12;
    v37(v12, v14, v8);
    v22 = sub_2644EB23C();
    v31 = v4;
    v24 = v23;
    (*(v9 + 8))(v14, v8);
    v25 = sub_2644B73B8(v22, v24, v36);
    v4 = v31;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2644B1000, v17, v29, "Removing cached value for: %s", v20, 0xCu);
    v26 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26673AD40](v26, -1, -1);
    MEMORY[0x26673AD40](v20, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
    v21 = v12;
  }

  v37(v21, v33, v8);
  (*(*(v4 - 8) + 56))(v34, 1, 1, v4);
  swift_beginAccess();
  sub_2644EB18C();
  sub_2644EB1BC();
  return swift_endAccess();
}

uint64_t sub_2644D48FC(void *a1)
{
  if (qword_27FF6F5C0 != -1)
  {
    swift_once();
  }

  v1 = sub_2644EAE0C();
  __swift_project_value_buffer(v1, qword_27FF715F8);
  v2 = sub_2644EADEC();
  v3 = sub_2644EB47C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2644B1000, v2, v3, "Flushing cache.", v4, 2u);
    MEMORY[0x26673AD40](v4, -1, -1);
  }

  swift_beginAccess();
  sub_2644EB18C();
  sub_2644EB17C();
  return swift_endAccess();
}

uint64_t sub_2644D4AD0(uint64_t *a1, uint64_t a2, void *a3)
{
  v54 = a3;
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = sub_2644EB60C();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - v9;
  v10 = *(v5 + 80);
  v51 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v46 - v13;
  v14 = sub_2644EBABC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = &v46 - v19;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();

  v56 = a2;
  v52 = v10;
  sub_2644EB1AC();

  v20 = v55[0];
  if (v55[0])
  {
    v21 = v55[1];
    v22 = v54;
    (*(v15 + 16))(v18, v54, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v15 + 8))(v18, v14);
      v23 = v56;
    }

    else
    {
      v41 = v47;
      v42 = v48;
      (*(v48 + 32))(v47, v18, v6);
      v43 = *(v51 + 16);
      v23 = v56;
      v51 = v21;
      v43(v53, v56, v52);
      v44 = v49;
      (*(v42 + 16))(v49, v41, v6);
      (*(v42 + 56))(v44, 0, 1, v6);
      swift_beginAccess();
      v21 = v51;
      sub_2644EB18C();
      sub_2644EB1BC();
      swift_endAccess();
      (*(v42 + 8))(v41, v6);
      v22 = v54;
    }

    v20(v22);
    sub_2644B3C64(v20, v21);
  }

  else
  {
    v24 = v50;
    if (qword_27FF6F5C0 != -1)
    {
      swift_once();
    }

    v25 = sub_2644EAE0C();
    __swift_project_value_buffer(v25, qword_27FF715F8);
    v26 = v51;
    v27 = v52;
    v28 = *(v51 + 16);
    v23 = v56;
    v28(v24, v56, v52);
    v29 = sub_2644EADEC();
    v30 = sub_2644EB49C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55[0] = v54;
      *v31 = 136315138;
      LODWORD(v49) = v30;
      v32 = v24;
      v28(v53, v24, v27);
      v33 = sub_2644EB23C();
      v34 = v27;
      v35 = v33;
      v37 = v36;
      (*(v26 + 8))(v32, v34);
      v38 = sub_2644B73B8(v35, v37, v55);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_2644B1000, v29, v49, "Expected inFlightPromise for key: %s", v31, 0xCu);
      v39 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x26673AD40](v39, -1, -1);
      v40 = v31;
      v23 = v56;
      MEMORY[0x26673AD40](v40, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v24, v27);
    }
  }

  return sub_2644D5108(a1, v23);
}

uint64_t sub_2644D5108(uint64_t *a1, uint64_t a2)
{
  v11 = a2;
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v10 - v5;
  v7 = *(v4 + 16);
  v7(v10 - v5);
  v12 = 0;
  swift_beginAccess();
  sub_2644EAF5C();
  v10[1] = *(v2 + 104);
  sub_2644EB18C();
  sub_2644EB1BC();
  swift_endAccess();
  v8 = v11;
  (v7)(v6, v11, v3);
  v12 = 0;
  v13 = 0;
  swift_beginAccess();
  sub_2644EBABC();
  swift_getFunctionTypeMetadata1();
  sub_2644EB18C();
  sub_2644EB1BC();
  swift_endAccess();
  (v7)(v6, v8, v3);
  v12 = 0;
  swift_beginAccess();
  sub_2644EAEDC();
  sub_2644EB18C();
  sub_2644EB1BC();
  return swift_endAccess();
}

id *AsynchronousCache.deinit()
{
  v1 = *v0;

  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 19));

  return v0;
}

uint64_t AsynchronousCache.__deallocating_deinit()
{
  AsynchronousCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2644D5590(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v60 = *a1;
  v4 = v60;
  v5 = *(v60 + 88);
  v6 = sub_2644EB60C();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v59 = v57 - v8;
  v64 = *(v5 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v57 - v12;
  v62 = a1;
  v63 = *(*(v4 + 80) - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v57 - v17;
  v86 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = sub_2644EB60C();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = v57 - v24;
  if (qword_27FF6F5C0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v25 = sub_2644EAE0C();
  __swift_project_value_buffer(v25, qword_27FF715F8);
  v26 = sub_2644EADEC();
  v27 = sub_2644EB47C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2644B1000, v26, v27, "Removing cached value", v28, 2u);
    MEMORY[0x26673AD40](v28, -1, -1);
  }

  v29 = v62;
  swift_beginAccess();
  v30 = v29[4];
  v66 = v13;
  v80 = v18;
  v78 = v23;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = sub_2644EB83C();
    v32 = 0;
    v33 = 0;
    v13 = 0;
    v34 = v31 | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v30 + 32);
    v33 = ~v35;
    v32 = v30 + 64;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v13 = (v37 & *(v30 + 64));
    v34 = v30;
  }

  v18 = TupleTypeMetadata2;
  v83 = (v63 + 32);
  v82 = (v64 + 32);
  v74 = TupleTypeMetadata2 - 8;
  v57[1] = v33;
  v23 = ((v33 + 64) >> 6);
  v71 = (v63 + 16);
  v61 = v64 + 16;
  v73 = (v20 + 32);
  v68 = (v64 + 8);
  v67 = (v63 + 8);
  v58 = (v64 + 56);

  v20 = 0;
  v65 = v16;
  v75 = v34;
  for (i = v32; ; v32 = i)
  {
    v72 = v13;
    if ((v34 & 0x8000000000000000) == 0)
    {
      v38 = v13;
      v39 = v20;
      if (!v13)
      {
        if (v23 <= v20 + 1)
        {
          v40 = (v20 + 1);
        }

        else
        {
          v40 = v23;
        }

        v41 = v40 - 1;
        v42 = v20;
        while (1)
        {
          v39 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v39 >= v23)
          {
            v84 = 0;
            v51 = 1;
            v49 = v78;
            goto LABEL_25;
          }

          v38 = *(v32 + 8 * v39);
          ++v42;
          if (v38)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_21:
      v84 = (v38 - 1) & v38;
      v43 = __clz(__rbit64(v38)) | (v39 << 6);
      v44 = v80;
      v45 = v86;
      (*(v63 + 16))(v80, *(v34 + 48) + *(v63 + 72) * v43, v86);
      v46 = *(v34 + 56) + *(v64 + 72) * v43;
      v47 = v66;
      (*(v64 + 16))(v66, v46, v5);
      goto LABEL_24;
    }

    if (sub_2644EB84C())
    {
      v44 = v80;
      v45 = v86;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v47 = v66;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v39 = v20;
      v84 = v13;
LABEL_24:
      v48 = *(TupleTypeMetadata2 + 48);
      v49 = v78;
      v50 = v44;
      v18 = TupleTypeMetadata2;
      (*v83)(v78, v50, v45);
      (*v82)(&v49[v48], v47, v5);
      v51 = 0;
      v41 = v39;
      v16 = v65;
      goto LABEL_25;
    }

    v51 = 1;
    v41 = v20;
    v84 = v13;
    v49 = v78;
LABEL_25:
    v52 = *(v18 - 1);
    (*(v52 + 56))(v49, v51, 1, v18);
    v53 = v77;
    (*v73)();
    if ((*(v52 + 48))(v53, 1, v18) == 1)
    {
      break;
    }

    v54 = *(v18 + 12);
    v55 = v86;
    (*v83)(v16, v53, v86);
    (*v82)(v85, &v53[v54], v5);
    if (sub_2644EB20C())
    {
      (*v71)(v80, v16, v55);
      (*v58)(v59, 1, 1, v5);
      swift_beginAccess();
      sub_2644EB18C();
      v55 = v86;
      v18 = TupleTypeMetadata2;
      sub_2644EB1BC();
      swift_endAccess();
    }

    (*v68)(v85, v5);
    (*v67)(v16, v55);
    v20 = v41;
    v13 = v84;
    v34 = v75;
  }

  return sub_2644D6810(v75);
}

uint64_t sub_2644D5ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = *a1;
  v4 = *(*a1 + 88);
  v53 = sub_2644EB60C();
  v67 = *(v53 - 8);
  v5 = MEMORY[0x28223BE20](v53);
  v7 = v42 - v6;
  v8 = *(v4 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v52 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = v42 - v12;
  v13 = *(v3 + 80);
  v54 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v50 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - v16;
  v18 = sub_2644EB60C();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v42 - v19;
  v65 = 2651;
  v66 = 0xE200000000000000;
  swift_beginAccess();
  v21 = a1[4];
  v58 = *(v3 + 104);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = v21;
    v23 = sub_2644EB83C();
    v24 = 0;
    v25 = 0;
    v62 = v23 | 0x8000000000000000;
    v21 = v22;
    v26 = 0;
  }

  else
  {
    v27 = -1 << *(v21 + 32);
    v24 = ~v27;
    v26 = v21 + 64;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & *(v21 + 64);
    v62 = v21;
  }

  v60 = (v54 + 56);
  v42[0] = v24;
  v61 = (v24 + 64) >> 6;
  v59 = (v54 + 16);
  v56 = (v8 + 48);
  v57 = (v54 + 32);
  v47 = (v8 + 32);
  v46 = (v8 + 16);
  v45 = (v8 + 8);
  v55 = (v54 + 8);
  v44 = (v67 + 8);
  v42[1] = v21;
  result = swift_bridgeObjectRetain_n();
  v67 = 0;
  v49 = v13;
  v48 = v26;
  v31 = v61;
  v32 = v62;
  if ((v62 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  while (sub_2644EB85C())
  {
    sub_2644EB98C();
    swift_unknownObjectRelease();
    while (1)
    {
      (*v60)(v20, 0, 1, v13);
      (*v57)(v17, v20, v13);
      swift_beginAccess();

      sub_2644EB1AC();

      if ((*v56)(v7, 1, v4) == 1)
      {
        (*v55)(v17, v13);
        result = (*v44)(v7, v53);
      }

      else
      {
        v36 = v51;
        (*v47)(v51, v7, v4);
        (*v59)(v50, v17, v13);
        v63 = sub_2644EB23C();
        v64 = v37;
        MEMORY[0x266739CC0](8250, 0xE200000000000000);
        (*v46)(v52, v36, v4);
        v38 = sub_2644EB23C();
        MEMORY[0x266739CC0](v38);

        MEMORY[0x266739CC0](10, 0xE100000000000000);
        MEMORY[0x266739CC0](v63, v64);
        v13 = v49;

        v39 = v36;
        v26 = v48;
        (*v45)(v39, v4);
        result = (*v55)(v17, v13);
      }

      v31 = v61;
      v32 = v62;
      if ((v62 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_10:
      v33 = v67;
      if (!v25)
      {
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_22;
          }

          v25 = *(v26 + 8 * v34);
          ++v33;
          if (v25)
          {
            v67 = v34;
            goto LABEL_16;
          }
        }

        __break(1u);
        return result;
      }

      v34 = v67;
LABEL_16:
      v35 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v54 + 16))(v20, *(v32 + 48) + *(v54 + 72) * (v35 | (v34 << 6)), v13);
    }
  }

  v32 = v62;
LABEL_22:
  (*v60)(v20, 1, 1, v13);
  sub_2644D6810(v32);
  MEMORY[0x266739CC0](93, 0xE100000000000000);

  v40 = v66;
  v41 = v43;
  *v43 = v65;
  v41[1] = v40;
  return result;
}

uint64_t sub_2644D6620(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_2644D6970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F858, "$1");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644D6A70()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF71610);
  __swift_project_value_buffer(v0, qword_27FF71610);
  return sub_2644EADFC();
}

uint64_t sub_2644D6AEC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_2644D6C4C(v2);
}

uint64_t sub_2644D6BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2644D6C4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_2644D6D60()
{
  sub_2644D8E6C();
}

uint64_t sub_2644D6D88(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t QueuePool.Wrapper.__allocating_init(identifier:blocks:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 96), a1);
  *(v4 + *(*v4 + 104)) = a2;
  return v4;
}

uint64_t QueuePool.Wrapper.init(identifier:blocks:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

uint64_t QueuePool.Wrapper.__allocating_init(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F968, &qword_2644ED9A8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2644ED0A0;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v11 + 32) = sub_2644B3F34;
  *(v11 + 40) = v12;
  (*(v8 + 8))(a1, v7);
  return QueuePool.Wrapper.__allocating_init(identifier:blocks:)(v10, v11);
}

uint64_t QueuePool.Wrapper.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t QueuePool.Wrapper.__deallocating_deinit()
{
  QueuePool.Wrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2644D7204()
{
  sub_2644D8E6C();
}

uint64_t QueuePool.__allocating_init(name:workers:completionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_2644D8EBC(a1, a2, a3, a4);

  return v8;
}

uint64_t QueuePool.init(name:workers:completionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_2644D8EBC(a1, a2, a3, a4);

  return v5;
}

void sub_2644D72F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = sub_2644EB06C();
  v58 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2644EB0AC();
  v57 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  v12 = dispatch_group_create();
  v13 = v4[5];
  v14 = v4[3];
  v65 = v4[2];
  v66 = v14;

  v67 = v12;
  dispatch_group_enter(v12);
  v59 = v4;
  v15 = v4[4];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v52 = v13;
  v53 = a1;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v16 = v15 - 1;
  if (v15 == 1)
  {
    goto LABEL_14;
  }

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v59[6];
  v64 = (v17 & 0xC000000000000001);
  if ((v17 & 0xC000000000000001) == 0)
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 < 2 || v15 > v18)
    {
      goto LABEL_22;
    }
  }

  v62 = &v75;
  v61 = (v58 + 8);
  v60 = (v57 + 8);
  v20 = 5;
  v63 = v17;
  do
  {
    dispatch_group_enter(v11);
    if (v64)
    {
      v21 = MEMORY[0x26673A200](v20 - 4, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v20);
    }

    v22 = v21;
    v23 = swift_allocObject();
    v24 = v65;
    v25 = v66;
    v23[2] = v11;
    v23[3] = v24;
    v23[4] = v25;
    v23[5] = v20 - 4;
    v26 = v67;
    v23[6] = v67;
    v77 = sub_2644D923C;
    v78 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_2644BD140;
    v76 = &block_descriptor_3;
    v27 = _Block_copy(&aBlock);

    v28 = v11;
    v29 = v26;
    v30 = v68;
    sub_2644EB08C();
    v72 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v31 = v11;
    v32 = v69;
    v33 = v71;
    sub_2644EB6CC();
    MEMORY[0x266739FD0](0, v30, v32, v27);
    _Block_release(v27);

    v34 = v32;
    v11 = v31;
    (*v61)(v34, v33);
    (*v60)(v30, v70);

    ++v20;
    --v16;
    v17 = v63;
  }

  while (v16);
LABEL_14:
  v35 = v59[6];
  if ((v35 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v64 = MEMORY[0x26673A200](0);
    v36 = v56;
    v37 = v55;
    v38 = v54;
    v39 = v53;
    v40 = v52;
    goto LABEL_17;
  }

  v36 = v56;
  v37 = v55;
  v38 = v54;
  v39 = v53;
  v40 = v52;
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v64 = *(v35 + 32);
LABEL_17:
    v41 = swift_allocObject();
    v42 = v66;
    v41[2] = v65;
    v41[3] = v42;
    v41[4] = v11;
    v41[5] = v39;
    v43 = v67;
    v41[6] = v38;
    v41[7] = v43;
    v41[8] = v37;
    v41[9] = v36;
    v41[10] = v40;
    v77 = sub_2644D924C;
    v78 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_2644BD140;
    v76 = &block_descriptor_9;
    v44 = _Block_copy(&aBlock);
    v45 = v11;
    v46 = v43;

    sub_2644D9284(v37, v36);
    v47 = v40;
    v48 = v68;
    sub_2644EB08C();
    v72 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v49 = v69;
    v50 = v71;
    sub_2644EB6CC();
    v51 = v64;
    MEMORY[0x266739FD0](0, v48, v49, v44);
    _Block_release(v44);

    (*(v58 + 8))(v49, v50);
    (*(v57 + 8))(v48, v70);

    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_2644D7998(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  dispatch_group_leave(a1);
  if (qword_27FF6F5C8 != -1)
  {
    swift_once();
  }

  v7 = sub_2644EAE0C();
  __swift_project_value_buffer(v7, qword_27FF71610);

  v8 = sub_2644EADEC();
  v9 = sub_2644EB48C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2644B73B8(a2, a3, &v16);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a4;
    _os_log_impl(&dword_2644B1000, v8, v9, "%s-workQueue-%ld: >>> wait on barrierGroup", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26673AD40](v11, -1, -1);
    MEMORY[0x26673AD40](v10, -1, -1);
  }

  sub_2644EB4CC();

  oslog = sub_2644EADEC();
  v12 = sub_2644EB48C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2644B73B8(a2, a3, &v16);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&dword_2644B1000, oslog, v12, "%s-workQueue-%ld: <<< wait on barrierGroup", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26673AD40](v14, -1, -1);
    MEMORY[0x26673AD40](v13, -1, -1);
  }
}

void sub_2644D7BF4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v45 = a5;
  v47 = a6;
  v48 = a7;
  v46 = a4;
  v10 = sub_2644EB06C();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2644EB0AC();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF6F5C8 != -1)
  {
    swift_once();
  }

  v14 = sub_2644EAE0C();
  __swift_project_value_buffer(v14, qword_27FF71610);

  v15 = sub_2644EADEC();
  v16 = sub_2644EB48C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v15, v16, "%s-workQueue-0: >>> wait on enterGroup", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26673AD40](v18, -1, -1);
    MEMORY[0x26673AD40](v17, -1, -1);
  }

  sub_2644EB4CC();

  v19 = sub_2644EADEC();
  v20 = sub_2644EB48C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v19, v20, "%s-workQueue-0: <<< wait on enterGroup", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26673AD40](v22, -1, -1);
    MEMORY[0x26673AD40](v21, -1, -1);
  }

  v23 = sub_2644EADEC();
  v24 = sub_2644EB48C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v23, v24, "%s-workQueue-0: >>> Executing barrier block", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26673AD40](v26, -1, -1);
    MEMORY[0x26673AD40](v25, -1, -1);
  }

  v46();

  v27 = sub_2644EADEC();
  v28 = sub_2644EB48C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_2644B73B8(a1, a2, aBlock);
    _os_log_impl(&dword_2644B1000, v27, v28, "%s-workQueue-0: <<< Executing barrier block", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26673AD40](v30, -1, -1);
    MEMORY[0x26673AD40](v29, -1, -1);
  }

  dispatch_group_leave(v47);
  v31 = v48;
  if (v48)
  {
    v32 = swift_allocObject();
    v33 = v44;
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    aBlock[4] = sub_2644B3F34;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644BD140;
    aBlock[3] = &block_descriptor_43;
    v34 = _Block_copy(aBlock);
    sub_2644D9284(v31, v33);

    v35 = v38;
    sub_2644EB08C();
    v49 = MEMORY[0x277D84F90];
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v36 = v39;
    v37 = v43;
    sub_2644EB6CC();
    MEMORY[0x266739FD0](0, v35, v36, v34);
    _Block_release(v34);
    sub_2644B3C64(v31, v33);
    (*(v42 + 8))(v36, v37);
    (*(v40 + 8))(v35, v41);
  }
}

void sub_2644D827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a3;
  v44 = a2;
  v57 = sub_2644EB06C();
  v46 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2644EB0AC();
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v42 - v14;
  (*(a5 + 24))(a4, a5);
  swift_getAssociatedConformanceWitness();
  v16 = sub_2644EB1EC();
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v17 = v6[4];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v16 % v17;
  if (((v16 % v17) & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v6[6];
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v20 = v11;
    v21 = MEMORY[0x26673A200]();
    goto LABEL_6;
  }

  if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v20 = v11;
  v21 = *(v19 + 8 * v18 + 32);
LABEL_6:
  v49 = v21;
  v42 = v6[5];
  v47 = (*(a5 + 32))(a4, a5);
  v22 = *(v47 + 16);
  v23 = MEMORY[0x277D84F90];
  v24 = v57;
  v25 = v53;
  v26 = v48;
  if (v22)
  {
    v27 = (v47 + 32);
    v52 = &v61;
    v51 = (v46 + 8);
    v50 = (v45 + 8);
    do
    {
      v57 = v22;
      v28 = swift_allocObject();
      v54 = *v27;
      v56 = v27 + 1;
      *(v28 + 16) = v54;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_2644D9294;
      *(v29 + 24) = v28;
      v63 = sub_2644B3F04;
      v64 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = sub_2644BD140;
      v62 = &block_descriptor_18;
      v55 = _Block_copy(&aBlock);

      sub_2644EB08C();
      v58 = v23;
      sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
      sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
      sub_2644EB6CC();
      v30 = v55;
      MEMORY[0x266739FD0](0, v20, v26, v55);
      v27 = v56;
      v25 = v53;
      _Block_release(v30);

      (*v51)(v26, v24);
      (*v50)(v20, v25);

      v22 = v57 - 1;
    }

    while (v57 != 1);
  }

  v31 = v44;
  if (v44)
  {
    v32 = v24;
    v33 = swift_allocObject();
    v34 = v42;
    v33[2] = v42;
    v33[3] = v31;
    v35 = v43;
    v33[4] = v43;
    v63 = sub_2644D92BC;
    v64 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_2644BD140;
    v62 = &block_descriptor_24_0;
    v36 = v23;
    v37 = _Block_copy(&aBlock);
    sub_2644D9284(v31, v35);
    sub_2644D9284(v31, v35);
    v38 = v34;
    v39 = v20;
    sub_2644EB08C();
    v58 = v36;
    sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v40 = v48;
    sub_2644EB6CC();
    v41 = v49;
    MEMORY[0x266739FD0](0, v39, v40, v37);

    _Block_release(v37);
    sub_2644B3C64(v31, v35);
    (*(v46 + 8))(v40, v32);
    (*(v45 + 8))(v39, v25);
  }

  else
  {
  }
}

uint64_t sub_2644D89BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = sub_2644EB06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2644EB0AC();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_37;
  v13 = _Block_copy(aBlock);

  sub_2644EB08C();
  v18 = MEMORY[0x277D84F90];
  sub_2644D9524(&qword_2814AC1D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t QueuePool.deinit()
{

  return v0;
}

uint64_t QueuePool.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t QueuePool.description.getter()
{
  v1 = type metadata accessor for QueuePool();
  v3 = sub_2644D9524(&qword_27FF6F970, v2, type metadata accessor for QueuePool, &protocol conformance descriptor for QueuePool);
  v4 = sub_2644EB92C();
  MEMORY[0x266739CC0](v4);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  v5 = MEMORY[0x26673A380](v1, v3);
  MEMORY[0x266739CC0](v5);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  MEMORY[0x266739CC0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x266739CC0](58, 0xE100000000000000);
  v6 = sub_2644EB94C();
  MEMORY[0x266739CC0](v6);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2644D8E6C()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2644D8EBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v30);
  v28 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v10 - 8);
  v27 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2644EB55C();
  v12 = *(v29 - 8);
  result = MEMORY[0x28223BE20](v29);
  v26 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 2)
  {
    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v24 = a1;
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
    v20 = v4;
    v23 = sub_2644B2D18();
    v22 = *MEMORY[0x277D85268];
    v21 = (v12 + 104);
    v25 = a2;

    v15 = a4;
    v16 = 0;
    v17 = v26;
    do
    {
      v32 = v24;
      v33 = v25;

      MEMORY[0x266739CC0](0x6575516B726F772DLL, 0xEB000000002D6575);
      v31 = v16;
      v18 = sub_2644EB94C();
      MEMORY[0x266739CC0](v18);

      (*v21)(v17, v22, v29);
      sub_2644EB08C();
      v32 = MEMORY[0x277D84F90];
      sub_2644D9524(&qword_2814AC6A8, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
      sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
      sub_2644EB6CC();
      sub_2644EB59C();
      MEMORY[0x266739D30]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2644EB30C();
      }

      ++v16;
      sub_2644EB33C();
    }

    while (a3 != v16);
    result = v20;
    *(v20 + 48) = v34;
  }

  return result;
}

uint64_t sub_2644D9284(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2644D9368(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2644D9524(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SimpleThrottle.init(interval:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v25 = a5;
  v29 = sub_2644EB55C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2644EAECC();
  v11 = sub_2644B2D18();
  v24[2] = v10;
  WitnessTable = swift_getWitnessTable();
  v24[1] = WitnessTable;
  v24[0] = sub_2644D9A74(&unk_2814AC428, sub_2644B2D18, MEMORY[0x277D85228]);
  v34 = v10;
  v35 = v11;
  v36 = WitnessTable;
  v37 = v24[0];
  v13 = sub_2644EAE8C();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  sub_2644EAF0C();
  v16 = sub_2644EAEFC();
  *a5 = v16;
  v34 = v16;
  swift_getWitnessTable();
  v34 = sub_2644EAF7C();
  sub_2644EB08C();
  v33 = MEMORY[0x277D84F90];
  sub_2644D9A74(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v29);
  v17 = sub_2644EB59C();
  v33 = v17;
  v18 = v30;
  sub_2644EB01C();

  v19 = swift_allocObject();
  v20 = v31;
  v19[2] = a4;
  v19[3] = v20;
  v19[4] = v32;

  swift_getWitnessTable();
  v21 = sub_2644EB02C();

  v22 = sub_2644EB54C();
  (*(*(v22 - 8) + 8))(v18, v22);
  result = (*(v28 + 8))(v15, v13);
  v25[1] = v21;
  return result;
}

uint64_t sub_2644D9A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644D9B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2644D9B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2644D9B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t XPCSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2814ACCC8;
  v4 = sub_2644EADAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2644D9C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCServiceDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644D9CDC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for XPCServiceDescription(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2644D9C78(Strong + qword_2814ACCC0, v4);

    v6 = &v4[*(v2 + 40)];
    v8 = *v6;
    v7 = v6[1];
    sub_2644D9284(*v6, v7);
    sub_2644DC22C(v4);
    if (v8)
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v8();

        return sub_2644B3C64(v8, v7);
      }

      sub_2644B3C64(v8, v7);
    }
  }

  v12 = sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v13 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2644ED0A0;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F980, &qword_2644EDB88);
  v15 = sub_2644EB23C();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_2644B4744();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2644EADCC(v12, &dword_2644B1000, v13, "Connection interrupted: %@", 26, 2, v14);
}

uint64_t sub_2644D9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v35 = a2;
  v32 = type metadata accessor for XPCServiceDescription(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2644EB06C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2644EB0AC();
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = Strong;
  aBlock[4] = sub_2644DC504;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_43_0;
  v16 = _Block_copy(aBlock);
  v36 = Strong;

  sub_2644EB08C();
  v39 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v34);

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v31;
    sub_2644D9C78(v17 + qword_2814ACCC0, v31);

    v19 = (v18 + *(v32 + 44));
    v20 = *v19;
    v21 = v19[1];
    sub_2644D9284(*v19, v21);
    sub_2644DC22C(v18);
    if (v20)
    {
      swift_beginAccess();
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        v20();

        sub_2644B3C64(v20, v21);
      }

      sub_2644B3C64(v20, v21);
    }
  }

  v25 = sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v26 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2644ED0A0;
  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F980, &qword_2644EDB88);
  v28 = sub_2644EB23C();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2644B4744();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_2644EADCC(v25, &dword_2644B1000, v26, "Connection invalid: %@", 22, 2, v27);
}

uint64_t sub_2644DA430()
{
  v1 = *(*v0 + 80);
  v2 = sub_2644EB60C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = qword_2814ABF20;
  v7 = *(v0 + qword_2814ABF20);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v0 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + v6) = 0;

  (*(*(v1 - 8) + 56))(v5, 1, 1, v1);
  v9 = *(*v0 + 112);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v9, v5, v2);
  return swift_endAccess();
}

uint64_t XPCSession.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCSession.init(service:)(a1);
  return v2;
}

char *XPCSession.init(service:)(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *v1;
  v4 = sub_2644EADAC();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v17 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2644EB55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2814ABF20) = 0;
  (*(*(*(v3 + 80) - 8) + 56))(v2 + *(*v2 + 112), 1, 1);
  v16 = *(*v1 + 120);
  v15[1] = sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  (*(v9 + 104))(v11, *MEMORY[0x277D85268], v8);
  sub_2644EB08C();
  v21 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v12 = sub_2644EB59C();
  v13 = v17;
  *(v2 + v16) = v12;
  sub_2644EAD9C();
  (*(v18 + 32))(v2 + qword_2814ACCC8, v13, v19);
  sub_2644B5C10(v20, v2 + qword_2814ACCC0);
  return v2;
}

uint64_t *XPCSession.deinit()
{
  v1 = sub_2644EB48C();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v2 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2644ED0A0;

  v4 = sub_2644EB23C();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2644B4744();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_2644EADCC(v1, &dword_2644B1000, v2, "Deallocating %@", 15, 2, v3);

  sub_2644DA430();
  v7 = qword_2814ACCC8;
  v8 = sub_2644EADAC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_2644DC22C(v0 + qword_2814ACCC0);

  v9 = *(*v0 + 112);
  v10 = sub_2644EB60C();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return v0;
}

uint64_t XPCSession.__deallocating_deinit()
{
  XPCSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall XPCSession.resume()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC288;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B3F5C;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_4;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall XPCSession.suspend()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC2CC;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B42CC;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_7;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall XPCSession.invalidate()()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2644DC310;
  *(v2 + 24) = v0;
  v4[4] = sub_2644B42CC;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2644B3F0C;
  v4[3] = &block_descriptor_14;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_2644DB09C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = sub_2644EB60C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(v3 + 112);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, &a1[v11], v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v10, 1, v4) == 1)
  {
    (*(v6 + 8))(v10, v5);
    v14 = sub_2644B4A30();
    v15 = [v14 remoteObjectProxy];
    v21 = v12;

    sub_2644EB6AC();
    swift_unknownObjectRelease();
    v16 = v22;
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v16, v17 ^ 1u, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&a1[v11], v16, v5);
    swift_endAccess();
    return v21(v23, &a1[v11], v5);
  }

  else
  {
    v19 = v23;
    (*(v13 + 32))(v23, v10, v4);
    return (*(v13 + 56))(v19, 0, 1, v4);
  }
}

uint64_t XPCSession.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2644DB3C8, 0, 0);
}

uint64_t sub_2644DB3C8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_2644EB60C();
  *v4 = v0;
  v4[1] = sub_2644DB4D0;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000014, 0x80000002644EEB00, sub_2644DC330, v2, v5);
}

uint64_t sub_2644DB4D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2644DB5E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a1;
  v5 = *a2;
  v6 = sub_2644EB06C();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2644EB0AC();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 80);
  sub_2644EB60C();
  v13 = sub_2644EB3BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v25 = *(a2 + *(v5 + 120));
  (*(v14 + 16))(&v22 - v15, v22, v13);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v12;
  *(v18 + 3) = a2;
  v19 = v24;
  *(v18 + 4) = v23;
  *(v18 + 5) = v19;
  (*(v14 + 32))(&v18[v17], v16, v13);
  aBlock[4] = sub_2644DC52C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_49;
  v20 = _Block_copy(aBlock);

  sub_2644EB08C();
  v29 = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v11, v8, v20);
  _Block_release(v20);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v11, v27);
}

uint64_t sub_2644DB9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 80);
  v6 = sub_2644EB60C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_2644B4A30();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644DBC34;
  aBlock[3] = &block_descriptor_52;
  v14 = _Block_copy(aBlock);

  v15 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_2644EB6AC();
  swift_unknownObjectRelease();
  v16 = swift_dynamicCast();
  (*(*(v5 - 8) + 56))(v12, v16 ^ 1u, 1, v5);
  (*(v7 + 16))(v10, v12, v6);
  sub_2644EB3BC();
  sub_2644EB3AC();
  return (*(v7 + 8))(v12, v6);
}

void sub_2644DBC34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2644DBD38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_2644B4A30();
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2644DBC34;
  v14[3] = &block_descriptor_18_0;
  v9 = _Block_copy(v14);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_2644EB6AC();
  swift_unknownObjectRelease();
  v11 = *(v7 + 80);
  v12 = swift_dynamicCast();
  return (*(*(v11 - 8) + 56))(a4, v12 ^ 1u, 1, v11);
}

uint64_t XPCSession.hashValue.getter()
{
  sub_2644EBA7C();
  XPCSession.hash(into:)(v1);
  return sub_2644EBAAC();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F978, &qword_2644EDAB0);
      [v5 addObject_];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_2644EB40C();

  sub_2644EB86C();
  __break(1u);
}

uint64_t XPCSession.debugDescription.getter()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  v3 = sub_2644EB9BC();
  MEMORY[0x266739CC0](v3);

  MEMORY[0x266739CC0](32, 0xE100000000000000);
  v4 = MEMORY[0x26673A410](v1, WitnessTable);
  MEMORY[0x266739CC0](v4);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2644DC22C(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2644DC288()
{
  v0 = sub_2644B4A30();
  [v0 resume];
}

void sub_2644DC2CC()
{
  v0 = sub_2644B4A30();
  [v0 suspend];
}

uint64_t sub_2644DC378(uint64_t a1)
{
  result = sub_2644EADAC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for XPCServiceDescription(319);
    if (v3 <= 0x3F)
    {
      result = sub_2644EB60C();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2644DC504()
{
  if (*(v0 + 24))
  {
    return sub_2644DA430();
  }

  return result;
}

uint64_t sub_2644DC52C()
{
  sub_2644EB60C();
  sub_2644EB3BC();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return sub_2644DB9C4(v1, v2, v3);
}

void sub_2644DC5F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2644DC65C()
{
  v0 = type metadata accessor for _ImmediateScheduler();
  result = swift_allocObject();
  qword_27FF6F9A0 = v0;
  unk_27FF6F9A8 = &off_2875F7530;
  qword_27FF6F988 = result;
  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t (*static Scheduler.immediateScheduler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FF6F5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2644DC994()
{
  v0 = sub_2644EB07C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644B2D18();
  (*(v1 + 104))(v3, *MEMORY[0x277D851C8], v0);
  v4 = sub_2644EB5AC();
  (*(v1 + 8))(v3, v0);
  v5 = type metadata accessor for _QueueScheduler();
  result = swift_allocObject();
  *(result + 16) = v4;
  qword_27FF6F9C8 = v5;
  unk_27FF6F9D0 = &off_2875F7580;
  qword_27FF6F9B0 = result;
  return result;
}

uint64_t (*static Scheduler.globalAsyncScheduler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FF6F5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2644DCB90()
{
  v0 = type metadata accessor for _MainThreadScheduler();
  result = swift_allocObject();
  qword_27FF6F9F0 = v0;
  unk_27FF6F9F8 = &off_2875F7510;
  qword_27FF6F9D8 = result;
  return result;
}

uint64_t sub_2644DCC00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2644BF0F0(a2, a4);
}

uint64_t sub_2644DCC88(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(a3, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*static Scheduler.mainThreadScheduler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FF6F5E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2644DCD88@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2644BF0F0(a2, a4);
}

uint64_t sub_2644DCDF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(a6, a1);
  return swift_endAccess();
}

id static Scheduler.scheduler(with:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for _QueueScheduler();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[3] = v3;
  a2[4] = &off_2875F7580;
  *a2 = v4;

  return a1;
}

uint64_t static Scheduler.serialDispatchQueueScheduler(name:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2644EB55C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2644B2D18();
  sub_2644EB09C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  v11[1] = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v8 = sub_2644EB59C();
  v9 = type metadata accessor for _QueueScheduler();
  result = swift_allocObject();
  *(result + 16) = v8;
  a1[3] = v9;
  a1[4] = &off_2875F7580;
  *a1 = result;
  return result;
}

id static Scheduler.operationQueueScheduler(maxConcurrentOperationCount:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _OperationQueueScheduler();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v5 + 16) = v6;
  result = [v6 setMaxConcurrentOperationCount_];
  a2[3] = v4;
  a2[4] = &off_2875F7560;
  *a2 = v5;
  return result;
}

uint64_t sub_2644DD264()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644DF7A8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_135;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v13;
    v8 = *(v13 + 16);
    if (v8)
    {

      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);

        v10(v11);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_2644DD41C(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  if ((*(a2 + 16) & 1) == 0)
  {
    *(a2 + 16) = 1;
    swift_beginAccess();
    v5 = *(a2 + 24);
    *(a2 + 24) = v3;
    v3 = v5;
  }

  *a1 = v3;
}

uint64_t sub_2644DD494()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644BDE94;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_125;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2644DD5F8(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) == 1)
  {
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2644DF2BC(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2644DF2BC((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_2644B3F5C;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2644DD718()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2644DD77C()
{
  v1 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v1);
  v2 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2644EB55C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  v9[0] = sub_2644B2D18();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_2644EB08C();
  v9[1] = v7;
  sub_2644B2DF4(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  *(v0 + 32) = sub_2644EB59C();
  return v0;
}

uint64_t sub_2644DDA20@<X0>(void (*a1)(void *)@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v6[3] = v4;
  v6[4] = &off_2875F7550;
  v6[0] = sub_2644DD77C();
  a1(v6);
  __swift_destroy_boxed_opaque_existential_0(v6);
  swift_allocObject();
  result = sub_2644DD77C();
  a2[3] = v4;
  a2[4] = &off_2875F7550;
  *a2 = result;
  return result;
}

uint64_t sub_2644DDAC8@<X0>(void (*a1)(id)@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = [objc_opt_self() sleepForTimeInterval_];
  a1(v5);
  v6 = type metadata accessor for CancellationToken();
  swift_allocObject();
  result = sub_2644DD77C();
  a2[3] = v6;
  a2[4] = &off_2875F7550;
  *a2 = result;
  return result;
}

void sub_2644DDB58(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v7 = sub_2644DD77C();
  if ([objc_opt_self() isMainThread])
  {
    v14 = v6;
    v15 = &off_2875F7550;
    v13[0] = v7;

    a1(v13);
    __swift_destroy_boxed_opaque_existential_0(v13);
LABEL_5:
    a3[3] = v6;
    a3[4] = &off_2875F7550;
    *a3 = v7;
    return;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;

  v9 = CFRunLoopGetMain();
  v10 = *MEMORY[0x277CBF058];
  if (*MEMORY[0x277CBF058])
  {
    v11 = v9;
    v15 = sub_2644DF818;
    v16 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2644BD140;
    v14 = &block_descriptor_115;
    v12 = _Block_copy(v13);

    CFRunLoopPerformBlock(v11, v10, v12);
    _Block_release(v12);

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_2644DDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v36 = 0;
  if ([objc_opt_self() isMainThread])
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v34 = sub_2644B3F34;
    v35 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2644DC5F4;
    v33 = &block_descriptor_100;
    v9 = _Block_copy(&aBlock);

    v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:a4];
    _Block_release(v9);
    v11 = 0;
    v12 = 0;
    v36 = v10;
  }

  else
  {
    sub_2644B2D18();
    v13 = sub_2644EB56C();
    v12 = swift_allocObject();
    *(v12 + 16) = &v36;
    *(v12 + 24) = a4;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2644DF744;
    *(v14 + 24) = v12;
    v34 = sub_2644B3F5C;
    v35 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2644B3F0C;
    v33 = &block_descriptor_81;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v13, v15);

    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 = sub_2644DF744;
  }

  v17 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v18 = sub_2644DD77C();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = 0;
  v20 = *(v18 + 32);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = &v29;
  v21[4] = sub_2644DF754;
  v21[5] = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2644DF75C;
  *(v22 + 24) = v21;
  v34 = sub_2644B42CC;
  v35 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2644B3F0C;
  v33 = &block_descriptor_94;
  v23 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v29 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = v11;
    if (Strong)
    {
      v27 = Strong;
      [Strong invalidate];
    }

    else
    {
    }
  }

  else
  {

    v26 = v11;
  }

  a3[3] = v17;
  a3[4] = &off_2875F7550;
  *a3 = v18;

  return sub_2644B3C64(v26, v12);
}

void sub_2644DE1DC(void **a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v13[4] = sub_2644B3F04;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2644DC5F4;
  v13[3] = &block_descriptor_109;
  v10 = _Block_copy(v13);

  v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:a4];
  _Block_release(v10);
  v12 = *a1;
  *a1 = v11;
}

void sub_2644DE304(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_2644DE3D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2644EB06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2644EB0AC();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_2644B3F34;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_72;
  v13 = _Block_copy(aBlock);

  sub_2644EB08C();
  v17 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_2644DE690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v6 = sub_2644EB06C();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2644EB0AC();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v12 = sub_2644DD77C();
  v17 = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_2644DF724;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);

  sub_2644EB08C();
  v22 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);

  v16 = v21;
  v21[3] = v18;
  v16[4] = &off_2875F7550;
  *v16 = v12;
  return result;
}

uint64_t sub_2644DE9A4(uint64_t a1, void (*a2)(void *))
{
  result = sub_2644DD494();
  if ((result & 1) == 0)
  {
    v5[3] = type metadata accessor for CancellationToken();
    v5[4] = &off_2875F7550;
    v5[0] = a1;

    a2(v5);
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

uint64_t sub_2644DEA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a1;
  v31 = a3;
  v28 = sub_2644EB06C();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2644EB0AC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644EB0CC();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v26 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v25 = sub_2644DD77C();
  v22 = *(v4 + 16);
  sub_2644EB0BC();
  sub_2644EB11C();
  v17 = *(v11 + 8);
  v17(v14, v10);
  aBlock[4] = v24;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_60;
  v18 = _Block_copy(aBlock);

  sub_2644EB08C();
  v32 = MEMORY[0x277D84F90];
  sub_2644B2DF4(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  v19 = v28;
  sub_2644EB6CC();
  MEMORY[0x266739F30](v16, v9, v7, v18);
  _Block_release(v18);
  (*(v30 + 8))(v7, v19);
  (*(v27 + 8))(v9, v29);
  v17(v16, v23);

  v21 = v31;
  v31[3] = v26;
  v21[4] = &off_2875F7550;
  *v21 = v25;
  return result;
}

void sub_2644DEE64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v9 = sub_2644DD77C();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v14[4] = sub_2644DF718;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2644BD140;
  v14[3] = &block_descriptor_57;
  v11 = _Block_copy(v14);
  v12 = objc_opt_self();

  v13 = [v12 blockOperationWithBlock_];
  _Block_release(v11);

  [*(v4 + 16) addOperation_];
  a3[3] = v8;
  a3[4] = &off_2875F7550;

  *a3 = v9;
}

uint64_t sub_2644DEFCC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for CancellationToken();
  v6[4] = &off_2875F7550;
  v6[0] = a3;

  a1(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_2644DF038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for CancellationToken();
  swift_allocObject();
  v9 = sub_2644DD77C();
  if (qword_27FF6F5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2644BF0F0(&qword_27FF6F9B0, v16);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = a2;
  v13 = *(v11 + 24);

  v13(v15, sub_2644DF6D4, v12, v10, v11, a4);

  __swift_destroy_boxed_opaque_existential_0(v15);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  a3[3] = v8;
  a3[4] = &off_2875F7550;
  *a3 = v9;
  return result;
}

void sub_2644DF1B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2644BD140;
  v5[3] = &block_descriptor_5;
  v4 = _Block_copy(v5);

  [v3 addOperationWithBlock_];
  _Block_release(v4);
}

void *sub_2644DF2BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F968, &qword_2644ED9A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8D0, &qword_2644EDCF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2644DF3F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA00, &qword_2644EDCF8);
  v10 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2644DF5C8(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    v4 = CFRunLoopGetMain();
    v5 = *MEMORY[0x277CBF058];
    if (*MEMORY[0x277CBF058])
    {
      v6 = v4;
      v8[4] = a1;
      v8[5] = a2;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_2644BD140;
      v8[3] = &block_descriptor_51;
      v7 = _Block_copy(v8);

      CFRunLoopPerformBlock(v6, v5, v7);
      _Block_release(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2644DF6D4()
{
  v1 = *(v0 + 24);
  result = sub_2644DD494();
  if ((result & 1) == 0)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t CustomCodableKeyDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v77 = v58 - v11;
  v13 = *(v12 + 16);
  v62 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v66 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = v58 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_2644EB60C();
  v83 = *(v76 - 8);
  v17 = MEMORY[0x28223BE20](v76);
  v72 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = v58 - v19;
  v68 = a2;
  v79 = sub_2644EB91C();
  v59 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v21 = v58 - v20;
  v22 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v78 = v21;
  v85 = v13;
  result = sub_2644EBB0C();
  if (!v22)
  {
    v24 = v85;
    swift_getTupleTypeMetadata2();
    v25 = sub_2644EB31C();
    v22 = sub_2644E0C04(v25, v24, v6, *(v68 + 40));
  }

  v84 = v6;
  v67 = v9;
  if ((v22 & 0xC000000000000001) != 0)
  {
    result = sub_2644EB83C();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v22 = result | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(v22 + 32);
    v26 = v22 + 64;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v22 + 64);
  }

  v32 = v77;
  v33 = v83;
  v34 = 0;
  v83 = (v62 + 32);
  v35 = (v63 + 32);
  v36 = v81;
  v74 = TupleTypeMetadata2 - 8;
  v58[1] = v27;
  v37 = (v27 + 64) >> 6;
  v61 = v62 + 16;
  v60 = v63 + 16;
  v73 = (v33 + 4);
  v64 = (v63 + 8);
  v65 = (v62 + 8);
  v38 = v85;
  v70 = v26;
  for (i = v22; ; v22 = i)
  {
    v82 = v28;
    v69 = v34;
    if ((v22 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_2644EB84C())
    {
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v41 = v84;
      sub_2644EB98C();
      swift_unknownObjectRelease();
      v40 = v34;
      v85 = v82;
LABEL_23:
      v45 = TupleTypeMetadata2;
      v46 = *(TupleTypeMetadata2 + 48);
      v47 = v72;
      (*v83)();
      (*v35)(&v47[v46], v32, v41);
      v48 = 0;
      v34 = v40;
      goto LABEL_27;
    }

    v48 = 1;
    v85 = v82;
LABEL_26:
    v45 = TupleTypeMetadata2;
    v47 = v72;
LABEL_27:
    v49 = *(v45 - 8);
    (*(v49 + 56))(v47, v48, 1, v45);
    v50 = v75;
    (*v73)(v75, v47, v76);
    if ((*(v49 + 48))(v50, 1, v45) == 1)
    {
      (*(v59 + 8))(v78, v79);
      return sub_2644D6810(i);
    }

    v51 = *(v45 + 48);
    v52 = v66;
    (*v83)(v66, v50, v38);
    v53 = &v50[v51];
    v54 = v38;
    v55 = v67;
    v56 = v84;
    (*v35)(v67, v53, v84);
    v57 = v86;
    sub_2644EB90C();
    v86 = v57;
    if (v57)
    {
      sub_2644D6810(i);
      (*v64)(v55, v56);
      (*v65)(v52, v54);
      return (*(v59 + 8))(v78, v79);
    }

    (*v64)(v55, v56);
    result = (*v65)(v52, v54);
    v28 = v85;
    v38 = v54;
    v32 = v77;
    v36 = v81;
    v26 = v70;
  }

  if (v28)
  {
    v39 = v28;
    v40 = v34;
LABEL_22:
    v85 = (v39 - 1) & v39;
    v44 = __clz(__rbit64(v39)) | (v40 << 6);
    (*(v62 + 16))(v36, *(v22 + 48) + *(v62 + 72) * v44, v38);
    v41 = v84;
    (*(v63 + 16))(v32, *(v22 + 56) + *(v63 + 72) * v44, v84);
    goto LABEL_23;
  }

  if (v37 <= v34 + 1)
  {
    v42 = v34 + 1;
  }

  else
  {
    v42 = v37;
  }

  v43 = v34;
  v34 = v42 - 1;
  while (1)
  {
    v40 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      v85 = 0;
      v48 = 1;
      goto LABEL_26;
    }

    v39 = *(v26 + 8 * v40);
    ++v43;
    if (v39)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CustomCodableKeyDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v28 = a6;
  v29 = a7;
  v30 = a3;
  v31 = a5;
  v27 = a8;
  v32 = sub_2644EB8FC();
  v12 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644EBAEC();
  if (!v8)
  {
    v26 = v12;
    v25[0] = sub_2644EB8EC();
    v25[1] = v25;
    v34 = v25[0];
    MEMORY[0x28223BE20](v25[0]);
    v16 = v30;
    v15 = v31;
    v25[-8] = a2;
    v25[-7] = v16;
    v25[-6] = a4;
    v25[-5] = v15;
    v17 = v29;
    v25[-4] = v28;
    v25[-3] = v17;
    v25[-2] = v14;
    v18 = sub_2644EB38C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F900, &qword_2644EDD00);
    WitnessTable = swift_getWitnessTable();
    v22 = sub_2644E0444(sub_2644E0EF0, &v25[-10], v18, TupleTypeMetadata2, v20, WitnessTable, MEMORY[0x277D84950], &v33);

    v34 = v22;
    sub_2644EB38C();
    swift_getWitnessTable();
    v23 = sub_2644EB16C();
    (*(v26 + 8))(v14, v32);
    *v27 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2644E030C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a6@<X8>, void *a7)
{
  swift_getTupleTypeMetadata2();
  v10 = *(a2 - 8);
  (*(v10 + 16))(a6, a1, a2);
  sub_2644EB8FC();
  result = sub_2644EB8DC();
  if (v12)
  {
    result = (*(v10 + 8))(a6, a2);
    *a7 = v12;
  }

  return result;
}

uint64_t sub_2644E0444(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2644EB44C();
  if (!v19)
  {
    return sub_2644EB31C();
  }

  v41 = v19;
  v45 = sub_2644EB7FC();
  v32 = sub_2644EB80C();
  sub_2644EB7DC();
  result = sub_2644EB43C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2644EB46C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2644EB7EC();
      result = sub_2644EB45C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *KeyedDecodingContainer.decode<A, B>(_:forKey:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a9;
  type metadata accessor for CustomCodableKeyDictionary(0, v13);
  swift_getWitnessTable();
  result = sub_2644EB8CC();
  if (!v9)
  {
    v12 = v14;
    if (v14 == 1)
    {
      v12 = 0;
    }

    *a8 = v12;
  }

  return result;
}

uint64_t static CustomCodableKeyDictionary<>.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a2;
  if (*a1)
  {
    if (v9)
    {

      v10 = sub_2644EB19C();

      if (v10)
      {
        return 1;
      }
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2644E0A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2644EB1CC();

  return sub_2644E0A7C(a1, v6, a2, a3);
}

unint64_t sub_2644E0A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2644EB20C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2644E0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2644EB34C())
  {
    sub_2644EB8AC();
    v13 = sub_2644EB89C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2644EB34C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2644EB32C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2644EB7AC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2644E0A20(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2644E0F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2644E0F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2644E0FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2644E1034()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_2814ACCD0);
  __swift_project_value_buffer(v0, qword_2814ACCD0);
  return sub_2644EADFC();
}

uint64_t sub_2644E10A0()
{
  sub_2644C5EC4();
  result = sub_2644EB5FC();
  qword_27FF71628 = result;
  return result;
}

uint64_t sub_2644E1108(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2644E1220(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x26673AD40](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void Lock.criticalSection<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

void Lock.callAsFunction<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t Lock.debugDescription.getter()
{
  MEMORY[0x266739CC0](0x5B6B636F4CLL, 0xE500000000000000);
  v3 = HIDWORD(*(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA08, &qword_2644EDE20);
  sub_2644EB81C();
  MEMORY[0x266739CC0](58, 0xE100000000000000);
  v1 = sub_2644EB94C();
  MEMORY[0x266739CC0](v1);

  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return HIDWORD(v3);
}

uint64_t sub_2644E16DC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 environment];

    v4 = sub_2644EB15C();
    if (*(v4 + 16))
    {
      sub_2644E9810(0x45545F5245444E55, 0xEA00000000005453);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2644E17E4()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF6FA10);
  v1 = __swift_project_value_buffer(v0, qword_27FF6FA10);
  if (qword_27FF6F600 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FF71630);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Sequencer.__allocating_init(name:softTimeout:hardTimeout:)(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v20 = a2;
  v21 = a1;
  v6 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2644EB55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v12 = swift_allocObject();
  v19 = sub_2644B2D18();
  (*(v9 + 104))(v11, *MEMORY[0x277D85268], v8);
  sub_2644EB08C();
  v22 = MEMORY[0x277D84F90];
  sub_2644B2E3C(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  v13 = sub_2644EB59C();
  *(v12 + 96) = MEMORY[0x277D84F90];
  v14 = v20;
  v15 = 0x65636E6575716553;
  if (v20)
  {
    v15 = v21;
  }

  *(v12 + 16) = v13;
  *(v12 + 24) = v15;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE900000000000072;
  }

  *(v12 + 32) = v16;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  if (sub_2644E16DC())
  {
    v17 = v24;
    *(v12 + 56) = v23;
    *(v12 + 72) = v17;
    *(v12 + 88) = v25;
  }

  else
  {
    sub_2644E1BA8(&v23);
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0;
  }

  return v12;
}

uint64_t sub_2644E1BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA28, &qword_2644EDE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Sequencer.perform(identifier:_:enqueueCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a2;
  v7 = sub_2644EB06C();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644EB0AC();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Sequencer.WorkItem(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  v21 = sub_2644EADAC();
  (*(*(v21 - 8) + 16))(v20, v31, v21);
  v22 = &v20[*(v14 + 28)];
  *v22 = v32;
  v22[1] = a3;
  v32 = *(v5 + 16);
  v23 = swift_allocObject();
  swift_weakInit();
  sub_2644E2108(v20, v18);
  v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  sub_2644E216C(v18, v25 + v24);
  v26 = (v25 + ((v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v33;
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  aBlock[4] = sub_2644E21D0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_6;
  v29 = _Block_copy(aBlock);

  sub_2644D9284(v28, v27);
  sub_2644EB08C();
  v38 = MEMORY[0x277D84F90];
  sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v12, v9, v29);
  _Block_release(v29);
  (*(v37 + 8))(v9, v7);
  (*(v35 + 8))(v12, v36);
  sub_2644E2264(v20);
}

uint64_t type metadata accessor for Sequencer.WorkItem(uint64_t a1)
{
  result = qword_27FF6FA30;
  if (!qword_27FF6FA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2644E208C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2644E22C0(a2, a3);
  }

  return result;
}

uint64_t sub_2644E2108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sequencer.WorkItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E216C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sequencer.WorkItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E21D0()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_2644E208C(v3, v0 + v2, v5, v6);
}

uint64_t sub_2644E2264(uint64_t a1)
{
  v2 = type metadata accessor for Sequencer.WorkItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644E22C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for Sequencer.WorkItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2644EB10C();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  v15 = sub_2644EB12C();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    swift_beginAccess();
    v9 = *(v2 + 96);
    v15 = v9[2];
    sub_2644E2108(a1, v8);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 96) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = sub_2644DF3F0(0, v15 + 1, 1, v9);
  *(v2 + 96) = v9;
LABEL_3:
  v18 = v9[2];
  v17 = v9[3];
  if (v18 >= v17 >> 1)
  {
    v9 = sub_2644DF3F0((v17 > 1), v18 + 1, 1, v9);
  }

  v9[2] = v18 + 1;
  sub_2644E216C(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
  *(v2 + 96) = v9;
  result = swift_endAccess();
  if (a2)
  {
    result = a2(a1);
  }

  if (!v15)
  {
    return sub_2644E2544();
  }

  return result;
}

uint64_t sub_2644E2544()
{
  v1 = v0;
  v83 = *v0;
  v78 = sub_2644EB0CC();
  v2 = *(v78 - 8);
  v3 = MEMORY[0x28223BE20](v78);
  v76 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = v66 - v5;
  v73 = sub_2644EB06C();
  MEMORY[0x28223BE20](v73);
  v74 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Sequencer.WorkItem(0);
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v75);
  v79 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v66 - v11;
  MEMORY[0x28223BE20](v10);
  v84 = v66 - v13;
  v14 = sub_2644EB10C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v1[2];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  v20 = sub_2644EB12C();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  result = swift_beginAccess();
  v22 = v1[12];
  if (!*(v22 + 16))
  {
    return result;
  }

  v71 = v19;
  v72 = v2;
  v14 = *(v7 + 80);
  v69 = (v14 + 32) & ~v14;
  v19 = v84;
  sub_2644E2108(v22 + v69, v84);
  v17 = v1[3];
  v20 = v1[4];
  v23 = qword_27FF6F5F8;

  if (v23 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v81 = v14;
  v70 = ~v14;
  v24 = sub_2644EAE0C();
  __swift_project_value_buffer(v24, qword_27FF6FA10);
  sub_2644E2108(v19, v12);

  v25 = sub_2644EADEC();
  v26 = sub_2644EB47C();

  v27 = os_log_type_enabled(v25, v26);
  v82 = v17;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = v1;
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v28 = 136446466;
    *(v28 + 4) = sub_2644B73B8(v82, v20, &aBlock);
    *(v28 + 12) = 2082;
    sub_2644EADAC();
    sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = sub_2644EB94C();
    v33 = v32;
    sub_2644E2264(v12);
    v34 = sub_2644B73B8(v31, v33, &aBlock);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_2644B1000, v25, v26, "%{public}s: Execute %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v35 = v30;
    v1 = v29;
    MEMORY[0x26673AD40](v35, -1, -1);
    v36 = v28;
    v17 = v82;
    MEMORY[0x26673AD40](v36, -1, -1);
  }

  else
  {

    sub_2644E2264(v12);
  }

  v80 = v1;
  v37 = v1[5];
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v79;
  sub_2644E2108(v84, v79);
  v68 = v8 + 7;
  v40 = v69;
  v41 = (v8 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v17;
  *(v43 + 24) = v20;
  sub_2644E216C(v39, v43 + v40);
  *(v43 + v41) = v37;
  *(v43 + v42) = v38;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v90 = sub_2644E45CC;
  v91 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v67 = &v88;
  v88 = sub_2644BD140;
  v89 = &block_descriptor_13_0;
  _Block_copy(&aBlock);
  v85 = MEMORY[0x277D84F90];
  v66[1] = sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  v66[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  v66[2] = sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  sub_2644EB0FC();
  swift_allocObject();
  v69 = sub_2644EB0DC();

  v44 = swift_allocObject();
  swift_weakInit();
  sub_2644E2108(v84, v39);
  v45 = (v81 + 24) & v70;
  v46 = (v68 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  v68 = v45;
  sub_2644E216C(v39, v47 + v45);
  v48 = (v47 + v46);
  *v48 = v82;
  v48[1] = v20;
  *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v90 = sub_2644E4674;
  v91 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_2644BD140;
  v89 = &block_descriptor_20;
  _Block_copy(&aBlock);
  v85 = MEMORY[0x277D84F90];
  v70 = v20;

  v49 = v80;
  sub_2644EB6CC();
  swift_allocObject();
  v74 = sub_2644EB0DC();

  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v67 = mach_continuous_time();
  sub_2644E4714((v49 + 7), &aBlock);
  v50 = v89;
  if (v89)
  {
    v51 = v90;
    __swift_project_boxed_opaque_existential_1(&aBlock, v89);
    v52 = v84;
    v51[3](v84, v50, v51);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    sub_2644E1BA8(&aBlock);
    v52 = v84;
  }

  v75 = *(v52 + *(v75 + 20));
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = v79;
  sub_2644E2108(v52, v79);
  v55 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  sub_2644E216C(v54, v59 + v68);
  *(v59 + v46) = v73;
  v60 = (v59 + v55);
  v61 = v70;
  *v60 = v82;
  v60[1] = v61;
  *(v59 + v56) = v69;
  *(v59 + v57) = v74;
  *(v59 + v58) = v67;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v83;

  (v75)(sub_2644E4784, v59);

  v62 = v76;
  sub_2644EB0BC();
  v63 = v77;
  sub_2644EB11C();
  v64 = *(v72 + 8);
  v65 = v78;
  v64(v62, v78);
  sub_2644EB4FC();
  v64(v63, v65);
  sub_2644EB0BC();
  sub_2644EB11C();
  v64(v62, v65);
  sub_2644EB4FC();

  v64(v63, v65);
  sub_2644E2264(v84);
}