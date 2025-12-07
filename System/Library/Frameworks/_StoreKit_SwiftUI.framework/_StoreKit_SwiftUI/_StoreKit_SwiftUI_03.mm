void sub_23B9B8240()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8, &qword_23BBE81A8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B8308()
{
  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997D0, &qword_23BBE8348);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_53();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v7);
  }
}

void sub_23B9B83DC()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E1997C0, &unk_23BBE8338);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDC208();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CE12D0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B84B4()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E8, &qword_23BBE8370);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_53();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B8584()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199740, &unk_23BBE8208);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void *sub_23B9B865C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
  v4 = OUTLINED_FUNCTION_42();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_12_5();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_23B9B86C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8, &qword_23BBE81A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_23B9B8734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_44(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_24_2();
  v11 = a5(v10);
  OUTLINED_FUNCTION_25_0(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (v13)
  {
    if ((result - v15) != 0x8000000000000000 || v13 != -1)
    {
      v16[2] = a1;
      v16[3] = 2 * ((result - v15) / v13);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23B9B8820(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_23B9B8860(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_19();
  if (v11 < v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_4_1(), v6 + *(v12 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_23B9B8930(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_19();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_4_1(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_13_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_23B9B89EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23BBE7F20;
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

void sub_23B9B8AC8()
{
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_5_8();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_17_4();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = v7(0);
  OUTLINED_FUNCTION_25_0(v18);
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_36();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v7(0);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v11)
  {
    sub_23B9B8930(v9 + v24, v16, v21 + v24, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_9_1();
}

void *sub_23B9B8C34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199688, &qword_23BBE8150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678, &qword_23BBE8140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23B9B8DA8()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B8E78()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996C0, &qword_23BBE8188);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B8F64()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8, &qword_23BBE81A8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B90A4()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199720, &qword_23BBE81E8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B9210()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199768, &unk_23BBE8230);
    v7 = OUTLINED_FUNCTION_42();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199770, &qword_23BBF4FF0);
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B933C()
{
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_5_8();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_17_4();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = OUTLINED_FUNCTION_16_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_25_0(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_36();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v22)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v0 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v16;
  v23[3] = 2 * ((v24 - v0) / v22);
LABEL_18:
  v26 = OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v11)
  {
    sub_23B9B8860(v9 + v28, v16, v23 + v28, v7, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B94E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_23BBDDBB8();
  v9 = a4 & 1;
  OUTLINED_FUNCTION_56();
  sub_23BBA88EC(v10, v11, v12, a4 & 1);
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_41();
  v15 = v14 & ~v13;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v34;
    v23 = OUTLINED_FUNCTION_46();
    sub_23B9BDCD4(v23, v24, v9);
    v25 = OUTLINED_FUNCTION_46();
    sub_23B9BAAB8(v25, v26, v9, v15, isUniquelyReferenced_nonNull_native);
    *v34 = v36;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v9;
    return 1;
  }

  v16 = ~v13;
  v17 = *(v8 + 48);
  while (1)
  {
    v18 = (v17 + 24 * v15);
    v19 = *v18;
    v20 = v18[1];
    if (v18[2])
    {
      break;
    }

    if ((a4 & 1) == 0 && v19 == a2 && ((v20 ^ a3) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v15 = (v15 + 1) & v16;
    if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = v19 == a2 && v20 == a3;
  if (!v21 && (sub_23BBDDA88() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = OUTLINED_FUNCTION_46();
  sub_23B979A38(v28, v29, 1);
LABEL_17:
  v30 = *(v8 + 48) + 24 * v15;
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  *a1 = *v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v33;
  sub_23B9BDCD4(v31, v32, v33);
  return 0;
}

void sub_23B9B9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_61();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  sub_23BBDDBB8();
  sub_23BBDD078();
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_41();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (sub_23BBDDA88() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_23B9BAC7C(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  OUTLINED_FUNCTION_60();
}

void sub_23B9B97B0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v27 = v3;
  v4 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v26 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_1_11();
  sub_23B9BD93C(v12, v13, MEMORY[0x277CDD1B8]);
  sub_23BBDCE58();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_41();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_56();
      v24();
      v30 = *v26;
      sub_23B9BADE4(v10, v17, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      OUTLINED_FUNCTION_56();
      v25();
      goto LABEL_7;
    }

    v18 = v6[9] * v17;
    v19 = v6[2];
    v19(v10, *(v28 + 48) + v18, v4);
    OUTLINED_FUNCTION_1_11();
    sub_23B9BD93C(&qword_27E1996F0, v20, MEMORY[0x277CDD1C0]);
    v21 = sub_23BBDCF38();
    v22 = v6[1];
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v27, *(v28 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B9A28(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BBDDBB8();
  sub_23BBCAB34(a2);
  sub_23BBDD078();

  v6 = sub_23BBDDBF8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xE700000000000000;
      v11 = 0x746E6572727563;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v11 = 0x646172676E776F64;
          v10 = 0xE900000000000065;
          break;
        case 2:
          v11 = 0x61726773736F7263;
          v10 = 0xEA00000000006564;
          break;
        case 3:
          v11 = 0x65646172677075;
          break;
        case 4:
          v10 = 0xE300000000000000;
          v11 = 7105633;
          break;
        default:
          break;
      }

      v12 = 0xE700000000000000;
      v13 = 0x746E6572727563;
      switch(a2)
      {
        case 1:
          v13 = 0x646172676E776F64;
          v12 = 0xE900000000000065;
          break;
        case 2:
          v13 = 0x61726773736F7263;
          v12 = 0xEA00000000006564;
          break;
        case 3:
          v13 = 0x65646172677075;
          break;
        case 4:
          v12 = 0xE300000000000000;
          v13 = 7105633;
          break;
        default:
          break;
      }

      if (v11 == v13 && v10 == v12)
      {
        break;
      }

      v15 = sub_23BBDDA88();

      if (v15)
      {
        goto LABEL_21;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_23B9BB070(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_23B9B9CD0(double *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_23BBDDBA8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = *(*(v6 + 48) + 8 * v9);
    if (v11 == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  sub_23B9BB364(v9, isUniquelyReferenced_nonNull_native, a2);
  *v3 = v14;
  v11 = a2;
LABEL_6:
  result = v10 == 0;
  *a1 = v11;
  return result;
}

void sub_23B9B9DBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0, &qword_23BBE8368);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return;
  }

  v31 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_23B9B89EC(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_23BBDDBB8();
    if (v19)
    {
      MEMORY[0x23EEB63A0](1);
      sub_23BBDD078();
    }

    else
    {
      MEMORY[0x23EEB63A0](0);
      MEMORY[0x23EEB63C0](v17);
      sub_23BBDDBD8();
    }

    v20 = sub_23BBDDBF8();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++*(v5 + 16);
    v3 = v31;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v12 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_23B9BA060(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670, &qword_23BBE8138);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_23B9B89EC(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_23BBDDBB8();
    sub_23BBDD078();
    v19 = sub_23BBDDBF8();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_23B9BA2BC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v36 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v35 = v6 - v5;
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0, &unk_23BBE81B0);
  OUTLINED_FUNCTION_16_4();
  v8 = sub_23BBDD738();
  if (!*(v7 + 16))
  {
LABEL_24:

    *v1 = v8;
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v32 = v7;
  v9 = 0;
  v10 = (v7 + 56);
  OUTLINED_FUNCTION_33();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v18;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_34();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      sub_23B9B89EC(0, (v30 + 63) >> 6, v10);
    }

    else
    {
      OUTLINED_FUNCTION_41();
      *v10 = v31;
    }

    v1 = v0;
    *(v7 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v33 = *(v3 + 72);
    v34 = *(v3 + 32);
    v34(v35, *(v7 + 48) + v33 * (v17 | (v9 << 6)), v36);
    OUTLINED_FUNCTION_1_11();
    sub_23B9BD93C(&qword_27E1996E8, v21, MEMORY[0x277CDD1B8]);
    sub_23BBDCE58();
    OUTLINED_FUNCTION_52();
    if (((v24 << v23) & ~*(v16 + 8 * v22)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_47();
LABEL_18:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v34(*(v8 + 48) + v25 * v33, v35, v36);
    ++*(v8 + 16);
    v7 = v32;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_45();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (*(v16 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_59();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

void sub_23B9BA58C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788, &qword_23BBE8248);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    if (v10)
    {
LABEL_6:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x23B9BA870);
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_12:
        v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
        sub_23BBDDBB8();
        sub_23BBDD078();

        v17 = sub_23BBDDBF8();
        v18 = -1 << *(v5 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v23 && (v22 & 1) != 0)
            {
              goto LABEL_29;
            }

            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v12 + 8 * v20);
          }

          while (v25 == -1);
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        }

        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v5 + 48) + v21) = v16;
        ++*(v5 + 16);
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_23B9B89EC(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_23B9BA884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818, &unk_23BBE83A0);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_23B9B89EC(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_23BBDDBA8();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_23B9BAAB8(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_23B9B9DBC(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_23B9BB47C();
        goto LABEL_22;
      }

      sub_23B9BBBC0(v11 + 1);
    }

    v13 = *v5;
    sub_23BBDDBB8();
    sub_23BBA88EC(v28, result, a2, a3 & 1);
    v14 = sub_23BBDDBF8();
    v15 = v13 + 56;
    v16 = -1 << *(v13 + 32);
    a4 = v14 & ~v16;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v13 + 48);
      do
      {
        v19 = (v18 + 24 * a4);
        v20 = *v19;
        v21 = v19[1];
        if (v19[2])
        {
          if (a3)
          {
            v22 = v20 == result && v21 == a2;
            if (v22 || (sub_23BBDDA88() & 1) != 0)
            {
              goto LABEL_25;
            }
          }
        }

        else if ((a3 & 1) == 0 && v20 == result && ((v21 ^ a2) & 1) == 0)
        {
          goto LABEL_25;
        }

        a4 = (a4 + 1) & v17;
      }

      while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_22:
  v23 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = result;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3 & 1;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_25:
    sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }
}

void sub_23B9BAC7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23B9BA060(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23B9BBE3C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_23BBDDBB8();
      sub_23BBDD078();
      v16 = sub_23BBDDBF8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_23BBDDA88() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_23B9BB5E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_23B9BADE4(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_23BBDC9A8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23B9BA2BC();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_23B9BC090();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_23B9BD93C(&qword_27E1996E8, MEMORY[0x277CDD1B0], MEMORY[0x277CDD1B8]);
      v14 = sub_23BBDCE58();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_23B9BD93C(&qword_27E1996F0, MEMORY[0x277CDD1B0], MEMORY[0x277CDD1C0]);
        v16 = sub_23BBDCF38();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_23B9BB738();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_23B9BB070(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23B9BA58C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_23B9BB940();
        goto LABEL_26;
      }

      sub_23B9BC328(v7 + 1);
    }

    v9 = *v3;
    sub_23BBDDBB8();
    sub_23BBCAB34(v6);
    sub_23BBDD078();

    v10 = sub_23BBDDBF8();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        v13 = 0xE700000000000000;
        v14 = 0x746E6572727563;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x646172676E776F64;
            v13 = 0xE900000000000065;
            break;
          case 2:
            v14 = 0x61726773736F7263;
            v13 = 0xEA00000000006564;
            break;
          case 3:
            v14 = 0x65646172677075;
            break;
          case 4:
            v13 = 0xE300000000000000;
            v14 = 7105633;
            break;
          default:
            break;
        }

        v15 = 0xE700000000000000;
        v16 = 0x746E6572727563;
        switch(v6)
        {
          case 1:
            v16 = 0x646172676E776F64;
            v15 = 0xE900000000000065;
            break;
          case 2:
            v16 = 0x61726773736F7263;
            v15 = 0xEA00000000006564;
            break;
          case 3:
            v16 = 0x65646172677075;
            break;
          case 4:
            v15 = 0xE300000000000000;
            v16 = 7105633;
            break;
          default:
            break;
        }

        if (v14 == v16 && v13 == v15)
        {
          break;
        }

        v18 = sub_23BBDDA88();

        if (v18)
        {
          goto LABEL_30;
        }

        a2 = (a2 + 1) & v12;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_29:

LABEL_30:
      sub_23BBDDAD8();
      __break(1u);
      JUMPOUT(0x23B9BB33CLL);
    }
  }

LABEL_26:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v19 + 16) = v22;
}

void sub_23B9BB364(unint64_t result, char a2, double a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_23B9BA884(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23B9BC5F0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_23BBDDBA8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        result = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * result) == a3)
        {
          goto LABEL_15;
        }

        v13 = result + 1;
      }
    }

    sub_23B9BBA80();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v8 + 48) + 8 * result) = a3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_23BBDDAD8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_23B9BB47C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0, &qword_23BBE8368);
  v2 = *v0;
  v3 = sub_23BBDD728();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 8 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        sub_23B9BDCD4(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23B9BB5E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670, &qword_23BBE8138);
  v2 = *v0;
  v3 = sub_23BBDD728();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23B9BB738()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0, &unk_23BBE81B0);
  v9 = *v0;
  v10 = sub_23BBDD728();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v1;
    v12 = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 56 + 8 * v13)
    {
      memmove(v12, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v24 = *(v4 + 72) * (v20 | (v15 << 6));
      (*(v4 + 16))(v8, *(v9 + 48) + v24, v2);
      (*(v4 + 32))(*(v11 + 48) + v24, v8, v2);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v1 = v25;
        goto LABEL_21;
      }

      ++v21;
      if (*(v9 + 56 + 8 * v15))
      {
        OUTLINED_FUNCTION_34();
        v18 = v23 & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v11;
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23B9BB940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788, &qword_23BBE8248);
  v2 = *v0;
  v3 = sub_23BBDD728();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23B9BBA80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818, &unk_23BBE83A0);
  v2 = *v0;
  v3 = sub_23BBDD728();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_23B9BBBC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E0, &qword_23BBE8368);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_23BBDDBB8();
        if (v19)
        {
          MEMORY[0x23EEB63A0](1);

          sub_23BBDD078();
        }

        else
        {
          MEMORY[0x23EEB63A0](0);
          MEMORY[0x23EEB63C0](v17);
          sub_23BBDDBD8();
        }

        v20 = sub_23BBDDBF8();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v5 + 48) + 24 * v24;
        *v29 = v17;
        *(v29 + 8) = v18;
        *(v29 + 16) = v19;
        ++*(v5 + 16);
        v3 = v30;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

void sub_23B9BBE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199670, &qword_23BBE8138);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_23BBDDBB8();

        sub_23BBDD078();
        v18 = sub_23BBDDBF8();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_23B9BC090()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v36 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0, &unk_23BBE81B0);
  v9 = sub_23BBDD738();
  if (*(v8 + 16))
  {
    v10 = 0;
    v11 = v8 + 56;
    OUTLINED_FUNCTION_33();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    v35 = v3;
    v18 = v9 + 56;
    v33 = (v3 + 32);
    v34 = v12;
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_9:
        v23 = *(v35 + 72);
        (*(v35 + 16))(v7, *(v12 + 48) + v23 * (v19 | (v10 << 6)), v36);
        OUTLINED_FUNCTION_1_11();
        sub_23B9BD93C(&qword_27E1996E8, v24, MEMORY[0x277CDD1B8]);
        sub_23BBDCE58();
        OUTLINED_FUNCTION_52();
        if (((v27 << v26) & ~*(v18 + 8 * v25)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_47();
LABEL_18:
        *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v33)(*(v9 + 48) + v28 * v23, v7, v36);
        ++*(v9 + 16);
        v12 = v34;
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_45();
      while (++v29 != v31 || (v30 & 1) == 0)
      {
        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        if (*(v18 + 8 * v29) != -1)
        {
          OUTLINED_FUNCTION_59();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v10;
      while (1)
      {
        v10 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v10 >= v17)
        {

          v1 = v0;
          goto LABEL_22;
        }

        ++v20;
        if (*(v11 + 8 * v10))
        {
          OUTLINED_FUNCTION_34();
          v15 = v22 & v21;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v1 = v9;
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23B9BC328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788, &qword_23BBE8248);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x23B9BC5DCLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_23BBDDBB8();
        sub_23BBDD078();

        v16 = sub_23BBDDBF8();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              goto LABEL_27;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
}

void sub_23B9BC5F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199818, &unk_23BBE83A0);
  v4 = sub_23BBDD738();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_23BBDDBA8();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

uint64_t sub_23B9BC864(uint64_t (*a1)(__int128 *, void *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_23B9BC7EC(v5);
  }

  result = sub_23B9BC8E8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_23B9BC8E8(uint64_t (*a1)(__int128 *, void *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_23BBDDA18();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678, &qword_23BBE8140);
        v9 = sub_23BBDD288();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_23B9BCB88(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_23B9BCA5C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_23B9BC9FC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  (*v3)(a2);
  return a2;
}

uint64_t sub_23B9BCA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, void *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_23B9BC9FC(v9, v17);
      sub_23B9BC9FC(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_23B98473C(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_23B98473C(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_23B9BCB88(char **result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, void *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v109 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    __dst = *result;
    if (*result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_95;
    }

    goto LABEL_137;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      goto LABEL_24;
    }

    v13 = *a3;
    v14 = (v9 + 1);
    sub_23B9BC9FC(*a3 + 40 * (v9 + 1), v108);
    sub_23B9BC9FC(v13 + 40 * v11, v107);
    v15 = a4(v108, v107);
    if (v7)
    {
LABEL_105:
      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v108);
      goto LABEL_106;
    }

    v16 = v15;
    v101 = v10;
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v17 = v13 + 40 * v11;
    v18 = v11;
    v19 = 40 * v11;
    v20 = v17 + 80;
    __dst = v18;
    v21 = v18 + 2;
    v12 = v14;
    while (1)
    {
      v22 = v12;
      v23 = v21;
      if (v12 + 1 >= v8)
      {
        break;
      }

      sub_23B9BC9FC(v20, v108);
      sub_23B9BC9FC(v20 - 40, v107);
      v24 = a4(v108, v107);
      __swift_destroy_boxed_opaque_existential_1(v107);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v20 += 40;
      ++v12;
      v21 = (v23 + 1);
      if ((v16 ^ v24))
      {
        if (v16)
        {
          goto LABEL_9;
        }

LABEL_13:
        v10 = v101;
LABEL_23:
        v11 = __dst;
        goto LABEL_24;
      }
    }

    v12 = v8;
    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v12 < __dst)
    {
      goto LABEL_131;
    }

    if (__dst <= v22)
    {
      if (v8 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v8;
      }

      v26 = v12;
      v27 = 40 * v25 - 40;
      v28 = v26;
      v29 = __dst;
      v10 = v101;
      do
      {
        if (v29 != --v26)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          v31 = v30 + v19;
          v32 = v30 + v27;
          sub_23B98473C((v30 + v19), v108);
          v33 = *(v32 + 32);
          v34 = *(v32 + 16);
          *v31 = *v32;
          *(v31 + 16) = v34;
          *(v31 + 32) = v33;
          sub_23B98473C(v108, v32);
        }

        ++v29;
        v27 -= 40;
        v19 += 40;
      }

      while (v29 < v26);
      v12 = v28;
      goto LABEL_23;
    }

    v10 = v101;
    v11 = __dst;
LABEL_24:
    v35 = a3[1];
    if (v12 < v35)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_127;
      }

      if (v12 - v11 < a6)
      {
        v36 = &v11[a6];
        if (!__OFADD__(v11, a6))
        {
          if (v36 >= v35)
          {
            v36 = a3[1];
          }

          if (v36 < v11)
          {
            goto LABEL_130;
          }

          if (v12 != v36)
          {
            v81 = *a3;
            v82 = *a3 + 40 * v12;
            __dst = v11;
            v83 = &v11[-v12];
            v97 = v36;
            do
            {
              v98 = v83;
              v103 = v82;
              do
              {
                sub_23B9BC9FC(v82, v108);
                sub_23B9BC9FC(v82 - 40, v107);
                v84 = a4(v108, v107);
                if (v7)
                {
                  goto LABEL_105;
                }

                v85 = v84;
                __swift_destroy_boxed_opaque_existential_1(v107);
                __swift_destroy_boxed_opaque_existential_1(v108);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v81)
                {
                  goto LABEL_134;
                }

                sub_23B98473C(v82, v108);
                v86 = *(v82 - 24);
                *v82 = *(v82 - 40);
                *(v82 + 16) = v86;
                *(v82 + 32) = *(v82 - 8);
                sub_23B98473C(v108, v82 - 40);
                v82 -= 40;
              }

              while (!__CFADD__(v83++, 1));
              ++v12;
              v82 = v103 + 40;
              v83 = v98 - 1;
            }

            while (v12 != v97);
            v12 = v97;
            v11 = __dst;
          }

          goto LABEL_32;
        }

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
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        return;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v102 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B7D34();
      v10 = v88;
    }

    v37 = *(v10 + 16);
    v38 = v37 + 1;
    if (v37 >= *(v10 + 24) >> 1)
    {
      sub_23B9B7D34();
      v10 = v89;
    }

    *(v10 + 16) = v38;
    v39 = v10 + 32;
    v40 = (v10 + 32 + 16 * v37);
    *v40 = v11;
    v40[1] = v102;
    __dst = *result;
    if (!*result)
    {
      goto LABEL_136;
    }

    if (v37)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v102;
    if (v102 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v41 = v38 - 1;
    v42 = (v39 + 16 * (v38 - 1));
    v43 = (v10 + 16 * v38);
    if (v38 >= 4)
    {
      v48 = v39 + 16 * v38;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_114;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_115;
      }

      v55 = v43[1];
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_117;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_120;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = v42[1];
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v38 == 3)
    {
      v44 = *(v10 + 32);
      v45 = *(v10 + 40);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_52:
      if (v47)
      {
        goto LABEL_116;
      }

      v59 = *v43;
      v58 = v43[1];
      v60 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      v62 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v63 = v42[1];
      v64 = v63 - *v42;
      if (__OFSUB__(v63, *v42))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v61, v64))
      {
        goto LABEL_124;
      }

      if (v61 + v64 >= v46)
      {
        if (v46 < v64)
        {
          v41 = v38 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v38 < 2)
    {
      goto LABEL_118;
    }

    v66 = *v43;
    v65 = v43[1];
    v54 = __OFSUB__(v65, v66);
    v61 = v65 - v66;
    v62 = v54;
LABEL_67:
    if (v62)
    {
      goto LABEL_121;
    }

    v68 = *v42;
    v67 = v42[1];
    v54 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v54)
    {
      goto LABEL_123;
    }

    if (v69 < v61)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v41 - 1 >= v38)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v73 = v10;
    v74 = (v39 + 16 * (v41 - 1));
    v75 = *v74;
    v76 = v41;
    v77 = (v39 + 16 * v41);
    v10 = v77[1];
    sub_23B9BD2D0((*a3 + 40 * *v74), (*a3 + 40 * *v77), *a3 + 40 * v10, __dst, a4);
    if (v7)
    {
      goto LABEL_106;
    }

    if (v10 < v75)
    {
      goto LABEL_108;
    }

    v7 = v39;
    v78 = *(v73 + 16);
    if (v76 > v78)
    {
      goto LABEL_109;
    }

    *v74 = v75;
    v74[1] = v10;
    if (v76 >= v78)
    {
      goto LABEL_110;
    }

    v79 = v76;
    v38 = v78 - 1;
    memmove(v77, v77 + 2, 16 * (v78 - 1 - v79));
    v10 = v73;
    *(v73 + 16) = v78 - 1;
    v80 = v78 > 2;
    v39 = v7;
    v7 = 0;
    if (!v80)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
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
  v10 = sub_23B9BD684(v10);
LABEL_95:
  v90 = (v10 + 16);
  v91 = *(v10 + 16);
  while (v91 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v92 = v10;
    v93 = (v10 + 16 * v91);
    v94 = *v93;
    v95 = &v90[2 * v91];
    v10 = v95[1];
    sub_23B9BD2D0((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v10, __dst, a4);
    if (v7)
    {
      break;
    }

    if (v10 < v94)
    {
      goto LABEL_111;
    }

    if (v91 - 2 >= *v90)
    {
      goto LABEL_112;
    }

    *v93 = v94;
    v93[1] = v10;
    v96 = *v90 - v91;
    if (*v90 < v91)
    {
      goto LABEL_113;
    }

    v91 = *v90 - 1;
    memmove(v95, v95 + 2, 16 * v96);
    *v90 = v91;
    v10 = v92;
  }

LABEL_106:
}

uint64_t sub_23B9BD2D0(char *__src, char *a2, unint64_t a3, char *__dst, uint64_t (*a5)(void *, void *))
{
  v49 = a5;
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = (a2 - __src) / 40;
  v11 = (a3 - a2) / 40;
  if (v10 < v11)
  {
    if (__dst != __src || &__src[40 * v10] <= __dst)
    {
      memmove(__dst, __src, 40 * v10);
    }

    v13 = v6 + 40 * v10;
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v35 = v9;
        goto LABEL_40;
      }

      sub_23B9BC9FC(v8, v48);
      sub_23B9BC9FC(v6, v47);
      v15 = v49(v48, v47);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v39 = (v13 - v6) / 40;
        v40 = v9 < v6 || v9 >= v6 + 40 * v39;
        if (v40 || v9 != v6)
        {
          v38 = 40 * v39;
          v35 = v9;
LABEL_52:
          v41 = v6;
LABEL_59:
          memmove(v35, v41, v38);
        }

        return 1;
      }

      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v47);
      __swift_destroy_boxed_opaque_existential_1(v48);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 40;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v9 += 40;
    }

    v17 = v6;
    v18 = v9 == v6;
    v6 += 40;
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = *v17;
    v20 = *(v17 + 16);
    *(v9 + 4) = *(v17 + 32);
    *v9 = v19;
    *(v9 + 1) = v20;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[40 * v11] <= __dst)
  {
    memmove(__dst, a2, 40 * v11);
  }

  v22 = v6 + 40 * v11;
  v23 = -v6;
  v44 = -v6;
  v45 = v6;
LABEL_26:
  v46 = v8;
  v24 = (v8 - 40);
  v7 -= 40;
  v25 = v22 - 40;
  for (i = v23 + v22; ; i -= 40)
  {
    v13 = v25 + 40;
    if (v25 + 40 <= v45 || v46 <= v9)
    {
      v6 = v45;
      v35 = v46;
LABEL_40:
      v36 = (v13 - v6) / 40;
      v37 = v35 < v6 || v35 >= v6 + 40 * v36;
      if (v37 || v35 != v6)
      {
        v38 = 40 * v36;
        goto LABEL_52;
      }

      return 1;
    }

    sub_23B9BC9FC(v25, v48);
    v28 = v24;
    sub_23B9BC9FC(v24, v47);
    v29 = v49(v48, v47);
    if (v5)
    {
      break;
    }

    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v30)
    {
      v22 = v25 + 40;
      v8 = v28;
      v23 = v44;
      if (v7 + 40 != v46)
      {
        v33 = *v28;
        v34 = *(v28 + 16);
        *(v7 + 32) = *(v28 + 32);
        *v7 = v33;
        *(v7 + 16) = v34;
        v8 = v28;
      }

      goto LABEL_26;
    }

    if (v13 != v7 + 40)
    {
      v31 = *v25;
      v32 = *(v25 + 16);
      *(v7 + 32) = *(v25 + 32);
      *v7 = v31;
      *(v7 + 16) = v32;
    }

    v7 -= 40;
    v25 -= 40;
    v24 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v41 = v45;
  v35 = v46;
  v42 = v46 < v45 || v46 >= v45 + 40 * (i / 40);
  if (v42 || v46 != v45)
  {
    v38 = 40 * (i / 40);
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_23B9BD5FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23B9BD684(v3);
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
    return OUTLINED_FUNCTION_27();
  }

  return result;
}

char *sub_23B9BD698(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23B9BD6C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199680, &qword_23BBE8148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23B9BD7C8()
{
  result = qword_27E199690;
  if (!qword_27E199690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199690);
  }

  return result;
}

uint64_t sub_23B9BD834()
{

  return swift_deallocObject();
}

uint64_t sub_23B9BD93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B9BD984()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23B9BD9DC()
{
  result = qword_27E199780;
  if (!qword_27E199780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199780);
  }

  return result;
}

uint64_t sub_23B9BDA4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[5];
  v3 = sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  OUTLINED_FUNCTION_50();
  v4 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_43(WitnessTable, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v3, v1, v4, WitnessTable, v43);
  OUTLINED_FUNCTION_50();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_48();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  OUTLINED_FUNCTION_50();
  sub_23BBDA358();
  v13 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for WrappedIntoUnaryVStack(v13, v14, v2, v15);
  OUTLINED_FUNCTION_17_1();
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_43(v16, v17, v18, v19, v20, v21, v22, v23, v35, v38, v41, v3, v1, v16, WitnessTable, v44);
  OUTLINED_FUNCTION_17_1();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_48();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_50();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDBE28();
  LOBYTE(v2) = sub_23BBDD2A8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43(v25, v26, v27, v28, v29, v30, v31, v32, v36, v39, v42, v2, v1, v24, v25, v45);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9B5FD8();
  swift_getWitnessTable();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B9BDCD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23B9BDCE4()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_44(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4_1();
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  return v0;
}

uint64_t sub_23B9BDD38()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_44(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4_1();
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_23BBD9978();
}

void OUTLINED_FUNCTION_18_5(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_23B9B8930(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return sub_23B9BDCE4();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * result - 64;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B9B8734(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_23BBDC1A8();
}

__n128 OUTLINED_FUNCTION_51()
{
  result = *(v1 - 112);
  v3 = *(v1 - 96);
  *v0 = result;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_23B9BE160()
{
  sub_23B9B6E40();
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v4, v2);
  sub_23B97B104(v2);
  sub_23B97B104(v4);
  return v0 & 1;
}

uint64_t sub_23B9BE1C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860, &qword_23BBE83E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_23B9C7374(v2 + *(a1 + 68), &v14 - v10, &qword_27E199860, &qword_23BBE83E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B9C7140(v11, a2);
  }

  sub_23BBDD5A8();
  v13 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23B9BE398@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860, &qword_23BBE83E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23B9C7374(v2, &v13 - v9, &qword_27E199860, &qword_23BBE83E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B9C7140(v10, a1);
  }

  sub_23BBDD5A8();
  v12 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23B9BE608(uint64_t a1)
{
  v3 = sub_23BBDA308();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v54 = &v52[-v6];
  v7 = sub_23BBDAF68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v59 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999A0, &qword_23BBE8648);
  MEMORY[0x28223BE20](v10);
  v64 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  MEMORY[0x28223BE20](v15 - 8);
  v58 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v67 = &v52[-v18];
  MEMORY[0x28223BE20](v19);
  v63 = &v52[-v20];
  MEMORY[0x28223BE20](v21);
  v23 = &v52[-v22];
  MEMORY[0x28223BE20](v24);
  v26 = &v52[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v52[-v28];
  v65 = a1;
  v66 = v1;
  sub_23B9BE1C4(a1, &v52[-v28]);
  v30 = *MEMORY[0x277CE0558];
  v68 = v8;
  v31 = *(v8 + 104);
  v61 = v30;
  v60 = v31;
  v31(v26);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v7);
  v62 = v10;
  v32 = *(v10 + 48);
  sub_23B9C7374(v29, v14, qword_27E199868, &qword_23BBE84A0);
  sub_23B9C7374(v26, &v14[v32], qword_27E199868, &qword_23BBE84A0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
  {
    sub_23B9846E8(v26, qword_27E199868, &qword_23BBE84A0);
    sub_23B9846E8(v29, qword_27E199868, &qword_23BBE84A0);
    if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v7) == 1)
    {
      sub_23B9846E8(v14, qword_27E199868, &qword_23BBE84A0);
LABEL_15:
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_6;
  }

  sub_23B9C7374(v14, v23, qword_27E199868, &qword_23BBE84A0);
  if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v7) == 1)
  {
    sub_23B9846E8(v26, qword_27E199868, &qword_23BBE84A0);
    sub_23B9846E8(v29, qword_27E199868, &qword_23BBE84A0);
    (*(v68 + 8))(v23, v7);
LABEL_6:
    sub_23B9846E8(v14, &qword_27E1999A0, &qword_23BBE8648);
    goto LABEL_7;
  }

  v39 = v68;
  v40 = v59;
  (*(v68 + 32))(v59, &v14[v32], v7);
  sub_23B9C7578(&qword_27E1999B0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v53 = sub_23BBDCF38();
  v41 = *(v39 + 8);
  v41(v40, v7);
  sub_23B9846E8(v26, qword_27E199868, &qword_23BBE84A0);
  sub_23B9846E8(v29, qword_27E199868, &qword_23BBE84A0);
  v41(v23, v7);
  sub_23B9846E8(v14, qword_27E199868, &qword_23BBE84A0);
  if (v53)
  {
    goto LABEL_15;
  }

LABEL_7:
  v33 = v63;
  sub_23B9BE398(v63);
  v34 = v67;
  v60(v67, v61, v7);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v7);
  v35 = *(v62 + 48);
  v36 = v64;
  sub_23B9C7374(v33, v64, qword_27E199868, &qword_23BBE84A0);
  sub_23B9C7374(v34, &v36[v35], qword_27E199868, &qword_23BBE84A0);
  if (__swift_getEnumTagSinglePayload(v36, 1, v7) == 1)
  {
    sub_23B9846E8(v34, qword_27E199868, &qword_23BBE84A0);
    sub_23B9846E8(v33, qword_27E199868, &qword_23BBE84A0);
    if (__swift_getEnumTagSinglePayload(&v36[v35], 1, v7) == 1)
    {
      sub_23B9846E8(v36, qword_27E199868, &qword_23BBE84A0);
LABEL_17:
      v46 = v54;
      sub_23B9B70F0();
      v48 = v55;
      v47 = v56;
      v49 = v57;
      (*(v56 + 104))(v55, *MEMORY[0x277CDF998], v57);
      sub_23B9C7578(&qword_27E1999A8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      v38 = sub_23BBDCEC8();
      v50 = *(v47 + 8);
      v50(v48, v49);
      v50(v46, v49);
      return v38 & 1;
    }

    goto LABEL_12;
  }

  v37 = v58;
  sub_23B9C7374(v36, v58, qword_27E199868, &qword_23BBE84A0);
  if (__swift_getEnumTagSinglePayload(&v36[v35], 1, v7) == 1)
  {
    sub_23B9846E8(v34, qword_27E199868, &qword_23BBE84A0);
    sub_23B9846E8(v33, qword_27E199868, &qword_23BBE84A0);
    (*(v68 + 8))(v37, v7);
LABEL_12:
    sub_23B9846E8(v36, &qword_27E1999A0, &qword_23BBE8648);
    goto LABEL_13;
  }

  v42 = v68;
  v43 = &v36[v35];
  v44 = v59;
  (*(v68 + 32))(v59, v43, v7);
  sub_23B9C7578(&qword_27E1999B0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v62) = sub_23BBDCF38();
  v45 = *(v42 + 8);
  v45(v44, v7);
  sub_23B9846E8(v67, qword_27E199868, &qword_23BBE84A0);
  sub_23B9846E8(v33, qword_27E199868, &qword_23BBE84A0);
  v45(v37, v7);
  sub_23B9846E8(v36, qword_27E199868, &qword_23BBE84A0);
  if (v62)
  {
    goto LABEL_17;
  }

LABEL_13:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_23B9BEEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, double a9@<D0>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860, &qword_23BBE83E0);
  swift_storeEnumTagMultiPayload();
  __src[0] = a6;
  __src[1] = a7;
  __src[2] = a10;
  *&__src[3] = a11;
  __src[5] = a12;
  v19 = type metadata accessor for StructuredScrollView(0, __src);
  v20 = v19[17];
  *&a8[v20] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v19[18];
  *&a8[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v22 = &a8[v19[19]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = &a8[v19[20]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v19[25];
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 1;
  sub_23BBDBF58();
  memcpy(&a8[v24], __src, 0x48uLL);
  v25 = &a8[v19[26]];
  *v25 = sub_23B9BE5CC(1) & 1;
  *(v25 + 1) = v26;
  v27 = *(a6 - 8);
  (*(v27 + 16))(&a8[v19[21]], a1, a6);
  v28 = *(a10 - 8);
  v29 = (*(v28 + 16))(&a8[v19[23]], a4, a10);
  *&a8[v19[27]] = a9;
  a5(v29);
  (*(v28 + 8))(a4, a10);
  result = (*(v27 + 8))(a1, a6);
  v31 = &a8[v19[24]];
  *v31 = a2;
  v31[8] = a3 & 1;
  return result;
}

uint64_t sub_23B9BF1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, char *a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v30 = a12;
  v32 = a10;
  v33 = a2;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*(v22 + 16))(v26, a1, v27, v24);
  a6(v28);
  sub_23B9BEEC0(v26, v33, v31 & 1, v20, v34, a7, v32, a8, a9, a11, v30, a13);
  return (*(v22 + 8))(a1, a7);
}

void *sub_23B9BF350(uint64_t a1)
{
  memcpy(__dst, (v1 + *(a1 + 100)), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  sub_23BBDBF68();
  v3 = *(a1 + 32);
  v5[1] = *(a1 + 16);
  v5[2] = v3;
  v5[3] = *(a1 + 48);
  v6 = v1;
  return sub_23BAB3D58(sub_23B9C75C0, v5, v7, v8);
}

double sub_23B9BF3F8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v11 = *a1;
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  __dst[4] = a7;
  __dst[5] = a8;
  v12 = *(type metadata accessor for StructuredScrollView(0, __dst) + 100);
  memcpy(__dst, (a2 + v12), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  sub_23BBDBF68();
  if (v19)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v18;
  }

  memcpy(__dst, (a2 + v12), sizeof(__dst));
  sub_23BBDBF68();
  v14 = v16;
  if (v17)
  {
    v14 = 0.0;
  }

  result = rint((v11 + v13 + v14) * 0.2);
  *a9 = result;
  return result;
}

uint64_t sub_23B9BF500()
{
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 3)
  {
    storekit_dyld_fall_2025_os_versions();
    dyld_program_sdk_at_least();
  }

  return 0;
}

uint64_t sub_23B9BF570(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  result = byte_27E1A04D0;
  if (byte_27E1A04D0)
  {
    if (byte_27E1A04D0 == 3)
    {
      storekit_dyld_fall_2025_os_versions();
      if (!dyld_program_sdk_at_least())
      {
        return 0;
      }
    }

    v8 = v1 + *(a1 + 80);
    v9 = *v8;
    if (*(v8 + 8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v9, 0);
      (*(v4 + 8))(v6, v3);
      if (v11[15] != 1)
      {
        return 0;
      }
    }

    if (qword_27E197718 != -1)
    {
      swift_once();
    }

    return qword_27E1BFCC8;
  }

  return result;
}

uint64_t sub_23B9BF760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  OUTLINED_FUNCTION_3_2();
  v188 = v3;
  v183 = *(v4 + 64);
  MEMORY[0x28223BE20](v5);
  v182 = &v142[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918, &unk_23BBE85E0);
  sub_23BBDB038();
  *&v186 = a1 + 5;
  v7 = a1[2];
  OUTLINED_FUNCTION_21_3();
  v184 = v7;
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_15_4();
  v205[0] = sub_23BBDA358();
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928, &unk_23BBFBFC0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v205[1] = sub_23BBDA358();
  v180 = a1[3];
  v181 = a1;
  sub_23BBDA358();
  v8 = a1[4];
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v205[2] = sub_23BBDA358();
  v205[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930, &unk_23BBE85F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  v205[4] = sub_23BBDA358();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v9, &qword_27E199918, &unk_23BBE85E0, v10);
  v11 = sub_23BBDA018();
  OUTLINED_FUNCTION_3_9();
  v14 = sub_23B97B518(v12, &qword_27E199918, &unk_23BBE85E0, v13);
  WitnessTable = swift_getWitnessTable();
  v205[16] = v14;
  v205[17] = WitnessTable;
  OUTLINED_FUNCTION_1_9();
  v16 = swift_getWitnessTable();
  v205[0] = v11;
  v205[1] = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v179 = OpaqueTypeMetadata2;
  v205[0] = v11;
  v205[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for AutoEnablingScrollView(0, OpaqueTypeMetadata2, OpaqueTypeConformance2, v18);
  OUTLINED_FUNCTION_30_0();
  v161 = v19;
  OUTLINED_FUNCTION_3_2();
  v166 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_2();
  v154 = v22;
  v145 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v170 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  v176 = v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950, &qword_23BBE8600);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_21_3();
  v26 = sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  v171 = sub_23B9C7578(v28, v29, MEMORY[0x277CE0650]);
  v205[14] = v27;
  v205[15] = v171;
  OUTLINED_FUNCTION_10_5();
  v148 = v30;
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_4();
  type metadata accessor for StructuredScrollViewBottomInset(v31, v26, v32, v33);
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA358();
  sub_23BBDD648();
  OUTLINED_FUNCTION_5_9();
  v34 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  v37 = sub_23B9C7578(v35, v36, MEMORY[0x277CDE458]);
  v205[12] = v34;
  v205[13] = v37;
  v205[11] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  v146 = v26;
  v147 = swift_getWitnessTable();
  v153 = type metadata accessor for MagicPocketLayoutViewModifier(255, v26, v147, v38);
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v151 = v39;
  OUTLINED_FUNCTION_3_2();
  v157 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_2();
  v144 = v42;
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v152 = v43;
  OUTLINED_FUNCTION_3_2();
  v158 = v44;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_2();
  v149 = v46;
  v156 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v163 = v47;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_2();
  v150 = v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199958, &qword_23BBE8608);
  sub_23BBDA358();
  OUTLINED_FUNCTION_30_0();
  v160 = v50;
  OUTLINED_FUNCTION_3_2();
  v165 = v51;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_22_2();
  v155 = v53;
  v164 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v169 = v54;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22_2();
  v159 = v56;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199960, &qword_23BBE8610);
  v168 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v172 = v57;
  MEMORY[0x28223BE20](v58);
  v162 = &v142[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v60);
  v167 = &v142[-v61];
  *&v62 = v8;
  *(&v62 + 1) = *v186;
  *&v63 = v184;
  v64 = v181;
  *(&v63 + 1) = v180;
  v185 = v62;
  v186 = v63;
  v189[1] = v63;
  v189[2] = v62;
  v65 = v181[7];
  v184 = v181[6];
  v190 = v184;
  v191 = v65;
  v66 = v65;
  v178 = v65;
  v67 = v187;
  v192 = v187;
  v68 = v179;
  v69 = OpaqueTypeConformance2;
  LOBYTE(v34) = sub_23BACE838(v179, OpaqueTypeConformance2);
  v70 = OUTLINED_FUNCTION_13();
  v71 = v154;
  sub_23BA75FE8(v34, v70 & 1, sub_23B9C6A14, v68, v69, v154, v189);
  v143 = sub_23BBDB3B8();
  v72 = v188;
  v179 = *(v188 + 16);
  v180 = v188 + 16;
  v73 = v182;
  v179(v182, v67, v64);
  v74 = v72;
  v75 = (*(v72 + 80) + 64) & ~*(v72 + 80);
  v175 = *(v72 + 80);
  v76 = swift_allocObject();
  v77 = v185;
  *(v76 + 16) = v186;
  *(v76 + 32) = v77;
  *(v76 + 48) = v184;
  *(v76 + 56) = v66;
  OpaqueTypeConformance2 = *(v74 + 32);
  OpaqueTypeConformance2(v76 + v75, v73, v64);
  v188 = v74 + 32;
  OUTLINED_FUNCTION_14_5();
  v78 = v161;
  v79 = swift_getWitnessTable();
  sub_23B9A9990(v143, sub_23B9C6A30, v76, v78, v79, v80);

  (*(v166 + 8))(v71, v78);
  v81 = v182;
  v179(v182, v187, v64);
  v174 = v75;
  v82 = swift_allocObject();
  v83 = OUTLINED_FUNCTION_27_0(v82);
  v84 = OpaqueTypeConformance2;
  v85 = v178;
  *(v86 + 48) = v87;
  *(v86 + 56) = v85;
  v84(v86 + v75, v81, v64, v83);
  v88 = sub_23B9C6B8C();
  v205[9] = v79;
  v205[10] = v88;
  v89 = v145;
  v90 = swift_getWitnessTable();
  v91 = v144;
  v92 = v176;
  sub_23B9C3C70(sub_23B9C6ACC, v82, v89, v146, v90, v147);

  (*(v170 + 8))(v92, v89);
  v93 = sub_23BBDB3B8();
  v94 = v187;
  memcpy(v205, (v187 + *(v64 + 25)), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  v95 = sub_23BBDBF68();
  v96 = sub_23B9C3CF4(v95);
  OUTLINED_FUNCTION_0_10();
  v97 = swift_getWitnessTable();
  v203 = v90;
  v204 = v97;
  v98 = v151;
  v99 = swift_getWitnessTable();
  v100 = v149;
  sub_23BB2FA54(v93, v96, 0, v98, v99, v101);
  (*(v157 + 8))(v91, v98);
  v201 = v99;
  v202 = v171;
  v102 = v152;
  v103 = swift_getWitnessTable();
  v104 = v150;
  MEMORY[0x23EEB43C0](v103, v102, &type metadata for VerticalGeometryWriterModifier, v103);
  (*(v158 + 8))(v100, v102);
  v105 = v181;
  v106 = v182;
  v179(v182, v94, v181);
  v107 = v174;
  v108 = swift_allocObject();
  v109 = OUTLINED_FUNCTION_27_0(v108);
  v110 = v178;
  *(v111 + 48) = v112;
  *(v111 + 56) = v110;
  (OpaqueTypeConformance2)(v111 + v107, v106, v105, v109);
  v113 = sub_23B9C6C7C();
  v199 = v103;
  v200 = v113;
  v114 = v156;
  v115 = swift_getWitnessTable();
  sub_23B9C6CD0();
  sub_23B9C695C();
  v116 = v155;
  sub_23BBDB918();

  (*(v163 + 8))(v104, v114);
  OUTLINED_FUNCTION_7_11();
  v119 = sub_23B97B518(v117, &qword_27E199958, &qword_23BBE8608, v118);
  v197 = v115;
  v198 = v119;
  v120 = v160;
  v121 = swift_getWitnessTable();
  v122 = v159;
  v123 = sub_23B9C3E04(v120, v121);
  (*(v165 + 8))(v116, v120, v123);
  swift_getKeyPath();
  v124 = v181;
  v179(v106, v187, v181);
  v125 = v174;
  v126 = swift_allocObject();
  v127 = OUTLINED_FUNCTION_27_0(v126);
  v128 = v178;
  *(v129 + 48) = v130;
  *(v129 + 56) = v128;
  (OpaqueTypeConformance2)(v129 + v125, v106, v124, v127);
  v131 = sub_23B9C70EC();
  v195 = v121;
  v196 = v131;
  v132 = v164;
  v133 = swift_getWitnessTable();
  v134 = v162;
  sub_23BBDB9B8();

  (*(v169 + 8))(v122, v132);
  OUTLINED_FUNCTION_13_6();
  v137 = sub_23B97B518(v135, &qword_27E199960, &qword_23BBE8610, v136);
  v193 = v133;
  v194 = v137;
  v138 = v168;
  swift_getWitnessTable();
  v139 = v167;
  OUTLINED_FUNCTION_29_0();
  sub_23B9D2D88();
  v140 = *(v172 + 8);
  v140(v134, v138);
  OUTLINED_FUNCTION_29_0();
  sub_23B9D2D88();
  return (v140)(v139, v138);
}

uint64_t sub_23B9C06FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v68 = a5;
  v69 = a6;
  v60 = a3;
  v62 = a1;
  v66 = a8;
  v10 = sub_23BBDAD18();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918, &unk_23BBE85E0);
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  sub_23BBDA358();
  sub_23BBDB2B8();
  __dst[0] = sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928, &unk_23BBFBFC0);
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[1] = sub_23BBDA358();
  sub_23BBDA358();
  v12 = a4;
  v51 = a4;
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[2] = sub_23BBDA358();
  __dst[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930, &unk_23BBE85F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  sub_23BBDA358();
  sub_23BBDA358();
  __dst[4] = sub_23BBDA358();
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B97B518(&qword_27E199940, &qword_27E199918, &unk_23BBE85E0, MEMORY[0x277CDF500]);
  v13 = sub_23BBDA018();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v50 - v14;
  v15 = sub_23B97B518(&qword_27E199948, &qword_27E199918, &unk_23BBE85E0, MEMORY[0x277CDF510]);
  WitnessTable = swift_getWitnessTable();
  v73[9] = v15;
  v73[10] = WitnessTable;
  v55 = v13;
  v54 = swift_getWitnessTable();
  __dst[0] = v13;
  __dst[1] = v54;
  v57 = MEMORY[0x277CDE858];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v58 = OpaqueTypeMetadata2;
  v59 = v18;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v53 = &v50 - v21;
  v22 = v60;
  __dst[0] = a2;
  __dst[1] = v60;
  __dst[2] = v12;
  __dst[3] = v68;
  __dst[4] = v69;
  __dst[5] = v67;
  v23 = type metadata accessor for StructuredScrollView(0, __dst);
  v24 = *(v23 + 100);
  v25 = v62;
  memcpy(__dst, (v62 + v24), 0x48uLL);
  memcpy(v73, (v62 + v24), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  sub_23BBDBF68();
  v26 = sub_23B9C1270();
  v28 = v27;
  memcpy(v73, __dst, 0x48uLL);
  sub_23BBDBF68();
  v29 = *&v73[15];
  LODWORD(v12) = v74;
  memcpy(v73, __dst, 0x48uLL);
  v30 = sub_23BBDBF68();
  v31 = sub_23B9C12CC(v30);
  if (v12)
  {
    v29 = 0.0;
  }

  v32 = v25 + *(v23 + 96);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = sub_23BBDAB48();
  v72 = v28 & 1;
  v71 = v34;
  v73[0] = v26;
  LOBYTE(v73[1]) = v28 & 1;
  *&v73[2] = v29;
  v73[3] = 0;
  *&v73[4] = v31;
  v73[5] = 0;
  v73[6] = v35;
  v73[7] = v33;
  LOBYTE(v73[8]) = v34;
  v36 = v51;
  v38 = v68;
  v37 = v69;
  v39 = v67;
  v40 = sub_23B9C0ECC(v73, a2, v22, v51, v68, v69, v67);
  v70[2] = a2;
  v70[3] = v22;
  v70[4] = v36;
  v70[5] = v38;
  v70[6] = v37;
  v70[7] = v39;
  v70[8] = v25;
  v41 = v56;
  v40(sub_23B9C7278, v70);

  sub_23B9C7290();
  v42 = v63;
  sub_23BBDAFA8();
  v43 = v52;
  v44 = v54;
  v45 = v55;
  sub_23BBDB878();
  (*(v64 + 8))(v42, v65);
  (*(v61 + 8))(v41, v45);
  v70[9] = v45;
  v70[10] = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v53;
  v47 = v58;
  sub_23B9D2D88();
  v48 = *(v59 + 8);
  v48(v43, v47);
  sub_23B9D2D88();
  return (v48)(v46, v47);
}

uint64_t (*sub_23B9C0ECC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  memcpy(v14 + 8, a1, 0x41uLL);
  return sub_23B9C7608;
}

uint64_t sub_23B9C0F68(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  sub_23BBDA358();
  sub_23BBDB2B8();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928, &unk_23BBFBFC0);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930, &unk_23BBE85F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9C763C();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, &type metadata for StructuredScrollViewContentLayout);
}

uint64_t sub_23B9C1270()
{
  result = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v2 = 0.0;
    }

    *&result = *&result - v2 - sub_23B9C3CF4(result);
  }

  return result;
}

double sub_23B9C12CC(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {
    v2 = 38.0;
  }

  else
  {
    v2 = 16.0;
  }

  if (*(v1 + 56))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v1 + 48);
    if (sub_23BBDC2A8())
    {
      v4 = 14.0;
    }

    else
    {
      v4 = 24.0;
    }

    if (sub_23BBDC2A8())
    {
      v2 = v2 - v3;
    }

    else if (v2 + v3 < v4)
    {
      v2 = v4 - v3;
    }
  }

  v5 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v5 = 0.0;
  }

  return v3 + v2 + v5;
}

uint64_t sub_23B9C136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v193 = a4;
  v194 = a7;
  v196 = a6;
  v211 = a5;
  v186 = a3;
  v201 = a1;
  v182 = a8;
  v9 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  v177 = sub_23BBDA358();
  v181 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = v145 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  v179 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  v198 = sub_23BBDA358();
  v180 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v210 = v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v178 = v145 - v13;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199930, &unk_23BBE85F0);
  MEMORY[0x28223BE20](v200);
  v199 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v209 = (v145 - v16);
  sub_23BBDB2B8();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v170 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v171 = sub_23BBDC078();
  v174 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v168 = v145 - v17;
  v173 = sub_23BBDA358();
  v172 = sub_23BBDA358();
  v175 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v167 = v145 - v18;
  v207 = sub_23BBDA358();
  v197 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v192 = v145 - v21;
  v189 = v9;
  v203 = *(v9 - 8);
  MEMORY[0x28223BE20](v22);
  v188 = v145 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928, &unk_23BBFBFC0);
  v164 = sub_23BBDA358();
  v166 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = v145 - v24;
  v165 = sub_23BBDA358();
  v204 = sub_23BBDA358();
  v195 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v208 = v145 - v27;
  v28 = *(a2 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDB038();
  v148 = sub_23BBDA358();
  v152 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v33 = v145 - v32;
  v150 = sub_23BBDA358();
  v155 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = v145 - v34;
  v151 = sub_23BBDA358();
  v158 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v183 = v145 - v35;
  v156 = sub_23BBDA358();
  v160 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = v145 - v36;
  v161 = sub_23BBDA358();
  v159 = sub_23BBDA358();
  v162 = *(v159 - 1);
  MEMORY[0x28223BE20](v159);
  v154 = v145 - v37;
  v185 = sub_23BBDA358();
  v191 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v190 = v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v157 = v145 - v40;
  MEMORY[0x28223BE20](v41);
  v205 = v145 - v42;
  __dst[0] = a2;
  __dst[1] = v186;
  v43 = v211;
  __dst[2] = v193;
  __dst[3] = v211;
  __dst[4] = v196;
  __dst[5] = v194;
  v44 = type metadata accessor for StructuredScrollView(0, __dst);
  v187 = *(v44 + 84);
  v45 = v28;
  v46 = *(v28 + 16);
  v47 = v201;
  v46(v31, v201 + v187, a2);
  v48 = sub_23BBDB3A8();
  v49 = *(v44 + 100);
  v147 = v44;
  memcpy(__dst, (v47 + v49), 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  sub_23BBDBF68();
  if (v260)
  {
    v51 = 0;
  }

  else
  {
    v51 = v259;
  }

  v184 = a2;
  sub_23BB2FA54(v48, v51, 0, a2, v43, v50);
  (*(v45 + 8))(v31, a2);
  v146 = sub_23BBDB3A8();
  v52 = sub_23B9BF570(v44);
  v54 = v53;
  v55 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v256 = v43;
  v257 = v55;
  v145[1] = MEMORY[0x277CDFAD8];
  v56 = v148;
  v57 = swift_getWitnessTable();
  v58 = v149;
  sub_23BB2FA54(v146, v52, v54 & 1, v56, v57, v59);
  (*(v152 + 8))(v33, v56);
  v60 = sub_23BBDB388();
  v61 = v147;
  v62 = sub_23B9BF500();
  v64 = v63;
  v254 = v57;
  v255 = v55;
  v65 = v150;
  v66 = swift_getWitnessTable();
  sub_23BB2FA54(v60, v62, v64 & 1, v65, v66, v67);
  (*(v155 + 8))(v58, v65);
  v68 = sub_23B9BF350(v61);
  LOBYTE(v60) = v69;
  v252 = v66;
  v253 = v55;
  v70 = v151;
  v71 = swift_getWitnessTable();
  v72 = sub_23BBDC318();
  v73 = v153;
  v74 = v68;
  v75 = v183;
  sub_23B9CFA7C(0, 1, 0, 1, v74, v60 & 1, 0x7FF0000000000000, 0, v72, v76, v70, v71);
  (v158)[1](v75, v70);
  v77 = sub_23B9C72E4();
  v250 = v71;
  v251 = v77;
  v78 = v156;
  v79 = swift_getWitnessTable();
  v80 = v154;
  sub_23BAD38B8(0, v78, v79);
  (*(v160 + 8))(v73, v78);
  v81 = MEMORY[0x277CE04A0];
  v183 = sub_23B97B518(&qword_27E1999D8, &qword_27E199920, qword_23BBF9A40, MEMORY[0x277CE04A0]);
  v248 = v79;
  v249 = v183;
  v82 = swift_getWitnessTable();
  v155 = sub_23B97B518(&qword_27E198198, &qword_27E198180, &unk_23BBE4ED0, v81);
  v246 = v82;
  v247 = v155;
  v83 = v159;
  v84 = swift_getWitnessTable();
  v85 = v157;
  sub_23BBDBA68();
  (*(v162 + 1))(v80, v83);
  v156 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v244 = v84;
  v245 = v156;
  v86 = v185;
  v160 = swift_getWitnessTable();
  sub_23B9D2D88();
  v87 = *(v191 + 8);
  v161 = v191 + 8;
  v162 = v87;
  v87(v85, v86);
  v88 = v188;
  v89 = v184;
  v90 = v211;
  sub_23BBDBB48();
  v91 = sub_23B97AD88();
  v242 = v90;
  v243 = v91;
  v92 = v189;
  v93 = swift_getWitnessTable();
  v94 = v163;
  v95 = v93;
  v157 = v93;
  sub_23BB060E8();
  v96 = *(v203 + 8);
  v203 += 8;
  v159 = v96;
  (v96)(v88, v92);
  v158 = &unk_23BBFBEC0;
  v97 = sub_23B97B518(&qword_27E1999E0, &qword_27E199928, &unk_23BBFBFC0, &unk_23BBFBEC0);
  v240 = v95;
  v241 = v97;
  v98 = v164;
  v99 = swift_getWitnessTable();
  v100 = v202;
  sub_23BAD38B8(1, v98, v99);
  v166[1](v94, v98);
  v238 = v99;
  v101 = v183;
  v239 = v183;
  v236 = swift_getWitnessTable();
  v102 = v155;
  v237 = v155;
  v103 = v204;
  v164 = swift_getWitnessTable();
  sub_23B9D2D88();
  v104 = *(v195 + 8);
  v165 = v195 + 8;
  v166 = v104;
  (v104)(v100, v103);
  v212 = v89;
  v213 = v186;
  v214 = v193;
  v215 = v211;
  v216 = v196;
  v217 = v194;
  v218 = v201;
  sub_23B9BE15C(v170);
  v105 = v168;
  sub_23BBDC068();
  v106 = v171;
  v107 = swift_getWitnessTable();
  v108 = v167;
  sub_23BAD38B8(2, v106, v107);
  (*(v174 + 8))(v105, v106);
  v234 = v107;
  v235 = v101;
  v232 = swift_getWitnessTable();
  v109 = v102;
  v233 = v102;
  v110 = v172;
  v111 = swift_getWitnessTable();
  v112 = v206;
  sub_23BBDBA68();
  (*(v175 + 8))(v108, v110);
  v230 = v111;
  v231 = v156;
  v113 = v207;
  v193 = swift_getWitnessTable();
  v114 = v192;
  sub_23B9D2D88();
  v115 = *(v197 + 8);
  v194 = v197 + 8;
  v196 = v115;
  v115(v112, v113);
  KeyPath = swift_getKeyPath();
  v117 = v209;
  *v209 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199808, &qword_23BBE8390);
  swift_storeEnumTagMultiPayload();
  *(v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999E8, &unk_23BBE8690) + 36)) = 3;
  *(v117 + *(v200 + 36)) = 0xBFF0000000000000;
  v118 = v188;
  sub_23BBDBB48();
  v119 = v176;
  v120 = v189;
  v121 = v157;
  sub_23BB06090();
  (v159)(v118, v120);
  v122 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, v158);
  v228 = v121;
  v229 = v122;
  v123 = v177;
  v124 = swift_getWitnessTable();
  v125 = v210;
  sub_23BAD38B8(4, v123, v124);
  (*(v181 + 8))(v119, v123);
  v226 = v124;
  v227 = v183;
  v224 = swift_getWitnessTable();
  v225 = v109;
  v126 = v198;
  v203 = swift_getWitnessTable();
  v127 = v178;
  v128 = v125;
  sub_23B9D2D88();
  v129 = v180;
  v211 = *(v180 + 8);
  v211(v128, v126);
  v130 = v190;
  v131 = v185;
  (*(v191 + 16))(v190, v205, v185);
  __dst[0] = v130;
  v132 = v202;
  v133 = v204;
  (*(v195 + 16))(v202, v208, v204);
  __dst[1] = v132;
  v135 = v206;
  v134 = v207;
  (*(v197 + 16))(v206, v114, v207);
  __dst[2] = v135;
  v136 = v199;
  sub_23B9C7374(v209, v199, &qword_27E199930, &unk_23BBE85F0);
  __dst[3] = v136;
  v137 = v210;
  (*(v129 + 16))(v210, v127, v126);
  __dst[4] = v137;
  v258[0] = v131;
  v258[1] = v133;
  v258[2] = v134;
  v258[3] = v200;
  v259 = v126;
  v219 = v160;
  v220 = v164;
  v221 = v193;
  v222 = sub_23B9C73D8();
  v223 = v203;
  sub_23BB6739C(__dst, 5, v258);
  v138 = v126;
  v139 = v211;
  v211(v127, v138);
  sub_23B9846E8(v209, &qword_27E199930, &unk_23BBE85F0);
  v140 = v196;
  v196(v192, v134);
  v141 = v133;
  v142 = v166;
  (v166)(v208, v141);
  v143 = v162;
  v162(v205, v131);
  v139(v210, v198);
  sub_23B9846E8(v199, &qword_27E199930, &unk_23BBE85F0);
  v140(v206, v207);
  (v142)(v202, v204);
  return v143(v190, v131);
}

uint64_t sub_23B9C2928@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a5;
  v61 = a8;
  v50 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v48 - v15;
  v16 = sub_23BBDD648();
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  MEMORY[0x28223BE20](v16);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v48 - v20;
  sub_23BBDB2B8();
  v21 = sub_23BBDA358();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = v59;
  v70 = a6;
  v71 = a7;
  v59 = a7;
  v28 = type metadata accessor for StructuredScrollView(0, &v66);
  sub_23BBDBA68();
  v29 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v65[2] = a6;
  v65[3] = v29;
  WitnessTable = swift_getWitnessTable();
  v56 = v27;
  v51 = WitnessTable;
  sub_23B9D2D88();
  v55 = v22;
  v31 = *(v22 + 8);
  v32 = v24;
  v33 = v21;
  v53 = v22 + 8;
  v52 = v31;
  v31(v24, v21);
  if (sub_23B9BE608(v28))
  {
    v34 = v48;
    v35 = v59;
    sub_23B9D2D88();
    v36 = v49;
    sub_23B9D2D88();
    v37 = v50;
    (*(v50 + 8))(v34, a4);
    v38 = v54;
    (*(v37 + 32))(v54, v36, a4);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v35 = v59;
    v38 = v54;
  }

  __swift_storeEnumTagSinglePayload(v38, v39, 1, a4);
  v40 = v60;
  sub_23BB2F9F4(v38, a4);
  v41 = v35;
  v43 = v57;
  v42 = v58;
  v44 = *(v58 + 8);
  v44(v38, v57);
  v45 = v56;
  (*(v55 + 16))(v32, v56, v33);
  v66 = v32;
  (*(v42 + 16))(v38, v40, v43);
  v67 = v38;
  v65[0] = v33;
  v65[1] = v43;
  v62 = v41;
  v63 = v51;
  v64 = swift_getWitnessTable();
  sub_23BB6739C(&v66, 2, v65);
  v44(v40, v43);
  v46 = v52;
  v52(v45, v33);
  v44(v38, v43);
  return v46(v32, v33);
}

uint64_t sub_23B9C2E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_23BBDB3B8();
  sub_23BBDB3D8();
  v19 = a3;
  v20 = a4;
  sub_23BBDB3D8();
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v15 = (a2 + *(type metadata accessor for StructuredScrollView(0, &v19) + 104));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v19) = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23B9C2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  v62 = a2;
  v61 = a1;
  v65 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950, &qword_23BBE8600);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDB038();
  v12 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v84 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v56 = v12;
  v53 = swift_getWitnessTable();
  v14 = type metadata accessor for StructuredScrollViewBottomInset(0, v12, v53, v13);
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_23BBDB2B8();
  v17 = sub_23BBDA358();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v25 = sub_23BBDD648();
  v64 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v63 = &v52 - v29;
  v58 = a3;
  v77 = a3;
  v78 = a4;
  v59 = a4;
  v60 = a5;
  v79 = a5;
  v80 = v66;
  v81 = v67;
  v82 = v68;
  v30 = type metadata accessor for StructuredScrollView(0, &v77);
  v31 = v62;
  if (sub_23B9BE608(v30))
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v17);
    v32 = swift_getWitnessTable();
    v33 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v69 = v32;
    v70 = v33;
    swift_getWitnessTable();
  }

  else
  {
    v34 = v31 + *(v30 + 104);
    v35 = *v34;
    v36 = *(v34 + 8);
    LOBYTE(v77) = v35;
    v78 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
    v37 = sub_23BBDBF68();
    if ((v76 & 1) == 0)
    {
      v37 = sub_23B9BE160();
    }

    MEMORY[0x28223BE20](v37);
    v38 = v59;
    *(&v52 - 8) = v58;
    *(&v52 - 7) = v38;
    v39 = v66;
    *(&v52 - 6) = v60;
    *(&v52 - 5) = v39;
    v40 = v68;
    *(&v52 - 4) = v67;
    *(&v52 - 3) = v40;
    *(&v52 - 2) = v61;
    *(&v52 - 1) = v31;
    sub_23BB89BF8(v41 & 1, sub_23B9C71B0, v56, v16, v53);
    v42 = swift_getWitnessTable();
    sub_23BBDBA68();
    (*(v54 + 8))(v16, v14);
    v43 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v74 = v42;
    v75 = v43;
    swift_getWitnessTable();
    sub_23B9D2D88();
    v44 = v57;
    v45 = *(v57 + 8);
    v45(v21, v17);
    v46 = v55;
    sub_23B9D2D88();
    v45(v24, v17);
    (*(v44 + 32))(v27, v46, v17);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v17);
  }

  v47 = v63;
  sub_23BB2F9F4(v27, v17);
  v48 = *(v64 + 8);
  v48(v27, v25);
  v49 = swift_getWitnessTable();
  v50 = sub_23B9C7578(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v72 = v49;
  v73 = v50;
  v71 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v48)(v47, v25);
}

uint64_t sub_23B9C36AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a6;
  v37 = a4;
  v36 = a3;
  v42 = a2;
  v41 = a1;
  v46 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950, &qword_23BBE8600);
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_23BBDC078();
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_23BBDB038();
  v19 = sub_23BBDA358();
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v40 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v43 = &v35 - v22;
  sub_23BBDC2A8();
  v38 = &v35;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v23 = a7;
  v24 = a8;
  v25 = v42;
  v53 = v41;
  v54 = v42;
  sub_23B9BE15C(v15);
  sub_23BBDC068();
  v26 = sub_23BBDB3A8();
  v57[0] = v36;
  v57[1] = v37;
  v57[2] = a5;
  v57[3] = v35;
  v57[4] = v23;
  v57[5] = v24;
  v27 = *(v25 + *(type metadata accessor for StructuredScrollView(0, v57) + 108));
  v28 = swift_getWitnessTable();
  v29 = v40;
  sub_23BB2FA54(v26, v27, 0, v16, v28, v30);
  (*(v44 + 8))(v18, v16);
  v31 = sub_23B9C7578(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v55 = v28;
  v56 = v31;
  swift_getWitnessTable();
  v32 = v43;
  sub_23B9D2D88();
  v33 = *(v45 + 8);
  v33(v29, v19);
  sub_23B9D2D88();
  return (v33)(v32, v19);
}

double sub_23B9C3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  type metadata accessor for StructuredScrollView(0, &v28);
  sub_23B9D2D88();
  v27 = a1;
  v28 = &v27;
  (*(v11 + 16))(v13, v16, a5);
  v29 = v13;

  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199950, &qword_23BBE8600);
  v26[1] = a5;
  v25[1] = sub_23B9C71FC();
  v25[2] = a8;
  sub_23BB6739C(&v28, 2, v26);
  v23 = *(v11 + 8);
  v23(v16, a5);
  v23(v13, a5);

  return result;
}

double sub_23B9C3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for MagicPocketLayoutViewModifier(0, a4, a6, a4);

  MEMORY[0x23EEB43C0](v10, a3, v8, a5);

  return result;
}

double sub_23B9C3CF4(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {
    v2 = 38.0;
  }

  else
  {
    v2 = 16.0;
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    v3 = *(v1 + 48);
    if (sub_23BBDC2A8())
    {
      v4 = 14.0;
    }

    else
    {
      v4 = 24.0;
    }

    if (sub_23BBDC2A8())
    {
      return v2 - v3;
    }

    else if (v2 + v3 < v4)
    {
      return v4 - v3;
    }
  }

  return v2;
}

uint64_t sub_23B9C3D74(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  __dst[4] = a7;
  __dst[5] = a8;
  v9 = type metadata accessor for StructuredScrollView(0, __dst);
  memcpy(__dst, (a2 + *(v9 + 100)), sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199970, &qword_23BBE8618);
  return sub_23BBDBF78();
}

double sub_23B9C3E04(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1999B8, &unk_23BBE8650);
  sub_23BBDBF58();
  MEMORY[0x23EEB43C0](v5, a1, &type metadata for HorizontalSizeClassSetterViewModifier, a2);

  return result;
}

double sub_23B9C3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v9 = type metadata accessor for StructuredScrollView(0, v11);
  if (sub_23B9BE608(v9))
  {
    sub_23B97B104(a1 + 8);
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_23B9C3F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDC318();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AA8, &qword_23BBE8938);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AB0, &qword_23BBE8940);
  v10 = (a2 + *(result + 36));
  *v10 = sub_23B9C3FC0;
  v10[1] = 0;
  v10[2] = v5;
  v10[3] = v7;
  return result;
}

uint64_t sub_23B9C3FC0@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1)@<X8>)
{
  v4 = sub_23BBD9E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_23B9C8090;
  a2[1] = v9;
  return result;
}

void sub_23B9C40EC(uint64_t a1)
{
  sub_23BBD9E68();
  *a1 = v2;
  *(a1 + 8) = 0;
  sub_23BBD9E58();
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  sub_23BBD9E58();
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
}

void *sub_23B9C4138(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v8);
  if (*(a1 + 8) == 1)
  {
    v4 = v9;
    *a1 = v8;
    *(a1 + 8) = v4;
  }

  if (*(a1 + 40) == 1)
  {
    v5 = v13;
    *(a1 + 32) = v12;
    *(a1 + 40) = v5;
  }

  if (*(a1 + 56) == 1)
  {
    v6 = v15;
    *(a1 + 48) = v14;
    *(a1 + 56) = v6;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = v11;
    *(a1 + 16) = v10;
    *(a1 + 24) = v7;
  }

  return result;
}

double sub_23B9C41E0@<D0>(_OWORD *a1@<X8>)
{
  v1 = unk_27E199830;
  *a1 = xmmword_27E199820;
  a1[1] = v1;
  a1[2] = xmmword_27E199840;
  result = *(&xmmword_27E199840 + 9);
  *(a1 + 41) = *(&xmmword_27E199840 + 9);
  return result;
}

uint64_t sub_23B9C4210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23B9C42BC()
{
  if (*(v0 + 8) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v1 = *v0;
    sub_23BBDDBD8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x23EEB63C0](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v3 = v0[2];
    sub_23BBDDBD8();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x23EEB63C0](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v5 = v0[4];
    sub_23BBDDBD8();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x23EEB63C0](v6);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_23BBDDBD8();
  }

  v8 = v0[6];
  sub_23BBDDBD8();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x23EEB63C0](v9);
}

uint64_t sub_23B9C43A8()
{
  sub_23BBDDBB8();
  sub_23B9C42BC();
  return sub_23BBDDBF8();
}

uint64_t sub_23B9C43F0(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23B9C42BC();
  return sub_23BBDDBF8();
}

uint64_t sub_23B9C4430@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AB8, &qword_23BBE8948);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AC0, &qword_23BBE8950) + 36));
  *v10 = sub_23B9C4588;
  v10[1] = 0;
  v10[2] = sub_23B9C8138;
  v10[3] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AC8, &qword_23BBE8980);
  sub_23BBDBF68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199AD0, &qword_23BBE8988);
  v13 = a4 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  return result;
}

void sub_23B9C4588(char *a1@<X8>)
{
  sub_23BBD9E68();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v11 = sub_23BBAF41C(v3, KeyPath, &unk_284E56E40, v5, v6, v7, v8, v9, v10);

  if (v11 == 8)
  {
    v12 = 7;
  }

  else
  {
    v12 = v11;
  }

  *a1 = v12;
}

uint64_t sub_23B9C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v30 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier(255, a4, a5, a4);
  swift_getWitnessTable();
  sub_23BBDAE98();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0(255, a4, a5, v8);
  v25 = sub_23BBDA358();
  v22[1] = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v26 = a5;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDAAC8();
  sub_23BBDA358();
  sub_23BBDACE8();
  v23 = sub_23BBDBE28();
  v24 = sub_23B9C7F48();
  v43[11] = WitnessTable;
  v43[12] = swift_getWitnessTable();
  v10 = v25;
  v22[0] = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43[9] = WitnessTable;
  v43[10] = swift_getWitnessTable();
  v43[7] = OpaqueTypeConformance2;
  v43[8] = swift_getWitnessTable();
  v43[6] = swift_getWitnessTable();
  v12 = v23;
  v43[0] = &type metadata for StoreKitViewsFeature;
  v43[1] = v25;
  v43[2] = v23;
  v43[3] = v24;
  v43[4] = v22[0];
  v43[5] = swift_getWitnessTable();
  v13 = type metadata accessor for FeatureView(0, v43);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v22 - v18;
  v38 = a4;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v32 = a4;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  sub_23BBC691C(0, sub_23B9C7F9C, v37, sub_23B9C7FB4, v31, v10, v12);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_23B9D2D88();
  return (v20)(v19, v13);
}

uint64_t sub_23B9C4B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a3;
  v25 = a1;
  v26 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier(255, a4, a5, a4);
  swift_getWitnessTable();
  v9 = sub_23BBDAE98();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0(255, a4, a5, v10);
  v11 = sub_23BBDA358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_23BBDAB48();
  sub_23BBC5870(1, v19, 0, 0, a2, v24, v9, a4, WitnessTable, a5);
  v20 = swift_getWitnessTable();
  v27 = WitnessTable;
  v28 = v20;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_23B9D2D88();
  return (v21)(v17, v11);
}

uint64_t sub_23B9C4D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v29 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier(255, a4, a5, a4);
  swift_getWitnessTable();
  v8 = sub_23BBDAE98();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v8;
  v41 = OpaqueTypeMetadata2;
  v42 = WitnessTable;
  v43 = OpaqueTypeConformance2;
  v23[0] = MEMORY[0x277CDE708];
  swift_getOpaqueTypeMetadata2();
  sub_23BBDAAC8();
  v23[1] = sub_23BBDA358();
  sub_23BBDACE8();
  v10 = sub_23BBDBE28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  v30 = a4;
  v31 = a5;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v40 = v8;
  v41 = OpaqueTypeMetadata2;
  v42 = WitnessTable;
  v43 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  v38 = WitnessTable;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v36 = v17;
  v37 = v19;
  v20 = swift_getWitnessTable();
  sub_23BBDBE18();
  v35 = v20;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_23B9D2D88();
  return (v21)(v16, v10);
}

uint64_t sub_23B9C50D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v45 = a2;
  v47 = a1;
  v51 = a6;
  type metadata accessor for MagicPocketLayoutViewModifier(255, a4, a5, a4);
  swift_getWitnessTable();
  v8 = sub_23BBDAE98();
  v50 = sub_23BBDAAC8();
  v9 = sub_23BBDA358();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v69 = a4;
  v70 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v69 = a4;
  v70 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = OpaqueTypeMetadata2;
  v56 = v8;
  v69 = v8;
  v70 = OpaqueTypeMetadata2;
  v52 = WitnessTable;
  v71 = WitnessTable;
  v72 = OpaqueTypeConformance2;
  v54 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v43 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v49 = sub_23BBDACE8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v43 - v24;
  v25 = sub_23BBDC2A8();
  v57 = a4;
  v58 = a5;
  v59 = v45;
  v60 = v46;
  if (v25)
  {
    v26 = swift_checkMetadataState();
    sub_23BBDAB48();
    v27 = v54;
    v28 = v52;
    v29 = v56;
    sub_23BBDB798();
    v69 = v29;
    v70 = v26;
    v71 = v28;
    v72 = v27;
    swift_getOpaqueTypeConformance2();
    sub_23B9D2D88();
    v30 = *(v43 + 8);
    v30(v20, v18);
    sub_23B9D2D88();
    v31 = swift_getWitnessTable();
    v61 = v28;
    v62 = v31;
    swift_getWitnessTable();
    sub_23BA82D64();
    v30(v20, v18);
    v30(v23, v18);
  }

  else
  {
    sub_23BBDAB48();
    v32 = v52;
    v33 = v56;
    sub_23BBDB808();
    v34 = swift_getWitnessTable();
    v67 = v32;
    v68 = v34;
    swift_getWitnessTable();
    sub_23B9D2D88();
    v35 = *(v44 + 8);
    v35(v11, v9);
    sub_23B9D2D88();
    v69 = v33;
    v70 = v55;
    v71 = v32;
    v72 = v54;
    swift_getOpaqueTypeConformance2();
    sub_23BA82E14();
    v35(v11, v9);
    v35(v14, v9);
  }

  v69 = v56;
  v70 = v55;
  v36 = v52;
  v71 = v52;
  v72 = v54;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v65 = v36;
  v66 = v38;
  v39 = swift_getWitnessTable();
  v63 = v37;
  v64 = v39;
  v40 = v49;
  swift_getWitnessTable();
  v41 = v53;
  sub_23B9D2D88();
  return (*(v48 + 8))(v41, v40);
}

uint64_t sub_23B9C5814@<X0>(void (*a1)(void, double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v26 = a4;
  v25 = sub_23BBDAB38();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  v22[1] = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  v24(0, v17);
  sub_23BBDAB28();
  sub_23BBDB938();
  (*(v23 + 8))(v7, v25);
  (*(v8 + 8))(v11, a2);
  v27 = a2;
  v28 = a3;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v20 = *(v13 + 8);
  v20(v15, OpaqueTypeMetadata2);
  sub_23B9D2D88();
  return (v20)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_23B9C5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12(0, v9);
  sub_23B9D2D88();
  v13 = *(v5 + 8);
  v13(v7, a3);
  sub_23B9D2D88();
  return (v13)(v11, a3);
}

uint64_t sub_23B9C5C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B9C7374(a1, &v5 - v3, qword_27E199868, &qword_23BBE84A0);
  return sub_23BBDA738();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B9C5D4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B9C5D6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

void sub_23B9C5DB8(void *a1)
{
  sub_23B9C684C(319);
  if (v1 <= 0x3F)
  {
    sub_23B9C68B0(319);
    if (v2 <= 0x3F)
    {
      sub_23B9C6908(319, &qword_27E1998F8, &type metadata for SubscriptionStoreControlPlacementKey, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23B9C6908(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                sub_23B9C6908(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23B9C6908(319, &qword_27E199900, &type metadata for StructuredScrollViewGeometry, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_23B9C6908(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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
}

uint64_t sub_23B9C5FC0(_DWORD *a1, unsigned int a2, void *a3, double a4)
{
  v7 = *(sub_23BBDAF68() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(sub_23BBDA308() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = a3[2];
  v13 = a3[3];
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  v16 = *(v13 - 8);
  v17 = *(v16 + 84);
  if (v15 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = a3[4];
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  if (v18 <= v21)
  {
    v22 = *(v20 + 84);
  }

  else
  {
    v22 = v18;
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = v22;
  }

  if (v8)
  {
    v24 = v9;
  }

  else
  {
    v24 = v9 + 1;
  }

  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v7 + 80);
  v27 = *(v10 + 80);
  v28 = *(v14 + 80);
  v29 = *(v16 + 80);
  v30 = *(v20 + 80);
  v31 = *(v20 + 64);
  if (!a2)
  {
    return 0;
  }

  v32 = v25 + 1;
  v33 = v26 & 0xF8 | 7;
  v34 = v32 + v33;
  v35 = v27 & 0xF8 | 7;
  v36 = v11 + 56;
  v37 = v28 + 9;
  v38 = *(*(v12 - 8) + 64) + v29;
  v39 = *(*(v13 - 8) + 64) + v30;
  v40 = v31 + 23;
  if (v23 < a2)
  {
    v41 = ((((((v40 + ((v39 + ((v38 + ((v37 + ((v36 + ((v32 + v35 + (v34 & ~v33)) & ~v35)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v29)) & ~v30)) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v41 & 0xFFFFFFF8) != 0)
    {
      v42 = 2;
    }

    else
    {
      v42 = a2 - v23 + 1;
    }

    if (v42 >= 0x10000)
    {
      v43 = 4;
    }

    else
    {
      v43 = 2;
    }

    if (v42 < 0x100)
    {
      v43 = 1;
    }

    if (v42 >= 2)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    switch(v44)
    {
      case 1:
        v45 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          break;
        }

        goto LABEL_37;
      case 2:
        v45 = *(a1 + v41);
        if (*(a1 + v41))
        {
          goto LABEL_37;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9C63B0);
      case 4:
        v45 = *(a1 + v41);
        if (!v45)
        {
          break;
        }

LABEL_37:
        v47 = v45 - 1;
        if ((v41 & 0xFFFFFFF8) != 0)
        {
          v47 = 0;
          v48 = *a1;
        }

        else
        {
          v48 = 0;
        }

        v51 = v23 + (v48 | v47);
        return (v51 + 1);
      default:
        break;
    }
  }

  v49 = (v37 + ((v36 + ((((a1 + v34) & ~v33) + v32 + v35) & ~v35)) & 0xFFFFFFFFFFFFFFF8)) & ~v28;
  if (v15 == v23)
  {
    goto LABEL_45;
  }

  v49 = (v38 + v49) & ~v29;
  if (v17 == v23)
  {
    v15 = v17;
    v12 = v13;
LABEL_45:

    return __swift_getEnumTagSinglePayload(v49, v15, v12);
  }

  v49 = (v39 + v49) & ~v30;
  if (v21 == v23)
  {
    v15 = v21;
    v12 = v19;
    goto LABEL_45;
  }

  v50 = *(((v40 + v49) & 0xFFFFFFFFFFFFFFF8) + 64);
  if (v50 >= 0xFFFFFFFF)
  {
    LODWORD(v50) = -1;
  }

  v51 = v50 - 1;
  if (v51 < 0)
  {
    v51 = -1;
  }

  return (v51 + 1);
}

double sub_23B9C63C4(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4, double a5)
{
  v9 = *(sub_23BBDAF68() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_23BBDA308() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v12 + 64);
  }

  v15 = a4[2];
  v16 = a4[3];
  v17 = *(v15 - 8);
  v18 = *(v17 + 84);
  v19 = *(v16 - 8);
  v20 = *(v19 + 84);
  if (v18 <= v20)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = *(v17 + 84);
  }

  v22 = a4[4];
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  if (v21 <= v24)
  {
    v25 = *(v23 + 84);
  }

  else
  {
    v25 = v21;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  if (v10)
  {
    v27 = v11;
  }

  else
  {
    v27 = v11 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + 1;
  v29 = *(v9 + 80) & 0xF8 | 7;
  v30 = v27 + 1 + v29;
  v31 = *(v12 + 80) & 0xF8 | 7;
  v32 = *(v17 + 80);
  v33 = v32 + 9;
  v34 = *(v19 + 80);
  v35 = *(*(a4[2] - 8) + 64) + v34;
  v36 = *(v23 + 80);
  v37 = *(*(v16 - 8) + 64) + v36;
  v38 = *(v23 + 64) + 23;
  v39 = ((((((v38 + ((v37 + ((v35 + ((v32 + 9 + ((v14 + 56 + ((v27 + 1 + v31 + (v30 & ~v29)) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & ~v32)) & ~v34)) & ~v36)) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 >= a3)
  {
    v42 = 0;
  }

  else
  {
    if (((((((v38 + ((v37 + ((v35 + ((v32 + 9 + ((v14 + 56 + ((v27 + 1 + v31 + (v30 & ~v29)) & ~v31)) & 0xFFFFFFF8)) & ~v32)) & ~v34)) & ~v36)) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v40 = a3 - v26 + 1;
    }

    else
    {
      v40 = 2;
    }

    if (v40 >= 0x10000)
    {
      v41 = 4;
    }

    else
    {
      v41 = 2;
    }

    if (v40 < 0x100)
    {
      v41 = 1;
    }

    if (v40 >= 2)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }
  }

  if (a2 > v26)
  {
    if (v39)
    {
      v43 = 1;
    }

    else
    {
      v43 = a2 - v26;
    }

    if (v39)
    {
      v44 = ~v26 + a2;
      bzero(a1, v39);
      *a1 = v44;
    }

    switch(v42)
    {
      case 1:
        *(a1 + v39) = v43;
        return result;
      case 2:
        *(a1 + v39) = v43;
        return result;
      case 3:
        goto LABEL_61;
      case 4:
        *(a1 + v39) = v43;
        return result;
      default:
        return result;
    }
  }

  v45 = ~v29;
  v46 = ~v32;
  v47 = ~v34;
  switch(v42)
  {
    case 1:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    case 2:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    case 3:
LABEL_61:
      __break(1u);
      JUMPOUT(0x23B9C6824);
    case 4:
      *(a1 + v39) = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return result;
      }

LABEL_46:
      v48 = (v33 + ((v14 + 56 + ((((a1 + v30) & v45) + v28 + v31) & ~v31)) & 0xFFFFFFFFFFFFFFF8)) & v46;
      if (v18 == v26)
      {
        v49 = a2;
      }

      else
      {
        v48 = (v35 + v48) & v47;
        if (v20 == v26)
        {
          v49 = a2;
          v18 = v20;
          v15 = v16;
        }

        else
        {
          v48 = (v37 + v48) & ~v36;
          if (v24 != v26)
          {
            v50 = (v38 + v48) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              result = 0.0;
              *(v50 + 40) = 0u;
              *(v50 + 24) = 0u;
              *(v50 + 8) = 0u;
              *(v50 + 56) = 0u;
              *v50 = (a2 - 0x7FFFFFFF);
            }

            else
            {
              *(v50 + 64) = a2;
            }

            return result;
          }

          v49 = a2;
          v18 = v24;
          v15 = v22;
        }
      }

      __swift_storeEnumTagSinglePayload(v48, v49, v18, v15);
      return result;
  }
}

void sub_23B9C684C(uint64_t a1)
{
  if (!qword_27E1998F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E199868, &qword_23BBE84A0);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1998F0);
    }
  }
}

void sub_23B9C68B0(uint64_t a1)
{
  if (!qword_27E198D30)
  {
    sub_23BBDA308();
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E198D30);
    }
  }
}

void sub_23B9C6908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23B9C695C()
{
  result = qword_27E199910;
  if (!qword_27E199910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199910);
  }

  return result;
}

uint64_t sub_23B9C6A30(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v16[0] = v1[2];
  v16[1] = v2;
  v16[2] = v3;
  v16[3] = v4;
  v16[4] = v5;
  v16[5] = v6;
  OUTLINED_FUNCTION_25_1(a1, v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C2E48(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_23B9C6ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  OUTLINED_FUNCTION_25_1(a1, v13);
  OUTLINED_FUNCTION_18_6();

  return sub_23B9C2F24(a1, v11, v5, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_23B9C6B8C()
{
  result = qword_27E199968;
  if (!qword_27E199968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199968);
  }

  return result;
}

uint64_t sub_23B9C6BE0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v16[0] = v1[2];
  v16[1] = v2;
  v16[2] = v3;
  v16[3] = v4;
  v16[4] = v5;
  v16[5] = v6;
  OUTLINED_FUNCTION_25_1(a1, v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C3D74(v7, v8, v9, v10, v11, v12, v13, v14);
}

unint64_t sub_23B9C6C7C()
{
  result = qword_27E199978;
  if (!qword_27E199978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199978);
  }

  return result;
}

unint64_t sub_23B9C6CD0()
{
  result = qword_27E199980;
  if (!qword_27E199980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199980);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v17[0] = v2;
  v17[1] = v1;
  v3 = *(v0 + 48);
  v16 = *(v0 + 32);
  v18 = v16;
  v19 = v3;
  v4 = type metadata accessor for StructuredScrollView(0, v17);
  v5 = (*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80);
  v6 = v0 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199860, &qword_23BBE83E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23BBDAF68();
    if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v7))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v8 + 8))(v0 + v5, v7);
    }
  }

  else
  {
  }

  v9 = v4[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23BBDAF68();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v4[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA308();
    OUTLINED_FUNCTION_12_1();
    (*(v13 + 8))(v6 + v12);
  }

  else
  {
  }

  v14 = v6 + v4[19];
  if (*(v14 + 40))
  {
    if (*(v14 + 24) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
  }

  sub_23B97B5C0(*(v6 + v4[20]), *(v6 + v4[20] + 8));
  (*(*(v2 - 8) + 8))(v6 + v4[21], v2);
  (*(*(v1 - 8) + 8))(v6 + v4[22], v1);
  (*(*(v16 - 8) + 8))(v6 + v4[23]);

  return swift_deallocObject();
}

double sub_23B9C7050(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v16[0] = v1[2];
  v16[1] = v2;
  v16[2] = v3;
  v16[3] = v4;
  v16[4] = v5;
  v16[5] = v6;
  OUTLINED_FUNCTION_25_1(a1, v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_2_8();

  return sub_23B9C3EA4(v7, v8, v9, v10, v11, v12, v13, v14);
}

unint64_t sub_23B9C70EC()
{
  result = qword_27E199990;
  if (!qword_27E199990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199990);
  }

  return result;
}

uint64_t sub_23B9C7140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9C71FC()
{
  result = qword_27E1999C0;
  if (!qword_27E1999C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950, &qword_23BBE8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999C0);
  }

  return result;
}

unint64_t sub_23B9C7290()
{
  result = qword_27E1999C8;
  if (!qword_27E1999C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999C8);
  }

  return result;
}

unint64_t sub_23B9C72E4()
{
  result = qword_27E1999D0;
  if (!qword_27E1999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999D0);
  }

  return result;
}

uint64_t sub_23B9C7374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_23B9C73D8()
{
  result = qword_27E1999F8;
  if (!qword_27E1999F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930, &unk_23BBE85F0);
    sub_23B9C7490();
    sub_23B97B518(&qword_27E198198, &qword_27E198180, &unk_23BBE4ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999F8);
  }

  return result;
}

unint64_t sub_23B9C7490()
{
  result = qword_27E199A00;
  if (!qword_27E199A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1999E8, &unk_23BBE8690);
    sub_23B9C7578(&qword_27E199A08, type metadata accessor for StructuredScrollViewContentBackground, &unk_23BBF6CC8);
    sub_23B97B518(&qword_27E1999D8, &qword_27E199920, qword_23BBF9A40, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199A00);
  }

  return result;
}

uint64_t sub_23B9C7578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B9C763C()
{
  result = qword_27E199A10[0];
  if (!qword_27E199A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199A10);
  }

  return result;
}

uint64_t sub_23B9C76A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_23B9C76F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9C7774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B9C77B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B9C77F0(uint64_t result, int a2, int a3)
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

uint64_t sub_23B9C782C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199918, &unk_23BBE85E0);
  sub_23BBDB038();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920, qword_23BBF9A40);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_28_0();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_29_0();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199928, &unk_23BBFBFC0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_28_0();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  v1 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199930, &unk_23BBE85F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDA358();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v2, &qword_27E199918, &unk_23BBE85E0, v3);
  OUTLINED_FUNCTION_21_3();
  sub_23BBDA018();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v4, &qword_27E199918, &unk_23BBE85E0, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v7 = OUTLINED_FUNCTION_4();
  type metadata accessor for AutoEnablingScrollView(v7, OpaqueTypeMetadata2, v8, v9);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199950, &qword_23BBE8600);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24_3();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  v10 = sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  sub_23B9C7578(v11, v12, MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_4();
  type metadata accessor for StructuredScrollViewBottomInset(v13, v10, v14, v15);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_29_0();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDD648();
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  sub_23B9C7578(v16, v17, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  v18 = OUTLINED_FUNCTION_4();
  type metadata accessor for MagicPocketLayoutViewModifier(v18, v1, v19, v20);
  OUTLINED_FUNCTION_28_0();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199958, &qword_23BBE8608);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199960, &qword_23BBE8610);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_14_5();
  swift_getWitnessTable();
  sub_23B9C6B8C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9C6C7C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  sub_23B97B518(v21, &qword_27E199958, &qword_23BBE8608, v22);
  swift_getWitnessTable();
  sub_23B9C70EC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  sub_23B97B518(v23, &qword_27E199960, &qword_23BBE8610, v24);
  return swift_getWitnessTable();
}

unint64_t sub_23B9C7E78()
{
  result = qword_27E199A98;
  if (!qword_27E199A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199A98);
  }

  return result;
}

unint64_t sub_23B9C7F48()
{
  result = qword_27E199AA0;
  if (!qword_27E199AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AA0);
  }

  return result;
}

uint64_t sub_23B9C8014()
{
  sub_23BBD9E98();
  OUTLINED_FUNCTION_12_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_23B9C8090(uint64_t a1)
{
  sub_23BBD9E98();

  sub_23B9C40EC(a1);
}

uint64_t sub_23B9C8100()
{

  return swift_deallocObject();
}

uint64_t sub_23B9C8144@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  result = sub_23BB51630(a2);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonUIHorizontalSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HorizontalSizeClassSetterViewModifier.GeometryResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x23B9C82F0);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23B9C8328(ValueMetadata **a1)
{
  v1 = OUTLINED_FUNCTION_26_0();
  type metadata accessor for MagicPocketLayoutViewModifier(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDAE98();
  v5 = OUTLINED_FUNCTION_26_0();
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_4();
  v15 = sub_23BBDA358();
  swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_23BBDAAC8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDACE8();
  v13 = sub_23BBDBE28();
  v14 = sub_23B9C7F48();
  v16[11] = WitnessTable;
  v16[12] = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  v12 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16[9] = WitnessTable;
  v16[10] = swift_getWitnessTable();
  v16[7] = OpaqueTypeConformance2;
  v16[8] = swift_getWitnessTable();
  v16[6] = swift_getWitnessTable();
  v16[0] = &type metadata for StoreKitViewsFeature;
  v16[1] = v15;
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = v12;
  v16[5] = swift_getWitnessTable();
  type metadata accessor for FeatureView(255, v16);
  return swift_getWitnessTable();
}

unint64_t sub_23B9C85B4()
{
  result = qword_27E199AD8;
  if (!qword_27E199AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AB0, &qword_23BBE8940);
    sub_23B97B518(&qword_27E199AE0, &qword_27E199AA8, &qword_23BBE8938, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199AE8, &qword_27E199AF0, &qword_23BBE89E0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AD8);
  }

  return result;
}

unint64_t sub_23B9C869C()
{
  result = qword_27E199AF8;
  if (!qword_27E199AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AD0, &qword_23BBE8988);
    sub_23B9C8754();
    sub_23B97B518(&qword_27E199B20, &qword_27E199B28, qword_23BBE89F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199AF8);
  }

  return result;
}

unint64_t sub_23B9C8754()
{
  result = qword_27E199B00;
  if (!qword_27E199B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199AC0, &qword_23BBE8950);
    sub_23B97B518(&qword_27E199B08, &qword_27E199AB8, &qword_23BBE8948, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199B10, &qword_27E199B18, &qword_23BBE89E8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B00);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  v3 = *(v1 + 336);
  result = *(v1 + 352);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23B9C8A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B38, &qword_23BBE8B58);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_23B9C9074;
  *(v10 + 24) = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B40, &qword_23BBE8B60);
  (*(*(v11 - 8) + 16))(a4, a1, v11);
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B48, &qword_23BBE8B68) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
}

uint64_t sub_23B9C8B44()
{
  sub_23B9C8BC4();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9C8BC4()
{
  result = qword_27E199B30;
  if (!qword_27E199B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B30);
  }

  return result;
}

uint64_t sub_23B9C8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_23BBDCC88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 16);
  v28 = a3;

  v17(a1, a2, &v28);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B9C8F9C(v12);
    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v13);
  }

  else
  {
    v19 = (*(v14 + 32))(v16, v12, v13);
    MEMORY[0x28223BE20](v19);
    *(&v27 - 2) = v16;
    if (sub_23BB78900(sub_23B9C9004, (&v27 - 4), a3))
    {
      (*(v14 + 16))(a5, v16, v13);
      v20 = a5;
      v21 = 0;
    }

    else
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v22, qword_27E1BFC88);
      v23 = sub_23BBDD598();
      v24 = sub_23BBD9988();
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v25 = 136446466;
        *(v25 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v28);
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_23BA5AB90(0xD000000000000059, 0x800000023BBE0710, &v28);
        _os_log_impl(&dword_23B970000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v26, -1, -1);
        MEMORY[0x23EEB6DC0](v25, -1, -1);
      }

      v20 = a5;
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v20, v21, 1, v13);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_23B9C8F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9C903C()
{

  return swift_deallocObject();
}

unint64_t sub_23B9C90B4()
{
  result = qword_27E199B50;
  if (!qword_27E199B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199B48, &qword_23BBE8B68);
    sub_23B97B518(&qword_27E199B58, &qword_27E199B40, &qword_23BBE8B60, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E199B60, &qword_27E199B68, &qword_23BBE8BA8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B50);
  }

  return result;
}

double AutomaticSubscriptionStoreControlStyle.Placement.init(rawValue:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C9234(a1, v7);
  if (v8 >= 6)
  {
    v5 = a1[1];
    v9 = *a1;
    v10 = v5;
    v11 = *(a1 + 4);
    sub_23B9C9290(v7);
    result = *&v9;
    v6 = v10;
    *a2 = v9;
    *(a2 + 16) = v6;
    *(a2 + 32) = v11;
  }

  else
  {
    sub_23B97B104(a1);
    sub_23B9C9290(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 6;
    *(a2 + 24) = xmmword_23BBE8BF0;
  }

  return result;
}

unint64_t static AutomaticSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E5A000;
  result = sub_23B9C9318();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23B9C9318()
{
  result = qword_27E199B70;
  if (!qword_27E199B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199B70);
  }

  return result;
}

double sub_23B9C936C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_27E1977E8 != -1)
    {
      swift_once();
    }

    if (byte_27E1A04D1 != 1)
    {
      if (byte_27E1A04D1 != 3 || (storekit_dyld_fall_2024_os_versions(), !dyld_program_minos_at_least()))
      {
        *(a2 + 32) = 0;
        *&v3 = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return *&v3;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = xmmword_23BBE4070;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = xmmword_23BBE7BC0;
  }

  *(a2 + 24) = v3;
  return *&v3;
}

uint64_t AutomaticSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B78, &qword_23BBE8C00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B80, &qword_23BBE8C08);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B88, &qword_23BBE8C10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B90, &qword_23BBE8C18);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199B98, &qword_23BBE8C20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199BA0, &qword_23BBE8C28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v23 = *(v22 + 16);

  if (v23 == 1 && (*a1 & 1) == 0)
  {
    sub_23B9C990C(a1, &v21[*(v40 + 36)]);
    sub_23BBDAFF8();
    sub_23B99FCE0(v21, v18, &qword_27E199BA0, &qword_23BBE8C28);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_8();
    sub_23B9C9970(v30, v31, v32);
    sub_23B9C99C4();
    sub_23BBDACD8();
  }

  else
  {
    if (qword_27E1977E0 != -1)
    {
      swift_once();
    }

    if (byte_27E1A04D0 && (byte_27E1A04D0 != 3 || (storekit_dyld_fall_2025_os_versions(), dyld_program_sdk_at_least())))
    {
      sub_23B9C990C(a1, &v12[*(v9 + 36)]);
      sub_23BBDAFF8();
      sub_23B99FCE0(v12, v8, &qword_27E199B88, &qword_23BBE8C10);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_8();
      sub_23B9C9970(v24, v25, v26);
      sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78, &qword_23BBE8C00);
      OUTLINED_FUNCTION_3_11();
      sub_23BBDACD8();
      OUTLINED_FUNCTION_4_8();
    }

    else
    {
      sub_23B9C990C(a1, &v5[*(v38 + 36)]);
      sub_23BBDAFF8();
      sub_23B99FCE0(v5, v8, &qword_27E199B78, &qword_23BBE8C00);
      swift_storeEnumTagMultiPayload();
      sub_23B9C9970(&qword_27E199BA8, &qword_27E199B88, &qword_23BBE8C10);
      sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78, &qword_23BBE8C00);
      OUTLINED_FUNCTION_3_11();
      sub_23BBDACD8();
      v27 = v5;
      v28 = &qword_27E199B78;
      v29 = &qword_23BBE8C00;
    }

    sub_23B979910(v27, v28, v29);
    sub_23B99FCE0(v15, v18, &qword_27E199B90, &qword_23BBE8C18);
    swift_storeEnumTagMultiPayload();
    sub_23B9C9970(&qword_27E199BB8, &qword_27E199BA0, &qword_23BBE8C28);
    sub_23B9C99C4();
    sub_23BBDACD8();
  }

  OUTLINED_FUNCTION_4_8();
  return sub_23B979910(v33, v34, v35);
}

uint64_t sub_23B9C990C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9C9970(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23B9C99C4()
{
  result = qword_27E199BC0;
  if (!qword_27E199BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199B90, &qword_23BBE8C18);
    sub_23B9C9970(&qword_27E199BA8, &qword_27E199B88, &qword_23BBE8C10);
    sub_23B9C9970(&qword_27E199BB0, &qword_27E199B78, &qword_23BBE8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BC0);
  }

  return result;
}

unint64_t sub_23B9C9A80(uint64_t a1)
{
  result = sub_23B9C9AA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9C9AA8()
{
  result = qword_27E199BC8;
  if (!qword_27E199BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BC8);
  }

  return result;
}

unint64_t sub_23B9C9B1C()
{
  result = qword_27E199BD0;
  if (!qword_27E199BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23B9C9C0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B9C9C50()
{
  result = qword_27E199BD8;
  if (!qword_27E199BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199BE0, &qword_23BBE8D48);
    sub_23B9C9970(&qword_27E199BB8, &qword_27E199BA0, &qword_23BBE8C28);
    sub_23B9C99C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BD8);
  }

  return result;
}

unint64_t sub_23B9C9D04()
{
  result = qword_27E199BE8;
  if (!qword_27E199BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BE8);
  }

  return result;
}

unint64_t sub_23B9C9D58(uint64_t a1)
{
  result = sub_23B9C9D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9C9D80()
{
  result = qword_27E199BF0;
  if (!qword_27E199BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199BF0);
  }

  return result;
}

uint64_t sub_23B9C9DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B97A9E4();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23B9C9E2C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_23B97AA20(v1 | *a1);
}

uint64_t sub_23B9C9E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23B99FCE0(a1, &v5 - v3, qword_27E199BF8, &qword_23BBE8DF0);
  sub_23BBDBF58();
  return sub_23B979910(a1, qword_27E199BF8, &qword_23BBE8DF0);
}

uint64_t sub_23B9C9F24@<X0>(uint64_t a1@<X8>)
{
  if (v1[8] == 1)
  {
    v3 = *v1;
    v4 = *(*v1 + 16);
    v5 = type metadata accessor for Subscription(0);
    v6 = v5;
    if (v4)
    {
      sub_23B9CED4C(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a1, type metadata accessor for Subscription);
      v7 = a1;
      v8 = 0;
    }

    else
    {
      v7 = a1;
      v8 = 1;
    }

    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for Subscription(0);
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_23B9CA008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v4 = sub_23BBDA928();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_23BBD9848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_23B9C9F24(v16);
  v20 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    v21 = v28;
    sub_23B979910(v16, qword_27E197A68, qword_23BBE3D90);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v10);
    sub_23B99FCE0(v2 + *(a1 + 48), v9, &qword_27E1996A8, &unk_23BBE8170);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v11 + 32))(v21, v9, v10);
    }

    else
    {
      sub_23BBDD5A8();
      v24 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v26 + 8))(v6, v27);
    }

    result = __swift_getEnumTagSinglePayload(v19, 1, v10);
    if (result != 1)
    {
      return sub_23B979910(v19, qword_27E199D08, &qword_23BBE8F80);
    }
  }

  else
  {
    MEMORY[0x23EEB50B0]();
    v22 = *(v11 + 32);
    v22(v19, v13, v10);
    sub_23B9CEDAC(v16, type metadata accessor for Subscription);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v10);
    return (v22)(v28, v19, v10);
  }

  return result;
}

uint64_t sub_23B9CA3FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = a2[2];
  LOBYTE(a2) = *(a2 + 24);
  v18 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, a4, a5, v17);
  v19 = v18[12];
  *(a6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  sub_23B9C9E68(v13);
  v21 = a6 + v18[14];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v26;
  *a6 = v25;
  *(a6 + 8) = 1;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  *(a6 + 32) = v16;
  *(a6 + 40) = a2;
  result = (*(*(a4 - 8) + 32))(a6 + v18[10], v22, a4);
  v24 = (a6 + v18[11]);
  *v24 = 0;
  v24[1] = 0;
  return result;
}

uint64_t sub_23B9CA59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_13_0(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v29 = *a4;
  v18 = *(a4 + 8);
  v19 = a4[2];
  LOBYTE(a4) = *(a4 + 24);
  v21 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, a6, a7, v20);
  v22 = v21[12];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v23);
  sub_23B9C9E68(v16);
  v24 = a8 + v21[14];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *a8 = v17;
  *(a8 + 8) = a1;
  v25 = v30;
  *(a8 + 16) = v29;
  *(a8 + 24) = v18;
  *(a8 + 32) = v19;
  *(a8 + 40) = a4;
  result = (*(*(a6 - 8) + 32))(a8 + v21[10], v25, a6);
  v27 = (a8 + v21[11]);
  v28 = v32;
  *v27 = v31;
  v27[1] = v28;
  return result;
}

uint64_t sub_23B9CA768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v108 = a2;
  sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v106 = v4;
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_6();
  v105 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v102 = v88 - v8;
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v103 = v10;
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_6();
  v101 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v100 = v88 - v14;
  v15 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0, &unk_23BBE8F20);
  OUTLINED_FUNCTION_4();
  v88[2] = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8, &qword_23BBEF050);
  OUTLINED_FUNCTION_4();
  v90 = sub_23BBDA358();
  v16 = *(a1 + 24);
  v17 = OUTLINED_FUNCTION_15_4();
  v91 = type metadata accessor for SubscriptionStoreStaticView(v17, v18, v16, v19);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  v99 = v15;
  sub_23BBDA358();
  v20 = sub_23B97AD88();
  v142 = v16;
  v143 = v20;
  OUTLINED_FUNCTION_7_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  sub_23BBDA358();
  v89 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  v92 = sub_23BBDA358();
  v88[1] = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0, &unk_23BBF4A10);
  v94 = sub_23BBDA358();
  v96 = sub_23BBDA358();
  v95 = sub_23BBDA358();
  v21 = OUTLINED_FUNCTION_15_4();
  v93 = v16;
  v97 = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView(v21, v22, v16, v23);
  v98 = sub_23BBDACE8();
  v88[3] = sub_23BBDACE8();
  v24 = MEMORY[0x277CE0868];
  v25 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
  v140 = v16;
  v141 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v24);
  v138 = WitnessTable;
  v139 = v27;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  v28 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_6(v28);
  v29 = swift_getWitnessTable();
  v30 = sub_23B9CEBD4();
  OUTLINED_FUNCTION_1_12();
  v31 = swift_getWitnessTable();
  v136 = v30;
  v137 = v31;
  v32 = v109;
  v33 = swift_getWitnessTable();
  v34 = sub_23B9A243C();
  v134 = v33;
  v135 = v34;
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  v38 = sub_23B97B518(v36, &qword_27E199938, &unk_23BBE8F30, v37);
  v132 = v35;
  v133 = v38;
  v39 = swift_getWitnessTable();
  v130 = v29;
  v131 = v39;
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  v128 = sub_23B97B518(v41, &qword_27E199CC0, &unk_23BBF4A10, v42);
  v129 = v31;
  v126 = swift_getWitnessTable();
  v127 = v34;
  v43 = v110;
  v124 = swift_getWitnessTable();
  v125 = v38;
  v44 = v100;
  v45 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_10();
  v46 = swift_getWitnessTable();
  v122 = v45;
  v123 = v46;
  v47 = swift_getWitnessTable();
  v120 = v40;
  v121 = v47;
  swift_getWitnessTable();
  v48 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v89 = v49;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v50);
  v52 = v88 - v51;
  type metadata accessor for SubscriptionEntitlementValidator(255);
  v90 = v48;
  v53 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v95 = v54;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v55);
  v91 = v88 - v56;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  v96 = v53;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v97 = v58;
  v98 = v57;
  MEMORY[0x28223BE20](v57);
  v92 = v88 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v60);
  v94 = v88 - v62;
  v111 = v99;
  v112 = v93;
  v113 = v43;
  sub_23B9C2924(v61);
  v99 = v52;
  sub_23BBDC088();
  sub_23B9C9F24(v44);
  v63 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v63) == 1)
  {
    sub_23B979910(v44, qword_27E197A68, qword_23BBE3D90);
    v64 = (v43 + *(v32 + 44));
    v65 = v64[1];
    if (v65)
    {
      v93 = *v64;
    }

    else
    {
      v93 = 0;
      v65 = 0xE000000000000000;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_23B9FCDA8();
    v93 = v66;
    v65 = v67;

    sub_23B9CEDAC(v44, type metadata accessor for Subscription);
  }

  v69 = v103;
  v68 = v104;
  v70 = v101;
  (*(v103 + 104))(v101, *MEMORY[0x277CDD088], v104);
  v71 = *(v43 + 8);
  v118 = *v43;
  v119 = v71;
  sub_23B9CEC34(v118, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0, &qword_23BBEB2D0);
  v72 = v102;
  sub_23BBDBF88();
  OUTLINED_FUNCTION_11_7();
  v73 = v90;
  v74 = swift_getWitnessTable();
  v75 = v91;
  v76 = v99;
  sub_23BB529FC(v93, v65, v70, &v118, v72, v73, v74, v91);

  sub_23B979910(v72, &qword_27E199CA8, &unk_23BBE8F10);
  sub_23B9CEC50(v118, v119);
  (*(v69 + 8))(v70, v68);
  (*(v89 + 8))(v76, v73);
  swift_getKeyPath();
  v77 = v105;
  sub_23B9CA008(v109, v105);
  v79 = sub_23B9CEC6C(v78);
  v116 = v74;
  v117 = v79;
  OUTLINED_FUNCTION_7_12();
  v80 = v96;
  v81 = swift_getWitnessTable();
  v82 = v92;
  sub_23BBDB748();

  (*(v106 + 8))(v77, v107);
  (*(v95 + 8))(v75, v80);
  v83 = sub_23B97B518(&qword_27E199D00, &qword_27E199CE8, &unk_23BBE8F40, MEMORY[0x277CE0868]);
  v114 = v81;
  v115 = v83;
  v84 = v98;
  swift_getWitnessTable();
  v85 = v94;
  sub_23B9D2D88();
  v86 = *(v97 + 8);
  v86(v82, v84);
  sub_23B9D2D88();
  return (v86)(v85, v84);
}

uint64_t sub_23B9CB1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v265 = a1;
  v270 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0, &unk_23BBF4A10);
  v7 = sub_23BBDA358();
  v411 = a3;
  v412 = sub_23B97AD88();
  WitnessTable = swift_getWitnessTable();
  v256 = v7;
  v8 = sub_23BBDACB8();
  v250 = v6;
  v285 = sub_23BBDA358();
  v249 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v248 = &v226 - v9;
  v10 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  v282 = v10;
  v11 = sub_23BBDA358();
  v252 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v251 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v258 = &v226 - v14;
  v16 = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView(255, a2, a3, v15);
  v281 = v11;
  v17 = sub_23BBDACE8();
  v264 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v271 = (&v226 - v18);
  v283 = v16;
  v260 = *(v16 - 8);
  MEMORY[0x28223BE20](v19);
  v259 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v272 = &v226 - v22;
  v280 = v8;
  v23 = sub_23BBDA358();
  v233 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v232 = &v226 - v24;
  v278 = v25;
  v277 = sub_23BBDA358();
  v26 = sub_23BBDA358();
  v246 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v243 = &v226 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v242 = &v226 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0, &unk_23BBE8F20);
  v30 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8, &qword_23BBEF050);
  v31 = sub_23BBDA358();
  v286 = a3;
  v33 = type metadata accessor for SubscriptionStoreStaticView(255, a2, a3, v32);
  v34 = sub_23BBDACE8();
  v279 = v26;
  v35 = sub_23BBDACE8();
  v247 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v253 = &v226 - v36;
  v262 = *(a2 - 8);
  MEMORY[0x28223BE20](v37);
  v263 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = v33;
  v237 = *(v33 - 8);
  MEMORY[0x28223BE20](v39);
  v236 = &v226 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v235 = &v226 - v42;
  v43 = sub_23BBDA928();
  v230 = *(v43 - 8);
  v231 = v43;
  MEMORY[0x28223BE20](v43);
  v229 = &v226 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = *(v30 - 8);
  MEMORY[0x28223BE20](v45);
  v244 = &v226 - v46;
  v274 = v31;
  v47 = *(v31 - 8);
  MEMORY[0x28223BE20](v48);
  v241 = &v226 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v239 = &v226 - v51;
  MEMORY[0x28223BE20](v52);
  v240 = &v226 - v53;
  v234 = type metadata accessor for SubscriptionStaticViewConfiguration(0);
  MEMORY[0x28223BE20](v234);
  v245 = &v226 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v34;
  v55 = *(v34 - 8);
  MEMORY[0x28223BE20](v56);
  v254 = &v226 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v257 = &v226 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = &v226 - v61;
  v63 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  MEMORY[0x28223BE20](v63);
  v65 = &v226 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v261 = &v226 - v67;
  v276 = v35;
  v68 = sub_23BBDACE8();
  v69 = v285;
  v266 = *(v68 - 8);
  v267 = v68;
  MEMORY[0x28223BE20](v68);
  v273 = &v226 - v72;
  v73 = *(v71 + 8);
  v269 = v74;
  v284 = v30;
  if (v73 != 1)
  {
    goto LABEL_12;
  }

  v227 = v47;
  v228 = v55;
  v75 = *v71;
  v76 = v71;
  v77 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, a2, v286, v70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0, &qword_23BBEB2D0);
  v78 = v76;
  sub_23BBDBF68();
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    sub_23B9CEC50(v75, 1);
    v79 = sub_23B979910(v62, qword_27E199BF8, &qword_23BBE8DF0);
    goto LABEL_9;
  }

  v80 = v261;
  sub_23B9CECE8(v62, v261);
  if (!*(v75 + 2))
  {
    sub_23B9CEDAC(v80, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    sub_23B9CEC50(v75, 1);
LABEL_9:
    v73 = *(v76 + 8);
    v69 = v285;
    v71 = v76;
    if (v73 == 1)
    {
      v89 = v283;
      v90 = v286;
      v91 = v76;
      if (!*(*v76 + 16))
      {
        v272 = &v226;
        MEMORY[0x28223BE20](v79);
        *(&v226 - 4) = a2;
        *(&v226 - 3) = v90;
        *(&v226 - 2) = v76;
        v92 = sub_23B9CEBD4();
        sub_23B9C2924(v93);
        v94 = v232;
        sub_23BBDB6B8();
        v95 = (*(v76 + 32) >> 1) & 1;
        v272 = swift_getWitnessTable();
        v341 = v92;
        v342 = v272;
        v96 = v278;
        v97 = swift_getWitnessTable();
        v98 = v243;
        sub_23B9A2228(v95, v96, v97);
        (*(v233 + 8))(v94, v96);
        v265 = sub_23B9A243C();
        v339 = v97;
        v340 = v265;
        v99 = swift_getWitnessTable();
        v264 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
        v337 = v99;
        v338 = v264;
        v100 = v279;
        v101 = swift_getWitnessTable();
        sub_23B9D2D88();
        v102 = *(v246 + 8);
        v246 += 8;
        v271 = v102;
        v102(v98, v100);
        sub_23B9D2D88();
        v103 = MEMORY[0x277CE0868];
        v104 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
        v335 = v286;
        v336 = v104;
        v105 = swift_getWitnessTable();
        v106 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v103);
        v333 = v105;
        v334 = v106;
        v107 = swift_getWitnessTable();
        v108 = swift_getWitnessTable();
        v331 = v107;
        v332 = v108;
        v109 = swift_getWitnessTable();
        sub_23BA82E14();
        v329 = v109;
        v330 = v101;
        v110 = v276;
        v263 = swift_getWitnessTable();
        v327 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
        v328 = v272;
        v325 = swift_getWitnessTable();
        v326 = v265;
        v323 = swift_getWitnessTable();
        v324 = v264;
        v111 = swift_getWitnessTable();
        v112 = swift_getWitnessTable();
        v321 = v111;
        v322 = v112;
        swift_getWitnessTable();
        v113 = v253;
        sub_23BA82D64();
        (*(v247 + 8))(v113, v110);
        v114 = v271;
        v271(v243, v100);
        v114(v242, v100);
        goto LABEL_20;
      }

LABEL_14:
      v116 = v263;
      (*(v262 + 16))(v263, v91 + *(v77 + 40), a2);
      v117 = v259;
      sub_23B9CD6AC(v116, (*(v91 + 32) & 2) != 0, a2, v259, v90);
      v118 = swift_getWitnessTable();
      sub_23B9D2D88();
      v265 = *(v260 + 8);
      (v265)(v117, v89);
      sub_23B9D2D88();
      v119 = v90;
      v120 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
      v263 = swift_getWitnessTable();
      v409 = v120;
      v410 = v263;
      v121 = swift_getWitnessTable();
      v262 = sub_23B9A243C();
      v407 = v121;
      v408 = v262;
      v122 = swift_getWitnessTable();
      v260 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
      v405 = v122;
      v406 = v260;
      v261 = swift_getWitnessTable();
      v123 = v271;
      sub_23BA82E14();
      v124 = MEMORY[0x277CE0868];
      v125 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
      v403 = v119;
      v404 = v125;
      v126 = swift_getWitnessTable();
      v127 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v124);
      v401 = v126;
      v402 = v127;
      v128 = swift_getWitnessTable();
      v129 = swift_getWitnessTable();
      v399 = v128;
      v400 = v129;
      v130 = swift_getWitnessTable();
      v397 = sub_23B9CEBD4();
      v398 = v263;
      v395 = swift_getWitnessTable();
      v396 = v262;
      v393 = swift_getWitnessTable();
      v394 = v260;
      v131 = swift_getWitnessTable();
      v391 = v130;
      v392 = v131;
      swift_getWitnessTable();
      v389 = v261;
      v390 = v118;
      v132 = v269;
      swift_getWitnessTable();
      sub_23BA82E14();
      (*(v264 + 8))(v123, v132);
      v133 = v265;
      (v265)(v117, v89);
      (v133)(v272, v89);
      goto LABEL_20;
    }

LABEL_12:
    v115 = v71;
    if (!v73)
    {
      v265 = &v226;
      v317 = *v71;
      v272 = v317;
      MEMORY[0x28223BE20](v317);
      v134 = v286;
      *(&v226 - 4) = a2;
      *(&v226 - 3) = v134;
      *(&v226 - 2) = v115;
      v136 = v135;
      v137 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
      sub_23B9C2924(v138);
      v139 = v248;
      sub_23BBDB6B8();
      v140 = (*(v115 + 32) >> 1) & 1;
      v265 = swift_getWitnessTable();
      v363 = v137;
      v364 = v265;
      v141 = swift_getWitnessTable();
      v142 = v251;
      sub_23B9A2228(v140, v69, v141);
      (*(v249 + 8))(v139, v69);
      v262 = sub_23B9A243C();
      v361 = v141;
      v362 = v262;
      v143 = swift_getWitnessTable();
      v144 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
      v359 = v143;
      v360 = v144;
      v145 = v281;
      v146 = swift_getWitnessTable();
      sub_23B9D2D88();
      v263 = *(v252 + 8);
      (v263)(v142, v145);
      sub_23B9D2D88();
      v261 = swift_getWitnessTable();
      sub_23BA82D64();
      v147 = MEMORY[0x277CE0868];
      v148 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
      v357 = v286;
      v358 = v148;
      v149 = swift_getWitnessTable();
      v150 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v147);
      v355 = v149;
      v356 = v150;
      v151 = swift_getWitnessTable();
      v152 = swift_getWitnessTable();
      v353 = v151;
      v354 = v152;
      v153 = swift_getWitnessTable();
      v351 = sub_23B9CEBD4();
      v352 = v265;
      v349 = swift_getWitnessTable();
      v350 = v262;
      v347 = swift_getWitnessTable();
      v348 = v144;
      v154 = swift_getWitnessTable();
      v345 = v153;
      v346 = v154;
      swift_getWitnessTable();
      v343 = v146;
      v344 = v261;
      v155 = v269;
      swift_getWitnessTable();
      v156 = v271;
      sub_23BA82E14();
      sub_23B9CEC50(v272, 0);
      (*(v264 + 8))(v156, v155);
      v157 = v263;
      (v263)(v142, v145);
      (v157)(v258, v145);
      goto LABEL_20;
    }

    v90 = v286;
    v77 = type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, a2, v286, v70);
    v89 = v283;
    v91 = v115;
    goto LABEL_14;
  }

  v81 = *(v76 + 40);
  v82 = *(v76 + 16);
  v83 = *(v76 + 24);
  v84 = *(v78 + 32);
  if (v81 == 1)
  {
    v85 = v245;
    sub_23B9CED4C(v261, v245 + *(v234 + 24), type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    *v85 = v75;
    *(v85 + 8) = v82;
    *(v85 + 16) = v83;
    *(v85 + 24) = v84;
    *(v85 + 32) = 1;
    sub_23BA9B990(v85, a2, v286);
    v86 = v78 + *(v77 + 56);
    v87 = *v86;
    if (*(v86 + 8) == 1)
    {
      v88 = (v87 >> 8) & 1;
    }

    else
    {

      sub_23BBDD5A8();
      v169 = sub_23BBDB338();
      sub_23BBD9978();

      v170 = v229;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v87, 0);
      v88 = v231;
      v171 = *(v230 + 8);
      v171(v170, v231);
      v172 = v317;

      sub_23BBDD5A8();
      v173 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v87, 0);
      v171(v170, v88);
      LOBYTE(v88) = BYTE1(v317);
      LOBYTE(v87) = v172;
    }

    v174 = MEMORY[0x277CE0868];
    v175 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
    v289 = v286;
    v290 = v175;
    v176 = v284;
    v177 = swift_getWitnessTable();
    v178 = v87 & 1;
    v179 = v239;
    v180 = v244;
    sub_23B97AB94(v178, v88, v176, v177);
    (*(v238 + 8))(v180, v176);
    v181 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v174);
    v287 = v177;
    v288 = v181;
    v182 = v274;
    swift_getWitnessTable();
    v183 = v240;
    sub_23B9D2D88();
    v184 = *(v227 + 8);
    v184(v179, v182);
    v185 = v241;
    sub_23B9D2D88();
    swift_getWitnessTable();
    sub_23BA82D64();
    v184(v185, v182);
    v184(v183, v182);
    sub_23B9CEDAC(v245, type metadata accessor for SubscriptionStaticViewConfiguration);
  }

  else
  {
    v317 = *(v78 + 16);
    v318 = v83;
    v319 = v84;
    v320 = 0;
    sub_23B9CED4C(v261, v65, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
    v158 = v263;
    (*(v262 + 16))(v263, v78 + *(v77 + 40), a2);
    v159 = v236;
    v160 = v65;
    v161 = v286;
    sub_23BB5CF70(v75, &v317, v160, v158, 0, a2, v286, v236);
    v162 = v275;
    swift_getWitnessTable();
    v163 = v235;
    sub_23B9D2D88();
    v164 = *(v237 + 8);
    v164(v159, v162);
    sub_23B9D2D88();
    v165 = MEMORY[0x277CE0868];
    v166 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
    v315 = v161;
    v316 = v166;
    v167 = swift_getWitnessTable();
    v168 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v165);
    v313 = v167;
    v314 = v168;
    swift_getWitnessTable();
    sub_23BA82E14();
    v164(v159, v162);
    v164(v163, v162);
  }

  v186 = MEMORY[0x277CE0868];
  v187 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
  v311 = v286;
  v312 = v187;
  v188 = swift_getWitnessTable();
  v189 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v186);
  v309 = v188;
  v310 = v189;
  v190 = swift_getWitnessTable();
  v191 = swift_getWitnessTable();
  v307 = v190;
  v308 = v191;
  v272 = MEMORY[0x277CE0340];
  v192 = v268;
  v193 = swift_getWitnessTable();
  sub_23B9D2D88();
  v194 = sub_23B9CEBD4();
  v271 = swift_getWitnessTable();
  v305 = v194;
  v306 = v271;
  v195 = swift_getWitnessTable();
  v196 = sub_23B9A243C();
  v303 = v195;
  v304 = v196;
  v197 = swift_getWitnessTable();
  v198 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
  v301 = v197;
  v302 = v198;
  v199 = swift_getWitnessTable();
  v200 = v253;
  sub_23BA82D64();
  v299 = v193;
  v300 = v199;
  v201 = v276;
  v265 = swift_getWitnessTable();
  v297 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
  v298 = v271;
  v295 = swift_getWitnessTable();
  v296 = v196;
  v293 = swift_getWitnessTable();
  v294 = v198;
  v202 = swift_getWitnessTable();
  v203 = swift_getWitnessTable();
  v291 = v202;
  v292 = v203;
  swift_getWitnessTable();
  sub_23BA82D64();
  (*(v247 + 8))(v200, v201);
  v204 = *(v228 + 8);
  v204(v254, v192);
  v204(v257, v192);
  sub_23B9CEDAC(v261, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
LABEL_20:
  v205 = MEMORY[0x277CE0868];
  v206 = sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
  v387 = v286;
  v388 = v206;
  v207 = swift_getWitnessTable();
  v208 = sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v205);
  v385 = v207;
  v386 = v208;
  v209 = swift_getWitnessTable();
  v210 = swift_getWitnessTable();
  v383 = v209;
  v384 = v210;
  v211 = swift_getWitnessTable();
  v212 = sub_23B9CEBD4();
  v213 = swift_getWitnessTable();
  v381 = v212;
  v382 = v213;
  v214 = swift_getWitnessTable();
  v215 = sub_23B9A243C();
  v379 = v214;
  v380 = v215;
  v216 = swift_getWitnessTable();
  v217 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
  v377 = v216;
  v378 = v217;
  v218 = swift_getWitnessTable();
  v375 = v211;
  v376 = v218;
  v219 = swift_getWitnessTable();
  v373 = sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0, &unk_23BBF4A10, &unk_23BBEAC40);
  v374 = v213;
  v371 = swift_getWitnessTable();
  v372 = v215;
  v369 = swift_getWitnessTable();
  v370 = v217;
  v220 = swift_getWitnessTable();
  v221 = swift_getWitnessTable();
  v367 = v220;
  v368 = v221;
  v222 = swift_getWitnessTable();
  v365 = v219;
  v366 = v222;
  v223 = v267;
  swift_getWitnessTable();
  v224 = v273;
  sub_23B9D2D88();
  return (*(v266 + 8))(v224, v223);
}