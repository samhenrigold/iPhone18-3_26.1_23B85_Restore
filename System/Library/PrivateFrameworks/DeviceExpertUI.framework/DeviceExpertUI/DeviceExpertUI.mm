uint64_t sub_21E3C0C00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E25D0();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C0C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E25D0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C0D14()
{
  v1 = (type metadata accessor for TipSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21E3E25D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C0E00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E2850();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C0E94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2850();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C0F18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F0, &qword_21E3E3E30);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21E3C0F80()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C0FEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_21E3DA560(a2, a3, a4);
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3C1044()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC26C8, &qword_21E3E3E08);
  sub_21E3C7BF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C10B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E2740();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C114C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2740();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C11CC()
{
  v1 = (type metadata accessor for SupplementarySnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_21E3E2740();
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C12A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C1318(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C1374()
{
  v1 = sub_21E3E26D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SupplementarySnippet(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  sub_21E3E2740();
  OUTLINED_FUNCTION_0_0();
  (*(v12 + 8))(v0 + v8 + v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_21E3C1518(uint64_t a1, uint64_t a2)
{
  if (a2 == 2147483646)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_21E3E25D0();
    v6 = OUTLINED_FUNCTION_9();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }
}

void sub_21E3C15A8()
{
  OUTLINED_FUNCTION_3_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_21E3E25D0();
    v3 = OUTLINED_FUNCTION_9();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

uint64_t sub_21E3C1620()
{
  v1 = (type metadata accessor for TipSnippetContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_21E3E25D0();
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C16FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C187C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  OUTLINED_FUNCTION_2_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  OUTLINED_FUNCTION_2_1();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_14:
    v9 = v4 + v12;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D8, &qword_21E3E4240);
  OUTLINED_FUNCTION_2_1();
  if (*(v14 + 84) == v3)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  OUTLINED_FUNCTION_2_1();
  if (*(v16 + 84) == v3)
  {
    v8 = v15;
    v12 = a3[8];
    goto LABEL_14;
  }

  if (v3 != 0x7FFFFFFF)
  {
    v8 = sub_21E3E3060();
    v12 = a3[15];
    goto LABEL_14;
  }

  v17 = *(v4 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_21E3C1A34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  OUTLINED_FUNCTION_2_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
    OUTLINED_FUNCTION_2_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D8, &qword_21E3E4240);
      OUTLINED_FUNCTION_2_1();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
        OUTLINED_FUNCTION_2_1();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(v5 + a4[13]) = (v4 - 1);
            return;
          }

          v10 = sub_21E3E3060();
          v14 = a4[15];
        }
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21E3C1BE8()
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  OUTLINED_FUNCTION_2_1();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
    v5 = OUTLINED_FUNCTION_9();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_21E3C1C90(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  OUTLINED_FUNCTION_2_1();
  if (*(v7 + 84) == a3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
    v9 = OUTLINED_FUNCTION_9();
  }

  return __swift_storeEnumTagSinglePayload(v9, v3, v3, v8);
}

uint64_t sub_21E3C1D4C()
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A08, &qword_21E3E4430);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_5();
  v2(v1);
  return v0;
}

uint64_t sub_21E3C1DB0()
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA8, &qword_21E3E44F0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_5();
  v2(v1);
  return v0;
}

uint64_t sub_21E3C1E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E3E2CE0();
  *a1 = result;
  return result;
}

uint64_t sub_21E3C1E7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E26F0();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C1F10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E26F0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C1F90()
{
  v1 = (type metadata accessor for LearnMoreSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21E3E26F0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C2078()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C20BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B38, &qword_21E3E4638);
  sub_21E3D15EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C212C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C2174()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C21AC()
{
  v1 = sub_21E3E29A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_21E3C2260(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E2870();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21E3C22A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E2870();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21E3C22F4()
{
  v1 = *(type metadata accessor for TroubleshootingSnippet(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21E3E2870();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C23C0()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C2404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B98, &qword_21E3E47A8);
  sub_21E3D2C70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C2474(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E28F0();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C2508(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E28F0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C258C()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C25D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF0, &qword_21E3E4858);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21E3C2638()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2BB8, &qword_21E3E4838);
  sub_21E3D53BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C26AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21E3E2780();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C2740(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2780();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C27C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E3E24E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E3C27F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E3E2DA0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E3C282C()
{
  type metadata accessor for AttributionItemListSnippet(0);
  OUTLINED_FUNCTION_1_3();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_21E3E2520();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  v13 = (v1 + v4);

  v14 = *(v0 + 28);
  sub_21E3E2780();
  OUTLINED_FUNCTION_0_0();
  (*(v15 + 8))(v13 + v14);
  (*(v8 + 8))(v1 + v10, v7);

  return MEMORY[0x2821FE8E8](v1, v10 + v11, v12 | 7);
}

uint64_t sub_21E3C29D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E3C2A10()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3C2A50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  OUTLINED_FUNCTION_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21E3C2AB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C2B20()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3C2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21E3C2C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E3C2D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C2D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E3E2D00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3C2E5C()
{
  OUTLINED_FUNCTION_22();
  v1 = sub_21E3E2370();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_21E3C2F68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C2FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E3E2170();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21E3C3088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E3E2170();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_21E3C3134()
{
  v1 = type metadata accessor for AttributionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_21E3E2170();
  OUTLINED_FUNCTION_1();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + *(v1 + 20);
  if (*(v6 + 24))
  {
    sub_21E3C7F24(*v6, *(v6 + 8), *(v6 + 16));
  }

  if (*(v0 + v3 + *(v1 + 24)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E26D0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21E3C3364(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E26D0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21E3C33B0()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D60();
  *v0 = result;
  return result;
}

uint64_t sub_21E3C33DC()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D80();
  *v0 = result;
  return result;
}

uint64_t sub_21E3C3448@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E3E2B00();
  OUTLINED_FUNCTION_0();
  v45 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_21E3E2520();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(sub_21E3E2610() + 16);

  v20 = sub_21E3E2610();
  if (v19 < 2)
  {
    sub_21E3DB89C(v20, v12);

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      v29 = &qword_27CEC2660;
      v30 = &qword_21E3E3CD0;
      v31 = v12;
    }

    else
    {
      (*(v15 + 32))(v18, v12, v13);
      v32 = sub_21E3E24C0();
      v33 = [v32 punchOutUri];

      if (v33)
      {
        sub_21E3E21F0();

        v34 = sub_21E3E2210();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v34);
        sub_21E3C413C(v9, &qword_27CEC2658, &qword_21E3E3CC8);
        v35 = sub_21E3E24C0();
        (*(v15 + 8))(v18, v13);
        *a1 = v35;
        v36 = *MEMORY[0x277D63AD0];
        v37 = sub_21E3E3310();
        OUTLINED_FUNCTION_1();
        (*(v38 + 104))(a1, v36, v37);
        v25 = OUTLINED_FUNCTION_3();
        return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      }

      (*(v15 + 8))(v18, v13);
      v39 = sub_21E3E2210();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v39);
      v29 = &qword_27CEC2658;
      v30 = &qword_21E3E3CC8;
      v31 = v9;
    }

    sub_21E3C413C(v31, v29, v30);
    sub_21E3E2AE0();
    v40 = sub_21E3E2AF0();
    v41 = sub_21E3E35C0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21E3BF000, v40, v41, "punchOutUri not found for attribution item", v42, 2u);
      MEMORY[0x223D58FC0](v42, -1, -1);
    }

    (*(v45 + 8))(v6, v2);
    v28 = sub_21E3E3310();
    v25 = a1;
    v26 = 1;
    v27 = 1;
  }

  else
  {
    v21 = sub_21E3C3938(v20);

    *a1 = v21;
    v22 = *MEMORY[0x277D63AD8];
    v23 = sub_21E3E3310();
    OUTLINED_FUNCTION_1();
    (*(v24 + 104))(a1, v22, v23);
    v25 = OUTLINED_FUNCTION_3();
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
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

uint64_t sub_21E3C3938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2668, &qword_21E3E3CD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_21E3E33E0();
  OUTLINED_FUNCTION_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v10;
  v35 = v11;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = (v11 + 32);
  v36 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v15 = *(sub_21E3E2520() - 8);
    sub_21E3C3CCC(a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_21E3C413C(v4, &qword_27CEC2668, &qword_21E3E3CD8);
      ++v12;
    }

    else
    {
      v16 = *v14;
      v17 = v9;
      v18 = v14;
      v19 = v34;
      v16(v34, v4, v5);
      v20 = v19;
      v14 = v18;
      v32 = v16;
      v16(v17, v20, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_21E3C41C4(0, *(v36 + 16) + 1, 1, v36, sub_21E3C91BC, MEMORY[0x277D63CE8], MEMORY[0x277D63CE8]);
      }

      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v31 = v23 + 1;
        v28 = sub_21E3C41C4(v22 > 1, v23 + 1, 1, v36, sub_21E3C91BC, MEMORY[0x277D63CE8], MEMORY[0x277D63CE8]);
        v24 = v31;
        v36 = v28;
      }

      ++v12;
      v25 = v35;
      v26 = v36;
      *(v36 + 16) = v24;
      v27 = v26 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23;
      v9 = v33;
      v32(v27, v33, v5);
    }
  }

  return v36;
}

uint64_t sub_21E3C3CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21E3E2520();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E3E2B00();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E3E3310();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_21E3E24C0();
  v16 = [v15 punchOutUri];

  if (v16)
  {
    sub_21E3E21F0();

    v17 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
    sub_21E3C413C(v14, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E2500();
    *v11 = sub_21E3E24C0();
    (*(v9 + 104))(v11, *MEMORY[0x277D63AD0], v8);
    v18 = v36;
    sub_21E3E33D0();
    v19 = 0;
  }

  else
  {
    v20 = v32;
    v21 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
    sub_21E3C413C(v14, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E2AE0();
    (*(v33 + 16))(v5, a1, v34);
    v22 = sub_21E3E2AF0();
    v23 = sub_21E3E35C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v26 = sub_21E3E24E0();
      v28 = v27;
      (*(v33 + 8))(v5, v34);
      v29 = sub_21E3C9300(v26, v28, &v37);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_21E3BF000, v22, v23, "punchOutUri not found for attribution item %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D58FC0](v25, -1, -1);
      MEMORY[0x223D58FC0](v24, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v5, v34);
    }

    (*(v20 + 8))(v35, v6);
    v19 = 1;
    v18 = v36;
  }

  v30 = sub_21E3E33E0();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v30);
}

uint64_t sub_21E3C413C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C41C4(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if ((v12 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  v14 = a5(v13, v12);
  v15 = *(a6(0) - 8);
  if (v10)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21E3C42CC(a4 + v16, v13, v14 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_21E3C42CC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21E3C43E8(uint64_t a1, int a2)
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

uint64_t sub_21E3C4408(uint64_t result, int a2, int a3)
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

void sub_21E3C4444(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for TipSnippet(uint64_t a1)
{
  result = qword_281223680;
  if (!qword_281223680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C4550(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3E25D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E3C45D4(uint64_t a1)
{
  if (!qword_2812230F8)
  {
    sub_21E3E3480();
    sub_21E3C4D58(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_21E3E2CD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812230F8);
    }
  }
}

uint64_t sub_21E3C4684@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TipSnippet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(MEMORY[0x28223BE20](v3 - 8) + 28);
  v7 = *(type metadata accessor for TipSnippetContentView(0) + 20);
  v8 = sub_21E3E25D0();
  (*(*(v8 - 8) + 16))(&a1[v7], v1 + v6, v8);
  v17[1] = sub_21E3E2E30();
  sub_21E3E32A0();
  *a1 = v18;
  *&v18 = sub_21E3E3230();
  BYTE8(v18) = 0;
  sub_21E3C4A48(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_21E3C4AAC(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2678, &qword_21E3E3D70) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2680, &qword_21E3E3D78);
  sub_21E3C4B70();
  sub_21E3E31C0();

  v12 = sub_21E3E3300();
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2698, &qword_21E3E3D88);
  v16 = &v11[*(result + 36)];
  *v16 = v12;
  v16[1] = v14;
  return result;
}

uint64_t sub_21E3C4894(id *a1)
{
  v2 = sub_21E3E2210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TipSnippet(0);
  v6 = sub_21E3E25B0();
  type metadata accessor for ActionHandler(0);
  v7 = swift_allocObject();
  sub_21E3E2AE0();
  *(v7 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v6;
  sub_21E3E2540();
  if (*a1)
  {
    v8 = *a1;
    sub_21E3DC6A4(v5);

    swift_setDeallocating();
    sub_21E3DD768();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_21E3E3480();
    sub_21E3C4D58(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3C4A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C4AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C4B10()
{
  v1 = *(type metadata accessor for TipSnippet(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_21E3C4894(v2);
}

unint64_t sub_21E3C4B70()
{
  result = qword_27CEC2688;
  if (!qword_27CEC2688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2680, &qword_21E3E3D78);
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2688);
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

unint64_t sub_21E3C4C70()
{
  result = qword_27CEC26A0;
  if (!qword_27CEC26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2678, &qword_21E3E3D70);
    sub_21E3C4D58(&qword_27CEC26A8, type metadata accessor for TipSnippetContentView, &unk_21E3E4038);
    sub_21E3C4DA0(&qword_27CEC26B0, &qword_27CEC2698, &qword_21E3E3D88, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC26A0);
  }

  return result;
}

uint64_t sub_21E3C4D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3C4DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for ListStyleAnswerSnippet(uint64_t a1)
{
  result = qword_281223380;
  if (!qword_281223380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C4E5C(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3C4EF8(319);
    if (v2 <= 0x3F)
    {
      sub_21E3E2850();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E3C4EF8(uint64_t a1)
{
  if (!qword_281223120)
  {
    type metadata accessor for VRXIdiom(255);
    v1 = sub_21E3E2BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_281223120);
    }
  }
}

uint64_t sub_21E3C4F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v70 = sub_21E3E27C0();
  OUTLINED_FUNCTION_0();
  v68 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v59 - v7;
  v69 = sub_21E3E2750();
  OUTLINED_FUNCTION_0();
  v67 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v65 = v11 - v10;
  v64 = sub_21E3E2850();
  OUTLINED_FUNCTION_0();
  v62 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v61 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  v19 = type metadata accessor for ListStyleAnswerSnippet(0);
  v20 = v19 - 8;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26C0, &qword_21E3E3E00);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26C8, &qword_21E3E3E08);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  sub_21E3C7AAC(v2, &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v32 = swift_allocObject();
  sub_21E3C7B1C(&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26D0, &qword_21E3E3E10);
  sub_21E3C4DA0(&qword_2812230A0, &qword_27CEC26D0, &qword_21E3E3E10, MEMORY[0x277CE14C0]);
  sub_21E3E3390();
  v33 = *(v20 + 32);
  sub_21E3E2790();
  v34 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) == 1)
  {
    sub_21E3C413C(v18, &qword_27CEC26B8, &qword_21E3E3DF8);
    v35 = 0;
  }

  else
  {
    v35 = sub_21E3DBB5C();
    (*(*(v34 - 8) + 8))(v18, v34);
  }

  v36 = sub_21E3E2820();
  sub_21E3E3480();
  sub_21E3C80F4(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v37 = sub_21E3E2CC0();
  v39 = v38;
  v40 = *(v24 + 32);
  v59 = v30;
  v40(v30, v27, v60);
  v41 = &v30[*(v72 + 36)];
  *v41 = v37;
  v41[1] = v39;
  v41[2] = v35;
  v41[3] = v36;
  v42 = v61;
  v43 = v62;
  v44 = v64;
  (*(v62 + 16))(v61, v2 + v33, v64);
  v45 = v63;
  sub_21E3E27A0();
  v46 = v68;
  v47 = v66;
  v48 = v70;
  (*(v68 + 104))(v66, *MEMORY[0x277D04800], v70);
  LOBYTE(v36) = sub_21E3E27B0();
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v45, v48);
  v50 = v67;
  v51 = MEMORY[0x277D047F8];
  if ((v36 & 1) == 0)
  {
    v51 = MEMORY[0x277D047F0];
  }

  v52 = v65;
  v53 = v69;
  (*(v67 + 104))(v65, *v51, v69);
  v54 = sub_21E3E2670();
  v56 = v55;
  (*(v50 + 8))(v52, v53);
  (*(v43 + 8))(v42, v44);
  v73 = v54;
  v74 = v56;
  sub_21E3C7BF0();
  v57 = v59;
  sub_21E3E3160();

  return sub_21E3C413C(v57, &qword_27CEC26C8, &qword_21E3E3E08);
}

uint64_t sub_21E3C55F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v201 = a2;
  v185 = sub_21E3E2E60();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_21E3E2EE0();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListStyleAnswerSnippet(0);
  v6 = v5 - 8;
  v165 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v166 = v7;
  v167 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for AttributionView(0);
  MEMORY[0x28223BE20](v170);
  v168 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26D8, &qword_21E3E3E18);
  v171 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v169 = &v154 - v9;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26E0, &qword_21E3E3E20);
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v172 = &v154 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26E8, &qword_21E3E3E28);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v176 = &v154 - v11;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F0, &qword_21E3E3E30);
  MEMORY[0x28223BE20](v199);
  v173 = &v154 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = &v154 - v14;
  v196 = sub_21E3E2660();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F8, &qword_21E3E3E38);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v200 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v211 = &v154 - v19;
  v162 = sub_21E3E3400();
  v159 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2700, &unk_21E3E3E40);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v154 - v21;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2708, &qword_21E3E4870);
  v160 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v158 = &v154 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2710, &qword_21E3E3E50);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v198 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v213 = &v154 - v26;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2718, &qword_21E3E3E58);
  v197 = *(v210 - 8);
  v27 = MEMORY[0x28223BE20](v210);
  v209 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v212 = &v154 - v29;
  v206 = sub_21E3E22B0();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21E3E33C0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v187 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2720, &qword_21E3E3E60);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v189 = &v154 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2728, &qword_21E3E3E68);
  v207 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v186 = &v154 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2730, &qword_21E3E3E70);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v193 = &v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v208 = &v154 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v214 = &v154 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v154 - v46;
  v48 = *(v6 + 32);
  v215 = a1;
  v49 = sub_21E3E2830();
  v50 = MEMORY[0x277D638E8];
  v202 = v48;
  v191 = v34;
  v190 = v35;
  v156 = v31;
  v188 = v32;
  if (v49)
  {
    v51 = sub_21E3E27F0();
    v52 = sub_21E3D5698(v51);
    v54 = v53;
    v56 = v55;
    v155 = v37;
    v58 = v57;

    v227 = MEMORY[0x277CE0BD8];
    v228 = v50;
    v59 = swift_allocObject();
    v225 = v59;
    *(v59 + 16) = v52;
    *(v59 + 24) = v54;
    v60 = v206;
    v61 = v56 & 1;
    v62 = MEMORY[0x277D62F38];
    *(v59 + 32) = v61;
    *(v59 + 40) = v58;
    v63 = v187;
    v64 = v205;
    v65 = v204;
    sub_21E3E33B0();
    v66 = sub_21E3C80F4(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
    v67 = v189;
    sub_21E3E3140();
    (*(v188 + 8))(v63, v31);
    (*(v64 + 104))(v65, *v62, v60);
    v225 = v31;
    v226 = v66;
    swift_getOpaqueTypeConformance2();
    v68 = v186;
    v69 = v191;
    sub_21E3E3120();
    (*(v64 + 8))(v65, v60);
    (*(v190 + 8))(v67, v69);
    v70 = v207;
    v71 = v155;
    (*(v207 + 4))(v47, v68, v155);
    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v37;
    v70 = v207;
  }

  v73 = 1;
  v207 = v47;
  __swift_storeEnumTagSinglePayload(v47, v72, 1, v71);
  sub_21E3C6EF0();
  if (sub_21E3E2840())
  {
    v74 = sub_21E3E2800();
    v75 = sub_21E3D5698(v74);
    v77 = v76;
    v79 = v78;
    v80 = v187;
    v82 = v81;

    v227 = MEMORY[0x277CE0BD8];
    v228 = MEMORY[0x277D638E8];
    v83 = swift_allocObject();
    v225 = v83;
    *(v83 + 16) = v75;
    *(v83 + 24) = v77;
    v84 = v206;
    *(v83 + 32) = v79 & 1;
    *(v83 + 40) = v82;
    v85 = v205;
    sub_21E3E33B0();
    v86 = sub_21E3C80F4(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
    v87 = v189;
    v88 = v156;
    sub_21E3E3140();
    (*(v188 + 8))(v80, v88);
    v89 = v204;
    (*(v85 + 104))(v204, *MEMORY[0x277D62F38], v84);
    v225 = v88;
    v226 = v86;
    swift_getOpaqueTypeConformance2();
    v90 = v186;
    v91 = v191;
    sub_21E3E3120();
    (*(v85 + 8))(v89, v84);
    (*(v190 + 8))(v87, v91);
    (*(v70 + 32))(v214, v90, v71);
    v73 = 0;
  }

  v92 = 1;
  __swift_storeEnumTagSinglePayload(v214, v73, 1, v71);
  if (sub_21E3E27E0())
  {
    v93 = sub_21E3E27D0();
    v94 = sub_21E3D5698(v93);
    v96 = v95;
    v98 = v97;
    v100 = v99;

    v227 = MEMORY[0x277CE0BD8];
    v228 = MEMORY[0x277D638E8];
    v101 = swift_allocObject();
    v225 = v101;
    *(v101 + 16) = v94;
    *(v101 + 24) = v96;
    *(v101 + 32) = v98 & 1;
    *(v101 + 40) = v100;
    v102 = MEMORY[0x277D62F38];
    v224 = 0;
    v222 = 0u;
    v223 = 0u;
    v221 = 0;
    v219 = 0u;
    v220 = 0u;
    v218 = 0;
    v217 = 0u;
    v216 = 0u;
    v103 = v157;
    sub_21E3E33F0();
    v104 = sub_21E3C80F4(&qword_281223088, MEMORY[0x277D63DD0], MEMORY[0x277D63DC8]);
    v105 = v161;
    v106 = v162;
    sub_21E3E3140();
    (*(v159 + 8))(v103, v106);
    v107 = *v102;
    v108 = v205;
    v109 = v204;
    v110 = v206;
    (*(v205 + 104))(v204, v107, v206);
    v225 = v106;
    v226 = v104;
    swift_getOpaqueTypeConformance2();
    v111 = v158;
    v112 = v164;
    sub_21E3E3120();
    (*(v108 + 8))(v109, v110);
    (*(v163 + 8))(v105, v112);
    (*(v160 + 32))(v213, v111, v203);
    v92 = 0;
  }

  __swift_storeEnumTagSinglePayload(v213, v92, 1, v203);
  v113 = v192;
  sub_21E3E2790();
  v114 = v196;
  if (__swift_getEnumTagSinglePayload(v113, 1, v196) == 1)
  {
    sub_21E3C413C(v113, &qword_27CEC26B8, &qword_21E3E3DF8);
    v115 = 1;
    v116 = v211;
  }

  else
  {
    v117 = v204;
    v118 = v206;
    v119 = v205;
    (*(v195 + 32))(v194, v113, v114);
    v120 = v168;
    sub_21E3E2650();
    v121 = v167;
    sub_21E3C7AAC(v215, v167);
    v122 = (*(v165 + 80) + 16) & ~*(v165 + 80);
    v123 = swift_allocObject();
    sub_21E3C7B1C(v121, v123 + v122);
    v124 = v170;
    v125 = (v120 + *(v170 + 20));
    *v125 = 0u;
    v125[1] = 0u;
    v126 = (v120 + *(v124 + 24));
    *v126 = sub_21E3C7E48;
    v126[1] = v123;
    v127 = sub_21E3C80F4(qword_281223558, type metadata accessor for AttributionView, &unk_21E3E51B8);
    v128 = v169;
    sub_21E3E3140();
    sub_21E3C7EC8(v120);
    (*(v119 + 104))(v117, *MEMORY[0x277D62F38], v118);
    v225 = v124;
    v226 = v127;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v130 = v172;
    v131 = v174;
    sub_21E3E3120();
    (*(v119 + 8))(v117, v118);
    (*(v171 + 8))(v128, v131);
    v132 = v180;
    sub_21E3E2ED0();
    v225 = v131;
    v226 = OpaqueTypeConformance2;
    v133 = swift_getOpaqueTypeConformance2();
    v134 = v176;
    v135 = v177;
    sub_21E3E3200();
    (*(v181 + 8))(v132, v182);
    (*(v175 + 8))(v130, v135);
    v136 = v183;
    sub_21E3E2E50();
    v225 = v135;
    v226 = v133;
    swift_getOpaqueTypeConformance2();
    v137 = v173;
    v138 = v179;
    sub_21E3E3210();
    (*(v184 + 8))(v136, v185);
    (*(v178 + 8))(v134, v138);
    (*(v195 + 8))(v194, v114);
    v139 = v137;
    v116 = v211;
    sub_21E3C0F18(v139, v211);
    v115 = 0;
  }

  __swift_storeEnumTagSinglePayload(v116, v115, 1, v199);
  v140 = v208;
  sub_21E3C7CFC(v207, v208, &qword_27CEC2730, &qword_21E3E3E70);
  v141 = v197;
  v142 = *(v197 + 16);
  v143 = v209;
  v142(v209, v212, v210);
  v144 = v193;
  sub_21E3C7CFC(v214, v193, &qword_27CEC2730, &qword_21E3E3E70);
  v145 = v198;
  sub_21E3C7CFC(v213, v198, &qword_27CEC2710, &qword_21E3E3E50);
  v146 = v116;
  v147 = v200;
  sub_21E3C7CFC(v146, v200, &qword_27CEC26F8, &qword_21E3E3E38);
  v148 = v140;
  v149 = v201;
  sub_21E3C7CFC(v148, v201, &qword_27CEC2730, &qword_21E3E3E70);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2738, &qword_21E3E3E78);
  v151 = v210;
  v142((v149 + v150[12]), v143, v210);
  sub_21E3C7CFC(v144, v149 + v150[16], &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C7CFC(v145, v149 + v150[20], &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C7CFC(v147, v149 + v150[24], &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v211, &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v213, &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C413C(v214, &qword_27CEC2730, &qword_21E3E3E70);
  v152 = *(v141 + 8);
  v152(v212, v151);
  sub_21E3C413C(v207, &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C413C(v147, &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v145, &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C413C(v144, &qword_27CEC2730, &qword_21E3E3E70);
  v152(v209, v151);
  return sub_21E3C413C(v208, &qword_27CEC2730, &qword_21E3E3E70);
}

uint64_t sub_21E3C6EF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2750, &qword_21E3E3E98);
  MEMORY[0x28223BE20](v0);
  v2 = (v11 - v1);
  type metadata accessor for ListStyleAnswerSnippet(0);
  v3 = sub_21E3E2810();
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ItemListView(0);
  v5 = v2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = (v2 + v4[6]);
  v11[1] = 0;
  sub_21E3E32A0();
  v7 = v11[3];
  *v6 = v11[2];
  v6[1] = v7;
  *(v2 + v4[7]) = v3;
  LOBYTE(v3) = sub_21E3C795C();
  KeyPath = swift_getKeyPath();
  v9 = v2 + *(v0 + 36);
  *v9 = KeyPath;
  v9[8] = v3 & 1;
  sub_21E3C800C();
  sub_21E3E3140();
  return sub_21E3C413C(v2, &qword_27CEC2750, &qword_21E3E3E98);
}

uint64_t sub_21E3C70A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a2;
  v77 = a1;
  v4 = sub_21E3E2B00();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v10 = sub_21E3E33A0();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E3E22C0();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_21E3E2520();
  v78 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v62 - v24;
  v68 = *(type metadata accessor for ListStyleAnswerSnippet(0) + 24);
  sub_21E3E2790();
  v25 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v16, 1, v25) != 1)
  {
    v63 = v9;
    v64 = v19;
    v65 = a3;
    v66 = v6;
    v67 = v4;
    v28 = sub_21E3E2640();
    (*(*(v25 - 8) + 8))(v16, v25);
    v29 = *(v28 + 16);
    v30 = v78;
    if (v29)
    {
      v31 = 0;
      v32 = v28 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v33 = (v78 + 8);
      while (1)
      {
        v26 = v79;
        if (v31 >= *(v28 + 16))
        {
          break;
        }

        (*(v30 + 16))(v23, v32 + *(v30 + 72) * v31, v20);
        v34 = sub_21E3E24C0();
        v35 = sub_21E3D5628(v34);
        if (v26)
        {
          if (v36)
          {
            v26 = v79;
            if (v35 == v77 && v36 == v79)
            {

              goto LABEL_19;
            }

            v38 = sub_21E3E3690();

            if (v38)
            {
              v26 = v79;
LABEL_19:

              v30 = v78;
              v19 = v64;
              (*(v78 + 32))(v64, v23, v20);
              v39 = 0;
              v6 = v66;
              v4 = v67;
              v27 = v76;
              v40 = v65;
              goto LABEL_20;
            }
          }
        }

        else
        {
          if (!v36)
          {
            goto LABEL_19;
          }
        }

        ++v31;
        (*v33)(v23, v20);
        v30 = v78;
        if (v29 == v31)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      v39 = 1;
      v6 = v66;
      v4 = v67;
      v27 = v76;
      v19 = v64;
      v40 = v65;
      v26 = v79;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v19, v39, 1, v20);
      if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
      {
        goto LABEL_21;
      }

      v50 = v69;
      (*(v30 + 32))(v69, v19, v20);
      sub_21E3E2600();
      v51 = v30;
      sub_21E3E25F0();
      v52 = sub_21E3E24C0();
      sub_21E3E2820();
      sub_21E3D079C(v52);

      v53 = sub_21E3E24C0();
      v54 = v71;
      v55 = v72;
      *v72 = v53;
      *(v55 + 8) = 1;
      (*(v70 + 104))(v55, *MEMORY[0x277D63720], v54);
      (*(v73 + 104))(v75, *MEMORY[0x277D63BF8], v74);
      v56 = v63;
      sub_21E3E3360();
      v57 = sub_21E3E3370();
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
      v58 = objc_allocWithZone(sub_21E3E3420());
      v59 = sub_21E3E3410();
      if (*v40)
      {
        v60 = v59;
        v61 = *v40;
        sub_21E3E3460();

        return (*(v51 + 8))(v50, v20);
      }
    }

    sub_21E3E3480();
    sub_21E3C80F4(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  sub_21E3C413C(v16, &qword_27CEC26B8, &qword_21E3E3DF8);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v26 = v79;
  v27 = v76;
LABEL_21:
  sub_21E3C413C(v19, &qword_27CEC2660, &qword_21E3E3CD0);
  sub_21E3E2AE0();
  sub_21E3E2430();
  v41 = sub_21E3E2AF0();
  v42 = sub_21E3E35C0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v26;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v81 = v43;
    v82 = v45;
    *v44 = 136315138;
    v80 = v77;
    sub_21E3E2430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
    v46 = sub_21E3E34E0();
    v48 = sub_21E3C9300(v46, v47, &v82);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_21E3BF000, v41, v42, "No attribution item found for %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D58FC0](v45, -1, -1);
    MEMORY[0x223D58FC0](v44, -1, -1);
  }

  return (*(v27 + 8))(v6, v4);
}

BOOL sub_21E3C795C()
{
  v0 = sub_21E3E27C0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  type metadata accessor for ListStyleAnswerSnippet(0);
  sub_21E3E27A0();
  (*(v1 + 104))(v4, *MEMORY[0x277D04800], v0);
  v7 = sub_21E3E27B0();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_21E3C7AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C7B10(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21E3C7B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C7B80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListStyleAnswerSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E3C55F0(v4, a1);
}

unint64_t sub_21E3C7BF0()
{
  result = qword_281223110;
  if (!qword_281223110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC26C8, &qword_21E3E3E08);
    v3 = sub_21E3C4DA0(&qword_281223098, &qword_27CEC26C0, &qword_21E3E3E00, MEMORY[0x277D63B90]);
    sub_21E3C7CA8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223110);
  }

  return result;
}

unint64_t sub_21E3C7CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_281223428[0];
  if (!qword_281223428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281223428);
  }

  return result;
}

uint64_t sub_21E3C7CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ListStyleAnswerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_21E3C7B10(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v1[8];
  sub_21E3E2850();
  OUTLINED_FUNCTION_1();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C7E48(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ListStyleAnswerSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3C70A0(a1, a2, v6);
}

uint64_t sub_21E3C7EC8(uint64_t a1)
{
  v2 = type metadata accessor for AttributionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E3C7F24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21E3C7F58(uint64_t a1)
{
  sub_21E3E2C80();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_21E3E2D50();
}

unint64_t sub_21E3C800C()
{
  result = qword_281223118;
  if (!qword_281223118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2750, &qword_21E3E3E98);
    sub_21E3C80F4(qword_2812235F8, type metadata accessor for ItemListView, &unk_21E3E4DE8);
    sub_21E3C4DA0(&qword_2812230C8, &qword_27CEC2760, &unk_21E3E3F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223118);
  }

  return result;
}

uint64_t sub_21E3C80F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SupplementarySnippet(uint64_t a1)
{
  result = qword_281223418;
  if (!qword_281223418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C81C0(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3E2740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3C8260()
{
  v1 = type metadata accessor for SupplementarySnippet(0);
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21E3C9084(v0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21E3C90E8(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2768, &qword_21E3E3F78);
  sub_21E3C4DA0(&qword_27CEC2770, &qword_27CEC2768, &qword_21E3E3F78, MEMORY[0x277CE14C0]);
  return sub_21E3E3390();
}

void sub_21E3C83A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SupplementarySnippet(0);
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = v5;
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2778, &qword_21E3E3F80);
  MEMORY[0x28223BE20](v84);
  v81 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2780, &qword_21E3E3F88);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2788, &qword_21E3E3F90);
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2790, &qword_21E3E3F98);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v91 = sub_21E3E26D0();
  v93 = *(v91 - 8);
  v14 = MEMORY[0x28223BE20](v91);
  v75 = v15;
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v92 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = a1;
  v23 = sub_21E3E2720();
  v24 = sub_21E3C8BCC(1uLL, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v88 = v9;
  v89 = a2;
  if ((v29 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_21E3E36A0();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x277D84F90];
  }

  v36 = *(v35 + 16);

  if (__OFSUB__(v30 >> 1, v28))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v36 != (v30 >> 1) - v28)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v9 = v88;
    a2 = v89;
LABEL_2:
    sub_21E3C9870(v24, v26, v28, v30);
    v32 = v31;
    v33 = v22;
    v34 = v91;
    goto LABEL_9;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v9 = v88;
  a2 = v89;
  v33 = v22;
  v34 = v91;
  if (v32)
  {
    goto LABEL_10;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v37 = sub_21E3E2730();
  sub_21E3E3480();
  sub_21E3C9BAC(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v91 = sub_21E3E2CC0();
  v87 = v38;
  sub_21E3E2710();
  if (__swift_getEnumTagSinglePayload(v13, 1, v34) == 1)
  {
    sub_21E3C9BF4(v13, &qword_27CEC2790, &qword_21E3E3F98);
    v39 = 1;
  }

  else
  {
    v40 = v93;
    v72 = *(v93 + 32);
    v41 = v90;
    v72(v90, v13, v34);
    v73 = v37;
    v42 = *(v40 + 16);
    v43 = v34;
    v74 = v32;
    v44 = v81;
    v42(v81, v41, v34);
    v45 = sub_21E3E2F10();
    v46 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27A8, &unk_21E3E3FB0) + 36)];
    *v46 = v45;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    v46[40] = 1;
    v47 = v33;
    v48 = v84;
    v44[*(v84 + 36)] = 0;
    v49 = v76;
    v50 = v41;
    v51 = v43;
    v42(v76, v50, v43);
    v9 = v88;
    v52 = v79;
    sub_21E3C9084(v47, v79);
    v53 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v54 = v77[80];
    v77 = v21;
    v55 = (v75 + v54 + v53) & ~v54;
    v56 = swift_allocObject();
    v57 = v49;
    v58 = v51;
    v72((v56 + v53), v57, v51);
    v59 = v52;
    v37 = v73;
    sub_21E3C90E8(v59, v56 + v55);
    v60 = sub_21E3C9A38();
    v61 = v82;
    sub_21E3E31C0();

    v62 = v44;
    v32 = v74;
    sub_21E3C9BF4(v62, &qword_27CEC2778, &qword_21E3E3F80);
    v94 = v48;
    v95 = v60;
    a2 = v89;
    swift_getOpaqueTypeConformance2();
    v63 = v80;
    v64 = v86;
    sub_21E3E3140();
    v65 = v61;
    v21 = v77;
    (*(v85 + 8))(v65, v64);
    (*(v93 + 8))(v90, v58);
    (*(v83 + 32))(v21, v63, v9);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v39, 1, v9);
  v66 = v92;
  sub_21E3C12A8(v21, v92);
  v67 = v91;
  v68 = v87;
  *a2 = v91;
  a2[1] = v68;
  a2[2] = v32;
  a2[3] = v37;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27A0, &qword_21E3E3FA8);
  sub_21E3C12A8(v66, a2 + *(v69 + 48));
  v70 = v67;
  sub_21E3E2430();

  sub_21E3C1318(v21);
  sub_21E3C1318(v66);
}

unint64_t sub_21E3C8BCC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_21E3C9D50(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_21E3C9CA8(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E3C8C60(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_21E3E2210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E3E26D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E3E2B00();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3E2AE0();
  v13 = *(v7 + 16);
  v35 = a1;
  v13(v9, a1, v6);
  v14 = sub_21E3E2AF0();
  v15 = sub_21E3E35B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v3;
    v18 = v17;
    v38 = v17;
    *v16 = 136315138;
    v19 = sub_21E3E26A0();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v31 = v4;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    (*(v7 + 8))(v9, v6);
    v23 = sub_21E3C9300(v21, v22, &v38);
    v4 = v31;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_21E3BF000, v14, v15, "Tip Collection (%s) tapped", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v3 = v32;
    MEMORY[0x223D58FC0](v24, -1, -1);
    MEMORY[0x223D58FC0](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v33 + 8))(v12, v34);
  type metadata accessor for SupplementarySnippet(0);
  v25 = v36;
  v26 = sub_21E3E2730();
  type metadata accessor for ActionHandler(0);
  v27 = swift_allocObject();
  sub_21E3E2AE0();
  *(v27 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v26;
  v28 = v37;
  sub_21E3E2680();
  if (*v25)
  {
    v29 = *v25;
    sub_21E3DC6A4(v28);

    swift_setDeallocating();
    sub_21E3DD768();
    return (*(v4 + 8))(v28, v3);
  }

  else
  {
    sub_21E3E3480();
    sub_21E3C9BAC(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3C9084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C90E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E3C914C(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SupplementarySnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21E3C83A8(v4, a1);
}

void *sub_21E3C920C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21E3C9300(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_21E3E2430();
  v6 = sub_21E3C93C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21E3C9C48(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21E3C93C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E3C94C4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21E3E3640();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21E3C94C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E3C9510(a1, a2);
  sub_21E3C9628(&unk_282F7D568);
  return v3;
}

uint64_t sub_21E3C9510(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21E3E3510())
  {
    result = sub_21E3C970C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21E3E3620();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21E3E3640();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21E3C9628(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21E3C977C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21E3C970C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27C8, &qword_21E3E3FC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21E3C977C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27C8, &qword_21E3E3FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_21E3C9870(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_21E3C920C(v5, 0, &qword_27CEC27D0, &qword_21E3E3FC8, MEMORY[0x277D04878]);
    if (v4 != a3)
    {
      sub_21E3E29A0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_21E3C9974()
{
  v1 = sub_21E3E26D0();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for SupplementarySnippet(0) - 8);
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21E3C8C60(v0 + v3, v7);
}

unint64_t sub_21E3C9A38()
{
  result = qword_27CEC27B0;
  if (!qword_27CEC27B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2778, &qword_21E3E3F80);
    sub_21E3C9AF0();
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC27B0);
  }

  return result;
}

unint64_t sub_21E3C9AF0()
{
  result = qword_27CEC27B8;
  if (!qword_27CEC27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC27A8, &unk_21E3E3FB0);
    sub_21E3C9BAC(&qword_27CEC27C0, type metadata accessor for TipCollectionBannerView, &unk_21E3E52A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC27B8);
  }

  return result;
}

uint64_t sub_21E3C9BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3C9BF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C9C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21E3C9CA8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_21E3E29A0();
    return sub_21E3E2430();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21E3C9D50(uint64_t result, uint64_t a2, uint64_t a3)
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

void sub_21E3C9E08(uint64_t a1)
{
  sub_21E3CE188(319, &qword_27CEC2838, MEMORY[0x277CE00B0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_21E3E25D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3C9F04(char a1)
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](a1 & 1);
  return sub_21E3E3730();
}

uint64_t sub_21E3C9F68(uint64_t a1)
{
  v2 = *v1;
  sub_21E3E3710();
  MEMORY[0x223D58B30](v2);
  return sub_21E3E3730();
}

uint64_t sub_21E3C9FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2840, &qword_21E3E4088);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x28223BE20](v4);
  v6 = v42 - v5;
  v7 = type metadata accessor for TipSnippetContentView(0) - 8;
  MEMORY[0x28223BE20](v7);
  v44 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2848, &qword_21E3E4090);
  sub_21E3E32B0();
  *a1 = *v43;
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2850, &qword_21E3E4098);
  sub_21E3CA3D0(a1 + *(v8 + 44));
  sub_21E3CE850();
  v9 = swift_allocObject();
  sub_21E3CE8B4();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21E3CAB88;
  *(v10 + 24) = v9;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2858, &qword_21E3E40A0) + 36));
  *v11 = sub_21E3CABE8;
  v11[1] = v10;
  LOBYTE(v10) = sub_21E3E2F00();
  sub_21E3E2B70();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2860, &qword_21E3E40A8) + 36);
  *v20 = v10;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  type metadata accessor for CGSize(0);
  v42[1] = v21;
  *v43 = 0;
  *&v43[8] = 0;
  sub_21E3E32A0();
  v22 = v44;
  v23 = v45;
  v24 = sub_21E3E3250();
  KeyPath = swift_getKeyPath();
  sub_21E3E2FA0();
  v26 = sub_21E3E2F70();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
  v27 = sub_21E3E2FB0();
  sub_21E3C9BF4(v6, &qword_27CEC2840, &qword_21E3E4088);
  v28 = swift_getKeyPath();
  v29 = sub_21E3E32F0();
  v31 = v30;
  *v43 = v22;
  OUTLINED_FUNCTION_6();
  *&v43[16] = v23;
  *&v43[24] = v32;
  *&v43[32] = 0xE90000000000006CLL;
  *&v43[40] = KeyPath;
  *&v43[48] = v24;
  *&v43[56] = v28;
  *&v43[64] = v27;
  *&v43[72] = v33;
  *&v43[80] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2868, &unk_21E3E4110);
  memcpy((a1 + *(v35 + 36)), v43, 0x58uLL);
  v44 = v22;
  OUTLINED_FUNCTION_6();
  v45 = v23;
  v46 = v36;
  v47 = 0xE90000000000006CLL;
  v48 = KeyPath;
  v49 = v24;
  v50 = v28;
  v51 = v27;
  v52 = v29;
  v53 = v31;
  sub_21E3CF558();
  sub_21E3C9BF4(&v44, &qword_27CEC2870, &qword_21E3E5380);
  v42[2] = 0;
  v42[3] = 0;
  sub_21E3E32A0();
  v37 = v42[4];
  v38 = v42[5];
  v39 = v42[6];
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2878, &qword_21E3E4120) + 36));
  *v40 = v37;
  v40[1] = v38;
  v40[2] = v39;
  LOBYTE(v39) = sub_21E3E2F00();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2880, &qword_21E3E4128);
  *(a1 + *(result + 36)) = v39;
  return result;
}

uint64_t sub_21E3CA3D0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2888, &qword_21E3E4130);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2890, &qword_21E3E4138);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v43 - v12);
  type metadata accessor for TipSnippetContentView(0);
  type metadata accessor for TipSnippetContentView.ImageView(0);
  sub_21E3E2590();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  swift_storeEnumTagMultiPayload();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_21E3E3300();
  v16 = (v13 + *(v8 + 44));
  *v16 = sub_21E3CDBF4;
  v16[1] = v14;
  v16[2] = v15;
  v16[3] = v17;
  v18 = sub_21E3E25A0();
  v45 = v19;
  v46 = v18;
  v44 = sub_21E3E2530();
  v20 = sub_21E3E25C0();
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = type metadata accessor for TipSnippetContentView.BodyView(0);
  *&v6[v25[6]] = v24;
  swift_storeEnumTagMultiPayload();
  *&v6[v25[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  swift_storeEnumTagMultiPayload();
  *&v6[v25[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  v26 = swift_storeEnumTagMultiPayload();
  *&v51 = 0x4010000000000000;
  sub_21E3CDC54(v26, v27, v28);
  sub_21E3E2BC0();
  v29 = &v6[v25[5]];
  *v29 = KeyPath;
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = v25[9];
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  sub_21E3E32A0();
  *&v6[v30] = v51;
  v31 = v25[10];
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  sub_21E3E32A0();
  *&v6[v31] = v51;
  v32 = &v6[v25[11]];
  type metadata accessor for CGSize(0);
  v49 = 0;
  v50 = 0;
  sub_21E3E32A0();
  v33 = v52;
  *v32 = v51;
  *(v32 + 2) = v33;
  v34 = &v6[v25[12]];
  v35 = v45;
  *v34 = v46;
  *(v34 + 1) = v35;
  *&v6[v25[13]] = v44;
  v36 = &v6[v25[14]];
  *v36 = v20;
  v36[1] = v22;
  sub_21E3E3050();
  v37 = swift_allocObject();
  *(v37 + 16) = 1;
  v38 = sub_21E3E3300();
  v39 = &v6[*(v2 + 44)];
  *v39 = sub_21E3CF7B0;
  v39[1] = v37;
  v39[2] = v38;
  v39[3] = v40;
  sub_21E3CF558();
  v41 = v47;
  sub_21E3CF558();
  sub_21E3CF558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28B0, &qword_21E3E4210);
  sub_21E3CF558();
  sub_21E3C9BF4(v6, &qword_27CEC2888, &qword_21E3E4130);
  sub_21E3C9BF4(v13, &qword_27CEC2890, &qword_21E3E4138);
  sub_21E3C9BF4(v41, &qword_27CEC2888, &qword_21E3E4130);
  return sub_21E3C9BF4(v11, &qword_27CEC2890, &qword_21E3E4138);
}

uint64_t sub_21E3CA87C(uint64_t a1)
{
  sub_21E3CA91C(0, a1);
  if (v3 & 1) != 0 || (v4 = v2, sub_21E3CA91C(1, a1), (v6) || v4 >= v5)
  {
    sub_21E3E2E30();
  }

  else
  {
    sub_21E3E2E20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2848, &qword_21E3E4090);
  return sub_21E3E32C0();
}

uint64_t sub_21E3CA91C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_21E3CDB04(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E3CA984@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21E3E2BA0();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_21E3E35D0();
    v11 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21E3CAB88(uint64_t a1)
{
  v2 = type metadata accessor for TipSnippetContentView(0);
  OUTLINED_FUNCTION_7(v2);
  return sub_21E3CA87C(a1);
}

uint64_t sub_21E3CAC14@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_21E3E22E0();
  MEMORY[0x28223BE20](v1 - 8);
  v58[1] = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21E3E3330();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA0, &qword_21E3E44E8);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = v58 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA8, &qword_21E3E44F0);
  MEMORY[0x28223BE20](v72);
  v67 = v58 - v5;
  v6 = sub_21E3E2BA0();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v58[0] = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = v58 - v15;
  v71 = sub_21E3E2210();
  v66 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v65 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v58 - v18;
  v20 = sub_21E3E2580();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TipSnippetContentView.ImageView(0);
  sub_21E3CF558();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v24 = &qword_27CEC2940;
    v25 = ",'";
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_21E3CA984(v11);
    v27 = v68;
    v26 = v69;
    (*(v68 + 104))(v9, *MEMORY[0x277CDF3D0], v69);
    v28 = sub_21E3E2B90();
    v29 = *(v27 + 8);
    v29(v9, v26);
    v29(v11, v26);
    v19 = v70;
    if (v28)
    {
      sub_21E3E2560();
    }

    else
    {
      sub_21E3E2550();
    }

    v30 = v71;
    if (__swift_getEnumTagSinglePayload(v19, 1, v71) != 1)
    {
      v69 = v21;
      v70 = v20;
      v71 = v23;
      v35 = v65;
      v34 = v66;
      (*(v66 + 32))(v65, v19, v30);
      v36 = v58[0];
      __swift_storeEnumTagSinglePayload(v58[0], 1, 1, v30);
      sub_21E3E22D0();
      sub_21E3C9BF4(v36, &qword_27CEC2658, &qword_21E3E3CC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AB0, &qword_21E3E44F8);
      sub_21E3CF48C();
      v37 = v59;
      sub_21E3E3340();
      v38 = sub_21E3CF510(&qword_27CEC2AC0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
      v39 = v61;
      v40 = v63;
      sub_21E3E3150();
      (*(v60 + 8))(v37, v40);
      sub_21E3CB5BC();
      sub_21E3CB5BC();
      *&v74 = v40;
      *(&v74 + 1) = v38;
      swift_getOpaqueTypeConformance2();
      v41 = v67;
      v42 = v64;
      sub_21E3E3100();
      (*(v62 + 8))(v39, v42);
      v43 = [objc_opt_self() tertiarySystemFillColor];
      v44 = sub_21E3E3280();
      LOBYTE(v38) = sub_21E3E2F00();
      v45 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AC8, &qword_21E3E4500) + 36)];
      *v45 = v44;
      v45[8] = v38;
      v46 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AD0, &qword_21E3E4508) + 36)];
      v47 = *(sub_21E3E2C90() + 20);
      v48 = *MEMORY[0x277CE0118];
      v49 = sub_21E3E2E40();
      (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
      __asm { FMOV            V0.2D, #10.0 }

      *v46 = _Q0;
      *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AD8, &qword_21E3E4510) + 36)] = 256;
      sub_21E3CB5BC();
      sub_21E3CB5BC();
      sub_21E3E3300();
      sub_21E3E2C20();
      v55 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AE0, &qword_21E3E4518) + 36)];
      v56 = v75;
      *v55 = v74;
      *(v55 + 1) = v56;
      *(v55 + 2) = v76;
      v33 = v72;
      sub_21E3CA984(&v41[*(v72 + 52)]);
      (*(v34 + 8))(v35, v30);
      (*(v69 + 8))(v71, v70);
      v32 = v73;
      sub_21E3C1DB0();
      v31 = 0;
      return __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
    }

    (*(v21 + 8))(v23, v20);
    v24 = &qword_27CEC2658;
    v25 = &qword_21E3E3CC8;
  }

  sub_21E3C9BF4(v19, v24, v25);
  v31 = 1;
  v33 = v72;
  v32 = v73;
  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
}

void *sub_21E3CB534@<X0>(uint64_t a1@<X8>)
{
  if (!sub_21E3E3320())
  {
    sub_21E3E3230();
  }

  result = sub_21E3E2E90();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_21E3CB5BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for TipSnippetContentView.ImageView(0);
  sub_21E3CF558();
  v3 = sub_21E3E2580();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_21E3C9BF4(v2, &qword_27CEC2940, ",'");
    v4 = 1.0;
  }

  else
  {
    sub_21E3E2570();
    v4 = v5;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  return 102.0 / v4;
}

uint64_t sub_21E3CB6F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for TipSnippetContentView.BodyView(0);
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21E3E2B80();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_21E3E35D0();
    v11 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21E3CB8F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for TipSnippetContentView.BodyView(0);
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21E3E2C80();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_21E3E35D0();
    v11 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_21E3CBB00()
{
  v0 = type metadata accessor for TipSnippetContentView.BodyView(0);
  sub_21E3CEDE0(v0, v1, v2);
  sub_21E3E2430();
  v3 = sub_21E3E30C0();
  v5 = v4;
  v7 = v6;
  if (qword_27CEC2620 != -1)
  {
    swift_once();
  }

  v8 = sub_21E3E3090();
  sub_21E3C7F24(v3, v5, v7 & 1);

  return v8;
}

double sub_21E3CBC24()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 20);
  v6 = *v5;
  if (*(v5 + 16) == 1)
  {
    v7 = *v5;
  }

  else
  {
    v8 = *(v5 + 8);

    sub_21E3E35D0();
    v9 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3CE8A8(v6, v8, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v11;
  }

  return v7 + -5.0;
}

uint64_t sub_21E3CBD98@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v57 = sub_21E3E2B80();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v53 = *(v3 - 8);
  v66 = *(v53 + 64);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A38, &unk_21E3E4490);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v46 - v9;
  v50 = sub_21E3E2B30();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A40, &qword_21E3E44A0);
  MEMORY[0x28223BE20](v65);
  v64 = &v46 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A48, &qword_21E3E44A8);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v67 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A50, &qword_21E3E44B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_21E3E2B60();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21E3E2B50();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v62 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() preferredFontForTextStyle_];
  sub_21E3E3260();
  v73 = 0u;
  v74 = 0u;
  v75 = 0;
  (*(v17 + 104))(v19, *MEMORY[0x277D719B0], v16);
  v22 = v1;
  v68 = *(v1 + *(v4 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
  sub_21E3E32B0();
  swift_bridgeObjectRetain_n();
  sub_21E3E2260();
  v23 = sub_21E3E2270();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v23);
  sub_21E3E2B10();
  v24 = v62;
  sub_21E3E2B40();
  v46 = v4;
  v25 = sub_21E3E2210();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v25);
  v26 = v48;
  v27 = v61;
  (*(v63 + 16))(v48, v24, v61);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  v28 = (v22 + *(v4 + 52));
  v60 = v22;
  v30 = v28[1];
  v31 = v28[2];
  *&v68 = *v28;
  v29 = v68;
  *(&v68 + 1) = v30;
  v69 = v31;
  sub_21E3E2430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  *&v68 = v29;
  *(&v68 + 1) = v30;
  v69 = v31;
  sub_21E3E32B0();
  v32 = v49;
  sub_21E3E2B20();
  sub_21E3CE850();
  swift_allocObject();
  sub_21E3CE8B4();
  sub_21E3CF510(&qword_27CEC2A60, MEMORY[0x277D719A8], MEMORY[0x277D719A0]);
  v33 = v64;
  v34 = v50;
  sub_21E3E3180();

  (*(v52 + 8))(v32, v34);
  sub_21E3CE850();
  v35 = swift_allocObject();
  sub_21E3CE8B4();
  v36 = &v33[*(v65 + 36)];
  *v36 = sub_21E3CEC24;
  *(v36 + 1) = v35;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v37 = v54;
  sub_21E3CB6F0(v54);
  sub_21E3CE850();
  swift_allocObject();
  sub_21E3CE8B4();
  v53 = sub_21E3CEC28();
  v38 = sub_21E3CF510(&qword_27CEC2A70, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v39 = v57;
  v40 = v64;
  sub_21E3E3220();

  (*(v58 + 8))(v37, v39);
  sub_21E3C9BF4(v40, &qword_27CEC2A40, &qword_21E3E44A0);
  v41 = (v60 + *(v46 + 56));
  v42 = v41[1];
  v71 = *v41;
  v72 = v42;
  sub_21E3CE850();
  swift_allocObject();
  sub_21E3CE8B4();
  sub_21E3E2430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
  *&v68 = v65;
  *(&v68 + 1) = v39;
  v69 = v53;
  v70 = v38;
  swift_getOpaqueTypeConformance2();
  sub_21E3CED64();
  v43 = v55;
  v44 = v67;
  sub_21E3E3220();

  (*(v56 + 8))(v44, v43);
  return (*(v63 + 8))(v62, v61);
}

uint64_t sub_21E3CC888(uint64_t a1, double a2, double a3)
{
  type metadata accessor for TipSnippetContentView.BodyView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32C0();
  sub_21E3E32B0();
  return sub_21E3CC940(a2, a3);
}

uint64_t sub_21E3CC940(double a1, double a2)
{
  v5 = sub_21E3E2C80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A80, &qword_21E3E44C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A88, &qword_21E3E44D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_21E3E3040();
  result = MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0 || a2 != 0.0)
  {
    v50 = v16;
    v44 = v6;
    v45 = v5;
    v19 = v2;
    v43 = type metadata accessor for TipSnippetContentView.BodyView(0);
    v20 = *(v43 + 60);
    if (qword_27CEC2628 != -1)
    {
      swift_once();
    }

    v49 = sub_21E3E3010();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v49);
    v47 = sub_21E3E30A0();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v47);
    sub_21E3E3030();
    v46 = v20;
    sub_21E3E3020();
    v22 = v21;
    v50 = *(v50 + 8);
    (v50)(v18, v14);
    v23 = sub_21E3CBB00();
    v25 = v24;
    v27 = v26;
    v48 = v14;
    sub_21E3CBC24();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v49);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v47);
    sub_21E3E3030();
    sub_21E3E3020();
    v29 = v28;
    sub_21E3C7F24(v23, v25, v27 & 1);

    result = (v50)(v18, v48);
    v30 = round(v29 / v22);
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v32 = v44;
      v31 = v45;
      if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          v33 = v30;
          v34 = v51;
          sub_21E3CB8F8(v51);
          v35 = sub_21E3E2C70();
          v36 = *(v32 + 8);
          v36(v34, v31);
          if (v35)
          {
            if (v33 >= 9)
            {
LABEL_10:
              sub_21E3CB8F8(v34);
              v37 = sub_21E3E2C70();
              v36(v34, v31);
              if (v37)
              {
                v33 = 9;
              }

              else
              {
                v33 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v38 = v43;
              v53 = *(v19 + *(v43 + 40));
              v39 = 1;
              goto LABEL_19;
            }
          }

          else if (v33 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_10;
          }

          sub_21E3CB8F8(v34);
          v40 = sub_21E3E2C70();
          result = (v36)(v34, v31);
          v41 = 10;
          if ((v40 & 1) == 0)
          {
            v41 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v42 = __OFSUB__(v41, v33);
          v39 = v41 - v33;
          if (!v42)
          {
            v38 = v43;
            v53 = *(v19 + *(v43 + 40));
LABEL_19:
            v52 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
            sub_21E3E32C0();
            v53 = *(v19 + *(v38 + 36));
            v52 = v33;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
            return sub_21E3E32C0();
          }

LABEL_24:
          __break(1u);
          return result;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21E3CCE88(uint64_t a1)
{
  type metadata accessor for TipSnippetContentView.BodyView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  return sub_21E3CC940(v2, v3);
}

void *sub_21E3CCEFC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_21E3E2270();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29D0, &qword_21E3E4408);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29D8, &qword_21E3E4410);
  v21 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29E0, &qword_21E3E4418);
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = sub_21E3E2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  sub_21E3E2BD0();
  v14 = __src[0];
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29E8, &qword_21E3E4420);
  sub_21E3CD324(v1, &v7[*(v15 + 44)]);
  sub_21E3CE80C();
  sub_21E3E35E0();
  v16 = sub_21E3C4DA0(&qword_27CEC29F8, &qword_27CEC29D0, &qword_21E3E4408, MEMORY[0x277CE1198]);
  sub_21E3E31E0();
  sub_21E3C9BF4(v7, &qword_27CEC29D0, &qword_21E3E4408);
  type metadata accessor for TipSnippetContentView.BodyView(0);
  sub_21E3E2430();
  sub_21E3E2260();
  __src[0] = v5;
  __src[1] = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_21E3E31F0();
  (*(v25 + 8))(v4, v26);
  (*(v21 + 8))(v9, v17);
  sub_21E3E3300();
  sub_21E3E2CA0();
  v18 = v27;
  (*(v23 + 32))(v27, v12, v24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A00, &qword_21E3E4428);
  return memcpy((v18 + *(v19 + 36)), __src, 0x70uLL);
}

uint64_t sub_21E3CD324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A08, &qword_21E3E4430);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v39 = sub_21E3CBB00();
  v38 = v10;
  v12 = v11;
  v37 = v13;
  v36 = sub_21E3E2F20();
  sub_21E3CBC24();
  sub_21E3E2B70();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v43 = v12 & 1;
  v22 = v12 & 1;
  v34 = v22;
  v42 = 0;
  v23 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v45 = *(a1 + *(v23 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
  sub_21E3E32B0();
  v41 = __src[0];
  KeyPath = swift_getKeyPath();
  v33 = KeyPath;
  LOBYTE(v45) = 0;
  v35 = sub_21E3E2EB0();
  sub_21E3CBD98(v9);
  v45 = *(a1 + *(v23 + 40));
  sub_21E3E32B0();
  v25 = __src[0];
  v26 = swift_getKeyPath();
  v27 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A18, &qword_21E3E4470) + 36)];
  *v27 = v26;
  *(v27 + 1) = v25;
  v27[16] = 0;
  LODWORD(v26) = sub_21E3E2EC0();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A20, &qword_21E3E4478) + 36)] = v26;
  *&v9[*(v4 + 44)] = 256;
  v28 = v7;
  sub_21E3C1D4C();
  v29 = v39;
  __src[0] = v39;
  v30 = v38;
  __src[1] = v38;
  LOBYTE(__src[2]) = v22;
  v31 = v37;
  __src[3] = v37;
  LOBYTE(v22) = v36;
  LOBYTE(__src[4]) = v36;
  __src[5] = v15;
  __src[6] = v17;
  __src[7] = v19;
  __src[8] = v21;
  LOBYTE(__src[9]) = 0;
  __src[10] = KeyPath;
  __src[11] = v41;
  LOBYTE(__src[12]) = 0;
  LODWORD(KeyPath) = v35;
  HIDWORD(__src[12]) = v35;
  LOWORD(__src[13]) = 256;
  memcpy(v40, __src, 0x6AuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A28, &qword_21E3E4480);
  sub_21E3C1D4C();
  sub_21E3CF558();
  sub_21E3C9BF4(v9, &qword_27CEC2A08, &qword_21E3E4430);
  sub_21E3C9BF4(v28, &qword_27CEC2A08, &qword_21E3E4430);
  *&v45 = v29;
  *(&v45 + 1) = v30;
  v46 = v34;
  v47 = v31;
  v48 = v22;
  v49 = v15;
  v50 = v17;
  v51 = v19;
  v52 = v21;
  v53 = 0;
  v54 = v33;
  v55 = v41;
  v56 = 0;
  v57 = KeyPath;
  v58 = 256;
  return sub_21E3C9BF4(&v45, &qword_27CEC2A30, &qword_21E3E4488);
}

uint64_t sub_21E3CD708()
{
  sub_21E3E2F40();
  v0 = sub_21E3E2F50();

  qword_27CEC27F8 = v0;
  return result;
}

uint64_t sub_21E3CD744()
{
  if (qword_27CEC2620 != -1)
  {
    swift_once();
  }

  v0 = sub_21E3E3090();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_27CEC2800 = v0;
  *algn_27CEC2808 = v2;
  byte_27CEC2810 = v4 & 1;
  qword_27CEC2818 = v6;
  return result;
}

uint64_t sub_21E3CD800()
{
  type metadata accessor for CGSize(0);
  sub_21E3CDCA8(v0, v1, v2);
  result = sub_21E3E3490();
  qword_27CEC2820 = result;
  return result;
}

uint64_t sub_21E3CD8B8@<X0>(void *a1@<X8>)
{
  if (qword_27CEC2630 != -1)
  {
    swift_once();
  }

  *a1 = qword_27CEC2820;

  return sub_21E3E2430();
}

uint64_t sub_21E3CD930@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = sub_21E3E3230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28B8, &qword_21E3E4218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3E4000;
  *(inited + 32) = a2 & 1;
  sub_21E3E2C30();
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  type metadata accessor for CGSize(0);
  sub_21E3CDCA8(v9, v10, v11);
  result = sub_21E3E3490();
  *a3 = v5;
  a3[1] = result;
  return result;
}

uint64_t sub_21E3CDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_21E3CDB04(char a1)
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](a1 & 1);
  v2 = sub_21E3E3730();

  return sub_21E3CDB70(a1 & 1, v2);
}

unint64_t sub_21E3CDB70(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t sub_21E3CDC1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21E3CDC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC28A8;
  if (!qword_27CEC28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC28A8);
  }

  return result;
}

unint64_t sub_21E3CDCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC28C0;
  if (!qword_27CEC28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC28C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipSnippetContentView.ViewIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipSnippetContentView.ViewIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_21E3CDEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21E3CE12C(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_21E3CE358(319, &qword_27CEC2900, type metadata accessor for CGSize, MEMORY[0x277CDF468]);
    if (v4 <= 0x3F)
    {
      sub_21E3CE358(319, &qword_27CEC2908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v5 <= 0x3F)
      {
        sub_21E3CE358(319, &qword_27CEC2910, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          sub_21E3CE358(319, &qword_281223128, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v7 <= 0x3F)
          {
            sub_21E3CE188(319, &qword_27CEC2918, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
            if (v8 <= 0x3F)
            {
              sub_21E3CE358(319, &qword_27CEC2920, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v9 <= 0x3F)
              {
                sub_21E3CE188(319, &qword_27CEC2928, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v10 <= 0x3F)
                {
                  sub_21E3CE1D8(319);
                  if (v11 <= 0x3F)
                  {
                    sub_21E3E3060();
                    if (v12 <= 0x3F)
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

void sub_21E3CE12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27CEC28F8)
  {
    sub_21E3CDC54(0, a2, a3);
    v3 = sub_21E3E2BE0();
    if (!v4)
    {
      atomic_store(v3, &qword_27CEC28F8);
    }
  }
}

void sub_21E3CE188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21E3CE1D8(uint64_t a1)
{
  if (!qword_27CEC2930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2938, "J'");
    v1 = sub_21E3E3530();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEC2930);
    }
  }
}

void sub_21E3CE274(uint64_t a1)
{
  sub_21E3CE358(319, &qword_27CEC2908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21E3CE358(319, &qword_27CEC2958, MEMORY[0x277D047D8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E3CE358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21E3CE3BC()
{
  result = qword_27CEC2960;
  if (!qword_27CEC2960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2880, &qword_21E3E4128);
    sub_21E3CE474();
    sub_21E3C4DA0(&qword_27CEC29B8, &qword_27CEC29C0, qword_21E3E42B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2960);
  }

  return result;
}

unint64_t sub_21E3CE474()
{
  result = qword_27CEC2968;
  if (!qword_27CEC2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2878, &qword_21E3E4120);
    v3 = sub_21E3CE500();
    sub_21E3CE728(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2968);
  }

  return result;
}

unint64_t sub_21E3CE500()
{
  result = qword_27CEC2970;
  if (!qword_27CEC2970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2868, &unk_21E3E4110);
    sub_21E3CE5B8();
    sub_21E3C4DA0(&qword_27CEC29A8, &qword_27CEC2870, &qword_21E3E5380, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2970);
  }

  return result;
}

unint64_t sub_21E3CE5B8()
{
  result = qword_27CEC2978;
  if (!qword_27CEC2978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2860, &qword_21E3E40A8);
    sub_21E3CE644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2978);
  }

  return result;
}

unint64_t sub_21E3CE644()
{
  result = qword_27CEC2980;
  if (!qword_27CEC2980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2858, &qword_21E3E40A0);
    sub_21E3C4DA0(&qword_27CEC2988, &qword_27CEC2990, &qword_21E3E42A0, MEMORY[0x277CE1138]);
    sub_21E3C4DA0(&qword_27CEC2998, &qword_27CEC29A0, &qword_21E3E42A8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2980);
  }

  return result;
}

unint64_t sub_21E3CE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC29B0;
  if (!qword_27CEC29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC29B0);
  }

  return result;
}

unint64_t sub_21E3CE7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC29C8;
  if (!qword_27CEC29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC29C8);
  }

  return result;
}

unint64_t sub_21E3CE80C()
{
  result = qword_27CEC29F0;
  if (!qword_27CEC29F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC29F0);
  }

  return result;
}

uint64_t sub_21E3CE850()
{
  OUTLINED_FUNCTION_3_0();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_5();
  v3(v2);
  return v0;
}

uint64_t sub_21E3CE8A8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_21E3CE8B4()
{
  OUTLINED_FUNCTION_3_0();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_5();
  v3(v2);
  return v0;
}

uint64_t sub_21E3CE90C(double a1, double a2)
{
  v5 = type metadata accessor for TipSnippetContentView.BodyView(0);
  OUTLINED_FUNCTION_7(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21E3CC888(v7, a1, a2);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(v0 + v3);
  sub_21E3CE8A8(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));
  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21E3E2BA0();
    OUTLINED_FUNCTION_0_0();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21E3E2B80();
    OUTLINED_FUNCTION_0_0();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21E3E2C80();
    OUTLINED_FUNCTION_0_0();
    (*(v12 + 8))(v5 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_8(v1[9]);

  OUTLINED_FUNCTION_8(v1[10]);

  OUTLINED_FUNCTION_8(v1[12]);

  OUTLINED_FUNCTION_8(v1[14]);

  v13 = v1[15];
  sub_21E3E3060();
  OUTLINED_FUNCTION_0_0();
  (*(v14 + 8))(v5 + v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_21E3CEC28()
{
  result = qword_27CEC2A68;
  if (!qword_27CEC2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2A40, &qword_21E3E44A0);
    sub_21E3E2B30();
    sub_21E3CF510(&qword_27CEC2A60, MEMORY[0x277D719A8], MEMORY[0x277D719A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2A68);
  }

  return result;
}

uint64_t sub_21E3CED14()
{
  v1 = type metadata accessor for TipSnippetContentView.BodyView(0);
  OUTLINED_FUNCTION_7(v1);
  return sub_21E3CCE88(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

unint64_t sub_21E3CED64()
{
  result = qword_27CEC2A78;
  if (!qword_27CEC2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2748, &qword_21E3E3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2A78);
  }

  return result;
}

unint64_t sub_21E3CEDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_281223078;
  if (!qword_281223078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223078);
  }

  return result;
}

uint64_t sub_21E3CEE34(double *a1, char a2, double a3, double a4)
{
  *a1 = a3;
  a1[1] = a4;
  return a2 & 1;
}

uint64_t sub_21E3CEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_21E3CEEB4(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_21E3CEEB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  sub_21E3CF448(a1, a2, a3, v38);
  v6 = v38[1];
  v7 = v38[3];
  v8 = v38[4];
  v33 = v38[5];
  v34 = v38[0];
  v9 = (v38[2] + 64) >> 6;
  sub_21E3E2430();

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = *(v34 + 56);
      v36[0] = *(*(v34 + 48) + v12);
      v37 = *(v13 + 16 * v12);
      v33(v35, v36);
      v14 = v35[0];
      v16 = v35[1];
      v15 = v35[2];
      v17 = *v39;
      v19 = sub_21E3CDB04(v35[0]);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v23 = v18;
      if (v17[3] >= v22)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A90, &qword_21E3E44D8);
          sub_21E3E3660();
        }
      }

      else
      {
        sub_21E3CF114(v22, a4 & 1);
        v24 = sub_21E3CDB04(v14);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_23;
        }

        v19 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v39;
      if (v23)
      {
        v27 = (v26[7] + 16 * v19);
        *v27 = v16;
        v27[1] = v15;
      }

      else
      {
        v26[(v19 >> 6) + 8] |= 1 << v19;
        *(v26[6] + v19) = v14;
        v28 = (v26[7] + 16 * v19);
        *v28 = v16;
        v28[1] = v15;
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_22;
        }

        v26[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_21E3CF484(v34);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21E3E36B0();
  __break(1u);
  return result;
}

uint64_t sub_21E3CF114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A98, &qword_21E3E44E0);
  result = sub_21E3E3680();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v7;
    return result;
  }

  v33 = v4;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_21E3CF39C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
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
    v19 = *(*(v5 + 48) + v18);
    v20 = (*(v5 + 56) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    sub_21E3E3710();
    MEMORY[0x223D58B30](v19);
    result = sub_21E3E3730();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + v26) = v19;
    v31 = (*(v7 + 56) + 16 * v26);
    *v31 = v22;
    v31[1] = v21;
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
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21E3CF39C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21E3E4010;
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

__n128 sub_21E3CF400@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_21E3CEE34(v5.n128_f64, *a1, *(a1 + 8), *(a1 + 16));
  result = v5;
  *a2 = v3 & 1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_21E3CF448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_21E3CF48C()
{
  result = qword_27CEC2AB8;
  if (!qword_27CEC2AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2AB0, &qword_21E3E44F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AB8);
  }

  return result;
}

uint64_t sub_21E3CF510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3CF558()
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_5();
  v4(v3);
  return v0;
}

unint64_t sub_21E3CF5B0()
{
  result = qword_27CEC2AE8;
  if (!qword_27CEC2AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2A00, &qword_21E3E4428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC29D8, &qword_21E3E4410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC29D0, &qword_21E3E4408);
    sub_21E3C4DA0(&qword_27CEC29F8, &qword_27CEC29D0, &qword_21E3E4408, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AE8);
  }

  return result;
}

unint64_t sub_21E3CF6F0()
{
  result = qword_27CEC2AF0;
  if (!qword_27CEC2AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2AF8, &unk_21E3E4520);
    sub_21E3C4DA0(&qword_27CEC2B00, &qword_27CEC2AA8, &qword_21E3E44F0, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AF0);
  }

  return result;
}

uint64_t DeviceExpertUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  type metadata accessor for TroubleshootingSnippet(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v2);
  v136 = sub_21E3E2870();
  OUTLINED_FUNCTION_0();
  v134 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  type metadata accessor for TipSnippet(v6);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v8);
  v132 = sub_21E3E25D0();
  OUTLINED_FUNCTION_0();
  v130 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v12 = OUTLINED_FUNCTION_6_0(v11);
  type metadata accessor for SupplementarySnippet(v12);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v139 = v14;
  OUTLINED_FUNCTION_7_0();
  v140 = sub_21E3E2740();
  OUTLINED_FUNCTION_0();
  v138 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v18 = OUTLINED_FUNCTION_6_0(v17);
  type metadata accessor for SummarizedAnswerSnippet(v18);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v143 = v20;
  OUTLINED_FUNCTION_7_0();
  v144 = sub_21E3E28F0();
  OUTLINED_FUNCTION_0();
  v142 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  v141 = v23;
  v24 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for ListStyleAnswerSnippet(v24);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_1();
  v147 = v26;
  OUTLINED_FUNCTION_7_0();
  v148 = sub_21E3E2850();
  OUTLINED_FUNCTION_0();
  v146 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  v145 = v29;
  v30 = OUTLINED_FUNCTION_7_0();
  v152 = type metadata accessor for LearnMoreSnippet(v30);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v34 = (v33 - v32);
  sub_21E3E26F0();
  OUTLINED_FUNCTION_0();
  v150 = v36;
  v151 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_1();
  v149 = v37;
  v38 = OUTLINED_FUNCTION_7_0();
  v39 = type metadata accessor for AttributionItemListSnippet(v38);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v43 = (v42 - v41);
  v44 = sub_21E3E2780();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  v51 = sub_21E3E2900();
  OUTLINED_FUNCTION_0();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_0();
  v57 = v56 - v55;
  (*(v53 + 16))(v56 - v55, a1, v51);
  v58 = (*(v53 + 88))(v57, v51);
  if (v58 == *MEMORY[0x277D04830])
  {
    v59 = OUTLINED_FUNCTION_5_0();
    v60(v59);
    (*(v46 + 32))(v50, v57, v44);
    (*(v46 + 16))(v43 + *(v39 + 20), v50, v44);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v63 = sub_21E3D0658(v61, v62);
    *v43 = OUTLINED_FUNCTION_10(v63);
    v43[1] = v64;
    sub_21E3D0658(&qword_27CEC2B30, type metadata accessor for AttributionItemListSnippet);
    v65 = sub_21E3E30E0();
    sub_21E3D05B8(v43, type metadata accessor for AttributionItemListSnippet);
    (*(v46 + 8))(v50, v44);
    return v65;
  }

  if (v58 == *MEMORY[0x277D04858])
  {
    v66 = OUTLINED_FUNCTION_5_0();
    v67(v66);
    v69 = v149;
    v68 = v150;
    v70 = v151;
    (*(v150 + 32))(v149, v57, v151);
    (*(v150 + 16))(v34 + *(v152 + 20), v149, v151);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v73 = sub_21E3D0658(v71, v72);
    *v34 = OUTLINED_FUNCTION_10(v73);
    v34[1] = v74;
    sub_21E3D0658(&qword_27CEC2B28, type metadata accessor for LearnMoreSnippet);
    OUTLINED_FUNCTION_9_0();
    v65 = sub_21E3E30E0();
    v75 = type metadata accessor for LearnMoreSnippet;
    v76 = v34;
LABEL_5:
    sub_21E3D05B8(v76, v75);
    (*(v68 + 8))(v69, v70);
    return v65;
  }

  if (v58 == *MEMORY[0x277D04838])
  {
    v77 = OUTLINED_FUNCTION_5_0();
    v78(v77);
    v80 = v145;
    v79 = v146;
    OUTLINED_FUNCTION_13();
    v81 = OUTLINED_FUNCTION_12();
    v82 = v148;
    v83(v81);
    OUTLINED_FUNCTION_11();
    v84 = v147;
    v86 = OUTLINED_FUNCTION_8_0(v85);
    v87(v86);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v90 = sub_21E3D0658(v88, v89);
    *v147 = OUTLINED_FUNCTION_10(v90);
    *(v147 + 8) = v91;
    *(v147 + 16) = swift_getKeyPath();
    *(v147 + 24) = 0;
    sub_21E3D0658(qword_281223390, type metadata accessor for ListStyleAnswerSnippet);
    OUTLINED_FUNCTION_9_0();
    v65 = sub_21E3E30E0();
    v92 = type metadata accessor for ListStyleAnswerSnippet;
LABEL_14:
    sub_21E3D05B8(v84, v92);
    (*(v79 + 8))(v80, v82);
    return v65;
  }

  if (v58 == *MEMORY[0x277D04848])
  {
    v93 = OUTLINED_FUNCTION_5_0();
    v94(v93);
    v80 = v141;
    v79 = v142;
    OUTLINED_FUNCTION_13();
    v95 = OUTLINED_FUNCTION_12();
    v82 = v144;
    v96(v95);
    OUTLINED_FUNCTION_11();
    v84 = v143;
    v98 = OUTLINED_FUNCTION_8_0(v97);
    v99(v98);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v102 = sub_21E3D0658(v100, v101);
    *v143 = OUTLINED_FUNCTION_10(v102);
    *(v143 + 8) = v103;
    *(v143 + 16) = swift_getKeyPath();
    *(v143 + 24) = 0;
    sub_21E3D0658(&qword_27CEC2B20, type metadata accessor for SummarizedAnswerSnippet);
    OUTLINED_FUNCTION_9_0();
    v65 = sub_21E3E30E0();
    v92 = type metadata accessor for SummarizedAnswerSnippet;
    goto LABEL_14;
  }

  if (v58 == *MEMORY[0x277D04828])
  {
    v104 = OUTLINED_FUNCTION_5_0();
    v105(v104);
    v79 = v138;
    OUTLINED_FUNCTION_13();
    v80 = v137;
    v106 = OUTLINED_FUNCTION_12();
    v82 = v140;
    v107(v106);
    OUTLINED_FUNCTION_11();
    v84 = v139;
    v109 = OUTLINED_FUNCTION_8_0(v108);
    v110(v109);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v113 = sub_21E3D0658(v111, v112);
    *v139 = OUTLINED_FUNCTION_10(v113);
    v139[1] = v114;
    sub_21E3D0658(&qword_27CEC2B18, type metadata accessor for SupplementarySnippet);
    OUTLINED_FUNCTION_9_0();
    v65 = sub_21E3E30E0();
    v92 = type metadata accessor for SupplementarySnippet;
    goto LABEL_14;
  }

  if (v58 == *MEMORY[0x277D04850])
  {
    v115 = OUTLINED_FUNCTION_5_0();
    v116(v115);
    v79 = v130;
    OUTLINED_FUNCTION_13();
    v80 = v129;
    v117 = OUTLINED_FUNCTION_12();
    v82 = v132;
    v118(v117);
    OUTLINED_FUNCTION_11();
    v84 = v131;
    v120 = OUTLINED_FUNCTION_8_0(v119);
    v121(v120);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    v124 = sub_21E3D0658(v122, v123);
    *v131 = OUTLINED_FUNCTION_10(v124);
    v131[1] = v125;
    sub_21E3D0658(&qword_27CEC2B10, type metadata accessor for TipSnippet);
    OUTLINED_FUNCTION_9_0();
    v65 = sub_21E3E30E0();
    v92 = type metadata accessor for TipSnippet;
    goto LABEL_14;
  }

  if (v58 == *MEMORY[0x277D04840])
  {
    v127 = OUTLINED_FUNCTION_5_0();
    v128(v127);
    v68 = v134;
    v69 = v133;
    v70 = v136;
    (*(v134 + 32))(v133, v57, v136);
    (*(v134 + 16))(v135, v133, v136);
    sub_21E3D0658(&qword_27CEC2B08, type metadata accessor for TroubleshootingSnippet);
    v65 = sub_21E3E30E0();
    v75 = type metadata accessor for TroubleshootingSnippet;
    v76 = v135;
    goto LABEL_5;
  }

  sub_21E3E3630();
  MEMORY[0x223D58910](0xD00000000000001BLL, 0x800000021E3E9500);
  sub_21E3E3650();
  result = sub_21E3E3670();
  __break(1u);
  return result;
}

uint64_t sub_21E3D0578@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceExpertUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_21E3D05B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21E3D0658(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_9_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return sub_21E3E2CC0();
}

id sub_21E3D079C(void *a1)
{
  v3 = sub_21E3E2700();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v36 = v5 - v4;
  sub_21E3E2480();
  OUTLINED_FUNCTION_0();
  v33 = v7;
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_21E3E24B0();
  OUTLINED_FUNCTION_0();
  v35 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_21E3E2210();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  result = [a1 punchOutUri];
  if (result)
  {
    v27 = result;
    sub_21E3E21F0();

    (*(v19 + 32))(v25, v23, v17);
    v28 = sub_21E3E2470();
    v32[0] = v29;
    v32[1] = v28;
    sub_21E3E2450();
    v32[2] = v1;
    (*(v19 + 16))(v10, v25, v17);
    (*(v33 + 104))(v10, *MEMORY[0x277D047B8], v34);
    sub_21E3E2440();
    sub_21E3E2460();
    sub_21E3E2490();
    v37[3] = v11;
    v37[4] = MEMORY[0x277D047C8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v31 = v35;
    (*(v35 + 16))(boxed_opaque_existential_1, v16, v11);
    sub_21E3E25E0();
    (*(v31 + 8))(v16, v11);
    (*(v19 + 8))(v25, v17);
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_21E3D0B2C()
{
  v0 = sub_21E3E2700();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_2_0();
  sub_21E3E2480();
  OUTLINED_FUNCTION_0();
  v16 = v2;
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = sub_21E3E24B0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_21E3E2470();
  sub_21E3E2450();
  MEMORY[0x223D57D60]();
  MEMORY[0x223D57D50]();
  v13 = MEMORY[0x223D57D40]();
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_21E3E2430();
    }
  }

  sub_21E3E24A0();
  (*(v16 + 104))(v5, *MEMORY[0x277D047C0], v17);
  sub_21E3E2440();
  sub_21E3E2460();
  sub_21E3E2490();
  v18[3] = v6;
  v18[4] = MEMORY[0x277D047C8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v8 + 16))(boxed_opaque_existential_1, v12, v6);
  sub_21E3E25E0();
  (*(v8 + 8))(v12, v6);
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t type metadata accessor for LearnMoreSnippet(uint64_t a1)
{
  result = qword_2812234B0;
  if (!qword_2812234B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D0E28(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3E26F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3D0EC8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_21E3E2750();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LearnMoreSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B38, &qword_21E3E4638);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_21E3D146C(v1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_21E3D14D0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B40, &unk_21E3E4640);
  v18 = sub_21E3E33C0();
  v19 = sub_21E3D15A4(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  sub_21E3E3390();
  v20 = v26;
  (*(v3 + 104))(v6, *MEMORY[0x277D047E8], v26);
  sub_21E3E26F0();
  v21 = sub_21E3E2670();
  v23 = v22;
  (*(v3 + 8))(v6, v20);
  v28 = v21;
  v29 = v23;
  sub_21E3D15EC();
  sub_21E3E3160();

  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_21E3D1204@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_21E3E22B0();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E3E33C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LearnMoreSnippet(0);
  v8 = sub_21E3E26E0();
  v9 = sub_21E3D5698(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v23 = MEMORY[0x277CE0BD8];
  v24 = MEMORY[0x277D638E8];
  v16 = swift_allocObject();
  v22 = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13 & 1;
  *(v16 + 40) = v15;
  sub_21E3E33B0();
  v17 = v20;
  (*(v1 + 104))(v3, *MEMORY[0x277D62F20], v20);
  sub_21E3D15A4(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
  sub_21E3E3120();
  (*(v1 + 8))(v3, v17);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E3D146C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D14D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D1534@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LearnMoreSnippet(0);

  return sub_21E3D1204(a1);
}

uint64_t sub_21E3D15A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E3D15EC()
{
  result = qword_27CEC2B48;
  if (!qword_27CEC2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B38, &qword_21E3E4638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2B48);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E3D165C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_21E3D169C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21E3D1708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21E3DAD5C(a3);
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21E3D23D8;
  *(v9 + 24) = v8;
  v10 = a1;
  sub_21E3E2430();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B50, &qword_21E3E4708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B58, &qword_21E3E4710);
  sub_21E3C4DA0(&qword_27CEC2B60, &qword_27CEC2B50, &qword_21E3E4708, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B68, &qword_21E3E4718);
  sub_21E3E3380();
  sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718, MEMORY[0x277CDF028]);
  sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
  swift_getOpaqueTypeConformance2();
  return sub_21E3E32E0();
}

uint64_t sub_21E3D1934@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v29 = a2;
  v30 = a3;
  v36 = a6;
  v7 = sub_21E3E3380();
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E3E29A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B68, &qword_21E3E4718);
  v15 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v17 = &v29 - v16;
  (*(v12 + 16))(v14, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v18, v14, v11);
  v21 = (v20 + v19);
  v22 = v29;
  v23 = v30;
  *v21 = v29;
  v21[1] = v23;
  v24 = v33;
  v21[2] = v32;
  v21[3] = v24;
  v37 = a1;
  v25 = v22;
  sub_21E3E2430();

  sub_21E3E32D0();
  sub_21E3E2EA0();
  sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718, MEMORY[0x277CDF028]);
  sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
  v26 = v31;
  v27 = v34;
  sub_21E3E31B0();
  (*(v35 + 8))(v10, v27);
  return (*(v15 + 8))(v17, v26);
}

uint64_t sub_21E3D1CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v48 = a2;
  v39 = a3;
  v5 = sub_21E3E2B00();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21E3E2960();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_21E3E2210();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E3E2920();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E3E2970();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3E2990();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x277D04868])
  {
    (*(v19 + 96))(v21, v18);
    v23 = (*(v15 + 32))(v17, v21, v14);
    MEMORY[0x223D57D20](v23);
    sub_21E3E2200();

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      (*(v15 + 8))(v17, v14);
      return sub_21E3D24D0(v10);
    }

    v31 = v41;
    (*(v41 + 32))(v13, v10, v11);
    type metadata accessor for ActionHandler(0);
    v32 = swift_allocObject();
    v33 = v47;

    sub_21E3E2AE0();
    *(v32 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v33;
    if (v48)
    {
      v34 = v48;
      sub_21E3DC6A4(v13);

      swift_setDeallocating();
      sub_21E3DD768();
      (*(v31 + 8))(v13, v11);
      return (*(v15 + 8))(v17, v14);
    }

    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277D04870])
  {
    (*(v19 + 96))(v21, v18);
    v25 = v42;
    v26 = v40;
    v27 = v44;
    (*(v42 + 32))(v40, v21, v44);
    type metadata accessor for ActionHandler(0);
    v28 = swift_allocObject();
    v29 = v47;

    sub_21E3E2AE0();
    *(v28 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v29;
    if (v48)
    {
      v30 = v48;
      sub_21E3DCD20(v26);

      return (*(v25 + 8))(v26, v27);
    }

LABEL_13:
    sub_21E3E3480();
    sub_21E3D2488(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  v35 = v43;
  sub_21E3E2AE0();
  v36 = sub_21E3E2AF0();
  v37 = sub_21E3E35C0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_21E3BF000, v36, v37, "Unknown action button type selected.", v38, 2u);
    MEMORY[0x223D58FC0](v38, -1, -1);
  }

  (*(v45 + 8))(v35, v46);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_21E3D2304@<X0>(uint64_t a1@<X8>)
{
  v8 = MEMORY[0x223D57D90]();
  sub_21E3CEDE0(v8, v2, v3);
  result = sub_21E3E30C0();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21E3D2360(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21E3D23EC()
{
  v1 = *(sub_21E3E29A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  return sub_21E3D1CA0(v0 + v2, v4, v5, v6, v7);
}

uint64_t sub_21E3D2488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3D24D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E3D2538()
{
  result = qword_27CEC2B88;
  if (!qword_27CEC2B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B90, &unk_21E3E4730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B68, &qword_21E3E4718);
    sub_21E3E3380();
    sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718, MEMORY[0x277CDF028]);
    sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2B88);
  }

  return result;
}

uint64_t type metadata accessor for TroubleshootingSnippet(uint64_t a1)
{
  result = qword_2812232C0;
  if (!qword_2812232C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3D26F0(uint64_t a1)
{
  result = sub_21E3E2870();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E3D2778@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v23[0] = sub_21E3E2750();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TroubleshootingSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B98, &qword_21E3E47A8);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  sub_21E3D2AE0(v1, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_21E3D2B44(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_21E3E33C0();
  sub_21E3D2C18();
  sub_21E3E3390();
  v18 = v23[0];
  (*(v3 + 104))(v6, *MEMORY[0x277D047E8], v23[0]);
  sub_21E3E2870();
  v19 = sub_21E3E2670();
  v21 = v20;
  (*(v3 + 8))(v6, v18);
  v23[2] = v19;
  v23[3] = v21;
  sub_21E3D2C70();
  sub_21E3E3160();

  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_21E3D2A34()
{
  v0 = sub_21E3E2860();
  v1 = sub_21E3D5698(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5 & 1;
  *(v9 + 40) = v7;
  return sub_21E3E33B0();
}

uint64_t sub_21E3D2AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D2B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D2BA8()
{
  type metadata accessor for TroubleshootingSnippet(0);

  return sub_21E3D2A34();
}

unint64_t sub_21E3D2C18()
{
  result = qword_281223090;
  if (!qword_281223090)
  {
    sub_21E3E33C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223090);
  }

  return result;
}

unint64_t sub_21E3D2C70()
{
  result = qword_27CEC2BA0;
  if (!qword_27CEC2BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B98, &qword_21E3E47A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2BA0);
  }

  return result;
}

id sub_21E3D2CE4()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEC2BA8 = result;
  return result;
}

id static NSBundle.current.getter()
{
  if (qword_27CEC2638 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEC2BA8;

  return v1;
}

uint64_t type metadata accessor for SummarizedAnswerSnippet(uint64_t a1)
{
  result = qword_281223258;
  if (!qword_281223258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D2E30(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3C4EF8(319);
    if (v2 <= 0x3F)
    {
      sub_21E3E28F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E3D2EE8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  sub_21E3E2750();
  OUTLINED_FUNCTION_0();
  v38 = v3;
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SummarizedAnswerSnippet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BB0, &qword_21E3E4830);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BB8, &qword_21E3E4838);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_21E3D5284(v1, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_21E3D52E8(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BC0, &qword_21E3E4840);
  sub_21E3C4DA0(&qword_27CEC2BC8, &qword_27CEC2BC0, &qword_21E3E4840, MEMORY[0x277CE14C0]);
  sub_21E3E3390();
  sub_21E3E2880();
  v21 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v7, 1, v21) == 1)
  {
    sub_21E3C413C(v7, &qword_27CEC26B8, &qword_21E3E3DF8);
    v22 = 0;
  }

  else
  {
    v22 = sub_21E3DBB5C();
    (*(*(v21 - 8) + 8))(v7, v21);
  }

  v23 = sub_21E3E28D0();
  sub_21E3E3480();
  sub_21E3D55E0(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v24 = sub_21E3E2CC0();
  v26 = v25;
  (*(v12 + 32))(v18, v15, v35);
  v27 = v37;
  v28 = &v18[*(v36 + 36)];
  *v28 = v24;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v23;
  v30 = v38;
  v29 = v39;
  (*(v38 + 104))(v27, *MEMORY[0x277D047E8], v39);
  sub_21E3E28F0();
  v31 = sub_21E3E2670();
  v33 = v32;
  (*(v30 + 8))(v27, v29);
  v41 = v31;
  v42 = v33;
  sub_21E3D53BC();
  sub_21E3E3160();

  return sub_21E3C413C(v18, &qword_27CEC2BB8, &qword_21E3E4838);
}

uint64_t sub_21E3D33A8@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v171 = sub_21E3E2E60();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_21E3E2EE0();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SummarizedAnswerSnippet(0);
  v6 = v5 - 8;
  v152 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v153 = v7;
  v154 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for AttributionView(0);
  MEMORY[0x28223BE20](v159);
  v157 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BE0, &qword_21E3E4848);
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v143 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BE8, &qword_21E3E4850);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v162 = &v143 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF0, &qword_21E3E4858);
  MEMORY[0x28223BE20](v179);
  v160 = &v143 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v12 - 8);
  v175 = &v143 - v13;
  v177 = sub_21E3E2660();
  v156 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v155 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF8, &unk_21E3E4860);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v180 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v143 - v18;
  v149 = sub_21E3E3400();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2700, &unk_21E3E3E40);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v143 - v21;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2708, &qword_21E3E4870);
  v146 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v144 = &v143 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2710, &qword_21E3E3E50);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v176 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v196 = &v143 - v26;
  v192 = sub_21E3E22B0();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v28 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_21E3E33C0();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2720, &qword_21E3E3E60);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v32 = &v143 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2728, &qword_21E3E3E68);
  v186 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v195 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v143 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2730, &qword_21E3E3E70);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v189 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v143 - v41;
  v43 = *(v6 + 32);
  v44 = sub_21E3E28E0();
  v190 = a1;
  v188 = v43;
  v178 = v19;
  v187 = v33;
  v194 = v37;
  v193 = v42;
  if (v44)
  {
    v45 = sub_21E3E28C0();
    v46 = sub_21E3D5698(v45);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v208 = MEMORY[0x277CE0BD8];
    v209 = MEMORY[0x277D638E8];
    v53 = swift_allocObject();
    v206 = v53;
    *(v53 + 16) = v46;
    *(v53 + 24) = v48;
    *(v53 + 32) = v50 & 1;
    *(v53 + 40) = v52;
    sub_21E3E33B0();
    v54 = sub_21E3D55E0(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
    v55 = v183;
    sub_21E3E3140();
    (*(v182 + 8))(v30, v55);
    v56 = *MEMORY[0x277D62F38];
    v57 = v191;
    v58 = v192;
    (*(v191 + 104))(v28, v56, v192);
    v206 = v55;
    v207 = v54;
    swift_getOpaqueTypeConformance2();
    v59 = v194;
    v60 = v185;
    sub_21E3E3120();
    (*(v57 + 8))(v28, v58);
    (*(v184 + 8))(v32, v60);
    v61 = v193;
    v62 = v59;
    v63 = v56;
    v64 = v187;
    (*(v186 + 32))(v193, v62, v187);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v64);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v33);
    v63 = *MEMORY[0x277D62F38];
  }

  v65 = sub_21E3E28B0();
  v66 = sub_21E3D5698(v65);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v208 = MEMORY[0x277CE0BD8];
  v209 = MEMORY[0x277D638E8];
  v73 = swift_allocObject();
  v206 = v73;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70 & 1;
  *(v73 + 40) = v72;
  v74 = v190;
  sub_21E3E33B0();
  v75 = sub_21E3D55E0(&qword_281223090, MEMORY[0x277D63C80], MEMORY[0x277D63C78]);
  v76 = v183;
  sub_21E3E3140();
  (*(v182 + 8))(v30, v76);
  v77 = v191;
  v78 = *(v191 + 104);
  LODWORD(v182) = v63;
  v79 = v63;
  v80 = v192;
  v173 = v78;
  v172 = v191 + 104;
  v78(v28, v79, v192);
  v206 = v76;
  v207 = v75;
  v81 = 1;
  swift_getOpaqueTypeConformance2();
  v82 = v185;
  sub_21E3E3120();
  v85 = *(v77 + 8);
  v83 = v77 + 8;
  v84 = v85;
  v85(v28, v80);
  (*(v184 + 8))(v32, v82);
  v86 = sub_21E3E28A0();
  v87 = v28;
  v88 = v174;
  if (v86)
  {
    v89 = sub_21E3E2890();
    v90 = sub_21E3D5698(v89);
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v208 = MEMORY[0x277CE0BD8];
    v209 = MEMORY[0x277D638E8];
    v97 = swift_allocObject();
    v206 = v97;
    *(v97 + 16) = v90;
    *(v97 + 24) = v92;
    v74 = v190;
    *(v97 + 32) = v94 & 1;
    *(v97 + 40) = v96;
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;
    v199 = 0;
    v198 = 0u;
    v197 = 0u;
    v98 = v145;
    sub_21E3E33F0();
    v99 = sub_21E3D55E0(&qword_281223088, MEMORY[0x277D63DD0], MEMORY[0x277D63DC8]);
    v100 = v148;
    v101 = v149;
    sub_21E3E3140();
    (*(v147 + 8))(v98, v101);
    v102 = v83;
    v103 = v192;
    v173(v87, v182, v192);
    v206 = v101;
    v207 = v99;
    swift_getOpaqueTypeConformance2();
    v104 = v144;
    v105 = v151;
    sub_21E3E3120();
    v106 = v103;
    v83 = v102;
    v84(v87, v106);
    (*(v150 + 8))(v100, v105);
    (*(v146 + 32))(v196, v104, v88);
    v81 = 0;
  }

  __swift_storeEnumTagSinglePayload(v196, v81, 1, v88);
  v107 = v175;
  sub_21E3E2880();
  v108 = v177;
  if (__swift_getEnumTagSinglePayload(v107, 1, v177) == 1)
  {
    sub_21E3C413C(v107, &qword_27CEC26B8, &qword_21E3E3DF8);
    v109 = 1;
    v110 = v178;
  }

  else
  {
    v190 = v84;
    v111 = v156;
    v112 = v155;
    (*(v156 + 32))(v155, v107, v108);
    v191 = v83;
    v113 = v157;
    sub_21E3E2650();
    v114 = v74;
    v115 = v154;
    sub_21E3D5284(v114, v154);
    v116 = (*(v152 + 80) + 16) & ~*(v152 + 80);
    v117 = swift_allocObject();
    sub_21E3D52E8(v115, v117 + v116);
    v118 = v159;
    v119 = (v113 + *(v159 + 20));
    *v119 = 0u;
    v119[1] = 0u;
    v120 = (v113 + *(v118 + 24));
    *v120 = sub_21E3D5560;
    v120[1] = v117;
    v121 = v192;
    v173(v87, v182, v192);
    v122 = sub_21E3D55E0(qword_281223558, type metadata accessor for AttributionView, &unk_21E3E51B8);
    v123 = v158;
    sub_21E3E3120();
    v190(v87, v121);
    sub_21E3C7EC8(v113);
    v124 = v166;
    sub_21E3E2ED0();
    v206 = v118;
    v207 = v122;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v126 = v162;
    v127 = v163;
    sub_21E3E3200();
    (*(v167 + 8))(v124, v168);
    (*(v161 + 8))(v123, v127);
    v128 = v169;
    sub_21E3E2E50();
    v206 = v127;
    v207 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v129 = v160;
    v130 = v165;
    sub_21E3E3210();
    (*(v170 + 8))(v128, v171);
    (*(v164 + 8))(v126, v130);
    (*(v111 + 8))(v112, v108);
    v110 = v178;
    sub_21E3C25D0(v129, v178);
    v109 = 0;
  }

  v131 = v186;
  __swift_storeEnumTagSinglePayload(v110, v109, 1, v179);
  v132 = v189;
  sub_21E3C7CFC(v193, v189, &qword_27CEC2730, &qword_21E3E3E70);
  v133 = *(v131 + 16);
  v134 = v194;
  v135 = v187;
  v133(v194, v195, v187);
  v136 = v176;
  sub_21E3C7CFC(v196, v176, &qword_27CEC2710, &qword_21E3E3E50);
  v137 = v180;
  sub_21E3C7CFC(v110, v180, &qword_27CEC2BF8, &unk_21E3E4860);
  v138 = v181;
  sub_21E3C7CFC(v132, v181, &qword_27CEC2730, &qword_21E3E3E70);
  v139 = v110;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C00, &qword_21E3E4878);
  v133((v138 + v140[12]), v134, v135);
  sub_21E3C7CFC(v136, v138 + v140[16], &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C7CFC(v137, v138 + v140[20], &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v139, &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v196, &qword_27CEC2710, &qword_21E3E3E50);
  v141 = *(v131 + 8);
  v141(v195, v135);
  sub_21E3C413C(v193, &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C413C(v137, &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v136, &qword_27CEC2710, &qword_21E3E3E50);
  v141(v194, v135);
  return sub_21E3C413C(v189, &qword_27CEC2730, &qword_21E3E3E70);
}

uint64_t sub_21E3D49C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a2;
  v77 = a1;
  v4 = sub_21E3E2B00();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v10 = sub_21E3E33A0();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E3E22C0();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_21E3E2520();
  v78 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v62 - v24;
  v68 = *(type metadata accessor for SummarizedAnswerSnippet(0) + 24);
  sub_21E3E2880();
  v25 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v16, 1, v25) != 1)
  {
    v63 = v9;
    v64 = v19;
    v65 = a3;
    v66 = v6;
    v67 = v4;
    v28 = sub_21E3E2640();
    (*(*(v25 - 8) + 8))(v16, v25);
    v29 = *(v28 + 16);
    v30 = v78;
    if (v29)
    {
      v31 = 0;
      v32 = v28 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v33 = (v78 + 8);
      while (1)
      {
        v26 = v79;
        if (v31 >= *(v28 + 16))
        {
          break;
        }

        (*(v30 + 16))(v23, v32 + *(v30 + 72) * v31, v20);
        v34 = sub_21E3E24C0();
        v35 = sub_21E3D5628(v34);
        if (v26)
        {
          if (v36)
          {
            v26 = v79;
            if (v35 == v77 && v36 == v79)
            {

              goto LABEL_19;
            }

            v38 = sub_21E3E3690();

            if (v38)
            {
              v26 = v79;
LABEL_19:

              v30 = v78;
              v19 = v64;
              (*(v78 + 32))(v64, v23, v20);
              v39 = 0;
              v6 = v66;
              v4 = v67;
              v27 = v76;
              v40 = v65;
              goto LABEL_20;
            }
          }
        }

        else
        {
          if (!v36)
          {
            goto LABEL_19;
          }
        }

        ++v31;
        (*v33)(v23, v20);
        v30 = v78;
        if (v29 == v31)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      v39 = 1;
      v6 = v66;
      v4 = v67;
      v27 = v76;
      v19 = v64;
      v40 = v65;
      v26 = v79;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v19, v39, 1, v20);
      if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
      {
        goto LABEL_21;
      }

      v50 = v69;
      (*(v30 + 32))(v69, v19, v20);
      sub_21E3E2600();
      v51 = v30;
      sub_21E3E25F0();
      v52 = sub_21E3E24C0();
      sub_21E3E28D0();
      sub_21E3D079C(v52);

      v53 = sub_21E3E24C0();
      v54 = v71;
      v55 = v72;
      *v72 = v53;
      *(v55 + 8) = 1;
      (*(v70 + 104))(v55, *MEMORY[0x277D63720], v54);
      (*(v73 + 104))(v75, *MEMORY[0x277D63BF8], v74);
      v56 = v63;
      sub_21E3E3360();
      v57 = sub_21E3E3370();
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
      v58 = objc_allocWithZone(sub_21E3E3420());
      v59 = sub_21E3E3410();
      if (*v40)
      {
        v60 = v59;
        v61 = *v40;
        sub_21E3E3460();

        return (*(v51 + 8))(v50, v20);
      }
    }

    sub_21E3E3480();
    sub_21E3D55E0(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  sub_21E3C413C(v16, &qword_27CEC26B8, &qword_21E3E3DF8);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v26 = v79;
  v27 = v76;
LABEL_21:
  sub_21E3C413C(v19, &qword_27CEC2660, &qword_21E3E3CD0);
  sub_21E3E2AE0();
  sub_21E3E2430();
  v41 = sub_21E3E2AF0();
  v42 = sub_21E3E35C0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v26;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v81 = v43;
    v82 = v45;
    *v44 = 136315138;
    v80 = v77;
    sub_21E3E2430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
    v46 = sub_21E3E34E0();
    v48 = sub_21E3C9300(v46, v47, &v82);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_21E3BF000, v41, v42, "No attribution item found for %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D58FC0](v45, -1, -1);
    MEMORY[0x223D58FC0](v44, -1, -1);
  }

  return (*(v27 + 8))(v6, v4);
}

uint64_t sub_21E3D5284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D52E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D534C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarizedAnswerSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21E3D33A8(v4, a1);
}

unint64_t sub_21E3D53BC()
{
  result = qword_27CEC2BD0;
  if (!qword_27CEC2BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2BB8, &qword_21E3E4838);
    v3 = sub_21E3C4DA0(&qword_27CEC2BD8, &qword_27CEC2BB0, &qword_21E3E4830, MEMORY[0x277D63B90]);
    sub_21E3C7CA8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2BD0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for SummarizedAnswerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_21E3C7B10(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v1[8];
  sub_21E3E28F0();
  OUTLINED_FUNCTION_1();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3D5560(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SummarizedAnswerSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3D49C4(a1, a2, v6);
}

uint64_t sub_21E3D55E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3D5628(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E3E34D0();

  return v3;
}

void (*sub_21E3D5698(uint64_t a1))(void, void)
{
  v126 = sub_21E3E2A30();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0(v119 - v6);
  v7 = sub_21E3E2A40();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0(v119 - v12);
  v135 = sub_21E3E2A60();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0(v119 - v17);
  v144 = sub_21E3E29E0();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(v22 - v21);
  v23 = sub_21E3E2A70();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  sub_21E3E2A90();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = 0;
  v154 = 0;
  v153 = 0;
  v147 = a1;
  v148 = *(a1 + 16);
  v142 = v35 + 16;
  v141 = v25 + 88;
  v140 = *MEMORY[0x277D04888];
  v124 = *MEMORY[0x277D04890];
  v119[2] = v25 + 8;
  v36 = v25 + 96;
  v37 = v23;
  v130 = v36;
  v119[1] = v3 + 32;
  v129 = v9 + 88;
  v128 = *MEMORY[0x277D04880];
  v119[5] = v9 + 8;
  v127 = v14 + 8;
  v39 = v38;
  v119[0] = v3 + 16;
  v123 = (v3 + 8);
  v122 = v19 + 32;
  v121 = v19 + 8;
  v40 = v33;
  v143 = v35;
  v139 = v35 + 8;
  v41 = MEMORY[0x277D84F90];
  v42 = 0xE000000000000000;
  v136 = v7;
  v134 = v37;
  v133 = v29;
  v132 = v38;
  v131 = v33;
  while (v148 != v34)
  {
    (*(v143 + 16))(v40, v147 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v34, v39);
    sub_21E3E2A80();
    v43 = OUTLINED_FUNCTION_1_2();
    v44(v43);
    OUTLINED_FUNCTION_14();
    if (v52)
    {
      v149 = v42;
      v45 = OUTLINED_FUNCTION_1_2();
      v46(v45);
      OUTLINED_FUNCTION_3_1();
      v48 = v47(v152, v29, v144);
      MEMORY[0x223D57DE0](v48);
      sub_21E3E2A50();
      v49 = OUTLINED_FUNCTION_2_2();
      v50(v49);
      OUTLINED_FUNCTION_14();
      v151 = v34;
      if (v52)
      {
        v51 = sub_21E3E2EC0();
        v156 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v51, MEMORY[0x277CE04E8]);
      }

      else
      {
        v62 = sub_21E3E2EB0();
        v156 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v62, MEMORY[0x277CE04E8]);
        v63 = OUTLINED_FUNCTION_2_2();
        v64(v63);
      }

      sub_21E3D618C(&v155, &v157);
      OUTLINED_FUNCTION_3_1();
      v65(v145, v135);
      v66 = v159;
      v67 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      v68 = v67;
      v69 = v152;
      *&v155 = MEMORY[0x223D57DD0](v67, v70, v71);
      *(&v155 + 1) = v72;
      sub_21E3CEDE0(v155, v72, v73);
      sub_21E3E30C0();
      OUTLINED_FUNCTION_6_1();
      sub_21E3E3070();
      OUTLINED_FUNCTION_13_0();
      v74 = OUTLINED_FUNCTION_8_1();
      v75 = MEMORY[0x223D57DC0](v74);
      v150 = v41;
      if (v75)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          sub_21E3E2F80();
        }

        else
        {
          sub_21E3E2FA0();
        }

        v79 = v76;
      }

      else
      {
        v79 = 0;
      }

      OUTLINED_FUNCTION_11_0(v79);
      OUTLINED_FUNCTION_6_1();
      sub_21E3C7F24(v66, v29, v68 & 1);

      __swift_destroy_boxed_opaque_existential_0(&v157);
      v138 = OUTLINED_FUNCTION_4();
      v137 = v96;
      v98 = v97;
      v100 = v99;
      OUTLINED_FUNCTION_8_1();
      sub_21E3C7F24(v69, v66, v41 & 1);

      OUTLINED_FUNCTION_3_1();
      v101(v152, v144);
      v41 = v100;
      v154 = v138;
      v102 = &v157;
    }

    else
    {
      OUTLINED_FUNCTION_14();
      if (!v52)
      {
        v77 = OUTLINED_FUNCTION_1_2();
        v78(v77);
        goto LABEL_31;
      }

      v149 = v42;
      v53 = OUTLINED_FUNCTION_1_2();
      v54(v53);
      OUTLINED_FUNCTION_3_1();
      v55 = v29;
      v56 = v126;
      v58 = v57(v146, v55, v126);
      MEMORY[0x223D57E30](v58);
      sub_21E3E2A50();
      v59 = OUTLINED_FUNCTION_2_2();
      v60(v59);
      OUTLINED_FUNCTION_14();
      if (v52)
      {
        v61 = sub_21E3E2EC0();
        v156 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v61, MEMORY[0x277CE04E8]);
      }

      else
      {
        v80 = sub_21E3E2EB0();
        v156 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v80, MEMORY[0x277CE04E8]);
        v81 = OUTLINED_FUNCTION_2_2();
        v82(v81);
      }

      v83 = v119[4];
      sub_21E3D618C(&v155, &v157);
      OUTLINED_FUNCTION_3_1();
      v84(v125, v135);
      v85 = v158;
      v137 = v159;
      v120 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      OUTLINED_FUNCTION_3_1();
      v87 = v86(v83, v146, v56);
      v88 = MEMORY[0x223D57E20](v87);
      v90 = v89;
      sub_21E3D61E8();
      sub_21E3E2430();
      v91 = sub_21E3D622C(v88, v90);
      if (v91)
      {
        v92 = v91;
        sub_21E3E2430();
        sub_21E3E3290();

        v93 = sub_21E3E30D0();
      }

      else
      {

        *&v155 = MEMORY[0x223D57E10](v103);
        *(&v155 + 1) = v104;
        sub_21E3CEDE0(v155, v104, v105);
        v93 = sub_21E3E30C0();
      }

      v106 = v93;
      v107 = v94;
      v108 = v95;
      v138 = *v123;
      v138(v83, v56);
      sub_21E3E3070();
      OUTLINED_FUNCTION_13_0();
      sub_21E3C7F24(v106, v107, v108 & 1);

      v110 = MEMORY[0x223D57E00](v109);
      v151 = v34;
      v150 = v41;
      if (v110)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          sub_21E3E2F80();
        }

        else
        {
          sub_21E3E2FA0();
        }

        v112 = v111;
      }

      else
      {
        v112 = 0;
      }

      OUTLINED_FUNCTION_11_0(v112);
      OUTLINED_FUNCTION_6_1();
      sub_21E3C7F24(v85, v56, v90 & 1);

      __swift_destroy_boxed_opaque_existential_0(&v157);
      v137 = OUTLINED_FUNCTION_4();
      v120 = v113;
      v98 = v114;
      v116 = v115;
      OUTLINED_FUNCTION_8_1();
      sub_21E3C7F24(v34, v85, v41 & 1);

      v138(v146, v126);
      v41 = v116;
      v154 = v137;
      v102 = &v151;
    }

    v42 = *(v102 - 32);
    v153 = v98;
    v29 = v133;
    v39 = v132;
    v40 = v131;
    v34 = v151;
LABEL_31:
    OUTLINED_FUNCTION_3_1();
    v117(v40, v39);
    ++v34;
  }

  return v154;
}

uint64_t sub_21E3D618C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21E3D61E8()
{
  result = qword_27CEC2C08;
  if (!qword_27CEC2C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC2C08);
  }

  return result;
}

id sub_21E3D622C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21E3E34C0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_21E3E3080();
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  sub_21E3C7F24(v0, v1, v2 & 1);
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return sub_21E3E3000();
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a2;
  *(v2 - 168) = result;
  return result;
}

uint64_t type metadata accessor for AttributionItemListSnippet(uint64_t a1)
{
  result = qword_2812231C0;
  if (!qword_2812231C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D644C(uint64_t a1)
{
  sub_21E3C45D4(319);
  if (v1 <= 0x3F)
  {
    sub_21E3E2780();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3D64EC()
{
  v1 = type metadata accessor for AttributionItemListSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E3D7160(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21E3D71C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C10, &qword_21E3E48F0);
  sub_21E3D7298();
  return sub_21E3E3390();
}

uint64_t sub_21E3D6610(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItemListSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v10[3] = sub_21E3E2760();
  swift_getKeyPath();
  sub_21E3D7160(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21E3D71C4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C28, &qword_21E3E4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C30, &qword_21E3E4930);
  sub_21E3C4DA0(&qword_27CEC2C38, &qword_27CEC2C28, &qword_21E3E4928, MEMORY[0x277D83980]);
  v7 = sub_21E3E3440();
  v8 = sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_21E3E32E0();
}

uint64_t sub_21E3D686C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v48 = a1;
  v67 = a3;
  v64 = sub_21E3E2520();
  v63 = *(v64 - 8);
  v66 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributionItemListSnippet(0);
  v61 = *(v4 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21E3E22A0();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3E22E0();
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E3E3330();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C40, &qword_21E3E4938);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v13 = &v47 - v12;
  v57 = sub_21E3E3440();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21E3E2500();
  v80 = v15;
  sub_21E3CEDE0(v79, v15, v16);
  v17 = sub_21E3E30C0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v79 = v17;
  v80 = v19;
  v81 = v21 & 1;
  v82 = v23;
  v83 = KeyPath;
  v84 = 2;
  v85 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C48, &qword_21E3E4970);
  sub_21E3D7530();
  v25 = sub_21E3E30E0();
  sub_21E3C7F24(v17, v19, v21 & 1);

  v26 = MEMORY[0x277D63A60];
  v82 = MEMORY[0x277CE11C8];
  v83 = MEMORY[0x277D63A60];
  v79 = v25;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v27 = v48;
  v28 = sub_21E3E2510();
  v74 = MEMORY[0x277D837D0];
  v75 = MEMORY[0x277D63F80];
  v72 = v28;
  v73 = v29;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  sub_21E3E24D0();
  sub_21E3E3350();
  v30 = v55;
  v31 = v51;
  v32 = v56;
  (*(v55 + 104))(v51, *MEMORY[0x277D62B38], v56);
  v33 = sub_21E3D75E8(&qword_27CEC2AC0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  sub_21E3E3110();
  (*(v30 + 8))(v31, v32);
  (*(v52 + 8))(v11, v9);
  v68[0] = v9;
  v68[1] = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v53;
  v35 = sub_21E3E30E0();
  (*(v54 + 8))(v13, v34);
  v68[4] = v26;
  v68[3] = MEMORY[0x277CE11C8];
  v68[0] = v35;
  v36 = v50;
  sub_21E3E3430();
  v37 = v59;
  sub_21E3D7160(v65, v59);
  v38 = v63;
  v39 = v62;
  v40 = v64;
  (*(v63 + 16))(v62, v27, v64);
  v41 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v42 = v38;
  v43 = (v60 + *(v38 + 80) + v41) & ~*(v38 + 80);
  v44 = swift_allocObject();
  sub_21E3D71C4(v37, v44 + v41);
  (*(v42 + 32))(v44 + v43, v39, v40);
  sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v45 = v57;
  sub_21E3E3130();

  return (*(v58 + 8))(v36, v45);
}

uint64_t sub_21E3D7048(id *a1)
{
  type metadata accessor for AttributionItemListSnippet(0);
  v2 = sub_21E3E2770();
  type metadata accessor for ActionHandler(0);
  v3 = swift_allocObject();
  sub_21E3E2AE0();
  *(v3 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v2;
  v4 = sub_21E3E24C0();
  if (*a1)
  {
    v5 = v4;
    v6 = *a1;
    sub_21E3DC9B4(v5);

    swift_setDeallocating();
    return sub_21E3DD768();
  }

  else
  {
    sub_21E3E3480();
    sub_21E3D75E8(&qword_281223080, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3D7160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItemListSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D71C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItemListSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D7228()
{
  v1 = *(type metadata accessor for AttributionItemListSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21E3D6610(v2);
}

unint64_t sub_21E3D7298()
{
  result = qword_27CEC2C18;
  if (!qword_27CEC2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C10, &qword_21E3E48F0);
    sub_21E3E3440();
    sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C18);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  type metadata accessor for AttributionItemListSnippet(0);
  OUTLINED_FUNCTION_1_3();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_21E3E2780();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_21E3D744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AttributionItemListSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3D686C(a1, v6, a2);
}

uint64_t sub_21E3D74CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E3E2DA0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_21E3D7530()
{
  result = qword_27CEC2C50;
  if (!qword_27CEC2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C48, &qword_21E3E4970);
    sub_21E3C4DA0(&qword_27CEC2C58, &qword_27CEC2C60, &qword_21E3E4978, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C50);
  }

  return result;
}

uint64_t sub_21E3D75E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3D7630()
{
  v1 = *(type metadata accessor for AttributionItemListSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_21E3E2520();

  return sub_21E3D7048((v0 + v2));
}

uint64_t sub_21E3D7710@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21E3E2E30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CA0, &qword_21E3E4B68);
  sub_21E3D77CC(v2, a2 + *(v4 + 44));
  sub_21E3E2F10();
  sub_21E3E2B70();
  OUTLINED_FUNCTION_3_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CA8, &qword_21E3E4B70);
  OUTLINED_FUNCTION_0_2(v5);
  sub_21E3E2F20();
  sub_21E3E2B70();
  OUTLINED_FUNCTION_3_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB0, &qword_21E3E4B78);
  return OUTLINED_FUNCTION_0_2(v6);
}

uint64_t sub_21E3D77CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_21E3E2430();
  *&v15 = sub_21E3E3290();
  v18 = *a1;
  v19 = *(a1 + 2);
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 4);
  sub_21E3E2430();
  sub_21E3D7FC4(&v18, &v16);
  sub_21E3E3180();

  v16 = v18;
  v17 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  *&v10[*(v5 + 44)] = v15;
  sub_21E3C2A50(v10, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CC0, &qword_21E3E4B88);
  sub_21E3C2A50(v8, a2 + *(v13 + 48));
  sub_21E3C2AB8(v10);
  return sub_21E3C2AB8(v8);
}

uint64_t sub_21E3D7A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C88, &qword_21E3E4B50);
  OUTLINED_FUNCTION_1();
  (*(v11 + 16))(a3, a1);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C90, &qword_21E3E4B58) + 36));
  *v12 = KeyPath;
  v12[1] = v16;
  v12[2] = v17;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  *(v13 + 32) = a2;
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C98, &qword_21E3E4B60) + 36));
  *v14 = sub_21E3D7FB0;
  v14[1] = v13;
}

double sub_21E3D7BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21E3D7C1C(a1, a2, a3);
  sub_21E3E2DE0();
  return v4;
}

unint64_t sub_21E3D7C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC2C78;
  if (!qword_27CEC2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C78);
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

uint64_t sub_21E3D7C94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_21E3D7CE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
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

uint64_t sub_21E3D7D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_21E3D7D9C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

double sub_21E3D7EB0(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_21E3D7EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21E3D7F58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21E3D7F58()
{
  result = qword_27CEC2C80;
  if (!qword_27CEC2C80)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C80);
  }

  return result;
}

uint64_t sub_21E3D7FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E3D8040()
{
  result = qword_27CEC2CC8;
  if (!qword_27CEC2CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C98, &qword_21E3E4B60);
    sub_21E3D80F8();
    sub_21E3C4DA0(&qword_27CEC2CF0, &qword_27CEC2CF8, &qword_21E3E4BC0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2CC8);
  }

  return result;
}

unint64_t sub_21E3D80F8()
{
  result = qword_27CEC2CD0;
  if (!qword_27CEC2CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C90, &qword_21E3E4B58);
    sub_21E3C4DA0(&qword_27CEC2CD8, &qword_27CEC2C88, &qword_21E3E4B50, MEMORY[0x277CE04B0]);
    sub_21E3C4DA0(&qword_27CEC2CE0, &qword_27CEC2CE8, &qword_21E3E4BB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2CD0);
  }

  return result;
}

unint64_t sub_21E3D81DC()
{
  result = qword_27CEC2D00;
  if (!qword_27CEC2D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2CB0, &qword_21E3E4B78);
    sub_21E3D8268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D00);
  }

  return result;
}

unint64_t sub_21E3D8268()
{
  result = qword_27CEC2D08;
  if (!qword_27CEC2D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2CA8, &qword_21E3E4B70);
    sub_21E3C4DA0(&qword_27CEC2D10, &qword_27CEC2D18, qword_21E3E4BC8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_21E3D835C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_21E3D839C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_21E3D8408@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v33 = a3;
  v34 = a2;
  v36 = a6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D20, &qword_21E3E4CB8);
  MEMORY[0x28223BE20](v35);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D28, &qword_21E3E4CC0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D30, &qword_21E3E4CC8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  if (a4 && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
  {
    v19 = v18;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D38, &unk_21E3E4CD0);
    (*(*(v32 - 8) + 16))(v13, a1, v32);
    v13[*(v11 + 36)] = 0;
    v20 = swift_allocObject();
    v31 = v14;
    v21 = v33;
    v22 = v34;
    v20[2] = v34;
    v20[3] = v21;
    v20[4] = a4;
    v20[5] = a5;
    v20[6] = v19;
    v23 = sub_21E3D890C();
    v24 = a4;
    v25 = v22;

    v26 = v23;
    sub_21E3E31C0();

    sub_21E3D8A00(v13);
    v27 = v31;
    (*(v15 + 16))(v10, v17, v31);
    swift_storeEnumTagMultiPayload();
    v37 = v11;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0, MEMORY[0x277CE04B0]);
    sub_21E3E2E90();

    return (*(v15 + 8))(v17, v27);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D38, &unk_21E3E4CD0);
    (*(*(v29 - 8) + 16))(v10, a1, v29);
    swift_storeEnumTagMultiPayload();
    v30 = sub_21E3D890C();
    v37 = v11;
    v38 = v30;
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0, MEMORY[0x277CE04B0]);
    return sub_21E3E2E90();
  }
}

uint64_t sub_21E3D8834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActionHandler(0);
  v8 = swift_allocObject();

  sub_21E3E2AE0();
  *(v8 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = a4;
  if (a1)
  {
    v9 = a1;
    sub_21E3DC9B4(a5);

    swift_setDeallocating();
    return sub_21E3DD768();
  }

  else
  {
    sub_21E3E3480();
    sub_21E3D8A68();
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_21E3D890C()
{
  result = qword_281223108;
  if (!qword_281223108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D28, &qword_21E3E4CC0);
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0, MEMORY[0x277CE04B0]);
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223108);
  }

  return result;
}

uint64_t sub_21E3D8A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D28, &qword_21E3E4CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E3D8A68()
{
  result = qword_281223080;
  if (!qword_281223080)
  {
    sub_21E3E3480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223080);
  }

  return result;
}

unint64_t sub_21E3D8AC0()
{
  result = qword_2812230E0;
  if (!qword_2812230E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D40, &unk_21E3E4CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D28, &qword_21E3E4CC0);
    sub_21E3D890C();
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230E0);
  }

  return result;
}

uint64_t sub_21E3D8BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ItemListView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E3E2C80();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3DAAB0(v14);
  v15 = sub_21E3E2C70();
  (*(v11 + 8))(v14, v9);
  sub_21E3DAC7C(v2, v8);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  if (v15)
  {
    v17 = sub_21E3DB320;
  }

  else
  {
    v17 = sub_21E3DAD44;
  }

  v18 = swift_allocObject();
  sub_21E3DACE0(v8, v18 + v16);
  v19 = sub_21E3D9164();
  v21 = v20;
  v22 = sub_21E3D9314();
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4018000000000000;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D68, &qword_21E3E4E40);
  v26[1] = sub_21E3DB030(*(v2 + *(v5 + 36)));
  swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21E3DB1A4;
  *(v24 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D70, &qword_21E3E4E68);
  sub_21E3C4DA0(&qword_281223060, &qword_27CEC2D70, &qword_21E3E4E68, MEMORY[0x277D83980]);
  return sub_21E3E32E0();
}

uint64_t sub_21E3D8EC4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D78, &qword_21E3E4E70);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19[-v13];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v19[*(v12 + 36) - v13];
  *v15 = sub_21E3E2E80();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D80, &qword_21E3E4E78);
  sub_21E3D951C(a1, a2, a3, a4 & 1, a5, &v15[*(v16 + 44)]);
  sub_21E3C4DA0(&qword_27CEC2D88, &qword_27CEC2D78, &qword_21E3E4E70, MEMORY[0x277CDF0A0]);
  v17 = sub_21E3E30E0();
  sub_21E3C413C(v14, &qword_27CEC2D78, &qword_21E3E4E70);
  return v17;
}

uint64_t sub_21E3D902C(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E18, &qword_21E3E4F10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18[-v14];
  *v15 = 0;
  v15[8] = 1;
  sub_21E3D9F6C(a6, a1, a2, a3, a4 & 1, a5, &v18[*(v13 + 36) - v14]);
  sub_21E3C4DA0(&qword_2812230A8, &qword_27CEC2E18, &qword_21E3E4F10, MEMORY[0x277CDF0A0]);
  v16 = sub_21E3E30E0();
  sub_21E3C413C(v15, &qword_27CEC2E18, &qword_21E3E4F10);
  return v16;
}

uint64_t sub_21E3D9164()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ItemListView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
LABEL_3:
      v7 = sub_21E3E2E80();
      sub_21E3E2E00();
      return v7;
    }
  }

  else
  {

    sub_21E3E35D0();
    v8 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v6, 0);
    (*(v2 + 8))(v4, v1);
    if ((v10[15] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CEC2640 != -1)
  {
    swift_once();
  }

  return qword_27CEC2D48;
}

double sub_21E3D9314()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ItemListView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21E3E35D0();
    v7 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 6.0;
  if (v6)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_21E3D9478(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void (*)(void, void), uint64_t, void, uint64_t))
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_21E3D5698(a2);
    v7 = v6;
    v9 = v8;
    v11 = a3(v3, v5, v6, v8 & 1, v10);
    sub_21E3C7F24(v5, v7, v9 & 1);

    return v11;
  }

  return result;
}

uint64_t sub_21E3D951C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v28 = a3;
  v29 = a5;
  v27 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D90, &qword_21E3E4E80);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v26[-v20];
  sub_21E3D9754(a1, &v26[-v20]);
  sub_21E3D9B98(a2, v28, v27 & 1, v29, v19);
  v22 = *(v10 + 16);
  v22(v16, v21, v9);
  v22(v13, v19, v9);
  v22(a6, v16, v9);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D98, &qword_21E3E4E88);
  v22(&a6[*(v23 + 48)], v13, v9);
  v24 = *(v10 + 8);
  v24(v19, v9);
  v24(v21, v9);
  v24(v13, v9);
  return (v24)(v16, v9);
}

uint64_t sub_21E3D9754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_21E3E22B0();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21E3E3450();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_21E3E33C0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA0, &qword_21E3E4E90);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x28223BE20](v11);
  v32 = &v32 - v13;
  sub_21E3DA1D4(v3, a1, &v43);
  v15 = v43;
  v14 = v44;
  v17 = v45;
  v16 = v46;
  v18 = v47;
  LODWORD(a1) = sub_21E3E2EC0();
  KeyPath = swift_getKeyPath();
  v50 = v18;
  v43 = v15;
  v44 = v14;
  v45 = v17;
  v46 = v16;
  LOBYTE(v47) = v18;
  HIDWORD(v47) = a1;
  v48 = KeyPath;
  v49 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DB0, &qword_21E3E4ED0);
  sub_21E3DB470();
  v20 = sub_21E3E30E0();
  sub_21E3DB6E0(v15, v14, v17, v16);

  v46 = MEMORY[0x277CE11C8];
  v47 = MEMORY[0x277D63A60];
  v43 = v20;
  sub_21E3E33B0();
  *v8 = 0;
  v8[1] = 0;
  v21 = v34;
  v22 = v36;
  (*(v34 + 104))(v8, *MEMORY[0x277D63EE0], v36);
  v23 = sub_21E3D2C18();
  v25 = v32;
  v24 = v33;
  sub_21E3E3170();
  (*(v21 + 8))(v8, v22);
  v26 = v24;
  (*(v35 + 8))(v10, v24);
  v27 = v39;
  v28 = v40;
  v29 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D62F38], v41);
  v43 = v26;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_21E3E3120();
  (*(v28 + 8))(v27, v29);
  return (*(v38 + 8))(v25, v30);
}

uint64_t sub_21E3D9B98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v28 = a3;
  v34 = a5;
  v7 = sub_21E3E22B0();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21E3E3450();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_21E3E33C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA0, &qword_21E3E4E90);
  v17 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v19 = &v27[-v18];
  v35 = a1;
  v36 = a2;
  v37 = v28 & 1;
  v38 = v29;
  LOWORD(v39) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA8, &qword_21E3E4E98);
  sub_21E3DB3EC();
  v20 = sub_21E3E30E0();
  v38 = MEMORY[0x277CE11C8];
  v39 = MEMORY[0x277D63A60];
  v35 = v20;
  sub_21E3E33B0();
  *v12 = 0;
  v12[1] = 0;
  (*(v10 + 104))(v12, *MEMORY[0x277D63EE0], v9);
  v21 = sub_21E3D2C18();
  sub_21E3E3170();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v23 = v31;
  v22 = v32;
  v24 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x277D62F38], v33);
  v35 = v13;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  sub_21E3E3120();
  (*(v22 + 8))(v23, v24);
  return (*(v17 + 8))(v19, v25);
}

uint64_t sub_21E3D9F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v39 = a6;
  v36 = a5;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D90, &qword_21E3E4E80);
  v33 = *(v35 - 8);
  v10 = v33;
  v11 = MEMORY[0x28223BE20](v35);
  v40 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &KeyPath - v13;
  sub_21E3DA1D4(a1, a2, &v41);
  v15 = v41;
  v16 = v42;
  v29 = v42;
  v30 = v41;
  v17 = v43;
  v32 = v44;
  v18 = v45;
  v31 = sub_21E3E2EC0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v41) = v18;
  v34 = v14;
  sub_21E3D9B98(v37, v38, v36 & 1, v39, v14);
  v19 = *(v10 + 16);
  LOBYTE(v10) = v41;
  v20 = v40;
  v21 = v35;
  v19(v40, v14, v35);
  *a7 = v15;
  *(a7 + 8) = v16;
  v22 = v32;
  *(a7 + 16) = v17;
  *(a7 + 24) = v22;
  *(a7 + 32) = v10;
  *(a7 + 36) = v31;
  *(a7 + 40) = KeyPath;
  *(a7 + 48) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E20, &unk_21E3E4F18);
  v19((a7 + *(v23 + 48)), v20, v21);
  v25 = v29;
  v24 = v30;
  sub_21E3DB770(v30, v29, v17, v22);
  v26 = *(v33 + 8);

  v26(v34, v21);
  v26(v40, v21);
  sub_21E3DB6E0(v24, v25, v17, v22);
}

double sub_21E3DA1D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21E3E2280();
  MEMORY[0x28223BE20](v6 - 8);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E08, &qword_21E3E4F00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = sub_21E3E2DD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for ItemListView(0) + 20);
  v17 = *v16;
  v18 = MEMORY[0x277D84F90];
  if (*(v16 + 8) != 1)
  {

    sub_21E3E35D0();
    v26[0] = v12;
    v22 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    v18 = MEMORY[0x277D84F90];
    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v17, 0);
    (*(v13 + 8))(v15, v26[0]);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = xmmword_21E3E4CF0;
    v28 = 0;
    v29 = v18;
    v30 = 1;
    goto LABEL_6;
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v31 = a2;
  v19 = sub_21E3E2250();
  sub_21E3DB71C(v19, v20, v21);
  sub_21E3E21A0();
  sub_21E3C4DA0(&qword_281223728, &qword_27CEC2E08, &qword_21E3E4F00, MEMORY[0x277CC8CE8]);
  sub_21E3E3610();
  (*(v9 + 8))(v11, v8);
  v31 = v27;
  MEMORY[0x223D58910](46, 0xE100000000000000);
  v27 = v31;
  v28 = 0;
  v29 = v18;
  v30 = 0;
LABEL_6:
  sub_21E3E2E90();
  result = *&v31;
  v24 = v32;
  v25 = v33;
  *a3 = v31;
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  return result;
}

uint64_t sub_21E3DA560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21E3DA5DC(a1, a2, a3);
  sub_21E3E2DE0();
  return v4;
}

unint64_t sub_21E3DA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812230F0;
  if (!qword_2812230F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ItemListView.ListStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for ItemListView(uint64_t a1)
{
  result = qword_2812235E8;
  if (!qword_2812235E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3DA790(uint64_t a1)
{
  sub_21E3DA88C(319);
  if (v1 <= 0x3F)
  {
    sub_21E3DA8E4(319, &qword_281223130, &type metadata for ItemListView.ListStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21E3DA8E4(319, &qword_2812230B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21E3DA934(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21E3DA88C(uint64_t a1)
{
  if (!qword_281223128)
  {
    sub_21E3E2C80();
    v1 = sub_21E3E2BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_281223128);
    }
  }
}

void sub_21E3DA8E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21E3DA934(uint64_t a1)
{
  if (!qword_281223068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D58, qword_21E3E4D40);
    v1 = sub_21E3E3530();
    if (!v2)
    {
      atomic_store(v1, &qword_281223068);
    }
  }
}

unint64_t sub_21E3DA99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC2D60;
  if (!qword_27CEC2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D60);
  }

  return result;
}

uint64_t sub_21E3DA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21E3DA99C(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21E3DAA7C()
{
  v0 = sub_21E3E2E70();
  result = sub_21E3E2E10();
  qword_27CEC2D48 = v0;
  unk_27CEC2D50 = result;
  return result;
}

uint64_t sub_21E3DAAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E3E2DD0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_21E3DB7BC(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21E3E2C80();
    OUTLINED_FUNCTION_1();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    sub_21E3E35D0();
    v15 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_21E3DAC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DACE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DAD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  OUTLINED_FUNCTION_0();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v39 - v8;
  v10 = 0;
  v11 = 0;
  v44 = v12;
  v42 = *(v12 + 80);
  v13 = MEMORY[0x277D84F90];
  v43 = (v42 + 32) & ~v42;
  v14 = MEMORY[0x277D84F90] + v43;
  v15 = *(a1 + 16);
  v40 = v15;
  v41 = &v39 - v8;
  while (1)
  {
    if (v15 == v11)
    {
      v36 = v13[3];
      if (v36 >= 2)
      {
        v37 = v36 >> 1;
        v35 = __OFSUB__(v37, v10);
        v38 = v37 - v10;
        if (v35)
        {
          goto LABEL_35;
        }

        v13[2] = v38;
      }

      return v13;
    }

    sub_21E3E29A0();
    OUTLINED_FUNCTION_1();
    v17 = *(v16 + 16);
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11;
    v19 = *(v2 + 48);
    *v6 = v11;
    v17(&v6[v19], v18);
    result = sub_21E3DB82C(v6, v9);
    if (v10)
    {
      v20 = v13;
    }

    else
    {
      v21 = v13[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v22 = v2;
      v23 = a1;
      v24 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E28, &qword_21E3E4F28);
      v26 = v43;
      v27 = *(v44 + 72);
      v20 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v20);
      if (!v27)
      {
        goto LABEL_33;
      }

      v28 = result - v26;
      if (result - v26 == 0x8000000000000000 && v27 == -1)
      {
        goto LABEL_34;
      }

      v30 = v28 / v27;
      v20[2] = v25;
      v20[3] = 2 * (v28 / v27);
      v31 = v20 + v26;
      v32 = v13[3];
      v33 = (v32 >> 1) * v27;
      if (v13[2])
      {
        if (v20 < v13 || v31 >= v13 + v43 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v13[2] = 0;
      }

      v14 = &v31[v33];
      v10 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - (v32 >> 1);

      a1 = v23;
      v2 = v22;
      v15 = v40;
      v9 = v41;
    }

    v35 = __OFSUB__(v10--, 1);
    if (v35)
    {
      break;
    }

    result = sub_21E3DB82C(v9, v14);
    v14 += *(v44 + 72);
    ++v11;
    v13 = v20;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_21E3DB030(void *result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = result[2];
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = result + 4;
  while (1)
  {
    if (v4 == v2)
    {
      v17 = v3[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v1);
        v19 = v18 - v1;
        if (v16)
        {
          goto LABEL_27;
        }

        v3[2] = v19;
      }

      return v3;
    }

    v7 = v6[v2];
    if (v1)
    {
      result = sub_21E3E2430();
      v8 = v3;
    }

    else
    {
      v9 = v3[3];
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      v11 = v10 <= 1 ? 1 : v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E10, &qword_21E3E4F08);
      v8 = swift_allocObject();
      v12 = (_swift_stdlib_malloc_size(v8) - 32) / 16;
      v8[2] = v11;
      v8[3] = 2 * v12;
      v13 = v8 + 4;
      v14 = v3[3] >> 1;
      v5 = &v8[2 * v14 + 4];
      v1 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
      if (v3[2])
      {
        if (v8 != v3 || v13 >= &v3[2 * v14 + 4])
        {
          memmove(v13, v3 + 4, 16 * v14);
        }

        sub_21E3E2430();
        v3[2] = 0;
      }

      else
      {
        sub_21E3E2430();
      }
    }

    v16 = __OFSUB__(v1--, 1);
    if (v16)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5 += 2;
    ++v2;
    v3 = v8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21E3DB1AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ItemListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21E3E2C80();
    OUTLINED_FUNCTION_1();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  sub_21E3C7B10(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3DB338(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v12 = *(type metadata accessor for ItemListView(0) - 8);
  v13 = v6 + ((*(v12 + 80) + 16) & ~*(v12 + 80));

  return a6(a1, a2, a3, a4 & 1, a5, v13);
}

unint64_t sub_21E3DB3EC()
{
  result = qword_281223100;
  if (!qword_281223100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DA8, &qword_21E3E4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223100);
  }

  return result;
}

unint64_t sub_21E3DB470()
{
  result = qword_27CEC2DB8;
  if (!qword_27CEC2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DB0, &qword_21E3E4ED0);
    sub_21E3DB528();
    sub_21E3C4DA0(&qword_27CEC2DF8, &qword_27CEC2E00, &qword_21E3E4EF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DB8);
  }

  return result;
}

unint64_t sub_21E3DB528()
{
  result = qword_27CEC2DC0;
  if (!qword_27CEC2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DC8, &qword_21E3E4ED8);
    sub_21E3DB5E0();
    sub_21E3C4DA0(&qword_27CEC2DE8, &qword_27CEC2DF0, &qword_21E3E4EF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DC0);
  }

  return result;
}

unint64_t sub_21E3DB5E0()
{
  result = qword_27CEC2DD0;
  if (!qword_27CEC2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DD8, &qword_21E3E4EE0);
    sub_21E3DB664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DD0);
  }

  return result;
}

unint64_t sub_21E3DB664()
{
  result = qword_2812230E8;
  if (!qword_2812230E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DE0, &qword_21E3E4EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230E8);
  }

  return result;
}

uint64_t sub_21E3DB6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21E3C7F24(a1, a2, a3 & 1);
}

unint64_t sub_21E3DB71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_281223070;
  if (!qword_281223070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223070);
  }

  return result;
}

uint64_t sub_21E3DB770(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21E3DB7AC(a1, a2, a3 & 1);

  return sub_21E3E2430();
}

uint64_t sub_21E3DB7AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_21E3E2430();
  }
}

uint64_t sub_21E3DB7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DB82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DB89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21E3E2520();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_21E3DB944@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2160();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  sub_21E3DC554();
  sub_21E3E3570();
  sub_21E3E3590();
  sub_21E3DC5B8(&qword_281223730, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v9 = sub_21E3E34B0();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v12 = sub_21E3E35A0();
    sub_21E3DC600(v13, a1);
    v12(v16, 0);
    v11 = 0;
  }

  v10(v8, v2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v14);
}

uint64_t sub_21E3DBB5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E38, &qword_21E3E4F38);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v1);
  v63 = (&v58 - v2);
  v64 = sub_21E3E3310();
  OUTLINED_FUNCTION_0();
  v60 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E40, &qword_21E3E4F40);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  OUTLINED_FUNCTION_7(v11);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - v13;
  v66 = sub_21E3E2630();
  OUTLINED_FUNCTION_0();
  v62 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v61 = v17 - v16;
  v18 = sub_21E3E2130();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_21E3E2170();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v32);
  sub_21E3E2650();
  sub_21E3E2150();
  (*(v27 + 8))(v31, v25);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_3();
  sub_21E3DC5B8(v33, v34, MEMORY[0x277D047A0]);
  sub_21E3E2140();

  (*(v20 + 8))(v24, v18);
  if (sub_21E3DC32C() != 1)
  {
    v38 = OUTLINED_FUNCTION_3_3();
    v39(v38);
    return 0;
  }

  v35 = v65;
  sub_21E3DB944(v65);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_21E3DC4F4(v35, &qword_27CEC2E40, &qword_21E3E4F40);
    v37 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v66);
LABEL_6:
    v42 = OUTLINED_FUNCTION_3_3();
    v43(v42);
    v44 = &qword_27CEC2E48;
    v45 = &qword_21E3E4F48;
    v46 = v37;
LABEL_7:
    sub_21E3DC4F4(v46, v44, v45);
    return 0;
  }

  v40 = *(v36 + 48);
  v37 = v67;
  sub_21E3DC484(v35, v67);
  sub_21E3DC4F4(v35 + v40, &qword_27CEC2E60, &qword_21E3E4FD0);
  v41 = v66;
  if (__swift_getEnumTagSinglePayload(v37, 1, v66) == 1)
  {
    goto LABEL_6;
  }

  v49 = v61;
  v48 = v62;
  (*(v62 + 32))(v61, v37, v41);
  v50 = v63;
  sub_21E3C3448(v63);
  (*(v48 + 8))(v49, v41);
  v51 = OUTLINED_FUNCTION_3_3();
  v52(v51);
  v53 = v64;
  if (__swift_getEnumTagSinglePayload(v50, 1, v64) == 1)
  {
    v44 = &qword_27CEC2E38;
    v45 = &qword_21E3E4F38;
    v46 = v50;
    goto LABEL_7;
  }

  v54 = v60;
  v55 = *(v60 + 32);
  v56 = v58;
  v55(v58, v50, v53);
  v57 = v59;
  v55(v59, v56, v53);
  if ((*(v54 + 88))(v57, v53) != *MEMORY[0x277D63AD0])
  {
    (*(v54 + 8))(v57, v53);
    return 0;
  }

  (*(v54 + 96))(v57, v53);
  return *v57;
}