uint64_t sub_1DD42D324(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9B8, &qword_1DD649DF8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42D424(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC10, &unk_1DD649DC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42D55C()
{
  OUTLINED_FUNCTION_34_5();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_6();
    if (v4)
    {
      OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 8);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_16_10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_58_3();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DD42D620(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1D8C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42D7EC()
{
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 16);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_17_12();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DD42D8A8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB50, &qword_1DD64A088);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1DB8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42DA74(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 264);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1DCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42DB7C(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_38_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEF0, &unk_1DD64A090);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
    OUTLINED_FUNCTION_51(v7);
    v9 = *(v8 + 72);
    v10 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v10);
    if (v9)
    {
      OUTLINED_FUNCTION_37_8();
      v12 = v12 && v9 == -1;
      if (!v12)
      {
        OUTLINED_FUNCTION_36_4(v11);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v2)
  {
    v14 = OUTLINED_FUNCTION_35_5(v13);
    sub_1DD3C1E0C(v14, v15, v16);
    *(v1 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_1DD42DCD0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB28, &qword_1DD64A058);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB30, &unk_1DD64A060);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42DDE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB20, &qword_1DD64A048);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1E38(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42DFB4()
{
  OUTLINED_FUNCTION_16_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
      v7 = OUTLINED_FUNCTION_21_0(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2524(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    OUTLINED_FUNCTION_11_14(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD42E09C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB78, &qword_1DD64A0C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1B90((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42E194()
{
  OUTLINED_FUNCTION_34_5();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_6();
    if (v4)
    {
      OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_16_10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_58_3();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD42E278()
{
  OUTLINED_FUNCTION_34_5();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_6();
    if (v4)
    {
      OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 4);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_16_10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_58_3();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD42E33C()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9E8, &qword_1DD649E78);
      v8 = OUTLINED_FUNCTION_21_0(v7);
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3AA508(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 40 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v5)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD42E3F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9D8, &qword_1DD649E68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9E0, &qword_1DD649E70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E508(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB00, &qword_1DD64A028);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 728);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1E64((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB08, &qword_1DD64A030);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E620(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE0, &qword_1DD657080);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 712);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1E8C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E728(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF48, &unk_1DD649F20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2534((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF50, &qword_1DD644240);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E87C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA68, &qword_1DD649F38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 128);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1EFC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E97C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA8, &qword_1DD649FA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 136);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1F1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42EA84(char a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v10 == v11))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_6();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE28, &qword_1DD644170);
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v12);
      v12[2] = v5;
      v12[3] = 2 * (v13 / 40);
      if (a1)
      {
LABEL_8:
        v14 = OUTLINED_FUNCTION_16_10();
        a5(v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE30, &qword_1DD649EE0);
    OUTLINED_FUNCTION_58_3();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v10)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD42EB78(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v15 = OUTLINED_FUNCTION_52_1(v14);
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v3)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_17_12();
        v2(v17);
        *(v1 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD42EC20(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA0, &qword_1DD649F98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1C2C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42ED28()
{
  OUTLINED_FUNCTION_16_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE20, &qword_1DD649F50);
      v7 = OUTLINED_FUNCTION_21_0(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2534(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
    OUTLINED_FUNCTION_11_14(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD42EDE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA78, &qword_1DD649F70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA80, &qword_1DD649F78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42EEF8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA70, &unk_1DD649F40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1F58(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42F0C4()
{
  OUTLINED_FUNCTION_16_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDF0, &qword_1DD649F10);
      v7 = OUTLINED_FUNCTION_21_0(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2534(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);
    OUTLINED_FUNCTION_11_14(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD42F184()
{
  OUTLINED_FUNCTION_16_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDE8, &qword_1DD649F00);
      v7 = OUTLINED_FUNCTION_21_0(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C207C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA58, &qword_1DD649F08);
    OUTLINED_FUNCTION_11_14(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD42F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_15_6();
      if (v13)
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
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_53(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_51(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_48(v23 - v21);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v11)
  {
    a8(a4 + v25, v15, v22 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD42F3D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1DD3C203C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42F4E0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAD8, &qword_1DD649FE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1C2C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42F5F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA48, &qword_1DD649EF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1DD3C252C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA50, &qword_1DD649EF8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42F710(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v15 = OUTLINED_FUNCTION_52_1(v14);
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v3)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_17_12();
        v2(v17);
        *(v1 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD42F7B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA0, &qword_1DD644080);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2160((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, qword_1DD649E40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42F8D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB0, &qword_1DD644088);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1D6C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD42F9E0()
{
  result = qword_1ECCDCA30;
  if (!qword_1ECCDCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA30);
  }

  return result;
}

unint64_t sub_1DD42FA34()
{
  result = qword_1ECCDCA38;
  if (!qword_1ECCDCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA38);
  }

  return result;
}

unint64_t sub_1DD42FA88()
{
  result = qword_1ECCDCA40;
  if (!qword_1ECCDCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA40);
  }

  return result;
}

uint64_t sub_1DD42FADC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB38, &qword_1DD664C60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1B90((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB40, &unk_1DD64A070);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1)
{

  return sub_1DD640B78();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1DD640C18();
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640ED8();
}

uint64_t sub_1DD42FEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v8 = type metadata accessor for ContactResolverConfig(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DD450B90(a2, a3);
  v11 = a4(a1, v10);
  sub_1DD43032C(v10, type metadata accessor for ContactResolverConfig);
  return v11;
}

uint64_t sub_1DD430018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v24 = a2;
  v6 = type metadata accessor for Contact(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v22 = v3;
    v23 = a3;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DD42BAD8(0, v14, 0);
    v15 = v26;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    do
    {
      sub_1DD415D68(v16, v13);
      sub_1DD415D68(v13, v9);
      sub_1DD41D418(v9, v25);
      sub_1DD43032C(v13, type metadata accessor for Contact);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42BAD8(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v19 + 1;
      memcpy((v15 + 264 * v19 + 32), v25, 0x108uLL);
      v16 += v17;
      --v14;
    }

    while (v14);
    a3 = v23;
  }

  v20 = (a3)(v15, v24, v11);

  return v20;
}

uint64_t ContactResolver.makeRecommendation(matches:config:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for ContactResolverRunTimeData(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4425CC();
  sub_1DD4279B8(&v7[*(v5 + 48)], a3);
  return sub_1DD43032C(v7, type metadata accessor for ContactResolverRunTimeData);
}

uint64_t sub_1DD43032C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DD43038C(uint64_t a1@<X8>)
{
  *a1 = 6;
  ContactQuery.init()(a1 + 8);
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 272) = MEMORY[0x1E69E7CC0];
  *(a1 + 280) = 0;
  v3 = type metadata accessor for ContactResolver.SignalSet(0);
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 333) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  v4 = sub_1DD63F148();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  v14 = a1 + v3[33];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(a1 + v3[34]) = 0;
  *(a1 + v3[35]) = 0;
  *(a1 + v3[36]) = 0;
  *(a1 + v3[37]) = 0;
  *(a1 + v3[38]) = 0;
  *(a1 + v3[39]) = 0;
  *(a1 + v3[40]) = 0;
  *(a1 + v3[41]) = 0;
  OUTLINED_FUNCTION_52_3(v3[42]);
  *(v15 + 8) = 0;
  OUTLINED_FUNCTION_52_3(v3[43]);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  *(a1 + v3[44]) = 0;
  *(a1 + v3[45]) = 0;
  *(a1 + v3[46]) = 0;
  *(a1 + v3[47]) = 0;
  *(a1 + v3[48]) = 0;
  OUTLINED_FUNCTION_52_3(v3[49]);
  *(v17 + 8) = 0;
  OUTLINED_FUNCTION_52_3(v3[50]);
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(a1 + v3[51]) = 0;
  *(a1 + v3[52]) = v2;
  *(a1 + v3[53]) = 0;
  *(a1 + v3[54]) = 0;
  *(a1 + v3[55]) = 0;
  *(a1 + v3[56]) = 0;
  *(a1 + v3[57]) = 0;
  *(a1 + v3[58]) = 0;
  *(a1 + v3[59]) = 0;
  *(a1 + v3[60]) = 0;
  v19 = v3[61];
  type metadata accessor for MegadomeEntityFeatures();
  v20 = swift_allocObject();
  bzero((v20 + 16), 0x3B8uLL);
  *(a1 + v19) = v20;
}

void ContactResolver.SignalSet.isThirdPartyMatch.getter()
{
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_48_6();
  *(v0 + 9) = v1;
}

void ContactResolver.SignalSet.isThirdPartyMatch.setter()
{
  OUTLINED_FUNCTION_54_4();
  v1 = *(v0 + 9);
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 168));
  *(v3 + 9) = v1;
}

uint64_t ContactResolver.SignalSet.isThirdPartyMatch.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for ContactResolver.SignalSet(v0);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.getter()
{
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_48_6();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.setter()
{
  OUTLINED_FUNCTION_54_4();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = v1 + *(type metadata accessor for ContactResolver.SignalSet(0) + 172);

  *v6 = v0;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for ContactResolver.SignalSet(v0);
  return OUTLINED_FUNCTION_88_2();
}

void ContactResolver.SignalSet.isCommunalRequest.getter()
{
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_48_6();
  *(v0 + 9) = v1;
}

void ContactResolver.SignalSet.isCommunalRequest.setter()
{
  OUTLINED_FUNCTION_54_4();
  v1 = *(v0 + 9);
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 196));
  *(v3 + 9) = v1;
}

uint64_t ContactResolver.SignalSet.isCommunalRequest.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for ContactResolver.SignalSet(v0);
  return OUTLINED_FUNCTION_88_2();
}

void ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.getter()
{
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_48_6();
  *(v0 + 16) = v1;
}

void ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.setter()
{
  OUTLINED_FUNCTION_54_4();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 200));
  *(v3 + 16) = v1;
}

uint64_t ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  type metadata accessor for ContactResolver.SignalSet(v0);
  return OUTLINED_FUNCTION_88_2();
}

BOOL static ContactResolver.SignalSet.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v102 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v103 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v104 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB88, &qword_1DD64A0E8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v95 - v28;
  if (*a1 != *a2)
  {
    return 0;
  }

  v101 = v4;
  memcpy(v108, a1 + 1, sizeof(v108));
  memcpy(v107, a1 + 1, 0x108uLL);
  memcpy(v109, a2 + 1, sizeof(v109));
  memcpy(v106, a2 + 1, 0x108uLL);
  sub_1DD3C9478(v108, v105);
  sub_1DD3C9478(v109, v105);
  v30 = a1;
  v31 = a2;
  v32 = static ContactQuery.== infix(_:_:)(v107, v106);
  memcpy(v110, v106, sizeof(v110));
  sub_1DD3C9580(v110);
  memcpy(v111, v107, sizeof(v111));
  sub_1DD3C9580(v111);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DD3C45E4(v30[34], v31[34]) & 1) == 0)
  {
    return 0;
  }

  v33 = *(v30 + 37);
  v112[0] = *(v30 + 35);
  v112[1] = v33;
  v112[2] = *(v30 + 39);
  v34 = *(v31 + 37);
  v105[0] = *(v31 + 35);
  v105[1] = v34;
  v105[2] = *(v31 + 39);
  if (!sub_1DD5C1588(v112, v105))
  {
    return 0;
  }

  if (*(v30 + 328) != *(v31 + 328))
  {
    return 0;
  }

  if (*(v30 + 329) != *(v31 + 329))
  {
    return 0;
  }

  if (*(v30 + 330) != *(v31 + 330))
  {
    return 0;
  }

  if (*(v30 + 331) != *(v31 + 331))
  {
    return 0;
  }

  if (*(v30 + 332) != *(v31 + 332))
  {
    return 0;
  }

  if (*(v30 + 333) != *(v31 + 333))
  {
    return 0;
  }

  if (*(v30 + 334) != *(v31 + 334))
  {
    return 0;
  }

  if (*(v30 + 335) != *(v31 + 335))
  {
    return 0;
  }

  if (*(v30 + 336) != *(v31 + 336))
  {
    return 0;
  }

  if (*(v30 + 337) != *(v31 + 337))
  {
    return 0;
  }

  v99 = v26;
  v100 = v29;
  v97 = v15;
  v98 = v23;
  if (*(v30 + 338) != *(v31 + 338))
  {
    return 0;
  }

  v35 = v18;
  v36 = v30;
  v37 = v31;
  if (*(v30 + 339) != *(v31 + 339) || *(v30 + 340) != *(v31 + 340) || *(v30 + 43) != *(v31 + 43) || *(v30 + 44) != *(v31 + 44) || *(v30 + 360) != *(v31 + 360) || *(v30 + 361) != *(v31 + 361) || *(v30 + 362) != *(v31 + 362) || *(v30 + 363) != *(v31 + 363) || v30[46] != v31[46] || v30[47] != v31[47] || v30[48] != v31[48])
  {
    return 0;
  }

  v96 = type metadata accessor for ContactResolver.SignalSet(0);
  v38 = v96[30];
  v39 = *(v19 + 48);
  v40 = v100;
  sub_1DD4313E0(v30 + v38, v100);
  sub_1DD4313E0(v37 + v38, v40 + v39);
  OUTLINED_FUNCTION_11_15(v40);
  if (v42)
  {
    if (__swift_getEnumTagSinglePayload(&v100[v39], 1, v101) == 1)
    {
      sub_1DD390754(v100, &qword_1ECCDCB80, &qword_1DD64A0E0);
      goto LABEL_36;
    }

LABEL_34:
    v43 = v100;
LABEL_55:
    sub_1DD390754(v43, &qword_1ECCDCB88, &qword_1DD64A0E8);
    return 0;
  }

  v41 = v100;
  sub_1DD4313E0(v100, v35);
  OUTLINED_FUNCTION_11_15(v41 + v39);
  if (v42)
  {
    (*(v102 + 8))(v35, v101);
    goto LABEL_34;
  }

  v44 = v102;
  v45 = v103;
  v46 = v101;
  (*(v102 + 32))(v103, &v100[v39], v101);
  OUTLINED_FUNCTION_1_29();
  sub_1DD433844(v47);
  v48 = v35;
  v49 = sub_1DD63FD98();
  v50 = *(v44 + 8);
  v50(v45, v46);
  v50(v48, v46);
  sub_1DD390754(v100, &qword_1ECCDCB80, &qword_1DD64A0E0);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v51 = v96[31];
  v52 = *(v19 + 48);
  v53 = v99;
  sub_1DD4313E0(v36 + v51, v99);
  sub_1DD4313E0(v37 + v51, v53 + v52);
  OUTLINED_FUNCTION_11_15(v53);
  if (v42)
  {
    OUTLINED_FUNCTION_11_15(&v99[v52]);
    if (v42)
    {
      sub_1DD390754(v99, &qword_1ECCDCB80, &qword_1DD64A0E0);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v54 = v99;
  sub_1DD4313E0(v99, v97);
  OUTLINED_FUNCTION_11_15(v54 + v52);
  if (v55)
  {
    (*(v102 + 8))(v97, v101);
LABEL_44:
    v43 = v99;
    goto LABEL_55;
  }

  v56 = v102;
  v57 = v103;
  v58 = v101;
  (*(v102 + 32))(v103, &v99[v52], v101);
  OUTLINED_FUNCTION_1_29();
  sub_1DD433844(v59);
  v60 = v97;
  v61 = sub_1DD63FD98();
  v62 = *(v56 + 8);
  v62(v57, v58);
  v62(v60, v58);
  sub_1DD390754(v99, &qword_1ECCDCB80, &qword_1DD64A0E0);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v63 = v96[32];
  v64 = *(v19 + 48);
  v65 = v98;
  sub_1DD4313E0(v36 + v63, v98);
  sub_1DD4313E0(v37 + v63, v65 + v64);
  OUTLINED_FUNCTION_11_15(v65);
  if (!v42)
  {
    v66 = v98;
    sub_1DD4313E0(v98, v104);
    OUTLINED_FUNCTION_11_15(v66 + v64);
    if (!v67)
    {
      v71 = v102;
      v70 = v103;
      v72 = v98;
      v73 = v101;
      (*(v102 + 32))(v103, v98 + v64, v101);
      OUTLINED_FUNCTION_1_29();
      sub_1DD433844(v74);
      v75 = v104;
      v76 = sub_1DD63FD98();
      v77 = *(v71 + 8);
      v77(v70, v73);
      v77(v75, v73);
      sub_1DD390754(v72, &qword_1ECCDCB80, &qword_1DD64A0E0);
      if ((v76 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_59;
    }

    (*(v102 + 8))(v104, v101);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_11_15(v98 + v64);
  if (!v42)
  {
LABEL_54:
    v43 = v98;
    goto LABEL_55;
  }

  sub_1DD390754(v98, &qword_1ECCDCB80, &qword_1DD64A0E0);
LABEL_59:
  v78 = v96[33];
  v79 = *(v36 + v78 + 16);
  v106[0] = *(v36 + v78);
  v106[1] = v79;
  v106[2] = *(v36 + v78 + 32);
  *&v106[3] = *(v36 + v78 + 48);
  v80 = v37 + v78;
  v81 = *(v80 + 1);
  v107[0] = *v80;
  v107[1] = v81;
  v107[2] = *(v80 + 2);
  *&v107[3] = *(v80 + 6);
  if (sub_1DD585198(v106, v107))
  {
    OUTLINED_FUNCTION_9_13();
    if (v42)
    {
      OUTLINED_FUNCTION_9_13();
      if (v42)
      {
        OUTLINED_FUNCTION_9_13();
        if (v42)
        {
          OUTLINED_FUNCTION_9_13();
          if (v42)
          {
            OUTLINED_FUNCTION_9_13();
            if (v42)
            {
              OUTLINED_FUNCTION_9_13();
              if (v42)
              {
                OUTLINED_FUNCTION_9_13();
                if (v42)
                {
                  OUTLINED_FUNCTION_9_13();
                  if (v42)
                  {
                    OUTLINED_FUNCTION_10_19();
                    if (v42)
                    {
                      OUTLINED_FUNCTION_25_6();
                      if ((v84 & 1) == 0 && ((*(v82 + 9) ^ *(v83 + 9)) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_10_19();
                        if (v42)
                        {
                          OUTLINED_FUNCTION_25_6();
                          if ((v87 & 1) == 0)
                          {
                            v88 = *(v85 + 16) == *(v86 + 16) && *(v85 + 24) == *(v86 + 24);
                            if (v88 || (sub_1DD640CD8() & 1) != 0)
                            {
                              OUTLINED_FUNCTION_9_13();
                              if (v42)
                              {
                                OUTLINED_FUNCTION_9_13();
                                if (v42)
                                {
                                  OUTLINED_FUNCTION_9_13();
                                  if (v42)
                                  {
                                    OUTLINED_FUNCTION_9_13();
                                    if (v42)
                                    {
                                      OUTLINED_FUNCTION_9_13();
                                      if (v42)
                                      {
                                        OUTLINED_FUNCTION_10_19();
                                        if (v42)
                                        {
                                          OUTLINED_FUNCTION_25_6();
                                          if ((v91 & 1) == 0 && ((*(v89 + 9) ^ *(v90 + 9)) & 1) == 0)
                                          {
                                            OUTLINED_FUNCTION_10_19();
                                            if (v42)
                                            {
                                              OUTLINED_FUNCTION_25_6();
                                              if ((v94 & 1) == 0 && *(v92 + 16) == *(v93 + 16))
                                              {
                                                OUTLINED_FUNCTION_9_13();
                                                if (v42)
                                                {
                                                  if (sub_1DD3C4934(*(v36 + v96[52]), *(v37 + v96[52])))
                                                  {
                                                    OUTLINED_FUNCTION_9_13();
                                                    if (v42)
                                                    {
                                                      OUTLINED_FUNCTION_9_13();
                                                      if (v42)
                                                      {
                                                        OUTLINED_FUNCTION_9_13();
                                                        if (v42)
                                                        {
                                                          OUTLINED_FUNCTION_9_13();
                                                          if (v42)
                                                          {
                                                            OUTLINED_FUNCTION_9_13();
                                                            if (v42)
                                                            {
                                                              OUTLINED_FUNCTION_9_13();
                                                              if (v42)
                                                              {
                                                                OUTLINED_FUNCTION_9_13();
                                                                if (v42)
                                                                {
                                                                  if (*(v36 + v96[60]) == *(v37 + v96[60]))
                                                                  {
                                                                    type metadata accessor for MegadomeEntityFeatures();
                                                                    return static MegadomeEntityFeatures.== infix(_:_:)(*(v36 + v96[61]), *(v37 + v96[61]));
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

  return 0;
}

uint64_t sub_1DD4313E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4314F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E696769726FLL && a2 == 0xED00007972657551;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD66B9A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD66B9C0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001DD66B9E0 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD66BA00 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001DD66BA20 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001DD66BA40 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ALL && 0x80000001DD66BA60 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000021 && 0x80000001DD66BA80 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD667420 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F636F7079487369 && a2 == 0xEC0000006D736972;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001DD667400 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x74536D6F72467369 && a2 == 0xEF68637261655364;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x4C4E6D6F72467369 && a2 == 0xEF68637261655358;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x52536D6F72467369 && a2 == 0xEF68637261655352;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x65726F6353786C6ELL && a2 == 0xE800000000000000;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x65726F6353727273 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x80000001DD667040 == a2;
                                          if (v25 || (sub_1DD640CD8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x80000001DD667060 == a2;
                                            if (v26 || (sub_1DD640CD8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000013 && 0x80000001DD667080 == a2;
                                              if (v27 || (sub_1DD640CD8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x5279636E65636572 && a2 == 0xEB000000006B6E61;
                                                if (v28 || (sub_1DD640CD8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000017 && 0x80000001DD6670A0 == a2;
                                                  if (v29 || (sub_1DD640CD8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000018 && 0x80000001DD6670C0 == a2;
                                                    if (v30 || (sub_1DD640CD8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
                                                      if (v31 || (sub_1DD640CD8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000018 && 0x80000001DD66BAB0 == a2;
                                                        if (v32 || (sub_1DD640CD8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000019 && 0x80000001DD66BAD0 == a2;
                                                          if (v33 || (sub_1DD640CD8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000013 && 0x80000001DD66BAF0 == a2;
                                                            if (v34 || (sub_1DD640CD8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x64726143654D7369 && a2 == 0xE800000000000000;
                                                              if (v35 || (sub_1DD640CD8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000010 && 0x80000001DD667110 == a2;
                                                                if (v36 || (sub_1DD640CD8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001ALL && 0x80000001DD66BB10 == a2;
                                                                  if (v37 || (sub_1DD640CD8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x6974616C65527369 && a2 == 0xEF7361696C416E6FLL;
                                                                    if (v38 || (sub_1DD640CD8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000019 && 0x80000001DD66BB30 == a2;
                                                                      if (v39 || (sub_1DD640CD8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x45696A6F6D457369 && a2 == 0xEF6465646E617078;
                                                                        if (v40 || (sub_1DD640CD8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000027 && 0x80000001DD66BB50 == a2;
                                                                          if (v41 || (sub_1DD640CD8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000027 && 0x80000001DD66BB80 == a2;
                                                                            if (v42 || (sub_1DD640CD8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000011 && 0x80000001DD66BBB0 == a2;
                                                                              if (v43 || (sub_1DD640CD8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x80000001DD66BBD0 == a2;
                                                                                if (v44 || (sub_1DD640CD8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                                                                  if (v45 || (sub_1DD640CD8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000010 && 0x80000001DD66BBF0 == a2;
                                                                                    if (v46 || (sub_1DD640CD8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x6C616D726F4E7369 && a2 == 0xEC00000064657A69;
                                                                                      if (v47 || (sub_1DD640CD8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD00000000000001ALL && 0x80000001DD66BC10 == a2;
                                                                                        if (v48 || (sub_1DD640CD8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000018 && 0x80000001DD66BC30 == a2;
                                                                                          if (v49 || (sub_1DD640CD8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD000000000000011 && 0x80000001DD66BC50 == a2;
                                                                                            if (v50 || (sub_1DD640CD8() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD00000000000002ALL && 0x80000001DD66BC70 == a2;
                                                                                              if (v51 || (sub_1DD640CD8() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x695353554C507369 && a2 == 0xEC0000006C616E67;
                                                                                                if (v52 || (sub_1DD640CD8() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD000000000000011 && 0x80000001DD66BCA0 == a2;
                                                                                                  if (v53 || (sub_1DD640CD8() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000021 && 0x80000001DD66BCC0 == a2;
                                                                                                    if (v54 || (sub_1DD640CD8() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD000000000000018 && 0x80000001DD66BCF0 == a2;
                                                                                                      if (v55 || (sub_1DD640CD8() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000019 && 0x80000001DD66BD10 == a2;
                                                                                                        if (v56 || (sub_1DD640CD8() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0x6143796C6E4F7369 && a2 == 0xEF6574616469646ELL;
                                                                                                          if (v57 || (sub_1DD640CD8() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0x6E61434743557369 && a2 == 0xEE00657461646964;
                                                                                                            if (v58 || (sub_1DD640CD8() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x646E614333457369 && a2 == 0xED00006574616469;
                                                                                                              if (v59 || (sub_1DD640CD8() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000015 && 0x80000001DD66BD30 == a2;
                                                                                                                if (v60 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000017 && 0x80000001DD667590 == a2;
                                                                                                                  if (v61 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else if (a1 == 0xD000000000000016 && 0x80000001DD66BD50 == a2)
                                                                                                                  {

                                                                                                                    return 57;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v63 = sub_1DD640CD8();

                                                                                                                    if (v63)
                                                                                                                    {
                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      return 58;
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
      }
    }
  }
}

uint64_t sub_1DD4325C0(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      v3 = 0x6E696769726FLL;
      goto LABEL_35;
    case 2:
    case 4:
    case 24:
    case 56:
      return 0xD000000000000017;
    case 3:
    case 13:
    case 57:
      return 0xD000000000000016;
    case 5:
      return 0xD00000000000001CLL;
    case 6:
      return 0xD00000000000001BLL;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0x7365676775537369;
    case 9:
    case 32:
    case 43:
      return 0xD00000000000001ALL;
    case 10:
    case 49:
      return 0xD000000000000021;
    case 11:
    case 39:
      return 0xD000000000000012;
    case 12:
      return 0x6F636F7079487369;
    case 14:
      return 0x74536D6F72467369;
    case 15:
      return 0x4C4E6D6F72467369;
    case 16:
      return 0x52536D6F72467369;
    case 17:
      v4 = 1400401006;
      goto LABEL_26;
    case 18:
      v4 = 1400009331;
LABEL_26:
      result = v4 | 0x65726F6300000000;
      break;
    case 19:
      result = 0x746E656365527369;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
    case 55:
      result = 0xD000000000000015;
      break;
    case 22:
    case 29:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x5279636E65636572;
      break;
    case 25:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0x5379726F74736968;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 28:
    case 34:
    case 51:
      result = 0xD000000000000019;
      break;
    case 30:
      result = 0x64726143654D7369;
      break;
    case 31:
    case 41:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x6974616C65527369;
      break;
    case 35:
      result = 0x45696A6F6D457369;
      break;
    case 36:
    case 37:
      result = 0xD000000000000027;
      break;
    case 38:
    case 45:
    case 48:
      result = 0xD000000000000011;
      break;
    case 40:
      result = 0x69726F7661467369;
      break;
    case 42:
      v3 = 0x6D726F4E7369;
LABEL_35:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
      break;
    case 44:
      result = 0xD000000000000018;
      break;
    case 46:
      result = 0xD00000000000002ALL;
      break;
    case 47:
      result = 0x695353554C507369;
      break;
    case 50:
      result = 0xD000000000000018;
      break;
    case 52:
      result = 0x6143796C6E4F7369;
      break;
    case 53:
      result = 0x6E61434743557369;
      break;
    case 54:
      result = 0x646E614333457369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD432B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4314F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD432BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD4325B8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD432BE8(uint64_t a1)
{
  v2 = sub_1DD4337F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD432C24(uint64_t a1)
{
  v2 = sub_1DD4337F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.SignalSet.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB98, &qword_1DD64A0F0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_44_5(a1);
  sub_1DD4337F0();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640EF8();
  v31[271] = 0;
  OUTLINED_FUNCTION_8_12();
  sub_1DD640C48();
  if (!v2)
  {
    memcpy(v31, (v4 + 8), 0x108uLL);
    memcpy(v30, (v4 + 8), sizeof(v30));
    v29[271] = 1;
    sub_1DD3C9478(v31, v29);
    sub_1DD4236C0();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    memcpy(v29, v30, 0x108uLL);
    sub_1DD3C9580(v29);
    *&v26[0] = *(v4 + 272);
    LOBYTE(v22) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    OUTLINED_FUNCTION_22_0();
    sub_1DD43994C(v10);
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();
    v11 = *(v4 + 320);
    LOBYTE(v26[0]) = *(v4 + 280);
    v12 = *(v4 + 304);
    *(v26 + 8) = *(v4 + 288);
    *(&v26[1] + 8) = v12;
    *(&v26[2] + 1) = v11;
    LOBYTE(v22) = 3;
    sub_1DD4338A8();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    OUTLINED_FUNCTION_2_21(4);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(5);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(6);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(7);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(8);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(9);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(10);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(11);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(12);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(13);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(14);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(15);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(16);
    sub_1DD640C28();
    OUTLINED_FUNCTION_13();
    sub_1DD640C38();
    OUTLINED_FUNCTION_13();
    sub_1DD640C38();
    OUTLINED_FUNCTION_2_21(19);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(20);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(21);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(22);
    sub_1DD640C28();
    OUTLINED_FUNCTION_2_21(23);
    sub_1DD640C48();
    OUTLINED_FUNCTION_2_21(24);
    sub_1DD640C48();
    OUTLINED_FUNCTION_2_21(25);
    sub_1DD640C48();
    v32 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD63F148();
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v13);
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    LOBYTE(v26[0]) = 27;
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    v28 = 28;
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    v14 = (v4 + *(v32 + 132));
    v15 = v14[1];
    v26[0] = *v14;
    v26[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v26[2] = v14[2];
    v27 = *(v14 + 6);
    v22 = v17;
    v23 = v16;
    v24 = v14[2];
    v25 = *(v14 + 6);
    v21[63] = 29;
    sub_1DD4338FC(v26, v21);
    sub_1DD433958();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    OUTLINED_FUNCTION_34_6();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_26_9();
    OUTLINED_FUNCTION_50_7();
    sub_1DD433A00();
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_50_7();
    v19 = sub_1DD433A54();

    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();

    if (!v19)
    {
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_26_9();
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_50_7();
      sub_1DD433AA8();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C68();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA8, &qword_1DD64A108);
      sub_1DD439CC0(&unk_1EE163948);
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_13();
      sub_1DD640C38();
      type metadata accessor for MegadomeEntityFeatures();
      OUTLINED_FUNCTION_24_7();
      sub_1DD433844(v20);
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
    }
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1DD4337F0()
{
  result = qword_1EE165800;
  if (!qword_1EE165800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165800);
  }

  return result;
}

unint64_t sub_1DD433844(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD4338A8()
{
  result = qword_1EE163CE8;
  if (!qword_1EE163CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CE8);
  }

  return result;
}

unint64_t sub_1DD433958()
{
  result = qword_1EE163D08;
  if (!qword_1EE163D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D08);
  }

  return result;
}

unint64_t sub_1DD433A00()
{
  result = qword_1EE165C18;
  if (!qword_1EE165C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165C18);
  }

  return result;
}

unint64_t sub_1DD433A54()
{
  result = qword_1EE165A20;
  if (!qword_1EE165A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A20);
  }

  return result;
}

unint64_t sub_1DD433AA8()
{
  result = qword_1EE165A50;
  if (!qword_1EE165A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A50);
  }

  return result;
}

uint64_t ContactResolver.SignalSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a1;
  v106 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v82 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBB0, &qword_1DD64A110);
  OUTLINED_FUNCTION_0();
  v107 = v11;
  v108 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v68 - v13;
  v14 = type metadata accessor for ContactResolver.SignalSet(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  *v18 = xmmword_1DD64A0D0;
  *(v18 + 16) = 0xE000000000000000;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0xE000000000000000;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0xE000000000000000;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0xE000000000000000;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0xE000000000000000;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0xE000000000000000;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0xE000000000000000;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0xE000000000000000;
  *(v18 + 160) = 0;
  *(v18 + 168) = 0xE000000000000000;
  *(v18 + 208) = 0u;
  *(v18 + 224) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 192) = 0u;
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 240) = 0;
  *(v18 + 248) = v19;
  *(v18 + 256) = 1;
  *(v18 + 264) = 0;
  *(v18 + 272) = v19;
  *(v18 + 280) = 0;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 320) = 0u;
  *(v17 - v16 + 333) = 0;
  *(v18 + 360) = 0;
  *(v18 + 344) = 0;
  *(v18 + 352) = 0;
  *(v18 + 376) = 0;
  *(v18 + 384) = 0;
  *(v18 + 368) = 0;
  v20 = v15[32];
  v21 = sub_1DD63F148();
  v72 = v20;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v73 = v15[33];
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v74 = v15[34];
  v75 = v21;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v21);
  v31 = v18 + v15[35];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 0u;
  v77 = v15[36];
  *(v18 + v77) = 0;
  v78 = v15[37];
  *(v18 + v78) = 0;
  v80 = v15[38];
  *(v18 + v80) = 0;
  v81 = v15[39];
  *(v18 + v81) = 0;
  v83 = v15[40];
  *(v18 + v83) = 0;
  v84 = v15[41];
  *(v18 + v84) = 0;
  v85 = v15[42];
  *(v18 + v85) = 0;
  v86 = v15[43];
  *(v18 + v86) = 0;
  v32 = v18 + v15[44];
  *v32 = 0;
  v87 = v32;
  *(v32 + 8) = 0;
  v33 = v18 + v15[45];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0xE000000000000000;
  v88 = v15[46];
  *(v18 + v88) = 0;
  v89 = v15[47];
  *(v18 + v89) = 0;
  v90 = v15[48];
  *(v18 + v90) = 0;
  v91 = v15[49];
  *(v18 + v91) = 0;
  v92 = v15[50];
  *(v18 + v92) = 0;
  v34 = v18 + v15[51];
  *v34 = 0;
  v93 = v34;
  *(v34 + 8) = 0;
  v35 = v18 + v15[52];
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  v94 = v15[53];
  *(v18 + v94) = 0;
  v95 = v15[54];
  *(v18 + v95) = v19;
  v96 = v15[55];
  *(v18 + v96) = 0;
  v97 = v15[56];
  *(v18 + v97) = 0;
  v98 = v15[57];
  *(v18 + v98) = 0;
  v99 = v15[58];
  *(v18 + v99) = 0;
  v100 = v15[59];
  *(v18 + v100) = 0;
  v101 = v15[60];
  *(v18 + v101) = 0;
  v102 = v15[61];
  *(v18 + v102) = 0;
  v103 = v15[62];
  *(v18 + v103) = 0;
  v36 = v15[63];
  v104 = type metadata accessor for MegadomeEntityFeatures();
  v37 = swift_allocObject();
  bzero((v37 + 16), 0x3B8uLL);
  v105 = v36;
  *(v18 + v36) = v37;
  __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  sub_1DD4337F0();
  v38 = v109;
  sub_1DD640ED8();
  if (!v38)
  {
    v69 = v31;
    v70 = v33;
    v71 = v35;
    v109 = v37;
    v39 = v107;
    v128[0] = 0;
    OUTLINED_FUNCTION_14_15();
    *v18 = sub_1DD640B58();
    v127[271] = 1;
    sub_1DD42366C();
    sub_1DD640B78();
    memcpy(v126, v128, sizeof(v126));
    memcpy(v127, (v18 + 8), 0x108uLL);
    sub_1DD3C9580(v127);
    memcpy((v18 + 8), v126, 0x108uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    LOBYTE(v121[0]) = 2;
    OUTLINED_FUNCTION_23_10();
    sub_1DD43994C(v40);
    sub_1DD640B78();
    *(v18 + 272) = *&v124[0];
    LOBYTE(v121[0]) = 3;
    sub_1DD439AAC();
    sub_1DD640B78();
    v42 = *(&v124[2] + 1);
    *(v18 + 280) = v124[0];
    v43 = *(&v124[1] + 8);
    *(v18 + 288) = *(v124 + 8);
    *(v18 + 304) = v43;
    *(v18 + 320) = v42;
    OUTLINED_FUNCTION_16_11(4);
    *(v18 + 328) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(5);
    OUTLINED_FUNCTION_14_15();
    *(v18 + 329) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(6);
    OUTLINED_FUNCTION_14_15();
    *(v18 + 330) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(7);
    OUTLINED_FUNCTION_14_15();
    *(v18 + 331) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(8);
    OUTLINED_FUNCTION_14_15();
    *(v18 + 332) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(9);
    OUTLINED_FUNCTION_14_15();
    *(v18 + 333) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(10);
    *(v18 + 334) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(11);
    *(v18 + 335) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(12);
    *(v18 + 336) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(13);
    *(v18 + 337) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(14);
    *(v18 + 338) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(15);
    *(v18 + 339) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(16);
    *(v18 + 340) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(17);
    sub_1DD640B48();
    *(v18 + 344) = v44;
    OUTLINED_FUNCTION_5_23(18);
    sub_1DD640B48();
    *(v18 + 352) = v45;
    OUTLINED_FUNCTION_5_23(19);
    *(v18 + 360) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(20);
    *(v18 + 361) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(21);
    *(v18 + 362) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(22);
    *(v18 + 363) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(23);
    *(v18 + 368) = sub_1DD640B58();
    OUTLINED_FUNCTION_5_23(24);
    *(v18 + 376) = sub_1DD640B58();
    OUTLINED_FUNCTION_5_23(25);
    *(v18 + 384) = sub_1DD640B58();
    LOBYTE(v124[0]) = 26;
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v46);
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v76, v18 + v72);
    LOBYTE(v124[0]) = 27;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v79, v18 + v73);
    LOBYTE(v124[0]) = 28;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v82, v18 + v74);
    v123 = 29;
    sub_1DD439B70();
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v117 = v124[0];
    v118 = v124[1];
    v119 = v124[2];
    v120 = v125;
    v47 = v69;
    v48 = *(v69 + 16);
    v121[0] = *v69;
    v121[1] = v48;
    v121[2] = *(v69 + 32);
    v122 = *(v69 + 48);
    sub_1DD4339AC(v121);
    v49 = v118;
    *v47 = v117;
    *(v47 + 16) = v49;
    *(v47 + 32) = v119;
    *(v47 + 48) = v120;
    OUTLINED_FUNCTION_3_20(30);
    *(v18 + v77) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(31);
    *(v18 + v78) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(32);
    *(v18 + v80) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(33);
    *(v18 + v81) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(34);
    *(v18 + v83) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(35);
    *(v18 + v84) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(36);
    *(v18 + v85) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(37);
    *(v18 + v86) = sub_1DD640B38() & 1;
    v116 = 38;
    sub_1DD439BC4();
    OUTLINED_FUNCTION_17_13();
    v86 = v50;
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v51 = v112;
    v52 = v113;
    v53 = v87;
    *v87 = v111;
    *(v53 + 8) = v51;
    *(v53 + 9) = v52;
    v116 = 39;
    sub_1DD439C18();
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v54 = v111;
    v55 = v112;
    v56 = v114;
    v57 = v115;
    v58 = v70;

    *v58 = v54;
    *(v58 + 8) = v55;
    *(v58 + 16) = v56;
    *(v58 + 24) = v57;
    OUTLINED_FUNCTION_3_20(40);
    *(v18 + v88) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(41);
    *(v18 + v89) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(42);
    *(v18 + v90) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(43);
    *(v18 + v91) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(44);
    *(v18 + v92) = sub_1DD640B38() & 1;
    v116 = 45;
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v59 = v112;
    v60 = v113;
    v61 = v93;
    *v93 = v111;
    *(v61 + 8) = v59;
    *(v61 + 9) = v60;
    v116 = 46;
    sub_1DD439C6C();
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v62 = v112;
    v63 = v114;
    v64 = v71;
    *v71 = v111;
    *(v64 + 8) = v62;
    v64[2] = v63;
    *(v18 + v94) = OUTLINED_FUNCTION_55_4(47) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA8, &qword_1DD64A108);
    v116 = 48;
    sub_1DD439CC0(&unk_1EE160318);
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    *(v18 + v95) = v111;
    *(v18 + v96) = OUTLINED_FUNCTION_55_4(49) & 1;
    OUTLINED_FUNCTION_3_20(50);
    *(v18 + v97) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(51);
    *(v18 + v98) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(52);
    *(v18 + v99) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(53);
    *(v18 + v100) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(54);
    *(v18 + v101) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(55);
    *(v18 + v102) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(56);
    sub_1DD640B48();
    *(v18 + v103) = v65;
    v116 = 57;
    OUTLINED_FUNCTION_24_7();
    sub_1DD433844(v66);
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    (*(v39 + 8))(v110, v108);

    v67 = v106;
    *(v18 + v105) = v111;
    sub_1DD439FE4(v18, v67, type metadata accessor for ContactResolver.SignalSet);
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
  return sub_1DD439F90();
}

uint64_t static ContactResolver.BackgroundSignalSet.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_1DD3C3E7C(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD434AA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD66BD70 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000021 && 0x80000001DD66BD90 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001DD66B9A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

unint64_t sub_1DD434BC0(char a1)
{
  result = 0xD000000000000017;
  if (a1 == 1)
  {
    return 0xD000000000000021;
  }

  return result;
}

uint64_t sub_1DD434C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD434AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD434C44(uint64_t a1)
{
  v2 = sub_1DD439D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD434C80(uint64_t a1)
{
  v2 = sub_1DD439D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactResolver.BackgroundSignalSet.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_42_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBB8, &qword_1DD64A118);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v13 = *(v1 + 16);
  OUTLINED_FUNCTION_44_5(v4);
  sub_1DD439D44();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640EF8();
  v17 = 0;
  sub_1DD640C28();
  if (!v2)
  {
    v11 = v13;
    v16 = 1;
    sub_1DD640C38();
    v15 = v11;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    OUTLINED_FUNCTION_22_0();
    sub_1DD439E40(v12);
    sub_1DD640C68();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_43_6();
}

void ContactResolver.BackgroundSignalSet.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_42_4();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC8, &qword_1DD64A130);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_44_5(v3);
  sub_1DD439D44();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (!v1)
  {
    OUTLINED_FUNCTION_4_18();
    v7 = sub_1DD640B38();
    sub_1DD640B48();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    OUTLINED_FUNCTION_23_10();
    sub_1DD439E40(v10);
    sub_1DD640B78();
    v11 = OUTLINED_FUNCTION_41();
    v12(v11);
    *v5 = v7 & 1;
    *(v5 + 8) = v9;
    *(v5 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);

  OUTLINED_FUNCTION_43_6();
}

uint64_t static ContactResolver.HandleSignalSet.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_22_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB88, &qword_1DD64A0E8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_6();
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    goto LABEL_22;
  }

  v17 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v18 = *(v17 + 36);
  v19 = *(v15 + 48);
  sub_1DD4313E0(&a1[v18], v2);
  sub_1DD4313E0(&a2[v18], v2 + v19);
  OUTLINED_FUNCTION_105(v2);
  if (!v20)
  {
    sub_1DD4313E0(v2, v3);
    OUTLINED_FUNCTION_105(v2 + v19);
    if (!v20)
    {
      (*(v8 + 32))(v12, v2 + v19, v6);
      OUTLINED_FUNCTION_1_29();
      sub_1DD433844(v21);
      v22 = sub_1DD63FD98();
      v23 = *(v8 + 8);
      v23(v12, v6);
      v23(v3, v6);
      sub_1DD390754(v2, &qword_1ECCDCB80, &qword_1DD64A0E0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    (*(v8 + 8))(v3, v6);
LABEL_13:
    sub_1DD390754(v2, &qword_1ECCDCB88, &qword_1DD64A0E8);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105(v2 + v19);
  if (!v20)
  {
    goto LABEL_13;
  }

  sub_1DD390754(v2, &qword_1ECCDCB80, &qword_1DD64A0E0);
LABEL_15:
  OUTLINED_FUNCTION_30();
  if (v20)
  {
    OUTLINED_FUNCTION_30();
    if (v20)
    {
      OUTLINED_FUNCTION_30();
      if (v20)
      {
        OUTLINED_FUNCTION_30();
        if (v20)
        {
          v24 = a1[*(v17 + 56)] ^ a2[*(v17 + 56)] ^ 1;
          return v24 & 1;
        }
      }
    }
  }

LABEL_22:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1DD4353D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD66BDC0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD66BDE0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D79726575517369 && a2 == 0xEC00000068637461;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD66BE00 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7265666572507369 && a2 == 0xEF65707954646572;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65776F6C6C417369 && a2 == 0xED00006570795464;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6954656361467369 && a2 == 0xEE00656C6261656DLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000011 && 0x80000001DD66BE20 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_1DD43575C(char a1)
{
  result = 0x69726F7661467369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4D79726575517369;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x5379726F74736968;
      break;
    case 6:
      result = 0x746E656365527369;
      break;
    case 7:
      result = 0x7265666572507369;
      break;
    case 8:
      result = 0x65776F6C6C417369;
      break;
    case 9:
      result = 0x6954656361467369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DD4358CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4353D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4358F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD435754();
  *a1 = result;
  return result;
}

uint64_t sub_1DD43591C(uint64_t a1)
{
  v2 = sub_1DD439F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD435958(uint64_t a1)
{
  v2 = sub_1DD439F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.HandleSignalSet.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBD0, &qword_1DD64A138);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_6();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1DD439F3C();
  OUTLINED_FUNCTION_47_5(&_s14descr1F58A7859O15HandleSignalSetV10CodingKeysON, v11, v10);
  v12 = *v4;
  v34 = 0;
  OUTLINED_FUNCTION_18_12(v12, &v34);
  if (!v2)
  {
    v13 = v4[1];
    v33 = 1;
    OUTLINED_FUNCTION_18_12(v13, &v33);
    v14 = v4[2];
    v32 = 2;
    OUTLINED_FUNCTION_18_12(v14, &v32);
    v15 = v4[3];
    v31 = 3;
    OUTLINED_FUNCTION_18_12(v15, &v31);
    v16 = v4[4];
    v30 = 4;
    OUTLINED_FUNCTION_18_12(v16, &v30);
    v17 = type metadata accessor for ContactResolver.HandleSignalSet(0);
    v29[1] = 5;
    sub_1DD63F148();
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v18);
    sub_1DD640C08();
    v19 = v4[v17[10]];
    v29[0] = 6;
    OUTLINED_FUNCTION_18_12(v19, v29);
    v20 = v4[v17[11]];
    v28 = 7;
    OUTLINED_FUNCTION_18_12(v20, &v28);
    v21 = v4[v17[12]];
    v27 = 8;
    OUTLINED_FUNCTION_18_12(v21, &v27);
    v22 = v4[v17[13]];
    v26 = 9;
    OUTLINED_FUNCTION_18_12(v22, &v26);
    v23 = v4[v17[14]];
    v25 = 10;
    OUTLINED_FUNCTION_18_12(v23, &v25);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ContactResolver.HandleSignalSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v39 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBD8, &qword_1DD64A140);
  OUTLINED_FUNCTION_0();
  v46 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  v14[4] = 0;
  *v14 = 0;
  v15 = v11[11];
  v16 = sub_1DD63F148();
  v44 = v15;
  v45 = v16;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v43 = v11[12];
  v14[v43] = 0;
  v21 = v11[13];
  v14[v21] = 0;
  v22 = v11[14];
  v14[v22] = 0;
  v23 = v11[15];
  v14[v23] = 0;
  v24 = v11[16];
  v50 = a1;
  v51 = v14;
  v14[v24] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD439F3C();
  v25 = v49;
  sub_1DD640ED8();
  if (!v25)
  {
    v49 = v21;
    v40 = v24;
    v41 = v22;
    v27 = v46;
    v26 = v47;
    v61 = 0;
    v28 = OUTLINED_FUNCTION_21_7(&v61);
    v30 = v51;
    *v51 = v28 & 1;
    v60 = 1;
    v30[1] = OUTLINED_FUNCTION_21_7(&v60) & 1;
    v59 = 2;
    v30[2] = OUTLINED_FUNCTION_21_7(&v59) & 1;
    v58 = 3;
    v30[3] = OUTLINED_FUNCTION_21_7(&v58) & 1;
    v57 = 4;
    v30[4] = OUTLINED_FUNCTION_21_7(&v57) & 1;
    v56[1] = 5;
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v31);
    sub_1DD640B18();
    sub_1DD439B00(v26, &v30[v44]);
    v56[0] = 6;
    v32 = OUTLINED_FUNCTION_21_7(v56);
    v30[v43] = v32 & 1;
    v55 = 7;
    v33 = OUTLINED_FUNCTION_21_7(&v55);
    v30[v49] = v33 & 1;
    v54 = 8;
    v34 = OUTLINED_FUNCTION_21_7(&v54);
    v30[v41] = v34 & 1;
    v53 = 9;
    v35 = sub_1DD640B38();
    v36 = v51;
    v51[v23] = v35 & 1;
    v52 = 10;
    v37 = v48;
    v38 = sub_1DD640B38();
    (*(v27 + 8))(v9, v37);
    *(v36 + v40) = v38 & 1;
    sub_1DD439FE4(v36, v42, type metadata accessor for ContactResolver.HandleSignalSet);
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1DD439F90();
}

uint64_t sub_1DD43610C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DD66BE40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s13SiriInference0A15SignalsFeaturesO9hashValueSivg_0()
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD4361F4(uint64_t a1)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD436238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD43610C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD436264(uint64_t a1)
{
  v2 = sub_1DD43A044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4362A0(uint64_t a1)
{
  v2 = sub_1DD43A044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.BackgroundHandleSignalSet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBE0, &qword_1DD64A148);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DD43A044();
  OUTLINED_FUNCTION_47_5(&_s14descr1F58A7859O25BackgroundHandleSignalSetV10CodingKeysON, v8, v7);
  sub_1DD640C38();
  return (*(v5 + 8))(v1, v3);
}

void ContactResolver.BackgroundHandleSignalSet.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_42_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBF0, &qword_1DD64A150);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_44_5(v4);
  sub_1DD43A044();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (!v1)
  {
    sub_1DD640B48();
    v12 = v11;
    (*(v9 + 8))(v2, v7);
    *v6 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_43_6();
}

uint64_t sub_1DD436544(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD6675B0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD6675D0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001DD6675F0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD667610 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000001DD667630 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001DD667650 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F63536369706F74 && a2 == 0xEA00000000006572;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001DD667680 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x80000001DD6676A0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000020 && 0x80000001DD6676C0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001DD6676F0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001DD667710 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000020 && 0x80000001DD667730 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001FLL && 0x80000001DD667760 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001CLL && 0x80000001DD667780 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000020 && 0x80000001DD6677A0 == a2;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000025 && 0x80000001DD6677D0 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000022 && 0x80000001DD667800 == a2;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000026 && 0x80000001DD667830 == a2;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000025 && 0x80000001DD667860 == a2;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000022 && 0x80000001DD667890 == a2;
                                          if (v25 || (sub_1DD640CD8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000026 && 0x80000001DD6678C0 == a2;
                                            if (v26 || (sub_1DD640CD8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000025 && 0x80000001DD6678F0 == a2;
                                              if (v27 || (sub_1DD640CD8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000022 && 0x80000001DD667920 == a2;
                                                if (v28 || (sub_1DD640CD8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000026 && 0x80000001DD667950 == a2;
                                                  if (v29 || (sub_1DD640CD8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001FLL && 0x80000001DD667980 == a2;
                                                    if (v30 || (sub_1DD640CD8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001CLL && 0x80000001DD6679A0 == a2;
                                                      if (v31 || (sub_1DD640CD8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000020 && 0x80000001DD6679C0 == a2;
                                                        if (v32 || (sub_1DD640CD8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001FLL && 0x80000001DD6679F0 == a2;
                                                          if (v33 || (sub_1DD640CD8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD00000000000001CLL && 0x80000001DD667A10 == a2;
                                                            if (v34 || (sub_1DD640CD8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000020 && 0x80000001DD667A30 == a2;
                                                              if (v35 || (sub_1DD640CD8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001FLL && 0x80000001DD667A60 == a2;
                                                                if (v36 || (sub_1DD640CD8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001CLL && 0x80000001DD667A80 == a2;
                                                                  if (v37 || (sub_1DD640CD8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000020 && 0x80000001DD667AA0 == a2;
                                                                    if (v38 || (sub_1DD640CD8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001FLL && 0x80000001DD667AD0 == a2;
                                                                      if (v39 || (sub_1DD640CD8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001CLL && 0x80000001DD667AF0 == a2;
                                                                        if (v40 || (sub_1DD640CD8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000020 && 0x80000001DD667B10 == a2;
                                                                          if (v41 || (sub_1DD640CD8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD00000000000001FLL && 0x80000001DD667B40 == a2;
                                                                            if (v42 || (sub_1DD640CD8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000001CLL && 0x80000001DD667B60 == a2;
                                                                              if (v43 || (sub_1DD640CD8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000020 && 0x80000001DD667B80 == a2;
                                                                                if (v44 || (sub_1DD640CD8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001FLL && 0x80000001DD667BB0 == a2;
                                                                                  if (v45 || (sub_1DD640CD8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001CLL && 0x80000001DD667BD0 == a2;
                                                                                    if (v46 || (sub_1DD640CD8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000020 && 0x80000001DD667BF0 == a2;
                                                                                      if (v47 || (sub_1DD640CD8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000019 && 0x80000001DD667C20 == a2;
                                                                                        if (v48 || (sub_1DD640CD8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000016 && 0x80000001DD667C40 == a2;
                                                                                          if (v49 || (sub_1DD640CD8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD00000000000001ALL && 0x80000001DD667C60 == a2;
                                                                                            if (v50 || (sub_1DD640CD8() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000019 && 0x80000001DD667C80 == a2;
                                                                                              if (v51 || (sub_1DD640CD8() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0xD000000000000016 && 0x80000001DD667CA0 == a2;
                                                                                                if (v52 || (sub_1DD640CD8() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD00000000000001ALL && 0x80000001DD667CC0 == a2;
                                                                                                  if (v53 || (sub_1DD640CD8() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000019 && 0x80000001DD667CE0 == a2;
                                                                                                    if (v54 || (sub_1DD640CD8() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD000000000000016 && 0x80000001DD667D00 == a2;
                                                                                                      if (v55 || (sub_1DD640CD8() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD00000000000001ALL && 0x80000001DD667D20 == a2;
                                                                                                        if (v56 || (sub_1DD640CD8() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD000000000000025 && 0x80000001DD667D40 == a2;
                                                                                                          if (v57 || (sub_1DD640CD8() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000022 && 0x80000001DD667D70 == a2;
                                                                                                            if (v58 || (sub_1DD640CD8() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0xD000000000000026 && 0x80000001DD667DA0 == a2;
                                                                                                              if (v59 || (sub_1DD640CD8() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000025 && 0x80000001DD667DD0 == a2;
                                                                                                                if (v60 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000022 && 0x80000001DD667E00 == a2;
                                                                                                                  if (v61 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000026 && 0x80000001DD667E30 == a2;
                                                                                                                    if (v62 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000025 && 0x80000001DD667E60 == a2;
                                                                                                                      if (v63 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000022 && 0x80000001DD667E90 == a2;
                                                                                                                        if (v64 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000026 && 0x80000001DD667EC0 == a2;
                                                                                                                          if (v65 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD000000000000023 && 0x80000001DD667EF0 == a2;
                                                                                                                            if (v66 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0xD000000000000020 && 0x80000001DD667F20 == a2;
                                                                                                                              if (v67 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0xD000000000000024 && 0x80000001DD667F50 == a2;
                                                                                                                                if (v68 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD000000000000023 && 0x80000001DD667F80 == a2;
                                                                                                                                  if (v69 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD000000000000020 && 0x80000001DD667FB0 == a2;
                                                                                                                                    if (v70 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000024 && 0x80000001DD667FE0 == a2;
                                                                                                                                      if (v71 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000023 && 0x80000001DD668010 == a2;
                                                                                                                                        if (v72 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000020 && 0x80000001DD668040 == a2;
                                                                                                                                          if (v73 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000024 && 0x80000001DD668070 == a2;
                                                                                                                                            if (v74 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD000000000000022 && 0x80000001DD6680A0 == a2;
                                                                                                                                              if (v75 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD00000000000001FLL && 0x80000001DD6680D0 == a2;
                                                                                                                                                if (v76 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD000000000000023 && 0x80000001DD6680F0 == a2;
                                                                                                                                                  if (v77 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD000000000000022 && 0x80000001DD668120 == a2;
                                                                                                                                                    if (v78 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v79 = a1 == 0xD00000000000001FLL && 0x80000001DD668150 == a2;
                                                                                                                                                      if (v79 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v80 = a1 == 0xD000000000000023 && 0x80000001DD668170 == a2;
                                                                                                                                                        if (v80 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v81 = a1 == 0xD000000000000022 && 0x80000001DD6681A0 == a2;
                                                                                                                                                          if (v81 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v82 = a1 == 0xD00000000000001FLL && 0x80000001DD6681D0 == a2;
                                                                                                                                                            if (v82 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v83 = a1 == 0xD000000000000023 && 0x80000001DD6681F0 == a2;
                                                                                                                                                              if (v83 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v84 = a1 == 0xD000000000000023 && 0x80000001DD668220 == a2;
                                                                                                                                                                if (v84 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v85 = a1 == 0xD000000000000020 && 0x80000001DD668250 == a2;
                                                                                                                                                                  if (v85 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v86 = a1 == 0xD000000000000024 && 0x80000001DD668280 == a2;
                                                                                                                                                                    if (v86 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v87 = a1 == 0xD000000000000023 && 0x80000001DD6682B0 == a2;
                                                                                                                                                                      if (v87 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v88 = a1 == 0xD000000000000020 && 0x80000001DD6682E0 == a2;
                                                                                                                                                                        if (v88 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          return 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v89 = a1 == 0xD000000000000024 && 0x80000001DD668310 == a2;
                                                                                                                                                                          if (v89 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            return 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v90 = a1 == 0xD000000000000023 && 0x80000001DD668340 == a2;
                                                                                                                                                                            if (v90 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              return 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v91 = a1 == 0xD000000000000020 && 0x80000001DD668370 == a2;
                                                                                                                                                                              if (v91 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                return 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v92 = a1 == 0xD000000000000024 && 0x80000001DD6683A0 == a2;
                                                                                                                                                                                if (v92 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  return 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v93 = a1 == 0xD000000000000021 && 0x80000001DD6683D0 == a2;
                                                                                                                                                                                  if (v93 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    return 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v94 = a1 == 0xD00000000000001ELL && 0x80000001DD668400 == a2;
                                                                                                                                                                                    if (v94 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      return 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v95 = a1 == 0xD000000000000022 && 0x80000001DD668420 == a2;
                                                                                                                                                                                      if (v95 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        return 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v96 = a1 == 0xD000000000000021 && 0x80000001DD668450 == a2;
                                                                                                                                                                                        if (v96 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          return 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v97 = a1 == 0xD00000000000001ELL && 0x80000001DD668480 == a2;
                                                                                                                                                                                          if (v97 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            return 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v98 = a1 == 0xD000000000000022 && 0x80000001DD6684A0 == a2;
                                                                                                                                                                                            if (v98 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              return 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v99 = a1 == 0xD000000000000021 && 0x80000001DD6684D0 == a2;
                                                                                                                                                                                              if (v99 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                return 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v100 = a1 == 0xD00000000000001ELL && 0x80000001DD668500 == a2;
                                                                                                                                                                                                if (v100 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  return 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v101 = a1 == 0xD000000000000022 && 0x80000001DD668520 == a2;
                                                                                                                                                                                                  if (v101 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    return 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v102 = a1 == 0xD00000000000001ALL && 0x80000001DD668550 == a2;
                                                                                                                                                                                                    if (v102 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      return 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v103 = a1 == 0xD000000000000017 && 0x80000001DD668570 == a2;
                                                                                                                                                                                                      if (v103 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        return 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v104 = a1 == 0xD00000000000001BLL && 0x80000001DD668590 == a2;
                                                                                                                                                                                                        if (v104 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v105 = a1 == 0xD00000000000001ALL && 0x80000001DD6685B0 == a2;
                                                                                                                                                                                                          if (v105 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                          {

                                                                                                                                                                                                            return 100;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v106 = a1 == 0xD000000000000017 && 0x80000001DD6685D0 == a2;
                                                                                                                                                                                                            if (v106 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                            {

                                                                                                                                                                                                              return 101;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v107 = a1 == 0xD00000000000001BLL && 0x80000001DD6685F0 == a2;
                                                                                                                                                                                                              if (v107 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                              {

                                                                                                                                                                                                                return 102;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v108 = a1 == 0xD00000000000001ALL && 0x80000001DD668610 == a2;
                                                                                                                                                                                                                if (v108 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                {

                                                                                                                                                                                                                  return 103;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v109 = a1 == 0xD000000000000017 && 0x80000001DD668630 == a2;
                                                                                                                                                                                                                  if (v109 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                  {

                                                                                                                                                                                                                    return 104;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v110 = a1 == 0xD00000000000001BLL && 0x80000001DD668650 == a2;
                                                                                                                                                                                                                    if (v110 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                    {

                                                                                                                                                                                                                      return 105;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v111 = a1 == 0xD00000000000001ELL && 0x80000001DD668670 == a2;
                                                                                                                                                                                                                      if (v111 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                      {

                                                                                                                                                                                                                        return 106;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v112 = a1 == 0xD00000000000001BLL && 0x80000001DD668690 == a2;
                                                                                                                                                                                                                        if (v112 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                        {

                                                                                                                                                                                                                          return 107;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v113 = a1 == 0xD00000000000001FLL && 0x80000001DD6686B0 == a2;
                                                                                                                                                                                                                          if (v113 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                          {

                                                                                                                                                                                                                            return 108;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v114 = a1 == 0xD00000000000001ELL && 0x80000001DD6686D0 == a2;
                                                                                                                                                                                                                            if (v114 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                            {

                                                                                                                                                                                                                              return 109;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v115 = a1 == 0xD00000000000001BLL && 0x80000001DD6686F0 == a2;
                                                                                                                                                                                                                              if (v115 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                return 110;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v116 = a1 == 0xD00000000000001FLL && 0x80000001DD668710 == a2;
                                                                                                                                                                                                                                if (v116 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                  return 111;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v117 = a1 == 0xD000000000000010 && 0x80000001DD668730 == a2;
                                                                                                                                                                                                                                  if (v117 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                    return 112;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v118 = a1 == 0xD000000000000022 && 0x80000001DD668750 == a2;
                                                                                                                                                                                                                                    if (v118 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                      return 113;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v119 = a1 == 0xD000000000000010 && 0x80000001DD668780 == a2;
                                                                                                                                                                                                                                      if (v119 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                        return 114;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v120 = a1 == 0xD000000000000010 && 0x80000001DD6687A0 == a2;
                                                                                                                                                                                                                                        if (v120 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                          return 115;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v121 = a1 == 0xD00000000000001BLL && 0x80000001DD6687C0 == a2;
                                                                                                                                                                                                                                          if (v121 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                            return 116;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v122 = a1 == 0xD000000000000012 && 0x80000001DD6687E0 == a2;
                                                                                                                                                                                                                                            if (v122 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                              return 117;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else if (a1 == 0xD00000000000001ALL && 0x80000001DD668800 == a2)
                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                              return 118;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v124 = sub_1DD640CD8();

                                                                                                                                                                                                                                              if (v124)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return 118;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return 119;
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

unint64_t sub_1DD438634(char a1)
{
  result = 0x6F63536369706F74;
  switch(a1)
  {
    case 1:
    case 4:
    case 99:
    case 102:
    case 105:
    case 107:
    case 110:
    case 116:
      result = 0xD00000000000001BLL;
      break;
    case 2:
    case 45:
    case 48:
    case 51:
    case 97:
    case 100:
    case 103:
    case 118:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 44:
    case 47:
    case 50:
      result = 0xD000000000000016;
      break;
    case 5:
    case 98:
    case 101:
    case 104:
      result = 0xD000000000000017;
      break;
    case 6:
      return result;
    case 7:
    case 10:
    case 13:
    case 25:
    case 28:
    case 31:
    case 34:
    case 37:
    case 40:
    case 71:
    case 74:
    case 77:
    case 108:
    case 111:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 11:
    case 14:
    case 26:
    case 29:
    case 32:
    case 35:
    case 38:
    case 41:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    case 16:
    case 19:
    case 22:
    case 52:
    case 55:
    case 58:
      result = 0xD000000000000025;
      break;
    case 17:
    case 20:
    case 23:
    case 53:
    case 56:
    case 59:
    case 70:
    case 73:
    case 76:
    case 90:
    case 93:
    case 96:
    case 113:
      result = 0xD000000000000022;
      break;
    case 18:
    case 21:
    case 24:
    case 54:
    case 57:
    case 60:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000020;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 33:
      result = 0xD000000000000020;
      break;
    case 36:
      result = 0xD000000000000020;
      break;
    case 39:
      result = 0xD000000000000020;
      break;
    case 42:
      result = 0xD000000000000020;
      break;
    case 43:
    case 46:
    case 49:
      result = 0xD000000000000019;
      break;
    case 61:
    case 64:
    case 67:
    case 72:
    case 75:
    case 78:
    case 79:
    case 82:
    case 85:
      result = 0xD000000000000023;
      break;
    case 62:
      result = 0xD000000000000020;
      break;
    case 63:
    case 66:
    case 69:
    case 81:
    case 84:
    case 87:
      result = 0xD000000000000024;
      break;
    case 65:
      result = 0xD000000000000020;
      break;
    case 68:
      result = 0xD000000000000020;
      break;
    case 80:
      result = 0xD000000000000020;
      break;
    case 83:
      result = 0xD000000000000020;
      break;
    case 86:
      result = 0xD000000000000020;
      break;
    case 88:
    case 91:
    case 94:
      result = 0xD000000000000021;
      break;
    case 89:
    case 92:
    case 95:
    case 106:
    case 109:
      result = 0xD00000000000001ELL;
      break;
    case 112:
    case 114:
    case 115:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DD438DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD436544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD438DF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD43862C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD438E18(uint64_t a1)
{
  v2 = sub_1DD43A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD438E54(uint64_t a1)
{
  v2 = sub_1DD43A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD438EA8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBF8, &qword_1DD64A158);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_6();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1DD43A098();
  OUTLINED_FUNCTION_47_5(&type metadata for MegadomeEntityFeatures.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_12_16();
  sub_1DD640C38();
  if (!v1)
  {
    OUTLINED_FUNCTION_6_19(1);
    OUTLINED_FUNCTION_6_19(2);
    OUTLINED_FUNCTION_6_19(3);
    OUTLINED_FUNCTION_6_19(4);
    OUTLINED_FUNCTION_6_19(5);
    OUTLINED_FUNCTION_6_19(6);
    OUTLINED_FUNCTION_6_19(7);
    OUTLINED_FUNCTION_6_19(8);
    OUTLINED_FUNCTION_6_19(9);
    OUTLINED_FUNCTION_6_19(10);
    OUTLINED_FUNCTION_6_19(11);
    OUTLINED_FUNCTION_6_19(12);
    OUTLINED_FUNCTION_6_19(13);
    OUTLINED_FUNCTION_6_19(14);
    OUTLINED_FUNCTION_6_19(15);
    OUTLINED_FUNCTION_6_19(16);
    OUTLINED_FUNCTION_6_19(17);
    OUTLINED_FUNCTION_6_19(18);
    OUTLINED_FUNCTION_6_19(19);
    OUTLINED_FUNCTION_6_19(20);
    OUTLINED_FUNCTION_6_19(21);
    OUTLINED_FUNCTION_6_19(22);
    OUTLINED_FUNCTION_6_19(23);
    OUTLINED_FUNCTION_6_19(24);
    OUTLINED_FUNCTION_6_19(25);
    OUTLINED_FUNCTION_6_19(26);
    OUTLINED_FUNCTION_6_19(27);
    OUTLINED_FUNCTION_6_19(28);
    OUTLINED_FUNCTION_6_19(29);
    OUTLINED_FUNCTION_6_19(30);
    OUTLINED_FUNCTION_6_19(31);
    OUTLINED_FUNCTION_6_19(32);
    OUTLINED_FUNCTION_6_19(33);
    OUTLINED_FUNCTION_6_19(34);
    OUTLINED_FUNCTION_6_19(35);
    OUTLINED_FUNCTION_6_19(36);
    OUTLINED_FUNCTION_6_19(37);
    OUTLINED_FUNCTION_6_19(38);
    OUTLINED_FUNCTION_6_19(39);
    OUTLINED_FUNCTION_6_19(40);
    OUTLINED_FUNCTION_6_19(41);
    OUTLINED_FUNCTION_6_19(42);
    OUTLINED_FUNCTION_6_19(43);
    OUTLINED_FUNCTION_6_19(44);
    OUTLINED_FUNCTION_6_19(45);
    OUTLINED_FUNCTION_6_19(46);
    OUTLINED_FUNCTION_6_19(47);
    OUTLINED_FUNCTION_6_19(48);
    OUTLINED_FUNCTION_6_19(49);
    OUTLINED_FUNCTION_6_19(50);
    OUTLINED_FUNCTION_6_19(51);
    OUTLINED_FUNCTION_6_19(52);
    OUTLINED_FUNCTION_6_19(53);
    OUTLINED_FUNCTION_6_19(54);
    OUTLINED_FUNCTION_6_19(55);
    OUTLINED_FUNCTION_6_19(56);
    OUTLINED_FUNCTION_6_19(57);
    OUTLINED_FUNCTION_6_19(58);
    OUTLINED_FUNCTION_6_19(59);
    OUTLINED_FUNCTION_6_19(60);
    OUTLINED_FUNCTION_6_19(61);
    OUTLINED_FUNCTION_6_19(62);
    OUTLINED_FUNCTION_6_19(63);
    OUTLINED_FUNCTION_6_19(64);
    OUTLINED_FUNCTION_6_19(65);
    OUTLINED_FUNCTION_6_19(66);
    OUTLINED_FUNCTION_6_19(67);
    OUTLINED_FUNCTION_6_19(68);
    OUTLINED_FUNCTION_6_19(69);
    OUTLINED_FUNCTION_6_19(70);
    OUTLINED_FUNCTION_6_19(71);
    OUTLINED_FUNCTION_6_19(72);
    OUTLINED_FUNCTION_6_19(73);
    OUTLINED_FUNCTION_6_19(74);
    OUTLINED_FUNCTION_6_19(75);
    OUTLINED_FUNCTION_6_19(76);
    OUTLINED_FUNCTION_6_19(77);
    OUTLINED_FUNCTION_6_19(78);
    OUTLINED_FUNCTION_6_19(79);
    OUTLINED_FUNCTION_6_19(80);
    OUTLINED_FUNCTION_6_19(81);
    OUTLINED_FUNCTION_6_19(82);
    OUTLINED_FUNCTION_6_19(83);
    OUTLINED_FUNCTION_6_19(84);
    OUTLINED_FUNCTION_6_19(85);
    OUTLINED_FUNCTION_6_19(86);
    OUTLINED_FUNCTION_6_19(87);
    OUTLINED_FUNCTION_6_19(88);
    OUTLINED_FUNCTION_6_19(89);
    OUTLINED_FUNCTION_6_19(90);
    OUTLINED_FUNCTION_6_19(91);
    OUTLINED_FUNCTION_6_19(92);
    OUTLINED_FUNCTION_6_19(93);
    OUTLINED_FUNCTION_6_19(94);
    OUTLINED_FUNCTION_6_19(95);
    OUTLINED_FUNCTION_6_19(96);
    OUTLINED_FUNCTION_6_19(97);
    OUTLINED_FUNCTION_6_19(98);
    OUTLINED_FUNCTION_6_19(99);
    OUTLINED_FUNCTION_6_19(100);
    OUTLINED_FUNCTION_6_19(101);
    OUTLINED_FUNCTION_6_19(102);
    OUTLINED_FUNCTION_6_19(103);
    OUTLINED_FUNCTION_6_19(104);
    OUTLINED_FUNCTION_6_19(105);
    OUTLINED_FUNCTION_6_19(106);
    OUTLINED_FUNCTION_6_19(107);
    OUTLINED_FUNCTION_6_19(108);
    OUTLINED_FUNCTION_6_19(109);
    OUTLINED_FUNCTION_6_19(110);
    OUTLINED_FUNCTION_6_19(111);
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C48();
    OUTLINED_FUNCTION_6_19(115);
    OUTLINED_FUNCTION_6_19(116);
    OUTLINED_FUNCTION_6_19(117);
    OUTLINED_FUNCTION_6_19(118);
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1DD43994C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    sub_1DD4399B8(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD4399B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD415C6C();
    sub_1DD415820();
    sub_1DD433844(&unk_1EE1658F8);
    sub_1DD433844(&unk_1EE165900);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439AAC()
{
  result = qword_1EE160AA8[0];
  if (!qword_1EE160AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE160AA8);
  }

  return result;
}

uint64_t sub_1DD439B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD439B70()
{
  result = qword_1EE161348[0];
  if (!qword_1EE161348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161348);
  }

  return result;
}

unint64_t sub_1DD439BC4()
{
  result = qword_1EE1632F0;
  if (!qword_1EE1632F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632F0);
  }

  return result;
}

unint64_t sub_1DD439C18()
{
  result = qword_1EE163280;
  if (!qword_1EE163280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163280);
  }

  return result;
}

unint64_t sub_1DD439C6C()
{
  result = qword_1EE163288;
  if (!qword_1EE163288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163288);
  }

  return result;
}

unint64_t sub_1DD439CC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBA8, &qword_1DD64A108);
    sub_1DD433844(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439D44()
{
  result = qword_1EE165838[0];
  if (!qword_1EE165838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165838);
  }

  return result;
}

unint64_t sub_1DD439D98()
{
  result = qword_1EE165810;
  if (!qword_1EE165810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165810);
  }

  return result;
}

unint64_t sub_1DD439DEC()
{
  result = qword_1EE165818;
  if (!qword_1EE165818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165818);
  }

  return result;
}

unint64_t sub_1DD439E40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_41_4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCBC0, &unk_1DD64A120);
    sub_1DD439EAC(v2);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439EAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
    sub_1DD415C6C();
    sub_1DD415820();
    sub_1DD439D98();
    sub_1DD439DEC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD439F3C()
{
  result = qword_1EE165918;
  if (!qword_1EE165918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165918);
  }

  return result;
}

uint64_t sub_1DD439F90()
{
  v1 = OUTLINED_FUNCTION_43();
  v2(v1);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD439FE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD43A044()
{
  result = qword_1ECCDCBE8;
  if (!qword_1ECCDCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCBE8);
  }

  return result;
}

unint64_t sub_1DD43A098()
{
  result = qword_1EE165090[0];
  if (!qword_1EE165090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165090);
  }

  return result;
}

uint64_t MegadomeEntityFeatures.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MegadomeEntityFeatures.init(from:)(a1);
  return v2;
}

void MegadomeEntityFeatures.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_42_4();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC00, &qword_1DD64A160);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66_1();
  bzero(v1 + 2, 0x3B8uLL);
  OUTLINED_FUNCTION_44_5(v4);
  sub_1DD43A098();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640ED8();
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    sub_1DD640B48();
    v1[2] = v6;
    OUTLINED_FUNCTION_0_39(1);
    sub_1DD640B48();
    v1[3] = v7;
    OUTLINED_FUNCTION_0_39(2);
    sub_1DD640B48();
    v1[4] = v8;
    OUTLINED_FUNCTION_0_39(3);
    sub_1DD640B48();
    v1[5] = v9;
    OUTLINED_FUNCTION_0_39(4);
    sub_1DD640B48();
    v1[6] = v10;
    OUTLINED_FUNCTION_0_39(5);
    sub_1DD640B48();
    v1[7] = v11;
    OUTLINED_FUNCTION_0_39(6);
    sub_1DD640B48();
    v1[8] = v12;
    OUTLINED_FUNCTION_0_39(7);
    sub_1DD640B48();
    v1[9] = v13;
    OUTLINED_FUNCTION_0_39(8);
    sub_1DD640B48();
    v1[10] = v14;
    OUTLINED_FUNCTION_0_39(9);
    sub_1DD640B48();
    v1[11] = v15;
    OUTLINED_FUNCTION_0_39(10);
    sub_1DD640B48();
    v1[12] = v16;
    OUTLINED_FUNCTION_0_39(11);
    sub_1DD640B48();
    v1[13] = v17;
    OUTLINED_FUNCTION_0_39(12);
    sub_1DD640B48();
    v1[14] = v18;
    OUTLINED_FUNCTION_0_39(13);
    sub_1DD640B48();
    v1[15] = v19;
    OUTLINED_FUNCTION_0_39(14);
    sub_1DD640B48();
    v1[16] = v20;
    OUTLINED_FUNCTION_0_39(15);
    sub_1DD640B48();
    v1[17] = v21;
    OUTLINED_FUNCTION_0_39(16);
    sub_1DD640B48();
    v1[18] = v22;
    OUTLINED_FUNCTION_0_39(17);
    sub_1DD640B48();
    v1[19] = v23;
    OUTLINED_FUNCTION_0_39(18);
    sub_1DD640B48();
    v1[20] = v24;
    OUTLINED_FUNCTION_0_39(19);
    sub_1DD640B48();
    v1[21] = v25;
    OUTLINED_FUNCTION_0_39(20);
    sub_1DD640B48();
    v1[22] = v26;
    OUTLINED_FUNCTION_0_39(21);
    sub_1DD640B48();
    v1[23] = v27;
    OUTLINED_FUNCTION_0_39(22);
    sub_1DD640B48();
    v1[24] = v28;
    OUTLINED_FUNCTION_0_39(23);
    sub_1DD640B48();
    v1[25] = v29;
    OUTLINED_FUNCTION_0_39(24);
    sub_1DD640B48();
    v1[26] = v30;
    OUTLINED_FUNCTION_0_39(25);
    sub_1DD640B48();
    v1[27] = v31;
    OUTLINED_FUNCTION_0_39(26);
    sub_1DD640B48();
    v1[28] = v32;
    OUTLINED_FUNCTION_0_39(27);
    sub_1DD640B48();
    v1[29] = v33;
    OUTLINED_FUNCTION_0_39(28);
    sub_1DD640B48();
    v1[30] = v34;
    OUTLINED_FUNCTION_0_39(29);
    sub_1DD640B48();
    v1[31] = v35;
    OUTLINED_FUNCTION_0_39(30);
    sub_1DD640B48();
    v1[32] = v36;
    OUTLINED_FUNCTION_0_39(31);
    sub_1DD640B48();
    v1[33] = v37;
    OUTLINED_FUNCTION_0_39(32);
    sub_1DD640B48();
    v1[34] = v38;
    OUTLINED_FUNCTION_0_39(33);
    sub_1DD640B48();
    v1[35] = v39;
    OUTLINED_FUNCTION_0_39(34);
    sub_1DD640B48();
    v1[36] = v40;
    OUTLINED_FUNCTION_0_39(35);
    sub_1DD640B48();
    v1[37] = v41;
    OUTLINED_FUNCTION_0_39(36);
    sub_1DD640B48();
    v1[38] = v42;
    OUTLINED_FUNCTION_0_39(37);
    sub_1DD640B48();
    v1[39] = v43;
    OUTLINED_FUNCTION_0_39(38);
    sub_1DD640B48();
    v1[40] = v44;
    OUTLINED_FUNCTION_0_39(39);
    sub_1DD640B48();
    v1[41] = v45;
    OUTLINED_FUNCTION_0_39(40);
    sub_1DD640B48();
    v1[42] = v46;
    OUTLINED_FUNCTION_0_39(41);
    sub_1DD640B48();
    v1[43] = v47;
    OUTLINED_FUNCTION_0_39(42);
    sub_1DD640B48();
    v1[44] = v48;
    OUTLINED_FUNCTION_0_39(43);
    sub_1DD640B48();
    v1[45] = v49;
    OUTLINED_FUNCTION_0_39(44);
    sub_1DD640B48();
    v1[46] = v50;
    OUTLINED_FUNCTION_0_39(45);
    sub_1DD640B48();
    v1[47] = v51;
    OUTLINED_FUNCTION_0_39(46);
    sub_1DD640B48();
    v1[48] = v52;
    OUTLINED_FUNCTION_0_39(47);
    sub_1DD640B48();
    v1[49] = v53;
    OUTLINED_FUNCTION_0_39(48);
    sub_1DD640B48();
    v1[50] = v54;
    OUTLINED_FUNCTION_0_39(49);
    sub_1DD640B48();
    v1[51] = v55;
    OUTLINED_FUNCTION_0_39(50);
    sub_1DD640B48();
    v1[52] = v56;
    OUTLINED_FUNCTION_0_39(51);
    sub_1DD640B48();
    v1[53] = v57;
    OUTLINED_FUNCTION_0_39(52);
    sub_1DD640B48();
    v1[54] = v58;
    OUTLINED_FUNCTION_0_39(53);
    sub_1DD640B48();
    v1[55] = v59;
    OUTLINED_FUNCTION_0_39(54);
    sub_1DD640B48();
    v1[56] = v60;
    OUTLINED_FUNCTION_0_39(55);
    sub_1DD640B48();
    v1[57] = v61;
    OUTLINED_FUNCTION_0_39(56);
    sub_1DD640B48();
    v1[58] = v62;
    OUTLINED_FUNCTION_0_39(57);
    sub_1DD640B48();
    v1[59] = v63;
    OUTLINED_FUNCTION_0_39(58);
    sub_1DD640B48();
    v1[60] = v64;
    OUTLINED_FUNCTION_0_39(59);
    sub_1DD640B48();
    v1[61] = v65;
    OUTLINED_FUNCTION_0_39(60);
    sub_1DD640B48();
    v1[62] = v66;
    OUTLINED_FUNCTION_0_39(61);
    sub_1DD640B48();
    v1[63] = v67;
    OUTLINED_FUNCTION_0_39(62);
    sub_1DD640B48();
    v1[64] = v68;
    OUTLINED_FUNCTION_0_39(63);
    sub_1DD640B48();
    v1[65] = v69;
    OUTLINED_FUNCTION_0_39(64);
    sub_1DD640B48();
    v1[66] = v70;
    OUTLINED_FUNCTION_0_39(65);
    sub_1DD640B48();
    v1[67] = v71;
    OUTLINED_FUNCTION_0_39(66);
    sub_1DD640B48();
    v1[68] = v72;
    OUTLINED_FUNCTION_0_39(67);
    sub_1DD640B48();
    v1[69] = v73;
    OUTLINED_FUNCTION_0_39(68);
    sub_1DD640B48();
    v1[70] = v74;
    OUTLINED_FUNCTION_0_39(69);
    sub_1DD640B48();
    v1[71] = v75;
    OUTLINED_FUNCTION_0_39(70);
    sub_1DD640B48();
    v1[72] = v76;
    OUTLINED_FUNCTION_0_39(71);
    sub_1DD640B48();
    v1[73] = v77;
    OUTLINED_FUNCTION_0_39(72);
    sub_1DD640B48();
    v1[74] = v78;
    OUTLINED_FUNCTION_0_39(73);
    sub_1DD640B48();
    v1[75] = v79;
    OUTLINED_FUNCTION_0_39(74);
    sub_1DD640B48();
    v1[76] = v80;
    OUTLINED_FUNCTION_0_39(75);
    sub_1DD640B48();
    v1[77] = v81;
    OUTLINED_FUNCTION_0_39(76);
    sub_1DD640B48();
    v1[78] = v82;
    OUTLINED_FUNCTION_0_39(77);
    sub_1DD640B48();
    v1[79] = v83;
    OUTLINED_FUNCTION_0_39(78);
    sub_1DD640B48();
    v1[80] = v84;
    OUTLINED_FUNCTION_0_39(79);
    sub_1DD640B48();
    v1[81] = v85;
    OUTLINED_FUNCTION_0_39(80);
    sub_1DD640B48();
    v1[82] = v86;
    OUTLINED_FUNCTION_0_39(81);
    sub_1DD640B48();
    v1[83] = v87;
    OUTLINED_FUNCTION_0_39(82);
    sub_1DD640B48();
    v1[84] = v88;
    OUTLINED_FUNCTION_0_39(83);
    sub_1DD640B48();
    v1[85] = v89;
    OUTLINED_FUNCTION_0_39(84);
    sub_1DD640B48();
    v1[86] = v90;
    OUTLINED_FUNCTION_0_39(85);
    sub_1DD640B48();
    v1[87] = v91;
    OUTLINED_FUNCTION_0_39(86);
    sub_1DD640B48();
    v1[88] = v92;
    OUTLINED_FUNCTION_0_39(87);
    sub_1DD640B48();
    v1[89] = v93;
    OUTLINED_FUNCTION_0_39(88);
    sub_1DD640B48();
    v1[90] = v94;
    OUTLINED_FUNCTION_0_39(89);
    sub_1DD640B48();
    v1[91] = v95;
    OUTLINED_FUNCTION_0_39(90);
    sub_1DD640B48();
    v1[92] = v96;
    OUTLINED_FUNCTION_0_39(91);
    sub_1DD640B48();
    v1[93] = v97;
    OUTLINED_FUNCTION_0_39(92);
    sub_1DD640B48();
    v1[94] = v98;
    OUTLINED_FUNCTION_0_39(93);
    sub_1DD640B48();
    v1[95] = v99;
    OUTLINED_FUNCTION_0_39(94);
    sub_1DD640B48();
    v1[96] = v100;
    OUTLINED_FUNCTION_0_39(95);
    sub_1DD640B48();
    v1[97] = v101;
    OUTLINED_FUNCTION_0_39(96);
    sub_1DD640B48();
    v1[98] = v102;
    OUTLINED_FUNCTION_0_39(97);
    sub_1DD640B48();
    v1[99] = v103;
    OUTLINED_FUNCTION_0_39(98);
    sub_1DD640B48();
    v1[100] = v104;
    OUTLINED_FUNCTION_0_39(99);
    sub_1DD640B48();
    v1[101] = v105;
    OUTLINED_FUNCTION_0_39(100);
    sub_1DD640B48();
    v1[102] = v106;
    OUTLINED_FUNCTION_0_39(101);
    sub_1DD640B48();
    v1[103] = v107;
    OUTLINED_FUNCTION_0_39(102);
    sub_1DD640B48();
    v1[104] = v108;
    OUTLINED_FUNCTION_0_39(103);
    sub_1DD640B48();
    v1[105] = v109;
    OUTLINED_FUNCTION_0_39(104);
    sub_1DD640B48();
    v1[106] = v110;
    OUTLINED_FUNCTION_0_39(105);
    sub_1DD640B48();
    v1[107] = v111;
    OUTLINED_FUNCTION_0_39(106);
    sub_1DD640B48();
    v1[108] = v112;
    OUTLINED_FUNCTION_0_39(107);
    sub_1DD640B48();
    v1[109] = v113;
    OUTLINED_FUNCTION_0_39(108);
    sub_1DD640B48();
    v1[110] = v114;
    OUTLINED_FUNCTION_0_39(109);
    sub_1DD640B48();
    v1[111] = v115;
    OUTLINED_FUNCTION_0_39(110);
    sub_1DD640B48();
    v1[112] = v116;
    OUTLINED_FUNCTION_0_39(111);
    sub_1DD640B48();
    v1[113] = v117;
    OUTLINED_FUNCTION_0_39(112);
    v1[114] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(113);
    v1[115] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(114);
    v1[116] = sub_1DD640B58();
    OUTLINED_FUNCTION_0_39(115);
    sub_1DD640B48();
    v1[117] = v118;
    OUTLINED_FUNCTION_0_39(116);
    sub_1DD640B48();
    v1[118] = v119;
    OUTLINED_FUNCTION_0_39(117);
    sub_1DD640B48();
    v1[119] = v120;
    OUTLINED_FUNCTION_0_39(118);
    sub_1DD640B48();
    v122 = v121;
    v123 = OUTLINED_FUNCTION_41();
    v124(v123);
    v1[120] = v122;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_43_6();
}

uint64_t sub_1DD43AD9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MegadomeEntityFeatures.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1DD43AE38(uint64_t a1)
{
  sub_1DD43B028(319);
  if (v1 <= 0x3F)
  {
    sub_1DD43B08C(319, &qword_1EE163990, MEMORY[0x1E69D29D0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD43B08C(319, &qword_1EE163950, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MegadomeEntityFeatures();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD43B028(uint64_t a1)
{
  if (!qword_1EE163910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE163910);
    }
  }
}

void sub_1DD43B08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DD43B128(uint64_t a1)
{
  sub_1DD43B08C(319, &qword_1EE163990, MEMORY[0x1E69D29D0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for MegadomeEntityFeatures.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x8A)
  {
    if (a2 + 118 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 118) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 119;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x77;
  v5 = v6 - 119;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MegadomeEntityFeatures.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 118 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 118) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x8A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x89)
  {
    v6 = ((a2 - 138) >> 8) + 1;
    *result = a2 + 118;
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
          *result = a2 + 118;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F58A7859O25BackgroundHandleSignalSetV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t _s14descr1F58A7859O15HandleSignalSetV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F58A7859O15HandleSignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F58A7859O19BackgroundSignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14descr1F58A7859O9SignalSetV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC7)
  {
    if (a2 + 57 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 57) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 58;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v5 = v6 - 58;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F58A7859O9SignalSetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC6)
  {
    v6 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
          *result = a2 + 57;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD43B834()
{
  result = qword_1ECCDCC08;
  if (!qword_1ECCDCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC08);
  }

  return result;
}

unint64_t sub_1DD43B88C()
{
  result = qword_1ECCDCC10;
  if (!qword_1ECCDCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC10);
  }

  return result;
}

unint64_t sub_1DD43B8E4()
{
  result = qword_1ECCDCC18;
  if (!qword_1ECCDCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC18);
  }

  return result;
}

unint64_t sub_1DD43B93C()
{
  result = qword_1ECCDCC20;
  if (!qword_1ECCDCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC20);
  }

  return result;
}

unint64_t sub_1DD43B994()
{
  result = qword_1ECCDCC28;
  if (!qword_1ECCDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC28);
  }

  return result;
}

unint64_t sub_1DD43B9EC()
{
  result = qword_1EE165080;
  if (!qword_1EE165080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165080);
  }

  return result;
}

unint64_t sub_1DD43BA44()
{
  result = qword_1EE165088;
  if (!qword_1EE165088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165088);
  }

  return result;
}

unint64_t sub_1DD43BA9C()
{
  result = qword_1ECCDCC30;
  if (!qword_1ECCDCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC30);
  }

  return result;
}

unint64_t sub_1DD43BAF4()
{
  result = qword_1ECCDCC38;
  if (!qword_1ECCDCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCC38);
  }

  return result;
}

unint64_t sub_1DD43BB4C()
{
  result = qword_1EE165908;
  if (!qword_1EE165908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165908);
  }

  return result;
}

unint64_t sub_1DD43BBA4()
{
  result = qword_1EE165910;
  if (!qword_1EE165910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165910);
  }

  return result;
}

unint64_t sub_1DD43BBFC()
{
  result = qword_1EE165828;
  if (!qword_1EE165828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165828);
  }

  return result;
}

unint64_t sub_1DD43BC54()
{
  result = qword_1EE165830;
  if (!qword_1EE165830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165830);
  }

  return result;
}

unint64_t sub_1DD43BCAC()
{
  result = qword_1EE1657F0;
  if (!qword_1EE1657F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1657F0);
  }

  return result;
}

unint64_t sub_1DD43BD04()
{
  result = qword_1EE1657F8;
  if (!qword_1EE1657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1657F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v1 + 32);
  *(v0 + 96) = *(v0 + 160);

  return sub_1DD4339AC(v0 + 48);
}

void OUTLINED_FUNCTION_36_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640EF8();
}

uint64_t OUTLINED_FUNCTION_55_4@<X0>(char a1@<W8>)
{
  *(v1 + 344) = a1;

  return sub_1DD640B38();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return type metadata accessor for ContactResolver.SignalSet(0);
}

void sub_1DD43BF54(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC738();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD44638C(v6);
  *a1 = v3;
}

uint64_t sub_1DD43C008(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_1DD43C034(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for RunTimeDataRecord(0);
    OUTLINED_FUNCTION_50();
    sub_1DD4476F4();
    v2 = OUTLINED_FUNCTION_48_7();
  }

  else
  {
    type metadata accessor for RunTimeDataRecord(0);
    v2 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1DD43C11C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_15_0();
}

void sub_1DD43C178(unint64_t a1, void (*a2)(uint64_t, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

LABEL_3:
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      a2(v4 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {

        return;
      }
    }

    MEMORY[0x1E12B2C10](v5, a1);
    return;
  }

  v4 = sub_1DD6407B8();
  if (v4)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1DD43C214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_48_7();
  }

  else
  {
    sub_1DD63D0F8();
    v8 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1DD43C2BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_15_0();
}

void static ContactResolver.refreshSharedCache()()
{
  OUTLINED_FUNCTION_18_4();
  sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD643F90;
  v2 = sub_1DD6408F8();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1DD392BD8();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD43C830();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  v5 = OUTLINED_FUNCTION_1_8();
  v6(v5);
  OUTLINED_FUNCTION_17();
}

void static ContactResolver.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *&xmmword_1ECCDCC40 = a1;
  *(&xmmword_1ECCDCC40 + 1) = a2;
  byte_1ECCDCC50 = a3;
}

uint64_t (*static ContactResolver.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1DD43C608@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDCC50;
  result = *&xmmword_1ECCDCC40;
  *a1 = xmmword_1ECCDCC40;
  *(a1 + 16) = v2;
  return result;
}

void sub_1DD43C65C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  *&xmmword_1ECCDCC40 = v1;
  *(&xmmword_1ECCDCC40 + 1) = v2;
  byte_1ECCDCC50 = v3;
}

uint64_t sub_1DD43C6B4()
{
  type metadata accessor for ContactResolver(0);
  v0 = swift_allocObject();
  result = ContactResolver.init()();
  qword_1ECCDCC58 = v0;
  return result;
}

uint64_t ContactResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  ContactResolver.init()();
  return v0;
}

double static ContactResolver.shared.getter()
{
  if (qword_1ECCDB068 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DD43C788()
{
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  sub_1DD63D158();
  static ContactResolver.refreshSharedCache()();
  v1 = OUTLINED_FUNCTION_1_8();
  return v2(v1);
}

uint64_t sub_1DD43C830()
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "Refreshing shared ContactResolverCache...", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD5FF92C();
}

uint64_t sub_1DD43C974(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
    sub_1DD390754(v4, &qword_1ECCDC700, &qword_1DD64AE00);
    sub_1DD447E80(a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  else
  {
    sub_1DD44769C();
    sub_1DD448524();
    return sub_1DD44774C(v7, type metadata accessor for ContactResolverCache);
  }
}

uint64_t sub_1DD43CB1C()
{
  static ContactResolver.refreshSharedCache()();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DD43CB78()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-v7];
  v9 = OUTLINED_FUNCTION_42_5();
  v10 = type metadata accessor for ContactResolverCache(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    OUTLINED_FUNCTION_3_21();
    sub_1DD44769C();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = sub_1DD63F9D8();
    sub_1DD640368();
    v22 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_19;
  }

  sub_1DD390754(v8, &qword_1ECCDC700, &qword_1DD64AE00);
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD640488();

  if (__swift_getEnumTagSinglePayload(v5, 1, v10) != 1)
  {
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_40();
    sub_1DD44769C();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F068);
    v21 = sub_1DD63F9D8();
    v30 = sub_1DD640358();
    v31 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_9();
      *v33 = 0;
      _os_log_impl(&dword_1DD38D000, v21, v30, "using shared ContactResolverCache", v33, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

LABEL_19:

    OUTLINED_FUNCTION_3_21();
    sub_1DD44769C();
    goto LABEL_20;
  }

  sub_1DD390754(v5, &qword_1ECCDC700, &qword_1DD64AE00);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16F068);
  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640358();
  v16 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_9();
    *v18 = 0;
    _os_log_impl(&dword_1DD38D000, v14, v15, "creating and using shared ContactResolverCache", v18, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v19 = sub_1DD447E80(v1);
  MEMORY[0x1EEE9AC00](v19);
  *&v34[-16] = v1;

  sub_1DD5FF92C();

LABEL_20:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD43CFC8(uint64_t a1, uint64_t a2)
{
  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  sub_1DD4476F4();
  v3 = type metadata accessor for ContactResolverCache(0);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_1DD43D048()
{
  v1 = OBJC_IVAR____TtC13SiriInference15ContactResolver____lazy_storage___forcePromptingStrategy;
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference15ContactResolver____lazy_storage___forcePromptingStrategy);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1DD43D08C();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

BOOL sub_1DD43D08C()
{
  v0 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD43CB78();
  v3 = &v2[*(v0 + 28)];
  v4 = 1.0;
  if ((*v3 & 1) == 0)
  {
    v4 = 0.0;
    if (v3[4] != 1)
    {
      if (*&v2[*(v0 + 76)])
      {
        v5 = sub_1DD5FFDD8();
        v6 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C0F0, v5);

        if (v6)
        {
          [v6 doubleValue];
          v4 = v7;
        }
      }
    }
  }

  sub_1DD44774C(v2, type metadata accessor for ContactResolverCache);
  return sub_1DD4C181C(v4);
}

void sub_1DD43D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v111 = v20;
  v112 = v21;
  v110 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v102 - v29;
  v31 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_0();
  v109 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_4();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v102 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v45 = v112;
  sub_1DD43DA04(v26, v110, v46, v47, v48, v49, v50, v51, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  if (!v45)
  {
    v110 = v31;
    v111 = v36;
    v112 = v43;
    v107 = v40;
    v108 = v34;
    v106 = 0;
    v53 = *(v52 + 16);
    if (v53)
    {
      a10 = MEMORY[0x1E69E7CC0];
      v54 = v52;
      sub_1DD42BA74(0, v53, 0);
      v55 = a10;
      v56 = v108;
      OUTLINED_FUNCTION_24_0();
      v105 = v54;
      v58 = v54 + v57;
      v109 = *(v59 + 72);
      do
      {
        sub_1DD4476F4();
        sub_1DD3C4EB4();
        if (__swift_getEnumTagSinglePayload(v30, 1, v56) == 1)
        {
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_21_8();
          if (__swift_getEnumTagSinglePayload(v30, 1, v56) != 1)
          {
            sub_1DD390754(v30, &qword_1ECCDC1C8, qword_1DD64ADD0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_8();
          sub_1DD447808();
        }

        a10 = v55;
        v61 = v55[2];
        v60 = v55[3];
        if (v61 >= v60 >> 1)
        {
          v62 = OUTLINED_FUNCTION_36_6(v60);
          sub_1DD42BA74(v62, v61 + 1, 1);
          v56 = v108;
          v55 = a10;
        }

        v55[2] = v61 + 1;
        OUTLINED_FUNCTION_24_0();
        sub_1DD447808();
        v58 += v109;
        --v53;
      }

      while (v53);
    }

    else
    {

      v55 = MEMORY[0x1E69E7CC0];
    }

    v63 = v107;
    v64 = v111;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v65 = sub_1DD63F9F8();
    v66 = __swift_project_value_buffer(v65, qword_1EE16F068);

    v67 = sub_1DD63F9D8();
    v68 = sub_1DD640368();

    if (os_log_type_enabled(v67, v68))
    {
      OUTLINED_FUNCTION_18_1();
      v69 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v109 = swift_slowAlloc();
      a10 = v109;
      v110 = v69;
      *v69 = 136446210;
      v70 = v55[2];
      v71 = MEMORY[0x1E69E7CC0];
      if (v70)
      {
        HIDWORD(v103) = v68;
        v104 = v67;
        v105 = v66;
        v113 = MEMORY[0x1E69E7CC0];
        sub_1DD42BA94(0, v70, 0);
        v71 = v113;
        OUTLINED_FUNCTION_24_0();
        v73 = v55 + v72;
        v74 = *(v64 + 72);
        while (2)
        {
          sub_1DD3C4EB4();
          sub_1DD3C4EB4();
          v75 = 3;
          v76 = 0;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v76 = 1;
              goto LABEL_21;
            case 2u:
              v76 = 2;
              goto LABEL_21;
            case 3u:
              goto LABEL_22;
            default:
LABEL_21:
              sub_1DD390754(v63, &qword_1ECCDBEE0, &unk_1DD645510);
              v75 = v76;
LABEL_22:
              sub_1DD390754(v112, &qword_1ECCDBEE0, &unk_1DD645510);
              v113 = v71;
              v78 = *(v71 + 16);
              v77 = *(v71 + 24);
              if (v78 >= v77 >> 1)
              {
                sub_1DD42BA94(v77 > 1, v78 + 1, 1);
                v71 = v113;
              }

              *(v71 + 16) = v78 + 1;
              *(v71 + v78 + 32) = v75;
              v73 += v74;
              --v70;
              v63 = v107;
              if (v70)
              {
                continue;
              }

              v67 = v104;
              LOBYTE(v68) = BYTE4(v103);
              break;
          }

          break;
        }
      }

      v79 = MEMORY[0x1E12B2430](v71, &type metadata for RecommendationType);
      v81 = v80;

      v82 = sub_1DD39565C(v79, v81, &a10);

      *(v110 + 1) = v82;
      OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v67, v68, "user-facing recommendation types: %{public}s");
      _os_log_impl(v83, v84, v85, v86, v87, v88);
      __swift_destroy_boxed_opaque_existential_1(v109);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v89 = sub_1DD63F9D8();
    v90 = sub_1DD640368();

    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_18_1();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v92 = swift_slowAlloc();
      a10 = v92;
      *v91 = 136315138;
      v93 = MEMORY[0x1E12B2430](v55, v108);
      v95 = sub_1DD39565C(v93, v94, &a10);

      *(v91 + 4) = v95;
      OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v89, v90, "user-facing recommendations: %s");
      _os_log_impl(v96, v97, v98, v99, v100, v101);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD43D87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - v1;
  OUTLINED_FUNCTION_1_8();
  sub_1DD3C4EB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 3;
  v5 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v5 = 1;
      goto LABEL_4;
    case 2:
      v5 = 2;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      sub_1DD390754(v2, &qword_1ECCDBEE0, &unk_1DD645510);
      return v5;
  }
}

uint64_t sub_1DD43D970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_1();
}

void sub_1DD43DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v32 = v24;
  v33 = v23;
  v34 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DD643F90;
  v29 = sub_1DD6408F8();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1DD392BD8();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F998();

  sub_1DD43DC2C(v32, v33, v20, &a10);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_17_14();
  sub_1DD63F9A8();
  (*(v26 + 8))(v20, v34);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD43DC2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v172 = a3;
  v162 = a4;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  v163 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v179 = &v148 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v169 = (&v148 - v12);
  v160 = type metadata accessor for ContactResolverRunTimeData(0);
  v185 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v150 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v148 - v15;
  v16 = sub_1DD63F9C8();
  v17 = *(v16 - 8);
  v167 = v16;
  v168 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v174 = &v148 - v20;
  v161 = type metadata accessor for ContactResolverConfig(0);
  MEMORY[0x1EEE9AC00](v161);
  v154 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v148 - v23;
  v24 = sub_1DD63D168();
  v158 = *(v24 - 8);
  v159 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for NLv4SpeechAlternativeFetcher(0);
  MEMORY[0x1EEE9AC00](v156);
  v186 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v155 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v148 - v30;
  v31 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v31);
  *&v164 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContactResolverCache(0);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v148 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v151 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v148 - v41;
  v43 = sub_1DD63D0F8();
  v170 = *(v43 - 8);
  v171 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v148 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165270 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {

    sub_1DD5FF92C();

    sub_1DD63D0E8();
    v46 = *(a1 + 16);
    v177 = *(a1 + 8);
    v184 = v46;
    sub_1DD5AC168();
    LOBYTE(v190[0]) = 2;
    v176 = a1;
    sub_1DD450E3C(v47, v48, v49);
    v50 = type metadata accessor for PrivatizedContactResolverConfig(0);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v50);
    v182 = v45;
    sub_1DD5ACB80();
    sub_1DD390754(v37, &qword_1ECCDCCB8, &unk_1DD64AEF0);
    v194 = a2;
    v51 = MEMORY[0x1E69E7CC0];
    if (!*(a2 + 16))
    {
      break;
    }

    sub_1DD43CB78();
    if (!*(a2 + 16))
    {
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_24;
    }

    LOBYTE(v190[0]) = *(a2 + 280);
    v52 = sub_1DD422BD0();
    v53 = MEMORY[0x1E69E6158];
    v152 = v42;
    if (v52)
    {
      v149 = v33;
      v187 = a2;
      if (qword_1EE166460 != -1)
      {
        swift_once();
      }

      v54 = qword_1EE16F0C0;
      v55 = v164;
      v56 = v164 + *(v31 + 20);
      *v56 = "ContactResolver.fetchNLv4SpeechAlternatives";
      *(v56 + 8) = 43;
      *(v56 + 16) = 2;
      v57 = v54;
      sub_1DD63F9B8();
      *(v55 + *(v31 + 24)) = v57;
      v58 = v57;
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1DD643F90;
      v60 = sub_1DD6408F8();
      v62 = v61;
      *(v59 + 56) = v53;
      *(v59 + 64) = sub_1DD392BD8();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      v148 = v58;
      sub_1DD63F998();

      v64 = v157;
      v63 = v158;
      v65 = *(v158 + 2);
      v66 = v159;
      v65(v157, v173 + *(v149 + 72), v159);
      v67 = v155;
      v65(v155, v64, v66);
      sub_1DD63F488();
      v68 = sub_1DD63F468();
      if (v68)
      {
        sub_1DD63F448();

        v68 = sub_1DD63F748();
      }

      v45 = v187;
      (*(v63 + 1))(v64, v66);
      *&v67[*(v156 + 20)] = v68;
      sub_1DD44769C();
      sub_1DD4476F4();
      v42 = *(v45 + 16);
      a2 = MEMORY[0x1E69E7CC0];
      if (v42)
      {
        v188[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42BAD8(0, v42, 0);
        a2 = v188[0];
        v37 = *(v45 + 16);
        a1 = v42 - 1;
        v33 = 32;
        v31 = 264;
        if (!v37)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        while (1)
        {
          memcpy(v189, (v187 + v33), sizeof(v189));
          sub_1DD53AD24(v190, v189);
          v188[0] = a2;
          v45 = *(a2 + 16);
          v69 = *(a2 + 24);
          v42 = v45 + 1;
          if (v45 >= v69 >> 1)
          {
            sub_1DD42BAD8(v69 > 1, v45 + 1, 1);
            a2 = v188[0];
          }

          *(a2 + 16) = v42;
          memcpy((a2 + 264 * v45 + 32), v190, 0x108uLL);
          if (!a1)
          {
            break;
          }

          --v37;
          --a1;
          v33 += 264;
          if (!v37)
          {
            goto LABEL_73;
          }
        }
      }

      sub_1DD44774C(v186, type metadata accessor for NLv4SpeechAlternativeFetcher);

      v194 = a2;
      sub_1DD6404C8();
      v80 = v164;
      sub_1DD63F9A8();
      sub_1DD44774C(v165, type metadata accessor for NLv4SpeechAlternativeFetcher);
      sub_1DD44774C(v80, type metadata accessor for Signpost);
      v51 = MEMORY[0x1E69E7CC0];
    }

    v37 = v166;
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_78;
    }

LABEL_24:
    v186 = sub_1DD63F9F8();
    v81 = __swift_project_value_buffer(v186, qword_1EE16F068);
    sub_1DD4476F4();
    v165 = v81;
    v82 = sub_1DD63F9D8();
    v83 = sub_1DD640368();
    v84 = os_log_type_enabled(v82, v83);
    v187 = a2;
    if (v84)
    {
      v85 = v37;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v190[0] = v87;
      *v86 = 136315394;
      v189[0] = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCC0, &qword_1DD64AF00);
      v88 = sub_1DD63FE38();
      v90 = sub_1DD39565C(v88, v89, v190);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2080;
      sub_1DD4476F4();
      v91 = sub_1DD63FE38();
      v93 = v92;
      sub_1DD44774C(v85, type metadata accessor for ContactResolverConfig);
      v94 = sub_1DD39565C(v91, v93, v190);

      *(v86 + 14) = v94;
      _os_log_impl(&dword_1DD38D000, v82, v83, "running ContactResolver.makeRecommendations\nqueries: %s\nconfig: %s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v87, -1, -1);
      MEMORY[0x1E12B3DA0](v86, -1, -1);
    }

    else
    {

      sub_1DD44774C(v37, type metadata accessor for ContactResolverConfig);
    }

    v192 = v51;
    v193 = v51;
    v191 = v51;
    if (qword_1EE166460 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE16F0C0;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v95 = swift_allocObject();
    v164 = xmmword_1DD643F90;
    *(v95 + 16) = xmmword_1DD643F90;
    v96 = sub_1DD6408F8();
    v98 = v97;
    *(v95 + 56) = MEMORY[0x1E69E6158];
    v99 = sub_1DD392BD8();
    *(v95 + 64) = v99;
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    v100 = v174;
    sub_1DD63F998();

    v101 = v173;
    v102 = v175;
    sub_1DD43F574(v173, v176, &v194, &v193, &v192, &v191);
    if (v102)
    {
      sub_1DD6404C8();
      sub_1DD63F9A8();
      (*(v168 + 8))(v100, v167);
      sub_1DD44774C(v101, type metadata accessor for ContactResolverCache);

      v37 = v171;
      goto LABEL_31;
    }

    v175 = 0;
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v105 = v167;
    v106 = v168 + 8;
    v107 = *(v168 + 8);
    v107(v100, v167);
    v108 = *(v191 + 16);
    v159 = v191;
    if (v108)
    {
      v158 = v107;
      v168 = v106;
      v109 = v45;
      v45 = v153;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      v110 = swift_allocObject();
      *(v110 + 16) = v164;
      v111 = sub_1DD6408F8();
      *(v110 + 56) = MEMORY[0x1E69E6158];
      *(v110 + 64) = v99;
      *(v110 + 32) = v111;
      *(v110 + 40) = v112;
      v166 = v109;
      sub_1DD63F998();

      v113 = sub_1DD63F9D8();
      v114 = sub_1DD640368();
      v115 = os_log_type_enabled(v113, v114);
      a1 = v160;
      if (v115)
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_1DD38D000, v113, v114, "resolving contacts", v116, 2u);
        MEMORY[0x1E12B3DA0](v116, -1, -1);
      }

      v117 = v175;
      sub_1DD441958();
      v37 = v171;
      v175 = v117;
      if (v117)
      {
        sub_1DD6404C8();
        v119 = v153;
        sub_1DD63F9A8();
        v158(v119, v105);
        sub_1DD44774C(v173, type metadata accessor for ContactResolverCache);

LABEL_31:

        type metadata accessor for InferenceError();
        swift_allocObject();
        sub_1DD4DE96C(13, 0, 0xE000000000000000, 0xD000000000000075, 0x80000001DD66BED0, 0xD000000000000018, 0x80000001DD66C160, 239, MEMORY[0x1E69E7CC0], 1);
        if (qword_1EE166510 == -1)
        {
LABEL_32:
          __swift_project_value_buffer(v186, qword_1EE16F0C8);
          sub_1DD4DEB78();

          v103 = v152;
          v104 = v182;
          sub_1DD5AD0AC(v152, v182);
          swift_willThrow();
          sub_1DD390754(v103, &qword_1ECCDBAC8, &qword_1DD643E60);
          return (*(v170 + 8))(v104, v37);
        }

LABEL_83:
        swift_once();
        goto LABEL_32;
      }

      v120 = v118;
      v121 = v192;
      v122 = *(v192 + 16);
      if (v122)
      {
        v123 = 0;
        v37 = *(v118 + 16);
        v186 = v192 + 32;
        v174 = v187 + 32;
        v124 = (v122 - 1);
        while (v123 < v122)
        {
          if (v37 == v123)
          {
            goto LABEL_52;
          }

          if (v123 >= *(v120 + 16))
          {
            goto LABEL_80;
          }

          v125 = *(v186 + 8 * v123);

          sub_1DD4425CC();

          if ((v125 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v125 >= *(v187 + 16))
          {
            goto LABEL_82;
          }

          memcpy(v189, (v174 + 264 * v125), sizeof(v189));
          v126 = v183;
          memcpy(v190, v183, sizeof(v190));
          sub_1DD3C9478(v189, v188);
          sub_1DD3C9580(v190);
          memcpy(v126, v189, 0x108uLL);
          *v169 = v125;
          sub_1DD4476F4();
          v127 = v193;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BFD20();
            v127 = v128;
          }

          v45 = *(v127 + 16);
          if (v45 >= *(v127 + 24) >> 1)
          {
            sub_1DD3BFD20();
            v127 = v129;
          }

          *(v127 + 16) = v45 + 1;
          sub_1DD447808();
          v193 = v127;
          sub_1DD44774C(v183, type metadata accessor for ContactResolverRunTimeData);
          if (v124 == v123)
          {
LABEL_52:

            v37 = v171;
            a1 = v160;
            v105 = v167;
            goto LABEL_54;
          }

          v122 = *(v121 + 16);
          ++v123;
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

LABEL_54:
      sub_1DD6404C8();
      v130 = v153;
      sub_1DD63F9A8();
      v158(v130, v105);
    }

    else
    {
      v37 = v171;
      a1 = v160;
    }

    v131 = v193;
    v190[0] = v193;

    v132 = v175;
    sub_1DD43BF54(v190);
    if (v132)
    {

      __break(1u);
      return result;
    }

    v169 = v131;
    v175 = 0;
    v133 = v190[0];
    v134 = *(v190[0] + 16);
    if (v134)
    {
      v190[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42BAF8(0, v134, 0);
      v33 = v190[0];
      v135 = *(v163 + 80);
      v168 = v133;
      v136 = v133 + ((v135 + 32) & ~v135);
      v174 = *(v163 + 72);
      v137 = v178;
      do
      {
        v183 = v134;
        v186 = v33;
        v45 = &qword_1DD6441F0;
        sub_1DD3C4EB4();
        v138 = v179;
        sub_1DD3C4EB4();
        v139 = v180;
        *v180 = *v138;
        sub_1DD44769C();
        sub_1DD4476F4();
        sub_1DD390754(v139, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v33 = v186;
        sub_1DD390754(v137, &qword_1ECCDBEE8, &qword_1DD6441F0);
        v190[0] = v33;
        v141 = *(v33 + 16);
        v140 = *(v33 + 24);
        if (v141 >= v140 >> 1)
        {
          sub_1DD42BAF8(v140 > 1, v141 + 1, 1);
          v33 = v190[0];
        }

        *(v33 + 16) = v141 + 1;
        sub_1DD44769C();
        v136 += v174;
        v134 = v183 - 1;
      }

      while (v183 != 1);

      v37 = v171;
      a1 = v160;
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v142 = *(v33 + 16);
    v31 = v151;
    if (!v142)
    {
LABEL_70:
      if (*(v176 + *(v161 + 36)))
      {
        sub_1DD444584();
      }

      v146 = v152;
      v147 = v182;
      sub_1DD5AD088(v152, v182);
      sub_1DD44774C(v173, type metadata accessor for ContactResolverCache);
      sub_1DD390754(v146, &qword_1ECCDBAC8, &qword_1DD643E60);
      (*(v170 + 8))(v147, v37);

      *v162 = v33;
      return result;
    }

    v42 = 0;
    a2 = v170 + 16;
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A74();
        v33 = v145;
      }

      if (v42 >= *(v33 + 16))
      {
        break;
      }

      v45 = v33 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v42;
      v143 = (v45 + *(a1 + 68));
      v144 = v184;
      *v143 = v177;
      v143[1] = v144;

      (*a2)(v31, v182, v37);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v37);
      if (v42 >= *(v33 + 16))
      {
        goto LABEL_75;
      }

      ++v42;
      sub_1DD3C9510(v31, v45 + *(a1 + 76));
      if (v142 == v42)
      {
        goto LABEL_70;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v70 = v42;
  v71 = qword_1EE165FB0;

  v72 = v171;
  if (v71 != -1)
  {
    swift_once();
  }

  v73 = sub_1DD63F9F8();
  __swift_project_value_buffer(v73, qword_1EE16F068);
  v74 = sub_1DD63F9D8();
  v75 = sub_1DD640368();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v182;
  if (v76)
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_1DD38D000, v74, v75, "cannot resolve empty array of queries", v78, 2u);
    MEMORY[0x1E12B3DA0](v78, -1, -1);
  }

  sub_1DD390754(v70, &qword_1ECCDBAC8, &qword_1DD643E60);
  (*(v170 + 8))(v77, v72);

  *v162 = v51;
  return result;
}