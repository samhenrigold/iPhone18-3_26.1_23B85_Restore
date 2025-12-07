void *sub_217279954(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D0, &qword_217758D58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500310(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279B20(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247A8, &unk_217758D30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500168(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279CEC(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B8, &unk_217758D40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500140(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_217279EB8(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24798, &unk_217758D20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500154(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727A084(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24800, &qword_217758D88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500324(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727A250(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24760, &qword_217758CE8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500338(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727A41C(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24720, &qword_217758CA8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750034C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727A5E8(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247E8, &unk_217758D70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001E0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727A7B4(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24770, &qword_217758CF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500360(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_21727A980()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AC8, &qword_21775A320);
      v7 = OUTLINED_FUNCTION_187(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727AA44()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F0, &qword_2177589D8);
      v7 = OUTLINED_FUNCTION_187(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 16);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217230498(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F8, &qword_2177589E0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727AB08()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24548, &qword_217758A50);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727ABC4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24558, &unk_217758A60);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24560, &unk_2177A07F0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21727AC80(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245A8, &qword_217758AC8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27AA0, &qword_217758AD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727AD90()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B0, &qword_217758AD8);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 64);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727AE50()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245C0, &qword_217758AE8);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245C8, &qword_217758AF0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727AF10()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24698, &qword_217758BF8);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727AFCC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246A0, &qword_217758C08);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246A8, &qword_217758C10);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B088()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24528, &unk_217758A20);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B144()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24530, &unk_217758A30);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27880, &qword_21776B370);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B200()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E8, &qword_21775A0B0);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B2BC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24500, &qword_2177589E8);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24508, &unk_2177589F0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B378()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F8, &unk_217758B30);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B434()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24600, &unk_217758B40);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24608, &qword_21776BA80);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B4F0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24650, &unk_217758BA0);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 64);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B5B0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24658, &unk_217758BB0);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24660, &qword_21776BD20);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B670()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245D8, &unk_217758B00);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B72C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245E0, &unk_217758B10);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245E8, &qword_21776B930);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B7E8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E0, &unk_217758C60);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B8A4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246F0, &unk_217758C70);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246F8, &qword_21776C210);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727B960()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B8, &qword_217758C28);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BA1C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246C0, &qword_217758C38);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246C8, &unk_217758C40);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21727BAD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24628, &qword_217758B68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24630, &unk_217758B70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727BBE8(uint64_t a1)
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v5)
    {
      OUTLINED_FUNCTION_179_0(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_225(v15);
      OUTLINED_FUNCTION_83_0();
      *(v5 + 16) = v4;
      *(v5 + 24) = v16;
      if (v3)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_104_1();
        v2(v17);
        *(v1 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BC9C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24638, &unk_21775A100);
      v7 = OUTLINED_FUNCTION_184(v6);
      OUTLINED_FUNCTION_13_7(v7);
      OUTLINED_FUNCTION_38_0(v8 / 64);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BD5C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24640, &qword_217758B88);
      v7 = OUTLINED_FUNCTION_34_3(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DA0, &unk_217758B90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BE1C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24588, &qword_217758AA0);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BED8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24590, &unk_217758AB0);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24598, &unk_2177A0800);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727BF94()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E0, &qword_217758F88);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727C050()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E8, &qword_217758F98);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28290, &qword_217758FA0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727C10C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24670, &qword_217758BC8);
      v7 = OUTLINED_FUNCTION_25_4(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727C1C8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24680, &qword_217758BD8);
      v7 = OUTLINED_FUNCTION_24_6(v6);
      OUTLINED_FUNCTION_0_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24688, &qword_217758BE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_179_0(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_21727C35C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_217504038((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C474(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24870, &unk_217758E00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24878, &unk_217778870);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727C584(uint64_t a1)
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v5)
    {
      v15 = OUTLINED_FUNCTION_179_0(v9, v10, v11, v12, v13, v14);
      v16 = OUTLINED_FUNCTION_187(v15);
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v5 + 16) = v4;
      *(v5 + 24) = v17;
      if (v3)
      {
LABEL_8:
        v18 = OUTLINED_FUNCTION_104_1();
        v2(v18);
        *(v1 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21727C630(uint64_t a1)
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_102_0();
    if (v5)
    {
      v15 = OUTLINED_FUNCTION_179_0(v9, v10, v11, v12, v13, v14);
      v16 = OUTLINED_FUNCTION_187(v15);
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v5 + 16) = v4;
      *(v5 + 24) = v17;
      if (v3)
      {
LABEL_8:
        v18 = OUTLINED_FUNCTION_104_1();
        v2(v18);
        *(v1 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21727C6DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248D0, &qword_217758E60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24480, &unk_217769FF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C7F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248D8, &qword_217758E68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24488, &unk_217758950);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C90C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248C8, &qword_217758E58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24478, &unk_217758940);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727CA24(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248C0, &qword_217758E50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24470, &qword_217758938);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_21727CB3C(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24940, &unk_217758ED0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21727CD08(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24960, &qword_217758EF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 768);
      if (v5)
      {
LABEL_13:
        sub_217500190((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A8, &unk_217758980);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_179_0(a1, a2, a3, a4, a5, a6);
      v16 = OUTLINED_FUNCTION_187(v15);
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_83_0();
      v16[2] = v13;
      v16[3] = v17;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v16 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727CEF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_45_0(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_150();
  v15 = v7;
  v8 = OUTLINED_FUNCTION_206();
  type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = *(v2 + 16);
  MEMORY[0x21CEA3550](v13);
  if (v13)
  {
    OUTLINED_FUNCTION_47_3();
    do
    {
      OUTLINED_FUNCTION_77_1();
      OUTLINED_FUNCTION_172_2();
      sub_217283FD0();
      sub_217751FF8();

      if (v12[2])
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (v12[4])
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (v12[6])
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      sub_217284868();
      OUTLINED_FUNCTION_86_0(v15);
      if (v14)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        sub_217283888(v15, v1);
        OUTLINED_FUNCTION_119();
        CatalogSearchRawResponse.TopResult.hash(into:)();
        OUTLINED_FUNCTION_139_0();
        if (*(v1 + v3[10] + 8))
        {
          OUTLINED_FUNCTION_119();
          OUTLINED_FUNCTION_148();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        memcpy(v16, (v1 + v3[11]), sizeof(v16));
        sub_2172638E8(v0);
        OUTLINED_FUNCTION_221(v3[12]);
        OUTLINED_FUNCTION_221(v3[13]);
        OUTLINED_FUNCTION_221(v3[14]);
        OUTLINED_FUNCTION_221(v3[15]);
        sub_2171F0738(v1, &qword_27CB24708, &unk_217758C90);
      }

      sub_2172840D8(v12, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
      OUTLINED_FUNCTION_158_0();
    }

    while (!v14);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727D208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4();
  if (v2)
  {
    v4 = *(sub_217751428() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_4_18();
    sub_217284690(v7, 255, v8, MEMORY[0x277CC8920]);
    do
    {
      OUTLINED_FUNCTION_171_1();
      sub_217751EB8();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

void sub_21727D2E4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_168_0();
  v36 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_81();
  v35 = v5;
  v6 = OUTLINED_FUNCTION_206();
  v7 = type metadata accessor for CloudPersonalRecommendation.Item(v6);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v38 = v9;
  v10 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudPersonalRecommendation.Content(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_111();
  v17 = *(v3 + 16);
  MEMORY[0x21CEA3550](v17);
  v45 = v17;
  if (v17)
  {
    v18 = v1;
    v19 = 0;
    v20 = v18 + v15[10];
    v42 = (v18 + v15[11]);
    v43 = v15[12];
    v40 = v15[14];
    v41 = v15[13];
    OUTLINED_FUNCTION_47_3();
    v39 = v21;
    v44 = v20;
    v37 = v14;
    do
    {
      sub_217284868();
      sub_217283FD0();
      v46 = v19;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_217269C9C(v14, v38);
        MEMORY[0x21CEA3550](1);
        CloudPersonalRecommendation.Item.hash(into:)();
        sub_2172840D8(v38, type metadata accessor for CloudPersonalRecommendation.Item);
      }

      else
      {
        memcpy(v52, v14, 0x138uLL);
        MEMORY[0x21CEA3550](0);
        CloudPersonalRecommendation.hash(into:)(v0);
        sub_217269D5C(v52);
      }

      OUTLINED_FUNCTION_139_0();
      if (*(v20 + 8))
      {
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_188(&v51);
      v23 = v42[45];
      v22 = v42[46];
      v24 = v42[47];
      OUTLINED_FUNCTION_188(v52);
      v53 = v23;
      v54 = v22;
      v55 = v24;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v52) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_192(v50);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v50) == 1)
        {
          OUTLINED_FUNCTION_120();
        }

        else
        {
          OUTLINED_FUNCTION_192(v47);
          OUTLINED_FUNCTION_119();
          OUTLINED_FUNCTION_192(v48);
          sub_217269EF4(v48, v49);
          MusicIdentifierSet.hash(into:)(v0);
          memcpy(v49, v47, 0x161uLL);
          sub_217269F50(v49);
        }

        if (v23)
        {
          OUTLINED_FUNCTION_119();
          MEMORY[0x21CEA3550](*(v23 + 16));
          v25 = *(v23 + 16);
          v26 = v0;
          if (v25)
          {
            OUTLINED_FUNCTION_46_0();
            v28 = v23 + v27;
            v30 = *(v29 + 72);
            v31 = *(v29 + 16);
            do
            {
              v31(v35, v28, v36);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v32, MEMORY[0x277CC8920]);
              sub_217751EB8();
              v33 = OUTLINED_FUNCTION_135();
              v34(v33);
              v28 += v30;
              --v25;
            }

            while (v25);
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          v26 = v0;
        }

        v0 = v26;
        if (v24)
        {
          OUTLINED_FUNCTION_119();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        v14 = v37;
      }

      v20 = v44;
      v19 = v46 + 1;
      OUTLINED_FUNCTION_223(v43);
      OUTLINED_FUNCTION_223(v41);
      OUTLINED_FUNCTION_223(v40);
      OUTLINED_FUNCTION_223(v39);
      sub_2171F0738(v18, &qword_27CB24210, &unk_21776DB90);
    }

    while (v46 + 1 != v45);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727D7C8()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 56;
    do
    {
      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_36();
      sub_217751FF8();

      v2 += 32;
      --v0;
    }

    while (v0);
  }
}

void sub_21727D824()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_168_0();
  v42 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v38 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = *(v2 + 16);
  MEMORY[0x21CEA3550](v15, v12);
  if (v15)
  {
    v16 = 0;
    v17 = v8[10];
    v55 = &v14[v8[9]];
    v54 = &v14[v17];
    v18 = v8[12];
    v52 = &v14[v8[11]];
    v53 = v18;
    v19 = v8[13];
    v50 = v8[14];
    v51 = v19;
    OUTLINED_FUNCTION_47_3();
    v48 = v2 + v20;
    v49 = v21;
    v47 = *(v10 + 72);
    v43 = v15;
    v44 = v14;
    v40 = v38 + 8;
    v41 = v38 + 16;
    v39 = v7;
    do
    {
      v56 = v16;
      sub_217284868();
      CatalogSearchRawResponse.TopResult.hash(into:)();
      OUTLINED_FUNCTION_139_0();
      if (*(v54 + 1))
      {
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      v22 = v52;
      OUTLINED_FUNCTION_188(v61);
      v24 = *(v22 + 45);
      v23 = *(v22 + 46);
      v25 = *(v22 + 47);
      OUTLINED_FUNCTION_188(v62);
      v62[45] = v24;
      v62[46] = v23;
      v62[47] = v25;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v62) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        memcpy(v60, v61, 0x161uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v60) == 1)
        {
          OUTLINED_FUNCTION_120();
        }

        else
        {
          memcpy(v58, v61, 0x161uLL);
          memcpy(v57, v61, sizeof(v57));
          OUTLINED_FUNCTION_119();
          sub_217269EF4(v58, v59);
          MusicIdentifierSet.hash(into:)(v0);
          memcpy(v59, v57, 0x161uLL);
          sub_217269F50(v59);
        }

        v45 = v23;
        v46 = v25;
        if (v24)
        {
          OUTLINED_FUNCTION_119();
          MEMORY[0x21CEA3550](*(v24 + 16));
          v26 = *(v24 + 16);
          v27 = v0;
          if (v26)
          {
            OUTLINED_FUNCTION_46_0();
            v29 = v24 + v28;
            v31 = *(v30 + 72);
            v32 = *(v30 + 16);
            do
            {
              v33 = OUTLINED_FUNCTION_153();
              v32(v33);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v34, MEMORY[0x277CC8920]);
              sub_217751EB8();
              v35 = OUTLINED_FUNCTION_135();
              v36(v35);
              v29 += v31;
              --v26;
            }

            while (v26);
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          v27 = v0;
        }

        v0 = v27;
        if (v46)
        {
          OUTLINED_FUNCTION_119();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        v15 = v43;
        v14 = v44;
      }

      v16 = v56 + 1;
      OUTLINED_FUNCTION_166(v53);
      OUTLINED_FUNCTION_166(v51);
      OUTLINED_FUNCTION_166(v50);
      OUTLINED_FUNCTION_166(v49);
      sub_2171F0738(v14, &qword_27CB24708, &unk_217758C90);
    }

    while (v16 != v15);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727DC08()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_13();
  if (v0)
  {
    v4 = type metadata accessor for CloudStation(0);
    OUTLINED_FUNCTION_43_1(v4);
    OUTLINED_FUNCTION_2_12(v5);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudStation.Attributes.hash(into:)();
      sub_217753208();
      sub_217753208();
      v6 = OUTLINED_FUNCTION_57_2();
      sub_217263DE0(v6);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v2)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v12);
      v7 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v7);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v8, v9, v10);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v11);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727DDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_17_3();
  if (v7)
  {
    v9 = v8 + 64;
    do
    {
      v10 = *(v9 - 8);
      if (*(v9 - 24))
      {
        sub_217753208();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        OUTLINED_FUNCTION_177();
        sub_217751FF8();
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_217753208();
        sub_217751DE8();
        sub_217751DE8();
        if (!v10)
        {
LABEL_7:
          sub_217753208();
          goto LABEL_8;
        }
      }

      sub_217753208();
      OUTLINED_FUNCTION_135();
      sub_217751FF8();
LABEL_8:
      sub_217751DE8();
      v11 = OUTLINED_FUNCTION_154();
      sub_217265A08(v11, v12);

      swift_bridgeObjectRelease_n();

      v9 += 40;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_218();
}

void sub_21727DECC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_13();
  if (v2)
  {
    v10 = (v1 + *(type metadata accessor for CloudSong(0) + 32));
    OUTLINED_FUNCTION_60_3(v3[9]);
    v13 = v5;
    v12 = v3[11];
    v11 = v3[15];
    OUTLINED_FUNCTION_15_12();
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_57_2();
      CloudSong.Attributes.hash(into:)();
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v15[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v14, v15, sizeof(v14));
        OUTLINED_FUNCTION_119();
        CloudSong.Relationships.hash(into:)();
        sub_217284234(v14);
      }

      OUTLINED_FUNCTION_87_4();
      v6 = v10[1];
      v17 = *v10;
      v18 = v6;
      v19 = *(v10 + 4);
      sub_217263F54();
      OUTLINED_FUNCTION_127_0();
      if (*(v13 + 8))
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      memcpy(v16, (v1 + v12), sizeof(v16));
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      sub_217265A08(v0, *(v1 + v11));
      v7 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v7, v8, &unk_217758CD0);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E0EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    type metadata accessor for CloudRecordLabel(0);
    OUTLINED_FUNCTION_60_3(*(v2 + 36));
    v20 = v6;
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudRecordLabel.Attributes.hash(into:)();
      OUTLINED_FUNCTION_87_4();
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v24[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v23, v24, sizeof(v23));
        OUTLINED_FUNCTION_119();
        sub_217284868();
        if (v22)
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v7 = OUTLINED_FUNCTION_85_1();
          sub_2172DE6DC(v7);
          sub_2171F0738(v21, &qword_27CB24278, &unk_217759070);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284868();
        if (v22)
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v8 = OUTLINED_FUNCTION_85_1();
          sub_2172DE6DC(v8);
          sub_2171F0738(v21, &qword_27CB24278, &unk_217759070);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284540(v23);
      }

      OUTLINED_FUNCTION_106_1();
      if (v9 || (OUTLINED_FUNCTION_119(), !v4))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v10 = OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228(v10, v11, v12, v13, v14, v15, v16);
      }

      OUTLINED_FUNCTION_127_0();
      v4 = *(v20 + 8);
      if (v4)
      {
        OUTLINED_FUNCTION_59();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v25);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v17, v18, v19);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E3A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v5 = type metadata accessor for CloudAlbum(0);
    OUTLINED_FUNCTION_43_1(v5);
    OUTLINED_FUNCTION_2_12(v6);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudAlbum.Attributes.hash(into:)();
      v7 = OUTLINED_FUNCTION_57_2();
      sub_21726504C(v7);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v42[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v41, v42, sizeof(v41));
        OUTLINED_FUNCTION_119();
        v8 = OUTLINED_FUNCTION_85_1();
        sub_21726473C(v8, v9, v10, v11, v12, v13, v14, v15);
        v3 = v41;
        sub_2172640D4(v0, v16, v17, v18, v19, v20, v21, v22);
        sub_2172640D4(v0, v23, v24, v25, v26, v27, v28, v29);
        sub_217264414(v0, v30, v31, v32, v33, v34, v35, v36);
        sub_2172845E8(v41);
      }

      v37 = OUTLINED_FUNCTION_57_2();
      sub_217264150(v37);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v3)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v43);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v38 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v38, v39, &qword_21775D360);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v40);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E570()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_13();
  if (v2)
  {
    v5 = type metadata accessor for CloudMusicVideo(0);
    OUTLINED_FUNCTION_43_1(v5);
    v27 = (v1 + v6);
    OUTLINED_FUNCTION_60_3(*(v3 + 36));
    v28 = v7;
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_15_12();
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudMusicVideo.Attributes.hash(into:)();
      v8 = OUTLINED_FUNCTION_57_2();
      sub_217264574(v8);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v30[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v29, v30, sizeof(v29));
        OUTLINED_FUNCTION_119();
        v9 = OUTLINED_FUNCTION_85_1();
        sub_217264414(v9, v10, v11, v12, v13, v14, v15, v16);
        sub_217264414(v0, v17, v18, v19, v20, v21, v22, v23);
        sub_2172844EC(v29);
      }

      sub_217264490(v0, *v27, v27[1], v27[2], v27[3]);
      OUTLINED_FUNCTION_127_0();
      if (*(v28 + 8))
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v31);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v24 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v24, v25, &qword_217758D90);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v26);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E758()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    type metadata accessor for CloudGenre(0);
    OUTLINED_FUNCTION_60_3(*(v2 + 36));
    v18 = v4;
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_107_0(v5);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudGenre.Attributes.hash(into:)();
      sub_217284868();
      if (v21[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v20, v21, sizeof(v20));
        OUTLINED_FUNCTION_119();
        sub_217284868();
        if (v19[18])
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v6 = OUTLINED_FUNCTION_85_1();
          sub_2172DE724(v6);
          sub_2171F0738(v19, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284594(v20);
      }

      OUTLINED_FUNCTION_87_4();
      OUTLINED_FUNCTION_106_1();
      if (v7 || (OUTLINED_FUNCTION_119(), !v2))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228(v8, v9, v10, v11, v12, v13, v14);
      }

      OUTLINED_FUNCTION_127_0();
      v2 = *(v18 + 8);
      if (v2)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v22);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v15, v16, v17);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E990()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_13();
  if (v0)
  {
    v4 = type metadata accessor for CloudPlaylist(0);
    OUTLINED_FUNCTION_43_1(v4);
    OUTLINED_FUNCTION_2_12(v5);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudPlaylist.Attributes.hash(into:)();
      v6 = OUTLINED_FUNCTION_57_2();
      sub_217264C3C(v6);
      v7 = OUTLINED_FUNCTION_57_2();
      sub_21726492C(v7);
      v8 = OUTLINED_FUNCTION_57_2();
      sub_2172647B8(v8);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v2)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v13);
      v9 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v9);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v10 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v10, v11, &unk_21775A220);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v12);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727EAEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A30, &qword_217758FE8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v3 = type metadata accessor for CloudPlaylist.Collaborator(0);
    OUTLINED_FUNCTION_43_1(v3);
    OUTLINED_FUNCTION_2_12(v0 + v4);
    v5 = &qword_217758FE8;
    do
    {
      v6 = v5;
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      v7 = OUTLINED_FUNCTION_22_4();
      CloudPlaylist.Collaborator.Attributes.hash(into:)(v7);
      sub_217753208();
      sub_217753208();
      v8 = *(v11 + 8);
      if (v8 == 1 || (OUTLINED_FUNCTION_59(), !v8))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v8)
      {
        OUTLINED_FUNCTION_59();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v12);
      v9 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v9);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v5 = v6;
      sub_2171F0738(v0, &qword_27CB24A30, v6);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v10);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727ECA4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v5 = type metadata accessor for CloudArtist(0);
    OUTLINED_FUNCTION_43_1(v5);
    OUTLINED_FUNCTION_2_12(v6);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudArtist.Attributes.hash(into:)();
      v7 = OUTLINED_FUNCTION_57_2();
      sub_217264ADC(v7);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v19[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v18, v19, sizeof(v18));
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_85_1();
        CloudArtist.Associations.hash(into:)();
        sub_21728463C(v18);
      }

      OUTLINED_FUNCTION_106_1();
      if (v8 || (OUTLINED_FUNCTION_119(), !v3))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228(v9, v10, v11, v12, v13, v14, v15);
      }

      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v3)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v20);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v16 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v16, v17, &qword_217758CB0);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727EEB0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v46 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v36 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_204();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_111();
  v18 = *(v5 + 16);
  MEMORY[0x21CEA3550](v18);
  if (v18)
  {
    v45 = v3 + v16[10];
    v43 = (v3 + v16[11]);
    v44 = v16[12];
    v41 = v16[14];
    v42 = v16[13];
    v19 = 0;
    OUTLINED_FUNCTION_46_0();
    v40 = v20;
    v38 = v1;
    v37 = v13;
    v21 = v8;
    do
    {
      OUTLINED_FUNCTION_29_5();
      sub_217284868();
      v1(v7);
      sub_217751FF8();
      v47 = v19;
      if (*(v45 + 8))
      {
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_29_5();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_185();
      }

      OUTLINED_FUNCTION_188(&v52);
      v23 = v43[45];
      v22 = v43[46];
      v24 = v43[47];
      OUTLINED_FUNCTION_188(v53);
      v53[45] = v23;
      v53[46] = v22;
      v53[47] = v24;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v53) == 1)
      {
        OUTLINED_FUNCTION_185();
      }

      else
      {
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_192(v51);
        v39 = v24;
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v51) == 1)
        {
          OUTLINED_FUNCTION_185();
        }

        else
        {
          OUTLINED_FUNCTION_192(v48);
          OUTLINED_FUNCTION_181_1();
          OUTLINED_FUNCTION_192(v49);
          sub_217269EF4(v49, v50);
          MusicIdentifierSet.hash(into:)(v7);
          memcpy(v50, v48, 0x161uLL);
          sub_217269F50(v50);
        }

        if (v23)
        {
          OUTLINED_FUNCTION_181_1();
          MEMORY[0x21CEA3550](*(v23 + 16));
          v25 = *(v23 + 16);
          v26 = v7;
          if (v25)
          {
            OUTLINED_FUNCTION_46_0();
            v28 = v23 + v27;
            v30 = *(v29 + 72);
            v31 = *(v29 + 16);
            do
            {
              v32 = OUTLINED_FUNCTION_153();
              v31(v32);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v33, MEMORY[0x277CC8920]);
              sub_217751EB8();
              (*(v36 + 8))(v37, v21);
              v28 += v30;
              --v25;
            }

            while (v25);
          }
        }

        else
        {
          OUTLINED_FUNCTION_185();
          v26 = v7;
        }

        v7 = v26;
        sub_217753208();
        if (v39)
        {
          sub_217751FF8();
        }

        v1 = v38;
      }

      v19 = v47 + 1;
      OUTLINED_FUNCTION_222(v44);
      OUTLINED_FUNCTION_222(v42);
      OUTLINED_FUNCTION_222(v41);
      OUTLINED_FUNCTION_222(v40);
      v34 = OUTLINED_FUNCTION_13_2();
      sub_2171F0738(v34, v35, v46);
    }

    while (v47 + 1 != v18);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F29C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    v3 = v2 + 32;
    do
    {
      sub_217284868();
      sub_217751FF8();
      v4 = v43[5];
      if (v43[3])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25();
        if (!v4)
        {
LABEL_7:
          OUTLINED_FUNCTION_25();
          goto LABEL_8;
        }
      }

      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_122_0();
      sub_217751FF8();
LABEL_8:
      sub_217284868();
      if (__src[2] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        OUTLINED_FUNCTION_24();
        v5 = sub_217284868();
        if (v40)
        {
          OUTLINED_FUNCTION_180(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24[0], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
          OUTLINED_FUNCTION_24();
          v13 = OUTLINED_FUNCTION_156_0();
          sub_2172DE7B4(v13);
          sub_2171F0738(v24, &qword_27CB24A50, &qword_217759008);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        v14 = sub_217284868();
        if (v40)
        {
          OUTLINED_FUNCTION_180(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24[0], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
          OUTLINED_FUNCTION_24();
          v22 = OUTLINED_FUNCTION_156_0();
          sub_2172DE79C(v22);
          sub_2171F0738(v24, &qword_27CB24388, &unk_217781F60);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_2172841E0(__dst);
      }

      sub_217753208();
      sub_217753208();
      sub_217751FF8();
      if (v43[43])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      memcpy(v49, v44, sizeof(v49));
      sub_2172638E8(v0);
      sub_217265A08(v0, v45);
      sub_217265A08(v0, v46);
      sub_217265A08(v0, v47);
      sub_217265A08(v0, v48);
      sub_2171F0738(v43, &qword_27CB24A38, &unk_217758FF0);
      v3 += 768;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F584()
{
  OUTLINED_FUNCTION_12();
  v22 = v5;
  v23 = v6;
  v11 = OUTLINED_FUNCTION_163(v7, v8, v9, v10);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_68_4();
  MEMORY[0x21CEA3550](v13);
  if (v4)
  {
    v22(0);
    v21 = v3 + v11[10];
    v19 = v11[12];
    v20 = v11[11];
    v17 = v11[14];
    v18 = v11[13];
    OUTLINED_FUNCTION_47_3();
    v16 = v14;
    do
    {
      OUTLINED_FUNCTION_172_2();
      sub_217284868();
      sub_217751FF8();
      v23(v2);
      sub_217753208();
      sub_217753208();
      sub_217753208();
      sub_217751FF8();
      if (*(v21 + 8))
      {
        v1 = v0;
        v0 = *v21;
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_191_0();
      }

      else
      {
        OUTLINED_FUNCTION_185();
      }

      memcpy(v24, (v3 + v20), sizeof(v24));
      sub_2172638E8(v2);
      OUTLINED_FUNCTION_167_1(v19);
      OUTLINED_FUNCTION_167_1(v18);
      OUTLINED_FUNCTION_167_1(v17);
      OUTLINED_FUNCTION_167_1(v16);
      sub_2171F0738(v3, v1, v0);
      OUTLINED_FUNCTION_158_0();
    }

    while (!v15);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F778()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  OUTLINED_FUNCTION_168_0();
  v35 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v34 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A58, &qword_217759020);
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_68_4();
  MEMORY[0x21CEA3550](v16);
  if (v2)
  {
    v17 = v1 + *(type metadata accessor for CloudPlaylist.Collaboration(0) + 20);
    v18 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v33 = v17 + *(v18 + 24);
    v32 = *(v18 + 28);
    v31 = v1 + *(v12 + 40);
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_47_3();
    v20 = v4 + v19;
    v25 = *(v14 + 72);
    v26 = v21;
    do
    {
      OUTLINED_FUNCTION_172_2();
      sub_217284868();
      sub_217751FF8();
      if (*(v17 + 8))
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      sub_217284868();
      OUTLINED_FUNCTION_133(v34, 1, v35);
      if (v22)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        (*(v6 + 32))(v24, v34, v35);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        sub_217284690(&qword_27CB24320, 255, v23, MEMORY[0x277CC9270]);
        sub_217751EB8();
        (*(v6 + 8))(v24, v35);
      }

      if (*(v33 + 8))
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (*(v17 + v32) != 2)
      {
        OUTLINED_FUNCTION_119();
      }

      sub_217753208();
      sub_217264EA8(v0);
      sub_217753208();
      sub_217753208();
      OUTLINED_FUNCTION_139_0();
      if (*(v31 + 8))
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      memcpy(v36, (v1 + v30), sizeof(v36));
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_166(v29);
      OUTLINED_FUNCTION_166(v28);
      OUTLINED_FUNCTION_166(v27);
      OUTLINED_FUNCTION_166(v26);
      sub_2171F0738(v1, &qword_27CB24A58, &qword_217759020);
      v20 += v25;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727FB88()
{
  OUTLINED_FUNCTION_12();
  v21 = v5;
  v10 = OUTLINED_FUNCTION_163(v6, v7, v8, v9);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_68_4();
  MEMORY[0x21CEA3550](v12);
  if (v4)
  {
    v20 = v3 + v10[10];
    v18 = v10[12];
    v19 = v10[11];
    v16 = v10[14];
    v17 = v10[13];
    OUTLINED_FUNCTION_47_3();
    v15 = v13;
    do
    {
      OUTLINED_FUNCTION_172_2();
      sub_217284868();
      v21(v2);
      sub_217751FF8();
      if (*(v20 + 8))
      {
        v1 = v0;
        v0 = *v20;
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_191_0();
      }

      else
      {
        OUTLINED_FUNCTION_185();
      }

      memcpy(v22, (v3 + v19), sizeof(v22));
      sub_2172638E8(v2);
      OUTLINED_FUNCTION_167_1(v18);
      OUTLINED_FUNCTION_167_1(v17);
      OUTLINED_FUNCTION_167_1(v16);
      OUTLINED_FUNCTION_167_1(v15);
      sub_2171F0738(v3, v1, v0);
      OUTLINED_FUNCTION_158_0();
    }

    while (!v14);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727FD18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    type metadata accessor for CloudCurator(0);
    OUTLINED_FUNCTION_60_3(*(v2 + 36));
    v18 = v4;
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_107_0(v5);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudCurator.Attributes.hash(into:)();
      sub_217284868();
      if (v21[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v20, v21, sizeof(v20));
        OUTLINED_FUNCTION_119();
        sub_217284868();
        if (v19[18])
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v6 = OUTLINED_FUNCTION_85_1();
          sub_2172DE724(v6);
          sub_2171F0738(v19, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_2172831A8(v20);
      }

      OUTLINED_FUNCTION_87_4();
      OUTLINED_FUNCTION_106_1();
      if (v7 || (OUTLINED_FUNCTION_119(), !v2))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228(v8, v9, v10, v11, v12, v13, v14);
      }

      OUTLINED_FUNCTION_127_0();
      v2 = *(v18 + 8);
      if (v2)
      {
        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v22);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v15, v16, v17);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727FF50()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 72);
    do
    {
      v13 = v0;
      v3 = *(v2 - 4);
      v11 = *v2;
      v5 = v2[3];
      v4 = v2[4];
      v7 = v2[5];
      v6 = v2[6];
      v8 = v2[7];
      v12 = v2[8];
      MEMORY[0x21CEA3550](*(v2 - 5));
      MEMORY[0x21CEA3550](v3);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172838F8(v5, v4, v7, v6);
      v9 = OUTLINED_FUNCTION_205_0();
      sub_2171FB568(v9, v10);
      sub_217751FF8();
      sub_217753208();
      if (v11)
      {
        sub_217751FF8();
      }

      sub_217751FF8();
      if (v4 != 1)
      {
        sub_217753208();
        if (v4)
        {
          sub_217753208();
          OUTLINED_FUNCTION_177();
          sub_217751FF8();
          if (v6)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_217753208();
          if (v6)
          {
LABEL_8:
            sub_217753208();
            sub_217751FF8();
            goto LABEL_11;
          }
        }
      }

      sub_217753208();
LABEL_11:
      if (v12 == 1 || (sub_217753208(), !v12))
      {
        sub_217753208();
      }

      else
      {
        sub_217753208();
        sub_217751FF8();
      }

      sub_217283940(v5, v4, v7, v6);
      sub_217283988(v8, v12);
      v2 += 14;
      v0 = v13 - 1;
    }

    while (v13 != 1);
  }
}

void sub_21728015C()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 40);
    v3 = (v1 + 40);
    do
    {
      v5 = *v3;
      v3 += 2;
      v4 = v5;
      switch(v5)
      {
        case 0uLL:
          v6 = 0;
          goto LABEL_13;
        case 1uLL:
          v6 = 1;
          goto LABEL_13;
        case 2uLL:
          v6 = 2;
          goto LABEL_13;
        case 3uLL:
          v6 = 3;
          goto LABEL_13;
        case 4uLL:
          v6 = 4;
          goto LABEL_13;
        case 5uLL:
          v6 = 5;
          goto LABEL_13;
        case 6uLL:
          v6 = 6;
          goto LABEL_13;
        case 7uLL:
          v6 = 7;
          goto LABEL_13;
        case 8uLL:
          v6 = 8;
LABEL_13:
          MEMORY[0x21CEA3550](v6);
          break;
        default:
          v7 = *(v2 - 1);
          MEMORY[0x21CEA3550](9);
          sub_217751DE8();
          OUTLINED_FUNCTION_154();
          sub_217751FF8();
          sub_21726B8A0(v7, v4);
          break;
      }

      v2 = v3;
      --v0;
    }

    while (v0);
  }
}

void sub_217280250()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_2();
  v14 = v1;
  if (v1)
  {
    v2 = 0;
    v3 = &qword_21776C6D0;
    do
    {
      v4 = v3;
      sub_217284868();
      sub_217751FF8();
      memcpy(__dst, v22, sizeof(__dst));
      v5 = v24;
      v6 = v25;
      memcpy(v20, v22, sizeof(v20));
      v21 = v23;
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v20) == 1)
      {
        OUTLINED_FUNCTION_25();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        memcpy(__src, __dst, sizeof(__src));
        OUTLINED_FUNCTION_24();
        CloudArtwork.hash(into:)(v0);
        sub_217751DE8();
        v9 = OUTLINED_FUNCTION_122_0();
        sub_217265A08(v9, v10);

        if (v5)
        {
LABEL_5:
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_73_3();
          sub_217751FF8();
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_25();
      if (v6)
      {
LABEL_6:
        OUTLINED_FUNCTION_24();
        v7 = *(v6 + 16);
        MEMORY[0x21CEA3550](v7);
        if (v7)
        {
          v8 = v6 + 40;
          do
          {
            sub_217751DE8();
            OUTLINED_FUNCTION_93();
            sub_217751FF8();

            v8 += 16;
            --v7;
          }

          while (v7);
        }

        goto LABEL_13;
      }

LABEL_12:
      OUTLINED_FUNCTION_25();
LABEL_13:
      sub_217284868();
      if (__src[2] == 1)
      {
        OUTLINED_FUNCTION_25();
        v3 = v4;
      }

      else
      {
        memcpy(v17, __src, sizeof(v17));
        OUTLINED_FUNCTION_24();
        sub_217284868();
        v3 = v4;
        if (v16[2])
        {
          memcpy(v15, v16, sizeof(v15));
          OUTLINED_FUNCTION_24();
          sub_2172DE754(v0);
          sub_2171F0738(v15, &qword_27CB24288, &qword_217758F80);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_217283F7C(v17);
      }

      sub_217753208();
      sub_217753208();
      sub_217751FF8();
      if (v26)
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_122_0();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      ++v2;
      memcpy(v32, v27, sizeof(v32));
      sub_2172638E8(v0);
      sub_217265A08(v0, v28);
      sub_217265A08(v0, v29);
      sub_217265A08(v0, v30);
      sub_217265A08(v0, v31);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v11, v12, v13);
    }

    while (v2 != v14);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21728054C()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v3 = (v2 + 48);
    while (2)
    {
      v4 = *(v3 - 2);
      v5 = *v3;
      v3 += 24;
      switch(v5)
      {
        case 1:
          MEMORY[0x21CEA3550](2);
          sub_217753208();
          goto LABEL_15;
        case 2:
          MEMORY[0x21CEA3550](3);
          v9 = v4;
          goto LABEL_10;
        case 3:
          MEMORY[0x21CEA3550](4);
          if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v9 = v4;
          }

          else
          {
            v9 = 0;
          }

LABEL_10:
          MEMORY[0x21CEA3580](v9);
          goto LABEL_15;
        case 4:
          MEMORY[0x21CEA3550](5);
          sub_217751DE8();
          sub_21728054C();
          v6 = OUTLINED_FUNCTION_16_0();
          v8 = 4;
          goto LABEL_13;
        case 5:
          MEMORY[0x21CEA3550](6);
          sub_217751DE8();
          sub_217265A08(v1, v4);
          v6 = OUTLINED_FUNCTION_16_0();
          v8 = 5;
          goto LABEL_13;
        case 6:
          MEMORY[0x21CEA3550](0);
          goto LABEL_15;
        default:
          MEMORY[0x21CEA3550](1);
          sub_217751DE8();
          OUTLINED_FUNCTION_36();
          sub_217751FF8();
          v6 = OUTLINED_FUNCTION_16_0();
          v8 = 0;
LABEL_13:
          sub_21726A608(v6, v7, v8);
LABEL_15:
          if (!--v0)
          {
            return;
          }

          continue;
      }
    }
  }
}

void sub_217280674()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    v3 = (v2 + 32);
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      sub_217284868();
      OUTLINED_FUNCTION_93();
      sub_217751FF8();
      memcpy(v13, &__dst[2], sizeof(v13));
      v4 = OUTLINED_FUNCTION_156_0();
      CloudFlexAnalysis.Attributes.hash(into:)(v4);
      sub_217753208();
      sub_217753208();
      sub_217753208();
      v5 = __dst[24];
      sub_217751FF8();
      if (v5)
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_199();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      v6 = __dst[73];
      memcpy(v15, &__dst[25], sizeof(v15));
      sub_2172638E8(v0);
      sub_217265A08(v0, v6);
      v7 = OUTLINED_FUNCTION_122_0();
      sub_217265A08(v7, v8);
      v9 = OUTLINED_FUNCTION_131_1();
      sub_217265A08(v9, v10);
      sub_217751DE8();
      v11 = OUTLINED_FUNCTION_199();
      sub_217265A08(v11, v12);

      sub_2171F0738(__dst, &qword_27CB24980, &qword_217758F10);
      v3 += 616;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217280804()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_26_4();
  if (v1)
  {
    v4 = v3 + 32;
    do
    {
      sub_217284868();
      sub_217751FF8();
      v5 = v35[5];
      if (v35[3])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25();
        if (!v5)
        {
LABEL_7:
          OUTLINED_FUNCTION_25();
          goto LABEL_8;
        }
      }

      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_122_0();
      sub_217751FF8();
LABEL_8:
      sub_217284868();
      if (__src[2] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        OUTLINED_FUNCTION_24();
        v6 = sub_217284868();
        if (v32)
        {
          OUTLINED_FUNCTION_180(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
          OUTLINED_FUNCTION_24();
          v14 = OUTLINED_FUNCTION_156_0();
          sub_2172DE82C(v14);
          sub_2171F0738(v16, &qword_27CB249A0, &qword_217758F30);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_217283D18(__dst);
      }

      sub_217753208();
      sub_217753208();
      sub_217751FF8();
      if (v35[27])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      memcpy(v41, v36, sizeof(v41));
      sub_2172638E8(v0);
      sub_217265A08(v0, v37);
      sub_217265A08(v0, v38);
      sub_217265A08(v0, v39);
      sub_217265A08(v0, v40);
      sub_2171F0738(v35, &qword_27CB24988, &qword_217758F18);
      v4 += 640;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217280A34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    v3 = (v2 + 32);
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      OUTLINED_FUNCTION_229();
      OUTLINED_FUNCTION_93();
      sub_217751FF8();
      memcpy(v12, &__dst[2], sizeof(v12));
      OUTLINED_FUNCTION_156_0();
      CloudAudioAnalysis.Attributes.hash(into:)();
      sub_217753208();
      sub_217753208();
      sub_217753208();
      v4 = __dst[106];
      sub_217751FF8();
      if (v4)
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_199();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      v5 = __dst[155];
      memcpy(v14, &__dst[107], sizeof(v14));
      sub_2172638E8(v0);
      sub_217265A08(v0, v5);
      v6 = OUTLINED_FUNCTION_122_0();
      sub_217265A08(v6, v7);
      v8 = OUTLINED_FUNCTION_131_1();
      sub_217265A08(v8, v9);
      sub_217751DE8();
      v10 = OUTLINED_FUNCTION_199();
      sub_217265A08(v10, v11);

      sub_2171F0738(__dst, &qword_27CB249A8, &qword_217758F38);
      v3 += 1272;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217280BBC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_168_0();
  sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v47 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  OUTLINED_FUNCTION_7();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v47 - v17);
  v19 = *(v2 + 16);
  MEMORY[0x21CEA3550](v19, v16);
  if (v19)
  {
    v20 = type metadata accessor for CloudPreviewAsset(0);
    v21 = *(v20 + 20);
    v52 = *(v20 + 24);
    v53 = v21;
    OUTLINED_FUNCTION_47_3();
    v23 = v2 + v22;
    v50 = v4 + 32;
    v51 = v24;
    v25 = &qword_27CB24A68;
    v48 = *(v14 + 72);
    v49 = v4 + 8;
    v26 = &qword_217759030;
    do
    {
      v27 = v25;
      v28 = v26;
      sub_217284868();
      memcpy(v58, v18, sizeof(v58));
      v29 = v18[54];
      memcpy(v59, v18, sizeof(v59));
      v60 = v29;
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v59) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v57, v58, sizeof(v57));
        OUTLINED_FUNCTION_119();
        CloudArtwork.hash(into:)(v0);
        sub_217751DE8();
        v30 = OUTLINED_FUNCTION_148();
        sub_217265A08(v30, v31);
      }

      v32 = v55;
      sub_217284868();
      OUTLINED_FUNCTION_86_0(v32);
      v26 = v28;
      if (v33)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v34 = OUTLINED_FUNCTION_147_1();
        v35(v34);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        v37 = sub_217284690(&qword_27CB24320, 255, v36, MEMORY[0x277CC9270]);
        OUTLINED_FUNCTION_84_0(v37);
        v38 = OUTLINED_FUNCTION_13_2();
        v39(v38);
      }

      v40 = v56;
      sub_217284868();
      OUTLINED_FUNCTION_86_0(v40);
      if (v33)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        v41 = OUTLINED_FUNCTION_147_1();
        v42(v41);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        v44 = sub_217284690(&qword_27CB24320, 255, v43, MEMORY[0x277CC9270]);
        OUTLINED_FUNCTION_84_0(v44);
        v45 = OUTLINED_FUNCTION_13_2();
        v46(v45);
      }

      sub_217265A08(v0, *(v18 + v51));
      v25 = v27;
      sub_2171F0738(v18, v27, v28);
      v23 += v48;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217280F7C()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      memcpy(__dst, v2, 0x48uLL);
      v3 = __dst[2];
      v4 = LOBYTE(__dst[3]);
      v5 = __dst[5];
      v6 = __dst[7];
      if (__dst[1])
      {
        sub_217753208();
        sub_217284868();
        OUTLINED_FUNCTION_154();
        sub_217751FF8();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_217753208();
        sub_217284868();
        if (v4)
        {
LABEL_5:
          sub_217753208();
          if (!v5)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      sub_217753208();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x21CEA3580](v7);
      if (!v5)
      {
LABEL_6:
        sub_217753208();
        if (v6)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

LABEL_13:
      sub_217753208();
      OUTLINED_FUNCTION_153();
      sub_217751FF8();
      if (v6)
      {
LABEL_14:
        sub_217753208();
        sub_217751FF8();
        goto LABEL_15;
      }

LABEL_7:
      sub_217753208();
LABEL_15:
      sub_217751DE8();
      v8 = OUTLINED_FUNCTION_154();
      sub_217265A08(v8, v9);

      sub_2171F0738(__dst, &qword_27CB24AB8, &unk_217759090);
      v2 += 72;
      --v0;
    }

    while (v0);
  }
}

void sub_217281100()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_36();
      sub_217751FF8();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_21728115C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v33 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_111();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24838, &qword_217758DC8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *(v2 + 16);
  MEMORY[0x21CEA3550](v17, v14);
  if (v17)
  {
    v18 = type metadata accessor for CloudVideoArtwork.FileAsset(0);
    v19 = v18[6];
    v37 = &v16[v18[5]];
    v35 = &v16[v19];
    v20 = &v16[v18[7]];
    v36 = *(v12 + 28);
    OUTLINED_FUNCTION_46_0();
    v22 = v2 + v21;
    v31 = (v7 + 8);
    v32 = (v7 + 32);
    v34 = *(v23 + 72);
    do
    {
      OUTLINED_FUNCTION_205_0();
      sub_217284868();
      sub_217284868();
      OUTLINED_FUNCTION_133(v0, 1, v5);
      if (v24)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        v25 = v33;
        (*v32)(v33, v0, v5);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_1_6();
        sub_217284690(&qword_27CB24320, 255, v26, MEMORY[0x277CC9270]);
        sub_217751EB8();
        (*v31)(v25, v5);
      }

      if (v37[8] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        v27 = *v37;
        OUTLINED_FUNCTION_24();
        MEMORY[0x21CEA3550](v27);
      }

      if (v35[8] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        v28 = *v35;
        OUTLINED_FUNCTION_24();
        MEMORY[0x21CEA3550](v28);
      }

      if (v20[8] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        v29 = *v20;
        OUTLINED_FUNCTION_24();
        MEMORY[0x21CEA3550](v29);
      }

      sub_217265A08(v4, *&v16[v36]);
      sub_2171F0738(v16, &qword_27CB24838, &qword_217758DC8);
      v22 += v34;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217281490()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      OUTLINED_FUNCTION_117_2();
      sub_217751FF8();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217281654()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      v3 = *(v2 + 40);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_177();
      sub_217751FF8();
      OUTLINED_FUNCTION_153();
      sub_217751FF8();
      sub_217753208();
      if (v3)
      {
        OUTLINED_FUNCTION_135();
        sub_217751FF8();
      }

      v2 += 56;

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217281710()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_26_4();
  if (v1)
  {
    v4 = v3 + 32;
    do
    {
      OUTLINED_FUNCTION_170_0();
      sub_217284868();
      sub_217751FF8();
      memcpy(__dst, v16, sizeof(__dst));
      CloudPersonalRecommendation.Attributes.hash(into:)(v0);
      sub_217284868();
      if (__dst[2] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        memcpy(v14, __dst, sizeof(v14));
        OUTLINED_FUNCTION_24();
        sub_217284868();
        if (__src[2])
        {
          memcpy(v12, __src, sizeof(v12));
          OUTLINED_FUNCTION_24();
          sub_2172DE4B4(v0);
          sub_2171F0738(v12, &qword_27CB244C0, &qword_21775D9C0);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_21728373C(v14);
      }

      sub_217753208();
      v5 = v18;
      if (v18 == 1 || (v6 = v17, OUTLINED_FUNCTION_24(), !v5))
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        OUTLINED_FUNCTION_24();
        if (v6)
        {
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_131_1();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_217751DE8();
        v7 = OUTLINED_FUNCTION_122_0();
        sub_217265A08(v7, v8);
      }

      sub_217751FF8();
      if (v19)
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_122_0();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      memcpy(v25, v20, sizeof(v25));
      sub_2172638E8(v0);
      sub_217265A08(v0, v21);
      sub_217265A08(v0, v22);
      sub_217265A08(v0, v23);
      sub_217265A08(v0, v24);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v9, v10, v11);
      v4 += 768;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21728199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_17_3();
  if (v7)
  {
    v10 = (v9 + 64);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 8);
      v13 = *v10;
      if (*(v10 - 24) == 1)
      {
        sub_217753208();
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = *(v10 - 4);
        sub_217753208();
        MEMORY[0x21CEA3550](v14);
        if (!v12)
        {
LABEL_7:
          sub_217753208();
          MEMORY[0x21CEA3550](v11);
          goto LABEL_8;
        }
      }

      sub_217753208();
LABEL_8:
      sub_217751DE8();
      sub_217265A08(v8, v13);

      v10 += 5;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_218();
}

void sub_217281A54()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_36();
      sub_217751FF8();

      v2 += 24;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_217281B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + 16);
  result = MEMORY[0x21CEA3550](v10);
  if (v10)
  {
    v12 = a2 + 32;
    do
    {
      sub_217284868();
      sub_217751FF8();

      if (v14)
      {
        sub_217753208();
        sub_217751FF8();
      }

      else
      {
        sub_217753208();
      }

      if (v15)
      {
        sub_217753208();
        sub_217751FF8();
      }

      else
      {
        sub_217753208();
      }

      a5(a1);
      result = sub_2171F0738(v13, a3, a4);
      v12 += 168;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_217281CE8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_168_0();
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for PreviewAsset(0);
  OUTLINED_FUNCTION_0_0();
  v40 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v41 = v2;
  v23 = *(v2 + 16);
  MEMORY[0x21CEA3550](v23);
  if (v23)
  {
    v24 = *(v17 + 20);
    v42 = *(v17 + 24);
    v43 = v24;
    OUTLINED_FUNCTION_46_0();
    v26 = v41 + v25;
    v28 = *(v27 + 72);
    v40 = (v39 + 32);
    v41 = v28;
    v39 += 8;
    do
    {
      sub_217283FD0();
      memcpy(v47, v22, sizeof(v47));
      memcpy(v48, v22, 0x221uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v48) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v44, v47, sizeof(v44));
        OUTLINED_FUNCTION_119();
        memcpy(v45, v47, 0x221uLL);
        sub_217284028(v45, v46);
        Artwork.hash(into:)(v0);
        memcpy(v46, v44, 0x221uLL);
        sub_217284084(v46);
      }

      sub_217284868();
      OUTLINED_FUNCTION_86_0(v16);
      if (v29)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        (*v40)(v8, v16, v3);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        v31 = sub_217284690(&qword_27CB24320, 255, v30, MEMORY[0x277CC9270]);
        OUTLINED_FUNCTION_84_0(v31);
        v32 = OUTLINED_FUNCTION_13_2();
        v33(v32);
      }

      sub_217284868();
      OUTLINED_FUNCTION_86_0(v13);
      if (v29)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        (*v40)(v8, v13, v3);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        v35 = sub_217284690(&qword_27CB24320, 255, v34, MEMORY[0x277CC9270]);
        OUTLINED_FUNCTION_84_0(v35);
        v36 = OUTLINED_FUNCTION_13_2();
        v37(v36);
      }

      sub_2172840D8(v22, type metadata accessor for PreviewAsset);
      v26 += v41;
      --v23;
    }

    while (v23);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2172820A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *v2;
      v4 = *(v2 + 8);
      v5 = v2[3];
      v6 = v2[5];
      if (*(v2 - 8) == 1)
      {
        sub_217753208();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *(v2 - 2);
        sub_217753208();
        MEMORY[0x21CEA3550](v7);
        if (v4)
        {
LABEL_5:
          sub_217753208();
          if (!v5)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }
      }

      sub_217753208();
      MEMORY[0x21CEA3550](v3);
      if (!v5)
      {
LABEL_6:
        sub_217753208();
        sub_217751DE8();
        if (v6)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

LABEL_10:
      sub_217753208();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_135();
      sub_217751FF8();
      if (v6)
      {
LABEL_11:
        sub_217753208();
        OUTLINED_FUNCTION_29_5();
        sub_217751FF8();
        goto LABEL_12;
      }

LABEL_7:
      sub_217753208();
LABEL_12:

      v2 += 8;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2172821BC()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      if (*(v2 - 16) == 1)
      {
        sub_217753208();
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v5 = *(v2 - 3);
        sub_217753208();
        MEMORY[0x21CEA3550](v5);
        if (!v4)
        {
LABEL_7:
          sub_217753208();
          MEMORY[0x21CEA3550](v3);
          goto LABEL_8;
        }
      }

      sub_217753208();
LABEL_8:
      v2 += 32;
      --v0;
    }

    while (v0);
  }
}

void sub_217282254()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 8;
      OUTLINED_FUNCTION_142_0();
      --v0;
    }

    while (v0);
  }
}

void sub_2172822A0()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x21CEA3550](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_2172822E0()
{
  OUTLINED_FUNCTION_17_3();
  v19 = v0;
  if (v0)
  {
    v2 = 0;
    v18 = v1 + 32;
    do
    {
      v3 = v18 + 56 * v2;
      v4 = *(v3 + 8);
      v5 = *(v3 + 16);
      v6 = *(v3 + 24);
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      OUTLINED_FUNCTION_142_0();
      v9 = *(v4 + 16);
      MEMORY[0x21CEA3550](v9);
      if (v9)
      {
        v10 = v4 + 32;
        do
        {
          v10 += 8;
          OUTLINED_FUNCTION_142_0();
          --v9;
        }

        while (v9);
      }

      v11 = *(v5 + 16);
      MEMORY[0x21CEA3550](v11);
      if (v11)
      {
        v12 = v5 + 32;
        do
        {
          v12 += 8;
          OUTLINED_FUNCTION_142_0();
          --v11;
        }

        while (v11);
      }

      if (v7)
      {
        sub_217753208();
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_217753208();
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v15 = v6;
        }

        else
        {
          v15 = 0;
        }

        MEMORY[0x21CEA3580](v15);
        if (!v8)
        {
LABEL_19:
          sub_217753208();
          sub_217751DE8();
          goto LABEL_21;
        }
      }

      sub_217753208();
      v13 = *(v8 + 16);
      MEMORY[0x21CEA3550](v13);
      if (v13)
      {
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        v14 = v8 + 40;
        do
        {
          sub_217751DE8();
          OUTLINED_FUNCTION_153();
          sub_217751FF8();

          v14 += 16;
          --v13;
        }

        while (v13);
        goto LABEL_22;
      }

      sub_217751DE8();
      sub_217751DE8();
LABEL_21:
      sub_217751DE8();
      sub_217751DE8();
LABEL_22:
      ++v2;
      sub_217751DE8();
      v16 = OUTLINED_FUNCTION_154();
      sub_217265A08(v16, v17);

      swift_bridgeObjectRelease_n();
    }

    while (v2 != v19);
  }
}

void sub_2172824CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      sub_217275AA0(v2, &v5);
      sub_217751FF8();
      sub_2172846D8(&v6, __src);
      if (__src[729])
      {
        sub_217751DE8();
      }

      else
      {
        memcpy(v3, __src, 0x2D9uLL);
        sub_217751DE8();
        sub_217284734(v3);
      }

      OUTLINED_FUNCTION_29_5();
      sub_217751FF8();

      sub_217276358(&v5);
      v2 += 752;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_21728263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24468;
  if (!qword_27CB24468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24468);
  }

  return result;
}

uint64_t dispatch thunk of MusicPlayer.Queue.insert<A, B>(_:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = (*(*v6 + 320) + **(*v6 + 320));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_208(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_207_0(v14);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MusicPlayer.Queue.insert<A>(_:position:)()
{
  OUTLINED_FUNCTION_145();
  v6 = (*(v0 + 328) + **(v0 + 328));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_207_0(v2);
  v4 = OUTLINED_FUNCTION_105_3();

  return v6(v4);
}

{
  OUTLINED_FUNCTION_145();
  v6 = (*(v0 + 336) + **(v0 + 336));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_207_0(v2);
  v4 = OUTLINED_FUNCTION_105_3();

  return v6(v4);
}

uint64_t dispatch thunk of MusicPlayer.Queue.insert(_:position:)()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_143();
  v6 = (*(*v0 + 344) + **(*v0 + 344));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_207_0(v2);
  v4 = OUTLINED_FUNCTION_132();

  return v6(v4);
}

uint64_t sub_217282D8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

_BYTE *_s5QueueC22EntryInsertionPositionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_217282F88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_19_2();
  if (v3)
  {
    v5 = (v4 + 32);
    do
    {
      memcpy(v13, v5, 0x91uLL);
      v6 = v13[15];
      v7 = LOBYTE(v13[16]);
      memcpy(__dst, v5, sizeof(__dst));
      sub_217284914(v13, v11);
      PlayParameters.hash(into:)(v2);
      if (v7 == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        OUTLINED_FUNCTION_24();
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x21CEA3580](v8);
      }

      if (LOBYTE(v13[18]) == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        v9 = v13[17];
        OUTLINED_FUNCTION_24();
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x21CEA3580](v10);
      }

      sub_217284970(v13);
      v5 += 152;
      --v3;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_219();
}

void sub_217283064()
{
  OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    v3 = v2 + 32;
    do
    {
      sub_2172830F8(v3, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v5 + 40))(v0, v4, v5);
      sub_217283154(v6);
      v3 += 40;
      --v1;
    }

    while (v1);
  }
}

void sub_2172831FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 72);
    do
    {
      v3 = *v2;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_177();
      sub_217751FF8();
      OUTLINED_FUNCTION_153();
      sub_217751FF8();
      sub_217753208();
      if (v3)
      {
        OUTLINED_FUNCTION_135();
        sub_217751FF8();
      }

      v2 += 6;

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2172832B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_17_3();
  if (v7)
  {
    v9 = v8 + 32;
    do
    {
      ++v9;
      OUTLINED_FUNCTION_117_2();
      sub_217751FF8();

      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_218();
}

uint64_t sub_217283340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_143();
  v9 = v8(v7);
  MEMORY[0x21CEA3550](v9);
  result = a4(v4);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CEA2E30](i, v4);
        }

        else
        {
        }

        sub_2173C3A00(v5);
      }
    }
  }

  return result;
}

void sub_2172833F4()
{
  OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    v3 = *(type metadata accessor for MusicPersonalRecommendation(0) - 8);
    v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      MusicPersonalRecommendation.hash(into:)(v0);
      v4 += v5;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_21728348C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  for (result = MEMORY[0x21CEA3550](v2); v2; --v2)
  {
    result = MEMORY[0x21CEA3550](0);
  }

  return result;
}

void sub_2172834CC()
{
  OUTLINED_FUNCTION_17_3();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x21CEA3550](v3);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_217283534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(a2 + 16);
  result = MEMORY[0x21CEA3550](v7);
  if (v7)
  {
    v9 = a2 + 32;
    do
    {
      sub_217284868();
      sub_217751FF8();
      MEMORY[0x21CEA3550](v21);
      sub_217751FF8();
      if (v24)
      {
        sub_217753208();
        OUTLINED_FUNCTION_76_1();
        sub_217751FF8();
      }

      else
      {
        sub_217753208();
      }

      sub_217284868();
      if (*(&v18 + 1))
      {
        v14 = v17;
        v15 = v18;
        v16 = v19;
        sub_217753208();
        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        v10 = OUTLINED_FUNCTION_160_1();
        v11(v10);
        sub_217283154(&v14);
      }

      else
      {
        sub_217753208();
      }

      v13 = v22;
      if (v23 == 1)
      {
        OUTLINED_FUNCTION_126(v22 + 56, v12);
        v13 = *(v13 + 56);
      }

      MEMORY[0x21CEA3550](*(v13 + 16));
      if (v25)
      {
        sub_217753208();
        OUTLINED_FUNCTION_76_1();
        sub_217751FF8();
      }

      else
      {
        sub_217753208();
      }

      result = sub_2171F0738(&v20, a3, a4);
      v9 += 160;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_217283840(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_217283888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2172838F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_217751DE8();

    sub_217751DE8();
  }
}

double sub_217283940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_217283988(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_217283C5C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return sub_217751DE8();
  }
}

uint64_t sub_217283FD0()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2172840D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_217284690(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217284868()
{
  OUTLINED_FUNCTION_169();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_93();
  v4(v3);
  return v0;
}

void OUTLINED_FUNCTION_11_13()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_26_4()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 + 88) = *(result + 24);
  *(v1 + 96) = v2;
  return result;
}

void *OUTLINED_FUNCTION_53_1@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{

  return sub_2173E04B4(a1, 0, 1, 0, 1, a2);
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  *(v0 + 1544) = 0;
  *v1 = 0u;
  *(v0 + 1552) = 0xF000000000000000;

  return _s7MonitorCMa();
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  v4 = *(v2 + *(v0 + 32));

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_65_2()
{
  v4 = *(v2 + *(v0 + 40));

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  v4 = *(v2 + *(v0 + 56));

  return sub_217265A08(v1, v4);
}

void *OUTLINED_FUNCTION_72_2(void *a1)
{
  v4 = (v2 + *(v1 + 64));

  return memcpy(a1, v4, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_79_3()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_87_4()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t result)
{
  v3 = *(result + 28);
  v1[9] = *(result + 32);
  v1[10] = v3;
  v4 = v2[11];
  v1[7] = v2[12];
  v1[8] = v4;
  v5 = v2[13];
  v1[5] = v2[14];
  v1[6] = v5;
  v1[4] = v2[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_127_0()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_141_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = a9;
  v14 = a10;
  *(v11 - 88) = 0;
  v10[97] = v13;
  v10[98] = v14;

  return memcpy(v10 + 99, &a9, 0x2D9uLL);
}

void OUTLINED_FUNCTION_142_0()
{

  JUMPOUT(0x21CEA3580);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_2171F0738(va, v14, v15);
}

uint64_t OUTLINED_FUNCTION_157_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_163(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void *OUTLINED_FUNCTION_164_0()
{
  v2 = STACK[0x310];
  v0[4] = STACK[0x308];
  v0[5] = v2;

  return memcpy(v0 + 6, &STACK[0x308], 0x2D9uLL);
}

void OUTLINED_FUNCTION_165_0()
{

  bzero((v0 + 16), 0x2EAuLL);
}

uint64_t OUTLINED_FUNCTION_166@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_167_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_181_1()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_182_0()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_183()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_184(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_185()
{

  return sub_217753208();
}

void *OUTLINED_FUNCTION_188(void *a1)
{

  return memcpy(a1, v1, 0x168uLL);
}

uint64_t OUTLINED_FUNCTION_190_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_191_0()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_192(void *a1)
{

  return memcpy(a1, (v1 + 1616), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_2172846D8(&STACK[0x1458], &STACK[0xB78]);
}

uint64_t OUTLINED_FUNCTION_216(uint64_t a1)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_221@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_222@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return sub_217265A08(v2, v4);
}

uint64_t OUTLINED_FUNCTION_223@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return sub_217265A08(v2, v4);
}

uint64_t OUTLINED_FUNCTION_224(uint64_t a1)
{

  return sub_2171F0738(a1, v2, v1);
}

double OUTLINED_FUNCTION_226()
{
}

uint64_t OUTLINED_FUNCTION_227(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_217283154(va);
}

void OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_21727DDE0(v7, v8, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_229()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_230()
{

  return sub_217751DE8();
}

void *MusicItemTypeValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for MusicItemTypeValueProviding))
  {
    result = (*(v3 + 8))(&v9);
    v5 = v10;
    v6 = v11;
    *a2 = v9;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v7 = sub_217753348();
    MEMORY[0x21CEA23B0](v7);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AADF0, v8);
    result = OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  return result;
}

{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for MusicItemTypeValueProviding))
  {
    result = (*(v3 + 8))(&v9);
    v5 = v10;
    v6 = v11;
    *a2 = v9;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v7 = sub_217753348();
    MEMORY[0x21CEA23B0](v7);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177ACF10, v8);
    result = OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t MusicItemTypeValue.librarySearchableType.getter()
{
  result = dynamic_cast_existential_1_conditional(*v0, *v0, &protocol descriptor for MusicLibrarySearchable);
  if (!result)
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
    sub_217751DE8();
    sub_217285954(1);
    v2 = sub_217752918();
    v4 = v3;

    MEMORY[0x21CEA23B0](v2, v4, v5);

    sub_217751DE8();
    v10 = sub_2172857F8(1uLL);
    sub_217285A70(v10, v6, v7);
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v8);

    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177AAE20, v9);
    result = OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  return result;
}

unint64_t sub_2172857F8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_13();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_3_19(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      sub_217752118();
      OUTLINED_FUNCTION_1_7();
      return OUTLINED_FUNCTION_0_10();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217285890(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_217285908(0, result, v2);
    if (v3)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      sub_217659BCC();
      OUTLINED_FUNCTION_1_7();
      return OUTLINED_FUNCTION_0_10();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217285908(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_217285954(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_3_19(v1, v2);
    sub_217752118();
    OUTLINED_FUNCTION_1_7();
    return OUTLINED_FUNCTION_0_10();
  }

  return result;
}

unint64_t sub_2172859D8(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_217752928();
    if (v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = result;
    }

    if (v8 >> 14 >= a2 >> 14)
    {
      sub_217752958();
      OUTLINED_FUNCTION_1_7();
      return OUTLINED_FUNCTION_0_10();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217285A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD50;
  if (!qword_27CB2CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD50);
  }

  return result;
}

uint64_t String.init(_:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v3 == 2)
    {
      return sub_217752FC8();
    }

    else if (v3 == 3)
    {
      return sub_2177525C8();
    }

    else
    {
      sub_21726A608(result, *(a1 + 8), v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_217285B4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.init(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_217285B74(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v15 = sub_217288160(v40, a4);
    v14 = v40[0];
    if (BYTE1(v40[0]))
    {
      v14 = 0;
    }

    if (!v15)
    {
      v14 = 0;
    }

    v13 = !v15 | BYTE1(v40[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v34 = a1;
            v35 = a2;
            sub_2172893B0(a1, a2, 10);
            LOBYTE(v4) = v36;
            v37 = (v36 >> 8) & 1;
            a1 = v34;
            v13 = v37;
            a2 = v35;
LABEL_72:
            sub_21726A608(a1, a2, 0);
            if (v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = v4;
            }

            return v14 | ((v13 & 1) << 8);
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v39 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v38;
              a2 = v39;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v20 = v6 - 1;
                if (v6 != 1)
                {
                  LOBYTE(v4) = 0;
                  if (v8)
                  {
                    while (1)
                    {
                      ++v8;
                      LOBYTE(v6) = v20 != 0;
                      if (!v20)
                      {
                        goto LABEL_70;
                      }

                      v21 = *v8 - 48;
                      if (v21 > 9)
                      {
                        goto LABEL_69;
                      }

                      v22 = (10 * v4);
                      if (v22 != 10 * v4)
                      {
                        goto LABEL_69;
                      }

                      LODWORD(v4) = v22 + v21;
                      if ((v22 + v21) != v4)
                      {
                        goto LABEL_69;
                      }

                      --v20;
                    }
                  }

LABEL_77:
                  LOBYTE(v6) = 0;
                  goto LABEL_70;
                }

LABEL_69:
                LOBYTE(v4) = 0;
LABEL_70:
                v41 = v6;
LABEL_71:
                v13 = v41;
                goto LABEL_72;
              }

              goto LABEL_86;
            }

            if (v9 != 45)
            {
              LOBYTE(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v27 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_76;
                  }

                  v28 = *v8 - 48;
                  if (v28 > 9 || (v29 = (10 * v4), v29 != 10 * v4) || (LODWORD(v4) = v29 + v28, (v29 + v28) != v4))
                  {
                    LOBYTE(v4) = 0;
                    goto LABEL_76;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_88:
              v27 = 1;
LABEL_76:
              v41 = v27;
              goto LABEL_71;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LOBYTE(v4) = 0;
                if (v8)
                {
                  while (1)
                  {
                    ++v8;
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      goto LABEL_70;
                    }

                    v11 = *v8 - 48;
                    if (v11 > 9)
                    {
                      goto LABEL_69;
                    }

                    v12 = (10 * v4);
                    if (v12 != 10 * v4)
                    {
                      goto LABEL_69;
                    }

                    LODWORD(v4) = v12 - v11;
                    if ((v12 - v11) != v4)
                    {
                      goto LABEL_69;
                    }

                    --v10;
                  }
                }

                goto LABEL_77;
              }

              goto LABEL_69;
            }

            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v40[0] = a1;
          v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            LOBYTE(v4) = 0;
            v23 = v5 - 1;
            if (v23)
            {
              for (i = v40 + 1; ; ++i)
              {
                LOBYTE(v6) = v23 != 0;
                if (!v23)
                {
                  break;
                }

                v25 = *i - 48;
                if (v25 > 9)
                {
                  goto LABEL_69;
                }

                v26 = (10 * v4);
                if (v26 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v26 + v25;
                if ((v26 + v25) != v4)
                {
                  goto LABEL_69;
                }

                --v23;
              }

              goto LABEL_70;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_85;
            }

            LOBYTE(v4) = 0;
            v16 = v5 - 1;
            if (v16)
            {
              for (j = v40 + 1; ; ++j)
              {
                LOBYTE(v6) = v16 != 0;
                if (!v16)
                {
                  break;
                }

                v18 = *j - 48;
                if (v18 > 9)
                {
                  goto LABEL_69;
                }

                v19 = (10 * v4);
                if (v19 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v19 - v18;
                if ((v19 - v18) != v4)
                {
                  goto LABEL_69;
                }

                --v16;
              }

              goto LABEL_70;
            }
          }

          else
          {
            LOBYTE(v4) = 0;
            if (v5)
            {
              for (k = v40; ; ++k)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v31 = *k - 48;
                if (v31 > 9)
                {
                  goto LABEL_69;
                }

                v32 = (10 * v4);
                if (v32 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v32 + v31;
                if ((v32 + v31) != v4)
                {
                  goto LABEL_69;
                }

                --v5;
              }

              goto LABEL_70;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_70;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v14 = 0;
      v13 = 1;
      return v14 | ((v13 & 1) << 8);
    }

    v13 = a1 != a1;
    if (a1 == a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 | ((v13 & 1) << 8);
}

uint64_t sub_217285F5C(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v15 = sub_217288314(v36, a4);
    v14 = v36[0];
    if (BYTE1(v36[0]))
    {
      v14 = 0;
    }

    if (!v15)
    {
      v14 = 0;
    }

    v13 = !v15 | BYTE1(v36[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v30 = a1;
            v31 = a2;
            sub_217289994(a1, a2, 10);
            LOBYTE(v4) = v32;
            v33 = (v32 >> 8) & 1;
            a1 = v30;
            v13 = v33;
            a2 = v31;
LABEL_74:
            sub_21726A608(a1, a2, 0);
            if (v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = v4;
            }

            return v14 | ((v13 & 1) << 8);
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v35 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v34;
              a2 = v35;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v19 = v6 - 1;
                if (v6 != 1)
                {
                  LOBYTE(v4) = 0;
                  if (v8)
                  {
                    for (i = v8 + 1; ; ++i)
                    {
                      LOBYTE(v6) = v19 != 0;
                      if (!v19)
                      {
                        break;
                      }

                      v21 = *i - 48;
                      if (v21 > 9)
                      {
                        goto LABEL_71;
                      }

                      if (((10 * v4) & 0xF00) != 0)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v4) = (10 * v4) + v21;
                      if ((v4 >> 8))
                      {
                        goto LABEL_71;
                      }

                      --v19;
                    }

                    goto LABEL_72;
                  }

LABEL_79:
                  LOBYTE(v6) = 0;
                  goto LABEL_72;
                }

LABEL_71:
                LOBYTE(v4) = 0;
LABEL_72:
                v37 = v6;
LABEL_73:
                v13 = v37;
                goto LABEL_74;
              }

              goto LABEL_88;
            }

            if (v9 != 45)
            {
              LOBYTE(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v25 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_78;
                  }

                  v26 = *v8 - 48;
                  if (v26 > 9 || ((10 * v4) & 0xF00) != 0 || (LODWORD(v4) = (10 * v4) + v26, ((v4 >> 8) & 1) != 0))
                  {
                    LOBYTE(v4) = 0;
                    goto LABEL_78;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_90:
              v25 = 1;
LABEL_78:
              v37 = v25;
              goto LABEL_73;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LOBYTE(v4) = 0;
                if (v8)
                {
                  for (j = v8 + 1; ; ++j)
                  {
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      break;
                    }

                    v12 = *j - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v4) & 0xF00) != 0)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v4) = (10 * v4) - v12;
                    if ((v4 & 0xFFFFFF00) != 0)
                    {
                      goto LABEL_71;
                    }

                    --v10;
                  }

                  goto LABEL_72;
                }

                goto LABEL_79;
              }

              goto LABEL_71;
            }

            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v36[0] = a1;
          v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            LOBYTE(v4) = 0;
            v22 = v5 - 1;
            if (v22)
            {
              for (k = v36 + 1; ; ++k)
              {
                LOBYTE(v6) = v22 != 0;
                if (!v22)
                {
                  break;
                }

                v24 = *k - 48;
                if (v24 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF00) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) + v24;
                if ((v4 >> 8))
                {
                  goto LABEL_71;
                }

                --v22;
              }

              goto LABEL_72;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_87;
            }

            LOBYTE(v4) = 0;
            v16 = v5 - 1;
            if (v16)
            {
              for (m = v36 + 1; ; ++m)
              {
                LOBYTE(v6) = v16 != 0;
                if (!v16)
                {
                  break;
                }

                v18 = *m - 48;
                if (v18 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF00) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) - v18;
                if ((v4 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_71;
                }

                --v16;
              }

              goto LABEL_72;
            }
          }

          else
          {
            LOBYTE(v4) = 0;
            if (v5)
            {
              for (n = v36; ; ++n)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v28 = *n - 48;
                if (v28 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF00) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) + v28;
                if ((v4 >> 8))
                {
                  goto LABEL_71;
                }

                --v5;
              }

              goto LABEL_72;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_72;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v14 = 0;
      v13 = 1;
      return v14 | ((v13 & 1) << 8);
    }

    v13 = a1 > 0xFF;
    if (a1 <= 0xFF)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 | ((v13 & 1) << 8);
}

uint64_t sub_217286360(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v15 = sub_217288474(v40, a4);
    v14 = v40[0];
    if (BYTE2(v40[0]))
    {
      v14 = 0;
    }

    if (!v15)
    {
      v14 = 0;
    }

    v13 = !v15 | BYTE2(v40[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v34 = a1;
            v35 = a2;
            sub_217289F60(a1, a2, 10);
            LOWORD(v4) = v36;
            v37 = HIWORD(v36) & 1;
            a1 = v34;
            v13 = v37;
            a2 = v35;
LABEL_72:
            sub_21726A608(a1, a2, 0);
            if (v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = v4;
            }

            return v14 | ((v13 & 1) << 16);
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v39 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v38;
              a2 = v39;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v20 = v6 - 1;
                if (v6 != 1)
                {
                  LOWORD(v4) = 0;
                  if (v8)
                  {
                    while (1)
                    {
                      ++v8;
                      LOBYTE(v6) = v20 != 0;
                      if (!v20)
                      {
                        goto LABEL_70;
                      }

                      v21 = *v8 - 48;
                      if (v21 > 9)
                      {
                        goto LABEL_69;
                      }

                      v22 = (10 * v4);
                      if (v22 != 10 * v4)
                      {
                        goto LABEL_69;
                      }

                      LODWORD(v4) = v22 + v21;
                      if ((v22 + v21) != v4)
                      {
                        goto LABEL_69;
                      }

                      --v20;
                    }
                  }

LABEL_77:
                  LOBYTE(v6) = 0;
                  goto LABEL_70;
                }

LABEL_69:
                LOWORD(v4) = 0;
LABEL_70:
                v41 = v6;
LABEL_71:
                v13 = v41;
                goto LABEL_72;
              }

              goto LABEL_86;
            }

            if (v9 != 45)
            {
              LOWORD(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v27 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_76;
                  }

                  v28 = *v8 - 48;
                  if (v28 > 9 || (v29 = (10 * v4), v29 != 10 * v4) || (LODWORD(v4) = v29 + v28, (v29 + v28) != v4))
                  {
                    LOWORD(v4) = 0;
                    goto LABEL_76;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_88:
              v27 = 1;
LABEL_76:
              v41 = v27;
              goto LABEL_71;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LOWORD(v4) = 0;
                if (v8)
                {
                  while (1)
                  {
                    ++v8;
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      goto LABEL_70;
                    }

                    v11 = *v8 - 48;
                    if (v11 > 9)
                    {
                      goto LABEL_69;
                    }

                    v12 = (10 * v4);
                    if (v12 != 10 * v4)
                    {
                      goto LABEL_69;
                    }

                    LODWORD(v4) = v12 - v11;
                    if ((v12 - v11) != v4)
                    {
                      goto LABEL_69;
                    }

                    --v10;
                  }
                }

                goto LABEL_77;
              }

              goto LABEL_69;
            }

            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v40[0] = a1;
          v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            LOWORD(v4) = 0;
            v23 = v5 - 1;
            if (v23)
            {
              for (i = v40 + 1; ; ++i)
              {
                LOBYTE(v6) = v23 != 0;
                if (!v23)
                {
                  break;
                }

                v25 = *i - 48;
                if (v25 > 9)
                {
                  goto LABEL_69;
                }

                v26 = (10 * v4);
                if (v26 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v26 + v25;
                if ((v26 + v25) != v4)
                {
                  goto LABEL_69;
                }

                --v23;
              }

              goto LABEL_70;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_85;
            }

            LOWORD(v4) = 0;
            v16 = v5 - 1;
            if (v16)
            {
              for (j = v40 + 1; ; ++j)
              {
                LOBYTE(v6) = v16 != 0;
                if (!v16)
                {
                  break;
                }

                v18 = *j - 48;
                if (v18 > 9)
                {
                  goto LABEL_69;
                }

                v19 = (10 * v4);
                if (v19 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v19 - v18;
                if ((v19 - v18) != v4)
                {
                  goto LABEL_69;
                }

                --v16;
              }

              goto LABEL_70;
            }
          }

          else
          {
            LOWORD(v4) = 0;
            if (v5)
            {
              for (k = v40; ; ++k)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v31 = *k - 48;
                if (v31 > 9)
                {
                  goto LABEL_69;
                }

                v32 = (10 * v4);
                if (v32 != 10 * v4)
                {
                  goto LABEL_69;
                }

                LODWORD(v4) = v32 + v31;
                if ((v32 + v31) != v4)
                {
                  goto LABEL_69;
                }

                --v5;
              }

              goto LABEL_70;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_70;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v14 = 0;
      v13 = 1;
      return v14 | ((v13 & 1) << 16);
    }

    v13 = a1 != a1;
    if (a1 == a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 | ((v13 & 1) << 16);
}

uint64_t sub_217286748(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v15 = sub_217288628(v36, a4);
    v14 = v36[0];
    if (BYTE2(v36[0]))
    {
      v14 = 0;
    }

    if (!v15)
    {
      v14 = 0;
    }

    v13 = !v15 | BYTE2(v36[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v30 = a1;
            v31 = a2;
            sub_21728A544(a1, a2, 10);
            LOWORD(v4) = v32;
            v33 = HIWORD(v32) & 1;
            a1 = v30;
            v13 = v33;
            a2 = v31;
LABEL_74:
            sub_21726A608(a1, a2, 0);
            if (v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = v4;
            }

            return v14 | ((v13 & 1) << 16);
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v35 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v34;
              a2 = v35;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v19 = v6 - 1;
                if (v6 != 1)
                {
                  LOWORD(v4) = 0;
                  if (v8)
                  {
                    for (i = v8 + 1; ; ++i)
                    {
                      LOBYTE(v6) = v19 != 0;
                      if (!v19)
                      {
                        break;
                      }

                      v21 = *i - 48;
                      if (v21 > 9)
                      {
                        goto LABEL_71;
                      }

                      if (((10 * v4) & 0xF0000) != 0)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v4) = (10 * v4) + v21;
                      if ((v4 & 0x10000) != 0)
                      {
                        goto LABEL_71;
                      }

                      --v19;
                    }

                    goto LABEL_72;
                  }

LABEL_79:
                  LOBYTE(v6) = 0;
                  goto LABEL_72;
                }

LABEL_71:
                LOWORD(v4) = 0;
LABEL_72:
                v37 = v6;
LABEL_73:
                v13 = v37;
                goto LABEL_74;
              }

              goto LABEL_88;
            }

            if (v9 != 45)
            {
              LOWORD(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v25 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_78;
                  }

                  v26 = *v8 - 48;
                  if (v26 > 9 || ((10 * v4) & 0xF0000) != 0 || (LODWORD(v4) = (10 * v4) + v26, (v4 & 0x10000) != 0))
                  {
                    LOWORD(v4) = 0;
                    goto LABEL_78;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_90:
              v25 = 1;
LABEL_78:
              v37 = v25;
              goto LABEL_73;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LOWORD(v4) = 0;
                if (v8)
                {
                  for (j = v8 + 1; ; ++j)
                  {
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      break;
                    }

                    v12 = *j - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v4) & 0xF0000) != 0)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v4) = (10 * v4) - v12;
                    if ((v4 & 0xFFFF0000) != 0)
                    {
                      goto LABEL_71;
                    }

                    --v10;
                  }

                  goto LABEL_72;
                }

                goto LABEL_79;
              }

              goto LABEL_71;
            }

            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v36[0] = a1;
          v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            LOWORD(v4) = 0;
            v22 = v5 - 1;
            if (v22)
            {
              for (k = v36 + 1; ; ++k)
              {
                LOBYTE(v6) = v22 != 0;
                if (!v22)
                {
                  break;
                }

                v24 = *k - 48;
                if (v24 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF0000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) + v24;
                if ((v4 & 0x10000) != 0)
                {
                  goto LABEL_71;
                }

                --v22;
              }

              goto LABEL_72;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_87;
            }

            LOWORD(v4) = 0;
            v16 = v5 - 1;
            if (v16)
            {
              for (m = v36 + 1; ; ++m)
              {
                LOBYTE(v6) = v16 != 0;
                if (!v16)
                {
                  break;
                }

                v18 = *m - 48;
                if (v18 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF0000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) - v18;
                if ((v4 & 0xFFFF0000) != 0)
                {
                  goto LABEL_71;
                }

                --v16;
              }

              goto LABEL_72;
            }
          }

          else
          {
            LOWORD(v4) = 0;
            if (v5)
            {
              for (n = v36; ; ++n)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v28 = *n - 48;
                if (v28 > 9)
                {
                  goto LABEL_71;
                }

                if (((10 * v4) & 0xF0000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = (10 * v4) + v28;
                if ((v4 & 0x10000) != 0)
                {
                  goto LABEL_71;
                }

                --v5;
              }

              goto LABEL_72;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_72;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v14 = 0;
      v13 = 1;
      return v14 | ((v13 & 1) << 16);
    }

    v13 = a1 >> 16 != 0;
    if (a1 >> 16)
    {
      v14 = 0;
    }

    else
    {
      v14 = a1;
    }
  }

  return v14 | ((v13 & 1) << 16);
}

unint64_t sub_217286B50(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v16 = sub_217288788(v42, a4);
    v14 = v42[0];
    if (BYTE4(v42[0]))
    {
      v14 = 0;
    }

    if (!v16)
    {
      v14 = 0;
    }

    v15 = !v16 | BYTE4(v42[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v36 = a1;
            v37 = a2;
            sub_21728AB10(a1, a2, 10);
            LODWORD(v4) = v38;
            v39 = HIDWORD(v38) & 1;
            a1 = v36;
            v15 = v39;
            a2 = v37;
LABEL_74:
            sub_21726A608(a1, a2, 0);
            if (v15)
            {
              v14 = 0;
            }

            else
            {
              v14 = v4;
            }

            goto LABEL_82;
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v41 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v40;
              a2 = v41;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v21 = v6 - 1;
                if (v6 != 1)
                {
                  LODWORD(v4) = 0;
                  if (v8)
                  {
                    for (i = v8 + 1; ; ++i)
                    {
                      LOBYTE(v6) = v21 != 0;
                      if (!v21)
                      {
                        break;
                      }

                      v23 = *i - 48;
                      if (v23 > 9)
                      {
                        goto LABEL_71;
                      }

                      v24 = 10 * v4;
                      if (v24 != v24)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v4) = v24 + v23;
                      if (__OFADD__(v24, v23))
                      {
                        goto LABEL_71;
                      }

                      --v21;
                    }

                    goto LABEL_72;
                  }

LABEL_79:
                  LOBYTE(v6) = 0;
                  goto LABEL_72;
                }

LABEL_71:
                LODWORD(v4) = 0;
LABEL_72:
                v43 = v6;
LABEL_73:
                v15 = v43;
                goto LABEL_74;
              }

              goto LABEL_88;
            }

            if (v9 != 45)
            {
              LODWORD(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v29 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_78;
                  }

                  v30 = *v8 - 48;
                  if (v30 > 9 || (v31 = 10 * v4, v31 != v31) || (LODWORD(v4) = v31 + v30, __OFADD__(v31, v30)))
                  {
                    LODWORD(v4) = 0;
                    goto LABEL_78;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_90:
              v29 = 1;
LABEL_78:
              v43 = v29;
              goto LABEL_73;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LODWORD(v4) = 0;
                if (v8)
                {
                  for (j = v8 + 1; ; ++j)
                  {
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      break;
                    }

                    v12 = *j - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    v13 = 10 * v4;
                    if (v13 != v13)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v4) = v13 - v12;
                    if (__OFSUB__(v13, v12))
                    {
                      goto LABEL_71;
                    }

                    --v10;
                  }

                  goto LABEL_72;
                }

                goto LABEL_79;
              }

              goto LABEL_71;
            }

            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v42[0] = a1;
          v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            LODWORD(v4) = 0;
            v25 = v5 - 1;
            if (v25)
            {
              for (k = v42 + 1; ; ++k)
              {
                LOBYTE(v6) = v25 != 0;
                if (!v25)
                {
                  break;
                }

                v27 = *k - 48;
                if (v27 > 9)
                {
                  goto LABEL_71;
                }

                v28 = 10 * v4;
                if (v28 != v28)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_71;
                }

                --v25;
              }

              goto LABEL_72;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_87;
            }

            LODWORD(v4) = 0;
            v17 = v5 - 1;
            if (v17)
            {
              for (m = v42 + 1; ; ++m)
              {
                LOBYTE(v6) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *m - 48;
                if (v19 > 9)
                {
                  goto LABEL_71;
                }

                v20 = 10 * v4;
                if (v20 != v20)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  goto LABEL_71;
                }

                --v17;
              }

              goto LABEL_72;
            }
          }

          else
          {
            LODWORD(v4) = 0;
            if (v5)
            {
              for (n = v42; ; ++n)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v33 = *n - 48;
                if (v33 > 9)
                {
                  goto LABEL_71;
                }

                v34 = 10 * v4;
                if (v34 != v34)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v34 + v33;
                if (__OFADD__(v34, v33))
                {
                  goto LABEL_71;
                }

                --v5;
              }

              goto LABEL_72;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_72;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v14 = 0;
      v15 = 1;
      goto LABEL_82;
    }

    v14 = a1;
    v15 = a1 != a1;
    if (a1 != a1)
    {
      v14 = 0;
    }
  }

LABEL_82:
  LOBYTE(v42[0]) = v15 & 1;
  return v14 | ((v15 & 1) << 32);
}

unint64_t sub_217286EEC(unint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  if (a3 == 3)
  {
    a4.n128_u64[0] = a1;
    v16 = sub_217288938(v42, a4);
    v15 = v42[0];
    if (BYTE4(v42[0]))
    {
      v15 = 0;
    }

    if (!v16)
    {
      v15 = 0;
    }

    v14 = !v16 | BYTE4(v42[0]);
  }

  else
  {
    if (a3 != 2)
    {
      if (!a3)
      {
        v5 = HIBYTE(a2) & 0xF;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v7 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          if ((a2 & 0x1000000000000000) != 0)
          {
            v36 = a1;
            v37 = a2;
            sub_21728B084(a1, a2, 10);
            LODWORD(v4) = v38;
            v39 = HIDWORD(v38) & 1;
            a1 = v36;
            v14 = v39;
            a2 = v37;
LABEL_74:
            sub_21726A608(a1, a2, 0);
            if (v14)
            {
              v15 = 0;
            }

            else
            {
              v15 = v4;
            }

            goto LABEL_82;
          }

          if ((a2 & 0x2000000000000000) == 0)
          {
            if ((a1 & 0x1000000000000000) != 0)
            {
              v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v4 = a1;
              v41 = a2;
              v8 = sub_217752B88();
              a1 = v4;
              v6 = v40;
              a2 = v41;
            }

            v9 = *v8;
            if (v9 == 43)
            {
              if (v6 >= 1)
              {
                v21 = v6 - 1;
                if (v6 != 1)
                {
                  LODWORD(v4) = 0;
                  if (v8)
                  {
                    for (i = v8 + 1; ; ++i)
                    {
                      LOBYTE(v6) = v21 != 0;
                      if (!v21)
                      {
                        break;
                      }

                      v23 = *i - 48;
                      if (v23 > 9)
                      {
                        goto LABEL_71;
                      }

                      v24 = 10 * v4;
                      if ((v24 & 0xFFFFFFFF00000000) != 0)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v4) = v24 + v23;
                      if (__CFADD__(v24, v23))
                      {
                        goto LABEL_71;
                      }

                      --v21;
                    }

                    goto LABEL_72;
                  }

LABEL_79:
                  LOBYTE(v6) = 0;
                  goto LABEL_72;
                }

LABEL_71:
                LODWORD(v4) = 0;
LABEL_72:
                v43 = v6;
LABEL_73:
                v14 = v43;
                goto LABEL_74;
              }

              goto LABEL_88;
            }

            if (v9 != 45)
            {
              LODWORD(v4) = 0;
              if (v6)
              {
                while (1)
                {
                  v29 = v6 != 0;
                  if (!v6)
                  {
                    goto LABEL_78;
                  }

                  v30 = *v8 - 48;
                  if (v30 > 9 || (v31 = 10 * v4, (v31 & 0xFFFFFFFF00000000) != 0) || (LODWORD(v4) = v31 + v30, __CFADD__(v31, v30)))
                  {
                    LODWORD(v4) = 0;
                    goto LABEL_78;
                  }

                  ++v8;
                  --v6;
                }
              }

LABEL_90:
              v29 = 1;
LABEL_78:
              v43 = v29;
              goto LABEL_73;
            }

            if (v6 >= 1)
            {
              v10 = v6 - 1;
              if (v6 != 1)
              {
                LODWORD(v4) = 0;
                if (v8)
                {
                  for (j = v8 + 1; ; ++j)
                  {
                    LOBYTE(v6) = v10 != 0;
                    if (!v10)
                    {
                      break;
                    }

                    v12 = *j - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    v13 = 10 * v4;
                    if ((v13 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v4) = v13 - v12;
                    if (v13 < v12)
                    {
                      goto LABEL_71;
                    }

                    --v10;
                  }

                  goto LABEL_72;
                }

                goto LABEL_79;
              }

              goto LABEL_71;
            }

            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v42[0] = a1;
          v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v5)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            LODWORD(v4) = 0;
            v25 = v5 - 1;
            if (v25)
            {
              for (k = v42 + 1; ; ++k)
              {
                LOBYTE(v6) = v25 != 0;
                if (!v25)
                {
                  break;
                }

                v27 = *k - 48;
                if (v27 > 9)
                {
                  goto LABEL_71;
                }

                v28 = 10 * v4;
                if ((v28 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v28 + v27;
                if (__CFADD__(v28, v27))
                {
                  goto LABEL_71;
                }

                --v25;
              }

              goto LABEL_72;
            }
          }

          else if (a1 == 45)
          {
            if (!v5)
            {
              goto LABEL_87;
            }

            LODWORD(v4) = 0;
            v17 = v5 - 1;
            if (v17)
            {
              for (m = v42 + 1; ; ++m)
              {
                LOBYTE(v6) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *m - 48;
                if (v19 > 9)
                {
                  goto LABEL_71;
                }

                v20 = 10 * v4;
                if ((v20 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v20 - v19;
                if (v20 < v19)
                {
                  goto LABEL_71;
                }

                --v17;
              }

              goto LABEL_72;
            }
          }

          else
          {
            LODWORD(v4) = 0;
            if (v5)
            {
              for (n = v42; ; ++n)
              {
                LOBYTE(v6) = v5 != 0;
                if (!v5)
                {
                  break;
                }

                v33 = *n - 48;
                if (v33 > 9)
                {
                  goto LABEL_71;
                }

                v34 = 10 * v4;
                if ((v34 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_71;
                }

                LODWORD(v4) = v34 + v33;
                if (__CFADD__(v34, v33))
                {
                  goto LABEL_71;
                }

                --v5;
              }

              goto LABEL_72;
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_72;
        }

        a3 = 0;
      }

      sub_21726A608(a1, a2, a3);
      v15 = 0;
      v14 = 1;
      goto LABEL_82;
    }

    v14 = HIDWORD(a1) != 0;
    if (HIDWORD(a1))
    {
      v15 = 0;
    }

    else
    {
      v15 = a1;
    }
  }

LABEL_82:
  LOBYTE(v42[0]) = v14 & 1;
  return v15 | ((v14 & 1) << 32);
}