uint64_t SiriSuggestionsIntelligence.AppleAccountService.init(accountStore:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1DA3A02A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1DA3A6D38(a2);
  *a1 = result;
  return result;
}

void sub_1DA3A02C8(uint64_t a2@<X8>)
{
  sub_1DA3A02FC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1DA3A0318()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DA3A0390()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1DA3A03CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3A041C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_17_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v8 | 7);
}

uint64_t sub_1DA3A054C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA3A0584()
{
  sub_1DA421974();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DA3A0610()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  OUTLINED_FUNCTION_5_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_1DA421974();
  OUTLINED_FUNCTION_6_1();
  v10 = v9;
  v11 = *(v9 + 80);
  v28 = *(v12 + 64);
  v13 = v0 + v5;
  v14 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v14))
  {
    v27 = v7;

    __swift_destroy_boxed_opaque_existential_0((v13 + 32));
    __swift_destroy_boxed_opaque_existential_0((v13 + 72));
    v15 = v14[8];
    v16 = sub_1DA421814();
    if (!OUTLINED_FUNCTION_55(v16))
    {
      OUTLINED_FUNCTION_17_0();
      (*(v17 + 8))(v13 + v15, v1);
    }

    v18 = v14[9];
    v19 = sub_1DA421714();
    if (!OUTLINED_FUNCTION_55(v19))
    {
      OUTLINED_FUNCTION_17_0();
      (*(v20 + 8))(v13 + v18, v1);
    }

    v21 = v14[10];
    v22 = sub_1DA421754();
    v7 = v27;
    if (!__swift_getEnumTagSinglePayload(v13 + v21, 1, v22))
    {
      OUTLINED_FUNCTION_17_0();
      (*(v23 + 8))(v13 + v21, v22);
    }
  }

  v24 = (v5 + v7 + v11) & ~v11;
  v25 = (v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v24, v8);

  return MEMORY[0x1EEE6BDD0](v0, v25 + 8, v4 | v11 | 7);
}

uint64_t sub_1DA3A08B4(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070);
    OUTLINED_FUNCTION_0_3();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078);
      OUTLINED_FUNCTION_0_3();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE18, &qword_1DA424080);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1DA3A09E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070);
    OUTLINED_FUNCTION_0_3();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078);
      OUTLINED_FUNCTION_0_3();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE18, &qword_1DA424080);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1DA3A0B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA3A0B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA3A0C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA3A0C6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DA421724();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DA3A0D3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA421724();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1DA3A0F08(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA422234();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DA3A0F54(char a1)
{
  if (!a1)
  {
    return 0x65636E6169726176;
  }

  if (a1 == 1)
  {
    return 1851876717;
  }

  return 0x5364656C706D6173;
}

uint64_t sub_1DA3A1098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA3CD9B8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA3A1224()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A14B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10);
  OUTLINED_FUNCTION_3_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DA3A1538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v4 | 7);
}

uint64_t sub_1DA3A1614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA3A167C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A16C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A1828(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DA3A18BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA3A1970()
{
  sub_1DA421374();
  OUTLINED_FUNCTION_17_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1DA3A1C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A1C90()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  *(v4 + 40) = *a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = v5;
  *(v4 + 72) = *(a2 + 32);
  return v4;
}

uint64_t sub_1DA3A1EF8()
{
  OUTLINED_FUNCTION_28_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

char *sub_1DA3A1FD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3A1FF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DA3A2020(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DA3A20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3A2098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.__allocating_init(accountStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.getAccountDetails()()
{
  OUTLINED_FUNCTION_16();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  v1[10] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_18(v4);
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE878, &qword_1DA423160);
  OUTLINED_FUNCTION_18(v5);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for SiriSuggestionsIntelligence.Device(0);
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3A2290()
{
  OUTLINED_FUNCTION_16();
  v1 = (*(v0[9] + 16))();
  _s16AccountExtractorCMa();
  v0[18] = swift_initStackObject();
  v0[19] = sub_1DA3A2C50(v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1DA3A2358;

  return sub_1DA3A2D40();
}

uint64_t sub_1DA3A2358()
{
  OUTLINED_FUNCTION_16();
  *(*v0 + 168) = v1;

  v2 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1DA3A244C()
{
  v34 = v0;
  v1 = v0[21];
  v2 = sub_1DA3A4F50(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v32 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1DA74D830](v3, v0[21]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = v0[14];
    v10 = v0[15];
    sub_1DA3A2864(v11);

    if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
    {
      sub_1DA3A6A2C(v0[14], &unk_1ECBAE878, &qword_1DA423160);
      ++v3;
    }

    else
    {
      OUTLINED_FUNCTION_14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DA3A4F74(0, v32[2] + 1, 1, v32);
      }

      v13 = v32[2];
      v12 = v32[3];
      if (v13 >= v12 >> 1)
      {
        v32 = sub_1DA3A4F74((v12 > 1), v13 + 1, 1, v32);
      }

      v32[2] = v13 + 1;
      OUTLINED_FUNCTION_14();
      v3 = v9;
    }
  }

  v14 = v0[12];
  v15 = v0[13];

  sub_1DA3A340C(v15);
  sub_1DA3A6934();
  *v14 = v32;
  if (qword_1EE102CB0 == -1)
  {
    goto LABEL_16;
  }

LABEL_24:
  swift_once();
LABEL_16:
  v16 = v0[11];
  v17 = sub_1DA421A94();
  __swift_project_value_buffer(v17, static Logger.intelligenceCategory);
  v18 = OUTLINED_FUNCTION_19();
  sub_1DA3A50BC(v18, v16);
  v19 = sub_1DA421A74();
  v20 = sub_1DA421F54();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[13];
  v23 = v0[11];
  if (v21)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    v26 = SiriSuggestionsIntelligence.AccountDetails.description.getter();
    v28 = v27;
    sub_1DA3A5120(v23);
    v29 = sub_1DA3A5FE8(v26, v28, &v33);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1DA39E000, v19, v20, "Extracted account details as: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {

    sub_1DA3A5120(v23);
  }

  sub_1DA3A6A2C(v22, &qword_1ECBAE870, &qword_1DA4252E0);
  sub_1DA3A517C();

  v30 = v0[1];

  return v30();
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

uint64_t sub_1DA3A2864@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEAC0, &qword_1DA4233A8);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-v5];
  v7 = sub_1DA421724();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DA3A4664(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DA3A6A2C(v6, &unk_1ECBAEAC0, &qword_1DA4233A8);
    type metadata accessor for SiriSuggestionsIntelligence.Device(0);
    v11 = OUTLINED_FUNCTION_7();
  }

  else
  {
    v15 = *(v8 + 32);
    v15(v10, v6, v7);
    v27 = [v1 currentDevice];
    v16 = sub_1DA3A6894(v1, &selRef_modelDisplayName);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = sub_1DA3A6894(v1, &selRef_osVersion);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v19 = v22;
    }

    v24 = type metadata accessor for SiriSuggestionsIntelligence.Device(0);
    v15((a1 + *(v24 + 28)), v10, v7);
    *a1 = v27;
    *(a1 + 8) = v18;
    *(a1 + 16) = v20;
    *(a1 + 24) = v23;
    *(a1 + 32) = v19;
    v11 = a1;
    v12 = 0;
    v13 = 1;
    v14 = v24;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3A2AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A2B60;

  return SiriSuggestionsIntelligence.AppleAccountService.getAccountDetails()();
}

uint64_t sub_1DA3A2B60()
{
  OUTLINED_FUNCTION_16();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA3A2C50(void *a1)
{
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E698C268]) initWithAccountStore_];
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E698C250]) initWithAccountStore_];
  v3 = *(v1 + 32);
  v4 = _s20AccountStoreDelegateCMa();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligenceP33_5C99411072011048FFC9A949C6515F9C20AccountStoreDelegate_servicesOwnerManager] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  *(v1 + 40) = v7;
  [*(v1 + 24) setDelegate_];
  v8 = [objc_allocWithZone(MEMORY[0x1E698B898]) initWithAccountManager_];

  *(v1 + 16) = v8;
  return v1;
}

uint64_t sub_1DA3A2D60()
{
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v1 = sub_1DA421A94();
  v0[5] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Getting devices", v4, 2u);
    OUTLINED_FUNCTION_17();
  }

  v5 = v0[4];

  v6 = sub_1DA3A67D0(*(v5 + 24));
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = sub_1DA3EA240(*MEMORY[0x1E698C218], v6);

  if (v14)
  {
    v15 = v0[4];

    v0[2] = 0;
    v16 = swift_task_alloc();
    v0[6] = v16;
    *(v16 + 16) = v0 + 2;
    *(v16 + 24) = v15;
    v17 = swift_task_alloc();
    v0[7] = v17;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAD0, &qword_1DA4233B0);
    *v17 = v0;
    v17[1] = sub_1DA3A2FF4;
    v11 = sub_1DA3A6AD8;
    v9 = 0x6369766544746567;
    v10 = 0xEC00000029287365;
    v6 = (v0 + 3);
    v7 = 0;
    v8 = 0;
    v12 = v16;

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v18 = sub_1DA421A74();
  v19 = sub_1DA421F64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DA39E000, v18, v19, "There is no cloud account attributed to this device. Unable to get device lists", v20, 2u);
    OUTLINED_FUNCTION_17();
  }

  v21 = v0[1];
  v22 = MEMORY[0x1E69E7CC0];

  return v21(v22);
}

uint64_t sub_1DA3A2FF4()
{
  OUTLINED_FUNCTION_16();

  v0 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1DA3A3100(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Finished fetching device lists", v5, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

void sub_1DA3A31D8(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE9E8, &qword_1DA4232D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE8F0, &qword_1DA423208);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = _s18DeviceListDelegateCMa(0);
  v11 = objc_allocWithZone(v10);
  sub_1DA3A6934();
  v19.receiver = v11;
  v19.super_class = v10;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  sub_1DA3A6A2C(v8, &unk_1ECBAE9E8, &qword_1DA4232D8);
  v13 = *a2;
  *a2 = v12;
  v14 = v12;

  [*(a3 + 16) setDelegate_];
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v15 = sub_1DA421A94();
  __swift_project_value_buffer(v15, static Logger.extractionCategory);
  v16 = sub_1DA421A74();
  v17 = sub_1DA421F54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DA39E000, v16, v17, "Assigned device list delegate", v18, 2u);
    MEMORY[0x1DA74E430](v18, -1, -1);
  }
}

uint64_t sub_1DA3A340C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA3A67D0(*(v1 + 24));
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = sub_1DA3EA240(*MEMORY[0x1E698C218], result);

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v4 creationDate];
  if (!v5)
  {

LABEL_6:
    if (qword_1EE102CB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.intelligenceCategory);
    v6 = sub_1DA421A74();
    v9 = sub_1DA421F54();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA39E000, v6, v9, "iCloud account does not have a creation date", v10, 2u);
      MEMORY[0x1DA74E430](v10, -1, -1);
    }

    v7 = 1;
    goto LABEL_11;
  }

  v6 = v5;
  sub_1DA4210A4();

  v7 = 0;
LABEL_11:

  v11 = sub_1DA4210B4();

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v11);
}

uint64_t sub_1DA3A35BC()
{
  v0 = sub_1DA3A3584();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DA3A35EC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE9E8, &qword_1DA4232D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - v3;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA421A94();
  __swift_project_value_buffer(v5, static Logger.extractionCategory);
  v6 = sub_1DA421A74();
  v7 = sub_1DA421F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DA39E000, v6, v7, "Loading devices", v8, 2u);
    MEMORY[0x1DA74E430](v8, -1, -1);
  }

  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1DA3A4F50(v9);
  v32[2] = a1;
  v33 = v4;
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v12 = v9 & 0xC000000000000001;

    v13 = 0;
    *&v14 = 136315138;
    v34 = v14;
    v35 = v9;
    v36 = v11;
    do
    {
      if (v12)
      {
        v15 = MEMORY[0x1DA74D830](v13, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = sub_1DA421A74();
      v18 = sub_1DA421F54();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37 = v20;
        *v19 = v34;
        v21 = sub_1DA3A6894(v16, &selRef_model);
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v21 = 0x7465736E75;
          v23 = 0xE500000000000000;
        }

        v24 = v12;
        v25 = sub_1DA3A5FE8(v21, v23, &v37);

        *(v19 + 4) = v25;
        v12 = v24;
        _os_log_impl(&dword_1DA39E000, v17, v18, "Got device: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1DA74E430](v20, -1, -1);
        v26 = v19;
        v9 = v35;
        v11 = v36;
        MEMORY[0x1DA74E430](v26, -1, -1);
      }

      else
      {
      }

      ++v13;
    }

    while (v11 != v13);
  }

  else
  {
  }

  v27 = sub_1DA421A74();
  v28 = sub_1DA421F54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DA39E000, v27, v28, "finished getting devices", v29, 2u);
    MEMORY[0x1DA74E430](v29, -1, -1);
  }

  v30 = v33;
  sub_1DA3A6934();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE8F0, &qword_1DA423208);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    return sub_1DA3A6A2C(v30, &unk_1ECBAE9E8, &qword_1DA4232D8);
  }

  v37 = v9;

  sub_1DA421DF4();
  return (*(*(v31 - 8) + 8))(v30, v31);
}

uint64_t sub_1DA3A3B28()
{
  v1 = v0;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.extractionCategory);
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA39E000, v3, v4, "getting accounts", v5, 2u);
    MEMORY[0x1DA74E430](v5, -1, -1);
  }

  type metadata accessor for AIDAServiceType(0);
  sub_1DA3A6990(0, &unk_1EE102D00, 0x1E6959A28);
  sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType, &unk_1DA42366C);
  v6 = sub_1DA421AE4();
  v7 = *MEMORY[0x1E698C218];
  v8 = *(v1 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligenceP33_5C99411072011048FFC9A949C6515F9C20AccountStoreDelegate_servicesOwnerManager);
  v9 = [v8 accountForService_];
  if (v9)
  {
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v6;
    sub_1DA3E278C(v10, v7, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v12 = sub_1DA3B74F4(v7);
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9E0, &qword_1DA4232D0);
      sub_1DA4221A4();

      v15 = *(*(v6 + 56) + 8 * v14);
      sub_1DA4221C4();
    }
  }

  v16 = *MEMORY[0x1E698C238];
  v17 = [v8 accountForService_];
  if (v17)
  {
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v6;
    sub_1DA3E278C(v18, v16, v19);
  }

  else
  {
    v20 = sub_1DA3B74F4(v16);
    if (v21)
    {
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9E0, &qword_1DA4232D0);
      sub_1DA4221A4();

      v23 = *(*(v6 + 56) + 8 * v22);
      sub_1DA4221C4();
    }
  }

  v24 = sub_1DA421A74();
  v25 = sub_1DA421F54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v26 = 136315138;
    v28 = sub_1DA3A4130(v6, MEMORY[0x1E698C218]);
    v30 = sub_1DA3A5FE8(v28, v29, &v50);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DA39E000, v24, v25, "Cloud Creation Date: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1DA74E430](v27, -1, -1);
    MEMORY[0x1DA74E430](v26, -1, -1);
  }

  v31 = sub_1DA421A74();
  v32 = sub_1DA421F54();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50 = v34;
    *v33 = 136315138;
    v35 = sub_1DA3A4130(v6, MEMORY[0x1E698C238]);
    v37 = sub_1DA3A5FE8(v35, v36, &v50);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DA39E000, v31, v32, "Store Creation Date: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1DA74E430](v34, -1, -1);
    MEMORY[0x1DA74E430](v33, -1, -1);
  }

  v38 = sub_1DA421A74();
  v39 = sub_1DA421F54();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136315138;

    sub_1DA3A4280(v42);
    v44 = v43;

    v45 = MEMORY[0x1DA74D4B0](v44, MEMORY[0x1E69E6158]);
    v47 = v46;

    v48 = sub_1DA3A5FE8(v45, v47, &v50);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_1DA39E000, v38, v39, "Got accounts for %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1DA74E430](v41, -1, -1);
    MEMORY[0x1DA74E430](v40, -1, -1);
  }

  return v6;
}

uint64_t sub_1DA3A4130(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_9();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = sub_1DA3EA240(*a2, a1);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 creationDate];

    if (v12)
    {
      sub_1DA4210A4();

      v13 = sub_1DA4210B4();
      v14 = 0;
    }

    else
    {
      v13 = sub_1DA4210B4();
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v14, 1, v13);
    sub_1DA3A6760(v7, v9);
  }

  else
  {
    v15 = sub_1DA4210B4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  }

  return sub_1DA421BB4();
}

void sub_1DA3A4280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160(0, v1, 0);
    v5 = sub_1DA3A68F4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v25 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v26 = v4;
        v27 = v6;
        v28 = v3;
        v9 = *(*(a1 + 48) + 8 * v5);
        type metadata accessor for AIDAServiceType(0);
        v10 = v9;
        v11 = sub_1DA421BB4();
        v13 = v12;
        v15 = *(v29 + 16);
        v14 = *(v29 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DA3B0160(v14 > 1, v15 + 1, 1);
        }

        *(v29 + 16) = v15 + 1;
        v16 = v29 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v17 = 1 << *(a1 + 32);
        if (v5 >= v17)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v18 = *(a1 + 64 + 8 * v8);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v28)
        {
          goto LABEL_27;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (a1 + 72 + 8 * v8);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1DA3A2020(v5, v28, v26 & 1);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          sub_1DA3A2020(v5, v28, v26 & 1);
        }

LABEL_18:
        v6 = v27 + 1;
        if (v27 + 1 == v25)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
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
}

id sub_1DA3A4614(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DA3A4664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA3A6894(v1, &selRef_model);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v89 = v3;
    v90 = v4;
    v7 = sub_1DA3A6A84();
    v14 = OUTLINED_FUNCTION_5(v7, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, 0x615720656C707041);
    if (v14)
    {

      v21 = MEMORY[0x1E69D2E48];
    }

    else
    {
      v89 = v5;
      v90 = v6;
      v27 = OUTLINED_FUNCTION_5(v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v19, v20, 1684099177);
      if (v27)
      {

        v21 = MEMORY[0x1E69D2E40];
      }

      else
      {
        v89 = v5;
        v90 = v6;
        v34 = OUTLINED_FUNCTION_5(v27, MEMORY[0x1E69E6158], v28, v29, v30, v31, v32, v33, 0x656E6F685069);
        if (v34)
        {

          v21 = MEMORY[0x1E69D2E50];
        }

        else
        {
          v89 = v5;
          v90 = v6;
          v41 = OUTLINED_FUNCTION_5(v34, MEMORY[0x1E69E6158], v35, v36, v37, v38, v39, v40, 0x646F50656D6F48);
          if (v41)
          {

            v21 = MEMORY[0x1E69D2E68];
          }

          else
          {
            v89 = v5;
            v90 = v6;
            v48 = OUTLINED_FUNCTION_5(v41, MEMORY[0x1E69E6158], v42, v43, v44, v45, v46, v47, 543383885);
            if (v48 & 1) != 0 || (v89 = v5, v90 = v6, v55 = OUTLINED_FUNCTION_5(v48, MEMORY[0x1E69E6158], v49, v50, v51, v52, v53, v54, 0x6B6F6F4263614DLL), (v55) || (v89 = v5, v90 = v6, v62 = OUTLINED_FUNCTION_5(v55, MEMORY[0x1E69E6158], v56, v57, v58, v59, v60, v61, 0x206C617574726956), (v62))
            {

              v21 = MEMORY[0x1E69D2E30];
            }

            else
            {
              v89 = v5;
              v90 = v6;
              v76 = OUTLINED_FUNCTION_5(v62, MEMORY[0x1E69E6158], v63, v64, v65, v66, v67, v68, 0x565420656C707041);
              if (v76)
              {

                v21 = MEMORY[0x1E69D2E58];
              }

              else
              {
                v89 = v5;
                v90 = v6;
                if ((OUTLINED_FUNCTION_5(v76, MEMORY[0x1E69E6158], v77, v78, v79, v80, v81, v82, 0xD000000000000010) & 1) == 0)
                {
                  if (qword_1EE102E00 != -1)
                  {
                    OUTLINED_FUNCTION_12(&qword_1EE102E00);
                  }

                  v83 = sub_1DA421A94();
                  __swift_project_value_buffer(v83, static Logger.extractionCategory);

                  v84 = sub_1DA421A74();
                  v85 = sub_1DA421F74();

                  if (os_log_type_enabled(v84, v85))
                  {
                    v86 = swift_slowAlloc();
                    v87 = swift_slowAlloc();
                    v89 = v87;
                    *v86 = 136315138;
                    v88 = sub_1DA3A5FE8(v5, v6, &v89);

                    *(v86 + 4) = v88;
                    _os_log_impl(&dword_1DA39E000, v84, v85, "Unknown device model: %s", v86, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v87);
                    OUTLINED_FUNCTION_17();
                    OUTLINED_FUNCTION_17();
                  }

                  else
                  {
                  }

                  sub_1DA421724();
                  v72 = OUTLINED_FUNCTION_7();
                  return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
                }

                v21 = MEMORY[0x1E69D2E70];
              }
            }
          }
        }
      }
    }

    v69 = *v21;
    v70 = sub_1DA421724();
    OUTLINED_FUNCTION_9();
    (*(v71 + 104))(a1, v69, v70);
    v72 = a1;
    v73 = 0;
    v74 = 1;
    v75 = v70;
    return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  }

  sub_1DA421724();
  v22 = OUTLINED_FUNCTION_7();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t variable initialization expression of SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.accountDetails()
{
  type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  v0 = OUTLINED_FUNCTION_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA3A4ACC()
{
  v0 = sub_1DA421B94();
  v1 = MEMORY[0x1DA74D3F0](v0);

  return v1;
}

uint64_t sub_1DA3A4B04(uint64_t a1, uint64_t a2)
{
  sub_1DA421B94();
  sub_1DA421BF4();
}

uint64_t sub_1DA3A4B60()
{
  OUTLINED_FUNCTION_20();

  result = sub_1DA421B74();
  *v0 = 0;
  return result;
}

uint64_t sub_1DA3A4BD0()
{
  OUTLINED_FUNCTION_20();

  v2 = sub_1DA421B84();
  *v0 = 0;
  return v2 & 1;
}

void sub_1DA3A4C4C()
{
  OUTLINED_FUNCTION_21();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1DA3A4C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA3EE474();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3A4CD4()
{
  OUTLINED_FUNCTION_21();
  result = sub_1DA3B8360();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA3A4CFC(uint64_t a1)
{
  v2 = sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType, &unk_1DA42366C);
  v3 = sub_1DA3A6B88(&qword_1ECBAEB28, type metadata accessor for AIDAServiceType, &unk_1DA423474);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DA3A4DB8@<X0>(void *a2@<X8>)
{
  sub_1DA421B64();
  OUTLINED_FUNCTION_19();

  *a2 = v2;
  return result;
}

uint64_t sub_1DA3A4DFC(uint64_t a1)
{
  v2 = sub_1DA3A6B88(&qword_1ECBAEB18, type metadata accessor for MLModelMetadataKey, &unk_1DA423628);
  v3 = sub_1DA3A6B88(&qword_1ECBAEB20, type metadata accessor for MLModelMetadataKey, &unk_1DA42357C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DA3A4EB8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA3A4F50(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DA4221E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_1DA3A4F74(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA3A5E68(v9, a2, &qword_1ECBAEAB8, &qword_1DA4233A0, type metadata accessor for SiriSuggestionsIntelligence.Device);
  v11 = *(type metadata accessor for SiriSuggestionsIntelligence.Device(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA3AFE34(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DA3A50BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3A5120(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA3A517C()
{
  OUTLINED_FUNCTION_20();
  v2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void sub_1DA3A51D8()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA18, &qword_1DA423300);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A52A0()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA28, &unk_1DA423310);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5368()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA0, &qword_1DA423388);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5430()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
      v7 = OUTLINED_FUNCTION_22();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFF58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v5)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5520()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3AFF78(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A55D8()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA80, &qword_1DA423368);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3A03CC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5690()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFA0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5758()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA90, &qword_1DA423378);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3A03CC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA98, &qword_1DA423380);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5848(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_22();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_13();
      v15[2] = v13;
      v15[3] = v16;
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
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10();
  if (!v11)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5920()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9F8, &qword_1DA4232E0);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3A1FD0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A59E8()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA58, &unk_1DA423340);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3A1FD0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA60, &unk_1DA4268C0);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5AB0()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5F0, &unk_1DA423330);
      v7 = OUTLINED_FUNCTION_8(v6);
      OUTLINED_FUNCTION_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFF0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA50, &qword_1DA4246D0);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v4)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DA3A5B78()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
      v7 = OUTLINED_FUNCTION_22();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_13();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFE4C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v5)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DA3A5C34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA3A5E68(v9, a2, &qword_1ECBAEA38, &qword_1DA423320, MEMORY[0x1E69D2A98]);
  v11 = *(sub_1DA421314() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA3B0018(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3A5D44()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA10, &qword_1DA423CB0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFC8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_6();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10();
  if (!v5)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DA3A5E00(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
  v4 = OUTLINED_FUNCTION_22();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1DA3A5E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_1DA3A5F8C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DA3A5FE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1DA3A5FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA3A60AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA3A69D0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DA3A60AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DA3A61AC(a5, a6);
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
    result = sub_1DA422104();
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

uint64_t sub_1DA3A61AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DA3A61F8(a1, a2);
  sub_1DA3A6310(&unk_1F55E7F38);
  return v3;
}

uint64_t sub_1DA3A61F8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DA421C14())
  {
    result = sub_1DA3E9778(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA422074();
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
          result = sub_1DA422104();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA3A6310(uint64_t result)
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

    result = sub_1DA3A63F4(result, v7, 1, v3);
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

char *sub_1DA3A63F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAB0, &qword_1DA423398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1DA3A64E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
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

uint64_t _s18DeviceListDelegateCMa(uint64_t a1)
{
  result = qword_1EE102128;
  if (!qword_1EE102128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3A65C0(uint64_t a1)
{
  sub_1DA3A6650(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA3A6650(uint64_t a1)
{
  if (!qword_1EE100FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAE8F0, &qword_1DA423208);
    v1 = sub_1DA421F94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE100FC8);
    }
  }
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

uint64_t sub_1DA3A6760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3A67D0(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for AIDAServiceType(0);
  sub_1DA3A6990(0, &unk_1EE102D00, 0x1E6959A28);
  sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType, &unk_1DA42366C);
  v3 = sub_1DA421AC4();

  return v3;
}

uint64_t sub_1DA3A6894(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DA421B94();

  return v4;
}

uint64_t sub_1DA3A6934()
{
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DA3A6990(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1DA3A69D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA3A6A2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DA3A6A84()
{
  result = qword_1EE101008;
  if (!qword_1EE101008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101008);
  }

  return result;
}

void sub_1DA3A6AF4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1DA3A6B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA3A6D38(uint64_t a1)
{
  sub_1DA421B94();
  v1 = sub_1DA421B64();

  return v1;
}

size_t OUTLINED_FUNCTION_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEDC6A10](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_1DA3A517C();
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_allocObject();
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  v2 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.init()()
{
  swift_defaultActor_initialize();
  v1 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  OUTLINED_FUNCTION_8_0(v1);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.getAccountDetails()()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  OUTLINED_FUNCTION_18(v3);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A70DC);
}

uint64_t sub_1DA3A70DC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  swift_beginAccess();
  sub_1DA3A88F8(v1 + v3, v2, &qword_1ECBAEC50, &qword_1DA4236F8);
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    sub_1DA3A8CA8(v0[7], &qword_1ECBAEC50, &qword_1DA4236F8);
    sub_1DA3A7200();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_1DA3A7254(v0[7], v0[5]);
  }

  OUTLINED_FUNCTION_4_0();

  return v5();
}

unint64_t sub_1DA3A7200()
{
  result = qword_1ECBAEC58;
  if (!qword_1ECBAEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEC58);
  }

  return result;
}

uint64_t sub_1DA3A7254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  OUTLINED_FUNCTION_18(v3);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A734C);
}

uint64_t sub_1DA3A734C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[6];
  v2 = v0[7];
  sub_1DA3A50BC(v0[5], v2);
  v3 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  swift_beginAccess();
  sub_1DA3A7408(v2, v1 + v4);
  swift_endAccess();

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3A7408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3A749C);
}

uint64_t sub_1DA3A749C()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 40) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  OUTLINED_FUNCTION_8_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1DA3A755C;

  return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)();
}

uint64_t sub_1DA3A755C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DA3A7648);
}

uint64_t sub_1DA3A7648(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[2];
  v3[3] = v1[4];
  v3[4] = &protocol witness table for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider;
  *v3 = v2;
  OUTLINED_FUNCTION_4_0();
  return v4();
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(using:on:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC60, &qword_1DA423710);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DA421E04();
  v12 = sub_1DA421E24();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_1DA3A7ED4(a1, v16);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  sub_1DA3A1FF8(v16, (v13 + 5));
  v13[10] = a3;
  v13[11] = a4;

  sub_1DA3A80E4(0, 0, v11, &unk_1DA423720, v13);

  return sub_1DA3A8CA8(v11, &qword_1ECBAEC60, &qword_1DA423710);
}

uint64_t sub_1DA3A77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A785C);
}

uint64_t sub_1DA3A785C()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  v0[7] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v4, v5, "Prefetching account details...");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[3];

  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1DA3A7A34;
  v10 = v0[6];

  return v12(v10, v7, v8);
}

uint64_t sub_1DA3A7A34()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3A7D6C);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 80) = v6;
    *v6 = v4;
    v6[1] = sub_1DA3A7B98;

    return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)();
  }
}

uint64_t sub_1DA3A7B98()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  sub_1DA3A5120(v2);

  return MEMORY[0x1EEE6DFA0](sub_1DA3A7CA0);
}

uint64_t sub_1DA3A7CA0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = sub_1DA421A74();
  v2 = sub_1DA421F54();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v3, v4, "Finished extracting account details");
    OUTLINED_FUNCTION_17();
  }

  (*(v0 + 32))(*(v0 + 16));

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3A7D6C()
{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F74();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Unable to get account details: %@", v7, 0xCu);
    sub_1DA3A8CA8(v8, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  (*(v0 + 32))(*(v0 + 16));

  OUTLINED_FUNCTION_4_0();

  return v11();
}

uint64_t sub_1DA3A7ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA3A7F38(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  *v9 = v10;
  v9[1] = sub_1DA3A8004;

  return sub_1DA3A77C8(a1, v3, v4, v5, (v1 + 5), v6, v7);
}

uint64_t sub_1DA3A8004()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3A80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC60, &qword_1DA423710);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1DA3A88F8(a3, v25 - v11, &qword_1ECBAEC60, &qword_1DA423710);
  v13 = sub_1DA421E24();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DA3A8CA8(v12, &qword_1ECBAEC60, &qword_1DA423710);
  }

  else
  {
    sub_1DA421E14();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DA421DD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DA421BC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(using:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  v11 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  __swift_storeEnumTagSinglePayload(v9 + v10, 1, 1, v11);
  result = static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(using:on:completion:)(a1, v9, a2, a3);
  a4[3] = v4;
  a4[4] = &protocol witness table for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider;
  *a4 = v9;
  return result;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.deinit()
{
  sub_1DA3A8CA8(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails, &qword_1ECBAEC50, &qword_1DA4236F8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.__deallocating_deinit()
{
  sub_1DA3A8CA8(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails, &qword_1ECBAEC50, &qword_1DA4236F8);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3A84E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.getAccountDetails()();
}

uint64_t SiriSuggestionsIntelligence.AccountErrors.hashValue.getter()
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](0);
  return sub_1DA422474();
}

uint64_t sub_1DA3A8600(uint64_t a1)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.AccountErrors.hash(into:)();
  return sub_1DA422474();
}

unint64_t sub_1DA3A8640()
{
  result = qword_1ECBAEC68;
  if (!qword_1ECBAEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEC68);
  }

  return result;
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider(uint64_t a1)
{
  result = qword_1EE102D58;
  if (!qword_1EE102D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3A86F8(uint64_t a1)
{
  sub_1DA3A8794(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA3A8794(uint64_t a1)
{
  if (!qword_1EE102898[0])
  {
    type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(255);
    v1 = sub_1DA421F94();
    if (!v2)
    {
      atomic_store(v1, qword_1EE102898);
    }
  }
}

uint64_t _s13AccountErrorsOwet(unsigned int *a1, int a2)
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

_BYTE *_s13AccountErrorsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA3A88F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA3A8960(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA3A8A58;

  return v6(a1);
}

uint64_t sub_1DA3A8A58()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3A8B3C()
{
  OUTLINED_FUNCTION_6_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_0(v1);

  return v4(v3);
}

uint64_t sub_1DA3A8BD0()
{
  OUTLINED_FUNCTION_6_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_0(v1);

  return v4(v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA3A8CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t sub_1DA3A8DB0()
{
  type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  v0 = swift_allocObject();
  v0[5] = &type metadata for SiriSuggestionsIntelligence.DefaultContextFeatureExtractors;
  result = sub_1DA3B2400();
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[6] = result;
  v0[7] = v2;
  v0[8] = v2;
  qword_1EE102DB8 = v0;
  return result;
}

uint64_t static SiriSuggestionsIntelligence.getNoOpFeatureService()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE102DB0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE102DB8;
  a1[3] = type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  OUTLINED_FUNCTION_2_1();
  a1[4] = sub_1DA3B24B4(v3, v4, v5, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *a1 = v2;
}

uint64_t sub_1DA3A8EE8()
{
  OUTLINED_FUNCTION_6_0();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8F9C;
  v2 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE405C0](v2);
}

uint64_t sub_1DA3A8F9C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DA421974();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_1DA4216D4();
  v1[8] = v5;
  OUTLINED_FUNCTION_5_2(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_40();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v1[11] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_40();
  v9 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC80, &qword_1DA423928);
  v1[4] = OUTLINED_FUNCTION_40();
  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v1[4] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_40();
  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3A91D8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v38 = v0[13];
    v4 = v0[9];
    v5 = v0[5];
    v47 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0180(0, v2, 0);
    v4 += 16;
    v3 = v47;
    OUTLINED_FUNCTION_49();
    v7 = v1 + v6;
    v36 = *(v4 + 56);
    v37 = v8;
    v35 = (v4 - 8);
    v34 = v0;
    v9 = (v5 + 8);
    do
    {
      v10 = v0[13];
      v11 = v0[10];
      v12 = v0[7];
      v45 = v0[8];
      v46 = v2;
      v13 = v0[6];
      v40 = v0[4];
      v37(v11, v7);
      v14 = sub_1DA421684();
      v43 = v15;
      v44 = v14;
      sub_1DA421694();
      v16 = sub_1DA421964();
      v41 = v17;
      v42 = v16;
      v39 = *v9;
      (*v9)(v12, v40);
      sub_1DA421674();
      sub_1DA4216B4();
      v18 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
      sub_1DA4216A4();
      sub_1DA421814();
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      sub_1DA4216C4();
      sub_1DA421714();
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      sub_1DA421694();
      sub_1DA421954();
      v39(v13, v40);
      *v10 = v44;
      v38[1] = v43;
      v38[2] = v42;
      v38[3] = v41;
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
      sub_1DA421694();
      (*v35)(v11, v45);
      v31 = *(v47 + 16);
      v30 = *(v47 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1DA3B0180((v30 > 1), v31 + 1, 1);
      }

      v0 = v34;
      *(v47 + 16) = v31 + 1;
      OUTLINED_FUNCTION_49();
      sub_1DA3B2718();
      v7 += v36;
      --v2;
    }

    while (v46 != 1);
  }

  v0[14] = v3;
  v32 = swift_task_alloc();
  v0[15] = v32;
  *v32 = v0;
  v32[1] = sub_1DA3A94F8;

  return sub_1DA3A9678(v3);
}

uint64_t sub_1DA3A94F8()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3A9678(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v2[98] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED90, &qword_1DA423D80);
  v2[99] = swift_task_alloc();
  v3 = sub_1DA421A64();
  v2[100] = v3;
  v2[101] = *(v3 - 8);
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A979C);
}

uint64_t sub_1DA3A979C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v1 = sub_1DA421A94();
  v0[103] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Running feature extraction", v4, 2u);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v5 = v0[96];

  if (*(v5 + 16))
  {
    v6 = v0[99];
    v7 = v0[98];
    v8 = v0[97];
    v9 = sub_1DA4219F4();
    sub_1DA4219D4();

    v10 = sub_1DA4219F4();
    sub_1DA421A04();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
    swift_asyncLet_begin();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED98, &qword_1DA423D98);
    OUTLINED_FUNCTION_42(v6, v12, v13, v11);
    v14 = swift_allocObject();
    v0[104] = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v7;

    v15 = swift_task_alloc();
    v0[105] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
    OUTLINED_FUNCTION_50();
    *v15 = v16;
    v15[1] = sub_1DA3A9AB8;
    OUTLINED_FUNCTION_57();

    return MEMORY[0x1EEE40720](v17);
  }

  else
  {
    v19 = sub_1DA421A74();
    v20 = sub_1DA421F54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DA39E000, v19, v20, "No suggestions supplied. Skipping feature extraction", v21, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_57();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

void sub_1DA3A9AB8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 792);
    *(v4 + 848) = v0;
    sub_1DA3A6A2C(v8, &qword_1ECBAED90, &qword_1DA423D80);

    MEMORY[0x1EEE6DEB8](v4 + 16, v4 + 712, sub_1DA3A9C04, v4 + 656);
  }
}

uint64_t sub_1DA3A9C18()
{
  v41 = v0;
  v40 = v0[106];

  sub_1DA3BCE48(v1);
  v2 = v40;
  v0[107] = v40;

  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();

  if (!os_log_type_enabled(v3, v4))
  {
LABEL_15:

    v12 = sub_1DA3A9FDC;
    v10 = v0 + 2;
    v11 = v0 + 89;
    v13 = v0 + 90;

    return MEMORY[0x1EEE6DEB0](v10, v11, v12, v13);
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v39 = v6;
  *v5 = 136315138;
  v7 = sub_1DA3A6D84();
  v8 = MEMORY[0x1E69E7CC0];
  v35 = v6;
  if (!v7)
  {
LABEL_14:
    v0[95] = v8;
    v25 = OUTLINED_FUNCTION_24();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    sub_1DA3B26D0(&qword_1EE100FD0, &qword_1ECBAEDA8, &unk_1DA4251D0, MEMORY[0x1E69E6310]);
    v27 = sub_1DA421B34();
    v29 = v28;

    v30 = sub_1DA3A5FE8(v27, v29, &v39);

    *(v5 + 4) = v30;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Finished extracting features:\n%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    goto LABEL_15;
  }

  v9 = v7;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DA3B0160(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v32 = v5;
    v33 = v4;
    v34 = v3;
    v14 = 0;
    v8 = v40;
    v37 = v9;
    v38 = v2 & 0xC000000000000001;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v15 = v2;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v38)
      {
        v17 = MEMORY[0x1DA74D830](v14, v2);
      }

      else
      {
        if (v14 >= *(v36 + 16))
        {
          goto LABEL_19;
        }

        v17 = *(v2 + 8 * v14 + 32);
      }

      v18 = v17;
      v0[87] = 0;
      v0[88] = 0xE000000000000000;
      MEMORY[0x1DA74D370](0x2020202020, 0xE500000000000000);
      MEMORY[0x1DA74D370](*&v18[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature], *&v18[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature + 8]);
      MEMORY[0x1DA74D370](64, 0xE100000000000000);

      v19 = OUTLINED_FUNCTION_36();
      MEMORY[0x1DA74D370](v19);

      MEMORY[0x1DA74D370](61, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
      sub_1DA422194();

      v20 = v0[87];
      v21 = v0[88];
      v40 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1DA3B0160(v22 > 1, v23 + 1, 1);
        v8 = v40;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      ++v14;
      v2 = v15;
      if (v16 == v37)
      {
        v3 = v34;
        v4 = v33;
        v5 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE6DEB0](v10, v11, v12, v13);
}

uint64_t sub_1DA3A9FF0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = sub_1DA4219F4();
  sub_1DA4219E4();

  (*(v2 + 8))(v1, v3);

  v5 = OUTLINED_FUNCTION_7_0();

  return v6(v5);
}

uint64_t sub_1DA3AA138()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC88, &qword_1DA423930);
  OUTLINED_FUNCTION_42(v1, v3, v4, v2);

  v5 = swift_task_alloc();
  v0[5] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC90, &qword_1DA423948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  OUTLINED_FUNCTION_50();
  *v5 = v6;
  v5[1] = sub_1DA3AA244;
  v7 = v0[2];

  return MEMORY[0x1EEE40720](v7);
}

void sub_1DA3AA244()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    v8 = v4[4];
    v4[6] = v0;
    sub_1DA3A6A2C(v8, &qword_1ECBAEC80, &qword_1DA423928);

    v9 = swift_task_alloc();
    v4[7] = v9;
    *v9 = v6;
    v9[1] = sub_1DA3AA3B4;
    v10 = OUTLINED_FUNCTION_31();

    sub_1DA3A9678(v10);
  }
}

uint64_t sub_1DA3AA3B4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3AA4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AA4F8);
}

uint64_t sub_1DA3AA4F8()
{
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED88, &qword_1DA423D70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
  v2 = *(*v1 + 80);
  *(v0 + 56) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_1DA4238F0;
  *(v0 + 60) = v1[14];
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 40) = v5;
  *v5 = v6;
  v5[1] = sub_1DA3AA640;
  v7 = *(v0 + 16);

  return sub_1DA3AA908(v4 + v3, v7);
}

uint64_t sub_1DA3AA640()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3AA724()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 48) = v6;
  *v6 = v7;
  v6[1] = sub_1DA3AA804;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE407F8](v8);
}

uint64_t sub_1DA3AA804()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 32);

  return v4(v5);
}

uint64_t sub_1DA3AA908(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1DA421974();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AA9C8);
}

uint64_t sub_1DA3AA9C8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[7] = sub_1DA421894();
  v0[8] = v3;
  OUTLINED_FUNCTION_21_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_1DA3AAA8C;
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE407F8](v6);
}

uint64_t sub_1DA3AAA8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3AAB70()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v0[10] = sub_1DA421964();
  v0[11] = v5;
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v0[12] = sub_1DA421884();
  swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[13] = v6;
  *v6 = v7;
  v6[1] = sub_1DA3AAC70;
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE40A08](v8);
}

uint64_t sub_1DA3AAC70()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3AAD70()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[2];
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_36();
  sub_1DA421854();
  sub_1DA421734();

  OUTLINED_FUNCTION_21_0();
  v2 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  v0[14] = v2;
  OUTLINED_FUNCTION_36();
  sub_1DA421864();
  v3 = *(v2 + 36);
  v4 = sub_1DA421714();
  OUTLINED_FUNCTION_42(v1 + v3, v5, v6, v4);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_36();
  v0[15] = sub_1DA421884();
  v0[16] = v7;
  v0[17] = swift_getObjectType();
  sub_1DA421DD4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AAE70);
}

uint64_t sub_1DA3AAE70()
{
  OUTLINED_FUNCTION_16();
  sub_1DA421A34();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1DA3AAEE4()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 56);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_1DA3AB000()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = v0[4];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0180(0, v2, 0);
    v3 = v20;
    v18 = sub_1DA421974();
    v4 = *(v18 - 8);
    v17 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[6];
      v17(v7 + *(v19 + 48), v5, v18);
      v8 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
      OUTLINED_FUNCTION_42(v7, v9, v10, v8);
      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DA3B0180((v11 > 1), v12 + 1, 1);
      }

      *(v20 + 16) = v12 + 1;
      OUTLINED_FUNCTION_49();
      sub_1DA3B2718();
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_1DA3AB1CC;
  OUTLINED_FUNCTION_53();

  return sub_1DA3A9678(v14);
}

uint64_t sub_1DA3AB1CC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3AB2F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AB310);
}

uint64_t sub_1DA3AB310()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1DA3AB430;
  v4 = OUTLINED_FUNCTION_24();

  return v6(v4);
}

uint64_t sub_1DA3AB430()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA3AB51C()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_4_0();
  return v1();
}

uint64_t sub_1DA3AB54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[186] = a3;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1DA421974();
  v3[187] = v4;
  v3[188] = *(v4 - 8);
  v3[189] = swift_task_alloc();
  v3[190] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v3[191] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  v3[192] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AB688);
}

uint64_t sub_1DA3AB688()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[192];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[189];
  v5 = v0[188];
  v6 = v0[187];
  v17 = v0[185];
  v18 = v0[186];
  sub_1DA3B2A94();
  v7 = *(v3 + 48);
  sub_1DA3B2718();
  v8 = *(v5 + 8);
  v0[193] = v8;
  v0[194] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2 + v7, v6);
  sub_1DA3B2A94();
  (*(v5 + 32))(v4, v2 + *(v3 + 48), v6);
  sub_1DA3A6A2C(v2, &qword_1ECBAEDB0, &qword_1DA423DC0);
  v9 = swift_task_alloc();
  v0[195] = v9;
  v9[2] = v17;
  v9[3] = v1;
  v9[4] = v4;
  v9[5] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  swift_asyncLet_begin();
  v10 = swift_task_alloc();
  v0[196] = v10;
  v10[2] = v17;
  v10[3] = v4;
  v10[4] = v18;
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DEB8](v11, v12, v13, v14);
}

uint64_t sub_1DA3AB878()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 1576) = *(v0 + 1336);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1DA3AB8E4, v0 + 1344);
}

uint64_t sub_1DA3AB8F8()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v0 + 1576);

  sub_1DA3BCE48(v1);
  *(v0 + 1584) = v3;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1DA3AB978, v0 + 1392);
}

uint64_t sub_1DA3AB98C()
{
  OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1DA3AB9F4, v0 + 1440);
}

uint64_t sub_1DA3ABA08()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[193];
  v2 = v0[192];

  v3 = OUTLINED_FUNCTION_36();
  v1(v3);
  sub_1DA3A6A2C(v2, &qword_1ECBAEDB0, &qword_1DA423DC0);

  OUTLINED_FUNCTION_23();
  v5 = v0[198];

  return v4(v5);
}

uint64_t sub_1DA3ABAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1DA421974();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0) - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDC8, &qword_1DA423E08);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3ABC3C);
}

uint64_t sub_1DA3ABC3C()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v18 = v0[9];
  v19 = v0[6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDD0, &qword_1DA423E10);
  OUTLINED_FUNCTION_42(v1, v9, v10, v8);
  sub_1DA3B2A94();
  (*(v5 + 16))(v4, v7, v6);
  v11 = (v2 + *(v5 + 80) + ((*(v3 + 80) + 16) & ~*(v3 + 80))) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  sub_1DA3B2718();
  (*(v5 + 32))(v12 + v11, v4, v6);
  *(v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v13 = swift_task_alloc();
  v0[16] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  OUTLINED_FUNCTION_50();
  *v13 = v14;
  v13[1] = sub_1DA3ABE24;
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE40720](v15);
}

void sub_1DA3ABE24()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 112);
    *(v4 + 136) = v0;
    sub_1DA3A6A2C(v8, &qword_1ECBAEDC8, &qword_1DA423E08);

    v9 = OUTLINED_FUNCTION_26();

    MEMORY[0x1EEE6DFA0](v9);
  }
}

uint64_t sub_1DA3ABF5C()
{
  OUTLINED_FUNCTION_16();
  **(v0 + 16) = *(v0 + 136);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3ABFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AC0A8);
}

uint64_t sub_1DA3AC0A8()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[6];
  v2 = v0[7];
  sub_1DA3B2A94();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DA3A6A2C(v0[6], &qword_1ECBAEDB0, &qword_1DA423DC0);

    OUTLINED_FUNCTION_23();
    v4 = MEMORY[0x1E69E7CC0];

    return v3(v4);
  }

  else
  {
    v6 = v0[2];
    sub_1DA3B2C40(v0[6], v0[8]);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DA421964();
    v0[9] = v7;
    v8 = swift_task_alloc();
    v0[10] = v8;
    OUTLINED_FUNCTION_2_1();
    sub_1DA3B24B4(v9, v10, v11, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
    *v8 = v0;
    v8[1] = sub_1DA3AC26C;
    OUTLINED_FUNCTION_30();

    return sub_1DA3AC480();
  }
}

uint64_t sub_1DA3AC26C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3AC370()
{
  OUTLINED_FUNCTION_16();
  sub_1DA3B2CA4(*(v0 + 64));

  v1 = OUTLINED_FUNCTION_7_0();

  return v2(v1);
}

uint64_t sub_1DA3AC3E4(uint64_t a1, uint64_t a2)
{
  sub_1DA422094();

  strcpy(v5, "suggestion###");
  MEMORY[0x1DA74D370](a1, a2);
  MEMORY[0x1DA74D370](2302755, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_1DA3AC480()
{
  OUTLINED_FUNCTION_16();
  v0[15] = v15;
  v0[16] = v16;
  v0[13] = v1;
  v0[14] = v14;
  v0[11] = v2;
  v0[12] = v3;
  v0[9] = v4;
  v0[10] = v5;
  v0[7] = v6;
  v0[8] = v7;
  v0[6] = v8;
  v9 = *(v1 - 8);
  v0[17] = v9;
  v0[18] = *(v9 + 64);
  v0[19] = OUTLINED_FUNCTION_40();
  v10 = *(v14 - 8);
  v0[20] = v10;
  v0[21] = *(v10 + 64);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1DA3AC5A8()
{
  v51 = v0;
  DynamicType = swift_getDynamicType();
  v0[24] = DynamicType;
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v48 = DynamicType;
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[7];
  v6 = sub_1DA421A94();
  v0[25] = __swift_project_value_buffer(v6, static Logger.extractionCategory);
  v47 = *(v3 + 16);
  v47(v2, v5, v4);
  v7 = sub_1DA421A74();
  v8 = sub_1DA421F54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v9 = 136315394;
    OUTLINED_FUNCTION_38();
    v0[4] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v10 = sub_1DA421BB4();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_38();
    v14(v13);
    v15 = sub_1DA3A5FE8(v10, v12, &v50);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v0[5] = v48;
    swift_getMetatypeMetadata();
    v16 = sub_1DA421BB4();
    v18 = sub_1DA3A5FE8(v16, v17, &v50);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1DA39E000, v7, v8, "Extracting features from %s using: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v19 = OUTLINED_FUNCTION_38();
    v20(v19);
  }

  v21 = v0[21];
  v22 = v0[22];
  v23 = v0[20];
  v39 = v0[19];
  v24 = v0[17];
  v25 = v0[18];
  v26 = v0[13];
  v40 = v22;
  v41 = v0[12];
  v42 = v0[16];
  v43 = v0[10];
  v45 = v0[11];
  v46 = v0[9];
  v44 = v0[8];
  v27 = v0[7];
  v49 = *(v0 + 7);
  (*(v24 + 16))();
  (v47)(v22, v27);
  v28 = (*(v24 + 80) + 56) & ~*(v24 + 80);
  v29 = (v25 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = (v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v0[26] = v32;
  *(v32 + 16) = v41;
  *(v32 + 24) = v26;
  *(v32 + 32) = v49;
  *(v32 + 48) = v42;
  (*(v24 + 32))(v32 + v28, v39, v26);
  (*(v23 + 32))(v32 + v29, v40, v49);
  v33 = (v32 + v30);
  *v33 = v43;
  v33[1] = v45;
  v34 = (v32 + v31);
  *v34 = v44;
  v34[1] = v46;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;

  v35 = swift_task_alloc();
  v0[27] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  *v35 = v0;
  v35[1] = sub_1DA3AC9EC;
  v37.n128_u64[0] = 10.0;

  return MEMORY[0x1EEE40F70](v0 + 2, &unk_1DA423CC8, v32, v36, v37);
}

uint64_t sub_1DA3AC9EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = sub_1DA3ACB6C;
  }

  else
  {

    v7 = sub_1DA3ACAF4;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3ACAF4()
{
  OUTLINED_FUNCTION_6_0();

  v0 = OUTLINED_FUNCTION_7_0();

  return v1(v0);
}

uint64_t sub_1DA3ACB6C()
{
  v22 = v0;
  v1 = *(v0 + 224);

  v2 = v1;
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F74();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    *(v0 + 24) = v6;
    swift_getMetatypeMetadata();
    v10 = sub_1DA421BB4();
    v12 = sub_1DA3A5FE8(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Failed to extract suggestion features from: %s. Error: %@", v7, 0x16u);
    sub_1DA3A6A2C(v8, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v15);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v16);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v17);
  }

  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x1E69E7CC0];

  return v18(v19);
}

uint64_t sub_1DA3ACD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DA421974();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB8, &qword_1DA423DE8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3ACE5C);
}

uint64_t sub_1DA3ACE5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = *(v0[3] + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDC0, &qword_1DA423DF0);
  OUTLINED_FUNCTION_42(v1, v10, v11, v9);
  (*(v4 + 16))(v2, v7, v5);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v0[11] = v13;
  (*(v4 + 32))(v13 + v12, v2, v5);
  *(v13 + ((v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v14 = swift_task_alloc();
  v0[12] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  OUTLINED_FUNCTION_50();
  *v14 = v15;
  v14[1] = sub_1DA3ACFF0;

  return MEMORY[0x1EEE40720](v8);
}

void sub_1DA3ACFF0()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 80);
    *(v4 + 104) = v0;
    sub_1DA3A6A2C(v8, &qword_1ECBAEDB8, &qword_1DA423DE8);

    v9 = OUTLINED_FUNCTION_26();

    MEMORY[0x1EEE6DFA0](v9);
  }
}

uint64_t sub_1DA3AD128()
{
  OUTLINED_FUNCTION_16();
  **(v0 + 16) = *(v0 + 104);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3AD198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AD1BC);
}

uint64_t sub_1DA3AD1BC()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1DA421964();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  sub_1DA421974();
  OUTLINED_FUNCTION_2_1();
  sub_1DA3B24B4(v3, v4, v5, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *v2 = v0;
  v2[1] = sub_1DA3AD2DC;
  OUTLINED_FUNCTION_30();

  return sub_1DA3AC480();
}

uint64_t sub_1DA3AD2DC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3AD3E0()
{
  MEMORY[0x1DA74D370]();
  MEMORY[0x1DA74D370](2302755, 0xE300000000000000);
  return 0x23236E6F69746361;
}

void *SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DA3AD4A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3AD53C;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD53C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return v4(v3);
}

uint64_t sub_1DA3AD620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3B2D04;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD6B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3B2D04;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DA3A8D08;

  return (sub_1DA3AD834)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DA3AD834(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AD87C);
}

uint64_t sub_1DA3AD87C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3];
  v2 = v0[2];
  v2[3] = v0[4];
  OUTLINED_FUNCTION_2_1();
  v2[4] = sub_1DA3B24B4(v3, v4, v5, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *v2 = v1;
  OUTLINED_FUNCTION_4_0();
  v8 = v6;

  return v8();
}

uint64_t _FeatureService.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a6;
  return OUTLINED_FUNCTION_1_0(sub_1DA3AD938);
}

uint64_t sub_1DA3AD938()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 16);
  *(v1 + 24) = *(v0 + 24);
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_17_0();
  (*(v2 + 16))();
  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3AD9D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.destroy()();
}

void *static SiriSuggestionsIntelligence.getFeatureServiceBuilder()()
{
  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_1DA3ADB28(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v7 = v5[4];
      v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
      a2(v8, v2, v6, v7);

      v5 += 5;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1DA3ADBC4(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return a2(v5, v2, v3, v4);
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractors(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractor(_:)(v2);

      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractor(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A5368);
  v4 = *(*(v1 + 32) + 16);
  sub_1DA3AFDEC(v4, sub_1DA3A5368);
  v5 = *(v1 + 32);
  *(v5 + 16) = v4 + 1;
  sub_1DA3B2454(a1, v5 + 40 * v4 + 32);
  *(v2 + 32) = v5;
  swift_endAccess();
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)()
{
  OUTLINED_FUNCTION_16();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_1DA421A94();
  v1[25] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_40();
  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1DA3ADDE8()
{
  sub_1DA4219C4();

  v1 = sub_1DA421A74();
  v2 = sub_1DA421F54();

  if (os_log_type_enabled(v1, v2))
  {
    v43 = v0[26];
    v3 = v0[24];
    v44 = v0[25];
    v45 = v0[27];
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136315650;
    OUTLINED_FUNCTION_44(v3 + 16, (v0 + 13));

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
    OUTLINED_FUNCTION_33(v5);
    v6 = OUTLINED_FUNCTION_45();
    v14 = OUTLINED_FUNCTION_41(v6, v7, v8, v9, v10, v11, v12, v13);

    *(v4 + 4) = v14;
    *(v4 + 12) = 2080;
    OUTLINED_FUNCTION_44(v3 + 24, (v0 + 16));

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
    OUTLINED_FUNCTION_33(v15);
    v16 = OUTLINED_FUNCTION_45();
    v24 = OUTLINED_FUNCTION_41(v16, v17, v18, v19, v20, v21, v22, v23);

    *(v4 + 14) = v24;
    *(v4 + 22) = 2080;
    OUTLINED_FUNCTION_44(v3 + 32, (v0 + 19));

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
    OUTLINED_FUNCTION_33(v25);
    v26 = OUTLINED_FUNCTION_45();
    v34 = OUTLINED_FUNCTION_41(v26, v27, v28, v29, v30, v31, v32, v33);

    *(v4 + 24) = v34;
    _os_log_impl(&dword_1DA39E000, v1, v2, "Created FeatureService with:\ncontextualExtractors: \n%s,\nsuggestionFeatureExtractors: \n%s,\nactionExtractors: \n%s", v4, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();

    (*(v43 + 8))(v45, v44);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_24();
    v36(v35);
  }

  v0[28] = type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[29] = v37;
  *v37 = v38;
  v37[1] = sub_1DA3AE090;
  OUTLINED_FUNCTION_53();

  return sub_1DA3AE300(v39, v40);
}

uint64_t sub_1DA3AE090()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3AE174()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[22];
  OUTLINED_FUNCTION_44(v2 + 24, (v0 + 7));
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_44(v2 + 32, (v0 + 10));
  v5 = *(v2 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  OUTLINED_FUNCTION_6_1();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_40();
  (*(v10 + 16))(v11, v8, v6);

  v12 = sub_1DA3B1688(v11, v4, v5, v1, v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3[3] = v1;
  OUTLINED_FUNCTION_2_1();
  v3[4] = sub_1DA3B24B4(v13, v14, v15, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *v3 = v12;

  OUTLINED_FUNCTION_4_0();

  return v16();
}

uint64_t sub_1DA3AE300(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1_0(sub_1DA3AE31C);
}

uint64_t sub_1DA3AE31C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[17];
  OUTLINED_FUNCTION_44(v1 + 16, (v0 + 12));
  v2 = *(v1 + 16);
  v0[18] = v2;

  v0[5] = &type metadata for SiriSuggestionsIntelligence.DefaultContextFeatureExtractors;
  v0[6] = sub_1DA3B2400();
  v0[2] = v2;
  type metadata accessor for SiriSuggestionsIntelligence.ContextFeatureExtractionQueue(0);

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1DA3AE408;
  v4 = v0[16];

  return sub_1DA3E5A34(v4);
}

uint64_t sub_1DA3AE408()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA3AE4F4()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  sub_1DA3B2454(v0 + 16, v0 + 56);
  v3 = type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  sub_1DA3A1FF8((v0 + 56), v4 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2[3] = v3;
  v2[4] = sub_1DA3B24B4(&qword_1EE101480, 255, type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors, &unk_1DA427870);
  *v2 = v4;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.deinit()
{

  return v0;
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.FeatureServiceBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)()
{
  OUTLINED_FUNCTION_34();
  ObjectType = swift_getObjectType();
  sub_1DA3B1C24(v5, &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature]);
  v7 = &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_source];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8 = &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId];
  *v8 = v2;
  *(v8 + 1) = v0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1DA3B1C80(v5);
  return v9;
}

void *SiriSuggestionsIntelligence.SourcedFeature.__allocating_init(from:)(void *a1)
{
  v2 = sub_1DA421424();
  OUTLINED_FUNCTION_6_1();
  v47 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECB0, &qword_1DA423978);
  OUTLINED_FUNCTION_6_1();
  v49 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DA3B1CD4();
  v14 = v50;
  sub_1DA422484();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v46 = v13;
    v50 = v6;
    LOBYTE(v51) = 0;
    sub_1DA3B1D28();
    sub_1DA4222B4();
    v15 = v7;
    LOBYTE(v51) = 1;
    OUTLINED_FUNCTION_19_0();
    sub_1DA3B24B4(v16, 255, v17, MEMORY[0x1E69D35A0]);
    v18 = v2;
    sub_1DA4222B4();
    v19 = v48;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    v60 = 2;
    sub_1DA3B1E38(&qword_1EE100FF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1DA4222B4();
    v45 = v15;
    v44 = v51;
    sub_1DA421414();
    v34 = sub_1DA4220A4();

    v35 = v47;
    if (v34 && dynamic_cast_existential_1_conditional(v34, v34, &protocol descriptor for _FeatureExtractor))
    {
      sub_1DA3B1C24(&v52, &v51);
      v36 = objc_allocWithZone(v19);
      v12 = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();
      (*(v35 + 8))(v50, v18);
      sub_1DA3B1C80(&v52);
      (*(v49 + 8))(v11, v45);
    }

    else
    {

      sub_1DA421764();
      sub_1DA3B24B4(&qword_1ECBAECD8, 255, MEMORY[0x1E69D2F30], MEMORY[0x1E69D2F38]);
      v37 = swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECE0, &qword_1DA423998) + 48);
      v41 = v46;
      *(v39 + 24) = &_s14SourcedFeatureC10CodingKeysON;
      *(v39 + 32) = v41;
      *v39 = 1;
      v42 = v50;
      (*(v35 + 16))(v39 + v40, v50, v18);
      OUTLINED_FUNCTION_17_0();
      (*(v43 + 104))(v39);
      swift_willThrow();
      (*(v35 + 8))(v42, v18);
      sub_1DA3B1C80(&v52);
      v31 = v45;
      v21 = v49;
      if (qword_1EE102E00 != -1)
      {
        OUTLINED_FUNCTION_4_1();
        swift_once();
      }

      v22 = sub_1DA421A94();
      __swift_project_value_buffer(v22, static Logger.extractionCategory);
      v23 = v37;
      v24 = sub_1DA421A74();
      v25 = sub_1DA421F74();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = v31;
        v28 = swift_slowAlloc();
        *v26 = 138412290;
        v29 = v37;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_1DA39E000, v24, v25, "Unable to deserialise feature. Setting to default error value. Check other logs for actual error: %@", v26, 0xCu);
        sub_1DA3A6A2C(v28, &qword_1ECBAEC70, &qword_1DA42A510);
        v31 = v27;
        v21 = v49;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      v52 = 0;
      v53 = 0xE000000000000000;
      MEMORY[0x1DA74D370](0x2021524F525245, 0xE700000000000000);
      v51 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
      sub_1DA422194();
      v56 = MEMORY[0x1E69E6158];
      v57 = MEMORY[0x1E69E6190];
      v54 = v52;
      v55 = v53;
      v52 = 0x726F727265;
      v53 = 0xE500000000000000;
      v58 = MEMORY[0x1E69E6160];
      v59 = 0;
      _s14SourcedFeatureC14ErrorExtractorCMa();
      v32 = objc_allocWithZone(v48);
      v12 = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();

      (*(v21 + 8))(v11, v31);
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return v12;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeature.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DA421424();
  OUTLINED_FUNCTION_6_1();
  v18[0] = v6;
  v18[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECE8, qword_1DA4239A0);
  OUTLINED_FUNCTION_6_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B1CD4();
  sub_1DA422494();
  LOBYTE(v19) = 0;
  sub_1DA3B1DE4();
  sub_1DA422334();
  if (!v2)
  {
    sub_1DA421404();
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_19_0();
    sub_1DA3B24B4(v13, 255, v14, MEMORY[0x1E69D3598]);
    sub_1DA422334();
    v15 = OUTLINED_FUNCTION_38();
    v16(v15);
    v19 = *(v3 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    sub_1DA3B1E38(&unk_1EE100FF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1DA422334();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1DA3AF198()
{
  OUTLINED_FUNCTION_20();
  v3 = v1 == 0x65727574616566 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_43(0x65727574616566, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x656372756F73 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_43(0x656372756F73, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x64496E6F69746361 && v0 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_43(0x64496E6F69746361, 0xE800000000000000);

      if (v7)
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

uint64_t _s27SiriSuggestionsIntelligenceAAO16MotionConfidenceO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1);
  return sub_1DA422474();
}

uint64_t sub_1DA3AF310(char a1)
{
  if (!a1)
  {
    return 0x65727574616566;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0x64496E6F69746361;
}

uint64_t sub_1DA3AF380(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](v2);
  return sub_1DA422474();
}

uint64_t sub_1DA3AF3CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3AF198();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3AF400(uint64_t a1)
{
  v2 = sub_1DA3B1CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3AF43C(uint64_t a1)
{
  v2 = sub_1DA3B1CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3AF4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3AF540;

  return sub_1DA3AF478();
}

uint64_t sub_1DA3AF540()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8_1();
  v3 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_23();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

id SiriSuggestionsIntelligence.SourcedFeature.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsIntelligence.SourcedFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA3AF724@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.SourcedFeature.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA3AF79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v17;
  v8[13] = v18;
  v8[10] = v15;
  v8[11] = v16;
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  v12 = (*(v18 + 16) + **(v18 + 16));
  v10 = swift_task_alloc();
  v8[14] = v10;
  *v10 = v8;
  v10[1] = sub_1DA3AF8EC;

  return v12(a3);
}

uint64_t sub_1DA3AF8EC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v4 + 120) = v1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 128) = v0;
    v10 = OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v10);
  }
}

uint64_t sub_1DA3AFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54();
  v15 = *(v14 + 104);
  v16 = *(v14 + 64);
  v35 = *(v14 + 48);
  v17 = *(v14 + 24);
  *(v14 + 16) = *(v14 + 128);
  v18 = swift_task_alloc();
  v19 = *(v14 + 88);
  v20 = *(v14 + 32);
  *(v18 + 16) = *(v14 + 72);
  *(v18 + 32) = v19;
  *(v18 + 48) = v15;
  *(v18 + 56) = v20;
  *(v18 + 72) = v35;
  *(v18 + 88) = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED08, &qword_1DA423CD8);
  v22 = type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  v23 = sub_1DA3B26D0(&qword_1EE100FD8, &qword_1ECBAED08, &qword_1DA423CD8, MEMORY[0x1E69E6340]);
  v25 = sub_1DA3C4BD8(sub_1DA3B235C, v18, v21, v22, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);

  *v17 = v25;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, *(&v35 + 1), a11, a12, a13, a14);
}

id sub_1DA3AFB68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, unint64_t)@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 4271950;
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v9 = a2(v7, v8);
  v11 = v10;

  MEMORY[0x1DA74D370](v9, v11);

  MEMORY[0x1DA74D370](*a1, a1[1]);
  sub_1DA3B239C((a1 + 2), v15);
  v15[6] = a1[8];
  v12 = objc_allocWithZone(type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature());

  result = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();
  *a5 = result;
  return result;
}

uint64_t sub_1DA3AFCA0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DA3AFD48(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DA3AFDEC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_1DA3AFE4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3AFE6C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

char *sub_1DA3AFF58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFF78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFFA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFFC8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1DA3AFFF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

void sub_1DA3B0030(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_20();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_9(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v15 = OUTLINED_FUNCTION_48();

    MEMORY[0x1EEE6BD00](v15, v16, v17, v18);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_48();

    MEMORY[0x1EEE6BCF8](v11, v12, v13, v14);
  }
}

void sub_1DA3B00EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_1DA3B0180(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B0700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA3B01A0()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1DA3B2D00;
  v4 = OUTLINED_FUNCTION_31();

  return sub_1DA3AA4D8(v4, v0);
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

char *sub_1DA3B02D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B09D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0320(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B0B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DA3B0340(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B0D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0410(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B0F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0430(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B1064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0450(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3B119C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA3B0618()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  OUTLINED_FUNCTION_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 16);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1DA3B0700(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED88, &qword_1DA423D70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DA3AFE6C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DA3B08CC()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  OUTLINED_FUNCTION_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[11 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_51();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
    OUTLINED_FUNCTION_51();
    swift_arrayInitWithCopy();
  }
}

char *sub_1DA3B09D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED30, &qword_1DA423D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B0B14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED10, &qword_1DA423CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED18, &unk_1DA423CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B0C48()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  OUTLINED_FUNCTION_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA58, &unk_1DA423340);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[3 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_51();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA60, &unk_1DA4268C0);
    OUTLINED_FUNCTION_51();
    swift_arrayInitWithCopy();
  }
}

char *sub_1DA3B0D50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B0E68()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  OUTLINED_FUNCTION_4();
  if (v3)
  {
    OUTLINED_FUNCTION_56(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v2;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void *sub_1DA3B0F2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5F0, &unk_1DA423330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA50, &qword_1DA4246D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B1064(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED48, &qword_1DA423D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED50, &qword_1DA423D38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B119C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED68, &qword_1DA423D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED70, &qword_1DA423D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B12D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_10();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_56(a1, a2, a3, a4, a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 24);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v17 != a4 || &a4[3 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 24 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void sub_1DA3B13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_10();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
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

  OUTLINED_FUNCTION_56(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_5_2(v17);
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

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_49();
  if (v11)
  {
    sub_1DA3B0030(a4 + v25, v15, v22 + v25, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA3B15A4()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_56(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_35();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[24 * v11] <= v15)
    {
      memmove(v15, v16, 24 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 24 * v11);
  }
}

void *sub_1DA3B1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v10 + 32))(&v19 - v14);
  v16 = swift_allocObject();
  (*(v10 + 16))(v13, v15, a5);
  v17 = sub_1DA3B17F0(v13, a2, a3, v16, a5, a6);
  (*(v10 + 8))(v15, a5);
  return v17;
}

void *sub_1DA3B17F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  a4[7] = a2;
  a4[8] = a3;
  return a4;
}

uint64_t sub_1DA3B1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  OUTLINED_FUNCTION_6_1();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(v7 + 16);
  v14(&v18 - v12);
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A52A0);
  v15 = *(*(a2 + 16) + 16);
  sub_1DA3AFDEC(v15, sub_1DA3A52A0);
  (v14)(v11, v13, a3);
  sub_1DA3B24FC(v15, v11, (a2 + 16), a3, v18, sub_1DA3B2D10);
  swift_endAccess();
  v16 = *(v7 + 8);

  v16(v13, a3);
  return a2;
}

uint64_t sub_1DA3B1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *(v6 + 16);
  v12(&v16 - v10);
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A51D8);
  v13 = *(*(a2 + 24) + 16);
  sub_1DA3AFDEC(v13, sub_1DA3A51D8);
  (v12)(v9, v11, a3);
  sub_1DA3B24FC(v13, v9, (a2 + 24), a3, v16, sub_1DA3B2D10);
  swift_endAccess();
  v14 = *(v6 + 8);

  v14(v11, a3);
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

unint64_t sub_1DA3B1CD4()
{
  result = qword_1EE100828;
  if (!qword_1EE100828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100828);
  }

  return result;
}

unint64_t sub_1DA3B1D28()
{
  result = qword_1ECBAECB8;
  if (!qword_1ECBAECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAECB8);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DA3B1DE4()
{
  result = qword_1EE101088;
  if (!qword_1EE101088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101088);
  }

  return result;
}

uint64_t sub_1DA3B1E38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAECD0, &qword_1DA423990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3B1EA4(uint64_t a1, uint64_t a2)
{
  result = sub_1DA3B24B4(&qword_1EE102C80, a2, type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService, &protocol conformance descriptor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *(a1 + 16) = result;
  return result;
}

uint64_t _s14SourcedFeatureC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14SourcedFeatureC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3B2094()
{
  result = qword_1ECBAECF0;
  if (!qword_1ECBAECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAECF0);
  }

  return result;
}

unint64_t sub_1DA3B20EC()
{
  result = qword_1EE100818;
  if (!qword_1EE100818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100818);
  }

  return result;
}

unint64_t sub_1DA3B2144()
{
  result = qword_1EE100820;
  if (!qword_1EE100820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100820);
  }

  return result;
}

uint64_t sub_1DA3B2198(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_1();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DA3A8004;
  OUTLINED_FUNCTION_53();

  return sub_1DA3AF79C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DA3B239C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1DA3B2400()
{
  result = qword_1EE102D68;
  if (!qword_1EE102D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102D68);
  }

  return result;
}

uint64_t sub_1DA3B2454(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1DA3B24B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DA3B24FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_17_0();
  (*(v9 + 32))();
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return a6(v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1DA3B25A0()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA3A8D08;

  return sub_1DA3AB2F0(v3, v0);
}

uint64_t sub_1DA3B2634()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v3[1] = sub_1DA3B2D00;
  v5 = OUTLINED_FUNCTION_24();

  return sub_1DA3AB54C(v5, v6, v1);
}

uint64_t sub_1DA3B26D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DA3B2718()
{
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_39();
  v4(v3);
  return v0;
}

uint64_t sub_1DA3B2770(uint64_t a1)
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1DA3A8D08;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_57();

  return sub_1DA3ABAC8(v4, v5, v6, v7, v8);
}

uint64_t sub_1DA3B2818()
{
  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DA3A8D08;
  OUTLINED_FUNCTION_25();

  return sub_1DA3ACD58(v5, v6, v7, v2);
}

uint64_t sub_1DA3B28BC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = sub_1DA421974();
  OUTLINED_FUNCTION_5_2(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1DA3B29B0;
  v8 = OUTLINED_FUNCTION_31();

  return sub_1DA3AD198(v8, v9, v4);
}

uint64_t sub_1DA3B29B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;

  OUTLINED_FUNCTION_23();

  return v4(v0);
}

uint64_t sub_1DA3B2A94()
{
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_39();
  v4(v3);
  return v0;
}

uint64_t sub_1DA3B2AEC(uint64_t a1)
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  OUTLINED_FUNCTION_5_2(v1);
  v2 = sub_1DA421974();
  OUTLINED_FUNCTION_5_2(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v4[1] = sub_1DA3B2D00;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_57();

  return sub_1DA3ABFD8(v6, v7, v8, v9);
}

uint64_t sub_1DA3B2C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3B2CA4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return sub_1DA421784();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1DA3A5FE8(v8, v9, va);
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2)
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_45()
{
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_1DA3B31C8(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DA421B94();

  return v4;
}

_OWORD *SiriSuggestionsIntelligence.Feature.init(featureName:featureValue:featureVector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1DA3B3334(a3, a5 + 1);
  a5[8] = a4;
  return result;
}

_OWORD *sub_1DA3B3334(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_OWORD *static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)@<X0>(char a1@<W1>, uint64_t a2@<X8>, char a3@<W0>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a3);
  v7 = v6;
  v13 = MEMORY[0x1E69E6370];
  v14 = MEMORY[0x1E69E6390];
  v15 = MEMORY[0x1E69E6378];
  LOBYTE(v12) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1DA4238F0;
  v10 = 0.0;
  if (a1)
  {
    v10 = 1.0;
  }

  *(v8 + 32) = v10;
  *a2 = v5;
  *(a2 + 8) = v7;
  result = sub_1DA3B3334(&v12, (a2 + 16));
  *(a2 + 64) = v9;
  return result;
}

double static SiriSuggestionsIntelligence.createNumericFeature(featureId:featureValue:)@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, char a3@<W0>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a3);
  v7 = v6;
  v8 = MEMORY[0x1E69E6560];
  a2[5] = MEMORY[0x1E69E6530];
  a2[6] = v8;
  a2[7] = MEMORY[0x1E69E6538];
  a2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DA4238F0;
  result = a1;
  *(v9 + 32) = a1;
  *a2 = v5;
  a2[1] = v7;
  a2[8] = v9;
  return result;
}

double static SiriSuggestionsIntelligence.createTimeIntervalFeature(featureId:featureValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, char a3@<W0>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a3);
  v7 = v6;
  v8 = MEMORY[0x1E69E63E8];
  *(a1 + 40) = MEMORY[0x1E69E63B0];
  *(a1 + 48) = v8;
  *(a1 + 56) = MEMORY[0x1E69E63C0];
  *(a1 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_1DA4238F0;
  *(v9 + 32) = a2;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 64) = v9;
  return result;
}

double static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a4[2];
  if (v9)
  {
    v25 = a4;

    sub_1DA3B531C(&v25);
    v10 = sub_1DA3B3908(a2, a3, v25);
    v12 = v11;

    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    sub_1DA3B3C98(a1, a2, a3, v9 + 1, v13, a5);
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
    }

    v15 = sub_1DA421A94();
    v16 = OUTLINED_FUNCTION_13_1(v15, static Logger.inferenceCategory);
    v17 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v17))
    {
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
      v22 = sub_1DA3A5FE8(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DA39E000, v16, v17, "Can't convert %s to one hot encoding due to unbouded values, returning feature without vector", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    v23 = MEMORY[0x1E69E6190];
    a5[5] = MEMORY[0x1E69E6158];
    a5[6] = v23;
    a5[7] = MEMORY[0x1E69E6160];
    a5[2] = a2;
    a5[3] = a3;
    *a5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
    a5[1] = v24;
    a5[8] = 0;
  }

  return result;
}

uint64_t sub_1DA3B3768(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE700000000000000;
    v7 = 0x676E696E726F6DLL;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE600000000000000;
        v7 = 0x79616464696DLL;
        break;
      case 2:
        v7 = 0x6F6F6E7265746661;
        v6 = 0xE90000000000006ELL;
        break;
      case 3:
        v7 = 0x676E696E657665;
        break;
      default:
        break;
    }

    v8 = 0xE700000000000000;
    v9 = 0x676E696E726F6DLL;
    switch(a1)
    {
      case 1:
        v8 = 0xE600000000000000;
        v9 = 0x79616464696DLL;
        break;
      case 2:
        v9 = 0x6F6F6E7265746661;
        v8 = 0xE90000000000006ELL;
        break;
      case 3:
        v9 = 0x676E696E657665;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_1DA4223A4();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1DA3B3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1DA4223A4() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1DA3B3994(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DA3B39D8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    sub_1DA4216E4();
    sub_1DA3B6158(&qword_1ECBAEE00, MEMORY[0x1E69D2CB8]);
    if (sub_1DA421B54())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_1DA3B3AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v29;
  a24 = v30;
  v34 = OUTLINED_FUNCTION_5_3(v31, v32, v33);
  if (v26 >= v27)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v35 = sub_1DA421A94();
      v36 = OUTLINED_FUNCTION_13_1(v35, static Logger.inferenceCategory);
      v37 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v37))
      {
        OUTLINED_FUNCTION_2_2();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v48 = swift_slowAlloc();
        a12 = v48;
        *v38 = 136315650;
        v39 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
        sub_1DA3A5FE8(v39, v40, &a12);

        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_12_0(&dword_1DA39E000, v41, v42, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector");
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C();
  v34 = v47;
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v34 + 16) > v26)
  {
    OUTLINED_FUNCTION_6_2(v34 + 8 * v26);
LABEL_10:
    v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
    v44 = MEMORY[0x1E69E6560];
    v45 = MEMORY[0x1E69E6538];
    v24[5] = MEMORY[0x1E69E6530];
    v24[6] = v44;
    v24[1] = v46;
    v24[2] = v25;
    *v24 = v43;
    v24[7] = v45;
    v24[8] = v34;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void sub_1DA3B3C98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = a1;
  v12 = sub_1DA3B493C(a4, 0.0);
  if (a5 >= a4)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v13 = sub_1DA421A94();
      __swift_project_value_buffer(v13, static Logger.inferenceCategory);
      v14 = sub_1DA421A74();
      v15 = sub_1DA421F64();
      if (os_log_type_enabled(v14, v15))
      {
        v26 = v15;
        v16 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v16 = 136315650;
        v17 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v10);
        v19 = a3;
        v20 = sub_1DA3A5FE8(v17, v18, &v28);

        *(v16 + 4) = v20;
        a3 = v19;
        *(v16 + 12) = 2048;
        *(v16 + 14) = a5;
        *(v16 + 22) = 2048;
        *(v16 + 24) = a4;
        _os_log_impl(&dword_1DA39E000, v14, v26, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v16, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1DA74E430](v27, -1, -1);
        MEMORY[0x1DA74E430](v16, -1, -1);
      }

      goto LABEL_10;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3B5D1C();
    v12 = v25;
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (a5 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  if (*(v12 + 16) <= a5)
  {
    __break(1u);
    return;
  }

  *(v12 + 8 * a5 + 32) = 0x3FF0000000000000;
LABEL_10:
  v21 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v10);
  v22 = MEMORY[0x1E69E6190];
  a6[5] = MEMORY[0x1E69E6158];
  a6[6] = v22;
  v23 = MEMORY[0x1E69E6160];
  a6[2] = a2;
  a6[3] = a3;
  *a6 = v21;
  a6[1] = v24;
  a6[7] = v23;
  a6[8] = v12;
}

void sub_1DA3B3ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_1DA3B493C(v28, 0.0);
  if (v27 >= v29)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v39 = sub_1DA421A94();
      v40 = OUTLINED_FUNCTION_13_1(v39, static Logger.inferenceCategory);
      v41 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v41))
      {
        OUTLINED_FUNCTION_2_2();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v53 = v31;
        v52 = swift_slowAlloc();
        a12 = v52;
        *v42 = 136315650;
        v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v35);
        v45 = v35;
        v46 = sub_1DA3A5FE8(v43, v44, &a12);

        *(v42 + 4) = v46;
        v35 = v45;
        *(v42 + 12) = 2048;
        *(v42 + 14) = v27;
        *(v42 + 22) = 2048;
        *(v42 + 24) = v29;
        _os_log_impl(&dword_1DA39E000, v40, v41, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v42, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v52);
        v31 = v53;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C();
  v38 = v51;
  if (v27 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v38 + 16) > v27)
  {
    OUTLINED_FUNCTION_6_2(v38 + 8 * v27);
LABEL_10:
    v47 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v35);
    v49 = v48;
    *(v37 + 40) = &type metadata for SiriSuggestionsIntelligence.SemanticLocation;
    *(v37 + 48) = sub_1DA3B62EC();
    v50 = sub_1DA3B6340();
    *(v37 + 8) = v49;
    *(v37 + 16) = v33;
    *(v37 + 24) = v31;
    *v37 = v47;
    *(v37 + 56) = v50;
    *(v37 + 64) = v38;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void sub_1DA3B40E4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v14 = a1;
  v16 = sub_1DA3B493C(a3, 0.0);
  if (a4 >= a3)
  {
    v33 = a5;
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v17 = sub_1DA421A94();
      v18 = OUTLINED_FUNCTION_13_1(v17, static Logger.inferenceCategory);
      v19 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v19))
      {
        OUTLINED_FUNCTION_2_2();
        v32 = v14;
        v20 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v31 = a7;
        v30 = swift_slowAlloc();
        v34 = v30;
        *v20 = 136315650;
        v21 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v32);
        v23 = a6;
        v24 = sub_1DA3A5FE8(v21, v22, &v34);

        *(v20 + 4) = v24;
        a6 = v23;
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        *(v20 + 22) = 2048;
        *(v20 + 24) = a3;
        _os_log_impl(&dword_1DA39E000, v18, v19, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        a7 = v31;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        v14 = v32;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      a5 = v33;
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C();
  v16 = v29;
  if (a4 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v16 + 16) > a4)
  {
    OUTLINED_FUNCTION_6_2(v16 + 8 * a4);
LABEL_10:
    v25 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v14);
    v27 = v26;
    *(a8 + 40) = a5;
    *(a8 + 48) = a6();
    v28 = a7();
    *(a8 + 16) = a2;
    *a8 = v25;
    *(a8 + 8) = v27;
    *(a8 + 56) = v28;
    *(a8 + 64) = v16;
    return;
  }

  __break(1u);
}

void sub_1DA3B4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v29;
  a24 = v30;
  v34 = OUTLINED_FUNCTION_5_3(v31, v32, v33);
  if (v26 >= v27)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v35 = sub_1DA421A94();
      v36 = OUTLINED_FUNCTION_13_1(v35, static Logger.inferenceCategory);
      v37 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v37))
      {
        OUTLINED_FUNCTION_2_2();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v49 = swift_slowAlloc();
        a12 = v49;
        *v38 = 136315650;
        v39 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
        sub_1DA3A5FE8(v39, v40, &a12);

        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_12_0(&dword_1DA39E000, v41, v42, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector");
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C();
  v34 = v48;
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v34 + 16) > v26)
  {
    OUTLINED_FUNCTION_6_2(v34 + 8 * v26);
LABEL_10:
    v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
    v45 = v44;
    v46 = sub_1DA4216E4();
    v24[5] = v46;
    v24[6] = sub_1DA3B6158(&qword_1ECBAEDF0, MEMORY[0x1E69D2CC0]);
    v24[7] = sub_1DA3B6158(&qword_1ECBAEDF8, MEMORY[0x1E69D2CB0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 2);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v25, v46);
    *v24 = v43;
    v24[1] = v45;
    v24[8] = v34;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void static SiriSuggestionsIntelligence.createOneHotFeature<A>(featureId:featureValue:oneHotLength:oneHotIndex:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = a1;
  v16 = sub_1DA3B493C(a3, 0.0);
  if (a4 >= a3)
  {
    if (qword_1ECBAE838 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C();
  v16 = v29;
  if (a4 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
LABEL_7:
    v17 = sub_1DA421A94();
    v18 = OUTLINED_FUNCTION_13_1(v17, static Logger.inferenceCategory);
    v32 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v32))
    {
      OUTLINED_FUNCTION_2_2();
      v33 = v14;
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v19 = 136315650;
      v20 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v33);
      log = v18;
      v22 = a7;
      v23 = a2;
      v24 = sub_1DA3A5FE8(v20, v21, &v34);

      *(v19 + 4) = v24;
      a2 = v23;
      a7 = v22;
      *(v19 + 12) = 2048;
      *(v19 + 14) = a4;
      *(v19 + 22) = 2048;
      *(v19 + 24) = a3;
      _os_log_impl(&dword_1DA39E000, log, v32, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v19, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      v14 = v33;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_4:
  if (*(v16 + 16) > a4)
  {
    OUTLINED_FUNCTION_6_2(v16 + 8 * a4);
LABEL_10:
    v25 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v14);
    v27 = v26;
    a8[5] = a5;
    a8[6] = a6;
    a8[7] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 2);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
    *a8 = v25;
    a8[1] = v27;
    a8[8] = v16;
    return;
  }

  __break(1u);
}

void static SiriSuggestionsIntelligence.createEnumFeature<A>(featureId:featureValue:)(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v18[1] = a7;
  v19 = a8;
  v22 = a5;
  v23 = a6;
  v20 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  OUTLINED_FUNCTION_11_0();
  swift_getAssociatedConformanceWitness();
  v24 = sub_1DA421DB4();
  sub_1DA421DA4();
  swift_getWitnessTable();
  v21 = a2;
  sub_1DA421F24();
  if (v26)
  {
    v16 = sub_1DA421D94();
  }

  else
  {
    v16 = v25;
  }

  OUTLINED_FUNCTION_11_0();
  v17 = sub_1DA421F04();
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  static SiriSuggestionsIntelligence.createOneHotFeature<A>(featureId:featureValue:oneHotLength:oneHotIndex:)(v20, v21, v17, v16, a3, v22, v23, v19);
}

uint64_t sub_1DA3B493C(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1DA421D74();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1DA423EA0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.Feature.featureName.getter()
{
  v1 = *v0;

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriSuggestionsIntelligence.Feature.base64FeatureValue()()
{
  v2 = v0;
  sub_1DA420ED4();
  swift_allocObject();
  sub_1DA420EC4();
  v3 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = sub_1DA420EB4();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v2 = sub_1DA421004();
    v3 = v8;
    sub_1DA3B5D30(v6, v7);
  }

  v9 = v2;
  v10 = v3;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

_OWORD *SiriSuggestionsIntelligence.Feature.init(featureName:featureValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = sub_1DA3B3334(a3, (a4 + 16));
  *(a4 + 64) = 0;
  return result;
}

uint64_t SiriSuggestionsIntelligence.Feature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDD8, &qword_1DA423EB0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B5D88();
  sub_1DA422484();
  if (!v2)
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_1DA422274();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v13 = 1;
    sub_1DA421794();
    v8 = OUTLINED_FUNCTION_8_2();
    v9(v8);
    sub_1DA3B3334(v12, (a2 + 16));
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 64) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SiriSuggestionsIntelligence.Feature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDE0, &qword_1DA423EB8);
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B5D88();
  sub_1DA422494();
  LOBYTE(v17[0]) = 0;
  sub_1DA4222F4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v18 = 1;
  v12 = v3[5];
  v13 = v3[7];
  v14 = __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v17[3] = v12;
  v17[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v14, v12);
  sub_1DA4217A4();
  (*(v7 + 8))(v10, v5);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1DA3B5074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665727574616566 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3B514C(char a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1 & 1);
  return sub_1DA422474();
}

uint64_t sub_1DA3B5194(char a1)
{
  if (a1)
  {
    return 0x5665727574616566;
  }

  else
  {
    return 0x4E65727574616566;
  }
}

uint64_t sub_1DA3B51EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3B5074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3B5220(uint64_t a1)
{
  v2 = sub_1DA3B5D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3B525C(uint64_t a1)
{
  v2 = sub_1DA3B5D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA3B52C8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DA3B52EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA3B531C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3CCC48();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DA3B5388(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DA3B5388(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA422344();
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
        v6 = sub_1DA421D74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DA3B5544(v7, v8, a1, v4);
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
    return sub_1DA3B547C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA3B547C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DA4223A4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA3B5544(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1DA4223A4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1DA4223A4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1DA4223A4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A54F8(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1DA3A54F8(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1DA3B5B78((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1DA3B5A4C(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_1DA3B5A4C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DA3C691C(v5);
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
    sub_1DA3B5B78((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1DA3B5B78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1DA3AFE4C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DA4223A4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1DA3AFE4C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1DA4223A4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}