uint64_t UsoEntity.description.getter()
{
  sub_2676CA58C();
  sub_2676CA78C();
  sub_2675D6878();
  v0 = sub_2676CC56C();

  return v0;
}

unint64_t sub_2675D6878()
{
  result = qword_2801CCC30;
  if (!qword_2801CCC30)
  {
    sub_2676CA78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCC30);
  }

  return result;
}

uint64_t sub_2675D6938@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2675DE14C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2675D6964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675D6990(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2675D6A24(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2675D6A50(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2675D6A74(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2675D6BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6BFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB84C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6C4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D6C84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675D6CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2675D6DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D6E64@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD400]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675D6E9C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB8DC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7090()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB7FC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7144()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB58C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7198()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB55C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D71EC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB57C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7240()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FD230]();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D7294()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB59C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D72E8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB54C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675D737C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_7_7();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2675D7484(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[12] + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[7];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2675D7588(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2676CAECC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675D7610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2676CAECC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D7690(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[7];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_7_7();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2675D7798(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[9] + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[8];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2675D789C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8A8C();
  *v0 = result;
  return result;
}

uint64_t sub_2675D78C4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8B4C();
  *v0 = result;
  return result;
}

uint64_t sub_2675D78EC()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA820]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D7914()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA8B0]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D793C()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FA890]();
  *v0 = result;
  return result;
}

uint64_t sub_2675D798C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5E0, &qword_2676CF4D0);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2675D79EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D7B00()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7B40()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7BA4()
{
  if (*(v0 + 24) >= 8uLL)
  {
  }

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D7BE0()
{

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D7C14()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_90();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D7C60()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D7CE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675D7D44()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D7DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7E0C()
{
  v1 = sub_2676C8D8C();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2675D7EC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D7F0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D7F48(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_7_7();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
      OUTLINED_FUNCTION_7_7();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
        OUTLINED_FUNCTION_7_7();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
          OUTLINED_FUNCTION_7_7();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[11];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
            v12 = a3[12];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2675D8128()
{
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_7_7();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_7_7();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
      OUTLINED_FUNCTION_7_7();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
        OUTLINED_FUNCTION_7_7();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
          OUTLINED_FUNCTION_7_7();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[11];
          }

          else
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
            v10 = v2[12];
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2675D8304(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_7_7();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      OUTLINED_FUNCTION_7_7();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
        OUTLINED_FUNCTION_7_7();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[9];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
          v12 = a3[10];
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2675D8498()
{
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_7_7();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_7_7();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      OUTLINED_FUNCTION_7_7();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
        OUTLINED_FUNCTION_7_7();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[9];
        }

        else
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
          v10 = v2[10];
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2675D8650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675D8700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D87AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PromptForContactProducer(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2675D8834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PromptForContactProducer(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D88B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2675D8954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D89E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2675D8AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2675D8CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB7BC();
  *a1 = result;
  return result;
}

uint64_t sub_2675D8E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2675D8EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675D8F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676C8BFC();
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

    return (v8 + 1);
  }
}

uint64_t sub_2675D9018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676C8BFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675D9220()
{

  v0 = OUTLINED_FUNCTION_11_18();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D9250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060);
  OUTLINED_FUNCTION_2_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675D92F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675D9458()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D948C()
{
  sub_267614A2C(*(v0 + 16));
  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D94C0()
{
  sub_267614A2C(*(v0 + 16));

  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D94FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2675D9514()
{

  sub_267614A2C(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2675D9564()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675D95AC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2675D95E4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 8))(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675D9700()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D9748()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D978C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675D97C8()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675D97F8()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_267614A2C(v1);
  }

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2675D9838()
{

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D986C()
{

  OUTLINED_FUNCTION_82();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675D98A0()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2675D98D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2675D9928()
{
  v0 = OUTLINED_FUNCTION_97_0();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2675D9974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_7_7();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2675D9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2675D9B80(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
      v14 = a3[12];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2675D9CB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
      v14 = a4[12];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2675D9E2C()
{
  v1 = (type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[7], v6);
  v8(v5 + v1[8], v6);
  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_8_2();
  (*(v10 + 8))(v5 + v9);
  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_8_2();
  (*(v12 + 8))(v5 + v11);
  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2();
  (*(v14 + 8))(v5 + v13);
  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2();
  (*(v16 + 8))(v5 + v15);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675DA094()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD260, &unk_2676D1E78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD258, &qword_2676D1E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD250, &qword_2676D1E68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD248, &qword_2676D1E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD240, &qword_2676D1E58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD238, &qword_2676D1E50);
  type metadata accessor for ResolveSendMailIntent(255);
  sub_2676CBA6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_22_7();
  sub_267662E7C(v0, v1, &unk_2676D3820);
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v2, v3, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2(v4);
  OUTLINED_FUNCTION_20_9();
  sub_267662E7C(v5, v6, MEMORY[0x277CBA358]);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2(v7);
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2(v8);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2(v9);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2(v10);
  OUTLINED_FUNCTION_24_7();
  v13 = OUTLINED_FUNCTION_62_2(v11);
  return OUTLINED_FUNCTION_62_2(v13, MEMORY[0x277D5B5F0]);
}

uint64_t sub_2675DA2CC()
{
  OUTLINED_FUNCTION_21_1();
  v1 = (type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v2 + v1[7], v3);
  v5(v2 + v1[8], v3);
  v6 = v1[9];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);
  v9(v2 + v1[10], v7);
  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_8_2();
  (*(v11 + 8))(v2 + v10);
  v12 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_8_2();
  (*(v13 + 8))(v2 + v12);
  v14 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2();
  (*(v15 + 8))(v2 + v14);
  v16 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2();
  (*(v17 + 8))(v2 + v16);

  OUTLINED_FUNCTION_20_1();

  return MEMORY[0x2821FE8E8](v18, v19, v20);
}

uint64_t sub_2675DA588()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD300, &unk_2676D2488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2F8, &qword_2676D2480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2F0, &qword_2676D2478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2E8, &qword_2676D2470);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2E0, &qword_2676D2468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD2D8, &qword_2676D2460);
  type metadata accessor for ResolveSiriMailMessageIntent(255);
  sub_2676CBA6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_6();
  sub_26766B3A8(v0, v1, &unk_2676D39F8);
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v2, v3, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2(v4);
  OUTLINED_FUNCTION_9_20();
  sub_26766B3A8(v5, v6, MEMORY[0x277D5CA90]);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2(v7);
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2(v8);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2(v9);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2(v10);
  OUTLINED_FUNCTION_24_7();
  v13 = OUTLINED_FUNCTION_62_2(v11);
  return OUTLINED_FUNCTION_62_2(v13, MEMORY[0x277D5B5F0]);
}

uint64_t sub_2675DA7D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DA848()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2675DA888()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2675DA8C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DA920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB00C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DAA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB96C();
  *a1 = result;
  return result;
}

uint64_t sub_2675DABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
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

    return (v8 + 1);
  }
}

uint64_t sub_2675DAC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675DAD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB5FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DAD80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DAEE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2675DAF24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675DAF78()
{

  OUTLINED_FUNCTION_11_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2675DAFFC()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2675DB058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2675DB114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2675DB1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ResolveRecipientsPlan(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_2_6();
  (*(v10 + 8))(v4 + v7);

  v11 = v4 + v7 + v5[11];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v9 + v5[12];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_2675DB308()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD790, &qword_2676D3570);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD788, &qword_2676D3568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9F8, &unk_2676CFE90);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD788, &qword_2676D3568, v1);
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DB3E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2675DB474(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DB50C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD2A0]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675DB554(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_7_7();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_13:
    v9 = a1 + v12;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_7_7();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_7_7();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[9];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_7_7();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[10];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_7_7();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[11];
    goto LABEL_13;
  }

  v22 = *(a1 + a3[14]);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  return (v22 + 1);
}

void sub_2675DB788(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
      OUTLINED_FUNCTION_7_7();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
        OUTLINED_FUNCTION_7_7();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
          OUTLINED_FUNCTION_7_7();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[10];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
            OUTLINED_FUNCTION_7_7();
            if (*(v22 + 84) != a3)
            {
              *(a1 + a4[14]) = (a2 - 1);
              return;
            }

            v10 = v21;
            v14 = a4[11];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2675DB9B8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB92C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DB9E4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB94C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DBA10()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB98C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DBA3C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CBAFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DBA74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD820, &qword_2676D38A8);
  OUTLINED_FUNCTION_3_23();
  sub_2676148C4(v0, &qword_2801CD820, &qword_2676D38A8, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DBB04(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_7_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_7_7();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_13:
    v9 = a1 + v12;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_7_7();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_7_7();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[10];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_7_7();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[11];
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_7_7();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[12];
    goto LABEL_13;
  }

  v22 = *(a1 + a3[15]);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  return (v22 + 1);
}

void sub_2675DBD38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_7_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_7_7();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      OUTLINED_FUNCTION_7_7();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
        OUTLINED_FUNCTION_7_7();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
          OUTLINED_FUNCTION_7_7();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[11];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
            OUTLINED_FUNCTION_7_7();
            if (*(v22 + 84) != a3)
            {
              *(a1 + a4[15]) = (a2 - 1);
              return;
            }

            v10 = v21;
            v14 = a4[12];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2675DBFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD8A8, &qword_2676D3A80);
  OUTLINED_FUNCTION_3_24();
  sub_2676148C4(v0, &qword_2801CD8A8, &qword_2676D3A80, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2675DC090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2675DC0E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD900, &unk_2676D3CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD8F8, &qword_2676D3C98);
  sub_2676CB0DC();
  OUTLINED_FUNCTION_1_28();
  sub_2676148C4(v0, &qword_2801CD8F8, &qword_2676D3C98, v1);
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC244(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675DC2D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DC364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD998, &qword_2676D3E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD990, &qword_2676D3E30, v1);
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC43C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2675DC4D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2675DC55C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD998, &qword_2676D3E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_1_26();
  sub_2676148C4(v0, &qword_2801CD990, &qword_2676D3E30, v1);
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2675DC640()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2675DC770()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB9AC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DC79C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CDC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC7C8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CAC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC7F4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CFC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DC820()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8D4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DC84C()
{
  v1 = (type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_49_1();
  v8(v9);
  (v8)(v5 + v1[7], v6);
  (v8)(v5 + v1[8], v6);
  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_8_2();
  (*(v11 + 8))(v5 + v10);
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_8_2();
  (*(v13 + 8))(v5 + v12);
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2();
  (*(v15 + 8))(v5 + v14);
  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2();
  (*(v17 + 8))(v5 + v16);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2675DCA68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB98, &qword_2676D46A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB90, &qword_2676D46A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB88, &qword_2676D4698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB80, &qword_2676D4690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB78, &qword_2676D4688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDB70, &qword_2676D4680);
  type metadata accessor for ResolveSendMailIntent(255);
  sub_2676CBA1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_9();
  sub_2676A15C4(v0, v1, &unk_2676D3820);
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v2, v3, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2(v4);
  OUTLINED_FUNCTION_26_10();
  sub_2676A15C4(v5, v6, MEMORY[0x277CBA358]);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2(v7);
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2(v8);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2(v9);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2(v10);
  OUTLINED_FUNCTION_24_7();
  v13 = OUTLINED_FUNCTION_62_2(v11);
  return OUTLINED_FUNCTION_62_2(v13, MEMORY[0x277D5B5F0]);
}

uint64_t sub_2675DCC78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DCD04()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB09C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DCD68()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB05C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCD94()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB02C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCDC0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB07C();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCDEC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB16C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DCE40()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CAFEC();
  *v0 = result;
  return result;
}

uint64_t sub_2675DCE6C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = (type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_49_1();
  v5(v6);
  (v5)(v2 + v1[7], v3);
  (v5)(v2 + v1[8], v3);
  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6();
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);
  v10(v2 + v1[10], v8);
  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_8_2();
  (*(v12 + 8))(v2 + v11);
  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_8_2();
  (*(v14 + 8))(v2 + v13);
  v15 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_8_2();
  (*(v16 + 8))(v2 + v15);
  v17 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_8_2();
  (*(v18 + 8))(v2 + v17);

  OUTLINED_FUNCTION_20_1();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_2675DD0DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC18, &qword_2676D4B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC10, &qword_2676D4B88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC08, &qword_2676D4B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDC00, &qword_2676D4B78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBF8, &qword_2676D4B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBF0, &qword_2676D4B68);
  type metadata accessor for ResolveSiriMailMessageIntent(255);
  sub_2676CBA1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_37_9();
  sub_2676AFE00(v0, v1, &unk_2676D39F8);
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v2, v3, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_62_2(v4);
  OUTLINED_FUNCTION_12_18();
  sub_2676AFE00(v5, v6, MEMORY[0x277D5CA90]);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_62_2(v7);
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_62_2(v8);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_62_2(v9);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_62_2(v10);
  OUTLINED_FUNCTION_24_7();
  v13 = OUTLINED_FUNCTION_62_2(v11);
  return OUTLINED_FUNCTION_62_2(v13, MEMORY[0x277D5B5F0]);
}

uint64_t sub_2675DD304()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB75C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675DD358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2675DD3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676CBE1C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2675DD444(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676CBE1C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2675DD498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2676CAA9C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2675DD558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2676CAA9C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_2675DD73C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for AppHelper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_2675DD880()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v0);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v3 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v4 = v2 + v0[5];
  *v4 = "ConfirmValidMailAccount";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = objc_allocWithZone(MEMORY[0x277CB8F48]);
  v6 = sub_2675DDFF0(0xD000000000000014, 0x80000002676D6080);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v8 = sub_2675DDD4C();
  v34[0] = 0;
  v9 = sub_2675DE450(v8, v34, v7);
  v0 = v34[0];
  if (!v9)
  {
    v24 = v34[0];
    v25 = sub_2676C8FCC();

    swift_willThrow();
LABEL_22:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v26 = sub_2676CBE4C();
    __swift_project_value_buffer(v26, qword_2801CDC90);
    v27 = sub_2676CBE2C();
    v28 = sub_2676CC23C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2675D4000, v27, v28, "#hasValidAccount found no Mail accounts", v29, 2u);
      MEMORY[0x26D5FEA80](v29, -1, -1);
    }

    v30 = 0;
    goto LABEL_29;
  }

  v10 = v9;
  v32[0] = v7;
  v32[1] = v3;
  v33 = v2;
  sub_2675DE684();
  v11 = sub_2676CC0FC();
  v12 = v0;

  v34[0] = MEMORY[0x277D84F90];
  v13 = sub_267630B8C();
  v2 = 0;
  v14 = *MEMORY[0x277CB89C8];
  while (v13 != v2)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D5FE0E0](v2, v11);
    }

    else
    {
      if (v2 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(v11 + 8 * v2 + 32);
    }

    v16 = v15;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if ([v15 isEnabledForDataclass_])
    {
      v0 = v34;
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
    }

    else
    {
    }

    ++v2;
  }

  if (!sub_267630B8C())
  {

    v2 = v33;
    goto LABEL_22;
  }

  v2 = v33;
  v17 = v32[0];
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v18 = sub_2676CBE4C();
  __swift_project_value_buffer(v18, qword_2801CDC90);

  v19 = sub_2676CBE2C();
  v20 = sub_2676CC23C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = sub_267630B8C();

    *(v21 + 4) = v22;

    _os_log_impl(&dword_2675D4000, v19, v20, "#hasValidAccount found %ld Mail accounts", v21, 0xCu);
    v23 = v21;
    v2 = v33;
    MEMORY[0x26D5FEA80](v23, -1, -1);
  }

  else
  {
  }

  v30 = 1;
LABEL_29:
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v2);
  return v30;
}

uint64_t sub_2675DDD4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2676CD240;
  *(v0 + 32) = sub_2676CBF6C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_2676CBF6C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_2676CBF6C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_2676CBF6C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_2676CBF6C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_2676CBF6C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_2676CBF6C();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_2676CBF6C();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_2676CBF6C();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_2676CBF6C();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_2676CBF6C();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_2676CBF6C();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_2676CBF6C();
  *(v0 + 232) = v13;
  return v0;
}

id sub_2675DDEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C90FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_2675DE4C4(v8);
  if (v9)
  {
  }

  else
  {
    sub_2676C90EC();
    v10 = sub_2676C90DC();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    sub_2675DE58C(v10, v12, v8);
  }

  sub_2675DE534(a1, a2, v8);
  return v8;
}

id sub_2675DDFF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2676CBF3C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithEffectiveBundleID_];

  return v4;
}

uint64_t sub_2675DE054(uint64_t a1, id *a2)
{
  result = sub_2676CBF4C();
  *a2 = 0;
  return result;
}

uint64_t sub_2675DE0CC(uint64_t a1, id *a2)
{
  v3 = sub_2676CBF5C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2675DE14C(uint64_t a1)
{
  sub_2676CBF6C();
  v1 = sub_2676CBF3C();

  return v1;
}

uint64_t sub_2675DE184(uint64_t a1)
{
  v1 = sub_2676CBF6C();
  v2 = MEMORY[0x26D5FDD40](v1);

  return v2;
}

uint64_t sub_2675DE1BC(uint64_t a1, uint64_t a2)
{
  sub_2676CBF6C();
  sub_2676CBFFC();
}

uint64_t sub_2675DE210(uint64_t a1, uint64_t a2)
{
  sub_2676CBF6C();
  sub_2676CC64C();
  sub_2676CBFFC();
  v2 = sub_2676CC67C();

  return v2;
}

uint64_t sub_2675DE290(uint64_t a1)
{
  v2 = sub_2675DE814(&qword_2801CBBD0, type metadata accessor for DocumentAttributeKey, &unk_2676CD574);
  v3 = sub_2675DE814(&qword_2801CBBD8, type metadata accessor for DocumentAttributeKey, &unk_2676CD394);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2675DE34C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2676CBF3C();

  *a2 = v3;
  return result;
}

uint64_t sub_2675DE394(uint64_t a1)
{
  v2 = sub_2675DE814(&qword_2801CBBC0, type metadata accessor for DocumentType, &unk_2676CD4EC);
  v3 = sub_2675DE814(&qword_2801CBBC8, type metadata accessor for DocumentType, &unk_2676CD494);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_2675DE450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2676CC0EC();

  v6 = [a3 accountsWithAccountTypeIdentifiers:v5 error:a2];

  return v6;
}

uint64_t sub_2675DE4C4(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2676CBF6C();

  return v3;
}

void sub_2675DE534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2676CBF3C();
  [a3 setBundleId_];
}

void sub_2675DE58C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2676CBF3C();

  [a3 setAceId_];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2675DE628(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2675DE684()
{
  result = qword_2801CBB70;
  if (!qword_2801CBB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CBB70);
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

void sub_2675DE738(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2675DE814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_2675DE9C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v35 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v29 = v8;
  result = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = 0;
  v34 = *(a3 + 16);
  v31 = v6 + 16;
  v14 = (v6 + 8);
  v28 = (v6 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v13)
    {

      return v30;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    v17 = a3;
    (*(v6 + 16))(v12, a3 + v15 + v16 * v13, v35);
    v18 = v32(v12);
    if (v3)
    {
      (*v14)(v12, v35);
      v25 = v30;

      return v25;
    }

    if (v18)
    {
      v27 = *v28;
      v27(v29, v12, v35);
      v19 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v19;
      }

      else
      {
        sub_2676C2778(0, *(v19 + 16) + 1, 1);
        v21 = v36;
      }

      a3 = v17;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v30 = v23 + 1;
        v26 = v23;
        sub_2676C2778((v22 > 1), v23 + 1, 1);
        v24 = v30;
        v23 = v26;
        a3 = v17;
        v21 = v36;
      }

      ++v13;
      *(v21 + 16) = v24;
      v30 = v21;
      result = (v27)(v21 + v15 + v23 * v16, v29, v35);
    }

    else
    {
      result = (*v14)(v12, v35);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2675DEC6C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v6 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11(v10, v11, v12, v13, v14, v15, v16, v17, v40);
  sub_2676A1944();
  OUTLINED_FUNCTION_5(v18);
  OUTLINED_FUNCTION_14(MEMORY[0x277D84F90]);
LABEL_2:
  while (a1 != v41)
  {
    v19 = OUTLINED_FUNCTION_0_0();
    v3(v19);
    v43 = a1 + 1;
    if (*(v2 + 16))
    {
      v20 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      v22 = sub_2675DF0DC(&qword_2801CBF50, v21, MEMORY[0x277CBA2E8]);
      OUTLINED_FUNCTION_18(v22);
      OUTLINED_FUNCTION_15();
      while (1)
      {
        OUTLINED_FUNCTION_7();
        if ((v23 & 1) == 0)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_10();
        v3(v24);
        OUTLINED_FUNCTION_1();
        v26 = sub_2675DF0DC(&qword_2801CBF58, v25, MEMORY[0x277CBA2F0]);
        OUTLINED_FUNCTION_12(v26);
        v27 = OUTLINED_FUNCTION_13();
        (a2)(v27);
        if (v20)
        {
          a2(v44, v6);
          a1 = v43;
          goto LABEL_2;
        }
      }
    }

    v28 = OUTLINED_FUNCTION_17();
    v3(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_8();
      sub_2676C2778(v31, v32, v33);
      v30 = v42;
    }

    v34 = *(v30 + 24);
    if (*(v30 + 16) >= v34 >> 1)
    {
      v36 = OUTLINED_FUNCTION_9(v34);
      sub_2676C2778(v36, v37, v38);
    }

    v35 = OUTLINED_FUNCTION_6();
    v3(v35);
    a1 = v43;
  }

  return v42;
}

uint64_t sub_2675DEEA4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v6 = sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11(v10, v11, v12, v13, v14, v15, v16, v17, v40);
  sub_2676A1AA0();
  OUTLINED_FUNCTION_5(v18);
  OUTLINED_FUNCTION_14(MEMORY[0x277D84F90]);
LABEL_2:
  while (a1 != v41)
  {
    v19 = OUTLINED_FUNCTION_0_0();
    v3(v19);
    v43 = a1 + 1;
    if (*(v2 + 16))
    {
      v20 = *(v2 + 40);
      OUTLINED_FUNCTION_2();
      v22 = sub_2675DF0DC(&qword_2801CBF40, v21, MEMORY[0x277D5CA60]);
      OUTLINED_FUNCTION_18(v22);
      OUTLINED_FUNCTION_15();
      while (1)
      {
        OUTLINED_FUNCTION_7();
        if ((v23 & 1) == 0)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_10();
        v3(v24);
        OUTLINED_FUNCTION_2();
        v26 = sub_2675DF0DC(&qword_2801CBF48, v25, MEMORY[0x277D5CA68]);
        OUTLINED_FUNCTION_12(v26);
        v27 = OUTLINED_FUNCTION_13();
        (a2)(v27);
        if (v20)
        {
          a2(v44, v6);
          a1 = v43;
          goto LABEL_2;
        }
      }
    }

    v28 = OUTLINED_FUNCTION_17();
    v3(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_8();
      sub_2676C27D0(v31, v32, v33);
      v30 = v42;
    }

    v34 = *(v30 + 24);
    if (*(v30 + 16) >= v34 >> 1)
    {
      v36 = OUTLINED_FUNCTION_9(v34);
      sub_2676C27D0(v36, v37, v38);
    }

    v35 = OUTLINED_FUNCTION_6();
    v3(v35);
    a1 = v43;
  }

  return v42;
}

uint64_t sub_2675DF0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5(uint64_t result)
{
  v4 = *(v1 + 16);
  *(v3 - 168) = v1;
  *(v3 - 160) = v4;
  *(v3 - 112) = result + 56;
  *(v3 - 104) = v2 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  *(v0 + 16) = v1;
  *(v4 - 136) = v0;
  return v0 + *(v4 - 128) + v2 * v3;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return sub_2676CBF1C();
}

void OUTLINED_FUNCTION_14(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 176) = v1;
  *(v2 - 152) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_2676CBF0C();
}

uint64_t sub_2675DF334()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v0[6] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v0[7] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C99CC();
  v0[8] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[9] = v5;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v6 = sub_2676C9DDC();
  v0[12] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v0[15] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675DF504, 0, 0);
}

uint64_t sub_2675DF504()
{
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 128) = sub_2676CB42C();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2675DF5BC;

  return sub_267652C44();
}

uint64_t sub_2675DF5BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v4 + 144) = v1;

  if (v1)
  {
    v7 = sub_2675DFB70;
  }

  else
  {

    *(v4 + 152) = a1;
    v7 = sub_2675DF6E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2675DF6E4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v15 = v0[6];
  v16 = v0[3];
  v18 = v0[19];
  sub_2676C999C();
  (*(v4 + 16))(v1, v2, v3);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v7 + 8))(v6, v16);
  sub_2676C9D5C();
  (*(v4 + 8))(v2, v3);
  sub_2676C9B9C();
  swift_allocObject();
  v0[20] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v9 = swift_allocObject();
  v0[21] = v9;
  *(v9 + 16) = xmmword_2676CD5C0;
  *(v9 + 32) = v18;
  v17 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v10 = v18;
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_2675DF960;
  v12 = v0[14];
  v13 = v0[2];

  return v17(v13, v9, v12);
}

uint64_t sub_2675DF960()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2675DFA88, 0, 0);
}

uint64_t sub_2675DFA88()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675DFB70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675DFC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675DFCCC;

  return sub_2675DF334();
}

uint64_t sub_2675DFCCC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_task_alloc();
}

uint64_t sub_2675DFE20(char a1)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v1, v2, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v3, v4, MEMORY[0x277D5C6A8]);
  v5 = sub_2676CA8CC();

  return v5;
}

uint64_t sub_2675DFEE4(char a1, uint64_t a2)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v3, v4, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_0_2();
  sub_2675E0214(v5, v6, MEMORY[0x277D5C6A8]);
  v7 = sub_2676CA8BC();
  sub_2676A1D90(a2);
  v7(&v9, 0);
}

void sub_2675E0008(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v2, v3, MEMORY[0x277D5C780]);
    OUTLINED_FUNCTION_0_2();
    v6 = sub_2675E0214(v4, v5, MEMORY[0x277D5C6A8]);
    OUTLINED_FUNCTION_2_1(v6, v7, v8);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_4_0();
    if (v11 == v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v13, v14, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_0_2();
  v17 = sub_2675E0214(v15, v16, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_2_1(v17, v18, v19);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0();
  if (v11 == v12)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  sub_2675E0214(v20, v21, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_0_2();
  v24 = sub_2675E0214(v22, v23, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_2_1(v24, v25, v26);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0();
  if (v11 == v12)
  {
LABEL_10:
    sub_2675E0994(v9, v10);
    v1(v27, 0);

    return;
  }

  __break(1u);
}

uint64_t sub_2675E0214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2675E025C(char a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_1_1();
  v7 = sub_2675E0214(v5, v6, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_0_2();
  v10 = sub_2675E0214(v8, v9, MEMORY[0x277D5C6A8]);

  return MEMORY[0x2821C3648](a2, KeyPath, v4, v7, v10);
}

uint64_t sub_2675E0334(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_2675E047C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2676CC4EC();
LABEL_9:
  result = sub_2676CC42C();
  *v2 = result;
  return result;
}

uint64_t sub_2675E054C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2675E05C4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = *v2;
  v15 = v51;
  result = sub_2675E0334(v49, a2, *v2);
  if (!v15)
  {
    v44 = v13;
    v39 = v8;
    v40 = v11;
    v47 = result;
    if (v17)
    {
      return *(v14 + 16);
    }

    else
    {
      v50 = 0;
      v37 = v2;
      v18 = v47 + 1;
      if (!__OFADD__(v47, 1))
      {
        v46 = v5 + 16;
        v42 = a2;
        v43 = v5 + 8;
        v38 = (v5 + 40);
        v19 = v44;
        v41 = v5;
        while (1)
        {
          v20 = *(v14 + 16);
          if (v18 == v20)
          {
            return v47;
          }

          if (v18 >= v20)
          {
            break;
          }

          v21 = v14;
          v45 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v22 = v14 + v45;
          v23 = *(v5 + 72);
          v51 = v18;
          v24 = *(v5 + 16);
          v48 = v23 * v18;
          v24(v19, v22 + v23 * v18, v4);
          v25 = v50;
          v26 = v4;
          v27 = v49(v19);
          result = (*(v5 + 8))(v19, v26);
          if (v25)
          {
            return result;
          }

          v50 = 0;
          if (v27)
          {
            v4 = v26;
            v5 = v41;
            v19 = v44;
            v14 = v21;
            v28 = v51;
          }

          else
          {
            v29 = v47;
            v28 = v51;
            if (v51 == v47)
            {
              v4 = v26;
              v19 = v44;
              v14 = v21;
            }

            else
            {
              result = v40;
              if ((v47 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v30 = *(v21 + 16);
              if (v47 >= v30)
              {
                goto LABEL_27;
              }

              v31 = v23 * v47;
              result = (v24)(v40, v22 + v23 * v47, v26);
              if (v51 >= v30)
              {
                goto LABEL_28;
              }

              v32 = v39;
              v24(v39, v22 + v48, v26);
              v14 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2675E0958(v21);
                v14 = v36;
              }

              v33 = v14 + v45;
              v34 = *v38;
              v35 = v32;
              v4 = v26;
              result = (*v38)(v14 + v45 + v31, v35, v26);
              if (v51 >= *(v14 + 16))
              {
                goto LABEL_29;
              }

              result = v34(v33 + v48, v40, v26);
              v28 = v51;
              *v37 = v14;
              v29 = v47;
              v19 = v44;
            }

            v47 = v29 + 1;
            v5 = v41;
          }

          v18 = v28 + 1;
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
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2675E0994(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2675E054C(result, 1, sub_267606BD8);
  v8 = *v2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_2676C24A0(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2676CA8BC();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_2675E05C4(v1, v0);
}

uint64_t sub_2675E0B80()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2676C90FC();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v0[7] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v0[8] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C99CC();
  v0[9] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v0[10] = v6;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v7 = sub_2676C9DDC();
  v0[13] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v0[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675E0D50, 0, 0);
}

uint64_t sub_2675E0D50()
{
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 136) = sub_2676CB42C();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2675E0E08;

  return sub_267652AAC();
}

uint64_t sub_2675E0E08()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  *(v2 + 152) = v3;
  *(v2 + 160) = v0;

  if (v0)
  {
    v4 = sub_2675E14A0;
  }

  else
  {

    v4 = sub_2675E0F20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2675E0F20()
{
  v1 = [*(v0 + 152) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v21 = *(v0 + 56);
  v22 = *(v0 + 32);
  v23 = *(v0 + 24);

  sub_2676C999C();
  (*(v9 + 16))(v8, v7, v10);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v11);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v14 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v13 + 8))(v12, v22);
  sub_2676C9D5C();
  if ((v23 & 0x80) != 0)
  {
    sub_2676CAF6C();
    sub_2676C9D3C();
  }

  v15 = *(v0 + 152);
  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  sub_2676C9B9C();
  swift_allocObject();
  *(v0 + 168) = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v16 = swift_allocObject();
  *(v0 + 176) = v16;
  *(v16 + 16) = xmmword_2676CD5C0;
  *(v16 + 32) = v15;
  v24 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v17 = v15;
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_2675E1288;
  v19 = *(v0 + 120);
  v20 = *(v0 + 16);

  v24(v20, v16, v19);
}

uint64_t sub_2675E1288()
{
  OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](sub_2675E13B8, 0, 0);
}

uint64_t sub_2675E13B8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675E14A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675E1564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675E1604;

  return sub_2675E0B80();
}

uint64_t sub_2675E1604()
{
  OUTLINED_FUNCTION_3_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2675E16F4()
{
  result = qword_2801CBF80;
  if (!qword_2801CBF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CBF80);
  }

  return result;
}

uint64_t sub_2675E1754@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_3();
  *a1 = result;
  return result;
}

uint64_t sub_2675E1780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A0C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E17B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A14(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E17E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6A1C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2675E1818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675D6A50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2675E184C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675D6A74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2675E1898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675D6AB0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_2675E1908@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2675E1930@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2675E1ABC(a2);
  *a1 = result;
  return result;
}

unint64_t sub_2675E195C()
{
  result = qword_2801CBF88;
  if (!qword_2801CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF88);
  }

  return result;
}

unint64_t sub_2675E19B4()
{
  result = qword_2801CBF90;
  if (!qword_2801CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF90);
  }

  return result;
}

unint64_t sub_2675E1A0C()
{
  result = qword_2801CBF98;
  if (!qword_2801CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBF98);
  }

  return result;
}

unint64_t sub_2675E1A64()
{
  result = qword_2801CBFA0;
  if (!qword_2801CBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFA0);
  }

  return result;
}

uint64_t sub_2675E1ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = v6 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2675E1D40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675E1D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for SendMailCATsSimple(319);
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2675E1E2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v2[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[10] = v8;
  v2[11] = OUTLINED_FUNCTION_19();
  v2[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v9);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v10);
  v2[14] = OUTLINED_FUNCTION_19();
  v2[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  OUTLINED_FUNCTION_4_1(v11);
  v2[16] = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2675E200C()
{
  v3 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  *(v0 + 136) = v3;
  *(v0 + 176) = *(v3 + 24);
  v4 = *(sub_2676CB05C() + 16);

  v5 = *(sub_2676CB02C() + 16);

  v7 = __OFADD__(v4, v5);
  v8 = v4 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(sub_2676CB07C() + 16);

  if (__OFADD__(v8, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 + v9 <= 1)
  {
    v10 = *(v0 + 128);
    v11 = sub_2676CB05C();
    sub_267698E2C(v11);

    v12 = sub_2676CB14C();
    v13 = OUTLINED_FUNCTION_18_0();
    v14 = *(v0 + 128);
    if (v13 != 1)
    {
      sub_2676262E8();
      OUTLINED_FUNCTION_20();
      (*(v15 + 8))(v14, v12);
      goto LABEL_8;
    }

    sub_2675E35CC(*(v0 + 128), &qword_2801CBFD8, &unk_2676CD9C0);
  }

  v10 = 0;
LABEL_8:
  *(v0 + 144) = v10;
  sub_2676CB16C();
  if (v16)
  {
    sub_2676CBFEC();
  }

  v17 = sub_2676CB3FC();
  OUTLINED_FUNCTION_14_0(v17);
  sub_2676CB09C();
  if (v18)
  {
    sub_2676CBFEC();

    v2 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 112), v2, 1, v1);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_2675E2248;
  OUTLINED_FUNCTION_10_0();

  return sub_267693D64();
}

uint64_t sub_2675E2248()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v7 + 160) = v6;
  *(v7 + 168) = v0;

  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2675E23AC(uint64_t a1)
{
  sub_2676CB09C();
  if (v2)
  {
    v3 = sub_2676CC00C();

    if (v3 <= 100)
    {
      OUTLINED_FUNCTION_11_0();
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    if (v32 != 1)
    {
LABEL_4:
      v6 = v1[12];
      v5 = v1[13];
      v7 = v1[8];
      v8 = v1[6];
      OUTLINED_FUNCTION_0_4();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
      v10 = OUTLINED_FUNCTION_24(v9);
      v76 = OUTLINED_FUNCTION_8_0(v10, xmmword_2676CD5C0);
      sub_2676C998C();
      v11 = OUTLINED_FUNCTION_7_0();
      v12(v11);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_5_0();
      sub_26762D4C8(v7);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v13 = sub_2676C9B3C();
      OUTLINED_FUNCTION_2_2(v13, v14, v15, v16, v17, v18, v19, v20, v70, v73);
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      OUTLINED_FUNCTION_13_0();
      v21(v8);
      sub_2676C9D5C();
      sub_2676C9DAC();
      v22 = sub_2676C9DCC();
      v30 = OUTLINED_FUNCTION_22(v22, v23, v24, v25, v26, v27, v28, v29, v71, v74, v6);
      v31(v30);
      goto LABEL_7;
    }
  }

  v33 = v1[12];
  v5 = v1[13];
  v34 = v1[8];
  OUTLINED_FUNCTION_0_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v36 = OUTLINED_FUNCTION_24(v35);
  v76 = OUTLINED_FUNCTION_8_0(v36, xmmword_2676CD5C0);
  sub_2676C998C();
  v37 = OUTLINED_FUNCTION_6_0();
  v38(v37);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_0();
  sub_26762D4C8(v34);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v39 = sub_2676C9B3C();
  OUTLINED_FUNCTION_2_2(v39, v40, v41, v42, v43, v44, v45, v46, v70, v73);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v47 = OUTLINED_FUNCTION_16_0();
  v48(v47);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676CAF7C();
  sub_2676C9D3C();
  v49 = sub_2676C9DCC();
  v57 = OUTLINED_FUNCTION_22(v49, v50, v51, v52, v53, v54, v55, v56, v72, v75, v33);
  v58(v57);
LABEL_7:
  v59 = sub_2676C9DDC();
  v60 = __swift_storeEnumTagSinglePayload(v5, 0, 1, v59);
  OUTLINED_FUNCTION_17_0(v60, v61, v62, v63, v64, v65, v66, v67);

  OUTLINED_FUNCTION_15_0();

  return v68();
}

uint64_t sub_2675E2714()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675E27F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E3684;

  return sub_2675E1E2C(a1);
}

uint64_t sub_2675E2888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v2[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[10] = v8;
  v2[11] = OUTLINED_FUNCTION_19();
  v2[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v9);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676C8E9C();
  v2[14] = v10;
  OUTLINED_FUNCTION_4_1(v10);
  v2[15] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C8EBC();
  v2[16] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v2[17] = v12;
  v2[18] = OUTLINED_FUNCTION_2_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v13);
  v2[19] = OUTLINED_FUNCTION_19();
  v2[20] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v14);
  v2[21] = OUTLINED_FUNCTION_19();
  v2[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v15);
  v2[23] = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2675E2B10()
{
  v3 = type metadata accessor for ConfirmSendProducer(0);
  *(v0 + 192) = v3;
  *(v0 + 232) = *(v3 + 24);
  v4 = *(sub_2676C8CDC() + 16);

  v5 = *(sub_2676C8CAC() + 16);

  v7 = __OFADD__(v4, v5);
  v8 = v4 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(sub_2676C8CFC() + 16);

  if (__OFADD__(v8, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 + v9 <= 1)
  {
    v10 = *(v0 + 184);
    v11 = sub_2676C8CDC();
    sub_267698E44(v11);

    v12 = sub_2676C8C8C();
    v13 = OUTLINED_FUNCTION_18_0();
    v14 = *(v0 + 184);
    if (v13 != 1)
    {
      sub_267626550();
      OUTLINED_FUNCTION_20();
      (*(v15 + 8))(v14, v12);
      goto LABEL_8;
    }

    sub_2675E35CC(*(v0 + 184), &qword_2801CBFE8, &unk_2676CD9E0);
  }

  v10 = 0;
LABEL_8:
  *(v0 + 200) = v10;
  sub_2676C8D4C();
  if (v16)
  {
    sub_2676CBFEC();
  }

  v17 = *(v0 + 160);
  v18 = sub_2676CB3FC();
  OUTLINED_FUNCTION_14_0(v18);
  sub_2676C8D1C();
  sub_26762D208();
  v20 = v19;
  sub_2675E35CC(v17, &qword_2801CBFE0, &qword_2676D1070);
  if (v20)
  {
    sub_2676CBFEC();

    v2 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 168), v2, 1, v1);
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_2675E2D88;
  OUTLINED_FUNCTION_10_0();

  return sub_267693D64();
}

uint64_t sub_2675E2D88()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v7 + 216) = v6;
  *(v7 + 224) = v0;

  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2675E2EEC(uint64_t a1)
{
  sub_2676C8D1C();
  if (!OUTLINED_FUNCTION_18_0())
  {
    v4 = v1[18];
    v5 = v1[19];
    v6 = v1[16];
    (*(v1[17] + 16))(v4, v5, v6);
    sub_2675E35CC(v5, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    OUTLINED_FUNCTION_13_0();
    v7(v4, v6);
    v8 = sub_2676CC00C();

    if (v8 <= 100)
    {
      OUTLINED_FUNCTION_11_0();
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v1[12];
    v10 = v1[13];
    v12 = v1[8];
    OUTLINED_FUNCTION_0_4();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v14 = OUTLINED_FUNCTION_24(v13);
    v80 = OUTLINED_FUNCTION_8_0(v14, xmmword_2676CD5C0);
    sub_2676C998C();
    v15 = OUTLINED_FUNCTION_6_0();
    v16(v15);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_5_0();
    sub_26762D4C8(v12);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    v17 = sub_2676C9B3C();
    OUTLINED_FUNCTION_2_2(v17, v18, v19, v20, v21, v22, v23, v24, v74, v77);
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    v25 = OUTLINED_FUNCTION_16_0();
    v26(v25);
    sub_2676C9D5C();
    sub_2676C9DAC();
    sub_2676CAF7C();
    sub_2676C9D3C();
    v27 = sub_2676C9DCC();
    v35 = OUTLINED_FUNCTION_22(v27, v28, v29, v30, v31, v32, v33, v34, v75, v78, v11);
    v36(v35);
    goto LABEL_8;
  }

  v2 = v1[24];
  v3 = v1[3];
  sub_2675E35CC(v1[19], &qword_2801CBFE0, &qword_2676D1070);
  if (*(v3 + *(v2 + 28)) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v37 = v1[12];
  v10 = v1[13];
  v38 = v1[8];
  v39 = v1[6];
  OUTLINED_FUNCTION_0_4();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v41 = OUTLINED_FUNCTION_24(v40);
  v80 = OUTLINED_FUNCTION_8_0(v41, xmmword_2676CD5C0);
  sub_2676C998C();
  v42 = OUTLINED_FUNCTION_7_0();
  v43(v42);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_0();
  sub_26762D4C8(v38);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v44 = sub_2676C9B3C();
  OUTLINED_FUNCTION_2_2(v44, v45, v46, v47, v48, v49, v50, v51, v74, v77);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  OUTLINED_FUNCTION_13_0();
  v52(v39);
  sub_2676C9D5C();
  sub_2676C9DAC();
  v53 = sub_2676C9DCC();
  v61 = OUTLINED_FUNCTION_22(v53, v54, v55, v56, v57, v58, v59, v60, v76, v79, v37);
  v62(v61);
LABEL_8:
  v63 = sub_2676C9DDC();
  v64 = __swift_storeEnumTagSinglePayload(v10, 0, 1, v63);
  OUTLINED_FUNCTION_17_0(v64, v65, v66, v67, v68, v69, v70, v71);

  OUTLINED_FUNCTION_15_0();

  return v72();
}

uint64_t sub_2675E333C()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675E344C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_2675E2888(a1);
}

uint64_t sub_2675E34E4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_2675E35CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2675E362C()
{
  result = qword_2801CBFF0;
  if (!qword_2801CBFF0)
  {
    sub_2676C8E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_2676C9D6C();
}

id OUTLINED_FUNCTION_8_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1)
{

  return sub_2675E35CC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2675E38E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  sub_2676CAD6C();
  result = sub_2676CAE5C();
  if (*(result + 16))
  {
    (*(v4 + 16))(v8, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v10 = sub_2676CAB0C();
    (*(v4 + 8))(v8, v2);
    static MailAddresseePrototype.from(name:email:)(v10, a1);

    sub_2676CADFC();
    return sub_2676C8C7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2675E3A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_2676CB33C();
  swift_allocObject();
  sub_2676CB32C();
  sub_2676CAE9C();
  sub_2676CBFEC();

  sub_2676CB3FC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB2FC();

  sub_2675E3BB8(v2);
  sub_2676CAE7C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB2EC();

  sub_2675E3BB8(v2);
  sub_2676CACEC();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB30C();

  sub_2675E3BB8(v2);
  v3 = sub_2676CB31C();

  return v3;
}

uint64_t sub_2675E3BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675E3C20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v26 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v27 = MEMORY[0x277D84F90];
  v9 = *(sub_2676CAE5C() + 16);

  if (v9)
  {
    v10 = sub_2676CAE5C();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_2676CB22C();
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v23 = v14;
      v24 = v12;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v22 = *(v13 + 56);
      v25 = v13;
      v20 = v10;
      v21 = (v13 - 8);
      do
      {
        v16 = v26;
        v23(v8, v15, v26);
        sub_2676CB33C();
        swift_allocObject();
        sub_2676CB32C();
        sub_2676CAE9C();
        sub_2676CBFEC();

        sub_2676CB3FC();
        OUTLINED_FUNCTION_2_3();
        sub_2676CB2FC();

        sub_2675E3BB8(v2);
        sub_2676CAE7C();
        sub_2676CBFEC();

        OUTLINED_FUNCTION_2_3();
        sub_2676CB2EC();

        sub_2675E3BB8(v2);
        sub_2676CACEC();
        sub_2676CBFEC();

        OUTLINED_FUNCTION_2_3();
        sub_2676CB30C();

        sub_2675E3BB8(v2);
        sub_2676CAAAC();
        (*v21)(v8, v16);
        sub_2676CB1BC();
        sub_2676CB2BC();

        sub_2676CB31C();

        MEMORY[0x26D5FDDA0](v17);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2676CC11C();
        }

        sub_2676CC15C();

        v15 += v22;
        --v11;
      }

      while (v11);
      v18 = v27;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_2675E3A44();
    MEMORY[0x26D5FDDA0]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2676CC11C();
    }

    sub_2676CC15C();
    return v27;
  }

  return v18;
}

void sub_2675E3FBC(uint64_t a1)
{
  v31 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  v8 = *(a1 + 16);
  if (v8)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2676C2828(0, v8, 0);
    v9 = v32;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v29 = *(v10 + 56);
    v30 = v11;
    v13 = (v10 - 8);
    do
    {
      v14 = v10;
      v30(v7, v12, v31);
      v15 = sub_2676CAE5C();
      (*v13)(v7, v31);
      v17 = *(v32 + 16);
      v16 = *(v32 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_2676C2828((v16 > 1), v17 + 1, 1);
      }

      *(v32 + 16) = v18;
      *(v32 + 8 * v17 + 32) = v15;
      v12 += v29;
      --v8;
      v10 = v14;
    }

    while (v8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v19)
    {

      return;
    }

    if (v19 >= *(v9 + 16))
    {
      break;
    }

    v21 = *(v9 + 8 * v19 + 32);
    v22 = *(v21 + 16);
    v23 = *(v20 + 16);
    if (__OFADD__(v23, v22))
    {
      goto LABEL_24;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v20 + 24) >> 1)
    {
      sub_267606CBC();
      v20 = v24;
    }

    if (*(v21 + 16))
    {
      v25 = (*(v20 + 24) >> 1) - *(v20 + 16);
      sub_2676CAB1C();
      if (v25 < v22)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = *(v20 + 16);
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_27;
        }

        *(v20 + 16) = v28;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_25;
      }
    }

    ++v19;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675E42FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2675E433C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2675E438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v6);
  v5[32] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C9A6C();
  v5[33] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v5[34] = v8;
  v5[35] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C90FC();
  v5[36] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v5[37] = v10;
  v5[38] = OUTLINED_FUNCTION_2_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v11);
  v5[39] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v12);
  v5[40] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C99CC();
  v5[41] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v5[42] = v14;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v15 = sub_2676C9DDC();
  v5[45] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v5[46] = v16;
  v5[47] = OUTLINED_FUNCTION_2_0();
  v17 = sub_2676CAECC();
  v5[48] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v5[49] = v18;
  v5[50] = OUTLINED_FUNCTION_2_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v19);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v20 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v20);
  v5[53] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675E4660, 0, 0);
}

uint64_t sub_2675E4660()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#ContactDisambiguationProducer producing contact disambiguation", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v6 = v0[28];
  v5 = v0[29];

  v7 = v6 == 0x7265646E6573 && v5 == 0xE600000000000000;
  if (v7 || (sub_2676CC59C() & 1) != 0)
  {
    type metadata accessor for ReadMailCATsSimple(0);
    sub_2676CB47C();
    v0[54] = sub_2676CB42C();
    v8 = sub_2676CB3FC();
    OUTLINED_FUNCTION_32(v8);
    v9 = swift_task_alloc();
    v0[55] = v9;
    *v9 = v0;
    v9[1] = sub_2675E48D8;

    return sub_267653CE8();
  }

  else
  {
    type metadata accessor for SendMailCATsSimple(0);
    sub_2676CB47C();
    v0[57] = sub_2676CB42C();
    v11 = sub_2676CB3FC();
    OUTLINED_FUNCTION_32(v11);
    v12 = swift_task_alloc();
    v0[58] = v12;
    *v12 = v0;
    v12[1] = sub_2675E5128;

    return sub_267694768();
  }
}

uint64_t sub_2675E48D8(uint64_t a1)
{
  v3 = *v2;
  v8 = *v2;
  v8[21] = v2;
  v8[22] = a1;
  v8[23] = v1;
  OUTLINED_FUNCTION_25();
  *v4 = *v2;
  *(v5 + 448) = v1;

  OUTLINED_FUNCTION_25();
  sub_2675E3BB8(v3[52]);

  if (v1)
  {
    v6 = sub_2675E5978;
  }

  else
  {
    v6 = sub_2675E4A28;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2675E4A28()
{
  v4 = v0;
  v5 = *(v0 + 448);
  v6 = v4[22];
  sub_2676C919C();
  v7 = sub_2676C917C();
  v8 = v4[30];
  v110 = v6;
  if ((v7 & 1) == 0)
  {
    v33 = qword_2801CBA70;

    if (v33 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  v99 = sub_2676CBB7C();
  v4[15] = v99;
  OUTLINED_FUNCTION_4_2();
  v4[16] = sub_2675E5DE8(v9, v10, MEMORY[0x277D565B8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 12);
  v107 = v5;
  v123 = *(v8 + 16);
  if (v123)
  {
    OUTLINED_FUNCTION_2_4();
    v2 = MEMORY[0x277D84F90];
    v122 = v11;
    v118 = *(v11 + 56);
    v112 = v4;
    while (1)
    {
      v12 = OUTLINED_FUNCTION_11_1();
      v13(v12);
      v14 = v5;
      sub_2676CAD7C();
      v15 = OUTLINED_FUNCTION_18_1();
      v16(v15);
      v5 >>= 62;
      if (v14 >> 62)
      {
        v17 = sub_2676CC4EC();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v2 >> 62;
      if (v2 >> 62)
      {
        v19 = OUTLINED_FUNCTION_38();
      }

      else
      {
        v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        OUTLINED_FUNCTION_7_1(&qword_2801CBA70);
LABEL_38:
        v34 = *(qword_2801D3CD0 + 208);

        OUTLINED_FUNCTION_9_0();
        sub_2676C91EC();
        v4[5] = OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_5_1();
        v4[6] = sub_2675E5DE8(v35, v36, MEMORY[0x277D5C8F8]);
        v37 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
        v38 = OUTLINED_FUNCTION_36(v37);
LABEL_48:
        OUTLINED_FUNCTION_0_5(v38);
        v47 = OUTLINED_FUNCTION_13_1();
        v48(v47);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_33();
        sub_26762D4C8(v2);
        sub_2676C9D3C();
        sub_2676C9D7C();
        sub_2676C9DBC();
        sub_2676C9DAC();
        v49 = sub_2676C9B3C();
        OUTLINED_FUNCTION_19_0(v49, v50, v51, v52, v53, v54, v55, v56, v91, v95, v99, boxed_opaque_existential_1, v107, v110, v112, v114, v116, v118, v120, v121, v2, v122, v123, v124, v125, v126);
        sub_2676C9D9C();
        sub_2676C90EC();
        sub_2676C90DC();
        v57 = OUTLINED_FUNCTION_17_1();
        v58(v57);
        sub_2676C9D5C();
        v59 = sub_2676C9DAC();
        v66 = OUTLINED_FUNCTION_27(v59, *MEMORY[0x277D5BC50], v60, v61, v62, v63, v64, v65, v92, v96, v100, v104, v108);
        v67(v66);
        v68 = sub_2676C9D4C();
        v76 = OUTLINED_FUNCTION_26(v68, v69, v70, v71, v72, v73, v74, v75, v93, v97, v101, v105);
        v77(v76);
        sub_2675E5D38(v34 + 16, v34 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
        v78 = swift_allocObject();
        v86 = OUTLINED_FUNCTION_6_1(v78, xmmword_2676CD5C0, v79, v80, v81, v82, v83, v84, v85, v94, v98, v102, v106, v109, v111, v113, v115, v117, v119);
        v87(v86);
        OUTLINED_FUNCTION_14_1();
        v88 = OUTLINED_FUNCTION_23_0();
        v89(v88);
        __swift_destroy_boxed_opaque_existential_1(v34 + 16);

        OUTLINED_FUNCTION_15_0();
        goto LABEL_49;
      }

      v126 = v1;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_14;
      }

LABEL_15:
      v2 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_21_0();
LABEL_16:
      OUTLINED_FUNCTION_29();
      if (v5)
      {
        v24 = OUTLINED_FUNCTION_34();
        if (v24)
        {
          v25 = v24;
          v26 = sub_2676CC4EC();
          if (v1 < v26)
          {
            goto LABEL_55;
          }

          if (v25 < 1)
          {
            goto LABEL_57;
          }

          v114 = v26;
          v116 = v17;
          v1 = v2 + 32;
          sub_2675E5EC0();
          do
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC010, &qword_2676CDA88);
            v5 = OUTLINED_FUNCTION_20_0(v27);
            v2 = *v28;
            (v5)(v3, 0);
            OUTLINED_FUNCTION_24_0();
          }

          while (!v29);
          v4 = v112;
          v22 = v114;
          goto LABEL_27;
        }
      }

      else
      {
        v5 = v14 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          if (v1 < v22)
          {
            goto LABEL_56;
          }

          v23 = sub_2675E5E30(0, &qword_2801CC008, 0x277CD3E90);
          OUTLINED_FUNCTION_31(v23);
LABEL_27:

          if (v22 < v17)
          {
            goto LABEL_53;
          }

          if (v22 > 0)
          {
            v30 = *(v124 + 16);
            v31 = __OFADD__(v30, v22);
            v32 = v30 + v22;
            if (v31)
            {
              goto LABEL_54;
            }

            *(v124 + 16) = v32;
          }

          goto LABEL_32;
        }
      }

      if (v17 > 0)
      {
        goto LABEL_53;
      }

LABEL_32:
      OUTLINED_FUNCTION_22_0();
      if (v29)
      {
        goto LABEL_40;
      }
    }

    if (!v18)
    {
      OUTLINED_FUNCTION_21_0();
      if (v21 >= v20)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    OUTLINED_FUNCTION_38();
    goto LABEL_15;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_40:
  sub_2675ED7F4(v2, v4[31]);

  v2 = v110;
  v39 = [v110 dialog];
  sub_2675E5E30(0, &qword_2801CBF80, 0x277D052B0);
  v40 = sub_2676CC0FC();

  if (sub_267630B8C())
  {
    OUTLINED_FUNCTION_35();
    if (v39)
    {
      v41 = MEMORY[0x26D5FE0E0](0, v40);
    }

    else
    {
      v41 = *(v40 + 32);
    }

    v42 = v41;
    v43 = boxed_opaque_existential_1;

    v44 = [v42 fullPrint];

    v34 = sub_2676CBF6C();
  }

  else
  {

    v34 = 0;
    v43 = boxed_opaque_existential_1;
  }

  sub_2676C96AC();
  sub_2676C969C();
  OUTLINED_FUNCTION_9_0();
  sub_2676CBB5C();
  if (!v107)
  {
    OUTLINED_FUNCTION_28();
    (*(v46 + 104))(v43);
    v38 = sub_2675DD73C(v4 + 6, (v4 + 2));
    goto LABEL_48;
  }

  __swift_deallocate_boxed_opaque_existential_1((v4 + 12));
  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_15_0();
LABEL_49:

  return v45();
}

uint64_t sub_2675E5128(uint64_t a1)
{
  v3 = *v2;
  v8 = *v2;
  v8[24] = v2;
  v8[25] = a1;
  v8[26] = v1;
  OUTLINED_FUNCTION_25();
  *v4 = *v2;
  *(v5 + 472) = v1;

  OUTLINED_FUNCTION_25();
  sub_2675E3BB8(v3[51]);

  if (v1)
  {
    v6 = sub_2675E5A50;
  }

  else
  {
    v6 = sub_2675E5278;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2675E5278()
{
  v4 = v0;
  v5 = *(v0 + 472);
  v6 = v4[25];
  sub_2676C919C();
  v7 = sub_2676C917C();
  v8 = v4[30];
  v110 = v6;
  if ((v7 & 1) == 0)
  {
    v33 = qword_2801CBA70;

    if (v33 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  v99 = sub_2676CBB7C();
  v4[15] = v99;
  OUTLINED_FUNCTION_4_2();
  v4[16] = sub_2675E5DE8(v9, v10, MEMORY[0x277D565B8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 12);
  v107 = v5;
  v123 = *(v8 + 16);
  if (v123)
  {
    OUTLINED_FUNCTION_2_4();
    v2 = MEMORY[0x277D84F90];
    v122 = v11;
    v118 = *(v11 + 56);
    v112 = v4;
    while (1)
    {
      v12 = OUTLINED_FUNCTION_11_1();
      v13(v12);
      v14 = v5;
      sub_2676CAD7C();
      v15 = OUTLINED_FUNCTION_18_1();
      v16(v15);
      v5 >>= 62;
      if (v14 >> 62)
      {
        v17 = sub_2676CC4EC();
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v2 >> 62;
      if (v2 >> 62)
      {
        v19 = OUTLINED_FUNCTION_38();
      }

      else
      {
        v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        OUTLINED_FUNCTION_7_1(&qword_2801CBA70);
LABEL_38:
        v34 = *(qword_2801D3CD0 + 208);

        OUTLINED_FUNCTION_9_0();
        sub_2676C91EC();
        v4[5] = OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_5_1();
        v4[6] = sub_2675E5DE8(v35, v36, MEMORY[0x277D5C8F8]);
        v37 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
        v38 = OUTLINED_FUNCTION_36(v37);
LABEL_48:
        OUTLINED_FUNCTION_0_5(v38);
        v47 = OUTLINED_FUNCTION_13_1();
        v48(v47);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_33();
        sub_26762D4C8(v2);
        sub_2676C9D3C();
        sub_2676C9D7C();
        sub_2676C9DBC();
        sub_2676C9DAC();
        v49 = sub_2676C9B3C();
        OUTLINED_FUNCTION_19_0(v49, v50, v51, v52, v53, v54, v55, v56, v91, v95, v99, boxed_opaque_existential_1, v107, v110, v112, v114, v116, v118, v120, v121, v2, v122, v123, v124, v125, v126);
        sub_2676C9D9C();
        sub_2676C90EC();
        sub_2676C90DC();
        v57 = OUTLINED_FUNCTION_17_1();
        v58(v57);
        sub_2676C9D5C();
        v59 = sub_2676C9DAC();
        v66 = OUTLINED_FUNCTION_27(v59, *MEMORY[0x277D5BC50], v60, v61, v62, v63, v64, v65, v92, v96, v100, v104, v108);
        v67(v66);
        v68 = sub_2676C9D4C();
        v76 = OUTLINED_FUNCTION_26(v68, v69, v70, v71, v72, v73, v74, v75, v93, v97, v101, v105);
        v77(v76);
        sub_2675E5D38(v34 + 16, v34 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
        v78 = swift_allocObject();
        v86 = OUTLINED_FUNCTION_6_1(v78, xmmword_2676CD5C0, v79, v80, v81, v82, v83, v84, v85, v94, v98, v102, v106, v109, v111, v113, v115, v117, v119);
        v87(v86);
        OUTLINED_FUNCTION_14_1();
        v88 = OUTLINED_FUNCTION_23_0();
        v89(v88);
        __swift_destroy_boxed_opaque_existential_1(v34 + 16);

        OUTLINED_FUNCTION_15_0();
        goto LABEL_49;
      }

      v126 = v1;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_14;
      }

LABEL_15:
      v2 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_21_0();
LABEL_16:
      OUTLINED_FUNCTION_29();
      if (v5)
      {
        v24 = OUTLINED_FUNCTION_34();
        if (v24)
        {
          v25 = v24;
          v26 = sub_2676CC4EC();
          if (v1 < v26)
          {
            goto LABEL_55;
          }

          if (v25 < 1)
          {
            goto LABEL_57;
          }

          v114 = v26;
          v116 = v17;
          v1 = v2 + 32;
          sub_2675E5EC0();
          do
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC010, &qword_2676CDA88);
            v5 = OUTLINED_FUNCTION_20_0(v27);
            v2 = *v28;
            (v5)(v3, 0);
            OUTLINED_FUNCTION_24_0();
          }

          while (!v29);
          v4 = v112;
          v22 = v114;
          goto LABEL_27;
        }
      }

      else
      {
        v5 = v14 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          if (v1 < v22)
          {
            goto LABEL_56;
          }

          v23 = sub_2675E5E30(0, &qword_2801CC008, 0x277CD3E90);
          OUTLINED_FUNCTION_31(v23);
LABEL_27:

          if (v22 < v17)
          {
            goto LABEL_53;
          }

          if (v22 > 0)
          {
            v30 = *(v124 + 16);
            v31 = __OFADD__(v30, v22);
            v32 = v30 + v22;
            if (v31)
            {
              goto LABEL_54;
            }

            *(v124 + 16) = v32;
          }

          goto LABEL_32;
        }
      }

      if (v17 > 0)
      {
        goto LABEL_53;
      }

LABEL_32:
      OUTLINED_FUNCTION_22_0();
      if (v29)
      {
        goto LABEL_40;
      }
    }

    if (!v18)
    {
      OUTLINED_FUNCTION_21_0();
      if (v21 >= v20)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    OUTLINED_FUNCTION_38();
    goto LABEL_15;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_40:
  sub_2675ED7F4(v2, v4[31]);

  v2 = v110;
  v39 = [v110 dialog];
  sub_2675E5E30(0, &qword_2801CBF80, 0x277D052B0);
  v40 = sub_2676CC0FC();

  if (sub_267630B8C())
  {
    OUTLINED_FUNCTION_35();
    if (v39)
    {
      v41 = MEMORY[0x26D5FE0E0](0, v40);
    }

    else
    {
      v41 = *(v40 + 32);
    }

    v42 = v41;
    v43 = boxed_opaque_existential_1;

    v44 = [v42 fullPrint];

    v34 = sub_2676CBF6C();
  }

  else
  {

    v34 = 0;
    v43 = boxed_opaque_existential_1;
  }

  sub_2676C96AC();
  sub_2676C969C();
  OUTLINED_FUNCTION_9_0();
  sub_2676CBB5C();
  if (!v107)
  {
    OUTLINED_FUNCTION_28();
    (*(v46 + 104))(v43);
    v38 = sub_2675DD73C(v4 + 6, (v4 + 2));
    goto LABEL_48;
  }

  __swift_deallocate_boxed_opaque_existential_1((v4 + 12));
  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_15_0();
LABEL_49:

  return v45();
}

uint64_t sub_2675E5978()
{
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675E5A50()
{
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675E5B28(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2675E5BE8;

  return sub_2675E438C(a1, v4, v5, v7, v6);
}

uint64_t sub_2675E5BE8()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
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

uint64_t sub_2675E5D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2675E5DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2675E5E30(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D5FEA80);
  }

  return result;
}

unint64_t sub_2675E5EC0()
{
  result = qword_2801CC018;
  if (!qword_2801CC018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC010, &qword_2676CDA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC018);
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

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return sub_2676C999C();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_6_1(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a15;
  return a19;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_1()
{
}

uint64_t OUTLINED_FUNCTION_10_1()
{
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __swift_storeEnumTagSinglePayload(a26, 1, 1, a1);

  return sub_2676C9D8C();
}

void (*OUTLINED_FUNCTION_20_0(uint64_t a1))(id *a1)
{

  return sub_267646084(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_2676CC42C();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_2676C9D6C();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_2676CC4EC();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_267692C1C();
}

uint64_t OUTLINED_FUNCTION_36(void *a1)
{
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_2676C916C();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_2676CC4EC();
}

uint64_t sub_2675E6418(uint64_t a1)
{
  v63 = sub_2676C8DDC();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5();
  v62 = v5;
  v6 = sub_2676CAABC();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_5();
  v70 = v7;
  v8 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v71 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v61 = &v55 - v17;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v18 = sub_2676CBE4C();
  v19 = __swift_project_value_buffer(v18, qword_2801CDC90);

  v55 = v19;
  v20 = sub_2676CBE2C();
  v21 = sub_2676CC23C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v69 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v72[0] = v24;
    *v23 = 136380675;
    v25 = MEMORY[0x26D5FDDF0](a1, v8);
    v27 = sub_2676B0B84(v25, v26, v72);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2675D4000, v20, v21, "#ResolveRecipientsFlow .sanitizeContactHandles %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_2_5();
    v3 = v69;
    OUTLINED_FUNCTION_2_5();
  }

  v28 = *(a1 + 16);
  if (v28)
  {
    v69 = *(v71 + 16);
    v60 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v29 = a1 + v60;
    v30 = *(v71 + 72);
    v58 = (v3 + 8);
    v59 = v30;
    v31 = (v71 + 8);
    v71 += 16;
    v56 = (v71 + 16);
    v32 = MEMORY[0x277D84F90];
    v57 = (v71 - 8);
    do
    {
      v67 = v28;
      v68 = v32;
      v33 = v61;
      v66 = v29;
      v69(v61);
      v34 = sub_2676CAADC();
      v64 = v35;
      v65 = v34;
      sub_2676CAAEC();
      v36 = sub_2676CAAFC();
      v37 = v8;
      v39 = v38;
      v40 = v62;
      sub_2676C8DBC();
      v72[0] = v36;
      v72[1] = v39;
      sub_2675E69E4();
      sub_2676CC33C();
      (*v58)(v40, v63);

      sub_2676CAB0C();
      v41 = *v31;
      v42 = v33;
      v32 = v68;
      (*v31)(v42, v37);
      v8 = v37;
      sub_2676CAACC();
      (v69)(v13, v16, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267606CBC();
        v32 = v45;
      }

      v43 = *(v32 + 16);
      v31 = v57;
      if (v43 >= *(v32 + 24) >> 1)
      {
        sub_267606CBC();
        v32 = v46;
      }

      v41(v16, v37);
      *(v32 + 16) = v43 + 1;
      v44 = v59;
      (*v56)(v32 + v60 + v43 * v59, v13, v37);
      v29 = v66 + v44;
      v28 = v67 - 1;
    }

    while (v67 != 1);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v47 = sub_2676CBE2C();
  v48 = sub_2676CC23C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v72[0] = v50;
    *v49 = 136380675;
    v51 = MEMORY[0x26D5FDDF0](v32, v8);
    v53 = sub_2676B0B84(v51, v52, v72);

    *(v49 + 4) = v53;

    _os_log_impl(&dword_2675D4000, v47, v48, "#ResolveRecipientsFlow .sanitizeContactHandles sanitizedHandles %{private}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  return v32;
}

unint64_t sub_2675E69E4()
{
  result = qword_2801CDAA0;
  if (!qword_2801CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDAA0);
  }

  return result;
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x26D5FEA80);
}

void sub_2675E6A64(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v137 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v142 = v6;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  v141 = v8;
  v9 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v126 = v13;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v14);
  v128 = &v124 - v15;
  OUTLINED_FUNCTION_12_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v124 - v18;
  MEMORY[0x28223BE20](v17);
  v127 = &v124 - v20;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v124 - v22;
  v24 = &off_279C11000;
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v26 = sub_2676CADFC();
  sub_2675EA76C(v26, v27, v25, &selRef_setInternalGUID_);
  sub_2676CAE1C();
  v28 = sub_2676CC16C();
  [v25 setMe_];

  v29 = sub_2676CAD6C();
  sub_2675EA76C(v29, v30, v25, &selRef_setFullName_);
  v31 = sub_2676CAE9C();
  sub_2675EA76C(v31, v32, v25, &selRef_setFirstName_);
  v33 = sub_2676CACEC();
  sub_2675EA76C(v33, v34, v25, &selRef_setLastName_);
  v35 = sub_2676CAD0C();
  sub_2675EA76C(v35, v36, v25, &selRef_setMiddleName_);
  v37 = sub_2676CAD2C();
  sub_2675EA76C(v37, v38, v25, &selRef_setPrefix_);
  v39 = sub_2676CAD4C();
  sub_2675EA76C(v39, v40, v25, &selRef_setSuffix_);
  v41 = sub_2676CAE7C();
  sub_2675EA76C(v41, v42, v25, &selRef_setNickName_);
  v43 = sub_2676CAD9C();
  v129 = v25;
  v44 = v25;
  v45 = v23;
  sub_2675EA76C(v43, v46, v44, &selRef_setCompany_);
  v130 = v2;
  v47 = v9;
  v48 = sub_2676CAE5C();
  v49 = 0;
  v136 = *(v48 + 16);
  LODWORD(v135) = *MEMORY[0x277D56010];
  v138 = (v4 + 8);
  v139 = (v4 + 104);
  v50 = (v11 + 8);
  v144 = v11;
  v133 = (v11 + 32);
  v131 = v47;
  v132 = MEMORY[0x277D84F90];
  v143 = v19;
  v140 = (v11 + 8);
  v145 = v11 + 16;
  v134 = v48;
  while (v136 != v49)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_13_2();
    v53 = v52 & ~v51;
    v55 = *(v54 + 72);
    (*(v54 + 16))(v45, v48 + v53 + v55 * v49, v47);
    v50 = v141;
    v19 = v47;
    sub_2676CAAEC();
    v56 = v45;
    v57 = v142;
    v58 = v137;
    (*v139)(v142, v135, v137);
    OUTLINED_FUNCTION_11_2();
    sub_2675EA914(&qword_2801CC140, v59, MEMORY[0x277D56038]);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v24 = v138;
    v47 = *v138;
    (*v138)(v57, v58);
    (v47)(v50, v58);
    if (v147 == v146)
    {
      v62 = *v133;
      (*v133)(v127, v56, v19);
      v63 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v63;
      v148 = v63;
      v50 = v140;
      v45 = v56;
      v125 = v62;
      if (isUniquelyReferenced_nonNull_native)
      {
        v47 = v19;
      }

      else
      {
        OUTLINED_FUNCTION_27_0(*(v63 + 16));
        v47 = v131;
        v65 = v148;
      }

      v19 = v143;
      v48 = v134;
      v66 = v49;
      v68 = *(v65 + 16);
      v67 = *(v65 + 24);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v70 = OUTLINED_FUNCTION_23_1(v67);
        v132 = v71;
        sub_2676C2848(v70, v71, 1);
        v47 = v131;
        v69 = v132;
        v66 = v49;
        v65 = v148;
      }

      v49 = v66 + 1;
      *(v65 + 16) = v69;
      v132 = v65;
      v125(v65 + v53 + v68 * v55, v127, v47);
      v24 = 0x279C11000;
    }

    else
    {
      v60 = OUTLINED_FUNCTION_26_0();
      v61(v60);
      OUTLINED_FUNCTION_25_0();
      v45 = v56;
      v48 = v134;
    }
  }

  v72 = *(v132 + 16);
  if (v72)
  {
    v148 = MEMORY[0x277D84F90];
    v73 = v132;
    sub_2676CC46C();
    OUTLINED_FUNCTION_13_2();
    v76 = v73 + (v75 & ~v74);
    v78 = *(v77 + 72);
    v136 = *(v77 + 16);
    v79 = v131;
    do
    {
      v136(v19, v76, v79);
      v80 = [objc_allocWithZone(MEMORY[0x277D47640]) *(v24 + 1808)];
      v81 = sub_2676CAAFC();
      sub_2675EA76C(v81, v82, v80, &selRef_setLabel_);
      v83 = sub_2676CAB0C();
      sub_2675EA76C(v83, v84, v80, &selRef_setNumber_);
      (*v50)(v19, v79);
      sub_2676CC44C();
      sub_2676CC47C();
      v24 = 0x279C11000;
      sub_2676CC48C();
      sub_2676CC45C();
      v76 += v78;
      --v72;
    }

    while (v72);

    v85 = v148;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v85, v129, &qword_2801CC028, 0x277D47640, &selRef_setPhones_);
  v86 = sub_2676CAE5C();
  v87 = 0;
  v136 = *(v86 + 16);
  LODWORD(v134) = *MEMORY[0x277D56008];
  v132 = MEMORY[0x277D84F90];
  v88 = v131;
  v89 = v128;
  v135 = v86;
  while (v136 != v87)
  {
    if (v87 >= *(v86 + 16))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_13_2();
    v92 = v91 & ~v90;
    v24 = *(v94 + 72);
    (*(v94 + 16))(v89, v93 + v92 + v24 * v87, v88);
    v95 = v141;
    v19 = v88;
    sub_2676CAAEC();
    v50 = v142;
    v96 = v137;
    (*v139)(v142, v134, v137);
    OUTLINED_FUNCTION_11_2();
    sub_2675EA914(&qword_2801CC140, v97, MEMORY[0x277D56038]);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v88 = *v138;
    (*v138)(v50, v96);
    (v88)(v95, v96);
    if (v147 == v146)
    {
      v100 = *v133;
      (*v133)(v126, v89, v19);
      v101 = v132;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v101;
      v50 = v140;
      if (v102)
      {
        v88 = v19;
      }

      else
      {
        OUTLINED_FUNCTION_27_0(*(v101 + 16));
        v88 = v131;
        v101 = v148;
      }

      v19 = v143;
      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v106 = OUTLINED_FUNCTION_23_1(v103);
        v108 = v107;
        sub_2676C2848(v106, v107, 1);
        v105 = v108;
        v88 = v131;
        v101 = v148;
      }

      ++v87;
      *(v101 + 16) = v105;
      v132 = v101;
      v100(v101 + v92 + v104 * v24, v126, v88);
      v24 = 0x279C11000;
      v89 = v128;
      v86 = v135;
    }

    else
    {
      v98 = OUTLINED_FUNCTION_26_0();
      v99(v98);
      OUTLINED_FUNCTION_25_0();
      v86 = v135;
    }
  }

  v109 = v132;
  v110 = *(v132 + 16);
  if (v110)
  {
    v148 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    OUTLINED_FUNCTION_13_2();
    v113 = v109 + (v112 & ~v111);
    v143 = *(v114 + 72);
    v115 = *(v114 + 16);
    do
    {
      v115(v19, v113, v88);
      v116 = [objc_allocWithZone(MEMORY[0x277D472D8]) *(v24 + 1808)];
      v117 = sub_2676CAAFC();
      sub_2675EA76C(v117, v118, v116, &selRef_setLabel_);
      v119 = sub_2676CAB0C();
      sub_2675EA76C(v119, v120, v116, &selRef_setEmailAddress_);
      (*v50)(v19, v88);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v113 += v143;
      --v110;
    }

    while (v110);

    v121 = v148;
  }

  else
  {

    v121 = MEMORY[0x277D84F90];
  }

  v122 = v129;
  sub_2675EA6E8(v121, v129, &qword_2801CC020, 0x277D472D8, &selRef_setEmails_);

  sub_2676CAECC();
  OUTLINED_FUNCTION_8_2();
  (*(v123 + 8))(v130);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E748C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v195 = v2;
  v203 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v202 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  KeyPath = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v201 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v200 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v199 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v19);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  v198 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v22);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v194 = v24;
  v25 = sub_2676C8FBC();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v30);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_1();
  v186 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  v193 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  v187 = &v175 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v37);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  v188 = &v175 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v40);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v41);
  v189 = &v175 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v44 = OUTLINED_FUNCTION_4_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4();
  v184 = v45;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v46);
  v197 = &v175 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v49 = OUTLINED_FUNCTION_4_1(v48);
  v50 = MEMORY[0x28223BE20](v49);
  v190 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v191 = &v175 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v53);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  v192 = &v175 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v56);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v57);
  v59 = &v175 - v58;
  sub_2676CB87C();
  OUTLINED_FUNCTION_5_2();
  v175 = v60;
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  v183 = v72;
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
  v76 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  v91 = OUTLINED_FUNCTION_4_3();
  v182 = v92;
  __swift_storeEnumTagSinglePayload(v91, v93, v94, v92);
  v95 = v195;
  sub_2676CAD8C();
  sub_2675E7F08(v29);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  v181 = v99;
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  v180 = v103;
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  v179 = v107;
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  v178 = v111;
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  v177 = v115;
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_5_2();
  v185 = v119;
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v123 = OUTLINED_FUNCTION_3_4();
  v176 = v124;
  __swift_storeEnumTagSinglePayload(v123, v125, v126, v124);
  v127 = v95;
  sub_2676CA7FC();
  v128 = sub_2676CAE1C();
  if (v128 != 2 && (v128 & 1) != 0)
  {
    swift_getKeyPath();
    v129 = v175;
    OUTLINED_FUNCTION_14_2();
    (*(v130 + 104))(v59);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v129);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v134, v135, MEMORY[0x277D5C6D8]);
    sub_2676CA85C();
  }

  v136 = sub_2676CAD9C();
  v138 = v137;

  v139 = HIBYTE(v138) & 0xF;
  if ((v138 & 0x2000000000000000) == 0)
  {
    v139 = v136 & 0xFFFFFFFFFFFFLL;
  }

  if (v139)
  {
    KeyPath = swift_getKeyPath();
    v140 = sub_2676CAD9C();
    v192 = v141;
    v193 = v140;
    v142 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v182);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v181);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v180);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v179);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v178);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v177);
    v160 = v183;
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v160);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v176);
    sub_2676CA7AC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v160);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v170, v171, MEMORY[0x277D5C6D8]);
    OUTLINED_FUNCTION_10_2();
    sub_2675EA914(v172, v173, MEMORY[0x277D5C548]);
    sub_2676CA88C();
  }

  sub_2676CAECC();
  OUTLINED_FUNCTION_8_2();
  (*(v174 + 8))(v127);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E7F08(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v9);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v15);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  sub_2676C8EEC();
  sub_2676C8ECC();
  sub_2676C8F0C();
  sub_2676C8F4C();
  sub_2676C8F2C();
  sub_2676C8F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  v25 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  v33 = OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_2676CA79C();
  sub_2676C8FBC();
  OUTLINED_FUNCTION_8_2();
  (*(v45 + 8))(v2);
  OUTLINED_FUNCTION_20_1();
}

void sub_2675E82AC(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v270 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v267 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v266 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v269 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v265 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v264 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v20);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v263 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v261 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v26);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  v273 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v29);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  KeyPath = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v32);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  v271 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v36 = OUTLINED_FUNCTION_4_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v255 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  v274 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v41 = OUTLINED_FUNCTION_4_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  v43 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_1();
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v47);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  v50 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v51);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v54 = OUTLINED_FUNCTION_4_1(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4();
  v262 = v55;
  OUTLINED_FUNCTION_12_0();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v253 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v253 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3();
  v64 = v63;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  v67 = v66;
  v268 = v3;
  sub_2675E9108(v3, v61);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v62);
  v256 = v1;
  v257 = v59;
  v259 = v46;
  v260 = v50;
  v258 = v43;
  if (EnumTagSinglePayload == 1)
  {
    sub_2675EA8AC(v61);
    sub_2676CB87C();
    v69 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
    v73 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    v254 = sub_2675EA84C(v268, &selRef_fullName);
    v253 = v96;
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v115 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
    OUTLINED_FUNCTION_28_0(v1);
  }

  else
  {
    v254 = v64;
    v136 = *(v64 + 32);
    v253 = v67;
    v136(v67, v61, v62);
    sub_2676CB87C();
    v137 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
    v141 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
    (*(v64 + 16))(v262, v67, v62);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v182 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v182, v183, v184, v185);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
    OUTLINED_FUNCTION_28_0(v256);
    (*(v254 + 8))(v253, v62);
  }

  v135 = v268;
  v202 = [v268 me];
  if (v202)
  {
    v203 = v202;
    v275[0] = 2;
    MEMORY[0x26D5FDE40](v202, v275);

    if (v275[0] != 2)
    {
      swift_getKeyPath();
      v204 = *MEMORY[0x277D5C6E0];
      v205 = sub_2676CB87C();
      OUTLINED_FUNCTION_14_2();
      (*(v206 + 104))(v256, v204, v205);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v207, v208, v209, v205);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
      OUTLINED_FUNCTION_0_6();
      sub_2675EA914(v210, v211, MEMORY[0x277D5C6D8]);
      sub_2676CA85C();
    }
  }

  v212 = sub_2675EA84C(v135, &selRef_company);
  if (v213)
  {
    v271 = v212;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v222, v223, v224, v225);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    v226 = OUTLINED_FUNCTION_3_4();
    __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v234, v235, v236, v237);
    v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v239, v240, v241, v238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    v242 = OUTLINED_FUNCTION_4_3();
    __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
    sub_2676CA7AC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v246, v247, v248, v238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
    OUTLINED_FUNCTION_0_6();
    sub_2675EA914(v249, v250, MEMORY[0x277D5C6D8]);
    OUTLINED_FUNCTION_10_2();
    sub_2675EA914(v251, v252, MEMORY[0x277D5C548]);
    sub_2676CA88C();
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2675E9108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  v43 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v31);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v32);
  sub_2676CA79C();
  sub_2675EA84C(a1, &selRef_firstName);
  v34 = v33 != 0;
  if (v33)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
  }

  sub_2675EA84C(a1, &selRef_lastName);
  if (v35)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
    v34 = 1;
  }

  sub_2675EA84C(a1, &selRef_middleName);
  if (v36)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
    v34 = 1;
  }

  sub_2675EA84C(a1, &selRef_nickName);
  if (v37)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
    v34 = 1;
  }

  sub_2675EA84C(a1, &selRef_prefix);
  if (v38)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
    v34 = 1;
  }

  sub_2675EA84C(a1, &selRef_suffix);
  if (v39)
  {
    swift_getKeyPath();
    sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
    sub_2676CA8AC();
  }

  else if (!v34)
  {
    (*(v43 + 8))(v26, v24);
    v41 = 1;
    v40 = v44;
    return __swift_storeEnumTagSinglePayload(v40, v41, 1, v24);
  }

  v40 = v44;
  (*(v43 + 32))(v44, v26, v24);
  v41 = 0;
  return __swift_storeEnumTagSinglePayload(v40, v41, 1, v24);
}

void sub_2675E9880(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3();
  v41 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v44 = sub_2676C9D1C();
  OUTLINED_FUNCTION_3();
  v42 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_2();
  v43 = v17 - v16;
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_0_6();
  sub_2675EA914(v19, v20, MEMORY[0x277D5C6D8]);
  sub_2675EA914(&qword_2801CC128, MEMORY[0x277D5C468], MEMORY[0x277D5C440]);
  sub_2676CA87C();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v21 = v43;
    sub_2675EA8AC(v8);
    swift_getKeyPath();
    sub_2676CA89C();
    v23 = v22;

    if (!v23)
    {
      OUTLINED_FUNCTION_14_2();
      (*(v34 + 8))(v2, v18);
      v33 = 1;
      v32 = v44;
      goto LABEL_6;
    }

    v24 = v21;
    sub_2676C9D0C();
    OUTLINED_FUNCTION_14_2();
    (*(v25 + 8))(v2, v18);
  }

  else
  {
    v26 = v41;
    (*(v41 + 32))(v13, v8, v9);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    v27 = sub_2676CA89C();
    v39 = v28;
    v40 = v27;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    v29 = sub_2676CA89C();
    v37 = v30;
    v38 = v29;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    sub_2676CA89C();
    v36 = v2;

    swift_getKeyPath();
    OUTLINED_FUNCTION_15_1();
    sub_2676CA89C();

    v24 = v43;
    sub_2676C9D0C();
    OUTLINED_FUNCTION_14_2();
    (*(v31 + 8))(v36, v18);
    (*(v26 + 8))(v13, v9);
  }

  v32 = v44;
  (*(v42 + 32))(v4, v24, v44);
  v33 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v4, v33, 1, v32);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2675E9CDC()
{
  v1 = v0;
  v2 = sub_2676C9BDC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = (v7 - v6);
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D5BD90])
  {
    (*(v4 + 96))(v8, v2);
    v10 = *v8;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v11 = sub_2676CBE4C();
    __swift_project_value_buffer(v11, qword_2801CDC90);
    v12 = sub_2676CBE2C();
    v13 = sub_2676CC24C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2675D4000, v12, v13, ".asUsoRelationshipType called on NLv3-based semantic value, this is unexpected given how RelationshipLabel is used internally by UnsetRelationshipFlowFactory. As a result, the resulting string may have unexpected formatting.", v14, 2u);
      MEMORY[0x26D5FEA80](v14, -1, -1);
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC138, &qword_2676CDCB8) + 48);
    sub_2676C911C();
    OUTLINED_FUNCTION_8_2();
    (*(v16 + 8))(v8 + v15);
    return v10;
  }

  if (v9 == *MEMORY[0x277D5BD88])
  {
    (*(v4 + 96))(v8, v2);
    return *v8;
  }

  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](0xD000000000000032, 0x80000002676D6170);
  sub_2675EA914(&qword_2801CC130, MEMORY[0x277D5BD98], MEMORY[0x277D5BDA0]);
  v18 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v18);

  result = static Logger.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriMail/SiriMailInternal/Encore/ResolveRecipients/UnsetRelationship/ContactMappingExtensions.swift", 137, 2, 151);
  __break(1u);
  return result;
}

void sub_2675E9FD8(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v84 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v80 = v8;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  v81 = v10;
  v83 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v71 - v17;
  sub_2676CAEBC();
  v19 = sub_2675EA84C(v2, &selRef_internalGUID);
  OUTLINED_FUNCTION_16_1(v19, v20);
  sub_2676CAE0C();
  v21 = [v2 me];
  if (v21)
  {
    v22 = v21;
    [v21 BOOLValue];
  }

  sub_2676CAE2C();
  v23 = sub_2675EA84C(v2, &selRef_prefix);
  OUTLINED_FUNCTION_16_1(v23, v24);
  sub_2676CAD3C();
  v25 = sub_2675EA84C(v2, &selRef_firstName);
  OUTLINED_FUNCTION_16_1(v25, v26);
  sub_2676CAEAC();
  v27 = sub_2675EA84C(v2, &selRef_middleName);
  OUTLINED_FUNCTION_16_1(v27, v28);
  sub_2676CAD1C();
  v29 = sub_2675EA84C(v2, &selRef_lastName);
  OUTLINED_FUNCTION_16_1(v29, v30);
  sub_2676CACFC();
  v31 = sub_2675EA84C(v2, &selRef_fullName);
  if (v32)
  {
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
      goto LABEL_10;
    }

    v34 = sub_2676CAE9C();
    v36 = v35;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {
      sub_2676CAEAC();
    }

    else
    {
LABEL_10:
    }
  }

  v38 = sub_2675EA84C(v2, &selRef_suffix);
  OUTLINED_FUNCTION_16_1(v38, v39);
  sub_2676CAD5C();
  v40 = sub_2675EA84C(v2, &selRef_nickName);
  OUTLINED_FUNCTION_16_1(v40, v41);
  sub_2676CAE8C();
  v42 = sub_2675EA84C(v2, &selRef_company);
  OUTLINED_FUNCTION_16_1(v42, v43);
  sub_2676CADAC();
  v44 = sub_2675EA7D8(v2, &selRef_phones, &qword_2801CC028, 0x277D47640);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v47 = sub_267630B8C();
  v79 = v16;
  v71[1] = v4;
  v72 = v2;
  if (v47)
  {
    v48 = v47;
    v82 = v46;
    OUTLINED_FUNCTION_22_1(v47);
    if (v48 < 0)
    {
      goto LABEL_49;
    }

    v76 = v48;
    v77 = v18;
    v49 = 0;
    v50 = v85;
    v51 = v82;
    v78 = v82 & 0xC000000000000001;
    v73 = v82 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v75) = *MEMORY[0x277D56010];
    v71[0] = v6;
    v52 = (v6 + 104);
    v74 = v12 + 32;
    while (1)
    {
      if (v78)
      {
        v53 = MEMORY[0x26D5FE0E0](v49);
      }

      else
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
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
          return;
        }

        if (v49 >= *(v73 + 16))
        {
          goto LABEL_46;
        }

        v53 = *(v51 + 8 * v49 + 32);
      }

      v54 = v53;
      (*v52)(v81, v75, v84);
      sub_2675EA84C(v54, &selRef_label);
      sub_2675EA84C(v54, &selRef_number);
      v55 = v77;
      sub_2676CAACC();

      v85 = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);
      if (v57 >= v56 >> 1)
      {
        v58 = OUTLINED_FUNCTION_23_1(v56);
        sub_2676C2848(v58, v57 + 1, 1);
        v50 = v85;
      }

      ++v49;
      *(v50 + 16) = v57 + 1;
      (*(v12 + 32))(v50 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v57, v55, v83);
      v51 = v82;
      if (v76 == v49)
      {

        v2 = v72;
        v6 = v71[0];
        v45 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_28:
  v59 = sub_2675EA7D8(v2, &selRef_emails, &qword_2801CC020, 0x277D472D8);
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v45;
  }

  v61 = sub_267630B8C();
  if (v61)
  {
    v62 = v61;
    OUTLINED_FUNCTION_22_1(v61);
    if ((v62 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v78 = v62;
    v63 = 0;
    v64 = v85;
    v82 = v60 & 0xC000000000000001;
    v75 = v60 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v77) = *MEMORY[0x277D56008];
    v76 = v12 + 32;
    v81 = v60;
    do
    {
      if (v82)
      {
        v65 = MEMORY[0x26D5FE0E0](v63, v60);
      }

      else
      {
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v63 >= *(v75 + 16))
        {
          goto LABEL_48;
        }

        v65 = *(v60 + 8 * v63 + 32);
      }

      v66 = v65;
      (*(v6 + 104))(v80, v77, v84);
      sub_2675EA84C(v66, &selRef_label);
      sub_2675EA84C(v66, &selRef_emailAddress);
      v67 = v79;
      sub_2676CAACC();

      v85 = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      if (v69 >= v68 >> 1)
      {
        v70 = OUTLINED_FUNCTION_23_1(v68);
        sub_2676C2848(v70, v69 + 1, 1);
        v64 = v85;
      }

      ++v63;
      *(v64 + 16) = v69 + 1;
      (*(v12 + 32))(v64 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v69, v67, v83);
      v60 = v81;
    }

    while (v78 != v63);

    v2 = v72;
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  v85 = v50;
  sub_2676A1E9C(v64);
  sub_2676CAE6C();

  OUTLINED_FUNCTION_20_1();
}

void sub_2675EA6E8(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_2675E5E30(0, a3, a4);
  v7 = sub_2676CC0EC();

  [a2 *a5];
}

void sub_2675EA76C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2676CBF3C();

  [a3 *a4];
}

uint64_t sub_2675EA7D8(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_2675E5E30(0, a3, a4);
  v8 = sub_2676CC0FC();

  return v8;
}

uint64_t sub_2675EA84C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2676CBF6C();

  return v4;
}

uint64_t sub_2675EA8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675EA914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

void *OUTLINED_FUNCTION_22_1(uint64_t a1)
{
  *(v2 - 88) = v1;

  return sub_2676C2848(0, a1 & ~(a1 >> 63), 0);
}

void *OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>)
{

  return sub_2676C2848(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1)
{

  return sub_2676CA7FC();
}

uint64_t sub_2675EAB34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v142 = a2;
  v140 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v132 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v138 = v129 - v9;
  MEMORY[0x28223BE20](v8);
  v146 = v129 - v10;
  OUTLINED_FUNCTION_7_3();
  sub_2676CA0DC();
  OUTLINED_FUNCTION_3();
  v134 = v12;
  v135 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  v133 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  MEMORY[0x28223BE20](v15 - 8);
  v136 = v129 - v16;
  OUTLINED_FUNCTION_7_3();
  v17 = sub_2676CA00C();
  OUTLINED_FUNCTION_3();
  v139 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  v137 = v21 - v20;
  OUTLINED_FUNCTION_7_3();
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v144 = v23;
  v145 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_2();
  v143 = v25 - v24;
  OUTLINED_FUNCTION_7_3();
  v26 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_2();
  v32 = v31 - v30;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v33 = sub_2676CBE4C();
  v34 = __swift_project_value_buffer(v33, qword_2801CDC90);
  (*(v28 + 16))(v32, a1, v26);
  v141 = v34;
  v35 = sub_2676CBE2C();
  v36 = sub_2676CC23C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_5_3();
    v129[1] = a1;
    v38 = v37;
    v39 = swift_slowAlloc();
    v130 = v17;
    v40 = v39;
    *&v148 = v39;
    *v38 = 136315138;
    sub_2675EB844();
    v41 = sub_2676CC56C();
    v42 = v4;
    v44 = v43;
    (*(v28 + 8))(v32, v26);
    v45 = sub_2676B0B84(v41, v44, &v148);
    v4 = v42;

    *(v38 + 4) = v45;
    _os_log_impl(&dword_2675D4000, v35, v36, "#ContactPromptResponseHandler handling contact prompt response: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v17 = v130;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v28 + 8))(v32, v26);
  }

  v46 = v143;
  sub_2676C9E5C();
  v47 = OUTLINED_FUNCTION_6_2();
  v49 = v48(v47);
  v50 = v146;
  if (v49 != *MEMORY[0x277D5C150])
  {
    if (v49 != *MEMORY[0x277D5C160])
    {
      v83 = *MEMORY[0x277D5BC80];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
      OUTLINED_FUNCTION_2_6();
      (*(v84 + 104))(v142, v83);
      v85 = OUTLINED_FUNCTION_6_2();
      return v86(v85);
    }

    v61 = OUTLINED_FUNCTION_6_2();
    v62(v61);
    v63 = v137;
    (*(v139 + 32))(v137, v46, v17);
    v64 = v133;
    sub_2676C9FFC();
    v65 = sub_2676CA0CC();
    (*(v134 + 8))(v64, v135);
    v66 = v136;
    sub_267698E5C(v65);

    v67 = sub_2676CA19C();
    if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
    {
      v68 = OUTLINED_FUNCTION_0_7();
      v69(v68);
      sub_2675EB7EC(v66, &qword_2801CC148, &unk_2676CDD90);
    }

    else
    {
      v102 = sub_26762AC20();
      (*(*(v67 - 8) + 8))(v66, v67);
      if (v102)
      {
        v103 = (*(v131 + 16))(v102);
        if (v104)
        {
          v105 = v103;
          v106 = v104;

          v107 = sub_2676CBE2C();
          v108 = sub_2676CC23C();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = OUTLINED_FUNCTION_5_3();
            v110 = swift_slowAlloc();
            v111 = v139;
            v112 = v110;
            *&v148 = v110;
            *v109 = 136315138;
            *(v109 + 4) = sub_2676B0B84(v105, v106, &v148);
            _os_log_impl(&dword_2675D4000, v107, v108, "#ContactPromptResponseHandler: Found parse with contact name (%s).", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v112);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_2_5();

            (*(v111 + 8))(v63, v17);
          }

          else
          {

            v119 = OUTLINED_FUNCTION_0_7();
            v120(v119);
          }

          v81 = v142;
          *v142 = v105;
          v81[1] = v106;
          v82 = 1;
          goto LABEL_41;
        }

        v115 = sub_2676C39FC();
        if ((v116 & 1) == 0)
        {
          v123 = v115;
          v124 = sub_2676CBE2C();
          v125 = sub_2676CC23C();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = OUTLINED_FUNCTION_5_3();
            *v126 = 134217984;
            *(v126 + 4) = v123;
            _os_log_impl(&dword_2675D4000, v124, v125, "#ContactPromptResponseHandler: Found parse with list position (%ld).", v126, 0xCu);
            OUTLINED_FUNCTION_2_5();
          }

          v127 = OUTLINED_FUNCTION_0_7();
          v128(v127);
          v81 = v142;
          *v142 = v123;
          goto LABEL_24;
        }

        v117 = OUTLINED_FUNCTION_0_7();
        v118(v117);
      }

      else
      {
        v113 = OUTLINED_FUNCTION_0_7();
        v114(v113);
      }
    }

LABEL_31:
    v100 = *MEMORY[0x277D5BC80];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
    OUTLINED_FUNCTION_2_6();
    return (*(v101 + 104))(v142, v100);
  }

  v51 = OUTLINED_FUNCTION_6_2();
  v52(v51);
  v53 = v140;
  (*(v4 + 32))(v50, v46, v140);
  v54 = sub_2676C9E8C();
  v56 = v55;
  if (v54 == sub_2676C96AC() && v56 == v57)
  {

    v60 = v138;
  }

  else
  {
    v59 = sub_2676CC59C();

    v60 = v138;
    if ((v59 & 1) == 0)
    {
LABEL_28:
      v87 = v4;
      v88 = *(v4 + 16);
      v88(v60, v50, v53);
      v89 = sub_2676CBE2C();
      v90 = sub_2676CC23C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = OUTLINED_FUNCTION_5_3();
        v145 = swift_slowAlloc();
        *&v148 = v145;
        *v91 = 136315138;
        v88(v132, v60, v53);
        v92 = sub_2676CBFBC();
        v94 = v93;
        v95 = *(v87 + 8);
        v95(v60, v53);
        v96 = sub_2676B0B84(v92, v94, &v148);

        *(v91 + 4) = v96;
        OUTLINED_FUNCTION_8_3(&dword_2675D4000, v97, v98, "#ContactPromptResponseHandler received DI it cannot handle: %s");
        __swift_destroy_boxed_opaque_existential_1(v145);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v95(v50, v53);
      }

      else
      {

        v99 = *(v4 + 8);
        v99(v60, v53);
        v99(v50, v53);
      }

      goto LABEL_31;
    }
  }

  v70 = sub_2676C9E9C();
  if (!v70)
  {
    v148 = 0u;
    v149 = 0u;
    goto LABEL_27;
  }

  v71 = v70;
  v72 = sub_2676C969C();
  sub_2675EB708(v71, &v148, v72, v73);

  if (!*(&v149 + 1))
  {
LABEL_27:
    sub_2675EB7EC(&v148, &qword_2801CC158, &qword_2676CDDA0);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v74 = v147;
  v75 = sub_2676CBE2C();
  v76 = sub_2676CC23C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_5_3();
    *v77 = 134217984;
    *(v77 + 4) = v74;
    OUTLINED_FUNCTION_8_3(&dword_2675D4000, v78, v79, "#ContactPromptResponseHandler: Found direct invocation in parse with index=%ld.");
    OUTLINED_FUNCTION_2_5();
  }

  result = (*(v4 + 8))(v50, v53);
  if (!__OFADD__(v74, 1))
  {
    v81 = v142;
    *v142 = v74 + 1;
LABEL_24:
    v81[1] = 0;
    v82 = 4;
LABEL_41:
    *(v81 + 16) = v82;
    v121 = *MEMORY[0x277D5BC88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
    OUTLINED_FUNCTION_2_6();
    return (*(v122 + 104))(v81, v121);
  }

  __break(1u);
  return result;
}

double sub_2675EB708@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_26760BE20(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_2675EB89C(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2675EB76C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675EB7EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_6();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2675EB844()
{
  result = qword_2801CC160;
  if (!qword_2801CC160)
  {
    sub_2676C9E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC160);
  }

  return result;
}

uint64_t sub_2675EB89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2675EB96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_3();
  v48 = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v49 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v52 = *(v19 - 8);
  v20 = *(v52 + 16);
  v20(v10, a1, v19);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
  sub_2676CB91C();
  sub_2676CB86C();
  sub_2675EC200(&qword_2801CC118, MEMORY[0x277D5C778], MEMORY[0x277D5C6D8]);
  sub_2676CA8EC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2675E35CC(v13, &qword_2801CC038, &qword_2676D5A40);
    v20(v10, a1, v19);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
    sub_2676CB6AC();
    sub_2675EC200(&qword_2801CC120, MEMORY[0x277D5C558], MEMORY[0x277D5C548]);
    v21 = v51;
    sub_2676CA8EC();
    v22 = v50;
    if (__swift_getEnumTagSinglePayload(v21, 1, v50) == 1)
    {
      sub_2675E35CC(v21, &qword_2801CC080, &unk_2676D3580);
      sub_2676CAA8C();
      swift_getKeyPath();
      sub_2675EC200(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
      sub_2676CA89C();

      sub_2676CAA3C();
      v23 = OUTLINED_FUNCTION_4_4();
      return v24(v23, v19);
    }

    else
    {
      v37 = v47;
      v36 = v48;
      (*(v48 + 32))(v47, v21, v22);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v38 = sub_2676CBE4C();
      __swift_project_value_buffer(v38, qword_2801CDC90);
      v39 = sub_2676CBE2C();
      v40 = sub_2676CC23C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        OUTLINED_FUNCTION_6_3(&dword_2675D4000, v42, v43, "#ContactResolver converting Entity<Common.Organization> to ContactQuery");
        MEMORY[0x26D5FEA80](v41, -1, -1);
      }

      sub_2676CAA8C();
      swift_getKeyPath();
      sub_2676CA89C();

      sub_2676CAA3C();
      v44 = OUTLINED_FUNCTION_4_4();
      v45(v44, v19);
      return (*(v36 + 8))(v37, v22);
    }
  }

  else
  {
    v26 = v19;
    v27 = v49;
    (*(v49 + 32))(v18, v13, v14);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v28 = sub_2676CBE4C();
    __swift_project_value_buffer(v28, qword_2801CDC90);
    v29 = sub_2676CBE2C();
    v30 = sub_2676CC23C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      OUTLINED_FUNCTION_6_3(&dword_2675D4000, v32, v33, "#ContactResolver converting Entity<Common.Person> to ContactQuery");
      MEMORY[0x26D5FEA80](v31, -1, -1);
    }

    sub_2675F6DF0(v53);
    v34 = OUTLINED_FUNCTION_4_4();
    v35(v34, v26);
    return (*(v27 + 8))(v18, v14);
  }
}

uint64_t sub_2675EC018()
{
  v0 = sub_2676C8FBC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2676CAA2C();
  OUTLINED_FUNCTION_1_6(v6, v7);
  OUTLINED_FUNCTION_0_8();
  if (v8)
  {

    return sub_2676CAA2C();
  }

  else
  {
    sub_2676C8FAC();
    v10 = sub_2676CA98C();
    OUTLINED_FUNCTION_1_6(v10, v11);
    OUTLINED_FUNCTION_0_8();
    if (v12)
    {
      sub_2676CA98C();
      sub_2676C8F3C();
    }

    v13 = sub_2676CAA6C();
    OUTLINED_FUNCTION_1_6(v13, v14);
    OUTLINED_FUNCTION_0_8();
    if (v15)
    {
      sub_2676CAA6C();
      sub_2676C8EDC();
    }

    v16 = sub_2676CA96C();
    OUTLINED_FUNCTION_1_6(v16, v17);
    OUTLINED_FUNCTION_0_8();
    if (v18)
    {
      sub_2676CA96C();
      sub_2676C8F1C();
    }

    v19 = sub_2676CA94C();
    OUTLINED_FUNCTION_1_6(v19, v20);
    OUTLINED_FUNCTION_0_8();
    if (v21)
    {
      sub_2676CA94C();
      sub_2676C8EFC();
    }

    v22 = sub_2676CA9AC();
    OUTLINED_FUNCTION_1_6(v22, v23);
    OUTLINED_FUNCTION_0_8();
    if (v24)
    {
      sub_2676CA9AC();
      sub_2676C8F5C();
    }

    v25 = sub_2676CAA4C();
    OUTLINED_FUNCTION_1_6(v25, v26);
    OUTLINED_FUNCTION_0_8();
    if (v27)
    {
      sub_2676CAA4C();
      sub_2676C8F8C();
    }

    v28 = sub_2676C8F9C();
    (*(v2 + 8))(v5, v0);
    return v28;
  }
}

uint64_t sub_2675EC200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2675EC248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2)
{
}

void OUTLINED_FUNCTION_6_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t type metadata accessor for ContactResolutionCATsSimple(uint64_t a1)
{
  result = qword_2801CC170;
  if (!qword_2801CC170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675EC3A0()
{
  OUTLINED_FUNCTION_3_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2675EC440()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2676CDE10;
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = 0x80000002676D62D0;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[6], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_11_3();
    v5();
  }

  v6 = v0[5];
  OUTLINED_FUNCTION_7_4();
  *(v3 + 80) = v8;
  *(v3 + 88) = v7 & 0xFFFF0000FFFFLL | 0xEB00000000650000;
  sub_2675ED65C(v9, v6, &qword_2801CBFD0, &qword_2676CDEA0);
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[5], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_11_3();
    v10();
  }

  v11 = OUTLINED_FUNCTION_5_4();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2675EC670;
  OUTLINED_FUNCTION_15_2();

  return v12();
}

uint64_t sub_2675EC670()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_2675EC7AC()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675EC81C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_21();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2675EC848()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE20;
  OUTLINED_FUNCTION_7_4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v3 | 0xEF7473694C650000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC190, &qword_2676CDEB8);
  *(v2 + 48) = v1;
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2675EC984;

  return v8(0xD000000000000027, 0x80000002676D6360, v2);
}

uint64_t sub_2675EC984()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_2675ECABC()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675ECB18()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 73) = v3;
  *(v1 + 72) = v4;
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v6);
  *(v1 + 40) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2675ECBB4()
{
  OUTLINED_FUNCTION_16_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_2676CDE30;
  *(v4 + 32) = 0x73694C6C69616D65;
  *(v4 + 40) = 0xE900000000000074;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC188, &qword_2676CDEB0);
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1701667182;
  *(v4 + 88) = 0xE400000000000000;
  sub_2675ED65C(v3, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v6 = sub_2676CB3FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {

    sub_2675ED6C0(v8, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_14_2();
    (*(v9 + 32))();
  }

  v10 = *(v0 + 73);
  v11 = *(v0 + 72);
  strcpy((v4 + 128), "isMixedLabels");
  *(v4 + 142) = -4864;
  v12 = MEMORY[0x277D839B0];
  *(v4 + 144) = v11;
  *(v4 + 168) = v12;
  strcpy((v4 + 176), "isSameLabels");
  *(v4 + 189) = 0;
  *(v4 + 190) = -5120;
  *(v4 + 216) = v12;
  *(v4 + 192) = v10;
  v13 = OUTLINED_FUNCTION_5_4();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = sub_2675ECE0C;

  return v15(0xD000000000000026, 0x80000002676D6330, v4);
}

uint64_t sub_2675ECE0C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_2675ECF3C()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675ECFA0()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2675ED030()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = 0x80000002676D62D0;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_10_3() == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_11_3();
    v5();
  }

  v6 = OUTLINED_FUNCTION_5_4();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2675ED1C8;
  OUTLINED_FUNCTION_15_2();

  return v7();
}

uint64_t sub_2675ED1C8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_2675ED2F8()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675ED35C(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_11_3();
  return sub_2675ED3AC(v1, v2, v3);
}

uint64_t sub_2675ED3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  MEMORY[0x28223BE20](v12);
  sub_2675ED65C(a1, &v16 - v13, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_2676CB40C();
  (*(v7 + 8))(a2, v3);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v14;
}

uint64_t sub_2675ED524(uint64_t a1, uint64_t a2)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2676CB41C();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2675ED624()
{
  v0 = sub_2676CB43C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2675ED65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2675ED6C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t sub_2675ED7F4(uint64_t a1, uint64_t a2)
{
  sub_2676C96AC();
  sub_2676C969C();
  sub_2676C9ECC();
  v2 = sub_2676CBB4C();
  __swift_destroy_boxed_opaque_existential_1(v4);

  return v2;
}

uint64_t sub_2675ED8D0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2676C89DC();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC198, &qword_2676CDEF8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675ED9F8, 0, 0);
}

uint64_t sub_2675ED9F8()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  v0[14] = __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC24C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#ContactResolver.mailAddresseeEntities querying Mail app...", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  sub_2676C8C8C();
  sub_2676C89CC();
  sub_2675EDF34();
  sub_2676C89AC();
  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_2675EDBE4;
  v9 = v0[11];
  v11 = v0[6];
  v10 = v0[7];

  return MEMORY[0x28210BD88](v11, v10, v9);
}

uint64_t sub_2675EDBE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[16] = v1;

  (*(v4[12] + 8))(v4[13], v4[11]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2675EDD9C, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_2675EDD9C()
{
  v17 = v0;
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC24C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_2676CC5FC();
    v10 = sub_2676B0B84(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2675D4000, v3, v4, "#ContactResolver.mailAddresseeEntities threw error: %s, returning empty array", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D5FEA80](v7, -1, -1);
    MEMORY[0x26D5FEA80](v6, -1, -1);

    v11 = v5;
  }

  else
  {
    v12 = *(v0 + 128);

    v11 = v12;
  }

  v13 = *(v0 + 8);
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

unint64_t sub_2675EDF34()
{
  result = qword_2801CC1A0;
  if (!qword_2801CC1A0)
  {
    sub_2676C8C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1A0);
  }

  return result;
}

unint64_t sub_2675EDF8C()
{
  v63 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_7();
  v66 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v65 = &v50 - v6;
  v7 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v55 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  v51 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v19 = *(v18 + 16);
  v53 = v20;
  v19();
  result = sub_2676CAE5C();
  v22 = result;
  v23 = 0;
  v67 = *(result + 16);
  v62 = v9 + 16;
  v61 = *MEMORY[0x277D56008];
  v59 = (v1 + 8);
  v60 = (v1 + 104);
  v57 = (v9 + 8);
  v64 = v9;
  v54 = (v9 + 32);
  v56 = MEMORY[0x277D84F90];
  v58 = result;
  while (v67 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v24 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v25 = *(v64 + 72);
    (*(v64 + 16))(v15, v22 + v24 + v25 * v23, v7);
    v26 = v65;
    sub_2676CAAEC();
    v27 = v7;
    v28 = v66;
    v29 = v23;
    v30 = v63;
    (*v60)(v66, v61, v63);
    sub_2675EEE08(&qword_2801CC140, MEMORY[0x277D56020], MEMORY[0x277D56038]);
    sub_2676CC0CC();
    sub_2676CC0CC();
    v31 = *v59;
    (*v59)(v28, v30);
    v31(v26, v30);
    if (v69 == v68)
    {
      v32 = v29;
      v33 = *v54;
      (*v54)(v55, v15, v27);
      v34 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v34;
      v7 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2676C2848(0, *(v34 + 16) + 1, 1);
        v34 = v70;
      }

      v22 = v58;
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2676C2848((v36 > 1), v37 + 1, 1);
        v34 = v70;
      }

      v23 = v32 + 1;
      *(v34 + 16) = v37 + 1;
      v56 = v34;
      result = v33(v34 + v24 + v37 * v25, v55, v27);
    }

    else
    {
      result = (*v57)(v15, v27);
      v23 = v29 + 1;
      v7 = v27;
      v22 = v58;
    }
  }

  v38 = v51;
  sub_2676CAE6C();
  v39 = *(sub_2676CAE5C() + 16);

  if (v39)
  {
    if (v39 == 1)
    {
      sub_2676C8C8C();
      v39 = swift_allocBox();
      sub_2675E38E4(v40);
      (*(v52 + 8))(v38, v53);
      v41 = 0xC000000000000000;
    }

    else
    {
      v46 = swift_allocBox();
      v48 = OUTLINED_FUNCTION_2_8(v46, v47);
      v49(v48);
      v41 = 0xA000000000000000;
    }
  }

  else
  {
    v42 = swift_allocBox();
    v44 = OUTLINED_FUNCTION_2_8(v42, v43);
    v45(v44);
    v41 = 0x6000000000000000;
  }

  return v41 | v39;
}

uint64_t sub_2675EE48C(uint64_t a1, unint64_t a2)
{
  v94 = a2;
  sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v86 = v3;
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_7();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v92 = v11;
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v90 = v19;
  v91 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_7();
  v88 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v89 = &v85 - v23;
  v24 = sub_2676CAA9C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v28 = (v26 - v27);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v85 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v39 = &v85 - v38;
  v40 = 0;
  switch(v36 >> 61)
  {
    case 1uLL:
      if (v94 >> 61 != 1)
      {
        goto LABEL_28;
      }

      v49 = v37;
      v50 = swift_projectBox();
      v51 = swift_projectBox();
      v52 = *(v49 + 16);
      v52(v32, v50, v24);
      v52(v28, v51, v24);
      v40 = sub_2676CA9FC();
      v53 = *(v49 + 8);
      v53(v28, v24);
      v53(v32, v24);
      return v40 & 1;
    case 2uLL:
      if (v94 >> 61 != 2)
      {
        goto LABEL_28;
      }

      v54 = swift_projectBox();
      v55 = swift_projectBox();
      v56 = v89;
      v57 = *(v90 + 16);
      v58 = v91;
      v57(v89, v54, v91);
      v57(v88, v55, v58);
      swift_getKeyPath();
      sub_2675EEE08(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
      v59 = sub_2676CA89C();
      v61 = v60;

      swift_getKeyPath();
      v62 = sub_2676CA89C();
      v64 = v63;

      if (v61)
      {
        if (v64)
        {
          if (v59 == v62 && v61 == v64)
          {
            v40 = 1;
          }

          else
          {
            v40 = sub_2676CC59C();
          }

          v84 = OUTLINED_FUNCTION_3_6();
          v61(v84);
          (v61)(v56, v58);
          return v40 & 1;
        }

        v83 = OUTLINED_FUNCTION_3_6();
        v61(v83);
        (v61)(v56, v58);
LABEL_28:
        v40 = 0;
        return v40 & 1;
      }

      v82 = OUTLINED_FUNCTION_3_6();
      MEMORY[0](v82);
      MEMORY[0](v56, v58);
      if (v64)
      {

        goto LABEL_28;
      }

      v40 = 1;
      return v40 & 1;
    case 3uLL:
      if (v94 >> 61 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    case 4uLL:
      if (v94 >> 61 != 4)
      {
        goto LABEL_28;
      }

      v72 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *((v94 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v72) = sub_267683F64(v72, v73);

      return v72 & 1;
    case 5uLL:
      if (v94 >> 61 != 5)
      {
        goto LABEL_28;
      }

LABEL_22:
      v75 = swift_projectBox();
      v76 = swift_projectBox();
      v78 = v92;
      v77 = v93;
      v79 = *(v92 + 16);
      v79(v17, v75, v93);
      v79(v14, v76, v77);
      v40 = sub_2676CADEC();
      v80 = *(v78 + 8);
      v80(v14, v77);
      v80(v17, v77);
      return v40 & 1;
    case 6uLL:
      if (v94 >> 61 != 6)
      {
        goto LABEL_28;
      }

      v66 = swift_projectBox();
      v67 = swift_projectBox();
      v69 = v86;
      v68 = v87;
      v70 = *(v86 + 16);
      v70(v9, v66, v87);
      v70(v6, v67, v68);
      v40 = sub_26760C8B4(v9);
      v71 = *(v69 + 8);
      v71(v6, v68);
      v71(v9, v68);
      return v40 & 1;
    case 7uLL:
      return v40 & 1;
    default:
      v41 = v37;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
      v43 = swift_projectBox();
      if (v94 >> 61)
      {
        goto LABEL_28;
      }

      v44 = *(v42 + 48);
      v45 = *(v43 + v44);
      v46 = swift_projectBox();
      v47 = *(v46 + v44);
      v48 = *(v41 + 16);
      v48(v39, v43, v24);
      v48(v35, v46, v24);

      if (sub_2676CA9FC())
      {
        v40 = sub_2675EE48C(v45, v47);
      }

      else
      {
        v40 = 0;
      }

      v81 = *(v41 + 8);
      v81(v35, v24);
      v81(v39, v24);
      return v40 & 1;
  }
}

uint64_t sub_2675EEC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB84C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2675EECE4(unint64_t a1)
{
  v1 = a1 >> 61;
  result = 0x707041736465656ELL;
  switch(v1)
  {
    case 1uLL:
      result = 0x6C6156736465656ELL;
      break;
    case 2uLL:
      result = 0x766C6F7365726E75;
      break;
    case 3uLL:
      result = 0xD00000000000001ELL;
      break;
    case 4uLL:
      result = 0xD000000000000016;
      break;
    case 5uLL:
      result = 0xD000000000000015;
      break;
    case 6uLL:
      result = 0x6465766C6F736572;
      break;
    case 7uLL:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2675EEE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2675EEE70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_2675EEEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2675EEF84(uint64_t a1)
{
  v2 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = *(a1 + 16);

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v9 != v10)
  {
    v12 = *(a1 + 8 * v10++ + 32);
    if (v12 >> 61 == 6)
    {
      v13 = swift_projectBox();
      (*(v4 + 16))(v8, v13, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267606D84();
        v11 = v15;
      }

      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_267606D84();
        v11 = v16;
      }

      *(v11 + 16) = v14 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v8, v2);
    }
  }

  if (*(v11 + 16) == v9)
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v17 = sub_2676CBE4C();
    __swift_project_value_buffer(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2675D4000, v18, v19, "#ContactStateManager all contacts are resolved", v20, 2u);
      v21 = OUTLINED_FUNCTION_2_9();
      MEMORY[0x26D5FEA80](v21);
    }
  }

  else
  {

    return a1;
  }

  return v11;
}