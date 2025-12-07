uint64_t sub_1BF95ADA4(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF95B0FC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BF95AED0((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BF95AED0(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[4 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v4[3] >= v6[3])
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 4;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 4;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 4;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[4 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[4 * v9];
LABEL_25:
  for (v5 -= 4; v11 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 1) < *(v11 - 1))
    {
      v19 = v6 - 4;
      v14 = v5 + 4 == v6;
      v6 -= 4;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 4)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 4;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

uint64_t sub_1BF95B074(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BF95B0FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return OUTLINED_FUNCTION_22_0();
  }

  return result;
}

char *sub_1BF95B110(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8978, &unk_1BF9B8480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1BF95B210(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v24 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 24);
    if (v6 == 6)
    {
    }

    v7 = *(i - 2);
    v8 = *(i - 1);
    v26 = *i;
    v9 = *a3;
    v11 = sub_1BF9B2BC0(v6, v7, v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D08, &qword_1BF9C2AB8);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1BF95C36C(v14, a2 & 1);
      v16 = sub_1BF9B2BC0(v6, v7, v8);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

      v11 = v16;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = v18[6] + 24 * v11;
    *v19 = v6;
    *(v19 + 8) = v7;
    *(v19 + 16) = v8;
    *(v18[7] + 8 * v11) = v26;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
LABEL_14:
    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF95B3D4(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95C6C4(v15, a2 & 1);
      v17 = sub_1BF8C2E64(v8, v7);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      *(v19[7] + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v19[6] + 16 * v12);
      *v21 = v8;
      v21[1] = v7;
      *(v19[7] + 8 * v12) = v9;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v19[2] = v24;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

void sub_1BF95B594()
{
  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
  v4 = OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0(v4, v5);
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v3)
  {
LABEL_4:
    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v1 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v3 = v10 & v9;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_16_11();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_23_12(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v22, v23, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3();
    v13 = (v12 + 32 * v11);
    if (v2)
    {
      sub_1BF8C192C(v13, v24);
    }

    else
    {
      sub_1BF8C187C(v13, v24);
    }

    OUTLINED_FUNCTION_93_0();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_51_5();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_20:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v16);
    sub_1BF8C192C(v24, (v18 + 32 * v17));
    OUTLINED_FUNCTION_21_11();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v14)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_78_3();
    if (!v14)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1BF95B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *))
{
  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0(v10, v11);
  OUTLINED_FUNCTION_89_1();
  if (!v12)
  {
LABEL_28:

LABEL_29:
    *v5 = v7;
    OUTLINED_FUNCTION_110_0();
    return;
  }

  v35 = v5;
  v13 = 0;
  v14 = v6 + 8;
  OUTLINED_FUNCTION_3_20();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v21;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_17_13();
        v17 = v23 & v22;
        goto LABEL_9;
      }
    }

    if ((v7 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_16_11();
    v5 = v35;
    if (v31 != v32)
    {
      *v14 = -1 << v30;
    }

    else
    {
      v33 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v33, v34, (v6 + 8));
    }

    v6[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v24 = v6[7] + 48 * (v20 | (v13 << 6));
    if (v7)
    {
      a5(v24, v37);
    }

    else
    {
      sub_1BF8D7914(v24, v37);
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_42_8();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_20:
    OUTLINED_FUNCTION_6_12(v26);
    a5(v37, (v29 + 48 * v28));
    OUTLINED_FUNCTION_21_11();
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_43_7();
    if (!v25)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1BF95B984()
{
  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
  v4 = OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0(v4, v5);
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v3)
  {
LABEL_4:
    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v1 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v3 = v10 & v9;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_16_11();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_23_12(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v30, v31, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3();
    v14 = v12 + v11 * v13;
    if (v2)
    {
      v15 = *v14;
      v16 = *(v14 + 16);
      v17 = *(v14 + 32);
      v35 = *(v14 + 48);
      v33 = v16;
      v34 = v17;
      v32 = v15;
    }

    else
    {
      sub_1BF932508(v14, &v32);
    }

    OUTLINED_FUNCTION_93_0();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_51_5();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_20:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v20);
    v23 = v22 + 56 * v21;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    *(v23 + 48) = v35;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *v23 = v24;
    OUTLINED_FUNCTION_21_11();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_78_3();
    if (!v18)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1BF95BB60(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1BF9B4888();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    a1 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC8, &qword_1BF9B86D8);
  v47 = a2;
  v12 = OUTLINED_FUNCTION_91_1(v11, a1);
  if (!*(v11 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return;
  }

  v51 = v6;
  v43 = v3;
  v13 = 0;
  v14 = (v11 + 64);
  OUTLINED_FUNCTION_3_20();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v46 = v8;
  v49 = (v8 + 32);
  v20 = v12 + 8;
  v21 = v48;
  if ((v16 & v15) == 0)
  {
LABEL_6:
    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v23;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_17_13();
        v17 = v25 & v24;
        goto LABEL_11;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_16_11();
    v3 = v43;
    if (v38 != v39)
    {
      *v14 = -1 << v37;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v40, v41, v14);
    }

    *(v11 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v26 = v22 | (v13 << 6);
    v50 = *(v46 + 72);
    if (v47)
    {
      v27 = OUTLINED_FUNCTION_104_1();
      v28(v27);
      v29 = *(*(v11 + 56) + 8 * v26);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_104_1();
      v31(v30);
      v29 = *(*(v11 + 56) + 8 * v26);
    }

    sub_1BF95E350();
    v32 = v21;
    sub_1BF9B4A48();
    OUTLINED_FUNCTION_51_5();
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_99_1();
    v21 = v48;
LABEL_24:
    *(v20 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    (*v49)(v12[6] + v50 * v32, v21, v51);
    *(v12[7] + 8 * v32) = v29;
    ++v12[2];
    v11 = v45;
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_12();
  v21 = v48;
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (v20[v34] != -1)
    {
      OUTLINED_FUNCTION_97_0();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1BF95BE84()
{
  OUTLINED_FUNCTION_19_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  v4 = OUTLINED_FUNCTION_58_5();
  v29 = v1;
  OUTLINED_FUNCTION_91_1(v4, v5);
  OUTLINED_FUNCTION_96_1();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v28 = v3;
  v7 = 0;
  v8 = v3;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v1)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v10)
      {
        OUTLINED_FUNCTION_17_13();
        v1 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_16_11();
      if (v24 != v25)
      {
        OUTLINED_FUNCTION_23_12(v23);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v26, v27, v8);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4();
    v15 = (v14 + 16 * v13);
    v16 = v15[1];
    v30 = *v15;
    if ((v29 & 1) == 0)
    {
    }

    sub_1BF9B57A8();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_42_8();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_19:
    OUTLINED_FUNCTION_6_12(v18);
    v22 = (v21 + 16 * v20);
    *v22 = v30;
    v22[1] = v16;
    OUTLINED_FUNCTION_21_11();
    v3 = v28;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_43_7();
    if (!v17)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1BF95C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_19_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9788, &qword_1BF9BF9A8);
  v36 = OUTLINED_FUNCTION_58_5();
  v59 = v33;
  OUTLINED_FUNCTION_91_1(v36, v37);
  OUTLINED_FUNCTION_96_1();
  if (!v38)
  {
LABEL_27:

    *v32 = v34;
    OUTLINED_FUNCTION_106_1();
    return;
  }

  v58 = v35;
  v39 = 0;
  v40 = v35;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v33)
  {
LABEL_4:
    v41 = v39;
    while (1)
    {
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v39 >= v32)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v42)
      {
        OUTLINED_FUNCTION_17_13();
        v33 = v44 & v43;
        goto LABEL_9;
      }
    }

    if (v59)
    {
      OUTLINED_FUNCTION_16_11();
      if (v54 != v55)
      {
        OUTLINED_FUNCTION_23_12(v53);
      }

      else
      {
        v56 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v56, v57, v40);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4();
    v47 = *(v46 + 8 * v45);
    if ((v59 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_42_8();
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_19:
    OUTLINED_FUNCTION_6_12(v49);
    *(v52 + 8 * v51) = v47;
    OUTLINED_FUNCTION_21_11();
    v35 = v58;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v48)
    {
      if (v50)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_43_7();
    if (!v48)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1BF95C1AC()
{
  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DB8, &unk_1BF9C6710);
  v4 = OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0(v4, v5);
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    OUTLINED_FUNCTION_110_0();
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v3)
  {
LABEL_4:
    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v1 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v3 = v10 & v9;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_16_11();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_23_12(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v22, v23, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3();
    v13 = (v12 + 56 * v11);
    if (v2)
    {
      sub_1BF8E8174(v13, v24);
    }

    else
    {
      sub_1BF95E2E4(v13, v24);
    }

    sub_1BF9B57A8();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_51_5();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_20:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v16);
    sub_1BF8E8174(v24, v18 + 56 * v17);
    OUTLINED_FUNCTION_21_11();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v14)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_78_3();
    if (!v14)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BF95C36C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D00, &qword_1BF9C2AB0);
  result = sub_1BF9B5468();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v7;
    return result;
  }

  v35 = v4;
  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_1BF95D270(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(v5 + 48) + 24 * v18;
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
    v23 = *v20;
    v24 = *(v19 + 8 * v18);
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    MEMORY[0x1BFB5EAC0](v22);
    MEMORY[0x1BFB5EAC0](v21);
    result = sub_1BF9B57E8();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v7 + 48) + 24 * v28;
    *v33 = v23;
    *(v33 + 8) = v22;
    *(v33 + 16) = v21;
    *(*(v7 + 56) + 8 * v28) = v24;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BF95C6C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD8, &unk_1BF9C2A80);
  v33 = v4;
  result = sub_1BF9B5468();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1BF95D270(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v33 & 1) == 0)
    {
    }

    sub_1BF9B57A8();
    sub_1BF9B4B48();
    result = sub_1BF9B57E8();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1BF95C964()
{
  OUTLINED_FUNCTION_19_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D98, &qword_1BF9C2B78);
  v5 = OUTLINED_FUNCTION_58_5();
  v26 = v1;
  OUTLINED_FUNCTION_91_1(v5, v6);
  OUTLINED_FUNCTION_96_1();
  if (!v7)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v25 = v4;
  v8 = 0;
  v9 = v4;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v1)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v12)
      {
        OUTLINED_FUNCTION_17_13();
        v1 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v26)
    {
      OUTLINED_FUNCTION_16_11();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_23_12(v20);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v23, v24, v9);
      }

      v4[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    v15 = v10 | (v8 << 6);
    if (v26)
    {
      memcpy(__dst, (v4[6] + 120 * v15), 0x78uLL);
      v16 = *(v4[7] + 8 * v15);
    }

    else
    {
      sub_1BF932458(v4[6] + 120 * v15, __dst);
      v16 = *(v4[7] + 8 * v15);
    }

    sub_1BF9B57A8();
    __swift_project_boxed_opaque_existential_1(&__dst[10], __dst[13]);
    sub_1BF9B4A58();
    sub_1BF9B57A8();
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4A58();
    v17 = sub_1BF9B57E8();
    MEMORY[0x1BFB5EAC0](v17);
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_42_8();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_99_1();
LABEL_20:
    *(v3 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    memcpy((*(v2 + 48) + 120 * v27), __dst, 0x78uLL);
    *(*(v2 + 56) + 8 * v27) = v16;
    OUTLINED_FUNCTION_21_11();
    v4 = v25;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_43_7();
    if (!v18)
    {
      OUTLINED_FUNCTION_97_0();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1BF95CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_107_1();
  v34 = v32;
  v36 = v35;
  v37 = *v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D60, &qword_1BF9C2B38);
  OUTLINED_FUNCTION_22_6();
  sub_1BF9B5468();
  OUTLINED_FUNCTION_89_1();
  if (v38)
  {
    v66 = v36;
    v39 = 0;
    v40 = 1 << *(v37 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v43 = (v40 + 63) >> 6;
    v44 = v33 + 64;
    if (v42)
    {
LABEL_6:
      OUTLINED_FUNCTION_52_2();
      goto LABEL_12;
    }

LABEL_7:
    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v43)
      {
        if (v66)
        {
          OUTLINED_FUNCTION_16_11();
          if (v62 != v63)
          {
            OUTLINED_FUNCTION_23_12(v61);
          }

          else
          {
            v64 = OUTLINED_FUNCTION_15_16();
            sub_1BF95D270(v64, v65, v37 + 64);
          }

          *(v37 + 16) = 0;
        }

        v34 = v32;
        goto LABEL_45;
      }

      ++v46;
      if (*(v37 + 64 + 8 * v39))
      {
        OUTLINED_FUNCTION_17_13();
        v42 = v48 & v47;
LABEL_12:
        v49 = v45 | (v39 << 6);
        v50 = *(*(v37 + 48) + 2 * v49);
        v51 = *(*(v37 + 56) + 8 * v49);
        OUTLINED_FUNCTION_93_0();
        switch(v50 >> 8)
        {
          case 2u:
            v52 = 0;
            goto LABEL_18;
          case 3u:
            v52 = 1;
            goto LABEL_18;
          case 4u:
            v52 = 2;
            goto LABEL_18;
          case 5u:
            v52 = 4;
            goto LABEL_18;
          case 6u:
            v52 = 5;
LABEL_18:
            MEMORY[0x1BFB5EAC0](v52);
            goto LABEL_19;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v50 == 2)
            {
              v60 = 0;
              goto LABEL_35;
            }

            if (v50 == 3)
            {
              v60 = 1;
LABEL_35:
              MEMORY[0x1BFB5EAC0](v60);
              goto LABEL_37;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_37:
            sub_1BF9B4B48();

LABEL_19:
            sub_1BF9B57E8();
            OUTLINED_FUNCTION_4_19();
            OUTLINED_FUNCTION_51_5();
            if (v53)
            {
              OUTLINED_FUNCTION_7_12();
              do
              {
                OUTLINED_FUNCTION_53_6();
                if (v53 && (v55 & 1) != 0)
                {
                  goto LABEL_47;
                }

                if (v54 == v56)
                {
                  v54 = 0;
                }
              }

              while (*(v44 + 8 * v54) == -1);
              OUTLINED_FUNCTION_11_15();
            }

            else
            {
              OUTLINED_FUNCTION_12_13();
            }

            OUTLINED_FUNCTION_10_13();
            *(v44 + v57) |= v58;
            *(*(v33 + 48) + 2 * v59) = v50;
            *(*(v33 + 56) + 8 * v59) = v51;
            OUTLINED_FUNCTION_21_11();
            if (v42)
            {
              goto LABEL_6;
            }

            break;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {

LABEL_45:
    *v34 = v33;
    OUTLINED_FUNCTION_106_1();
  }
}

void sub_1BF95CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_19_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D70, &qword_1BF9C5560);
  v36 = OUTLINED_FUNCTION_58_5();
  v59 = v33;
  OUTLINED_FUNCTION_91_1(v36, v37);
  OUTLINED_FUNCTION_96_1();
  if (!v38)
  {
LABEL_27:

    *v32 = v34;
    OUTLINED_FUNCTION_106_1();
    return;
  }

  v58 = v35;
  v39 = 0;
  v40 = v35;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v33)
  {
LABEL_4:
    v41 = v39;
    while (1)
    {
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v39 >= v32)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v42)
      {
        OUTLINED_FUNCTION_17_13();
        v33 = v44 & v43;
        goto LABEL_9;
      }
    }

    if (v59)
    {
      OUTLINED_FUNCTION_16_11();
      if (v54 != v55)
      {
        OUTLINED_FUNCTION_23_12(v53);
      }

      else
      {
        v56 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v56, v57, v40);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4();
    v47 = *(v46 + 8 * v45);
    if ((v59 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_42_8();
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_19:
    OUTLINED_FUNCTION_6_12(v49);
    *(v52 + 8 * v51) = v47;
    OUTLINED_FUNCTION_21_11();
    v35 = v58;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v48)
    {
      if (v50)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_43_7();
    if (!v48)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1BF95D030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D30, &qword_1BF9C2AF0);
  v43 = a2;
  v7 = OUTLINED_FUNCTION_91_1(v5, v6);
  if (!v5[2])
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return;
  }

  v41 = v3;
  v42 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_2_20();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  v16 = 24;
  if ((v11 & v10) == 0)
  {
LABEL_7:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_17_13();
        v12 = v20 & v19;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_16_11();
    v3 = v41;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_23_12(v36);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v39, v40, v9);
    }

    v5[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v21 = v17 | (v8 << 6);
    v22 = (v5[6] + 16 * v21);
    v23 = v22[1];
    v24 = (v5[7] + v21 * v16);
    v25 = v24[1];
    v44 = *v24;
    v45 = *v22;
    v26 = v24[2];
    if ((v43 & 1) == 0)
    {
    }

    sub_1BF9B57A8();
    sub_1BF9B4B48();
    sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_51_5();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_24:
    OUTLINED_FUNCTION_10_13();
    *(v15 + v31) |= v32;
    v34 = (*(v7 + 48) + 16 * v33);
    *v34 = v45;
    v34[1] = v23;
    v35 = (*(v7 + 56) + 24 * v33);
    *v35 = v44;
    v35[1] = v25;
    v35[2] = v26;
    OUTLINED_FUNCTION_21_11();
    v5 = v42;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v15 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1BF95D270(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BF9B9DE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *sub_1BF95D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1BF95DE54();

  result = sub_1BF9B4C48();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BF95D868(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF9B5318();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1BF95D868(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BF95D8D4(sub_1BF95D8D0, 0, a1, a2);
  v6 = sub_1BF95D908(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1BF95D908(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BF9B5128();
    if (!v9 || (v10 = v9, v11 = sub_1BF958F7C(v9, 0), v12 = sub_1BF95DA68(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BF9B4B38();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BF9B4B38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BF9B5318();
LABEL_4:

  return sub_1BF9B4B38();
}

unint64_t sub_1BF95DA68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF95DC78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BF9B4BE8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BF9B5318();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF95DC78(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1BF9B4BB8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BF95DC78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1BF9B4BF8();
    OUTLINED_FUNCTION_83_1(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB5DED0](15, a1 >> 16);
    OUTLINED_FUNCTION_83_1(v3);
    return v4 | 8;
  }
}

unint64_t sub_1BF95DD24()
{
  result = qword_1EBDE9CF0;
  if (!qword_1EBDE9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9CF0);
  }

  return result;
}

uint64_t sub_1BF95DD78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1BF9B5318();
  }

  result = sub_1BF95DEA8(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1BF95DE54()
{
  result = qword_1EBDE9D10;
  if (!qword_1EBDE9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9D10);
  }

  return result;
}

uint64_t sub_1BF95DEA8(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1BF95DC78(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1BF9B4BD8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1BF95DC78(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1BF95DC78(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1BF9B4BD8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1BF95E2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BF95E350()
{
  result = qword_1EBDE9DF8;
  if (!qword_1EBDE9DF8)
  {
    sub_1BF9B4888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9DF8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_12(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v3;
  v5[1] = v4;
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return sub_1BF9B4A98();
}

unint64_t OUTLINED_FUNCTION_29_6(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_1BF8DE810(v5, v6, va);
}

void OUTLINED_FUNCTION_31_11()
{

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_56_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_73_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_75_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_76_3()
{
}

double OUTLINED_FUNCTION_80_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4)
{

  return sub_1BF925088(0xD000000000000013, (a1 - 32) | 0x8000000000000000, v4, &a4);
}

double OUTLINED_FUNCTION_81_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1BF925088(v5, a2, v3, a3);
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B5468();
}

id OUTLINED_FUNCTION_92_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return sub_1BF9B57A8();
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_112_0(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B5468();
}

uint64_t OUTLINED_FUNCTION_113_0(_OWORD *a1, _OWORD *a2)
{
  sub_1BF8C192C(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1BF95E7BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D98, &qword_1BF9C2B78);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF95F418(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

double sub_1BF95E86C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double SignalSubscriber.getConfiguratorProvider()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BF95E88C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95E930;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t sub_1BF95E930()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;

  OUTLINED_FUNCTION_4();

  return v2(v1);
}

uint64_t sub_1BF95EA44()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  (*(v3 + 8))(v2, v3);
  OUTLINED_FUNCTION_4();

  return v4();
}

uint64_t sub_1BF95EAF4()
{
  OUTLINED_FUNCTION_7();
  sub_1BF9636D0();
  OUTLINED_FUNCTION_4();

  return v0();
}

uint64_t SignalSubscriber.getAsyncSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF95EB70, 0, 0);
}

uint64_t sub_1BF95EB70()
{
  OUTLINED_FUNCTION_7();
  (*(*(v0 + 24) + 8))(*(v0 + 16));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_1BF95EBDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95FA3C;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t SignalSubscriber.getAsyncLookupSubscriptions()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  OUTLINED_FUNCTION_5_0();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_20(v3);

  return v5(v4);
}

uint64_t sub_1BF95ED84()
{
  OUTLINED_FUNCTION_7();
  *(*v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF95EE80, 0, 0);
}

uint64_t sub_1BF95EE80()
{
  OUTLINED_FUNCTION_7();
  v1 = static SignalSubscriber.getAsyncLookupSubscriptions(from:)(*(v0 + 40));

  OUTLINED_FUNCTION_4();

  return v2(v1);
}

uint64_t static SignalSubscriber.getAsyncLookupSubscriptions(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return sub_1BF95E7BC(v2);
  }

  v3 = a1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0708(0, v1, 0);
  v2 = v55;
  result = sub_1BF95F988(v3);
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = v3 + 64;
  v33 = v3 + 72;
  v34 = v3;
  v39 = v1;
  v40 = v3 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(v3 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_27;
      }

      v42 = v5;
      v43 = v2;
      v12 = *(*(v3 + 48) + 8 * v6);
      v13 = *(*(v3 + 56) + 8 * v6);
      sub_1BF8DFE40(v12 + 56, v53);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
      v14 = swift_dynamicCast();
      v41 = v8;
      if (v14)
      {
        sub_1BF8D5C74(&v44, v50);
        v15 = v51;
        v16 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v16 + 8))(&v44, v15, v16);
        v17 = *(&v45 + 1);
        v37 = v47;
        v38 = v46;
        v35 = v49;
        v36 = v48;
        v18 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        MEMORY[0x1EEE9AC00](v18);
        v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 16))(v20);
        AnySignalValue.init<A>(_:)(v20, v17, v38, v37, v36, v35, v53);
        v3 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v44);
        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        sub_1BF95F6EC(&v44);
        sub_1BF8E0940(v12 + 56, v53);
      }

      sub_1BF8D2004(v12 + 16, &__dst[10]);
      memcpy(__dst, v53, 0x50uLL);

      v2 = v43;
      __dst[15] = v13;
      v55 = v43;
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BF8D0708(v22 > 1, v23 + 1, 1);
        v2 = v55;
      }

      *(v2 + 16) = v23 + 1;
      result = memcpy((v2 + (v23 << 7) + 32), __dst, 0x80uLL);
      v24 = 1 << *(v3 + 32);
      if (v6 >= v24)
      {
        goto LABEL_28;
      }

      v10 = v40;
      v25 = *(v40 + 8 * v11);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v3 + 36) != v42)
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v29 = (v33 + 8 * v11);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1BF90E758(v6, v42, v41 & 1);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_21;
          }
        }

        result = sub_1BF90E758(v6, v42, v41 & 1);
      }

LABEL_21:
      if (++v9 == v39)
      {
        return sub_1BF95E7BC(v2);
      }

      v8 = 0;
      v5 = *(v3 + 36);
      v6 = v24;
      if (v24 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BF95F2FC()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_1BF95FA3C;

  return v4();
}

uint64_t sub_1BF95F38C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_1BF95FA3C;

  return v4();
}

uint64_t sub_1BF95F418(uint64_t a1, char a2, void *a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v4 = a3;
  v6 = 0;
  v7 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    sub_1BF95F9C8(v7, __src);
    memcpy(__dst, __src, sizeof(__dst));
    v8 = v34;
    v9 = *v4;
    v11 = sub_1BF9B2C5C(__dst);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_28;
    }

    v15 = v10;
    v16 = v9[3];
    v35 = v7;
    if (v16 >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95C964();
      v17 = sub_1BF9B2C5C(__dst);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_34;
      }

      v11 = v17;
    }

    v19 = *v4;
    if (v15)
    {
      v20 = *(v19[7] + 8 * v11);
      v21 = *(v8 + 16);
      v22 = *(v20 + 16);
      if (__OFADD__(v22, v21))
      {
        goto LABEL_30;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v22 + v21 > *(v20 + 24) >> 1)
      {
        sub_1BF8DDF88();
        v20 = v23;
      }

      if (*(v8 + 16))
      {
        if ((*(v20 + 24) >> 1) - *(v20 + 16) < v21)
        {
          goto LABEL_32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
        swift_arrayInitWithCopy();

        v4 = a3;
        if (v21)
        {
          v24 = *(v20 + 16);
          v25 = __OFADD__(v24, v21);
          v26 = v24 + v21;
          if (v25)
          {
            goto LABEL_33;
          }

          *(v20 + 16) = v26;
        }
      }

      else
      {

        v4 = a3;
        if (v21)
        {
          goto LABEL_31;
        }
      }

      sub_1BF9324B4(__dst);
      *(v19[7] + 8 * v11) = v20;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      memcpy((v19[6] + 120 * v11), __dst, 0x78uLL);
      *(v19[7] + 8 * v11) = v8;
      v27 = v19[2];
      v25 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v25)
      {
        goto LABEL_29;
      }

      v19[2] = v28;
    }

    ++v6;
    v7 = v35 + 128;
    a2 = 1;
    if (v31 == v6)
    {
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF95F6EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF8, qword_1BF9C2C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SignalSubscriber.getAsyncSubscriptions()()
{
  OUTLINED_FUNCTION_5_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t dispatch thunk of SignalSubscriber.getAsyncLookupSubscriptions()()
{
  OUTLINED_FUNCTION_5_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_1BF95F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA8, &unk_1BF9C2CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1BF95FA40@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1BF96510C(v7, v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      v8 = v4(v9);
      if (v3)
      {
        return sub_1BF8DFBF0(v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      }

      if (v8)
      {
        return memcpy(a3, v9, 0x50uLL);
      }

      result = sub_1BF8DFBF0(v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      v7 += 80;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void *sub_1BF95FB38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BF963F48(*(a1 + 16), 0);
  v4 = sub_1BF96437C(&v6, (v3 + 4), v2, a1);
  sub_1BF90D2E8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BF95FBC8(uint64_t a1, uint64_t *a2)
{
  v46 = a2;
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0;
  v35 = a1 + 64;

  v34 = v7;
  while (v6)
  {
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF9650B0(*(v2 + 56) + 48 * v10, &v45);
    v44[0] = v13;
    v44[1] = v12;
    sub_1BF96510C(v44, &v39, &qword_1EBDE9E50, &unk_1BF9C5070);

    sub_1BF96510C(v40, &v37, &qword_1EBDE9E58, &qword_1BF9C30B0);
    sub_1BF96515C(v40);
    if (v38)
    {
      sub_1BF8C2C9C(&v37, v41);
      v14 = v42;
      v15 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v16 = (*(*(v15 + 8) + 16))(v14);
      v18 = v17;
      sub_1BF8E69C4(v41, &v39);
      v19 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *v19;
      *&v37 = v20;
      v21 = sub_1BF8C2E64(v16, v18);
      if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
      {
        goto LABEL_23;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E60, &qword_1BF9C30B8);
      if (sub_1BF9B53A8())
      {
        v25 = sub_1BF8C2E64(v16, v18);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_25;
        }

        v23 = v25;
      }

      v27 = v37;
      if (v24)
      {
        v28 = (*(v37 + 56) + 40 * v23);
        __swift_destroy_boxed_opaque_existential_1(v28);
        sub_1BF8C2C9C(&v39, v28);
      }

      else
      {
        *(v37 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v29 = (v27[6] + 16 * v23);
        *v29 = v16;
        v29[1] = v18;
        sub_1BF8C2C9C(&v39, v27[7] + 40 * v23);
        v30 = v27[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_24;
        }

        v27[2] = v32;
      }

      *v46 = v27;
      __swift_destroy_boxed_opaque_existential_1(v41);
      v3 = v35;
      v2 = v36;
      v7 = v34;
    }

    else
    {
      sub_1BF8DFBF0(&v37, &qword_1EBDE9E58, &qword_1BF9C30B0);
    }

    v6 &= v6 - 1;
    sub_1BF8DFBF0(v44, &qword_1EBDE9E50, &unk_1BF9C5070);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:)(void *a1)
{
  OUTLINED_FUNCTION_21_12();
  v2 = swift_allocObject();
  SuggestionOwnerDefinitionBuilder.init(owner:)(a1);
  return v2;
}

uint64_t *SuggestionOwnerDefinitionBuilder.init(owner:)(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *v1;
  v1[7] = MEMORY[0x1E69E7CC0];
  v5.n128_f64[0] = OUTLINED_FUNCTION_14_11();
  v1[23] = 0;
  v1[24] = v3;
  OUTLINED_FUNCTION_36_8(v6, v5);
  *(v1 + 27) = 0u;
  *(v1 + 29) = 0u;
  *(v1 + 31) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 33) = 0u;
  *(v1 + 35) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v1[37] = sub_1BF9600B8;
  v1[38] = v7;
  v1[18] = v3;
  v1[44] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF932404();
  v8 = sub_1BF9B4988();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v1[45] = v8;
  return v1;
}

uint64_t sub_1BF960030()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1BF9600C0(0, 0, v4);
  sub_1BF8DFBF0(v2, &qword_1EBDE9E38, &qword_1BF9C2D10);
  sub_1BF8DFBF0(v4, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v0;
}

uint64_t sub_1BF9600C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF96510C(a3, &v20, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v4 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E78, &unk_1BF9C30D0);
    v4 = (*(v5 + 16))(v6, v6, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    sub_1BF8DFBF0(&v20, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF9B47C8();
  __swift_project_value_buffer(v7, qword_1EDBF57F8);

  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5038();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v20 = v11;
    *v10 = 136315138;
    v19[0] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E70, &qword_1BF9C30C8);
    v12 = sub_1BF9B4B08();
    v14 = sub_1BF8DE810(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1BF8B8000, v8, v9, "Using app discoverer as: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB5F320](v11, -1, -1);
    MEMORY[0x1BFB5F320](v10, -1, -1);
  }

  if (v4)
  {
    sub_1BF8F19D4(v4, &v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  sub_1BF96510C(a3, v19, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v15 = type metadata accessor for OSFeatureFlagProvider();
  v16 = swift_allocObject();
  v16[2] = sub_1BF905224;
  v16[3] = 0;
  v16[4] = sub_1BF905228;
  v16[5] = 0;
  v18[3] = v15;
  v18[4] = &protocol witness table for OSFeatureFlagProvider;
  v18[0] = v16;
  type metadata accessor for ThirdPartySuggestionDetailsBuilderConfigurator();
  swift_allocObject();
  return sub_1BF96F164(&v20, v19, v18);
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:refreshableService:lifecycleContainer:featureFlagProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_1BF8E69C4(a1, v18);
  sub_1BF8E69C4(a4, v17);
  sub_1BF8E69C4(a5, v16);
  sub_1BF8E69C4(a4, v15);
  sub_1BF8E69C4(a5, v14);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  sub_1BF8C2C9C(v15, (v11 + 4));
  sub_1BF8C2C9C(v14, (v11 + 9));
  v11[14] = v5;
  type metadata accessor for SuggestionOwnerDefinitionBuilder();
  v12 = swift_allocObject();
  swift_unknownObjectRetain();
  SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(v18, a2, a3, v17, v16, sub_1BF960558, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_1BF9604B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF8E69C4(a3, v10);
  sub_1BF8E69C4(a4, v9);
  v7 = sub_1BF9600C0(a1, a2, v10);
  sub_1BF8DFBF0(v9, &qword_1EBDE9E38, &qword_1BF9C2D10);
  sub_1BF8DFBF0(v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v7;
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_12();
  v14 = swift_allocObject();
  SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = MEMORY[0x1E69E7CC0];
  v7[7] = MEMORY[0x1E69E7CC0];
  v16.n128_f64[0] = OUTLINED_FUNCTION_14_11();
  v7[23] = 0;
  v7[24] = v15;
  OUTLINED_FUNCTION_36_8(v17, v16);
  v7[25] = a2;
  v7[26] = a3;
  sub_1BF8E69C4(a4, (v7 + 27));
  sub_1BF8E69C4(a5, (v7 + 32));
  v7[37] = a6;
  v7[38] = a7;
  v7[18] = v15;
  v7[44] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF932404();
  v18 = sub_1BF9B4988();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v7[45] = v18;
  return v7;
}

uint64_t sub_1BF960700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11[0] = a3;
  v11[1] = a4;
  v12 = 0;

  sub_1BF960930(a1, a2, v11, a5);
  sub_1BF960A50(v11);
  return v6;
}

uint64_t sub_1BF960778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static SignalLookupKey.getLookupKey(for:)(a1, v6);
  v4 = sub_1BF9607D8(v6, a2);
  sub_1BF9324B4(v6);
  return v4;
}

uint64_t sub_1BF9607D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v6 - v5;
  sub_1BF8D2068(a2, v6 - v5);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v8 = swift_allocObject();
  sub_1BF960AA4(v7, v8 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);
  v9 = OUTLINED_FUNCTION_32_9();
  v13 = sub_1BF9644D4(v9, v10, v11, v12, v2);

  return v13;
}

uint64_t sub_1BF9608BC(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1BF964758(a1, a2, a3, v10, v4, v8, v9);
}

uint64_t sub_1BF960930(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = v4;
  sub_1BF9649CC(a3, v14);
  v9 = type metadata accessor for InternalSuggestionDetailsBuilder();
  swift_allocObject();

  v10 = sub_1BF97E160(a1, a2, v14);
  v14[4] = &off_1F3EFDCB0;
  v14[5] = &off_1F3EFDBD0;
  v14[3] = v9;
  v14[0] = v10;

  a4(v14);
  v11 = OUTLINED_FUNCTION_23(v5 + 56, v13);
  MEMORY[0x1BFB5DFF0](v11);
  sub_1BF944CC4(*((*(v5 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF9B4DA8();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v5;
}

uint64_t sub_1BF960AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF960B08(uint64_t a1)
{
  sub_1BF8E69C4(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 64, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF964A28(v11, v1 + 64, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  swift_endAccess();
}

uint64_t sub_1BF960B60(uint64_t a1)
{
  sub_1BF8E69C4(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 104, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF964A28(v11, v1 + 104, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  swift_endAccess();
}

uint64_t sub_1BF960BB8()
{
  OUTLINED_FUNCTION_23(v0 + 144, v3);

  sub_1BF8D243C(v1);
  swift_endAccess();
}

uint64_t sub_1BF960C18(uint64_t a1)
{
  sub_1BF8E69C4(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 152, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF964A28(v11, v1 + 152, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  swift_endAccess();
}

uint64_t sub_1BF960C70(uint64_t a1)
{
  sub_1BF8E69C4(a1, v11);
  OUTLINED_FUNCTION_11_2(v1 + 312, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1BF964A28(v11, v1 + 312, &qword_1EBDE8E10, &qword_1BF9B9980);
  swift_endAccess();
}

uint64_t sub_1BF960CC8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_23(v1 + 352, v9);
  sub_1BF9439F0(v2, v3, v4);
  sub_1BF944C20();
  v5 = *(*(v1 + 352) + 16);
  sub_1BF944CAC(v5);
  v6 = *(v1 + 352);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v1 + 352) = v6;
  swift_endAccess();
}

uint64_t sub_1BF960D70@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v174 = (v6 - v5);
  v7 = MEMORY[0x1E69E7CC8];
  v224[0] = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_15_3(v3 + 56, v223);
  v8 = *(v3 + 56);
  v9 = sub_1BF91B6CC(v8);
  v10 = MEMORY[0x1E69E7CC0];
  v178 = v3;
  v184 = v9;
  if (v9)
  {
    v182 = v8 & 0xC000000000000001;
    v175 = v8 + 32;
    v176 = v8 & 0xFFFFFFFFFFFFFF8;

    v11 = 0;
    v12 = 0;
    v177 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    v7 = &qword_1EBDE9E38;
    v14 = &qword_1BF9C2D10;
    v186 = v10;
    v180 = v8;
    while (1)
    {
      if (v182)
      {
        v196 = MEMORY[0x1BFB5E5E0](v12, v8);
      }

      else
      {
        v15 = *(v176 + 16);
        if (v12 >= v15)
        {
          goto LABEL_132;
        }

        v196 = *(v175 + 8 * v12);
      }

      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_131;
      }

      v192 = v13;
      v188 = v12;
      if (v196[3])
      {
        sub_1BF96510C(v3 + 256, v205, &qword_1EBDE9E38, &qword_1BF9C2D10);
        v13 = *(&v205[1] + 1);
        if (*(&v205[1] + 1))
        {
          v17 = *&v205[2];
          __swift_project_boxed_opaque_existential_1(v205, *(&v205[1] + 1));
          v18 = (*(v17 + 40))(v13, v17);
          __swift_destroy_boxed_opaque_existential_1(v205);
          if (v18)
          {
            if (!v177)
            {
              if (qword_1EDBF57F0 != -1)
              {
                OUTLINED_FUNCTION_0_21();
                swift_once();
              }

              v19 = sub_1BF9B47C8();
              __swift_project_value_buffer(v19, qword_1EDBF57F8);
              v20 = sub_1BF9B47A8();
              v13 = sub_1BF9B5028();
              if (os_log_type_enabled(v20, v13))
              {
                v21 = swift_slowAlloc();
                *v21 = 0;
                _os_log_impl(&dword_1BF8B8000, v20, v13, "Setting up third party configurator", v21, 2u);
                OUTLINED_FUNCTION_87();
              }

              v177 = (*(v3 + 296))();
            }

            if (qword_1EDBF57F0 != -1)
            {
              OUTLINED_FUNCTION_0_21();
              swift_once();
            }

            v22 = sub_1BF9B47C8();
            __swift_project_value_buffer(v22, qword_1EDBF57F8);

            v23 = sub_1BF9B47A8();
            v24 = sub_1BF9B5028();

            if (os_log_type_enabled(v23, v24))
            {
              swift_slowAlloc();
              v25 = OUTLINED_FUNCTION_63_2();
              v26 = OUTLINED_FUNCTION_6_13(v25);
              sub_1BF8DE810(v26, v27, v205);
              OUTLINED_FUNCTION_27_7();
              OUTLINED_FUNCTION_17_14();
              _os_log_impl(&dword_1BF8B8000, v23, v28, "Using third party configurator for suggestion: %s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(qword_1BF9C2D00);
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_54();
            }

            sub_1BF96DFC4(v196);
            goto LABEL_28;
          }
        }

        else
        {
          sub_1BF8DFBF0(v205, &qword_1EBDE9E38, &qword_1BF9C2D10);
        }
      }

      if (qword_1EDBF57F0 != -1)
      {
        OUTLINED_FUNCTION_0_21();
        swift_once();
      }

      v29 = sub_1BF9B47C8();
      __swift_project_value_buffer(v29, qword_1EDBF57F8);

      v30 = sub_1BF9B47A8();
      v31 = sub_1BF9B5028();

      if (os_log_type_enabled(v30, v31))
      {
        swift_slowAlloc();
        v32 = OUTLINED_FUNCTION_63_2();
        v33 = OUTLINED_FUNCTION_6_13(v32);
        sub_1BF8DE810(v33, v34, v205);
        OUTLINED_FUNCTION_27_7();
        OUTLINED_FUNCTION_17_14();
        _os_log_impl(&dword_1BF8B8000, v30, v35, "no 3P support configured for %s or 3P support disabled", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(qword_1BF9C2D00);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_54();
      }

LABEL_28:
      v36 = *(v3 + 192);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = v36 + 32;

        v2 = v196;
        do
        {
          sub_1BF8E69C4(v38, v205);
          __swift_project_boxed_opaque_existential_1(v205, *(&v205[1] + 1));
          sub_1BF96DFC4(v196);
          __swift_destroy_boxed_opaque_existential_1(v205);
          v38 += 40;
          --v37;
        }

        while (v37);
      }

      else
      {
        v2 = v196;
      }

      if (sub_1BF97AA80())
      {
        sub_1BF978FE4();
        sub_1BF8C4A08(v205, v204);
        v39 = v186;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_0();
          sub_1BF8DE4A4();
          v39 = v97;
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v40);
          sub_1BF8DE4A4();
          v39 = v98;
        }

        *(v39 + 16) = v41 + 1;
        memcpy((v39 + 272 * v41 + 32), v204, 0x110uLL);
        OUTLINED_FUNCTION_15_3(v2 + 56, &v203);
        sub_1BF96510C(v2 + 56, v204, &qword_1EBDE99C8, qword_1BF9C2D00);
        v186 = v39;
        if (*(&v204[1] + 1))
        {
          sub_1BF8C2C9C(v204, &v220);
          v3 = &qword_1EBDE99C8;
        }

        else
        {
          *v174 = sub_1BF978FA0();
          v174[1] = v49;
          swift_storeEnumTagMultiPayload();
          v50 = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
          v51 = swift_allocObject();
          sub_1BF960AA4(v174, v51 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);
          v221 = v50;
          v222 = &protocol witness table for DefaultCandidateSuggestionConfigurator;
          *&v220 = v51;
          v3 = &qword_1EBDE99C8;
          if (*(&v204[1] + 1))
          {
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v52, v53, v54);
          }
        }

        OUTLINED_FUNCTION_15_3(v2 + 40, &v202);

        v56 = sub_1BF927890(v55);
        v2 = 0;
        v14 = (v56 + 56);
        v57 = *(v56 + 56);
        v194 = v56;
        v58 = 1 << *(v56 + 32);
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v60 = v59 & v57;
        v61 = (v58 + 63) >> 6;
        v13 = v192;
        v190 = v61;
        if ((v59 & v57) == 0)
        {
          while (1)
          {
LABEL_51:
            v62 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              __break(1u);
              goto LABEL_108;
            }

            if (v62 >= v61)
            {
              break;
            }

            v60 = v14[v62];
            ++v2;
            if (v60)
            {
              v2 = v62;
              goto LABEL_55;
            }
          }

          v95 = v196[4];
          OUTLINED_FUNCTION_15_3(v95 + 144, &v197);
          if (*(v95 + 144))
          {

            sub_1BF95FBC8(v96, v224);

            sub_1BF8E9F70(v205);
          }

          else
          {
            sub_1BF8E9F70(v205);
          }

          v3 = v178;
          v8 = v180;
          v12 = v188;
          v7 = &qword_1EBDE9E38;
          v14 = &qword_1BF9C2D10;
          __swift_destroy_boxed_opaque_existential_1(&v220);
          goto LABEL_82;
        }

LABEL_55:
        while (2)
        {
          sub_1BF932458(*(v194 + 48) + 120 * (__clz(__rbit64(v60)) | (v2 << 6)), v204);
          memcpy(v201, v204, sizeof(v201));
          swift_beginAccess();
          v63 = v196[6];
          if (*(v63 + 16) && (v64 = sub_1BF9B2C5C(v201), (v65 & 1) != 0))
          {
            sub_1BF8E69C4(*(v63 + 56) + 40 * v64, v213);
          }

          else
          {
            v214 = 0;
            memset(v213, 0, sizeof(v213));
          }

          swift_endAccess();
          sub_1BF96510C(v213, &v199, &qword_1EBDE99C8, qword_1BF9C2D00);
          if (v200)
          {
            sub_1BF8C2C9C(&v199, v198);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_1BF9B6380;
            sub_1BF8E69C4(v198, v66 + 32);
            sub_1BF8E69C4(&v220, v66 + 72);
            static CandidateSuggestionConfigurators.merge(_:)(v66, &v210);
            swift_setDeallocating();
            sub_1BF906498();
            __swift_destroy_boxed_opaque_existential_1(v198);
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v67, v68, v69);
            if (*(&v211 + 1))
            {
              sub_1BF8C2C9C(&v210, v213);
LABEL_65:
              sub_1BF8E69C4(v213, &v210);
              sub_1BF8C732C(v11);
              swift_isUniquelyReferenced_nonNull_native();
              *&v199 = v13;
              v7 = v13;
              v76 = sub_1BF9B2C5C(v201);
              v15 = *(v13 + 16);
              if (__OFADD__(v15, (v77 & 1) == 0))
              {
                __break(1u);
                goto LABEL_129;
              }

              v78 = v76;
              v79 = v77;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
              v80 = sub_1BF9B53A8();
              v7 = v199;
              if (v80)
              {
                v81 = sub_1BF9B2C5C(v201);
                if ((v79 & 1) != (v82 & 1))
                {
LABEL_136:
                  result = sub_1BF9B5758();
                  __break(1u);
                  return result;
                }

                v78 = v81;
              }

              if ((v79 & 1) == 0)
              {
                OUTLINED_FUNCTION_26_12(v7 + 8 * (v78 >> 6));
                sub_1BF932458(v201, v83 + v78 * v84);
                *(*(v7 + 56) + 8 * v78) = MEMORY[0x1E69E7CC0];
                v85 = *(v7 + 16);
                v16 = __OFADD__(v85, 1);
                v15 = v85 + 1;
                if (v16)
                {
                  goto LABEL_130;
                }

                *(v7 + 16) = v15;
              }

              v86 = v7;
              v87 = *(v7 + 56);
              v88 = *(v87 + 8 * v78);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v87 + 8 * v78) = v88;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_28_0();
                sub_1BF8DDF88();
                v88 = v93;
                *(v87 + 8 * v78) = v93;
              }

              v91 = *(v88 + 16);
              v90 = *(v88 + 24);
              if (v91 >= v90 >> 1)
              {
                OUTLINED_FUNCTION_11_3(v90);
                sub_1BF8DDF88();
                *(v87 + 8 * v78) = v94;
              }

              v60 &= v60 - 1;
              __swift_destroy_boxed_opaque_existential_1(v213);
              sub_1BF9324B4(v201);
              v92 = *(v87 + 8 * v78);
              *(v92 + 16) = v91 + 1;
              sub_1BF8C2C9C(&v210, v92 + 40 * v91 + 32);
              v11 = sub_1BF96520C;
              v13 = v86;
              v3 = &qword_1EBDE99C8;
              v61 = v190;
              if (!v60)
              {
                goto LABEL_51;
              }

              continue;
            }
          }

          else
          {
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v70, v71, v72);
            v210 = 0u;
            v211 = 0u;
            v212 = 0;
          }

          break;
        }

        sub_1BF8E69C4(&v220, v213);
        if (*(&v211 + 1))
        {
          OUTLINED_FUNCTION_25_10();
          sub_1BF8DFBF0(v73, v74, v75);
        }

        goto LABEL_65;
      }

      if (qword_1EDBF57F0 != -1)
      {
        OUTLINED_FUNCTION_0_21();
        swift_once();
      }

      v42 = sub_1BF9B47C8();
      __swift_project_value_buffer(v42, qword_1EDBF57F8);

      v43 = sub_1BF9B47A8();
      v44 = sub_1BF9B5048();

      if (os_log_type_enabled(v43, v44))
      {
        swift_slowAlloc();
        v45 = OUTLINED_FUNCTION_63_2();
        v46 = OUTLINED_FUNCTION_6_13(v45);
        sub_1BF8DE810(v46, v47, v205);
        OUTLINED_FUNCTION_27_7();
        OUTLINED_FUNCTION_17_14();
        _os_log_impl(&dword_1BF8B8000, v43, v48, "Unable to add suggestion: %s as the builder is not in a valid state. Check previous logs", 0, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(qword_1BF9C2D00);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_54();
      }

      v13 = v192;
      v7 = &qword_1EBDE9E38;
      v14 = &qword_1BF9C2D10;
      v8 = v180;
LABEL_82:
      if (v12 == v184)
      {
        v192 = v13;

        goto LABEL_85;
      }
    }
  }

  v192 = v7;
  v11 = 0;
  v186 = MEMORY[0x1E69E7CC0];
LABEL_85:
  OUTLINED_FUNCTION_15_3(v3 + 360, &v199);
  v99 = *(v3 + 360);
  v179 = v99 + 64;
  v100 = 1 << *(v99 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v3 = v101 & *(v99 + 64);
  v14 = ((v100 + 63) >> 6);
  v181 = v99;

  v196 = 0;
  v102 = 0;
  v176 = v11;
  if (!v3)
  {
LABEL_88:
    while (1)
    {
      v15 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        goto LABEL_102;
      }

      v3 = *(v179 + 8 * v15);
      ++v102;
      if (v3)
      {
        v102 = v15;
        goto LABEL_92;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_92:
  while (1)
  {
    v103 = __clz(__rbit64(v3)) | (v102 << 6);
    sub_1BF932458(*(v181 + 48) + 120 * v103, v205);
    v104 = *(*(v181 + 56) + 8 * v103);
    v191 = v205[3];
    v187 = v205[0];
    v189 = v206;
    v183 = v205[4];
    v185 = v205[2];
    v105 = v207;
    v106 = v208;
    v107 = v209;
    v195 = v205[1];
    v108 = *(&v205[1] + 1);

    if (!v108)
    {
      break;
    }

    v205[0] = v187;
    v205[1] = v195;
    v205[2] = v185;
    v205[3] = v191;
    v205[4] = v183;
    v206 = v189;
    v207 = v105;
    v208 = v106;
    v209 = v107;
    sub_1BF8C732C(v196);
    v7 = v192;
    swift_isUniquelyReferenced_nonNull_native();
    *&v204[0] = v192;
    v109 = sub_1BF9B2C5C(v205);
    v15 = *(v192 + 16);
    v111 = (v110 & 1) == 0;
    v2 = v15 + v111;
    if (__OFADD__(v15, v111))
    {
      goto LABEL_133;
    }

    v112 = v109;
    v113 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
    v114 = sub_1BF9B53A8();
    v192 = *&v204[0];
    if (v114)
    {
      v115 = sub_1BF9B2C5C(v205);
      if ((v113 & 1) != (v116 & 1))
      {
        goto LABEL_136;
      }

      v112 = v115;
    }

    if ((v113 & 1) == 0)
    {
      v7 = v192;
      OUTLINED_FUNCTION_26_12(v192 + 8 * (v112 >> 6));
      sub_1BF932458(v205, v117 + v112 * v118);
      *(*(v192 + 56) + 8 * v112) = MEMORY[0x1E69E7CC0];
      v119 = *(v192 + 16);
      v16 = __OFADD__(v119, 1);
      v15 = v119 + 1;
      if (v16)
      {
        goto LABEL_134;
      }

      *(v192 + 16) = v15;
    }

    v3 &= v3 - 1;
    v7 = *(v192 + 56) + 8 * v112;
    sub_1BF8D2414(v104);
    sub_1BF9324B4(v205);
    v196 = sub_1BF96520C;
    if (!v3)
    {
      goto LABEL_88;
    }
  }

LABEL_102:

  v2 = sub_1BF95FB38(v120);
  v3 = v178;
  OUTLINED_FUNCTION_15_3(v178 + 144, v198);
  v121 = *(v178 + 144);
  v122 = *(v121 + 16);
  if (v122)
  {
    if (v122 == 1)
    {
      sub_1BF8F19D4(v121, v205);
      if (*(&v205[1] + 1))
      {
        sub_1BF8C2C9C(v205, v204);
        v123 = *(&v204[1] + 1);
        v124 = *&v204[2];
        __swift_project_boxed_opaque_existential_1(v204, *(&v204[1] + 1));
        *&v201[24] = v123;
        *&v201[32] = *(v124 + 8);
        __swift_allocate_boxed_opaque_existential_1Tm(v201);
        OUTLINED_FUNCTION_11();
        (*(v125 + 16))();
        goto LABEL_110;
      }

LABEL_108:
      sub_1BF8DFBF0(v205, &qword_1EBDE9E30, &unk_1BF9C2CF0);
    }

    v129 = sub_1BF98746C(v128);

    v130 = type metadata accessor for UnionSignalExtractor();
    v131 = swift_allocObject();
    *(v131 + 16) = v129;
    *(&v204[1] + 1) = v130;
    v132 = sub_1BF965048(&qword_1EDBF27D0, 255, type metadata accessor for UnionSignalExtractor, &protocol conformance descriptor for UnionSignalExtractor);
    *&v204[2] = v132;
    *&v204[0] = v131;
    __swift_project_boxed_opaque_existential_1(v204, v130);
    *&v201[24] = v130;
    *&v201[32] = *(v132 + 8);
    __swift_allocate_boxed_opaque_existential_1Tm(v201);
    OUTLINED_FUNCTION_11();
    (*(v133 + 16))();
LABEL_110:
    sub_1BF8E69C4(v3 + 16, v205);
    sub_1BF8C2C9C(v201, &v205[2] + 8);
    sub_1BF8DE3E4();
    v126 = v134;
    v7 = *(v134 + 16);
    v15 = *(v134 + 24);
    v14 = (v7 + 1);
    if (v7 < v15 >> 1)
    {
LABEL_111:
      *(v126 + 16) = v14;
      memcpy((v126 + 80 * v7 + 32), v205, 0x50uLL);
      if (qword_1EDBF4B40 != -1)
      {
        swift_once();
      }

      v135 = qword_1EDBF4B48;
      *&v201[24] = type metadata accessor for DefaultOwner();
      *&v201[32] = sub_1BF965048(&qword_1EDBF36D0, 255, type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
      *v201 = v135;
      v136 = *(&v204[1] + 1);
      v137 = *&v204[2];
      __swift_project_boxed_opaque_existential_1(v204, *(&v204[1] + 1));
      v221 = v136;
      v222 = *(v137 + 8);
      __swift_allocate_boxed_opaque_existential_1Tm(&v220);
      OUTLINED_FUNCTION_11();
      (*(v138 + 16))();
      sub_1BF8C2C9C(v201, v205);
      sub_1BF8C2C9C(&v220, &v205[2] + 8);
      v139 = *(v126 + 16);
      v140 = *(v126 + 24);

      if (v139 >= v140 >> 1)
      {
        OUTLINED_FUNCTION_16_12();
        sub_1BF8DE3E4();
        v126 = v170;
      }

      v127 = v192;
      *(v126 + 16) = v139 + 1;
      OUTLINED_FUNCTION_29_7();
      __swift_destroy_boxed_opaque_existential_1(v204);
      goto LABEL_116;
    }

LABEL_135:
    OUTLINED_FUNCTION_11_3(v15);
    OUTLINED_FUNCTION_16_12();
    sub_1BF8DE3E4();
    v126 = v169;
    goto LABEL_111;
  }

  v126 = MEMORY[0x1E69E7CC0];
  v127 = v192;
LABEL_116:
  OUTLINED_FUNCTION_15_3(v3 + 104, v219);
  sub_1BF96510C(v3 + 104, v205, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  if (*(&v205[1] + 1))
  {
    sub_1BF8C2C9C(v205, v204);
    v141 = type metadata accessor for SiriHelpOwner();
    inited = swift_initStaticObject();
    *&v201[24] = v141;
    *&v201[32] = sub_1BF965048(&unk_1EDBF3C58, 255, type metadata accessor for SiriHelpOwner, &protocol conformance descriptor for SiriHelpOwner);
    *v201 = inited;
    sub_1BF8C2C9C(v201, v205);
    sub_1BF8E69C4(v204, &v205[2] + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_28_0();
      sub_1BF8DE3E4();
      v126 = v171;
    }

    v144 = *(v126 + 16);
    v143 = *(v126 + 24);
    if (v144 >= v143 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v143);
      OUTLINED_FUNCTION_16_12();
      sub_1BF8DE3E4();
      v126 = v172;
    }

    __swift_destroy_boxed_opaque_existential_1(v204);
    *(v126 + 16) = v144 + 1;
    OUTLINED_FUNCTION_29_7();
  }

  else
  {
    sub_1BF8DFBF0(v205, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  }

  OUTLINED_FUNCTION_15_3(v3 + 64, v218);
  sub_1BF96510C(v3 + 64, v205, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  v145 = type metadata accessor for DefaultSignalSubscriber();
  v146 = swift_allocObject();
  *(v146 + 16) = v127;
  OUTLINED_FUNCTION_15_3(v3 + 152, v217);
  sub_1BF96510C(v3 + 152, v204, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  v147 = type metadata accessor for DefaultGeneration();
  OUTLINED_FUNCTION_44_0();
  v148 = swift_allocObject();
  *(v148 + 80) = v145;
  *(v148 + 88) = &off_1F3EFC9A0;
  *(v148 + 56) = v146;
  *(v148 + 120) = &type metadata for BuilderSignalExtractorProvider;
  v149 = sub_1BF964AC0();
  v150 = v205[1];
  *(v148 + 16) = v205[0];
  *(v148 + 32) = v150;
  v151 = v204[1];
  *(v148 + 136) = v204[0];
  *(v148 + 128) = v149;
  *(v148 + 96) = v126;
  *(v148 + 48) = *&v205[2];
  *(v148 + 152) = v151;
  *(v148 + 168) = *&v204[2];
  sub_1BF8E69C4(v3 + 16, v205);
  sub_1BF96510C(v3 + 216, v204, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  OUTLINED_FUNCTION_15_3(v3 + 312, &v216);
  sub_1BF96510C(v3 + 312, &v220, &qword_1EBDE8E10, &qword_1BF9B9980);
  if (v221)
  {
    sub_1BF8C2C9C(&v220, v201);
  }

  else
  {
    v152 = type metadata accessor for NoOpSuggestionFilter();
    v153 = swift_initStaticObject();
    *&v201[24] = v152;
    *&v201[32] = &protocol witness table for NoOpSuggestionFilter;
    *v201 = v153;
    v154 = v221;

    if (v154)
    {
      sub_1BF8DFBF0(&v220, &qword_1EBDE8E10, &qword_1BF9B9980);
    }
  }

  OUTLINED_FUNCTION_15_3(v3 + 352, &v215);
  v155 = *(v3 + 352);
  v193 = type metadata accessor for DefaultSuggestionsOwnerDefinition();
  OUTLINED_FUNCTION_44_0();
  v156 = swift_allocObject();
  v221 = v147;
  v222 = &off_1F3EFC970;
  *&v220 = v148;
  sub_1BF8E69C4(&v220, v156 + 16);
  sub_1BF8E69C4(v205, v213);
  sub_1BF8E69C4(v201, &v210);
  v157 = type metadata accessor for DefaultTargetOwnerDefinition();
  v158 = swift_allocObject();
  v159 = *(&v211 + 1);
  v160 = v212;
  v161 = __swift_mutable_project_boxed_opaque_existential_1(&v210, *(&v211 + 1));
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_17();
  v164 = v163 - v162;
  (*(v165 + 16))(v163 - v162);
  v166 = sub_1BF94039C(v186, v2, v213, v164, v155, v158, v159, v160);

  __swift_destroy_boxed_opaque_existential_1(&v210);
  *(v156 + 80) = v157;
  *(v156 + 88) = &protocol witness table for DefaultTargetOwnerDefinition;
  *(v156 + 56) = v166;

  __swift_destroy_boxed_opaque_existential_1(v201);
  __swift_destroy_boxed_opaque_existential_1(&v220);
  sub_1BF8C2C9C(v205, v156 + 96);
  v167 = v204[1];
  *(v156 + 136) = v204[0];
  *(v156 + 152) = v167;
  *(v156 + 168) = *&v204[2];
  a1[3] = v193;
  a1[4] = &off_1F3EFC948;

  sub_1BF8C732C(v176);
  result = sub_1BF8C732C(v196);
  *a1 = v156;
  return result;
}

uint64_t sub_1BF9623B0(uint64_t a1)
{
  sub_1BF96510C(v1 + 216, v6, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v3 = v7;
  if (!v7)
  {
    return sub_1BF8DFBF0(v6, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  v4 = v8;
  OUTLINED_FUNCTION_28(v6, v7);
  (*(v4 + 32))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1BF962458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF96510C(v3 + 216, v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v7 = v11;
  if (!v11)
  {
    return sub_1BF8DFBF0(v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  v8 = v12;
  OUTLINED_FUNCTION_28(v10, v11);
  (*(v8 + 24))(a1, a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1BF962518()
{
  sub_1BF96510C(v0 + 216, v5, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (v6)
  {
    OUTLINED_FUNCTION_28(v5, v6);
    v1 = OUTLINED_FUNCTION_32_9();
    v3 = v2(v1);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1BF8DFBF0(v5, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    return 0;
  }

  return v3;
}

uint64_t sub_1BF9625E4()
{
  sub_1BF96510C(v0[7] + 216, (v0 + 2), &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (v0[5])
  {
    OUTLINED_FUNCTION_28(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_5_0();
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_24_7(v1);
  }

  else
  {
    sub_1BF8DFBF0((v0 + 2), &qword_1EBDE9E28, &qword_1BF9C2CE8);
    OUTLINED_FUNCTION_4();
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v3(v2);
}

uint64_t sub_1BF962768()
{
  OUTLINED_FUNCTION_7();
  *(*v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF962864, 0, 0);
}

uint64_t sub_1BF962864()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t SuggestionOwnerDefinitionBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1BF8DFBF0(v0 + 64, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  sub_1BF8DFBF0(v0 + 104, &qword_1EBDE9E18, &qword_1BF9C2CD0);

  sub_1BF8DFBF0(v0 + 152, &qword_1EBDE9E20, &unk_1BF9C2CD8);

  swift_unknownObjectRelease();
  sub_1BF8DFBF0(v0 + 216, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8DFBF0(v0 + 256, &qword_1EBDE9E38, &qword_1BF9C2D10);

  sub_1BF8DFBF0(v0 + 312, &qword_1EBDE8E10, &qword_1BF9B9980);

  return v0;
}

uint64_t SuggestionOwnerDefinitionBuilder.__deallocating_deinit()
{
  SuggestionOwnerDefinitionBuilder.deinit();
  v0 = OUTLINED_FUNCTION_21_12();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF962A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF965214;

  return sub_1BF9625D0();
}

unint64_t sub_1BF962AF8()
{
  sub_1BF9B5288();

  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v1 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v1);

  MEMORY[0x1BFB5DE90](32032, 0xE200000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1BF962BA8()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1BF962C10()
{
  OUTLINED_FUNCTION_28((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
  OUTLINED_FUNCTION_5_0();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_24_7(v1);

  return v3(v2);
}

uint64_t sub_1BF962D1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_4();

  return v4(v0);
}

uint64_t sub_1BF962E00(uint64_t a1)
{
  OUTLINED_FUNCTION_28((v1 + 96), *(v1 + 120));
  OUTLINED_FUNCTION_25_10();
  return v2();
}

uint64_t sub_1BF962E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF962EAC()
{
  sub_1BF96510C(v0[10] + 16, (v0 + 2), &qword_1EBDE9E10, &qword_1BF9C2CC8);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    OUTLINED_FUNCTION_28(v0 + 2, v0[5]);
    v3 = *(v2 + 8);
    OUTLINED_FUNCTION_5_0();
    v12 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1BF96304C;
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[7];

    return v12(v8, v6, v7, v1, v3);
  }

  else
  {
    sub_1BF8DFBF0((v0 + 2), &qword_1EBDE9E10, &qword_1BF9C2CC8);
    OUTLINED_FUNCTION_4();
    v11 = MEMORY[0x1E69E7CC0];

    return v10(v11);
  }
}

uint64_t sub_1BF96304C()
{
  OUTLINED_FUNCTION_7();
  *(*v0 + 96) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BF963148, 0, 0);
}

uint64_t sub_1BF963148()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_1BF9631A4()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1BF9631F8()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1BF8DFBF0(v0 + 136, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  return v0;
}

uint64_t sub_1BF963250()
{
  sub_1BF9631F8();
  OUTLINED_FUNCTION_44_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9632C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF963358;

  return sub_1BF962BFC();
}

uint64_t sub_1BF963358()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_4();

  return v4(v0);
}

uint64_t sub_1BF9634A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF965214;

  return sub_1BF962E94(a1, a2, a3);
}

void *sub_1BF9635B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_1BF8DFBF0((v0 + 17), &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v0;
}

uint64_t sub_1BF963600()
{
  sub_1BF9635B8();
  OUTLINED_FUNCTION_44_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9636D0()
{
  if (qword_1EDBF08C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF9B47C8();
  __swift_project_value_buffer(v0, qword_1EDBF08C8);
  v1 = sub_1BF9B47A8();
  v2 = sub_1BF9B5048();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF8B8000, v1, v2, "Unsupported subscriptions. Use getDynamicSubscriptions", v3, 2u);
    OUTLINED_FUNCTION_54();
  }

  type metadata accessor for Signal();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF965048(&unk_1EDBF07E0, 255, type metadata accessor for Signal, &protocol conformance descriptor for Signal);

  return sub_1BF9B4988();
}

uint64_t sub_1BF963830()
{
  OUTLINED_FUNCTION_4();
  v3 = v0;

  return v3(v1);
}

uint64_t sub_1BF9638B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF965214;

  return sub_1BF96381C();
}

double sub_1BF963940@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1BF95FA40(sub_1BF965090, a1, &v4);
  if (v5)
  {
    sub_1BF8C2C9C(&v6, a2);
    __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    sub_1BF8DFBF0(&v4, &qword_1EBDE9E40, &qword_1BF9C3088);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF9639E4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 48))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 48))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BF9B56D8();
  }

  return v12 & 1;
}

uint64_t sub_1BF963AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BF8D07A8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1BF96510C(v4, __src, &qword_1EBDE8AD8, &qword_1BF9C3080);
      memcpy(v9, __src, sizeof(v9));
      sub_1BF8C2C9C(v9, v11);
      __swift_destroy_boxed_opaque_existential_1(&v9[2] + 1);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        v7 = OUTLINED_FUNCTION_11_3(v5);
        sub_1BF8D07A8(v7, v6 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v6 + 1;
      sub_1BF8C2C9C(v11, v2 + 40 * v6 + 32);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1BF963C50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E00, &qword_1BF9C30F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_1BF963CF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E90, &qword_1BF9C30E8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF963E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF963F48(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E68, &qword_1BF9C30C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void sub_1BF963FCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  sub_1BF8C192C(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_33_7();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1BF96400C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28_10(v6, v11);
  }
}

unint64_t sub_1BF964038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  *(v7 + result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_1BF964070(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  v7 = (v6 + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * result) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v13;
  }

  return result;
}

void sub_1BF9640AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  sub_1BF8DFCB8(v8, (v7 + 48 * v6));
  OUTLINED_FUNCTION_33_7();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1BF9640F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  memcpy((v8 + 120 * v7), v9, 0x78uLL);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_33_7();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1BF96414C(unint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  memcpy((v8 + 120 * v7), v9, 0x78uLL);
  sub_1BF8C2C9C(a3, *(a4 + 56) + 40 * a1);
  OUTLINED_FUNCTION_33_7();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1BF9641B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28_10(v6, v13);
  }
}

void *sub_1BF9641F4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BF96437C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1BF8E69C4(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_1BF8C2C9C(v17, v18);
      result = sub_1BF8C2C9C(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF9644D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v31[4] = &protocol witness table for DefaultCandidateSuggestionConfigurator;
  v31[0] = a4;
  swift_beginAccess();
  v13 = *(a5 + 360);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1BF9B2C5C(a1), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8D2068(a2, v12);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InternalSuggestionDetailsBuilder();
  *&v27[0] = a3;

  sub_1BF978E0C(v12, v27, v31, v28);

  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v19 + 8))(v27, v12, v18, v19);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF8DDF88();
    v17 = v23;
  }

  v20 = *(v17 + 16);
  if (v20 >= *(v17 + 24) >> 1)
  {
    sub_1BF8DDF88();
    v17 = v24;
  }

  *(v17 + 16) = v20 + 1;
  sub_1BF8C2C9C(v27, v17 + 40 * v20 + 32);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a5 + 360);
  sub_1BF9369F0(v17, a1, isUniquelyReferenced_nonNull_native);
  *(a5 + 360) = v26;
  swift_endAccess();
  sub_1BF9651B0(v12);

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return a5;
}

uint64_t sub_1BF964758(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v15 - v14;
  v38[3] = a6;
  v38[4] = a7;
  __swift_allocate_boxed_opaque_existential_1Tm(v38);
  OUTLINED_FUNCTION_11();
  (*(v17 + 16))();
  v18 = *a3;
  OUTLINED_FUNCTION_15_3(a5 + 360, v37);
  v19 = *(a5 + 360);
  v20 = *(v19 + 16);

  if (v20 && (v21 = sub_1BF9B2C5C(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8D2068(a2, v16);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InternalSuggestionDetailsBuilder();
  *&v33[0] = v18;

  sub_1BF978E0C(v16, v33, v38, v34);

  v24 = v35;
  v25 = v36;
  OUTLINED_FUNCTION_28(v34, v35);
  (*(v25 + 8))(v33, v16, v24, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_28_0();
    sub_1BF8DDF88();
    v23 = v30;
  }

  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_11_3(v26);
    OUTLINED_FUNCTION_16_12();
    sub_1BF8DDF88();
    v23 = v31;
  }

  *(v23 + 16) = v27 + 1;
  sub_1BF8C2C9C(v33, v23 + 40 * v27 + 32);
  OUTLINED_FUNCTION_23(a5 + 360, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a5 + 360);
  sub_1BF9369F0(v23, a1, isUniquelyReferenced_nonNull_native);
  *(a5 + 360) = v32;
  swift_endAccess();
  sub_1BF9651B0(v16);

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return a5;
}

uint64_t sub_1BF964A28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_1BF964AC0()
{
  result = qword_1EDBF1A00;
  if (!qword_1EDBF1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1A00);
  }

  return result;
}

uint64_t dispatch thunk of SuggestionOwnerDefinitionBuilder.allEntities.getter()
{
  v4 = (*(*v0 + 560) + **(*v0 + 560));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BF963358;

  return v4();
}

uint64_t sub_1BF964F74(uint64_t a1, uint64_t a2)
{
  result = sub_1BF965048(&qword_1EDBF2FE8, a2, type metadata accessor for DefaultGeneration, &unk_1BF9C2FC0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF964FCC(uint64_t a1)
{
  result = sub_1BF964FF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF964FF4()
{
  result = qword_1EDBF1A08[0];
  if (!qword_1EDBF1A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF1A08);
  }

  return result;
}

uint64_t sub_1BF965048(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BF96510C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BF9651B0(uint64_t a1)
{
  v2 = type metadata accessor for ActionIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1)
{
  *(v1 + 784) = a1;
  *v2 = *(v1 + 64);

  return sub_1BF978FA0();
}

void *OUTLINED_FUNCTION_29_7()
{

  return memcpy((v2 + 80 * v1 + 32), (v0 + 784), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, __n128 a2)
{
  *(v2 + 344) = 0;
  *(v2 + 312) = a2;
  *(v2 + 328) = a2;

  return sub_1BF8E69C4(a1, v2 + 16);
}

uint64_t Interaction.relatedIntents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InteractionIntents(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t type metadata accessor for InteractionIntents(uint64_t a1)
{
  result = qword_1EDBF2CB8;
  if (!qword_1EDBF2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interaction.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0);
  OUTLINED_FUNCTION_72(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1BF9B44D8();
  v6 = sub_1BF9B4518();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t InteractionIntents.description.getter()
{
  v1 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_17();
  v5 = v4 - v3;
  v6 = type metadata accessor for SiriSuggestions.Intent(0);
  v7 = OUTLINED_FUNCTION_72(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  type metadata accessor for InteractionIntents(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_2_22();
  sub_1BF966070(v0, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD00000000000003ALL, 0x80000001BF9CD320);
    v17 = *(v16 + 16);
    if (v17)
    {
      v53 = MEMORY[0x1E69E7CC0];
      v18 = &v53;
      sub_1BF8D01E0(0, v17, 0);
      OUTLINED_FUNCTION_9_12();
      v20 = v16 + v19;
      v21 = *(v2 + 72);
      do
      {
        sub_1BF966070(v20, v5, type metadata accessor for SiriSuggestions.IntentQuery);
        v22 = *(v5 + 8);
        v23 = *(v5 + 16);
        v24 = *(v5 + 24);
        sub_1BF9439F0(v22, v23, v24);
        OUTLINED_FUNCTION_6_14();
        v53 = v18;
        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          sub_1BF8D01E0(v25 > 1, v26 + 1, 1);
          v18 = v53;
        }

        v18[2] = v26 + 1;
        v27 = &v18[3 * v26];
        v27[4] = v22;
        v27[5] = v23;
        *(v27 + 48) = v24;
        v20 += v21;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v40 = MEMORY[0x1BFB5E030](v18, &type metadata for SiriSuggestions.IntentType);
    v42 = v41;

    MEMORY[0x1BFB5DE90](v40, v42);

    return v54;
  }

  else
  {
    v28 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48));
    sub_1BF8F1970(v14, v10);
    if (v28)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      v29 = *(v28 + 16);
      if (v29)
      {
        v52 = v10;
        v53 = MEMORY[0x1E69E7CC0];
        v30 = &v53;
        sub_1BF8D01E0(0, v29, 0);
        OUTLINED_FUNCTION_9_12();
        v32 = v28 + v31;
        v33 = *(v2 + 72);
        do
        {
          sub_1BF966070(v32, v5, type metadata accessor for SiriSuggestions.IntentQuery);
          v34 = *(v5 + 8);
          v35 = *(v5 + 16);
          v36 = *(v5 + 24);
          sub_1BF9439F0(v34, v35, v36);
          OUTLINED_FUNCTION_6_14();
          v53 = v30;
          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            sub_1BF8D01E0(v37 > 1, v38 + 1, 1);
            v30 = v53;
          }

          v30[2] = v38 + 1;
          v39 = &v30[3 * v38];
          v39[4] = v34;
          v39[5] = v35;
          *(v39 + 48) = v36;
          v32 += v33;
          --v29;
        }

        while (v29);

        v10 = v52;
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
      }

      v46 = MEMORY[0x1BFB5E030](v30, &type metadata for SiriSuggestions.IntentType);
      v48 = v47;

      MEMORY[0x1BFB5DE90](v46, v48);

      v45 = v54;
      v44 = v55;
    }

    else
    {
      v44 = 0xE300000000000000;
      v45 = 7104878;
    }

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD00000000000002BLL, 0x80000001BF9CD360);
    countAndFlagsBits = SiriSuggestions.Intent.getIdentifier()()._countAndFlagsBits;
    MEMORY[0x1BFB5DE90](countAndFlagsBits);

    MEMORY[0x1BFB5DE90](0xD000000000000021, 0x80000001BF9CD390);
    MEMORY[0x1BFB5DE90](v45, v44);

    v43 = v54;
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v10, v50);
  }

  return v43;
}

BOOL static InteractionIntents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Intent(0);
  v5 = OUTLINED_FUNCTION_72(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  type metadata accessor for InteractionIntents(0);
  OUTLINED_FUNCTION_13();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA0, &qword_1BF9C3100);
  OUTLINED_FUNCTION_72(v15);
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = (&v42 + *(v17 + 56) - v18);
  sub_1BF966070(a1, &v42 - v18, type metadata accessor for InteractionIntents);
  sub_1BF966070(a2, v20, type metadata accessor for InteractionIntents);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_22();
    sub_1BF966070(v19, v14, v25);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48);
    v27 = *&v14[v26];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v14, v28);
LABEL_7:
      sub_1BF8DFBF0(v19, &qword_1EBDE9EA0, &qword_1BF9C3100);
      return 0;
    }

    v29 = *(v20 + v26);
    sub_1BF8F1970(v20, v8);
    static SiriSuggestions.Intent.== infix(_:_:)();
    v31 = v30;
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v14, v32);
    if (v31)
    {
      if (v27)
      {
        if (v29)
        {

          v34 = sub_1BF8CECDC(v33, v29);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_0_22();
          sub_1BF9660D0(v8, v35);
          if (v34)
          {
            goto LABEL_19;
          }
        }

        else
        {

          OUTLINED_FUNCTION_0_22();
          sub_1BF9660D0(v8, v41);
        }

LABEL_15:
        OUTLINED_FUNCTION_1_20();
        sub_1BF9660D0(v19, v37);
        return 0;
      }

      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v8, v39);
      if (!v29)
      {
LABEL_19:
        OUTLINED_FUNCTION_1_20();
        sub_1BF9660D0(v19, v40);
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v8, v36);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_22();
  sub_1BF966070(v19, v12, v21);
  v22 = *v12;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v23 = sub_1BF8CECDC(v22, *v20);

  OUTLINED_FUNCTION_1_20();
  sub_1BF9660D0(v19, v24);
  return v23;
}

uint64_t Interaction.getMentionedAppIds()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA8, &unk_1BF9C3108);
  OUTLINED_FUNCTION_72(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SiriSuggestions.Intent(0);
  v9 = OUTLINED_FUNCTION_72(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  (*(a2 + 40))(a1, a2);
  v13 = type metadata accessor for InteractionIntents(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE9EA8, &unk_1BF9C3108);
    return MEMORY[0x1E69E7CC0];
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_20();
    sub_1BF9660D0(v7, v14);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8);

  sub_1BF8F1970(v7, v12);
  v16 = SiriSuggestions.Intent.getSiriHelpMentionedAppId()();
  if (v16.value._object)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BF9B6370;
    *(v15 + 32) = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_0_22();
  sub_1BF9660D0(v12, v17);
  return v15;
}

Swift::OpaquePointer_optional __swiftcall Interaction.getIntentsToSuggest()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA8, &unk_1BF9C3108);
  OUTLINED_FUNCTION_72(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v21 - v6);
  (*(v2 + 40))(v3, v2);
  v8 = type metadata accessor for InteractionIntents(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v9 = sub_1BF9B47C8();
    __swift_project_value_buffer(v9, qword_1EDBF5570);
    v10 = sub_1BF9B47A8();
    v11 = sub_1BF9B5038();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = sub_1BF9B58D8();
      v16 = sub_1BF8DE810(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BF8B8000, v10, v11, "%s does not have .intentsToSuggest(intentQueries:) Returning nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFB5F320](v13, -1, -1);
      MEMORY[0x1BFB5F320](v12, -1, -1);
    }

    v18 = 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v7;
  }

  else
  {
    v18 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48));
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v7, v19);
  }

  v20 = v18;
  result.value._rawValue = v20;
  result.is_nil = v17;
  return result;
}

uint64_t sub_1BF966070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9660D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BF9661CC(uint64_t a1)
{
  sub_1BF966240(319);
  if (v1 <= 0x3F)
  {
    sub_1BF9662C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF966240(uint64_t a1)
{
  if (!qword_1EDBF3950[0])
  {
    type metadata accessor for SiriSuggestions.Intent(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9EB0, &qword_1BF9C31A8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBF3950);
    }
  }
}

void sub_1BF9662C0()
{
  if (!qword_1EDBF05A0)
  {
    sub_1BF966308(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF05A0);
    }
  }
}

void sub_1BF966308(uint64_t a1)
{
  if (!qword_1EDBF0598)
  {
    type metadata accessor for SiriSuggestions.IntentQuery(255);
    v1 = sub_1BF9B4E08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF0598);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_1BF9660D0(v0, type metadata accessor for SiriSuggestions.IntentQuery);
}

__n128 Preference.init(weighting:reason:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u8[8] = a2 & 1;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_1BF9663A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF96A880;

  return CandidateSuggestion.getLoggingAction()(a1, a2, a3);
}

uint64_t sub_1BF966450(uint64_t a1)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF966470, 0, 0);
}

uint64_t sub_1BF966470()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 360);
  v2 = v1[4];
  sub_1BF8E69C4(v2 + 200, v0 + 288);
  v3 = *(v0 + 312);
  *(v0 + 368) = v3;
  *(v0 + 384) = __swift_project_boxed_opaque_existential_1((v0 + 288), v3);
  sub_1BF8C4A08(v2 + 56, v0 + 16);
  *(v0 + 392) = v1[5];
  *(v0 + 400) = v1[2];
  *(v0 + 408) = v1[3];
  ObjectType = swift_getObjectType();
  *(v0 + 416) = ObjectType;
  OUTLINED_FUNCTION_33_8(ObjectType);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF96652C()
{
  OUTLINED_FUNCTION_7();
  Context.getAppId()();
  v0 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BF966590()
{
  v1 = OUTLINED_FUNCTION_14_12();
  v2(v0 + 16, v1);

  sub_1BF8E9F70(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t CandidateSuggestion.getLoggingAction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[81] = v3;
  v4[80] = a3;
  v4[79] = a2;
  v4[78] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF966648()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*(v0 + 640) + 16);
  v2 = OUTLINED_FUNCTION_88();
  v3 = v1(v2);
  sub_1BF8C4A08(v3 + 56, v0 + 16);

  sub_1BF8E69C4(v0 + 160, v0 + 560);
  sub_1BF8E9F70(v0 + 16);
  v4 = *(v0 + 584);
  *(v0 + 656) = v4;
  *(v0 + 672) = __swift_project_boxed_opaque_existential_1((v0 + 560), v4);
  v5 = OUTLINED_FUNCTION_88();
  v6 = v1(v5);
  sub_1BF8C4A08(v6 + 56, v0 + 288);

  v7 = OUTLINED_FUNCTION_88();
  *(v0 + 680) = v8(v7);
  v9 = OUTLINED_FUNCTION_88();
  *(v0 + 688) = v10(v9);
  *(v0 + 696) = v11;
  ObjectType = swift_getObjectType();
  *(v0 + 704) = ObjectType;
  OUTLINED_FUNCTION_33_8(ObjectType);
  OUTLINED_FUNCTION_15_4();
  v13 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BF966794()
{
  OUTLINED_FUNCTION_7();
  Context.getAppId()();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BF966804()
{
  OUTLINED_FUNCTION_6();
  v7 = v0;
  v1 = *(v0 + 680);
  v2 = OUTLINED_FUNCTION_14_12();
  v3(v0 + 288, v1, &v6, v2);

  sub_1BF8E9F70(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF9668B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF966964;

  return CandidateSuggestion.suggestionGroup.getter(a1, a2, a3);
}

uint64_t sub_1BF966964()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_77();

  return v0();
}

uint64_t sub_1BF966A50(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF966A70, 0, 0);
}

uint64_t sub_1BF966A70()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[13];
  v0[14] = *(v1 + 16);
  v0[15] = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  OUTLINED_FUNCTION_33_8(ObjectType);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF966AEC()
{
  OUTLINED_FUNCTION_7();
  sub_1BF96700C(*(v0 + 128), v0 + 16);
  v1 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BF966B50()
{
  if (*(v0 + 40))
  {
    sub_1BF8D5C74((v0 + 16), *(v0 + 96));
  }

  else
  {
    sub_1BF8E69C4(*(*(v0 + 104) + 32) + 16, v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
    (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (*(v0 + 40))
    {
      sub_1BF8E8118(v0 + 16, &qword_1EBDE8A88, &unk_1BF9B8580);
    }
  }

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t CandidateSuggestion.suggestionGroup.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF966C4C()
{
  OUTLINED_FUNCTION_7();
  v0[16] = (*(v0[14] + 8))(v0[13]);
  v0[17] = v1;
  ObjectType = swift_getObjectType();
  v0[18] = ObjectType;
  OUTLINED_FUNCTION_33_8(ObjectType);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF966CD8()
{
  OUTLINED_FUNCTION_7();
  sub_1BF96700C(*(v0 + 144), v0 + 16);
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BF966D44()
{
  if (*(v0 + 40))
  {
    sub_1BF8D5C74((v0 + 16), *(v0 + 96));
  }

  else
  {
    v1 = (*(*(v0 + 112) + 16))(*(v0 + 104));
    sub_1BF8E69C4(v1 + 16, v0 + 56);

    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v3 = OUTLINED_FUNCTION_83();
    v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (*(v0 + 40))
    {
      sub_1BF8E8118(v0 + 16, &qword_1EBDE8A88, &unk_1BF9B8580);
    }
  }

  OUTLINED_FUNCTION_77();

  return v5();
}

unint64_t SuggestionEnablementState.description.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

SiriSuggestionsKit::SuggestionEnablementState_optional __swiftcall SuggestionEnablementState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BF966F30@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionEnablementState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1BF96700C@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    OUTLINED_FUNCTION_4_20(&qword_1EDBF4B40);
  }

  v5 = qword_1EDBF4B48;
  v7[3] = type metadata accessor for DefaultOwner();
  v7[4] = &protocol witness table for DefaultOwner;
  v7[0] = v5;

  Context.getParam(for:key:)(v7, 0xD000000000000011, 0x80000001BF9CD490, a1, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v9)
  {
    sub_1BF8E8118(&v8, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A80, &unk_1BF9C3A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

__n128 Preference.reason.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

BOOL static Preference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5 >> 3;
  if (v11 == 23)
  {
    if ((v8 & 0xF8) == 0xB8)
    {
      return 1;
    }
  }

  else
  {
    if (v11 == 31)
    {
      return (~v8 & 0xF8) == 0;
    }

    if ((~(v8 >> 3) & 0x17) != 0)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 != 1)
        {
          switch(v5)
          {
            case -127:
              v13 = v8 == 129;
              break;
            case -126:
              v13 = v8 == 130;
              break;
            case -125:
              v13 = v8 == 131;
              break;
            case -124:
              v13 = v8 == 132;
              break;
            case -123:
              v13 = v8 == 133;
              break;
            default:
              v13 = v8 == 128;
              break;
          }

          return v13 && v6 == v9;
        }

        if ((v8 & 0xC0) != 0x40 || (sub_1BF8CAC04(v5 & 1) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8 >= 0x40u || (sub_1BF8CA4F0() & 1) == 0)
      {
        return 0;
      }

      return v6 == v9;
    }
  }

  return 0;
}

BOOL static PreferenceReason.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = v4 >> 3;
  if (v6 == 23)
  {
    return (v5 & 0xF8) == 0xB8;
  }

  if (v6 == 31)
  {
    return (~v5 & 0xF8) == 0;
  }

  if ((~(v5 >> 3) & 0x17) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a1[1];
  if (v4 >> 6)
  {
    if (v4 >> 6 != 1)
    {
      switch(v4)
      {
        case -127:
          if (v5 != 129)
          {
            return 0;
          }

          return v9 == v8;
        case -126:
          if (v5 != 130)
          {
            return 0;
          }

          return v9 == v8;
        case -125:
          if (v5 != 131)
          {
            return 0;
          }

          return v9 == v8;
        case -124:
          if (v5 != 132)
          {
            return 0;
          }

          return v9 == v8;
        case -123:
          if (v5 != 133)
          {
            return 0;
          }

          return v9 == v8;
        default:
          if (v5 != 128)
          {
            return 0;
          }

          return v9 == v8;
      }
    }

    if ((v5 & 0xC0) != 0x40 || (sub_1BF8CAC04(v4 & 1) & 1) == 0)
    {
      return 0;
    }

    return v9 == v8;
  }

  if (v5 < 0x40u && (sub_1BF8CA4F0() & 1) != 0)
  {
    return v9 == v8;
  }

  return 0;
}

uint64_t sub_1BF967410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746867696577 && a2 == 0xE900000000000067;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF9674DC(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x6E69746867696577;
  }
}

uint64_t sub_1BF967534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96755C(uint64_t a1)
{
  v2 = sub_1BF96775C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967598(uint64_t a1)
{
  v2 = sub_1BF96775C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Preference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EB8, &qword_1BF9C31D8);
  OUTLINED_FUNCTION_1();
  v14 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96775C();
  sub_1BF9B5898();
  LOBYTE(v15) = 0;
  sub_1BF9B55D8();
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1BF9677B0();
    sub_1BF9B5638();
  }

  return (*(v14 + 8))(v8, v4);
}

unint64_t sub_1BF96775C()
{
  result = qword_1EBDE9EC0;
  if (!qword_1EBDE9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9EC0);
  }

  return result;
}

unint64_t sub_1BF9677B0()
{
  result = qword_1EBDE9EC8;
  if (!qword_1EBDE9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9EC8);
  }

  return result;
}

uint64_t Preference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9ED0, &qword_1BF9C31E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96775C();
  sub_1BF9B5868();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    v11 = sub_1BF9B54F8();
    v13 = v12;
    v17 = 1;
    sub_1BF9679C0();
    sub_1BF9B5558();
    (*(v7 + 8))(v10, v5);
    v15 = v16;
    *a2 = v11;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF9679C0()
{
  result = qword_1EBDE9ED8;
  if (!qword_1EBDE9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9ED8);
  }

  return result;
}

uint64_t sub_1BF967A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001BF9CD470 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F6769666E6F63 && a2 == 0xEE00656469727265;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF967B3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x764F6769666E6F63;
  }

  return 0x636E6176656C6572;
}

uint64_t sub_1BF967BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF65726F63536563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF967C78(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1BF967CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF967D20(uint64_t a1)
{
  v2 = sub_1BF968364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967D5C(uint64_t a1)
{
  v2 = sub_1BF968364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967D98(uint64_t a1)
{
  v2 = sub_1BF968460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967DD4(uint64_t a1)
{
  v2 = sub_1BF968460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF967E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF967E8C(uint64_t a1)
{
  v2 = sub_1BF9683B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967EC8(uint64_t a1)
{
  v2 = sub_1BF9683B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967F04(uint64_t a1)
{
  v2 = sub_1BF9684B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967F40(uint64_t a1)
{
  v2 = sub_1BF9684B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceReason.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EE0, &qword_1BF9C31E8);
  OUTLINED_FUNCTION_1();
  v37 = v5;
  v38 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EE8, &qword_1BF9C31F0);
  OUTLINED_FUNCTION_1();
  v34 = v9;
  v35 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_54_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EF0, &qword_1BF9C31F8);
  OUTLINED_FUNCTION_1();
  v33 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EF8, &qword_1BF9C3200);
  OUTLINED_FUNCTION_1();
  v39 = v17;
  v40 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF968364();
  sub_1BF9B5898();
  v20 = v19 >> 3;
  if (v20 == 23)
  {
    v43 = 1;
    sub_1BF968460();
    v25 = v40;
    sub_1BF9B5598();
    (*(v34 + 8))(v2, v35);
    v22 = OUTLINED_FUNCTION_12_14();
    v24 = v25;
    return v23(v22, v24);
  }

  if (v20 == 31)
  {
    v42 = 0;
    sub_1BF9684B4();
    v21 = v40;
    sub_1BF9B5598();
    (*(v33 + 8))(v15, v11);
    v22 = OUTLINED_FUNCTION_12_14();
    v24 = v21;
    return v23(v22, v24);
  }

  v47 = 2;
  sub_1BF9683B8();
  v27 = v36;
  v28 = v40;
  sub_1BF9B5598();
  v46 = v19;
  v45 = 0;
  sub_1BF96840C();
  v29 = v38;
  v30 = v41;
  sub_1BF9B5638();
  if (!v30)
  {
    v44 = 1;
    sub_1BF9B5618();
  }

  (*(v37 + 8))(v27, v29);
  v31 = OUTLINED_FUNCTION_12_14();
  return v32(v31, v28);
}

unint64_t sub_1BF968364()
{
  result = qword_1EBDE9F00;
  if (!qword_1EBDE9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F00);
  }

  return result;
}

unint64_t sub_1BF9683B8()
{
  result = qword_1EBDE9F08;
  if (!qword_1EBDE9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F08);
  }

  return result;
}

unint64_t sub_1BF96840C()
{
  result = qword_1EBDE9F10;
  if (!qword_1EBDE9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F10);
  }

  return result;
}

unint64_t sub_1BF968460()
{
  result = qword_1EBDE9F18;
  if (!qword_1EBDE9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F18);
  }

  return result;
}

unint64_t sub_1BF9684B4()
{
  result = qword_1EBDE9F20;
  if (!qword_1EBDE9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F20);
  }

  return result;
}

uint64_t PreferenceReason.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F28, &qword_1BF9C3208);
  OUTLINED_FUNCTION_1();
  v55 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v61 = v52 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F30, &qword_1BF9C3210);
  OUTLINED_FUNCTION_1();
  v58 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_54_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F38, &qword_1BF9C3218);
  OUTLINED_FUNCTION_1();
  v56 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F40, &qword_1BF9C3220);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - v18;
  v20 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BF968364();
  v21 = v63;
  sub_1BF9B5868();
  if (v21)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v22 = v60;
  v63 = v16;
  v23 = v19;
  sub_1BF9B5568();
  result = sub_1BF8D21BC();
  if (v26 == v27 >> 1)
  {
    v28 = v14;
LABEL_11:
    sub_1BF9B5308();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v41 = &type metadata for PreferenceReason;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    OUTLINED_FUNCTION_11();
    (*(v42 + 104))(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_7_13();
    v44(v43, v28);
LABEL_12:
    v39 = v62;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v52[1] = 0;
  if (v26 < (v27 >> 1))
  {
    v29 = *(v25 + v26);
    sub_1BF8D21AC();
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v65[0] = 1;
          sub_1BF968460();
          OUTLINED_FUNCTION_23_13(&type metadata for PreferenceReason.ConfigOverrideCodingKeys, v65);
          v34 = v59;
          swift_unknownObjectRelease();
          (*(v58 + 8))(v2, v22);
          v35 = OUTLINED_FUNCTION_7_13();
          v36(v35, v14);
          v37 = 0;
          v38 = 184;
        }

        else
        {
          v66 = 2;
          sub_1BF9683B8();
          OUTLINED_FUNCTION_23_13(&type metadata for PreferenceReason.RelevanceCodingKeys, &v66);
          v34 = v59;
          v65[2] = 0;
          sub_1BF969C5C();
          sub_1BF9B5558();
          v48 = v63;
          v38 = v65[3];
          v65[1] = 1;
          sub_1BF9B5538();
          v37 = v49;
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_30_8();
          v51(v50);
          (*(v48 + 8))(v23, v14);
        }

        v39 = v62;
      }

      else
      {
        v64 = 0;
        sub_1BF9684B4();
        v45 = v54;
        OUTLINED_FUNCTION_23_13(&type metadata for PreferenceReason.SignalFallbackDepthCodingKeys, &v64);
        swift_unknownObjectRelease();
        (*(v56 + 8))(v45, v53);
        v46 = OUTLINED_FUNCTION_7_13();
        v47(v46, v14);
        v37 = 0;
        v38 = 248;
        v39 = v62;
        v34 = v59;
      }

      *v34 = v38;
      v34[1] = v37;
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v28 = v14;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall CandidateSuggestion.getSuggestionId()()
{
  v1 = (*(v0 + 16))();
  sub_1BF8C4A08(v1 + 56, v7);

  v2 = v7[0];
  v3 = v7[1];

  sub_1BF8E9F70(v7);
  v4 = v2;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void DefaultCandidateSuggestion.deliveryVehicle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  sub_1BF8E6A24(v2, v3, v4, v5, v6);
}

__n128 DefaultCandidateSuggestion.preference.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_13_10();
  v3();
  sub_1BF8E69C4(v1, v7);
  OUTLINED_FUNCTION_26_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:suggestionEnablementState:)();
  v4 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = OUTLINED_FUNCTION_68();
  v6(v5);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:suggestionEnablementState:)()
{
  OUTLINED_FUNCTION_65_0();
  v21 = v5;
  OUTLINED_FUNCTION_19_14();
  v7 = v6;
  sub_1BF9B4518();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = v10 - v9;
  v12 = *v4;
  v13 = *v2;
  v14 = *v1;
  v20 = *v3;
  v19 = v3[1];
  OUTLINED_FUNCTION_13_10();
  v15();
  sub_1BF8E69C4(v0, v28);
  memset(v26, 0, sizeof(v26));
  v27 = -1;
  HIBYTE(v25) = v12;
  v24[1] = v19;
  v24[0] = v20;
  v23 = v13;
  v22 = v14;
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(v11, v7, v21, v28, v26, &v25 + 7, v24, &v23, &v22);
  v16 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, char *a6, __int128 *a7, __int16 *a8, char *a9)
{
  v13 = *a6;
  v14 = *a8;
  v28 = *(a5 + 32);
  v29 = *a9;
  type metadata accessor for ContextContainer();
  v16 = a4[3];
  v15 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v16);
  (*(v15 + 8))(v35, v16, v15);
  LOWORD(v33[0]) = v14;
  v26 = *a5;
  v27 = *a7;
  v24 = a5[1];
  v25 = a7[1];
  v17 = static ContextContainer.createGenerationContext(generationId:sourceOwner:invocationType:)(a1, v35, v33);
  v19 = v18;
  sub_1BF8E8118(v35, &qword_1EBDE9918, &qword_1BF9C0750);
  v35[0] = v26;
  v35[1] = v24;
  v36 = v28;
  v34 = v13;
  v33[1] = v25;
  v33[0] = v27;
  v32 = v29;
  DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:deliveryVehicle:objective:preference:suggestionEnablementState:generationContext:)(a2, a3, v35, &v34, v33, &v32, v17, v19);
  v21 = v20;
  sub_1BF9B4518();
  OUTLINED_FUNCTION_11();
  (*(v22 + 8))(a1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:)()
{
  OUTLINED_FUNCTION_65_0();
  v28 = v5;
  OUTLINED_FUNCTION_19_14();
  v27 = v6;
  sub_1BF9B4518();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = *(v4 + 32);
  v12 = *v3;
  v13 = *v1;
  v25 = *v4;
  v23 = v4[1];
  v26 = *v2;
  v24 = v2[1];
  OUTLINED_FUNCTION_13_10();
  v14();
  sub_1BF8E69C4(v0, &v37);
  v35 = v23;
  v34 = v25;
  v36 = v11;
  v33 = v12;
  v31 = v26;
  v32 = v24;
  v30 = v13;
  v29 = 0;
  OUTLINED_FUNCTION_16_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(v10, v27, v28, v15, v16, v17, v18, v19, &v29);
  v20 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v21 = OUTLINED_FUNCTION_68();
  v22(v21);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

__n128 DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:deliveryVehicle:objective:preference:suggestionEnablementState:generationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a3 + 32);
  v15 = *a4;
  v16 = *a6;
  sub_1BF91C8E4();
  v18 = sub_1BF9692CC(v17, a2);
  v25[0] = v16;
  v19 = sub_1BF9ADE30(v25, a7, a8);
  v21 = v20;
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  *(v22 + 32) = a1;
  *(v22 + 40) = v18;
  v23 = *(a3 + 16);
  *(v22 + 48) = *a3;
  *(v22 + 64) = v23;
  *(v22 + 80) = v14;
  *(v22 + 81) = v15;
  result = *a5;
  *(v22 + 104) = *(a5 + 16);
  *(v22 + 88) = result;
  return result;
}

uint64_t sub_1BF9692CC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1BF969A2C(a1, sub_1BF9A4FA0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, _OWORD *a7)
{
  v14 = swift_allocObject();
  DefaultCandidateSuggestion.init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t DefaultCandidateSuggestion.init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, _OWORD *a7)
{
  v8 = *(a5 + 16);
  *(v7 + 48) = *a5;
  *(v7 + 64) = v8;
  v9 = a7[1];
  *(v7 + 88) = *a7;
  v10 = *(a5 + 32);
  v11 = *a6;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 80) = v10;
  *(v7 + 81) = v11;
  *(v7 + 104) = v9;
  return v7;
}

uint64_t DefaultCandidateSuggestion.deinit()
{
  swift_unknownObjectRelease();

  sub_1BF969CB0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t DefaultCandidateSuggestion.__deallocating_deinit()
{
  DefaultCandidateSuggestion.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1BF969558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF96A880;

  return sub_1BF966450(a1);
}

uint64_t sub_1BF96960C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF96A880;

  return sub_1BF966A50(a1);
}

uint64_t sub_1BF9696C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDBF4B40 != -1)
  {
    OUTLINED_FUNCTION_4_20(&qword_1EDBF4B40);
  }

  v6 = qword_1EDBF4B48;
  v11[3] = type metadata accessor for DefaultOwner();
  v11[4] = &protocol witness table for DefaultOwner;
  v11[0] = v6;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v10[3] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  OUTLINED_FUNCTION_11();
  (*(v8 + 16))();

  Context.setParam(for:key:value:)(v11, 0xD000000000000011, 0x80000001BF9CD490, v10, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_13_10();
  v3();
  sub_1BF8E69C4(v1, v7);
  OUTLINED_FUNCTION_26_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:)();
  v4 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = OUTLINED_FUNCTION_68();
  v6(v5);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_13_10();
  v3();
  sub_1BF8E69C4(v1, &v7);
  OUTLINED_FUNCTION_16_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:)();
  v4 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = OUTLINED_FUNCTION_68();
  v6(v5);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF969A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1BF9A51A8(a1, a2, a3, v30);
  v28[2] = v30[0];
  v28[3] = v30[1];
  v28[4] = v30[2];
  v29 = v31;

  while (1)
  {
    sub_1BF9A51E4(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_1BF90D2E8();
    }

    v8 = v27;
    sub_1BF8C192C(v28, v26);
    v9 = *a5;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
        sub_1BF9B53B8();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1BF95B594();
      v15 = sub_1BF8C2E64(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1BF8C187C(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_1BF8C192C(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1BF8C192C(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

unint64_t sub_1BF969C5C()
{
  result = qword_1EBDE9F48;
  if (!qword_1EBDE9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F48);
  }

  return result;
}

void sub_1BF969CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1BF8C0CB8(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_1BF969CC8()
{
  result = qword_1EBDE9F50;
  if (!qword_1EBDE9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F50);
  }

  return result;
}

uint64_t dispatch thunk of CandidateSuggestion.getLoggingAction()()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_9_13(v4);

  return v6(v5);
}

uint64_t dispatch thunk of CandidateSuggestion.suggestionGroup.getter()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_9_13(v4);

  return v6(v5);
}

uint64_t sub_1BF969FB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1C && *(a1 + 32))
    {
      v2 = *a1 + 27;
    }

    else
    {
      v3 = (*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6);
      v4 = v3 ^ 0x1F;
      v5 = __OFSUB__(29, v3);
      v2 = 29 - v3;
      if (v2 < 0 != v5)
      {
        v2 = -1;
      }

      if (v4 >= 0x1D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF96A008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 28;
    *(result + 8) = 0;
    if (a3 >= 0x1C)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = (2 * (30 - a2)) & 0x38 | ((30 - a2) << 6);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreferenceReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && a1[16])
  {
    return (*a1 + 28);
  }

  v3 = (*a1 >> 1) & 0x1C | (*a1 >> 6);
  v4 = v3 ^ 0x1F;
  v5 = 32 - v3;
  if (v4 >= 0x1D)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreferenceReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = (2 * (30 - a2)) & 0x38 | ((30 - a2) << 6);
    }
  }

  return result;
}

uint64_t sub_1BF96A118(unsigned __int8 *a1)
{
  v1 = (*a1 >> 1) & 0x1C | (*a1 >> 6);
  v2 = v1 ^ 0x1F;
  v3 = 32 - v1;
  if (v2 >= 0x1D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void *sub_1BF96A140(void *result, unsigned int a2)
{
  if (a2 > 0x1D)
  {
    *result = a2 - 30;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
  }

  return result;
}

_BYTE *sub_1BF96A1CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF96A2D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF96A3B0()
{
  result = qword_1EBDE9F58;
  if (!qword_1EBDE9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F58);
  }

  return result;
}

unint64_t sub_1BF96A408()
{
  result = qword_1EBDE9F60;
  if (!qword_1EBDE9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F60);
  }

  return result;
}

unint64_t sub_1BF96A460()
{
  result = qword_1EBDE9F68;
  if (!qword_1EBDE9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F68);
  }

  return result;
}

unint64_t sub_1BF96A4B8()
{
  result = qword_1EBDE9F70;
  if (!qword_1EBDE9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F70);
  }

  return result;
}

unint64_t sub_1BF96A510()
{
  result = qword_1EBDE9F78;
  if (!qword_1EBDE9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F78);
  }

  return result;
}

unint64_t sub_1BF96A568()
{
  result = qword_1EBDE9F80;
  if (!qword_1EBDE9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F80);
  }

  return result;
}

unint64_t sub_1BF96A5C0()
{
  result = qword_1EBDE9F88;
  if (!qword_1EBDE9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F88);
  }

  return result;
}

unint64_t sub_1BF96A618()
{
  result = qword_1EBDE9F90;
  if (!qword_1EBDE9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F90);
  }

  return result;
}

unint64_t sub_1BF96A670()
{
  result = qword_1EBDE9F98;
  if (!qword_1EBDE9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F98);
  }

  return result;
}

unint64_t sub_1BF96A6C8()
{
  result = qword_1EBDE9FA0;
  if (!qword_1EBDE9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FA0);
  }

  return result;
}

unint64_t sub_1BF96A720()
{
  result = qword_1EBDE9FA8;
  if (!qword_1EBDE9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FA8);
  }

  return result;
}

unint64_t sub_1BF96A778()
{
  result = qword_1EBDE9FB0;
  if (!qword_1EBDE9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FB0);
  }

  return result;
}

unint64_t sub_1BF96A7D0()
{
  result = qword_1EBDE9FB8;
  if (!qword_1EBDE9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FB8);
  }

  return result;
}

unint64_t sub_1BF96A824()
{
  result = qword_1EBDE9FC0;
  if (!qword_1EBDE9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FC0);
  }

  return result;
}

uint64_t HomeEntity.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BF9B4518();
  OUTLINED_FUNCTION_13();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HomeEntity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeEntity(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomeEntity(uint64_t a1)
{
  result = qword_1EBDEA0D0;
  if (!qword_1EBDEA0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeEntity.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomeEntity(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeEntity.assistantIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeEntity(0) + 28));

  return v1;
}

int *HomeEntity.init(identifier:name:type:assistantIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  sub_1BF9B4518();
  OUTLINED_FUNCTION_13();
  (*(v14 + 32))(a7, a1);
  result = type metadata accessor for HomeEntity(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = v13;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1BF96AAA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701670760 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701736314 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1836019570 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656E656373 && a2 == 0xE500000000000000;
            if (v10 || (sub_1BF9B56D8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
              if (v11 || (sub_1BF9B56D8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BF9B56D8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF96AD18(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 1701670760;
      break;
    case 2:
      result = 1701736314;
      break;
    case 3:
      result = 1836019570;
      break;
    case 4:
      result = 0x70756F7267;
      break;
    case 5:
      result = 0x656E656373;
      break;
    case 6:
      result = 0x72656767697274;
      break;
    case 7:
      result = 0x656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF96ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF96AAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96AE1C(uint64_t a1)
{
  v2 = sub_1BF96B88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AE58(uint64_t a1)
{
  v2 = sub_1BF96B88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AE94(uint64_t a1)
{
  v2 = sub_1BF96B8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AED0(uint64_t a1)
{
  v2 = sub_1BF96B8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AF0C(uint64_t a1)
{
  v2 = sub_1BF96B9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AF48(uint64_t a1)
{
  v2 = sub_1BF96B9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AF84(uint64_t a1)
{
  v2 = sub_1BF96BAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AFC0(uint64_t a1)
{
  v2 = sub_1BF96BAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AFFC(uint64_t a1)
{
  v2 = sub_1BF96BA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B038(uint64_t a1)
{
  v2 = sub_1BF96BA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B074(uint64_t a1)
{
  v2 = sub_1BF96B988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B0B0(uint64_t a1)
{
  v2 = sub_1BF96B988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B0EC(uint64_t a1)
{
  v2 = sub_1BF96B934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B128(uint64_t a1)
{
  v2 = sub_1BF96B934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B164(uint64_t a1)
{
  v2 = sub_1BF96BB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B1A0(uint64_t a1)
{
  v2 = sub_1BF96BB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B1DC(uint64_t a1)
{
  v2 = sub_1BF96BA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B218(uint64_t a1)
{
  v2 = sub_1BF96BA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeEntity.EntityType.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FC8, &qword_1BF9C3AA0);
  OUTLINED_FUNCTION_1();
  v66 = v5;
  v67 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v65 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FD0, &qword_1BF9C3AA8);
  OUTLINED_FUNCTION_1();
  v63 = v9;
  v64 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v62 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FD8, &qword_1BF9C3AB0);
  OUTLINED_FUNCTION_1();
  v60 = v13;
  v61 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v59 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FE0, &qword_1BF9C3AB8);
  OUTLINED_FUNCTION_1();
  v57 = v17;
  v58 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v56 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FE8, &qword_1BF9C3AC0);
  OUTLINED_FUNCTION_1();
  v54 = v21;
  v55 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v53 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FF0, &qword_1BF9C3AC8);
  OUTLINED_FUNCTION_1();
  v51 = v25;
  v52 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v50 = v27;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FF8, &qword_1BF9C3AD0);
  OUTLINED_FUNCTION_1();
  v48 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v47 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA000, &qword_1BF9C3AD8);
  OUTLINED_FUNCTION_1();
  v47 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v47 - v35;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA008, &qword_1BF9C3AE0);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v47 - v40;
  v42 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96B88C();
  sub_1BF9B5898();
  switch(v42)
  {
    case 1:
      v70 = 1;
      sub_1BF96BAD8();
      OUTLINED_FUNCTION_4_21(&type metadata for HomeEntity.EntityType.HomeCodingKeys, &v70);
      (*(v48 + 8))(v31, v49);
      return (*(v38 + 8))(v41, v38);
    case 2:
      v71 = 2;
      sub_1BF96BA84();
      v43 = v50;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.ZoneCodingKeys, &v71);
      v45 = v51;
      v44 = v52;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_10_14();
      sub_1BF96BA30();
      v43 = v53;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.RoomCodingKeys, &v72);
      v45 = v54;
      v44 = v55;
      goto LABEL_10;
    case 4:
      v73 = 4;
      sub_1BF96B9DC();
      v43 = v56;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.GroupCodingKeys, &v73);
      v45 = v57;
      v44 = v58;
      goto LABEL_10;
    case 5:
      v74 = 5;
      sub_1BF96B988();
      v43 = v59;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.SceneCodingKeys, &v74);
      v45 = v60;
      v44 = v61;
      goto LABEL_10;
    case 6:
      v75 = 6;
      sub_1BF96B934();
      v43 = v62;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.TriggerCodingKeys, &v75);
      v45 = v63;
      v44 = v64;
      goto LABEL_10;
    case 7:
      v76 = 7;
      sub_1BF96B8E0();
      v43 = v65;
      OUTLINED_FUNCTION_2_23(&type metadata for HomeEntity.EntityType.DeviceCodingKeys, &v76);
      v45 = v66;
      v44 = v67;
LABEL_10:
      (*(v45 + 8))(v43, v44);
      break;
    default:
      v69 = 0;
      sub_1BF96BB2C();
      OUTLINED_FUNCTION_4_21(&type metadata for HomeEntity.EntityType.UnknownCodingKeys, &v69);
      (*(v47 + 8))(v36, v32);
      break;
  }

  return (*(v38 + 8))(v41, v38);
}