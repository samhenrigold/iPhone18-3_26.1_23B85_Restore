uint64_t sub_21677363C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88, &unk_217072A10);
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216773708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_2167737A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216773844(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF688, "zM\v");
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_21677390C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF688, "zM\v");
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167739E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216773A24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  v3 = OUTLINED_FUNCTION_86_1();

  return __swift_storeEnumTagSinglePayload(v3, a2, a2, v4);
}

uint64_t sub_216773BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_216773C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216773CF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = sub_217007884();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_216773D70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216773DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_216773EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_216774014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_2167740B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216774158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08, &qword_21707C9A0);
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167741F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08, &qword_21707C9A0);
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167743B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_61_21(v3 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216774448(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_2167744E4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFD98, "$$\v");
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFDA0, "$$\v");
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) != a2)
      {
        return OUTLINED_FUNCTION_61_21(v3 + a3[7]);
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216774618(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFD98, "$$\v");
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACFDA0, "$$\v");
      OUTLINED_FUNCTION_17();
      if (*(v10 + 84) != a3)
      {
        *(v4 + *(a4 + 28) + 8) = a2;
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_216774750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC8, &qword_217022DA0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167747F4(uint64_t a1, uint64_t a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC8, &qword_217022DA0);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_216774898(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_2167748DC()
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21677491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F50, &unk_217015430);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F48, &qword_217015428);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216774A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F50, &unk_217015430);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F48, &qword_217015428);
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216774B74()
{
  OUTLINED_FUNCTION_44_35();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_13_94(*(v2 + 20));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_216774BFC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_216774C94()
{
  OUTLINED_FUNCTION_44_35();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_13_94(*(v2 + 24));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_216774D1C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_216774E00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216774E44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_216774E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD180, &qword_217070530);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216774F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD180, &qword_217070530);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = sub_217007884();
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216774FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD170, &unk_217070520);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD178, &qword_21707A6A0);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167750C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD170, &unk_217070520);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD178, &qword_21707A6A0);
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216775234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    v9 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_11_1();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_216775310()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      *(v3 + 8) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2167753D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_21677549C(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    }

    OUTLINED_FUNCTION_32_4();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_216775568(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_216775604()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_216775694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18, &unk_217072A20);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216775738()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F18, &unk_217072A20);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216775820(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

char *sub_21677587C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_21677589C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AttributedDateRange.Style(uint64_t result, int a2, int a3)
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

uint64_t sub_21677592C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_2167759F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_216775F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getFACircleStateControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
    return FamilyCircleUILibrary();
  }

  return result;
}

uint64_t FamilyCircleUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278225A28;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFACircleContextClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleContextClass_block_invoke_cold_1();
    return __getFACircleEventTypeInitiateSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2167762B8()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7();
    if (!v5)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v10 = sub_21700F784();
      MEMORY[0x21CE9F490](v10);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v11);
    v13 = OUTLINED_FUNCTION_3_18(v12, v18);
    v14(v13);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776E04(v19, v0, &qword_27CAB62D8, &qword_21701C700);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E0, &qword_217012D30);
    v16 = OUTLINED_FUNCTION_12_8(v15);
    v17(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62E8, &qword_217012D38);
    v8 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v9 + 16))(&v2[v8], v4);
    *v2 = v6;
    *(v2 + 1) = v3;
    sub_216776E04(v1, v0, &qword_27CAB62D8, &qword_21701C700);
  }

  OUTLINED_FUNCTION_26();
}

void sub_2167764F0()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_7();
    if (!v4)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v12 = sub_21700F784();
      MEMORY[0x21CE9F490](v12);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v13);
    v15 = OUTLINED_FUNCTION_3_18(v14, v20);
    v16(v15);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776DA0(v21, v0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F0, &unk_217012D40);
    v18 = OUTLINED_FUNCTION_12_8(v17);
    v19(v18);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F8, &unk_217054350);
    v7 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v8 + 16))(&v1[v7], v3);
    *v1 = v5;
    *(v1 + 1) = v2;
    OUTLINED_FUNCTION_26();

    sub_216776DA0(v9, v10);
  }
}

void sub_216776728()
{
  if (OUTLINED_FUNCTION_2_15())
  {
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7();
    if (!v5)
    {
      OUTLINED_FUNCTION_18_2();

      OUTLINED_FUNCTION_6_12();
      MEMORY[0x21CE9F490](58, 0xE100000000000000);
      v10 = sub_21700F784();
      MEMORY[0x21CE9F490](v10);
    }

    sub_21700EA74();
    OUTLINED_FUNCTION_1();
    MEMORY[0x28223BE20](v11);
    v13 = OUTLINED_FUNCTION_3_18(v12, v18);
    v14(v13);
    sub_21700DF14();
    OUTLINED_FUNCTION_11_7();
    sub_216776E04(v19, v0, &qword_27CAB6300, &unk_217012D50);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6308, &unk_21706C870);
    v16 = OUTLINED_FUNCTION_12_8(v15);
    v17(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6310, &unk_217012D60);
    v8 = *(OUTLINED_FUNCTION_21_8() + 20);
    sub_21700EA74();
    OUTLINED_FUNCTION_9();
    (*(v9 + 16))(&v2[v8], v4);
    *v2 = v6;
    *(v2 + 1) = v3;
    sub_216776E04(v1, v0, &qword_27CAB6300, &unk_217012D50);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216776960@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21700AEF4();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_2170098F4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2167769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x21CE9AB10](a5, a2, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6318, &qword_217023F70);
  sub_216776E60();
  sub_216777054(&qword_27CAB6328, &qword_27CAB6318, &qword_217023F70);
  return sub_21700A434();
}

uint64_t sub_216776AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x21CE9AB10](a5, a2, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6330, &qword_217012D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6338, &qword_217012D78);
  sub_216776EFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6358, &qword_217012D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6360, &qword_217012D88);
  sub_216777054(&qword_27CAB6368, &qword_27CAB6360, &qword_217012D88);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21700A434();
}

double sub_216776C4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169974F0();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v2, v13, v11, v14, v15).n128_u64[0];
  return result;
}

double sub_216776C7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169976FC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v2, v13, v11, v14, v15).n128_u64[0];
  return result;
}

double sub_216776CAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_2169978DC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v2, v13, v11, v14, v15).n128_u64[0];
  return result;
}

double sub_216776CDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_3(a1, a2);
  v2.n128_f64[0] = sub_216997AAC();
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v2, v13, v11, v14, v15).n128_u64[0];
  return result;
}

unint64_t sub_216776D0C()
{
  result = qword_27CAB62C8;
  if (!qword_27CAB62C8)
  {
    sub_2170087B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB62C8);
  }

  return result;
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

uint64_t sub_216776DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPageContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216776E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_216776E60()
{
  result = qword_27CAB6320;
  if (!qword_27CAB6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6320);
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

unint64_t sub_216776EFC()
{
  result = qword_27CAB6340;
  if (!qword_27CAB6340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6330, &qword_217012D70);
    sub_216776FB8();
    sub_21677700C(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6340);
  }

  return result;
}

unint64_t sub_216776FB8()
{
  result = qword_27CAB6348;
  if (!qword_27CAB6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6348);
  }

  return result;
}

uint64_t sub_21677700C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216777054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2167770A8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1 & 1;
  *(a7 + 33) = a2;
  return sub_2167770D0(a3, a4, a5, a6);
}

uint64_t sub_2167770D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_216777114(result, a2, a3 & 1);

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216777114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_21700DF14();
  }
}

uint64_t sub_216777128(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CE9FA10](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21677717C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700EC04();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2167771D8()
{
  v1 = OUTLINED_FUNCTION_10_2();
  result = sub_216775984(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_216777200()
{
  OUTLINED_FUNCTION_10_2();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_216777228@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_28();
  *a1 = result;
  return result;
}

uint64_t sub_216777250(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4_5(a1);
  result = sub_2167C8B34(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_216777300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167771D4();
  *a1 = result;
  return result;
}

uint64_t sub_216777340@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10_4();
  *a1 = result;
  return result;
}

uint64_t sub_216777368(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_217006754();
}

uint64_t sub_2167773EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216775984(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216777418(uint64_t a1)
{
  sub_21677700C(&qword_27CAB66D0, type metadata accessor for Name, &unk_217013088);
  sub_21677700C(&qword_27CAB66D8, type metadata accessor for Name, &unk_217013028);

  return sub_21700F5D4();
}

uint64_t sub_2167774D4()
{
  v1 = OUTLINED_FUNCTION_10_2();
  result = sub_216E6953C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2167774FC(uint64_t a1)
{
  sub_21677700C(&qword_27CAB6800, type metadata accessor for InfoKey, &unk_217013984);
  sub_21677700C(&qword_27CAB6808, type metadata accessor for InfoKey, &unk_2170138D8);

  return sub_21700F5D4();
}

void *sub_2167775B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2167775C8(uint64_t a1)
{
  sub_21677700C(&qword_27CAB6830, type metadata accessor for ICURLResponseStatusCode, &unk_217013514);
  sub_21677700C(&qword_27CAB6838, type metadata accessor for ICURLResponseStatusCode, &unk_2170134BC);
  return sub_21700F5D4();
}

uint64_t sub_216777684(uint64_t a1)
{
  sub_21677700C(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
  sub_21677700C(&qword_27CAB6828, type metadata accessor for Key, &unk_217013684);

  return sub_21700F5D4();
}

uint64_t sub_216777740(uint64_t a1)
{
  sub_21677700C(&qword_27CAB6810, type metadata accessor for ICSubscriptionStatusOfferType, &unk_2170137E8);
  sub_21677700C(&qword_27CAB6818, type metadata accessor for ICSubscriptionStatusOfferType, &unk_217013790);

  return sub_21700F5D4();
}

uint64_t sub_2167777FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21700E4D4();

  *a2 = v3;
  return result;
}

uint64_t sub_216777844(uint64_t a1)
{
  sub_21677700C(&qword_27CAB6868, type metadata accessor for OpenExternalURLOptionsKey, &unk_217013BB8);
  sub_21677700C(&unk_27CAB6870, type metadata accessor for OpenExternalURLOptionsKey, &unk_217013B0C);

  return sub_21700F5D4();
}

uint64_t sub_2167779A4(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  swift_getWitnessTable();
  sub_217006764();
  return sub_21700F944();
}

uint64_t sub_216777A44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216777A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
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

uint64_t sub_216777C10(uint64_t a1, uint64_t a2)
{
  sub_21700E514();
  sub_21700E614();
}

uint64_t sub_216777C64(uint64_t a1, uint64_t a2)
{
  sub_21700E514();
  sub_21700F8F4();
  sub_21700E614();
  v2 = sub_21700F944();

  return v2;
}

uint64_t sub_216777CD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700E514();
  v4 = v3;
  if (v2 == sub_21700E514() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21700F7D4();
  }

  return v7 & 1;
}

uint64_t sub_216777D5C(uint64_t a1)
{
  v1 = sub_21700E514();
  v2 = MEMORY[0x21CE9F510](v1);

  return v2;
}

uint64_t sub_216777D94(uint64_t a1, id *a2)
{
  v3 = sub_21700E504();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_216777E14(uint64_t a1)
{
  sub_21700E514();
  v1 = sub_21700E4D4();

  return v1;
}

uint64_t type metadata accessor for GetInfoAction(uint64_t a1)
{
  result = qword_280E43F40;
  if (!qword_280E43F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167784A8(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D90EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21677852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v28 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_21700CE04();
  v34 = v7;
  v35 = v5;
  v22 = *(v7 + 16);
  v22(v12, a2, v5);
  v23 = v31;
  sub_21700D224();
  if (v23)
  {
    (*(v34 + 8))(a2, v35);
  }

  else
  {
    (*(v27 + 32))(v30, v21, v17);
    type metadata accessor for ContentDescriptor(0);
    sub_21700CE04();
    v24 = v35;
    v22(v29, a2, v35);
    type metadata accessor for GetInfoAction(0);
    sub_2167788C4();
    sub_21700D734();
    (*(v34 + 8))(a2, v24);
  }

  return (*(v32 + 8))(v36, v33);
}

uint64_t sub_216778844@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_2167788C4()
{
  result = qword_280E40390[0];
  if (!qword_280E40390[0])
  {
    type metadata accessor for ContentDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E40390);
  }

  return result;
}

uint64_t sub_21677891C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216778970(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2167789D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_217006DE4();
  v4[17] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[18] = v6;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = sub_217006E04();
  v4[21] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[22] = v8;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = sub_217006E24();
  v4[26] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[27] = v10;
  v4[28] = swift_task_alloc();
  v11 = sub_217006BF4();
  v4[29] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[30] = v12;
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for PlayGenericMusicItemCollectionAction(0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_21700EA34();
  v4[35] = sub_21700EA24();
  v14 = sub_21700E9B4();
  v4[36] = v14;
  v4[37] = v13;

  return MEMORY[0x2822009F8](sub_216778C1C, v14, v13);
}

uint64_t sub_216778C1C()
{
  v37 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216EAE764();
  v30 = v34;
  v32 = v33;
  v1 = v35;
  v2 = v36;
  *(v0 + 304) = v34;
  *(v0 + 312) = v1;
  v3 = v1;
  v4 = v2;
  *(v0 + 320) = v2;
  if (qword_27CAB5880 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 112);
  v7 = sub_217007CA4();
  *(v0 + 328) = __swift_project_value_buffer(v7, qword_27CAB6A08);
  sub_21677A330(v6, v5);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 272);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136446210;
    v14 = *v11;
    v15 = sub_2170067A4();
    v16 = MEMORY[0x21CE9F660](v14, v15);
    v18 = v17;
    sub_21677A394(v11);
    v19 = sub_2166A85FC(v16, v18, &v33);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_216679000, v8, v9, "Playing collection %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_21677A394(v11);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 112);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
  v24 = *v21;
  *(v0 + 336) = *v21;
  *(v0 + 88) = v24;
  *(v0 + 408) = *(v21 + *(v20 + 24));
  *(v0 + 56) = v32;
  *(v0 + 64) = v30;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v25 = *(v23 + 64);
  sub_21700DF14();
  sub_21700DF14();
  sub_21677A3F0(v3, v4);
  v31 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38, &unk_217015A70);
  v28 = sub_21677A45C();
  *v26 = v0;
  v26[1] = sub_216778F9C;

  return v31(v0 + 88, v0 + 408, v0 + 56, v27, v28, v22, v23);
}

uint64_t sub_216778F9C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  v3[44] = v0;

  sub_21677A4C0(v3[7], v2[8], v2[9], v2[10]);

  v5 = v3[36];
  v6 = v3[37];
  if (v0)
  {
    v7 = sub_216779328;
  }

  else
  {
    v7 = sub_216779120;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216779120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v28;
  a24 = v29;
  a22 = v25;

  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if (v30())
  {
    sub_21677A330(v25[14], v25[33]);
    v31 = sub_217007C84();
    v32 = sub_21700EDA4();
    v33 = OUTLINED_FUNCTION_9_3(v32);
    v34 = v25[33];
    if (v33)
    {
      v24 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      a13 = v26;
      *v24 = 136446210;
      v35 = *v34;
      v36 = sub_2170067A4();
      v27 = MEMORY[0x21CE9F660](v35, v36);
      v38 = v37;
      sub_21677A394(v34);
      v39 = sub_2166A85FC(v27, v38, &a13);

      *(v24 + 4) = v39;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_21677A394(v34);
    }

    OUTLINED_FUNCTION_4_6();
  }

  OUTLINED_FUNCTION_1_1();
  sub_21677A510(v27, v26);
  v45 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v46 + 104))(v24, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v25 + 2);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216779328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 352);
  *(v12 + 96) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_8();
  if (swift_dynamicCast())
  {
    if ((*(*(v12 + 240) + 88))(*(v12 + 248), *(v12 + 232)) == *MEMORY[0x277D2A8C8])
    {
      v16 = *(v12 + 240);
      v15 = *(v12 + 248);
      v18 = *(v12 + 224);
      v17 = *(v12 + 232);
      v19 = *(v12 + 208);
      v20 = *(v12 + 216);

      (*(v16 + 96))(v15, v17);
      (*(v20 + 32))(v18, v15, v19);
      v21 = sub_217007C84();
      v22 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v22))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_5_7();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = swift_task_alloc();
      *(v12 + 360) = v28;
      *v28 = v12;
      v28[1] = sub_2167795DC;
      OUTLINED_FUNCTION_7_3();

      return v32(v29, v30, v31, v32, v33, v34, v35, v36, sub_2167A82C0, a10, a11, a12);
    }

    v41 = *(v12 + 240);
    v40 = *(v12 + 248);
    v42 = *(v12 + 232);

    v43 = OUTLINED_FUNCTION_8();
    sub_21677A510(v43, v44);

    (*(v41 + 8))(v40, v42);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_8();
    sub_21677A510(v38, v39);
  }

  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_2167795DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_216779DEC;
  }

  else
  {
    v7 = sub_216779714;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216779714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 200);
  v28 = *(v24 + 184);
  v29 = *(v24 + 168);
  v30 = *(*(v24 + 176) + 16);
  v30(*(v24 + 192), v27, v29);
  v30(v28, v27, v29);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v24 + 184);
  v34 = *(v24 + 192);
  v37 = *(v24 + 168);
  v36 = *(v24 + 176);
  if (v33)
  {
    a9 = *(v24 + 160);
    a10 = *(v24 + 136);
    HIDWORD(a11) = v32;
    v38 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v38 = 136446466;
    v39 = sub_217006DC4();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v34, v37);
    v43 = sub_2166A85FC(v39, v41, &a13);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    sub_217006DF4();
    v44 = sub_21700E594();
    v46 = v45;
    v42(v35, v37);
    v47 = sub_2166A85FC(v44, v46, &a13);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_216679000, v31, BYTE4(a11), "Performing dialog action %{public}s with kind %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v42 = *(v36 + 8);
    v42(v35, v37);
    v42(v34, v37);
  }

  *(v24 + 376) = v42;
  v49 = *(v24 + 152);
  v48 = *(v24 + 160);
  v50 = *(v24 + 136);
  v51 = *(v24 + 144);
  sub_217006DF4();
  (*(v51 + 104))(v49, *MEMORY[0x277D2A928], v50);
  *(v24 + 409) = sub_217006DD4() & 1;
  v52 = *(v51 + 8);
  v52(v49, v50);
  v52(v48, v50);
  v53 = *(v24 + 40);
  v54 = *(v24 + 48);
  __swift_project_boxed_opaque_existential_1((v24 + 16), v53);
  *(v24 + 384) = (*(v54 + 112))(v53, v54);
  v55 = swift_task_alloc();
  *(v24 + 392) = v55;
  *v55 = v24;
  v55[1] = sub_216779A40;
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282189CE0](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216779A40()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_216779EE4;
  }

  else
  {
    v7 = sub_216779B94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216779B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t *), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 376);
  v29 = *(v24 + 216);
  v28 = *(v24 + 224);
  v31 = *(v24 + 200);
  v30 = *(v24 + 208);
  v32 = *(v24 + 168);

  v27(v31, v32);
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v34(v28, v30);

  v35 = *(v24 + 409);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if ((v36() & 1) != 0 && (v35 & 1) == 0)
  {
    sub_21677A330(*(v24 + 112), *(v24 + 264));
    v37 = sub_217007C84();
    v38 = sub_21700EDA4();
    v39 = OUTLINED_FUNCTION_9_3(v38);
    v40 = *(v24 + 264);
    if (v39)
    {
      v31 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      a13 = v27;
      *v31 = 136446210;
      v41 = *v40;
      v42 = sub_2170067A4();
      v33 = MEMORY[0x21CE9F660](v41, v42);
      v44 = v43;
      sub_21677A394(v40);
      v45 = sub_2166A85FC(v33, v44, &a13);

      *(v31 + 4) = v45;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_21677A394(v40);
    }

    OUTLINED_FUNCTION_4_6();
  }

  OUTLINED_FUNCTION_1_1();
  sub_21677A510(v33, v27);
  v51 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v52 + 104))(v31, v51);
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216779DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v14 = v12[27];
  v13 = v12[28];
  v15 = v12[26];

  v16 = OUTLINED_FUNCTION_8();
  sub_21677A510(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216779EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v29 = v12[47];
  v14 = v12[27];
  v13 = v12[28];
  v16 = v12[25];
  v15 = v12[26];
  v17 = v12[21];

  v18 = OUTLINED_FUNCTION_8();
  sub_21677A510(v18, v19);
  v29(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_21677A004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21677A0BC;

  return sub_2167789D0(a1, a2, a3, v8);
}

uint64_t sub_21677A0BC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

unint64_t sub_21677A1A8(uint64_t a1)
{
  result = sub_2166E1A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21677A1D0(uint64_t a1)
{
  result = sub_21677A1F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21677A1F8()
{
  result = qword_27CAB6A20;
  if (!qword_27CAB6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A20);
  }

  return result;
}

unint64_t sub_21677A250()
{
  result = qword_27CAB6A28;
  if (!qword_27CAB6A28)
  {
    type metadata accessor for PlayGenericMusicItemCollectionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A28);
  }

  return result;
}

uint64_t sub_21677A2B0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB6A08);
  __swift_project_value_buffer(v0, qword_27CAB6A08);
  return sub_217007C94();
}

uint64_t sub_21677A330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayGenericMusicItemCollectionAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21677A394(uint64_t a1)
{
  v2 = type metadata accessor for PlayGenericMusicItemCollectionAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21677A3F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21677A404(a1, a2);
  }

  return a1;
}

uint64_t sub_21677A404(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_21677A45C()
{
  result = qword_27CAB6A40;
  if (!qword_27CAB6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38, &unk_217015A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A40);
  }

  return result;
}

void sub_21677A4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_21677A510(a3, a4);
  }
}

uint64_t sub_21677A510(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21677A524(result, a2);
  }

  return result;
}

uint64_t sub_21677A524(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MusicPageProvider.__allocating_init(configuration:appTabs:appDestinationPageProvider:)()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_35_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_86_0();
  MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:)();
  return v0;
}

void MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v20 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_107_3();
  v5 = v4;
  v6 = *(v3 + 88);
  OUTLINED_FUNCTION_16();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_85(v10);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  *&v21 = *(v15 + 80);
  *(&v21 + 1) = v6;
  v22 = *(v5 + 96);
  type metadata accessor for InternalBootstrap(0, &v21);
  v21 = v19;
  v22 = v18;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v16 = type metadata accessor for Bootstrap(0);
  OUTLINED_FUNCTION_91_1(v16);
  Bootstrap.init(configuration:)(&v21);
  (*(v8 + 16))(v1, v20, v6);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  OUTLINED_FUNCTION_55_2(0);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_0();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v17);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v20, v6);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.__allocating_init(configuration:appTabs:appDestinationPageProvider:appPlayer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_3();
  v4 = swift_allocObject();
  MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:appPlayer:)();
  return v4;
}

void MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:appPlayer:)()
{
  OUTLINED_FUNCTION_49();
  v22 = v1;
  v21 = v2;
  v3 = *v0;
  v4 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  OUTLINED_FUNCTION_85(v10);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  *&v24 = *(v15 + 80);
  *(&v24 + 1) = v4;
  v25 = *(v3 + 96);
  type metadata accessor for InternalBootstrap(0, &v24);
  v24 = v20[1];
  v25 = v20[0];
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v16 = type metadata accessor for Bootstrap(0);
  OUTLINED_FUNCTION_91_1(v16);
  Bootstrap.init(configuration:)(&v24);
  v17 = v21;
  (*(v6 + 16))(v9, v21, v4);
  v18 = v22;
  sub_216681AA4(v22, &v24);
  v23 = 0;
  OUTLINED_FUNCTION_55_2(0);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_0();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v19);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  (*(v6 + 8))(v17, v4);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.__allocating_init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_35_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_94_3();
  MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)();
  return v0;
}

void MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)()
{
  OUTLINED_FUNCTION_49();
  v13 = v1;
  v3 = v2;
  v5 = v4;
  v14 = v4;
  v6 = *v0;
  v7 = *v0;
  v8 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_46_2();
  v21[0] = *(v6 + 80);
  v21[1] = v8;
  v22 = *(v7 + 96);
  type metadata accessor for InternalBootstrap(0, v21);
  (*(v10 + 16))(v0, v5, v8);
  sub_216681B04(v3, v21, &qword_27CAB6A50, &qword_217013DB0);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  *&v15[40] = 0u;
  v16 = 0u;
  sub_216681B04(v13, v15, &qword_27CAB6A58, &qword_217013DB8);

  swift_unknownObjectRetain();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v12);

  swift_unknownObjectRelease();
  sub_216699778(v13, &qword_27CAB6A58);
  sub_216699778(v3, &qword_27CAB6A50);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void MusicPageProvider.__allocating_init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_35_3();
  swift_allocObject();
  MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)();
  OUTLINED_FUNCTION_26();
}

void MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)()
{
  OUTLINED_FUNCTION_49();
  v22 = v2;
  v4 = v3;
  v19 = v5;
  v23 = v6;
  v8 = v7;
  v20 = v7;
  v10 = v9;
  v21 = v9;
  v11 = *v0;
  v12 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  v27[0] = *(v16 + 80);
  v27[1] = v12;
  v28 = *(v11 + 96);
  type metadata accessor for InternalBootstrap(0, v27);
  (*(v14 + 16))(v1, v10, v12);
  sub_216681AA4(v8, v27);
  sub_216681AA4(v23, &v26);
  sub_216681B04(v19, &v25, &qword_27CAB6A60, &unk_217013DC0);
  sub_216681B04(v4, &v24, &qword_27CAB6A58, &qword_217013DB8);

  swift_unknownObjectRetain();
  v17 = v22;
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v18);

  swift_unknownObjectRelease();

  sub_216699778(v4, &qword_27CAB6A58);
  sub_216699778(v19, &qword_27CAB6A60);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  (*(v14 + 8))(v21, v12);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.start()()
{

  Bootstrap.load()();
}

void MusicPageProvider.page(for:stackAuthority:)()
{
  OUTLINED_FUNCTION_49();
  v46[4] = v1;
  v46[0] = v2;
  v47 = v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68, &unk_21701D690);
  v5 = *(v4 + 96);
  v60[0] = *(v4 + 80);
  v60[1] = v5;
  type metadata accessor for SearchPageView(255, v60);
  type metadata accessor for FlowActionPageView(255);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_19_0();
  v46[2] = sub_217009564();
  v46[1] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78, &qword_217013DD8);
  OUTLINED_FUNCTION_19_0();
  v46[3] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80, &unk_217013DE0);
  OUTLINED_FUNCTION_72_0();
  v6 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v46 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  OUTLINED_FUNCTION_72_0();
  v12 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v46 - v20;
  sub_2166BA08C();
  v46[0] = type metadata accessor for MusicStackAuthority(0);
  OUTLINED_FUNCTION_11_8();
  v24 = sub_2166B5148(v22, &qword_27CAB6A68, &unk_21701D690, v23);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v28 = sub_2166B52EC(v26, v27, &unk_217018DE4);
  v58 = WitnessTable;
  v59 = v28;
  OUTLINED_FUNCTION_43_5();
  v29 = swift_getWitnessTable();
  v30 = sub_2166B53E0();
  v56 = v29;
  v57 = v30;
  v31 = swift_getWitnessTable();
  v54 = v24;
  v55 = v31;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v35 = sub_2166B5148(v33, &qword_27CAB6A78, &qword_217013DD8, v34);
  v52 = v32;
  v53 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_2166B58AC();
  v50 = v36;
  v51 = v37;
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v39, v40, &protocol conformance descriptor for MusicStackAuthority);
  sub_21700A654();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_7_5();
  v43 = sub_21669E098(v41, &qword_27CAB6A88, &qword_21706EE30, v42);
  v48 = v38;
  v49 = v43;
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v44 = *(v14 + 16);
  v44(v21, v18, v12);
  v45 = *(v14 + 8);
  v45(v18, v12);
  v44(v47, v21, v12);
  v45(v21, v12);
  OUTLINED_FUNCTION_26();
}

{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_80_1(v2, v3);
  v4 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  v222 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v7 = *(v6 + 96);
  v8 = *(v0 + 104);
  v216 = v9;
  v215 = v10;
  v214 = v7;
  v238 = v7;
  v239 = v8;
  v213 = v8;
  v11 = OUTLINED_FUNCTION_22_11();
  type metadata accessor for SearchPageView(v11, v12);
  type metadata accessor for FlowActionPageView(255);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78, &qword_217013DD8);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80, &unk_217013DE0);
  OUTLINED_FUNCTION_72_0();
  v13 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v221 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  OUTLINED_FUNCTION_72_0();
  v217 = v13;
  v17 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v220 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  OUTLINED_FUNCTION_11_8();
  v23 = sub_2166B5148(v21, &qword_27CAB6A68, &unk_21701D690, v22);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v234 = WitnessTable;
  v235 = sub_2166B52EC(v25, v26, &unk_217018DE4);
  OUTLINED_FUNCTION_42_3();
  v232 = swift_getWitnessTable();
  v233 = sub_2166B53E0();
  v230 = v23;
  v231 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v228 = v27;
  v229 = sub_2166B5148(v28, &qword_27CAB6A78, &qword_217013DD8, v29);
  OUTLINED_FUNCTION_38();
  v226 = swift_getWitnessTable();
  v227 = sub_2166B58AC();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v224 = v30;
  v225 = sub_21669E098(v31, &qword_27CAB6A88, &qword_21706EE30, v32);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v33 = v17;
  swift_getOpaqueTypeMetadata2();
  v34 = OUTLINED_FUNCTION_24_0();
  v35 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_60_1(v35, v36);
  v37 = OUTLINED_FUNCTION_24_0();
  v38 = OUTLINED_FUNCTION_2_16(v37);
  OUTLINED_FUNCTION_60_1(v38, v39);
  v40 = OUTLINED_FUNCTION_12_9();
  v41 = OUTLINED_FUNCTION_0_15(v40);
  OUTLINED_FUNCTION_60_1(v41, v42);
  v43 = OUTLINED_FUNCTION_15_1();
  v44 = OUTLINED_FUNCTION_2_16(v43);
  OUTLINED_FUNCTION_60_1(v44, v45);
  v46 = OUTLINED_FUNCTION_12_9();
  v47 = OUTLINED_FUNCTION_0_15(v46);
  OUTLINED_FUNCTION_60_1(v47, v48);
  v49 = OUTLINED_FUNCTION_15_1();
  v50 = OUTLINED_FUNCTION_2_16(v49);
  OUTLINED_FUNCTION_60_1(v50, v51);
  v52 = OUTLINED_FUNCTION_12_9();
  v53 = OUTLINED_FUNCTION_0_15(v52);
  OUTLINED_FUNCTION_60_1(v53, v54);
  v55 = OUTLINED_FUNCTION_15_1();
  v56 = OUTLINED_FUNCTION_2_16(v55);
  OUTLINED_FUNCTION_60_1(v56, v57);
  v58 = OUTLINED_FUNCTION_12_9();
  v59 = OUTLINED_FUNCTION_0_15(v58);
  OUTLINED_FUNCTION_60_1(v59, v60);
  v61 = OUTLINED_FUNCTION_15_1();
  v62 = OUTLINED_FUNCTION_2_16(v61);
  OUTLINED_FUNCTION_60_1(v62, v63);
  v64 = OUTLINED_FUNCTION_12_9();
  v65 = OUTLINED_FUNCTION_0_15(v64);
  OUTLINED_FUNCTION_60_1(v65, v66);
  v67 = OUTLINED_FUNCTION_15_1();
  v68 = OUTLINED_FUNCTION_2_16(v67);
  OUTLINED_FUNCTION_60_1(v68, v69);
  v70 = OUTLINED_FUNCTION_12_9();
  v71 = OUTLINED_FUNCTION_0_15(v70);
  OUTLINED_FUNCTION_60_1(v71, v72);
  v73 = OUTLINED_FUNCTION_15_1();
  v74 = OUTLINED_FUNCTION_2_16(v73);
  OUTLINED_FUNCTION_60_1(v74, v75);
  v76 = OUTLINED_FUNCTION_12_9();
  v77 = OUTLINED_FUNCTION_0_15(v76);
  OUTLINED_FUNCTION_60_1(v77, v78);
  v79 = OUTLINED_FUNCTION_15_1();
  v80 = OUTLINED_FUNCTION_2_16(v79);
  OUTLINED_FUNCTION_60_1(v80, v81);
  v82 = OUTLINED_FUNCTION_12_9();
  v83 = OUTLINED_FUNCTION_0_15(v82);
  OUTLINED_FUNCTION_60_1(v83, v84);
  v85 = OUTLINED_FUNCTION_15_1();
  v86 = OUTLINED_FUNCTION_2_16(v85);
  OUTLINED_FUNCTION_60_1(v86, v87);
  v88 = OUTLINED_FUNCTION_12_9();
  v89 = OUTLINED_FUNCTION_0_15(v88);
  OUTLINED_FUNCTION_60_1(v89, v90);
  v91 = OUTLINED_FUNCTION_15_1();
  v92 = OUTLINED_FUNCTION_2_16(v91);
  OUTLINED_FUNCTION_60_1(v92, v93);
  v94 = OUTLINED_FUNCTION_12_9();
  v95 = OUTLINED_FUNCTION_0_15(v94);
  OUTLINED_FUNCTION_60_1(v95, v96);
  v97 = OUTLINED_FUNCTION_15_1();
  v98 = OUTLINED_FUNCTION_2_16(v97);
  OUTLINED_FUNCTION_60_1(v98, v99);
  v100 = OUTLINED_FUNCTION_12_9();
  v101 = OUTLINED_FUNCTION_0_15(v100);
  OUTLINED_FUNCTION_60_1(v101, v102);
  v103 = OUTLINED_FUNCTION_15_1();
  v104 = OUTLINED_FUNCTION_2_16(v103);
  OUTLINED_FUNCTION_60_1(v104, v105);
  v106 = OUTLINED_FUNCTION_12_9();
  v107 = OUTLINED_FUNCTION_0_15(v106);
  OUTLINED_FUNCTION_60_1(v107, v108);
  v109 = OUTLINED_FUNCTION_15_1();
  v110 = OUTLINED_FUNCTION_2_16(v109);
  OUTLINED_FUNCTION_60_1(v110, v111);
  v112 = OUTLINED_FUNCTION_12_9();
  v113 = OUTLINED_FUNCTION_0_15(v112);
  OUTLINED_FUNCTION_60_1(v113, v114);
  v115 = OUTLINED_FUNCTION_15_1();
  v116 = OUTLINED_FUNCTION_2_16(v115);
  OUTLINED_FUNCTION_60_1(v116, v117);
  v118 = OUTLINED_FUNCTION_12_9();
  v119 = OUTLINED_FUNCTION_0_15(v118);
  OUTLINED_FUNCTION_60_1(v119, v120);
  v121 = OUTLINED_FUNCTION_15_1();
  v122 = OUTLINED_FUNCTION_2_16(v121);
  OUTLINED_FUNCTION_60_1(v122, v123);
  v124 = OUTLINED_FUNCTION_12_9();
  v125 = OUTLINED_FUNCTION_0_15(v124);
  OUTLINED_FUNCTION_60_1(v125, v126);
  v127 = OUTLINED_FUNCTION_15_1();
  v128 = OUTLINED_FUNCTION_2_16(v127);
  OUTLINED_FUNCTION_60_1(v128, v129);
  v130 = OUTLINED_FUNCTION_12_9();
  v131 = OUTLINED_FUNCTION_0_15(v130);
  OUTLINED_FUNCTION_60_1(v131, v132);
  v133 = OUTLINED_FUNCTION_15_1();
  v134 = OUTLINED_FUNCTION_2_16(v133);
  OUTLINED_FUNCTION_60_1(v134, v135);
  v136 = OUTLINED_FUNCTION_12_9();
  v137 = OUTLINED_FUNCTION_0_15(v136);
  OUTLINED_FUNCTION_60_1(v137, v138);
  v139 = OUTLINED_FUNCTION_15_1();
  v140 = OUTLINED_FUNCTION_2_16(v139);
  OUTLINED_FUNCTION_60_1(v140, v141);
  v142 = OUTLINED_FUNCTION_12_9();
  v143 = OUTLINED_FUNCTION_0_15(v142);
  OUTLINED_FUNCTION_60_1(v143, v144);
  v145 = OUTLINED_FUNCTION_15_1();
  v146 = OUTLINED_FUNCTION_2_16(v145);
  OUTLINED_FUNCTION_60_1(v146, v147);
  v148 = OUTLINED_FUNCTION_12_9();
  v236 = v34;
  v237 = v148;
  v149 = OUTLINED_FUNCTION_60_1(0, &v236);
  OUTLINED_FUNCTION_1();
  v208 = v150;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v151);
  v153 = &v206 - v152;
  v236 = v34;
  v237 = v148;
  v154 = OUTLINED_FUNCTION_24_0();
  v210 = v149;
  v236 = v149;
  v237 = v154;
  v207 = v154;
  v212 = OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_1();
  v211 = v155;
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_77();
  v209 = v157 - v158;
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_70(&v206 - v160);
  sub_21700D584();
  sub_2166B6328(v223);
  v161 = v219;
  sub_2166BA08C();
  type metadata accessor for MusicStackAuthority(0);
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v162, v163, &protocol conformance descriptor for MusicStackAuthority);
  v164 = v218;
  v165 = v217;
  OUTLINED_FUNCTION_86_0();
  sub_21700A654();
  OUTLINED_FUNCTION_67();
  v166(v161, v165);
  v219 = v153;
  sub_2166C3314();
  OUTLINED_FUNCTION_67();
  v167(v164, v33);
  v168 = [objc_opt_self() sharedApplication];
  v169 = [v168 connectedScenes];

  v170 = sub_216685F4C(0, &qword_280E29B30, 0x277D75940);
  v171 = sub_2166CB5AC();
  OUTLINED_FUNCTION_86_0();
  v172 = sub_21700EB84();

  v218 = v172;
  v220 = v170;
  if ((v172 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21700F264();
    OUTLINED_FUNCTION_86_0();
    sub_21700EBC4();
    v172 = v236;
    v173 = v237;
    v171 = v238;
    v174 = v239;
    v175 = v240;
  }

  else
  {
    v173 = v172 + 56;
    OUTLINED_FUNCTION_81();
    v175 = v176 & v177;
    sub_21700DF14();
    v174 = 0;
  }

  v217 = v171;
  v178 = (v171 + 64) >> 6;
  v223 = *MEMORY[0x277D772C8];
  if (v172 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v179 = v174;
  v180 = v175;
  v181 = v174;
  if (v175)
  {
LABEL_9:
    v182 = (v180 - 1) & v180;
    v183 = *(*(v172 + 48) + ((v181 << 9) | (8 * __clz(__rbit64(v180)))));
    if (v183)
    {
      while (1)
      {
        v222 = v174;
        v221 = v175;
        v185 = v172;
        v186 = [v183 session];
        v187 = [v186 role];

        v188 = sub_21700E514();
        v190 = v189;
        if (v188 == sub_21700E514() && v190 == v191)
        {
          break;
        }

        v193 = sub_21700F7D4();

        if (v193)
        {
          goto LABEL_22;
        }

        v174 = v181;
        v175 = v182;
        v172 = v185;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v184 = sub_21700F2E4();
        if (!v184)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_102_2(v184);
        OUTLINED_FUNCTION_117_1();
        v183 = v241;
        v181 = v174;
        v182 = v175;
        if (!v241)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    v194 = OUTLINED_FUNCTION_109_0();
    sub_216687978(v194);

    v195 = v210;
    v196 = v207;
    sub_21700A1D4();

    OUTLINED_FUNCTION_67();
    v197 = OUTLINED_FUNCTION_38();
    v198(v197);
    v241 = v195;
    v242 = v196;
    swift_getOpaqueTypeConformance2();
    v199 = OUTLINED_FUNCTION_72_0();
    type metadata accessor for PageHostingController(v199, v212, v200, v201);
    v202 = OUTLINED_FUNCTION_92_1();
    v203(v202);
    v241 = v216;
    v242 = v215;
    OUTLINED_FUNCTION_89_1(v243);
    sub_2166CBBF4(v173, &v241);
    v204 = OUTLINED_FUNCTION_98();
    v205(v204);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    while (1)
    {
      v181 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      if (v181 >= v178)
      {
LABEL_20:
        v183 = 0;
        goto LABEL_22;
      }

      v180 = *(v173 + 8 * v181);
      ++v179;
      if (v180)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t MusicPageProvider.albumRelatedContentProvider(for:)()
{
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for ContentDescriptor(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_88(v0 + v2, v6, v7, v5);
  v8 = OUTLINED_FUNCTION_41_3(4);
  v9 = type metadata accessor for AlbumDetailRecommendedShelvesIntent(v8);
  v23[3] = v9;
  v23[4] = sub_2166B52EC(&qword_27CAB6AB0, type metadata accessor for AlbumDetailRecommendedShelvesIntent, &unk_217048DB4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_40_3(boxed_opaque_existential_1);
  v11 = *(v9 + 20);
  v12 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_88(v1 + v11, v13, v14, v12);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_52_1();
  v15 = type metadata accessor for RelatedContentProvider(0);
  v16 = OUTLINED_FUNCTION_91_1(v15);
  sub_21700DF14();

  OUTLINED_FUNCTION_93_3();
  sub_216E494F8(v17, v18, v19);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_82_2();
  sub_216699778(v20, v21);
  return v16;
}

uint64_t MusicPageProvider.playlistRelatedContentProvider(for:)()
{
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for ContentDescriptor(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_88(v0 + v2, v6, v7, v5);
  v8 = OUTLINED_FUNCTION_41_3(14);
  v9 = type metadata accessor for PlaylistDetailRecommendedShelvesIntent(v8);
  v23[3] = v9;
  v23[4] = sub_2166B52EC(&qword_27CAB6AC0, type metadata accessor for PlaylistDetailRecommendedShelvesIntent, &unk_217045AC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_40_3(boxed_opaque_existential_1);
  v11 = *(v9 + 20);
  v12 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_88(v1 + v11, v13, v14, v12);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_52_1();
  v15 = type metadata accessor for RelatedContentProvider(0);
  v16 = OUTLINED_FUNCTION_91_1(v15);
  sub_21700DF14();

  OUTLINED_FUNCTION_93_3();
  sub_216E494F8(v17, v18, v19);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_82_2();
  sub_216699778(v20, v21);
  return v16;
}

uint64_t sub_21677B744(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  OUTLINED_FUNCTION_52_1();
  v9 = *(v8 + *(v7 + 208));
  v11 = v10(0);
  OUTLINED_FUNCTION_91_1(v11);
  sub_21700DF14();
  sub_21700DF14();

  return a4(v13, a2, v9);
}

void *MusicPageProvider.popoverProvider(context:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  v4 = *(v3 + *(v2 + 208));
  type metadata accessor for PopoverProvider();
  swift_allocObject();
  sub_21700DF14();

  return sub_216DF1918(a1, v4);
}

uint64_t MusicPageProvider.publishEngagementEvent(event:)(void *a1)
{
  sub_21683A160();
  v2 = OUTLINED_FUNCTION_110();
  type metadata accessor for UnifiedMessages.Coordinator(v2);
  sub_21700D4B4();
  if (v6)
  {
    v3 = a1[3];
    v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
    sub_216A07094(v4, v6, v3);
  }
}

uint64_t MusicPageProvider.reportFeatureEngagementEvent(_:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = *a1;
  sub_21683A160();
  type metadata accessor for UnifiedMessages.Coordinator(0);
  sub_21700D4B4();
  if (v13)
  {
    v6 = sub_21700EA74();
    OUTLINED_FUNCTION_88(v1, v7, v8, v6);
    sub_21700EA34();

    v9 = sub_21700EA24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v13;
    *(v10 + 40) = v5;
    sub_21677BBA0();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_21677BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_21700EA34();
  *(v5 + 32) = sub_21700EA24();
  *(v5 + 40) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21677BAB8, a4, 0);
}

uint64_t sub_21677BAB8()
{
  OUTLINED_FUNCTION_31();
  sub_2169FCA1C((v0 + 40));
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21677BB48, v2, v1);
}

uint64_t sub_21677BB48()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_21677BBA0()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = &qword_21701B9F0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_93_3();
  sub_216681B04(v11, v12, v13, &qword_21701B9F0);
  v14 = sub_21700EA74();
  v15 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v15, v16, v14);
  if (&qword_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    v8 = sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v17 + 8))(v0, v14);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_119_2(ObjectType);
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v19 = swift_allocObject();
      *(v19 + 16) = v7;
      *(v19 + 24) = v5;

      if (v8 | v0)
      {
        OUTLINED_FUNCTION_53_3();
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_27_3(v20);
      swift_task_create();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  *(v21 + 24) = v5;
  if (v8 | v0)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677BDF8()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_118_0();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v11, v12, v10);
  if (&qword_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v0, v10);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_119_2(ObjectType);
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v15 = swift_allocObject();
      *(v15 + 16) = v7;
      *(v15 + 24) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
      OUTLINED_FUNCTION_84_3();
      if (v16)
      {
        OUTLINED_FUNCTION_53_3();
      }

      OUTLINED_FUNCTION_27_3(v16);
      OUTLINED_FUNCTION_115_3(v17, v18, v19);
      OUTLINED_FUNCTION_47();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  OUTLINED_FUNCTION_84_3();
  if (v21)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677C03C()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_118_0();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v11, v12, v10);
  if (&qword_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v0, v10);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_119_2(ObjectType);
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v15 = swift_allocObject();
      *(v15 + 16) = v7;
      *(v15 + 24) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98, &unk_21705E490);
      OUTLINED_FUNCTION_84_3();
      if (v16)
      {
        OUTLINED_FUNCTION_53_3();
      }

      OUTLINED_FUNCTION_27_3(v16);
      OUTLINED_FUNCTION_115_3(v17, v18, v19);
      OUTLINED_FUNCTION_47();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98, &unk_21705E490);
  OUTLINED_FUNCTION_84_3();
  if (v21)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.OpenURLResult.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t sub_21677C318(uint64_t a1)
{
  sub_21700F8F4();
  MusicPageProvider.OpenURLResult.hash(into:)();
  return sub_21700F944();
}

uint64_t MusicPageProvider.openURL(_:referrerInfo:)()
{
  OUTLINED_FUNCTION_33();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  sub_21700EA34();
  v1[6] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v6 = sub_21700E9B4();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21677C3E8, v6, v5);
}

uint64_t sub_21677C3E8()
{
  OUTLINED_FUNCTION_33();
  v6 = v0;
  sub_21677C6BC(&v5);
  if (v5)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_21677C4D8;

    return sub_21683A20C();
  }

  else
  {
    v3 = *(v0 + 16);

    *v3 = 0;
    OUTLINED_FUNCTION_23();

    return v4();
  }
}

uint64_t sub_21677C4D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21677C660;
  }

  else
  {
    v7 = sub_21677C608;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21677C608()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677C660()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21677C6BC@<X0>(char *a2@<X8>)
{
  v128 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v119 = *(v2 - 8);
  v120 = v2;
  MEMORY[0x28223BE20](v2);
  v118 = &v103 - v3;
  v4 = sub_21700D3B4();
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x28223BE20](v4);
  v115 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21700D284();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v103 - v9;
  v113 = type metadata accessor for SearchAction(0);
  MEMORY[0x28223BE20](v113);
  v108 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v124 = &v103 - v12;
  v110 = type metadata accessor for SelectTabAction(0);
  MEMORY[0x28223BE20](v110);
  v123 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2170059B4();
  v14 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v103 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC8, &unk_2170142A0);
  MEMORY[0x28223BE20](v19 - 8);
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v103 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  MEMORY[0x28223BE20](v24 - 8);
  v121 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v103 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v103 - v30;
  v32 = sub_217005E94();
  v34 = v33;
  sub_2170059E4();
  v35 = sub_217005E74();
  if (!v36)
  {
    sub_216699778(v31, &qword_27CAB6BD0);
LABEL_26:

    goto LABEL_27;
  }

  v37 = v35;
  v38 = v36;
  v127 = v31;

  v39 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v39 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    sub_216699778(v127, &qword_27CAB6BD0);
    goto LABEL_26;
  }

  v40 = v37 == 0x70612E636973756DLL && v38 == 0xEF6D6F632E656C70;
  if (v40 || (sub_21700F7D4() & 1) != 0 || (v37 == 0xD000000000000010 ? (v41 = v38 == 0x8000000217081B70) : (v41 = 0), v41))
  {
  }

  else
  {
    v42 = sub_21700F7D4();

    if ((v42 & 1) == 0)
    {
      v43 = v127;
LABEL_24:
      result = sub_216699778(v43, &qword_27CAB6BD0);
LABEL_27:
      v49 = 1;
LABEL_78:
      *v128 = v49;
      return result;
    }
  }

  v45 = sub_217005EA4() == 0x6863726165732FLL && v44 == 0xE700000000000000;
  v46 = v127;
  if (v45)
  {
  }

  else
  {
    v47 = sub_21700F7D4();

    if ((v47 & 1) == 0)
    {
      v43 = v46;
      goto LABEL_24;
    }
  }

  v50 = *(v122 + 40);
  v51 = sub_21683A160();
  type metadata accessor for ObjectGraph(0);
  v122 = v51;
  sub_21700E094();
  sub_216681B04(v46, v28, &qword_27CAB6BD0, &unk_2170142B0);
  v52 = sub_217005AB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v52);
  v105 = v7;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v28, &qword_27CAB6BD0);
LABEL_41:
    v62 = 2;
LABEL_42:
    v63 = v121;
    sub_216681B04(v46, v121, &qword_27CAB6BD0, &unk_2170142B0);
    if (__swift_getEnumTagSinglePayload(v63, 1, v52) == 1)
    {
      sub_216699778(v63, &qword_27CAB6BD0);
      v64 = 0;
    }

    else
    {
      v64 = sub_2170059C4();
      result = (*(*(v52 - 8) + 8))(v63, v52);
      if (v64)
      {
        LODWORD(v121) = v62;
        v104 = v50;
        v65 = 0;
        v66 = *(v64 + 16);
        v67 = (v14 + 8);
        v68 = v130;
        while (1)
        {
          if (v66 == v65)
          {

            v75 = 1;
            v76 = v106;
            goto LABEL_70;
          }

          if (v65 >= *(v64 + 16))
          {
            goto LABEL_82;
          }

          (*(v14 + 16))(v129, v64 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v65, v68);
          if (sub_217005994() == 1836213620 && v69 == 0xE400000000000000)
          {
            break;
          }

          v71 = sub_21700F7D4();

          if (v71)
          {
            goto LABEL_69;
          }

          v68 = v130;
          result = (*v67)(v129, v130);
          ++v65;
        }

LABEL_69:

        v76 = v106;
        v68 = v130;
        (*(v14 + 32))(v106, v129, v130);
        v75 = 0;
LABEL_70:
        __swift_storeEnumTagSinglePayload(v76, v75, 1, v68);
        if (__swift_getEnumTagSinglePayload(v76, 1, v68) == 1)
        {
          sub_216699778(v76, &qword_27CAB6BC8);
          v64 = 0;
          v72 = 0;
        }

        else
        {
          v64 = sub_2170059A4();
          v72 = v82;
          (*v67)(v76, v68);
        }

        LOBYTE(v62) = v121;
        goto LABEL_74;
      }
    }

    v72 = 0;
LABEL_74:
    v83 = v123;
    sub_21700D234();
    v84 = v110;
    *(v83 + *(v110 + 20)) = 3;

    v85 = sub_21669DAC4();

    v86 = v109;
    sub_21700D234();
    if (v72)
    {
      v87 = v64;
    }

    else
    {
      v87 = 0;
    }

    v88 = v108;
    *v108 = v87;
    *(v88 + 8) = v72;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0u;
    *(v88 + 64) = 0;
    v89 = v113;
    *(v88 + *(v113 + 24)) = v62;
    (*(v111 + 32))(v88 + *(v89 + 20), v86, v112);
    *(v88 + *(v89 + 28)) = (v85 & 1) == 0;
    v90 = v124;
    sub_216782640(v88, v124);
    sub_21700D234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_217013D90;
    *(v91 + 56) = v84;
    *(v91 + 64) = sub_2166B52EC(qword_280E42060, type metadata accessor for SelectTabAction, &protocol conformance descriptor for SelectTabAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v91 + 32));
    sub_2167826A4(v83, boxed_opaque_existential_1);
    *(v91 + 96) = v89;
    *(v91 + 104) = sub_2166B52EC(qword_280E44778, type metadata accessor for SearchAction, &unk_217046710);
    v93 = __swift_allocate_boxed_opaque_existential_1((v91 + 72));
    sub_2167826A4(v90, v93);
    v94 = v115;
    sub_21700D394();
    v95 = v117;
    v131[3] = v117;
    v131[4] = MEMORY[0x277D21D10];
    v96 = __swift_allocate_boxed_opaque_existential_1(v131);
    v97 = v116;
    (*(v116 + 16))(v96, v94, v95);
    v99 = v118;
    v98 = v119;
    v100 = v120;
    (*(v119 + 104))(v118, *MEMORY[0x277D21E18], v120);
    v101 = v125;
    v102 = v126;
    sub_21700D5E4();

    (*(v98 + 8))(v99, v100);
    (*(v97 + 8))(v94, v95);
    sub_216782700(v124, type metadata accessor for SearchAction);
    sub_216782700(v123, type metadata accessor for SelectTabAction);
    (*(v114 + 8))(v101, v102);
    sub_216699778(v127, &qword_27CAB6BD0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v131);
    v49 = 0;
    goto LABEL_78;
  }

  v54 = sub_2170059C4();
  result = (*(*(v52 - 8) + 8))(v28, v52);
  if (!v54)
  {
    goto LABEL_41;
  }

  v103 = v52;
  v104 = v50;
  v55 = 0;
  v56 = *(v54 + 16);
  v57 = (v14 + 8);
  v58 = v130;
  while (1)
  {
    if (v56 == v55)
    {

      v73 = 1;
      v46 = v127;
      v74 = v107;
      goto LABEL_60;
    }

    if (v55 >= *(v54 + 16))
    {
      break;
    }

    (*(v14 + 16))(v18, v54 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v55, v58);
    if (sub_217005994() == 0x656372756F73 && v59 == 0xE600000000000000)
    {

LABEL_59:

      v74 = v107;
      v58 = v130;
      (*(v14 + 32))(v107, v18, v130);
      v73 = 0;
      v46 = v127;
LABEL_60:
      v52 = v103;
      __swift_storeEnumTagSinglePayload(v74, v73, 1, v58);
      if (__swift_getEnumTagSinglePayload(v74, 1, v58) == 1)
      {
        sub_216699778(v74, &qword_27CAB6BC8);
        v62 = 2;
        v50 = v104;
      }

      else
      {
        sub_2170059A4();
        v77 = v74;
        v79 = v78;
        (*v57)(v77, v58);
        if (v79)
        {
          v80 = sub_21700F5E4();

          if (v80 == 1)
          {
            v81 = 1;
          }

          else
          {
            v81 = 2;
          }

          if (v80)
          {
            v62 = v81;
          }

          else
          {
            v62 = 0;
          }
        }

        else
        {
          v62 = 2;
        }

        v50 = v104;
        v52 = v103;
      }

      goto LABEL_42;
    }

    v61 = sub_21700F7D4();

    if (v61)
    {
      goto LABEL_59;
    }

    v58 = v130;
    result = (*v57)(v18, v130);
    ++v55;
  }

  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_21677D5F0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[9] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21678275C;
  }

  else
  {
    v5[10] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D700;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677D700()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for NoticeManager();
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_71_0();
  sub_21700E094();
  sub_2167C5A50();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677D7B0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[9] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D970;
  }

  else
  {
    v5[10] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D8C0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677D8C0()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_71_0();
  sub_21700E094();
  sub_21692ABB8();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677D970()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

Swift::Void __swiftcall MusicPageProvider.performSearch(for:in:)(Swift::String_optional a1, MusicUI::SearchScope_optional in)
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_216699778(v2, &qword_27CABA820);
    if (qword_280E2C138 != -1)
    {
      OUTLINED_FUNCTION_54_5(&qword_280E2C138);
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_280E2C140);
    v17 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_2166A85FC(0xD000000000000016, 0x8000000217081990, &v24);
      _os_log_impl(&dword_216679000, v17, v18, "'%{public}s' was not performed.  Unable to construct base URL", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_109_0();
    v22(v21);
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8, &qword_217013E50);
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();
      sub_217005EB4();
    }

    if (v15 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8, &qword_217013E50);
      OUTLINED_FUNCTION_110();
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();

      sub_217005EB4();
    }

    sub_21677C6BC(&v23 + 7);
    (*(v11 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_26();
}

Swift::Void __swiftcall MusicPageProvider.reloadArtistFavoritesShelf()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v1, v6, v7, v5);
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_21677E95C();
}

uint64_t sub_21677DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21700EA34();
  v4[4] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21677DF78, v6, v5);
}

uint64_t sub_21677DF78()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_2166DE4E0();
}

uint64_t sub_21677E004()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_21677E1B8;
  }

  else
  {
    v5[9] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_21677E114;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677E114()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for TasteStateChangePublisher();
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_38();
  sub_21700E094();
  sub_21700CC34();

  OUTLINED_FUNCTION_23();

  return v1();
}

uint64_t sub_21677E1B8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_21677E268()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_95_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  sub_216681B04(v5, v1, &unk_27CABFAC0, &qword_21701B9F0);
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v1, v10);
  }

  v15 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21700E9B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_21700E5D4();
      v3(0);

      if (v18 | v16)
      {
        OUTLINED_FUNCTION_57_3();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_27_3(v19);
      swift_task_create();

      sub_216699778(v5, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v5, &unk_27CABFAC0);
  v3(0);
  if (v18 | v16)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E4E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_64_3(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_114_1();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
  }

  v16 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    v17 = 0;
    v19 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_216699778(v3, &unk_27CABFAC0);
    v26 = OUTLINED_FUNCTION_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_104_1();
    if (v30)
    {
      OUTLINED_FUNCTION_56_5();
      v32[9] = v17;
      v32[10] = v19;
    }

    else
    {
      v31 = 0;
    }

    OUTLINED_FUNCTION_66_1(v28, v31, v29);
    goto LABEL_14;
  }

  swift_getObjectType();
  v17 = sub_21700E9B4();
  v19 = v18;
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  v20 = sub_21700E5D4() + 32;

  v21 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_104_1();
  if (v25)
  {
    OUTLINED_FUNCTION_57_3();
    v32[5] = v17;
    v32[6] = v19;
  }

  v32[0] = 7;
  v32[1] = v25;
  v32[2] = v20;
  OUTLINED_FUNCTION_66_1(v23, v32, v24);
  OUTLINED_FUNCTION_47();

  sub_216699778(v3, &unk_27CABFAC0);

LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E72C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_64_3(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_114_1();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
  }

  v16 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    v17 = 0;
    v19 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_216699778(v3, &unk_27CABFAC0);
    v26 = OUTLINED_FUNCTION_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_104_1();
    if (v30)
    {
      OUTLINED_FUNCTION_56_5();
      v32[9] = v17;
      v32[10] = v19;
    }

    else
    {
      v31 = 0;
    }

    OUTLINED_FUNCTION_66_1(v28, v31, v29);
    goto LABEL_14;
  }

  swift_getObjectType();
  v17 = sub_21700E9B4();
  v19 = v18;
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  v20 = sub_21700E5D4() + 32;

  v21 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_104_1();
  if (v25)
  {
    OUTLINED_FUNCTION_57_3();
    v32[5] = v17;
    v32[6] = v19;
  }

  v32[0] = 7;
  v32[1] = v25;
  v32[2] = v20;
  OUTLINED_FUNCTION_66_1(v23, v32, v24);

  sub_216699778(v3, &unk_27CABFAC0);

LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E95C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_95_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_9();
  sub_216681B04(v3, v1, &unk_27CABFAC0, &qword_21701B9F0);
  v8 = sub_21700EA74();
  v9 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_75();
    v13(v12);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21700E9B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();

      if (v17 | v15)
      {
        OUTLINED_FUNCTION_57_3();
      }

      else
      {
        v18 = 0;
      }

      OUTLINED_FUNCTION_27_3(v18);
      swift_task_create();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v3, &unk_27CABFAC0);
  if (v17 | v15)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677EBA0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_95_1();
  v3 = v2;
  v5 = v4;
  v6 = &qword_21701B9F0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_93_3();
  sub_216681B04(v9, v10, v11, &qword_21701B9F0);
  v12 = sub_21700EA74();
  v13 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v13, v14, v12);
  if (&qword_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    v6 = sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_122_0();

  if (v1)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_119_2(ObjectType);
    OUTLINED_FUNCTION_74_1();
    if (v5)
    {
LABEL_6:
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      sub_21700D2A4();

      if (v6 | v0)
      {
        OUTLINED_FUNCTION_53_3();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_27_3(v17);
      swift_task_create();
      OUTLINED_FUNCTION_47();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v3, &unk_27CABFAC0);
  sub_21700D2A4();
  OUTLINED_FUNCTION_84_3();
  if (v18)
  {
    OUTLINED_FUNCTION_51_0();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.accountButton(stackAuthority:)(uint64_t a1)
{
  sub_2166B6328(a1);
  HIBYTE(v11) = 0;
  v1 = sub_21683B2C0(&v11 + 7, &v12);
  OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AD0, &qword_217013E68));
  return sub_2170087C4();
}

uint64_t MusicPageProvider.accountButton(displayStyle:stackAuthority:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  sub_2166B6328(a2);
  HIBYTE(v13) = v2;
  v3 = sub_21683B2C0(&v13 + 7, &v14);
  OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AD0, &qword_217013E68));
  return sub_2170087C4();
}

uint64_t MusicPageProvider.accountButtonCoordinator.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_21677FB34();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21677FB34()
{
  type metadata accessor for AccountButtonCoordinator(0);
  v0 = swift_allocObject();

  sub_216780E78();
  return v0;
}

uint64_t (*MusicPageProvider.accountButtonCoordinator.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MusicPageProvider.accountButtonCoordinator.getter();
  return sub_21677FBDC;
}

uint64_t sub_21677FBDC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MusicPageProvider.accountButtonCoordinator.setter(*a1);
  }

  MusicPageProvider.accountButtonCoordinator.setter(v2);
}

uint64_t sub_21677FC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21677FCB4(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return MusicPageProvider.presentationStackDelegate.setter(v2, v1);
}

void (*MusicPageProvider.presentationStackDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_120_0(v1 + 24, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_21677FD68;
}

void sub_21677FD68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_216699940();
  }

  free(v3);
}

uint64_t sub_21677FDF4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21677FE64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = sub_217009BA4();
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v9 + 32);
      nullsub_1();
      v11 = v10;
      v13 = v12;
      v20 = *(v6 + 512);
      v21 = *(v6 + 504);
      v23 = a3;
      v24 = v21;
      v25 = a4;
      v26 = v20;
      type metadata accessor for PresentationView(255, &v23);
      swift_getWitnessTable();
      sub_217009454();
      v23 = v11;
      v24 = v13;

      v14 = sub_217009434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA8, &qword_217014270);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_217013DA0;
      sub_217009B94();
      v23 = v15;
      sub_2166B52EC(&qword_280E2A6E8, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB0, &qword_217014278);
      sub_21669E098(&qword_280E29E58, &qword_27CAB6BB0, &qword_217014278, MEMORY[0x277D83970]);
      sub_21700F214();
      sub_217009414();
      ObjectType = swift_getObjectType();
      v18 = type metadata accessor for PresentationItem.Destination(0, v21, v20, v17);
      v19 = sub_216AF3084(v18);
      (*(v22 + 8))(v14, v19, ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_2167801D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 32);
      nullsub_1();
      v11 = v10;
      v13 = v12;
      v14 = *(v6 + 504);
      v15 = *(v6 + 512);
      v18 = a3;
      v19 = v14;
      v20 = a4;
      v21 = v15;
      type metadata accessor for PresentationView(255, &v18);
      swift_getWitnessTable();
      sub_217009454();
      v18 = v11;
      v19 = v13;

      v16 = sub_217009434();
      [v16 setModalPresentationStyle_];
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v16, MEMORY[0x277D84FA0], ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2167803A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = sub_217009BA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v8;
      v26 = *(v10 + 32);
      nullsub_1();
      v12 = v11;
      v14 = v13;
      v15 = *(v6 + 504);
      v16 = *(v6 + 512);
      v27 = a3;
      v28 = v15;
      v29 = a4;
      v30 = v16;
      type metadata accessor for PresentationView(255, &v27);
      swift_getWitnessTable();
      sub_217009454();
      v27 = v12;
      v28 = v14;

      v17 = sub_217009434();
      v18 = [v17 view];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_opt_self() clearColor];
        [v19 setBackgroundColor_];

        v21 = [v17 view];
        if (v21)
        {
          v22 = v21;
          [v21 setOpaque_];

          [v17 setModalTransitionStyle_];
          [v17 setModalPresentationStyle_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA8, &qword_217014270);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_217013DA0;
          sub_217009B94();
          v27 = v23;
          sub_2166B52EC(&qword_280E2A6E8, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB0, &qword_217014278);
          sub_21669E098(&qword_280E29E58, &qword_27CAB6BB0, &qword_217014278, MEMORY[0x277D83970]);
          sub_21700F214();
          sub_217009414();
          ObjectType = swift_getObjectType();
          (*(v26 + 8))(v17, MEMORY[0x277D84FA0], ObjectType);

          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_2167807A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 32);
    v6 = sub_216A5D3A8(v4, &v15);
    v10 = v16;
    if (v16)
    {
      v18 = v15;
      v19 = v16;
      v20 = v17;
      v11 = sub_216A5D50C(v6, v7, v8, v9);
      if (v11)
      {
        v12 = v11;
        ObjectType = swift_getObjectType();
        sub_216685F4C(0, &qword_27CABD750, 0x277D75110);

        v14 = sub_2168D261C(&v18, a2, v12);
        (*(v5 + 16))(v14, ObjectType, v5);
        swift_unknownObjectRelease();

        return;
      }

      v21 = v15;
      sub_216699778(&v21, &qword_27CABAA40);
      v22 = v10;
      sub_216699778(&v22, &qword_27CAB6BA0);
      v23 = v17;
      sub_216699778(&v23, &qword_27CABAA40);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21678092C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_68_2(a2 + 16, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_38();
    sub_2167807A8(v3, v4);
  }

  return result;
}

uint64_t sub_216780990(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t MusicPageProvider.deinit()
{

  sub_216781DA8(v0 + 24);

  return v0;
}

uint64_t MusicPageProvider.__deallocating_deinit()
{
  MusicPageProvider.deinit();
  v0 = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216780AA0()
{
  result = sub_21700E4D4();
  qword_27CAB6A48 = result;
  return result;
}

id sub_216780B20(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void static PresentationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  if (v4)
  {
    if (v7)
    {
      if (v2)
      {
        if (v5)
        {
          if (*v0 == *v1 && v2 == v5)
          {
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_39();
          if (sub_21700F7D4())
          {
            goto LABEL_15;
          }
        }
      }

      else if (!v5)
      {
LABEL_15:
        if (v3 != v6 || v4 != v7)
        {
          OUTLINED_FUNCTION_82_2();
          sub_21700F7D4();
          v32 = OUTLINED_FUNCTION_30();
          sub_216781DD0(v32, v33, v34, v35);
          v36 = OUTLINED_FUNCTION_18_3();
          sub_216781DD0(v36, v37, v38, v39);
          v40 = OUTLINED_FUNCTION_18_3();
          sub_216781E14(v40, v41, v42, v43);
          v44 = OUTLINED_FUNCTION_30();
          sub_216781E14(v44, v45, v46, v47);
          goto LABEL_22;
        }

        v48 = OUTLINED_FUNCTION_38();
        sub_216781DD0(v48, v49, v3, v4);
        v50 = OUTLINED_FUNCTION_18_3();
        sub_216781DD0(v50, v51, v52, v53);
        v54 = OUTLINED_FUNCTION_18_3();
        sub_216781E14(v54, v55, v56, v57);
        v11 = OUTLINED_FUNCTION_38();
        v13 = v3;
        v14 = v4;
LABEL_21:
        sub_216781E14(v11, v12, v13, v14);
        goto LABEL_22;
      }
    }
  }

  else if (!v7)
  {
    v9 = OUTLINED_FUNCTION_39();
    sub_216781E14(v9, v10, v3, 0);
    v11 = OUTLINED_FUNCTION_38();
    v13 = v6;
    v14 = 0;
    goto LABEL_21;
  }

  v15 = OUTLINED_FUNCTION_30();
  sub_216781DD0(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_18_3();
  sub_216781DD0(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_18_3();
  sub_216781E14(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_30();
  sub_216781E14(v27, v28, v29, v30);
LABEL_22:
  OUTLINED_FUNCTION_26();
}

uint64_t PresentationOptions.hash(into:)()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x21CEA0720](1);
  }

  v1 = *(v0 + 8);
  MEMORY[0x21CEA0720](0);
  sub_21700F914();
  if (v1)
  {
    OUTLINED_FUNCTION_82_2();
    sub_21700E614();
  }

  OUTLINED_FUNCTION_86_0();

  return sub_21700E614();
}

uint64_t PresentationOptions.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_21700F8F4();
  if (v2)
  {
    MEMORY[0x21CEA0720](0);
    sub_21700F914();
    if (v1)
    {
      OUTLINED_FUNCTION_82_2();
      sub_21700E614();
    }

    OUTLINED_FUNCTION_71_0();
    sub_21700E614();
  }

  else
  {
    MEMORY[0x21CEA0720](1);
  }

  return sub_21700F944();
}

uint64_t sub_216780E2C(uint64_t a1)
{
  sub_21700F8F4();
  PresentationOptions.hash(into:)();
  return sub_21700F944();
}

void sub_216780E78()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0, &unk_217014280);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_78_1();
  *(v0 + 24) = MEMORY[0x277D84FA0];
  *(v0 + 32) = 0;
  sub_217006704();
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_120_0(v3 + OBJC_IVAR____TtC7MusicUI14BootstrapState__state, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8, &qword_21701B8B0);
  sub_217007DB4();
  swift_endAccess();
  sub_21669E098(&qword_280E484E0, &unk_27CAC9DE0, &unk_217014280, MEMORY[0x277CBCEC8]);
  OUTLINED_FUNCTION_47();

  sub_217007E84();

  (*(v6 + 8))(v1, v4);
  swift_getKeyPath();
  v10[0] = v0;
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v8, v9, &protocol conformance descriptor for AccountButtonCoordinator);
  OUTLINED_FUNCTION_96_0();
  sub_2170066D4();

  v10[0] = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_96_0();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0(v0 + 24, v10);
  sub_217007D24();
  swift_endAccess();

  v10[0] = v0;
  swift_getKeyPath();
  sub_2170066E4();

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167810DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_2169FA130(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_216781700(v8, sub_2167825A0, v9);
  }
}

uint64_t sub_2167811C4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_216781700(v5, sub_216781E58, v6);
  }

  return result;
}

uint64_t sub_2167812BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2();
  v3 = sub_2166B52EC(v1, v2, &protocol conformance descriptor for AccountButtonCoordinator);
  OUTLINED_FUNCTION_116_0(v3, v4);

  OUTLINED_FUNCTION_68_2(v0 + 24, v5);
  return sub_21700DF14();
}

uint64_t sub_216781374(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  sub_21700DF14();
}

uint64_t sub_216781428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216781480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216781480()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2();
  v3 = sub_2166B52EC(v1, v2, &protocol conformance descriptor for AccountButtonCoordinator);
  OUTLINED_FUNCTION_116_0(v3, v4);

  OUTLINED_FUNCTION_68_2(v0 + 32, v5);
  return *(v0 + 32);
}

uint64_t sub_216781508(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

uint64_t (*sub_21678155C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC7MusicUI24AccountButtonCoordinator___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_1_2();
  v3[6] = sub_2166B52EC(v4, v5, &protocol conformance descriptor for AccountButtonCoordinator);
  OUTLINED_FUNCTION_109_0();
  sub_2170066D4();

  *v3 = v1;
  swift_getKeyPath();
  sub_2170066F4();

  v3[7] = sub_2167813DC(v3);
  return sub_21678166C;
}

void sub_21678166C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2170066E4();

  free(v1);
}

uint64_t sub_216781700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v3, v4, &protocol conformance descriptor for AccountButtonCoordinator);
  return sub_2170066C4();
}

uint64_t AccountButtonCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC7MusicUI24AccountButtonCoordinator___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AccountButtonCoordinator.__deallocating_deinit()
{
  AccountButtonCoordinator.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216781868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2167818D8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2166A85FC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_216781934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC0, &unk_217014290);
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

_BYTE **sub_216781A28(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_216781A38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_216781B2C;

  return v5(v2 + 32);
}

uint64_t sub_216781B2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_23();

  return v8();
}

uint64_t sub_216781C20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A4;
  v7 = OUTLINED_FUNCTION_19_10();

  return sub_21677BA24(v7, v8, v1, v2, v3);
}

uint64_t sub_216781CD4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_2166AB4A4;
  v6 = OUTLINED_FUNCTION_19_10();

  return sub_21677DEE0(v6, v7, v1, v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_216781DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21700DF14();

    sub_21700DF14();
  }
}

uint64_t sub_216781E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t type metadata accessor for AccountButtonCoordinator(uint64_t a1)
{
  result = qword_280E371B8;
  if (!qword_280E371B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216781EE4()
{
  result = qword_27CAB6AD8;
  if (!qword_27CAB6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6AD8);
  }

  return result;
}

void sub_216781FA0(uint64_t a1)
{
  if (!qword_280E2A3C0)
  {
    sub_21700C1E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE8, qword_217014050);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A3C0);
    }
  }
}

void sub_216782020(uint64_t a1)
{
  if (!qword_280E2A350)
  {
    sub_21700C924();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CAB6AF0, &unk_21701D840);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A350);
    }
  }
}

uint64_t getEnumTagSinglePayload for Page.Header.Style(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_216782128(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19PresentationOptionsO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216782260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167822B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_216782308(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t sub_216782344(uint64_t a1)
{
  result = sub_217006714();
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

uint64_t sub_216782480()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216782510()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216782640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167826A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_216782700(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_89_1@<D0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 112) = v1;
  *(v2 - 104) = v3;
  v4 = type metadata accessor for MusicPageProvider.Destination(0, v2 - 128);

  return sub_2166CBA00(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_115_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_216697840();
}

uint64_t type metadata accessor for JSReplayPage(uint64_t a1)
{
  result = qword_27CAB6BF8;
  if (!qword_27CAB6BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216782904(uint64_t a1)
{
  sub_21700D194();
  if (v1 <= 0x3F)
  {
    sub_216782A30(319, &qword_280E29E68, _s7SectionVMa, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_216782A30(319, qword_280E2C858, type metadata accessor for Page.Header, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216782A94(319);
        if (v4 <= 0x3F)
        {
          sub_216688154();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216782A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216782A94(uint64_t a1)
{
  if (!qword_27CAB6C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6C10, &qword_217014398);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB6C08);
    }
  }
}

uint64_t sub_216782AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  sub_21700D194();
  OUTLINED_FUNCTION_16();
  v41 = v7;
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v49 = v9 - v8;
  v10 = sub_21700CF34();
  v45 = v10;
  OUTLINED_FUNCTION_16();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_21700CDF4();
  OUTLINED_FUNCTION_16();
  v51 = v19;
  v52 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v47 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for JSReplayPage(0);
  v25 = *(v24 + 32);
  v26 = v24;
  v54 = v24;
  v56 = a3;
  v27 = (a3 + v25);
  *v27 = 0;
  v27[1] = 0;
  sub_21700CE04();
  v53 = v12;
  v44 = *(v12 + 16);
  v44(v17, a2, v10);
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_0_16();
  sub_216691DF4(v28, v29, &unk_2170551A4);
  v30 = sub_21700E944();
  v31 = *(v26 + 20);
  v43 = v30;
  *(a3 + v31) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6C10, &qword_217014398);
  sub_21700CE04();
  v33 = v45;
  v32 = v46;
  v34 = v44;
  v44(v17, v46, v45);
  sub_216783A48();
  v39 = v23;
  v40 = v17;
  sub_21700D734();
  v35 = v57;
  *(v56 + *(v54 + 28)) = v57;
  v55 = a1;
  sub_21700CE04();
  v36 = v49;
  v34(v48, v32, v33);
  v37 = v50;
  sub_21700D134();
  if (v37)
  {
    (*(v53 + 8))(v32, v33);
    (*(v51 + 8))(v55, v52);

    return sub_216783AAC(v35);
  }

  else
  {
    (*(v41 + 32))(v56, v36, v42);
    type metadata accessor for Page.Header(0);
    sub_21700CE04();
    v34(v40, v32, v33);
    sub_216691DF4(&qword_280E2C8D0, type metadata accessor for Page.Header, &unk_2170406E0);
    sub_21700D734();
    (*(v53 + 8))(v32, v33);
    return (*(v51 + 8))(v55, v52);
  }
}

void sub_216782FBC()
{
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = *(v0 + *(type metadata accessor for JSReplayPage(0) + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = sub_21678389C(v9, v6);
      sub_2168C0B98(v12, v13, v14, v15, v16, v17, v18, v19, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, vars0, vars8);
      v21 = v20;
      sub_216783900(v6, _s7SectionVMa);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908(0, *(v11 + 16) + 1, 1, v11);
          v11 = v24;
        }

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_216937908(v22 > 1, v23 + 1, 1, v11);
          v11 = v25;
        }

        *(v11 + 16) = v23 + 1;
        *(v11 + 8 * v23 + 32) = v21;
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v26 = 0;
  v27 = *(v11 + 16);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v27 == v26)
    {

      return;
    }

    if (v26 >= *(v11 + 16))
    {
      break;
    }

    v29 = *(v11 + 8 * v26 + 32);
    v30 = *(v29 + 16);
    v31 = *(v28 + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_31;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v28 + 24) >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v34, 1, v28);
      v28 = v35;
    }

    if (*(v29 + 16))
    {
      v36 = (*(v28 + 24) >> 1) - *(v28 + 16);
      sub_217006924();
      if (v36 < v30)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v37 = *(v28 + 16);
        v38 = __OFADD__(v37, v30);
        v39 = v37 + v30;
        if (v38)
        {
          goto LABEL_34;
        }

        *(v28 + 16) = v39;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_32;
      }
    }

    ++v26;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21678328C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  sub_2167839C8(v2);
  return v2;
}

uint64_t sub_216783318(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_21700DF14();
  return v2;
}

uint64_t sub_216783350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216783390@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D194();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21678344C(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C20, type metadata accessor for JSReplayPage, &unk_2170143A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167834EC(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C30, type metadata accessor for JSReplayPage, &unk_2170143C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216783544(void *a1)
{
  a1[1] = sub_216691DF4(&qword_27CAB6C38, type metadata accessor for JSReplayPage, &unk_2170143F4);
  a1[2] = sub_216691DF4(&qword_27CAB6C40, type metadata accessor for JSReplayPage, &unk_217014424);
  result = sub_216691DF4(&qword_27CAB6C48, type metadata accessor for JSReplayPage, &unk_21701446C);
  a1[3] = result;
  return result;
}

uint64_t sub_216783638(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C58, type metadata accessor for JSReplayPage, &unk_217014488);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167836D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21700D704();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_7();
  v7 = type metadata accessor for JSReplayPage(0);
  v8 = v7[6];
  v9 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_0_16();
  v13 = sub_216691DF4(v11, v12, &unk_217055254);
  v14 = sub_21700DF14();
  v16 = sub_216F76E04(v14, v15, v10, v13);
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    return sub_216783960(a2 + v8);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = v16;
    }

    *(a2 + v7[5]) = v18;
    *(a2 + v7[7]) = 1;
    v19 = (a1 + *(type metadata accessor for ReplayPage(0) + 36));
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = (a2 + v7[8]);
    *v23 = v21;
    v23[1] = v22;
    sub_21700DF14();
    sub_21700D6F4();
    sub_216C5570C(MEMORY[0x277D84F90]);
    sub_21700D124();
    return OUTLINED_FUNCTION_1_3();
  }
}

uint64_t sub_21678389C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216783900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216783960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167839C8(uint64_t result)
{
  if (result != 1)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2167839D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216783A48()
{
  result = qword_27CAB6C70;
  if (!qword_27CAB6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6C10, &qword_217014398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C70);
  }

  return result;
}

uint64_t sub_216783AAC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

MusicUI::DefaultsKeys::SwiftMusic_optional __swiftcall DefaultsKeys.SwiftMusic.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783BE0(void *a1@<X8>)
{
  DefaultsKeys.SwiftMusic.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::ScriptURL_optional __swiftcall DefaultsKeys.ScriptURL.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783CF4(void *a1@<X8>)
{
  DefaultsKeys.ScriptURL.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::GDPR_optional __swiftcall DefaultsKeys.GDPR.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783E08(void *a1@<X8>)
{
  DefaultsKeys.GDPR.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_216783EC0(void *a1@<X8>)
{
  DefaultsKeys.NewFeatures.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::Engagement_optional __swiftcall DefaultsKeys.Engagement.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void DefaultsKeys.Engagement.rawValue.getter()
{
  switch(*v0)
  {
    case 7:
    case 0xB:
      OUTLINED_FUNCTION_17_5();
      break;
    case 9:
      return;
    default:
      OUTLINED_FUNCTION_16_9();
      break;
  }
}

void sub_216784120(void *a1@<X8>)
{
  DefaultsKeys.Engagement.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t DefaultsKeys.EngagementOverrides.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  *v0 = v1 != 0;
  return result;
}

unint64_t sub_2167841F0@<X0>(void *a1@<X8>)
{
  result = DefaultsKeys.EngagementOverrides.rawValue.getter();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_21678423C()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

void sub_216784300(void *a1@<X8>)
{
  DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t DefaultsSuiteNames.Legacy.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  *v0 = v1 != 0;
  return result;
}

unint64_t sub_2167843C4@<X0>(void *a1@<X8>)
{
  result = DefaultsSuiteNames.Legacy.rawValue.getter();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

void sub_216784404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_9_14();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_216784490()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

void sub_216784500(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_216784588()
{
  v0 = OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_2167845F8()
{
  v0 = OUTLINED_FUNCTION_6_13();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216784668()
{
  v0 = OUTLINED_FUNCTION_6_13();
  v1 = OUTLINED_FUNCTION_2_17();
  v3 = [v1 v2];

  return v3 & ~(v3 >> 63);
}

uint64_t sub_2167846B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217005AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216784588();
  v7 = v6;
  v8 = sub_2167845F8();
  v10 = v9;
  v11 = sub_216784668();
  v13 = v12;
  if (v7 || v10 || (v12 & 1) == 0)
  {
    v15[1] = v11;
    sub_217005AA4();
    if (v7)
    {
      sub_217005A84();
    }

    if (v10)
    {
      MEMORY[0x21CE96830](v8, v10);
    }

    if ((v13 & 1) == 0)
    {
      sub_217005A44();
    }

    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

id sub_21678485C()
{
  v0 = OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_2_17();
  v3 = [v1 v2];

  return v3;
}

unint64_t sub_2167848A4(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2167848F0(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x6948737961776C61;
  }

  return 0x6853737961776C61;
}

uint64_t sub_216784950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167848F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21678497C()
{
  OUTLINED_FUNCTION_17_5();
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (!v3)
  {
    return 0;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_12_10();
  v4 = OUTLINED_FUNCTION_7_4();
  LODWORD(result) = sub_2167848A4(v4);
  if (result == 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_216784A08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

void sub_216784A9C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784B0C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784B7C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784BE0()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784C50()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

unint64_t sub_216784CC4()
{
  result = qword_27CAB6C78;
  if (!qword_27CAB6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C78);
  }

  return result;
}

unint64_t sub_216784D4C()
{
  result = qword_27CAB6C90;
  if (!qword_27CAB6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C90);
  }

  return result;
}

unint64_t sub_216784DD4()
{
  result = qword_27CAB6CA8;
  if (!qword_27CAB6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CA8);
  }

  return result;
}

unint64_t sub_216784E5C()
{
  result = qword_27CAB6CC0;
  if (!qword_27CAB6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CC0);
  }

  return result;
}

unint64_t sub_216784EE4()
{
  result = qword_27CAB6CD8;
  if (!qword_27CAB6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CD8);
  }

  return result;
}

unint64_t sub_216784F6C()
{
  result = qword_27CAB6CF0;
  if (!qword_27CAB6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CF0);
  }

  return result;
}

unint64_t sub_216784FF4()
{
  result = qword_27CAB6D08;
  if (!qword_27CAB6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D08);
  }

  return result;
}

unint64_t sub_21678507C()
{
  result = qword_27CAB6D20;
  if (!qword_27CAB6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D20);
  }

  return result;
}

uint64_t sub_216785100(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for Page.Header.TitleDisplayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultsKeys.SwiftMusic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicConfiguration.PrivacyDisclaimerPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_216785358(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_11_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultsKeys.Engagement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultsKeys.Engagement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2167855A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_11_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216785684(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_10_3(a1);
}

_BYTE *sub_2167856D0(_BYTE *result, int a2, int a3)
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

uint64_t sub_216785794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2167857D0(uint64_t *a1, int a2)
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

uint64_t sub_216785810(uint64_t result, int a2, int a3)
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

uint64_t sub_2167858A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a7;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38, &unk_217014DF0);
  v12 = OUTLINED_FUNCTION_5_10();
  type metadata accessor for ModalNavigationStack(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_5_10();
  v55[1] = type metadata accessor for AppDestinationSheetPageView(v16, v17, v18, v19);
  v55[2] = sub_217009564();
  v55[0] = sub_217009564();
  v20 = OUTLINED_FUNCTION_5_10();
  v55[3] = type metadata accessor for AppDestinationFullScreenCoverPageView(v20, v21, v22, v23);
  v55[4] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40, &qword_21701D800);
  v55[7] = sub_217009564();
  v55[5] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48, &unk_217014E00);
  v24 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v56 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = v55 - v27;
  v73[0] = a3;
  v73[1] = a4;
  v73[2] = a5;
  v73[3] = a6;
  v55[6] = type metadata accessor for NestedPresentationModifier(255, v73);
  v29 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v55 - v36;
  sub_21683B394();
  v38 = sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  v40 = swift_getWitnessTable();
  v71 = WitnessTable;
  v72 = v40;
  v41 = swift_getWitnessTable();
  v69 = v38;
  v70 = v41;
  v42 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  v43 = swift_getWitnessTable();
  v44 = sub_216785E20();
  v67 = v43;
  v68 = v44;
  v45 = swift_getWitnessTable();
  v46 = sub_216785E74();
  v65 = v45;
  v66 = v46;
  v47 = swift_getWitnessTable();
  v63 = v42;
  v64 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_216785F4C();
  v61 = v48;
  v62 = v49;
  v50 = swift_getWitnessTable();
  sub_216A26C9C(v58, a2, v24, v50);
  (*(v56 + 8))(v28, v24);
  OUTLINED_FUNCTION_3_20();
  v51 = swift_getWitnessTable();
  v59 = v50;
  v60 = v51;
  OUTLINED_FUNCTION_0_9();
  v52 = swift_getWitnessTable();
  sub_2166C24DC(v34, v29, v52);
  v53 = *(v31 + 8);
  v53(v34, v29);
  sub_2166C24DC(v37, v29, v52);
  return (v53)(v37, v29);
}

unint64_t sub_216785CE8()
{
  result = qword_280E2ABA0;
  if (!qword_280E2ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38, &unk_217014DF0);
    sub_216785D74();
    sub_216785DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABA0);
  }

  return result;
}

unint64_t sub_216785D74()
{
  result = qword_280E3EBA0;
  if (!qword_280E3EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3EBA0);
  }

  return result;
}

unint64_t sub_216785DC8()
{
  result = qword_280E42898[0];
  if (!qword_280E42898[0])
  {
    type metadata accessor for CommerceWebView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42898);
  }

  return result;
}

unint64_t sub_216785E20()
{
  result = qword_280E47DA8[0];
  if (!qword_280E47DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47DA8);
  }

  return result;
}

unint64_t sub_216785E74()
{
  result = qword_280E2AB38;
  if (!qword_280E2AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40, &qword_21701D800);
    sub_216785EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB38);
  }

  return result;
}

unint64_t sub_216785EF8()
{
  result = qword_280E2FB20[0];
  if (!qword_280E2FB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2FB20);
  }

  return result;
}

unint64_t sub_216785F4C()
{
  result = qword_280E2A9D8;
  if (!qword_280E2A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48, &unk_217014E00);
    sub_216785FD8();
    sub_21678610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9D8);
  }

  return result;
}

unint64_t sub_216785FD8()
{
  result = qword_280E2AB98;
  if (!qword_280E2AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D50, &unk_21701D810);
    sub_216786064();
    sub_2167860B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB98);
  }

  return result;
}

unint64_t sub_216786064()
{
  result = qword_280E3E2E0[0];
  if (!qword_280E3E2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3E2E0);
  }

  return result;
}

unint64_t sub_2167860B8()
{
  result = qword_280E35ED0[0];
  if (!qword_280E35ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35ED0);
  }

  return result;
}

unint64_t sub_21678610C()
{
  result = qword_280E35E28;
  if (!qword_280E35E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalLockup.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_216786274(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for HorizontalLockup.HeadlineColor()
{
  return &type metadata for HorizontalLockup.HeadlineColor;
}

{
  return &type metadata for HorizontalLockup.HeadlineColor;
}

unint64_t sub_216786350(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21678639C(char a1)
{
  if (!a1)
  {
    return 0x6C6C616D73;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x656772616CLL;
}

uint64_t sub_2167863F8(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216786440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21700F5E4();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216786490(char a1)
{
  if (a1)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x657261757173;
  }
}

unint64_t sub_2167864DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786350(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21678650C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21678639C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21678655C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290DF90);
  *a2 = result;
  return result;
}

uint64_t sub_216786594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167863F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2167865C4()
{
  result = qword_27CAB6D70;
  if (!qword_27CAB6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D70);
  }

  return result;
}

unint64_t sub_21678661C()
{
  result = qword_27CAB6D78;
  if (!qword_27CAB6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D78);
  }

  return result;
}

uint64_t sub_216786694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216786440(*a1, a1[1], &unk_28290DFE0);
  *a2 = result;
  return result;
}

uint64_t sub_2167866CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216786490(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_216786700()
{
  result = qword_27CAB6D80;
  if (!qword_27CAB6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D80);
  }

  return result;
}

void sub_216786754()
{
  OUTLINED_FUNCTION_22_3();
  v96 = v0;
  v109 = v1;
  v3 = v2;
  v104 = v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v95 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v93 - v22;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v98 = v7;
  v24 = v7;
  v25 = v3;
  v26 = *(v24 + 16);
  v103 = v5;
  v99 = v26;
  v100 = v24 + 16;
  v26(v11, v109, v5);
  v105 = type metadata accessor for HorizontalLockup(0);
  v94 = v105[5];
  v101 = v11;
  sub_21700D734();
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v14 + 8);
  v106 = v12;
  v102 = v14 + 8;
  v31 = v30;
  v30(v20, v12);
  if (v29)
  {
    *&v107 = v27;
    *(&v107 + 1) = v29;
    sub_21700F364();
    v93 = v25;
    sub_21700CE04();
    sub_21700D2E4();
    v97 = v31;
    v31(v23, v106);
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v32 = v101;
    v33 = v103;
    v34 = v99;
    v99(v101, v109, v103);
    sub_2166D4B78(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v35 = v104;
    sub_21700D734();
    OUTLINED_FUNCTION_18_0();
    v36 = v93;
    sub_21700CE04();
    v34(v32, v109, v33);
    sub_2167882F0();
    sub_21700D734();
    v37 = v108;
    v38 = v105;
    v39 = v35;
    v40 = v35 + v105[6];
    *v40 = v107;
    *(v40 + 16) = v37;
    OUTLINED_FUNCTION_18_0();
    sub_21700CE04();
    sub_216788344();
    OUTLINED_FUNCTION_10_5();
    v41 = v106;
    v42 = v97;
    v97(v23, v106);
    *(v39 + v38[7]) = v107;
    v43 = v36;
    sub_21700CE04();
    v44 = sub_21700CDB4();
    v46 = v45;
    v42(v23, v41);
    v47 = (v39 + v38[8]);
    *v47 = v44;
    v47[1] = v46;
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v42(v23, v106);
    v51 = (v39 + v38[9]);
    *v51 = v48;
    v51[1] = v50;
    sub_21700CE04();
    sub_21700D2E4();
    v52 = OUTLINED_FUNCTION_9_6();
    (v42)(v52);
    sub_21700CE04();
    sub_216788398();
    OUTLINED_FUNCTION_10_5();
    v53 = OUTLINED_FUNCTION_9_6();
    (v42)(v53);
    *(v39 + v38[11]) = v107;
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    v54 = v43;
    sub_21700CE04();
    v99(v101, v109, v103);
    sub_2166D4B78(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v55 = v39;
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v56 = sub_21700CDB4();
    v57 = v97;
    v59 = v58;
    v60 = v106;
    v97(v23, v106);
    v61 = (v55 + v38[12]);
    *v61 = v56;
    v61[1] = v59;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    LOBYTE(v56) = sub_21700CD44();
    v62 = OUTLINED_FUNCTION_9_6();
    v63 = v60;
    v57(v62);
    *(v55 + v38[13]) = v56;
    OUTLINED_FUNCTION_11_0();
    v64 = v95;
    sub_21700CE04();
    v65 = sub_21700CD24();
    LOBYTE(v59) = v66;
    (v57)(v64, v63);
    if (v59)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65;
    }

    v68 = v105;
    *(v55 + v105[14]) = v67;
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    sub_2167883EC();
    OUTLINED_FUNCTION_10_5();
    v69 = v63;
    (v57)(v23, v63);
    v70 = v68;
    *(v55 + v68[15]) = v107;
    sub_21700CE04();
    v71 = sub_21700CDB4();
    v73 = v72;
    v74 = OUTLINED_FUNCTION_9_6();
    v57(v74);
    v75 = (v55 + v70[20]);
    *v75 = v71;
    v75[1] = v73;
    sub_21700CE04();
    v76 = sub_21700CDB4();
    v78 = v77;
    v79 = OUTLINED_FUNCTION_9_6();
    v57(v79);
    v80 = (v55 + v70[16]);
    *v80 = v76;
    v80[1] = v78;
    sub_21700CE04();
    v81 = sub_21700CDB4();
    v83 = v82;
    v84 = OUTLINED_FUNCTION_15_3();
    v85(v84);
    (v57)(v54, v69);
    v86 = OUTLINED_FUNCTION_9_6();
    v57(v86);
    v87 = (v55 + v70[17]);
    *v87 = v81;
    v87[1] = v83;
  }

  else
  {
    v88 = sub_21700E2E4();
    sub_2166D4B78(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v89 = 25705;
    v90 = v105;
    v89[1] = 0xE200000000000000;
    v89[2] = v90;
    (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D22530], v88);
    swift_willThrow();
    v91 = OUTLINED_FUNCTION_15_3();
    v92(v91);
    v31(v25, v106);
    sub_216697664(v104 + v94, &qword_27CAB6D58, &unk_217014E30);
  }

  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_21678724C()
{
  result = qword_27CAB6D88;
  if (!qword_27CAB6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D88);
  }

  return result;
}

void sub_2167872A0()
{
  OUTLINED_FUNCTION_22_3();
  HIDWORD(v96) = v1;
  v97 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ContentDescriptor(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v94 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v99 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  v95 = &v89 - v17;
  v18 = type metadata accessor for AttributedDateRange(0);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v98 = (&v89 - v24);
  v25 = type metadata accessor for Artwork(0);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v89 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v34 = OUTLINED_FUNCTION_36(v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  if (!sub_216F39084())
  {

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DA0, &unk_2170151D0);
    sub_2167880BC();
    swift_allocError();
    *v50 = xmmword_217014E10;
    *(v50 + 16) = v49;
    swift_willThrow();
    OUTLINED_FUNCTION_0_18();
    goto LABEL_36;
  }

  v90 = v6;
  v93 = v4;
  v101 = sub_216F38ED4();
  v102 = v37;
  sub_21700F364();
  v38 = type metadata accessor for HorizontalLockup(0);
  v39 = v8;
  v40 = *(v38 + 20);
  v41 = sub_21700D7A4();
  v42 = 1;
  v91 = v40;
  v43 = v39 + v40;
  v44 = v39;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v41);
  v100 = v38;
  OUTLINED_FUNCTION_19_8(*(v38 + 40));
  v92 = v45;
  if (sub_216F3AF6C())
  {
    sub_216F3AC10(v32);
    sub_2167881DC(v32, v29, type metadata accessor for Artwork);
    sub_216C7DA84(v29, v36);
    if (v0)
    {
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_0_18();

      v46 = 0;
      v47 = 0;
      v48 = 0;
LABEL_10:
      v55 = v100;
LABEL_26:
      sub_216788110(v44);
      sub_216697664(v44 + v91, &qword_27CAB6D58, &unk_217014E30);
      if (v46)
      {
        sub_216788164(*(v44 + v55[6]), *(v44 + v55[6] + 8), *(v44 + v55[6] + 16));
      }

      if (v47)
      {
      }

      sub_216697664(v92, &qword_27CAB6DB0, &qword_217016C00);
      if (v47)
      {
        sub_216697664(v44 + v55[18], &qword_27CAB6DB0, &qword_217016C00);
      }

      if (v48)
      {
        sub_216697664(v44 + v55[21], &qword_27CAB6D60, &qword_217014E40);
      }

      goto LABEL_36;
    }

    OUTLINED_FUNCTION_5_11();
    v42 = 0;
  }

  v51 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v36, v42, 1, v51);
  sub_21678818C(v36, v39 + v100[21], &qword_27CAB6D60, &qword_217014E40);
  if (sub_216F398C8())
  {
    v52 = v98;
    sub_216F39538(v98);
    type metadata accessor for AttributedDateRange(0);
    sub_2167881DC(v52, v22, type metadata accessor for AttributedDateRange);
    v53 = sub_216B6D284(v22);
    v54 = v93;
    if (v0)
    {

      OUTLINED_FUNCTION_0_18();
      OUTLINED_FUNCTION_6_15();
      v46 = 0;
      v47 = 0;
      v48 = 1;
      goto LABEL_10;
    }

    v56 = v53;
    OUTLINED_FUNCTION_6_15();
    v57 = 1;
  }

  else
  {
    v56 = 0;
    v57 = -1;
    v54 = v93;
  }

  v55 = v100;
  v58 = v39 + v100[6];
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  if (sub_216F399CC())
  {
    sub_216F39928();
    sub_216787D48();
    v60 = v99;
    if (v0)
    {
      OUTLINED_FUNCTION_0_18();

      v47 = 0;
      v46 = 1;
LABEL_25:
      v48 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v59 = 0;
    v60 = v99;
  }

  *(v39 + v55[7]) = v59 & 1;
  if (sub_216F39290())
  {
    v61 = sub_216F39120();
  }

  else
  {
    v61 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_13_8(v61, v62, v55[8]);
  if (sub_216F3949C())
  {
    v63 = sub_216F3932C();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_138();
  }

  v65 = (v39 + v55[9]);
  *v65 = v63;
  v65[1] = v64;
  OUTLINED_FUNCTION_19_8(v55[18]);
  sub_216787B0C();
  if (v0)
  {

    OUTLINED_FUNCTION_0_18();
    v46 = 1;
    v47 = 1;
    goto LABEL_25;
  }

  *(v39 + v55[11]) = v66;
  if (sub_216F39E04())
  {
    sub_216F399E4(v60);
    v67 = v94;
    sub_2167881DC(v60, v94, type metadata accessor for ContentDescriptor);
    v68 = v95;
    sub_21689C518(v67, v69, v70, v71, v72, v73, v74, v75, v89, v90, SWORD1(v90), SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_4_9();
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v68 = v95;
  }

  v77 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v68, v76, 1, v77);
  sub_21678818C(v68, v39 + v55[19], &qword_27CAB6A00, &unk_217016B60);
  sub_216F3B544();
  v78 = OUTLINED_FUNCTION_138();
  if (v80)
  {
    v78 = sub_216F3B3A4();
  }

  OUTLINED_FUNCTION_13_8(v78, v79, v55[12]);
  *(v39 + v55[13]) = sub_216F3A6DC() & 1;
  *(v39 + v55[14]) = sub_216F3A960();
  if (sub_216F3B200())
  {
    sub_216F3AFCC();
    sub_216787D48();
  }

  else
  {
    v81 = 0;
  }

  *(v39 + v55[15]) = v81 & 1;
  v82 = (v39 + v55[20]);
  *v82 = v90;
  v82[1] = v54;
  if (sub_216F3B38C())
  {
    v83 = sub_216F3B2C0();
  }

  else
  {
    v83 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_13_8(v83, v84, v55[16]);
  if (sub_216F3B750())
  {
    v85 = sub_216F3B600();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  OUTLINED_FUNCTION_0_18();
  v88 = (v39 + v55[17]);
  *v88 = v85;
  v88[1] = v87;
LABEL_36:
  OUTLINED_FUNCTION_21_4();
}

void sub_216787B0C()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_6();
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_21700F784();
      v14 = OUTLINED_FUNCTION_24_5(v12, v13);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DA0, &unk_2170151D0);
      v15 = sub_21700E594();
      v17 = OUTLINED_FUNCTION_24_5(v15, v16);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_216679000, v9, v10, "Unrecognized value '%s' for type '%s'", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216787D48()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_6();
    v13 = sub_217007C84();
    v14 = sub_21700ED84();
    if (os_log_type_enabled(v13, v14))
    {
      v22 = v1;
      v15 = swift_slowAlloc();
      swift_slowAlloc();
      *v15 = 136315394;
      v16 = sub_21700F784();
      v18 = OUTLINED_FUNCTION_24_5(v16, v17);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v22);
      v19 = sub_21700E594();
      v21 = OUTLINED_FUNCTION_24_5(v19, v20);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_216679000, v13, v14, "Unrecognized value '%s' for type '%s'", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v8 + 8))(v12, v6);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216787FD8(_BYTE *a1@<X8>)
{
  sub_216787D48();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_216788020()
{
  result = qword_27CAB6D90;
  if (!qword_27CAB6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D90);
  }

  return result;
}

unint64_t sub_2167880BC()
{
  result = qword_27CAB6DA8;
  if (!qword_27CAB6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DA8);
  }

  return result;
}

uint64_t sub_216788164(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21678817C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21678817C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21678818C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2167881DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21678823C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167882F0()
{
  result = qword_27CAB6DC8;
  if (!qword_27CAB6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DC8);
  }

  return result;
}

unint64_t sub_216788344()
{
  result = qword_27CAB6DD0;
  if (!qword_27CAB6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DD0);
  }

  return result;
}

unint64_t sub_216788398()
{
  result = qword_27CAB6DD8;
  if (!qword_27CAB6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DD8);
  }

  return result;
}

unint64_t sub_2167883EC()
{
  result = qword_27CAB6DE0;
  if (!qword_27CAB6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_216788454(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_2167884A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_216788520(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v1[2] = a1;
  type metadata accessor for PlaybackPresenter(0);
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  v1[3] = v13;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  OUTLINED_FUNCTION_95_2(v9);
  sub_2166A0F18(&v13, (v1 + 4));
  v10 = type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_95_2(v10);
  v1[9] = v13;
  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI26PlaybackMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

void sub_216788694()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_35_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_16_10();
  v6 = type metadata accessor for MenuContext(v5);
  v7 = OUTLINED_FUNCTION_23_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = MEMORY[0x277CD8280];
  v51 = MEMORY[0x277CD8280];
  v52 = MEMORY[0x277CD82B8];
  v50 = MEMORY[0x277CD82C8];
  OUTLINED_FUNCTION_5_12();
  sub_21678A7D4();
  OUTLINED_FUNCTION_44_5();
  sub_21678C1C4();
  sub_2166997CC(v0, &qword_27CAB6DF0, &unk_2170152D0);
  v11 = OUTLINED_FUNCTION_23_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  v49 = MEMORY[0x277CD82B8];
  v48 = MEMORY[0x277CD82C8];
  OUTLINED_FUNCTION_5_12();
  sub_21678C364();
  OUTLINED_FUNCTION_44_5();
  sub_21678C1C4();
  sub_2166997CC(v0, &qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_91_4();
  sub_21678CCBC(v14, v15, v16, v17, v18, v19, v20);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_91_4();
  sub_216792A5C(v21, v22, v23, v24, v25, v26, v27);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_91_4();
  sub_216798848(v28, v29, v30, v31, v32, v33, v34);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  v46 = MEMORY[0x277CD82B8];
  v44 = MEMORY[0x277CD82C8];
  v45 = MEMORY[0x277CD8280];
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_91_4();
  sub_2167A093C(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, &qword_27CAB6F10, &qword_2170153B0, &unk_282913BE0, sub_2167A4AD0, v47, &qword_2170153B8, v48, v10, v49, &unk_282913C80, sub_2167A47E0, &qword_2170153B8, v50, v51, v52, &unk_282913CA8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_73_3(inited, xmmword_217015220);
  OUTLINED_FUNCTION_55_3();
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167889CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v100 = a6;
  v96 = a5;
  v95 = a4;
  v98 = a3;
  v116 = a2;
  v123 = a1;
  v121 = a7;
  v119 = sub_2170075A4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = v8;
  v117 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EF0, &qword_217015388);
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v114 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v9;
  MEMORY[0x28223BE20](v10);
  v110 = &v88 - v11;
  v109 = sub_21700CFB4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_217005EF4();
  v92 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D704();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v93 = &v88 - v20;
  v104 = sub_21700D284();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BAB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v88 - v27;
  v30 = v7[7];
  v29 = v7[8];
  v120 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 4, v30);
  v31 = *(v29 + 144);
  v32 = sub_217006B84();
  v33 = sub_2167A46B8(&qword_27CAB6ED0, MEMORY[0x277D2A7C8], MEMORY[0x277D2A778]);
  v122 = v32;
  v31(v123, v32, v33, v30, v29);
  (*(v23 + 104))(v25, *MEMORY[0x277D2AEE0], v22);
  v34 = sub_21700BAA4();
  v35 = *(v23 + 8);
  v35(v25, v22);
  v35(v28, v22);
  if ((v34 & 1) == 0)
  {
    v56 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v121, 1, 1, v56);
  }

  sub_2167A46B8(&qword_27CAB6ED8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A798]);
  v89 = sub_21700B934();
  v90 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v38 = type metadata accessor for MenuConfiguration(0);
  v39 = v98;
  v40 = (v98 + *(v38 + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  v43 = v95;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v43;
  *(inited + 104) = v96;
  *(inited + 120) = v42;
  *(inited + 128) = 0x6F54646461;
  v44 = 0xE500000000000000;
  *(inited + 168) = v42;
  *(inited + 136) = 0xE500000000000000;
  strcpy((inited + 144), "StartOfQueue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  sub_21700DF14();
  sub_21700DF14();
  v45 = sub_21700E384();
  v46 = v93;
  v47 = v97;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v97);
  v48 = (v39 + *(v38 + 24));
  v49 = v48[1];
  v98 = *v48;
  v50 = v94;
  sub_21700D6F4();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v126 = v45;
  sub_2166EF9C4(&v126, &v125);
  v51 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v51;
  sub_2166EF9D4();
  v52 = v124;
  v127 = v42;
  *&v126 = 2036427888;
  *(&v126 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v52;
  sub_2166EF9D4();
  v53 = v124;
  v54 = 0x79726F7473;
  v55 = v47;
  switch(v100)
  {
    case 1:
      break;
    case 2:
      v44 = 0xE400000000000000;
      v54 = 1701998445;
      break;
    case 3:
      v54 = 0x636972796CLL;
      break;
    case 4:
      v54 = 0xD000000000000010;
      v44 = 0x80000002170801D0;
      break;
    case 5:
      v44 = 0x80000002170801F0;
      v54 = 0xD000000000000012;
      break;
    case 6:
      v44 = 0xE900000000000075;
      v54 = 0x6E654D6570697773;
      break;
    case 7:
      v44 = 0x8000000217080210;
      v54 = 0xD000000000000015;
      break;
    default:
      v44 = 0xE800000000000000;
      v54 = 0x6472616F6279656BLL;
      break;
  }

  v127 = v42;
  *&v126 = v54;
  *(&v126 + 1) = v44;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v53;
  sub_2166EF9D4();
  v58 = v124;
  v59 = v99;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v59, 1, v47) == 1)
  {
    sub_2166997CC(v59, &qword_27CABA820, &unk_217018CE0);
    if (!v49)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v60 = v92;
  v61 = v91;
  (*(v92 + 32))(v91, v59, v55);
  v62 = sub_217005DE4();
  v127 = v42;
  *&v126 = v62;
  *(&v126 + 1) = v63;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v58;
  sub_2166EF9D4();
  v58 = v124;
  (*(v60 + 8))(v61, v55);
  if (v49)
  {
LABEL_15:
    sub_21700DF14();
    sub_21700D6D4();
  }

LABEL_16:
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v64 = sub_21700CF84();
  v65 = __swift_project_value_buffer(v64, qword_280E73DB0);
  v66 = v107;
  MEMORY[0x21CE9DD70](v89, v90, 0x6E6F74747562, 0xE600000000000000, v58, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v67 = v108;
  v68 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013DA0;
  v70 = v69 + v68;
  v71 = v109;
  (*(v67 + 16))(v70, v66, v109);
  v72 = v105;
  v73 = v50;
  v74 = v50;
  v75 = v106;
  (*(v105 + 16))(v102, v73, v106);
  v76 = v101;
  sub_21700D244();
  (*(v67 + 8))(v66, v71);
  (*(v72 + 8))(v74, v75);
  sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
  v77 = v110;
  (*(*(v122 - 8) + 16))(v110, v123);
  v78 = v111;
  v79 = &v77[*(v111 + 52)];
  *(v79 + 4) = 0;
  *v79 = 0u;
  *(v79 + 1) = 0u;
  *&v77[v78[9]] = 0;
  (*(v103 + 32))(&v77[v78[10]], v76, v104);
  v77[v78[11]] = 0;
  v77[v78[12]] = 0;
  type metadata accessor for MenuActionType(0);
  v80 = v121;
  swift_storeEnumTagMultiPayload();
  sub_2167A4788();
  v81 = v118;
  v82 = v117;
  v83 = v119;
  (*(v118 + 16))(v117, v116, v119);
  v84 = (v113 + *(v81 + 80) + ((*(v112 + 80) + 24) & ~*(v112 + 80))) & ~*(v81 + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = v120;
  sub_2167A4788();
  (*(v81 + 32))(v85 + v84, v82, v83);
  v86 = type metadata accessor for MenuAction(0);
  v87 = (v80 + *(v86 + 20));
  *v87 = sub_2167A4510;
  v87[1] = v85;
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v86);
}

uint64_t sub_2167898E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v97 = a6;
  v94 = a5;
  v93 = a4;
  v95 = a3;
  v113 = a2;
  v121 = a1;
  v119 = a7;
  v116 = sub_2170075A4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = v8;
  v114 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EB8, &qword_217015370);
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v86 - v11;
  v106 = sub_21700CFB4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_217005EF4();
  v90 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21700D704();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v86 - v20;
  v101 = sub_21700D284();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BAB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  v30 = v7[7];
  v29 = v7[8];
  v117 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 4, v30);
  v31 = *(v29 + 144);
  v32 = sub_21700BA44();
  v33 = sub_2167A46B8(&qword_280E2A420, MEMORY[0x277CD7E58], MEMORY[0x277D2AE80]);
  v120 = v32;
  v31(v121, v32, v33, v30, v29);
  (*(v23 + 104))(v25, *MEMORY[0x277D2AEE0], v22);
  v34 = sub_21700BAA4();
  v35 = *(v23 + 8);
  v35(v25, v22);
  v35(v28, v22);
  if ((v34 & 1) == 0)
  {
    v54 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v54);
  }

  v87 = sub_21700B934();
  v88 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v38 = type metadata accessor for MenuConfiguration(0);
  v39 = v95;
  v40 = (v95 + *(v38 + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  v43 = v93;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v43;
  *(inited + 104) = v94;
  *(inited + 120) = v42;
  *(inited + 128) = 0x6F54646461;
  v44 = 0xE500000000000000;
  *(inited + 168) = v42;
  *(inited + 136) = 0xE500000000000000;
  strcpy((inited + 144), "StartOfQueue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  sub_21700DF14();
  sub_21700DF14();
  v45 = sub_21700E384();
  v46 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v118);
  v47 = (v39 + *(v38 + 24));
  v48 = v47[1];
  v95 = *v47;
  v49 = v92;
  sub_21700D6F4();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v124 = v45;
  sub_2166EF9C4(&v124, &v123);
  v50 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v50;
  sub_2166EF9D4();
  v51 = v122;
  v125 = v42;
  *&v124 = 2036427888;
  *(&v124 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v51;
  sub_2166EF9D4();
  v52 = v122;
  v53 = 0x79726F7473;
  switch(v97)
  {
    case 1:
      break;
    case 2:
      v44 = 0xE400000000000000;
      v53 = 1701998445;
      break;
    case 3:
      v53 = 0x636972796CLL;
      break;
    case 4:
      v53 = 0xD000000000000010;
      v44 = 0x80000002170801D0;
      break;
    case 5:
      v44 = 0x80000002170801F0;
      v53 = 0xD000000000000012;
      break;
    case 6:
      v44 = 0xE900000000000075;
      v53 = 0x6E654D6570697773;
      break;
    case 7:
      v44 = 0x8000000217080210;
      v53 = 0xD000000000000015;
      break;
    default:
      v44 = 0xE800000000000000;
      v53 = 0x6472616F6279656BLL;
      break;
  }

  v125 = v42;
  *&v124 = v53;
  *(&v124 + 1) = v44;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v52;
  sub_2166EF9D4();
  v56 = v122;
  v57 = v96;
  sub_2166A6EA4();
  v58 = v118;
  if (__swift_getEnumTagSinglePayload(v57, 1, v118) == 1)
  {
    sub_2166997CC(v57, &qword_27CABA820, &unk_217018CE0);
    if (!v48)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v59 = v90;
  v60 = v89;
  (*(v90 + 32))(v89, v57, v58);
  v61 = sub_217005DE4();
  v125 = v42;
  *&v124 = v61;
  *(&v124 + 1) = v62;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v56;
  sub_2166EF9D4();
  v56 = v122;
  (*(v59 + 8))(v60, v58);
  if (v48)
  {
LABEL_15:
    sub_21700DF14();
    sub_21700D6D4();
  }

LABEL_16:
  v63 = v49;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v64 = sub_21700CF84();
  v65 = __swift_project_value_buffer(v64, qword_280E73DB0);
  v66 = v104;
  MEMORY[0x21CE9DD70](v87, v88, 0x6E6F74747562, 0xE600000000000000, v56, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v67 = v105;
  v68 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013DA0;
  v70 = v69 + v68;
  v71 = v106;
  (*(v67 + 16))(v70, v66, v106);
  v72 = v102;
  v73 = v103;
  (*(v102 + 16))(v99, v63, v103);
  v74 = v98;
  sub_21700D244();
  (*(v67 + 8))(v66, v71);
  (*(v72 + 8))(v63, v73);
  sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
  v75 = v107;
  (*(*(v120 - 8) + 16))(v107, v121);
  v76 = v108;
  v77 = &v75[*(v108 + 52)];
  *(v77 + 4) = 0;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  *&v75[v76[9]] = 0;
  (*(v100 + 32))(&v75[v76[10]], v74, v101);
  v75[v76[11]] = 0;
  v75[v76[12]] = 0;
  type metadata accessor for MenuActionType(0);
  v78 = v119;
  swift_storeEnumTagMultiPayload();
  sub_2167A4788();
  v79 = v115;
  v80 = v114;
  v81 = v116;
  (*(v115 + 16))(v114, v113, v116);
  v82 = (v110 + *(v79 + 80) + ((*(v109 + 80) + 24) & ~*(v109 + 80))) & ~*(v79 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v117;
  sub_2167A4788();
  (*(v79 + 32))(v83 + v82, v80, v81);
  v84 = type metadata accessor for MenuAction(0);
  v85 = (v78 + *(v84 + 20));
  *v85 = sub_2167A44B0;
  v85[1] = v83;
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v84);
}