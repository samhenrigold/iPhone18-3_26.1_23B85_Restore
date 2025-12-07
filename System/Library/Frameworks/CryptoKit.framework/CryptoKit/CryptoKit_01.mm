uint64_t sub_1A78CC5A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1A78C45DC(result);
    }

    else
    {
      sub_1A793D698();
      swift_allocObject();
      sub_1A793D658();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1A793D738();
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

uint64_t *sub_1A78CC640(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1A78C0AFC(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78CC8A8(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_1A78C0AFC(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_1A78C0AFC(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_1A793D648();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1A793D678();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_1A793D668();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_1A78CC8A8(int *a1, int a2)
{
  result = sub_1A793D708();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1A793D678();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1A793D668();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_1A78CC950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a6();
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 groupOrderByteCountForCP_];
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 < 2 * v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (([v11 groupOrderByteCountForCP_] & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = [v11 groupOrderByteCountForCP_];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= v13)
  {
    v14 = v8 - v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < v14)
  {
    goto LABEL_25;
  }

  if (!a4)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_29;
  }

  result = ccec_sign_composite();
  if (result)
  {
    v16 = result;
    sub_1A78D6484();
    swift_allocError();
    *v17 = v16;
    *(v17 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78CCB04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (v12)
    {

      sub_1A78C0AFC(v11, v10);
      *&v32 = v11;
      *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78CCDCC(&v32, a2, a3, a4, a5);
      v14 = v32;
      v15 = *(&v32 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1A78C0AFC(v11, v10);
      *&v32 = v11;
      WORD4(v32) = v10;
      BYTE10(v32) = BYTE2(v10);
      BYTE11(v32) = BYTE3(v10);
      BYTE12(v32) = BYTE4(v10);
      BYTE13(v32) = BYTE5(v10);
      BYTE14(v32) = BYTE6(v10);
      result = sub_1A78CC950(&v32, &v32 + BYTE6(v10), a2, a3, a4, a5);
      v14 = v32;
      v15 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    }

    *a1 = v14;
    a1[1] = v15;
    return result;
  }

  if (v12 != 2)
  {
    *(&v32 + 7) = 0;
    *&v32 = 0;
    return sub_1A78CC950(&v32, &v32, a2, a3, a4, a5);
  }

  sub_1A78C0AFC(v11, v10);
  *&v32 = v11;
  *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v16 = *(&v32 + 1);
  v18 = *(v32 + 16);
  v17 = *(v32 + 24);
  result = sub_1A793D648();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = sub_1A793D678();
  v21 = v18 - v20;
  if (__OFSUB__(v18, v20))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v22 = __OFSUB__(v17, v18);
  v23 = v17 - v18;
  if (v22)
  {
    goto LABEL_17;
  }

  v24 = sub_1A793D668();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  result = sub_1A78CC950(v19 + v21, v19 + v21 + v25, a2, a3, a4, a5);
  *a1 = v32;
  a1[1] = v16 | 0x8000000000000000;
  return result;
}

uint64_t sub_1A78CCDCC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = sub_1A793D708();
  v12 = *a1;
  v11 = a1[1];
  if (v11 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = a2;

  result = sub_1A793D648();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  result = sub_1A793D678();
  v14 = v12 - result;
  if (__OFSUB__(v12, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v11 - v12;
  v16 = sub_1A793D668();
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  sub_1A78CC950(v13 + v14, v13 + v14 + v17, v18, a3, a4, a5);
}

uint64_t sub_1A78CCEE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v5 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = HIDWORD(result) - result;
  }

LABEL_11:
  result = a3();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 == 2 * result)
  {
    *a4 = v5;
    a4[1] = a2;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v11 = 1;
    *(v11 + 4) = 1;
    swift_willThrow();
    return sub_1A78C0AFC(v5, a2);
  }

  return result;
}

uint64_t P256.Signing.ECDSASignature.rawRepresentation.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

void *sub_1A78CD0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1A78CD108(a1, a2, a3, a4);
}

void *sub_1A78CD108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1A78CD160(a1, a2, a3, a4);
}

void *sub_1A78CD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v4 = sub_1A78BDB94(v25, &v26);
  v5 = v4[2];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 0;
  if (v5)
  {
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    v9 = (v4 + 4);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (!v7)
      {
        v12 = v6[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
        v15 = swift_allocObject();
        v16 = 2 * _swift_stdlib_malloc_size(v15) - 64;
        v15[2] = v14;
        v15[3] = v16;
        v17 = (v15 + 4);
        v18 = v6[3] >> 1;
        if (v6[2])
        {
          if (v15 != v6 || v17 >= v6 + v18 + 32)
          {
            memmove(v15 + 4, v6 + 4, v18);
          }

          v6[2] = 0;
        }

        v8 = (v17 + v18);
        v7 = (v16 >> 1) - v18;

        v6 = v15;
      }

      v20 = __OFSUB__(v7--, 1);
      if (v20)
      {
        break;
      }

      *v8++ = v10;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v21 = v6[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v20 = __OFSUB__(v22, v7);
    v23 = v22 - v7;
    if (v20)
    {
      goto LABEL_25;
    }

    v6[2] = v23;
  }

  return v6;
}

uint64_t sub_1A78CD364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = v4[1];
  v13[0] = *v4;
  v13[1] = v7;
  v8 = v4[3];
  v13[2] = v4[2];
  v13[3] = v8;
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7920, &qword_1A7945488);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  return sub_1A78BECA0(v13, a4, v14, v9, v10, a3, MEMORY[0x1E69E7288], &v12);
}

uint64_t sub_1A78CD450(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 64;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A78CD4CC(void *(*a1)(unsigned int *__return_ptr, __int128 *, char *), uint64_t a2)
{
  v4 = v2;
  v19 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1A78C0AFC(v7, v6);
      *&v18 = v7;
      WORD4(v18) = v6;
      BYTE10(v18) = BYTE2(v6);
      BYTE11(v18) = BYTE3(v6);
      BYTE12(v18) = BYTE4(v6);
      BYTE13(v18) = BYTE5(v6);
      BYTE14(v18) = BYTE6(v6);
      result = a1(&v17, &v18, &v18 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *v4 = v18;
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v7, v6);
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1A793D648() && __OFSUB__(v7, sub_1A793D678()))
      {
LABEL_22:
        __break(1u);
      }

      sub_1A793D698();
      swift_allocObject();
      v14 = sub_1A793D628();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1A78CD840(v7, v7 >> 32, a1);

      *v4 = v7;
      v4[1] = v12 | 0x4000000000000000;
      if (!v3)
      {
        return v15;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 2)
  {

    sub_1A78C0AFC(v7, v6);
    *&v18 = v7;
    *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = *(&v18 + 1);
    result = sub_1A78CD840(*(v18 + 16), *(v18 + 24), a1);
    *v4 = v18;
    v4[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    result = a1(&v17, &v18, &v18);
    if (!v3)
    {
      return v17;
    }
  }

  return result;
}

char *sub_1A78CD840(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1A793D678();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1A793D668();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1A78CD8F0(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1A78C9FCC(a3, a1, a2);
  if (v11)
  {
    v12 = v11 + v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11 + v9;
  }

  else
  {
    v13 = 0;
  }

  v40[0] = v13;
  v40[1] = v12;
  v14 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v39, 0, 14);
      v15 = v39;
LABEL_52:
      sub_1A78D62D4(v39, v15, v40, &v38);
      v25 = v6;
      if (!v6)
      {
        sub_1A78C0AFC(a4, a5);
        return v38;
      }

LABEL_86:
      result = MEMORY[0x1AC55E410](v25);
      __break(1u);
      return result;
    }

    v17 = *(a4 + 16);
    v16 = *(a4 + 24);

    v18 = sub_1A793D648();
    if (v18)
    {
      v19 = sub_1A793D678();
      if (__OFSUB__(v17, v19))
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
      }

      v18 += v17 - v19;
    }

    v20 = __OFSUB__(v16, v17);
    v21 = v16 - v17;
    if (v20)
    {
      goto LABEL_77;
    }

    v22 = sub_1A793D668();
    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v18)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v12 - v13;
    if (v13)
    {
      v26 = v12 - v13;
    }

    else
    {
      v26 = 0;
    }

    if (v26 < v24)
    {
      goto LABEL_78;
    }

    if (v18)
    {
      v27 = v23;
      v28 = ccgcm_update();
      if (v28)
      {
LABEL_49:
        v36 = v28;
        sub_1A78C0AFC(a4, a5);
        return v36;
      }

      v29 = sub_1A78C0D98(0, v26, v13, v12);
      sub_1A78C0AFC(a4, a5);
      if (v27 < 1)
      {
        if (v29 <= 0)
        {
          result = 0;
          if (!v13 || v27 < v29)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v13)
          {
            return result;
          }
        }

        if (v25 >= v27)
        {
          return result;
        }
      }

      else
      {
        if ((v29 & 0x8000000000000000) == 0 && v29 < v27)
        {
          return 0;
        }

        if (!v13)
        {
          goto LABEL_84;
        }

        if (v25 >= v27)
        {
          return 0;
        }
      }

      __break(1u);
      goto LABEL_72;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!v14)
  {
    v39[0] = a4;
    LOWORD(v39[1]) = a5;
    BYTE2(v39[1]) = BYTE2(a5);
    BYTE3(v39[1]) = BYTE3(a5);
    BYTE4(v39[1]) = BYTE4(a5);
    BYTE5(v39[1]) = BYTE5(a5);
    v15 = v39 + BYTE6(a5);
    goto LABEL_52;
  }

  if (a4 >> 32 < a4)
  {
    goto LABEL_76;
  }

  v30 = sub_1A793D648();
  if (v30)
  {
    v31 = sub_1A793D678();
    if (__OFSUB__(a4, v31))
    {
      goto LABEL_81;
    }

    v30 += a4 - v31;
  }

  v32 = sub_1A793D668();
  if (v32 >= (a4 >> 32) - a4)
  {
    v33 = (a4 >> 32) - a4;
  }

  else
  {
    v33 = v32;
  }

  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v25 = v12 - v13;
  if (v13)
  {
    v35 = v12 - v13;
  }

  else
  {
    v35 = 0;
  }

  if (v35 < v34)
  {
    goto LABEL_79;
  }

  if (!v30)
  {
    goto LABEL_83;
  }

  v27 = v33;
  v28 = ccgcm_update();
  if (v28)
  {
    goto LABEL_49;
  }

  v29 = sub_1A78C0D98(0, v35, v13, v12);
  sub_1A78C0AFC(a4, a5);
  if (v27 >= 1)
  {
    if ((v29 & 0x8000000000000000) == 0 && v29 < v27)
    {
      return 0;
    }

    if (v13)
    {
      if (v25 >= v27)
      {
        return 0;
      }

      goto LABEL_75;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v29 <= 0)
  {
LABEL_72:
    result = 0;
    if (!v13 || v27 < v29)
    {
      return result;
    }

    goto LABEL_74;
  }

  result = 0;
  if (!v13)
  {
    return result;
  }

LABEL_74:
  if (v25 < v27)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  return result;
}

uint64_t sub_1A78CDCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_1A78CD8F0(a1, a2, *(v3 + 16), **(v3 + 24), *(*(v3 + 24) + 8), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A78CDD2C(uint64_t a1, unint64_t a2)
{
  __dst[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (HIDWORD(a1) - a1 != 16)
    {
      return 0;
    }
  }

LABEL_8:
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = *(v2 + 24);
  result = ccaes_gcm_decrypt_mode();
  if (result)
  {
    if (v10 == result)
    {
      if (v4 == 2)
      {
        v17 = *(a1 + 16);
        v18 = *(a1 + 24);
        v16 = sub_1A793D648();
        if (v16)
        {
          v19 = sub_1A793D678();
          if (__OFSUB__(v17, v19))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v16 += v17 - v19;
        }

        v7 = __OFSUB__(v18, v17);
        v12 = v18 - v17;
        if (!v7)
        {
LABEL_23:
          v20 = sub_1A793D668();
          if (v16)
          {
            if (v20 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v20;
            }

            memmove(__dst, v16, v21);
          }

          return ccgcm_finalize() == 0;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v4 != 1)
      {
        __src = a1;
        v23 = a2;
        v24 = BYTE2(a2);
        v25 = BYTE3(a2);
        v26 = BYTE4(a2);
        v27 = BYTE5(a2);
        memcpy(__dst, &__src, BYTE6(a2));
        return ccgcm_finalize() == 0;
      }

      v12 = (a1 >> 32) - a1;
      if (a1 >> 32 >= a1)
      {
        v13 = sub_1A793D648();
        if (v13)
        {
          v14 = v13;
          v15 = sub_1A793D678();
          if (!__OFSUB__(a1, v15))
          {
            v16 = (a1 - v15 + v14);
            goto LABEL_23;
          }

LABEL_37:
          __break(1u);
        }

        sub_1A793D668();
        return ccgcm_finalize() == 0;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78CDF80()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1AC55E040](*(v0 + 24));
  memset_s(v1, v2, 0, v2);
  MEMORY[0x1AC55E570](v1, -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1A78CDFEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78CE00C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SymmetricKeySize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymmetricKeySize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A78CE0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1A793DB48();
}

uint64_t sub_1A78CE1A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A78CE1D8(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  return sub_1A78DE450(a1, a2, a3, a4, a5);
}

uint64_t sub_1A78CE230(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1A78DE068(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A78CE288(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_1A78DE1C8(a1, a2, a3);
}

uint64_t sub_1A78CE2E0(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_1A78DE30C(a1, a2, a3);
}

uint64_t sub_1A78CE338()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1A78CE3E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_1A78CE3F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1A78CE57C(uint64_t a1, unint64_t a2)
{

  return sub_1A791A8E4(a1, a2);
}

void *sub_1A78CE5D4(_OWORD *a1)
{

  return sub_1A791A5A4(a1);
}

void *sub_1A78CE62C(_OWORD *a1)
{

  return sub_1A791A744(a1);
}

void sub_1A78CE6A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A793D828();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1A78C0AFC(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1A78BDC10(v9, 0);
      v12 = sub_1A793D718();
      sub_1A78C0AFC(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1A78CE8F0()
{

  return sub_1A792E5DC();
}

uint64_t sub_1A78CE948()
{

  return sub_1A792E56C();
}

uint64_t sub_1A78CE9A0(uint64_t a1)
{

  return sub_1A792E65C(a1);
}

BOOL sub_1A78CE9F8(_OWORD *a1, _OWORD *a2)
{

  return sub_1A792E6F4(a1, a2);
}

uint64_t sub_1A78CEA50()
{

  return sub_1A792EAD0();
}

uint64_t sub_1A78CEAA8()
{

  return sub_1A792EA58();
}

uint64_t sub_1A78CEB00(uint64_t a1)
{

  return sub_1A792EB60(a1);
}

void *sub_1A78CEB58@<X0>(uint64_t *a1@<X8>)
{

  return sub_1A792EC08(a1);
}

BOOL sub_1A78CEBB0(_OWORD *a1, _OWORD *a2)
{

  return sub_1A792EC80(a1, a2);
}

uint64_t sub_1A78CEC08()
{

  return sub_1A792F028();
}

uint64_t sub_1A78CECD8(uint64_t a1)
{

  return sub_1A792F0B0(a1);
}

BOOL sub_1A78CED30(_OWORD *a1, _OWORD *a2)
{

  return sub_1A792F150(a1, a2);
}

uint64_t sub_1A78CED88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78CEDA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1A78CEDE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78CEE00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1A78CEEC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A78C0AFC(result, a2);
  }

  return result;
}

size_t HPKE.KDF.extract<A>(salt:ikm:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = sub_1A793DC78();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = *v5;
  v17 = (v16 + 8);
  if (v15)
  {
    *&v27 = *a2;
    v18 = *(a3 - 1);
    if (v15 == 1)
    {
      (*(*(a3 - 1) + 16))(v14, a1, a3, v12);
      (*(v18 + 56))(v14, 0, 1, a3);
      v19 = sub_1A78D14CC();
      static HKDF.extract<A>(inputKeyMaterial:salt:)(&v27, v14, &type metadata for SHA384, a3, v19, a4, &v31);
      (*v17)(v14, v11);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v20 = &v30;
    }

    else
    {
      (*(*(a3 - 1) + 16))(v14, a1, a3, v12);
      (*(v18 + 56))(v14, 0, 1, a3);
      v23 = sub_1A78CF35C();
      static HKDF.extract<A>(inputKeyMaterial:salt:)(&v27, v14, &type metadata for SHA512, a3, v23, a4, &v31);
      (*v17)(v14, v11);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v20 = &v31;
    }
  }

  else
  {
    *&v27 = *a2;
    v21 = *(a3 - 1);
    (*(v21 + 16))(v14, a1, a3, v12);
    (*(v21 + 56))(v14, 0, 1, a3);
    v22 = sub_1A78BD37C();
    static HKDF.extract<A>(inputKeyMaterial:salt:)(&v27, v14, &type metadata for SHA256, a3, v22, a4, &v31);
    (*v17)(v14, v11);
    v27 = v31;
    v28 = v32;
    v20 = &v29;
  }

  result = sub_1A78C2BF8(&v27, v20, &v26);
  *a5 = v26;
  return result;
}

unint64_t sub_1A78CF35C()
{
  result = qword_1EB2A6D88;
  if (!qword_1EB2A6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D88);
  }

  return result;
}

uint64_t HPKE.KDF.expand(prk:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, unint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v7 = *a1;
  if (*v5)
  {
    if (*v5 == 1)
    {
      sub_1A78CF840(v7, a3, a4, a5, &v12);
    }

    else
    {
      sub_1A78CFC48(v7, a3, a4, a5, &v12);
    }
  }

  else
  {
    sub_1A78CF454(v7, a3, a4, a5, &v12);
  }

  v8 = v12;
  swift_beginAccess();
  sub_1A78C2BF8(v8 + 32, v8 + 32 + *(v8 + 16), &v11);
  v9 = v11;

  *a2 = v9;
  return result;
}

uint64_t sub_1A78CF454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = ceil(vcvtd_n_f64_s64(a4, 5uLL));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v8 = a4;
    v6 = a3;
    v7 = a2;
    v5 = a1;
    v9 = v11;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v12 = off_1ED5F8A18;
  v34 = off_1ED5F8A18;
  swift_beginAccess();
  v13 = *(v5 + 16);

  sub_1A78C2BF8(v5 + 32, v5 + 32 + v13, &v35);

  if (!v9)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v24 = a5;
  v25 = v8;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_1A7901B88(v14, &v33);
    swift_beginAccess();
    v15 = v12[2];

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0((v12 + 4), v12 + v15 + 32);

    if (v6 >> 60 != 15)
    {
      sub_1A78C0990(v7, v6);
      sub_1A78D1F08(v7, v6, &v33, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(v7, v6);
    }

    LOBYTE(v35) = a5;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(&v35, &v35 + 1);
    v16 = v33;
    sub_1A78BD4B0(&v35);
    v32 = v16;
    v28[0] = v35;
    v28[1] = v36;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v28, &v29);

    sub_1A78BD4B0(&v30);

    v26 = v31;
    v27 = v30;

    v35 = v27;
    v36 = v26;
    sub_1A78C2BF8(&v35, v37, &v30);

    v12 = v30;

    sub_1A78C7BC0(v17);

    if (v9 == a5)
    {
      break;
    }

    LOWORD(a5) = a5 + 1;
    if ((a5 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v25 < 0)
  {
    goto LABEL_24;
  }

  v18 = v34;
  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = sub_1A78C7D08(0, v25, v19, v18);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if ((v22 | v19) < 0)
  {
    goto LABEL_25;
  }

  if (v19 < v22)
  {
    goto LABEL_26;
  }

  *&v30 = 0;
  *(&v30 + 1) = v22;
  *&v31 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v24 = *&v28[0];
  return result;
}

uint64_t sub_1A78CF840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = ceil(a4 / 48.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 < 256.0)
  {
    v7 = a4;
    v5 = a1;
    v6 = v9;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v10 = off_1ED5F8A18;
  v38 = off_1ED5F8A18;
  swift_beginAccess();
  v11 = *(v5 + 16);

  sub_1A78C2BF8(v5 + 32, v5 + 32 + v11, &v39);

  if (!v6)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v24 = a5;
  v25 = v7;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_1A79018A8(v12, &v37);
    swift_beginAccess();
    v13 = v10[2];

    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0((v10 + 4), v10 + v13 + 32);

    if (a3 >> 60 != 15)
    {
      sub_1A78C0990(a2, a3);
      sub_1A78D1F08(a2, a3, &v37, _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(a2, a3);
    }

    LOBYTE(v39) = a5;
    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(&v39, &v39 + 1);
    v14 = v37;
    sub_1A78C4BA4(&v39);
    v36 = v14;
    v30[0] = v39;
    v30[1] = v40;
    v30[2] = v41;

    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v30, &v31);

    sub_1A78C4BA4(&v32);

    v15 = v34;
    v16 = v35;
    v28 = v33;
    v29 = v32;

    v39 = v29;
    v40 = v28;
    *&v41 = v15;
    *(&v41 + 1) = v16;
    sub_1A78C2BF8(&v39, v42, &v32);

    v10 = v32;

    sub_1A78C7BC0(v17);

    if (v6 == a5)
    {
      break;
    }

    LOWORD(a5) = a5 + 1;
    if ((a5 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v25 < 0)
  {
    goto LABEL_24;
  }

  v18 = v38;
  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = sub_1A78C7D08(0, v25, v19, v18);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if ((v22 | v19) < 0)
  {
    goto LABEL_25;
  }

  if (v19 < v22)
  {
    goto LABEL_26;
  }

  *&v32 = 0;
  *(&v32 + 1) = v22;
  *&v33 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v24 = *&v30[0];
  return result;
}

uint64_t sub_1A78CFC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = ceil(vcvtd_n_f64_s64(a4, 6uLL));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v8 = a4;
    v6 = a3;
    v7 = a2;
    v5 = a1;
    v9 = v11;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v12 = off_1ED5F8A18;
  v30 = off_1ED5F8A18;
  swift_beginAccess();
  v13 = *(v5 + 16);

  sub_1A78C2BF8(v5 + 32, v5 + 32 + v13, v28);

  if (!v9)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v24 = a5;
  v25 = v8;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_1A79015B8(v14, &v29);
    swift_beginAccess();
    v15 = v12[2];

    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0((v12 + 4), v12 + v15 + 32);

    if (v6 >> 60 != 15)
    {
      sub_1A78C0990(v7, v6);
      sub_1A78D1F08(v7, v6, &v29, _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(v7, v6);
    }

    LOBYTE(v31) = a5;
    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v31, &v31 + 1);
    v16 = v29;
    sub_1A78C465C(v27);
    v26[0] = v16;
    v31 = v27[0];
    v32 = v27[1];
    v33 = v27[2];
    v34 = v27[3];

    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v31, v35);

    sub_1A78C465C(v28);

    v31 = v28[0];
    v32 = v28[1];
    v33 = v28[2];
    v34 = v28[3];
    sub_1A78C2BF8(&v31, v35, v26);

    v12 = v26[0];

    sub_1A78C7BC0(v17);

    if (v9 == a5)
    {
      break;
    }

    LODWORD(a5) = a5 + 1;
    if ((a5 >> 8))
    {
      __break(1u);
      break;
    }
  }

  if (v25 < 0)
  {
    goto LABEL_24;
  }

  v18 = v30;
  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = sub_1A78C7D08(0, v25, v19, v18);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if ((v22 | v19) < 0)
  {
    goto LABEL_25;
  }

  if (v19 < v22)
  {
    goto LABEL_26;
  }

  v26[0] = 0;
  v26[1] = v22;
  v26[2] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v24 = v26[3];
  return result;
}

uint64_t sub_1A78D0038@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v12 = ceil(vcvtd_n_f64_s64(a5, 5uLL));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v8 = a5;
    v9 = a4;
    v6 = a2;
    v7 = a1;
    v10 = v12;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v13 = off_1ED5F8A18;
  v35 = off_1ED5F8A18;
  swift_retain_n();
  sub_1A78F3E70(v7, v6);

  if (!v10)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v25 = a6;
  v26 = v8;
  LOBYTE(v8) = 1;
  while (1)
  {
    v14 = v10;

    sub_1A7901B88(v15, &v34);
    swift_beginAccess();
    v16 = v13[2];

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0((v13 + 4), v13 + v16 + 32);

    if (v9 >> 60 != 15)
    {
      sub_1A78C0990(a3, v9);
      sub_1A78D1F08(a3, v9, &v34, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(a3, v9);
    }

    LOBYTE(v36) = v8;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(&v36, &v36 + 1);
    v17 = v34;
    sub_1A78BD4B0(&v36);
    v33 = v17;
    v30[0] = v36;
    v30[1] = v37;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v30, &v31);

    sub_1A78BD4B0(&v31);

    v28 = v32;
    v29 = v31;

    v36 = v29;
    v37 = v28;
    sub_1A78C2BF8(&v36, v38, &v31);

    v13 = v31;

    sub_1A78C7BC0(v18);

    if (v14 == v8)
    {
      break;
    }

    v10 = v14;
    LOWORD(v8) = v8 + 1;
    if ((v8 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v26 < 0)
  {
    goto LABEL_24;
  }

  v19 = v35;
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = sub_1A78C7D08(0, v26, v20, v19);
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if ((v23 | v20) < 0)
  {
    goto LABEL_25;
  }

  if (v20 < v23)
  {
    goto LABEL_26;
  }

  *&v31 = 0;
  *(&v31 + 1) = v23;
  *&v32 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v25 = *&v30[0];
  return result;
}

uint64_t sub_1A78D040C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v40[0] = *MEMORY[0x1E69E9840];
  v11 = ceil(vcvtd_n_f64_s64(a6, 5uLL));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v7 = a6;
    v8 = a5;
    v9 = v11;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v26 = a1;
  v27 = a2;
  v28 = a4;
  v29 = a3;
  swift_once();
  a1 = v26;
  a2 = v27;
  a3 = v29;
  a4 = v28;
LABEL_5:
  v12 = off_1ED5F8A18;
  v37 = off_1ED5F8A18;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  sub_1A78C2BF8(&v38, v40, &v33);
  if (!v9)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  swift_retain_n();
  LOBYTE(v13) = 1;
  while (1)
  {
    v14 = v9;

    sub_1A7901B88(v15, &v36);
    swift_beginAccess();
    v16 = v12[2];

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0((v12 + 4), v12 + v16 + 32);

    if (v8)
    {
      v17 = sub_1A793DB18();
      _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v17 + 32, v17 + 32 + *(v17 + 16));
    }

    LOBYTE(v38) = v13;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(&v38, &v38 + 1);
    v18 = v36;
    sub_1A78BD4B0(&v38);
    v35 = v18;
    v32[0] = v38;
    v32[1] = v39;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v32, &v33);

    sub_1A78BD4B0(&v33);

    v30 = v34;
    v31 = v33;

    v38 = v31;
    v39 = v30;
    sub_1A78C2BF8(&v38, v40, &v33);

    v12 = v33;

    sub_1A78C7BC0(v19);

    if (v14 == v13)
    {
      break;
    }

    v9 = v14;
    v13 = v13 + 1;
    if ((v13 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v7 < 0)
  {
    goto LABEL_24;
  }

  v20 = v37;
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = sub_1A78C7D08(0, v7, v21, v20);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  if ((v24 | v21) < 0)
  {
    goto LABEL_25;
  }

  if (v21 < v24)
  {
    goto LABEL_26;
  }

  *&v33 = 0;
  *(&v33 + 1) = v24;
  *&v34 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *a7 = *&v32[0];
  return result;
}

uint64_t sub_1A78D07C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  v41[0] = *MEMORY[0x1E69E9840];
  v12 = ceil(vcvtd_n_f64_s64(a7, 5uLL));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v8 = a7;
    v9 = a6;
    v10 = v12;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v25 = a1;
  v26 = a2;
  v27 = a4;
  v28 = a3;
  swift_once();
  a1 = v25;
  a2 = v26;
  a3 = v28;
  a4 = v27;
LABEL_5:
  v13 = off_1ED5F8A18;
  v38 = off_1ED5F8A18;
  *&v39 = a1;
  *(&v39 + 1) = a2;
  *&v40 = a3;
  *(&v40 + 1) = a4;
  sub_1A78C2BF8(&v39, v41, &v34);
  if (!v10)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v29 = a8;
  swift_retain_n();
  LOBYTE(a8) = 1;
  while (1)
  {
    v14 = v10;

    sub_1A7901B88(v15, &v37);
    swift_beginAccess();
    v16 = v13[2];

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0((v13 + 4), v13 + v16 + 32);

    if (v9 >> 60 != 15)
    {
      sub_1A78C0990(a5, v9);
      sub_1A78D1F08(a5, v9, &v37, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(a5, v9);
    }

    LOBYTE(v39) = a8;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(&v39, &v39 + 1);
    v17 = v37;
    sub_1A78BD4B0(&v39);
    v36 = v17;
    v33[0] = v39;
    v33[1] = v40;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v33, &v34);

    sub_1A78BD4B0(&v34);

    v31 = v35;
    v32 = v34;

    v39 = v32;
    v40 = v31;
    sub_1A78C2BF8(&v39, v41, &v34);

    v13 = v34;

    sub_1A78C7BC0(v18);

    if (v14 == a8)
    {
      break;
    }

    v10 = v14;
    LOWORD(a8) = a8 + 1;
    if ((a8 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v8 < 0)
  {
    goto LABEL_24;
  }

  v19 = v38;
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = sub_1A78C7D08(0, v8, v20, v19);
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if ((v23 | v20) < 0)
  {
    goto LABEL_25;
  }

  if (v20 < v23)
  {
    goto LABEL_26;
  }

  *&v34 = 0;
  *(&v34 + 1) = v23;
  *&v35 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v29 = *&v33[0];
  return result;
}

uint64_t sub_1A78D0BBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = ceil(a5 / 48.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v9 = a5;
    v6 = a2;
    v7 = a1;
    v8 = v11;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v12 = off_1ED5F8A18;
  v37 = off_1ED5F8A18;
  swift_retain_n();
  sub_1A78F3E70(v7, v6);

  if (!v8)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v25 = a6;
  LOBYTE(a6) = 1;
  while (1)
  {

    sub_1A79018A8(v13, &v36);
    swift_beginAccess();
    v14 = v12[2];

    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0((v12 + 4), v12 + v14 + 32);

    if (a4 >> 60 != 15)
    {
      sub_1A78C0990(a3, a4);
      sub_1A78D1F08(a3, a4, &v36, _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(a3, a4);
    }

    LOBYTE(v38) = a6;
    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(&v38, &v38 + 1);
    v15 = v36;
    sub_1A78C4BA4(&v38);
    v35 = v15;
    v30[0] = v38;
    v30[1] = v39;
    v30[2] = v40;

    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v30, &v31);

    sub_1A78C4BA4(&v31);

    v17 = v33;
    v16 = v34;
    v28 = v32;
    v29 = v31;

    v38 = v29;
    v39 = v28;
    *&v40 = v17;
    *(&v40 + 1) = v16;
    sub_1A78C2BF8(&v38, v41, &v31);

    v12 = v31;

    sub_1A78C7BC0(v18);

    if (v8 == a6)
    {
      break;
    }

    LOWORD(a6) = a6 + 1;
    if ((a6 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v9 < 0)
  {
    goto LABEL_24;
  }

  v19 = v37;
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = sub_1A78C7D08(0, v9, v20, v19);
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if ((v23 | v20) < 0)
  {
    goto LABEL_25;
  }

  if (v20 < v23)
  {
    goto LABEL_26;
  }

  *&v31 = 0;
  *(&v31 + 1) = v23;
  *&v32 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v25 = *&v30[0];
  return result;
}

uint64_t sub_1A78D0FB0@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = ceil(vcvtd_n_f64_s64(a5, 6uLL));
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 256.0)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v6 = a2;
    v7 = a1;
    LODWORD(v11) = v13;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_5:
  v14 = off_1ED5F8A18;
  v31 = off_1ED5F8A18;
  swift_retain_n();
  sub_1A78F3E70(v7, v6);

  if (!v11)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v26 = v11;
  v24 = a6;
  v25 = v8;
  v7 = 0;
  v8 = &v32;
  LOBYTE(a6) = 1;
  while (1)
  {

    sub_1A79015B8(v15, &v30);
    swift_beginAccess();
    v16 = v14[2];

    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0((v14 + 4), v14 + v16 + 32);

    if (v9 >> 60 != 15)
    {
      sub_1A78C0990(v10, v9);
      sub_1A78D1F08(v10, v9, &v30, _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0, _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0);
      sub_1A78CEEC8(v10, v9);
    }

    LOBYTE(v32) = a6;
    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v32, &v32 + 1);
    v11 = v30;
    sub_1A78C465C(v28);
    v27[0] = v11;
    v32 = v28[0];
    v33 = v28[1];
    v34 = v28[2];
    v35 = v28[3];

    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v32, v36);

    sub_1A78C465C(v29);

    v32 = v29[0];
    v33 = v29[1];
    v34 = v29[2];
    v35 = v29[3];
    sub_1A78C2BF8(&v32, v36, v27);

    v14 = v27[0];

    v6 = &v31;
    sub_1A78C7BC0(v17);

    if (v26 == a6)
    {
      break;
    }

    a6 = (a6 + 1);
    if ((a6 >> 8))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  if (v25 < 0)
  {
    goto LABEL_25;
  }

  v18 = v31;
  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = sub_1A78C7D08(0, v25, v19, v18);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if ((v22 | v19) < 0)
  {
    goto LABEL_26;
  }

  if (v19 < v22)
  {
    goto LABEL_27;
  }

  v27[0] = 0;
  v27[1] = v22;
  v27[2] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing(0);
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v24 = v27[3];
  return result;
}

uint64_t HPKE.KDF.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

uint64_t sub_1A78D1440()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

uint64_t sub_1A78D1488(uint64_t a1)
{
  v2 = *v1;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v2);
  return sub_1A793DFA8();
}

unint64_t sub_1A78D14CC()
{
  result = qword_1ED5F8AC8[0];
  if (!qword_1ED5F8AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5F8AC8);
  }

  return result;
}

unint64_t sub_1A78D1524()
{
  result = qword_1EB2A6DD8;
  if (!qword_1EB2A6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A6DE0, &qword_1A793ED98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6DD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A78D15D4()
{
  result = qword_1EB2A6DE8;
  if (!qword_1EB2A6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6DE8);
  }

  return result;
}

uint64_t _s3KDFOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KDFOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A78D17B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1A78D180C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A78D1890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A78D18EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A78D19B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A78D1A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1A78D1ACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78D1AEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 256) = v3;
  return result;
}

uint64_t sub_1A78D1B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A78D1BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A78D1C50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1A78D1CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A78D1DEC(uint64_t a1, uint64_t a2)
{
  sub_1A793DF58();
  swift_getWitnessTable();
  sub_1A793D858();
  return sub_1A793DFA8();
}

uint64_t sub_1A78D1E54(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A78D1F08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a4(v10, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_1A78D2048(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A78D2048(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return a4(v10, v6);
}

uint64_t sub_1A78D2048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v9 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1A793D668();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return a5(v9, v15);
}

uint64_t sub_1A78D2114(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1A78D2170(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A78D2218(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78D2238(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A78D22C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78D22E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

uint64_t sub_1A78D23C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A78D2418(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static ANSIKDFx963.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v45 = a5;
  v46 = a7;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v33 - v15;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v47 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 40);
  v42 = AssociatedConformanceWitness + 40;
  v43 = AssociatedConformanceWitness;
  v41 = v21;
  v22 = (v21)(AssociatedTypeWitness);
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (!is_mul_ok(v22, 0xFFFFFFFFuLL))
  {
    goto LABEL_20;
  }

  if (0xFFFFFFFF * v22 > a3)
  {
    v33 = a8;
    if (qword_1ED5F8A30 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v51 = off_1ED5F8A18;

      sub_1A78DDD8C(a3);
      v34 = a3;
      if (!a3)
      {
        break;
      }

      v23 = *(a6 + 32);
      v38 = v47 + 32;
      v39 = v23;
      v40 = a6 + 32;
      v37 = a6 + 48;
      v36 = (v14 + 8);
      v35 = (v16 + 8);
      v24 = 1;
      v16 = v34;
      while (1)
      {
        v39(a4, a6);
        v25 = v47;
        swift_beginAccess();
        v26 = v38 + *(v25 + 16);
        v50[0] = v38;
        v50[1] = v26;
        v27 = sub_1A78C6CF0();
        HashFunction.update<A>(data:)(v50, a4, MEMORY[0x1E69E6290], a6, v27);
        sub_1A790CC8C(bswap32(v24), a4, a6);
        HashFunction.update<A>(data:)(v44, a4, v45, a6, v46);
        (*(a6 + 48))(a4, a6);
        if (v24 == -1)
        {
          break;
        }

        v14 = a6;
        a3 = AssociatedTypeWitness;
        v28 = v41(AssociatedTypeWitness, v43);
        v29 = v49;
        v48 = &v33;
        if (v28 >= v16)
        {
          a6 = v16;
        }

        else
        {
          a6 = v28;
        }

        MEMORY[0x1EEE9AC00](v28);
        sub_1A793D6A8();
        (*v36)(v29, AssociatedTypeWitness);
        v30 = __OFSUB__(v16, a6);
        v16 -= a6;
        if (v30)
        {
          goto LABEL_17;
        }

        (*v35)(v19, a4);
        ++v24;
        a6 = v14;
        if (v16 <= 0)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_14:
    v31 = v51;
    result = swift_beginAccess();
    if (v31[2] == v34)
    {
      *v33 = v31;
      return result;
    }

    __break(1u);
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

uint64_t static ANSIKDFx963.deriveKey(inputKeyMaterial:outputByteCount:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v10 = sub_1A78D2A34();
  return static ANSIKDFx963.deriveKey<A>(inputKeyMaterial:info:outputByteCount:)(&v13, &v12, a2, a3, v9, a4, v10, a5);
}

unint64_t sub_1A78D2A34()
{
  result = qword_1ED5F8AC0;
  if (!qword_1ED5F8AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB2A6E88, qword_1A7940400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Curve25519(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Curve25519(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

size_t sub_1A78D2B88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a4@<W3>, void *a5@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 != 1)
    {
      sub_1A78C0990(a1, a2);
      sub_1A78F3E70(a1, a2);
      swift_beginAccess();

      sub_1A79015B8(v18, &v39);
      v19 = sub_1A793DAE8();
      _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v19, v20);
      v21 = v39;
      sub_1A78C465C(&v27);
      *&v26 = v21;

      _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v27, &v31);

      sub_1A78C465C(&v31);

      sub_1A78C0AFC(a1, a2);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      result = sub_1A78C2BF8(&v27, &v31, &v39);
      v17 = v39;
      goto LABEL_7;
    }

    sub_1A78C0990(a1, a2);
    sub_1A78F3E70(a1, a2);
    swift_beginAccess();

    sub_1A79018A8(v8, &v26);
    v9 = sub_1A793DAE8();
    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v9, v10);
    sub_1A78C4BA4(&v31);
    v35 = v31;
    v36 = v32;
    v37 = v33;

    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(&v35, &v38);

    sub_1A78C4BA4(&v27);

    v11 = v29;
    v22 = v28;
    v24 = v27;

    sub_1A78C0AFC(a1, a2);
    v31 = v24;
    v32 = v22;
    v33 = v11;
    v12 = &v34;
  }

  else
  {
    sub_1A78C0990(a1, a2);
    sub_1A78F3E70(a1, a2);
    swift_beginAccess();

    sub_1A7901B88(v13, &v26);
    v14 = sub_1A793DAE8();
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v14, v15);
    sub_1A78BD4B0(&v31);
    v35 = v31;
    v36 = v32;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(&v35, &v37);

    sub_1A78BD4B0(&v27);

    v23 = v28;
    v25 = v27;

    sub_1A78C0AFC(a1, a2);
    v31 = v25;
    v32 = v23;
    v12 = &v33;
  }

  result = sub_1A78C2BF8(&v31, v12, &v27);
  v17 = v27;
LABEL_7:
  *a5 = v17;
  return result;
}

uint64_t sub_1A78D2F28()
{
  result = sub_1A78D90E8(0x685F64695F6B7370, 0xEB00000000687361);
  qword_1EB2A6C50 = result;
  *algn_1EB2A6C58 = v1;
  return result;
}

uint64_t sub_1A78D2F68()
{
  result = sub_1A78D90E8(0x7361685F6F666E69, 0xE900000000000068);
  qword_1EB2A6C68 = result;
  unk_1EB2A6C70 = v1;
  return result;
}

uint64_t sub_1A78D2FA4()
{
  result = sub_1A78D90E8(0x746572636573, 0xE600000000000000);
  qword_1EB2A6C98 = result;
  unk_1EB2A6CA0 = v1;
  return result;
}

uint64_t sub_1A78D2FD8()
{
  result = sub_1A78D90E8(7955819, 0xE300000000000000);
  qword_1EB2A6C38 = result;
  unk_1EB2A6C40 = v1;
  return result;
}

uint64_t sub_1A78D3008()
{
  result = sub_1A78D90E8(0x6E6F6E5F65736162, 0xEA00000000006563);
  qword_1EB2A6C20 = result;
  *algn_1EB2A6C28 = v1;
  return result;
}

uint64_t sub_1A78D3044()
{
  result = sub_1A78D90E8(7370853, 0xE300000000000000);
  qword_1EB2A6C80 = result;
  *algn_1EB2A6C88 = v1;
  return result;
}

uint64_t sub_1A78D3074@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>)
{
  v169 = a4;
  v14 = a1;
  v164 = a9;
  v187 = *MEMORY[0x1E69E9840];
  v15 = *a5;
  v16 = *a8;
  v17 = a8[1];
  v18 = a8[2];
  *v185 = *a5;
  sub_1A78D49B4(a1, v185, a6, a7);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1A78CEEC8(a6, a7);
    sub_1A78C0AFC(a3, v169);

    return sub_1A78CEEC8(0, 0xF000000000000000);
  }

  else
  {
    v162 = a2;
    v165 = v17;
    v158 = v14;
    v157 = v15;
    v163 = v18;
    v159 = v16;
    v155 = a6;
    v161 = a3;
    if (qword_1EB2A6C48 != -1)
    {
      swift_once();
    }

    if (a7 >> 60 == 15)
    {
      v20 = 0;
      v186 = 0u;
      *&v185[8] = 0u;
    }

    else
    {
      *&v186 = &type metadata for SymmetricKey;
      *(&v186 + 1) = sub_1A78D4AE0();
      sub_1A78C0990(v155, a7);
      v20 = sub_1A78F3E70(v155, a7);
      sub_1A78CEEC8(v155, a7);
    }

    v154 = a7;
    *v185 = v20;
    if (qword_1EB2A6CA8 != -1)
    {
      swift_once();
    }

    v183 = qword_1EB2A6CB0;
    v184 = *algn_1EB2A6CB8;
    v21 = qword_1A793F318[v159];
    sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
    v167 = v21;
    v22 = sub_1A78FE770(v21, 2);
    v24 = v23;
    sub_1A793D808();
    sub_1A78C0AFC(v22, v24);
    v25 = sub_1A78FE770(v165 + 1, 2);
    v27 = v26;
    sub_1A793D808();
    sub_1A78C0AFC(v25, v27);
    v166 = qword_1A793F358[v163];
    v28 = sub_1A78FE770(v166, 2);
    v30 = v29;
    sub_1A793D808();
    sub_1A78C0AFC(v28, v30);
    v31 = v183;
    v32 = v184;
    if (qword_1EB2A6CE8 != -1)
    {
      swift_once();
    }

    v183 = qword_1EB2A6CF0;
    v184 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78D4274(v185);
    v33 = v183;
    v34 = v184;
    sub_1A78F3E70(v183, v184);
    sub_1A78D2B88(0, 0xC000000000000000, v165, &v178);

    sub_1A78C0AFC(v33, v34);
    v35 = v178;
    swift_beginAccess();
    v36 = *(v35 + 16);

    sub_1A78F6AF0(v35 + 32, v35 + 32 + v36, &v181);
    v37 = v168;
    sub_1A78C0AFC(v31, v32);

    sub_1A78D4A78(v185);

    v160 = v181;
    v168 = v182;
    if (qword_1EB2A6C60 != -1)
    {
      swift_once();
    }

    *&v186 = &type metadata for SymmetricKey;
    v156 = sub_1A78D4AE0();
    *(&v186 + 1) = v156;
    sub_1A78C0990(v161, v169);
    v38 = sub_1A78F3E70(v161, v169);
    sub_1A78C0AFC(v161, v169);
    *v185 = v38;
    v181 = qword_1EB2A6CB0;
    v182 = *algn_1EB2A6CB8;
    sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
    v39 = sub_1A78FE770(v167, 2);
    v41 = v40;
    sub_1A793D808();
    sub_1A78C0AFC(v39, v41);
    v42 = sub_1A78FE770(v165 + 1, 2);
    v44 = v43;
    sub_1A793D808();
    sub_1A78C0AFC(v42, v44);
    v45 = sub_1A78FE770(v166, 2);
    v47 = v46;
    sub_1A793D808();
    sub_1A78C0AFC(v45, v47);
    v49 = v181;
    v48 = v182;
    v181 = qword_1EB2A6CF0;
    v182 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78D4274(v185);
    v50 = v37;
    v51 = v181;
    v52 = v182;
    sub_1A78F3E70(v181, v182);
    sub_1A78D2B88(0, 0xC000000000000000, v165, &v176);

    sub_1A78C0AFC(v51, v52);
    v53 = v176;
    swift_beginAccess();
    v54 = *(v53 + 16);

    sub_1A78F6AF0(v53 + 32, v53 + 32 + v54, &v178);
    v55 = v50;
    sub_1A78C0AFC(v49, v48);

    v57 = v178;
    v56 = v179;
    sub_1A78D4A78(v185);
    v180 = xmmword_1A793F230;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F20, &qword_1A793F248);
    *&v186 = v58;
    *(&v186 + 1) = sub_1A78D4B34();
    v185[0] = v158;
    LOBYTE(v178) = *__swift_project_boxed_opaque_existential_1(v185, v58);
    sub_1A793D758();
    __swift_destroy_boxed_opaque_existential_1(v185);
    sub_1A793D808();
    v152 = v57;
    v153 = v56;
    sub_1A793D808();
    sub_1A78D4B98(v162, v185);
    v59 = v186;
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
    v61 = MEMORY[0x1EEE9AC00](v60);
    v63 = &v150 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v63, v61);
    v65 = sub_1A79155B4(v63, v59);
    v67 = v66;
    __swift_destroy_boxed_opaque_existential_1(v185);
    if (qword_1EB2A6C90 != -1)
    {
      swift_once();
    }

    v158 = v163;
    v68 = v157;
    if (v157)
    {
      *&v186 = &type metadata for SymmetricKey;
      *(&v186 + 1) = v156;
      swift_beginAccess();
      sub_1A78C2BF8(v68 + 32, v68 + 32 + *(v68 + 16), &v178);
      v69 = v178;
    }

    else
    {
      v69 = 0;
      v186 = 0u;
      *&v185[8] = 0u;
    }

    v70 = v165;
    *v185 = v69;
    v178 = qword_1EB2A6CB0;
    v179 = *algn_1EB2A6CB8;
    sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
    v71 = sub_1A78FE770(v167, 2);
    v73 = v72;
    sub_1A793D808();
    sub_1A78C0AFC(v71, v73);
    v74 = sub_1A78FE770(v70 + 1, 2);
    v76 = v75;
    sub_1A793D808();
    sub_1A78C0AFC(v74, v76);
    v77 = sub_1A78FE770(v166, 2);
    v79 = v78;
    sub_1A793D808();
    sub_1A78C0AFC(v77, v79);
    v81 = v178;
    v80 = v179;
    v178 = qword_1EB2A6CF0;
    v179 = *algn_1EB2A6CF8;
    sub_1A78C0990(qword_1EB2A6CF0, *algn_1EB2A6CF8);
    sub_1A793D808();
    sub_1A793D808();
    sub_1A78D4274(v185);
    v156 = v55;
    v82 = v178;
    v83 = v179;
    sub_1A78F3E70(v178, v179);
    sub_1A78D2B88(v65, v67, v70, &v176);

    sub_1A78C0AFC(v81, v80);
    sub_1A78D4A78(v185);
    sub_1A78C0AFC(v82, v83);
    sub_1A78C0AFC(v65, v67);
    v157 = v176;
    if (v158 == 3)
    {
      v163 = 0;
      v151 = 0;
      v150 = 0xF000000000000000;
    }

    else
    {
      if (qword_1EB2A6C30 != -1)
      {
        swift_once();
      }

      v84 = v180;
      v85 = qword_1A793F340[v163];
      *v185 = qword_1EB2A6CB0;
      *&v185[8] = *algn_1EB2A6CB8;
      sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
      v86 = sub_1A78FE770(v167, 2);
      v88 = v87;
      sub_1A793D808();
      sub_1A78C0AFC(v86, v88);
      v89 = sub_1A78FE770(v70 + 1, 2);
      v91 = v90;
      sub_1A793D808();
      sub_1A78C0AFC(v89, v91);
      v92 = sub_1A78FE770(v166, 2);
      v94 = v93;
      sub_1A793D808();
      sub_1A78C0AFC(v92, v94);
      v96 = *v185;
      v95 = *&v185[8];
      v176 = sub_1A78FE770(v85, 2);
      v177 = v97;
      sub_1A793D808();
      v150 = v95;
      sub_1A793D808();
      sub_1A793D808();
      *&v186 = MEMORY[0x1E6969080];
      *(&v186 + 1) = MEMORY[0x1E6969078];
      *v185 = v84;
      v98 = __swift_project_boxed_opaque_existential_1(v185, MEMORY[0x1E6969080]);
      v99 = *v98;
      v100 = v98[1];
      v151 = v84;
      sub_1A78C0990(v84, *(&v84 + 1));
      v101 = v156;
      sub_1A7900C14(v99, v100, &v176);
      __swift_destroy_boxed_opaque_existential_1(v185);
      v102 = v176;
      v103 = v177;
      if (v70)
      {
        if (v70 == 1)
        {
          sub_1A78CF840(v157, v176, v177, v85, v185);
        }

        else
        {
          sub_1A78CFC48(v157, v176, v177, v85, v185);
        }
      }

      else
      {
        sub_1A78CF454(v157, v176, v177, v85, v185);
      }

      v104 = *v185;
      swift_beginAccess();
      sub_1A78C2BF8(v104 + 32, v104 + 32 + *(v104 + 16), &v174);
      v163 = v174;

      sub_1A78C0AFC(v96, v150);
      sub_1A78C0AFC(v102, v103);
      if (qword_1EB2A6C18 != -1)
      {
        swift_once();
      }

      *v185 = qword_1EB2A6CB0;
      *&v185[8] = *algn_1EB2A6CB8;
      sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
      v105 = sub_1A78FE770(v167, 2);
      v107 = v106;
      sub_1A793D808();
      sub_1A78C0AFC(v105, v107);
      v108 = sub_1A78FE770(v70 + 1, 2);
      v110 = v109;
      sub_1A793D808();
      sub_1A78C0AFC(v108, v110);
      v111 = sub_1A78FE770(v166, 2);
      v113 = v112;
      sub_1A793D808();
      sub_1A78C0AFC(v111, v113);
      v114 = *v185;
      v115 = *&v185[8];
      v174 = sub_1A78FE770(0xCuLL, 2);
      v175 = v116;
      sub_1A793D808();
      sub_1A793D808();
      sub_1A793D808();
      *&v186 = MEMORY[0x1E6969080];
      *(&v186 + 1) = MEMORY[0x1E6969078];
      v117 = v151;
      *v185 = v151;
      *&v185[8] = *(&v84 + 1);
      v118 = __swift_project_boxed_opaque_existential_1(v185, MEMORY[0x1E6969080]);
      v119 = *v118;
      v120 = v118[1];
      sub_1A78C0990(v117, *(&v84 + 1));
      sub_1A7900C14(v119, v120, &v174);
      __swift_destroy_boxed_opaque_existential_1(v185);
      v121 = v174;
      v122 = v175;
      if (v70)
      {
        if (v70 == 1)
        {
          sub_1A78CF840(v157, v174, v175, 12, v185);
        }

        else
        {
          sub_1A78CFC48(v157, v174, v175, 0xCuLL, v185);
        }
      }

      else
      {
        sub_1A78CF454(v157, v174, v175, 0xCuLL, v185);
      }

      v123 = *v185;
      swift_beginAccess();
      sub_1A78C2BF8(v123 + 32, v123 + 32 + *(v123 + 16), &v172);
      v124 = v172;

      sub_1A78C0AFC(v121, v122);
      swift_beginAccess();
      v125 = *(v124 + 16);

      sub_1A78F6AF0(v124 + 32, v124 + 32 + v125, v185);
      v156 = v101;
      sub_1A78C0AFC(v114, v115);

      v151 = *v185;
      v150 = *&v185[8];
      sub_1A78CEEC8(0, 0xF000000000000000);
    }

    LODWORD(v159) = v159;
    if (qword_1EB2A6C78 != -1)
    {
      swift_once();
    }

    v126 = v180;
    *v185 = qword_1EB2A6CB0;
    *&v185[8] = *algn_1EB2A6CB8;
    sub_1A78C0990(qword_1EB2A6CB0, *algn_1EB2A6CB8);
    v127 = sub_1A78FE770(v167, 2);
    v129 = v128;
    sub_1A793D808();
    sub_1A78C0AFC(v127, v129);
    v130 = sub_1A78FE770(v70 + 1, 2);
    v132 = v131;
    sub_1A793D808();
    sub_1A78C0AFC(v130, v132);
    v133 = sub_1A78FE770(v166, 2);
    v135 = v134;
    sub_1A793D808();
    sub_1A78C0AFC(v133, v135);
    v137 = *v185;
    v136 = *&v185[8];
    v172 = sub_1A78FE770(16 * v70 + 32, 2);
    v173 = v138;
    sub_1A793D808();
    v166 = v136;
    sub_1A793D808();
    sub_1A793D808();
    *&v186 = MEMORY[0x1E6969080];
    *(&v186 + 1) = MEMORY[0x1E6969078];
    *v185 = v126;
    v139 = __swift_project_boxed_opaque_existential_1(v185, MEMORY[0x1E6969080]);
    v140 = *v139;
    v141 = v139[1];
    v167 = v126;
    sub_1A78C0990(v126, *(&v126 + 1));
    sub_1A7900C14(v140, v141, &v172);
    __swift_destroy_boxed_opaque_existential_1(v185);
    v142 = v172;
    v143 = v173;
    v144 = 16 * v70 + 32;
    if (v70)
    {
      if (v70 == 1)
      {
        sub_1A78CF840(v157, v172, v173, v144, &v171);
      }

      else
      {
        sub_1A78CFC48(v157, v172, v173, v144, &v171);
      }
    }

    else
    {
      sub_1A78CF454(v157, v172, v173, v144, &v171);
    }

    v145 = v171;
    swift_beginAccess();
    sub_1A78C2BF8(v145 + 32, v145 + 32 + *(v145 + 16), &v170);
    v146 = v170;

    sub_1A78C0AFC(v160, v168);
    sub_1A78C0AFC(v152, v153);
    sub_1A78C0AFC(v137, v166);
    sub_1A78CEEC8(v155, v154);
    sub_1A78C0AFC(v161, v169);
    __swift_destroy_boxed_opaque_existential_1(v162);
    sub_1A78C0AFC(v142, v143);

    result = sub_1A78C0AFC(v167, *(&v126 + 1));
    v147 = v164;
    v148 = v163;
    *v164 = 0;
    v147[1] = v148;
    v149 = v150;
    v147[2] = v151;
    v147[3] = v149;
    v147[4] = v146;
    *(v147 + 40) = v159;
    *(v147 + 41) = v165;
    *(v147 + 42) = v158;
  }

  return result;
}

BOOL sub_1A78D4274(uint64_t a1)
{
  sub_1A78D4C4C(a1, &v16);
  v1 = v17;
  if (v17)
  {
    sub_1A78C78FC(&v16, v15);
    sub_1A78D4B98(v15, v13);
    v2 = v14;
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    v4 = MEMORY[0x1EEE9AC00](v3);
    v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v6, v4);
    v8 = sub_1A79155B4(v6, v2);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1A793D808();
    sub_1A78C0AFC(v8, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v1 == 0;
}

uint64_t sub_1A78D43CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 42) == 3)
  {
    sub_1A78D4960();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    return v8;
  }

  v28 = *(v6 + 42);
  v15 = *v6;
  v26 = *(v6 + 1);
  *v27 = *(v6 + 3);
  *&v27[15] = *(v6 + 39);
  v23 = v15;
  v25[1] = v15;
  v17 = sub_1A78D45C4();
  if (v6[1])
  {
    v18 = v16;
    v25[0] = v6[1];

    v8 = HPKE.AEAD.seal<A, B>(_:authenticating:nonce:using:)(a1, a2, v17, v18, v25, a3, a4, a5, a6);
    v20 = v19;

    sub_1A78C0AFC(v17, v18);
    if (v7)
    {
      return v8;
    }

    if (*(v6 + 42) < 3u)
    {
      if (v23 == -1)
      {
        sub_1A78D4960();
        swift_allocError();
        *v22 = 6;
        swift_willThrow();
        sub_1A78C0AFC(v8, v20);
      }

      else
      {
        *v6 = v23 + 1;
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

uint64_t sub_1A78D45C4()
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v0 + 42) < 3u)
  {
    v1 = *v0;
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1A78CBE8C(v2, v3);
    v4 = sub_1A793DB28();
    *(v4 + 16) = 4;
    *(v4 + 32) = 0;
    v11 = bswap64(v1);
    v12 = v4;
    sub_1A793B52C(&v11, &v12);
    if (v3 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 != 2)
      {
        v6 = 0;
        goto LABEL_13;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v5)
    {
      v6 = BYTE6(v3);
      goto LABEL_13;
    }

    LODWORD(v6) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    v6 = v6;
LABEL_13:
    if (v6 == *(v12 + 16))
    {
      *&v13 = v12;
      *(&v13 + 1) = v2;
      v14 = v3;
      v15 = sub_1A78D494C;
      v16 = 0;
      return sub_1A78D9608(&v13);
    }

    __break(1u);
    goto LABEL_16;
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

char *sub_1A78D4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (*(v6 + 42) == 3)
  {
    sub_1A78D4960();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    return v8;
  }

  v28 = *(v6 + 42);
  v15 = *v6;
  v26 = *(v6 + 8);
  *v27 = *(v6 + 24);
  *&v27[15] = *(v6 + 39);
  v23 = v15;
  v25[1] = v15;
  v17 = sub_1A78D45C4();
  if (*(v6 + 8))
  {
    v18 = v16;
    v25[0] = *(v6 + 8);

    v8 = HPKE.AEAD.open<A, B>(_:nonce:authenticating:using:)(a1, v17, v18, a2, v25, a3, a4, a5, a6);
    v20 = v19;

    sub_1A78C0AFC(v17, v18);
    if (v7)
    {
      return v8;
    }

    if (*(v6 + 42) < 3u)
    {
      if (v23 == -1)
      {
        sub_1A78D4960();
        swift_allocError();
        *v22 = 6;
        swift_willThrow();
        sub_1A78C0AFC(v8, v20);
      }

      else
      {
        *v6 = v23 + 1;
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1A793DE88();
  __break(1u);
  return result;
}

unint64_t sub_1A78D4960()
{
  result = qword_1EB2A6F10;
  if (!qword_1EB2A6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6F10);
  }

  return result;
}

uint64_t sub_1A78D49B4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  if (a4 >> 60 != 15)
  {
    if (v4)
    {
      v9 = &byte_1F1A76B20;
      for (i = qword_1F1A76B10; i; --i)
      {
        v11 = *v9++;
        if (v11 == result)
        {
          return result;
        }
      }

      v8 = 5;
      goto LABEL_14;
    }

LABEL_12:
    v8 = 3;
LABEL_14:
    sub_1A78D4960();
    swift_allocError();
    *v12 = v8;
    return swift_willThrow();
  }

  if (v4)
  {
    goto LABEL_12;
  }

  v5 = &byte_1F1A76B48;
  v6 = qword_1F1A76B38;
  while (v6)
  {
    v7 = *v5++;
    --v6;
    if (v7 == result)
    {
      v8 = 4;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1A78D4A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F18, &qword_1A793F240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A78D4AE0()
{
  result = qword_1EB2A6D18;
  if (!qword_1EB2A6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D18);
  }

  return result;
}

unint64_t sub_1A78D4B34()
{
  result = qword_1EB2A6B90[0];
  if (!qword_1EB2A6B90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A6F20, &qword_1A793F248);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2A6B90);
  }

  return result;
}

uint64_t sub_1A78D4B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1A78D4C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F18, &qword_1A793F240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A78D4CF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A78D4D40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_1A78D4DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_1A78D4E88(a1, a2, a3);
  }

  type metadata accessor for CoreCryptoGCMImpl.Context();
  v9 = swift_allocObject();
  v10 = *(v8 + 24);
  *(v9 + 24) = v10;
  MEMORY[0x1AC55E040](v10);
  v11 = swift_slowAlloc();
  v12 = *(v8 + 16);
  result = MEMORY[0x1AC55E040](v10);
  if ((result & 0x8000000000000000) == 0)
  {
    memmove(v11, v12, result);
    *(v9 + 16) = v11;

    *v3 = v9;
    return sub_1A78D4E88(a1, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78D4E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  swift_getAssociatedTypeWitness();
  v28 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v23 - v4;
  v6 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v9);
  v10 = swift_getAssociatedTypeWitness();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_1A793D5A8();
  sub_1A793DA68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v12;
  v29 = v10;
  v27 = AssociatedConformanceWitness;
  sub_1A793DCF8();
  v14 = v24;
  v26 = *(v24 + 48);
  if (v26(v8, 1, AssociatedTypeWitness) != 1)
  {
    v17 = *(v14 + 32);
    v15 = v14 + 32;
    v16 = v17;
    v18 = (v15 - 24);
    while (1)
    {
      v19 = v15;
      v16(v5, v8, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_1A793D6A8();
      v20 = v32;
      if (v32)
      {
        break;
      }

      (*v18)(v5, AssociatedTypeWitness);
      sub_1A793DCF8();
      v15 = v19;
      if (v26(v8, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v25 + 8))(v28, v29);
      }
    }

    sub_1A78D6484();
    swift_allocError();
    *v21 = v20;
    *(v21 + 4) = 0;
    swift_willThrow();
    (*v18)(v5, AssociatedTypeWitness);
  }

  return (*(v25 + 8))(v28, v29);
}

size_t sub_1A78D52AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_1A78D53AC(a1, a2, a3, a4);
  }

  v16 = a4;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  v11 = swift_allocObject();
  v12 = *(v10 + 24);
  *(v11 + 24) = v12;
  MEMORY[0x1AC55E040](v12);
  v13 = swift_slowAlloc();
  v14 = *(v10 + 16);
  result = MEMORY[0x1AC55E040](v12);
  if ((result & 0x8000000000000000) == 0)
  {
    memmove(v13, v14, result);
    *(v11 + 16) = v13;

    *v4 = v11;
    a4 = v16;
    return sub_1A78D53AC(a1, a2, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78D53AC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *a2;
  v9 = a2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v13 = v8 + 16;
  v8 = *(v8 + 16);
  v12 = *(v13 + 8);
  v11 = v12 - v8;
  if (__OFSUB__(v12, v8))
  {
    __break(1u);
LABEL_8:
    v14 = __OFSUB__(HIDWORD(v8), v8);
    v15 = HIDWORD(v8) - v8;
    if (v14)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v11 = v15;
  }

LABEL_11:
  result = sub_1A793DB98();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_1A78C3DF4(result, 0);
  MEMORY[0x1EEE9AC00](v16);
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v11;
  v19[5] = v7;
  v19[6] = v4;
  result = sub_1A78CD4CC(sub_1A78D6520, v19);
  if (result)
  {
    v17 = result;
    sub_1A78D6484();
    swift_allocError();
    *v18 = v17;
    *(v18 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78D550C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v44 = a8;
  v45 = a2;
  v46 = a5;
  v47 = a7;
  v48 = a4;
  v43 = a9;
  v57 = *MEMORY[0x1E69E9840];
  v50 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v43 - v13;
  v51 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v20 = *a3;
  v19 = a3[1];
  v49 = v21;
  if (v19 >> 60 == 15)
  {
    v53 = xmmword_1A793F380;
    sub_1A78CBDF4(&v53);
    v22 = *(&v53 + 1);
    v23 = v53;
  }

  else
  {
    v23 = v20;
    v22 = v19;
  }

  sub_1A78C0990(v23, v22);
  sub_1A78CBE8C(v20, v19);
  v24 = ccaes_gcm_encrypt_mode();
  if (!v24)
  {
LABEL_26:
    __break(1u);
  }

  v25 = v24;
  *&v56 = v18;
  *&v53 = v23;
  *(&v53 + 1) = v22;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();
  v26 = sub_1A78C35B4(&v56, &v53, v25);
  if (v9)
  {
    return sub_1A78C0AFC(v23, v22);
  }

  v52 = v26;
  v28 = v49;
  v29 = v50;
  (*(v49 + 16))(v14, v48, v50);
  v30 = v51;
  if ((*(v51 + 48))(v14, 1, a6) == 1)
  {
    (*(v28 + 8))(v14, v29);
  }

  else
  {
    (*(v30 + 32))(v17, v14, a6);
    sub_1A78D4DA0(v17, a6, v44);
    (*(v30 + 8))(v17, a6);
  }

  v31 = v22 >> 62;
  v33 = v46;
  v32 = v47;
  v34 = v45;
  if ((v22 >> 62) <= 1)
  {
    if (!v31)
    {
      v35 = BYTE6(v22);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v31 != 2)
  {
    v35 = 0;
    goto LABEL_20;
  }

  v37 = *(v23 + 16);
  v36 = *(v23 + 24);
  v35 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    __break(1u);
LABEL_17:
    if (__OFSUB__(HIDWORD(v23), v23))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v35 = HIDWORD(v23) - v23;
  }

LABEL_20:
  v56 = xmmword_1A793F230;
  v38 = sub_1A793DB98();
  if (__OFADD__(v35, v38))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v35 + v38, 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1A793D768();
  v54 = MEMORY[0x1E6969080];
  v55 = MEMORY[0x1E6969078];
  *&v53 = v23;
  *(&v53 + 1) = v22;
  v39 = __swift_project_boxed_opaque_existential_1(&v53, MEMORY[0x1E6969080]);
  v40 = *v39;
  v41 = v39[1];
  sub_1A78C0990(v23, v22);
  sub_1A7900C14(v40, v41, &v56);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  sub_1A78D52AC(v34, &v56, v33, v32);
  sub_1A78D6390();
  sub_1A78C0AFC(v23, v22);

  v42 = v43;
  *v43 = v56;
  *(v42 + 2) = v35;
  return result;
}

uint64_t sub_1A78D5984(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v54 = a3;
  v9 = sub_1A793DC78();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v56 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];

  sub_1A78C0990(v16, v17);
  v52 = v18;
  v53 = v16;
  v57 = v17;
  sub_1A78C3AA4(v18, v16, v17, &v60);
  sub_1A78C32F4(v60, *(&v60 + 1), &v61);
  if (v5)
  {
    goto LABEL_28;
  }

  v19 = v61;
  v20 = ccaes_gcm_decrypt_mode();
  if (!v20)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v21 = v20;
  v58 = v15;
  v60 = v19;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();
  v22 = sub_1A78C35B4(&v58, &v60, v21);
  v50 = 0;
  v62 = v22;
  v23 = v55;
  (*(v55 + 16))(v11, v54, v9);
  v24 = v56;
  if ((*(v56 + 48))(v11, 1, a4) == 1)
  {
    (*(v23 + 8))(v11, v9);
    v25 = v53;
  }

  else
  {
    (*(v24 + 32))(v14, v11, a4);
    v26 = v50;
    sub_1A78D4DA0(v14, a4, v51);
    (*(v24 + 8))(v14, a4);
    v50 = v26;
    v25 = v53;
    if (v26)
    {
    }
  }

  v61 = xmmword_1A793F230;
  v28 = v57;
  sub_1A78C0990(v25, v57);
  v29 = v52;
  sub_1A78C0B50(v52, v25, v28, &v58);
  sub_1A78C3CAC(16, v58, v59, &v60);
  v31 = *(&v60 + 1);
  v30 = v60;
  v32 = *(&v60 + 1) >> 62;
  if ((*(&v60 + 1) >> 62) <= 1)
  {
    if (!v32)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v32 != 2)
  {
LABEL_16:
    sub_1A78C0AFC(v60, *(&v60 + 1));
    goto LABEL_17;
  }

  v34 = *(v60 + 16);
  v33 = *(v60 + 24);
  sub_1A78C0AFC(v60, *(&v60 + 1));
  v30 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    __break(1u);
LABEL_14:
    v35 = HIDWORD(v30);
    v36 = v30;
    sub_1A78C0AFC(v30, v31);
    if (__OFSUB__(v35, v36))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

LABEL_17:
  sub_1A793D768();
  sub_1A78C0990(v25, v28);
  sub_1A78C0B50(v29, v25, v28, &v58);
  sub_1A78C3CAC(16, v58, v59, &v60);
  v38 = *(&v60 + 1);
  v37 = v60;
  v39 = v62;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_20;
  }

  v40 = swift_allocObject();
  v41 = *(v39 + 24);
  *(v40 + 24) = v41;
  MEMORY[0x1AC55E040](v41);
  v42 = swift_slowAlloc();
  v43 = *(v39 + 16);
  v44 = MEMORY[0x1AC55E040](v41);
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  memmove(v42, v43, v44);
  *(v40 + 16) = v42;

  v28 = v57;
LABEL_20:
  v45 = v50;
  sub_1A78C3908(v37, v38, &v61);
  sub_1A78C0AFC(v37, v38);
  if (v45)
  {
    sub_1A78C0AFC(v61, *(&v61 + 1));
  }

  else
  {
    sub_1A78C0990(v25, v28);
    sub_1A78C8A28(16, v25, v28, &v60);
    v47 = *(&v60 + 1);
    v46 = v60;
    v48 = sub_1A78CDD2C(v60, *(&v60 + 1));
    sub_1A78C0AFC(v46, v47);
    if (v48)
    {

      return v61;
    }

    else
    {
      sub_1A78D6484();
      swift_allocError();
      *v49 = 2;
      *(v49 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v61, *(&v61 + 1));
    }
  }
}

uint64_t sub_1A78D5EC0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v36 = a6;
  v37 = a7;
  v34 = a5;
  AssociatedConformanceWitness = a3;
  v38 = a2;
  v39 = a4;
  v33 = a8;
  swift_getAssociatedTypeWitness();
  v30 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v30 - v10;
  v12 = sub_1A793DC78();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v15);
  v16 = swift_getAssociatedTypeWitness();
  v32 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1A78C9FCC(AssociatedConformanceWitness, a1, v38);
  v21 = v20 + v19;
  v23 = v20 + v22;
  if (!v20)
  {
    v23 = 0;
    v21 = 0;
  }

  v40[0] = v21;
  v40[1] = v23;
  sub_1A793D5A8();
  v38 = v18;
  sub_1A793DA68();
  v39 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = (v31 + 48);
  v25 = (v31 + 32);
  v26 = (v31 + 8);
  while (1)
  {
    sub_1A793DCF8();
    if ((*v24)(v14, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v27 = (*v25)(v11, v14, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v27);
    *(&v30 - 2) = v40;
    *(&v30 - 1) = v34;
    swift_getAssociatedConformanceWitness();
    sub_1A793D6A8();
    (*v26)(v11, AssociatedTypeWitness);
    v28 = v41;
    if (v41)
    {
      goto LABEL_8;
    }
  }

  v28 = 0;
LABEL_8:
  result = (*(v32 + 8))(v38, v39);
  *v33 = v28;
  return result;
}

uint64_t sub_1A78D62D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _DWORD *a5@<X8>)
{
  v7 = a2 - result;
  if (result)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = 0;
  }

  if (*a3)
  {
    if (a3[1] - *a3 >= v8)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = ccgcm_update();
  v9 = result;
  if (!result)
  {
    result = sub_1A78C9FCC(v7, *a3, a3[1]);
    v11 = v10 + result;
    v13 = v10 + v12;
    if (!v10)
    {
      v13 = 0;
      v11 = 0;
    }

    *a3 = v11;
    a3[1] = v13;
  }

  *a5 = v9;
  return result;
}

uint64_t sub_1A78D6390()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  v0 = ccgcm_finalize();
  if (v0)
  {
    v1 = v0;
    sub_1A78D6484();
    swift_allocError();
    *v2 = v1;
    *(v2 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v5[3] = MEMORY[0x1E69E6290];
    v5[4] = MEMORY[0x1E6969DF8];
    v5[0] = v4;
    v5[1] = v5;
    __swift_project_boxed_opaque_existential_1(v5, MEMORY[0x1E69E6290]);
    sub_1A793D788();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

unint64_t sub_1A78D6484()
{
  result = qword_1EB2A6D48;
  if (!qword_1EB2A6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D48);
  }

  return result;
}

uint64_t sub_1A78D64D8@<X0>(uint64_t result@<X0>, _DWORD *a3@<X8>)
{
  if (result)
  {
    result = ccgcm_aad();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A78D65F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A78D6640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A78D66A0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1AC55D830](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1AC55D830](v4);
      --v2;
    }

    while (v2);
  }

  if (!v0[1])
  {
    return sub_1A793DF88();
  }

  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  sub_1A793DF88();
  v8 = v6 >> 1;
  result = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x1AC55D830](result);
  v10 = __OFSUB__(v8, v5);
  v11 = v8 - v5;
  if (!v11)
  {
    return result;
  }

  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = v7 + v5;
  do
  {
    ++v12;
    result = sub_1A793DF88();
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sub_1A78D6758()
{
  sub_1A793DF58();
  sub_1A78D66A0();
  return sub_1A793DFA8();
}

uint64_t sub_1A78D679C(uint64_t a1)
{
  sub_1A793DF58();
  sub_1A78D66A0();
  return sub_1A793DFA8();
}

BOOL sub_1A78D67D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A78D6980(v5, v7);
}

char *sub_1A78D6824()
{
  result = sub_1A78D6AC8(&unk_1F1A76BA0);
  *&xmmword_1EB2ADA90 = &unk_1F1A76B50;
  *(&xmmword_1EB2ADA90 + 1) = result;
  qword_1EB2ADAA0 = v1;
  unk_1EB2ADAA8 = v2;
  qword_1EB2ADAB0 = v3;
  return result;
}

char *sub_1A78D6898()
{
  result = sub_1A78D6AC8(&unk_1F1A76BF8);
  *&xmmword_1EB2ADAC0 = &unk_1F1A76B50;
  *(&xmmword_1EB2ADAC0 + 1) = result;
  qword_1EB2ADAD0 = v1;
  unk_1EB2ADAD8 = v2;
  qword_1EB2ADAE0 = v3;
  return result;
}

char *sub_1A78D690C()
{
  result = sub_1A78D6AC8(&unk_1F1A76C40);
  *&xmmword_1EB2ADAE8 = &unk_1F1A76B50;
  *(&xmmword_1EB2ADAE8 + 1) = result;
  qword_1EB2ADAF8 = v1;
  unk_1EB2ADB00 = v2;
  qword_1EB2ADB08 = v3;
  return result;
}

BOOL sub_1A78D6980(_BOOL8 result, void *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:
  v8 = a2[1];
  if (!*(result + 8))
  {
    return !v8;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(result + 24);
  v10 = *(result + 32) >> 1;
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = a2[3];
  v13 = a2[4] >> 1;
  v14 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 != v14)
  {
    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  v15 = *(result + 16) + v9;
  v16 = a2[2] + v12;
  result = 1;
  if (v15 != v16 && v9 != v10)
  {
    if (v9 >= v10)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    if (v12 != v13)
    {
      v17 = 0;
      if (v12 <= v13)
      {
        v18 = a2[4] >> 1;
      }

      else
      {
        v18 = a2[3];
      }

      v19 = v18 - v12;
      while (v19 != v17)
      {
        if (*(v15 + v17) != *(v16 + v17))
        {
          return 0;
        }

        if (~v9 + v10 == v17)
        {
          return 1;
        }

        v20 = v9 + v17 + 1;
        if (v20 < v9 || v20 >= v10)
        {
          goto LABEL_39;
        }

        result = 0;
        if (v14 == ++v17)
        {
          return result;
        }
      }

      goto LABEL_38;
    }

    return 0;
  }

  return result;
}

char *sub_1A78D6AC8(uint64_t a1)
{
  v4 = a1;
  v5 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A791C348(6, &v5, sub_1A78D6B64, v3);
  result = v5;
  if (v1)
  {
  }

  return result;
}

unint64_t sub_1A78D6B80()
{
  result = qword_1EB2A6F28;
  if (!qword_1EB2A6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6F28);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A78D6C3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A78D6C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A78D6CE0()
{
  result = qword_1EB2A6F40;
  if (!qword_1EB2A6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6F40);
  }

  return result;
}

uint64_t sub_1A78D6F14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A78D6F68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A78D6FD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A78D7118(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1A78D7350(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((result - 0x1000000000000001) >> 61 == 7)
  {
    sub_1A78D8920();
    return sub_1A793DD98();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78D73E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v37 = *(a2 + 24);
  v38 = a1;
  v34[1] = *(*(v37 + 8) + 24);
  swift_getAssociatedTypeWitness();
  v36 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = v34 - v4;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_checkMetadataState();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = v34 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v34[0] = v34 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v41 = v34 - v18;
  (*(v5 + 16))(v8, v2, v3, v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1A793DD38();
  sub_1A78D7350(v38, v3, v37);
  sub_1A793DD58();
  v20 = *(v5 + 8);
  v37 = v3;
  v20(v8, v3);
  v21 = *(v42 + 8);
  v21(v15, v9);
  v38 = swift_getAssociatedConformanceWitness();
  sub_1A793DEF8();
  sub_1A793DEB8();
  sub_1A793DD48();
  v21(v15, v9);
  v22 = v21;
  v23 = v39;
  (*(v42 + 16))();
  v42 = AssociatedConformanceWitness;
  if (sub_1A793DD88() & 1) == 0 || (sub_1A793DEF8(), v24 = v34[0], sub_1A793DEB8(), swift_getAssociatedConformanceWitness(), v25 = sub_1A793D8E8(), result = (v22)(v24, v9), (v25))
  {
    if (sub_1A793DD78() <= 7)
    {
      goto LABEL_13;
    }

    v44 = -1;
    v27 = sub_1A793DD88();
    v28 = sub_1A793DD78();
    if (v27)
    {
      if (v28 <= 8)
      {
LABEL_11:
        sub_1A793DEF8();
        v31 = v34[0];
        sub_1A793DEB8();
        swift_getAssociatedConformanceWitness();
        v23 = v39;
        v32 = sub_1A793D8C8();
        v22(v31, v9);
        if (v32)
        {
          goto LABEL_12;
        }

LABEL_13:
        v33 = sub_1A793DD68();
        v22(v23, v9);
        v22(v40, v9);
        v22(v41, v9);
        return v33;
      }

      sub_1A78D88CC();
      v29 = v34[0];
      sub_1A793DD38();
      swift_getAssociatedConformanceWitness();
      v23 = v39;
    }

    else
    {
      v23 = v39;
      if (v28 < 9)
      {
LABEL_12:
        sub_1A793DD68();
        goto LABEL_13;
      }

      sub_1A78D88CC();
      v29 = v34[0];
      sub_1A793DD38();
      swift_getAssociatedConformanceWitness();
    }

    v30 = sub_1A793D8D8();
    v22(v29, v9);
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78D7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntegerBytesCollection.Index(255, *(a3 + 16), *(a3 + 24), a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69830](a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1A78D7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntegerBytesCollection.Index(255, *(a3 + 16), *(a3 + 24), a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69840](a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1A78D7C0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78D73D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A78D7C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A78BDA5C();
  *a1 = result;
  return result;
}

uint64_t (*sub_1A78D7C64(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1A78D7D3C(v6, *a2, a3);
  *(v7 + 40) = v9;
  *(v7 + 32) = v8;
  return sub_1A78D7CF4;
}

void sub_1A78D7CF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A78D7D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntegerBytesCollection.Index(255, *(a1 + 16), *(a1 + 24), v3);
  v4 = swift_getWitnessTable();

  return MEMORY[0x1EEE69838](a1, WitnessTable, v4);
}

uint64_t sub_1A78D7E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntegerBytesCollection.Index(255, *(a3 + 16), *(a3 + 24), v7);
  v8 = swift_getWitnessTable();

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v8);
}

uint64_t sub_1A78D7ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntegerBytesCollection.Index(255, *(a3 + 16), *(a3 + 24), v7);
  v8 = swift_getWitnessTable();

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v8);
}

uint64_t sub_1A78D8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntegerBytesCollection.Index(255, *(a2 + 16), *(a2 + 24), v7);
  v8 = swift_getWitnessTable();

  return a4(a1, a2, WitnessTable, v8);
}

uint64_t sub_1A78D80DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntegerBytesCollection.Index(255, *(a2 + 16), *(a2 + 24), v7);
  v8 = swift_getWitnessTable();
  return a4(&v10, a2, WitnessTable, v8);
}

uint64_t sub_1A78D8184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1A793DE58() + 36);
  v7 = sub_1A78D73D8(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1A78D8270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1A78D82CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1A78D87FC(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1A78D835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69E50](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A78D8428(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78D8438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A78D8428(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1A78D84F4()
{
  result = qword_1EB2A7068;
  if (!qword_1EB2A7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7068);
  }

  return result;
}

uint64_t sub_1A78D8630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();
  sub_1A78D84F4();
  return swift_getWitnessTable();
}

uint64_t sub_1A78D8718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1A793D8F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78D8800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A793D8F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1A793DC38();
  result = sub_1A793D8F8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78D88CC()
{
  result = qword_1EB2A7070;
  if (!qword_1EB2A7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7070);
  }

  return result;
}

unint64_t sub_1A78D8920()
{
  result = qword_1EB2A7078;
  if (!qword_1EB2A7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7078);
  }

  return result;
}

uint64_t sub_1A78D8974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AES.CCM.SealedBox.tag.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t AES.CCM.SealedBox.ciphertext.getter()
{
  v1 = *(v0 + 16);
  sub_1A78C0990(v1, *(v0 + 24));
  return v1;
}

uint64_t AES.CCM.SealedBox.nonce.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1A78C0990(v2, v3);
}

uint64_t AES.CCM.SealedBox.init<A, B>(nonce:ciphertext:tag:securityLevel:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a1[1];
  v28 = *a1;
  v15 = *a4;
  v16 = *(*(*(a8 + 8) + 8) + 8);
  v17 = sub_1A793DB98();
  v18 = 8;
  if (v15)
  {
    v18 = 16;
  }

  if (v17 == v18)
  {
    v19 = sub_1A78C7370(a2, a5, *(*(*(*(a7 + 8) + 8) + 8) + 8));
    v26 = v20;
    v27 = v19;
    v21 = sub_1A78C7370(a3, a6, *(v16 + 8));
    v23 = v22;
    (*(*(a6 - 8) + 8))(a3, a6);
    result = (*(*(a5 - 8) + 8))(a2, a5);
    *a9 = v21;
    *(a9 + 8) = v23;
    *(a9 + 16) = v27;
    *(a9 + 24) = v26;
    *(a9 + 32) = v28;
    *(a9 + 40) = v14;
    *(a9 + 48) = v15;
  }

  else
  {
    sub_1A78C0AFC(v28, v14);
    sub_1A78D6484();
    swift_allocError();
    *v25 = 1;
    *(v25 + 4) = 1;
    swift_willThrow();
    (*(*(a6 - 8) + 8))(a3, a6);
    return (*(*(a5 - 8) + 8))(a2, a5);
  }

  return result;
}

void sub_1A78D8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v22 = v24 - v20;
  if (v16)
  {
    v23 = *(*(v18 - 8) + 72);
    if (v23)
    {
      if (v17 - v16 != 0x8000000000000000 || v23 != -1)
      {
        v19(v16, (v17 - v16) / v23, v14, v21);
        if (!v10)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  (v19)(0, 0, v24 - v20, v21.n128_f64[0]);
  v14 = v22;
  if (v10)
  {
LABEL_6:
    (*(v12 + 32))(a10, v14, a7);
  }
}

void sub_1A78D8DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1A78D8C60(MEMORY[0x1E69E7508], sub_1A78D90C4, v9, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1A78D8E98@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_1A793DA78();
  *(a6 + v12) = result;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A78D8FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A78D9040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A78D90E8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1A793DB18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7100, &unk_1A7946B00);
  if (swift_dynamicCast())
  {
    sub_1A78C78FC(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1A793D6A8();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1A78C2ADC(v40, &qword_1EB2A6F18, &qword_1A793F240);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v40;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1A793DE48();
  }

  sub_1A78DA0AC(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = sub_1A78CC5A0(v8);
  *(&v40[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v10 = sub_1A78FE2CC(sub_1A78DA7CC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v40[0] + 1) >> 62;
  if ((*(&v40[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v40[0] + 16);
      v18 = *(*&v40[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v40[0]), v40[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v40[0]) - LODWORD(v40[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v40[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v40[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v40[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1A793D758();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v40[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1A78E4BE8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1A793D9D8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1A793DA18();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1A793DE48();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1A78E4BE8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1A793D9E8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1A793D788();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1A793D788();
    sub_1A78CEEC8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1A78CEEC8(v36, v6);
LABEL_63:
  v32 = v40[0];
  sub_1A78C0990(*&v40[0], *(&v40[0] + 1));

  sub_1A78C0AFC(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1A78D9608(__int128 *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7110, "hs");
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7118, &unk_1A79446E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37[-v6];
  v8 = *a1;
  v46 = a1[1];
  v47 = *(a1 + 4);
  v45 = v8;
  v9 = v8;
  v10 = v46;
  v41 = v8;
  v42 = v46;
  v43 = v47;
  sub_1A793DB18();
  sub_1A78C0990(*(&v9 + 1), v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7120, &qword_1A793FEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7100, &unk_1A7946B00);
  if (!swift_dynamicCast())
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_1A78C2ADC(v39, &qword_1EB2A6F18, &qword_1A793F240);
    v11 = *(&v45 + 1);
    v12 = *(v9 + 16);
    v13 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      v14 = 0;
      if (v13 != 2)
      {
        goto LABEL_15;
      }

      v15 = *(*(&v45 + 1) + 16);
      v16 = *(*(&v45 + 1) + 24);
      v17 = __OFSUB__(v16, v15);
      v11 = v16 - v15;
      if (!v17)
      {
LABEL_12:
        if (v11 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

LABEL_15:
        *&v41 = sub_1A78CC5A0(v14);
        *(&v41 + 1) = v18;
        MEMORY[0x1EEE9AC00](v41);
        *&v37[-16] = &v45;
        sub_1A78C9770(sub_1A78DA658, &v37[-32]);
        v19 = *&v4[*(v2 + 48)];
        sub_1A78DA674(v4, v7);
        v20 = *(&v41 + 1) >> 62;
        if ((*(&v41 + 1) >> 62) > 1)
        {
          if (v20 != 2)
          {
            if (!v19)
            {
              goto LABEL_30;
            }

            v24 = 0;
LABEL_37:
            if (v24 < v19)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            sub_1A793D758();
LABEL_39:
            sub_1A78C2ADC(v7, &qword_1EB2A7118, &unk_1A79446E0);
            goto LABEL_40;
          }

          v22 = *(v41 + 16);
          v21 = *(v41 + 24);
          v17 = __OFSUB__(v21, v22);
          v23 = v21 - v22;
          if (v17)
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
          }

          if (v19 != v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!v20)
          {
            if (v19 == BYTE14(v41))
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          if (__OFSUB__(DWORD1(v41), v41))
          {
            goto LABEL_53;
          }

          if (v19 != DWORD1(v41) - v41)
          {
LABEL_25:
            if (v20 == 2)
            {
              v24 = *(v41 + 24);
            }

            else if (v20 == 1)
            {
              v24 = v41 >> 32;
            }

            else
            {
              v24 = BYTE14(v41);
            }

            goto LABEL_37;
          }
        }

LABEL_30:
        memset(v44, 0, 15);
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7128, &qword_1A793FF00) + 56);
        if ((*(v7 + v25) & 1) == 0)
        {
          v26 = *v7;
          v27 = v7[1];
          v28 = *(*v7 + 16);
          if (v27 == v28)
          {
            LOBYTE(v29) = 0;
LABEL_33:
            *(v7 + v25) = 1;
            if (v29)
            {
              *&v39[0] = v44[0];
              *(v39 + 6) = *(v44 + 6);
              sub_1A793D788();
            }

            goto LABEL_39;
          }

          LOBYTE(v29) = 0;
          while (v27 < v28)
          {
            v34 = *(v26 + v27 + 32);
            v7[1] = v27 + 1;
            sub_1A793D828();
            sub_1A78DA6E4();
            sub_1A793DCF8();
            if (BYTE1(v39[0]) == 1)
            {
              goto LABEL_33;
            }

            v35 = v39[0];
            v36 = *(v7 + *(v5 + 44));
            LOBYTE(v39[0]) = v34;
            BYTE1(v39[0]) = v35;
            v36(&v38, v39);
            *(v44 + v29) = v38;
            v29 = v29 + 1;
            if ((v29 >> 8))
            {
              goto LABEL_49;
            }

            if (v29 == 14)
            {
              *&v39[0] = v44[0];
              *(v39 + 6) = *(v44 + 6);
              sub_1A793D788();
              LOBYTE(v29) = 0;
            }

            v26 = *v7;
            v27 = v7[1];
            v28 = *(*v7 + 16);
            if (v27 == v28)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v11 = BYTE6(v46);
      goto LABEL_12;
    }

    v17 = __OFSUB__(HIDWORD(v11), v11);
    LODWORD(v11) = HIDWORD(v11) - v11;
    if (v17)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v11 = v11;
    goto LABEL_12;
  }

  sub_1A78C78FC(v39, v44);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1A793D6A8();
  v41 = v39[0];
  __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_40:
  v30 = v41;
  v31 = *(&v45 + 1);
  v32 = v46;
  sub_1A78C0990(v41, *(&v41 + 1));

  sub_1A78C0AFC(v31, v32);

  sub_1A78C0AFC(v30, *(&v30 + 1));
  return v30;
}

unint64_t sub_1A78D9BB4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1A78C3BEC(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1A792BC64(v3, v4);
    }

    else
    {
      v6 = sub_1A78C0FA8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1A78D9C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7108, &unk_1A7946860);
  v18[3] = v8;
  v18[4] = sub_1A78C2E38(&qword_1ED5F8988, &qword_1EB2A7108, &unk_1A7946860, MEMORY[0x1E696A0A0]);
  v9 = swift_allocObject();
  v18[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v18, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);
    result = MEMORY[0x1AC55E410](a2);
    __break(1u);
  }

  else
  {
    sub_1A78C2D58((v10[1] + v11), (v10[1] + v11 + v14), &v17);
    v15 = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

  return result;
}

uint64_t Curve448.Signing.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_1A793DB28();
  *(v2 + 16) = 57;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  v5 = v2;
  v3 = sub_1A78E2690(0x39uLL, &v5);

  *a1 = v3;
  return result;
}

void *Curve448.Signing.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7914EA4();
  *a1 = result;
  return result;
}

uint64_t Curve448.Signing.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = sub_1A7915254(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

unint64_t Curve448.Signing.PrivateKey.rawRepresentation.getter()
{
  v1 = sub_1A793D6F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *v4 = sub_1A78DA2BC;
  v4[1] = v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969028], v1);

  return sub_1A78DA2C4(v5 + 32, v6, v4);
}

uint64_t Curve448.Signing.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A79152D0(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve448.Signing.PublicKey.rawRepresentation.getter()
{
  v0 = sub_1A793DB18();
  v1 = sub_1A78C0DCC(v0);

  return v1;
}

unint64_t sub_1A78DA0AC@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1A78C3BEC(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1A793D698();
      swift_allocObject();
      v8 = sub_1A793D638();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1A793D738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1A78DA174@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1A793DE38();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DA1C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3 = *(a3 + 3);
  v7 = *(a3 + 1);
  v8 = v3;
  v5[2] = &v6;
  return sub_1A793C444(sub_1A78DA73C, v5, a1, a2);
}

void *sub_1A78DA228@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = *(a3 + 32);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7110, "hs") + 48);
  sub_1A78DA75C(v11, v10);
  result = sub_1A791A374(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

unint64_t sub_1A78DA2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A793D6F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A793D6E8();
  if (a2)
  {
    sub_1A793D698();
    swift_allocObject();

    v10 = sub_1A793D628();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1A793D688();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1A78EE6DC(v10, a2);
  }

  else
  {
    v13 = sub_1A793D6E8();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SymmetricKey(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SymmetricKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A78DA674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7118, &unk_1A79446E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A78DA6E4()
{
  result = qword_1EB2A6D78;
  if (!qword_1EB2A6D78)
  {
    sub_1A793D828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D78);
  }

  return result;
}

uint64_t sub_1A78DA75C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7120, &qword_1A793FEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1A78DA7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1A793C3D8(sub_1A78DA834, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1A78DAB0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78DAC24@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78DAD0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A793DB28();
  *(v3 + 16) = 20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  ccdigest_final(*(v1 + 16));
  sub_1A791C4AC((v3 + 32), v3 + 32 + *(v3 + 16), &v7);
  if (v9)
  {
    __break(1u);
    sub_1A793DB18();
    result = MEMORY[0x1AC55E410](0);
    __break(1u);
  }

  else
  {
    v4 = v8;
    v6 = v7;

    *a1 = v6;
    *(a1 + 16) = v4;
  }

  return result;
}

unint64_t sub_1A78DADD4()
{
  result = qword_1EB2A7148;
  if (!qword_1EB2A7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7148);
  }

  return result;
}

unint64_t sub_1A78DAE28(uint64_t a1)
{
  result = sub_1A78DAE50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78DAE50()
{
  result = qword_1ED5F8990;
  if (!qword_1ED5F8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8990);
  }

  return result;
}

unint64_t sub_1A78DAEA8()
{
  result = qword_1EB2A7150;
  if (!qword_1EB2A7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7150);
  }

  return result;
}

unint64_t sub_1A78DAF00()
{
  result = qword_1EB2A7158;
  if (!qword_1EB2A7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7158);
  }

  return result;
}

unint64_t sub_1A78DAF54(uint64_t a1)
{
  result = sub_1A78DAF7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78DAF7C()
{
  result = qword_1EB2A7160;
  if (!qword_1EB2A7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7160);
  }

  return result;
}

unint64_t sub_1A78DAFD4()
{
  result = qword_1EB2A7168;
  if (!qword_1EB2A7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7168);
  }

  return result;
}

unint64_t sub_1A78DB02C()
{
  result = qword_1EB2A7170;
  if (!qword_1EB2A7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7170);
  }

  return result;
}

unint64_t sub_1A78DB080(uint64_t a1)
{
  result = sub_1A78DB0A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78DB0A8()
{
  result = qword_1EB2A7178;
  if (!qword_1EB2A7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7178);
  }

  return result;
}

unint64_t sub_1A78DB100()
{
  result = qword_1EB2A7180;
  if (!qword_1EB2A7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7180);
  }

  return result;
}

uint64_t KEM.EncapsulationResult.encapsulated.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void *KEM.EncapsulationResult.init(sharedSecret:encapsulated:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1A78DB248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A78DB290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HPKE.KEM.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

char *sub_1A78DB420@<X0>(char **a1@<X8>)
{
  result = _s9CryptoKit4HPKEO3KEMO8allCasesSayAEGvgZ_0();
  *a1 = result;
  return result;
}

char *_s9CryptoKit4HPKEO3KEMO8allCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71C8, &qword_1A7940260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7940180;
  *(inited + 32) = 50462976;
  result = sub_1A7909588(1, 5, 1, inited);
  *(result + 2) = 5;
  result[36] = 4;
  return result;
}

unint64_t sub_1A78DB4F4()
{
  result = qword_1EB2A71B0;
  if (!qword_1EB2A71B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A71B8, &qword_1A79401C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A71B0);
  }

  return result;
}

unint64_t sub_1A78DB55C()
{
  result = qword_1EB2A71C0;
  if (!qword_1EB2A71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A71C0);
  }

  return result;
}

uint64_t _s3KEMOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KEMOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoTokenKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoTokenKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A78DB764(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A78DB780(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

_BYTE *HPKE.Ciphersuite.init(kem:kdf:aead:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

uint64_t static HPKE.Ciphersuite.P256_SHA256_AES_GCM_256.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2A6DA8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB2A71D2;
  *a1 = word_1EB2A71D0;
  *(a1 + 2) = v1;
  return result;
}

uint64_t static HPKE.Ciphersuite.P384_SHA384_AES_GCM_256.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2A6DB0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB2A71D5;
  *a1 = word_1EB2A71D3;
  *(a1 + 2) = v1;
  return result;
}

uint64_t static HPKE.Ciphersuite.P521_SHA512_AES_GCM_256.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2A6DB8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB2A71D8;
  *a1 = word_1EB2A71D6;
  *(a1 + 2) = v1;
  return result;
}

uint64_t static HPKE.Ciphersuite.Curve25519_SHA256_ChachaPoly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2A6DC0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB2A71DB;
  *a1 = word_1EB2A71D9;
  *(a1 + 2) = v1;
  return result;
}

uint64_t static HPKE.Ciphersuite.XWingMLKEM768X25519_SHA256_AES_GCM_256.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2A6DC8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EB2A71DE;
  *a1 = word_1EB2A71DC;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_1A78DBA84()
{
  result = sub_1A78D90E8(1162563656, 0xE400000000000000);
  qword_1EB2A6CB0 = result;
  *algn_1EB2A6CB8 = v1;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11CiphersuiteVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s11CiphersuiteVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1A78DBBF8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A78C57C4((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v9[v11 + 32] = 0;
  *a1 = v9;
  v12 = swift_unknownObjectRetain();
  sub_1A78C5A88(v12, a3, a4, a5);
}

uint64_t sub_1A78DBCE8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v0[1];
  result = MEMORY[0x1AC55D830](result);
  v5 = __OFSUB__(v2, v1);
  v6 = v2 - v1;
  if (!v6)
  {
    return result;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v4 + v1;
  do
  {
    ++v7;
    result = sub_1A793DF88();
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_1A78DBD54(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_1A793DF58();
  v5 = v4 >> 1;
  result = v5 - v3;
  if (__OFSUB__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1AC55D830](result);
    v7 = __OFSUB__(v5, v3);
    v8 = v5 - v3;
    if (!v8)
    {
      return sub_1A793DFA8();
    }

    if (!((v8 < 0) ^ v7 | (v8 == 0)))
    {
      v9 = v2 + v3;
      do
      {
        ++v9;
        sub_1A793DF88();
        --v8;
      }

      while (v8);
      return sub_1A793DFA8();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A78DBE1C()
{
  result = qword_1EB2A71E0;
  if (!qword_1EB2A71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A71E0);
  }

  return result;
}

uint64_t sub_1A78DBE70(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1A78DBF44(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v8 = a5;
  v9 = a6 >> 1;
  if (__OFSUB__(a6 >> 1, a5))
  {
    goto LABEL_57;
  }

  if (v7 != (a6 >> 1) - a5)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = (result + 48 * a2);
  if (v10 == (a4 + 48 * a5) || v6 == a2)
  {
    return 1;
  }

  v37 = result;
  if (v6 > a2)
  {
    v12 = v10[5];
    v13 = v10[3];
    v44 = v10[1];
    v45 = *v10;
    v42 = v10[4];
    v43 = v10[2];
    result = swift_unknownObjectRetain();
    if (v9 == v8)
    {
LABEL_13:
      v14 = 0;
      v15 = 0;
LABEL_14:
      sub_1A78DC35C(v45, v44, v43);
      v16 = v15;
      v17 = v14;
      v18 = 1;
LABEL_52:
      sub_1A78DC35C(v16, v17, v18);
      return 0;
    }

    if (v8 <= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v8;
    }

    v36 = v19;
    v20 = a2;
    while (1)
    {
      v41 = v13;
      if (v8 == v36)
      {
        goto LABEL_60;
      }

      v21 = (a4 + 48 * v8);
      v15 = *v21;
      v23 = v21[4];
      v22 = v21[5];
      v24 = v21[2];
      v40 = v21[3];
      v14 = v21[1];
      result = swift_unknownObjectRetain();
      if (v24 == 1)
      {
        goto LABEL_14;
      }

      v25 = v44;
      if (v45 != v15 || v44 != v14)
      {
        sub_1A78DC35C(v15, v14, v24);
        v16 = v45;
        v17 = v44;
        v18 = v43;
        goto LABEL_52;
      }

      if (v43)
      {
        if (!v24)
        {
          goto LABEL_55;
        }

        v26 = v12 >> 1;
        v27 = (v12 >> 1) - v42;
        if (__OFSUB__(v12 >> 1, v42))
        {
          goto LABEL_63;
        }

        v28 = v22 >> 1;
        v29 = (v22 >> 1) - v23;
        if (__OFSUB__(v22 >> 1, v23))
        {
          goto LABEL_64;
        }

        if (v27 != v29)
        {
          goto LABEL_50;
        }

        if (v27 && v41 + v42 != v40 + v23)
        {
          if (v42 >= v26)
          {
            goto LABEL_65;
          }

          if (v23 == v28)
          {
LABEL_50:
            sub_1A78DC35C(v15, v44, v24);
            v16 = v45;
            v17 = v44;
            v18 = v43;
            goto LABEL_52;
          }

          v30 = 0;
          if (v23 <= v28)
          {
            v31 = v22 >> 1;
          }

          else
          {
            v31 = v23;
          }

          v32 = v31 - v23;
          while (v32 != v30)
          {
            if (*(v41 + v42 + v30) != *(v40 + v23 + v30))
            {
              goto LABEL_50;
            }

            if (~v42 + v26 == v30)
            {
              goto LABEL_43;
            }

            v33 = v42 + v30 + 1;
            if (v33 < v42 || v33 >= v26)
            {
              goto LABEL_59;
            }

            if (v29 == ++v30)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_58;
        }

LABEL_43:
        sub_1A78DC35C(v15, v44, v24);
        v34 = v43;
        v25 = v44;
      }

      else
      {
        v34 = 0;
        if (v24)
        {
LABEL_55:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return 0;
        }
      }

      ++v20;
      result = sub_1A78DC35C(v45, v25, v34);
      if (v20 == v6)
      {
        return 1;
      }

      if (v20 < a2 || v20 >= v6)
      {
        goto LABEL_61;
      }

      ++v8;
      v35 = (v37 + 48 * v20);
      v12 = v35[5];
      v13 = v35[3];
      v44 = v35[1];
      v45 = *v35;
      v42 = v35[4];
      v43 = v35[2];
      result = swift_unknownObjectRetain();
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1A78DC2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1A793DF58();
  v6 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1AC55D830](result);
    v8 = __OFSUB__(v6, a2);
    v9 = v6 - a2;
    if (!v9)
    {
      return sub_1A793DFA8();
    }

    if (!((v9 < 0) ^ v8 | (v9 == 0)))
    {
      v10 = a1 + a2;
      do
      {
        ++v10;
        sub_1A793DF88();
        --v9;
      }

      while (v9);
      return sub_1A793DFA8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78DC35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A78DC370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A78DC3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static HMAC.isValidAuthenticationCode(_:authenticating:using:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v15[0] = a2;
  v15[1] = a3;
  v14 = v9;
  v10 = type metadata accessor for HashedAuthenticationCode(0, a5, a6, a4);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A78C6CF0();
  return sub_1A78DC4BC(a1, v15, &v14, a5, v10, MEMORY[0x1E69E6290], a6, WitnessTable, v12) & 1;
}

uint64_t sub_1A78DC4BC(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  v28 = a8;
  v25 = a6;
  v26 = a1;
  v10 = a4;
  v24 = a9;
  v13 = type metadata accessor for HashedAuthenticationCode(0, a4, a7, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v18 = type metadata accessor for HMAC(0, v10, a7, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  v29 = *a3;

  HMAC.init(key:)(&v29, v10, a7);
  HMAC.update<A>(data:)(a2, v18, v25, v24);
  HMAC.finalize()(v18, v16);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v10) = sub_1A78CB9C8(v26, v16, v27, v13, v28, WitnessTable);
  (*(v14 + 8))(v16, v13);
  (*(v19 + 8))(v21, v18);
  return v10 & 1;
}

uint64_t sub_1A78DC6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, size_t *a6@<X8>)
{
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  static HashFunction.hash(bufferPointer:)(a1, a2, a4, a5);
  v19 = a3;
  swift_getAssociatedConformanceWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  sub_1A793D6A8();
  v15 = sub_1A78C24CC(v20);

  result = (*(v12 + 8))(v14, AssociatedTypeWitness);
  *v18 = v15;
  return result;
}

const void *sub_1A78DC870@<X0>(const void *result@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X8>)
{
  if (result)
  {
    v6 = result;
    v8 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1A78C57C4(0, *(v8 + 2), 0, v8);
    }

    *a3 = v8;
    memcpy(v8 + 32, v6, a2 - v6);
    *a4 = *a3;
    return sub_1A793DB18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HMAC.isValidAuthenticationCode<A>(_:authenticating:using:)(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a3;
  v13 = type metadata accessor for HashedAuthenticationCode(0, a4, a6, a4);
  WitnessTable = swift_getWitnessTable();
  return sub_1A78DC4BC(a1, a2, &v16, a4, v13, a5, a6, WitnessTable, a7) & 1;
}

uint64_t HashedAuthenticationCode.description.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v15 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1A793DE28();

  v18 = 0x7469772043414D48;
  v19 = 0xEA00000000002068;
  v6 = sub_1A793DFB8();
  MEMORY[0x1AC55D280](v6);

  MEMORY[0x1AC55D280](8250, 0xE200000000000000);
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  result = sub_1A793DB38();
  v8 = *(result + 16);
  if (v8 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = 2 * v8;
  if (2 * v8 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v10 = result;
  if (v8)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v9;
    bzero((v11 + 32), v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  v17 = v11;
  sub_1A793DB18();
  sub_1A78DD23C(v10, &v17, &v16);

  v12 = sub_1A793D998();
  v14 = v13;

  MEMORY[0x1AC55D280](v12, v14);

  return v18;
}