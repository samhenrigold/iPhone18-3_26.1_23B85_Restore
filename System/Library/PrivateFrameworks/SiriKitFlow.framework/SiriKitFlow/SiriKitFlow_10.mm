uint64_t sub_1DCC0FF6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC0EC6C(a1);
}

uint64_t sub_1DCC10004()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC0EDC8();
}

uint64_t sub_1DCC100AC()
{
  OUTLINED_FUNCTION_42();
  v0[18] = v1;
  v0[19] = v2;
  OUTLINED_FUNCTION_22_10();
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = sub_1DCC1016C;

  return v7(v0 + 8);
}

uint64_t sub_1DCC1016C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC1026C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 104) = 0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  v4 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 40) = v3;
  *(v0 + 56) = 0;
  v4(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC1030C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 176) = 1;
  *(v0 + 16) = *(v0 + 168);
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  *(v0 + 24) = *(v0 + 112);
  *(v0 + 40) = v2;
  *(v0 + 56) = 1;
  v1(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

id sub_1DCC103A8(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
      sub_1DD0DCF8C();
    case 1:

      break;
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCC103E8(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:

      break;
    case 1:

      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCC1044C()
{
  OUTLINED_FUNCTION_42();
  v0[24] = v1;
  v0[25] = v2;
  OUTLINED_FUNCTION_22_10();
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[26] = v4;
  *v4 = v5;
  v4[1] = sub_1DCC1050C;

  return v7(v0 + 10);
}

uint64_t sub_1DCC1050C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC1060C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 136) = 0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  v4 = *(v0 + 120);
  *(v0 + 176) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = v1;
  *(v0 + 56) = v4;
  *(v0 + 40) = v3;
  *(v0 + 24) = v2;
  *(v0 + 72) = 0;
  v5(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA2288, &unk_1DD0E4840);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC106B8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 160);
  *(v0 + 24) = *(v0 + 144);
  *(v0 + 224) = 1;
  v2 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 216);
  *(v0 + 40) = v1;
  *(v0 + 56) = *(v0 + 176);
  *(v0 + 72) = 1;
  v2(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA2288, &unk_1DD0E4840);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeConfirmationPrompt(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AD3C;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t sub_1DCC10DD0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCC10EB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for AppConfirmationResponse.AppConfirmationAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC103A8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCC103E8(v5, v6);
  return a1;
}

uint64_t assignWithTake for AppConfirmationResponse.AppConfirmationAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCC103E8(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppConfirmationResponse.AppConfirmationAction(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppConfirmationResponse.AppConfirmationAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC110AC(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCC110C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DCC110F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCC11158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_86Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCC11274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v2);
  return sub_1DCC0B2EC(a1);
}

uint64_t sub_1DCC112E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static AppDisambiguationFlowUtil.makeAppDisambiguationFlow<A>(strategy:apps:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_42_2();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v27 = v14;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v28 = v26;
    *v15 = 134218242;
    *(v15 + 4) = sub_1DCB08B14(a2);

    *(v15 + 12) = 2080;
    v16 = sub_1DD0DD1FC();
    v17 = MEMORY[0x1E12A6960](a2, v16);
    v19 = v7;
    v20 = v5;
    v21 = a3;
    v22 = sub_1DCB10E9C(v17, v18, &v28);

    *(v15 + 14) = v22;
    a3 = v21;
    v5 = v20;
    v7 = v19;
    _os_log_impl(&dword_1DCAFC000, v13, v27, "AppDisambiguationFlow: Make App Disambiguation Flow : Count(%ld) : %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D68, &unk_1DD0E48A0);
  (*(v11 + 16))(v5, a1, v7);
  v23 = qword_1EDE4F6A8;
  swift_bridgeObjectRetain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppDisambiguationStrategyAdapter(0, v7, a5, v24);
  v25 = qword_1EDE57DF8;
  v29 = type metadata accessor for RefreshableSiriKitEventSending();
  v30 = &off_1F5873940;
  *&v28 = v25;
  sub_1DCC09F80(v5, a2, &v28);
  sub_1DCB17CA0(a3, &v28);
  sub_1DD0DCF8C();
}

void sub_1DCC11700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a7;
  v16[5] = 0;
  v16[6] = a2;
  v16[7] = a3;
  sub_1DD0DCF8C();
}

void AppDisambiguationStrategy.makeDisambiguationErrorResponse(apps:error:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  v11 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_41_4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0E48D0;
  v12[5] = 0;
  v12[6] = a3;
  v12[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC118F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4, v15, v16, v17, v18, a9, a10);
}

uint64_t AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DCC11AA8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCC11BC4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCC33894();
}

uint64_t sub_1DCC11CE0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)();
}

uint64_t AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t AppDisambiguationStrategyAsync.parseDisambiguationResponseWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC11E14()
{
  OUTLINED_FUNCTION_42();
  v1 = (*(v0[4] + 8))(v0[2], v0[3]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1DCC11E84()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_20();
  return v2(v1);
}

uint64_t sub_1DCC11EDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC11EF4()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC11FC0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 16))(a3, sub_1DCC11344, v14, v11, v12);
}

uint64_t sub_1DCC12144(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1215C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC12228(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 24))(a3, sub_1DCC11344, v14, v11, v12);
}

uint64_t sub_1DCC123AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC123C4()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC12490(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 32))(a3, sub_1DCC11344, v14, v11, v12);
}

uint64_t sub_1DCC12614(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1262C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC126F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 40))(a3, sub_1DCC11344, v14, v11, v12);
}

uint64_t sub_1DCC1287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC12894()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[1].i64[1];
  v2 = swift_task_alloc();
  v0[3].i64[0] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCC12984(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  (*(v13 + 48))(a3, v18, sub_1DCC111BC, v15, v12, v13);
}

uint64_t sub_1DCC12B3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC11EDC(a1, a2);
}

uint64_t sub_1DCC12BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC12144(a1, a2);
}

uint64_t sub_1DCC12C94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC123AC(a1, a2);
}

uint64_t sub_1DCC12D40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC12614(a1, a2);
}

uint64_t sub_1DCC12DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC1287C(a1, a2, a3);
}

uint64_t sub_1DCC12EA0()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD113F50);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t static AppDisambiguationResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        return 0;
      }

      v11 = OUTLINED_FUNCTION_20();

      return sub_1DCC0D128(v11, v12);
    case 2:
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_12;
    case 3:
      if (v5 != 3)
      {
        return 0;
      }

      v9 = OUTLINED_FUNCTION_20();

      return sub_1DCD0632C(v9, v10);
    case 4:
      if (v2)
      {
        if (v5 != 4 || v4 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 4 || v4 != 0)
      {
        return 0;
      }

      return 1;
    default:
      if (*(a2 + 24))
      {
        return 0;
      }

LABEL_12:
      sub_1DD0DD1FC();
      sub_1DCC15D8C(v4, v5);
      sub_1DCC15D8C(v2, v3);
      OUTLINED_FUNCTION_20();
      v7 = sub_1DD0DD1EC();
      sub_1DCC15DCC(v4, v5);
      sub_1DCC15DCC(v2, v3);
      return v7 & 1;
  }
}

uint64_t sub_1DCC13094(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return sub_1DCC0D128(a1, a3);
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return sub_1DCD0632C(a1, a3);
    case 4:
      if (a1)
      {
        return a4 == 4 && a3 == 1;
      }

      return a4 == 4 && !a3;
    default:
      if (a4)
      {
        return 0;
      }

LABEL_11:
      sub_1DD0DD1FC();
      sub_1DCC15D8C(a3, v4);
      sub_1DCC15D8C(a1, v6);
      v9 = sub_1DD0DD1EC();
      sub_1DCC15DCC(a3, v4);
      sub_1DCC15DCC(a1, v6);
      return v9 & 1;
  }
}

void sub_1DCC1320C(uint64_t a1, char a2)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

unint64_t static AppDisambiguationResponse.disambiguate(apps:)(uint64_t a1)
{
  if (sub_1DCB08B14(a1))
  {
    if (sub_1DCB08B14(a1) != 1)
    {
      type metadata accessor for AppDisambiguationResponse();
      OUTLINED_FUNCTION_33_0();
      v19 = swift_allocObject();
      *(OUTLINED_FUNCTION_50_3(v19) + 24) = 1;

      return v1;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "App disambiguation given single item, treating as confirmation)", v6, 2u);
      OUTLINED_FUNCTION_80();
    }

    v1 = a1 & 0xC000000000000001;
    sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) == 0)
    {
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, a1);
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_33_0();
    v7 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_50_3(v7);
    v18 = 2;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "App disambiguation given empty list)", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v1 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000023, 0x80000001DD113D40);
    OUTLINED_FUNCTION_25_5();
    v14 = sub_1DCC16724(v12, v13, &protocol conformance descriptor for CommandFailure);
    OUTLINED_FUNCTION_50_4(v14);
    *v15 = v1;
    type metadata accessor for AppDisambiguationResponse();
    OUTLINED_FUNCTION_33_0();
    v16 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_50_3(v16);
    v18 = 3;
  }

  *(v17 + 24) = v18;
  return v1;
}

uint64_t sub_1DCC134E0(uint64_t a1)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 4;
  return result;
}

uint64_t static AppDisambiguationResponse.error(_:)(void *a1)
{
  type metadata accessor for AppDisambiguationResponse();
  OUTLINED_FUNCTION_33_0();
  v3 = swift_allocObject();
  *(OUTLINED_FUNCTION_50_3(v3) + 24) = 3;
  v4 = a1;
  return v1;
}

uint64_t sub_1DCC1358C(id a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1DD0DEC1C();

      strcpy(v10, ".disambiguate(");
      HIBYTE(v10[1]) = -18;
      v9 = sub_1DD0DD1FC();
      v6 = MEMORY[0x1E12A6960](a1, v9);
      goto LABEL_11;
    case 2:
      v3 = 0x6D7269666E6F632ELL;
      v4 = 0xE900000000000028;
      goto LABEL_8;
    case 3:
      strcpy(v10, ".error(");
      v10[1] = 0xE700000000000000;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v8 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v8);

      return v10[0];
    case 4:
      if (a1)
      {
        return 0x65726F6E67692ELL;
      }

      else
      {
        return 0x6C65636E61632ELL;
      }

    default:
      v3 = 0x287463656C65732ELL;
      v4 = 0xE800000000000000;
LABEL_8:
      v10[0] = v3;
      v10[1] = v4;
      sub_1DD0DD1FC();
      sub_1DCC16724(&qword_1EDE46330, MEMORY[0x1E69CE208], MEMORY[0x1E69CE218]);
      v6 = sub_1DD0DF03C();
LABEL_11:
      MEMORY[0x1E12A6780](v6);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      return v10[0];
  }
}

uint64_t AppDisambiguationResponse.__deallocating_deinit()
{
  sub_1DCC15DCC(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_33_0();

  return swift_deallocClassInstance();
}

void sub_1DCC13834(uint64_t a1)
{
  v4 = *v2;
  v5 = type metadata accessor for Input(0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_42_2();
  (*(*(v4 + 88) + 8))(a1, *(v4 + 80));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC13BA4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC13BB8()
{
  v1 = *(*(v0 + 24) + *(**(v0 + 24) + 120));
  if (v1)
  {
    if (!sub_1DCC0CCE4())
    {
      v13 = *(v0 + 16);
      *v13 = v1;
      *(v13 + 8) = 0;
      OUTLINED_FUNCTION_29();
      sub_1DD0DCF8C();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DCAFC000, v3, v4, "AppConfirmationStrategyAdapter.parseDisambiguationResponse called while its disambiguationAction value is set to nil", v5, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v6 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000074, 0x80000001DD113FD0);
    OUTLINED_FUNCTION_25_5();
    v9 = sub_1DCC16724(v7, v8, &protocol conformance descriptor for CommandFailure);
    OUTLINED_FUNCTION_50_4(v9);
    *v10 = v6;
  }

  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCC13DA8()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v1[11] = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_24_0();
  v1[12] = v3;
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC13E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v11 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v11);
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v10 + 120) = v12;
  *v12 = v13;
  v12[1] = sub_1DCC13F9C;
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCC13F9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_32_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCC140C8()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 47;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14174()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[11];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCC142BC()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v0;
  sub_1DCF41428();
  sub_1DCF41428();
  if ((v3 & 0xC000000000000001) == 0 || v1 == v2)
  {
  }

  else
  {
    if (v1 >= v2)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_1DD0DD1FC();

    v5 = v1;
    do
    {
      v6 = v5 + 1;
      sub_1DD0DEC4C();
      v5 = v6;
    }

    while (v2 != v6);
  }

  if (v3 >> 62)
  {
LABEL_16:
    sub_1DCB0E9D8(v0, &qword_1ECCA1D90, &unk_1DD0E4C70);
    v0 = sub_1DD0DEE4C();
    v3 = v9;
    v1 = v10;
    v2 = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v0 = (v3 & 0xFFFFFFFFFFFFFF8);
  v3 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v2 = (2 * v2) | 1;
  if ((v2 & 1) == 0)
  {
LABEL_14:
    sub_1DCC16784(v0, v3, v1, v2, MEMORY[0x1E69CE208]);
    v8 = v7;
LABEL_23:
    swift_unknownObjectRelease();
    return v8;
  }

LABEL_17:
  sub_1DD0DF0DC();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v2 >> 1, v1))
  {
    goto LABEL_27;
  }

  if (v13 != (v2 >> 1) - v1)
  {
LABEL_28:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  return v8;
}

uint64_t sub_1DCC14494()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v1[11] = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_24_0();
  v1[12] = v3;
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC14568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v11 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v11);
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v10 + 120) = v12;
  *v12 = v13;
  v12[1] = sub_1DCC14688;
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCC14688()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_32_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCC147B4()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 9;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14860()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v1[11] = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_24_0();
  v1[12] = v3;
  v4 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_20_8(v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC14934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v11 = sub_1DCC142BC();
  OUTLINED_FUNCTION_31_5(v11);
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v10 + 120) = v12;
  *v12 = v13;
  v12[1] = sub_1DCC14A54;
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCC14A54()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_32_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCC14B80()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_14_14();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CE250]);
  *(v0 + 58) = 10;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_11(v3);

  return sub_1DCC152F0();
}

uint64_t sub_1DCC14C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC14C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v10 + 40) = v11;
  *v11 = v12;
  v11[1] = sub_1DCBEA100;
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCC14DB0()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[9] = *v0;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[10] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[11] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC14E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v11 = v10[8];
  OUTLINED_FUNCTION_13();
  v10[12] = *(v11 + *(v12 + 104));
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v10[13] = v13;
  *v13 = v14;
  v13[1] = sub_1DCC14F9C;
  OUTLINED_FUNCTION_47();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCC14F9C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_32_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCC150C0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = (v0[8] + *(*v0[8] + 112));
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *v2 = 6;
  *(v2 + 8) = 0x54746E6572727543;
  *(v2 + 16) = 0xEB000000006B7361;
  if (sub_1DCB08B14(v1))
  {
    v4 = v0[12];
    v5 = v4 & 0xC000000000000001;
    sub_1DCB35460(0, (v4 & 0xC000000000000001) == 0, v4);
    if (!v5)
    {
      sub_1DD0DCF8C();
    }

    v6 = MEMORY[0x1E12A72C0](0, v0[12]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[11];
  type metadata accessor for SiriKitEvent(0);
  *(v7 + 24) = v6;
  bzero((v7 + 32), 0x88uLL);
  swift_getErrorValue();
  *(v7 + 168) = sub_1DCEE0FD4(v0[3], v0[4]);
  *(v7 + 176) = v8;
  *(v7 + 184) = 8;
  swift_storeEnumTagMultiPayload();
  v0[14] = SiriKitEvent.__allocating_init(_:builder:)(v7, 0);
  OUTLINED_FUNCTION_24_0();
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_35_7(v10);

  return v13(v11);
}

uint64_t sub_1DCC152F0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 56) = v5;
  v6 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 80) = v6;
  OUTLINED_FUNCTION_20_0(v6);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  OUTLINED_FUNCTION_20_0(v7);
  *(v1 + 104) = OUTLINED_FUNCTION_38();
  *(v1 + 128) = *v3;
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCC153BC()
{
  v35 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((sub_1DCB651D0(v2) & 1) == 0)
  {
LABEL_8:

    OUTLINED_FUNCTION_29();

    return v21();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v7 = 136315394;
    v34 = v6;
    v8 = ActivityType.rawValue.getter();
    v10 = sub_1DCB10E9C(v8, v9, &v33);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DCB10E9C(0x54746E6572727543, 0xEB000000006B7361, &v33);
    _os_log_impl(&dword_1DCAFC000, v4, v5, "AppResolutionFlow logging Task step: %s for Task type: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 64);
  v13 = *(v0 + 56);
  v14 = *(**(v0 + 72) + 112);
  v15 = *(v0 + 128);
  v16 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v11, v13, v16);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  v19 = v1[3];
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  (*(v18 + 8))(v19, v18);
  if (sub_1DCE0669C(v15, 10))
  {
    v20 = *(v0 + 104);
    sub_1DCB0E9D8(v0 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
    sub_1DCB0E9D8(v20, &qword_1ECCA2278, &qword_1DD0E4830);
    goto LABEL_8;
  }

  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 88);
  v26 = (*(v0 + 72) + v14);
  v27 = *(v0 + 128);
  if (sub_1DCE0669C(v27, 10))
  {
    v27 = 25;
  }

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
  *v23 = v27;
  *(v23 + 8) = 0x54746E6572727543;
  *(v23 + 16) = 0xEB000000006B7361;
  *(v23 + 24) = 29;
  sub_1DCB09910(v0 + 16, v23 + 32, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v23 + 72) = 0;
  sub_1DCB09910(v24, v23 + v28, &qword_1ECCA2278, &qword_1DD0E4830);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriKitEvent(0);
  sub_1DCC110F8(v23, v25, type metadata accessor for SiriKitEventPayload);
  *(v0 + 112) = SiriKitEvent.__allocating_init(_:builder:)(v25, 0);
  sub_1DCC11158(v23, type metadata accessor for SiriKitEventPayload);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_8();
  v32 = (v29 + *v29);
  v30 = swift_task_alloc();
  *(v0 + 120) = v30;
  *v30 = v0;
  v31 = OUTLINED_FUNCTION_35_7(v30);

  return v32(v31);
}

uint64_t sub_1DCC15880()
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t sub_1DCC15930()
{
  sub_1DCC15880();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC159A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC13BA4(a1);
}

uint64_t sub_1DCC15A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC13DA8();
}

uint64_t sub_1DCC15AE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14494();
}

uint64_t sub_1DCC15B8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14860();
}

uint64_t sub_1DCC15C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCC14C2C(a1);
}

uint64_t sub_1DCC15CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC14DB0();
}

id sub_1DCC15D8C(id result, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:
      sub_1DD0DCF8C();
    case 1:

      break;
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCC15DCC(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 2:

      break;
    case 1:

      break;
    case 3:

      break;
    default:
      return;
  }
}

_BYTE *storeEnumTagSinglePayload for AppDisambiguationFlowUtil(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationPrompt(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_47();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AD3C;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t sub_1DCC165BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for AppDisambiguationResponse.AppDisambiguationAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC15D8C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCC15DCC(v5, v6);
  return a1;
}

uint64_t assignWithTake for AppDisambiguationResponse.AppDisambiguationAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCC15DCC(v4, v5);
  return a1;
}

uint64_t sub_1DCC16724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DCC16784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != a3)
    {
      a5(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_13();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_1_15(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2398, &unk_1DD0E4C80);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = a1;
  *(v3 + 64) = sub_1DCC17088;
  *(v3 + 72) = v2;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v4 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for AnyAppResolutionFlow(v4, v5, v6, v7);
  sub_1DD0DCF8C();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A, B>(strategy:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Input(0);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_22();
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow(v16, v17, v18, v19);
  v21 = type metadata accessor for AppResolutionOnDeviceFlowStrategyAsyncAdapter(0, a3, a5, v20);
  (*(v11 + 16))(v15, a1, a3);
  v22 = sub_1DCC23540(v15);
  v23[14] = v21;
  v23[15] = &off_1F5854208;
  v23[11] = v22;
  sub_1DCB82888();
}

{
  v7 = type metadata accessor for Input(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_22();
  v10 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow(v10, v11, v12, v13);
  v15[3] = a3;
  v15[4] = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_112();
  (*(v14 + 16))();
  sub_1DCB82888();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A, B, C>(appResolutionStrategy:authenticationStrategy:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for Input(0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_22();
  v12 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow(v12, v13, v14, v15);
  v17[3] = a4;
  v17[4] = a7;
  __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_112();
  (*(v16 + 16))();
  sub_1DCB82888();
}

void static AppFlowFactory.makeOnDeviceAppResolutionFlow<A>(resolving:appResolutionStrategy:unlockDeviceStrategy:protectedAppCheckStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Input(0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_22();
  v9 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for AppResolutionOnDeviceFlow(v9, v10, v11, v12);
  sub_1DCB17D04(a2, v13);
  sub_1DCB82888();
}

void sub_1DCC17010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_project_boxed_opaque_existential_1(a2, v9);

  sub_1DCC175E4(a1, v11, a3, a4, a5, v9, v10);
}

void sub_1DCC17098(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCC171B0()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "DefaultUnlockDeviceFlowStrategy rendering default unlock prompt", v4, 2u);
    MEMORY[0x1E12A8390](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1DCC17300;

  return sub_1DCCDB478();
}

uint64_t sub_1DCC17300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DCC17418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCC17190(a1);
}

uint64_t sub_1DCC174B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  return v3;
}

uint64_t sub_1DCC174D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppFlowFactory(_BYTE *result, int a2, int a3)
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

void sub_1DCC175E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = a6;
  v12[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a6);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE46630;
  sub_1DCB4E718(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v11[3] = type metadata accessor for RefreshableDeviceState();
  v11[4] = &protocol witness table for RefreshableDeviceState;
  v11[0] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC1795C(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 16);
  if (v5 && (v6 = [v5 appNameMap]) != 0)
  {
    v7 = v6;
    v8 = sub_1DD0DDE6C();

    v1 = a1;
    v9 = sub_1DD0DB06C();
    sub_1DCB6B180(v9, v10, v8);
    OUTLINED_FUNCTION_0_13();

    if (!v2)
    {
      sub_1DD0DB06C();
      v12 = v11;
      sub_1DCB1C4D8();
      v1 = sub_1DD0DEA3C();
      v14 = v13;

      sub_1DCB6B180(v1, v14, v8);
      OUTLINED_FUNCTION_0_13();

      if (!v12)
      {
        v16 = sub_1DD0DB08C();
        if (v17)
        {
          v18 = v16;
          v19 = v17;

          sub_1DCB6B180(v18, v19, v8);
          OUTLINED_FUNCTION_0_13();
          swift_bridgeObjectRelease_n();
        }

        v1 = v3;
        sub_1DCB2D10C();
        OUTLINED_FUNCTION_0_13();
      }
    }
  }

  else
  {
    sub_1DCB2D10C();
    OUTLINED_FUNCTION_0_13();
  }

  return v1;
}

uint64_t sub_1DCC17B38()
{
  OUTLINED_FUNCTION_1_16();
  if (v4 && (v5 = v3, v6 = sub_1DCB21038(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_4_12();
    sub_1DCC174D4(v9 + *(v10 + 72) * v8, v0);
    v11 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    type metadata accessor for Input(0);
    v11 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1DCC17BD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_1_16();
  if (v9 && (v10 = v8, v11 = sub_1DCB21038(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    a4(0);
    OUTLINED_FUNCTION_4_12();
    (*(v15 + 16))(v4, v14 + *(v15 + 72) * v13, v10);
    v16 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    a4(0);
    v16 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

double sub_1DCC17C88()
{
  OUTLINED_FUNCTION_1_16();
  if (v4 && (v5 = v3, v6 = sub_1DCB21038(v1, v2), (v7 & 1) != 0))
  {
    sub_1DCB17CA0(*(v5 + 56) + 40 * v6, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return result;
}

void *sub_1DCC17CF4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB5B97C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DCC17D3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1DCC5F934(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_5_14(v2);
  }

  else
  {
    return 0;
  }
}

double sub_1DCC17D9C()
{
  OUTLINED_FUNCTION_1_16();
  if (v5 && (v6 = v3, v11 = v4, v7 = sub_1DCB21038(v1, v2), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 48 * v7;

    v11(v9, v0);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_1DCC17E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_5_14(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC17E88(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1DCC5F9DC(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

id sub_1DCC18008(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  return sub_1DCB89BB0(a1, a2, 0);
}

id sub_1DCC181F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DCC18008(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      sub_1DCC18364();
      swift_willThrowTypedImpl();

      return a1;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Error initializing INAppInfo, missing app record", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

unint64_t sub_1DCC18364()
{
  result = qword_1ECCA23A8;
  if (!qword_1ECCA23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA23A8);
  }

  return result;
}

uint64_t sub_1DCC183C8(char a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1 & 1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC1841C()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1DCC184B0;

  return sub_1DCC18804();
}

uint64_t sub_1DCC184B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v8 = *v4;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v6[5] = v2;
  v6[6] = v10;

  if (!v3)
  {
    v13 = swift_task_alloc();
    v6[7] = v13;
    *v13 = v8;
    v13[1] = sub_1DCC18628;

    sub_1DCC19E5C();
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1DCC18628()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1DCC187A4;
  }

  else
  {
    v7 = sub_1DCC1872C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC1872C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 40) = 3;
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC187A4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC18804()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1DCC18890, 0, 0);
}

uint64_t sub_1DCC18890()
{
  v32 = v0;
  v31[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = v1;

  v3 = sub_1DCD14AE4(2);
  v5 = v4;
  v6 = sub_1DCD14AE4(0);
  v10 = v9;
  v29 = v6;
  v11 = sub_1DCC6A1F8(0xD000000000000013, 0x80000001DD1142B0);
  if (!v11)
  {
    v11 = sub_1DD0DDE9C();
  }

  v12 = v11;
  *(v0 + 72) = v11;
  v13 = sub_1DCC6A084();
  *(v0 + 112) = v13;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();

  v30 = v12;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136315906;
    *(v17 + 4) = sub_1DCB10E9C(v3, v5, v31);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1DCB10E9C(v29, v10, v31);
    *(v17 + 22) = 2080;
    v18 = sub_1DD0DDE7C();
    v20 = sub_1DCB10E9C(v18, v19, v31);

    *(v17 + 24) = v20;
    *(v17 + 32) = 1024;
    *(v17 + 34) = (v13 == 2) | v13 & 1;
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Handling AppIntentBehaviorResponse with bundleId: %s, appIntentId: %s, appIntentParameters: %s, openWhenRun: %{BOOL}d", v17, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v22 = sub_1DD0DDF8C();

  v23 = sub_1DD0DDF8C();

  *(v0 + 40) = 0;
  v24 = [v21 actionForBundleIdentifier:v22 andActionIdentifier:v23 error:v0 + 40];
  *(v0 + 80) = v24;

  v25 = *(v0 + 40);
  if (v24)
  {
    v26 = v25;
    v27 = swift_task_alloc();
    *(v0 + 88) = v27;
    *v27 = v0;
    v27[1] = sub_1DCC18D5C;

    return sub_1DCC190D0(v30, v24);
  }

  else
  {
    v28 = v25;

    sub_1DD0DAE0C();

    swift_willThrow();

    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DCC18D5C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {
    v6 = sub_1DCC1903C;
  }

  else
  {
    *(v4 + 104) = a1;
    v6 = sub_1DCC18EC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCC18EC4()
{
  v1 = (*(v0 + 112) == 2) | *(v0 + 112);
  v2 = [objc_opt_self() policyWithActionMetadata_];
  sub_1DCB10E5C(0, &qword_1ECCA2400, 0x1E69AC948);
  v3 = sub_1DD0DE2DC();

  v4 = [v2 actionWithParameters_];

  v5 = [v4 actionWithOpenWhenRun_];
  swift_setDeallocating();

  v6 = *(v0 + 8);
  v7 = *(v0 + 80);

  return v6(v5, v7);
}

uint64_t sub_1DCC1903C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC190D0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC190E8()
{
  v1 = [*(v0 + 192) parameters];
  sub_1DCB10E5C(0, &qword_1ECCA23F0, 0x1E69AC688);
  v2 = sub_1DD0DE2EC();

  v3 = 0;
  v78 = sub_1DCB08B14(v2);
  v4 = MEMORY[0x1E69E7CC8];
LABEL_2:
  while (2)
  {
    while (2)
    {
      *(v0 + 208) = v4;
      for (i = v3; ; ++i)
      {
        if (v78 == i)
        {
          v38 = *(v0 + 184);

          v39 = MEMORY[0x1E69E7CC0];
          *(v0 + 176) = MEMORY[0x1E69E7CC0];
          v40 = *(v38 + 32);
          *(v0 + 288) = v40;
          v41 = 1 << v40;
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & *(v38 + 64);
          *(v0 + 216) = v39;

          v44 = 0;
          if (!v43)
          {
            goto LABEL_32;
          }

          do
          {
            v45 = *(v0 + 184);
LABEL_36:
            v47 = __clz(__rbit64(v43));
            v43 &= v43 - 1;
            v48 = v47 | (v44 << 6);
            v49 = (*(v45 + 48) + 16 * v48);
            v51 = *v49;
            v50 = v49[1];
            sub_1DCB0DF6C(*(v45 + 56) + 32 * v48, v0 + 112);
            *(v0 + 64) = v51;
            *(v0 + 72) = v50;
            sub_1DCB20B30((v0 + 112), (v0 + 80));

LABEL_37:
            *(v0 + 224) = v43;
            *(v0 + 232) = v44;
            OUTLINED_FUNCTION_47_5();
            v52 = *(v0 + 24);
            *(v0 + 240) = v52;
            v53 = *(v0 + 208);
            if (!v52)
            {

              OUTLINED_FUNCTION_69();
              OUTLINED_FUNCTION_33_5();

              __asm { BRAA            X2, X16 }
            }

            *(v0 + 248) = *(v0 + 16);
            sub_1DCB20B30((v0 + 32), (v0 + 144));
            if (*(v53 + 16))
            {
              v54 = OUTLINED_FUNCTION_48_5();
              v56 = sub_1DCB21038(v54, v55);
              if (v57)
              {
                OUTLINED_FUNCTION_50_5(v56);
                v69 = v68;
                v70 = swift_task_alloc();
                *(v0 + 264) = v70;
                *v70 = v0;
                OUTLINED_FUNCTION_24_7(v70);
                OUTLINED_FUNCTION_48_5();
                OUTLINED_FUNCTION_33_5();

                sub_1DCC1ACBC(v71, v72, v73, v74);
                return;
              }
            }

            if (qword_1EDE4F900 != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v58 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v58, qword_1EDE57E00);

            v59 = sub_1DD0DD8EC();
            v60 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v59, v60))
            {
              OUTLINED_FUNCTION_18_1();
              v61 = swift_slowAlloc();
              v79 = OUTLINED_FUNCTION_83();
              *v61 = 136315138;
              v62 = OUTLINED_FUNCTION_48_5();
              v65 = sub_1DCB10E9C(v62, v63, v64);

              *(v61 + 4) = v65;
              _os_log_impl(&dword_1DCAFC000, v59, v60, "Unable to determine valueType for identifier in actionParameters dictionary: %s", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v79);
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
          }

          while (v43);
LABEL_32:
          while (1)
          {
            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v46 >= (((1 << *(v0 + 288)) + 63) >> 6))
            {
              v43 = 0;
              *(v0 + 80) = 0u;
              *(v0 + 96) = 0u;
              *(v0 + 64) = 0u;
              goto LABEL_37;
            }

            v45 = *(v0 + 184);
            v43 = *(v45 + 8 * v46 + 64);
            ++v44;
            if (v43)
            {
              v44 = v46;
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E12A72C0](i, v2);
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_55;
        }

        v8 = sub_1DCC1EFA4(v6);
        if (!v9)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v18 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v18, qword_1EDE57E00);
          v19 = sub_1DD0DD8EC();
          v20 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_1DCAFC000, v19, v20, "Key in actionParameters dictionary has no name. Ignoring...", v21, 2u);
            OUTLINED_FUNCTION_37();
          }

          goto LABEL_17;
        }

        v10 = v8;
        v11 = v9;
        v12 = [v7 valueType];
        if (v12)
        {
          break;
        }

        v13 = OUTLINED_FUNCTION_49_3();
        v15 = sub_1DCB21038(v13, v14);
        v17 = v16;

        if (v17)
        {
          swift_isUniquelyReferenced_nonNull_native();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23F8, &unk_1DD0E4FB0);
          sub_1DD0DEDCC();

          sub_1DCB10E5C(0, &qword_1ECCA23D8, 0x1E69ACA98);
          sub_1DD0DEDEC();

          goto LABEL_2;
        }

LABEL_17:
      }

      v22 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v23 = OUTLINED_FUNCTION_49_3();
      v25 = sub_1DCB21038(v23, v24);
      if (__OFADD__(v4[2], (v26 & 1) == 0))
      {
        __break(1u);
        goto LABEL_61;
      }

      v27 = v25;
      v77 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23F8, &unk_1DD0E4FB0);
      if ((sub_1DD0DEDCC() & 1) == 0)
      {
        if ((v77 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:

        v36 = v4[7];
        v37 = *(v36 + 8 * v27);
        *(v36 + 8 * v27) = v22;

        continue;
      }

      break;
    }

    v28 = OUTLINED_FUNCTION_49_3();
    v30 = sub_1DCB21038(v28, v29);
    if ((v77 & 1) != (v31 & 1))
    {
LABEL_57:
      OUTLINED_FUNCTION_33_5();

      sub_1DD0DF12C();
      return;
    }

    v27 = v30;
    if (v77)
    {
      goto LABEL_26;
    }

LABEL_23:
    v4[(v27 >> 6) + 8] |= 1 << v27;
    v32 = (v4[6] + 16 * v27);
    *v32 = v10;
    v32[1] = v11;
    *(v4[7] + 8 * v27) = v22;

    v33 = v4[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (!v34)
    {
      v4[2] = v35;
      continue;
    }

    break;
  }

LABEL_61:
  __break(1u);
}

uint64_t sub_1DCC197B0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v0;

  if (v0)
  {

    v5 = sub_1DCC19DEC;
  }

  else
  {
    v5 = sub_1DCC198D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC198D8()
{
  v54 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  objc_allocWithZone(MEMORY[0x1E69AC948]);

  v4 = v1;
  sub_1DCC1EEB4(v3, v2, v1);
  MEMORY[0x1E12A6920]();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_1DD0DE3AC();
    v50 = *(v0 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = *(v0 + 272);
    v52 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v52, qword_1EDE57E00);

    v6 = v5;
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 272);
    if (v9)
    {
      v11 = *(v0 + 240);
      v12 = *(v0 + 248);
      OUTLINED_FUNCTION_42_3();
      v51 = v13;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_83();
      v53 = v16;
      *v14 = 136315394;
      v17 = sub_1DCB10E9C(v12, v11, &v53);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v10;
      *v15 = v1;
      v18 = v10;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "Resolved value for app intent parameter: %s to: %@", v14, 0x16u);
      sub_1DCB16D50(v15, qword_1ECCA8AD0, &qword_1DD0E4F90);
      OUTLINED_FUNCTION_80();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    v19 = *(v0 + 224);
    v1 = *(v0 + 232);
    *(v0 + 216) = v50;
    v20 = qword_1EDE57E00;
    if (v19)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v22 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v22 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        v19 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_14;
      }

      v21 = *(v0 + 184);
      v19 = *(v21 + 8 * v22 + 64);
      ++v1;
      if (v19)
      {
        v1 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    sub_1DD0DE33C();
  }

  while (1)
  {
    v21 = *(v0 + 184);
LABEL_13:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v1 << 6);
    v25 = (*(v21 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    sub_1DCB0DF6C(*(v21 + 56) + 32 * v24, v0 + 112);
    *(v0 + 64) = v26;
    *(v0 + 72) = v27;
    sub_1DCB20B30((v0 + 112), (v0 + 80));

LABEL_14:
    *(v0 + 224) = v19;
    *(v0 + 232) = v1;
    OUTLINED_FUNCTION_47_5();
    v28 = *(v0 + 24);
    *(v0 + 240) = v28;
    v29 = *(v0 + 208);
    if (!v28)
    {

      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X2, X16 }
    }

    v30 = *(v0 + 16);
    *(v0 + 248) = v30;
    sub_1DCB20B30((v0 + 32), (v0 + 144));
    if (*(v29 + 16))
    {
      v31 = sub_1DCB21038(v30, v28);
      if (v32)
      {
        break;
      }
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    __swift_project_value_buffer(v52, v20);

    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_18_1();
      v35 = swift_slowAlloc();
      v36 = v20;
      v37 = OUTLINED_FUNCTION_83();
      v53 = v37;
      *v35 = 136315138;
      v38 = sub_1DCB10E9C(v30, v28, &v53);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_1DCAFC000, v33, v34, "Unable to determine valueType for identifier in actionParameters dictionary: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v20 = v36;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_50_5(v31);
  v42 = v41;
  v43 = swift_task_alloc();
  *(v0 + 264) = v43;
  *v43 = v0;
  OUTLINED_FUNCTION_24_7(v43);
  OUTLINED_FUNCTION_33_5();

  return sub_1DCC1ACBC(v44, v45, v46, v47);
}

uint64_t sub_1DCC19DEC()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCC19E5C()
{
  OUTLINED_FUNCTION_42();
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23E0, &qword_1DD0E4F98);
  v0[9] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[10] = v4;
  v0[11] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23E8, &unk_1DD0E4FA0);
  v0[12] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  OUTLINED_FUNCTION_20_0(v7);
  v0[15] = OUTLINED_FUNCTION_38();
  sub_1DD0DCC3C();
}

void sub_1DCC1A024()
{
  OUTLINED_FUNCTION_51_4();
  v2 = v0;
  v1 = *MEMORY[0x1E69E9840];
  sub_1DD0DCA6C();
}

uint64_t sub_1DCC1A580()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  if (v0)
  {
    v7 = sub_1DCC1AB8C;
  }

  else
  {
    v7 = sub_1DCC1A6B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC1A6B0()
{
  v68 = v0;
  v67[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v64 = *(v0 + 152);
    v66 = *(v0 + 176);
    v62 = *(v0 + 128);
    v23 = *(v0 + 104);
    v58 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = sub_1DCC1EE60();
    v29 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v28);
    OUTLINED_FUNCTION_54_5(v29, v30);

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v58, v24);
  }

  else
  {
    v3 = *(v0 + 16);
    if (v2 == 4)
    {
      v4 = v3;
      v5 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6DC();
      OUTLINED_FUNCTION_55_7();
      v55 = v6;
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 176);
      v9 = *(v0 + 152);
      v10 = *(v0 + 128);
      v11 = *(v0 + 104);
      v63 = *(v0 + 96);
      v65 = *(v0 + 112);
      v12 = *(v0 + 80);
      v61 = *(v0 + 88);
      v57 = *(v0 + 160);
      v60 = *(v0 + 72);
      if (v7)
      {
        OUTLINED_FUNCTION_18_1();
        v51 = v13;
        v53 = v8;
        v14 = swift_slowAlloc();
        v52 = v9;
        v15 = OUTLINED_FUNCTION_83();
        v67[0] = v15;
        *v14 = 136315138;
        v16 = [v4 description];
        v50 = v10;
        v17 = sub_1DD0DDFBC();
        v19 = v18;

        OUTLINED_FUNCTION_55_7();
        v20 = sub_1DCB10E9C(v17, v19, v67);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_1DCAFC000, v5, v55, "Successfully executed app intent: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();

        OUTLINED_FUNCTION_55_7();
        (*(v12 + 8))(v61, v60);
        (*(v11 + 8))(v65, v63);
        v53(v52, v50);
      }

      else
      {

        OUTLINED_FUNCTION_55_7();
        (*(v12 + 8))(v61, v60);
        (*(v11 + 8))(v65, v63);
        v8(v9, v10);
      }

      OUTLINED_FUNCTION_29();
      goto LABEL_12;
    }

    v31 = v3;
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6EC();
    sub_1DCC1EF90(v3, v2);
    v54 = v3;
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_109();
      v67[0] = v34;
      *v1 = 136315138;
      *(v0 + 32) = v3;
      *(v0 + 40) = v2;
      v35 = v31;
      v36 = sub_1DD0DE02C();
      v38 = sub_1DCB10E9C(v36, v37, v67);

      *(v1 + 4) = v38;
      _os_log_impl(&dword_1DCAFC000, v32, v33, "Failed to execute app intent: %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    v39 = *(v0 + 184);
    v40 = *(v0 + 160);
    v64 = *(v0 + 152);
    v66 = *(v0 + 176);
    v62 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(v0 + 88);
    v56 = *(v0 + 96);
    v59 = *(v0 + 112);
    v43 = *(v0 + 72);
    v44 = *(v0 + 80);
    v45 = sub_1DCC1EE60();
    v46 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v45);
    OUTLINED_FUNCTION_54_5(v46, v47);

    sub_1DCC1EF90(v54, v2);
    (*(v44 + 8))(v42, v43);
    (*(v41 + 8))(v59, v56);
  }

  v66(v64, v62);
  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_29();
LABEL_12:

  return v48();
}

uint64_t sub_1DCC1AB8C()
{
  OUTLINED_FUNCTION_90();
  v1 = *(v0 + 160);
  v11 = *(v0 + 152);
  v12 = *(v0 + 176);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v12(v11, v2);
  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCC1ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1ACD8()
{
  v102 = v0;
  v1 = objc_opt_self();
  v2 = [v1 stringValueType];
  sub_1DCB10E5C(0, &qword_1ECCA23D8, 0x1E69ACA98);
  OUTLINED_FUNCTION_21_3();
  v3 = sub_1DD0DE8EC();

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_2_23(v4);
    OUTLINED_FUNCTION_96_0();

    return sub_1DCC1C34C(v5, v6, v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_38_7([v1 doubleValueType]);

    if (v10)
    {
      v11 = swift_task_alloc();
      v0[8] = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_2_23(v11);
      OUTLINED_FUNCTION_96_0();

      return sub_1DCC1C504(v12, v13, v14);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_38_7([v1 BOOLValueType]);

      if (v16)
      {
        v17 = swift_task_alloc();
        v0[9] = v17;
        *v17 = v0;
        OUTLINED_FUNCTION_2_23(v17);
        OUTLINED_FUNCTION_96_0();

        return sub_1DCC1C6F8(v18, v19, v20);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_38_7([v1 intValueType]);

        if (v22)
        {
          v23 = swift_task_alloc();
          v0[10] = v23;
          *v23 = v0;
          OUTLINED_FUNCTION_2_23(v23);
          OUTLINED_FUNCTION_96_0();

          return sub_1DCC1C8B8(v24, v25, v26);
        }

        else
        {
          v28 = OUTLINED_FUNCTION_38_7([v1 int8ValueType]);

          if (v28)
          {
            v29 = swift_task_alloc();
            v0[11] = v29;
            *v29 = v0;
            OUTLINED_FUNCTION_2_23(v29);
            OUTLINED_FUNCTION_96_0();

            return sub_1DCC1CAE8(v30, v31, v32);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_38_7([v1 int16ValueType]);

            if (v34)
            {
              v35 = swift_task_alloc();
              v0[12] = v35;
              *v35 = v0;
              OUTLINED_FUNCTION_2_23(v35);
              OUTLINED_FUNCTION_96_0();

              return sub_1DCC1CCEC(v36, v37, v38);
            }

            else
            {
              v40 = OUTLINED_FUNCTION_38_7([v1 int32ValueType]);

              if (v40)
              {
                v41 = swift_task_alloc();
                v0[13] = v41;
                *v41 = v0;
                OUTLINED_FUNCTION_2_23(v41);
                OUTLINED_FUNCTION_96_0();

                return sub_1DCC1CEF0(v42, v43, v44);
              }

              else
              {
                v46 = OUTLINED_FUNCTION_38_7([v1 int64ValueType]);

                if (v46)
                {
                  v47 = swift_task_alloc();
                  v0[14] = v47;
                  *v47 = v0;
                  OUTLINED_FUNCTION_2_23(v47);
                  OUTLINED_FUNCTION_96_0();

                  return sub_1DCC1D0FC(v48, v49, v50);
                }

                else
                {
                  v52 = OUTLINED_FUNCTION_38_7([v1 URLValueType]);

                  if (v52)
                  {
                    v53 = swift_task_alloc();
                    v0[15] = v53;
                    *v53 = v0;
                    OUTLINED_FUNCTION_2_23(v53);
                    OUTLINED_FUNCTION_96_0();

                    return sub_1DCC1D2E4();
                  }

                  else
                  {
                    v55 = OUTLINED_FUNCTION_38_7([v1 placemarkValueType]);

                    if (v55)
                    {
                      v56 = swift_task_alloc();
                      v0[16] = v56;
                      *v56 = v0;
                      OUTLINED_FUNCTION_2_23(v56);
                      OUTLINED_FUNCTION_96_0();

                      return sub_1DCC1D728(v57, v58, v59);
                    }

                    else
                    {
                      v61 = OUTLINED_FUNCTION_38_7([v1 dateValueType]);

                      if (v61)
                      {
                        v62 = swift_task_alloc();
                        v0[17] = v62;
                        *v62 = v0;
                        OUTLINED_FUNCTION_2_23(v62);
                        OUTLINED_FUNCTION_96_0();

                        return sub_1DCC1DDAC(v63, v64, v65);
                      }

                      else
                      {
                        v67 = [v1 dateComponentsValueType];
                        v68 = sub_1DD0DE8EC();

                        if (v68)
                        {
                          v69 = swift_task_alloc();
                          v0[18] = v69;
                          *v69 = v0;
                          OUTLINED_FUNCTION_2_23(v69);
                          OUTLINED_FUNCTION_96_0();

                          return sub_1DCC1E0CC();
                        }

                        else
                        {
                          objc_opt_self();
                          if (swift_dynamicCastObjCClass())
                          {
                            v71 = swift_task_alloc();
                            v0[19] = v71;
                            *v71 = v0;
                            OUTLINED_FUNCTION_2_23(v71);
                            OUTLINED_FUNCTION_96_0();

                            return sub_1DCC1E760(v72, v73, v74, v75);
                          }

                          else
                          {
                            objc_opt_self();
                            if (!swift_dynamicCastObjCClass())
                            {
                              if (qword_1EDE4F900 != -1)
                              {
                                OUTLINED_FUNCTION_1_2();
                                swift_once();
                              }

                              v83 = v0[5];
                              v84 = sub_1DD0DD8FC();
                              __swift_project_value_buffer(v84, qword_1EDE57E00);

                              v85 = v83;
                              v86 = sub_1DD0DD8EC();
                              LOBYTE(v83) = sub_1DD0DE6EC();

                              if (os_log_type_enabled(v86, v83))
                              {
                                v87 = v0[5];
                                v89 = v0[2];
                                v88 = v0[3];
                                OUTLINED_FUNCTION_42_3();
                                v90 = swift_slowAlloc();
                                v91 = swift_slowAlloc();
                                v92 = OUTLINED_FUNCTION_83();
                                v101 = v92;
                                *v90 = 136315394;
                                *(v90 + 4) = sub_1DCB10E9C(v89, v88, &v101);
                                *(v90 + 12) = 2112;
                                *(v90 + 14) = v87;
                                *v91 = v87;
                                v93 = v87;
                                OUTLINED_FUNCTION_53_1(&dword_1DCAFC000, v94, v95, "Unable to convert value for app intent parameter %s to %@: unsupported value type");
                                sub_1DCB16D50(v91, qword_1ECCA8AD0, &qword_1DD0E4F90);
                                OUTLINED_FUNCTION_80();
                                __swift_destroy_boxed_opaque_existential_1Tm(v92);
                                OUTLINED_FUNCTION_80();
                                OUTLINED_FUNCTION_80();
                              }

                              v96 = sub_1DCC1EE60();
                              v97 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v96);
                              OUTLINED_FUNCTION_19_8(v97, v98);
                              OUTLINED_FUNCTION_29();
                              OUTLINED_FUNCTION_96_0();

                              __asm { BRAA            X1, X16 }
                            }

                            v77 = swift_task_alloc();
                            v0[20] = v77;
                            *v77 = v0;
                            OUTLINED_FUNCTION_2_23(v77);
                            OUTLINED_FUNCTION_96_0();

                            return sub_1DCC1EAD0(v78, v79, v80, v81);
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

uint64_t sub_1DCC1B69C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1B784()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1B86C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1B954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BA3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BB24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BC0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BCF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BEC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1BFAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1C094()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1C17C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1C264()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCC1C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  sub_1DCB0DF6C(v14[10], (v14 + 2));
  v16 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4((v14 + 6), (v14 + 2), MEMORY[0x1E69E7CA0] + 8))
  {
    v45 = v14[6];
    v46 = v14[7];
    [objc_opt_self() stringValueType];
    v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v17, v18);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v45, v46, a12, v16, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v28 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v30, v31);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to a String");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    v34 = sub_1DCC1EE60();
    v35 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v34);
    OUTLINED_FUNCTION_19_8(v35, v36);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1C504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E63B0];
  v17 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v17, v18, v19))
  {
    v50 = v16;
    v49 = *(v14 + 48);
    v20 = [objc_opt_self() doubleValueType];
LABEL_5:
    v20;
    v21 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v21, v22);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, *&v49, a11, a12, v50, a14);
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    v50 = v16;
    v49 = *(v14 + 48);
    v20 = [objc_opt_self() doubleValueType];
    goto LABEL_5;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v32 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v34, v35);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v36, v37, "Unable to convert value for app intent parameter %s to a Double");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v38 = sub_1DCC1EE60();
  v39 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v38);
  OUTLINED_FUNCTION_19_8(v39, v40);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  sub_1DCB0DF6C(*(v14 + 64), v14 + 16);
  v16 = MEMORY[0x1E69E6370];
  if (OUTLINED_FUNCTION_39_4(v14 + 72, v14 + 16, MEMORY[0x1E69E7CA0] + 8))
  {
    LOBYTE(a10) = *(v14 + 72);
    [objc_opt_self() BOOLValueType];
    v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v17, v18);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, v16, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v28 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v30, v31);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v32, v33, "Unable to convert value for app intent parameter %s to a Bool");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    v34 = sub_1DCC1EE60();
    v35 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v34);
    OUTLINED_FUNCTION_19_8(v35, v36);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1C8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E6530];
  v17 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v17, v18, v19))
  {
    OUTLINED_FUNCTION_36_8();
    v51 = v20;
    v21 = [objc_opt_self() intValueType];
LABEL_8:
    v21;
    v24 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v24, v25);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, v51, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  result = swift_dynamicCast();
  if (result)
  {
    v23 = *(v14 + 48);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v23 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v23 < 9.22337204e18)
      {
        a13 = v16;
        v51 = v23;
        v21 = [objc_opt_self() intValueType];
        goto LABEL_8;
      }

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v34 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v34, qword_1EDE57E00);
  v35 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v36, v37);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v38, v39, "Unable to convert value for app intent parameter %s to an Int");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v40 = sub_1DCC1EE60();
  v41 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v40);
  OUTLINED_FUNCTION_19_8(v41, v42);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E7230];
  v17 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v17, v18, v19))
  {
    a13 = v16;
    LOBYTE(a10) = *(v14 + 48);
    v20 = [objc_opt_self() int8ValueType];
LABEL_7:
    v20;
    v22 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v22, v23);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v21 >= -128)
    {
      if (v21 > 127)
      {
        __break(1u);
        return;
      }

      LOBYTE(a10) = v21;
      v20 = [objc_opt_self() int8ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v32 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v34, v35);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v36, v37, "Unable to convert value for app intent parameter %s to an Int8");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v38 = sub_1DCC1EE60();
  v39 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v38);
  OUTLINED_FUNCTION_19_8(v39, v40);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E7290];
  v17 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v17, v18, v19))
  {
    a13 = v16;
    LOWORD(a10) = *(v14 + 48);
    v20 = [objc_opt_self() int16ValueType];
LABEL_7:
    v20;
    v22 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v22, v23);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v21 >= -32768)
    {
      if (v21 >= 0x8000)
      {
        __break(1u);
        return;
      }

      LOWORD(a10) = v21;
      v20 = [objc_opt_self() int16ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v32 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v34, v35);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v36, v37, "Unable to convert value for app intent parameter %s to an Int16");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v38 = sub_1DCC1EE60();
  v39 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v38);
  OUTLINED_FUNCTION_19_8(v39, v40);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC1CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v16 = MEMORY[0x1E69E72F0];
  v17 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v17, v18, v19))
  {
    a13 = v16;
    LODWORD(a10) = *(v14 + 48);
    v20 = [objc_opt_self() int32ValueType];
LABEL_7:
    v20;
    v22 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v22, v23);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
    return;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_5_15();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_36_8();
    if (v21 >= 0xFFFFFFFF80000000)
    {
      if (v21 > 0x7FFFFFFF)
      {
        __break(1u);
        return;
      }

      LODWORD(a10) = v21;
      v20 = [objc_opt_self() int32ValueType];
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v32 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v15 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v34, v35);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v36, v37, "Unable to convert value for app intent parameter %s to an Int32");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v38 = sub_1DCC1EE60();
  v39 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v38);
  OUTLINED_FUNCTION_19_8(v39, v40);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_27_6();

  v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DCC1D0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_35_8();
  v15 = OUTLINED_FUNCTION_5_15();
  if (OUTLINED_FUNCTION_39_4(v15, v16, v17) || (OUTLINED_FUNCTION_35_8(), OUTLINED_FUNCTION_5_15(), swift_dynamicCast()))
  {
    OUTLINED_FUNCTION_36_8();
    v47 = v18;
    [objc_opt_self() int64ValueType];
    v19 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v19, v20);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_27_6();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v47, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_22_12(v30, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (OUTLINED_FUNCTION_245())
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_25_6();
      *(v14 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v32, v33);
      OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v34, v35, "Unable to convert value for app intent parameter %s to an Int64");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    v36 = sub_1DCC1EE60();
    v37 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v36);
    OUTLINED_FUNCTION_19_8(v37, v38);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_27_6();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC1D2E4()
{
  OUTLINED_FUNCTION_42();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v4);
  v0[15] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DAECC();
  v0[16] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[17] = v6;
  v0[18] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCC1D3C0, 0, 0);
}

uint64_t sub_1DCC1D3C0()
{
  sub_1DCB0DF6C(v0[14], (v0 + 2));
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v12, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v13 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v13, v14, v15);
    v11 = "Unable to convert value for app intent parameter %s to a URL: value is not a string";
    goto LABEL_11;
  }

  v2 = v0[15];
  v3 = v0[16];
  sub_1DD0DAEBC();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DCB16D50(v0[15], &unk_1ECCA28C0, &unk_1DD0E1D80);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_22_12(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v6, v7, v8);
    v11 = "Unable to convert value for app intent parameter %s to a URL";
LABEL_11:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v9, v10, v11);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
LABEL_12:

    v16 = sub_1DCC1EE60();
    OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v16);
    *v17 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_29();

    return v18();
  }

  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  (*(v21 + 32))(v20, v0[15], v22);
  v0[9] = v22;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
  (*(v21 + 16))(boxed_opaque_existential_1Tm, v20, v22);
  v24 = [objc_opt_self() URLValueType];
  v25 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v26 = OUTLINED_FUNCTION_34_7(v0 + 6);
  (*(v21 + 8))(v20, v22);

  OUTLINED_FUNCTION_69();

  return v27(v26);
}

uint64_t sub_1DCC1D728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1D740()
{
  OUTLINED_FUNCTION_51_4();
  sub_1DCB0DF6C(*(v0 + 10), (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v1 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_12_13();
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v6, v7);
    v10 = "Unable to convert value for app intent parameter %s to a placemark: value is not a dictionary";
    goto LABEL_40;
  }

  sub_1DCB90D40();
  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 6);
      v3 = *(v0 + 7);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v2 = 0;
  v3 = 0xE000000000000000;
LABEL_11:
  sub_1DCB90D40();

  if (!*(v0 + 5))
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_13();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_1DD0DDE9C();
  }

  sub_1DCB90D40();

  if (!*(v0 + 5))
  {
    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_12_13();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_1DD0DDE9C();
  }

  sub_1DCB90D40();
  if (!*(v0 + 5))
  {

    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_30:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v22 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v22, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v23, v24);
    v10 = "Unable to convert value for app intent parameter %s to a placemark: no latitude found at location.coordinate.latitude";
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_12_13();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v11 = v0[6];
  sub_1DCB90D40();

  if (*(v0 + 5))
  {
    OUTLINED_FUNCTION_12_13();
    if (swift_dynamicCast())
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v11 longitude:v0[6]];
      sub_1DCB10E5C(0, &qword_1ECCA23D0, 0x1E695FC20);
      v13 = v12;
      v32 = sub_1DCC1DD10(v13, v2, v3, 0);
      v14 = objc_opt_self();
      v15 = v32;
      v16 = [v14 placemarkValueType];
      v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
      v19 = OUTLINED_FUNCTION_10_14(v17, v18);

      OUTLINED_FUNCTION_69();

      return v20(v19);
    }
  }

  else
  {

    sub_1DCB16D50((v0 + 2), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_22_12(v25, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v26, v27);
    v10 = "Unable to convert value for app intent parameter %s to a placemark: no longitude found at location.coordinate.longitude";
LABEL_40:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v8, v9, v10);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

LABEL_41:

  v28 = sub_1DCC1EE60();
  v29 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v28);
  OUTLINED_FUNCTION_19_8(v29, v30);
  OUTLINED_FUNCTION_29();

  return v31();
}

id sub_1DCC1DD10(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1DD0DDF8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_1DCC1DDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1DDC4()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  OUTLINED_FUNCTION_5_15();
  if (!swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v2 = OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_22_12(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();
    if (!OUTLINED_FUNCTION_245())
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v4, v5);
    v8 = "Unable to convert value for app intent parameter %s to a date: value is not a dictionary";
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_4();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_5_15();
    if (swift_dynamicCast())
    {

LABEL_12:
      *(v0 + 40) = sub_1DD0DAFDC();
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
      sub_1DD0DAF8C();
      [objc_opt_self() dateValueType];
      v9 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
      OUTLINED_FUNCTION_34_7((v0 + 16));
      OUTLINED_FUNCTION_7_16();

      return v10();
    }
  }

  else
  {
    sub_1DCB16D50(v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_45_4();

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_5_15();
    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1DCB16D50(v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_22_12(v12, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_25_6();
    *(v1 + 4) = OUTLINED_FUNCTION_8_15(4.8149e-34, v13, v14);
    v8 = "Unable to convert value for app intent parameter %s to a date: no value found for secs";
LABEL_20:
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v6, v7, v8);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

LABEL_21:

  v15 = sub_1DCC1EE60();
  v16 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v15);
  OUTLINED_FUNCTION_19_8(v16, v17);
  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1DCC1E0CC()
{
  OUTLINED_FUNCTION_42();
  v0[42] = v1;
  v0[43] = v2;
  v0[41] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C0, &qword_1DD0E4F68);
  OUTLINED_FUNCTION_20_0(v4);
  v0[44] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C8, &unk_1DD0E4F70);
  OUTLINED_FUNCTION_20_0(v5);
  v0[45] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DAC2C();
  v0[46] = v6;
  OUTLINED_FUNCTION_99(v6);
  v0[47] = v7;
  v0[48] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCC1E1D4, 0, 0);
}

uint64_t sub_1DCC1E1D4()
{
  sub_1DCB0DF6C(v0[43], (v0 + 2));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if (OUTLINED_FUNCTION_43_6((v0 + 34), (v0 + 2), v3, v2))
  {
    v5 = v0[44];
    v4 = v0[45];
    v6 = sub_1DD0DB15C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
    v7 = sub_1DD0DB18C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    sub_1DCB90D40();
    if (v0[9])
    {
      OUTLINED_FUNCTION_43_6((v0 + 40), (v0 + 6), v8, MEMORY[0x1E69E6530]);
    }

    else
    {
      sub_1DCB16D50((v0 + 6), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    sub_1DCB90D40();
    if (v0[13])
    {
      OUTLINED_FUNCTION_43_6((v0 + 39), (v0 + 10), v20, MEMORY[0x1E69E6530]);
    }

    else
    {
      sub_1DCB16D50((v0 + 10), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    sub_1DCB90D40();
    if (v0[17])
    {
      if (OUTLINED_FUNCTION_43_6((v0 + 38), (v0 + 14), v21, MEMORY[0x1E69E6530]))
      {
        v22 = v0[38];
        goto LABEL_20;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 14), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v22 = 1;
LABEL_20:
    sub_1DCB90D40();
    if (v0[21])
    {
      if (OUTLINED_FUNCTION_43_6((v0 + 37), (v0 + 18), v23, MEMORY[0x1E69E6530]))
      {
        v24 = v0[37];
        goto LABEL_25;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 18), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v24 = 0;
LABEL_25:
    sub_1DCB90D40();
    if (v0[25])
    {
      if (OUTLINED_FUNCTION_43_6((v0 + 36), (v0 + 22), v25, MEMORY[0x1E69E6530]))
      {
        v26 = v0[36];
        goto LABEL_30;
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 22), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v26 = 0;
LABEL_30:
    sub_1DCB90D40();

    if (v0[29])
    {
      if (OUTLINED_FUNCTION_43_6((v0 + 35), (v0 + 26), v27, MEMORY[0x1E69E6530]))
      {
        v28 = v0[35];
LABEL_35:
        v30 = v0[47];
        v29 = v0[48];
        v31 = v0[46];
        LOBYTE(v48) = 1;
        LOBYTE(v47) = 1;
        LOBYTE(v46) = 1;
        LOBYTE(v45) = 1;
        LOBYTE(v44) = 1;
        LOBYTE(v43) = 1;
        LOBYTE(v42) = 1;
        LOBYTE(v41) = 0;
        v40 = v28;
        LOBYTE(v39) = 0;
        LOBYTE(v38) = 0;
        LOBYTE(v37) = 0;
        sub_1DD0DAC0C();
        v0[33] = v31;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 30);
        (*(v30 + 16))(boxed_opaque_existential_1Tm, v29, v31);
        v33 = [objc_opt_self() dateComponentsValueType];
        v34 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
        v35 = OUTLINED_FUNCTION_34_7(v0 + 30);
        (*(v30 + 8))(v29, v31);

        OUTLINED_FUNCTION_69();

        return v36(v35);
      }
    }

    else
    {
      sub_1DCB16D50((v0 + 26), &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    v28 = 0;
    goto LABEL_35;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_22_12(v9, qword_1EDE57E00);
  v10 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_32_4();
  if (OUTLINED_FUNCTION_245())
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_109();
    *v1 = 136315138;
    v11 = OUTLINED_FUNCTION_21_3();
    *(v1 + 4) = sub_1DCB10E9C(v11, v12, v13);
    OUTLINED_FUNCTION_9_13(&dword_1DCAFC000, v14, v15, "Unable to convert value for app intent parameter %s to a dateComponents: value is not a dictionary");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_37();
  }

  v16 = sub_1DCC1EE60();
  OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v16);
  *v17 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1DCC1E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1E778()
{
  OUTLINED_FUNCTION_51_4();
  v35 = v0;
  sub_1DCB0DF6C(v0[12], (v0 + 2));
  v1 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4((v0 + 6), (v0 + 2), MEMORY[0x1E69E7CA0] + 8))
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[7];
    v32 = v1;
    v30 = v3;
    v31 = v4;
    sub_1DCB10E5C(0, &qword_1ECCA23B8, 0x1E69AC898);
    v33 = 11365;
    v34 = 0xE200000000000000;
    v5 = [v2 enumerationIdentifier];
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    MEMORY[0x1E12A6780](v6, v8);

    sub_1DCC1EA5C(11365, 0xE200000000000000);
    v9 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_34_7(&v30);
    OUTLINED_FUNCTION_7_16();

    return v10();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v12 = v0[12];
    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    sub_1DCB0DF6C(v12, (v0 + 2));

    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_42_3();
      v16 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v16 = 136315394;
      v17 = OUTLINED_FUNCTION_49_3();
      *(v16 + 4) = sub_1DCB10E9C(v17, v18, v19);
      *(v16 + 12) = 2080;
      sub_1DCB0DF6C((v0 + 2), (v0 + 6));
      v20 = sub_1DD0DE02C();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v23 = sub_1DCB10E9C(v20, v22, &v30);

      *(v16 + 14) = v23;
      OUTLINED_FUNCTION_53_1(&dword_1DCAFC000, v24, v25, "Unable to convert value for app intent parameter %s to an EnumerationValue for %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    v26 = sub_1DCC1EE60();
    v27 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v26);
    OUTLINED_FUNCTION_19_8(v27, v28);
    OUTLINED_FUNCTION_29();

    return v29();
  }
}

id sub_1DCC1EA5C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DDF8C();

  v4 = [v2 initWithEnumerationIdentifier_];

  return v4;
}

uint64_t sub_1DCC1EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC1EAE8()
{
  OUTLINED_FUNCTION_51_4();
  v27 = v0;
  sub_1DCB0DF6C(v0[10], (v0 + 2));
  v1 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_39_4((v0 + 6), (v0 + 2), MEMORY[0x1E69E7CA0] + 8))
  {
    v2 = v0[6];
    v3 = v0[7];
    v26[3] = v1;
    v26[0] = v2;
    v26[1] = v3;
    [objc_opt_self() stringValueType];
    v4 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    OUTLINED_FUNCTION_10_14(v4, v5);
    OUTLINED_FUNCTION_7_16();

    return v6();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = v0[11];
    v9 = OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_22_12(v9, qword_1EDE57E00);
    v10 = v8;
    v11 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_32_4();

    if (OUTLINED_FUNCTION_245())
    {
      v12 = v0[11];
      OUTLINED_FUNCTION_42_3();
      v13 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = OUTLINED_FUNCTION_48_5();
      *(v13 + 4) = sub_1DCB10E9C(v14, v15, v16);
      *(v13 + 12) = 2080;
      v17 = [v12 identifier];
      v18 = sub_1DD0DDFBC();
      v20 = v19;

      v21 = sub_1DCB10E9C(v18, v20, v26);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1DCAFC000, v11, v8, "Unable to convert value for app intent parameter %s to an EntityValue of type %s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v22 = sub_1DCC1EE60();
    v23 = OUTLINED_FUNCTION_34(&type metadata for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError, v22);
    OUTLINED_FUNCTION_19_8(v23, v24);
    OUTLINED_FUNCTION_29();

    return v25();
  }
}

uint64_t sub_1DCC1ED58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC1EDB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB22EC8;

  return sub_1DCC1841C();
}

unint64_t sub_1DCC1EE60()
{
  result = qword_1ECCA23B0;
  if (!qword_1ECCA23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA23B0);
  }

  return result;
}

id sub_1DCC1EEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD0DDF8C();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_1DCC1EF18(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_1DD0DF09C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void sub_1DCC1EF90(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1DCC1EFA4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC1F0EC()
{
  result = qword_1ECCA2408;
  if (!qword_1ECCA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2408);
  }

  return result;
}

void *AppNameSemanticConcept.__allocating_init(app:)(uint64_t a1)
{
  v1 = static SAAppInfoFactory.createAppInfo(app:)();
  if (v1 && (v2 = sub_1DCC1F2F4(v1), v3))
  {
    v4 = v2;
    v5 = v3;
    type metadata accessor for AppNameSemanticConcept();
    swift_allocObject();
    v6 = sub_1DCF7C4D4(0x656D614E707061, 0xE700000000000000, v4, v5);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DD0E07C0;
    v8 = sub_1DD0DD1BC();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1DCB34060();
    v11 = 4999502;
    if (v10)
    {
      v11 = v8;
    }

    v12 = 0xE300000000000000;
    if (v10)
    {
      v12 = v10;
    }

    *(v7 + 32) = v11;
    *(v7 + 40) = v12;
    sub_1DD0DD7EC("AppNameSemanticConcept cannot be created because displayAppName is NIL for appIdentifier: '%s'", v14);

    return 0;
  }

  return v6;
}

uint64_t AppNameSemanticConcept.__deallocating_deinit()
{
  SemanticValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC1F2F4(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCC1F3A4()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC1F4DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1DCC1F690;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1DCC1F628;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC1F628()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_1DCC1F690()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DCC1F6F4(uint64_t a1, char a2)
{
  result = 0x6C616974696E692ELL;
  switch(a2)
  {
    case -4:
      result = 0xD00000000000001BLL;
      break;
    case -3:
      result = 0xD000000000000012;
      break;
    case -2:
      result = 0xD000000000000015;
      break;
    case -1:
      return result;
    default:
      sub_1DCB8D4CC(0x6C616974696E692ELL, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      v3 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      sub_1DCB79360(0x6C616974696E692ELL, 0x69u);
      result = 0x74656C706D6F632ELL;
      break;
  }

  return result;
}

unint64_t sub_1DCC1F884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  sub_1DCB09910(a1, &v12 - v8, a2, a3);
  v10 = 0x646574726174732ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_13_10();
      v10 = 0x65646E7573696D2ELL;
      break;
    case 2u:
      OUTLINED_FUNCTION_13_10();
      v10 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      sub_1DCB0E9D8(v9, a2, a3);
      v10 = 0x726F7272652ELL;
      break;
    case 4u:
      break;
    case 5u:
      v10 = 0x5374706D6F72702ELL;
      break;
    case 6u:
      v10 = 0x61507974706D652ELL;
      break;
    case 7u:
      v10 = 0x6C6C65636E61632ELL;
      break;
    default:
      OUTLINED_FUNCTION_13_10();
      v10 = 0xD000000000000011;
      break;
  }

  OUTLINED_FUNCTION_13_10();
  return v10;
}

uint64_t sub_1DCC1FA50(uint64_t a1)
{
  sub_1DCB09910(a1, &v3, &qword_1ECCA1F60, &unk_1DD0E5250);
  if (v5)
  {
    sub_1DCB0E9D8(&v3, &qword_1ECCA1F60, &unk_1DD0E5250);
    sub_1DCB0E9D8(a1, &qword_1ECCA1F60, &unk_1DD0E5250);
    return OUTLINED_FUNCTION_16_7();
  }

  else
  {

    sub_1DCB0E9D8(a1, &qword_1ECCA1F60, &unk_1DD0E5250);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return OUTLINED_FUNCTION_12_14();
  }
}

uint64_t sub_1DCC1FB08(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  MEMORY[0x1E12A6780](0x2864656C6961662ELL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](10537, 0xE200000000000000);
  sub_1DCC22568(a1);
  return 0;
}

uint64_t sub_1DCC1FC04()
{
  OUTLINED_FUNCTION_42();
  *(*v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC1FD00, 0, 0);
}

void sub_1DCC1FD00()
{
  v1 = *(v0 + 40);
  v2 = v1;
  sub_1DCB87830(v1, 1u);
}

void sub_1DCC1FD8C()
{
  sub_1DCB17CA0(v0 + 32, v7);
  sub_1DCB17CA0(v0 + 152, v6);
  sub_1DCB17CA0(v0 + 192, v5);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  swift_allocObject();
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  MEMORY[0x1EEE9AC00](v1, v1);
  (*(v3 + 16))(&v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  sub_1DD01D228();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC1FF1C()
{
  v14 = v0;
  v13 = *(v0[5] + 16);

  sub_1DCC21990(&v13);
  result = v13;
  v0[6] = v13;
  v2 = *(result + 16);
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[8] = 0;
    if (*(result + 16))
    {
      v0[9] = *(result + 40);
      v4 = v3[33];
      __swift_project_boxed_opaque_existential_1(v3 + 29, v3[32]);
      v5 = *(v4 + 8);

      v12 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[10] = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_7_17(v6);

      return v12(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = sub_1DCC20BCC();
    v9 = OUTLINED_FUNCTION_34(&type metadata for AppRCHAuthorizationFlow.InvalidStateError, v8);
    *v10 = 0xD000000000000073;
    v10[1] = 0x80000001DD114610;
    v11 = v0[1];

    return v11(v9);
  }

  return result;
}

uint64_t sub_1DCC20138()
{
  OUTLINED_FUNCTION_42();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2024C, 0, 0);
}

uint64_t sub_1DCC2024C()
{
  v1 = *(v0 + 33);
  switch(*(v0 + 33))
  {
    case 2:

      goto LABEL_4;
    default:
      v2 = sub_1DD0DF0AC();

      if (v2)
      {
LABEL_4:

        v3 = sub_1DCC22514();
        v4 = OUTLINED_FUNCTION_34(&type metadata for AppResolutionFlowError, v3);
        *v5 = 0;
        *(v5 + 8) = 0;
LABEL_12:
        *(v5 + 16) = 2;
        goto LABEL_13;
      }

      break;
  }

  switch(v1)
  {
    case 0:
      goto LABEL_10;
    case 1:
    case 2:
    case 3:
      v6 = sub_1DD0DF0AC();

      if (v6)
      {
        goto LABEL_11;
      }

      if (v1 == 1)
      {
LABEL_10:

LABEL_11:

        v8 = sub_1DCC22514();
        v4 = OUTLINED_FUNCTION_34(&type metadata for AppResolutionFlowError, v8);
        *v5 = xmmword_1DD0E5100;
        goto LABEL_12;
      }

      v7 = sub_1DD0DF0AC();

      if (v7)
      {
        goto LABEL_11;
      }

      v11 = *(v0 + 64) + 1;
      if (v11 == *(v0 + 56))
      {

        v12 = sub_1DCC20BCC();
        v4 = OUTLINED_FUNCTION_34(&type metadata for AppRCHAuthorizationFlow.InvalidStateError, v12);
        *v13 = 0xD000000000000073;
        v13[1] = 0x80000001DD114610;
LABEL_13:
        v9 = *(v0 + 8);

        return v9(v4);
      }

      *(v0 + 64) = v11;
      v14 = *(v0 + 48);
      if (v11 >= *(v14 + 16))
      {
        __break(1u);
LABEL_23:
        JUMPOUT(0);
      }

      v15 = *(v0 + 40);
      *(v0 + 72) = *(v14 + 16 * v11 + 40);
      v16 = v15[33];
      __swift_project_boxed_opaque_existential_1(v15 + 29, v15[32]);
      v17 = *(v16 + 8);

      v20 = (v17 + *v17);
      v18 = swift_task_alloc();
      *(v0 + 80) = v18;
      *v18 = v0;
      v19 = OUTLINED_FUNCTION_7_17(v18);

      return v20(v19);
    default:
      goto LABEL_23;
  }
}

unint64_t sub_1DCC20608(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

void sub_1DCC206A0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    v2 = *a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "Unlock flow failed: terminating AppRCHAuthorizationFlow early.", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }

    sub_1DCB8D4CC(v1, 1);
    sub_1DCB87830(v1, 1u);
  }

  sub_1DCB87830(0, 0xFDu);
}

void destroy for AppRCHAuthorizationFlow.State(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
  }
}

uint64_t sub_1DCC20818(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    *a1 = *a2;
    v6 = *(a2 + 8);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *a2;
    v5 = *a2;
    *a1 = v4;
    v6 = 1;
LABEL_6:
    *(a1 + 8) = v6;
    return a1;
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t assignWithCopy for AppRCHAuthorizationFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 > 1)
  {
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *(a1 + 8) = 0;
        return a1;
      }

LABEL_11:
      v6 = *a2;
      v7 = v6;
      *a1 = v6;
      *(a1 + 8) = 1;
      return a1;
    }

LABEL_14:
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    return a1;
  }

  if (v5 > 1)
  {
    if (v4 == 1)
    {
    }

    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (v4 == 1)
    {

      v5 = *(a2 + 8);
      if (v5 >= 2)
      {
        v5 = *a2 + 2;
      }
    }

    if (v5 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  return a1;
}

uint64_t assignWithTake for AppRCHAuthorizationFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 > 1)
  {
    if (v5 <= 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *(a1 + 8) = 0;
        return a1;
      }

      goto LABEL_11;
    }

LABEL_14:
    *a1 = *a2;
    v6 = *(a2 + 8);
    goto LABEL_15;
  }

  if (v5 > 1)
  {
    if (v4 == 1)
    {
    }

    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (v4 == 1)
    {

      v5 = *(a2 + 8);
      if (v5 >= 2)
      {
        v5 = *a2 + 2;
      }
    }

    if (v5 != 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    *a1 = *a2;
    v6 = 1;
LABEL_15:
    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AppRCHAuthorizationFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppRCHAuthorizationFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -4 - a2;
    }
  }

  return result;
}

uint64_t sub_1DCC20A8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC20AA0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t sub_1DCC20B00()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCBFA404;

  return sub_1DCB86BA0(v2);
}

void *sub_1DCC20B98@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DCB8D4D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1DCC20BCC()
{
  result = qword_1ECCA2410;
  if (!qword_1ECCA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2410);
  }

  return result;
}

uint64_t sub_1DCC20C20()
{
  sub_1DCB09910(v0, &v2, &qword_1ECCA1F60, &unk_1DD0E5250);
  if (v4)
  {
    sub_1DCB0E9D8(&v2, &qword_1ECCA1F60, &unk_1DD0E5250);
    return OUTLINED_FUNCTION_16_7();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    return OUTLINED_FUNCTION_12_14();
  }
}

void sub_1DCC20CA0()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_11_18(v7 / 32);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB5DF38(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC20D70()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2480, &qword_1DD0E5238);
      v7 = OUTLINED_FUNCTION_14_15(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_12(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F3EC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2488, &unk_1DD0E5240);
    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC20E40()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2448, &qword_1DD0E5210);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F440(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_5_16();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC20EFC()
{
  OUTLINED_FUNCTION_10_15();
  if (v3)
  {
    OUTLINED_FUNCTION_1_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_7();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_14();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A0, &qword_1DD0F9890);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_11_18((v13 - v11) / v10);
LABEL_18:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) - 8);
  if (v1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DCD3F484(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DCC21190()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24B0, &qword_1DD0E5310);
      v7 = OUTLINED_FUNCTION_14_15(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_12(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD44350(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC21250()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24B8, &qword_1DD0E5318);
      v7 = OUTLINED_FUNCTION_14_15(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_12(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F544(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24C0, qword_1DD0E5320);
    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC21320()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A8, &qword_1DD0E5278);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v7);
      OUTLINED_FUNCTION_11_18(v8 / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F5B4(v9, v10, v11);
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

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC21414(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 24);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v12)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCC21510()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_11_18(v7 / 64);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F464(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCC21610(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_17();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_7();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_14();
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
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1DCC217C4(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2458, &qword_1DD0E5220);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DCD3F630(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DCC21990(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DCC224D0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DCC219FC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DCC219FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD0DF02C();
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
        v6 = sub_1DD0DE38C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DCC21BB8(v7, v8, a1, v4);
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
    return sub_1DCC21AF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DCC21AF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_1DD0DF0AC();
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

void sub_1DCC21BB8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
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
          v14 = sub_1DD0DF0AC();
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

          else if ((v14 ^ sub_1DD0DF0AC()))
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
            v86 = v5;
            v88 = v9;
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
                if (v37 || (sub_1DD0DF0AC() & 1) == 0)
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
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE18BB0();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1DCE18BB0();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
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
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1DCC221EC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1DCC220C0(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_1DCC220C0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DCC22390(v5);
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
    sub_1DCC221EC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1DCC221EC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1DCB341E4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DD0DF0AC() & 1) == 0)
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

  sub_1DCB341E4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1DD0DF0AC() & 1) != 0)
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

char *sub_1DCC223A4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DCC223D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2430, &unk_1DD0E51F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DCC22514()
{
  result = qword_1ECCA2428;
  if (!qword_1ECCA2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2428);
  }

  return result;
}

void sub_1DCC22568(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1DCC22578(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a7;
  v41 = a8;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v34 = a13;
  v35 = a12;
  v14 = *(a11 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v34 - v20;
  v22 = *(a10 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v34 - v28;
  (*(v22 + 32))(&v34 - v28, v30, a10);
  (*(v14 + 32))(v21, a6, a11);
  v31 = swift_allocObject();
  (*(v22 + 16))(v26, v29, a10);
  (*(v14 + 16))(v17, v21, a11);
  v32 = sub_1DCC227F4(v36, v37, v38, v39, v26, v17, v40, v41, v31, a10, a11, v35, v34);
  (*(v14 + 8))(v21, a11);
  (*(v22 + 8))(v29, a10);
  return v32;
}

uint64_t sub_1DCC227F4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a9 + 256) = a10;
  *(a9 + 264) = a12;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a9 + 232));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a5, a10);
  *(a9 + 136) = a11;
  *(a9 + 144) = a13;
  v20 = __swift_allocate_boxed_opaque_existential_1Tm((a9 + 112));
  (*(*(a11 - 8) + 32))(v20, a6, a11);
  *(a9 + 272) = 0;
  *(a9 + 280) = -1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  sub_1DCAFF9E8(a3, a9 + 32);
  sub_1DCAFF9E8(a4, a9 + 72);
  sub_1DCAFF9E8(a7, a9 + 152);
  sub_1DCAFF9E8(a8, a9 + 192);
  return a9;
}

BOOL AnyValueFlow<A>.attemptToOverrideProtectedAppCheckClient(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DCC22DC8(v4, v1, v2, v3);
}

unint64_t sub_1DCC22998(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000025, 0x80000001DD1147D0);
    MEMORY[0x1E12A6780](a1, a2);
    v7 = OUTLINED_FUNCTION_1_18();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1DD0DEC1C();
    v5 = OUTLINED_FUNCTION_1_18();
    MEMORY[0x1E12A6780](v5);
    sub_1DD0DD1FC();
    sub_1DCC234E0();
    v6 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v6);

    v7 = 41;
    v8 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1E12A6780](v7, v8);
    return 0;
  }

  if (a1 | a2)
  {
    return 0xD00000000000004CLL;
  }

  else
  {
    return 0xD00000000000005BLL;
  }
}

BOOL AnyAppResolutionFlow.attemptToOverrideProtectedAppCheckClient(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24C8, &qword_1DD0E5350);
  sub_1DCEBDBC4();
  v2 = v22;
  if (v22)
  {
    sub_1DCAFF9E8(&v21, v23);
    sub_1DCB17CA0(a1, &v21);
    v3 = v24;
    v4 = v25;
    __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    (*(v4 + 16))(&v21, v3, v4);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DCB17CA0(a1, &v21);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_1DCB17CA0(&v21, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA24D8, &unk_1DD0E5360);
      v10 = sub_1DD0DE02C();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      v13 = sub_1DCB10E9C(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "App resolution flow conforms to ProtectedAppCheckClientOverridable. It's ProtectedAppCheckClient has been set to %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A8390](v9, -1, -1);
      MEMORY[0x1E12A8390](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    sub_1DCC230E8(&v21);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "App resolution flow does not conform to ProtectedAppCheckClientOverridable. Cannot override.", v17, 2u);
      MEMORY[0x1E12A8390](v17, -1, -1);
    }
  }

  return v2 != 0;
}

BOOL sub_1DCC22DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1DCC90B54(&v26);
  v7 = v27;
  if (v27)
  {
    sub_1DCAFF9E8(&v26, v28);
    sub_1DCB17CA0(v31, &v26);
    v8 = v29;
    v9 = v30;
    __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    (*(v9 + 16))(&v26, v8, v9);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    sub_1DCB17CA0(v31, &v26);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      sub_1DCB17CA0(&v26, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA24D8, &unk_1DD0E5360);
      v15 = sub_1DD0DE02C();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      v18 = sub_1DCB10E9C(v15, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "App resolution flow conforms to ProtectedAppCheckClientOverridable. It's ProtectedAppCheckClient has been set to %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_1DCC230E8(&v26);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "App resolution flow does not conform to ProtectedAppCheckClientOverridable. Cannot override.", v22, 2u);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v7 != 0;
}

uint64_t sub_1DCC230E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24D0, &qword_1DD0E5358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCC2315C(unint64_t a1, void *a2)
{
  switch(a1 >> 62)
  {
    case 1uLL:

      v3 = a2;

      goto LABEL_7;
    case 2uLL:
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_7:

      break;
    case 3uLL:
      return;
    default:

      break;
  }
}

unint64_t *assignWithCopy for AppResolutionFlowResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBF4C98(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_1DCC2315C(v5, v6);
  return a1;
}

unint64_t *assignWithTake for AppResolutionFlowResult(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_1DCC2315C(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppResolutionFlowResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 16))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t storeEnumTagSinglePayload for AppResolutionFlowResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1DCC2330C(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1DCC23328(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
    result[1] = 0;
  }

  *result = v2;
  return result;
}

void sub_1DCC23364(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    sub_1DD0DCF8C();
  }

  if (!a3)
  {
  }
}

uint64_t sub_1DCC23394(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t sub_1DCC233B4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC23364(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AppResolutionFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC23364(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCC23394(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AppResolutionFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCC23394(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCC234A0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCC234B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DCC234E0()
{
  result = qword_1EDE46330;
  if (!qword_1EDE46330)
  {
    sub_1DD0DD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46330);
  }

  return result;
}

uint64_t sub_1DCC23540(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_1DCC24BD8();
  return v1;
}

uint64_t sub_1DCC23580()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_49_3();
  sub_1DCC2945C();
  return v0;
}

void AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v27 - v21;
  sub_1DCC240DC(a1, &v27 - v21);
  (*(v13 + 16))(v19, v22, v11);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  (*(v13 + 32))(v24 + v23, v19, v11);
  v25 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_1DD0E5460;
  v26[5] = v24;
  v26[6] = a2;
  v26[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCC238E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a7;
  v16[5] = 0;
  v16[6] = a2;
  v16[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC239CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1);
}

uint64_t sub_1DCC23A78(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)();
}

uint64_t AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_24_0();
  v0[5] = v3;
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC23BC8()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC240DC(v0[3], v0[6]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_76_4(v1);

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC23C58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC23D50(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)();
}

uint64_t AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t AppResolutionOnDeviceFlowStrategy<>.resolveApp(input:)()
{
  sub_1DD0DD2FC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  v4 = v3 - v2;
  v5 = *MEMORY[0x1E69CE228];
  sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2();
  (*(v6 + 104))(v4, v5);
  v7 = OUTLINED_FUNCTION_67_5();
  v8(v7);
  v9 = type metadata accessor for AppResolutionAction(0);
  v10 = OUTLINED_FUNCTION_73_1(v9);
  v11 = OUTLINED_FUNCTION_74_3(v10, OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result);
  v12(v11);
  *(v10 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  return v10;
}

uint64_t static AppResolutionAction.noAppFound()()
{
  sub_1DD0DD2FC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  v4 = v3 - v2;
  v5 = *MEMORY[0x1E69CE228];
  sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2();
  (*(v6 + 104))(v4, v5);
  v7 = OUTLINED_FUNCTION_67_5();
  v8(v7);
  v9 = type metadata accessor for AppResolutionAction(0);
  v10 = OUTLINED_FUNCTION_73_1(v9);
  v11 = OUTLINED_FUNCTION_74_3(v10, OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result);
  v12(v11);
  *(v10 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  return v10;
}

uint64_t sub_1DCC240DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x1E69CE240])
  {
    (*(v5 + 8))(v8, v4);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  (*(v5 + 96))(v8, v4);
  v9 = sub_1DD0DD2DC();
  return (*(*(v9 - 8) + 32))(a2, v8, v9);
}

uint64_t sub_1DCC243C4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC24464(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t sub_1DCC244FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1);
}

uint64_t sub_1DCC245A8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput(0);
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_52_3(v4);
  v5 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_52_3(v5);
  v6 = *(v2 + 32);
  v7 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v8 + 104))(boxed_opaque_existential_1Tm + v6, v7);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCC33634(v0 + 16, (boxed_opaque_existential_1Tm + 11), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(boxed_opaque_existential_1Tm + *(v2 + 40)) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCC2470C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)();
}

uint64_t AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_24_0();
  v0[5] = v3;
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC2485C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC240DC(v0[3], v0[6]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_76_4(v1);

  return sub_1DCEA7F3C();
}

uint64_t sub_1DCC248EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC249E4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_82_1();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC24A50()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_82_1();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC24ABC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)();
}

uint64_t AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t sub_1DCC24BD8()
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(v1 + 96));
  return v0;
}

uint64_t sub_1DCC24C44()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  OUTLINED_FUNCTION_13();
  v1[15] = v3;
  v5 = *(v4 + 80);
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC24D28()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_67_5();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2588, &qword_1DD0E5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 104);
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *(v4 + 16) = v0 + 16;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    type metadata accessor for AppResolutionAction(0);
    *v5 = v0;
    v5[1] = sub_1DCC24F30;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, 0xD000000000000012, v9, v10, v4, v11);
  }

  else
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 104);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA2590, &qword_1DD0E5A18);
    (*(*(v13 + 88) + 24))(v14, v12);

    v15 = OUTLINED_FUNCTION_129();

    return v16(v15);
  }
}

uint64_t sub_1DCC24F30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC25030()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OUTLINED_FUNCTION_129();

  return v2(v1);
}

uint64_t sub_1DCC25094(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2598, &qword_1DD0E5A20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 8))(a3, sub_1DCC337F8, v14, v11, v12);
}

uint64_t sub_1DCC25268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25280()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC2534C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(v5 + 88) + 32))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC254F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25510()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC255DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(v5 + 88) + 40))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC25788(uint64_t a1)
{
  sub_1DCB09970(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCC25828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25840()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC2590C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(v5 + 88) + 48))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC25AB8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_78_5();
  return v0();
}

uint64_t sub_1DCC25B1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25B34()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC25C00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 8) + 16))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC25DB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC25DC8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC25E94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 8) + 24))(a3, sub_1DCC3376C, v12, *(v5 + 80));
}

uint64_t sub_1DCC26044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC2605C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC26128(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 8) + 32))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC262D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC262F0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC263BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 8) + 40))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC2656C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26584()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC26650(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 8) + 48))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC26800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26818()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_52_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC268F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 8) + 56))(a3, v16, sub_1DCC33878, v13, *(v6 + 80));
}

uint64_t sub_1DCC26AB0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_78_5();
  return v0();
}

uint64_t sub_1DCC26B14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26B2C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC26BF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 16) + 16))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC26DA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC26DC0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC26E8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 16) + 24))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC2703C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC27054()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC27120(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 16) + 32))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC272D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC272E8()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_43_5(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC273B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(*(v5 + 88) + 16) + 40))(a3, sub_1DCC33878, v12, *(v5 + 80));
}

uint64_t sub_1DCC27564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC2757C()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_52_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC27658()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCC27774(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 16) + 48))(a3, v16, sub_1DCC33878, v13, *(v6 + 80));
}

uint64_t sub_1DCC27948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47434;

  return sub_1DCC24C44();
}