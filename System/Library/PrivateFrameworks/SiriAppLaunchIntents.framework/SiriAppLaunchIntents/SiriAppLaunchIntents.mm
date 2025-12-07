uint64_t sub_2660B9A0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2660B9AA0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2660B9B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
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

uint64_t sub_2660B9BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
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

uint64_t sub_2660B9D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2660C2B70(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2660B9EB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2660B9ED0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2660B9F20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660B9F5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660B9F94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660B9FE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA060()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2660BA098()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents31ExecutionDeviceResolutionResultO_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2660BA0F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2660BA12C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA1A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660BA1DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 130, 7);
}

uint64_t sub_2660BA22C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2660BA27C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BA2C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA2F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2660BA33C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA374()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

BOOL sub_2660BA3B8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2660BA404()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA43C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA4C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA520()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA558()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA5C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA5FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA654()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA6A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA6D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2660BA764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA79C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2660BA7F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660BA83C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BA898()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BA8D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26618C4D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2660BA8FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26618C4C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2660BA950(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26618CCD0();
    if (v3)
    {
      v4 = v3;
      v1 = sub_266140AE8(v3, 0);
      sub_266142170();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_2660BAA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26618BDB0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2660BAB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26618BDB0();
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

uint64_t sub_2660BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C0E0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2660BADC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618C0E0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2660BAFCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660BB004()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BB09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26618A620();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2660BB124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26618A620();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2660BB1A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BB1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2660BB230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2660BB310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26617158C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2660BB36C()
{
  OUTLINED_FUNCTION_58_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_136();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_39_3();
    if (*(v7 + 84) == v0)
    {
      v5 = v6;
      v8 = *(v2 + 24);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
      v8 = *(v2 + 28);
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2660BB45C()
{
  OUTLINED_FUNCTION_26_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_39_3();
    if (*(v2 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    }
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_2660BB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_2660BB698()
{
  OUTLINED_FUNCTION_26_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_109();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_2660BB77C()
{
  OUTLINED_FUNCTION_58_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_39_3();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_136();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_39_3();
    if (*(v7 + 84) == v0)
    {
      v5 = v6;
      v8 = *(v2 + 20);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
      v8 = *(v2 + 24);
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2660BB86C()
{
  OUTLINED_FUNCTION_26_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_39_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_39_3();
    if (*(v2 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
    }
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_2660BBBA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2660BBC08()
{
  sub_26618A5B0();
  OUTLINED_FUNCTION_26_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2660BBC84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2660BBCBC()
{
  sub_26618A5B0();
  OUTLINED_FUNCTION_26_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2660BBD4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2660BBD8C@<X0>(uint64_t *a1@<X8>)
{
  result = LaunchAppIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2660BBDE0@<X0>(uint64_t *a1@<X8>)
{
  result = CloseAppIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2660BBE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeepLaunchPageNameUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2660BBEA8@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLaunchIntentResponse.code.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2660BC018()
{
  sub_2660BC49C();
  result = sub_26618CBC0();
  qword_28005D0E0 = result;
  return result;
}

uint64_t sub_2660BC0D8(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_26618C6B0();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_26618C6C0();
}

uint64_t sub_2660BC164()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C630();
  __swift_allocate_value_buffer(v4, qword_28005D100);
  __swift_project_value_buffer(v4, qword_28005D100);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v1 + 16))(v3, v5, v0);
  return sub_26618C610();
}

uint64_t variable initialization expression of AppLaunchDataModels.AppResultWrapperModel._seeMoreSash()
{
  type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t variable initialization expression of AppLaunchDataModels.AppOffloadedModel._confirmReinstallAction()
{
  sub_26618AB50();
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2660BC390@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0();
  *a1 = result;
  return result;
}

uint64_t sub_2660BC3B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2661046B0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2660BC49C()
{
  result = qword_2814B2BF0;
  if (!qword_2814B2BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2BF0);
  }

  return result;
}

uint64_t type metadata accessor for CloseAppCATPatternsExecutor(uint64_t a1)
{
  result = qword_28005BCC0;
  if (!qword_28005BCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2660BC58C(__int16 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  result = swift_allocObject();
  *(result + 16) = xmmword_26618E180;
  v3 = MEMORY[0x277D839B0];
  *(result + 32) = 0xD000000000000017;
  *(result + 40) = 0x8000000266197B70;
  *(result + 48) = a1 & 1;
  *(result + 72) = v3;
  strcpy((result + 80), "hasHomeButton");
  *(result + 94) = -4864;
  *(result + 120) = v3;
  *(result + 96) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_2660BC638(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BC650()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_26618E190;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000266197B70;
  *(v2 + 72) = MEMORY[0x277D839B0];
  *(v2 + 48) = v1;
  v3 = OUTLINED_FUNCTION_5();
  *(v0 + 32) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_3(v3);

  return v5(0xD000000000000015);
}

uint64_t sub_2660BC760()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660BC8A0, 0, 0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_4();

    return v7(v6);
  }
}

uint64_t sub_2660BC8A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BC904(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BC920()
{
  OUTLINED_FUNCTION_1_0();
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 24) = sub_2660BC58C(v1 | *(v0 + 48));
  v2 = OUTLINED_FUNCTION_5();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_3(v2);

  return v4(0xD00000000000001CLL);
}

uint64_t sub_2660BCA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26618C340();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2660BCC2C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_26618C2C0();
  (*(v6 + 8))(a2, v5);
  sub_2660BCC9C(a1);
  return v11;
}

uint64_t sub_2660BCBAC()
{
  v0 = sub_26618C2E0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
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

uint64_t sub_2660BCC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660BCC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_task_alloc();
}

uint64_t sub_2660BCDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_2_0(v8, xmmword_26618E250);
  sub_2660BDD94(v9, v7, &qword_28005BCF0, &unk_26618E2F0);
  v10 = sub_26618C300();
  OUTLINED_FUNCTION_10(v7);
  if (v11)
  {
    sub_2660BDDF8(v7, &qword_28005BCF0, &unk_26618E2F0);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    OUTLINED_FUNCTION_4_0();
    (*(v12 + 32))();
  }

  OUTLINED_FUNCTION_9();
  *(v8 + 80) = v14;
  *(v8 + 88) = v13;
  v15 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  v16 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v0 + *(v15 + 20));
  *(v8 + 120) = v16;
  *(v8 + 128) = 0x7463416B63697571;
  *(v8 + 136) = 0xEF656D614E6E6F69;
  sub_2660BDD94(v0 + *(v15 + 24), v5, &qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_10(v5);
  if (v11)
  {
    sub_2660BDDF8(v5, &qword_28005BCF0, &unk_26618E2F0);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v10;
    __swift_allocate_boxed_opaque_existential_0((v8 + 144));
    OUTLINED_FUNCTION_4_0();
    (*(v17 + 32))();
  }

  return v8;
}

uint64_t sub_2660BD00C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_2_0(v5, xmmword_26618E180);
  sub_2660BDD94(v6, v4, &qword_28005BCF0, &unk_26618E2F0);
  v7 = sub_26618C300();
  OUTLINED_FUNCTION_10(v4);
  if (v8)
  {
    sub_2660BDDF8(v4, &qword_28005BCF0, &unk_26618E2F0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    OUTLINED_FUNCTION_4_0();
    (*(v9 + 32))();
  }

  OUTLINED_FUNCTION_9();
  *(v5 + 80) = v11;
  *(v5 + 88) = v10;
  v12 = *(v0 + *(type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters(0) + 20));
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v12;
  return v5;
}

uint64_t sub_2660BD174(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 104) = a1;
  v7 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  *(v6 + 56) = v7;
  OUTLINED_FUNCTION_3_0(v7);
  *(v6 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660BD20C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 104);
  v8 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 24), 1, 1, v8);
  *(v1 + *(v2 + 20)) = v7;
  sub_26610B258(v1, v6, v5, v4, v3);
  *(v0 + 72) = sub_2660BCDD4();
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_3(v9);

  return v11(0xD00000000000001FLL);
}

uint64_t sub_2660BD350(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 88) = v1;

  if (!v1)
  {
    *(v4 + 96) = a1;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660BD490()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_2660BD510()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BD58C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 96) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_3_0(v5);
  *(v4 + 40) = swift_task_alloc();
  v6 = type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters(0);
  *(v4 + 48) = v6;
  OUTLINED_FUNCTION_3_0(v6);
  *(v4 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660BD654()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = v4;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  sub_2660BDBE8(v3, v1);
  *(v0 + 64) = sub_2660BD00C();
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_3(v6);

  return v8(0xD000000000000024);
}

uint64_t sub_2660BD7A8(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 80) = v1;

  if (!v1)
  {
    *(v4 + 88) = a1;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660BD8E8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_2660BD968()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BDA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26618C340();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  MEMORY[0x28223BE20](v10);
  sub_2660BDD94(a1, &v14 - v11, &qword_28005BCD0, &qword_26618E238);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_26618C2C0();
  (*(v6 + 8))(a2, v5);
  sub_2660BDDF8(a1, &qword_28005BCD0, &qword_26618E238);
  return v12;
}

uint64_t sub_2660BDBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2660BDD00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2660BDD38(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2660BDD94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2660BDDF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2660BDE7C(uint64_t a1)
{
  sub_2660BDEF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2660BDEF8(uint64_t a1)
{
  if (!qword_28005BD08)
  {
    sub_26618C300();
    v1 = sub_26618CBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_28005BD08);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
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

void sub_2660BE0F4(uint64_t a1)
{
  sub_2660BDEF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v2 = *(v0 + 64);

  return sub_2660BDD38(v2, type metadata accessor for DeepLaunchLaunchingQuickActionParameters);
}

uint64_t OUTLINED_FUNCTION_1_1()
{
  v2 = *(v0 + 56);

  return sub_2660BDD38(v2, type metadata accessor for DeepLaunchUnableToLaunchQuickActionParameters);
}

uint64_t OUTLINED_FUNCTION_2_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return v2;
}

uint64_t sub_2660BE2A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26618E180;
  *(v5 + 32) = 0x656D614E707061;
  *(v5 + 40) = 0xE700000000000000;
  sub_2660BF73C(v0, v4, &qword_28005BCF0, &unk_26618E2F0);
  v6 = sub_26618C300();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2660BF79C(v4, &qword_28005BCF0, &unk_26618E2F0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_0, v4, v6);
  }

  OUTLINED_FUNCTION_13();
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = v8;
  v9 = *(v0 + *(type metadata accessor for LaunchAppLaunchFailedParameters(0) + 20));
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v9;
  return v5;
}

uint64_t sub_2660BE444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26618E250;
  OUTLINED_FUNCTION_13();
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = v7;
  *(v6 + 48) = *v0;
  OUTLINED_FUNCTION_13();
  *(v8 + 72) = v10;
  *(v8 + 80) = v9;
  *(v8 + 88) = v11;
  *(v8 + 96) = v0[1];
  *(v8 + 120) = v10;
  *(v8 + 128) = 0x656D614E6D6F6F72;
  *(v8 + 136) = 0xE800000000000000;
  found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
  sub_2660BF73C(&v0[*(found + 24)], v4, &qword_28005BCF0, &unk_26618E2F0);
  v13 = sub_26618C300();
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    sub_2660BF79C(v4, &qword_28005BCF0, &unk_26618E2F0);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 144));
    (*(*(v13 - 8) + 32))(boxed_opaque_existential_0, v4, v13);
  }

  return v5;
}

uint64_t sub_2660BE600(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BE618()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v3 = OUTLINED_FUNCTION_21(v2);
  v4 = OUTLINED_FUNCTION_7(v3, "executeSashGroupOnWatch");
  *(v4 + 72) = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D55BE8];
  *(v4 + 48) = v1;
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = OUTLINED_FUNCTION_20(v6, v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v9[1] = sub_2660BE704;
  OUTLINED_FUNCTION_10_0();

  return v11();
}

uint64_t sub_2660BE704()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_2_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_4();

    return v11(v10);
  }
}

uint64_t sub_2660BE82C()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BE88C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BE8A4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v3 = OUTLINED_FUNCTION_21(v2);
  v4 = OUTLINED_FUNCTION_7(v3, "executeSashGroupOnWatch");
  *(v4 + 72) = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D55BE8];
  *(v4 + 48) = v1;
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = OUTLINED_FUNCTION_20(v6, v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v9[1] = sub_2660BE990;
  OUTLINED_FUNCTION_10_0();

  return v11();
}

uint64_t sub_2660BE990()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_2_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_4();

    return v11(v10);
  }
}

uint64_t sub_2660BEAB8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 96) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  OUTLINED_FUNCTION_3_0(v5);
  *(v0 + 40) = swift_task_alloc();
  v6 = type metadata accessor for LaunchAppLaunchFailedParameters(0);
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_3_0(v6);
  *(v0 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660BEB80, 0, 0);
}

uint64_t sub_2660BEB80()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = v4;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  sub_2660BDBE8(v3, v1);
  *(v0 + 64) = sub_2660BE2A8();
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_3(v6);
  v7 = OUTLINED_FUNCTION_15(22);

  return v8(v7);
}

uint64_t sub_2660BECC4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_2_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660BEDEC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_2660BEE6C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BEEE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BEF00()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v3 = OUTLINED_FUNCTION_21(v2);
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_26618E190;
  OUTLINED_FUNCTION_13();
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = v5;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_3(v6);
  v7 = OUTLINED_FUNCTION_15(22);

  return v8(v7);
}

uint64_t sub_2660BF004()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 90) = v3;
  *(v0 + 16) = v4;
  *(v0 + 89) = v5;
  *(v0 + 88) = v6;
  found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
  *(v0 + 40) = found;
  OUTLINED_FUNCTION_3_0(found);
  *(v0 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660BF0A0, 0, 0);
}

uint64_t sub_2660BF0A0()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 90);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = *(*(v0 + 40) + 24);
  v8 = sub_26618C300();
  __swift_storeEnumTagSinglePayload(&v1[v7], 1, 1, v8);
  *v1 = v6;
  v1[1] = v5;
  sub_26617BDF0(v1, v4, v3, v2);
  *(v0 + 56) = sub_2660BE444();
  OUTLINED_FUNCTION_5_0(MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_3(v9);
  v10 = OUTLINED_FUNCTION_15(31);

  return v11(v10);
}

uint64_t sub_2660BF1B8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_2_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660BF2E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2660BF350()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660BF3BC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BF3D4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD8, &unk_26618E240);
  v3 = OUTLINED_FUNCTION_21(v2);
  v4 = OUTLINED_FUNCTION_7(v3, "executeSashGroupOnWatch");
  *(v4 + 72) = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D55BE8];
  *(v4 + 48) = v1;
  v6 = OUTLINED_FUNCTION_5_0(v5);
  v8 = OUTLINED_FUNCTION_20(v6, v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v9[1] = sub_2660BE990;
  OUTLINED_FUNCTION_10_0();

  return v11();
}

uint64_t sub_2660BF514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26618C340();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  MEMORY[0x28223BE20](v10);
  sub_2660BF73C(a1, &v14 - v11, &qword_28005BCD0, &qword_26618E238);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_26618C2C0();
  (*(v6 + 8))(a2, v5);
  sub_2660BF79C(a1, &qword_28005BCD0, &qword_26618E238);
  return v12;
}

uint64_t sub_2660BF6E4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2660BF73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2660BF79C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2660BF81C(uint64_t a1)
{
  sub_2660BDEF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000017;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 + 48);

  return sub_2660BF6E4(v2, type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters);
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  v2 = *(v0 + 56);

  return sub_2660BF6E4(v2, type metadata accessor for LaunchAppLaunchFailedParameters);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, __n128 a2)
{
  *(v3 + 24) = v2;
  v2[1] = a2;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return swift_allocObject();
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

uint64_t sub_2660BFA3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2660BFA7C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2660BFAD0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660BFAE8()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v4[2].n128_u64[0] = v5 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  v4[2].n128_u64[1] = 0xE700000000000000;
  v4[4].n128_u64[1] = MEMORY[0x277D837D0];
  v4[3].n128_u64[0] = v2;
  v4[3].n128_u64[1] = v1;

  OUTLINED_FUNCTION_45();
  *(v0 + 120) = sub_26618C850();
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_51(v6);
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

uint64_t sub_2660BFC14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2660BFD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F68636E75507369 && a2 == 0xEA00000000007475;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7070416C6C417369 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

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

uint64_t sub_2660BFE54(char a1)
{
  if (!a1)
  {
    return 0x656D614E707061;
  }

  if (a1 == 1)
  {
    return 0x4F68636E75507369;
  }

  return 0x7070416C6C417369;
}

uint64_t sub_2660BFEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660BFD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660BFF04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660BFE40();
  *a1 = result;
  return result;
}

uint64_t sub_2660BFF2C(uint64_t a1)
{
  v2 = sub_2660C60E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660BFF68(uint64_t a1)
{
  v2 = sub_2660C60E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2660BFFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE00, &qword_26618EA78);
  OUTLINED_FUNCTION_2_2();
  v29 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_35(v26, v26[3]);
  sub_2660C60E8();
  OUTLINED_FUNCTION_64();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF60();
  if (!v23)
  {
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_39();
}

void sub_2660C00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE28, &qword_26618EA90);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  v21 = sub_2660C60E8();
  OUTLINED_FUNCTION_26(&type metadata for AppLaunchDialogProvider.AppLaunchParams.CodingKeys, v22, v21);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6();
  sub_26618CEF0();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  v23 = OUTLINED_FUNCTION_5_1();
  v24(v23);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C02E8()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 88) = v0;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2660C037C, 0, 0);
}

uint64_t sub_2660C037C()
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_12(*(v0 + 88));
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  sub_2660C57BC();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v1 = sub_26618A520();
  *(v0 + 72) = 0;
  v2 = OUTLINED_FUNCTION_44(v1, sel_JSONObjectWithData_options_error_);

  v3 = *(v0 + 72);
  if (v2)
  {
    v4 = v3;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v5 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v5, v6);
      v2 = *(v0 + 80);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v3;
    OUTLINED_FUNCTION_25();
    v8 = sub_26618A4C0();

    v2 = v8;
    swift_willThrow();
  }

  sub_26618C850();
  v9 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v9, v10);
LABEL_8:
  *(v0 + 96) = v2;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_42(v11);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

uint64_t sub_2660C05D0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_72();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_31();
  }

  return v5(v4);
}

uint64_t sub_2660C072C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C0740()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v2[2].n128_u64[0] = v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v2[2].n128_u64[1] = 0xE800000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD98, &qword_26618E560);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_45();
  v5 = sub_26618C850();
  OUTLINED_FUNCTION_52(v5);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_21_0(26);

  return sub_2660C7BDC();
}

uint64_t sub_2660C085C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2660C0968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000266197FA0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2660C0AE0(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x614E656369766564;
      break;
    case 2:
      result = 0x6C7074656B72616DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C0B78()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDA8, &qword_26618EA48);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_28();
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v2, v3);
  sub_2660C5EF0();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF60();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  v4 = OUTLINED_FUNCTION_49();
  return v5(v4);
}

void sub_2660C0CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE58, &qword_26618EAC0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_35(v21, v21[3]);
  sub_2660C5EF0();
  sub_26618D0E0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_40();
    v26 = sub_26618CEF0();
    v38 = v27;
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_40();
    v28 = sub_26618CEF0();
    v37 = v29;
    v35 = v28;
    OUTLINED_FUNCTION_33();
    v34 = sub_26618CEF0();
    v36 = v30;
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_40();
    v31 = sub_26618CF10();
    v32 = OUTLINED_FUNCTION_17_0();
    v33(v32);

    __swift_destroy_boxed_opaque_existential_1(v21);

    *v24 = v26;
    *(v24 + 8) = v38;
    *(v24 + 16) = v35;
    *(v24 + 24) = v37;
    *(v24 + 32) = v34;
    *(v24 + 40) = v36;
    *(v24 + 48) = v31 & 1;
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C0968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C0F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C0AD8();
  *a1 = result;
  return result;
}

uint64_t sub_2660C0F88(uint64_t a1)
{
  v2 = sub_2660C5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C0FC4(uint64_t a1)
{
  v2 = sub_2660C5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2660C1000@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2660C0CC0(a1, a2, a3, a4, a5, a6, a7, a8, v12, *v13, *&v13[4], v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t sub_2660C1068()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;

  return MEMORY[0x2822009F8](sub_2660C10F4, 0, 0);
}

uint64_t sub_2660C10F4()
{
  OUTLINED_FUNCTION_68();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_12(*(v0 + 128));
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  sub_2660C556C();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v5 = sub_26618A520();
  *(v0 + 104) = 0;
  v6 = OUTLINED_FUNCTION_44(v5, sel_JSONObjectWithData_options_error_);

  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = v7;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v9 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v9, v10);
      v6 = *(v0 + 112);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v7;
    OUTLINED_FUNCTION_25();
    v12 = sub_26618A4C0();

    v6 = v12;
    swift_willThrow();
  }

  sub_26618C850();
  v13 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v13, v14);
LABEL_8:
  *(v0 + 136) = v6;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_42(v15);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2660C13A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000266197FC0 == a2;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4373746C75736572 && a2 == 0xEC000000746E756FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2660C1510(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x6C7074656B72616DLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x4373746C75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C15AC()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDB0, &qword_26618EA50);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_28();
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v2, v3);
  sub_2660C5F44();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF70();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF90();
  }

  v4 = OUTLINED_FUNCTION_49();
  return v5(v4);
}

void sub_2660C16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE50, &qword_26618EAB8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_35(v25, v25[3]);
  sub_2660C5F44();
  sub_26618D0E0();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_48();
    v29 = sub_26618CF00();
    v37 = v30;
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_48();
    v35 = sub_26618CEF0();
    v36 = v31;
    OUTLINED_FUNCTION_33();
    v38 = sub_26618CF10();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_48();
    v32 = sub_26618CF20();
    v33 = OUTLINED_FUNCTION_29();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v25);
    *v27 = v29;
    *(v27 + 8) = v37;
    *(v27 + 16) = v35;
    *(v27 + 24) = v36;
    *(v27 + 32) = v38 & 1;
    *(v27 + 40) = v32;
  }

  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C1900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C13A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C1928(uint64_t a1)
{
  v2 = sub_2660C5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C1964(uint64_t a1)
{
  v2 = sub_2660C5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C19FC()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;

  return MEMORY[0x2822009F8](sub_2660C1A88, 0, 0);
}

uint64_t sub_2660C1A88()
{
  OUTLINED_FUNCTION_68();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_12(*(v0 + 120));
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  sub_2660C5618();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v4 = sub_26618A520();
  *(v0 + 96) = 0;
  v5 = OUTLINED_FUNCTION_44(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v8 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v8, v9);
      v5 = *(v0 + 104);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v6;
    OUTLINED_FUNCTION_25();
    v11 = sub_26618A4C0();

    v5 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v12, v13);
LABEL_8:
  *(v0 + 128) = v5;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_42(v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(40);

  return sub_2660C7BDC();
}

uint64_t sub_2660C1CEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

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

uint64_t sub_2660C1DC4(char a1)
{
  sub_26618D090();
  MEMORY[0x26677C460](a1 & 1);
  return sub_26618D0C0();
}

uint64_t sub_2660C1E0C(char a1)
{
  if (a1)
  {
    return 0x614E656369766564;
  }

  else
  {
    return 0x656D614E707061;
  }
}

void sub_2660C1E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDD0, &qword_26618EA60);
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_35(v8, v8[3]);
  sub_2660C5FEC();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  sub_26618CF60();
  if (!v5)
  {
    OUTLINED_FUNCTION_18_0();
    sub_26618CF60();
  }

  (*(v11 + 8))(v6, v9);
  OUTLINED_FUNCTION_39();
}

void sub_2660C1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE40, &qword_26618EAA8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  v8 = sub_2660C5FEC();
  OUTLINED_FUNCTION_26(&type metadata for AppLaunchDialogProvider.AppOffloadedParams.CodingKeys, v9, v8);
  if (!v6)
  {
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_6();
    sub_26618CEF0();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6();
    sub_26618CEF0();
    v10 = OUTLINED_FUNCTION_5_1();
    v11(v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C20F0(uint64_t a1)
{
  v2 = *v1;
  sub_26618D090();
  MEMORY[0x26677C460](v2);
  return sub_26618D0C0();
}

uint64_t sub_2660C213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C1CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C2164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C1DBC();
  *a1 = result;
  return result;
}

uint64_t sub_2660C218C(uint64_t a1)
{
  v2 = sub_2660C5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C21C8(uint64_t a1)
{
  v2 = sub_2660C5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2660C2204(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_2660C1F88(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }
}

uint64_t sub_2660C2254()
{
  OUTLINED_FUNCTION_18();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_2660C22E8, 0, 0);
}

uint64_t sub_2660C22E8()
{
  v15 = *(v1 + 96);
  v16 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(*(v1 + 128), *(*(v1 + 128) + 24));
  *(v1 + 16) = v15;
  *(v1 + 32) = v16;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  v2 = sub_2660C56C0();
  OUTLINED_FUNCTION_75(v2, &unk_2877CA458, v2);
  if (v0)
  {

    v3 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v4 = sub_26618A520();
  *(v1 + 80) = 0;
  v3 = OUTLINED_FUNCTION_43(v4, sel_JSONObjectWithData_options_error_);

  v5 = *(v1 + 80);
  if (v3)
  {
    v6 = v5;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v7 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v7, v8);
      v3 = *(v1 + 88);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = v5;
    v10 = OUTLINED_FUNCTION_76();

    v3 = v10;
    swift_willThrow();
  }

  sub_26618C850();
  v11 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v11, v12);
LABEL_10:
  *(v1 + 136) = v3;
  v13 = swift_task_alloc();
  *(v1 + 144) = v13;
  *v13 = v1;
  v13[1] = sub_2660C7128;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(22);

  return sub_2660C7BDC();
}

void sub_2660C257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDF0, &qword_26618EA70);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_35(v5, v5[3]);
  sub_2660C6094();
  OUTLINED_FUNCTION_74(&type metadata for AppLaunchDialogProvider.ConfirmReinstallingOffloadedAppParams.CodingKeys);
  OUTLINED_FUNCTION_53();
  sub_26618CF70();
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C2658(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE30, &qword_26618EA98);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C6094();
  OUTLINED_FUNCTION_30();
  sub_26618D0E0();
  if (!v1)
  {
    sub_26618CF00();
    v4 = OUTLINED_FUNCTION_41();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_2660C2794@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2660C27C0(uint64_t a1)
{
  v2 = sub_2660C6094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C27FC(uint64_t a1)
{
  v2 = sub_2660C6094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C2838@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2660C2658(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2660C2880()
{
  OUTLINED_FUNCTION_18();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_2660C2910, 0, 0);
}

uint64_t sub_2660C2910()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_12(*(v0 + 96));
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  v3 = sub_2660C5768();
  OUTLINED_FUNCTION_75(v3, &unk_2877CA358, v3);
  if (v2)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v0 + 64) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v0 + 64);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v0 + 72);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v0 + 104) = v4;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_42(v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(41);

  return sub_2660C7BDC();
}

uint64_t sub_2660C2B70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26618D000();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2660C2BE8()
{
  sub_26618D090();
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

void sub_2660C2C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDE0, &qword_26618EA68);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_35(v5, v5[3]);
  sub_2660C6040();
  OUTLINED_FUNCTION_74(&type metadata for AppLaunchDialogProvider.ReinstallingOffloadedAppParams.CodingKeys);
  OUTLINED_FUNCTION_53();
  sub_26618CF60();
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C2D08(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE38, &qword_26618EAA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  sub_2660C6040();
  OUTLINED_FUNCTION_30();
  sub_26618D0E0();
  if (!v1)
  {
    sub_26618CEF0();
    v4 = OUTLINED_FUNCTION_41();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_2660C2E20(uint64_t a1)
{
  sub_26618D090();
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

uint64_t sub_2660C2E60(uint64_t a1)
{
  v2 = sub_2660C6040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C2E9C(uint64_t a1)
{
  v2 = sub_2660C6040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C2ED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2660C2D08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2660C2F20()
{
  OUTLINED_FUNCTION_18();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_2660C2FB0, 0, 0);
}

uint64_t sub_2660C2FB0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_12(*(v0 + 96));
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  v3 = sub_2660C5714();
  OUTLINED_FUNCTION_75(v3, &unk_2877CA3D8, v3);
  if (v2)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v0 + 64) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v0 + 64);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v0 + 72);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v0 + 104) = v4;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_42(v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(34);

  return sub_2660C7BDC();
}

uint64_t sub_2660C3210()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_72();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_31();
  }

  return v5(v4);
}

uint64_t sub_2660C336C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C3384()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[18];
  v2 = v0[17];
  sub_2660C5864(v0[19], (v0 + 12));
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_71(inited, xmmword_26618E190);
  v4[2].n128_u64[0] = v5 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
  v4[2].n128_u64[1] = 0xEA0000000000656DLL;
  v4[4].n128_u64[1] = MEMORY[0x277D837D0];
  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v1)
  {
    v7 = v1;
  }

  v4[3].n128_u64[0] = v6;
  v4[3].n128_u64[1] = v7;

  OUTLINED_FUNCTION_45();
  v0[20] = sub_26618C850();
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_51(v8);
  OUTLINED_FUNCTION_21_0(32);

  return sub_2660C7BDC();
}

uint64_t sub_2660C34D8()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v4 + 176) = v0;

  if (v0)
  {
    v7 = sub_2660C3678;
  }

  else
  {
    *(v4 + 184) = v3;
    v7 = sub_2660C3618;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2660C3618()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_54();
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_2660C3678()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660C36D8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C36EC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_71(inited, xmmword_26618E190);
  v2[2].n128_u64[0] = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v2[2].n128_u64[1] = 0xE700000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_45();
  v5 = sub_26618C850();
  OUTLINED_FUNCTION_52(v5);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_21_0(30);

  return sub_2660C7BDC();
}

uint64_t sub_2660C3808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
        if (v8 || (sub_26618D000() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
        {

          return 4;
        }

        else
        {
          v10 = sub_26618D000();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2660C39C4(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x614E656369766564;
      break;
    case 2:
      v3 = 0x614E6D6F6F72;
      goto LABEL_6;
    case 3:
      v3 = 0x61536E497369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 4:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660C3A74()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BDC0, &qword_26618EA58);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_28();
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_35(v2, v3);
  sub_2660C5F98();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_30();
  sub_26618D0F0();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_2();
  sub_26618CF70();
  if (!v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_4_2();
    sub_26618CF60();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
    OUTLINED_FUNCTION_11();
    sub_26618CF80();
  }

  v4 = OUTLINED_FUNCTION_49();
  return v5(v4);
}

void sub_2660C3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE48, &qword_26618EAB0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_0();
  v29 = sub_2660C5F98();
  OUTLINED_FUNCTION_26(&type metadata for AppLaunchDialogProvider.LaunchedAppParams.CodingKeys, v30, v29);
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    LOBYTE(v49[0]) = 0;
    OUTLINED_FUNCTION_40();
    v31 = sub_26618CF00();
    v44 = v32;
    OUTLINED_FUNCTION_27(1);
    v33 = sub_26618CEF0();
    v43 = v34;
    v41 = v33;
    OUTLINED_FUNCTION_27(2);
    v40 = sub_26618CEF0();
    v42 = v35;
    OUTLINED_FUNCTION_27(3);
    v52 = sub_26618CF10();
    OUTLINED_FUNCTION_40();
    v36 = sub_26618CF10();
    v37 = OUTLINED_FUNCTION_16_0();
    v38(v37);
    *&v45 = v31;
    *(&v45 + 1) = v44;
    *&v46 = v41;
    *(&v46 + 1) = v43;
    *&v47 = v40;
    *(&v47 + 1) = v42;
    LOBYTE(v48) = v52 & 1;
    HIBYTE(v48) = v36 & 1;
    sub_2660C6190(&v45, v49);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v49[0] = v31;
    v49[1] = v44;
    v49[2] = v41;
    v49[3] = v43;
    v49[4] = v40;
    v49[5] = v42;
    v50 = v52 & 1;
    v51 = v36 & 1;
    sub_2660C61C8(v49);
    v39 = v46;
    *v27 = v45;
    *(v27 + 16) = v39;
    *(v27 + 32) = v47;
    *(v27 + 48) = v48;
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C3E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C3808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C3EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2660C39BC();
  *a1 = result;
  return result;
}

uint64_t sub_2660C3EC8(uint64_t a1)
{
  v2 = sub_2660C5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C3F04(uint64_t a1)
{
  v2 = sub_2660C5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2660C3F40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2660C3BDC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, *v15, *&v15[2], v15[4], v15[5], v16, v17, v19, v20, v22, v23, v25, v26, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v18;
    result = *&v21;
    *(a9 + 32) = v21;
    *(a9 + 48) = v24;
  }

  return result;
}

uint64_t sub_2660C3FA8()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;

  return MEMORY[0x2822009F8](sub_2660C4034, 0, 0);
}

uint64_t sub_2660C4034()
{
  OUTLINED_FUNCTION_68();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_12(*(v0 + 128));
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 64) = *(v1 + 24);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  sub_2660C566C();
  sub_26618A3C0();
  OUTLINED_FUNCTION_70();
  objc_opt_self();
  OUTLINED_FUNCTION_8_1();
  v5 = sub_26618A520();
  *(v0 + 104) = 0;
  v6 = OUTLINED_FUNCTION_44(v5, sel_JSONObjectWithData_options_error_);

  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = v7;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_63())
    {
      v9 = OUTLINED_FUNCTION_23();
      sub_2660C55C0(v9, v10);
      v6 = *(v0 + 112);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v7;
    OUTLINED_FUNCTION_25();
    v12 = sub_26618A4C0();

    v6 = v12;
    swift_willThrow();
  }

  sub_26618C850();
  v13 = OUTLINED_FUNCTION_8_1();
  sub_2660C55C0(v13, v14);
LABEL_8:
  *(v0 + 136) = v6;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_42(v15);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

uint64_t sub_2660C42A0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_72();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_31();
  }

  return v5(v4);
}

uint64_t sub_2660C43FC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C4410()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v2[2].n128_u64[0] = v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v2[2].n128_u64[1] = 0xE800000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_45();
  v5 = sub_26618C850();
  OUTLINED_FUNCTION_52(v5);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_21_0(27);

  return sub_2660C7BDC();
}

uint64_t sub_2660C4540()
{
  OUTLINED_FUNCTION_1_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 24) = sub_26618C850();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2660C4630;

  return sub_2660C7BDC();
}

uint64_t sub_2660C4630()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2660C473C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4373746C75736572 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xEF656D614E656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000266197FC0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

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

uint64_t sub_2660C4860(unsigned __int8 a1)
{
  sub_26618D090();
  MEMORY[0x26677C460](a1);
  return sub_26618D0C0();
}

uint64_t sub_2660C48A8(char a1)
{
  if (!a1)
  {
    return 0x4373746C75736572;
  }

  if (a1 == 1)
  {
    return 0x6C7074656B72616DLL;
  }

  return 0xD000000000000015;
}

void sub_2660C4918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_38();
  v16[0] = v6;
  v16[1] = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE10, &qword_26618EA80);
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v15 = v16 - v14;
  OUTLINED_FUNCTION_35(v9, v9[3]);
  sub_2660C613C();
  sub_26618D0F0();
  sub_26618CF90();
  if (!v5)
  {
    OUTLINED_FUNCTION_18_0();
    sub_26618CF60();
    OUTLINED_FUNCTION_33();
    sub_26618CF80();
  }

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_39();
}

void sub_2660C4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BE20, &qword_26618EA88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  v21 = sub_2660C613C();
  OUTLINED_FUNCTION_26(&type metadata for AppLaunchDialogProvider.InstallAppParams.CodingKeys, v22, v21);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6();
  sub_26618CF20();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_6();
  sub_26618CEF0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6();
  sub_26618CF10();
  v23 = OUTLINED_FUNCTION_5_1();
  v24(v23);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_2660C4BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2660C473C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2660C4C20(uint64_t a1)
{
  v2 = sub_2660C613C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2660C4C5C(uint64_t a1)
{
  v2 = sub_2660C613C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2660C4CF4()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 73) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;

  return MEMORY[0x2822009F8](sub_2660C4D88, 0, 0);
}

uint64_t sub_2660C4D88()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 112);
  v16 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 120));
  *(v0 + 48) = v16;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  if (qword_2814B31B8 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814B31B8);
  }

  v3 = sub_2660C5810();
  OUTLINED_FUNCTION_75(v3, &unk_2877CA248, v3);
  if (v2)
  {

    v4 = sub_26618C850();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67();
  objc_opt_self();
  OUTLINED_FUNCTION_9_1();
  v5 = sub_26618A520();
  *(v0 + 80) = 0;
  v4 = OUTLINED_FUNCTION_43(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v0 + 80);
  if (v4)
  {
    v7 = v6;
    sub_26618CC70();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD50, &qword_26618E4F0);
    if (OUTLINED_FUNCTION_61())
    {
      v8 = OUTLINED_FUNCTION_24();
      sub_2660C55C0(v8, v9);
      v4 = *(v0 + 88);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_76();

    v4 = v11;
    swift_willThrow();
  }

  sub_26618C850();
  v12 = OUTLINED_FUNCTION_9_1();
  sub_2660C55C0(v12, v13);
LABEL_10:
  *(v0 + 128) = v4;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_2660C5000;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_21_0(21);

  return sub_2660C7BDC();
}

uint64_t sub_2660C5000()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_72();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_31();
  }

  return v5(v4);
}

uint64_t sub_2660C515C(char a1, char a2, char a3)
{
  *(v4 + 192) = v3;
  *(v4 + 218) = a3;
  *(v4 + 217) = a2;
  *(v4 + 216) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C517C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 218);
  v2 = *(v0 + 217);
  v3 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  strcpy((inited + 32), "isAppInstalled");
  *(inited + 47) = -18;
  v5 = MEMORY[0x277D839B0];
  *(inited + 16) = xmmword_26618E250;
  *(inited + 48) = v3;
  *(inited + 72) = v5;
  *(inited + 80) = 0x616F6C66664F7369;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000266197F10;
  *(inited + 168) = v5;
  *(inited + 144) = v1;
  *(v0 + 200) = sub_26618C850();
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_2660C531C;

  return sub_2660C7BDC();
}

uint64_t sub_2660C531C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2660C5428(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C5440()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_12(*(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14(inited, xmmword_26618E190);
  v4[2].n128_u64[0] = v5 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  v4[2].n128_u64[1] = 0xE700000000000000;
  v4[4].n128_u64[1] = MEMORY[0x277D837D0];
  v4[3].n128_u64[0] = v2;
  v4[3].n128_u64[1] = v1;

  OUTLINED_FUNCTION_45();
  *(v0 + 120) = sub_26618C850();
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_51(v6);
  OUTLINED_FUNCTION_21_0(30);

  return sub_2660C7BDC();
}

unint64_t sub_2660C556C()
{
  result = qword_2814B3F18;
  if (!qword_2814B3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F18);
  }

  return result;
}

uint64_t sub_2660C55C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2660C5618()
{
  result = qword_28005BD58;
  if (!qword_28005BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD58);
  }

  return result;
}

unint64_t sub_2660C566C()
{
  result = qword_28005BD60;
  if (!qword_28005BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD60);
  }

  return result;
}

unint64_t sub_2660C56C0()
{
  result = qword_28005BD68;
  if (!qword_28005BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD68);
  }

  return result;
}

unint64_t sub_2660C5714()
{
  result = qword_28005BD70;
  if (!qword_28005BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD70);
  }

  return result;
}

unint64_t sub_2660C5768()
{
  result = qword_28005BD88;
  if (!qword_28005BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD88);
  }

  return result;
}

unint64_t sub_2660C57BC()
{
  result = qword_28005BD90;
  if (!qword_28005BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BD90);
  }

  return result;
}

unint64_t sub_2660C5810()
{
  result = qword_28005BDA0;
  if (!qword_28005BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDA0);
  }

  return result;
}

uint64_t sub_2660C5864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2660C5928(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_2660C597C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2660C59F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_2660C5A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2660C5AB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2660C5AF4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2660C5B3C(uint64_t a1, unsigned int a2)
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

uint64_t sub_2660C5B90(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2660C5BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2660C5C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2660C5CC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_2660C5D08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_2660C5D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2660C5DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_2660C5E2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_2660C5E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2660C5EF0()
{
  result = qword_2814B3F30[0];
  if (!qword_2814B3F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3F30);
  }

  return result;
}

unint64_t sub_2660C5F44()
{
  result = qword_28005BDB8;
  if (!qword_28005BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDB8);
  }

  return result;
}

unint64_t sub_2660C5F98()
{
  result = qword_28005BDC8;
  if (!qword_28005BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDC8);
  }

  return result;
}

unint64_t sub_2660C5FEC()
{
  result = qword_28005BDD8;
  if (!qword_28005BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDD8);
  }

  return result;
}

unint64_t sub_2660C6040()
{
  result = qword_28005BDE8;
  if (!qword_28005BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDE8);
  }

  return result;
}

unint64_t sub_2660C6094()
{
  result = qword_28005BDF8;
  if (!qword_28005BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BDF8);
  }

  return result;
}

unint64_t sub_2660C60E8()
{
  result = qword_28005BE08;
  if (!qword_28005BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE08);
  }

  return result;
}

unint64_t sub_2660C613C()
{
  result = qword_28005BE18;
  if (!qword_28005BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE18);
  }

  return result;
}

uint64_t _s22ConfirmationStateValueOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2660C62A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s15InAppSearchVerbOwet(unsigned int *a1, int a2)
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

_BYTE *sub_2660C63EC(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppLaunchDialogProvider.AppOffloadedParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AppLaunchDialogProvider.AppOffloadedParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppLaunchDialogProvider.LaunchedAppParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppLaunchDialogProvider.LaunchedAppParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchIntent.AppNoun(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2660C67F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2660C68D8()
{
  result = qword_28005BE60;
  if (!qword_28005BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE60);
  }

  return result;
}

unint64_t sub_2660C6930()
{
  result = qword_28005BE68;
  if (!qword_28005BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE68);
  }

  return result;
}

unint64_t sub_2660C6988()
{
  result = qword_28005BE70;
  if (!qword_28005BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE70);
  }

  return result;
}

unint64_t sub_2660C69E0()
{
  result = qword_28005BE78;
  if (!qword_28005BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE78);
  }

  return result;
}

unint64_t sub_2660C6A38()
{
  result = qword_28005BE80;
  if (!qword_28005BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE80);
  }

  return result;
}

unint64_t sub_2660C6A90()
{
  result = qword_28005BE88;
  if (!qword_28005BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE88);
  }

  return result;
}

unint64_t sub_2660C6AE8()
{
  result = qword_28005BE90;
  if (!qword_28005BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE90);
  }

  return result;
}

unint64_t sub_2660C6B40()
{
  result = qword_28005BE98;
  if (!qword_28005BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BE98);
  }

  return result;
}

unint64_t sub_2660C6B98()
{
  result = qword_28005BEA0;
  if (!qword_28005BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEA0);
  }

  return result;
}

unint64_t sub_2660C6BF0()
{
  result = qword_28005BEA8;
  if (!qword_28005BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEA8);
  }

  return result;
}

unint64_t sub_2660C6C48()
{
  result = qword_28005BEB0;
  if (!qword_28005BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEB0);
  }

  return result;
}

unint64_t sub_2660C6CA0()
{
  result = qword_28005BEB8;
  if (!qword_28005BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEB8);
  }

  return result;
}

unint64_t sub_2660C6CF8()
{
  result = qword_28005BEC0;
  if (!qword_28005BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEC0);
  }

  return result;
}

unint64_t sub_2660C6D50()
{
  result = qword_28005BEC8;
  if (!qword_28005BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEC8);
  }

  return result;
}

unint64_t sub_2660C6DA8()
{
  result = qword_28005BED0;
  if (!qword_28005BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BED0);
  }

  return result;
}

unint64_t sub_2660C6E00()
{
  result = qword_28005BED8;
  if (!qword_28005BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BED8);
  }

  return result;
}

unint64_t sub_2660C6E58()
{
  result = qword_28005BEE0;
  if (!qword_28005BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEE0);
  }

  return result;
}

unint64_t sub_2660C6EB0()
{
  result = qword_28005BEE8;
  if (!qword_28005BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEE8);
  }

  return result;
}

unint64_t sub_2660C6F08()
{
  result = qword_28005BEF0;
  if (!qword_28005BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEF0);
  }

  return result;
}

unint64_t sub_2660C6F60()
{
  result = qword_28005BEF8;
  if (!qword_28005BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BEF8);
  }

  return result;
}

unint64_t sub_2660C6FB8()
{
  result = qword_28005BF00;
  if (!qword_28005BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF00);
  }

  return result;
}

unint64_t sub_2660C7010()
{
  result = qword_28005BF08;
  if (!qword_28005BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF08);
  }

  return result;
}

unint64_t sub_2660C7068()
{
  result = qword_2814B3F20;
  if (!qword_2814B3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F20);
  }

  return result;
}

unint64_t sub_2660C70C0()
{
  result = qword_2814B3F28;
  if (!qword_2814B3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F28);
  }

  return result;
}

uint64_t sub_2660C7128()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_69();

  return sub_2660C42A0();
}

uint64_t sub_2660C7194()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_69();

  return sub_2660C3210();
}

uint64_t sub_2660C7200()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_69();

  return sub_2660C5000();
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618D0E0();
}

id OUTLINED_FUNCTION_43(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_44(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618A3C0();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_26618A4C0();
}

id sub_2660C7794()
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2814B3120 = result;
  return result;
}

uint64_t sub_2660C77E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C77FC()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_2(v1);

  return MEMORY[0x2821BB3C8](v2);
}

uint64_t sub_2660C7894()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v2 + 80) = v0;

  sub_2660C8040(v2 + 16, &qword_28005BF18, &qword_26618F390);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660C80A0, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_2660C79D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660C79E8()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_2(v1);

  return MEMORY[0x2821BAEE8](v2);
}

uint64_t sub_2660C7A84()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v2 + 80) = v0;

  sub_2660C8040(v2 + 16, &qword_28005BF18, &qword_26618F390);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660C7BC4, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_2660C7BDC()
{
  OUTLINED_FUNCTION_18();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_26618C340();
  v0[10] = v4;
  v0[11] = *(v4 - 8);
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660C7C9C, 0, 0);
}

uint64_t sub_2660C7C9C()
{
  sub_26618C320();
  if (qword_2814B3118 != -1)
  {
    swift_once();
  }

  v1 = qword_2814B3120;
  sub_26618C2B0();
  v2 = sub_26618C2A0();
  *(v0 + 104) = v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_26618C330();
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_2660C7DD4;
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  return MEMORY[0x2821B8050](v1, v7, v5, v6, v2, v0 + 16, v4);
}

uint64_t sub_2660C7DD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = v4[13];
  v8 = *v2;
  *v6 = *v2;
  v5[15] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  sub_2660C8040((v5 + 2), &qword_28005BF10, &qword_26618F380);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2660C7FAC, 0, 0);
  }

  else
  {

    v9 = v8[1];

    return v9(a1);
  }
}

uint64_t sub_2660C7FAC()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660C8040(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2660C80B8(uint64_t a1, uint64_t a2)
{
  if (sub_26618B160() & 1) != 0 || (sub_26618B140())
  {
    return 1;
  }

  return MEMORY[0x2821BABA8](a1, a2);
}

uint64_t sub_2660C8128(uint64_t a1, uint64_t a2)
{
  if (sub_2660C80B8(a1, a2))
  {
    v2 = sub_26618B0F0() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2660C8178()
{
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v3 = v2 - v1;
  sub_26618B820();
  sub_266144AE8();
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  return v3;
}

void sub_2660C822C()
{
  OUTLINED_FUNCTION_6_0();
  v0 = sub_26618C3C0();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  v32[1] = v2 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v32[0] = sub_26618AAD0();
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  sub_26618A6A0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v15 = sub_26618A6C0();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  sub_26618B7A0();
  sub_26618A6B0();
  (*(v17 + 8))(v21, v15);
  sub_26618A680();
  v22 = OUTLINED_FUNCTION_3_3();
  v23(v22);
  sub_26618AAC0();
  (*(v9 + 8))(v13, v32[0]);
  v24 = sub_26618B980();
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v25 = OUTLINED_FUNCTION_3_3();
  sub_2660C924C(v25, v26);
  sub_26618C3B0();
  sub_2660C92A4();
  OUTLINED_FUNCTION_3_3();
  sub_26618C3D0();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v24);
  v27 = v33;
  sub_2660C92FC(v7, v33);
  if (__swift_getEnumTagSinglePayload(v27, 1, v24) == 1)
  {
    sub_2660C8040(v7, &qword_28005BF28, &qword_26618F960);
    v28 = OUTLINED_FUNCTION_3_3();
    sub_2660C55C0(v28, v29);
    sub_2660C8040(v27, &qword_28005BF28, &qword_26618F960);
  }

  else
  {
    sub_266144F30();
    v30 = OUTLINED_FUNCTION_3_3();
    sub_2660C55C0(v30, v31);
    sub_2660C8040(v7, &qword_28005BF28, &qword_26618F960);
    (*(*(v24 - 8) + 8))(v27, v24);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C8600()
{
  v0 = sub_26618C420();
  v1 = sub_2661046B8();
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26677C150](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26618C3A0();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void *sub_2660C86DC()
{
  sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v3 = (v2 - v1);
  sub_2660C8600();
  v5 = v4;
  if (v4)
  {
    sub_26618C400();

    v5 = v3;
    sub_266144F30();
    v6 = OUTLINED_FUNCTION_4_3();
    v7(v6);
  }

  return v5;
}

void sub_2660C87C0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618B7B0();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = (v9 - v8);
  v11 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = (v15 - v14);
  v17 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = (v22 - v21);
  (*(v19 + 16))(v22 - v21, v1, v17);
  v24 = (*(v19 + 88))(v23, v17);
  if (v24 == *MEMORY[0x277D5C140])
  {
    v25 = OUTLINED_FUNCTION_2_3();
    v26(v25);
    v27 = *(v6 + 32);
    v27(v10, v23, v4);
    *(v3 + 24) = v4;
    *(v3 + 32) = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
    v27(boxed_opaque_existential_0, v10, v4);
  }

  else if (v24 == *MEMORY[0x277D5C148])
  {
    v29 = OUTLINED_FUNCTION_2_3();
    v30(v29);
    v31 = *v23;
    *(v3 + 24) = sub_26618C430();
    *(v3 + 32) = &off_2877CAAD8;
    *v3 = v31;
  }

  else if (v24 == *MEMORY[0x277D5C160])
  {
    v32 = OUTLINED_FUNCTION_2_3();
    v33(v32);
    v34 = *(v36 + 32);
    v34(v16, v23, v11);
    *(v3 + 24) = v11;
    *(v3 + 32) = &off_2877CAAB8;
    v35 = __swift_allocate_boxed_opaque_existential_0(v3);
    v34(v35, v16, v11);
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    (*(v19 + 8))(v23, v17);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C8AA8()
{
  OUTLINED_FUNCTION_6_0();
  v73 = v0;
  sub_26618AAB0();
  OUTLINED_FUNCTION_2_2();
  v65 = v2;
  v66 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v64 = v4 - v3;
  sub_26618AAF0();
  OUTLINED_FUNCTION_2_2();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v61 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF20, &qword_26618F3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v60 - v10;
  sub_26618A6A0();
  OUTLINED_FUNCTION_2_2();
  v68 = v12;
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v67 = sub_26618A6C0();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  sub_26618AB10();
  OUTLINED_FUNCTION_2_2();
  v71 = v23;
  v72 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = sub_26618B7B0();
  OUTLINED_FUNCTION_2_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  v34 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v40 = (v39 - v38);
  (*(v36 + 16))(v39 - v38, v73, v34);
  v41 = OUTLINED_FUNCTION_5_2();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277D5C140])
  {
    v44 = OUTLINED_FUNCTION_5_2();
    v45(v44);
    (*(v29 + 32))(v33, v40, v27);
    sub_26618B7A0();
    sub_26618A6B0();
    (*(v17 + 8))(v21, v67);
    sub_26618A690();
    (*(v68 + 8))(v15, v69);
    v46 = sub_26618AB00();
    v47 = v70;
    sub_266139C70(v46, v70);

    v48 = sub_26618AA40();
    v49 = v29;
    if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
    {
      sub_2660C8040(v47, &qword_28005BF20, &qword_26618F3D0);
    }

    else
    {
      v56 = v61;
      sub_26618AA30();
      (*(*(v48 - 8) + 8))(v47, v48);
      v57 = v64;
      sub_26618AAE0();
      (*(v62 + 8))(v56, v63);
      sub_26618AAA0();
      (*(v65 + 8))(v57, v66);
    }

    (*(v71 + 8))(v26, v72);
    (*(v49 + 8))(v33, v27);
  }

  else if (v43 == *MEMORY[0x277D5C148])
  {
    v50 = OUTLINED_FUNCTION_5_2();
    v51(v50);
    v52 = *v40;
    sub_2660C8600();
    if (v53)
    {
      v54 = v53;
      v55 = v64;
      sub_26618C390();

      sub_26618AAA0();
      (*(v65 + 8))(v55, v66);
    }
  }

  else
  {
    v58 = OUTLINED_FUNCTION_5_2();
    v59(v58);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C9080(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = sub_26618B7B0();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = *(v3 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = *(v11 + 16);
  v16(v18 - v17, v1, v3);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v10, v4);
  }

  else
  {
    v16(v15, v1, v3);
    sub_26618C430();
    if (swift_dynamicCast())
    {
    }
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660C924C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_2660C92A4()
{
  result = qword_28005BF30;
  if (!qword_28005BF30)
  {
    sub_26618B980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BF30);
  }

  return result;
}

uint64_t sub_2660C92FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660C93E8()
{
  v0 = sub_26618C170();
  result = sub_2660C9540(6uLL, v0);
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v18 = MEMORY[0x277D84F90];
    result = sub_26612A3B8(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v18;
    while (v8 < v5)
    {
      v10 = *(v7 + 2 * v8);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26612A3B8((v11 > 1), v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      *(v18 + 8 * v12 + 32) = v10;
      if (v5 == ++v8)
      {
        result = swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  result = swift_unknownObjectRelease();
  v9 = MEMORY[0x277D84F90];
LABEL_11:
  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 32);
    while (1)
    {
      v16 = *v15++;
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

unint64_t sub_2660C9540(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2660C9768(0, result, v3);
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
      v6 = sub_2660C96FC(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2660C95D4()
{
  v0 = sub_26618C170();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26612A3B8(0, v1, 0);
    v2 = v13;
    v3 = *(v13 + 16);
    v4 = 32;
    do
    {
      v5 = *(v0 + v4);
      v6 = *(v13 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_26612A3B8((v6 > 1), v3 + 1, 1);
      }

      *(v13 + 16) = v3 + 1;
      *(v13 + 8 * v3 + 32) = v5;
      v4 += 2;
      ++v3;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v2 + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
LABEL_14:

    return v9;
  }

  return result;
}

unint64_t sub_2660C96FC(unint64_t result, uint64_t a2, uint64_t a3)
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
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2660C9768(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_2660C97B4()
{
  if (qword_2814B3DC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent(0);
  sub_2660C98B4();
  sub_26618BDA0();
  v0 = 1;
  v1 = 0;
  switch(v3)
  {
    case 2:
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
      v0 = sub_26618D000();
LABEL_5:

      v1 = v0;
      break;
  }

  return v1 & 1;
}

unint64_t sub_2660C98B4()
{
  result = qword_2814B3D28;
  if (!qword_2814B3D28)
  {
    type metadata accessor for AppLaunchIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3D28);
  }

  return result;
}

id sub_2660C990C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_2660C9CB4(v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_2814B4A70 != -1)
    {
      swift_once();
    }

    v8 = v3;
    v9 = InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(v6, v7, v3, 0);

    if ((v9 & 1) == 0)
    {
      v11 = objc_allocWithZone(v2);
      v12 = sub_26618C8A0();
      v13 = [v11 initWithIdentifier:0 displayString:v12];

      v10 = v13;
      sub_26614E5FC(v6, v7, v10);
      v14 = [v8 localizedName];

      v15 = sub_26618C8B0();
      v17 = v16;

      sub_26614E608(v15, v17, v10);
      v18 = [v8 applicationState];
      [v18 isDowngraded];

      v19 = sub_26618CA00();
      [v10 setIsOffloaded_];

      return v10;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t Application.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000015, 0x8000000266198010);
  v1 = sub_2660C9D48(v0, &selRef_name);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v1, v3);

  MEMORY[0x26677BCF0](0x6C646E7562202C22, 0xED0000203A644965);
  v4 = sub_2660C9D48(v0, &selRef_appId);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v4, v6);

  MEMORY[0x26677BCF0](0x49656E656373202CLL, 0xEB00000000203A64);
  v7 = sub_2660C9D48(v0, &selRef_sceneId);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0x3E6C696E3CLL;
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v7, v9);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2660C9CB4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_2660C9D48(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26618C8B0();

  return v4;
}

uint64_t sub_2660C9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_26618A700();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v10 = sub_26618A970();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v11 = sub_26618A8A0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  (*(v14 + 104))(v13 - v12, *MEMORY[0x277D38FC8]);
  sub_26618A780();
  sub_2660CB7FC(&qword_28005BF38, MEMORY[0x277D39028], MEMORY[0x277D39020]);
  sub_26618C3F0();
  sub_26618A7B0();
  sub_2660CB7FC(&qword_28005BF40, MEMORY[0x277D38E68], MEMORY[0x277D38E60]);
  sub_26618C3F0();
  return sub_26618A7C0();
}

uint64_t sub_2660CA064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v26 = a6;
  v24 = a5;
  v32 = a1;
  v28 = sub_26618A770();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_26618A990();
  v30 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26618A890();
  v29 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26618AA90();
  MEMORY[0x28223BE20](v17);
  v25 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  sub_2660CB7FC(&qword_28005BF68, MEMORY[0x277D38F90], MEMORY[0x277D38F88]);
  sub_26618C3F0();
  v19 = a4;
  v40 = a4;
  v20 = v24;
  v41 = v24;
  sub_2660CB7FC(&qword_28005BF70, MEMORY[0x277D39038], MEMORY[0x277D39030]);
  sub_26618C3F0();
  v36 = v26;
  v37 = v27;
  v38 = v19;
  v39 = v20;
  sub_2660CB7FC(&qword_28005BF78, MEMORY[0x277D38EA0], MEMORY[0x277D38E98]);
  v21 = v28;
  sub_26618C3F0();
  v33 = v16;
  v34 = v13;
  v35 = v11;
  sub_2660CB7FC(&qword_28005BF80, MEMORY[0x277D398E0], MEMORY[0x277D398D8]);
  sub_26618C3F0();
  (*(v31 + 8))(v11, v21);
  (*(v30 + 8))(v13, v44);
  (*(v29 + 8))(v16, v14);
  return sub_26618A960();
}

uint64_t sub_2660CA524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFC0, &qword_26618F400);
  sub_26618A820();
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFC8, MEMORY[0x277D38F10], MEMORY[0x277D38F08]);
  sub_26618C3F0();
  return sub_26618A810();
}

uint64_t sub_2660CA680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFD0, &qword_26618F408);
  sub_26618A8C0();
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFD8, MEMORY[0x277D38FD8], MEMORY[0x277D38FD0]);
  sub_26618C3F0();
  return sub_26618A810();
}

uint64_t sub_2660CA82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF90, &qword_26618F3F0);
  sub_26618A8E0();
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BF98, MEMORY[0x277D38FE8], MEMORY[0x277D38FE0]);
  sub_26618C3F0();
  return sub_26618A980();
}

uint64_t sub_2660CA988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26618A870();
  MEMORY[0x28223BE20](v3);
  sub_2660CB7FC(&qword_28005BFA0, MEMORY[0x277D38F80], MEMORY[0x277D38F78]);
  sub_26618C3F0();
  return sub_26618A8D0();
}

uint64_t sub_2660CAA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BFA8, &qword_26618F3F8);
  sub_26618A800();
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BFB0, MEMORY[0x277D38F00], MEMORY[0x277D38EF8]);
  sub_26618C3F0();
  return sub_26618A860();
}

uint64_t sub_2660CABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26618A850();
  MEMORY[0x28223BE20](v3);
  sub_2660CB7FC(&qword_28005BFB8, MEMORY[0x277D38F70], MEMORY[0x277D38F68]);
  sub_26618C3F0();
  return sub_26618A7F0();
}

uint64_t sub_2660CACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26618A7E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618A840();
  (*(v4 + 104))(v6, *MEMORY[0x277D38ED0], v3);
  return sub_26618A830();
}

uint64_t sub_2660CAE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_26618A930();
  MEMORY[0x28223BE20](v5);
  sub_2660CB7FC(&qword_28005BF88, MEMORY[0x277D39008], MEMORY[0x277D39000]);
  sub_26618C3F0();
  return sub_26618A730();
}

uint64_t sub_2660CAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_26618A8F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618A900();
  if (a3)
  {
    v10 = MEMORY[0x277D38FF0];
  }

  else
  {
    v10 = MEMORY[0x277D38FF8];
  }

  (*(v7 + 104))(v9, *v10, v6);
  sub_26618A910();
  return sub_26618A920();
}

uint64_t sub_2660CB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v18 = a4;
  v5 = sub_26618A770();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26618A990();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26618A890();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_26618AA50();
  (*(v10 + 16))(v12, v17, v9);
  sub_26618AA80();
  (*(v6 + 16))(v8, v18, v5);
  return sub_26618AA70();
}

uint64_t sub_2660CB288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26618AA20();
  MEMORY[0x28223BE20](v3);
  sub_2660CB7FC(&qword_28005BF48, MEMORY[0x277D392E0], MEMORY[0x277D392D8]);
  sub_26618C3F0();
  return sub_26618A6F0();
}

uint64_t sub_2660CB3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26618A720();
  MEMORY[0x28223BE20](v3);
  sub_2660CB7FC(&qword_28005BF50, MEMORY[0x277D38E78], MEMORY[0x277D38E70]);
  sub_26618C3F0();
  return sub_26618AA10();
}

uint64_t sub_2660CB4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF58, &qword_26618F3E8);
  sub_26618A6E0();
  *(swift_allocObject() + 16) = xmmword_26618E190;
  sub_2660CB7FC(&qword_28005BF60, MEMORY[0x277D38E30], MEMORY[0x277D38E28]);
  sub_26618C3F0();
  return sub_26618A710();
}

uint64_t sub_2660CB7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2660CB854()
{
  v0 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D669D0]);
  v3 = v1;
  v4 = [v2 init];
  v11 = sub_2660CD344(0, &qword_28005BFE0, 0x277D0AD78);
  v12 = &off_2877CAC28;
  *&v10 = v3;
  v8 = sub_2660CD344(0, &qword_28005BFE8, 0x277D669D0);
  v9 = &off_2877CAC38;
  *&v7 = v4;
  type metadata accessor for AppShortcutItemRunner();
  v5 = swift_allocObject();
  sub_2660B9EB8(&v10, v5 + 16);
  sub_2660B9EB8(&v7, v5 + 56);

  return v5;
}

uint64_t sub_2660CB960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  sub_2660CC534(0, 0, v10, &unk_26618F518, v12);
}

uint64_t sub_2660CBA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_26618C6B0();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660CBB40, 0, 0);
}

uint64_t sub_2660CBB40()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  sub_2660CD344(0, &qword_28005C018, 0x277D0AD60);
  v5 = sub_2660CC1E4(v1);
  v6 = sub_2660CC4A8(v5);
  v0[11] = v6;
  v11 = (*(v4 + 8) + **(v4 + 8));
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2660CBCB8;
  v9 = v0[4];
  v8 = v0[5];

  return v11(v9, v8, v6, v3, v4);
}

uint64_t sub_2660CBCB8(void *a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v5 + 104) = v1;

  if (v1)
  {
    v8 = sub_2660CBF8C;
  }

  else
  {
    v9 = *(v5 + 88);

    v8 = sub_2660CBDD8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2660CBDD8()
{
  v18 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_2814B4A98);
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_26618C690();
  v6 = sub_26618CAA0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  if (v7)
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_266103A98(v12, v11, &v17);
    _os_log_impl(&dword_2660B7000, v5, v6, "open application %s succeeded", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v10 + 8))(v8, v9);

  OUTLINED_FUNCTION_5_3();

  return v15();
}

uint64_t sub_2660CBF8C()
{
  v25 = v0;

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = __swift_project_value_buffer(v4, qword_2814B4A98);
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 104);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v9)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v23 = *(v0 + 72);
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_266103A98(v15, v14, &v24);
    *(v16 + 12) = 2080;
    *(v0 + 16) = v10;
    v17 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v18 = sub_26618C8D0();
    v20 = sub_266103A98(v18, v19, &v24);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_2660B7000, v7, v8, "open application %s failed: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v11 + 8))(v23, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  OUTLINED_FUNCTION_5_3();

  return v21();
}

uint64_t sub_2660CC1E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C028, &qword_26618F540);
    v2 = sub_26618CEB0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2660CD384(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2660CD3E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2660CD3E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2660CD3E0(v31, v32);
    result = sub_26618CD00();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2660CD3E0(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2660CC4A8(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_26618C830();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_2660CC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2660CCFC4(a3, v24 - v10);
  v12 = sub_26618CA40();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2660C8040(v11, &qword_28005C010, &qword_2661922A0);
  }

  else
  {
    sub_26618CA30();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26618CA10();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26618C8F0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2660CC808(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  (*(v7 + 32))(v27, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD78, &qword_26618E520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F420;
  *(inited + 32) = sub_26618C8B0();
  *(inited + 40) = v9;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = OUTLINED_FUNCTION_4_4();
  v12 = v11(v10);
  v13 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v12 == 1;
  *(inited + 80) = sub_26618C8B0();
  *(inited + 88) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C000, &qword_26618F4F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26618E190;
  sub_2660C5864(v27, v15 + 32);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C008, &unk_26618F500);
  *(inited + 96) = v15;
  *(inited + 128) = sub_26618C8B0();
  *(inited + 136) = v16;
  *(inited + 168) = v13;
  *(inited + 144) = 1;
  *(inited + 176) = sub_26618C8B0();
  *(inited + 184) = v17;
  *(inited + 216) = v13;
  *(inited + 192) = 1;
  v18 = sub_26618C8B0();
  v19 = MEMORY[0x277D837D0];
  *(inited + 224) = v18;
  *(inited + 232) = v20;
  *(inited + 264) = v19;
  *(inited + 240) = 1769105747;
  *(inited + 248) = 0xE400000000000000;
  v21 = sub_26618C850();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v22 = OUTLINED_FUNCTION_4_4();
  v24 = v23(v22);
  if (v25)
  {
    a1 = v24;
    a2 = v25;
  }

  else
  {
  }

  sub_2660CB960(a1, a2, v21);

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2660CCA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2660CCB54(a1, a2, &v10);
  if (v11)
  {
    sub_2660B9EB8(&v10, v12);
    sub_2660CC808(a1, a2, v12);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2660C8040(&v10, &qword_28005BFF0, &qword_266191790);
    sub_2660CCDC0();
    swift_allocError();
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
    swift_willThrow();
  }
}

uint64_t sub_2660CCB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v9 = v5[10];
  v10 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v9);
  v11 = (*(v10 + 8))(0x1000000, a1, a2, v9, v10);
  sub_2660CCC00(v11, x8_0);
}

uint64_t sub_2660CCC00@<X0>(uint64_t result@<X0>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  v6 = result + 32;
  if (v5)
  {
    while (1)
    {
      sub_2660C5864(v6, &v11);
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      v7 = OUTLINED_FUNCTION_4_4();
      result = v8(v7);
      if (!v9)
      {
        break;
      }

      sub_2660CCD6C();
      v10 = sub_26618CC30();

      if (v10)
      {
        return sub_2660B9EB8(&v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v11);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2660CCD08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_2660CCD6C()
{
  result = qword_2814B2C30;
  if (!qword_2814B2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C30);
  }

  return result;
}

unint64_t sub_2660CCDC0()
{
  result = qword_28005BFF8;
  if (!qword_28005BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BFF8);
  }

  return result;
}

uint64_t sub_2660CCE14(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_4(v9);
  *v10 = v11;
  v10[1] = sub_2660CCEE0;

  return sub_2660CBA70(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2660CCEE0()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660CCFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660CD034(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2660CD12C;

  return v6(a1);
}

uint64_t sub_2660CD12C()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660CD214()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_2660CD2AC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_2660CD344(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2660CD384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2660CD3E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2660CD3F0(uint64_t a1, int a2)
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

uint64_t sub_2660CD430(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x26677CC30);
}

uint64_t sub_2660CD518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_2660CD53C, 0, 0);
}

uint64_t sub_2660CD53C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = sub_26618C8A0();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2660CD678;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C040, &unk_26618F6B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2660CD864;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 openApplication:v3 withOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2660CD678()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2660CD7F4;
  }

  else
  {
    v2 = sub_2660CD788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2660CD788()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2660CD7F4()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *sub_2660CD864(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2660E9944(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2660E99B4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2660CD8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660CD9A4;

  return sub_2660CD518(a1, a2, a3);
}

uint64_t sub_2660CD9A4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void *sub_2660CDAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 applicationShortcutItemsOfTypes:a1 forBundleIdentifier:v5];

  v7 = sub_2660CDEBC(v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_2660CDB40(v8);

  return v9;
}

void *sub_2660CDB40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26618CCD0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_26612A3D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26677C150](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_2660CD344(0, &qword_28005C038, 0x277D669C8);
      v18 = v8;
      v19 = &off_2877CAC48;
      v17[0] = v7;
      v20 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_26612A3D8((v9 > 1), v10 + 1, 1);
        v11 = v18;
        v12 = v19;
      }

      else
      {
        v11 = v8;
        v12 = &off_2877CAC48;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v17, v11);
      MEMORY[0x28223BE20](v13);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_2660CDF34(v10, v15, &v20, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_2660CDD64@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D75580]) initWithSBSShortcutItem_];
  if (result)
  {
    v4 = result;
    result = sub_2660CD344(0, &qword_28005C030, 0x277D75580);
    a1[3] = result;
    a1[4] = &off_2877CAC70;
    *a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2660CDEBC(void *a1)
{
  v2 = [a1 composedApplicationShortcutItems];

  if (!v2)
  {
    return 0;
  }

  sub_2660CD344(0, &qword_28005C038, 0x277D669C8);
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_2660CDF34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2660B9EB8(&v12, v10 + 40 * a1 + 32);
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

uint64_t sub_2660CE048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15[-v1];
  sub_26618B810();
  sub_26618B600();
  v3 = sub_26618C460();
  v4 = sub_26618C450();
  v18[3] = v3;
  v18[4] = &off_2877CC660;
  v18[0] = v4;
  v5 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  v17[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v17[4] = &off_2877CD5D8;
  v16[3] = &type metadata for ReferenceResolver;
  v16[4] = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v16[0] = swift_allocObject();
  sub_2660CFC00(v18, v16[0] + 16);
  type metadata accessor for DeepLaunchWrapperFlow(0);
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for AppLaunchFlowFactoryImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for ReferenceResolver);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  *(v6 + 120) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v6 + 128) = &off_2877CD5D8;
  *(v6 + 160) = &type metadata for ReferenceResolver;
  *(v6 + 168) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v11 = swift_allocObject();
  *(v6 + 136) = v11;
  v12 = *(v9 + 1);
  *(v11 + 16) = *v9;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v9 + 4);
  __swift_storeEnumTagSinglePayload(v6 + OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input, 1, 1, v5);
  sub_2660B9EB8(&v20, v6 + 16);
  sub_2660B9EB8(&v19, v6 + 56);
  *(v6 + 176) = 0;
  v13 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v2, v6 + v13);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_2660CFC5C(v18);
  return v6;
}

uint64_t sub_2660CE2D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26618B790();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660CE3D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeepLaunchWrapperFlow(0);
  sub_2660CFB38();
  return sub_26618AFB0();
}

uint64_t sub_2660CE438(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_26618B800();
  v2[18] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[19] = v4;
  v2[20] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B500();
  v2[21] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v2[22] = v6;
  v2[23] = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v2[24] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B790();
  v2[25] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v2[26] = v8;
  v2[27] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C6B0();
  v2[28] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v2[29] = v10;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660CE634, 0, 0);
}

void sub_2660CE634()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v0[35] = __swift_project_value_buffer(v0[28], qword_2814B4A98);
  v0[36] = *(v1 + 16);
  v0[37] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2 = OUTLINED_FUNCTION_11_0();
  v65 = v3;
  v3(v2);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v6);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v7, v8, "DeepLaunchWrapperFlow.execute() called");
    OUTLINED_FUNCTION_7_3();
  }

  v9 = v0[34];
  v10 = v0[28];
  v11 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[17];

  v15 = *(v11 + 8);
  v15(v9, v10);
  v16 = v15;
  v17 = OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v14 + v17, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v12) == 1)
  {
    sub_2660CFA98(v0[24]);
    v18 = OUTLINED_FUNCTION_11_0();
    v65(v18);
    v19 = sub_26618C690();
    v20 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v20))
    {
      v21 = OUTLINED_FUNCTION_6_2();
      *v21 = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v22, v23, "DeepLaunchWrapperFlow.execute() Input is nil. Error executing request");
      MEMORY[0x26677CC30](v21, -1, -1);
    }

    v24 = v0[31];
    v25 = v0[28];

    v16(v24, v25);
    sub_26618CE80();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    v27 = v0[22];
    v26 = v0[23];
    v28 = v0[21];
    v29 = v0[17];
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
    sub_26618B4F0();
    LOBYTE(v29) = sub_26618B110();
    v30 = *(v27 + 8);
    v30(v26, v28);
    if ((v29 & 1) == 0)
    {
      v49 = OUTLINED_FUNCTION_11_0();
      v65(v49);
      v50 = sub_26618C690();
      v51 = sub_26618CAA0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_6_2();
        *v52 = 0;
        _os_log_impl(&dword_2660B7000, v50, v51, "DeepLaunchWrapperFlow.execute() pushing unlock flow", v52, 2u);
        MEMORY[0x26677CC30](v52, -1, -1);
      }

      v53 = v0[33];
      v54 = v0[28];
      v55 = v0[26];
      v66 = v0[27];
      v56 = v0[23];
      v57 = v0[21];
      v58 = v0[17];
      v64 = v0[25];

      v16(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
      v59 = sub_26618AE80();
      OUTLINED_FUNCTION_0_4(v59);
      *(swift_allocObject() + 16) = xmmword_26618E190;
      sub_26618B4F0();
      sub_26618AE70();
      v30(v56, v57);
      v60 = sub_26618AC10();

      v0[15] = v60;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_2660CFB00;
      *(v61 + 24) = v58;
      sub_26618AE60();

      sub_26618B320();

      (*(v55 + 8))(v66, v64);
      OUTLINED_FUNCTION_1_5();

      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_12_0();

      __asm { BRAA            X1, X16 }
    }

    sub_2660C5864(v0[17] + 136, (v0 + 2));
    v31 = v0[5];
    v32 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v31);
    OUTLINED_FUNCTION_3_5();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_8_2();
    (*(v34 + 16))(v35, v32, v31);
    v0[10] = &type metadata for ReferenceResolver;
    v0[11] = &off_2877CC6F0;
    OUTLINED_FUNCTION_4_5();
    v36 = swift_allocObject();
    v0[7] = v36;
    v37 = *(v35 + 32);
    v38 = *(v35 + 16);
    *(v36 + 16) = *v35;
    *(v36 + 32) = v38;
    *(v36 + 48) = v37;
    type metadata accessor for DeepLaunchFlowStrategy();
    OUTLINED_FUNCTION_4_5();
    v39 = swift_allocObject();
    v0[38] = v39;
    v40 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), &type metadata for ReferenceResolver);
    OUTLINED_FUNCTION_3_5();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_8_2();
    (*(v42 + 16))(v43, v40, &type metadata for ReferenceResolver);
    v39[5] = &type metadata for ReferenceResolver;
    v39[6] = &off_2877CC6F0;
    OUTLINED_FUNCTION_4_5();
    v44 = swift_allocObject();
    v39[2] = v44;
    v45 = *(v43 + 32);
    v46 = *(v43 + 16);
    *(v44 + 16) = *v43;
    *(v44 + 32) = v46;
    *(v44 + 48) = v45;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    sub_26618B770();
    v47 = swift_task_alloc();
    v0[39] = v47;
    *v47 = v0;
    v47[1] = sub_2660CED9C;
    OUTLINED_FUNCTION_12_0();

    sub_266109670();
  }
}

uint64_t sub_2660CED9C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v8 + 320) = v7;
  *(v8 + 328) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v9 = sub_2660CF0BC;
  }

  else
  {
    v9 = sub_2660CEF08;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660CEF08()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  __swift_project_boxed_opaque_existential_1((v0[17] + 96), *(v0[17] + 120));
  sub_26617E2A8(v2, v7, v1);
  v4(v5, v3, v6);
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v9))
  {
    v10 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v10);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v11, v12, "DeepLaunchWrapperFlow.execute() pushing rch flow");
    OUTLINED_FUNCTION_7_3();
  }

  v13 = v0[40];
  v14 = v0[32];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[26];
  v21 = v0[27];
  v18 = v0[25];

  (*(v15 + 8))(v14, v16);
  sub_26618B350();

  (*(v17 + 8))(v21, v18);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_5_3();

  return v19();
}

uint64_t sub_2660CF0BC()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[28];

  v2(v3, v1, v4);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    *v7 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "DeepLaunchWrapperFlow.execute() Error while pushing RCH flow");
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v10 = v0[41];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[25];
  v16 = v0[26];

  (*(v12 + 8))(v11, v13);
  sub_26618B360();

  (*(v16 + 8))(v14, v15);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_5_3();

  return v17();
}

uint64_t sub_2660CF258(char a1)
{
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (a1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v12 = __swift_project_value_buffer(v3, qword_2814B4A80);
    (*(v5 + 16))(v11, v12, v3);
    v13 = sub_26618C690();
    v14 = sub_26618CAB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v15);
      _os_log_impl(&dword_2660B7000, v13, v14, "Unable to unlock device", v1, 2u);
LABEL_10:
      OUTLINED_FUNCTION_7_3();
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v16 = __swift_project_value_buffer(v3, qword_2814B4A80);
    (*(v5 + 16))(v9, v16, v3);
    v13 = sub_26618C690();
    v17 = sub_26618CAB0();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v18);
      _os_log_impl(&dword_2660B7000, v13, v17, "Device unlocked", v1, 2u);
      goto LABEL_10;
    }
  }

  v19 = OUTLINED_FUNCTION_11_0();
  return v20(v19);
}

void *sub_2660CF47C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents21DeepLaunchWrapperFlow_input);
  return v0;
}

uint64_t sub_2660CF4C4()
{
  sub_2660CF47C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DeepLaunchWrapperFlow(uint64_t a1)
{
  result = qword_28005C050;
  if (!qword_28005C050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660CF570(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2660CF61C(uint64_t a1)
{
  if (!qword_2814B4820)
  {
    sub_26618B790();
    v1 = sub_26618CBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814B4820);
    }
  }
}

uint64_t sub_2660CF69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660CF74C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660CF74C(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2660CF864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660CF900;

  return sub_2660CE438(a1);
}

uint64_t sub_2660CF900()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660CF9E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeepLaunchWrapperFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660CFA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660CFA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2660CFB38()
{
  result = qword_28005C070;
  if (!qword_28005C070)
  {
    type metadata accessor for DeepLaunchWrapperFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C070);
  }

  return result;
}

uint64_t sub_2660CFB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_14_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_15_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2660CFE00()
{
  OUTLINED_FUNCTION_18();
  v0[8] = v1;
  v0[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  OUTLINED_FUNCTION_3_0(v3);
  v0[10] = OUTLINED_FUNCTION_8_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  OUTLINED_FUNCTION_3_0(v4);
  v0[11] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B980();
  v0[12] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B8E0();
  v0[15] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v0[16] = v8;
  v0[17] = OUTLINED_FUNCTION_25_0();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v9 = sub_26618C6B0();
  v0[20] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v0[21] = v10;
  v0[22] = OUTLINED_FUNCTION_25_0();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v11 = sub_26618B840();
  v0[26] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v0[27] = v12;
  v0[28] = OUTLINED_FUNCTION_25_0();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v13 = sub_26618B7F0();
  v0[31] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v0[32] = v14;
  v0[33] = OUTLINED_FUNCTION_8_2();
  v15 = type metadata accessor for AppLaunchIntent(0);
  v0[34] = v15;
  OUTLINED_FUNCTION_3_0(v15);
  v0[35] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C0E0();
  v0[36] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v0[37] = v17;
  v0[38] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618B800();
  v0[39] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v0[40] = v19;
  v0[41] = OUTLINED_FUNCTION_25_0();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v20 = sub_26618B540();
  v0[45] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v0[46] = v21;
  v0[47] = OUTLINED_FUNCTION_25_0();
  v0[48] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2660D01B8(uint64_t a1)
{
  v163 = v1;
  sub_26618B770();
  v2 = OUTLINED_FUNCTION_12_1();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x277D5C128])
  {
    v6 = *(v1 + 296);
    v5 = *(v1 + 304);
    v8 = *(v1 + 280);
    v7 = *(v1 + 288);
    v9 = OUTLINED_FUNCTION_13_2();
    v10(v9);
    v11 = OUTLINED_FUNCTION_11_0();
    v12(v11);
    v13 = OUTLINED_FUNCTION_7_4();
    v14(v13);
    (*(v6 + 16))(v8, v5, v7);
    if (qword_2814B3DC0 != -1)
    {
      swift_once();
    }

    sub_2660D3118(&qword_2814B3D28, type metadata accessor for AppLaunchIntent, &unk_2661939B8);
    sub_26618BDA0();
    switch(*(v1 + 392))
    {
      case 1:
      case 2:
        v70 = *(v1 + 280);
        v71 = sub_26618D000();

        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v70, v72);
        v73 = OUTLINED_FUNCTION_12_1();
        v74(v73);
        if ((v71 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      case 3:
        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v76, v77);
        v78 = OUTLINED_FUNCTION_11_0();
        v79(v78);
LABEL_26:
        v75 = MEMORY[0x277D5BED0];
        break;
      default:
        v15 = *(v1 + 280);

        OUTLINED_FUNCTION_2_6();
        sub_2660D3160(v15, v16);
        v17 = OUTLINED_FUNCTION_11_0();
        v18(v17);
LABEL_24:
        v75 = MEMORY[0x277D5BED8];
        break;
    }

    (*(*(v1 + 368) + 104))(*(v1 + 376), *v75, *(v1 + 360));
    v80 = OUTLINED_FUNCTION_11_0();
    v81(v80);
    goto LABEL_28;
  }

  if (v4 == *MEMORY[0x277D5C150])
  {
    v19 = OUTLINED_FUNCTION_13_2();
    v20(v19);
    v21 = OUTLINED_FUNCTION_11_0();
    v22(v21);
    v23 = OUTLINED_FUNCTION_7_4();
    v24(v23);
    if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v25)
    {
    }

    else
    {
      v27 = sub_26618D000();

      if ((v27 & 1) == 0)
      {
        (*(*(v1 + 256) + 8))(*(v1 + 264), *(v1 + 248));
LABEL_18:
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
        }

        __swift_project_value_buffer(*(v1 + 160), qword_2814B4A98);
        v59 = OUTLINED_FUNCTION_8_3();
        v60(v59);
        v61 = sub_26618C690();
        v62 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_2(v62))
        {
          OUTLINED_FUNCTION_24_0();
          v63 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_0(v63);
          OUTLINED_FUNCTION_14_0(&dword_2660B7000, v64, v65, "Unsupported parse type");
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        v66 = OUTLINED_FUNCTION_12_1();
        v67(v66);
        sub_2660D3004();
        OUTLINED_FUNCTION_18_1();
        v68 = swift_allocError();
        OUTLINED_FUNCTION_17_1(v68, v69);
        goto LABEL_47;
      }
    }

    v87 = sub_26618B7E0();
    if (v87)
    {
      sub_266158220(0xD000000000000011, 0x8000000266198330, v87, (v1 + 16));

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          v88 = sub_26617C1B4(*(v1 + 48), *(v1 + 56));
          if (v88 != 2)
          {
            v89 = v88;
            v90 = *(v1 + 368);
            (*(*(v1 + 256) + 8))(*(v1 + 264), *(v1 + 248));
            if (v89)
            {
              v91 = MEMORY[0x277D5BED0];
            }

            else
            {
              v91 = MEMORY[0x277D5BED8];
            }

            (*(v90 + 104))(*(v1 + 384), *v91, *(v1 + 360));
            goto LABEL_28;
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    sub_2660D30C4(v1 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_38:
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v92 = swift_allocError();
    OUTLINED_FUNCTION_17_1(v92, v93);
    v94 = OUTLINED_FUNCTION_11_0();
    v95(v94);
    goto LABEL_47;
  }

  if (v4 != *MEMORY[0x277D5C160])
  {
    goto LABEL_18;
  }

  v28 = OUTLINED_FUNCTION_13_2();
  v29(v28);
  v30 = OUTLINED_FUNCTION_11_0();
  v31(v30);
  v32 = OUTLINED_FUNCTION_7_4();
  v33(v32);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v34 = *(v1 + 200);
  v35 = *(v1 + 168);
  v155 = __swift_project_value_buffer(*(v1 + 160), qword_2814B4A98);
  v157 = *(v35 + 16);
  v157(v34);
  v36 = OUTLINED_FUNCTION_7_4();
  v152 = v37;
  (v37)(v36);
  v38 = sub_26618C690();
  v39 = sub_26618CAA0();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v1 + 232);
  v42 = *(v1 + 216);
  v160 = *(v1 + 208);
  v43 = *(v1 + 200);
  v44 = *(v1 + 160);
  v45 = *(v1 + 168);
  if (v40)
  {
    v149 = *(v1 + 160);
    v151 = *(v1 + 200);
    log = v38;
    v47 = *(v1 + 144);
    v46 = *(v1 + 152);
    v49 = *(v1 + 120);
    v48 = *(v1 + 128);
    v144 = v49;
    v146 = v39;
    v50 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v162[0] = v145;
    *v50 = 136315138;
    sub_26618B820();
    (*(v48 + 16))(v47, v46, v49);
    v51 = sub_2661458C0(v47);
    v53 = v52;
    v54 = *(v42 + 8);
    (v54)(v41, v160);
    (*(v48 + 8))(v46, v144);
    v55 = sub_266103A98(v51, v53, v162);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2660B7000, log, v146, "DeviceConfirmationStrategy.parseDisambiguationResult using follow up USO parse:  %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v145);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v56 = *(v45 + 8);
    v58 = v149;
    v57 = v151;
  }

  else
  {

    v54 = *(v42 + 8);
    (v54)(v41, v160);
    v56 = *(v45 + 8);
    v57 = v43;
    v58 = v44;
  }

  v161 = v56;
  v56(v57, v58);
  v96 = *(v1 + 128);
  v98 = *(v1 + 88);
  v97 = *(v1 + 96);
  sub_26618B820();
  v99 = sub_26618B8B0();
  v100 = *(v96 + 8);
  v101 = OUTLINED_FUNCTION_12_1();
  v100(v101);
  sub_266139C58(v99, v98);

  if (__swift_getEnumTagSinglePayload(v98, 1, v97) != 1)
  {
    (*(*(v1 + 104) + 32))(*(v1 + 112), *(v1 + 88), *(v1 + 96));
    if ((sub_26618B920() & 1) == 0 && (sub_26618B940() & 1) == 0 && (sub_26618B930() & 1) == 0)
    {
      (v157)(*(v1 + 192), v155, *(v1 + 160));
      v131 = sub_26618C690();
      v132 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v132))
      {
        OUTLINED_FUNCTION_24_0();
        v133 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_0(v133);
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v134, v135, "Unexpected UDA type");
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();
      }

      v159 = *(v1 + 240);
      v136 = *(v1 + 208);
      v137 = *(v1 + 192);
      v138 = *(v1 + 160);
      v139 = *(v1 + 104);
      v140 = *(v1 + 112);
      v141 = *(v1 + 96);

      v161(v137, v138);
      sub_2660D3004();
      OUTLINED_FUNCTION_18_1();
      v142 = swift_allocError();
      OUTLINED_FUNCTION_17_1(v142, v143);
      (*(v139 + 8))(v140, v141);
      (v54)(v159, v136);
      goto LABEL_47;
    }

    v126 = OUTLINED_FUNCTION_14_1();
    v127(v126);
    v128 = OUTLINED_FUNCTION_19_1();
    v54(v128);
    v129 = OUTLINED_FUNCTION_13_2();
    v130(v129);
LABEL_28:
    v82 = *(v1 + 384);
    v83 = *(v1 + 360);
    v84 = *(v1 + 368);
    v85 = *(v1 + 80);
    (*(*(v1 + 320) + 8))(*(v1 + 352), *(v1 + 312));
    (*(v84 + 16))(v85, v82, v83);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v83);
    sub_26618B760();
    (*(v84 + 8))(v82, v83);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_48;
  }

  v102 = *(v1 + 240);
  v103 = *(v1 + 224);
  v104 = *(v1 + 208);
  v105 = *(v1 + 184);
  v106 = *(v1 + 160);
  sub_2660D30C4(*(v1 + 88), &qword_28005BF28, &qword_26618F960);
  (v157)(v105, v155, v106);
  v152(v103, v102, v104);
  v107 = sub_26618C690();
  v158 = sub_26618CAA0();
  if (os_log_type_enabled(v107, v158))
  {
    v154 = v54;
    v156 = *(v1 + 184);
    v108 = *(v1 + 144);
    v109 = *(v1 + 152);
    v153 = *(v1 + 160);
    loga = v107;
    v110 = *(v1 + 120);
    v111 = *(v1 + 128);
    v112 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v162[0] = v150;
    *v112 = 136315138;
    sub_26618B820();
    (*(v111 + 16))(v108, v109, v110);
    v113 = sub_2661458C0(v108);
    v115 = v114;
    v116 = OUTLINED_FUNCTION_20_0();
    v154(v116);
    v117 = v109;
    v54 = v154;
    (v100)(v117, v110);
    v118 = sub_266103A98(v113, v115, v162);

    *(v112 + 4) = v118;
    _os_log_impl(&dword_2660B7000, loga, v158, "DeviceConfirmationStrategy.parseDisambiguationResult missing required userDialogActs from parse: %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v150);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v119 = v153;
    v120 = v156;
  }

  else
  {

    v121 = OUTLINED_FUNCTION_20_0();
    v54(v121);
    v120 = OUTLINED_FUNCTION_19_1();
  }

  v161(v120, v119);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v122 = swift_allocError();
  OUTLINED_FUNCTION_17_1(v122, v123);
  v124 = OUTLINED_FUNCTION_11_0();
  v54(v124);
LABEL_47:
  (*(*(v1 + 320) + 8))(*(v1 + 352), *(v1 + 312));

  OUTLINED_FUNCTION_5_3();
LABEL_48:

  return v86();
}

uint64_t sub_2660D10C8()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[12] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B440();
  v1[15] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_8_2();
  v10 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2660D11FC()
{
  OUTLINED_FUNCTION_1_0();
  sub_26618C4E0();
  v1 = sub_26618C5D0();
  if (v1 == sub_26618C5D0() || (sub_26618C4E0(), v2 = sub_26618C5D0(), v3 = sub_26618C5D0(), v4 = 0, v2 == v3))
  {
    v3 = sub_26618C4C0();
    v4 = v5;
  }

  *(v0 + 144) = v4;
  sub_2661484FC(v3);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2660D12FC;
  v7 = OUTLINED_FUNCTION_12_1();

  return sub_2660C336C(v7, v8);
}

uint64_t sub_2660D12FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v5 + 160) = v4;
  *(v5 + 168) = v0;

  if (v0)
  {
    v6 = sub_2660D1B38;
  }

  else
  {
    v6 = sub_2660D1420;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2660D1420()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v1;
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v3 = v0[20];
    v4 = v0[9];
    v5 = v4[11];
    v6 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v7 = swift_allocObject();
    v0[22] = v7;
    *(v7 + 16) = xmmword_26618F7E0;
    *(v7 + 32) = v3;
    v8 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[23] = v9;
    *v9 = v10;
    v9[1] = sub_2660D17B0;
    v11 = v0[14];
    v12 = v0[7];

    return MEMORY[0x2821BB488](v12, v7, v11, v5, v6);
  }

  else
  {
    v13 = v0[21];
    sub_2660D224C(v0[10]);
    if (v13)
    {
      v14 = v0[20];
      (*(v0[13] + 8))(v0[14], v0[12]);

      (*(v0[16] + 8))(v0[17], v0[15]);

      OUTLINED_FUNCTION_5_3();

      return v15();
    }

    else
    {
      v16 = v0[20];
      v17 = v0[9];
      v18 = v0[10];
      v19 = v17[11];
      v20 = v17[12];
      __swift_project_boxed_opaque_existential_1(v17 + 8, v19);
      v0[5] = type metadata accessor for AppLaunchDataModels(0);
      v0[6] = sub_2660D3118(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels, &protocol conformance descriptor for AppLaunchDataModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_2660D3060(v18, boxed_opaque_existential_0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v22 = swift_allocObject();
      v0[24] = v22;
      *(v22 + 16) = xmmword_26618F7E0;
      *(v22 + 32) = v16;
      v23 = v16;
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[25] = v24;
      *v24 = v25;
      v24[1] = sub_2660D1960;
      v26 = v0[14];
      v27 = v0[7];

      return MEMORY[0x2821BB478](v27, v0 + 2, v22, v26, v19, v20);
    }
  }
}