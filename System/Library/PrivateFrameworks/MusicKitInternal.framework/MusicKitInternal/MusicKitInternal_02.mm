uint64_t sub_1D4E74B58()
{
  OUTLINED_FUNCTION_100();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_1_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_54_34();
  v4 = sub_1D56158D8();
  OUTLINED_FUNCTION_69(v4);
  type metadata accessor for MusicAutoupdatingResponse.Status(255, v2, v3, v5);
  OUTLINED_FUNCTION_54_34();
  v6 = sub_1D5612868();
  OUTLINED_FUNCTION_22(v6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_89();

  return sub_1D4E752D4(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D4E74D94(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4E74DDC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4E74E24(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4E74E6C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_101_0()
{

  return sub_1D4E58360();
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_101_3()
{
}

uint64_t OUTLINED_FUNCTION_101_4()
{
}

uint64_t OUTLINED_FUNCTION_101_6(uint64_t a1, uint64_t a2)
{

  return sub_1D560DA98();
}

uint64_t OUTLINED_FUNCTION_101_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_101_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_101_13(uint64_t a1, uint64_t a2)
{

  return sub_1D5616168();
}

void OUTLINED_FUNCTION_101_16()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D56163D8();
}

uint64_t OUTLINED_FUNCTION_95_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_95_10()
{
  v2 = *(v0 + 648);
}

uint64_t OUTLINED_FUNCTION_95_13(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_95_17()
{

  JUMPOUT(0x1DA6E3AD0);
}

uint64_t OUTLINED_FUNCTION_95_18(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_95_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1D4E752D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *(v8 + 136) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  type metadata accessor for MusicAutoupdatingResponse.Status(255, *(*a4 + 80), *(*a4 + 88), a4);
  *(v8 + 64) = sub_1D5612868();
  v9 = sub_1D56158D8();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_getAssociatedTypeWitness();
  v10 = sub_1D56158D8();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4E7547C, 0, 0);
}

uint64_t sub_1D4E7547C()
{
  OUTLINED_FUNCTION_60();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }

  else
  {
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 40), *(v0 + 104));
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  OUTLINED_FUNCTION_24_0();
  (*(v7 + 16))(v5);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_1D53D5F9C;
  OUTLINED_FUNCTION_93_0(*(v0 + 24));

  return sub_1D4E7594C();
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_54_9(char a1)
{

  return sub_1D4FD39E0(a1);
}

uint64_t OUTLINED_FUNCTION_54_10(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_54_11()
{
  result = v1 - 120;
  *(v1 - 216) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_12(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 160);

  return sub_1D50CC018(v3, v6, a3);
}

BOOL OUTLINED_FUNCTION_54_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_54_16(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1D4E6835C(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_54_19(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_54_20()
{

  return sub_1D560EC98();
}

uint64_t OUTLINED_FUNCTION_54_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_24()
{
}

uint64_t OUTLINED_FUNCTION_54_27(uint64_t result)
{
  *(v2 + 144) = result;
  *(result + 16) = v1;
  *(result + 24) = v3;
  return result;
}

unint64_t OUTLINED_FUNCTION_54_28(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1D4E6835C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_54_29()
{

  return sub_1D5614C18();
}

uint64_t OUTLINED_FUNCTION_54_30(unint64_t *a1)
{

  return sub_1D4E62A60(a1, v2, v3, v1);
}

uint64_t sub_1D4E7594C()
{
  OUTLINED_FUNCTION_80();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = *v0;
  v8 = *(*v0 + 80);
  v1[18] = v8;
  OUTLINED_FUNCTION_1_0();
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_127();
  v1[21] = type metadata accessor for MusicAutoupdatingResponse.Status(255, v8, *(v7 + 88), v10);
  v1[22] = sub_1D5612868();
  v11 = sub_1D56158D8();
  v1[23] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_85_21();
  v13 = sub_1D56158D8();
  v1[26] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[27] = v14;
  v1[28] = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t OUTLINED_FUNCTION_88_4(uint64_t a1)
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_72_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_88_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_88_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_88_14()
{
}

uint64_t OUTLINED_FUNCTION_88_15()
{

  return sub_1D5614C18();
}

uint64_t OUTLINED_FUNCTION_88_17()
{
}

unint64_t OUTLINED_FUNCTION_88_18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1D4E6835C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_84_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_1D5611AB8();
}

uint64_t OUTLINED_FUNCTION_84_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84_15(uint64_t a1)
{
  *(v1 + 80) = a1;
  *(v1 + 88) = 1;

  return sub_1D56153C8();
}

uint64_t OUTLINED_FUNCTION_84_20()
{

  return MusicDaemon.Error.hash(into:)(v0);
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_84_21()
{

  return sub_1D5551868(v0, type metadata accessor for SocialProfile);
}

void *OUTLINED_FUNCTION_84_22(void *result)
{
  *(v3 + 136) = result;
  result[2] = v2;
  result[3] = v4;
  result[4] = v1;
  return result;
}

uint64_t sub_1D4E75EE0()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_48_22();
  v2(v1);
  v3 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_14_54(v3, v4);
  if (v5)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v8 = 1;
  }

  else
  {
    sub_1D5612858();
    OUTLINED_FUNCTION_24_0();
    v6 = OUTLINED_FUNCTION_159();
    v7(v6);
    v8 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 224), v8, 1, *(v0 + 168));
  OUTLINED_FUNCTION_2_59();
  v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
  OUTLINED_FUNCTION_102();
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 232) = v10;
    *v10 = v11;
    v10[1] = sub_1D53D6138;

    return sub_1D53D6FB0();
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4E765C8(v0 + 56, &qword_1EC7F5870, &qword_1D5667CF0);
    v13 = swift_task_alloc();
    *(v0 + 240) = v13;
    *v13 = v0;
    v13[1] = sub_1D53D62B8;
    OUTLINED_FUNCTION_93_0(*(v0 + 96));

    return sub_1D4E76678();
  }
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_58_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_56_3()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_58_8()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_58_11()
{
}

BOOL OUTLINED_FUNCTION_58_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_58_14(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_15(uint64_t a1, uint64_t a2)
{

  return sub_1D560D188();
}

void *OUTLINED_FUNCTION_58_17(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 80);

  return __swift_project_boxed_opaque_existential_1((v2 + 56), v4);
}

uint64_t OUTLINED_FUNCTION_58_23()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_58_25()
{
}

uint64_t OUTLINED_FUNCTION_58_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_72_5(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_28()
{
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);

  return sub_1D52CB1F8(v4, v5, v0, v2);
}

uint64_t OUTLINED_FUNCTION_58_29()
{
}

uint64_t OUTLINED_FUNCTION_58_34()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_58_37()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_58_39(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58_40(uint64_t result, uint64_t a2)
{
  *(v2 - 120) = result;
  *(v2 - 112) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_242()
{
  v2 = *(v0 - 176);

  return sub_1D4E62938(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_242_1()
{

  return sub_1D4E628D4(v0 + 96, v0 + 136);
}

uint64_t OUTLINED_FUNCTION_242_2()
{

  return swift_slowAlloc();
}

uint64_t sub_1D4E765C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E7661C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_24_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E76678()
{
  OUTLINED_FUNCTION_60();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  OUTLINED_FUNCTION_5_6();
  v1[11] = *(v5 + 88);
  OUTLINED_FUNCTION_13_5();
  v1[12] = *(v6 + 80);
  v1[13] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_85_21();
  v7 = sub_1D5612868();
  v1[14] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_13_5();
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_167();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_183_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_1D4F39AB0(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_183_4()
{
  v2 = *(v0 - 72);

  return sub_1D4E62938(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_183_7(uint64_t a1)
{

  return sub_1D5540030();
}

uint64_t sub_1D4E76868()
{
  OUTLINED_FUNCTION_91();
  v13 = v0[11];
  v1 = v0[10];
  v0[5] = type metadata accessor for MusicAutoupdatingResponse(0, v0[12], v13, v2);
  v0[6] = &protocol witness table for MusicAutoupdatingResponse<A>;
  v0[2] = v1;
  v3 = *(v13 + 56);

  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = sub_1D53D6424;
  v6 = v0[19];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  return (v12)(v6, v9, v0 + 2, v10, v7, v8);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_56_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D4F5F808(a2);
}

uint64_t OUTLINED_FUNCTION_56_10(unint64_t *a1)
{

  return sub_1D4E5E3F8(a1, v1, &protocol conformance descriptor for TVEpisode);
}

uint64_t OUTLINED_FUNCTION_56_11(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 160);

  return sub_1D5041F24(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1)
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_56_13(int a1@<W8>)
{
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1, unsigned __int16 a2)
{

  return sub_1D560D188();
}

void OUTLINED_FUNCTION_56_20()
{
  *(v0 + 16) = v2;
  v5 = v0 + 80 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_56_22(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_56_23(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_56_27()
{

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_56_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_35()
{

  return swift_unknownObjectRelease();
}

unint64_t OUTLINED_FUNCTION_56_37(uint64_t a1, unint64_t a2)
{

  return sub_1D4E6835C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_56_39()
{
}

uint64_t OUTLINED_FUNCTION_56_41(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_56_42(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_1D4E76D8C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_19_75();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_88(v1);
  OUTLINED_FUNCTION_96_15();
  OUTLINED_FUNCTION_376();

  return MusicAutoupdatableRequest.response(revisionID:requester:previousResponse:)();
}

uint64_t OUTLINED_FUNCTION_96_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_96_8()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_96_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_96_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_96_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_96_17(uint64_t a1)
{
  *(v2 - 80) = *(v1 + 40);
}

uint64_t MusicAutoupdatableRequest.response(revisionID:requester:previousResponse:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_19_75();
  OUTLINED_FUNCTION_90_0();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_13_88(v2);
  OUTLINED_FUNCTION_132_8();

  return v5();
}

uint64_t sub_1D4E770EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_74_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_123(v1);
  OUTLINED_FUNCTION_132_8();
  OUTLINED_FUNCTION_153_1();

  return MusicAutoupdatableRequest.response(revisionID:requester:)();
}

uint64_t MusicAutoupdatableRequest.response(revisionID:requester:)()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_74_26();
  OUTLINED_FUNCTION_90_0();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_161(v2);

  return v6(v4);
}

void OUTLINED_FUNCTION_128_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 48);

  _os_log_impl(a1, v8, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_128_5()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_128_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_1D5089DC0(v17, v15, a15, v16);
}

uint64_t OUTLINED_FUNCTION_128_7(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_85_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_13()
{
}

uint64_t OUTLINED_FUNCTION_85_17()
{
  *(v0 + 472) = *(v0 + 40);

  return sub_1D560C2F8();
}

uint64_t OUTLINED_FUNCTION_85_25()
{

  return sub_1D5551868(v0, type metadata accessor for TVEpisode);
}

uint64_t OUTLINED_FUNCTION_85_27(unint64_t *a1)
{

  return sub_1D5407868(a1, v1, v2);
}

uint64_t sub_1D4E775DC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_86(v1);
  OUTLINED_FUNCTION_64_5();

  return MusicAutoupdatableRequest.response(revisionID:)(v3);
}

uint64_t OUTLINED_FUNCTION_69_8(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t OUTLINED_FUNCTION_69_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_1D5610CF8();
}

uint64_t OUTLINED_FUNCTION_69_16()
{

  return sub_1D51B9214(v0, type metadata accessor for UploadedAudioPropertyProvider);
}

void OUTLINED_FUNCTION_69_17(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6].n128_u64[0] = v4;
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_69_24()
{
}

unint64_t OUTLINED_FUNCTION_69_32(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1D4E6835C(v11, v10, &a10);
}

uint64_t MusicAutoupdatableRequest.response(revisionID:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_58();
  v9 = v1;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_45_40();
  OUTLINED_FUNCTION_90_0();
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_127(v4);

  return v8(v6);
}

uint64_t sub_1D4E77A70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5049798;

  return MEMORY[0x1EEDCEF40](a1, a2);
}

uint64_t sub_1D4E77B64(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t static RecentlyAddedMusicItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD5CD70 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD5CD78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D4E77C58()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD5CD78);
  v1 = __swift_project_value_buffer(v0, qword_1EDD5CD78);
  v2 = *MEMORY[0x1E69767D8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4E77CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a4(a1, a2, a3);
  v8 = dynamic_cast_existential_1_conditional(v4, v4, &protocol descriptor for LegacyModelLibraryInternalRequestable);
  if (v8)
  {
    v10 = sub_1D5302A24(v7, a1, a2, v8, v9);

    return v10;
  }

  return v7;
}

void *sub_1D4E77D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v6 = sub_1D560E4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!sub_1D4E62628(a2))
  {
    if (qword_1EC7E9818 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_4;
  }

LABEL_2:
  v24 = a2;

  while (1)
  {
    v10 = *(v7 + 16);
    v7 += 16;
    v10(v9, a3, v6);
    a3 = swift_allocObject();
    *(a3 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8FB8, &qword_1D5678678);
    swift_allocObject();
    v9 = sub_1D4E783DC(v9, sub_1D4E78AD4, a3);
    v3 = *(*v9 + qword_1EDD76EF0 + 32);
    swift_beginAccess();
    *(v9 + v3) = 0;
    v11 = *(*v9 + qword_1EDD76EF0 + 40);
    swift_beginAccess();
    *(v9 + v11) = 0;
    v12 = sub_1D4E62628(v22);
    a2 = v24;
    if (v12)
    {
      a3 = v12;
      if (v12 < 1)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v6 = 0;
      v23 = v22 & 0xC000000000000001;
      v21 = v22 + 32;
      while (2)
      {
        if (v23)
        {
          MEMORY[0x1DA6EB9B0](v6, v22);
        }

        else
        {
        }

        if (qword_1EC7E9820 != -1)
        {
          swift_once();
        }

        ++v6;
        v13 = qword_1EC87C770;
        v14 = sub_1D4E62628(qword_1EC87C770);
        v15 = 0;
        a2 = v13 & 0xC000000000000001;
        v7 = v13 & 0xFFFFFFFFFFFFFF8;
        while (v14 != v15)
        {
          if (a2)
          {
            v3 = MEMORY[0x1DA6EB9B0](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v3 = *(v13 + 8 * v15 + 32);
          }

          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          sub_1D560CC68();

          ++v15;
        }

        a2 = v24;
        if (v6 != a3)
        {
          continue;
        }

        break;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
    v16 = sub_1D4E62628(a2);
    if (!v16)
    {
      goto LABEL_32;
    }

    v3 = v16;
    if (v16 >= 1)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
LABEL_4:
    if (!qword_1EC87C768)
    {
      goto LABEL_2;
    }
  }

  v17 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA6EB9B0](v17, a2);
    }

    else
    {
      v18 = *(a2 + 8 * v17 + 32);
    }

    if (qword_1EDD5CD98 != -1)
    {
      swift_once();
    }

    ++v17;
    v19 = qword_1EDD76D68;

    sub_1D4E78670(v19, v18, &v25, sub_1D4E62628);
  }

  while (v3 != v17);
LABEL_32:

  sub_1D5613418();

  return v9;
}

void sub_1D4E78254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D4E782E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D4E783DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D560E4F8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(*v3 + qword_1EDD76EF0 + 32)) = 0;
  *(v3 + *(*v3 + qword_1EDD76EF0 + 40)) = 0;
  v13 = (v3 + *(*v3 + qword_1EDD76EF0 + 48));
  *v13 = a2;
  v13[1] = a3;
  (*(v9 + 16))(v12, a1, v7);
  v14 = sub_1D5613368();
  (*(v9 + 8))(a1, v7);
  return v14;
}

uint64_t sub_1D4E7857C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8C68, &qword_1D56769A0);
  swift_getKeyPath();
  v1 = sub_1D5612D68();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612D68();

  *(v0 + 40) = v2;
  qword_1EDD76D68 = v0;
  return result;
}

uint64_t sub_1D4E78670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6EB9B0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1D560CCB8();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D4E78754(void *a1, SEL *a2)
{
  v3 = [objc_opt_self() *a2];
  MEMORY[0x1DA6EAF30]();
  sub_1D4E6C078(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1D56151F8();
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

uint64_t sub_1D4E78808()
{
  OUTLINED_FUNCTION_58_0();
  v2 = v1;
  v31 = sub_1D560E4F8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + qword_1EDD76EF0 + 8);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v15 = *v14;
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  v22 = (v0 + *(v21 + 48));
  v23 = *v22;
  v29[1] = v22[1];
  v30 = v23;
  v24 = *(v21 + 32);
  swift_beginAccess();
  (*(v17 + 16))(v20, v0 + v24, v15);
  OUTLINED_FUNCTION_58_0();
  v26 = *(v25 + qword_1EDD76EF0 + 40);
  swift_beginAccess();
  (*(v10 + 16))(v13, v0 + v26, v8);
  sub_1D5613358();
  v27 = v30(v20, v13, v7);
  (*(v4 + 8))(v7, v31);
  (*(v10 + 8))(v13, v8);
  (*(v17 + 8))(v20, v15);
  return v27;
}

id sub_1D4E78ADC()
{
  v0 = sub_1D560E4D8();
  v1 = objc_allocWithZone(MEMORY[0x1E6977670]);

  return [v1 initWithIncludeOnlyDownloadedContent_];
}

char *sub_1D4E78B2C()
{
  OUTLINED_FUNCTION_58_0();
  v0 = sub_1D5613458();
  OUTLINED_FUNCTION_1_70();
  (*(v1 + 8))(v2 + v3);
  OUTLINED_FUNCTION_1_70();
  (*(v4 + 8))(v0 + v5);

  return v0;
}

uint64_t sub_1D4E78C74()
{
  v0 = sub_1D4E78B2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4E78CC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCEAC0](a1, a2);
}

uint64_t sub_1D4E78D74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v10 = dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for LegacyModelLibraryRequestable);
  if (!v10)
  {
    return 0;
  }

  sub_1D535159C(a1, a2, a3, v10, v11);
  v12 = a4();

  return v12;
}

uint64_t sub_1D4E78E34()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_4(v1);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D4E78EC8(v3, v4, v5, v6, v7);
}

uint64_t sub_1D4E78EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1D56153C8();
  v5[8] = sub_1D56153B8();
  v7 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4E79310, v7, v6);
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1)
{

  return sub_1D5614CA8();
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1)
{

  return sub_1D560D178();
}

uint64_t OUTLINED_FUNCTION_57_6(uint64_t a1)
{

  return sub_1D5615FD8();
}

void OUTLINED_FUNCTION_49_14()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_49_15()
{

  return sub_1D5614D38();
}

uint64_t OUTLINED_FUNCTION_49_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(v6 - 128) = a5;
  *(v6 - 120) = a1;
  *(v6 - 104) = a3;
  *(v6 - 96) = a4;
  *(v6 - 112) = a2;
  *(v6 - 88) = a6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_49_23(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_49_26()
{
  v2 = *(v0 + 192);
  *(v0 + 104) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_49_28(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_49_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_49_30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
}

uint64_t sub_1D4E79310()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D4E793A0(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4E793A0(void *a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  v3 = a1;

  v4 = *(v1 + 104);
  if (v4)
  {
    v5 = ([v4 capabilities] & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  result = swift_beginAccess();
  v7 = *(v1 + 128);
  if (v5)
  {
    *(v1 + 128) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *(v7 + 16);
    if (!v8)
    {
      return result;
    }

    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);

      v10(v11);

      v9 += 16;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1D4E79478(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_37_7(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4E79490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return OUTLINED_FUNCTION_37_7(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioAnalysis.Statistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D4E794D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[11];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[14];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[15];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[13]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4E79638(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[13]) = (a2 - 1);
        return;
      }

      sub_1D560D838();
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[14];
      }

      else
      {
        v10 = sub_1D5610088();
        v14 = a4[15];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E797A8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D4E79B90(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4E797D0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D4E79B10(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4E79870(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D4E79BE8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4E79988@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D4EC3474(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D4E799E4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D4EC4740(a2);
  *a1 = result;
  return result;
}

void *sub_1D4E79A48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D4E79B3C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1D4E79B68(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D4E79B98(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4E79BA0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D4E79BC4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

double sub_1D4E79C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1D4E62938(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D4E79E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_147();
  type metadata accessor for MusicSiriItemRequest.Kind(v6);
  OUTLINED_FUNCTION_25_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24));
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = *(v3 + *(a3 + 24));
  }

  v16 = v15 - 4;
  if (v14 >= 4)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_1D4E79F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_147();
  type metadata accessor for MusicSiriItemRequest.Kind(v8);
  OUTLINED_FUNCTION_25_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_1D560CD48();
    OUTLINED_FUNCTION_25_0();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 4;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D4E7A32C@<X0>(uint64_t a1@<X8>)
{
  result = MusicPersonalRecommendationsRequest.recommendationItemsLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E7A36C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPersonalRecommendationsRequest.itemProperties.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E7A420(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1D5614028();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1D4E7A4B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1D5614028();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7A874(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = a3[8];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[9];
    }

LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E7A9D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      sub_1D560D838();
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[8];
      }

      else
      {
        v10 = sub_1D5610088();
        v11 = a4[9];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E7AB38(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[19];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[22];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[25];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v19 + 84) == a2)
    {
      v8 = v18;
      v9 = a3[27];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[28];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v17 = *(a1 + a3[26]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_1D4E7AD34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[19];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[22];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[25];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[26]) = (a2 - 1);
            return;
          }

          sub_1D560D838();
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[27];
          }

          else
          {
            v10 = sub_1D5610088();
            v11 = a4[28];
          }
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E7AF44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E7AFA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E7AFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E7B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D5616168() & 1;
  }
}

uint64_t sub_1D4E7B0C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s6DialogV6ActionV17UnderlyingCommandOMa(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E7B14C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s6DialogV6ActionV17UnderlyingCommandOMa(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D4E7B558()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1D4E7B620(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D4E7B704()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E7B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4E7B86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E7B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E7B9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E7BA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E7BA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E7BAF0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
      OUTLINED_FUNCTION_25_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4E7BC38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E7BE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 440);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 72);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 76);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E7BEF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 440) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 72);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 76);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E7C06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E7C0C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E7C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicRequestConfiguration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E7C23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MusicRequestConfiguration(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

__n128 sub_1D4E7C3DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E7C3F4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4F62E60();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7C684()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E7C6B8()
{

  OUTLINED_FUNCTION_83_2();

  return swift_deallocObject();
}

uint64_t sub_1D4E7C704()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E7C7D8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E7C948(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E7C9E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7CB5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4F6D7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E7CC4C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E7CD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D5614898();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1D560C0A8();
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_1D560CD48();
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1D4E7CE44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D5614898();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_1D560C0A8();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1D560CD48();
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E7CF40@<X0>(uint64_t *a1@<X8>)
{
  result = MusicVideo.customLyrics.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E7D038(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
      v8 = *(a3 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1D4E7D0FC()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
      v7 = *(v4 + 24);
    }

    v8 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4E7D1C4(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v11 + 84) == a2)
        {
          v9 = a3[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v9 = a3[18];
        }
      }
    }

    v12 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void sub_1D4E7D338()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v9 + 84) == v5)
        {
          v7 = v4[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v7 = v4[18];
        }
      }
    }

    v10 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1D4E7D4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4E7D59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
      v14 = *(a4 + 24);
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

__n128 sub_1D4E7D754(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E7D878(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560CD48();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E7D900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7DA24(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4E7DB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560D838();
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

    return (v10 + 1);
  }
}

uint64_t sub_1D4E7DC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560D838();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E7DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614898();
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

uint64_t sub_1D4E7DDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D5614898();
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

uint64_t sub_1D4E7DE60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E7DEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7DF68@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSummary.playlistID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E7DF94@<X0>(uint64_t a1@<X8>)
{
  result = MusicSummary.year.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E7E090(uint64_t a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_1D4E7E164()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = *(v4 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
      v9 = *(v4 + 24);
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_1D4E7E230(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v14 + 84) == v3)
    {
      v8 = v13;
      v15 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v15 = a3[15];
    }

    v9 = v4 + v15;
    goto LABEL_13;
  }

  v10 = *(v4 + a3[5]);
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

void sub_1D4E7E368(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[5]) = v4;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v14 = a4[15];
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D4E7E490()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D4E7E4E0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1D4E7E5C4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E7E6C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[7];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E7E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E7E878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7E98C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E7E9C4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD63A4();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7E9F0()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD6588();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7EA1C()
{
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E7EBEC()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD68D0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E7EC40()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD6988();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E7ECE4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD728C();
  *v0 = result & 1;
  return result;
}

id sub_1D4E7ED38()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD7370();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7ED64()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD74A8();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7EDB4()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD7528();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7EE04()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD7648();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7EE54()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD772C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E7EEA8()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4FD78B8();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E7EED4()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E7EF1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E7EF54()
{
  v1 = (type metadata accessor for MusicLibraryPlaylistEditViewModel.Properties(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1D4E7F054(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E7F0E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED440, qword_1D5625208);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_1D4E7F274@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = FlexAnalysis.SampledValues.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_1D4E7F2A0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = FlexAnalysis.SampledValues.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t sub_1D4E7F310(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E7F398(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E7F4D0@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.events.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E7F528@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.exitPoints.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E7F554@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.entryPoints.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D4E7F5B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D4E7F698(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudTVEpisode.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      OUTLINED_FUNCTION_211();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_25_0();
      if (*(v9 + 84) == a2)
      {
        v8 = *(a3 + 24);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
        v8 = *(a3 + 28);
      }
    }

    v10 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1D4E7F7A4()
{
  OUTLINED_FUNCTION_69_0();
  if (v4 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_218_1();
    type metadata accessor for CloudTVEpisode.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_25_0();
      if (*(v7 + 84) == v3)
      {
        v6 = *(v2 + 24);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
        v6 = *(v2 + 28);
      }
    }

    v8 = OUTLINED_FUNCTION_152(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4E7F8B0(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      OUTLINED_FUNCTION_211();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v11 + 84) == a2)
        {
          v9 = a3[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v12 + 84) == a2)
          {
            v9 = a3[18];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
            OUTLINED_FUNCTION_25_0();
            if (*(v13 + 84) == a2)
            {
              v9 = a3[26];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
              v9 = a3[28];
            }
          }
        }
      }
    }

    v14 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

void sub_1D4E7FAB8()
{
  OUTLINED_FUNCTION_69_0();
  if (v4 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_218_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v7 + 84) == v3)
      {
        v6 = v2[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v8 + 84) == v3)
        {
          v6 = v2[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v9 + 84) == v3)
          {
            v6 = v2[18];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
            OUTLINED_FUNCTION_25_0();
            if (*(v10 + 84) == v3)
            {
              v6 = v2[26];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
              v6 = v2[28];
            }
          }
        }
      }
    }

    v11 = OUTLINED_FUNCTION_152(v6);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_1D4E7FCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_25_0();
    if (*(v10 + 84) == v3)
    {
      OUTLINED_FUNCTION_211();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
      v11 = *(a3 + 24);
    }

    v9 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4E7FDA8()
{
  OUTLINED_FUNCTION_218_1();
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
      v9 = *(v2 + 24);
    }

    v7 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D4E7FEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_25_0();
    if (*(v10 + 84) == v3)
    {
      OUTLINED_FUNCTION_211();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
      v11 = *(a3 + 24);
    }

    v9 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4E7FF94()
{
  OUTLINED_FUNCTION_218_1();
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
      v9 = *(v2 + 24);
    }

    v7 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D4E802F8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[8];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a2)
      {
        v8 = v14;
        v9 = a3[22];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
        v9 = a3[26];
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[17] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1D4E80478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[8];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[17] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[22];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
        v11 = a4[26];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E806E8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560CD48();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E80770(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E80888()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8092C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1D4E80A40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E80D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E80D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C328();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E80F40(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C328();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
  }

  sub_1D560CD48();
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(v3 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E81028(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C328();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1D560CD48();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(v4 + a4[7]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

uint64_t sub_1D4E811AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E812BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D4E8135C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8142C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_47();
  result = sub_1D5038614(v2, v3, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4E81474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E814FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8157C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E81658()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5033978(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E81680()
{
  OUTLINED_FUNCTION_20_0();
  TVSeason.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E816CC()
{
  OUTLINED_FUNCTION_20_0();
  TVSeason._editorialArtworks.getter();
  *v0 = v1;
}

uint64_t sub_1D4E816F4()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8171C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E81744()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.showName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8176C()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E81794()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.number.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E817E8()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E81810()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

void sub_1D4E81838()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D50334B4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E81860()
{
  OUTLINED_FUNCTION_20_0();
  result = TVSeason.episodeCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E819E4(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E81B10(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D4E81CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E81CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E81D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D4E81E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4E81ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E81F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E81FF8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82024@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.kind.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82158(uint64_t a1)
{
  OUTLINED_FUNCTION_30_17();
  result = sub_1D4E5E440(v2, v3, &protocol conformance descriptor for RecentlyAddedMusicItem);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1D4E82228(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D4E82918()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E82950()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E82988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC60, &qword_1D562E498);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E82B54@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.versionHash.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E82BC8@<X0>(uint64_t a1@<X8>)
{
  result = Playlist.trackCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D4E82CB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_19_34();
    return (v3 + 1);
  }

  else
  {
    sub_1D5610088();
    v6 = OUTLINED_FUNCTION_152(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1D4E82D34()
{
  OUTLINED_FUNCTION_39_17();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1D5610088();
    v5 = OUTLINED_FUNCTION_152(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D4E82DA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_19_34();
    return (v3 + 1);
  }

  else
  {
    sub_1D5610088();
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v8 = *(a3 + 28);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1D4E82E6C()
{
  OUTLINED_FUNCTION_39_17();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1D5610088();
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D4E82F2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_19_34();
    return OUTLINED_FUNCTION_36_19(v7);
  }
}

void sub_1D4E82FD0()
{
  OUTLINED_FUNCTION_38_19();
  type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  OUTLINED_FUNCTION_25_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_37_19();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_1D4E83060(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_25_0();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_19_34();
    return OUTLINED_FUNCTION_36_19(v7);
  }
}

void sub_1D4E8310C()
{
  OUTLINED_FUNCTION_38_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_25_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_37_19();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_1D4E832A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E833C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E83418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E834EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E835F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D506F620();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8368C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Folder.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E83700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  OUTLINED_FUNCTION_4_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E8379C()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E837E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E83994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5612448();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E839C0()
{
  v1 = (type metadata accessor for MusicSearchResultGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_1D4E83ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E83B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E83B78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E83C00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E83CC8@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.Reaction.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E83D18(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[9];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[11];
    goto LABEL_9;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v19 + 84) == a2)
    {
      v8 = v18;
      v9 = a3[13];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[14];
    }

LABEL_9:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v17 = *(a1 + a3[12]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_1D4E83F14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[11];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[12]) = (a2 - 1);
            return;
          }

          sub_1D560D838();
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[13];
          }

          else
          {
            v10 = sub_1D5610088();
            v11 = a4[14];
          }
        }
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E841D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E842C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E843F4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[8];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v17 + 84) == a2)
  {
    v8 = v16;
    v9 = a3[11];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v19 + 84) == a2)
  {
    v8 = v18;
    v9 = a3[13];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_25_0();
  if (*(v21 + 84) == a2)
  {
    v8 = v20;
    v9 = a3[14];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_25_0();
  if (*(v23 + 84) == a2)
  {
    v8 = v22;
    v9 = a3[15];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_25_0();
  if (*(v25 + 84) == a2)
  {
    v8 = v24;
    v9 = a3[16];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v27 + 84) == a2)
  {
    v8 = v26;
    v9 = a3[17];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_25_0();
  if (*(v29 + 84) == a2)
  {
    v8 = v28;
    v9 = a3[18];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_25_0();
  if (*(v31 + 84) == a2)
  {
    v8 = v30;
    v9 = a3[19];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_25_0();
  if (*(v33 + 84) == a2)
  {
    v8 = v32;
    v9 = a3[20];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v35 + 84) == a2)
  {
    v8 = v34;
    v9 = a3[22];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_25_0();
  if (*(v37 + 84) == a2)
  {
    v8 = v36;
    v9 = a3[27];
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_25_0();
  if (*(v39 + 84) == a2)
  {
    v8 = v38;
    v9 = a3[28];
    goto LABEL_33;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v43 + 84) == a2)
    {
      v8 = v42;
      v9 = a3[31];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[32];
    }

LABEL_33:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v41 = *(a1 + a3[30]);
  if (v41 >= 0xFFFFFFFF)
  {
    LODWORD(v41) = -1;
  }

  return (v41 + 1);
}

void sub_1D4E84980(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[11];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
            OUTLINED_FUNCTION_25_0();
            if (*(v21 + 84) == a3)
            {
              v10 = v20;
              v11 = a4[13];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
              OUTLINED_FUNCTION_25_0();
              if (*(v23 + 84) == a3)
              {
                v10 = v22;
                v11 = a4[14];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
                OUTLINED_FUNCTION_25_0();
                if (*(v25 + 84) == a3)
                {
                  v10 = v24;
                  v11 = a4[15];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
                  OUTLINED_FUNCTION_25_0();
                  if (*(v27 + 84) == a3)
                  {
                    v10 = v26;
                    v11 = a4[16];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
                    OUTLINED_FUNCTION_25_0();
                    if (*(v29 + 84) == a3)
                    {
                      v10 = v28;
                      v11 = a4[17];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
                      OUTLINED_FUNCTION_25_0();
                      if (*(v31 + 84) == a3)
                      {
                        v10 = v30;
                        v11 = a4[18];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                        OUTLINED_FUNCTION_25_0();
                        if (*(v33 + 84) == a3)
                        {
                          v10 = v32;
                          v11 = a4[19];
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                          OUTLINED_FUNCTION_25_0();
                          if (*(v35 + 84) == a3)
                          {
                            v10 = v34;
                            v11 = a4[20];
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                            OUTLINED_FUNCTION_25_0();
                            if (*(v37 + 84) == a3)
                            {
                              v10 = v36;
                              v11 = a4[22];
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                              OUTLINED_FUNCTION_25_0();
                              if (*(v39 + 84) == a3)
                              {
                                v10 = v38;
                                v11 = a4[27];
                              }

                              else
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
                                OUTLINED_FUNCTION_25_0();
                                if (*(v41 + 84) == a3)
                                {
                                  v10 = v40;
                                  v11 = a4[28];
                                }

                                else
                                {
                                  if (a3 == 0x7FFFFFFF)
                                  {
                                    *(a1 + a4[30]) = (a2 - 1);
                                    return;
                                  }

                                  sub_1D560D838();
                                  OUTLINED_FUNCTION_25_0();
                                  if (*(v43 + 84) == a3)
                                  {
                                    v10 = v42;
                                    v11 = a4[31];
                                  }

                                  else
                                  {
                                    v10 = sub_1D5610088();
                                    v11 = a4[32];
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

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E84F6C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.playActivityFeatureName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E84F9C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.playActivityRecommendationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E85224()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8525C()
{
  v1 = *(type metadata accessor for MusicSuggestedPivotNode(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MusicSuggestedPivotContainer(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D5614408();
    }

    else if (EnumCaseMultiPayload == 1)
    {
      sub_1D5614898();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_17;
      }

      sub_1D5613AF8();
    }

    OUTLINED_FUNCTION_14();
    (*(v9 + 8))(v0 + v2);
  }

  else
  {
    sub_1D5613D28();
    OUTLINED_FUNCTION_14();
    (*(v5 + 8))(v0 + v2);
    v6 = *(type metadata accessor for MusicSuggestedPivotSeed(0) + 20);
    v7 = type metadata accessor for MusicSuggestedPivotContainer(0);
    if (__swift_getEnumTagSinglePayload(v3 + v6, 1, v7))
    {
      goto LABEL_17;
    }

    v8 = swift_getEnumCaseMultiPayload();
    if (v8 == 2)
    {
      sub_1D5614408();
    }

    else if (v8 == 1)
    {
      sub_1D5614898();
    }

    else
    {
      if (v8)
      {
        goto LABEL_17;
      }

      sub_1D5613AF8();
    }

    OUTLINED_FUNCTION_14();
    (*(v10 + 8))(v3 + v6);
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1D4E85470(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_10;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v9 = a3[16];
    goto LABEL_10;
  }

  v12 = *(a1 + a3[12] + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_1D4E855A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[12] + 8) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v11 = a4[16];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E8573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_1D4E85804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1D4E8591C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E85964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614898();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E85AEC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[10];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[12];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[13];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4E85C50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return;
      }

      sub_1D560D838();
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        v10 = sub_1D5610088();
        v14 = a4[13];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E85E08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E85EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E85F84(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 228)
  {
    v4 = *a1;
    if (v4 >= 0x1C)
    {
      return v4 - 27;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D560CD48();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_1D4E86004(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 228)
  {
    *result = a2 + 27;
  }

  else
  {
    v7 = sub_1D560CD48();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E86080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D56140F8();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D4E8616C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D56140F8();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1D560C0A8();
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E863BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D9A8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E86444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D560D9A8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E864C4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_12:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[7];
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[11];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
    v9 = a3[30];
    goto LABEL_12;
  }

  v14 = *(a1 + a3[21] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_1D4E86644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[11];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[21] + 8) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v11 = a4[30];
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E8695C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E869F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFEC8, &qword_1D5635188);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E86A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E86AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE58, &qword_1D5635150);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_1D4E86C00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E86CE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E86D24()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E86D74(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
          v11 = a3[19];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1D4E86EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
    OUTLINED_FUNCTION_25_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
      OUTLINED_FUNCTION_25_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
          v11 = a4[19];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D4E870B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E87144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E87224(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[17];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v9 = a3[18];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[6] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1D4E87358(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[17];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      v11 = a4[18];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E87504(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v14 = a3[14];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[9] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1D4E87684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        v14 = a4[14];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E87880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E8794C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D838();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_1D5610088();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E87A78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E87B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E87BA4@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem.plainEditorialCards.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87C18@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem.editorialCards.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87C44@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialItem._editorialArtworks.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E87CB8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_36:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_35:
    v9 = a1 + v12;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[10];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[13];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[17];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_25_0();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[20];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_25_0();
  if (*(v22 + 84) == a2)
  {
    v8 = v21;
    v12 = a3[21];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_25_0();
  if (*(v24 + 84) == a2)
  {
    v8 = v23;
    v12 = a3[22];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_25_0();
  if (*(v26 + 84) == a2)
  {
    v8 = v25;
    v12 = a3[26];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v28 + 84) == a2)
  {
    v8 = v27;
    v12 = a3[31];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_25_0();
  if (*(v30 + 84) == a2)
  {
    v8 = v29;
    v12 = a3[36];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v32 + 84) == a2)
  {
    v8 = v31;
    v12 = a3[45];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_25_0();
  if (*(v34 + 84) == a2)
  {
    v8 = v33;
    v12 = a3[46];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_25_0();
  if (*(v36 + 84) == a2)
  {
    v8 = v35;
    v12 = a3[47];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_25_0();
  if (*(v38 + 84) == a2)
  {
    v8 = v37;
    v12 = a3[48];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v40 + 84) == a2)
  {
    v8 = v39;
    v12 = a3[49];
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_25_0();
  if (*(v42 + 84) == a2)
  {
    v8 = v41;
    v12 = a3[50];
    goto LABEL_35;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v46 + 84) == a2)
    {
      v8 = v45;
      v12 = a3[53];
    }

    else
    {
      v8 = sub_1D5610088();
      v12 = a3[54];
    }

    goto LABEL_35;
  }

  v44 = *(a1 + a3[52]);
  if (v44 >= 0xFFFFFFFF)
  {
    LODWORD(v44) = -1;
  }

  return (v44 + 1);
}

void sub_1D4E88290(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[17];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
            OUTLINED_FUNCTION_25_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[20];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
              OUTLINED_FUNCTION_25_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[21];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                OUTLINED_FUNCTION_25_0();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[22];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                  OUTLINED_FUNCTION_25_0();
                  if (*(v28 + 84) == a3)
                  {
                    v10 = v27;
                    v14 = a4[26];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                    OUTLINED_FUNCTION_25_0();
                    if (*(v30 + 84) == a3)
                    {
                      v10 = v29;
                      v14 = a4[31];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
                      OUTLINED_FUNCTION_25_0();
                      if (*(v32 + 84) == a3)
                      {
                        v10 = v31;
                        v14 = a4[36];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
                        OUTLINED_FUNCTION_25_0();
                        if (*(v34 + 84) == a3)
                        {
                          v10 = v33;
                          v14 = a4[45];
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
                          OUTLINED_FUNCTION_25_0();
                          if (*(v36 + 84) == a3)
                          {
                            v10 = v35;
                            v14 = a4[46];
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
                            OUTLINED_FUNCTION_25_0();
                            if (*(v38 + 84) == a3)
                            {
                              v10 = v37;
                              v14 = a4[47];
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                              OUTLINED_FUNCTION_25_0();
                              if (*(v40 + 84) == a3)
                              {
                                v10 = v39;
                                v14 = a4[48];
                              }

                              else
                              {
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
                                OUTLINED_FUNCTION_25_0();
                                if (*(v42 + 84) == a3)
                                {
                                  v10 = v41;
                                  v14 = a4[49];
                                }

                                else
                                {
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
                                  OUTLINED_FUNCTION_25_0();
                                  if (*(v44 + 84) == a3)
                                  {
                                    v10 = v43;
                                    v14 = a4[50];
                                  }

                                  else
                                  {
                                    if (a3 == 0x7FFFFFFF)
                                    {
                                      *(a1 + a4[52]) = (a2 - 1);
                                      return;
                                    }

                                    sub_1D560D838();
                                    OUTLINED_FUNCTION_25_0();
                                    if (*(v46 + 84) == a3)
                                    {
                                      v10 = v45;
                                      v14 = a4[53];
                                    }

                                    else
                                    {
                                      v10 = sub_1D5610088();
                                      v14 = a4[54];
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

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E88864()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E8892C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560CD48();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1D4E88970(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_147();
  v4 = sub_1D560CD48();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1D4E88A8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for MusicPlaybackIntentDonation.IntentKind(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1D4E88AD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5 = type metadata accessor for MusicPlaybackIntentDonation.IntentKind(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1D4E88BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0750, &unk_1D5638E00);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4E88C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0750, &unk_1D5638E00);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D4E88E8C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[12];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v14 = a3[13];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[7] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1D4E89058(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
      OUTLINED_FUNCTION_25_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
        OUTLINED_FUNCTION_25_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[12];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
          v14 = a4[13];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E89270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C0A8();
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

uint64_t sub_1D4E8931C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D560C0A8();
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

uint64_t sub_1D4E893C8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_93();
  result = sub_1D4E74B10(v2, v3, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4E89410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E89498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E895A8()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.uploadingArtistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E896CC()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio._editorialArtworks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E897A8()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E89820()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E89848()
{
  OUTLINED_FUNCTION_20_0();
  result = UploadedAudio.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E898E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D4E899B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D560D9A8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E89AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E89B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E89B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E89BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D4E89CF8()
{
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  sub_1D4E55E1C(*(v0 + v6), *(v0 + v6 + 8));

  return swift_deallocObject();
}

uint64_t sub_1D4E89F38@<X0>(uint64_t *a1@<X8>)
{
  result = Album.offers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E89F64@<X0>(uint64_t *a1@<X8>)
{
  result = Album.versionHash.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E89FF8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A02C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D51655A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8A05C()
{

  return swift_deallocObject();
}

uint64_t sub_1D4E8A094()
{
  v1 = *(type metadata accessor for GenericMusicItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1D5613AF8();
      goto LABEL_23;
    case 1u:
      sub_1D5613EF8();
      goto LABEL_23;
    case 2u:

      v3 = type metadata accessor for Composer(0);
      goto LABEL_25;
    case 3u:

      v3 = type metadata accessor for CreditArtist(0);
      goto LABEL_25;
    case 4u:
      sub_1D56141F8();
      goto LABEL_23;
    case 5u:

      v3 = type metadata accessor for EditorialItem(0);
      goto LABEL_25;
    case 6u:
      sub_1D5613C48();
      goto LABEL_23;
    case 7u:

      v3 = type metadata accessor for MusicMovie(0);
      goto LABEL_25;
    case 8u:
      sub_1D560EEA8();
      goto LABEL_23;
    case 9u:
      sub_1D5614898();
      goto LABEL_23;
    case 0xAu:

      v3 = type metadata accessor for Playlist.Folder(0);
      goto LABEL_25;
    case 0xBu:
      sub_1D5614B68();
      goto LABEL_23;
    case 0xCu:
      sub_1D560F8B8();
      goto LABEL_23;
    case 0xDu:

      v3 = type metadata accessor for SocialProfile(0);
      goto LABEL_25;
    case 0xEu:
      sub_1D5613838();
      goto LABEL_23;
    case 0xFu:
      sub_1D5614408();
LABEL_23:
      OUTLINED_FUNCTION_14();
      (*(v4 + 8))(v0 + v2);
      break;
    case 0x10u:

      v3 = type metadata accessor for TVEpisode(0);
      goto LABEL_25;
    case 0x11u:

      v3 = type metadata accessor for TVSeason(0);
      goto LABEL_25;
    case 0x12u:

      v3 = type metadata accessor for TVShow(0);
      goto LABEL_25;
    case 0x13u:

      v3 = type metadata accessor for UploadedAudio(0);
      goto LABEL_25;
    case 0x14u:

      v3 = type metadata accessor for UploadedVideo(0);
LABEL_25:
      v5 = *(v3 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v6 + 8))(v0 + v2 + v5);
      break;
    case 0x15u:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E8A39C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A400()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A438()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E8A484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D4E8A570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8A6FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_138_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
      v8 = *(a3 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1D4E8A7C0()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for CloudUploadedVideo.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
      v7 = *(v4 + 24);
    }

    v8 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4E8A888(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_138_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v11 + 84) == a2)
        {
          v9 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
          OUTLINED_FUNCTION_25_0();
          if (*(v12 + 84) == a2)
          {
            v9 = a3[11];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_25_0();
            if (*(v13 + 84) == a2)
            {
              v9 = a3[12];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
              v9 = a3[15];
            }
          }
        }
      }
    }

    v14 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

void sub_1D4E8AA94()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
      OUTLINED_FUNCTION_25_0();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_25_0();
        if (*(v9 + 84) == v5)
        {
          v7 = v4[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A0, &qword_1D5631128);
          OUTLINED_FUNCTION_25_0();
          if (*(v10 + 84) == v5)
          {
            v7 = v4[11];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_25_0();
            if (*(v11 + 84) == v5)
            {
              v7 = v4[12];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
              v7 = v4[15];
            }
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

uint64_t sub_1D4E8AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4E8AD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D4E8AF28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8AFB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8B030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D517D7CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8B174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8B1FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1D4E8B27C()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D51858C8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

double sub_1D4E8B37C@<D0>(_OWORD *a1@<X8>)
{
  MusicMovie.supportedLocales.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_1D4E8B408()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.editorialCards.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

void sub_1D4E8B430()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie._editorialArtworks.getter();
  *v0 = v1;
}

void sub_1D4E8B458()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.clips.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B580()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.isLibraryAddEligible.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8B5A8()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_1D5184B8C();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8B5D0()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.duration.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1D4E8B648()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.studioName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B670()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.shortDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B698()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.standardDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1D4E8B6E4()
{
  OUTLINED_FUNCTION_20_0();
  MusicMovie.genreNames.getter(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B730()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B758()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.isLibraryAdded.getter();
  *v0 = result;
  return result;
}

void sub_1D4E8B7A4()
{
  OUTLINED_FUNCTION_20_0();
  sub_1D5185288(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  *v0 = v9;
}

uint64_t sub_1D4E8B7CC()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B7F4()
{
  OUTLINED_FUNCTION_20_0();
  result = MusicMovie.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4E8B864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D4E8B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void *sub_1D4E8BABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D536564C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8BAE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5320048();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1D4E8BBDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8BCF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + a3[7]);
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
    v8 = a3[21];
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_1D4E8BDE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1278, &qword_1D563F8B8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
    v10 = a4[21];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1D4E8BF30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D519702C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8C0A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

__n128 sub_1D4E8C0E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D4E8C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(sub_1D5614898() - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_104();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return v9 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D4E8C25C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D5614898();
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

uint64_t sub_1D4E8C33C()
{
  sub_1D4FEEE48(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D4E8C374(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_25_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_25_0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[7];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = a3[8];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_25_0();
  if (*(v17 + 84) == a2)
  {
    v8 = v16;
    v9 = a3[11];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_25_0();
  if (*(v19 + 84) == a2)
  {
    v8 = v18;
    v9 = a3[13];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_25_0();
  if (*(v21 + 84) == a2)
  {
    v8 = v20;
    v9 = a3[14];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_25_0();
  if (*(v23 + 84) == a2)
  {
    v8 = v22;
    v9 = a3[15];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_25_0();
  if (*(v25 + 84) == a2)
  {
    v8 = v24;
    v9 = a3[16];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_25_0();
  if (*(v27 + 84) == a2)
  {
    v8 = v26;
    v9 = a3[17];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_25_0();
  if (*(v29 + 84) == a2)
  {
    v8 = v28;
    v9 = a3[18];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v31 + 84) == a2)
  {
    v8 = v30;
    v9 = a3[20];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_0();
  if (*(v33 + 84) == a2)
  {
    v8 = v32;
    v9 = a3[21];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_25_0();
  if (*(v35 + 84) == a2)
  {
    v8 = v34;
    v9 = a3[26];
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_25_0();
  if (*(v37 + 84) == a2)
  {
    v8 = v36;
    v9 = a3[27];
    goto LABEL_31;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_1D560D838();
    OUTLINED_FUNCTION_25_0();
    if (*(v41 + 84) == a2)
    {
      v8 = v40;
      v9 = a3[29];
    }

    else
    {
      v8 = sub_1D5610088();
      v9 = a3[30];
    }

LABEL_31:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v39 = *(a1 + a3[28]);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  return (v39 + 1);
}

void sub_1D4E8C8B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
      OUTLINED_FUNCTION_25_0();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v11 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
        OUTLINED_FUNCTION_25_0();
        if (*(v17 + 84) == a3)
        {
          v10 = v16;
          v11 = a4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
          OUTLINED_FUNCTION_25_0();
          if (*(v19 + 84) == a3)
          {
            v10 = v18;
            v11 = a4[11];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
            OUTLINED_FUNCTION_25_0();
            if (*(v21 + 84) == a3)
            {
              v10 = v20;
              v11 = a4[13];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
              OUTLINED_FUNCTION_25_0();
              if (*(v23 + 84) == a3)
              {
                v10 = v22;
                v11 = a4[14];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
                OUTLINED_FUNCTION_25_0();
                if (*(v25 + 84) == a3)
                {
                  v10 = v24;
                  v11 = a4[15];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
                  OUTLINED_FUNCTION_25_0();
                  if (*(v27 + 84) == a3)
                  {
                    v10 = v26;
                    v11 = a4[16];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
                    OUTLINED_FUNCTION_25_0();
                    if (*(v29 + 84) == a3)
                    {
                      v10 = v28;
                      v11 = a4[17];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
                      OUTLINED_FUNCTION_25_0();
                      if (*(v31 + 84) == a3)
                      {
                        v10 = v30;
                        v11 = a4[18];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
                        OUTLINED_FUNCTION_25_0();
                        if (*(v33 + 84) == a3)
                        {
                          v10 = v32;
                          v11 = a4[20];
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
                          OUTLINED_FUNCTION_25_0();
                          if (*(v35 + 84) == a3)
                          {
                            v10 = v34;
                            v11 = a4[21];
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
                            OUTLINED_FUNCTION_25_0();
                            if (*(v37 + 84) == a3)
                            {
                              v10 = v36;
                              v11 = a4[26];
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
                              OUTLINED_FUNCTION_25_0();
                              if (*(v39 + 84) == a3)
                              {
                                v10 = v38;
                                v11 = a4[27];
                              }

                              else
                              {
                                if (a3 == 0x7FFFFFFF)
                                {
                                  *(a1 + a4[28]) = (a2 - 1);
                                  return;
                                }

                                sub_1D560D838();
                                OUTLINED_FUNCTION_25_0();
                                if (*(v41 + 84) == a3)
                                {
                                  v10 = v40;
                                  v11 = a4[29];
                                }

                                else
                                {
                                  v10 = sub_1D5610088();
                                  v11 = a4[30];
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

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1D4E8CE14(uint64_t a1)
{
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
}

uint64_t sub_1D4E8CE44()
{
  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D4E8CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8CF78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8D024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51D53E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D050@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPin.position.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
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

uint64_t sub_1D4E8D1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
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

uint64_t sub_1D4E8D2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
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

uint64_t sub_1D4E8D390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
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

uint64_t sub_1D4E8D4B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4E8D540(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E8D5C0@<X0>(uint64_t *a1@<X8>)
{
  result = CreditArtist.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4E8D610@<X0>(uint64_t *a1@<X8>)
{
  result = CreditArtist.roleNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4E8D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5613D28();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D4E8D708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D5613D28();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D4E8D7B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E8D7F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4E8D8B8()
{

  OUTLINED_FUNCTION_13_57();

  return swift_deallocObject();
}

uint64_t sub_1D4E8D9A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
      v8 = *(a3 + 24);
    }

    v9 = OUTLINED_FUNCTION_152(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1D4E8DA74()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
      v7 = *(v4 + 24);
    }

    v8 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4E8DB3C(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v9 = *(a3 + 64);
    }

    v10 = OUTLINED_FUNCTION_152(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void sub_1D4E8DC24()
{
  OUTLINED_FUNCTION_69_0();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_25_0();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
      v7 = *(v4 + 64);
    }

    v8 = OUTLINED_FUNCTION_152(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1D4E8DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
      v12 = *(a3 + 40);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1D4E8DDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 28);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
      v14 = *(a4 + 40);
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D4E8DFC0()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FEF88();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8E010()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FED60();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for MusicPin(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v11 + 84) != a2)
    {
      v13 = *(v3 + *(a3 + 24) + 8);
      if (v13 > 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1D4E8E124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_147();
  sub_1D560C368();
  OUTLINED_FUNCTION_25_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for MusicPin(0);
    OUTLINED_FUNCTION_25_0();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = -a2;
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D4E8E20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_14();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D4E8E298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D4E8E35C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_40_13();

  return swift_deallocObject();
}

void *sub_1D4E8E390()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FF930();
  *v0 = result;
  return result;
}

uint64_t sub_1D4E8E3BC()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D51FF81C();
  *v0 = result;
  return result;
}