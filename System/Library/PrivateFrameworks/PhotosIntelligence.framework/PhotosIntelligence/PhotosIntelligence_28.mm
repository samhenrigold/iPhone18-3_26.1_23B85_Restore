void sub_1C7171D6C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98, &unk_1C7571030);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CA0, &qword_1C755BE20);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7171E28(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630, &unk_1C7564E40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216638, &qword_1C7564E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171F40(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182C0, &qword_1C7571160);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7172050()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71720F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D20, &qword_1C755BEA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DD0, &qword_1C755BEA8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7172208()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217300, &qword_1C7571170);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182D0, &qword_1C7571178);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C71722C4(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218220, &qword_1C7571058);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1C741E74C((a4 + 32), v8, (v10 + 32));
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

uint64_t sub_1C71723CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EC8, &unk_1C755C0B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71724DC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C717257C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172E0, &unk_1C7569820);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182B0, &qword_1C7571150);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7172638()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172D8, &qword_1C7569818);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182A8, &unk_1C7571140);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71726F4()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172E8, &unk_1C7569830);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9EE48(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182C8, &qword_1C7571168);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71727E0()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7172880()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F98, &qword_1C755C198);
      v10 = OUTLINED_FUNCTION_44_2(v9);
      v6 = OUTLINED_FUNCTION_0_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        sub_1C741E7BC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1(v6, v7, v8, &type metadata for MomentsPromptDatabaseLoader.MomentsPromptTemplate);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C717295C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218298, &qword_1C7571128);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182A0, &unk_1C7571130);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7172A74()
{
  OUTLINED_FUNCTION_25_16();
  v4 = v3;
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_51_3();
    if (v2)
    {
      OUTLINED_FUNCTION_79_2(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_73_0();
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_68_14(v15 - 32);
      if (v4)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_53_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v4)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_101();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7172B30(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218278, &qword_1C7571100);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218280, &qword_1C7571108);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7172C40()
{
  OUTLINED_FUNCTION_25_16();
  v4 = v3;
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_51_3();
    if (v2)
    {
      OUTLINED_FUNCTION_79_2(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_73_0();
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_68_14(v15 - 32);
      if (v4)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_53_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v4)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_101();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7172CFC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EB8, &qword_1C755C0A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C6F9EE08((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EC0, &qword_1C755C0A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7172E0C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218128, &qword_1C7570EA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF4((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218130, &qword_1C7570EA8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C7172F1C(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218120, &unk_1C7570E80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548, &unk_1C7589190) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C741E830(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C71730E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C28, &unk_1C755BDA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218CF0, &qword_1C7570E60);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7173200()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71732A0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218118, &unk_1C7570E70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8, &unk_1C75656D0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71733EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_37_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
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

  OUTLINED_FUNCTION_79_2(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_18(v17);
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

  OUTLINED_FUNCTION_26_24((v23 - v21) / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
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

uint64_t sub_1C7173584(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E88, &unk_1C755C070);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E90, &unk_1C758A990);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C717369C()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171F0, &unk_1C7570E90);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E85C(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C71737F8()
{
  OUTLINED_FUNCTION_25_16();
  v5 = v4;
  if ((v6 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_51_3();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v2;
      v15[3] = 2 * v16 - 64;
      if (v5)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_53_1();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }

    v18 = OUTLINED_FUNCTION_101();
    memcpy(v18, v19, v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7173930()
{
  OUTLINED_FUNCTION_25_16();
  v4 = v3;
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_51_3();
    if (v2)
    {
      OUTLINED_FUNCTION_79_2(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_73_0();
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_68_14(v15 - 32);
      if (v4)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_53_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v4)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_101();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71739EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218158, &qword_1C7570F00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218160, &qword_1C7570F08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7173B04()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217208, &qword_1C7569740);
      v6 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_22_30(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9EE08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218150, &qword_1C758EC40);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7173BC8()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7173C68(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218140, &qword_1C7570ED8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218148, &unk_1C7570EE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7173D78()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217200, &qword_1C7569728);
      v7 = OUTLINED_FUNCTION_44_2(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C741E4D4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218138, &unk_1C7570EC0);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7173E68()
{
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_16_26(v13);
      OUTLINED_FUNCTION_26_24(v14 / 128);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_76_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551C1C();
}

uint64_t PIFFlexMusicError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C71740DC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC218358);
  __swift_project_value_buffer(v0, qword_1EC218358);
  return sub_1C754FEFC();
}

uint64_t static FlexMusicLibraryManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213E38 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC218358);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id FlexMusicLibraryManager.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6F65BE8(0, &qword_1EC216D00, 0x1E699F6F8);
  result = static FMSongLibrary.sharedLibraryForMusicCuration()();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    if (qword_1EC213E38 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v3 = sub_1C754FF1C();
    __swift_project_value_buffer(v3, qword_1EC218358);
    v4 = sub_1C754FEEC();
    v5 = sub_1C755119C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C6F5C000, v4, v5, "Unable to initialize Flex shared library", v6, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C7174320();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C7174320()
{
  result = qword_1EC218370;
  if (!qword_1EC218370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIFFlexMusicError, &type metadata for PIFFlexMusicError, v0, v1);
    atomic_store(result, &qword_1EC218370);
  }

  return result;
}

uint64_t FlexMusicLibraryManager.allSongs(includeHidden:)(char a1)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E699F6D8]) init];
  if ((a1 & 1) == 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    v5 = sub_1C755112C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C755BAB0;
    v7 = sub_1C755068C();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6F6D524();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = sub_1C755112C();
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C7564A90;
    *(v11 + 32) = v5;
    *(v11 + 40) = v10;
    v12 = v5;
    v13 = v10;
    v14 = sub_1C74B8340(v11);
    [v4 setPredicate_];
  }

  v15 = [v3 fetchSongsWithOptions_];
  sub_1C6F65BE8(0, &qword_1EC216D08, 0x1E699F6F0);
  v16 = sub_1C7550B5C();

  if (qword_1EC213E38 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v17 = sub_1C754FF1C();
  __swift_project_value_buffer(v17, qword_1EC218358);
  sub_1C75504FC();
  v18 = sub_1C754FEEC();
  v19 = sub_1C755117C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = sub_1C6FB6304();

    *(v20 + 12) = 1024;
    *(v20 + 14) = a1 & 1;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Flex allUsableSongs found %ld songs when includeHidden=%{BOOL}d", v20, 0x12u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v16;
}

uint64_t FlexMusicLibraryManager.allMaestroKeywords()()
{
  v0 = OUTLINED_FUNCTION_3_54();
  v1 = sub_1C6FB6304();
  for (i = 0; v1 != i; ++i)
  {
    sub_1C6FB6330();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1CCA5DDD0](i, v0);
    }

    else
    {
      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    FMSong.maestroKeywords()();
    v6 = v5;

    sub_1C6FD2568(v6);
  }

  sub_1C706D154();
  v13 = sub_1C71CD85C(v7);
  sub_1C75504FC();
  sub_1C70401E8();

  v0 = v13;
  if (qword_1EC213E38 == -1)
  {
    goto LABEL_9;
  }

LABEL_14:
  OUTLINED_FUNCTION_0_78();
  swift_once();
LABEL_9:
  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EC218358);
  OUTLINED_FUNCTION_24_2();

  v9 = sub_1C754FEEC();
  v10 = sub_1C755117C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_37(v11, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Flex songs have %ld unique keywords", v11, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v0;
}

uint64_t FlexMusicLibraryManager.allMoodKeywords(removeMoodTagPrefix:)(char a1)
{
  v2 = FlexMusicLibraryManager.allSongs(includeHidden:)(0);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  for (i = 0; v4 != i; ++i)
  {
    sub_1C6FB6330();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](i, v2);
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    FMSong.moodTags()();
    v9 = v8;

    sub_1C6FD2568(v9);
  }

  sub_1C706D154();
  v33 = sub_1C71CD85C(v10);
  sub_1C75504FC();
  sub_1C70401E8();

  v2 = v33;
  if (qword_1EC213E38 == -1)
  {
    goto LABEL_9;
  }

LABEL_22:
  OUTLINED_FUNCTION_0_78();
  swift_once();
LABEL_9:
  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EC218358);
  OUTLINED_FUNCTION_24_2();

  v12 = sub_1C754FEEC();
  v13 = sub_1C755117C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_37(v14, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Flex songs have %ld unique moods", v14, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    if ((a1 & 1) == 0)
    {
      return v2;
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      return v2;
    }
  }

  v20 = *(v2 + 16);
  if (v20)
  {
    sub_1C6F7ED9C(0, v20, 0, v15, v16, v17, v18);
    v19 = v3;
    v21 = v2 + 40;
    do
    {
      sub_1C755068C();
      sub_1C6FB5E8C();
      sub_1C75504FC();
      v22 = sub_1C755155C();
      v24 = v23;

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C6F7ED9C(v29 > 1, v30 + 1, 1, v25, v26, v27, v28);
      }

      *(v19 + 16) = v30 + 1;
      v31 = v19 + 16 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v24;
      v21 += 16;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

uint64_t FlexMusicLibraryManager.songsForKeywords(_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_54();
  sub_1C75504FC();
  sub_1C706D154();
  v28 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C6FB6304();
  for (i = 0; v3 != i; ++i)
  {
    OUTLINED_FUNCTION_9_40();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA5DDD0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    FMSong.maestroKeywords()();
    sub_1C706D154();
    sub_1C7069A44();
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = sub_1C755192C();
      OUTLINED_FUNCTION_8_32(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28);
      OUTLINED_FUNCTION_4_45();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }
  }

  v2 = v28;
  if (qword_1EC213E38 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  OUTLINED_FUNCTION_0_78();
  swift_once();
LABEL_12:
  v17 = sub_1C754FF1C();
  __swift_project_value_buffer(v17, qword_1EC218358);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();

  v18 = sub_1C754FEEC();
  v19 = sub_1C755117C();

  if (os_log_type_enabled(v18, v19))
  {
    swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_31_0();
    v28 = v20;
    *v3 = 134218242;
    *(v3 + 4) = sub_1C6FB6304();

    *(v3 + 12) = 2080;
    v21 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
    v23 = sub_1C6F765A4(v21, v22, &v28);

    *(v3 + 14) = v23;
    OUTLINED_FUNCTION_2_55(&dword_1C6F5C000, v24, v25, "Found %ld Flex songs matching keywords: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v2;
}

uint64_t FlexMusicLibraryManager.songsForMoods(_:)(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_3_54();
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, v2, v3, v4, v5);
    v9 = v51;
    v48 = a1;
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      sub_1C755068C();
      sub_1C75504FC();
      v13 = sub_1C755092C();

      if ((v13 & 1) == 0)
      {
        v49 = sub_1C755068C();
        v50 = v18;
        sub_1C75504FC();
        v19 = OUTLINED_FUNCTION_4_45();
        MEMORY[0x1CCA5CD70](v19);

        v12 = v49;
        v11 = v50;
      }

      v51 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C6F7ED9C(v20 > 1, v21 + 1, 1, v14, v15, v16, v17);
        v9 = v51;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = v12;
      *(v22 + 40) = v11;
      v10 += 2;
      --v7;
    }

    while (v7);
    a1 = v48;
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1C706D154();
  v49 = v8;
  v23 = sub_1C6FB6304();
  for (i = 0; v23 != i; ++i)
  {
    OUTLINED_FUNCTION_9_40();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1CCA5DDD0](i, v6);
    }

    else
    {
      v25 = *(v6 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_1C75504FC();
    FMSong.moodTags()();
    sub_1C706D154();
    sub_1C7069A44();
    v28 = v27;

    v29 = *(v28 + 16);

    if (v29)
    {
      v30 = sub_1C755192C();
      OUTLINED_FUNCTION_8_32(v30, v31, v32, v33, v34, v35, v36, v37, v48, v49);
      OUTLINED_FUNCTION_4_45();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }
  }

  v6 = v49;
  if (qword_1EC213E38 == -1)
  {
    goto LABEL_20;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_78();
  swift_once();
LABEL_20:
  v38 = sub_1C754FF1C();
  __swift_project_value_buffer(v38, qword_1EC218358);

  sub_1C75504FC();
  v39 = sub_1C754FEEC();
  v40 = sub_1C755117C();

  if (os_log_type_enabled(v39, v40))
  {
    swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_31_0();
    v49 = v41;
    *v23 = 134218242;
    *(v23 + 4) = sub_1C6FB6304();

    *(v23 + 12) = 2080;
    v42 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
    v44 = sub_1C6F765A4(v42, v43, &v49);

    *(v23 + 14) = v44;
    OUTLINED_FUNCTION_2_55(&dword_1C6F5C000, v45, v46, "Found %ld Flex songs matching moods: %s");
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v6;
}

void *FlexMusicLibraryManager.songs(withIdentifiers:)(uint64_t a1)
{
  v32[0] = *v1;
  FlexMusicLibraryManager.allSongs(includeHidden:)(0);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v31 = a1;
  sub_1C706D154();
  v4 = v3;
  v34 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FB6304();
  v6 = 0;
  v7 = v33;
LABEL_2:
  while (v6 != v5)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA5DDD0](v6, v32);
    }

    else
    {
      if (v6 >= v32[2])
      {
        goto LABEL_24;
      }

      v8 = v33[v6];
    }

    v9 = v8;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = [v8 uid];
    v12 = sub_1C755068C();
    v14 = v13;

    if (*(v4 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v15 = sub_1C7551FAC();
      v16 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(v4 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v18 = (*(v4 + 48) + 16 * v17);
        if (*v18 != v12 || v18[1] != v14)
        {
          v20 = sub_1C7551DBC();
          v15 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_2;
      }
    }
  }

  v7 = v34;
  if (qword_1EC213E38 == -1)
  {
    goto LABEL_19;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_78();
  swift_once();
LABEL_19:
  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, qword_1EC218358);
  sub_1C75504FC();

  v22 = sub_1C754FEEC();
  v23 = sub_1C755117C();

  if (os_log_type_enabled(v22, v23))
  {
    swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_31_0();
    v32[0] = v24;
    *v5 = 134218242;
    *(v5 + 4) = sub_1C6FB6304();

    *(v5 + 12) = 2080;
    v25 = MEMORY[0x1CCA5D090](v31, MEMORY[0x1E69E6158]);
    v27 = sub_1C6F765A4(v25, v26, v32);

    *(v5 + 14) = v27;
    OUTLINED_FUNCTION_2_55(&dword_1C6F5C000, v28, v29, "Found %ld matching identifiers in: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v7;
}

unint64_t sub_1C7175464()
{
  result = qword_1EC218378;
  if (!qword_1EC218378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PIFFlexMusicError, &type metadata for PIFFlexMusicError, v0, v1);
    atomic_store(result, &qword_1EC218378);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIFFlexMusicError(_BYTE *result, int a2, int a3)
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

id static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(os_log_t a1, void *a2, char a3)
{
  if (qword_1EC213E40 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_1EC213E40);
  }

  v6 = qword_1EC25B690;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v7 = v6;
  PerformanceMeasure.init(name:log:)();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    result = [a1 photoLibrary];
    if (!result)
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = result;
    v8 = [result librarySpecificFetchOptions];
  }

  v11 = a2;
  v12 = sub_1C7175AD8(a1, v8, a3 & 1);
  v13 = objc_opt_self();
  v48 = v12;
  v14 = [v13 fetchAssetsWithOptions_];
  v15 = v14;
  v16 = &selRef_clsSceneClassifications;
  v17 = 0x1FB2A1000uLL;
  if (a3)
  {
    v18 = v7;
    if ([v14 count] <= 9)
    {
      v19 = sub_1C755117C();
      if (os_log_type_enabled(v7, v19))
      {
        swift_slowAlloc();
        HIDWORD(v45) = v19;
        v20 = OUTLINED_FUNCTION_1_61();
        v49 = v20;
        OUTLINED_FUNCTION_3_55(3.8521e-34);
        v21 = [a1 localIdentifier];
        v43 = sub_1C755068C();
        log = a1;
        v23 = v22;

        v24 = sub_1C6F765A4(v43, v23, &v49);
        a1 = log;

        *(v19 + 14) = v24;
        _os_log_impl(&dword_1C6F5C000, v18, v19, "Less than %ld summary assets for %s, using extended fallback", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v25 = sub_1C7175AD8(a1, v8, 0);
      v26 = a1;
      v27 = [v13 fetchAssetsWithOptions_];

      v15 = v27;
      a1 = v26;
      v17 = 0x1FB2A1000;
    }

    v16 = &selRef_clsSceneClassifications;
  }

  else
  {
    v18 = v7;
  }

  if ([v15 v16[32]])
  {
    goto LABEL_19;
  }

  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v18, v28))
  {
    swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_1_61();
    v49 = v29;
    *v17 = 136315138;
    loga = v18;
    v30 = a1;
    v31 = [a1 (v17 + 347)];
    v32 = sub_1C755068C();
    v34 = v33;

    a1 = v30;
    v35 = sub_1C6F765A4(v32, v34, &v49);

    *(v17 + 4) = v35;
    OUTLINED_FUNCTION_4_46(&dword_1C6F5C000, v36, v37, "No curated assets for %s, returning all assets", v38, v39, v40, v41, v44, v45, loga);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  result = [v13 fetchAssetsForPerson:a1 options:v8];
  if (result)
  {
    v42 = result;

    v15 = v42;
LABEL_19:
    sub_1C6F85170();

    return v15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C7175938()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC25B690 = result;
  return result;
}

uint64_t sub_1C71759B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v0 + 32) = sub_1C75511EC();
  swift_getKeyPath();
  *(v0 + 40) = sub_1C75511EC();
  return v0;
}

uint64_t sub_1C7175A50@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1C754DF2C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

id sub_1C7175AD8(void *a1, id a2, char a3)
{
  [a2 copy];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
  swift_dynamicCast();
  if (sub_1C72D0E24(v21) || sub_1C72D0E94(v21))
  {
  }

  else
  {
    v20 = sub_1C71759B4();
    sub_1C71F8834(v20, v21);
  }

  v6 = objc_opt_self();
  v7 = &selRef_predicateForSourcingAssetsFromHighlightSummaryCuration;
  if ((a3 & 1) == 0)
  {
    v7 = &selRef_predicateForSourcingAssetsFromHighlightExtendedCuration;
  }

  v8 = [v6 *v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7565670;
  *(v9 + 32) = v8;
  v22 = v9;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C755BAA0;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C6F6D524();
    strcpy((v10 + 32), "detectedFaces");
    *(v10 + 46) = -4864;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    strcpy((v10 + 72), "personForFace");
    *(v10 + 86) = -4864;
    v13 = v8;
    v14 = a1;
    result = [v14 objectID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    *(v10 + 136) = sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    *(v10 + 144) = sub_1C71764D4();
    *(v10 + 112) = v16;
    sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v17 = v22;
  }

  else
  {
    v17 = v9;
    v18 = v8;
  }

  if ([a2 internalPredicate])
  {
    MEMORY[0x1CCA5D040]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v17 = v22;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v19 = sub_1C6F6E5C4(v17);
  [v21 setInternalPredicate_];

  return v21;
}

id static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(void *a1, void *a2, char a3, char a4)
{
  if (qword_1EC213E40 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_1EC213E40);
  }

  v8 = qword_1EC25B690;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v9 = v8;
  PerformanceMeasure.init(name:log:)();
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    result = [a1 photoLibrary];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v10 = [result librarySpecificFetchOptions];
  }

  v13 = a2;
  v14 = sub_1C7175AD8(0, v10, a3 & 1);
  v15 = objc_opt_self();
  v16 = &selRef_fetchInclusiveAssetsForSocialGroup_options_;
  if ((a4 & 1) == 0)
  {
    v16 = &selRef_fetchExclusiveAssetsForSocialGroup_options_;
  }

  v17 = [v15 *v16];
  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  if ((a3 & 1) != 0 && [v17 count] <= 9)
  {
    log = v14;
    v18 = sub_1C755117C();
    if (os_log_type_enabled(v9, v18))
    {
      swift_slowAlloc();
      HIDWORD(v50) = v18;
      v49 = OUTLINED_FUNCTION_1_61();
      v55 = v49;
      OUTLINED_FUNCTION_3_55(3.8521e-34);
      v53 = a4;
      v19 = [a1 localIdentifier];
      v20 = a1;
      v21 = sub_1C755068C();
      v23 = v22;

      v24 = v21;
      a1 = v20;
      v25 = sub_1C6F765A4(v24, v23, &v55);

      *(v18 + 14) = v25;
      a4 = v53;
      _os_log_impl(&dword_1C6F5C000, v9, v18, "Less than %ld summary assets for SG %s, using extended fallback", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v26 = sub_1C7175AD8(0, v10, 0);
    v27 = objc_opt_self();
    v28 = a4;
    v29 = &selRef_fetchInclusiveAssetsForSocialGroup_options_;
    if ((a4 & 1) == 0)
    {
      v29 = &selRef_fetchExclusiveAssetsForSocialGroup_options_;
    }

    v30 = [v27 *v29];
    if (!v30)
    {
      v30 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v17 = v30;
    a4 = v28;
    v14 = log;
  }

  if (![v17 count])
  {
    v31 = sub_1C75511BC();
    if (os_log_type_enabled(v9, v31))
    {
      swift_slowAlloc();
      v54 = a4;
      v32 = OUTLINED_FUNCTION_1_61();
      v55 = v32;
      LODWORD(off_1E82A3000) = 136315138;
      loga = v9;
      v33 = v14;
      v34 = a1;
      v35 = [a1 localIdentifier];
      v36 = sub_1C755068C();
      v38 = v37;

      v39 = sub_1C6F765A4(v36, v38, &v55);

      *(&off_1E82A3000 + 4) = v39;
      a1 = v34;
      v14 = v33;
      OUTLINED_FUNCTION_4_46(&dword_1C6F5C000, v40, v41, "No curated assets for social group %s, returning all assets", v42, v43, v44, v45, v49, v50, loga);
      __swift_destroy_boxed_opaque_existential_1(v32);
      a4 = v54;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v46 = objc_opt_self();
    v47 = &selRef_fetchInclusiveAssetsForSocialGroup_options_;
    if ((a4 & 1) == 0)
    {
      v47 = &selRef_fetchExclusiveAssetsForSocialGroup_options_;
    }

    v48 = [v46 *v47];
    if (!v48)
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v17 = v48;
  }

  sub_1C6F85170();

  return v17;
}

id PersonCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonCuration.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonCuration();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PersonCuration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonCuration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C71764D4()
{
  result = qword_1EC218380;
  if (!qword_1EC218380)
  {
    v3 = sub_1C6F65BE8(255, &qword_1EDD0FAB0, 0x1E695D630);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &qword_1EC218380);
  }

  return result;
}

uint64_t static StorylineAndImageSurveyUtility.storylineQuestions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75650C0;
  v29 = 0;
  v1 = type metadata accessor for FeatureSurveyYesNoQuestion();
  OUTLINED_FUNCTION_1_62(v1);
  OUTLINED_FUNCTION_0_80();
  *(v0 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v2, v3, v4, v5, v6, v7, v8, v9, 0x80000001C75A13F0, 1, &v29);
  v28 = 0;
  OUTLINED_FUNCTION_1_62(v1);
  OUTLINED_FUNCTION_0_80();
  *(v0 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v10, v11, v12, v13, v14, v15, v16, v17, 0x80000001C75A1440, 1, &v28);
  v27 = 0;
  OUTLINED_FUNCTION_1_62(v1);
  OUTLINED_FUNCTION_0_80();
  *(v0 + 48) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v18, v19, v20, v21, v22, v23, v24, v25, 0x80000001C75A14B0, 1, &v27);
  return v0;
}

void *static StorylineAndImageSurveyUtility.imageRetrievalQuestions(for:)(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = (v1 + 80);
  v47 = v1;
  sub_1C75504FC();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v5 = *(v47 + 16);
    if (v3 == v5)
    {

      return v4;
    }

    if (v3 >= v5)
    {
      break;
    }

    v7 = *(v2 - 1);
    v6 = *v2;
    v8 = *(v2 - 3);
    v9 = *(v2 - 2);
    v11 = *(v2 - 5);
    v10 = *(v2 - 4);
    *&v49 = *(v2 - 6);
    *(&v49 + 1) = v11;
    *&v50 = v10;
    *(&v50 + 1) = v8;
    *&v51 = v9;
    *(&v51 + 1) = v7;
    v52 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C7564A90;
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    v13 = v9;
    v14 = v7;
    sub_1C75504FC();
    sub_1C755180C();

    strcpy(v48, "imageRetrieval");
    HIBYTE(v48[1]) = -18;
    v15 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v15);

    MEMORY[0x1CCA5CD70](0x7365686374614DLL, 0xE700000000000000);
    LOBYTE(v48[0]) = 0;
    v16 = type metadata accessor for FeatureSurveyYesNoQuestion();
    OUTLINED_FUNCTION_1_62(v16);
    OUTLINED_FUNCTION_0_80();
    *(v12 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v17, v18, v19, v20, v21, v22, v23, 0xD00000000000002ALL, 0x80000001C75A14F0, 0, v48);
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1C755180C();

    strcpy(v48, "imageRetrieval");
    HIBYTE(v48[1]) = -18;
    v24 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v24);

    MEMORY[0x1CCA5CD70](1953719618, 0xE400000000000000);
    LOBYTE(v48[0]) = 0;
    OUTLINED_FUNCTION_1_62(v16);
    OUTLINED_FUNCTION_0_80();
    *(v12 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v25, v26, v27, v28, v29, v30, v31, v32, 0x80000001C75A1520, 0, v48);
    swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v4;
    v33 = sub_1C6FC3054();
    if (__OFADD__(v4[2], (v34 & 1) == 0))
    {
      goto LABEL_15;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218388, &qword_1C7571428);
    if (sub_1C7551A2C())
    {
      v37 = sub_1C6FC3054();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_17;
      }

      v35 = v37;
    }

    v4 = v48[0];
    if (v36)
    {
      *(*(v48[0] + 56) + 8 * v35) = v12;

      sub_1C7176D9C(&v49);
    }

    else
    {
      *(v48[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v39 = v4[6] + 56 * v35;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      *(v39 + 48) = v52;
      *(v39 + 16) = v41;
      *(v39 + 32) = v42;
      *v39 = v40;
      *(v4[7] + 8 * v35) = v12;
      v43 = v4[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_16;
      }

      v4[2] = v45;
    }

    v2 += 7;
    ++v3;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void *static StorylineAndImageSurveyUtility.imageQueriesQuestions(for:)(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = (v1 + 80);
  sub_1C75504FC();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v5 = *(v1 + 16);
    if (v3 == v5)
    {

      return v4;
    }

    if (v3 >= v5)
    {
      break;
    }

    v7 = *(v2 - 1);
    v6 = *v2;
    v8 = *(v2 - 3);
    v9 = *(v2 - 2);
    v10 = *(v2 - 5);
    v11 = *(v2 - 4);
    *&v40 = *(v2 - 6);
    *(&v40 + 1) = v10;
    *&v41 = v11;
    *(&v41 + 1) = v8;
    *&v42 = v9;
    *(&v42 + 1) = v7;
    v43 = v6;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    v12 = v9;
    v13 = v7;
    sub_1C75504FC();
    sub_1C755180C();

    v38 = 0x6575516567616D69;
    v39 = 0xEA00000000007972;
    v14 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v14);

    MEMORY[0x1CCA5CD70](0x676E6964726F77, 0xE700000000000000);
    LOBYTE(v38) = 0;
    v15 = type metadata accessor for FeatureSurveyYesNoQuestion();
    OUTLINED_FUNCTION_1_62(v15);
    OUTLINED_FUNCTION_0_80();
    v23 = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v16, v17, v18, v19, v20, v21, v22, 0xD000000000000080, 0x80000001C75A1580, 0, &v38);
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v4;
    v24 = sub_1C6FC3054();
    if (__OFADD__(v4[2], (v25 & 1) == 0))
    {
      goto LABEL_15;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218390, &unk_1C7571430);
    if (sub_1C7551A2C())
    {
      v28 = sub_1C6FC3054();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_17;
      }

      v26 = v28;
    }

    v4 = v38;
    if (v27)
    {
      *(*(v38 + 56) + 8 * v26) = v23;

      sub_1C7176D9C(&v40);
    }

    else
    {
      *(v38 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v30 = v4[6] + 56 * v26;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      *(v30 + 48) = v43;
      *(v30 + 16) = v32;
      *(v30 + 32) = v33;
      *v30 = v31;
      *(v4[7] + 8 * v26) = v23;
      v34 = v4[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      v4[2] = v36;
    }

    v2 += 7;
    ++v3;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MusicMoodRanker.__allocating_init(usingCache:)()
{
  OUTLINED_FUNCTION_42();
  swift_allocObject();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7176ECC;

  return MusicMoodRanker.init(usingCache:)();
}

uint64_t sub_1C7176ECC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t MusicMoodRanker.init(usingCache:)()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C754FF1C();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71770B4, 0, 0);
}

uint64_t sub_1C71770B4()
{
  v101 = v0;
  v1 = v0[3];
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC18PhotosIntelligence15MusicMoodRanker_logger;
  v0[12] = OBJC_IVAR____TtC18PhotosIntelligence15MusicMoodRanker_logger;
  v96 = v2;
  sub_1C754FEFC();
  v95 = v1;
  *(v1 + 112) = [objc_allocWithZone(PNTextEmbeddingService) init];
  if (qword_1EDD06CC8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v3 = 0;
  v4 = off_1EDD06CD0;
  v5 = *(off_1EDD06CD0 + 2);
  v6 = (off_1EDD06CD0 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[13] = v7;
    v8 = v4[2];
    if (v5 == v3)
    {
      break;
    }

    if (v3 >= v8)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v10 = *(v6 - 1);
    v9 = *v6;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v7 = v13;
    }

    v11 = *(v7 + 16);
    if (v11 >= *(v7 + 24) >> 1)
    {
      sub_1C6FB1814();
      v7 = v14;
    }

    *(v7 + 16) = v11 + 1;
    v12 = v7 + 16 * v11;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    v6 += 16;
    ++v3;
  }

  v15 = 0;
  v16 = v4 + 16;
  v17 = MEMORY[0x1E69E7CC0];
  v97 = v4;
  for (i = v0; ; v0 = i)
  {
    v0[14] = v17;
    if (v8 == v15)
    {
      break;
    }

    if (v15 >= v4[2])
    {
      goto LABEL_42;
    }

    v18 = *(v16 - 1);
    v19 = *v16;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v17 = v22;
    }

    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1C6FB1814();
      v17 = v23;
    }

    *(v17 + 16) = v20 + 1;
    v21 = v17 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    v16 += 16;
    ++v15;
    v4 = v97;
  }

  if (!*(v7 + 16))
  {
    v42 = v0[7];
    v44 = v0[4];
    v43 = v0[5];

    (*(v43 + 16))(v42, v95 + v96, v44);
    v45 = sub_1C754FEEC();
    v46 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v46))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v47, v48, "No mood strings found");
      OUTLINED_FUNCTION_109();
    }

    v49 = v0[7];
    v50 = v0[4];
    v51 = v0[5];

    v52 = *(v51 + 8);
    v52(v49, v50);
    sub_1C717948C();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();
    v54 = v0[12];
    v55 = v0[4];
    v57 = v0[2];
    v56 = v0[3];

    v52(v56 + v54, v55);
    type metadata accessor for MusicMoodRanker(0);
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v24 = v0[2];
  v25 = v95;
  if (v24)
  {
    v26 = v0[5];
    v27 = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v98 = *(v26 + 16);
    v98(v0[11], v95 + v96, v0[4]);
    v28 = v24;
    v29 = sub_1C754FEEC();
    v30 = sub_1C755118C();
    if (OUTLINED_FUNCTION_66(v30))
    {
      v31 = OUTLINED_FUNCTION_127();
      *v31 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v32, v33, v34, v35, v31, 2u);
      OUTLINED_FUNCTION_109();
    }

    v36 = i[11];
    v38 = i[4];
    v37 = i[5];

    v94 = *(v37 + 8);
    v94(v36, v38);
    v100[0] = 1;
    v39 = v28;
    v41 = StoryMusicCache.read(cacheType:)(v100, v40);
    v62 = v41;
    v25 = v95;
    if (*(v41 + 16))
    {
      v63 = i[10];
      v64 = i[4];

      v98(v63, v95 + v96, v64);
      v65 = sub_1C754FEEC();
      v66 = sub_1C755117C();
      if (OUTLINED_FUNCTION_21_0(v66))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v67, v68, "(Mood embeddings cache) Using the cached embeddings");
        OUTLINED_FUNCTION_109();
      }

      v69 = i[10];
      v70 = i[4];
      v71 = i[3];

      v94(v69, v70);
      *(v71 + 120) = v62;
      OUTLINED_FUNCTION_94_1();

      return MEMORY[0x1EEE6DFA0](v72, v73, v74);
    }

    v61 = v98;
    v0 = i;
  }

  else
  {
    v60 = v0[5];
    v61 = *(v60 + 16);
    v27 = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v76 = v0[9];
  v77 = v0[4];
  v0[15] = v61;
  v0[16] = v27;
  v61(v76, v25 + v96, v77);
  v78 = sub_1C754FEEC();
  v79 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v79))
  {
    v80 = OUTLINED_FUNCTION_127();
    *v80 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v81, v82, v83, v84, v80, 2u);
    OUTLINED_FUNCTION_109();
  }

  v85 = i[9];
  v87 = i[4];
  v86 = i[5];

  v88 = *(v86 + 8);
  i[17] = v88;
  v88(v85, v87);
  v89 = *(v25 + 112);
  i[18] = v89;
  v89;
  v90 = swift_task_alloc();
  i[19] = v90;
  *v90 = i;
  v90[1] = sub_1C7177968;
  OUTLINED_FUNCTION_94_1();

  return PNTextEmbeddingService.encode(_:)(v91);
}

uint64_t sub_1C71778BC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 24);

  return v2(v3);
}

uint64_t sub_1C7177968()
{
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 160) = v7;
  *(v3 + 168) = v0;

  v8 = *(v2 + 144);
  if (v0)
  {

    v9 = sub_1C7177F18;
  }

  else
  {

    v9 = sub_1C7177AD4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C7177AD4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v20 = *(v3 + 160);
  v5 = MEMORY[0x1E69E7CC8];
  for (i = (*(v3 + 104) + 40); ; i += 2)
  {
    if (v21 == v4)
    {
      v18 = *(v22 + 24);

      *(v18 + 120) = v5;
      a1 = sub_1C7177D08;
      a2 = v18;
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    if (v4 >= *(*(v22 + 104) + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    if (v4 >= *(v20 + 16))
    {
      goto LABEL_21;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *(v20 + 32 + 8 * v4);
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    a1 = sub_1C6F78124(v8, v7);
    if (__OFADD__(*(v5 + 16), (a2 & 1) == 0))
    {
      goto LABEL_22;
    }

    v10 = a1;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F90, &unk_1C7571480);
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_9:
    if (v11)
    {
      *(*(v5 + 56) + 8 * v10) = v9;
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      *v14 = v8;
      v14[1] = v7;
      *(*(v5 + 56) + 8 * v10) = v9;
      v15 = *(v5 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      *(v5 + 16) = v17;
    }

    ++v4;
  }

  v12 = sub_1C6F78124(v8, v7);
  if ((v11 & 1) == (v13 & 1))
  {
    v10 = v12;
    goto LABEL_9;
  }

  return sub_1C7551E4C();
}

uint64_t sub_1C7177D08()
{
  v21 = v0;
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_8;
  }

  (*(v0 + 120))(*(v0 + 64), *(v0 + 24) + *(v0 + 96), *(v0 + 32));
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    *v5 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_109();
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 64);
  v12 = *(v0 + 32);
  v13 = *(v0 + 24);

  v10(v11, v12);
  v20 = 1;
  v14._rawValue = *(v13 + 120);
  sub_1C75504FC();
  StoryMusicCache.write(cacheType:using:)(&v20, v14);

  if (v15)
  {

    OUTLINED_FUNCTION_43();

    return v16();
  }

  else
  {
LABEL_8:

    OUTLINED_FUNCTION_116();
    v19 = *(v0 + 24);

    return v18(v19);
  }
}

uint64_t sub_1C7177F18()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  v1(v4 + v2, v3);
  type metadata accessor for MusicMoodRanker(0);
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C7178040(uint64_t a1, uint64_t a2)
{
  *(v3 + 400) = v2;
  v5 = swift_task_alloc();
  *(v3 + 408) = v5;
  *v5 = v3;
  v6 = OUTLINED_FUNCTION_1_63(v5);

  return sub_1C7178C54(v6, a2);
}

uint64_t sub_1C71780E0()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[52] = v6;
  v3[53] = v0;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = v3[50];

    return MEMORY[0x1EEE6DFA0](sub_1C7178220, v9, 0);
  }
}

void sub_1C7178220()
{
  v87 = v0;
  type metadata accessor for MusicMoodRanker(0);
  v2 = static MusicMoodRanker.standardizeMoodScores(scoreByMoodName:)();
  v3 = static MusicMoodRanker.filterMoodsBelowTermThreshold(scoreByMoodName:)(v2);
  if (!*(v3 + 16))
  {

    sub_1C75504FC();
    v14 = sub_1C754FEEC();
    v15 = sub_1C755117C();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_41_0();
      v16 = OUTLINED_FUNCTION_31_0();
      v86[0] = v16;
      *v1 = 136315138;
      v17 = sub_1C75504BC();
      v19 = v18;

      v20 = sub_1C6F765A4(v17, v19, v86);

      *(v1 + 4) = v20;
LABEL_8:
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v21, v22, v23, v24, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215018, &qword_1C75714A0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C755BAB0;
      LOBYTE(v86[0]) = 0;
      static MusicMood.musicMoodFromMoodIdentifier(_:)(v86, (v44 + 32));
      goto LABEL_42;
    }

LABEL_16:

    goto LABEL_17;
  }

  v11 = *(v0 + 424);
  sub_1C739C6C4(v3, v4, v5, v6, v7, v8, v9, v10, v75, v77, v79, v81, v83, v86[0], v86[1], v86[2], v86[3], v86[4], v86[5], v86[6], v86[7], v86[8], v86[9], v87, v88, v89);
  v86[0] = v12;
  sub_1C7179420(v86);
  if (v11)
  {

    OUTLINED_FUNCTION_94_1();

    return;
  }

  v29 = v86[0];
  v1 = *(v86[0] + 16);
  if (v1)
  {
    v86[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v1, 0, v25, v26, v27, v28);
    v30 = 0;
    v31 = v86[0];
    v32 = *(v86[0] + 16);
    v33 = 16 * v32;
    v84 = v29;
    do
    {
      v35 = *(v29 + v30 + 32);
      v34 = *(v29 + v30 + 40);
      v86[0] = v31;
      v36 = *(v31 + 24);
      v37 = v32 + 1;
      v38 = v31;
      sub_1C75504FC();
      v31 = v38;
      if (v32 >= v36 >> 1)
      {
        sub_1C6F7ED9C(v36 > 1, v37, 1, v39, v40, v41, v42);
        v31 = v86[0];
      }

      *(v31 + 16) = v37;
      v43 = v31 + v33;
      *(v43 + 32) = v35;
      *(v43 + 40) = v34;
      v33 += 16;
      v30 += 24;
      ++v32;
      --v1;
      v29 = v84;
    }

    while (v1);
    v45 = v31;

    v46 = v45;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v47 = 0;
  v78 = v46 + 32;
  v80 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  v76 = v46;
LABEL_20:
  if (v47 == v80)
  {
    if (*(v48 + 16))
    {

LABEL_42:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }

    v69 = v46;

    sub_1C75504FC();
    v14 = sub_1C754FEEC();
    v70 = sub_1C755119C();

    if (os_log_type_enabled(v14, v70))
    {
      OUTLINED_FUNCTION_41_0();
      v16 = OUTLINED_FUNCTION_31_0();
      v86[0] = v16;
      *v1 = 136315138;
      v71 = MEMORY[0x1CCA5D090](v69, MEMORY[0x1E69E6158]);
      v73 = v72;

      v74 = sub_1C6F765A4(v71, v73, v86);

      *(v1 + 4) = v74;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if (v47 >= *(v46 + 16))
  {
    goto LABEL_49;
  }

  v85 = v48;
  v1 = *(v78 + 16 * v47 + 8);
  v49 = qword_1EDD06CC8;
  sub_1C75504FC();
  if (v49 != -1)
  {
    swift_once();
  }

  v50 = 0;
  v82 = v47 + 1;
  v51 = off_1EDD06CD0;
  v52 = *(off_1EDD06CD0 + 2);
  for (i = off_1EDD06CD0 + 32; ; i += 128)
  {
    if (v52 == v50)
    {

      v46 = v76;
      v47 = v82;
      v48 = v85;
      goto LABEL_20;
    }

    if (v50 >= v51[2])
    {
      break;
    }

    memcpy((v0 + 16), i, 0x80uLL);
    v54 = sub_1C75506FC();
    v56 = v55;
    if (v54 == sub_1C75506FC() && v56 == v57)
    {
      sub_1C709D4BC(v0 + 16, v0 + 272);

LABEL_35:

      v48 = v85;
      v47 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB38F4(v62, v63, v64, v85);
        v48 = v65;
      }

      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      v1 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        sub_1C6FB38F4(v60 > 1, v61 + 1, 1, v48);
        v48 = v66;
      }

      *(v48 + 16) = v1;
      memcpy((v48 + (v61 << 7) + 32), (v0 + 16), 0x80uLL);
      v46 = v76;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_2_56();
    v59 = sub_1C7551DBC();
    sub_1C709D4BC(v0 + 16, v0 + 144);

    if (v59)
    {
      goto LABEL_35;
    }

    sub_1C713A098(v0 + 16);
    ++v50;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t static MusicMoodRanker.standardizeMoodScores(scoreByMoodName:)()
{
  v0 = sub_1C75504FC();
  v1 = sub_1C71CD90C(v0);
  v2 = sub_1C75504FC();
  v3 = sub_1C71CDAEC(v2);
  v4 = sub_1C73C6DDC(v3);

  v5 = 0;
  v22 = *(v1 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  v23 = v1;
  for (i = (v1 + 40); ; i += 2)
  {
    if (v22 == v5)
    {

      return v6;
    }

    if (v5 >= *(v23 + 16))
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      goto LABEL_16;
    }

    v9 = *(i - 1);
    v8 = *i;
    v10 = *(v4 + 4 * v5 + 32);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1C6F78124(v9, v8);
    if (__OFADD__(*(v6 + 16), (v12 & 1) == 0))
    {
      goto LABEL_17;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
    if (sub_1C7551A2C())
    {
      v15 = sub_1C6F78124(v9, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v13 = v15;
    }

    if (v14)
    {
      *(*(v6 + 56) + 4 * v13) = v10;
    }

    else
    {
      OUTLINED_FUNCTION_0_81();
      *v17 = v9;
      v17[1] = v8;
      *(*(v6 + 56) + 4 * v13) = v10;
      v18 = *(v6 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_18;
      }

      *(v6 + 16) = v20;
    }

    ++v5;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t static MusicMoodRanker.filterMoodsBelowTermThreshold(scoreByMoodName:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1C75504FC();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v5 &= v5 - 1;
    sub_1C75504FC();
    v11 = OUTLINED_FUNCTION_2_56();
    v13 = sub_1C6FE1358(v11, v12, a1);
    if ((v13 & 0x100000000) != 0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *&v13;
    }

    OUTLINED_FUNCTION_2_56();
    static MusicMood.musicMoodFromMoodName(_:)(v15);
    memcpy(__dst, __src, 0x80uLL);
    if (sub_1C70808D8(__dst) == 1)
    {
      if (v14 <= 0.0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      memcpy(v22, __dst, sizeof(v22));
      v16 = MusicMood.currentModelScoreThreshold()();
      memcpy(v23, v22, sizeof(v23));
      sub_1C713A098(v23);
      if (v16 >= v14)
      {
        goto LABEL_18;
      }
    }

    v17 = OUTLINED_FUNCTION_2_56();
    if ((sub_1C6FE1358(v17, v18, a1) & 0x100000000) != 0)
    {
      v19 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v19, v20);
      if (v21)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v23[0] = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
        sub_1C7551A2C();
        v9 = v23[0];

        sub_1C7551A4C();
      }

LABEL_18:
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v9;
      OUTLINED_FUNCTION_2_56();
      sub_1C6FC875C();

      v9 = v23[0];
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7178C54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7178C78, v2, 0);
}

uint64_t sub_1C7178C78()
{
  OUTLINED_FUNCTION_123();
  if (sub_1C75507FC() < 1)
  {
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v8))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v9, v10, "Empty prompt, can't compute text embeddings");
      OUTLINED_FUNCTION_109();
    }

    sub_1C717948C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v12();
  }

  else
  {
    v2 = v0[2];
    v1 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v3 = swift_allocObject();
    v0[5] = v3;
    *(v3 + 16) = xmmword_1C755BAB0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    sub_1C75504FC();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_1_63(v4);

    return PNTextEmbeddingService.encode(_:)(v5);
  }
}

uint64_t sub_1C7178E1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  v3[7] = v5;
  v3[8] = v0;

  if (v0)
  {
    v6 = v3[4];
    v7 = sub_1C71792F8;
  }

  else
  {
    v8 = v3[4];

    v7 = sub_1C7178F34;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C7178F34()
{
  v48 = v0;
  v2 = v0[7];
  v3 = v0[4];
  if (!*(v2 + 16))
  {

    sub_1C75504FC();
    v34 = sub_1C754FEEC();
    v35 = sub_1C755119C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v0[2];
      v37 = v0[3];
      OUTLINED_FUNCTION_41_0();
      v38 = OUTLINED_FUNCTION_31_0();
      v47 = v38;
      *v1 = 136315138;
      *(v1 + 4) = sub_1C6F765A4(v36, v37, &v47);
      _os_log_impl(&dword_1C6F5C000, v34, v35, "Encoder produced no embeddings for prompt (%s)", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    sub_1C717948C();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X1, X16 }
  }

  v46 = *(v2 + 32);
  sub_1C75504FC();

  v4 = *(v3 + 120);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v45 = v4;
  result = sub_1C75504FC();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v43 = v9;
  v44 = v5;
  if (v8)
  {
LABEL_9:
    while (1)
    {
      v14 = (*(v45 + 48) + 16 * (__clz(__rbit64(v8)) | (v11 << 6)));
      v16 = *v14;
      v15 = v14[1];
      sub_1C7179E9C();
      sub_1C75504FC();
      v17 = sub_1C75504FC();
      v18 = static PNTextEmbeddingService.score(from:relativeTo:)(v17, v46);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v12;
      v19 = OUTLINED_FUNCTION_2_56();
      result = sub_1C6F78124(v19, v20);
      if (__OFADD__(v12[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = result;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
      v12 = v47;
      if (sub_1C7551A2C())
      {
        v24 = OUTLINED_FUNCTION_2_56();
        v26 = sub_1C6F78124(v24, v25);
        if ((v23 & 1) != (v27 & 1))
        {
          OUTLINED_FUNCTION_12_1();

          return sub_1C7551E4C();
        }

        v22 = v26;
      }

      if (v23)
      {
        *(v47[7] + 4 * v22) = v18;
      }

      else
      {
        v47[(v22 >> 6) + 8] |= 1 << v22;
        v28 = (v12[6] + 16 * v22);
        *v28 = v16;
        v28[1] = v15;
        *(v12[7] + 4 * v22) = v18;

        v29 = v12[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_32;
        }

        v12[2] = v31;
      }

      v8 &= v8 - 1;
      v9 = v43;
      v5 = v44;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_12_1();

        __asm { BRAA            X2, X16 }
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v11 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C71792F8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t MusicMoodRanker.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence15MusicMoodRanker_logger;
  v2 = sub_1C754FF1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MusicMoodRanker.__deallocating_deinit()
{
  MusicMoodRanker.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7179420(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422CFC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C717952C(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1C717948C()
{
  result = qword_1EC218398;
  if (!qword_1EC218398)
  {
    result = swift_getWitnessTable(byte_1C75715B8, &type metadata for MusicMoodRanker.Error, v0, v1);
    atomic_store(result, &qword_1EC218398);
  }

  return result;
}

uint64_t type metadata accessor for MusicMoodRanker(uint64_t a1)
{
  result = qword_1EDD0BBF0;
  if (!qword_1EDD0BBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C717952C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F40, &unk_1C7571190);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71796AC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C7179630(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C7179630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 40);
        if (*(v8 + 16) >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 24);
        v10 = *(v8 + 32);
        v12 = *(v8 + 16);
        *(v8 + 24) = *v8;
        *(v8 + 40) = v12;
        *v8 = v11;
        *(v8 + 8) = v10;
        *(v8 + 16) = v9;
        v8 -= 24;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C71796AC(float **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = 24 * v7;
        v12 = *a3 + 24 * v7;
        v13 = *(v12 + 16);
        v14 = (v12 + 64);
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v13 < v10) ^ (*(v14 - 6) >= *v14);
          v14 += 6;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 24 * v6 - 8;
            v19 = v9;
            v20 = v7;
            do
            {
              if (v20 != --v19)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v22 = (v21 + v11);
                v23 = (v21 + v18);
                v24 = *v22;
                v25 = v22[1];
                v26 = *(v22 + 4);
                v27 = *v23;
                *v22 = *(v23 - 1);
                v22[2] = v27;
                *(v23 - 2) = v24;
                *(v23 - 1) = v25;
                *v23 = v26;
              }

              ++v20;
              v18 -= 24;
              v11 += 24;
            }

            while (v20 < v19);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 24 * v9 - 24;
            v30 = v7 - v9;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = *(v32 + 40);
                if (*(v32 + 16) >= v33)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v35 = *(v32 + 24);
                v34 = *(v32 + 32);
                v36 = *(v32 + 16);
                *(v32 + 24) = *v32;
                *(v32 + 40) = v36;
                *v32 = v35;
                *(v32 + 8) = v34;
                *(v32 + 16) = v33;
                v32 -= 24;
              }

              while (!__CFADD__(v31++, 1));
              ++v9;
              v29 += 24;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_1C6FB17EC(v38 > 1, v39 + 1, 1, v8);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C7179CF0((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C7179BB8(&v89, *result, a3);
LABEL_89:
}

uint64_t sub_1C7179BB8(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C7179CF0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C7179CF0(char *a1, float *a2, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D08(a1, (a2 - a1) / 24, a4);
    v10 = &v4[6 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[4] >= v6[4])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 6;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 6;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C7423D08(a2, (a3 - a2) / 24, a4);
  v10 = &v4[6 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 2) < *(v10 - 2))
    {
      v17 = v6 - 6;
      v13 = v5 + 24 == v6;
      v6 -= 6;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 6);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 6;
  }

LABEL_28:
  v19 = 6 * ((v10 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19 * 4);
  }

  return 1;
}

unint64_t sub_1C7179E9C()
{
  result = qword_1EDD0CDB8;
  if (!qword_1EDD0CDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CDB8);
  }

  return result;
}

uint64_t sub_1C7179EE8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicMoodRanker.__allocating_init(usingCache:)(uint64_t a1)
{
  v7 = (*(v1 + 112) + **(v1 + 112));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v4[1] = sub_1C717A4FC;

  return v7(a1);
}

uint64_t dispatch thunk of MusicMoodRanker.sortedMoods(from:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_19_27();
  v7 = (*(v1 + 120) + **(v1 + 120));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_63(v3);

  return v7(v5, v0);
}

uint64_t dispatch thunk of MusicMoodRanker.scoreByMoodName(from:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_19_27();
  v7 = (*(v1 + 128) + **(v1 + 128));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_63(v3);

  return v7(v5, v0);
}

uint64_t sub_1C717A2DC()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_40();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for MusicMoodRanker.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C717A4A8()
{
  result = qword_1EC2183A0;
  if (!qword_1EC2183A0)
  {
    result = swift_getWitnessTable(byte_1C7571590, &type metadata for MusicMoodRanker.Error, v0, v1);
    atomic_store(result, &qword_1EC2183A0);
  }

  return result;
}

uint64_t sub_1C717A500()
{
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C717A60C(char a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](qword_1C7571A90[a1]);
  return sub_1C7551FAC();
}

uint64_t sub_1C717A6C4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1 - 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C717A780()
{
  OUTLINED_FUNCTION_106();
  v0 = ActivityFeatureCode.rawValue.getter();
  sub_1C75513FC();

  return sub_1C7551FAC();
}

uint64_t sub_1C717A830()
{
  v0 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_14_33(v0);
  return sub_1C7551FAC();
}

uint64_t sub_1C717A998()
{
  v0 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_14_33(v0);
  return sub_1C7551FAC();
}

uint64_t sub_1C717AB54(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_106();
  a2(a1);
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C717ABDC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_106();
  a2(v5, a1);
  return sub_1C7551FAC();
}

uint64_t sub_1C717AC24(uint64_t a1)
{
  OUTLINED_FUNCTION_106();
  sub_1C7551F6C();
  return sub_1C7551FAC();
}

uint64_t sub_1C717AC64(uint64_t a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1);
  return sub_1C7551FAC();
}

uint64_t MemoryLaunchType.rawValue.getter()
{
  result = 0x7542657461657263;
  switch(*v0)
  {
    case 1:
      result = 0x7261437972746E65;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v2 = 0x4278696D6572;
      goto LABEL_7;
    case 4:
      result = 0x4970704169726973;
      break;
    case 5:
    case 9:
      result = 0x6C616E7265746E69;
      break;
    case 6:
      result = 0x78654E6863746177;
      break;
    case 7:
      v2 = 0x6374726F6873;
LABEL_7:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7475000000000000;
      break;
    case 8:
      result = OUTLINED_FUNCTION_7_38(0x6E75u);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MemoryLaunchType.prettyPrint.getter()
{
  result = 0x4220657461657243;
  switch(*v0)
  {
    case 1:
      result = 0x6143207972746E45;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x75422078696D6552;
      break;
    case 4:
      result = 0x7070412069726953;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0x654E206863746157;
      break;
    case 7:
      result = 0x74756374726F6853;
      break;
    case 8:
      result = OUTLINED_FUNCTION_7_38(0x6E55u);
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::MemoryLaunchType_optional __swiftcall MemoryLaunchType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C717AFE0@<X0>(uint64_t *a1@<X8>)
{
  result = MemoryLaunchType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C717B058()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
}

double sub_1C717B08C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_57(v2 + 16, a2);
  *(v2 + 16) = a1;

  return result;
}

uint64_t sub_1C717B0F4()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
}

double sub_1C717B128(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_57(v2 + 40, a2);
  *(v2 + 40) = a1;

  return result;
}

void *sub_1C717B164(char *a1)
{
  v2 = v1;
  v3 = *a1;
  type metadata accessor for QueryUnderstandingStatistics();
  swift_allocObject();
  v1[2] = QueryUnderstandingStatistics.init()();
  type metadata accessor for TraitsStatistics();
  v4 = swift_allocObject();
  sub_1C717B898();
  v2[3] = v4;
  type metadata accessor for ChapterStatistics();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = 0;
  *(v5 + 24) = v6;
  v2[4] = v5;
  v10 = v3;
  type metadata accessor for MemoryStatistics(0);
  v7 = swift_allocObject();
  sub_1C717BDB8(&v10);
  v2[5] = v7;
  type metadata accessor for ErrorStatistics();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v2[6] = v8;
  type metadata accessor for MusicStatistics(0);
  swift_allocObject();
  v2[7] = sub_1C6FF6F30();
  return v2;
}

uint64_t sub_1C717B25C()
{
  sub_1C755180C();

  strcpy(v2, "Statistics:\n");
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  sub_1C74627B4();
  OUTLINED_FUNCTION_15_34();

  OUTLINED_FUNCTION_4_47();

  sub_1C717B628();
  OUTLINED_FUNCTION_15_34();

  OUTLINED_FUNCTION_4_47();

  sub_1C7031FA0();
  OUTLINED_FUNCTION_15_34();

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  sub_1C717CFE8();
  OUTLINED_FUNCTION_15_34();

  OUTLINED_FUNCTION_4_47();

  sub_1C6FF7070();
  OUTLINED_FUNCTION_15_34();

  OUTLINED_FUNCTION_4_47();

  v0 = sub_1C717DBC4();
  MEMORY[0x1CCA5CD70](v0);

  return v2[0];
}

void sub_1C717B3F8(char a1)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(*(v1 + 40) + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_remixQueryIsTheSame) = a1;
}

uint64_t StoryStatistics.deinit()
{

  return v0;
}

uint64_t StoryStatistics.__deallocating_deinit()
{
  StoryStatistics.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C717B4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BA90;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = v3;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = v5;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = v7;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = v8;
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = v9;
  *(inited + 120) = sub_1C755104C();
  *(inited + 128) = sub_1C755068C();
  *(inited + 136) = v10;
  sub_1C75504FC();
  sub_1C7550B3C();
  OUTLINED_FUNCTION_507();

  *(inited + 144) = v0;
  sub_1C6FEAF80();
  return sub_1C75504DC();
}

uint64_t sub_1C717B628()
{
  sub_1C755180C();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  OUTLINED_FUNCTION_16_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  OUTLINED_FUNCTION_0_82();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_8_33();

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_0_82();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_8_33();

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_0_82();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_8_33();

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_0_82();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_8_33();

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_16_27();
  v1 = OUTLINED_FUNCTION_0_82();
  v3 = v2;

  MEMORY[0x1CCA5CD70](v1, v3);

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v5, v4);

  return 0;
}

uint64_t sub_1C717B814()
{

  return v0;
}

uint64_t sub_1C717B864()
{
  sub_1C717B814();

  return swift_deallocClassInstance();
}

void *sub_1C717B898()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = *MEMORY[0x1E6991C00];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v1;
  v0[5] = v1;
  v0[6] = v1;
  v0[7] = v1;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v3 = v2;
  return v0;
}

unint64_t sub_1C717B8DC(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1C717B928@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C717B8DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C717B954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C717B8EC(*v1);
  *a1 = result;
  return result;
}

void sub_1C717B9F4(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 17);
}

uint64_t sub_1C717BA34(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_2_57(v2 + 17, a2);
  *(v2 + 17) = v3;
  return result;
}

uint64_t sub_1C717BA68()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1C717BA98(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_57(v2 + 32, a2);
  *(v2 + 32) = a1;
  return result;
}

void sub_1C717BB40(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_1C717BB90(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource;
  result = OUTLINED_FUNCTION_2_57(v2 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource, a2);
  *(v2 + v4) = v3;
  return result;
}

void sub_1C717BC48(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_1C717BC98(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  result = OUTLINED_FUNCTION_2_57(v2 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint, a2);
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1C717BD10()
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_llmQULatency;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return *v1;
}

void sub_1C717BD58(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_llmQULatency;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1C717BDB8(char *a1)
{
  v2 = *a1;
  *(v1 + 16) = 0;
  *(v1 + 18) = 3;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionLastUpdateTime;
  v4 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource) = 0;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionSources) = 0;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsCount) = 0;
  OUTLINED_FUNCTION_12_35(OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsProcessingReturnCode);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_remixQueryIsTheSame) = 0;
  v5 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryLocalIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_sanitizedPrompt);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_assetNumberByStage) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_12_35(OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_cancellationCleanupTime);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_ongoingStageDuringCancellationOrError) = 18;
  OUTLINED_FUNCTION_12_35(OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_llmQULatency);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint) = v2;
  return v1;
}

uint64_t sub_1C717BEC4(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v5 = *(result + 88);
  v4 = *(result + 96);
  *(v1 + 16) = v4 != 0;
  v6 = *(result + 16);
  v7 = (v6 + 144);
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
      goto LABEL_10;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    if (*v7)
    {
      result = 0;
    }

    else
    {
      result = [*(v7 - 1) count];
    }

    v7 += 128;
    v10 = __OFADD__(v3, result);
    v3 += result;
    if (v10)
    {
      __break(1u);
LABEL_10:
      *(v1 + 24) = v3;
      v11 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryLocalIdentifier);
      *v11 = v5;
      v11[1] = v4;
      sub_1C75504FC();

      v12 = *(v2 + *(type metadata accessor for FreeformStory(0) + 44));
      result = OUTLINED_FUNCTION_2_57(v1 + 17, v13);
      *(v1 + 17) = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_1C717BFC8(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v5 = *(a1 + 112);
  if (v5 >> 62 == 3)
  {
    memcpy(__dst, ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    v6 = __dst[9];
    sub_1C717E390(__dst, v13, &qword_1EC2183C8, &unk_1C7590FD0);

    if (v6 >> 62 == 2)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);

      sub_1C75504FC();

      v13[0] = v7;
      v13[1] = v8;
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_0_53();
      v9 = sub_1C755155C();
      v11 = v10;

      v12 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_sanitizedPrompt);
      *v12 = v9;
      v12[1] = v11;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C717C130()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_assetNumberByStage;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  sub_1C6FC77D4();
  *(v0 + v1) = v3;

  return swift_endAccess();
}

uint64_t sub_1C717C228(char a1, _BYTE *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0, &unk_1C7571A80);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  LOBYTE(a2) = *a2;
  swift_beginAccess();
  *(v3 + 32) = a1;
  v23 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource;
  swift_beginAccess();
  *(v3 + v23) = a2;
  sub_1C717E390(a3, v22, &qword_1EC2183C0, &unk_1C7571A80);
  Context = type metadata accessor for PromptSuggestion.FetchContext(0);
  OUTLINED_FUNCTION_48_1(v22);
  if (v25)
  {
    sub_1C7030CDC(v22, &qword_1EC2183C0, &unk_1C7571A80);
    v26 = 0;
  }

  else
  {
    v26 = v22[Context[6]];
    sub_1C717E334(v22);
  }

  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionSources) = v26;
  sub_1C717E390(a3, v19, &qword_1EC2183C0, &unk_1C7571A80);
  OUTLINED_FUNCTION_48_1(v19);
  if (v25)
  {
    sub_1C7030CDC(v19, &qword_1EC2183C0, &unk_1C7571A80);
    v27 = 0;
  }

  else
  {
    v27 = *&v19[Context[5]];
    sub_1C717E334(v19);
  }

  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsCount) = v27;
  sub_1C717E390(a3, v16, &qword_1EC2183C0, &unk_1C7571A80);
  OUTLINED_FUNCTION_48_1(v16);
  v28 = v36;
  if (v25)
  {
    sub_1C7030CDC(v16, &qword_1EC2183C0, &unk_1C7571A80);
    v29 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
  }

  else
  {
    sub_1C717E390(v16, v36, &unk_1EC219230, &unk_1C7563720);
    sub_1C717E334(v16);
  }

  v30 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionLastUpdateTime;
  swift_beginAccess();
  sub_1C717E2C4(v28, v3 + v30);
  swift_endAccess();
  sub_1C717E390(a3, v13, &qword_1EC2183C0, &unk_1C7571A80);
  OUTLINED_FUNCTION_48_1(v13);
  if (v25)
  {
    result = sub_1C7030CDC(v13, &qword_1EC2183C0, &unk_1C7571A80);
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v31 = &v13[Context[7]];
    v32 = *v31;
    v33 = v31[8];
    result = sub_1C717E334(v13);
  }

  v35 = v3 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsProcessingReturnCode;
  *v35 = v32;
  *(v35 + 8) = v33;
  return result;
}

uint64_t sub_1C717C5B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v66 - v4;
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v66 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7571600;
  *(inited + 32) = 0x795468636E75616CLL;
  *(inited + 40) = 0xEA00000000006570;
  v15 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(inited + 48) = sub_1C755104C();
  *(inited + 56) = sub_1C755068C();
  *(inited + 64) = v16;
  *(inited + 72) = sub_1C7550C7C();
  *(inited + 80) = 0x745379726F6D656DLL;
  *(inited + 88) = 0xEF6570795479726FLL;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(inited + 96) = sub_1C755104C();
  *(inited + 104) = sub_1C755068C();
  *(inited + 112) = v17;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = v19;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 144) = v20;
  *(inited + 152) = 0xD00000000000001CLL;
  *(inited + 160) = v21;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 168) = v22;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = v23;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 192) = v24;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = v25;
  *(inited + 216) = sub_1C755104C();
  strcpy((inited + 224), "pipelineType");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  *(inited + 240) = sub_1C755104C();
  sub_1C6FEAF80();
  sub_1C75504DC();
  v26 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionLastUpdateTime;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C717E390(v1 + v26, v5, &unk_1EC219230, &unk_1C7563720);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    (*(v8 + 32))(v67, v5, v6);
    sub_1C754DF3C();
    sub_1C754DEAC();
    v28 = v27;
    v29 = *(v8 + 8);
    result = v29(v11, v6);
    v31 = v28 / 86400.0;
    v66 = v15;
    if (v28 / 86400.0 >= 7.0)
    {
LABEL_10:
      v33 = sub_1C755065C();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_41();
      sub_1C6FC7E40(v33, 0xD00000000000001ELL, 0x80000001C75A1C80, v34);
      v29(v67, v6);
      v15 = v66;
      goto LABEL_11;
    }

    if (COERCE_UNSIGNED_INT64(fabs(v28 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v31 > -9.22337204e18)
    {
      if (v31 < 9.22337204e18)
      {
        v68 = v31;
        v69 = sub_1C7551D8C();
        v70 = v32;
        MEMORY[0x1CCA5CD70](0x6761207379616420, 0xE90000000000006FLL);
        goto LABEL_10;
      }

LABEL_31:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1C7030CDC(v5, &unk_1EC219230, &unk_1C7563720);
LABEL_11:
  if ((*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsProcessingReturnCode + 8) & 1) == 0)
  {
    sub_1C755104C();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_41();
    v35 = OUTLINED_FUNCTION_13_37();
    sub_1C6FC7E40(v35, v36, v37, v38);
  }

  switch(*(v1 + v15))
  {
    case 3:

      goto LABEL_16;
    default:
      v39 = sub_1C7551DBC();

      if (v39)
      {
LABEL_16:
        sub_1C7550C7C();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_41();
        v40 = OUTLINED_FUNCTION_13_37();
        sub_1C6FC7E40(v40, v41, 0xE700000000000000, v42);
      }

      if (*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryLocalIdentifier + 8))
      {
        v43 = sub_1C755068C();
        v45 = v44;
        sub_1C75504FC();
        sub_1C755065C();
        OUTLINED_FUNCTION_507();

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_41();
        v46 = OUTLINED_FUNCTION_13_37();
        sub_1C6FC7E40(v46, v43, v45, v47);
      }

      if (*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_sanitizedPrompt + 8))
      {
        v48 = sub_1C755068C();
        v50 = v49;
        sub_1C75504FC();
        sub_1C755065C();
        OUTLINED_FUNCTION_507();

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_41();
        v51 = OUTLINED_FUNCTION_13_37();
        sub_1C6FC7E40(v51, v48, v50, v52);
      }

      v53 = sub_1C755068C();
      v55 = v54;
      v56 = sub_1C7550C7C();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_41();
      sub_1C6FC7E40(v56, v53, v55, v57);

      v58 = v69;
      if ((*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_cancellationCleanupTime + 8) & 1) == 0)
      {
        sub_1C7550F2C(*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_cancellationCleanupTime));
        OUTLINED_FUNCTION_507();
        swift_isUniquelyReferenced_nonNull_native();
        v69 = v58;
        v59 = OUTLINED_FUNCTION_13_37();
        sub_1C6FC7E40(v59, 0xD000000000000017, v60, v61);
        v58 = v69;
      }

      if (*(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_ongoingStageDuringCancellationOrError) != 18)
      {
        LOBYTE(v69) = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_ongoingStageDuringCancellationOrError);
        sub_1C755070C();
        v62 = sub_1C755065C();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v58;
        sub_1C6FC7E40(v62, 0x53676E696F676E6FLL, 0xEC00000065676174, isUniquelyReferenced_nonNull_native);
        v58 = v69;
      }

      if (*(v1 + 18) != 3 && *(v1 + 17) == 96)
      {
        v64 = sub_1C755104C();
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v58;
        sub_1C6FC7E40(v64, 0x6F7365527473616CLL, 0xEE00657079547472, v65);
        v58 = v69;
      }

      result = v58;
      break;
  }

  return result;
}

uint64_t sub_1C717CFE8()
{
  v1 = v0;
  v2 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1C755180C();
  v37[0] = v35;
  v37[1] = v36;
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A1700);
  if (*(v0 + 16))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v11, v12);

  MEMORY[0x1CCA5CD70](0x437465737361202CLL, 0xEE00203A746E756FLL);
  v35 = *(v0 + 24);
  v13 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v13);

  MEMORY[0x1CCA5CD70](0x5479726F7473202CLL, 0xED0000203A657079);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C73E69B8(*(v0 + 17));
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A1720);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  if (*(v0 + 32))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0x68636E75616C202CLL, 0xEE00203A65707954);
  v16 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v17 = 0xED00006E6F747475;
  v18 = 0x4220657461657243;
  switch(*(v1 + v16))
  {
    case 1:
      v17 = 0xEA00000000006472;
      v18 = 0x6143207972746E45;
      break;
    case 2:
      v17 = 0x80000001C75A16E0;
      v18 = 0xD000000000000012;
      break;
    case 3:
      v17 = 0xEC0000006E6F7474;
      v18 = 0x75422078696D6552;
      break;
    case 4:
      v17 = 0xEF746E65746E4920;
      v18 = 0x7070412069726953;
      break;
    case 5:
      v17 = 0xEC000000494C4320;
      v18 = 0x6C616E7265746E49;
      break;
    case 6:
      v17 = 0xEA00000000007478;
      v18 = 0x654E206863746157;
      break;
    case 7:
      v17 = 0xE900000000000073;
      v18 = 0x74756374726F6853;
      break;
    case 8:
      v17 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E55;
      break;
    case 9:
      v17 = 0x80000001C75A16C0;
      v18 = 0xD000000000000010;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v18, v17);

  MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C75A1740);
  v19 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_memoryPromptSuggestionSource;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C73E6820(*(v1 + v19));
  OUTLINED_FUNCTION_21_26();
  LOBYTE(v34[0]) = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionSources);
  sub_1C75519EC();
  OUTLINED_FUNCTION_21_26();
  v34[0] = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionsCount);
  v20 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v20);

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A17B0);
  v21 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionLastUpdateTime;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C717E390(v1 + v21, v10, &unk_1EC219230, &unk_1C7563720);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2))
  {
    sub_1C7030CDC(v10, &unk_1EC219230, &unk_1C7563720);
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    v24 = v32;
    (*(v32 + 16))(v6, v10, v2);
    sub_1C7030CDC(v10, &unk_1EC219230, &unk_1C7563720);
    v23 = sub_1C754DE5C();
    v22 = v25;
    (*(v24 + 8))(v6, v2);
  }

  MEMORY[0x1CCA5CD70](v23, v22);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A17D0);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C75504FC();
  v26 = sub_1C75504BC();
  v28 = v27;

  MEMORY[0x1CCA5CD70](v26, v28);

  MEMORY[0x1CCA5CD70](0xD000000000000029, 0x80000001C75A17F0);
  v33 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_ongoingStageDuringCancellationOrError);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183A8, &qword_1C7571618);
  v29 = sub_1C755070C();
  MEMORY[0x1CCA5CD70](v29);

  return v37[0];
}

uint64_t MemoryStatistics.deinit()
{
  sub_1C7030CDC(v0 + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_suggestionLastUpdateTime, &unk_1EC219230, &unk_1C7563720);

  return v0;
}

uint64_t MemoryStatistics.__deallocating_deinit()
{
  MemoryStatistics.deinit();

  return swift_deallocClassInstance();
}

id sub_1C717D780()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v1 = sub_1C74ED508(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C717D808(v1, 0);
  }

  else
  {
    sub_1C6FEAF80();
    return sub_1C75504DC();
  }

  return v3;
}

id sub_1C717D808(void *a1, char a2)
{
  v2 = sub_1C717D8B8(a1, a2);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v3 = sub_1C755104C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v3, 0x756F43726F727265, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  return v2;
}

id sub_1C717D8B8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1C754DBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v9;
  *(inited + 48) = v7;
  *(inited + 56) = sub_1C755068C();
  *(inited + 64) = v10;
  v26 = a1;
  v11 = v7;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v13 = type metadata accessor for SafetyError(0);
  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v6, v14 ^ 1, 1, v13);
  sub_1C7030CDC(v6, &qword_1EC216748, &qword_1C7565458);
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C6FEAF80();
  v15 = sub_1C75504DC();
  if ((a2 & 1) == 0)
  {

    return v15;
  }

  result = [v11 domain];
  if (result)
  {
    v17 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v15;
    sub_1C6FC7E40(v17, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v19 = v26;
    v26 = [v11 code];
    sub_1C7551D8C();
    v20 = sub_1C755065C();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v19;
    sub_1C6FC7E40(v20, 0x646F43726F727265, 0xE900000000000065, v21);
    v22 = v26;
    result = [v11 description];
    if (result)
    {
      v23 = result;

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v22;
      sub_1C6FC7E40(v23, 0xD000000000000010, 0x80000001C7597610, v24);

      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C717DBC4()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1C75504FC();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v3 = MEMORY[0x1CCA5D090](v1, v2);
  v5 = v4;

  MEMORY[0x1CCA5CD70](v3, v5);

  return 0x205D726F7272455BLL;
}

unint64_t sub_1C717DC98()
{
  result = qword_1EC2183B0;
  if (!qword_1EC2183B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryLaunchType, &type metadata for MemoryLaunchType, v0, v1);
    atomic_store(result, &qword_1EC2183B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryLaunchType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for MemoryStatistics(uint64_t a1)
{
  result = qword_1EDD0B630;
  if (!qword_1EDD0B630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C717DF1C(uint64_t a1)
{
  sub_1C6F5FB48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for LastResortType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C717E270()
{
  result = qword_1EC2183B8;
  if (!qword_1EC2183B8)
  {
    result = swift_getWitnessTable(aIt_1, &type metadata for LastResortType, v0, v1);
    atomic_store(result, &qword_1EC2183B8);
  }

  return result;
}

uint64_t sub_1C717E2C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C717E334(uint64_t a1)
{
  Context = type metadata accessor for PromptSuggestion.FetchContext(0);
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

uint64_t sub_1C717E390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void OUTLINED_FUNCTION_21_26()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t _s9GeneratorVMa_1(uint64_t a1)
{
  result = qword_1EC2183D0;
  if (!qword_1EC2183D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C717E498(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FreeformStoryGenerator(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C710A06C(319, qword_1EDD0CA28, &protocol descriptor for StoryAppleIntelligenceReporting);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s9GeneratorV13ConfigurationVwet_0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 20))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t _s9GeneratorV13ConfigurationVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C717E600()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B6A0);
  __swift_project_value_buffer(v0, qword_1EC25B6A0);
  return sub_1C754FEFC();
}

uint64_t _s9GeneratorV5ErrorOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 8))
    {
      v2 = *a1 + 62;
    }

    else
    {
      v2 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s9GeneratorV5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1C717E778(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C717EAF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1C717E7F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
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
    goto LABEL_22;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C717E914(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_1C717EAF0()
{
  if (!qword_1EC218460)
  {
    v0 = sub_1C710A06C(0, &qword_1EDD06840, MEMORY[0x1E69E7280]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC218460);
    }
  }
}

uint64_t QueryAnnotatorV2.parseAndGround(_:query:promptBindings:llmQULatency:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 320) = v19;
  *(v9 + 328) = v8;
  *(v9 + 304) = a6;
  *(v9 + 312) = a8;
  *(v9 + 201) = a7;
  *(v9 + 288) = a3;
  *(v9 + 296) = a4;
  *(v9 + 280) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  *(v9 + 352) = v12;
  *(v9 + 360) = swift_task_alloc();
  memcpy((v9 + 208), a2, 0x48uLL);
  *(v9 + 368) = *(a2 + 72);
  *(v9 + 376) = *(a2 + 80);
  *(v9 + 392) = *(a2 + 96);
  v13 = *(a5 + 16);
  *(v9 + 400) = *a5;
  *(v9 + 416) = v13;
  *(v9 + 432) = *(a5 + 32);
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C717ECC8()
{
  v1 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_1(*(v0 + 312), *(*(v0 + 312) + 24));
  sub_1C754F60C();
  v2 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1C754F16C();
  sub_1C6FB5FC8(v1, &qword_1EC214BF0, &qword_1C7574200);
  sub_1C754F2CC();
  *(v0 + 440) = 0;
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v9 = *(v0 + 368);
  memcpy((v0 + 16), (v0 + 208), 0x48uLL);
  *(v0 + 88) = v9;
  *(v0 + 104) = v3;
  *(v0 + 112) = v4;
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_1C717EF24;
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);

  return sub_1C717F244(v0 + 16, v6, v7);
}

uint64_t sub_1C717EF24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C717F00C()
{
  v34 = v0;
  v1 = 7562617;
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  if (v2 == 7562617 && v3 == 0xE300000000000000)
  {
    v28 = 1;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_7_11(v2, v3);
  }

  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  v7 = 0xE300000000000000;
  if (v5 == 7562617 && v6 == 0xE300000000000000)
  {
    v26 = 1;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_7_11(v5, v6);
    v1 = *(v0 + 384);
    v7 = *(v0 + 392);
  }

  v27 = *(v0 + 440);
  v24 = *(v0 + 424);
  v25 = *(v0 + 432);
  v22 = *(v0 + 456);
  v23 = *(v0 + 416);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = *(v0 + 201);
  v14 = *(v0 + 296);
  v20 = *(v0 + 288);
  v21 = *(v0 + 304);
  memcpy(__dst, (v0 + 208), sizeof(__dst));
  v30 = v12;
  v31 = v11;
  v32 = v1;
  v33 = v7;
  sub_1C717F724(__dst, (v0 + 146));
  __dst[0] = v13 & 1;
  *(v0 + 120) = v20;
  *(v0 + 128) = v14;
  *(v0 + 136) = v22;
  *(v0 + 144) = v28 & 1;
  *(v0 + 145) = v26 & 1;
  *(v0 + 152) = v10;
  *(v0 + 160) = v9;
  *(v0 + 168) = v23;
  *(v0 + 176) = v24;
  *(v0 + 184) = v25;
  *(v0 + 192) = v21;
  *(v0 + 200) = v13 & 1;
  sub_1C717FBD4(v10, v9);
  sub_1C75504FC();
  sub_1C754F2EC();
  v16 = *(v0 + 352);
  v15 = *(v0 + 360);
  v17 = *(v0 + 344);
  if (v27)
  {
    sub_1C70476BC(v0 + 120);
  }

  else
  {
    memcpy(*(v0 + 280), (v0 + 120), 0x51uLL);
  }

  OUTLINED_FUNCTION_22_26();
  (*(v16 + 8))(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1C717F244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  v5 = *a1;
  *(v4 + 48) = *(a1 + 8);
  v6 = *(a1 + 32);
  *(v4 + 64) = *(a1 + 24);
  *(v4 + 72) = v6;
  *(v4 + 80) = *(a1 + 40);
  *(v4 + 88) = *(a1 + 48);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_task_alloc();
  *(v4 + 104) = v7;
  *v7 = v4;
  v7[1] = sub_1C717F348;
  v8 = OUTLINED_FUNCTION_0_11();

  return sub_1C717FC38(v8, v9, v5);
}

uint64_t sub_1C717F348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C717F430()
{
  v1 = v0[6];
  sub_1C6FD2764(v0[14]);
  v2 = OUTLINED_FUNCTION_117_0();
  sub_1C7181548(v2, v3, v1, 1952540791, 0xE400000000000000);
  sub_1C6FD2764(v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_35(v5);
  *v6 = v7;
  v6[1] = sub_1C717F510;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[3];

  return sub_1C71809E8(v10, v9, v8);
}

uint64_t sub_1C717F510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C717F5F8()
{
  v1 = v0[12];
  v2 = v0[8];
  sub_1C6FD2764(v0[16]);
  v3 = OUTLINED_FUNCTION_117_0();
  sub_1C7181548(v3, v4, v2, v5, 0xE800000000000000);
  sub_1C6FD2764(v6);
  v7 = OUTLINED_FUNCTION_117_0();
  sub_1C7180FB4(v7, v8, v9);
  v11 = v10;

  sub_1C6FD2764(v11);
  v12 = OUTLINED_FUNCTION_117_0();
  sub_1C7181548(v12, v13, v1, 1685024621, 0xE400000000000000);
  sub_1C6FD2764(v14);
  OUTLINED_FUNCTION_116();

  return v15();
}

uint64_t sub_1C717F724@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 64) + 64;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v54 = v8;
  result = sub_1C75504FC();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v52 = v7;
  v53 = v2;
LABEL_2:
  v13 = v10;
  v55 = v12;
  if (!v5)
  {
    goto LABEL_4;
  }

  do
  {
    v14 = v11;
    v10 = v13;
LABEL_8:
    v15 = *(*(v54 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v16 = sub_1C75506FC();
    v18 = v17;
    v56 = v16;
    v57 = v17;
    MEMORY[0x1EEE9AC00](v16);
    sub_1C75504FC();
    v19 = sub_1C70735F4();
    if (v19)
    {

      v11 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB24C0();
        v11 = v29;
      }

      v20 = v15;
      v12 = v55;
      v21 = *(v11 + 16);
      OUTLINED_FUNCTION_27_25();
      if (v23)
      {
        OUTLINED_FUNCTION_15(v22);
        v24 = 1;
        OUTLINED_FUNCTION_321();
        sub_1C6FB24C0();
        v11 = v30;
      }

      else
      {
        v24 = 1;
      }

LABEL_19:
      *(v11 + 16) = v18;
      *(v11 + v21 + 32) = v24;
      goto LABEL_21;
    }

    v56 = v16;
    v57 = v18;
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_18_23();
    *(v25 - 16) = &v56;
    v26 = sub_1C70735F4();

    if (v26)
    {
      v11 = v14;
      v20 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB24C0();
        v11 = v31;
      }

      v12 = v55;
      v21 = *(v11 + 16);
      OUTLINED_FUNCTION_27_25();
      if (v23)
      {
        OUTLINED_FUNCTION_15(v27);
        OUTLINED_FUNCTION_321();
        sub_1C6FB24C0();
        v11 = v32;
      }

      v24 = 2;
      goto LABEL_19;
    }

    v11 = v14;
    v20 = v15;
    v12 = v55;
LABEL_21:
    v5 &= v5 - 1;
    v28 = *(v20 + 16);
    if (v28)
    {
      v33 = v20 + 40;
      v51 = v11;
      while (1)
      {
        v34 = sub_1C75506FC();
        v36 = v35;
        v56 = v34;
        v57 = v35;
        MEMORY[0x1EEE9AC00](v34);
        OUTLINED_FUNCTION_18_23();
        *(v37 - 16) = &v56;
        v38 = sub_1C70735F4();
        if (v38)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB24C0();
            v12 = v45;
          }

          v39 = *(v12 + 16);
          OUTLINED_FUNCTION_27_25();
          if (v23)
          {
            OUTLINED_FUNCTION_15(v40);
            v41 = 1;
            OUTLINED_FUNCTION_321();
            sub_1C6FB24C0();
            v12 = v46;
          }

          else
          {
            v41 = 1;
          }
        }

        else
        {
          v56 = v34;
          v57 = v36;
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_18_23();
          *(v42 - 16) = &v56;
          v43 = sub_1C70735F4();

          if (!v43)
          {
            v11 = v51;
            goto LABEL_39;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB24C0();
            v12 = v47;
          }

          v39 = *(v12 + 16);
          OUTLINED_FUNCTION_27_25();
          if (v23)
          {
            OUTLINED_FUNCTION_15(v44);
            OUTLINED_FUNCTION_321();
            sub_1C6FB24C0();
            v12 = v48;
          }

          v41 = 2;
        }

        *(v12 + 16) = v36;
        *(v12 + v39 + 32) = v41;
        v11 = v51;
LABEL_39:
        v33 += 16;
        if (!--v28)
        {

          v7 = v52;
          v2 = v53;
          goto LABEL_2;
        }
      }
    }

    v13 = v10;
    v7 = v52;
    v2 = v53;
  }

  while (v5);
  while (1)
  {
LABEL_4:
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v13;
    if (v5)
    {
      v14 = v11;
      goto LABEL_8;
    }
  }

  if (*(v12 + 16) == 1)
  {
    v49 = *(v12 + 32);
  }

  else
  {

    if (*(v11 + 16) == 1)
    {
      v49 = *(v11 + 32);
    }

    else
    {
      v49 = 0;
    }
  }

  *a2 = v49;
  return result;
}

uint64_t sub_1C717FBD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C717FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C717FC5C, 0, 0);
}

uint64_t sub_1C717FC5C()
{
  *(v0 + 144) = *(*(v0 + 32) + 32);
  OUTLINED_FUNCTION_22_31();
  v3 = v1 & v2;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  result = sub_1C75504FC();
  v5 = 0;
  if (v3)
  {
LABEL_8:
    while (1)
    {
      *(v0 + 56) = v3;
      *(v0 + 64) = v5;
      OUTLINED_FUNCTION_1_64();
      v10 = *v9;
      *(v0 + 72) = *v9;
      v11 = v9[1];
      *(v0 + 80) = v11;
      sub_1C75504FC();
      static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
      if ((v12 & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_8_34();
        *(v0 + 88) = v14;
        *(v0 + 96) = v15;
        static StoryGenerationUtilities.indexRange(of:from:)(v13, v16, v15, v14);
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      v3 &= v3 - 1;

      if (!v3)
      {
        goto LABEL_3;
      }
    }

    v20 = *(v0 + 40);
    v21 = sub_1C755098C();
    v22 = MEMORY[0x1CCA5CC40](v21);
    v24 = v23;

    *(v0 + 104) = v22;
    *(v0 + 112) = v24;
    v25 = (v20 + *(type metadata accessor for QueryAnnotatorV2(0) + 20));
    v26 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v26);
    OUTLINED_FUNCTION_15_3();
    v32 = (v28 + *v28);
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_15_35(v29);
    *v30 = v31;
    OUTLINED_FUNCTION_0_83(v30);

    return v32(v10, v11, v26, v27);
  }

  else
  {
    while (1)
    {
LABEL_3:
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      result = OUTLINED_FUNCTION_6_47();
      if (v7 == v8)
      {
        break;
      }

      v3 = *(result + 8 * v6 + 64);
      ++v5;
      if (v3)
      {
        v5 = v6;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_116();
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1C717FEC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_1C7180578;
  }

  else
  {
    v5 = sub_1C717FFCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C717FFCC()
{
  v3 = v1[16];
  v67 = *(v3 + 16);
  if (v67)
  {
    v4 = 0;
    v2 = v3 + 32;
    v5 = v3 + 48;
    v6 = MEMORY[0x1E69E7CC0];
    while (v67 != v4)
    {
      if (v4 >= *(v3 + 16))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v7 = *v5;
      v8 = *(*v5 + 16);
      v0 = *(v6 + 16);
      if (__OFADD__(v0, v8))
      {
        goto LABEL_64;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v0 + v8) > *(v6 + 24) >> 1)
      {
        sub_1C6FB1814();
        v6 = v9;
      }

      if (*(v7 + 16))
      {
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v8)
        {
          goto LABEL_69;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v10 = *(v6 + 16);
          v11 = __OFADD__(v10, v8);
          v12 = v10 + v8;
          if (v11)
          {
            goto LABEL_71;
          }

          *(v6 + 16) = v12;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_65;
        }
      }

      v5 += 40;
      ++v4;
    }

    v13 = 0;
    v0 = MEMORY[0x1E69E7CC0];
    while (v67 != v13)
    {
      if (v13 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v14 = *v2;
      v15 = *(*v2 + 16);
      v16 = *(v0 + 16);
      if (__OFADD__(v16, v15))
      {
        goto LABEL_67;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v0 + 24) >> 1)
      {
        sub_1C6FB1814();
        v0 = v17;
      }

      if (*(v14 + 16))
      {
        if ((*(v0 + 24) >> 1) - *(v0 + 16) < v15)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v18 = *(v0 + 16);
          v11 = __OFADD__(v18, v15);
          v19 = v18 + v15;
          if (v11)
          {
            goto LABEL_72;
          }

          *(v0 + 16) = v19;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_68;
        }
      }

      v2 += 40;
      ++v13;
    }

    sub_1C75504FC();
  }

  else
  {

    v0 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1C75504FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v1[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_73:
    v58 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB2420(v58, v59, v60, v3);
    v3 = v61;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v23 = *(v3 + 16);
  v22 = *(v3 + 24);
  if (v23 >= v22 >> 1)
  {
    v62 = OUTLINED_FUNCTION_15(v22);
    OUTLINED_FUNCTION_17_35(v62, v23 + 1);
    v3 = v63;
  }

  OUTLINED_FUNCTION_31_18();
  *(v3 + 16) = v23 + 1;
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_3_56(v24, v25);
  v26[10] = v6;
  v26[11] = v21;
  v26[12] = v21;
  v27 = *(v0 + 16);

  if (v27)
  {
    v28 = *(v3 + 16);
    v23 = *(v3 + 24);
    sub_1C75504FC();
    if (v28 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_17_35(v23 > 1, v28 + 1);
      v3 = v64;
    }

    v29 = OUTLINED_FUNCTION_29_18();
    *(v3 + 16) = v28 + 1;
    OUTLINED_FUNCTION_10_39(v30, v31, v29);
    v32[10] = v0;
    v32[11] = v21;
    v32[12] = v21;
  }

  else
  {
  }

  v0 = v1[10];
  v6 = sub_1C6FE3768();

  if (!v6)
  {
    goto LABEL_47;
  }

  if (!*(v6 + 16))
  {

LABEL_47:

    goto LABEL_48;
  }

  v34 = *(v3 + 16);
  v33 = *(v3 + 24);
  v0 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v65 = OUTLINED_FUNCTION_15(v33);
    OUTLINED_FUNCTION_17_35(v65, v34 + 1);
    v3 = v66;
  }

  OUTLINED_FUNCTION_31_18();
  *(v3 + 16) = v0;
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_3_56(v35, v36);
  v37[10] = v6;
  v37[11] = v21;
  v37[12] = v21;
LABEL_48:
  OUTLINED_FUNCTION_7_39();
  if (v2)
  {
    while (1)
    {
      v1[7] = v2;
      v1[8] = v23;
      OUTLINED_FUNCTION_1_64();
      OUTLINED_FUNCTION_25_17(v39);
      OUTLINED_FUNCTION_0_11();
      static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
      if ((v40 & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_8_34();
        v1[11] = v42;
        v1[12] = v43;
        static StoryGenerationUtilities.indexRange(of:from:)(v41, v44, v43, v42);
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_24_22();
    }

    v48 = sub_1C755098C();
    v49 = MEMORY[0x1CCA5CC40](v48);
    v51 = v50;

    v1[13] = v49;
    v1[14] = v51;
    AnnotatorV2 = type metadata accessor for QueryAnnotatorV2(0);
    OUTLINED_FUNCTION_32_14(AnnotatorV2);
    OUTLINED_FUNCTION_15_3();
    v68 = (v53 + *v53);
    v54 = swift_task_alloc();
    v55 = OUTLINED_FUNCTION_15_35(v54);
    *v55 = v56;
    OUTLINED_FUNCTION_0_83(v55);
    v57 = OUTLINED_FUNCTION_0_11();

    return v68(v57);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_6_47();
      if (v38 == v11)
      {
        break;
      }

      OUTLINED_FUNCTION_19_28();
    }

    OUTLINED_FUNCTION_116();

    return v46(v3);
  }
}

uint64_t sub_1C7180578()
{
  v3 = v0[17];
  v4 = v3;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Error calling ECR from attributesFromWho(): %@", v9, 0xCu);
    sub_1C6FB5FC8(v10, &qword_1EC215190, &qword_1C755C730);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  sub_1C75504FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v0[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_34:
    v55 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB2420(v55, v56, v57, v14);
    v14 = v58;
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v59 = OUTLINED_FUNCTION_15(v15);
    OUTLINED_FUNCTION_17_35(v59, v16 + 1);
    v14 = v60;
  }

  OUTLINED_FUNCTION_31_18();
  *(v14 + 16) = v16 + 1;
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_3_56(v17, v18);
  v19 = MEMORY[0x1E69E7CC0];
  v20[10] = MEMORY[0x1E69E7CC0];
  v20[11] = v19;
  v20[12] = v19;
  v21 = *(v19 + 16);

  if (v21)
  {
    v22 = *(v14 + 16);
    v23 = *(v14 + 24);
    sub_1C75504FC();
    if (v22 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_17_35(v23 > 1, v22 + 1);
      v14 = v61;
    }

    v24 = OUTLINED_FUNCTION_29_18();
    *(v14 + 16) = v22 + 1;
    OUTLINED_FUNCTION_10_39(v25, v26, v24);
    v27[10] = v19;
    v27[11] = v19;
    v27[12] = v19;
  }

  else
  {
  }

  v28 = sub_1C6FE3768();

  if (!v28)
  {
    goto LABEL_18;
  }

  if (!*(v28 + 16))
  {

LABEL_18:

    goto LABEL_19;
  }

  v30 = *(v14 + 16);
  v29 = *(v14 + 24);
  if (v30 >= v29 >> 1)
  {
    v62 = OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_17_35(v62, v30 + 1);
    v14 = v63;
  }

  OUTLINED_FUNCTION_31_18();
  *(v14 + 16) = v30 + 1;
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_3_56(v31, v32);
  v33[10] = v28;
  v33[11] = v19;
  v33[12] = v19;
LABEL_19:
  OUTLINED_FUNCTION_7_39();
  if (v2)
  {
    while (1)
    {
      v0[7] = v2;
      v0[8] = v1;
      OUTLINED_FUNCTION_1_64();
      OUTLINED_FUNCTION_25_17(v36);
      OUTLINED_FUNCTION_0_11();
      static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
      if ((v37 & 1) == 0)
      {
        v38 = OUTLINED_FUNCTION_8_34();
        v0[11] = v39;
        v0[12] = v40;
        static StoryGenerationUtilities.indexRange(of:from:)(v38, v41, v40, v39);
        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_24_22();
    }

    v45 = sub_1C755098C();
    v46 = MEMORY[0x1CCA5CC40](v45);
    v48 = v47;

    v0[13] = v46;
    v0[14] = v48;
    AnnotatorV2 = type metadata accessor for QueryAnnotatorV2(0);
    OUTLINED_FUNCTION_32_14(AnnotatorV2);
    OUTLINED_FUNCTION_15_3();
    v64 = (v50 + *v50);
    v51 = swift_task_alloc();
    v52 = OUTLINED_FUNCTION_15_35(v51);
    *v52 = v53;
    OUTLINED_FUNCTION_0_83(v52);
    v54 = OUTLINED_FUNCTION_0_11();

    return v64(v54);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_6_47();
      if (v34 == v35)
      {
        break;
      }

      OUTLINED_FUNCTION_19_28();
    }

    OUTLINED_FUNCTION_116();

    return v43(v14);
  }
}

uint64_t sub_1C71809E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7180A0C, 0, 0);
}

uint64_t sub_1C7180A0C()
{
  *(v0 + 136) = *(*(v0 + 32) + 32);
  OUTLINED_FUNCTION_22_31();
  v3 = v1 & v2;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  result = sub_1C75504FC();
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      result = *(v0 + 32);
LABEL_8:
      *(v0 + 56) = v3;
      *(v0 + 64) = v5;
      v9 = (*(result + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v3)))));
      v10 = *v9;
      v11 = v9[1];
      sub_1C75504FC();
      static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
      if ((v12 & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_8_34();
        *(v0 + 72) = v14;
        *(v0 + 80) = v15;
        static StoryGenerationUtilities.indexRange(of:from:)(v13, v16, v15, v14);
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      v3 &= v3 - 1;

      if (!v3)
      {
        goto LABEL_3;
      }
    }

    v20 = sub_1C755098C();
    v21 = MEMORY[0x1CCA5CC40](v20);
    v23 = v22;

    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    v24 = sub_1C6FE3768();
    if (v24)
    {
      v25 = v24;
      if (*(v24 + 16))
      {
        sub_1C75504FC();

        if (!v25[2])
        {
LABEL_24:
          __break(1u);
          return result;
        }

        v10 = v25[4];
        v11 = v25[5];
        sub_1C75504FC();
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 104) = v25;
    *(v0 + 112) = v11;
    v26 = swift_task_alloc();
    v27 = OUTLINED_FUNCTION_15_35(v26);
    *v27 = v28;
    OUTLINED_FUNCTION_9_42(v27);

    return sub_1C70E8564(v10, v11);
  }

  else
  {
    while (1)
    {
LABEL_3:
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      result = OUTLINED_FUNCTION_6_47();
      if (v7 == v8)
      {
        break;
      }

      v3 = *(result + 8 * v6 + 64);
      ++v5;
      if (v3)
      {
        v5 = v6;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_116();
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1C7180C40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v1 = v0;
  *(v0 + 128) = v2;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7180D48()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 48);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v35 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB2420(v35, v36, v37, v4);
    v4 = v38;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_17_35(v5 > 1, v6 + 1);
    v4 = v39;
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 88);
  v9 = v4 + 72 * v6;
  v10 = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v11 = *(v0 + 96);
  *(v4 + 16) = v6 + 1;
  *(v9 + 32) = 1702125924;
  *(v9 + 40) = 0xE400000000000000;
  *(v9 + 48) = v10;
  *(v9 + 64) = v8;
  *(v9 + 72) = v11;
  *(v9 + 88) = MEMORY[0x1E69E7CC0];
  *(v9 + 96) = v7;
  OUTLINED_FUNCTION_7_39();
  if (v2)
  {
    while (1)
    {
      *(v0 + 56) = v2;
      *(v0 + 64) = v1;
      OUTLINED_FUNCTION_1_64();
      v15 = *(v14 + 8);
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_11();
      static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
      if ((v16 & 1) == 0)
      {
        v17 = OUTLINED_FUNCTION_8_34();
        *(v0 + 72) = v18;
        *(v0 + 80) = v19;
        static StoryGenerationUtilities.indexRange(of:from:)(v17, v20, v19, v18);
        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_24_22();
    }

    v24 = sub_1C755098C();
    v25 = MEMORY[0x1CCA5CC40](v24);
    v27 = v26;

    *(v0 + 88) = v25;
    *(v0 + 96) = v27;
    OUTLINED_FUNCTION_0_11();
    v28 = sub_1C6FE3768();
    if (v28)
    {
      v29 = v28;
      if (*(v28 + 16))
      {
        sub_1C75504FC();

        if (!*(v29 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(v29 + 40);
        sub_1C75504FC();
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 104) = v29;
    *(v0 + 112) = v15;
    v30 = swift_task_alloc();
    v31 = OUTLINED_FUNCTION_15_35(v30);
    *v31 = v32;
    OUTLINED_FUNCTION_9_42(v31);
    v33 = OUTLINED_FUNCTION_0_11();

    return sub_1C70E8564(v33, v34);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_6_47();
      if (v12 == v13)
      {
        break;
      }

      OUTLINED_FUNCTION_19_28();
    }

    OUTLINED_FUNCTION_116();

    return v22(v4);
  }
}

void sub_1C7180FB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v79 = *a3;
  v80 = a3[1];
  v4 = a3[2];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(a3[2] + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  sub_1C75504FC();
  v12 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v10 &= v10 - 1;
    sub_1C75504FC();
    static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      static StoryGenerationUtilities.indexRange(of:from:)(a1, a2, v15, v17);
      if ((v20 & 1) == 0)
      {
        v21 = sub_1C755098C();
        v22 = MEMORY[0x1CCA5CC40](v21);
        v74 = v23;

        v75 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2420(0, *(v78 + 16) + 1, 1, v78);
          v78 = v28;
        }

        v25 = *(v78 + 16);
        v24 = *(v78 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C6FB2420(v24 > 1, v25 + 1, 1, v78);
          v78 = v29;
        }

        *(v78 + 16) = v25 + 1;
        v26 = (v78 + 72 * v25);
        v26[4] = 0x746954636973756DLL;
        v26[5] = 0xEA0000000000656CLL;
        v26[6] = v15;
        v26[7] = v17;
        v26[8] = v75;
        v26[9] = v74;
        v27 = MEMORY[0x1E69E7CC0];
        v26[10] = MEMORY[0x1E69E7CC0];
        v26[11] = v27;
        v26[12] = v27;
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v30 = 1 << *(v79 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v79 + 64);
  v33 = (v30 + 63) >> 6;
  sub_1C75504FC();
  v34 = 0;
  while (v32)
  {
LABEL_24:
    v32 &= v32 - 1;
    sub_1C75504FC();
    static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      static StoryGenerationUtilities.indexRange(of:from:)(a1, a2, v37, v39);
      if ((v42 & 1) == 0)
      {
        v43 = sub_1C755098C();
        v76 = MEMORY[0x1CCA5CC40](v43);
        v45 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2420(0, *(v78 + 16) + 1, 1, v78);
          v78 = v50;
        }

        v47 = *(v78 + 16);
        v46 = *(v78 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1C6FB2420(v46 > 1, v47 + 1, 1, v78);
          v78 = v51;
        }

        *(v78 + 16) = v47 + 1;
        v48 = (v78 + 72 * v47);
        v48[4] = 0x747241636973756DLL;
        v48[5] = 0xEB00000000747369;
        v48[6] = v37;
        v48[7] = v39;
        v48[8] = v76;
        v48[9] = v45;
        v49 = MEMORY[0x1E69E7CC0];
        v48[10] = MEMORY[0x1E69E7CC0];
        v48[11] = v49;
        v48[12] = v49;
      }
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v52 = 1 << *(v80 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v80 + 64);
      v55 = (v52 + 63) >> 6;
      sub_1C75504FC();
      v56 = 0;
      while (v54)
      {
LABEL_39:
        v54 &= v54 - 1;
        sub_1C75504FC();
        static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        if ((v63 & 1) == 0)
        {
          static StoryGenerationUtilities.indexRange(of:from:)(a1, a2, v59, v61);
          if ((v64 & 1) == 0)
          {
            v65 = sub_1C755098C();
            v66 = MEMORY[0x1CCA5CC40](v65);
            v77 = v67;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB2420(0, *(v78 + 16) + 1, 1, v78);
              v78 = v72;
            }

            v69 = *(v78 + 16);
            v68 = *(v78 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_1C6FB2420(v68 > 1, v69 + 1, 1, v78);
              v78 = v73;
            }

            *(v78 + 16) = v69 + 1;
            v70 = (v78 + 72 * v69);
            v70[4] = 0x6E6547636973756DLL;
            v70[5] = 0xEA00000000006572;
            v70[6] = v59;
            v70[7] = v61;
            v70[8] = v66;
            v70[9] = v77;
            v71 = MEMORY[0x1E69E7CC0];
            v70[10] = MEMORY[0x1E69E7CC0];
            v70[11] = v71;
            v70[12] = v71;
          }
        }
      }

      while (1)
      {
        v57 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_49;
        }

        if (v57 >= v55)
        {

          return;
        }

        v54 = *(v80 + 64 + 8 * v57);
        ++v56;
        if (v54)
        {
          v56 = v57;
          goto LABEL_39;
        }
      }
    }

    v32 = *(v79 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_24;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_1C7181548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3 + 64;
  OUTLINED_FUNCTION_11();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  sub_1C75504FC();
  v13 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_7:
    v10 &= v10 - 1;
    sub_1C75504FC();
    static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)();
    if (v17 & 1) != 0 || (v18 = v15, v19 = v16, static StoryGenerationUtilities.indexRange(of:from:)(a1, a2, v15, v16), (v20))
    {
    }

    else
    {
      v39 = a1;
      v40 = a2;
      v21 = sub_1C755098C();
      v37 = MEMORY[0x1CCA5CC40](v21);
      v38 = v22;

      v23 = sub_1C6FE3768();

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v25 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2420(v29, v30, v31, v43);
        v25 = v32;
      }

      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        OUTLINED_FUNCTION_321();
        sub_1C6FB2420(v33, v34, v35, v25);
        v25 = v36;
      }

      *(v25 + 16) = v26 + 1;
      v43 = v25;
      v27 = (v25 + 72 * v26);
      v27[4] = a4;
      v27[5] = a5;
      v27[6] = v18;
      v27[7] = v19;
      v27[8] = v37;
      v27[9] = v38;
      v27[10] = v24;
      v28 = MEMORY[0x1E69E7CC0];
      v27[11] = MEMORY[0x1E69E7CC0];
      v27[12] = v28;
      a1 = v39;
      a2 = v40;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_24_22()
{
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  return v3 + 8;
}

uint64_t CuratedStory.init(type:elements:chapters:title:completion:keyAsset:musicCuration:)@<X0>(_BYTE *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  memcpy((a9 + 8), a2, 0x130uLL);
  *(a9 + 312) = a3;
  *(a9 + 320) = a4;
  *(a9 + 328) = a5;
  v16 = a6[1];
  *(a9 + 336) = *a6;
  *(a9 + 352) = v16;
  v17 = a6[3];
  *(a9 + 368) = a6[2];
  *(a9 + 384) = v17;
  *(a9 + 400) = a7;
  v18 = a9 + *(type metadata accessor for CuratedStory(0) + 40);

  return sub_1C70D5DF0(a8, v18);
}

uint64_t type metadata accessor for CuratedStory(uint64_t a1)
{
  result = qword_1EC218468;
  if (!qword_1EC218468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C71818BC(uint64_t a1)
{
  sub_1C6FDEBCC();
  if (v1 <= 0x3F)
  {
    sub_1C6FDEC1C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for StoryMusicCuration(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryGeneration(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C7181B48(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7181B6C, 0, 0);
}

uint64_t sub_1C7181B6C()
{
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v1 = sub_1C754FF1C();
  v0[4] = __swift_project_value_buffer(v1, qword_1EC25B6F0);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Starting to wait on music curation");
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = type metadata accessor for StoryMusicCuration(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  *v7 = v0;
  v7[1] = sub_1C7181CE4;
  v10 = v0[2];
  v11 = v0[3];
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v10, v11, v8, v9, v12);
}

uint64_t sub_1C7181CE4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C7181E14, 0, 0);
  }
}

uint64_t sub_1C7181E14(uint64_t a1)
{
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Done waiting on music curation");
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1C7181ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v57 = a4;
  v10 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v54 = v12;
    v47 = v5;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C716E198(0, v13, 0);
    v14 = v62;
    v15 = sub_1C719D92C();
    v16 = a3;
    v18 = v17;
    v61 = v19;
    v20 = a1 + 56;
    v21 = type metadata accessor for PersonalTrait(0);
    v22 = v18;
    v23 = 0;
    v24 = *(v21 - 8);
    v52 = a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v53 = v24;
    v58 = v16;
    v50 = a2;
    v51 = v16 + 32;
    v48 = a1 + 64;
    v49 = v13;
    result = a2;
    if ((v15 & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(a1 + 32))
      {
        v26 = v15 >> 6;
        if ((*(v20 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v22)
        {
          goto LABEL_30;
        }

        v27 = *(*(a1 + 48) + 8 * v15);
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v28 = *(result + 16);
        if (v27 >= v28)
        {
          goto LABEL_32;
        }

        v59 = v23;
        v60 = v22;
        v29 = v20;
        v30 = a1;
        v31 = v54;
        result = sub_1C718AFC8(v52 + *(v53 + 72) * v27, v54);
        if (v27 >= *(v58 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v51 + 8 * v27);
        v33 = v31 + *(v56 + 20);
        v34 = v57;
        *v33 = v28;
        *(v33 + 8) = v34;
        *(v33 + 16) = a5;
        *(v33 + 24) = v32;
        type metadata accessor for PersonalTraitSelector.RejectionReason(0);
        swift_storeEnumTagMultiPayload();
        v62 = v14;
        v36 = *(v14 + 16);
        v35 = *(v14 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1C716E198(v35 > 1, v36 + 1, 1);
          v14 = v62;
        }

        *(v14 + 16) = v36 + 1;
        result = sub_1C718DBAC(v31, v14 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36);
        if (v61)
        {
          goto LABEL_37;
        }

        v37 = 1 << *(v30 + 32);
        if (v15 >= v37)
        {
          goto LABEL_34;
        }

        v38 = *(v29 + 8 * v26);
        if ((v38 & (1 << v15)) == 0)
        {
          goto LABEL_35;
        }

        a1 = v30;
        if (*(v30 + 36) != v60)
        {
          goto LABEL_36;
        }

        v20 = v29;
        v39 = v38 & (-2 << (v15 & 0x3F));
        if (v39)
        {
          v37 = __clz(__rbit64(v39)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v40 = v49;
          v41 = v59;
        }

        else
        {
          v42 = v26 << 6;
          v43 = v26 + 1;
          v40 = v49;
          v44 = (v48 + 8 * v26);
          v41 = v59;
          while (v43 < (v37 + 63) >> 6)
          {
            v46 = *v44++;
            v45 = v46;
            v42 += 64;
            ++v43;
            if (v46)
            {
              sub_1C6F9ED50(v15, v60, 0);
              v37 = __clz(__rbit64(v45)) + v42;
              goto LABEL_22;
            }
          }

          sub_1C6F9ED50(v15, v60, 0);
        }

LABEL_22:
        v23 = v41 + 1;
        result = v50;
        if (v23 == v40)
        {

          goto LABEL_27;
        }

        v61 = 0;
        v22 = *(a1 + 36);
        v15 = v37;
        if (v37 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v14;
  }

  return result;
}