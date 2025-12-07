uint64_t sub_1D50CF6E8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA30, &qword_1D5633F40);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50D020C();
  sub_1D56163D8();
  sub_1D5616028();
  if (!v1)
  {
    type metadata accessor for StorePlatformComposer(0);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_81();
    sub_1D50D0320(v8, v9, MEMORY[0x1E6968FB8]);
    sub_1D5616068();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1D50CF878(uint64_t a1)
{
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  if (*(v1 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v12 = type metadata accessor for StorePlatformComposer(0);
  sub_1D50D019C(v1 + *(v12 + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_1D56162F8();
  }

  v14 = OUTLINED_FUNCTION_6_2();
  v15(v14);
  sub_1D56162F8();
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v16, v17, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1D50CFA2C()
{
  v2 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  sub_1D56162D8();
  if (*(v0 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v11 = type metadata accessor for StorePlatformComposer(0);
  sub_1D50D019C(v0 + *(v11 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_2();
    v13(v12);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_81();
    sub_1D50D0320(v14, v15, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D50CFBFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA20, &qword_1D5633F38);
  OUTLINED_FUNCTION_4();
  v27 = v9;
  v28 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for StorePlatformComposer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50D020C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v13;
  v18 = v27;
  v30 = 0;
  v19 = v17;
  *v17 = sub_1D5615F38();
  v17[1] = v20;
  sub_1D560C0A8();
  v29 = 1;
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v21, v22, MEMORY[0x1E6968FD0]);
  v23 = v28;
  sub_1D5615F78();
  (*(v18 + 8))(v12, v23);
  sub_1D4F5A3D0(v7, v19 + *(v25 + 20));
  sub_1D50D0260(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D50D02C4(v19);
}

uint64_t sub_1D50CFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50CF5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50CFECC(uint64_t a1)
{
  v2 = sub_1D50D020C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50CFF08(uint64_t a1)
{
  v2 = sub_1D50D020C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50CFF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  if (*(v2 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  sub_1D50D019C(v2 + *(a2 + 20), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D56162F8();
    sub_1D50D0320(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D5616328();
}

uint64_t sub_1D50D019C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D50D020C()
{
  result = qword_1EC7EFA28;
  if (!qword_1EC7EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA28);
  }

  return result;
}

uint64_t sub_1D50D0260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformComposer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D02C4(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformComposer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D0320(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformComposer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50D0448()
{
  result = qword_1EC7EFA38;
  if (!qword_1EC7EFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA38);
  }

  return result;
}

unint64_t sub_1D50D04A0()
{
  result = qword_1EC7EFA40;
  if (!qword_1EC7EFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA40);
  }

  return result;
}

unint64_t sub_1D50D04F8()
{
  result = qword_1EC7EFA48;
  if (!qword_1EC7EFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA48);
  }

  return result;
}

uint64_t MusicMoodStationRequest.init(mood:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MusicMoodStationRequest(0);
  result = _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for MusicMoodStationRequest(uint64_t a1)
{
  result = qword_1EC7EFA58;
  if (!qword_1EC7EFA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicMoodStationRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  type metadata accessor for MusicMoodStationRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v8 = type metadata accessor for MusicRequestConfiguration(0);
  v9 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v9 ^ 1u, 1, v8);
  sub_1D4F73F78(v7, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
    {
      sub_1D4E6C9CC(v5, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v5, a1);
  }

  return sub_1D4E6C9CC(v7, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D50D07A0(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v4);
  return MusicMoodStationRequest.configuration.setter(v4);
}

uint64_t MusicMoodStationRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_0_82();
  sub_1D50D2300(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  sub_1D4F581B8(a1);
  v10 = type metadata accessor for MusicMoodStationRequest(0);
  return (*(v5 + 40))(v2 + *(v10 + 20), v7, v4);
}

void (*MusicMoodStationRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[6] = v8;
  MusicMoodStationRequest.configuration.getter(v8);
  return sub_1D50D0A48;
}

void sub_1D50D0A48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D4F5A490(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_0_82();
    sub_1D50D2300(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4F581B8(v3);
    v8 = type metadata accessor for MusicMoodStationRequest(0);
    v9 = OUTLINED_FUNCTION_148_0(v8);
    v10(v9);
    sub_1D4F581B8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_82();
    sub_1D50D2300(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4F581B8(v4);
    v13 = type metadata accessor for MusicMoodStationRequest(0);
    v14 = OUTLINED_FUNCTION_148_0(v13);
    v15(v14);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicMoodStationRequest.response()(uint64_t a1)
{
  type metadata accessor for MusicMoodStationRequest(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E6ED20;

  return sub_1D50D0C38(a1);
}

uint64_t sub_1D50D0C38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA68, &qword_1D5634100);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1D560D428();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1D560CD48();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_1D560D348();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = sub_1D560D388();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = sub_1D560EBD8();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50D0F20, 0, 0);
}

uint64_t sub_1D50D0F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_60();
  *(v18 + 252) = **(v18 + 24);
  v25 = swift_task_alloc();
  *(v18 + 200) = v25;
  *v25 = v18;
  v25[1] = sub_1D50D0FC8;
  v26 = *(v18 + 192);

  return sub_1D50D1948(v26, (v18 + 252), v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D50D0FC8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 208) = v0;

  if (v0)
  {
    v5 = sub_1D50D1328;
  }

  else
  {
    v5 = sub_1D50D10CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D50D10CC()
{
  OUTLINED_FUNCTION_72_0();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  (*(v2 + 104))(v1, *MEMORY[0x1E6974E78], v3);
  sub_1D560D368();
  v8 = *(type metadata accessor for MusicMoodStationRequest(0) + 20);
  *(v0 + 248) = v8;
  v9 = *(v6 + 16);
  *(v0 + 216) = v9;
  *(v0 + 224) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v7 + v8, v5);
  sub_1D560D2B8();
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_1D50D1224;
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE5B0](v11);
}

uint64_t sub_1D50D1224()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {
    v5 = sub_1D50D1864;
  }

  else
  {
    v5 = sub_1D50D13D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D50D1328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1D50D13D4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 248);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v42 = *(v0 + 240);
  v5 = *(v0 + 24);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v5 + v2, v4);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v6 = sub_1D560D418();
  v8 = v7;
  sub_1D50D2194();
  sub_1D560B948();
  if (v42)
  {
    v9 = *(v0 + 176);
    v39 = *(v0 + 168);
    v41 = *(v0 + 192);
    v10 = *(v0 + 152);
    v35 = *(v0 + 144);
    v37 = *(v0 + 160);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    sub_1D4E55E1C(v6, v8);

    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v37, v35);
    (*(v9 + 8))(v41, v39);
    OUTLINED_FUNCTION_2_64();
  }

  else
  {
    v27 = *(v0 + 216);
    v26 = *(v0 + 248);
    v40 = *(v0 + 192);
    v36 = *(v0 + 176);
    v38 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v0 + 144);
    v34 = *(v0 + 160);
    v23 = *(v0 + 96);
    v24 = *(v0 + 112);
    v31 = *(v0 + 88);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v30 = *(v0 + 72);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 24);
    v25 = *(v0 + 32);

    sub_1D4E55E1C(v6, v8);
    (*(v17 + 16))(v16, v15, v18);
    v27(v24, v19 + v26, v23);
    v20 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v20);
    sub_1D5614408();
    sub_1D50D2300(&qword_1EC7ECE38, MEMORY[0x1E6977180], MEMORY[0x1E6977160]);
    sub_1D5612368();

    sub_1D4E6C9CC(v25, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v28 + 8))(v24, v23);
    v21 = *(v17 + 8);
    v21(v16, v18);
    v21(v15, v18);
    (*(v29 + 8))(v31, v30);
    (*(v32 + 8))(v34, v33);
    (*(v36 + 8))(v40, v38);
  }

  OUTLINED_FUNCTION_55();

  return v14();
}

uint64_t sub_1D50D1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  v13 = v12[24];
  v14 = v12[21];
  v15 = v12[22];
  (*(v12[19] + 8))(v12[20], v12[18]);
  (*(v15 + 8))(v13, v14);
  OUTLINED_FUNCTION_2_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1D50D1948(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + 48) = a1;
  *(v19 + 56) = v18;
  v21 = sub_1D560BB98();
  *(v19 + 64) = v21;
  *(v19 + 72) = *(v21 - 8);
  *(v19 + 80) = swift_task_alloc();
  *(v19 + 88) = swift_task_alloc();
  *(v19 + 96) = swift_task_alloc();
  *(v19 + 116) = *a2;
  *(v19 + 112) = *(type metadata accessor for MusicMoodStationRequest(0) + 20);
  v22 = swift_task_alloc();
  *(v19 + 104) = v22;
  *v22 = v19;
  v22[1] = sub_1D50D1A78;

  return MEMORY[0x1EEDCE258](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D50D1A78()
{
  OUTLINED_FUNCTION_59_1();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v4;
  v3[5] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D50D1BD4, 0, 0);
  }
}

uint64_t sub_1D50D1BD4()
{
  sub_1D560BB28();
  sub_1D4EFFE00();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v2 = v20;
  }

  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  *(v2 + 16) = v3 + 1;
  v8 = *(v6 + 32);
  v6 += 32;
  v7 = v8;
  v9 = (*(v6 + 48) + 32) & ~*(v6 + 48);
  v10 = *(v6 + 40);
  v8(v2 + v9 + v10 * v3, v4, v5);
  sub_1D50F8BEC();
  sub_1D560BB28();

  v11 = *(v2 + 16);
  if (v11 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v2 = v21;
  }

  v12 = v0[11];
  v13 = v0[8];
  *(v2 + 16) = v11 + 1;
  v23 = v10;
  v7(v2 + v9 + v11 * v10, v12, v13);
  sub_1D560BB88();
  v14 = *(v2 + 16);
  v15 = v14 + 1;
  if (v14 >= *(v2 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v15 = v14 + 1;
    v2 = v22;
  }

  v16 = v0[10];
  v17 = v0[8];
  *(v2 + 16) = v15;
  v7(v2 + v9 + v14 * v23, v16, v17);
  sub_1D560CD48();
  sub_1D560EB88();

  OUTLINED_FUNCTION_55();

  return v18();
}

uint64_t static MusicMoodStationRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for MusicMoodStationRequest(0);

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

uint64_t MusicMoodStationRequest.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA6EC0D0](*v1);
  type metadata accessor for MusicMoodStationRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_1_73();
  sub_1D50D2300(v2, v3, MEMORY[0x1E6974D28]);
  return sub_1D5614CB8();
}

uint64_t MusicMoodStationRequest.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*v0);
  type metadata accessor for MusicMoodStationRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_1_73();
  sub_1D50D2300(v1, v2, MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50D1FF8(uint64_t a1)
{
  sub_1D56162D8();
  Station.Mood.hash(into:)();
  sub_1D560CD48();
  sub_1D50D2300(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50D2118(uint64_t a1)
{
  result = sub_1D560CD48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D50D2194()
{
  result = qword_1EC7EFA70;
  if (!qword_1EC7EFA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFA68, &qword_1D5634100);
    sub_1D50D2218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA70);
  }

  return result;
}

unint64_t sub_1D50D2218()
{
  result = qword_1EDD53280;
  if (!qword_1EDD53280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    v1 = MEMORY[0x1E6975B30];
    sub_1D50D2300(&qword_1EDD53370, MEMORY[0x1E6975B30], MEMORY[0x1E6975B50]);
    sub_1D50D2300(&qword_1EDD53378, v1, MEMORY[0x1E6975B38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53280);
  }

  return result;
}

uint64_t sub_1D50D2300(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t VideoArtwork.previewFrame.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D56140F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoArtwork.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoArtwork(0) + 20);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double VideoArtwork.fileAssets.getter()
{
  type metadata accessor for VideoArtwork(0);

  return result;
}

void static VideoArtwork.== infix(_:_:)(uint64_t a1)
{
  if (sub_1D5613FF8())
  {
    type metadata accessor for VideoArtwork(0);
    if (sub_1D560BFB8())
    {
      sub_1D4EFA124();
      if (v1)
      {

        sub_1D4F286E0();
      }
    }
  }
}

void VideoArtwork.hash(into:)(uint64_t a1)
{
  sub_1D56140F8();
  OUTLINED_FUNCTION_2_65();
  sub_1D50D3604(v1, v2, MEMORY[0x1E6976F78]);
  sub_1D5614CB8();
  type metadata accessor for VideoArtwork(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v3, v4, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D4F087C4();

  sub_1D4F31AC0();
}

uint64_t VideoArtwork.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D56140F8();
  OUTLINED_FUNCTION_2_65();
  sub_1D50D3604(v0, v1, MEMORY[0x1E6976F78]);
  sub_1D5614CB8();
  type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D4F087C4();
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t sub_1D50D26E4(uint64_t a1)
{
  sub_1D56162D8();
  VideoArtwork.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t VideoArtwork.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for VideoArtwork(0);
  v40 = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = objc_opt_self();
  v14 = sub_1D5614BA8();
  v42[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v42];

  v16 = v42[0];
  if (v15)
  {
    v17 = sub_1D560C198();
    v19 = v18;

    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D50D3604(qword_1EDD57B58, type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
    sub_1D560B948();
    v36 = v40;
    sub_1D50D34F0(v40);

    sub_1D4E55E1C(v17, v19);

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    sub_1D50D3480(v9, v36);
  }

  else
  {
    v20 = v16;
    v21 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D560C758();
    __swift_project_value_buffer(v22, qword_1EDD76DC8);

    v23 = v21;
    v24 = sub_1D560C738();
    v25 = sub_1D56156C8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136446466;
      v28 = sub_1D5614BC8();
      v39 = a2;
      v30 = v29;

      v31 = sub_1D4E6835C(v28, v30, v42);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v41 = v21;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v33 = sub_1D5614DB8();
      v35 = sub_1D4E6835C(v33, v34, v42);

      *(v26 + 14) = v35;
      a2 = v39;
      _os_log_impl(&dword_1D4E3F000, v24, v25, "Failed to initialize VideoArtwork with dictionary: %{public}s. Error = %s.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v27, -1, -1);
      MEMORY[0x1DA6ED200](v26, -1, -1);
    }

    else
    {
    }

    v36 = v40;
  }

  sub_1D50D3480(v36, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_1D50D34F0(v6);
    v37 = 1;
  }

  else
  {
    sub_1D50D3558(v6, a2);
    v37 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v37, 1, v12);
}

void VideoArtwork.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v26 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_4();
  v24 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v28 = a1;
  sub_1D4E628D4(a1, v27);
  sub_1D5611238();
  v17 = MEMORY[0x1E6976138];
  sub_1D50D3604(&qword_1EDD53108, MEMORY[0x1E6976138], MEMORY[0x1E6976158]);
  OUTLINED_FUNCTION_1_74();
  sub_1D50D3604(v18, v17, v19);
  sub_1D5610768();
  if (v2)
  {
    v27[0] = v2;
    v21 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v22 = v26;
      (*(v26 + 32))(v9, v11, v4);
      sub_1D5615C18();
      swift_allocError();
      v23 = v28;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v23);
      (*(v22 + 8))(v9, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    sub_1D51AFBEC(v25);
    v20 = (v24 + 8);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*v20)(v16, v12);
  }
}

uint64_t VideoArtwork.encode(to:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  sub_1D51B0578(v11 - v5);
  v7 = MEMORY[0x1E6976138];
  sub_1D50D3604(&qword_1EDD53108, MEMORY[0x1E6976138], MEMORY[0x1E6976158]);
  OUTLINED_FUNCTION_1_74();
  sub_1D50D3604(v8, v7, v9);
  sub_1D5610778();
  return (*(v3 + 8))(v6, v1);
}

uint64_t VideoArtwork.description.getter()
{
  OUTLINED_FUNCTION_4_51();
  v12 = v2;
  v13 = v3;
  v11[0] = 0x22203A6C7275;
  v11[1] = 0xE600000000000000;
  type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v4, v5, MEMORY[0x1E6968FE0]);
  v6 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6C7275, 0xE600000000000000);

  v7 = *(v0 + *(v1 + 24));
  if (*(v7 + 16))
  {
    sub_1D5615B68();

    strcpy(v11, ", fileAssets: ");
    HIBYTE(v11[1]) = -18;
    v8 = type metadata accessor for VideoArtwork.FileAsset(0);
    v9 = MEMORY[0x1DA6EAF70](v7, v8);
    MEMORY[0x1DA6EAC70](v9);

    MEMORY[0x1DA6EAC70](v11[0], v11[1]);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v12;
}

uint64_t VideoArtwork.debugDescription.getter()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v2;
  type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_83();
  sub_1D50D3604(v3, v4, MEMORY[0x1E6968FE0]);
  v5 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x203A6C727520200ALL, 0xE900000000000022);

  v6 = *(v0 + *(v1 + 24));
  if (*(v6 + 16))
  {
    sub_1D5615B68();

    v7 = type metadata accessor for VideoArtwork.FileAsset(0);
    v8 = MEMORY[0x1DA6EAF70](v6, v7);
    MEMORY[0x1DA6EAC70](v8);

    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5683EE0);
  }

  sub_1D5615B68();

  sub_1D5613FE8();
  sub_1D4F53278();
  v9 = sub_1D5615968();
  v11 = v10;

  MEMORY[0x1DA6EAC70](v9, v11);

  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5683F00);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v13;
}

uint64_t sub_1D50D3480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D34F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D3558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50D3604(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicAutoupdatingResponse.LoadingError.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D50D3718(uint64_t a1)
{
  sub_1D56162D8();
  MusicAutoupdatingResponse.LoadingError.hash(into:)();
  return sub_1D5616328();
}

uint64_t static MusicAutoupdatingResponse.Status<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v43 = a1;
  v44 = a2;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v40 = v8;
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v12 = type metadata accessor for MusicAutoupdatingResponse.Status(0, a3, a4, v11);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v39 - v26;
  v28 = *(v25 + 48);
  v42 = v14;
  v29 = *(v14 + 16);
  v29(&v39 - v26, v43, v12);
  v29(&v27[v28], v44, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29(v18, v27, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      v33 = 1;
LABEL_11:
      v23 = v42;
      goto LABEL_12;
    }
  }

  else
  {
    v44 = v10;
    v31 = v40;
    v32 = v41;
    v29(v20, v27, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = v31;
      v35 = &v27[v28];
      v36 = v44;
      (*(v31 + 32))(v44, v35, v32);
      v33 = sub_1D5614D18();
      v37 = *(v34 + 8);
      v37(v36, v32);
      v37(v20, v32);
      goto LABEL_11;
    }

    (*(v31 + 8))(v20, v32);
  }

LABEL_9:
  v33 = 0;
  v12 = TupleTypeMetadata2;
LABEL_12:
  (*(v23 + 8))(v27, v12);
  return v33 & 1;
}

uint64_t MusicAutoupdatingResponse.Status<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    return MEMORY[0x1DA6EC0D0](v16);
  }

  else
  {
    (*(v7 + 32))(v11, v13, AssociatedTypeWitness);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614CB8();
    return (*(v7 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t MusicAutoupdatingResponse.Status<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MusicAutoupdatingResponse.Status<>.hash(into:)(v5, a1, a2);
  return sub_1D5616328();
}

uint64_t sub_1D50D3D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicAutoupdatingResponse.Status<>.hash(into:)(v6, a2, v4);
  return sub_1D5616328();
}

uint64_t sub_1D50D3DBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_20:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_20;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1D50D3F0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1D50D40E4(_BYTE *result, int a2, int a3)
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

uint64_t Playlist.Entry.performExtendedPlaylistEntryMapping<A>(scope:)()
{
  OUTLINED_FUNCTION_60();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA88, &unk_1D56343E8);
  v1[11] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_127();
  v7 = sub_1D56158D8();
  v1[14] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v1[17] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[18] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA90, &qword_1D56343F8);
  v1[19] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_127();
  v12 = sub_1D5614828();
  v1[22] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  OUTLINED_FUNCTION_22(v14);
  v1[26] = OUTLINED_FUNCTION_127();
  v15 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v1[27] = v15;
  OUTLINED_FUNCTION_22(v15);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D50D43D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[29];
  v14 = v12[30];
  v29 = v12[25];
  v15 = v12[23];
  v30 = v12[22];
  v16 = v12[10];
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.innerItem.getter(v12 + 2);
  __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
  sub_1D560EC18();
  sub_1D50D5AB4(v14);
  __swift_destroy_boxed_opaque_existential_1(v12 + 2);
  Playlist.Entry.internalItem.getter();
  sub_1D50D5B10();
  sub_1D560EC88();
  sub_1D50D5AB4(v13);
  Playlist.Entry.internalItem.getter();
  (*(v15 + 16))(v29, v16, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EFA98, &unk_1D5634408);
  swift_allocObject();
  v17 = sub_1D560CA68();
  v12[31] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D561EAC0;
  *(v18 + 32) = v17;

  sub_1D560CB08();
  v19 = swift_task_alloc();
  v12[32] = v19;
  *v19 = v12;
  v19[1] = sub_1D50D4600;
  v26 = v12[19];
  v27 = v12[8];

  return MEMORY[0x1EEDCE158](v27, v26, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D50D4600()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  *(v2 + 264) = v3;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D50D470C()
{
  v1 = v0[33];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D4F04454(0, v2, 0);
    v4 = v27;
    OUTLINED_FUNCTION_3_67();
    v25 = v5;
    v26 = v6;
    v24 = (v3 - 8);
    do
    {
      v7 = v0[13];
      v8 = v0[11];
      v26(v7, v1, v8);
      sub_1D560CA48();
      sub_1D560CA38();
      sub_1D560CAD8();

      Playlist.Entry.init(internalItem:existingEntry:)();
      (*v24)(v7, v8);
      v10 = *(v27 + 16);
      v9 = *(v27 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D4F04454(v9 > 1, v10 + 1, 1);
      }

      *(v27 + 16) = v10 + 1;
      v11 = OUTLINED_FUNCTION_1_75();
      v12(v11);
      v1 += v25;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4ECA15C(v4);
  if (swift_dynamicCast())
  {
    v13 = v0[16];
    v14 = v0[9];
    v15 = v0[7];
    (*(v0[20] + 8))(v0[21], v0[19]);

    OUTLINED_FUNCTION_9_50();
    (*(v16 + 32))(v15, v13, v14);

    OUTLINED_FUNCTION_55();

    return v17();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_10_51();
    v20(v19);
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5683F60);
    v21 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v21);

    return OUTLINED_FUNCTION_17_13("Fatal error", v22, v23, 0, 0xE000000000000000, "MusicKitInternal/PlaylistEntryMapping+Internal.swift");
  }
}

uint64_t sub_1D50D4AA4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D50D4BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D50D5BD0;

  return Playlist.Entry.performExtendedPlaylistEntryMapping<A>(scope:)();
}

uint64_t MusicItemCollection<>.performExtendedPlaylistEntryMapping<A>(scope:)()
{
  OUTLINED_FUNCTION_60();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA88, &unk_1D56343E8);
  v1[17] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_127();
  v7 = sub_1D56158D8();
  v1[20] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  OUTLINED_FUNCTION_22(v9);
  v1[23] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v1[24] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[25] = OUTLINED_FUNCTION_167();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA90, &qword_1D56343F8);
  v1[28] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_127();
  v13 = sub_1D5614828();
  v1[31] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[32] = v14;
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[36] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[37] = v16;
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[41] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[42] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D50D4F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[41];
  v43 = v12[42];
  v14 = v12[40];
  v16 = v12[36];
  v15 = v12[37];
  v17 = v12[32];
  v18 = v12[16];
  v19 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v20 = *(v15 + 16);
  v12[43] = v20;
  v12[44] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v14, v18, v16, a4, a5, a6, a7, a8);
  sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0, MEMORY[0x1E6975008]);
  sub_1D5614F98();
  v21 = *(v13 + 36);
  v42 = (v17 + 16);
  v37 = (v17 + 8);
  v36 = v21;
  sub_1D4E62A60(&unk_1EDD53B80, &unk_1EC7F6A30, &qword_1D561C4C0, MEMORY[0x1E6975020]);
  while (1)
  {
    v12[45] = v19;
    sub_1D5615648();
    if (*(v43 + v21) == v12[11])
    {
      break;
    }

    v22 = v12[35];
    v23 = v12[27];
    v38 = v12[26];
    v41 = v12[34];
    v39 = v12[31];
    v24 = sub_1D5615688();
    v40 = *v42;
    (*v42)(v22);
    v24(v12 + 7, 0);
    v21 = v36;
    sub_1D5615658();
    Playlist.Entry.internalItem.getter();
    Playlist.Entry.InternalItem.innerItem.getter(v12 + 2);
    __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
    sub_1D560EC18();
    sub_1D50D5AB4(v23);
    __swift_destroy_boxed_opaque_existential_1(v12 + 2);
    Playlist.Entry.internalItem.getter();
    sub_1D50D5B10();
    sub_1D560EC88();
    sub_1D50D5AB4(v38);
    Playlist.Entry.internalItem.getter();
    (v40)(v41, v22, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EFA98, &unk_1D5634408);
    swift_allocObject();
    sub_1D560CA68();
    v25 = (*v37)(v22, v39);
    MEMORY[0x1DA6EAF30](v25);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
    v19 = v44;
  }

  sub_1D50D5B68(v12[42]);
  sub_1D50D5B10();

  sub_1D560CB08();
  v26 = swift_task_alloc();
  v12[46] = v26;
  *v26 = v12;
  v26[1] = sub_1D50D5320;
  v33 = v12[28];
  v34 = v12[14];

  return MEMORY[0x1EEDCE158](v34, v33, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1D50D5320()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  *(v2 + 376) = v3;
  *(v2 + 384) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D50D5434()
{
  v1 = v0[47];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D4F04454(0, v2, 0);
    v4 = v39;
    OUTLINED_FUNCTION_3_67();
    v36 = v5;
    v37 = v6;
    v35 = (v3 - 8);
    do
    {
      v7 = v0[19];
      v8 = v0[17];
      v37(v7, v1, v8);
      sub_1D560CA48();
      sub_1D560CA38();
      sub_1D560CAD8();

      Playlist.Entry.init(internalItem:existingEntry:)();
      (*v35)(v7, v8);
      v10 = *(v39 + 16);
      v9 = *(v39 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D4F04454(v9 > 1, v10 + 1, 1);
      }

      *(v39 + 16) = v10 + 1;
      v11 = OUTLINED_FUNCTION_1_75();
      v12(v11);
      v1 += v36;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[43];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[36];
  v38 = v0[38];
  v17 = v0[16];
  v0[12] = v4;
  v13(v14, v17, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D4E62A60(&qword_1EC7ED3E8, &qword_1EC7ED398, &unk_1D5625000, MEMORY[0x1E69E6328]);
  sub_1D560DA18();
  v13(v38, v15, v16);
  if (swift_dynamicCast())
  {
    v33 = v0[39];
    v18 = v0[37];
    v19 = v0[36];
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[28];
    v23 = v0[22];
    v24 = v0[15];
    v34 = v0[13];

    (*(v18 + 8))(v33, v19);
    (*(v21 + 8))(v20, v22);
    OUTLINED_FUNCTION_9_50();
    (*(v25 + 32))(v34, v23, v24);

    OUTLINED_FUNCTION_55();

    return v26();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_10_51();
    v29(v28);
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000060, 0x80000001D5683FC0);
    v30 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v30);

    return OUTLINED_FUNCTION_17_13("Fatal error", v31, v32, 0, 0xE000000000000000, "MusicKitInternal/PlaylistEntryMapping+Internal.swift");
  }
}

uint64_t sub_1D50D58D4()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D50D5A04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D505A824;

  return MusicItemCollection<>.performExtendedPlaylistEntryMapping<A>(scope:)();
}

uint64_t sub_1D50D5AB4(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Entry.InternalItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50D5B10()
{
  result = qword_1EDD52B40;
  if (!qword_1EDD52B40)
  {
    type metadata accessor for Playlist.Entry.InternalItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52B40);
  }

  return result;
}

uint64_t sub_1D50D5B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50D5BD4(void *a1)
{
  result = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState(319, a1[10], a1[11], a1[12]);
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

uint64_t sub_1D50D5C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a4;
  v123 = a5;
  v124 = a3;
  v125 = a2;
  v126 = a1;
  v121 = a6;
  v6 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StorePlatformUploadedVideo(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v98 - v11;
  v12 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for StorePlatformUploadedAudio(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v98 - v17;
  v18 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v109 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for StorePlatformTVEpisode(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v103 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v98 - v23;
  v106 = sub_1D5613838();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StorePlatformSong(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v99 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v98 - v28;
  v29 = sub_1D5613D28();
  v116 = *(v29 - 8);
  v117 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v115 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D560EEA8();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StorePlatformMusicVideo(0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v98 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v119 = &v98 - v39;
  v118 = type metadata accessor for Playlist.Entry.InternalItem(0);
  MEMORY[0x1EEE9AC00](v118);
  v41 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D560CD48();
  v42 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = (&v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for StorePlatformMusicMovie(0);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = (&v98 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v98 - v52;
  v54 = type metadata accessor for StorePlatformPlaylistEntry(0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D50EF020(v126, v56, type metadata accessor for StorePlatformPlaylistEntry);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D50EF0FC(v56, v37, type metadata accessor for StorePlatformMusicVideo);
      sub_1D50EF020(v37, v35, type metadata accessor for StorePlatformMusicVideo);
      v84 = v125;
      v85 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v86 = v124;

      v87 = v98;
      sub_1D50D8230(v35, v44, v86, v98);
      v88 = v100;
      v89 = v115;
      v90 = v101;
      (*(v100 + 16))(v115, v87, v101);
      (*(v116 + 104))(v89, *MEMORY[0x1E6976DF8], v117);
      sub_1D5614808();

      (*(v42 + 8))(v84, v85);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v88 + 8))(v87, v90);
      v69 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_8;
    case 2u:
      v37 = v102;
      sub_1D50EF0FC(v56, v102, type metadata accessor for StorePlatformSong);
      v70 = v99;
      sub_1D50EF020(v37, v99, type metadata accessor for StorePlatformSong);
      v71 = v125;
      v72 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v73 = v124;

      v74 = v104;
      sub_1D50D91A4(v70, v44, v73, v104);
      v75 = v105;
      v76 = v115;
      v77 = v106;
      (*(v105 + 16))(v115, v74, v106);
      (*(v116 + 104))(v76, *MEMORY[0x1E6976E18], v117);
      sub_1D5614808();

      (*(v42 + 8))(v71, v72);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v75 + 8))(v74, v77);
      v69 = type metadata accessor for StorePlatformSong;
      goto LABEL_8;
    case 3u:
      v37 = v108;
      sub_1D50EF0FC(v56, v108, type metadata accessor for StorePlatformTVEpisode);
      v78 = v103;
      sub_1D50EF020(v37, v103, type metadata accessor for StorePlatformTVEpisode);
      v79 = v125;
      v80 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v81 = v124;

      v82 = v109;
      sub_1D50DA260(v78, v44, v81, v109);
      sub_1D50EF020(v82, v41, type metadata accessor for TVEpisode);
      swift_storeEnumTagMultiPayload();
      v83 = type metadata accessor for SocialProfile(0);
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v83);
      sub_1D5208A20();

      (*(v42 + 8))(v79, v80);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v82, type metadata accessor for TVEpisode);
      v69 = type metadata accessor for StorePlatformTVEpisode;
      goto LABEL_8;
    case 4u:
      v37 = v111;
      sub_1D50EF0FC(v56, v111, type metadata accessor for StorePlatformUploadedAudio);
      v63 = v107;
      sub_1D50EF020(v37, v107, type metadata accessor for StorePlatformUploadedAudio);
      v64 = v125;
      v65 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v66 = v124;

      v67 = v112;
      sub_1D50DB960(v63, v44, v66, v112);
      sub_1D50EF020(v67, v41, type metadata accessor for UploadedAudio);
      swift_storeEnumTagMultiPayload();
      v68 = type metadata accessor for SocialProfile(0);
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v68);
      sub_1D5208A20();

      (*(v42 + 8))(v64, v65);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v67, type metadata accessor for UploadedAudio);
      v69 = type metadata accessor for StorePlatformUploadedAudio;
      goto LABEL_8;
    case 5u:
      v37 = v113;
      sub_1D50EF0FC(v56, v113, type metadata accessor for StorePlatformUploadedVideo);
      v91 = v110;
      sub_1D50EF020(v37, v110, type metadata accessor for StorePlatformUploadedVideo);
      v92 = v125;
      v93 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v94 = v124;

      v95 = v114;
      sub_1D50DC860(v91, v44, v94, v114);
      sub_1D50EF020(v95, v41, type metadata accessor for UploadedVideo);
      swift_storeEnumTagMultiPayload();
      v96 = type metadata accessor for SocialProfile(0);
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v96);
      sub_1D5208A20();

      (*(v42 + 8))(v92, v93);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v95, type metadata accessor for UploadedVideo);
      v69 = type metadata accessor for StorePlatformUploadedVideo;
LABEL_8:
      v61 = v69;
      v62 = v37;
      break;
    default:
      sub_1D50EF0FC(v56, v53, type metadata accessor for StorePlatformMusicMovie);
      sub_1D50EF020(v53, v51, type metadata accessor for StorePlatformMusicMovie);
      v57 = v125;
      v58 = v120;
      (*(v42 + 16))(v44, v125, v120);
      v59 = v124;

      sub_1D50D6BFC(v51, v44, v59, v47);
      sub_1D50EF020(v47, v41, type metadata accessor for MusicMovie);
      swift_storeEnumTagMultiPayload();
      v60 = type metadata accessor for SocialProfile(0);
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v60);
      sub_1D5208A20();

      (*(v42 + 8))(v57, v58);
      sub_1D50EF07C(v126, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v47, type metadata accessor for MusicMovie);
      v61 = type metadata accessor for StorePlatformMusicMovie;
      v62 = v53;
      break;
  }

  return sub_1D50EF07C(v62, v61);
}

uint64_t sub_1D50D6BFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v192 = a3;
  v193 = a2;
  v194 = a1;
  v191 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v190 = &v154 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v154 - v7;
  *&v188 = sub_1D56128C8();
  *&v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  *&v186 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v154 - v14;
  v183 = sub_1D5610788();
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v178 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1D56107C8();
  v177 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v174 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = &v154 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v172 = &v154 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v154 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v171 = &v154 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v26 - 8);
  v165 = &v154 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v154 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v164 = &v154 - v31;
  v32 = type metadata accessor for MusicMoviePropertyProvider(0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v33 + 20);
  v37 = sub_1D56140F8();
  v161 = v36;
  v160 = v37;
  __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
  v38 = v32[6];
  v39 = sub_1D560F928();
  v163 = v38;
  __swift_storeEnumTagSinglePayload(v35 + v38, 1, 1, v39);
  v40 = v32[10];
  v41 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v35 + v40, 1, 1, v41);
  v42 = v32[14];
  v43 = sub_1D5610978();
  v167 = v42;
  __swift_storeEnumTagSinglePayload(v35 + v42, 1, 1, v43);
  v44 = v32[18];
  v45 = sub_1D560C0A8();
  v168 = v44;
  __swift_storeEnumTagSinglePayload(v35 + v44, 1, 1, v45);
  v46 = v32[21];
  v47 = sub_1D5613178();
  __swift_storeEnumTagSinglePayload(v35 + v46, 1, 1, v47);
  v48 = v32[22];
  v49 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(v35 + v48, 1, 1, v49);
  v50 = v32[23];
  v51 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(v35 + v50, 1, 1, v51);
  __swift_storeEnumTagSinglePayload(v35 + v32[24], 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v35 + v32[25], 1, 1, v41);
  v52 = v32[26];
  v53 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(v35 + v52, 1, 1, v53);
  v54 = v35 + v32[28];
  v166 = v43;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v43);
  v55 = v32[30];
  v56 = sub_1D56109F8();
  v169 = v55;
  __swift_storeEnumTagSinglePayload(v35 + v55, 1, 1, v56);
  v170 = v32[31];
  __swift_storeEnumTagSinglePayload(v35 + v170, 1, 1, v41);
  v176 = v32[37];
  __swift_storeEnumTagSinglePayload(v35 + v176, 1, 1, v45);
  v57 = v32[38];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v182 = v57;
  v180 = v58;
  __swift_storeEnumTagSinglePayload(v35 + v57, 1, 1, v58);
  v59 = v32[39];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  __swift_storeEnumTagSinglePayload(v35 + v59, 1, 1, v60);
  __swift_storeEnumTagSinglePayload(v35 + v32[40], 1, 1, v60);
  v61 = v32[41];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(v35 + v61, 1, 1, v62);
  v63 = v32[42];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(v35 + v63, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v35 + v32[43], 1, 1, v60);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v65 = v23;
  v185 = v13;
  *&v189 = v8;
  v66 = sub_1D560D9A8();
  v67 = __swift_project_value_buffer(v66, qword_1EDD53D50);
  if (qword_1EC7E9408 != -1)
  {
    swift_once();
  }

  v68 = sub_1D5610088();
  v69 = __swift_project_value_buffer(v68, qword_1EC87C4F0);
  v70 = type metadata accessor for StorePlatformMusicMovie(0);
  sub_1D54301F4(v69, v67, *(v194 + v70[14]), *(v194 + v70[14] + 8), v35 + v32[46]);
  v159 = sub_1D560FDE8();
  v158 = v71;
  sub_1D5614A88();
  v157 = sub_1D5614BD8();
  v156 = sub_1D5614BD8();
  v155 = sub_1D5614BD8();
  v72 = sub_1D5614BD8();
  *(v35 + v32[13]) = 0;
  *(v35 + v32[17]) = 2;
  *(v35 + v32[19]) = 2;
  *(v35 + v32[27]) = 0;
  v73 = v35 + v32[29];
  *v73 = xmmword_1D5626F70;
  *(v73 + 3) = 0;
  *(v73 + 4) = 0;
  *(v73 + 2) = 0;
  v74 = (v35 + v32[35]);
  v74[2] = 0u;
  v74[3] = 0u;
  *v74 = 0u;
  v74[1] = 0u;
  v173 = v74;
  *(v35 + v32[44]) = 0;
  if (qword_1EDD5B368 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDD76D30;
  if (qword_1EDD76D30 >> 62)
  {
    sub_1D560CDE8();

    v153 = sub_1D5615E18();

    v75 = v153;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v76 = v194;
  *(v35 + v32[45]) = v75;
  (*(*(v68 - 8) + 16))(v35 + v32[47], v69, v68);
  v77 = (v35 + v32[48]);
  v78 = v158;
  *v77 = v159;
  v77[1] = v78;
  *(v35 + v32[49]) = v157;
  *(v35 + v32[50]) = v156;
  *(v35 + v32[51]) = v155;
  *(v35 + v32[52]) = v72;
  v79 = v76[1];
  *v35 = *v76;
  v35[1] = v79;
  v80 = v162;
  sub_1D4F39AB0(v76 + v70[5], v162, &qword_1EC7EB5B8, &unk_1D56206A0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v81);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v80, &qword_1EC7EB5B8, &unk_1D56206A0);
    v83 = 1;
    v84 = v65;
    v85 = v164;
  }

  else
  {
    v85 = v164;
    sub_1D5610758();
    (*(*(v81 - 8) + 8))(v80, v81);
    v83 = 0;
    v84 = v65;
  }

  __swift_storeEnumTagSinglePayload(v85, v83, 1, v160);
  sub_1D4E68940(v85, v35 + v161, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D50EEFD8(&qword_1EC7EFC08, type metadata accessor for StorePlatformMusicMovie, &unk_1D564F190);
  v86 = v165;
  sub_1D5612A68();
  sub_1D4E68940(v86, v35 + v163, &qword_1EC7EDB98, L"X\b\a");
  v87 = *(v76 + v70[18]);
  if (v87)
  {
    v87 = sub_1D50ABBD4(v87);
  }

  *(v35 + v32[7]) = v87;
  v88 = *(v76 + v70[6]);
  if (v88)
  {
    v88 = sub_1D511C2A4(v88);
  }

  v89 = (v35 + v32[9]);
  *(v35 + v32[8]) = v88;
  v90 = (v76 + v70[7]);
  v91 = v90[1];
  *v89 = *v90;
  v89[1] = v91;
  v92 = *(v76 + v70[20]);

  if (v92)
  {
    v93 = sub_1D55CE994(v92);
  }

  else
  {
    v93 = 0;
    v94 = 1;
  }

  v95 = v32[12];
  v96 = v35 + v32[11];
  *v96 = v93;
  v96[8] = v94 & 1;
  *(v35 + v95) = *(v76 + v70[10]);
  sub_1D4F39AB0(v76 + v70[17], v84, &qword_1EC7EC960, &unk_1D56334C0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v98 = __swift_getEnumTagSinglePayload(v84, 1, v97);

  if (v98 == 1)
  {
    sub_1D4E50004(v84, &qword_1EC7EC960, &unk_1D56334C0);
    v99 = 1;
    v100 = v171;
  }

  else
  {
    v100 = v171;
    sub_1D5610738();
    (*(*(v97 - 8) + 8))(v84, v97);
    v99 = 0;
  }

  __swift_storeEnumTagSinglePayload(v100, v99, 1, v166);
  v101 = v32[15];
  v102 = v32[16];
  sub_1D4E68940(v100, v35 + v167, &qword_1EC7EAC98, &unk_1D561DA80);
  *(v35 + v101) = *(v76 + v70[11]);
  *(v35 + v102) = *(v76 + v70[12]);
  v103 = v70[15];

  sub_1D4F89DEC(v76 + v103, v35 + v168);
  v104 = *(v76 + v70[16]);
  if (v104 == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC10, type metadata accessor for StorePlatformMusicMovie, &unk_1D564F1D8);
    LOBYTE(v104) = sub_1D5612A28();
  }

  *(v35 + v32[20]) = v104 & 1;
  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  v105 = sub_1D56109D8();
  v106 = __swift_project_value_buffer(v105, qword_1EDD767D8);
  v107 = v172;
  sub_1D50DEE20(v106, v172);
  sub_1D4E68940(v107, v35 + v169, &qword_1EC7EB5C0, &unk_1D56223C0);
  v108 = v174;
  sub_1D56107A8();
  v109 = v181;
  v110 = v178;
  v111 = v183;
  (*(v181 + 104))(v178, *MEMORY[0x1E6975DC8], v183);
  v112 = v175;
  sub_1D5610798();
  v113 = v194;
  (*(v109 + 8))(v110, v111);
  (*(v177 + 8))(v108, v179);
  sub_1D4E68940(v112, v35 + v170, &qword_1EC7EA3B8, &unk_1D561E370);
  v114 = v70[9];
  v115 = v184;
  sub_1D4F39AB0(v113 + v114, v184, &qword_1EC7EC978, &unk_1D56222A0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v115, 1, v116) == 1)
  {
    sub_1D4E50004(v115, &qword_1EC7EC978, &unk_1D56222A0);
    v117 = 0;
    v118 = 0;
  }

  else
  {
    v119 = v186;
    sub_1D5610708();
    (*(*(v116 - 8) + 8))(v115, v116);
    v117 = sub_1D56128A8();
    v118 = v120;
    (*(v187 + 8))(v119, v188);
  }

  v121 = (v35 + v32[32]);
  *v121 = v117;
  v121[1] = v118;
  v122 = v185;
  sub_1D4F39AB0(v113 + v114, v185, &qword_1EC7EC978, &unk_1D56222A0);
  if (__swift_getEnumTagSinglePayload(v122, 1, v116) == 1)
  {
    sub_1D4E50004(v122, &qword_1EC7EC978, &unk_1D56222A0);
    v123 = 0;
    v124 = 0;
  }

  else
  {
    v125 = v186;
    sub_1D5610708();
    (*(*(v116 - 8) + 8))(v122, v116);
    v123 = sub_1D56128B8();
    v124 = v126;
    (*(v187 + 8))(v125, v188);
  }

  v127 = v189;
  v128 = (v35 + v32[33]);
  v129 = (v35 + v32[34]);
  *v128 = v123;
  v128[1] = v124;
  v130 = (v113 + v70[23]);
  v131 = v130[1];
  *v129 = *v130;
  v129[1] = v131;
  sub_1D4F39AB0(v113 + v70[24], v127, &qword_1EC7ED9B0, &unk_1D5631050);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  v133 = __swift_getEnumTagSinglePayload(v127, 1, v132);

  if (v133 == 1)
  {
    sub_1D4E50004(v127, &qword_1EC7ED9B0, &unk_1D5631050);
    v135 = 0uLL;
    v189 = 0u;
    v188 = 0u;
    v187 = 0u;
    v136 = &v198 + 8;
  }

  else
  {
    v134 = sub_1D5138FDC(&v197);
    (*(*(v132 - 8) + 8))(v127, v132, v134);
    v188 = v198;
    v189 = v197;
    v186 = v199[1];
    v135 = v199[0];
    v136 = v199 + 8;
  }

  *(v136 - 16) = v135;
  v137 = (v35 + v32[36]);
  v138 = v173;
  v139 = v173[1];
  v196[0] = *v173;
  v196[1] = v139;
  v140 = v173[3];
  v196[2] = v173[2];
  v196[3] = v140;
  sub_1D4E50004(v196, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v141 = v188;
  *v138 = v189;
  v138[1] = v141;
  v142 = v186;
  v138[2] = v187;
  v138[3] = v142;
  v143 = (v113 + v70[19]);
  v144 = v143[1];
  *v137 = *v143;
  v137[1] = v144;
  v145 = v70[25];

  sub_1D4F89DEC(v113 + v145, v35 + v176);
  v146 = *(v113 + v70[13]);
  v147 = v190;
  if (v146)
  {
    v148 = v193;
    sub_1D50E02E8(v146, v190);
    v149 = 0;
  }

  else
  {
    v149 = 1;
    v148 = v193;
  }

  __swift_storeEnumTagSinglePayload(v147, v149, 1, v180);
  sub_1D4E68940(v147, v35 + v182, &qword_1EC7EA788, &unk_1D56223A0);
  v195[3] = v32;
  v195[4] = sub_1D50EEFD8(&qword_1EDD5B358, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644AC0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v195);
  sub_1D50EF020(v35, boxed_opaque_existential_0, type metadata accessor for MusicMoviePropertyProvider);
  MusicMovie.init(propertyProvider:)(v195, v191);

  v151 = sub_1D560CD48();
  (*(*(v151 - 8) + 8))(v148, v151);
  sub_1D50EF07C(v113, type metadata accessor for StorePlatformMusicMovie);
  return sub_1D50EF07C(v35, type metadata accessor for MusicMoviePropertyProvider);
}

uint64_t sub_1D50D8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a3;
  v113 = a2;
  v111 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v83 - v6;
  v7 = sub_1D5610788();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D56107C8();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = &v83 - v11;
  v12 = sub_1D56109D8();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v99 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v96 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC18, &qword_1D56346D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v93 = &v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v22 - 8);
  v92 = &v83 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v114 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v84 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v95 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v83 - v33;
  v34 = sub_1D5610088();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v89 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D560D9A8();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D560E1F8();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v45 = &v83 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D878();
  if (qword_1EC7E94F0 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v34, qword_1EC87C588);
  v87 = type metadata accessor for StorePlatformMusicVideo(0);
  v47 = (a1 + *(v87 + 64));
  v88 = a1;
  sub_1D54301F4(v46, v40, *v47, v47[1], v43);
  (*(v38 + 8))(v40, v37);
  (*(v35 + 16))(v89, v46, v34);
  v86 = sub_1D560FDE8();
  v85 = v48;
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v49 = v87;
  sub_1D560E148();
  v50 = v88;
  v51 = v90;
  sub_1D4F39AB0(v88 + v49[7], v90, &qword_1EC7EB5B8, &unk_1D56206A0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    sub_1D4E50004(v51, &qword_1EC7EB5B8, &unk_1D56206A0);
    v53 = 1;
    v54 = v91;
  }

  else
  {
    v54 = v91;
    sub_1D5610758();
    (*(*(v52 - 8) + 8))(v51, v52);
    v53 = 0;
  }

  v55 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v54, v53, 1, v55);
  sub_1D560E1D8();

  sub_1D560E0C8();

  sub_1D560E0D8();
  sub_1D4F39AB0(v50 + v49[6], v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E1E8();
  sub_1D50EEFD8(&qword_1EC7EFC20, type metadata accessor for StorePlatformMusicVideo, &unk_1D56597A8);
  sub_1D5612A68();
  sub_1D560E118();
  v56 = *(v50 + v49[10]);
  if (v56)
  {
    sub_1D5386528(v56, v93);
  }

  else
  {
    v57 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v57);
  }

  sub_1D560E138();

  sub_1D560E178();

  sub_1D560E0B8();

  sub_1D560E0E8();
  v58 = v94;
  sub_1D560EF18();
  v59 = sub_1D560EF28();
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
  sub_1D560E1C8();
  sub_1D4F39AB0(v50 + v49[17], v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E128();
  if (*(v50 + v49[18]) == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC28, type metadata accessor for StorePlatformMusicVideo, &unk_1D56597F0);
    sub_1D5612A28();
  }

  v60 = v96;
  sub_1D560E188();
  sub_1D4F39AB0(v50 + v49[25], v60, &qword_1EC7EFBD0, &qword_1D5634650);
  v61 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    v62 = &qword_1EC7EFBD0;
    v63 = &qword_1D5634650;
    v64 = v60;
LABEL_15:
    sub_1D4E50004(v64, v62, v63);
    v66 = 1;
    v67 = v95;
    goto LABEL_17;
  }

  v65 = v84;
  sub_1D4F39AB0(v60, v84, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v60, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v65, 1, v52) == 1)
  {
    v62 = &qword_1EC7EB5B8;
    v63 = &unk_1D56206A0;
    v64 = v65;
    goto LABEL_15;
  }

  v67 = v95;
  sub_1D5610758();
  (*(*(v52 - 8) + 8))(v65, v52);
  v66 = 0;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v67, v66, 1, v55);
  sub_1D560E168();
  v68 = v100;
  sub_1D5610988();
  sub_1D50DF118(v68, v99);
  (*(v101 + 8))(v68, v102);
  sub_1D560E158();

  sub_1D560E1A8();
  v69 = v104;
  sub_1D56107A8();
  v71 = v108;
  v70 = v109;
  v72 = v106;
  (*(v108 + 104))(v106, *MEMORY[0x1E6975DC8], v109);
  sub_1D5610798();
  (*(v71 + 8))(v72, v70);
  (*(v105 + 8))(v69, v107);
  sub_1D560E0F8();
  sub_1D560E108();
  sub_1D4F39AB0(v50 + v49[26], v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D560E198();
  v73 = *(v50 + v49[15]);
  if (v73)
  {
    v74 = v110;
    v75 = v113;
    sub_1D50E02E8(v73, v110);
    v76 = 0;
  }

  else
  {
    v75 = v113;
    v74 = v110;
    v76 = 1;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v74, v76, 1, v77);
  sub_1D560E1B8();
  v78 = v98;
  v115[3] = v98;
  v115[4] = MEMORY[0x1E69751C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v115);
  v80 = v97;
  (*(v97 + 16))(boxed_opaque_existential_0, v45, v78);
  sub_1D560EDD8();

  v81 = sub_1D560CD48();
  (*(*(v81 - 8) + 8))(v75, v81);
  (*(v80 + 8))(v45, v78);
  return sub_1D50EF07C(v50, type metadata accessor for StorePlatformMusicVideo);
}

uint64_t sub_1D50D91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v116 = a2;
  v114 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = v88 - v6;
  v7 = sub_1D5610788();
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v109 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1D56107C8();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = v88 - v11;
  v12 = sub_1D56109D8();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v103 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC18, &qword_1D56346D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC48, &unk_1D5634C20);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v95 = v88 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = v88 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v117 = v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v88[0] = v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v92 = v88 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v98 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v93 = v88 - v35;
  v36 = sub_1D5610088();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v91 = v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D560D9A8();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = v88 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D5611E48();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v47 = v88 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D8E8();
  if (qword_1EC7E8DB0 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v36, qword_1EC87C0B0);
  v89 = type metadata accessor for StorePlatformSong(0);
  v49 = (a1 + *(v89 + 84));
  v90 = a1;
  sub_1D54301F4(v48, v42, *v49, v49[1], v45);
  (*(v40 + 8))(v42, v39);
  (*(v37 + 16))(v91, v48, v36);
  v88[2] = sub_1D560FDE8();
  v88[1] = v50;
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v51 = v89;
  sub_1D5611D78();
  v52 = v90;
  v53 = v92;
  sub_1D4F39AB0(v90 + v51[7], v92, &qword_1EC7EB5B8, &unk_1D56206A0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7EB5B8, &unk_1D56206A0);
    v55 = 1;
    v56 = v95;
    v57 = v93;
  }

  else
  {
    v57 = v93;
    sub_1D5610758();
    (*(*(v54 - 8) + 8))(v53, v54);
    v55 = 0;
    v56 = v95;
  }

  v58 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v57, v55, 1, v58);
  sub_1D5611E28();

  sub_1D5611CD8();

  sub_1D5611CE8();
  sub_1D4F39AB0(v52 + v51[6], v117, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611E38();
  if (*(v52 + v51[8]))
  {
    sub_1D56152A8();
  }

  v59 = v96;
  sub_1D5611D58();
  sub_1D50EEFD8(&qword_1EC7EFC50, type metadata accessor for StorePlatformSong, &unk_1D5634D20);
  sub_1D5612A68();
  sub_1D5611D38();
  sub_1D4F39AB0(v52 + v51[11], v56, &qword_1EC7EFC48, &unk_1D5634C20);
  v60 = type metadata accessor for StorePlatformComposer(0);
  if (__swift_getEnumTagSinglePayload(v56, 1, v60) == 1)
  {
    sub_1D4E50004(v56, &qword_1EC7EFC48, &unk_1D5634C20);
  }

  else
  {

    sub_1D50EF07C(v56, type metadata accessor for StorePlatformComposer);
  }

  sub_1D5611D48();
  v61 = *(v52 + v51[12]);
  if (v61)
  {
    sub_1D5386528(v61, v59);
  }

  else
  {
    v62 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v62);
  }

  sub_1D5611D68();
  sub_1D5611CF8();

  sub_1D5611DA8();

  sub_1D5611DD8();

  sub_1D5611D08();
  v63 = v97;
  sub_1D560EF18();
  v64 = sub_1D560EF28();
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v64);
  sub_1D5611E18();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D5611DB8();
  if (*(v52 + v51[22]) == 2)
  {
    sub_1D50EEFD8(&qword_1EC7EFC58, type metadata accessor for StorePlatformSong, &unk_1D5634D68);
    sub_1D5612A28();
  }

  v65 = v99;
  sub_1D5611DC8();
  sub_1D4F39AB0(v52 + v51[30], v65, &qword_1EC7EFBD0, &qword_1D5634650);
  v66 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    v67 = &qword_1EC7EFBD0;
    v68 = &qword_1D5634650;
    v69 = v65;
LABEL_20:
    sub_1D4E50004(v69, v67, v68);
    v71 = 1;
    v72 = v98;
    goto LABEL_22;
  }

  v70 = v88[0];
  sub_1D4F39AB0(v65, v88[0], &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v65, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v70, 1, v54) == 1)
  {
    v67 = &qword_1EC7EB5B8;
    v68 = &unk_1D56206A0;
    v69 = v70;
    goto LABEL_20;
  }

  v72 = v98;
  sub_1D5610758();
  (*(*(v54 - 8) + 8))(v70, v54);
  v71 = 0;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v72, v71, 1, v58);
  sub_1D5611D98();
  v73 = v103;
  sub_1D5610998();
  sub_1D50DF410(v73, v102);
  (*(v104 + 8))(v73, v105);
  sub_1D5611D88();

  sub_1D5611DF8();
  v74 = v107;
  sub_1D56107A8();
  v76 = v111;
  v75 = v112;
  v77 = v109;
  (*(v111 + 104))(v109, *MEMORY[0x1E6975DC8], v112);
  sub_1D5610798();
  (*(v76 + 8))(v77, v75);
  (*(v108 + 8))(v74, v110);
  sub_1D5611D18();
  sub_1D5611D28();
  sub_1D4F39AB0(v52 + v51[31], v117, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611DE8();
  v78 = *(v52 + v51[18]);
  if (v78)
  {
    v79 = v113;
    v80 = v116;
    sub_1D50E02E8(v78, v113);
    v81 = 0;
  }

  else
  {
    v80 = v116;
    v79 = v113;
    v81 = 1;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v79, v81, 1, v82);
  sub_1D5611E08();
  v83 = v101;
  v118[3] = v101;
  v118[4] = MEMORY[0x1E6976400];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v118);
  v85 = v100;
  (*(v100 + 16))(boxed_opaque_existential_0, v47, v83);
  sub_1D56136E8();

  v86 = sub_1D560CD48();
  (*(*(v86 - 8) + 8))(v80, v86);
  (*(v85 + 8))(v47, v83);
  return sub_1D50EF07C(v52, type metadata accessor for StorePlatformSong);
}

uint64_t sub_1D50DA260@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v203 = a3;
  v204 = a2;
  v202 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v201 = &v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v200 = &v168 - v8;
  *&v199 = sub_1D56128C8();
  *&v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v196 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v168 - v13;
  v193 = sub_1D5610788();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v188 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1D56107C8();
  v187 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v185 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v184 = &v168 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v20 - 8);
  v176 = &v168 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v183 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v168 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v178 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v168 - v30;
  v31 = type metadata accessor for TVEpisodePropertyProvider(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  v35 = v31[6];
  v36 = sub_1D560F928();
  v174 = v35;
  __swift_storeEnumTagSinglePayload(&v33[v35], 1, 1, v36);
  v37 = v31[10];
  v38 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v33[v37], 1, 1, v38);
  v39 = v31[13];
  v40 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v33[v39], 1, 1, v40);
  v41 = v31[17];
  v42 = sub_1D560C0A8();
  v177 = v41;
  __swift_storeEnumTagSinglePayload(&v33[v41], 1, 1, v42);
  v43 = v31[20];
  v44 = sub_1D5613178();
  __swift_storeEnumTagSinglePayload(&v33[v43], 1, 1, v44);
  v45 = v31[21];
  v46 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v33[v45], 1, 1, v46);
  v47 = v31[22];
  v48 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v33[v47], 1, 1, v48);
  __swift_storeEnumTagSinglePayload(&v33[v31[24]], 1, 1, v38);
  __swift_storeEnumTagSinglePayload(&v33[v31[25]], 1, 1, v38);
  v49 = v31[26];
  v50 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v33[v49], 1, 1, v50);
  __swift_storeEnumTagSinglePayload(&v33[v31[29]], 1, 1, v40);
  v51 = v31[31];
  v52 = sub_1D56109F8();
  v179 = v51;
  __swift_storeEnumTagSinglePayload(&v33[v51], 1, 1, v52);
  v180 = v31[32];
  *&v205 = v34;
  __swift_storeEnumTagSinglePayload(&v33[v180], 1, 1, v34);
  v181 = v31[34];
  __swift_storeEnumTagSinglePayload(&v33[v181], 1, 1, v38);
  v53 = v31[36];
  v54 = sub_1D560FDC8();
  __swift_storeEnumTagSinglePayload(&v33[v53], 1, 1, v54);
  __swift_storeEnumTagSinglePayload(&v33[v31[38]], 1, 1, v42);
  v189 = v31[44];
  __swift_storeEnumTagSinglePayload(&v33[v189], 1, 1, v42);
  v55 = v31[45];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v194 = v55;
  v192 = v56;
  __swift_storeEnumTagSinglePayload(&v33[v55], 1, 1, v56);
  v57 = v31[46];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  __swift_storeEnumTagSinglePayload(&v33[v57], 1, 1, v58);
  v59 = v31[47];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  __swift_storeEnumTagSinglePayload(&v33[v59], 1, 1, v60);
  v61 = v31[48];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v33[v61], 1, 1, v62);
  v63 = v31[49];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  __swift_storeEnumTagSinglePayload(&v33[v63], 1, 1, v64);
  v65 = v31[50];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(&v33[v65], 1, 1, v66);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v67 = sub_1D560D9A8();
  v68 = __swift_project_value_buffer(v67, qword_1EDD53C40);
  if (qword_1EC7E8B08 != -1)
  {
    swift_once();
  }

  v69 = sub_1D5610088();
  v70 = __swift_project_value_buffer(v69, qword_1EC87BF30);
  v207 = type metadata accessor for StorePlatformTVEpisode(0);
  v71 = v207[17];
  v206 = a1;
  sub_1D54301F4(v70, v68, *(a1 + v71), *(a1 + v71 + 8), &v33[v31[53]]);
  v173 = sub_1D560FDE8();
  v172 = v72;
  sub_1D5614A88();
  v171 = sub_1D5614BD8();
  v170 = sub_1D5614BD8();
  v169 = sub_1D5614BD8();
  v168 = sub_1D5614BD8();
  v73 = &v33[v31[5]];
  *v73 = 0;
  v73[8] = 1;
  v33[v31[16]] = 2;
  v33[v31[18]] = 2;
  v74 = v31[23];
  v33[v74] = 26;
  *&v33[v31[28]] = 0;
  v75 = &v33[v31[30]];
  *v75 = xmmword_1D5626F70;
  *(v75 + 3) = 0;
  *(v75 + 4) = 0;
  *(v75 + 2) = 0;
  *&v33[v31[33]] = 0;
  v76 = &v33[v31[42]];
  *(v76 + 2) = 0u;
  *(v76 + 3) = 0u;
  *v76 = 0u;
  *(v76 + 1) = 0u;
  v182 = v76;
  *&v33[v31[51]] = 0;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v77 = qword_1EC87C178;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v167 = sub_1D5615E18();

    v77 = v167;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v78 = v206;
  *&v33[v31[52]] = v77;
  (*(*(v69 - 8) + 16))(&v33[v31[54]], v70, v69);
  v79 = &v33[v31[55]];
  v80 = v172;
  *v79 = v173;
  v79[1] = v80;
  *&v33[v31[56]] = v171;
  *&v33[v31[57]] = v170;
  *&v33[v31[58]] = v169;
  *&v33[v31[59]] = v168;
  v81 = v207;
  v82 = v26;
  sub_1D4F39AB0(v78 + v207[24], v26, &qword_1EC7EB5B8, &unk_1D56206A0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v83) == 1)
  {
    sub_1D4E50004(v26, &qword_1EC7EB5B8, &unk_1D56206A0);
    v84 = 1;
    v85 = v175;
  }

  else
  {
    v85 = v175;
    sub_1D5610758();
    (*(*(v83 - 8) + 8))(v82, v83);
    v84 = 0;
  }

  __swift_storeEnumTagSinglePayload(v85, v84, 1, v205);
  sub_1D4E68940(v85, v33, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D50EEFD8(&qword_1EC7EDDD0, type metadata accessor for StorePlatformTVEpisode, &unk_1D5628680);
  v86 = v176;
  sub_1D5612A68();
  sub_1D4E68940(v86, &v33[v174], &qword_1EC7EDB98, L"X\b\a");
  v87 = v78[2];
  if (v87)
  {
    v87 = sub_1D511C2A4(v87);
  }

  v88 = v31[8];
  *&v33[v31[7]] = v87;
  v89 = &v33[v88];
  v90 = v78[4];
  *v89 = v78[3];
  *(v89 + 1) = v90;
  v91 = v78[5];

  if (v91)
  {
    v92 = sub_1D5259FF8(v91);
  }

  else
  {
    v92 = 0;
  }

  v93 = v31[15];
  *&v33[v31[9]] = v92;
  *&v33[v93] = *(v78 + v81[14]);
  v94 = *(v78 + v81[16]);
  v95 = v94 != 2 && (v94 & 1) != 0;
  *v73 = v95;
  v73[8] = 0;
  v96 = *(v78 + v81[21]);

  if (v96)
  {
    v97 = sub_1D55CE994(v96);
  }

  else
  {
    v97 = 0;
    v98 = 1;
  }

  v99 = v31[12];
  v100 = &v33[v31[11]];
  v101 = v31[14];
  v102 = v31[19];
  *v100 = v97;
  v100[8] = v98 & 1;
  v103 = v207;
  *&v33[v99] = *(v78 + v207[9]);
  *&v33[v101] = *(v78 + v103[10]);
  v104 = v103[18];

  sub_1D4F89DEC(v78 + v104, &v33[v177]);
  v33[v102] = sub_1D500E9C0() & 1;
  v105 = v103;
  v106 = *(v78 + v103[28]);
  if (v106 == 26)
  {
    v107 = 26;
  }

  else
  {
    sub_1D4FD3EB8(v106, v210);
    v107 = v210[0];
  }

  v108 = v178;
  v33[v74] = v107;
  v109 = v78 + v103[11];
  v110 = v183;
  if (v109[8] == 1)
  {
    v109 = v78 + v103[27];
    v111 = v109[8];
  }

  else
  {
    v111 = 0;
  }

  v112 = &v33[v31[27]];
  *v112 = *v109;
  v112[8] = v111;
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v113 = sub_1D56109D8();
  v114 = __swift_project_value_buffer(v113, qword_1EC87BF50);
  v115 = v184;
  sub_1D50DF708(v114, v184);
  sub_1D4E68940(v115, &v33[v179], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F39AB0(v78 + v105[22], v110, &qword_1EC7EB5B8, &unk_1D56206A0);
  if (__swift_getEnumTagSinglePayload(v110, 1, v83) == 1)
  {
    sub_1D4E50004(v110, &qword_1EC7EB5B8, &unk_1D56206A0);
    v116 = 1;
  }

  else
  {
    sub_1D5610758();
    (*(*(v83 - 8) + 8))(v110, v83);
    v116 = 0;
  }

  __swift_storeEnumTagSinglePayload(v108, v116, 1, v205);
  *&v205 = &v33[v31[35]];
  sub_1D4E68940(v108, &v33[v180], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v117 = v186;
  sub_1D56107A8();
  v118 = v191;
  v119 = v188;
  v120 = v193;
  (*(v191 + 104))(v188, *MEMORY[0x1E6975DC8], v193);
  v121 = v185;
  sub_1D5610798();
  v122 = v206;
  (*(v118 + 8))(v119, v120);
  (*(v187 + 8))(v117, v190);
  sub_1D4E68940(v121, &v33[v181], &qword_1EC7EA3B8, &unk_1D561E370);
  v123 = v122 + v105[12];
  v124 = *v123;
  LOBYTE(v123) = v123[8];
  v125 = v205;
  *v205 = v124;
  *(v125 + 8) = v123;
  v126 = v105[8];
  v127 = v195;
  sub_1D4F39AB0(v122 + v126, v195, &qword_1EC7EC978, &unk_1D56222A0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
  {
    sub_1D4E50004(v127, &qword_1EC7EC978, &unk_1D56222A0);
    v129 = 0;
    v130 = 0;
  }

  else
  {
    v131 = v197;
    sub_1D5610708();
    (*(*(v128 - 8) + 8))(v127, v128);
    v129 = sub_1D56128A8();
    v130 = v132;
    (*(v198 + 8))(v131, v199);
  }

  v133 = &v33[v31[37]];
  v134 = &v33[v31[39]];
  *v134 = v129;
  v134[1] = v130;
  v135 = v122[1];
  *v133 = *v122;
  *(v133 + 1) = v135;
  v136 = v122 + v126;
  v137 = v196;
  sub_1D4F39AB0(v136, v196, &qword_1EC7EC978, &unk_1D56222A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v137, 1, v128);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v137, &qword_1EC7EC978, &unk_1D56222A0);
    v139 = 0;
    v140 = 0;
  }

  else
  {
    v141 = v197;
    sub_1D5610708();
    (*(*(v128 - 8) + 8))(v137, v128);
    v139 = sub_1D56128B8();
    v140 = v142;
    (*(v198 + 8))(v141, v199);
  }

  v143 = v200;
  v144 = &v33[v31[40]];
  v145 = &v33[v31[41]];
  *v144 = v139;
  v144[1] = v140;
  v146 = v207;
  v147 = v122 + v207[13];
  v148 = *v147;
  LOBYTE(v147) = v147[8];
  *v145 = v148;
  v145[8] = v147;
  sub_1D4F39AB0(v122 + v146[26], v143, &qword_1EC7ED9B0, &unk_1D5631050);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  if (__swift_getEnumTagSinglePayload(v143, 1, v149) == 1)
  {
    sub_1D4E50004(v143, &qword_1EC7ED9B0, &unk_1D5631050);
    v205 = 0u;
    v200 = 0u;
    v199 = 0u;
    v198 = 0u;
  }

  else
  {
    v150 = sub_1D5138FDC(v210);
    (*(*(v149 - 8) + 8))(v143, v149, v150);
    v200 = v210[1];
    v205 = v210[0];
    v198 = v210[3];
    v199 = v210[2];
    v146 = v207;
  }

  v151 = &v33[v31[43]];
  v152 = v182;
  v153 = *(v182 + 1);
  v209[0] = *v182;
  v209[1] = v153;
  v154 = *(v182 + 3);
  v209[2] = *(v182 + 2);
  v209[3] = v154;
  sub_1D4E50004(v209, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v155 = v200;
  *v152 = v205;
  *(v152 + 1) = v155;
  v156 = v198;
  *(v152 + 2) = v199;
  *(v152 + 3) = v156;
  v157 = (v122 + v146[20]);
  v158 = v157[1];
  *v151 = *v157;
  *(v151 + 1) = v158;
  v159 = v146[29];

  sub_1D4F89DEC(v122 + v159, &v33[v189]);
  v160 = *(v122 + v146[15]);
  v161 = v201;
  if (v160)
  {
    v162 = v204;
    sub_1D50E02E8(v160, v201);
    v163 = 0;
  }

  else
  {
    v163 = 1;
    v162 = v204;
  }

  __swift_storeEnumTagSinglePayload(v161, v163, 1, v192);
  sub_1D4E68940(v161, &v33[v194], &qword_1EC7EA788, &unk_1D56223A0);
  v208[3] = v31;
  v208[4] = sub_1D50EEFD8(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider, &unk_1D5637BD0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v208);
  sub_1D50EF020(v33, boxed_opaque_existential_0, type metadata accessor for TVEpisodePropertyProvider);
  TVEpisode.init(propertyProvider:)(v208, v202);

  v165 = sub_1D560CD48();
  (*(*(v165 - 8) + 8))(v162, v165);
  sub_1D50EF07C(v33, type metadata accessor for TVEpisodePropertyProvider);
  return sub_1D50EF07C(v122, type metadata accessor for StorePlatformTVEpisode);
}

uint64_t sub_1D50DB960@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v146 = a3;
  v147 = a2;
  v145 = a4;
  v5 = sub_1D5610788();
  v143 = *(v5 - 8);
  v144 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v141 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1D56107C8();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v139 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = v115 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v115 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = v115 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v134 = v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v135 = v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v115 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v126 = v115 - v25;
  v26 = type metadata accessor for UploadedAudioPropertyProvider(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v27 + 20);
  v31 = sub_1D56140F8();
  v123 = v30;
  v122 = v31;
  __swift_storeEnumTagSinglePayload(&v29[v30], 1, 1, v31);
  v32 = v26[6];
  v33 = type metadata accessor for AssetFlavors(0);
  v130 = v32;
  v127 = v33;
  __swift_storeEnumTagSinglePayload(&v29[v32], 1, 1, v33);
  v34 = v26[7];
  v35 = sub_1D560F928();
  v131 = v34;
  __swift_storeEnumTagSinglePayload(&v29[v34], 1, 1, v35);
  v36 = v26[8];
  v37 = sub_1D56106B8();
  v133 = v36;
  v116 = v37;
  __swift_storeEnumTagSinglePayload(&v29[v36], 1, 1, v37);
  v38 = v26[11];
  v39 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v29[v38], 1, 1, v39);
  v40 = v26[13];
  v41 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v29[v40], 1, 1, v41);
  v42 = v26[14];
  v43 = sub_1D56128E8();
  __swift_storeEnumTagSinglePayload(&v29[v42], 1, 1, v43);
  v44 = v26[15];
  v45 = sub_1D5610CB8();
  __swift_storeEnumTagSinglePayload(&v29[v44], 1, 1, v45);
  v46 = v26[16];
  v47 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v29[v46], 1, 1, v47);
  v48 = v26[17];
  v49 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v29[v48], 1, 1, v49);
  v50 = v26[18];
  v51 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v29[v50], 1, 1, v51);
  __swift_storeEnumTagSinglePayload(&v29[v26[19]], 1, 1, v39);
  v52 = v26[20];
  v53 = sub_1D56109F8();
  v129 = v52;
  __swift_storeEnumTagSinglePayload(&v29[v52], 1, 1, v53);
  v54 = v26[21];
  v55 = sub_1D560C0A8();
  v128 = v54;
  __swift_storeEnumTagSinglePayload(&v29[v54], 1, 1, v55);
  __swift_storeEnumTagSinglePayload(&v29[v26[22]], 1, 1, v41);
  v132 = v26[24];
  __swift_storeEnumTagSinglePayload(&v29[v132], 1, 1, v41);
  v56 = v26[26];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v29[v56], 1, 1, v57);
  v58 = v26[27];
  v59 = type metadata accessor for CuratorRelationshipProvider(0);
  __swift_storeEnumTagSinglePayload(&v29[v58], 1, 1, v59);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v124 = v23;
  v125 = v14;
  v60 = sub_1D560D9A8();
  v61 = __swift_project_value_buffer(v60, qword_1EC7F08A0);
  if (qword_1EC7E8DA0 != -1)
  {
    swift_once();
  }

  v62 = sub_1D5610088();
  v63 = __swift_project_value_buffer(v62, qword_1EC87C098);
  v64 = type metadata accessor for StorePlatformUploadedAudio(0);
  v65 = a1;
  sub_1D54301F4(v63, v61, *&a1[v64[12]], *&a1[v64[12] + 8], &v29[v26[29]]);
  v121 = sub_1D560FDE8();
  v120 = v66;
  sub_1D5614A88();
  v119 = sub_1D5614BD8();
  v118 = sub_1D5614BD8();
  v117 = sub_1D5614BD8();
  v67 = sub_1D5614BD8();
  v68 = &v29[v26[9]];
  *v68 = 0;
  v68[8] = 1;
  if (qword_1EC7E9010 != -1)
  {
    swift_once();
  }

  v69 = qword_1EC87C278;
  if (qword_1EC87C278 >> 62)
  {
    v113 = qword_1EC87C278 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C278 < 0)
    {
      v113 = qword_1EC87C278;
    }

    v115[1] = v113;
    sub_1D560CDE8();

    v114 = sub_1D5615E18();

    v69 = v114;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v29[v26[28]] = v69;
  (*(*(v62 - 8) + 16))(&v29[v26[30]], v63, v62);
  v70 = &v29[v26[31]];
  v71 = v120;
  *v70 = v121;
  v70[1] = v71;
  *&v29[v26[32]] = v119;
  *&v29[v26[33]] = v118;
  *&v29[v26[34]] = v117;
  *&v29[v26[35]] = v67;
  v72 = v65;
  v73 = *(v65 + 1);
  *v29 = *v65;
  *(v29 + 1) = v73;
  v74 = &v65[v64[8]];
  if ((v74[8] & 1) == 0)
  {
    *v68 = *v74;
    v68[8] = 0;
  }

  v75 = v124;
  sub_1D4F39AB0(&v65[v64[5]], v124, &qword_1EC7EB5B8, &unk_1D56206A0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);

  v78 = v125;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v75, &qword_1EC7EB5B8, &unk_1D56206A0);
    v79 = 1;
    v80 = v134;
    v81 = v135;
    v82 = v126;
  }

  else
  {
    v82 = v126;
    sub_1D5610758();
    (*(*(v76 - 8) + 8))(v75, v76);
    v79 = 0;
    v80 = v134;
    v81 = v135;
  }

  __swift_storeEnumTagSinglePayload(v82, v79, 1, v122);
  sub_1D4E68940(v82, &v29[v123], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v72 + v64[6], v80, &qword_1EC7EF380, &unk_1D5677480);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  if (__swift_getEnumTagSinglePayload(v80, 1, v83) == 1)
  {
    sub_1D4E50004(v80, &qword_1EC7EF380, &unk_1D5677480);
    v84 = 1;
  }

  else
  {
    sub_1D536AC28();
    (*(*(v83 - 8) + 8))(v80, v83);
    v84 = 0;
  }

  __swift_storeEnumTagSinglePayload(v81, v84, 1, v127);
  sub_1D4E68940(v81, &v29[v130], &qword_1EC7ECC88, &unk_1D56310F0);
  sub_1D50EEFD8(&qword_1EC7EFC98, type metadata accessor for StorePlatformUploadedAudio, &unk_1D5633320);
  v85 = v136;
  sub_1D5612A68();
  sub_1D4E68940(v85, &v29[v131], &qword_1EC7EDB98, L"X\b\a");
  v86 = *(v72 + v64[9]);
  if (v86)
  {
    sub_1D5386528(v86, v78);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v116);
  }

  v87 = v26[10];
  v88 = v26[12];
  v89 = v26[23];
  v90 = v26[25];
  sub_1D4E68940(v78, &v29[v133], &qword_1EC7EC478, &unk_1D56299D0);
  *&v29[v87] = *(v72 + v64[10]);
  *&v29[v88] = *(v72 + v64[11]);
  v91 = qword_1EC7E8B30;

  if (v91 != -1)
  {
    swift_once();
  }

  v136 = &v29[v90];
  v92 = &v29[v89];
  v93 = sub_1D56109D8();
  v94 = __swift_project_value_buffer(v93, qword_1EC87BF68);
  v95 = v137;
  sub_1D50DFA00(v94, v137);
  sub_1D4E68940(v95, &v29[v129], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F89DEC(v72 + v64[16], &v29[v128]);
  v96 = (v72 + v64[15]);
  v97 = v96[1];
  *v92 = *v96;
  *(v92 + 1) = v97;

  v98 = v139;
  sub_1D56107A8();
  v99 = *MEMORY[0x1E6975DC8];
  v137 = v72;
  v101 = v143;
  v100 = v144;
  v102 = v64;
  v103 = v141;
  (*(v143 + 104))(v141, v99, v144);
  v104 = v138;
  sub_1D5610798();
  (*(v101 + 8))(v103, v100);
  (*(v140 + 8))(v98, v142);
  sub_1D4E68940(v104, &v29[v132], &qword_1EC7EA3B8, &unk_1D561E370);
  v105 = v137;
  v106 = (v137 + v102[19]);
  v107 = *v106;
  v108 = v106[1];
  v109 = v136;
  *v136 = v107;
  *(v109 + 1) = v108;
  v148[3] = v26;
  v148[4] = sub_1D50EEFD8(&qword_1EC7EF3E0, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D5640718);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v148);
  sub_1D50EF020(v29, boxed_opaque_existential_0, type metadata accessor for UploadedAudioPropertyProvider);

  UploadedAudio.init(propertyProvider:)(v148, v145);

  v111 = sub_1D560CD48();
  (*(*(v111 - 8) + 8))(v147, v111);
  sub_1D50EF07C(v105, type metadata accessor for StorePlatformUploadedAudio);
  return sub_1D50EF07C(v29, type metadata accessor for UploadedAudioPropertyProvider);
}

uint64_t sub_1D50DC860@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v145 = a3;
  v146 = a2;
  v144 = a4;
  v5 = sub_1D5610788();
  v142 = *(v5 - 8);
  v143 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v140 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1D56107C8();
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v137 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v136 = &v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v135 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v113 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v133 = &v113 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v126 = &v113 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v121 = &v113 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v123 = &v113 - v23;
  v24 = type metadata accessor for UploadedVideoPropertyProvider(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 20);
  v29 = sub_1D56140F8();
  v122 = v28;
  v120 = v29;
  __swift_storeEnumTagSinglePayload(&v27[v28], 1, 1, v29);
  v30 = v24[6];
  v31 = type metadata accessor for AssetFlavors(0);
  v129 = v30;
  v127 = v31;
  __swift_storeEnumTagSinglePayload(&v27[v30], 1, 1, v31);
  v32 = v24[7];
  v33 = sub_1D560F928();
  v130 = v32;
  __swift_storeEnumTagSinglePayload(&v27[v32], 1, 1, v33);
  v34 = v24[8];
  v35 = sub_1D56106B8();
  v132 = v34;
  v114 = v35;
  __swift_storeEnumTagSinglePayload(&v27[v34], 1, 1, v35);
  v36 = v24[11];
  v37 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v27[v36], 1, 1, v37);
  v38 = v24[13];
  v39 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v27[v38], 1, 1, v39);
  v40 = v24[14];
  v41 = sub_1D56128E8();
  __swift_storeEnumTagSinglePayload(&v27[v40], 1, 1, v41);
  v42 = v24[15];
  v43 = type metadata accessor for HLSAsset(0);
  __swift_storeEnumTagSinglePayload(&v27[v42], 1, 1, v43);
  v44 = v24[16];
  v45 = sub_1D5610CB8();
  __swift_storeEnumTagSinglePayload(&v27[v44], 1, 1, v45);
  v46 = v24[17];
  v47 = sub_1D560C0A8();
  v128 = v46;
  __swift_storeEnumTagSinglePayload(&v27[v46], 1, 1, v47);
  v48 = v24[18];
  v49 = sub_1D5613198();
  __swift_storeEnumTagSinglePayload(&v27[v48], 1, 1, v49);
  v50 = v24[19];
  v51 = sub_1D56134E8();
  __swift_storeEnumTagSinglePayload(&v27[v50], 1, 1, v51);
  v52 = v24[20];
  v53 = sub_1D5614A78();
  __swift_storeEnumTagSinglePayload(&v27[v52], 1, 1, v53);
  __swift_storeEnumTagSinglePayload(&v27[v24[21]], 1, 1, v37);
  v54 = v24[22];
  v55 = sub_1D56109F8();
  v124 = v54;
  __swift_storeEnumTagSinglePayload(&v27[v54], 1, 1, v55);
  v125 = v24[23];
  __swift_storeEnumTagSinglePayload(&v27[v125], 1, 1, v47);
  v131 = v24[25];
  __swift_storeEnumTagSinglePayload(&v27[v131], 1, 1, v39);
  v56 = v24[27];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  __swift_storeEnumTagSinglePayload(&v27[v56], 1, 1, v57);
  v58 = v24[28];
  v59 = type metadata accessor for CuratorRelationshipProvider(0);
  __swift_storeEnumTagSinglePayload(&v27[v58], 1, 1, v59);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v60 = sub_1D560D9A8();
  v61 = __swift_project_value_buffer(v60, qword_1EDD53CF0);
  if (qword_1EC7E9418 != -1)
  {
    swift_once();
  }

  v62 = sub_1D5610088();
  v63 = __swift_project_value_buffer(v62, qword_1EC87C508);
  v64 = type metadata accessor for StorePlatformUploadedVideo(0);
  sub_1D54301F4(v63, v61, *&a1[v64[11]], *&a1[v64[11] + 8], &v27[v24[31]]);
  v119 = sub_1D560FDE8();
  v118 = v65;
  sub_1D5614A88();
  v117 = sub_1D5614BD8();
  v116 = sub_1D5614BD8();
  v115 = sub_1D5614BD8();
  v66 = sub_1D5614BD8();
  v67 = &v27[v24[9]];
  *v67 = 0;
  v67[8] = 1;
  *&v27[v24[29]] = 0;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v112 = sub_1D5615E18();

    v68 = v112;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v27[v24[30]] = v68;
  (*(*(v62 - 8) + 16))(&v27[v24[32]], v63, v62);
  v69 = &v27[v24[33]];
  v70 = v118;
  *v69 = v119;
  v69[1] = v70;
  *&v27[v24[34]] = v117;
  *&v27[v24[35]] = v116;
  *&v27[v24[36]] = v115;
  *&v27[v24[37]] = v66;
  v71 = a1;
  v72 = *(a1 + 1);
  *v27 = *a1;
  *(v27 + 1) = v72;
  v73 = v121;
  sub_1D4F39AB0(&v71[v64[5]], v121, &qword_1EC7EB5B8, &unk_1D56206A0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v73, &qword_1EC7EB5B8, &unk_1D56206A0);
    v76 = 1;
    v77 = v126;
    v78 = v123;
  }

  else
  {
    v78 = v123;
    sub_1D5610758();
    (*(*(v74 - 8) + 8))(v73, v74);
    v76 = 0;
    v77 = v126;
  }

  __swift_storeEnumTagSinglePayload(v78, v76, 1, v120);
  sub_1D4E68940(v78, &v27[v122], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v79 = v133;
  sub_1D4F39AB0(&v71[v64[6]], v133, &qword_1EC7EF380, &unk_1D5677480);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  if (__swift_getEnumTagSinglePayload(v79, 1, v80) == 1)
  {
    sub_1D4E50004(v79, &qword_1EC7EF380, &unk_1D5677480);
    v81 = 1;
  }

  else
  {
    sub_1D536AC28();
    (*(*(v80 - 8) + 8))(v79, v80);
    v81 = 0;
  }

  __swift_storeEnumTagSinglePayload(v77, v81, 1, v127);
  sub_1D4E68940(v77, &v27[v129], &qword_1EC7ECC88, &unk_1D56310F0);
  sub_1D50EEFD8(&qword_1EC7EFCA0, type metadata accessor for StorePlatformUploadedVideo, &unk_1D5651B20);
  v82 = v134;
  sub_1D5612A68();
  sub_1D4E68940(v82, &v27[v130], &qword_1EC7EDB98, L"X\b\a");
  v83 = *&v71[v64[8]];
  v84 = v135;
  if (v83)
  {
    sub_1D5386528(v83, v135);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v135, 1, 1, v114);
  }

  v85 = v24[10];
  v86 = v24[12];
  v87 = v24[24];
  v88 = v24[26];
  sub_1D4E68940(v84, &v27[v132], &qword_1EC7EC478, &unk_1D56299D0);
  *&v27[v85] = *&v71[v64[9]];
  *&v27[v86] = *&v71[v64[10]];
  v89 = v64[12];

  sub_1D4F89DEC(&v71[v89], &v27[v128]);
  if (qword_1EC7E8B38 != -1)
  {
    swift_once();
  }

  v135 = &v27[v88];
  v90 = &v27[v87];
  v91 = sub_1D56109D8();
  v92 = __swift_project_value_buffer(v91, qword_1EC87BF80);
  v93 = v136;
  sub_1D50DFCF8(v92, v136);
  sub_1D4E68940(v93, &v27[v124], &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D4F89DEC(&v71[v64[16]], &v27[v125]);
  v94 = &v71[v64[15]];
  v95 = *(v94 + 1);
  *v90 = *v94;
  *(v90 + 1) = v95;

  v96 = v137;
  sub_1D56107A8();
  v97 = *MEMORY[0x1E6975DC8];
  v99 = v142;
  v98 = v143;
  v100 = *(v142 + 104);
  v136 = v71;
  v101 = v140;
  v100(v140, v97, v143);
  v102 = v64;
  v103 = v138;
  sub_1D5610798();
  (*(v99 + 8))(v101, v98);
  (*(v139 + 8))(v96, v141);
  sub_1D4E68940(v103, &v27[v131], &qword_1EC7EA3B8, &unk_1D561E370);
  v104 = v136;
  v105 = &v136[v102[19]];
  v106 = *v105;
  v107 = *(v105 + 1);
  v108 = v135;
  *v135 = v106;
  *(v108 + 1) = v107;
  v147[3] = v24;
  v147[4] = sub_1D50EEFD8(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D5632250);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v147);
  sub_1D50EF020(v27, boxed_opaque_existential_0, type metadata accessor for UploadedVideoPropertyProvider);

  UploadedVideo.init(propertyProvider:)(v147, v144);

  v110 = sub_1D560CD48();
  (*(*(v110 - 8) + 8))(v146, v110);
  sub_1D50EF07C(v104, type metadata accessor for StorePlatformUploadedVideo);
  return sub_1D50EF07C(v27, type metadata accessor for UploadedVideoPropertyProvider);
}

uint64_t sub_1D50DD78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v54 = a2;
  v55 = a4;
  v5 = sub_1D5613838();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StorePlatformSong(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = sub_1D560CD48();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D560EEA8();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StorePlatformMusicVideo(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = type metadata accessor for StorePlatformPlaylistEntry(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613D28();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1D50EF020(a1, v24, type metadata accessor for StorePlatformPlaylistEntry);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D50EF0FC(v24, v21, type metadata accessor for StorePlatformMusicVideo);
      sub_1D50EF020(v21, v19, type metadata accessor for StorePlatformMusicVideo);
      v37 = v51;
      v38 = v54;
      (*(v12 + 16))(v51, v54, v11);
      v39 = v43;
      sub_1D50D8230(v19, v37, v53, v43);
      (*(v12 + 8))(v38, v11);
      sub_1D50EF07C(v28, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v21, type metadata accessor for StorePlatformMusicVideo);
      (*(v44 + 32))(v27, v39, v45);
      v36 = MEMORY[0x1E6976DF8];
      goto LABEL_5;
    case 2u:
      v31 = v47;
      sub_1D50EF0FC(v24, v47, type metadata accessor for StorePlatformSong);
      v32 = v46;
      sub_1D50EF020(v31, v46, type metadata accessor for StorePlatformSong);
      v33 = v51;
      v34 = v54;
      (*(v12 + 16))(v51, v54, v11);
      v35 = v48;
      sub_1D50D91A4(v32, v33, v53, v48);
      (*(v12 + 8))(v34, v11);
      sub_1D50EF07C(v28, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v31, type metadata accessor for StorePlatformSong);
      (*(v49 + 32))(v27, v35, v50);
      v36 = MEMORY[0x1E6976E18];
LABEL_5:
      v40 = v52;
      (*(v52 + 104))(v27, *v36, v25);
      v30 = v55;
      (*(v40 + 32))(v55, v27, v25);
      v29 = 0;
      break;
    default:

      (*(v12 + 8))(v54, v11);
      sub_1D50EF07C(a1, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF07C(v24, type metadata accessor for StorePlatformPlaylistEntry);
      v29 = 1;
      v30 = v55;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v25);
}

void *sub_1D50DDDD4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  v10 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return OUTLINED_FUNCTION_31_27();
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = (v4)(&v11, v8);
    if (v3)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    ++v5;
    v8 += 40;
    if (v11)
    {
      MEMORY[0x1DA6EAF30](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      result = sub_1D56151F8();
      v5 = v9;
      v7 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D50DDF14()
{
  OUTLINED_FUNCTION_32_27();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_29_28();
  v6 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v26 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v25 = v10;
  v11 = 0;
  v12 = *(v1 + 16);
  v27 = (v13 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    v14 = *(sub_1D5612478() - 8);
    v2(v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11);
    if (v0)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
    {
      sub_1D4E50004(v3, &unk_1EC7F1970, &qword_1D561F4A0);
      ++v11;
    }

    else
    {
      v15 = *v27;
      (*v27)(v25, v3, v6);
      v15(v26, v25, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_30();
        sub_1D4F007F0();
        v28 = v21;
      }

      OUTLINED_FUNCTION_35_27();
      if (v17)
      {
        v24 = v16;
        sub_1D4F007F0();
        v16 = v24;
        v28 = v22;
      }

      ++v11;
      *(v28 + 16) = v16;
      OUTLINED_FUNCTION_25_34();
      v15(v18 + v19 * v20, v26, v6);
    }
  }

  return OUTLINED_FUNCTION_31_27();
}

uint64_t sub_1D50DE1C4()
{
  OUTLINED_FUNCTION_32_27();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_28();
  v7 = type metadata accessor for GenericMusicItem(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v26 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_2();
  v25 = v11;
  v12 = 0;
  v13 = *(v1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD80, &qword_1D561F320) - 8);
    v2(v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
    if (v0)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
    {
      sub_1D4E50004(v3, &qword_1EC7EA608, &qword_1D561C510);
      ++v12;
    }

    else
    {
      sub_1D50EF0FC(v3, v25, type metadata accessor for GenericMusicItem);
      sub_1D50EF0FC(v25, v26, type metadata accessor for GenericMusicItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_30();
        sub_1D4F0136C();
        v27 = v21;
      }

      OUTLINED_FUNCTION_35_27();
      if (v16)
      {
        v24 = v15;
        sub_1D4F0136C();
        v15 = v24;
        v27 = v22;
      }

      ++v12;
      *(v27 + 16) = v15;
      OUTLINED_FUNCTION_25_34();
      sub_1D50EF0FC(v20, v17 + v18 * v19, type metadata accessor for GenericMusicItem);
    }
  }

  return OUTLINED_FUNCTION_31_27();
}

uint64_t sub_1D50DE474(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v31[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D5613D28();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v25 - v12;
  v27 = v13;
  v14 = *(a3 + 16);
  v29 = (v13 + 32);
  v15 = (a3 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  v28 = a1;
  if (v14)
  {
    while (1)
    {
      v17 = *v15;
      v31[0] = *(v15 - 1);
      v31[1] = v17;

      (a1)(v31);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1D4E50004(v8, &qword_1EC7EA888, &qword_1D563B8C0);
      }

      else
      {
        v18 = v9;
        v19 = *v29;
        v20 = v26;
        (*v29)(v26, v8, v18);
        v19(v30, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F01718();
          v16 = v22;
        }

        v21 = *(v16 + 16);
        if (v21 >= *(v16 + 24) >> 1)
        {
          sub_1D4F01718();
          v16 = v23;
        }

        *(v16 + 16) = v21 + 1;
        v19((v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21), v30, v18);
        v9 = v18;
        a1 = v28;
      }

      v15 += 2;
      if (!--v14)
      {
        return v16;
      }
    }
  }

  return v16;
}

uint64_t sub_1D50DE744(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v26 = type metadata accessor for TVEpisode(0);
  v22 = *(v26 - 8);
  v9 = MEMORY[0x1EEE9AC00](v26);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(a3 + 16);
  v14 = (a3 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  v23 = a1;
  if (v13)
  {
    while (1)
    {
      v16 = *v14;
      v25[0] = *(v14 - 1);
      v25[1] = v16;

      (a1)(v25);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v26) == 1)
      {
        sub_1D4E50004(v8, &qword_1EC7EA880, &unk_1D561CEE0);
      }

      else
      {
        sub_1D50EF0FC(v8, v12, type metadata accessor for TVEpisode);
        sub_1D50EF0FC(v12, v24, type metadata accessor for TVEpisode);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F017F0();
          v15 = v18;
        }

        v17 = *(v15 + 16);
        if (v17 >= *(v15 + 24) >> 1)
        {
          sub_1D4F017F0();
          v15 = v19;
        }

        *(v15 + 16) = v17 + 1;
        sub_1D50EF0FC(v24, v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17, type metadata accessor for TVEpisode);
        a1 = v23;
      }

      v14 += 2;
      if (!--v13)
      {
        return v15;
      }
    }
  }

  return v15;
}

uint64_t sub_1D50DE9F8(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v26 = type metadata accessor for TVSeason(0);
  v22 = *(v26 - 8);
  v9 = MEMORY[0x1EEE9AC00](v26);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(a3 + 16);
  v14 = (a3 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  v23 = a1;
  if (v13)
  {
    while (1)
    {
      v16 = *v14;
      v25[0] = *(v14 - 1);
      v25[1] = v16;

      (a1)(v25);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v26) == 1)
      {
        sub_1D4E50004(v8, &qword_1EC7EA878, &unk_1D5634790);
      }

      else
      {
        sub_1D50EF0FC(v8, v12, type metadata accessor for TVSeason);
        sub_1D50EF0FC(v12, v24, type metadata accessor for TVSeason);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F018C8();
          v15 = v18;
        }

        v17 = *(v15 + 16);
        if (v17 >= *(v15 + 24) >> 1)
        {
          sub_1D4F018C8();
          v15 = v19;
        }

        *(v15 + 16) = v17 + 1;
        sub_1D50EF0FC(v24, v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17, type metadata accessor for TVSeason);
        a1 = v23;
      }

      v14 += 2;
      if (!--v13)
      {
        return v15;
      }
    }
  }

  return v15;
}

void *sub_1D50DECAC(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      return OUTLINED_FUNCTION_31_27();
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return OUTLINED_FUNCTION_31_27();
    }

    ++v6;
    if (v12)
    {
      MEMORY[0x1DA6EAF30](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      result = sub_1D56151F8();
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D50DEE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformMusicMovie(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFC08, type metadata accessor for StorePlatformMusicMovie, &unk_1D564F190);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E9408 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C4F0);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 56)), *(v3 + *(v16 + 56) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformMusicVideo(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFC20, type metadata accessor for StorePlatformMusicVideo, &unk_1D56597A8);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E94F0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C588);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 64)), *(v3 + *(v16 + 64) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformSong(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFC50, type metadata accessor for StorePlatformSong, &unk_1D5634D20);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E8DB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C0B0);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 84)), *(v3 + *(v16 + 84) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DF708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformTVEpisode(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EDDD0, type metadata accessor for StorePlatformTVEpisode, &unk_1D5628680);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E8B08 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87BF30);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 68)), *(v3 + *(v16 + 68) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformUploadedAudio(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFC98, type metadata accessor for StorePlatformUploadedAudio, &unk_1D5633320);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E8DA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C098);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 48)), *(v3 + *(v16 + 48) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformUploadedVideo(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFCA0, type metadata accessor for StorePlatformUploadedVideo, &unk_1D5651B20);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E9418 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C508);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 44)), *(v3 + *(v16 + 44) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50DFFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1D560D9A8();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56109F8();
  v24 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  v16 = type metadata accessor for StorePlatformAlbum(0);
  v17 = sub_1D50EEFD8(&qword_1EC7EFBF8, type metadata accessor for StorePlatformAlbum, &unk_1D565CED8);
  result = MEMORY[0x1DA6E8800](v16, v17);
  if (result)
  {
    sub_1D501F124(v10);
    if (qword_1EC7E9510 != -1)
    {
      swift_once();
    }

    v19 = sub_1D5610088();
    v20 = __swift_project_value_buffer(v19, qword_1EC87C5B0);
    sub_1D54301F4(v20, v10, *(v3 + *(v16 + 84)), *(v3 + *(v16 + 84) + 8), v14);
    (*(v22 + 8))(v10, v23);
    sub_1D560D608();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    sub_1D4E50004(v24, &qword_1EC7EB5C0, &unk_1D56223C0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    return sub_1D4F39A1C(v7, v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  }

  return result;
}

uint64_t sub_1D50E02E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v71[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = v71 - v6;
  v99 = sub_1D560F148();
  v114 = *(v99 - 8);
  v7 = MEMORY[0x1EEE9AC00](v99);
  v98 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = v71 - v9;
  v10 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D560D9A8();
  v12 = *(v111 - 8);
  v13 = MEMORY[0x1EEE9AC00](v111);
  v96 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = v71 - v15;
  v95 = sub_1D560D838();
  v112 = *(v95 - 8);
  v16 = MEMORY[0x1EEE9AC00](v95);
  v94 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v93 = v71 - v18;
  v92 = sub_1D56120A8();
  v19 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D5610088();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v110 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v71 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v90 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v71 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = v71 - v33;
  v35 = sub_1D5613C48();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v105 = v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for StorePlatformGenreAttribute(0);
  MEMORY[0x1EEE9AC00](v89);
  v101 = v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v40 = *(a1 + 16);
    v41 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v104 = *(v38 + 72);
    v109 = (v22 + 8);
    v73 = (v114 + 16);
    v84 = (v12 + 16);
    v83 = *MEMORY[0x1E6975048];
    v72 = (v114 + 8);
    v82 = (v112 + 32);
    v81 = (v12 + 8);
    v80 = (v19 + 16);
    v79 = (v19 + 8);
    v76 = v36;
    v103 = (v36 + 32);
    v78 = xmmword_1D561C050;
    v112 = MEMORY[0x1E69E7CC0];
    v102 = v21;
    v86 = v34;
    v42 = v101;
    v43 = v40;
    v88 = v35;
    v87 = v32;
    v85 = (v22 + 16);
    v77 = v26;
    do
    {
      v114 = v41;
      sub_1D50EF020(v41, v42, type metadata accessor for StorePlatformGenreAttribute);
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v35);
      if (*(v42 + 8))
      {
        v108 = v43;
        sub_1D560FFC8();
        sub_1D560D918();
        v44 = v110;
        sub_1D560FE68();
        v45 = sub_1D4F3B22C();
        v107 = *v109;
        v107(v44, v21);
        if (v45)
        {
          (*v84)(v96, v113, v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
          v46 = sub_1D560DB08();
          v47 = *(v46 - 8);
          v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
          v49 = swift_allocObject();
          *(v49 + 16) = v78;
          (*(v47 + 104))(v49 + v48, v83, v46);

          sub_1D560E718();
          v50 = v94;
          sub_1D560D748();
          v51 = v26;
          v52 = v85;
        }

        else
        {
          v52 = v85;
          v53 = v75;
          (*v85)(v75, v26, v21);
          __swift_storeEnumTagSinglePayload(v53, 0, 1, v21);

          v54 = v74;
          sub_1D560F128();
          (*v73)(v98, v54, v99);
          v51 = v26;
          (*v84)(v96, v113, v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
          v55 = sub_1D560DB08();
          v56 = *(v55 - 8);
          v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = v78;
          (*(v56 + 104))(v58 + v57, v83, v55);
          sub_1D560E718();
          v50 = v94;
          sub_1D560D798();
          v59 = v54;
          v21 = v102;
          (*v72)(v59, v99);
        }

        (*v82)(v93, v50, v95);
        (*v81)(v113, v111);
        (*v52)(v110, v51, v21);
        v106 = sub_1D560FDE8();
        sub_1D5614A88();
        sub_1D5614BD8();
        sub_1D5614BD8();
        sub_1D5614BD8();
        sub_1D5614BD8();
        v60 = v91;
        v21 = v102;
        sub_1D5612018();
        v42 = v101;

        sub_1D5612078();
        sub_1D4F39AB0(v42 + *(v89 + 24), v100, &unk_1EC7E9CA8, &unk_1D561D1D0);
        sub_1D5612068();
        v61 = v92;
        v115[3] = v92;
        v115[4] = MEMORY[0x1E6976410];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v115);
        (*v80)(boxed_opaque_existential_0, v60, v61);
        v63 = v90;
        sub_1D5613BA8();
        (*v79)(v60, v61);
        v26 = v77;
        v107(v77, v21);
        v32 = v87;
        sub_1D4E50004(v87, &qword_1EC7EA898, &unk_1D561CF00);
        v35 = v88;
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v88);
        sub_1D4F39A1C(v63, v32, &qword_1EC7EA898, &unk_1D561CF00);
        v34 = v86;
        v43 = v108;
      }

      sub_1D4F39A1C(v32, v34, &qword_1EC7EA898, &unk_1D561CF00);
      sub_1D50EF07C(v42, type metadata accessor for StorePlatformGenreAttribute);
      if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
      {
        sub_1D4E50004(v34, &qword_1EC7EA898, &unk_1D561CF00);
      }

      else
      {
        v64 = *v103;
        (*v103)(v105, v34, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4EFFA84();
          v112 = v68;
        }

        v65 = *(v112 + 16);
        v66 = v76;
        if (v65 >= *(v112 + 24) >> 1)
        {
          sub_1D4EFFA84();
          v66 = v76;
          v112 = v69;
        }

        v67 = v112;
        *(v112 + 16) = v65 + 1;
        v64((v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65), v105, v35);
      }

      v41 = v114 + v104;
      --v43;
    }

    while (v43);
  }

  else
  {
    v112 = MEMORY[0x1E69E7CC0];
  }

  v115[0] = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBE8, &unk_1D56346B0);
  sub_1D50EEF84(&qword_1EC7EFBF0, &qword_1EC7EFBE8, &unk_1D56346B0);
  return sub_1D560DAD8();
}

uint64_t sub_1D50E11B0()
{
  OUTLINED_FUNCTION_58_0();

  sub_1D560F5F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  sub_1D560F608();
}

uint64_t sub_1D50E1268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  type metadata accessor for StorePlatformGenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v51 = v10;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState(0, v4[10], v4[11], v4[12]);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v53 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;

  sub_1D560F5E8();

  v22 = (*v2)[14];
  swift_beginAccess();
  v54 = v16;
  (*(v16 + 16))(v21, v2 + v22, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D4F39A1C(v21, a1, &qword_1EC7EFBB8, &qword_1D5634638);
  }

  v50 = a1;
  v24 = objc_opt_self();
  v25 = sub_1D5614BA8();

  v56[0] = 0;
  v26 = [v24 dataWithJSONObject:v25 options:0 error:v56];

  v27 = v56[0];
  if (v26)
  {
    v28 = sub_1D560C198();
    v30 = v29;

    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    sub_1D560B988();
    sub_1D50EEFD8(&qword_1EC7EFBC8, type metadata accessor for StorePlatformGenericMusicItem, &unk_1D567A140);
    v49 = v28;
    sub_1D560B948();
    sub_1D560B978();
    v44 = sub_1D560B958();
    sub_1D50E18E0(v13, v44, v56);

    (*(v51 + 8))(v13, v52);
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v45 = v50;
    sub_1D5612AF8();

    sub_1D4E55E1C(v49, v30);
    sub_1D50EF07C(v8, type metadata accessor for StorePlatformGenericMusicItem);
    v46 = sub_1D5611AB8();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v31 = v27;
    v32 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
    }

    v33 = sub_1D560C758();
    __swift_project_value_buffer(v33, qword_1EDD76DC8);
    v34 = v32;
    v35 = sub_1D560C738();
    v36 = sub_1D56156C8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56[0] = v38;
      *v37 = 136446210;
      v55 = v32;
      v39 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v40 = sub_1D5614DB8();
      v42 = sub_1D4E6835C(v40, v41, v56);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D4E3F000, v35, v36, "Failed to convert store platform dictionary to generic music item. Error: %{public}s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA6ED200](v38, -1, -1);
      MEMORY[0x1DA6ED200](v37, -1, -1);
    }

    else
    {
    }

    v43 = sub_1D5611AB8();
    v45 = v50;
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v43);
  }

  v47 = v53;
  sub_1D4F39AB0(v45, v53, &qword_1EC7EFBB8, &qword_1D5634638);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v54 + 40))(v2 + v22, v47, v14);
  return swift_endAccess();
}

uint64_t sub_1D50E18E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v323 = a3;
  v324 = a2;
  v321 = a1;
  v4 = type metadata accessor for StorePlatformUploadedVideo(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v317 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v318 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for StorePlatformUploadedAudio(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v315 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v316 = v14;
  v15 = OUTLINED_FUNCTION_70_0();
  v16 = type metadata accessor for StorePlatformTVShow(v15);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v313 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v314 = v20;
  v21 = OUTLINED_FUNCTION_70_0();
  v22 = type metadata accessor for StorePlatformTVSeason(v21);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v311 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v312 = v26;
  v27 = OUTLINED_FUNCTION_70_0();
  v28 = type metadata accessor for StorePlatformTVEpisode(v27);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v309 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_2();
  v310 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for StorePlatformStation(v33);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v307 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v308 = v38;
  v39 = OUTLINED_FUNCTION_70_0();
  v40 = type metadata accessor for StorePlatformSong(v39);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v305 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  v306 = v44;
  v45 = OUTLINED_FUNCTION_70_0();
  v46 = type metadata accessor for StorePlatformSocialProfile(v45);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v304 = v49;
  v50 = OUTLINED_FUNCTION_70_0();
  v51 = type metadata accessor for StorePlatformRecordLabel(v50);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  v303[10] = v54;
  v55 = OUTLINED_FUNCTION_70_0();
  v56 = type metadata accessor for StorePlatformRadioShow(v55);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v303[8] = v59;
  v60 = OUTLINED_FUNCTION_70_0();
  v61 = type metadata accessor for StorePlatformPlaylist(v60);
  v62 = OUTLINED_FUNCTION_22(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  v303[6] = v64;
  v65 = OUTLINED_FUNCTION_70_0();
  v66 = type metadata accessor for StorePlatformMusicVideo(v65);
  v67 = OUTLINED_FUNCTION_22(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  v303[4] = v69;
  v70 = OUTLINED_FUNCTION_70_0();
  v71 = type metadata accessor for StorePlatformMusicMovie(v70);
  v72 = OUTLINED_FUNCTION_22(v71);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_2();
  v303[2] = v74;
  v75 = OUTLINED_FUNCTION_70_0();
  v76 = type metadata accessor for StorePlatformGenre(v75);
  v77 = OUTLINED_FUNCTION_22(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v78);
  v80 = v303 - v79;
  v81 = type metadata accessor for StorePlatformCurator(0);
  v82 = OUTLINED_FUNCTION_22(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_59_0();
  v85 = v83 - v84;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_34();
  v87 = type metadata accessor for StorePlatformArtist(0);
  v88 = OUTLINED_FUNCTION_22(v87);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_59_0();
  v91 = v89 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v303 - v93;
  v320 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  v322 = v97 - v96;
  v98 = OUTLINED_FUNCTION_70_0();
  v99 = type metadata accessor for StorePlatformAlbum(v98);
  v100 = OUTLINED_FUNCTION_22(v99);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_59_0();
  v103 = v101 - v102;
  MEMORY[0x1EEE9AC00](v104);
  v106 = v303 - v105;
  type metadata accessor for StorePlatformGenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5();
  v110 = v109 - v108;
  sub_1D50EF020(v319, v109 - v108, type metadata accessor for StorePlatformGenericMusicItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v238 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v238, v94, v239);
      sub_1D50EF020(v94, v91, type metadata accessor for StorePlatformArtist);
      v240 = OUTLINED_FUNCTION_34_25();
      v241(v240);
      v242 = sub_1D5613EF8();
      OUTLINED_FUNCTION_15_41(v242, MEMORY[0x1E6976F10]);
      OUTLINED_FUNCTION_9_51();
      sub_1D50E6B20(v91, v85, v103, v110);
      v118 = type metadata accessor for StorePlatformArtist;
      v119 = v94;
      return sub_1D50EF07C(v119, v118);
    case 2u:
      v193 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v193, v3, v194);
      sub_1D50EF020(v3, v85, type metadata accessor for StorePlatformCurator);
      v195 = OUTLINED_FUNCTION_1_76();
      v196(v195);
      v197 = sub_1D56141F8();
      OUTLINED_FUNCTION_15_41(v197, MEMORY[0x1E6977030]);
      OUTLINED_FUNCTION_9_51();
      v198 = OUTLINED_FUNCTION_33_31();
      sub_1D50E75D8(v198, v199, v200, v201);
      v118 = type metadata accessor for StorePlatformCurator;
      v119 = v3;
      return sub_1D50EF07C(v119, v118);
    case 3u:
      v214 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v214, v80, v215);
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF020(v216, v217, v218);
      v219 = OUTLINED_FUNCTION_1_76();
      v220(v219);
      v221 = sub_1D5613C48();
      OUTLINED_FUNCTION_15_41(v221, MEMORY[0x1E6976DB8]);
      OUTLINED_FUNCTION_9_51();
      v222 = OUTLINED_FUNCTION_33_31();
      sub_1D50E8254(v222, v223, v224, v225);
      v118 = type metadata accessor for StorePlatformGenre;
      v119 = v80;
      return sub_1D50EF07C(v119, v118);
    case 4u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF0FC(v156, v157, v158);
      v159 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v159, v325, v160);
      v161 = OUTLINED_FUNCTION_1_76();
      v162(v161);
      v163 = type metadata accessor for MusicMovie(0);
      OUTLINED_FUNCTION_19_37(v163);
      v164 = sub_1D50EEFD8(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_26_33(v164);
      OUTLINED_FUNCTION_9_51();
      v165 = OUTLINED_FUNCTION_3_68();
      sub_1D50D6BFC(v165, v166, v167, v168);
      v132 = type metadata accessor for StorePlatformMusicMovie;
      goto LABEL_19;
    case 5u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF0FC(v243, v244, v245);
      v246 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v246, &v326, v247);
      v248 = OUTLINED_FUNCTION_1_76();
      v249(v248);
      v250 = sub_1D560EEA8();
      OUTLINED_FUNCTION_15_41(v250, MEMORY[0x1E69754C8]);
      OUTLINED_FUNCTION_9_51();
      v251 = OUTLINED_FUNCTION_3_68();
      sub_1D50D8230(v251, v252, v253, v254);
      v132 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_19;
    case 6u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF0FC(v267, v268, v269);
      v270 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v270, &v327, v271);
      v272 = OUTLINED_FUNCTION_1_76();
      v273(v272);
      v274 = sub_1D5614898();
      OUTLINED_FUNCTION_15_41(v274, MEMORY[0x1E69773C0]);
      OUTLINED_FUNCTION_9_51();
      v275 = OUTLINED_FUNCTION_3_68();
      sub_1D50EBB70(v275, v276, v277, v278);
      v132 = type metadata accessor for StorePlatformPlaylist;
      goto LABEL_19;
    case 7u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF0FC(v226, v227, v228);
      v229 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v229, &v328, v230);
      v231 = OUTLINED_FUNCTION_1_76();
      v232(v231);
      v233 = sub_1D5614B68();
      OUTLINED_FUNCTION_15_41(v233, MEMORY[0x1E6977538]);
      OUTLINED_FUNCTION_9_51();
      v234 = OUTLINED_FUNCTION_3_68();
      sub_1D50EA664(v234, v235, v236, v237);
      v132 = type metadata accessor for StorePlatformRadioShow;
      goto LABEL_19;
    case 8u:
      OUTLINED_FUNCTION_11_49();
      OUTLINED_FUNCTION_122_0();
      sub_1D50EF0FC(v290, v291, v292);
      v293 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v293, &v329, v294);
      v295 = OUTLINED_FUNCTION_1_76();
      v296(v295);
      v297 = sub_1D560F8B8();
      OUTLINED_FUNCTION_15_41(v297, MEMORY[0x1E6975888]);
      OUTLINED_FUNCTION_9_51();
      v298 = OUTLINED_FUNCTION_3_68();
      sub_1D50EB054(v298, v299, v300, v301);
      v132 = type metadata accessor for StorePlatformRecordLabel;
      goto LABEL_19;
    case 9u:
      v181 = OUTLINED_FUNCTION_11_49();
      v85 = v304;
      sub_1D50EF0FC(v181, v304, v182);
      v183 = OUTLINED_FUNCTION_16_40();
      OUTLINED_FUNCTION_27_27(v183, &v330, v184);
      v185 = OUTLINED_FUNCTION_1_76();
      v186(v185);
      v187 = type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_19_37(v187);
      v188 = sub_1D50EEFD8(&qword_1EC7EE028, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_26_33(v188);
      OUTLINED_FUNCTION_9_51();
      v189 = OUTLINED_FUNCTION_3_68();
      sub_1D5444674(v189, v190, v191, v192);
      v132 = type metadata accessor for StorePlatformSocialProfile;
      goto LABEL_19;
    case 0xAu:
      v279 = OUTLINED_FUNCTION_11_49();
      v85 = v306;
      sub_1D50EF0FC(v279, v306, v280);
      v281 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v281, v305, v282);
      v283 = OUTLINED_FUNCTION_1_76();
      v284(v283);
      v285 = sub_1D5613838();
      OUTLINED_FUNCTION_15_41(v285, MEMORY[0x1E6976BC8]);
      OUTLINED_FUNCTION_9_51();
      v286 = OUTLINED_FUNCTION_3_68();
      sub_1D50D91A4(v286, v287, v288, v289);
      v132 = type metadata accessor for StorePlatformSong;
      goto LABEL_19;
    case 0xBu:
      v145 = OUTLINED_FUNCTION_11_49();
      v85 = v308;
      sub_1D50EF0FC(v145, v308, v146);
      v147 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v147, v307, v148);
      v149 = OUTLINED_FUNCTION_1_76();
      v150(v149);
      v151 = sub_1D5614408();
      OUTLINED_FUNCTION_15_41(v151, MEMORY[0x1E6977168]);
      OUTLINED_FUNCTION_9_51();
      v152 = OUTLINED_FUNCTION_3_68();
      sub_1D50EDB24(v152, v153, v154, v155);
      v132 = type metadata accessor for StorePlatformStation;
      goto LABEL_19;
    case 0xCu:
      v169 = OUTLINED_FUNCTION_11_49();
      v85 = v310;
      sub_1D50EF0FC(v169, v310, v170);
      v171 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v171, v309, v172);
      v173 = OUTLINED_FUNCTION_1_76();
      v174(v173);
      v175 = type metadata accessor for TVEpisode(0);
      OUTLINED_FUNCTION_19_37(v175);
      v176 = sub_1D50EEFD8(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_26_33(v176);
      OUTLINED_FUNCTION_9_51();
      v177 = OUTLINED_FUNCTION_3_68();
      sub_1D50DA260(v177, v178, v179, v180);
      v132 = type metadata accessor for StorePlatformTVEpisode;
      goto LABEL_19;
    case 0xDu:
      v255 = OUTLINED_FUNCTION_11_49();
      v85 = v312;
      sub_1D50EF0FC(v255, v312, v256);
      v257 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v257, v311, v258);
      v259 = OUTLINED_FUNCTION_1_76();
      v260(v259);
      v261 = type metadata accessor for TVSeason(0);
      OUTLINED_FUNCTION_19_37(v261);
      v262 = sub_1D50EEFD8(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_26_33(v262);
      OUTLINED_FUNCTION_9_51();
      v263 = OUTLINED_FUNCTION_3_68();
      sub_1D50E5E50(v263, v264, v265, v266);
      v132 = type metadata accessor for StorePlatformTVSeason;
      goto LABEL_19;
    case 0xEu:
      v133 = OUTLINED_FUNCTION_11_49();
      v85 = v314;
      sub_1D50EF0FC(v133, v314, v134);
      v135 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v135, v313, v136);
      v137 = OUTLINED_FUNCTION_1_76();
      v138(v137);
      v139 = type metadata accessor for TVShow(0);
      OUTLINED_FUNCTION_19_37(v139);
      v140 = sub_1D50EEFD8(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      OUTLINED_FUNCTION_26_33(v140);
      OUTLINED_FUNCTION_9_51();
      v141 = OUTLINED_FUNCTION_3_68();
      sub_1D50E4E24(v141, v142, v143, v144);
      v132 = type metadata accessor for StorePlatformTVShow;
      goto LABEL_19;
    case 0xFu:
      v202 = OUTLINED_FUNCTION_11_49();
      v85 = v316;
      sub_1D50EF0FC(v202, v316, v203);
      v204 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v204, v315, v205);
      v206 = OUTLINED_FUNCTION_1_76();
      v207(v206);
      v208 = type metadata accessor for UploadedAudio(0);
      OUTLINED_FUNCTION_19_37(v208);
      v209 = sub_1D50EEFD8(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_26_33(v209);
      OUTLINED_FUNCTION_9_51();
      v210 = OUTLINED_FUNCTION_3_68();
      sub_1D50DB960(v210, v211, v212, v213);
      v132 = type metadata accessor for StorePlatformUploadedAudio;
      goto LABEL_19;
    case 0x10u:
      v120 = OUTLINED_FUNCTION_11_49();
      v85 = v318;
      sub_1D50EF0FC(v120, v318, v121);
      v122 = OUTLINED_FUNCTION_16_40();
      sub_1D50EF020(v122, v317, v123);
      v124 = OUTLINED_FUNCTION_1_76();
      v125(v124);
      v126 = type metadata accessor for UploadedVideo(0);
      OUTLINED_FUNCTION_19_37(v126);
      v127 = sub_1D50EEFD8(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_26_33(v127);
      OUTLINED_FUNCTION_9_51();
      v128 = OUTLINED_FUNCTION_3_68();
      sub_1D50DC860(v128, v129, v130, v131);
      v132 = type metadata accessor for StorePlatformUploadedVideo;
LABEL_19:
      v118 = v132;
      v119 = v85;
      break;
    default:
      v111 = OUTLINED_FUNCTION_11_49();
      sub_1D50EF0FC(v111, v106, v112);
      sub_1D50EF020(v106, v103, type metadata accessor for StorePlatformAlbum);
      v113 = OUTLINED_FUNCTION_34_25();
      v114(v113);
      v115 = sub_1D5613AF8();
      v116 = OUTLINED_FUNCTION_15_41(v115, MEMORY[0x1E6976D08]);
      v117 = v324;

      sub_1D50E9244(v103, v85, v117, v116);
      v118 = type metadata accessor for StorePlatformAlbum;
      v119 = v106;
      break;
  }

  return sub_1D50EF07C(v119, v118);
}

uint64_t sub_1D50E29D8(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = a1[2];
  if (result == a2[2] && a1[3] == a2[3])
  {
    v6 = 1;
    goto LABEL_10;
  }

  v5 = sub_1D5616168();
  result = 0;
  v6 = v5 & 1;
  if (v5)
  {
LABEL_10:
    MEMORY[0x1EEE9AC00](result);

    sub_1D560F608();

    return v6;
  }

  return result;
}

uint64_t sub_1D50E2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D560F608();
}

uint64_t sub_1D50E2B84(char *a1, uint64_t a2, _BYTE *a3)
{
  v60 = a3;
  v5 = *a1;
  v59 = sub_1D5611AB8();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB0, &qword_1D5634630);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v13;
  v14 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState(255, v5[10], v5[11], v5[12]);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  v65 = TupleTypeMetadata2;
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v52 - v17;
  v19 = *(v14 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  v24 = v5[14];
  swift_beginAccess();
  v25 = *(v19 + 16);
  v25(v23, &a1[v24], v14);
  v26 = *(*a2 + 112);
  swift_beginAccess();
  v27 = v65;
  v28 = *(v65 + 48);
  v57 = v19;
  v29 = v19;
  v30 = v14;
  v31 = v18;
  v32 = v23;
  v33 = v18;
  v34 = v28;
  (*(v29 + 32))(v31, v32, v14);
  v25(&v33[v34], (a2 + v26), v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v27;
    v36 = v63;
    v25(v63, v33, v30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v30;
      v38 = v61;
      sub_1D4F39A1C(v36, v61, &qword_1EC7EFBB8, &qword_1D5634638);
      v39 = v62;
      sub_1D4F39A1C(&v33[v34], v62, &qword_1EC7EFBB8, &qword_1D5634638);
      v40 = *(v56 + 48);
      v41 = v58;
      sub_1D4F39AB0(v38, v58, &qword_1EC7EFBB8, &qword_1D5634638);
      sub_1D4F39AB0(v39, v41 + v40, &qword_1EC7EFBB8, &qword_1D5634638);
      v42 = v59;
      if (__swift_getEnumTagSinglePayload(v41, 1, v59) == 1)
      {
        sub_1D4E50004(v39, &qword_1EC7EFBB8, &qword_1D5634638);
        sub_1D4E50004(v38, &qword_1EC7EFBB8, &qword_1D5634638);
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v42) == 1)
        {
          sub_1D4E50004(v41, &qword_1EC7EFBB8, &qword_1D5634638);
          v43 = 1;
LABEL_13:
          *v60 = v43 & 1;
          v45 = v57;
          v44 = v37;
          return (*(v45 + 8))(v33, v44);
        }
      }

      else
      {
        v46 = v54;
        sub_1D4F39AB0(v41, v54, &qword_1EC7EFBB8, &qword_1D5634638);
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v42) != 1)
        {
          v65 = v33;
          v47 = v55;
          v48 = v46;
          v49 = v53;
          (*(v55 + 32))(v53, v41 + v40, v42);
          sub_1D50EEFD8(&qword_1EC7EFBC0, MEMORY[0x1E6976320], MEMORY[0x1E6976330]);
          v43 = sub_1D5614D18();
          v50 = *(v47 + 8);
          v50(v49, v42);
          sub_1D4E50004(v62, &qword_1EC7EFBB8, &qword_1D5634638);
          sub_1D4E50004(v61, &qword_1EC7EFBB8, &qword_1D5634638);
          v50(v48, v42);
          v33 = v65;
          sub_1D4E50004(v41, &qword_1EC7EFBB8, &qword_1D5634638);
          goto LABEL_13;
        }

        sub_1D4E50004(v62, &qword_1EC7EFBB8, &qword_1D5634638);
        sub_1D4E50004(v38, &qword_1EC7EFBB8, &qword_1D5634638);
        (*(v55 + 8))(v46, v42);
      }

      sub_1D4E50004(v41, &qword_1EC7EFBB0, &qword_1D5634630);
      v43 = 0;
      goto LABEL_13;
    }

    sub_1D4E50004(v36, &qword_1EC7EFBB8, &qword_1D5634638);
    v44 = v35;
  }

  else
  {
    v44 = v27;
  }

  v45 = v64;
  return (*(v45 + 8))(v33, v44);
}

uint64_t sub_1D50E32A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36_24();
  v8 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v3, 1, v8);
  if (v9)
  {
    sub_1D4E50004(v3, &qword_1EC7EFBB8, &qword_1D5634638);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  else
  {
    sub_1D5611AA8();
    OUTLINED_FUNCTION_24_0();
    return (*(v10 + 8))(v3, v8);
  }
}

uint64_t sub_1D50E33AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  sub_1D50E11B0();
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v5)
  {
    sub_1D4E50004(v3, &qword_1EC7EFBB8, &qword_1D5634638);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = sub_1D5611A48();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v3, v4);
  }

  return v6;
}

uint64_t sub_1D50E34A0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_1D560E728();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v56 = v5 - v4;
  OUTLINED_FUNCTION_70_0();
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v51 = v7;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v55 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v53 = v18;
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v50 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_34();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  v25 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  sub_1D50E11B0();
  v32 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v24, 1, v32);
  if (v33)
  {
    sub_1D4E50004(v24, &qword_1EC7EFBB8, &qword_1D5634638);
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
    }

    v34 = sub_1D560C758();
    __swift_project_value_buffer(v34, qword_1EDD76DC8);
    v35 = sub_1D560C738();
    v36 = sub_1D56156D8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v54;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D4E3F000, v35, v36, "Unable to retrieve the identifier set from the underlying property provider in StorePlatformItemPropertyProvider.swift. Returning an empty identifier set.", v39, 2u);
      MEMORY[0x1DA6ED200](v39, -1, -1);
    }

    sub_1D560EED8();
    (*(v12 + 104))(v16, *MEMORY[0x1E69755D0], v10);
    OUTLINED_FUNCTION_71();
    sub_1D560F118();
    v40 = v53;
    (*(v53 + 16))(v50, v1, v38);
    if (qword_1EC7E8C88 != -1)
    {
      swift_once();
    }

    v41 = v52;
    v42 = __swift_project_value_buffer(v52, qword_1EC7EEAD0);
    (*(v51 + 16))(v55, v42, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v43 = sub_1D560DB08();
    OUTLINED_FUNCTION_4();
    v45 = v44;
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D561C050;
    (*(v45 + 104))(v47 + v46, *MEMORY[0x1E6975048], v43);
    sub_1D560E718();
    sub_1D560D798();
    return (*(v40 + 8))(v1, v38);
  }

  else
  {
    sub_1D5611A28();
    OUTLINED_FUNCTION_24_0();
    (*(v48 + 8))(v24, v32);
    return (*(v27 + 32))(v57, v31, v25);
  }
}

uint64_t sub_1D50E3A04(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0();

  sub_1D560F608();

  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  return (*(v2 + 8))(a1);
}

uint64_t sub_1D50E3AB8(char *a1, void (*a2)(char *, void))
{
  v28 = a2;
  v3 = *a1;
  v4 = sub_1D560D838();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for StorePlatformItemPropertyProvider.LoadingState(0, v3[10], v3[11], v3[12]);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = v3[14];
  swift_beginAccess();
  (*(v13 + 16))(v18, &a1[v19], v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D4F39A1C(v18, v11, &qword_1EC7EFBB8, &qword_1D5634638);
    v20 = sub_1D5611AB8();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v20))
    {
      (*(v26 + 16))(v29, v28, v27);
      v28 = sub_1D56119F8();
      __swift_mutable_project_boxed_opaque_existential_1(v21, *(v21 + 24));
      sub_1D5610CE8();
      v28(v30, 0);
    }

    sub_1D4F39AB0(v11, v16, &qword_1EC7EFBB8, &qword_1D5634638);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(&a1[v19], v16, v12);
    swift_endAccess();
  }

  else
  {
    (*(v13 + 8))(v18, v12);
    sub_1D50E1268(v9);
    v22 = sub_1D5611AB8();
    if (!__swift_getEnumTagSinglePayload(v9, 1, v22))
    {
      (*(v26 + 16))(v29, v28, v27);
      v28 = sub_1D56119F8();
      __swift_mutable_project_boxed_opaque_existential_1(v23, *(v23 + 24));
      sub_1D5610CE8();
      v28(v30, 0);
    }

    sub_1D4F39AB0(v9, v16, &qword_1EC7EFBB8, &qword_1D5634638);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(&a1[v19], v16, v12);
    swift_endAccess();
    v11 = v9;
  }

  return sub_1D4E50004(v11, &qword_1EC7EFBB8, &qword_1D5634638);
}

uint64_t sub_1D50E3F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_34();
  result = sub_1D5612668();
  if (*(result + 16))
  {
    (*(v9 + 16))(v1, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7);

    sub_1D50E11B0();
    v16 = sub_1D5611AB8();
    OUTLINED_FUNCTION_57(v6, 1, v16);
    if (v17)
    {
      sub_1D4E50004(v6, &qword_1EC7EFBB8, &qword_1D5634638);
    }

    else
    {
      sub_1D5611A98();
      (*(v9 + 8))(v1, v7);
      OUTLINED_FUNCTION_24_0();
      (*(v18 + 8))(v6, v16);
      v1 = v13;
    }

    return (*(v9 + 32))(a1, v1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50E4190()
{
  v1 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36_24();
  v10 = sub_1D5611AB8();
  OUTLINED_FUNCTION_57(v0, 1, v10);
  if (v11)
  {
    sub_1D4E50004(v0, &qword_1EC7EFBB8, &qword_1D5634638);
LABEL_5:
    sub_1D50E3F5C(v7);
    v12 = sub_1D560FDE8();
    (*(v3 + 8))(v7, v1);

    return v12;
  }

  v12 = sub_1D5611A88();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  (*(v15 + 8))(v0, v10);
  if (!v14)
  {
    goto LABEL_5;
  }

  return v12;
}

uint64_t sub_1D50E4360(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  sub_1D50E11B0();
  v6 = sub_1D5611AB8();
  v7 = OUTLINED_FUNCTION_57(v5, 1, v6);
  if (v8)
  {
    sub_1D4E50004(v5, &qword_1EC7EFBB8, &qword_1D5634638);
    sub_1D5614A88();
    return sub_1D5614BD8();
  }

  else
  {
    v9 = a1(v7);
    OUTLINED_FUNCTION_24_0();
    (*(v10 + 8))(v5, v6);
  }

  return v9;
}

uint64_t sub_1D50E44B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBB8, &qword_1D5634638);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D50E11B0();
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v11)
  {
    sub_1D4E50004(v3, &qword_1EC7EFBB8, &qword_1D5634638);
    result = sub_1D5615E08();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
    sub_1D5611A08();
    return (*(v6 + 8))(v10, v4);
  }

  return result;
}

uint64_t **sub_1D50E4658()
{
  v1 = *v0;

  OUTLINED_FUNCTION_58_0();
  v3 = *(v2 + 112);
  type metadata accessor for StorePlatformItemPropertyProvider.LoadingState(0, v1[10], v1[11], v1[12]);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_58_0();

  return v0;
}

uint64_t sub_1D50E4720()
{
  sub_1D50E4658();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D50E4790()
{
  sub_1D56162D8();
  sub_1D50E329C(v1);
  return sub_1D5616328();
}

void sub_1D50E47F0(uint64_t a1)
{
  sub_1D50E4864();
  if (v1 <= 0x3F)
  {
    sub_1D50E48C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D50E4864()
{
  if (!qword_1EC7EFBA0)
  {
    v0 = sub_1D5614C78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EFBA0);
    }
  }
}

void sub_1D50E48C8(uint64_t a1)
{
  if (!qword_1EC7EFBA8)
  {
    sub_1D5611AB8();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EFBA8);
    }
  }
}

uint64_t sub_1D50E49A8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50E329C(v2);
  return sub_1D5616328();
}

void (*sub_1D50E4A7C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = sub_1D560D838();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[3] = v7;
  v3[4] = *v1;
  sub_1D50E34A0(v7);
  return sub_1D50E4B54;
}

void sub_1D50E4B54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  if (a2)
  {
    v5 = *v2;
    v6 = v2[1];
    (*(v6 + 16))(*(*a1 + 16), v3, *v2);
    sub_1D50E3A04(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1D50E3A04(*(*a1 + 24));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1D50E4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, WitnessTable);
}

uint64_t sub_1D50E4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD0320](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D50E4E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v112 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v90 = &v87 - v8;
  v9 = sub_1D5610788();
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D56107C8();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v97 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v98 = &v87 - v22;
  v23 = type metadata accessor for TVShowPropertyProvider(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v96);
  v26 = v23[9];
  v27 = sub_1D5610978();
  v100 = v26;
  __swift_storeEnumTagSinglePayload(&v25[v26], 1, 1, v27);
  v28 = v23[15];
  v29 = sub_1D560C0A8();
  v101 = v28;
  __swift_storeEnumTagSinglePayload(&v25[v28], 1, 1, v29);
  v30 = &v25[v23[19]];
  v99 = v27;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v27);
  v31 = v23[20];
  v32 = sub_1D560C328();
  v105 = v31;
  __swift_storeEnumTagSinglePayload(&v25[v31], 1, 1, v32);
  v103 = v23[21];
  __swift_storeEnumTagSinglePayload(&v25[v103], 1, 1, v29);
  v33 = v23[22];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v89 = v33;
  v88 = v34;
  __swift_storeEnumTagSinglePayload(&v25[v33], 1, 1, v34);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v113 = a3;
  v114 = a2;
  v35 = sub_1D560D9A8();
  v36 = __swift_project_value_buffer(v35, qword_1EC7F5D98);
  if (qword_1EC7E8DC8 != -1)
  {
    swift_once();
  }

  v37 = sub_1D5610088();
  v38 = __swift_project_value_buffer(v37, qword_1EC87C0C8);
  v39 = type metadata accessor for StorePlatformTVShow(0);
  v40 = v39[6];
  v115 = a1;
  sub_1D54301F4(v38, v36, *(a1 + v40), *(a1 + v40 + 8), &v25[v23[25]]);
  v95 = sub_1D560FDE8();
  v94 = v41;
  sub_1D5614A88();
  v93 = sub_1D5614BD8();
  v92 = sub_1D5614BD8();
  v91 = sub_1D5614BD8();
  v42 = sub_1D5614BD8();
  *&v25[v23[8]] = 0;
  v25[v23[13]] = 2;
  *&v25[v23[18]] = 0;
  *&v25[v23[23]] = 0;
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v43 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v86 = sub_1D5615E18();

    v43 = v86;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v25[v23[24]] = v43;
  (*(*(v37 - 8) + 16))(&v25[v23[26]], v38, v37);
  v44 = &v25[v23[27]];
  v45 = v94;
  *v44 = v95;
  v44[1] = v45;
  *&v25[v23[28]] = v93;
  *&v25[v23[29]] = v92;
  *&v25[v23[30]] = v91;
  *&v25[v23[31]] = v42;
  v46 = v115;
  v47 = v97;
  sub_1D4F39AB0(v115 + v39[5], v97, &qword_1EC7EB5B8, &unk_1D56206A0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_1D4E50004(v47, &qword_1EC7EB5B8, &unk_1D56206A0);
    v49 = 1;
    v50 = v18;
    v51 = v98;
  }

  else
  {
    v51 = v98;
    sub_1D5610758();
    (*(*(v48 - 8) + 8))(v47, v48);
    v49 = 0;
    v50 = v18;
  }

  __swift_storeEnumTagSinglePayload(v51, v49, 1, v96);
  sub_1D4E68940(v51, v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v52 = *(v46 + v39[9]);
  v53 = v102;
  if (v52)
  {
    v52 = sub_1D511C2A4(v52);
  }

  *&v25[v23[5]] = v52;
  v54 = *(v46 + v39[10]);
  if (v54)
  {
    v54 = sub_1D5259FF8(v54);
  }

  v55 = v23[7];
  *&v25[v23[6]] = v54;
  *&v25[v55] = *(v46 + v39[11]);
  sub_1D4F39AB0(v46 + v39[18], v53, &qword_1EC7EC960, &unk_1D56334C0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v56);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7EC960, &unk_1D56334C0);
    v58 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v56 - 8) + 8))(v53, v56);
    v58 = 0;
  }

  __swift_storeEnumTagSinglePayload(v50, v58, 1, v99);
  v59 = v23[10];
  v60 = &v25[v23[11]];
  v61 = v23[12];
  v62 = v23[14];
  sub_1D4E68940(v50, &v25[v100], &qword_1EC7EAC98, &unk_1D561DA80);
  *&v25[v59] = *(v46 + v39[12]);
  v63 = v46 + v39[13];
  v64 = *v63;
  LOBYTE(v63) = *(v63 + 8);
  *v60 = v64;
  v60[8] = v63;
  *&v25[v61] = *(v46 + v39[14]);
  v25[v62] = *(v46 + v39[16]);
  v65 = v39[17];

  sub_1D4F89DEC(v46 + v65, &v25[v101]);
  v66 = *(v46 + v39[19]);
  if (v66)
  {
    v66 = sub_1D54FEF40(v66);
  }

  v67 = &v25[v23[17]];
  *&v25[v23[16]] = v66;
  v68 = (v46 + v39[20]);
  v69 = v68[1];
  *v67 = *v68;
  *(v67 + 1) = v69;

  v70 = v106;
  sub_1D56107A8();
  v72 = v110;
  v71 = v111;
  v73 = v108;
  (*(v110 + 104))(v108, *MEMORY[0x1E6975DC8], v111);
  v74 = v104;
  sub_1D5610798();
  v75 = v73;
  v76 = v115;
  (*(v72 + 8))(v75, v71);
  (*(v107 + 8))(v70, v109);
  sub_1D4E68940(v74, &v25[v105], &qword_1EC7EA3B8, &unk_1D561E370);
  v77 = sub_1D4F89DEC(v76 + v39[22], &v25[v103]);
  v79 = v113;
  v78 = v114;
  if (*(v76 + v39[8]) && *(v76 + v39[7]))
  {
    MEMORY[0x1EEE9AC00](v77);
    *(&v87 - 4) = v80;
    *(&v87 - 3) = v78;
    *(&v87 - 2) = v79;
    v116[0] = sub_1D50DE9F8(sub_1D50EEF68, (&v87 - 6), v81);
    type metadata accessor for TVSeason(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC88, &qword_1D5634788);
    sub_1D50EEFD8(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    sub_1D50EEF84(&qword_1EC7EFC90, &qword_1EC7EFC88, &qword_1D5634788);
    v82 = v90;
    sub_1D560DAD8();
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v88);
    sub_1D4E68940(v82, &v25[v89], &qword_1EC7ED1F8, &qword_1D5634780);
  }

  v116[3] = v23;
  v116[4] = sub_1D50EEFD8(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider, &unk_1D5673C50);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v116);
  sub_1D50EF020(v25, boxed_opaque_existential_0, type metadata accessor for TVShowPropertyProvider);
  TVShow.init(propertyProvider:)(v116, v112);

  sub_1D50EF07C(v76, type metadata accessor for StorePlatformTVShow);
  sub_1D50EF07C(v25, type metadata accessor for TVShowPropertyProvider);
  v84 = sub_1D560CD48();
  return (*(*(v84 - 8) + 8))(v78, v84);
}

uint64_t sub_1D50E5B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v35 = a1;
  v36 = a2;
  v8 = sub_1D560CD48();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v29 - v12);
  v14 = type metadata accessor for StorePlatformTVSeason(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = type metadata accessor for TVSeason(0);
  v34 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v24);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0(v35, v36);
    if (v26)
    {
      sub_1D50EF020(*(a3 + 56) + *(v15 + 72) * result, v21, type metadata accessor for StorePlatformTVSeason);
      sub_1D50EF0FC(v21, v23, type metadata accessor for StorePlatformTVSeason);
      sub_1D50EF020(v23, v18, type metadata accessor for StorePlatformTVSeason);
      (*(v30 + 16))(v10, v32, v31);
      v27 = v33;

      sub_1D50E5E50(v18, v10, v27, v13);
      sub_1D50EF07C(v23, type metadata accessor for StorePlatformTVSeason);
      v28 = v34;
      sub_1D4E50004(v34, &qword_1EC7EA878, &unk_1D5634790);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v24);
      return sub_1D4F39A1C(v13, v28, &qword_1EC7EA878, &unk_1D5634790);
    }
  }

  return result;
}

uint64_t sub_1D50E5E50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v117 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v94 - v10;
  v11 = sub_1D5610788();
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D56107C8();
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v104 = &v94 - v21;
  v22 = type metadata accessor for TVSeasonPropertyProvider(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v103);
  v25 = v22[7];
  v26 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(&v24[v25], 1, 1, v26);
  v27 = v22[9];
  v28 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(&v24[v27], 1, 1, v28);
  __swift_storeEnumTagSinglePayload(&v24[v22[15]], 1, 1, v26);
  __swift_storeEnumTagSinglePayload(&v24[v22[18]], 1, 1, v28);
  v106 = v22[19];
  __swift_storeEnumTagSinglePayload(&v24[v106], 1, 1, v26);
  v29 = v22[24];
  v30 = sub_1D560C0A8();
  v108 = v29;
  __swift_storeEnumTagSinglePayload(&v24[v29], 1, 1, v30);
  v31 = v22[25];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v96 = v31;
  v95 = v32;
  __swift_storeEnumTagSinglePayload(&v24[v31], 1, 1, v32);
  v33 = v22[26];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v109 = v33;
  v107 = v34;
  __swift_storeEnumTagSinglePayload(&v24[v33], 1, 1, v34);
  v35 = v22[27];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  __swift_storeEnumTagSinglePayload(&v24[v35], 1, 1, v36);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v118 = a3;
  v119 = a2;
  v37 = sub_1D560D9A8();
  v38 = __swift_project_value_buffer(v37, qword_1EDD53C60);
  if (qword_1EC7E9858 != -1)
  {
    swift_once();
  }

  v39 = sub_1D5610088();
  v40 = __swift_project_value_buffer(v39, qword_1EC87C778);
  v41 = type metadata accessor for StorePlatformTVSeason(0);
  v42 = v41[14];
  v120 = a1;
  sub_1D54301F4(v40, v38, *(a1 + v42), *(a1 + v42 + 8), &v24[v22[29]]);
  v102 = sub_1D560FDE8();
  v101 = v43;
  sub_1D5614A88();
  v100 = sub_1D5614BD8();
  v99 = sub_1D5614BD8();
  v98 = sub_1D5614BD8();
  v44 = sub_1D5614BD8();
  v24[v22[13]] = 2;
  v24[v22[14]] = 2;
  v45 = &v24[v22[16]];
  *v45 = 0;
  v45[8] = 1;
  *&v24[v22[17]] = 0;
  v46 = &v24[v22[20]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &v24[v22[22]];
  *v47 = 0;
  *(v47 + 1) = 0;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v48 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    v93 = sub_1D5615E18();

    v48 = v93;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v24[v22[28]] = v48;
  (*(*(v39 - 8) + 16))(&v24[v22[30]], v40, v39);
  v49 = &v24[v22[31]];
  v50 = v101;
  *v49 = v102;
  v49[1] = v50;
  *&v24[v22[32]] = v100;
  *&v24[v22[33]] = v99;
  *&v24[v22[34]] = v98;
  *&v24[v22[35]] = v44;
  v51 = v120;
  sub_1D4F39AB0(v120 + v41[5], v19, &qword_1EC7EB5B8, &unk_1D56206A0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v52) == 1)
  {
    sub_1D4E50004(v19, &qword_1EC7EB5B8, &unk_1D56206A0);
    v53 = 1;
    v54 = v104;
  }

  else
  {
    v54 = v104;
    sub_1D5610758();
    (*(*(v52 - 8) + 8))(v19, v52);
    v53 = 0;
  }

  __swift_storeEnumTagSinglePayload(v54, v53, 1, v103);
  sub_1D4E68940(v54, v24, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v55 = *(v51 + v41[8]);
  if (v55)
  {
    v55 = sub_1D511C2A4(v55);
  }

  v56 = &v24[v22[6]];
  v57 = v22[8];
  v58 = v22[10];
  v59 = v22[11];
  v60 = v22[12];
  v61 = v22[21];
  v62 = v22[23];
  *&v24[v22[5]] = v55;
  v63 = &v24[v59];
  v64 = (v51 + v41[9]);
  v65 = v64[1];
  *v56 = *v64;
  *(v56 + 1) = v65;
  *&v24[v57] = *(v51 + v41[10]);
  v103 = &v24[v61];
  *&v24[v58] = *(v51 + v41[11]);
  v104 = &v24[v62];
  v66 = v51 + v41[17];
  v67 = *v66;
  LOBYTE(v66) = v66[8];
  *v63 = v67;
  v63[8] = v66;
  *&v24[v60] = *(v51 + v41[12]);

  v68 = v105;
  sub_1D56107A8();
  v70 = v114;
  v69 = v115;
  v71 = v111;
  (*(v114 + 104))(v111, *MEMORY[0x1E6975DC8], v115);
  v72 = v110;
  sub_1D5610798();
  (*(v70 + 8))(v71, v69);
  v73 = v120;
  (*(v112 + 8))(v68, v113);
  sub_1D4E68940(v72, &v24[v106], &qword_1EC7EA3B8, &unk_1D561E370);
  v74 = v73[1];
  v75 = v103;
  *v103 = *v73;
  *(v75 + 1) = v74;
  v76 = (v73 + v41[15]);
  v77 = *v76;
  v78 = v76[1];
  v79 = v104;
  *v104 = v77;
  *(v79 + 1) = v78;
  v80 = v41[18];

  sub_1D4F89DEC(v73 + v80, &v24[v108]);
  v81 = *(v73 + v41[13]);
  if (v81)
  {
    v82 = v116;
    v84 = v118;
    v83 = v119;
    sub_1D50E02E8(v81, v116);
    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v118;
    v83 = v119;
    v82 = v116;
  }

  __swift_storeEnumTagSinglePayload(v82, v85, 1, v107);
  v86 = sub_1D4E68940(v82, &v24[v109], &qword_1EC7EA788, &unk_1D56223A0);
  if (*(v73 + v41[7]) && *(v73 + v41[6]))
  {
    MEMORY[0x1EEE9AC00](v86);
    *(&v94 - 4) = v87;
    *(&v94 - 3) = v83;
    *(&v94 - 2) = v84;
    v121[0] = sub_1D50DE744(sub_1D50EEF4C, (&v94 - 6), v88);
    type metadata accessor for TVEpisode(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC80, &unk_1D5634770);
    sub_1D50EEFD8(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    sub_1D50EEF84(&qword_1EDD527F8, &qword_1EC7EFC80, &unk_1D5634770);
    v89 = v97;
    sub_1D560DAD8();
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v95);
    sub_1D4E68940(v89, &v24[v96], &qword_1EC7ECBA8, &unk_1D56223B0);
  }

  v121[3] = v22;
  v121[4] = sub_1D50EEFD8(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A220);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
  sub_1D50EF020(v24, boxed_opaque_existential_0, type metadata accessor for TVSeasonPropertyProvider);
  TVSeason.init(propertyProvider:)(v121, v117);

  sub_1D50EF07C(v73, type metadata accessor for StorePlatformTVSeason);
  sub_1D50EF07C(v24, type metadata accessor for TVSeasonPropertyProvider);
  v91 = sub_1D560CD48();
  return (*(*(v91 - 8) + 8))(v83, v91);
}

uint64_t sub_1D50E6B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v91 = a2;
  v89 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v83 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v72 - v22;
  v23 = sub_1D5610088();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D560D9A8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D56121E8();
  v85 = *(v33 - 8);
  v86 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v77 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D938();
  if (qword_1EC7E8DD0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v23, qword_1EC87C0E0);
  v80 = type metadata accessor for StorePlatformArtist(0);
  v36 = (a1 + *(v80 + 36));
  v37 = *v36;
  v38 = v36[1];
  v75 = v32;
  sub_1D54301F4(v35, v29, v37, v38, v32);
  (*(v27 + 8))(v29, v26);
  (*(v24 + 16))(v76, v35, v23);
  v74 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v39 = v77;
  v40 = a1;
  sub_1D5612158();
  v41 = v78;
  sub_1D4F39AB0(a1, v78, &qword_1EC7EB5B8, &unk_1D56206A0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v43 = v39;
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
    v44 = 1;
    v46 = v81;
    v45 = v82;
    v47 = v79;
  }

  else
  {
    v47 = v79;
    sub_1D5610758();
    (*(*(v42 - 8) + 8))(v41, v42);
    v44 = 0;
    v46 = v81;
    v45 = v82;
  }

  v48 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v47, v44, 1, v48);
  sub_1D56121D8();
  v49 = v80;

  sub_1D5612188();
  sub_1D4F39AB0(v40 + v49[10], v46, &qword_1EC7EC960, &unk_1D56334C0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v50);
  v52 = v84;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v46, &qword_1EC7EC960, &unk_1D56334C0);
    v53 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v50 - 8) + 8))(v46, v50);
    v53 = 0;
  }

  v54 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v45, v53, 1, v54);
  sub_1D5612168();

  sub_1D5612198();

  sub_1D5612148();
  sub_1D4F39AB0(v40 + v49[14], v52, &qword_1EC7EFBD0, &qword_1D5634650);
  v55 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v52, 1, v55) == 1)
  {
    v56 = &qword_1EC7EFBD0;
    v57 = &qword_1D5634650;
    v58 = v52;
LABEL_13:
    sub_1D4E50004(v58, v56, v57);
    v60 = 1;
    v61 = v83;
    goto LABEL_15;
  }

  v59 = v73;
  sub_1D4F39AB0(v52, v73, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50EF07C(v52, type metadata accessor for StorePlatformUber);
  if (__swift_getEnumTagSinglePayload(v59, 1, v42) == 1)
  {
    v56 = &qword_1EC7EB5B8;
    v57 = &unk_1D56206A0;
    v58 = v59;
    goto LABEL_13;
  }

  v61 = v83;
  sub_1D5610758();
  (*(*(v42 - 8) + 8))(v59, v42);
  v60 = 0;
LABEL_15:
  v62 = 1;
  __swift_storeEnumTagSinglePayload(v61, v60, 1, v48);
  sub_1D5612178();

  sub_1D56121B8();
  sub_1D4F39AB0(v40 + v49[15], v87, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56121A8();
  v63 = *(v40 + v49[7]);
  if (v63)
  {
    v64 = v88;
    v65 = v91;
    sub_1D50E02E8(v63, v88);
    v62 = 0;
  }

  else
  {
    v65 = v91;
    v64 = v88;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v64, v62, 1, v66);
  sub_1D56121C8();
  v67 = v86;
  v92[3] = v86;
  v92[4] = MEMORY[0x1E6976418];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v92);
  v69 = v85;
  (*(v85 + 16))(boxed_opaque_existential_0, v43, v67);
  sub_1D5613E28();

  v70 = sub_1D560CD48();
  (*(*(v70 - 8) + 8))(v65, v70);
  (*(v69 + 8))(v43, v67);
  return sub_1D50EF07C(v40, type metadata accessor for StorePlatformArtist);
}

uint64_t sub_1D50E75D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v86 = a2;
  v84 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC00, &unk_1D56346C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v81 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v67 - v22;
  v72 = sub_1D5610088();
  v23 = *(v72 - 8);
  v24 = MEMORY[0x1EEE9AC00](v72);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v67 - v27;
  v71 = sub_1D560D9A8();
  v29 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v34;
  v35 = sub_1D5612518();
  v79 = *(v35 - 8);
  v80 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v70 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D948();
  sub_1D514063C(v28);
  v76 = type metadata accessor for StorePlatformCurator(0);
  v37 = (a1 + *(v76 + 28));
  v68 = a1;
  sub_1D54301F4(v28, v31, *v37, v37[1], v34);
  v38 = *(v23 + 8);
  v39 = v72;
  v38(v28, v72);
  (*(v29 + 8))(v31, v71);
  sub_1D514063C(v28);
  sub_1D514063C(v26);
  sub_1D560FDE8();
  v38(v26, v39);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v40 = v70;
  sub_1D5614BD8();
  v41 = v73;
  v42 = v68;
  sub_1D5612488();
  sub_1D4F39AB0(v42, v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v41, 1, v43) == 1)
  {
    sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
    v44 = 1;
    v45 = v74;
  }

  else
  {
    v45 = v74;
    sub_1D5610758();
    (*(*(v43 - 8) + 8))(v41, v43);
    v44 = 0;
  }

  v46 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v46);
  sub_1D5612508();
  v47 = v76;

  sub_1D56124B8();
  v48 = v75;
  sub_1D4F39AB0(v42 + v47[9], v75, &qword_1EC7EC960, &unk_1D56334C0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v49);
  v51 = v82;
  v52 = v77;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v48, &qword_1EC7EC960, &unk_1D56334C0);
    v53 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v49 - 8) + 8))(v48, v49);
    v53 = 0;
  }

  v54 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
  sub_1D5612498();

  sub_1D56124C8();
  sub_1D560FA48();
  sub_1D56124E8();
  sub_1D4F39AB0(v42 + v47[12], v51, &qword_1EC7EFBD0, &qword_1D5634650);
  v55 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v55) == 1)
  {
    v56 = &qword_1EC7EFBD0;
    v57 = &qword_1D5634650;
    v58 = v51;
  }

  else
  {
    v59 = v67;
    sub_1D4F39AB0(v51, v67, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v51, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v59, 1, v43) != 1)
    {
      v61 = v81;
      sub_1D5610758();
      (*(*(v43 - 8) + 8))(v59, v43);
      v60 = 0;
      goto LABEL_13;
    }

    v56 = &qword_1EC7EB5B8;
    v57 = &unk_1D56206A0;
    v58 = v59;
  }

  sub_1D4E50004(v58, v56, v57);
  v60 = 1;
  v61 = v81;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v61, v60, 1, v46);
  sub_1D56124A8();

  sub_1D56124F8();
  sub_1D4F39AB0(v42 + v47[13], v83, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56124D8();
  v62 = v80;
  v87[3] = v80;
  v87[4] = MEMORY[0x1E69764A8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v87);
  v64 = v79;
  (*(v79 + 16))(boxed_opaque_existential_0, v40, v62);
  sub_1D5614168();

  v65 = sub_1D560CD48();
  (*(*(v65 - 8) + 8))(v86, v65);
  (*(v64 + 8))(v40, v62);
  return sub_1D50EF07C(v42, type metadata accessor for StorePlatformCurator);
}

uint64_t sub_1D50E8048@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1D560D9A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D560D838();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D501F124(v7);
  if (qword_1EC7E9810 != -1)
  {
    swift_once();
  }

  v12 = sub_1D5610088();
  v13 = __swift_project_value_buffer(v12, qword_1EC87C750);
  v14 = type metadata accessor for StorePlatformStation(0);
  sub_1D54301F4(v13, v7, *(v2 + *(v14 + 40)), *(v2 + *(v14 + 40) + 8), v11);
  (*(v5 + 8))(v7, v4);
  sub_1D560D608();
  (*(v9 + 8))(v11, v8);
  v15 = sub_1D56109F8();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
}

uint64_t sub_1D50E8254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v77 = a2;
  v75 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v70 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = v62 - v20;
  v21 = sub_1D5610088();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D560D9A8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D56120A8();
  v71 = *(v32 - 8);
  v72 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v63 = v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D918();
  if (qword_1EC7E93A8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v21, qword_1EC87C4D8);
  v66 = type metadata accessor for StorePlatformGenre(0);
  v35 = (a1 + *(v66 + 28));
  v78 = a1;
  sub_1D54301F4(v34, v28, *v35, v35[1], v31);
  (*(v26 + 8))(v28, v25);
  (*(v22 + 16))(v24, v34, v21);
  v62[1] = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v36 = v63;
  v37 = v78;
  sub_1D5612018();
  v38 = v64;
  sub_1D4F39AB0(v37, v64, &qword_1EC7EB5B8, &unk_1D56206A0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_1D4E50004(v38, &qword_1EC7EB5B8, &unk_1D56206A0);
    v40 = 1;
    v41 = v70;
    v43 = v67;
    v42 = v68;
    v44 = v65;
  }

  else
  {
    v44 = v65;
    sub_1D5610758();
    (*(*(v39 - 8) + 8))(v38, v39);
    v40 = 0;
    v41 = v70;
    v43 = v67;
    v42 = v68;
  }

  v45 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v44, v40, 1, v45);
  sub_1D5612088();
  v46 = v66;

  sub_1D5612048();
  sub_1D4F39AB0(v37 + v46[8], v43, &qword_1EC7EC960, &unk_1D56334C0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v43, 1, v47) == 1)
  {
    sub_1D4E50004(v43, &qword_1EC7EC960, &unk_1D56334C0);
    v48 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v47 - 8) + 8))(v43, v47);
    v48 = 0;
  }

  v49 = v69;
  v50 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v42, v48, 1, v50);
  sub_1D5612028();

  sub_1D5612058();
  v51 = v73;
  sub_1D4F39AB0(v37 + v46[11], v73, &qword_1EC7EFBD0, &qword_1D5634650);
  v52 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    v53 = &qword_1EC7EFBD0;
    v54 = &qword_1D5634650;
    v55 = v51;
  }

  else
  {
    sub_1D4F39AB0(v51, v49, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v51, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v49, 1, v39) != 1)
    {
      sub_1D5610758();
      (*(*(v39 - 8) + 8))(v49, v39);
      v56 = 0;
      goto LABEL_15;
    }

    v53 = &qword_1EC7EB5B8;
    v54 = &unk_1D56206A0;
    v55 = v49;
  }

  sub_1D4E50004(v55, v53, v54);
  v56 = 1;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v41, v56, 1, v45);
  sub_1D5612038();

  sub_1D5612078();

  sub_1D5612098();
  sub_1D4F39AB0(v37 + v46[12], v74, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612068();
  v57 = v72;
  v79[3] = v72;
  v79[4] = MEMORY[0x1E6976410];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79);
  v59 = v71;
  (*(v71 + 16))(boxed_opaque_existential_0, v36, v57);
  sub_1D5613BA8();

  v60 = sub_1D560CD48();
  (*(*(v60 - 8) + 8))(v77, v60);
  (*(v59 + 8))(v36, v57);
  return sub_1D50EF07C(v37, type metadata accessor for StorePlatformGenre);
}

uint64_t sub_1D50E8C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v60 = a4;
  v5 = sub_1D5613838();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StorePlatformSong(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - v10;
  v56 = sub_1D560CD48();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D560EEA8();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StorePlatformMusicVideo(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = type metadata accessor for StorePlatformTrack(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D5613D28();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  sub_1D50EF020(a1, v23, type metadata accessor for StorePlatformTrack);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v11 + 16);
  v55 = (v11 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v51;
    sub_1D50EF0FC(v23, v51, type metadata accessor for StorePlatformSong);
    v31 = v49;
    sub_1D50EF020(v30, v49, type metadata accessor for StorePlatformSong);
    v32 = v27;
    v33 = v25;
    v34 = v24;
    v35 = v13;
    v36 = v13;
    v37 = v58;
    v38 = v56;
    (*v29)(v36, v58, v56);
    v39 = v52;
    v40 = v35;
    v24 = v34;
    v25 = v33;
    v27 = v32;
    sub_1D50D91A4(v31, v40, v57, v52);
    (*v55)(v37, v38);
    sub_1D50EF07C(v59, type metadata accessor for StorePlatformTrack);
    sub_1D50EF07C(v30, type metadata accessor for StorePlatformSong);
    (*(v53 + 32))(v32, v39, v54);
    v41 = MEMORY[0x1E6976E18];
  }

  else
  {
    sub_1D50EF0FC(v23, v20, type metadata accessor for StorePlatformMusicVideo);
    sub_1D50EF020(v20, v18, type metadata accessor for StorePlatformMusicVideo);
    v42 = v58;
    v43 = v56;
    (*v29)(v13, v58, v56);
    v44 = v47;
    sub_1D50D8230(v18, v13, v57, v47);
    (*v55)(v42, v43);
    sub_1D50EF07C(v59, type metadata accessor for StorePlatformTrack);
    sub_1D50EF07C(v20, type metadata accessor for StorePlatformMusicVideo);
    (*(v48 + 32))(v27, v44, v50);
    v41 = MEMORY[0x1E6976DF8];
  }

  (*(v25 + 104))(v27, *v41, v24);
  v45 = v60;
  (*(v25 + 32))(v60, v27, v24);
  return __swift_storeEnumTagSinglePayload(v45, 0, 1, v24);
}

uint64_t sub_1D50E9244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v124 = a2;
  v122 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v93 - v8;
  v9 = sub_1D5610788();
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1D56107C8();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = &v93 - v13;
  v14 = sub_1D56109D8();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v108 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v104 = &v93 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v105 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v103 = &v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v125 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v95 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v101 = &v93 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v106 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v93 - v35;
  v36 = sub_1D5610088();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v99 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D560D9A8();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D5612008();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v100 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D908();
  if (qword_1EC7E9510 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v36, qword_1EC87C5B0);
  v97 = type metadata accessor for StorePlatformAlbum(0);
  v48 = (a1 + *(v97 + 84));
  v49 = *v48;
  v50 = v48[1];
  v98 = v45;
  sub_1D54301F4(v47, v42, v49, v50, v45);
  (*(v40 + 8))(v42, v39);
  (*(v37 + 16))(v99, v47, v36);
  v96 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v51 = v97;
  sub_1D5614BD8();
  v52 = v100;
  sub_1D5611F18();
  v53 = v101;
  sub_1D4F39AB0(a1 + v51[7], v101, &qword_1EC7EB5B8, &unk_1D56206A0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v55 = v52;
  if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7EB5B8, &unk_1D56206A0);
    v56 = 1;
    v57 = v105;
    v58 = v102;
  }

  else
  {
    v58 = v102;
    sub_1D5610758();
    (*(*(v54 - 8) + 8))(v53, v54);
    v56 = 0;
    v57 = v105;
  }

  v59 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v58, v56, 1, v59);
  sub_1D5611FD8();

  sub_1D5611EA8();
  sub_1D4F39AB0(a1 + v51[6], v125, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611FE8();
  if (*(a1 + v51[8]))
  {
    sub_1D56152A8();
  }

  sub_1D5611EF8();
  v60 = *(a1 + v51[11]);
  if (v60)
  {
    sub_1D5386528(v60, v103);
  }

  else
  {
    v61 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v61);
  }

  sub_1D5611F08();

  sub_1D5611FF8();

  sub_1D5611F58();
  v62 = v104;
  sub_1D4F39AB0(a1 + v51[20], v104, &qword_1EC7EC960, &unk_1D56334C0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    sub_1D4E50004(v62, &qword_1EC7EC960, &unk_1D56334C0);
    v64 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v63 - 8) + 8))(v62, v63);
    v64 = 0;
  }

  v65 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v57, v64, 1, v65);
  sub_1D5611F28();

  sub_1D5611F88();

  sub_1D5611EB8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D5611F68();
  sub_1D53B2530();
  sub_1D5611F78();
  sub_1D5611EC8();
  v66 = v107;
  sub_1D4F39AB0(a1 + v51[27], v107, &qword_1EC7EFBD0, &qword_1D5634650);
  v67 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
  {
    sub_1D4E50004(v66, &qword_1EC7EFBD0, &qword_1D5634650);
    v68 = 1;
    v69 = v106;
  }

  else
  {
    v70 = v95;
    sub_1D4F39AB0(v66, v95, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v66, type metadata accessor for StorePlatformUber);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v54);
    v69 = v106;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v70, &qword_1EC7EB5B8, &unk_1D56206A0);
      v68 = 1;
    }

    else
    {
      sub_1D5610758();
      (*(*(v54 - 8) + 8))(v70, v54);
      v68 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v69, v68, 1, v59);
  sub_1D5611F48();
  v72 = v110;
  sub_1D56109A8();
  sub_1D50DFFF0(v72, v108);
  (*(v112 + 8))(v72, v113);
  sub_1D5611F38();
  v73 = v115;
  sub_1D56107A8();
  v75 = v119;
  v74 = v120;
  v76 = v117;
  (*(v119 + 104))(v117, *MEMORY[0x1E6975DC8], v120);
  sub_1D5610798();
  (*(v75 + 8))(v76, v74);
  (*(v116 + 8))(v73, v118);
  sub_1D5611EE8();

  sub_1D5611FA8();
  sub_1D5611ED8();
  sub_1D4F39AB0(a1 + v51[28], v125, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5611F98();
  v77 = *(a1 + v51[15]);
  v78 = v121;
  v80 = v123;
  v79 = v124;
  if (v77)
  {
    sub_1D50E02E8(v77, v121);
    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v78, v81, 1, v82);
  v83 = sub_1D5611FB8();
  if (*(a1 + v51[10]) && *(a1 + v51[9]))
  {
    MEMORY[0x1EEE9AC00](v83);
    *(&v93 - 4) = v84;
    *(&v93 - 3) = v79;
    *(&v93 - 2) = v80;
    v126[0] = sub_1D50DE474(sub_1D50EEF14, (&v93 - 6), v85);
    sub_1D5613D28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
    sub_1D50EEF84(&qword_1EC7EFBE0, &qword_1EC7EFBD8, &unk_1D56346A0);
    v86 = v94;
    sub_1D560DAD8();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
    sub_1D5611FC8();
  }

  v88 = v111;
  v126[3] = v111;
  v126[4] = MEMORY[0x1E6976408];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
  v90 = v109;
  (*(v109 + 16))(boxed_opaque_existential_0, v55, v88);
  sub_1D5613978();

  (*(v90 + 8))(v55, v88);
  sub_1D50EF07C(a1, type metadata accessor for StorePlatformAlbum);
  v91 = sub_1D560CD48();
  return (*(*(v91 - 8) + 8))(v79, v91);
}

uint64_t sub_1D50EA374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v33 = a1;
  v34 = a2;
  v8 = sub_1D560CD48();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for StorePlatformTrack(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = sub_1D5613D28();
  v32 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v24);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0(v33, v34);
    if (v26)
    {
      sub_1D50EF020(*(a3 + 56) + *(v15 + 72) * result, v21, type metadata accessor for StorePlatformTrack);
      sub_1D50EF0FC(v21, v23, type metadata accessor for StorePlatformTrack);
      sub_1D50EF020(v23, v18, type metadata accessor for StorePlatformTrack);
      (*(v29 + 16))(v10, v30, v8);
      v27 = v31;

      sub_1D50E8C44(v18, v10, v27, v13);
      sub_1D50EF07C(v23, type metadata accessor for StorePlatformTrack);
      v28 = v32;
      sub_1D4E50004(v32, &qword_1EC7EA888, &qword_1D563B8C0);
      return sub_1D4F39A1C(v13, v28, &qword_1EC7EA888, &qword_1D563B8C0);
    }
  }

  return result;
}

uint64_t sub_1D50EA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v80 = a2;
  v78 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v63 - v20;
  v21 = sub_1D5610088();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D560D9A8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D5612998();
  v73 = *(v32 - 8);
  v74 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v67 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D998();
  if (qword_1EC7E9668 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v21, qword_1EC87C640);
  v70 = type metadata accessor for StorePlatformRadioShow(0);
  v35 = (a1 + *(v70 + 28));
  v66 = a1;
  sub_1D54301F4(v34, v28, *v35, v35[1], v31);
  (*(v26 + 8))(v28, v25);
  (*(v22 + 16))(v24, v34, v21);
  v65 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v36 = v67;
  sub_1D5612908();
  v37 = v66;
  v38 = v68;
  sub_1D4F39AB0(v66, v68, &qword_1EC7EB5B8, &unk_1D56206A0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_1D4E50004(v38, &qword_1EC7EB5B8, &unk_1D56206A0);
    v40 = 1;
    v41 = v71;
    v42 = v69;
  }

  else
  {
    v42 = v69;
    sub_1D5610758();
    (*(*(v39 - 8) + 8))(v38, v39);
    v40 = 0;
    v41 = v71;
  }

  v43 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v42, v40, 1, v43);
  sub_1D5612978();
  v44 = v70;

  sub_1D5612938();
  sub_1D4F39AB0(v37 + v44[8], v41, &qword_1EC7EC960, &unk_1D56334C0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v45);
  v47 = v72;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v41, &qword_1EC7EC960, &unk_1D56334C0);
    v48 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v45 - 8) + 8))(v41, v45);
    v48 = 0;
  }

  v49 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v47, v48, 1, v49);
  sub_1D5612918();

  sub_1D5612948();

  sub_1D5612988();
  v50 = v76;
  sub_1D4F39AB0(v37 + v44[11], v76, &qword_1EC7EFBD0, &qword_1D5634650);
  v51 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    v52 = &qword_1EC7EFBD0;
    v53 = &qword_1D5634650;
    v54 = v50;
  }

  else
  {
    v55 = v64;
    sub_1D4F39AB0(v50, v64, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v50, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v55, 1, v39) != 1)
    {
      v57 = v75;
      sub_1D5610758();
      (*(*(v39 - 8) + 8))(v55, v39);
      v56 = 0;
      goto LABEL_15;
    }

    v52 = &qword_1EC7EB5B8;
    v53 = &unk_1D56206A0;
    v54 = v55;
  }

  sub_1D4E50004(v54, v52, v53);
  v56 = 1;
  v57 = v75;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v57, v56, 1, v43);
  sub_1D5612928();

  sub_1D5612968();
  sub_1D4F39AB0(v37 + v44[12], v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612958();
  v58 = v74;
  v81[3] = v74;
  v81[4] = MEMORY[0x1E6976620];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v81);
  v60 = v73;
  (*(v73 + 16))(boxed_opaque_existential_0, v36, v58);
  sub_1D5614AD8();

  v61 = sub_1D560CD48();
  (*(*(v61 - 8) + 8))(v80, v61);
  (*(v60 + 8))(v36, v58);
  return sub_1D50EF07C(v37, type metadata accessor for StorePlatformRadioShow);
}

uint64_t sub_1D50EB054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v81 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = v66 - v8;
  v9 = sub_1D56128C8();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v66[0] = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v78 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = v66 - v22;
  v23 = sub_1D5610088();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D560D9A8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D5612C28();
  v76 = *(v34 - 8);
  v77 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v67 = v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D888();
  if (qword_1EC7E9710 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v23, qword_1EC87C6C0);
  v71 = type metadata accessor for StorePlatformRecordLabel(0);
  v37 = (a1 + *(v71 + 32));
  v84 = a1;
  sub_1D54301F4(v36, v30, *v37, v37[1], v33);
  (*(v28 + 8))(v30, v27);
  (*(v24 + 16))(v26, v36, v23);
  v66[1] = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v38 = v84;
  sub_1D5614BD8();
  v39 = v67;
  sub_1D5612B98();
  v40 = v68;
  sub_1D4F39AB0(v38, v68, &qword_1EC7EB5B8, &unk_1D56206A0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v42 = v39;
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    sub_1D4E50004(v40, &qword_1EC7EB5B8, &unk_1D56206A0);
    v43 = 1;
    v44 = v69;
    v45 = v70;
  }

  else
  {
    v44 = v69;
    sub_1D5610758();
    (*(*(v41 - 8) + 8))(v40, v41);
    v43 = 0;
    v45 = v70;
  }

  v46 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v44, v43, 1, v46);
  sub_1D5612C18();
  v47 = v71;

  sub_1D5612BC8();
  v48 = v47[5];
  sub_1D4F39AB0(v38 + v48, v45, &qword_1EC7EC978, &unk_1D56222A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  if (__swift_getEnumTagSinglePayload(v45, 1, v49) == 1)
  {
    sub_1D4E50004(v45, &qword_1EC7EC978, &unk_1D56222A0);
  }

  else
  {
    v50 = v73;
    sub_1D5610708();
    (*(*(v49 - 8) + 8))(v45, v49);
    sub_1D56128A8();
    (*(v74 + 8))(v50, v75);
  }

  sub_1D5612BB8();
  v51 = v72;
  sub_1D4F39AB0(v38 + v48, v72, &qword_1EC7EC978, &unk_1D56222A0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v49) == 1)
  {
    sub_1D4E50004(v51, &qword_1EC7EC978, &unk_1D56222A0);
  }

  else
  {
    v52 = v73;
    sub_1D5610708();
    (*(*(v49 - 8) + 8))(v51, v49);
    sub_1D56128B8();
    (*(v74 + 8))(v52, v75);
  }

  v53 = v79;
  sub_1D5612BD8();

  sub_1D5612BE8();
  sub_1D4F39AB0(v38 + v47[10], v53, &qword_1EC7EFBD0, &qword_1D5634650);
  v54 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
  {
    v55 = &qword_1EC7EFBD0;
    v56 = &qword_1D5634650;
    v57 = v53;
  }

  else
  {
    v58 = v66[0];
    sub_1D4F39AB0(v53, v66[0], &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v53, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v58, 1, v41) != 1)
    {
      v60 = v78;
      sub_1D5610758();
      (*(*(v41 - 8) + 8))(v58, v41);
      v59 = 0;
      goto LABEL_18;
    }

    v55 = &qword_1EC7EB5B8;
    v56 = &unk_1D56206A0;
    v57 = v58;
  }

  sub_1D4E50004(v57, v55, v56);
  v59 = 1;
  v60 = v78;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v60, v59, 1, v46);
  sub_1D5612BA8();

  sub_1D5612C08();
  sub_1D4F39AB0(v38 + v47[11], v80, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D5612BF8();
  v61 = v77;
  v85[3] = v77;
  v85[4] = MEMORY[0x1E6976678];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v85);
  v63 = v76;
  (*(v76 + 16))(boxed_opaque_existential_0, v42, v61);
  sub_1D560F838();

  v64 = sub_1D560CD48();
  (*(*(v64 - 8) + 8))(v83, v64);
  (*(v63 + 8))(v42, v61);
  return sub_1D50EF07C(v38, type metadata accessor for StorePlatformRecordLabel);
}

uint64_t sub_1D50EBB70@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v205 = a3;
  v206 = a2;
  v176 = a4;
  v171 = sub_1D5611AE8();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v164 = &v163 - v7;
  v202 = sub_1D560CD48();
  v192 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v197 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StorePlatformPlaylistEntry(0);
  v199 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v196 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v198 = (&v163 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v163 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v195 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v201 = &v163 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v163 - v20;
  v204 = sub_1D5614828();
  v173 = *(v204 - 8);
  v21 = MEMORY[0x1EEE9AC00](v204);
  v172 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v163 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v165 = &v163 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v208 = &v163 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v163 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v200 = &v163 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v194 = (&v163 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v190 = &v163 - v37;
  v189 = sub_1D5610788();
  v188 = *(v189 - 1);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1D56107C8();
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v183 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v182 = &v163 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v180 = &v163 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC38, &qword_1D56346E0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v181 = &v163 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v166 = &v163 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v178 = &v163 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v184 = &v163 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v179 = &v163 - v53;
  v54 = sub_1D5610088();
  isUniquelyReferenced_nonNull_native = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = (&v163 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1D560D9A8();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v163 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v62 - 8);
  v64 = (&v163 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = sub_1D5612848();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v191 = &v163 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D968();
  if (qword_1EC7E9718 != -1)
  {
LABEL_74:
    swift_once();
  }

  v66 = __swift_project_value_buffer(v54, qword_1EC87C6D8);
  v209 = type metadata accessor for StorePlatformPlaylist(0);
  v67 = (a1 + *(v209 + 60));
  v193 = a1;
  sub_1D54301F4(v66, v61, *v67, v67[1], v64);
  (*(v59 + 8))(v61, v58);
  isUniquelyReferenced_nonNull_native[2](v57, v66, v54);
  v177 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v68 = v193;
  sub_1D5614BD8();
  v69 = v191;
  sub_1D5612718();
  v70 = v178;
  sub_1D4F39AB0(v68, v178, &qword_1EC7EB5B8, &unk_1D56206A0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v71);
  v177 = v71;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v70, &qword_1EC7EB5B8, &unk_1D56206A0);
    v73 = 1;
    v74 = v179;
  }

  else
  {
    v74 = v179;
    sub_1D5610758();
    (*(*(v71 - 8) + 8))(v70, v71);
    v73 = 0;
  }

  v179 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v74, v73, 1, v179);
  sub_1D5612818();
  v75 = v209;
  if (*(v68 + *(v209 + 20)))
  {
    sub_1D56152A8();
  }

  sub_1D5612708();

  sub_1D56126F8();

  sub_1D5612788();

  sub_1D56127B8();
  swift_getKeyPath();
  sub_1D5610A38();

  sub_1D56127A8();
  sub_1D5612838();
  v76 = v180;
  sub_1D4F39AB0(v68 + *(v75 + 68), v180, &qword_1EC7EFC30, &qword_1D56346D8);
  v77 = sub_1D56104C8();
  if (__swift_getEnumTagSinglePayload(v76, 1, v77) == 1)
  {
    sub_1D4E50004(v76, &qword_1EC7EFC30, &qword_1D56346D8);
    v78 = sub_1D56146C8();
    __swift_storeEnumTagSinglePayload(v181, 1, 1, v78);
  }

  else
  {
    sub_1D56104B8();
    (*(*(v77 - 8) + 8))(v76, v77);
  }

  sub_1D56127E8();
  v79 = v183;
  sub_1D56107A8();
  v80 = v209;
  v81 = v188;
  v82 = v186;
  v83 = v189;
  (v188[13])(v186, *MEMORY[0x1E6975DD0], v189);
  sub_1D5610798();
  (v81[1])(v82, v83);
  (*(v185 + 8))(v79, v187);
  v84 = v68;
  sub_1D5612768();
  v85 = v190;
  sub_1D4F39AB0(v68 + v80[19], v190, &qword_1EC7EFBD0, &qword_1D5634650);
  v86 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
  {
    sub_1D4E50004(v85, &qword_1EC7EFBD0, &qword_1D5634650);
    v87 = 1;
    v88 = v184;
  }

  else
  {
    v89 = v166;
    sub_1D4F39AB0(v85, v166, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v85, type metadata accessor for StorePlatformUber);
    v90 = v177;
    v91 = __swift_getEnumTagSinglePayload(v89, 1, v177);
    v88 = v184;
    if (v91 == 1)
    {
      sub_1D4E50004(v89, &qword_1EC7EB5B8, &unk_1D56206A0);
      v87 = 1;
    }

    else
    {
      sub_1D5610758();
      (*(*(v90 - 8) + 8))(v89, v90);
      v87 = 0;
    }
  }

  v61 = v203;
  v58 = v204;
  __swift_storeEnumTagSinglePayload(v88, v87, 1, v179);
  sub_1D5612758();

  sub_1D56127F8();
  v92 = v80[9];
  v93 = v194;
  sub_1D4F39AB0(v84 + v92, v194, &qword_1EC7EAC98, &unk_1D561DA80);
  v94 = sub_1D5610978();
  if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
  {
    sub_1D4E50004(v93, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610948();
    v96 = v95;
    (*(*(v94 - 8) + 8))(v93, v94);
    if (v96)
    {
      goto LABEL_22;
    }
  }

  v97 = v167;
  sub_1D4F39AB0(v84 + v80[14], v167, &qword_1EC7EC960, &unk_1D56334C0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v97, 1, v98) == 1)
  {
    sub_1D4E50004(v97, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    v99 = v169;
    sub_1D5610708();
    (*(*(v98 - 8) + 8))(v97, v98);
    sub_1D5611AC8();
    v100 = v99;
    v80 = v209;
    (*(v170 + 8))(v100, v171);
  }

LABEL_22:
  sub_1D5612778();
  v101 = v84 + v92;
  v102 = v200;
  sub_1D4F39AB0(v101, v200, &qword_1EC7EAC98, &unk_1D561DA80);
  if (__swift_getEnumTagSinglePayload(v102, 1, v94) == 1)
  {
    sub_1D4E50004(v102, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_26:
    v106 = v168;
    sub_1D4F39AB0(v84 + v80[14], v168, &qword_1EC7EC960, &unk_1D56334C0);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    if (__swift_getEnumTagSinglePayload(v106, 1, v107) == 1)
    {
      sub_1D4E50004(v106, &qword_1EC7EC960, &unk_1D56334C0);
    }

    else
    {
      v108 = v169;
      sub_1D5610708();
      (*(*(v107 - 8) + 8))(v106, v107);
      sub_1D5611AD8();
      (*(v170 + 8))(v108, v171);
    }

    v105 = v208;

    goto LABEL_30;
  }

  sub_1D5610968();
  v104 = v103;
  (*(*(v94 - 8) + 8))(v102, v94);
  if (!v104)
  {
    goto LABEL_26;
  }

  v105 = v208;
LABEL_30:
  sub_1D5612798();
  v209 = *(v84 + v80[8]);
  sub_1D56126D8();

  sub_1D56126E8();
  sub_1D4F39AB0(v84 + v80[20], v105, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v109 = sub_1D56127D8();
  if (!v209 || !*(v84 + v80[7]))
  {
LABEL_68:
    v159 = v175;
    v210[3] = v175;
    v210[4] = MEMORY[0x1E69765B0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v210);
    v161 = v174;
    (*(v174 + 16))(boxed_opaque_existential_0, v69, v159);
    sub_1D56145A8();

    (*(v161 + 8))(v69, v159);
    (*(v192 + 8))(v206, v202);
    return sub_1D50EF07C(v84, type metadata accessor for StorePlatformPlaylist);
  }

  MEMORY[0x1EEE9AC00](v109);
  v200 = v110;
  v111 = v205;
  v112 = v206;
  *(&v163 - 4) = v110;
  *(&v163 - 3) = v112;
  *(&v163 - 2) = v111;
  v113 = v209;
  v210[0] = sub_1D50DE474(sub_1D50EEF30, (&v163 - 6), v209);
  isUniquelyReferenced_nonNull_native = sub_1D5613D28();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
  sub_1D50EEF84(&qword_1EC7EFBE0, &qword_1EC7EFBD8, &unk_1D56346A0);
  v114 = v165;
  sub_1D560DAD8();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  __swift_storeEnumTagSinglePayload(v114, 0, 1, v115);
  sub_1D5612808();
  sub_1D4F53BAC();
  v190 = MEMORY[0x1E69E7CC0];
  a1 = sub_1D5614BD8();
  v208 = *(v113 + 16);
  v194 = (v192 + 16);
  v189 = (v173 + 32);

  v54 = 0;
  v64 = (v113 + 40);
  v188 = v64;
LABEL_33:
  v57 = &v64[2 * v54];
  v116 = v200;
  v117 = v201;
  while (1)
  {
    if (v208 == v54)
    {

      v210[0] = v190;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
      sub_1D50EEF84(&qword_1EC7ED3E8, &qword_1EC7ED398, &unk_1D5625000);
      v157 = v164;
      sub_1D560DAD8();
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
      __swift_storeEnumTagSinglePayload(v157, 0, 1, v158);
      v69 = v191;
      sub_1D5612828();
      sub_1D56127C8();

      v84 = v193;
      goto LABEL_68;
    }

    if (v54 >= *(v209 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v64 = *(v57 - 1);
    v59 = *v57;
    __swift_storeEnumTagSinglePayload(v117, 1, 1, v58);
    v118 = *(v116 + 16);

    if (!v118 || (v119 = sub_1D4E4EFA0(v64, v59), (v120 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = &unk_1EC7F2BE0;
      v64 = &qword_1D56250F0;
      goto LABEL_58;
    }

    isUniquelyReferenced_nonNull_native = v198;
    sub_1D50EF020(*(v116 + 56) + *(v199 + 72) * v119, v198, type metadata accessor for StorePlatformPlaylistEntry);
    sub_1D50EF0FC(isUniquelyReferenced_nonNull_native, v207, type metadata accessor for StorePlatformPlaylistEntry);
    if (!a1[2] || (v121 = sub_1D4F15A78(), (v122 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v210[0] = a1;
      v132 = sub_1D4F15A78();
      v134 = a1[2];
      v135 = (v133 & 1) == 0;
      a1 = (v134 + v135);
      if (__OFADD__(v134, v135))
      {
        goto LABEL_70;
      }

      v58 = v132;
      v136 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC40, &qword_1D5634708);
      if (sub_1D5615D78())
      {
        v137 = sub_1D4F15A78();
        if ((v136 & 1) != (v138 & 1))
        {
          goto LABEL_76;
        }

        v58 = v137;
      }

      a1 = v210[0];
      if (v136)
      {
        *(*(v210[0] + 56) + 8 * v58) = 0;
      }

      else
      {
        *(v210[0] + 8 * (v58 >> 6) + 64) |= 1 << v58;
        v139 = (a1[6] + 16 * v58);
        *v139 = v64;
        v139[1] = v59;
        *(a1[7] + 8 * v58) = 0;
        v140 = a1[2];
        v141 = __OFADD__(v140, 1);
        v142 = v140 + 1;
        if (v141)
        {
          goto LABEL_71;
        }

        a1[2] = v142;
      }

      v58 = 0;
      goto LABEL_57;
    }

    v123 = *(a1[7] + 8 * v121);
    v58 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      goto LABEL_72;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v210[0] = a1;
    v124 = sub_1D4F15A78();
    v126 = a1[2];
    v127 = (v125 & 1) == 0;
    a1 = (v126 + v127);
    if (__OFADD__(v126, v127))
    {
      goto LABEL_73;
    }

    v128 = v124;
    v129 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC40, &qword_1D5634708);
    if (sub_1D5615D78())
    {
      v130 = sub_1D4F15A78();
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_76;
      }

      v128 = v130;
    }

    a1 = v210[0];
    if ((v129 & 1) == 0)
    {
      break;
    }

    *(*(v210[0] + 56) + 8 * v128) = v58;
LABEL_57:
    v143 = v207;
    v144 = v196;
    sub_1D50EF020(v207, v196, type metadata accessor for StorePlatformPlaylistEntry);
    v145 = v197;
    (*v194)(v197, v206, v202);
    v146 = v205;

    v147 = v195;
    sub_1D50D5C84(v144, v145, v146, v54, v58, v195);
    sub_1D50EF07C(v143, type metadata accessor for StorePlatformPlaylistEntry);
    v117 = v201;
    isUniquelyReferenced_nonNull_native = &unk_1EC7F2BE0;
    v64 = &qword_1D56250F0;
    sub_1D4E50004(v201, &unk_1EC7F2BE0, &qword_1D56250F0);
    v58 = v204;
    __swift_storeEnumTagSinglePayload(v147, 0, 1, v204);
    sub_1D4F39A1C(v147, v117, &unk_1EC7F2BE0, &qword_1D56250F0);
    v61 = v203;
    v116 = v200;
LABEL_58:
    sub_1D4F39A1C(v117, v61, &unk_1EC7F2BE0, &qword_1D56250F0);

    if (__swift_getEnumTagSinglePayload(v61, 1, v58) != 1)
    {
      v151 = *v189;
      v152 = v163;
      (*v189)(v163, v61, v58);
      v151(v172, v152, v58);
      v59 = v190;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F00B4C();
        v59 = v155;
      }

      v64 = v188;
      v153 = *(v59 + 16);
      isUniquelyReferenced_nonNull_native = (v153 + 1);
      if (v153 >= *(v59 + 24) >> 1)
      {
        sub_1D4F00B4C();
        v59 = v156;
      }

      ++v54;
      *(v59 + 16) = isUniquelyReferenced_nonNull_native;
      v154 = (*(v173 + 80) + 32) & ~*(v173 + 80);
      v190 = v59;
      v151((v59 + v154 + *(v173 + 72) * v153), v172, v58);
      goto LABEL_33;
    }

    sub_1D4E50004(v61, &unk_1EC7F2BE0, &qword_1D56250F0);
    v57 += 2;
    ++v54;
  }

  *(v210[0] + 8 * (v128 >> 6) + 64) |= 1 << v128;
  v148 = (a1[6] + 16 * v128);
  *v148 = v64;
  v148[1] = v59;
  *(a1[7] + 8 * v128) = v58;
  v149 = a1[2];
  v141 = __OFADD__(v149, 1);
  v150 = v149 + 1;
  if (!v141)
  {
    a1[2] = v150;

    goto LABEL_57;
  }

  __break(1u);
LABEL_76:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D50ED834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v33 = a1;
  v34 = a2;
  v8 = sub_1D560CD48();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for StorePlatformPlaylistEntry(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = sub_1D5613D28();
  v32 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v24);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0(v33, v34);
    if (v26)
    {
      sub_1D50EF020(*(a3 + 56) + *(v15 + 72) * result, v21, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF0FC(v21, v23, type metadata accessor for StorePlatformPlaylistEntry);
      sub_1D50EF020(v23, v18, type metadata accessor for StorePlatformPlaylistEntry);
      (*(v29 + 16))(v10, v30, v8);
      v27 = v31;

      sub_1D50DD78C(v18, v10, v27, v13);
      sub_1D50EF07C(v23, type metadata accessor for StorePlatformPlaylistEntry);
      v28 = v32;
      sub_1D4E50004(v32, &qword_1EC7EA888, &qword_1D563B8C0);
      return sub_1D4F39A1C(v13, v28, &qword_1EC7EA888, &qword_1D563B8C0);
    }
  }

  return result;
}

uint64_t sub_1D50EDB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v125 = a2;
  v123 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v94 - v6;
  v7 = sub_1D56109D8();
  v120 = *(v7 - 8);
  v121 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC60, &unk_1D5634750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F0, &qword_1D56299E8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC68, &qword_1D5634760);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v111 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v108 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v110 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v107 = &v94 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v98 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v94 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v114 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v106 = &v94 - v32;
  v97 = sub_1D560FD08();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC70, &unk_1D56766B0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v103 = &v94 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0E8, &qword_1D56299E0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v104 = &v94 - v37;
  v38 = sub_1D5610088();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v101 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D560D9A8();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D5612638();
  v112 = *(v48 - 8);
  v113 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v102 = &v94 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D958();
  if (qword_1EC7E9810 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v38, qword_1EC87C750);
  v109 = type metadata accessor for StorePlatformStation(0);
  v51 = (a1 + *(v109 + 40));
  v52 = *v51;
  v53 = v51[1];
  v100 = v47;
  sub_1D54301F4(v50, v44, v52, v53, v47);
  (*(v42 + 8))(v44, v41);
  (*(v39 + 16))(v101, v50, v38);
  v99 = sub_1D560FDE8();
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  sub_1D5614BD8();
  v54 = v102;
  sub_1D5612578();
  v55 = v103;
  sub_1D4F39AB0(a1, v103, &qword_1EC7EFC70, &unk_1D56766B0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC78, &qword_1D5634768);
  v57 = v54;
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    sub_1D4E50004(v55, &qword_1EC7EFC70, &unk_1D56766B0);
    v58 = sub_1D56143E8();
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v58);
  }

  else
  {
    v59 = v95;
    sub_1D5610708();
    (*(*(v56 - 8) + 8))(v55, v56);
    sub_1D560FCF8();
    (*(v96 + 8))(v59, v97);
  }

  v60 = v106;
  v61 = v105;
  sub_1D5612618();
  v62 = v109;
  sub_1D4F39AB0(a1 + *(v109 + 20), v61, &qword_1EC7EB5B8, &unk_1D56206A0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v63);
  v66 = v110;
  v65 = v111;
  v67 = v108;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v61, &qword_1EC7EB5B8, &unk_1D56206A0);
    v68 = 1;
  }

  else
  {
    sub_1D5610758();
    (*(*(v63 - 8) + 8))(v61, v63);
    v68 = 0;
  }

  v69 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v60, v68, 1, v69);
  sub_1D5612628();
  v70 = *(a1 + v62[6]);
  if (v70)
  {
    sub_1D5386528(v70, v107);
  }

  else
  {
    v71 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v71);
  }

  sub_1D5612558();

  sub_1D56125B8();
  sub_1D4F39AB0(a1 + v62[12], v67, &qword_1EC7EC960, &unk_1D56334C0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v67, 1, v72) == 1)
  {
    sub_1D4E50004(v67, &qword_1EC7EC960, &unk_1D56334C0);
    v73 = 1;
  }

  else
  {
    sub_1D5610738();
    (*(*(v72 - 8) + 8))(v67, v72);
    v73 = 0;
  }

  v74 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v66, v73, 1, v74);
  sub_1D5612588();

  sub_1D56125C8();
  sub_1D4F39AB0(a1 + v62[7], v65, &qword_1EC7EFC68, &qword_1D5634760);
  v75 = sub_1D560FD88();
  if (__swift_getEnumTagSinglePayload(v65, 1, v75) == 1)
  {
    sub_1D4E50004(v65, &qword_1EC7EFC68, &qword_1D5634760);
  }

  else
  {
    sub_1D560FD78();
    (*(*(v75 - 8) + 8))(v65, v75);
  }

  sub_1D5612568();
  sub_1D5612608();
  v76 = a1 + v62[14];
  v77 = *v76;
  v78 = *(v76 + 8);
  v79 = v116;
  sub_1D4F39AB0(a1 + v62[15], v116, &qword_1EC7EFC60, &unk_1D5634750);
  sub_1D50F1ADC(v77, v78, v79, v115);
  sub_1D56125E8();
  v80 = v117;
  sub_1D4F39AB0(a1 + v62[16], v117, &qword_1EC7EFBD0, &qword_1D5634650);
  v81 = type metadata accessor for StorePlatformUber(0);
  if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
  {
    v82 = &qword_1EC7EFBD0;
    v83 = &qword_1D5634650;
    v84 = v80;
  }

  else
  {
    v85 = v98;
    sub_1D4F39AB0(v80, v98, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D50EF07C(v80, type metadata accessor for StorePlatformUber);
    if (__swift_getEnumTagSinglePayload(v85, 1, v63) != 1)
    {
      v87 = v114;
      sub_1D5610758();
      (*(*(v63 - 8) + 8))(v85, v63);
      v86 = 0;
      goto LABEL_24;
    }

    v82 = &qword_1EC7EB5B8;
    v83 = &unk_1D56206A0;
    v84 = v85;
  }

  sub_1D4E50004(v84, v82, v83);
  v86 = 1;
  v87 = v114;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v87, v86, 1, v69);
  sub_1D56125A8();

  sub_1D56125F8();
  v88 = v119;
  sub_1D56109B8();
  sub_1D50E8048(v118);
  (*(v120 + 8))(v88, v121);
  sub_1D5612598();
  sub_1D4F39AB0(a1 + v62[17], v122, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56125D8();
  v89 = v113;
  v126[3] = v113;
  v126[4] = MEMORY[0x1E6976500];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
  v91 = v112;
  (*(v112 + 16))(boxed_opaque_existential_0, v57, v89);
  sub_1D5614288();

  v92 = sub_1D560CD48();
  (*(*(v92 - 8) + 8))(v125, v92);
  (*(v91 + 8))(v57, v89);
  return sub_1D50EF07C(a1, type metadata accessor for StorePlatformStation);
}

uint64_t sub_1D50EEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v35 = a1;
  v36 = a2;
  v8 = sub_1D560CD48();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v29 - v12);
  v14 = type metadata accessor for StorePlatformTVEpisode(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = type metadata accessor for TVEpisode(0);
  v34 = a6;
  result = __swift_storeEnumTagSinglePayload(a6, 1, 1, v24);
  if (*(a3 + 16))
  {
    result = sub_1D4E4EFA0(v35, v36);
    if (v26)
    {
      sub_1D50EF020(*(a3 + 56) + *(v15 + 72) * result, v21, type metadata accessor for StorePlatformTVEpisode);
      sub_1D50EF0FC(v21, v23, type metadata accessor for StorePlatformTVEpisode);
      sub_1D50EF020(v23, v18, type metadata accessor for StorePlatformTVEpisode);
      (*(v30 + 16))(v10, v32, v31);
      v27 = v33;

      sub_1D50DA260(v18, v10, v27, v13);
      sub_1D50EF07C(v23, type metadata accessor for StorePlatformTVEpisode);
      v28 = v34;
      sub_1D4E50004(v34, &qword_1EC7EA880, &unk_1D561CEE0);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v24);
      return sub_1D4F39A1C(v13, v28, &qword_1EC7EA880, &unk_1D561CEE0);
    }
  }

  return result;
}

uint64_t sub_1D50EEF84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D50EEFD8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D50EF020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D50EF07C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D50EF0FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

double static MusicCollaborativePlaylist.Error.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static MusicCollaborativePlaylist.Error.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7EFCA8 = a1;
}

double sub_1D50EF2A4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7EFCA8;

  return result;
}

uint64_t sub_1D50EF2F4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7EFCA8 = v1;
}

uint64_t MusicCollaborativePlaylist.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D50EF414(uint64_t a1)
{
  sub_1D56162D8();
  MusicCollaborativePlaylist.Error.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D50EF460()
{
  result = qword_1EC7EFCB0;
  if (!qword_1EC7EFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFCB8, &qword_1D56347E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFCB0);
  }

  return result;
}

unint64_t sub_1D50EF4C8()
{
  result = qword_1EC7EFCC0;
  if (!qword_1EC7EFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFCC0);
  }

  return result;
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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