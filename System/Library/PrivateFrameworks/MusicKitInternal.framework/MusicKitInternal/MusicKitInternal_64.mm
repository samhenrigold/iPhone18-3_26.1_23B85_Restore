unint64_t sub_1D545FB8C()
{
  result = qword_1EC7F6AD0;
  if (!qword_1EC7F6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AD0);
  }

  return result;
}

uint64_t sub_1D545FBE0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFE60, &qword_1D5635158);
  v1[3] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560D428();
  v1[6] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560CD48();
  v1[9] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560D348();
  v1[12] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_127();
  v10 = sub_1D560D388();
  v1[15] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v1[18] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560F148();
  v1[19] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_127();
  v14 = sub_1D560EBD8();
  v1[22] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[23] = v15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v1[26] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560D9A8();
  v1[27] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[28] = v17;
  v1[29] = OUTLINED_FUNCTION_127();
  v18 = sub_1D560D838();
  v1[30] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[31] = v19;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v20 = sub_1D5610088();
  v1[35] = v20;
  OUTLINED_FUNCTION_69(v20);
  v1[36] = v21;
  v1[37] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D545FFDC, 0, 0);
}

uint64_t sub_1D545FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 272);
  v39 = *(v18 + 280);
  v20 = *(v18 + 240);
  v21 = *(v18 + 248);
  v23 = *(v18 + 224);
  v22 = *(v18 + 232);
  v25 = *(v18 + 208);
  v24 = *(v18 + 216);
  __swift_project_boxed_opaque_existential_1(*(v18 + 16), *(*(v18 + 16) + 24));
  sub_1D560EC98();
  sub_1D560D828();
  v26 = *(v21 + 8);
  *(v18 + 304) = v26;
  *(v18 + 312) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v19, v20);
  v27 = sub_1D560D8B8();
  (*(v23 + 8))(v22, v24);
  sub_1D4EC980C(v27);

  if (__swift_getEnumTagSinglePayload(v25, 1, v39) == 1)
  {
    sub_1D4E6C9CC(*(v18 + 208), &qword_1EC7EA358, &unk_1D561DF50);
    return sub_1D5615E08();
  }

  else
  {
    (*(*(v18 + 288) + 32))(*(v18 + 296), *(v18 + 208), *(v18 + 280));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
    v29 = sub_1D560BB98();
    OUTLINED_FUNCTION_69(v29);
    v30 = swift_allocObject();
    *(v18 + 320) = v30;
    *(v30 + 16) = xmmword_1D5621D90;
    sub_1D560BB28();
    sub_1D560BB28();
    *(v18 + 392) = *(type metadata accessor for MusicCatalogTracklistIdentifiersRequest(0) + 24);
    v31 = swift_task_alloc();
    *(v18 + 328) = v31;
    *v31 = v18;
    v31[1] = sub_1D54602D8;

    return MEMORY[0x1EEDCE258](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1D54602D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  if (v2)
  {

    v5 = sub_1D5460D7C;
  }

  else
  {
    v5 = sub_1D54603F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D54603F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_32_5();
  v16 = *(v15 + 304);
  v17 = *(v15 + 264);
  v18 = *(v15 + 240);
  v20 = *(v15 + 144);
  v19 = *(v15 + 152);
  __swift_project_boxed_opaque_existential_1(*(v15 + 16), *(*(v15 + 16) + 24));
  sub_1D560EC98();
  sub_1D560D7A8();
  v16(v17, v18);
  if (__swift_getEnumTagSinglePayload(v20, 1, v19) == 1)
  {
    v21 = *(v15 + 304);
    v22 = *(v15 + 256);
    v23 = *(v15 + 240);
    v24 = *(v15 + 16);
    sub_1D4E6C9CC(*(v15 + 144), &unk_1EC7F1970, &qword_1D561F4A0);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_1D560EC98();
    v25 = sub_1D560D808();
    v27 = v26;
    v21(v22, v23);
    if (!v27)
    {
      sub_1D5615E08();
      OUTLINED_FUNCTION_16_5();
      return;
    }

    sub_1D5610058();
    OUTLINED_FUNCTION_6_138();
    MEMORY[0x1DA6EAC70](v25, v27);

    OUTLINED_FUNCTION_3_181();
    sub_1D560EB98();
  }

  else
  {
    v29 = *(v15 + 160);
    v28 = *(v15 + 168);
    v30 = *(v15 + 152);
    (*(v29 + 32))(v28, *(v15 + 144), v30);
    sub_1D5610058();
    OUTLINED_FUNCTION_6_138();
    v31 = sub_1D560F138();
    MEMORY[0x1DA6EAC70](v31);

    OUTLINED_FUNCTION_3_181();
    sub_1D560EB88();

    (*(v29 + 8))(v28, v30);
  }

  v43 = *(v15 + 392);
  v33 = *(v15 + 104);
  v32 = *(v15 + 112);
  v35 = *(v15 + 88);
  v34 = *(v15 + 96);
  v36 = *(v15 + 72);
  v37 = *(v15 + 80);
  v38 = *(v15 + 16);
  (*(*(v15 + 184) + 16))(*(v15 + 192), *(v15 + 200), *(v15 + 176));
  (*(v33 + 104))(v32, *MEMORY[0x1E6974E78], v34);
  sub_1D560D368();
  v39 = *(v37 + 16);
  *(v15 + 360) = v39;
  *(v15 + 368) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v35, v38 + v43, v36);
  sub_1D560D2B8();
  v40 = swift_task_alloc();
  *(v15 + 376) = v40;
  *v40 = v15;
  v40[1] = sub_1D54607CC;
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x1EEDCE5B0](v41);
}

uint64_t sub_1D54607CC()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D5460E6C;
  }

  else
  {
    v2 = sub_1D54608E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D54608E0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 392);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v38 = *(v0 + 384);
  v5 = *(v0 + 16);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v5 + v2, v4);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v6 = sub_1D560D418();
  v8 = v7;
  sub_1D5460FE0();
  sub_1D560B948();
  sub_1D4E55E1C(v6, v8);
  if (v38)
  {
    v9 = *(v0 + 184);
    v36 = *(v0 + 176);
    v37 = *(v0 + 200);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = *(v0 + 48);

    (*(v13 + 8))(v14, v15);
    (*(v10 + 8))(v11, v12);
    (*(v9 + 8))(v37, v36);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v34 = *(v0 + 280);
    v35 = *(v0 + 296);
    v32 = *(v0 + 200);
    v33 = *(v0 + 288);
    v30 = *(v0 + 184);
    v31 = *(v0 + 176);
    v27 = *(v0 + 128);
    v28 = *(v0 + 120);
    v29 = *(v0 + 136);
    v18 = *(v0 + 56);
    v19 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 64);
    v21 = *(v0 + 24);
    v20 = *(v0 + 32);
    v22 = *(v0 + 16);
    sub_1D56123B8();
    *(swift_task_alloc() + 16) = v22;
    v23 = sub_1D50DDF14();

    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v26, v25);
    (*(v27 + 8))(v29, v28);
    (*(v30 + 8))(v32, v31);
    (*(v33 + 8))(v35, v34);

    v24 = *(v0 + 8);

    return v24(v23);
  }
}

uint64_t sub_1D5460D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v18 = OUTLINED_FUNCTION_1_178();
  v19(v18);

  OUTLINED_FUNCTION_16_5();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D5460E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[25];
  v20 = v18[22];
  v21 = v18[23];
  (*(v18[16] + 8))(v18[17], v18[15]);
  (*(v21 + 8))(v19, v20);
  v22 = OUTLINED_FUNCTION_1_178();
  v23(v22);

  OUTLINED_FUNCTION_16_5();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t type metadata accessor for MusicCatalogTracklistIdentifiersRequest(uint64_t a1)
{
  result = qword_1EDD59730;
  if (!qword_1EDD59730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5460FE0()
{
  result = qword_1EC7EFEA0;
  if (!qword_1EC7EFEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D5461414(&qword_1EC7EC6A8, MEMORY[0x1E6976480], MEMORY[0x1E69764A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFEA0);
  }

  return result;
}

uint64_t sub_1D5461094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1D5610088();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  if (*(a1 + 40) != 1 || (sub_1D5612468(), sub_1D560FFA8(), sub_1D5461414(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]), v13 = sub_1D5614D18(), v14 = *(v7 + 8), v14(v10, v6), v14(v12, v6), (v13 & 1) != 0) || (sub_1D5612468(), sub_1D560FE38(), v15 = sub_1D5614D18(), v14(v10, v6), v14(v12, v6), (v15 & 1) != 0) || (sub_1D5612468(), sub_1D560FE48(), v16 = sub_1D5614D18(), v14(v10, v6), v14(v12, v6), (v16 & 1) != 0) || (sub_1D5612468(), sub_1D560FDF8(), v17 = sub_1D5614D18(), v14(v10, v6), v14(v12, v6), (v17 & 1) != 0))
  {
    sub_1D5612448();
    sub_1D5612468();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    v18 = v23;
    sub_1D560F128();
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v18 = v23;
  }

  v20 = sub_1D560F148();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t sub_1D5461414(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5461484(uint64_t a1)
{
  result = sub_1D5461510();
  if (v2 <= 0x3F)
  {
    result = sub_1D560CD48();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5461510()
{
  result = qword_1EDD59478[0];
  if (!qword_1EDD59478[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDD59478);
  }

  return result;
}

uint64_t MusicDataRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v4 + 16))(v8, v10, v2);
  sub_1D560D2B8();
  sub_1D4F581B8(a1);
  return (*(v4 + 8))(v10, v2);
}

uint64_t MusicDataRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1D560D2A8();
  sub_1D560CCE8();
  (*(v4 + 8))(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v14 = type metadata accessor for MusicRequestConfiguration(0);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v15 ^ 1u, 1, v14);
  sub_1D4F73F78(v13, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      sub_1D4FEF060(v11);
    }
  }

  else
  {
    sub_1D4E56C6C(v11, a1);
  }

  return sub_1D4FEF060(v13);
}

uint64_t sub_1D54618A4(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v4);
  return MusicDataRequest.configuration.setter(v4);
}

void (*MusicDataRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v3[2] = *(v4 - 8);
  v3[3] = OUTLINED_FUNCTION_2_179();
  v3[4] = OUTLINED_FUNCTION_2_179();
  v3[5] = type metadata accessor for MusicRequestConfiguration(0);
  v3[6] = OUTLINED_FUNCTION_2_179();
  v5 = OUTLINED_FUNCTION_2_179();
  v3[7] = v5;
  MusicDataRequest.configuration.getter(v5);
  return sub_1D5461A20;
}

void sub_1D5461A20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v8 = *(*a1 + 8);
  if (a2)
  {
    sub_1D4F5A490(*(*a1 + 56), v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v9 = OUTLINED_FUNCTION_178();
    v10(v9);
    sub_1D560D2B8();
    (*(v7 + 8))(v5, v8);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560D2B8();
    (*(v7 + 8))(v5, v8);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t EditorialElementLink.Feature.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t EditorialElementLink.Feature.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1D5615C08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v19);
  v9 = sub_1D50F8E84(v19);
  if (!v2)
  {
    v11 = v9;
    v12 = v10;
    sub_1D5163C98(v9, v10, v19);
    v13 = v19[0];
    if (LOBYTE(v19[0]) == 7)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5616348();
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000040, 0x80000001D568E760);
      MEMORY[0x1DA6EAC70](v11, v12);

      MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
      sub_1D5615BF8();
      v14 = sub_1D5615C18();
      swift_allocError();
      v16 = v15;
      (*(v6 + 16))(v15, v8, v5);
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      *a2 = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialElementLink.Feature.encode(to:)(void *a1)
{
  v2 = 0xEE006C6C65737075;
  v3 = 0x2D73646E65697266;
  switch(*v1)
  {
    case 1:
      v3 = 0x676E6970756F7267;
      v2 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0xE900000000000078;
      v3 = 0x656C7069746C756DLL;
      break;
    case 3:
      v3 = 0x6F6F7269746C756DLL;
      v2 = 0xEA0000000000736DLL;
      break;
    case 4:
      v2 = 0x80000001D5685EE0;
      v3 = 0xD000000000000012;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x736D6F6F72;
      break;
    case 6:
      v2 = 0xEA00000000007374;
      v3 = 0x726168632D706F74;
      break;
    default:
      break;
  }

  sub_1D50F8F30(a1, v3, v2);
}

unint64_t sub_1D5461F84()
{
  result = qword_1EC7F6AD8;
  if (!qword_1EC7F6AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6AE0, &qword_1D5666838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AD8);
  }

  return result;
}

unint64_t sub_1D5461FEC()
{
  result = qword_1EC7F6AE8;
  if (!qword_1EC7F6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6AE8);
  }

  return result;
}

_BYTE *_s7FeatureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

int *sub_1D546214C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v66 = v3;
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_1D5611218();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v64 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v21 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v62 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v69 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  v70 = v1;
  sub_1D5610708();
  sub_1D56111F8();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v28 = v30;
  v31 = v20;
  v32 = v21;
  v33 = v8;
  v30(v31, v8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v32) == 1)
  {
    sub_1D534D7FC(v7);
    v35 = v65;
    v34 = v66;
    *v65 = 0x6C72557465737361;
    *(v35 + 1) = 0xE800000000000000;
    v36 = v67;
    (*(v34 + 104))(v35, *MEMORY[0x1E69763E0], v67);
    sub_1D50F96EC();
    swift_allocError();
    (*(v34 + 16))(v37, v35, v36);
    swift_willThrow();
    return (*(v34 + 8))(v35, v36);
  }

  else
  {
    v39 = v62;
    v65 = *(v62 + 32);
    v66 = v62 + 32;
    (v65)(v27, v7, v32);
    sub_1D5610708();
    v60 = sub_1D56111C8();
    v61 = v28;
    v41 = v40;
    v67 = v29;
    v61(v18, v33);
    v42 = 0.0;
    v43 = v39;
    if ((v41 & 1) == 0)
    {
      v42 = v60 / 1000.0;
    }

    (*(v39 + 16))(v69, v27, v32);
    v59 = v32;
    v60 = v27;
    v44 = v63;
    sub_1D5610708();
    v45 = sub_1D56111E8();
    v47 = v46;
    v48 = v61;
    v61(v44, v33);
    v58 = v33;
    if (v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = v45;
    }

    v63 = v49;
    v50 = v64;
    sub_1D5610708();
    v51 = sub_1D56111D8();
    v53 = v52;
    v48(v50, v58);
    if (v53)
    {
      v54 = 0;
    }

    else
    {
      v54 = v51;
    }

    v55 = sub_1D5610718();
    v56 = v59;
    (*(v43 + 8))(v60, v59);
    v57 = v68;
    (v65)(v68, v69, v56);
    result = type metadata accessor for VideoArtwork.FileAsset(0);
    *(v57 + result[5]) = v63;
    *(v57 + result[6]) = v54;
    *(v57 + result[7]) = v42;
    *(v57 + result[8]) = v55;
  }

  return result;
}

int *sub_1D5462674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D5611218();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D560C0A8();
  (*(*(v5 - 8) + 16))(v3, v0, v5);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  result = type metadata accessor for VideoArtwork.FileAsset(0);
  v7 = *(v0 + result[7]) * 1000.0;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    sub_1D5611208();

    return sub_1D56106F8();
  }

LABEL_7:
  __break(1u);
  return result;
}

void static LegacyModelCodablePlaylistEntryReaction.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  v16 = *(v15 + 56);
  sub_1D4F39AB0(v6, v1, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F39AB0(v4, v1 + v16, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(v1);
  if (!v17)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_10(v1 + v16);
    if (!v17)
    {
      (*(v9 + 32))(v0, v1 + v16, v7);
      OUTLINED_FUNCTION_0_239();
      sub_1D5462E7C(v18);
      v19 = sub_1D5614D18();
      v20 = *(v9 + 8);
      v21 = OUTLINED_FUNCTION_116();
      v20(v21);
      (v20)(v2, v7);
      sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    (*(v9 + 8))(v2, v7);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7EB578, &unk_1D5644D10);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10(v1 + v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_12:
  v22 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0) + 20);
  v23 = (v6 + v22);
  v24 = *(v6 + v22 + 8);
  v25 = (v4 + v22);
  v26 = v25[1];
  if (v24 && v26 && (*v23 != *v25 || v24 != v26))
  {
    sub_1D5616168();
  }

LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5462B28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5462BEC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1D5462C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5462B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5462C48(uint64_t a1)
{
  v2 = sub_1D5462E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5462C84(uint64_t a1)
{
  v2 = sub_1D5462E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B18, &qword_1D5666980);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_102_1();
  v6 = sub_1D5462E28();
  OUTLINED_FUNCTION_132(&type metadata for LegacyModelCodablePlaylistEntryReaction.Attributes.CodingKeys, v7, v6);
  sub_1D560C328();
  OUTLINED_FUNCTION_0_239();
  sub_1D5462E7C(v8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_7_6();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    OUTLINED_FUNCTION_7_3();
    sub_1D5616028();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_1D5462E28()
{
  result = qword_1EC7F6B20;
  if (!qword_1EC7F6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B20);
  }

  return result;
}

unint64_t sub_1D5462E7C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.hash(into:)(uint64_t a1)
{
  v2 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_118_1();
  sub_1D4F39AB0(v1, v1, &qword_1EC7EA3B8, &unk_1D561E370);
  v11 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v11, v12, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v8, v1, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v14);
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_62_38();
  if (!*(v1 + v15 + 8))
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return sub_1D5614E28();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Attributes.hashValue.getter()
{
  v2 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v8 = OUTLINED_FUNCTION_71();
  sub_1D4F39AB0(v8, v9, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_5_1(v0);
  if (v10)
  {
    sub_1D56162F8();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_116();
    v12(v11);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v13);
    sub_1D5614CB8();
    (*(v4 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_62_38();
  if (*(v0 + v14 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

void LegacyModelCodablePlaylistEntryReaction.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B28, &unk_1D5666988);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_114();
  v29 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D5462E28();
  sub_1D5616398();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1D560C328();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v34);
    OUTLINED_FUNCTION_189();
    sub_1D5615F78();
    sub_1D4F39A1C(v23, v33, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_7_3();
    v35 = sub_1D5615F38();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_37_47();
    v39(v38);
    v40 = (v33 + *(v29 + 20));
    *v40 = v35;
    v40[1] = v37;
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1D5465040(v33, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5463544(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D560C328();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1D56162D8();
  sub_1D4F39AB0(v4, v11, &qword_1EC7EA3B8, &unk_1D561E370);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1D56162F8();
    sub_1D5462E7C(&qword_1EDD5CF60);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  if (*(v4 + *(a2 + 20) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x72506C6169636F73;
  }

  else
  {
    return 0x7473696C79616C70;
  }
}

uint64_t sub_1D5463838@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelCodablePlaylistEntryReaction.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D546387C(uint64_t a1)
{
  v2 = sub_1D54640F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54638B8(uint64_t a1)
{
  v2 = sub_1D54640F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static LegacyModelCodablePlaylistEntryReaction.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v44 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v43 = v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD8, &unk_1D56429B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v46 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B30, &qword_1D5666998);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v25 = *(v22 + 56);
  v47 = v5;
  sub_1D4F39AB0(v5, &v42 - v23, &qword_1EC7ECCC0, &unk_1D5623B30);
  v48 = v3;
  sub_1D4F39AB0(v3, &v24[v25], &qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_10(v24);
  if (!v26)
  {
    sub_1D4F39AB0(v24, v0, &qword_1EC7ECCC0, &unk_1D5623B30);
    OUTLINED_FUNCTION_10(&v24[v25]);
    if (!v26)
    {
      (*(v16 + 32))(v1, &v24[v25], v14);
      sub_1D5463E10();
      v30 = sub_1D5614D18();
      v31 = *(v16 + 8);
      v31(v1, v14);
      v31(v0, v14);
      sub_1D4E50004(v24, &qword_1EC7ECCC0, &unk_1D5623B30);
      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v16 + 8))(v0, v14);
LABEL_9:
    v27 = &qword_1EC7F6B30;
    v28 = &qword_1D5666998;
    v29 = v24;
LABEL_20:
    sub_1D4E50004(v29, v27, v28);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_10(&v24[v25]);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v24, &qword_1EC7ECCC0, &unk_1D5623B30);
LABEL_11:
  v32 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0) + 20);
  v33 = v46;
  v34 = *(v45 + 48);
  sub_1D4F39AB0(v47 + v32, v46, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4F39AB0(v48 + v32, v33 + v34, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v35 = v49;
  OUTLINED_FUNCTION_57(v33, 1, v49);
  if (!v26)
  {
    v36 = v43;
    sub_1D4F39AB0(v33, v43, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_5_1(v33 + v34);
    if (!v37)
    {
      v38 = v44;
      v39 = v33 + v34;
      v40 = v42;
      (*(v44 + 32))(v42, v39, v35);
      sub_1D51F9AC8();
      sub_1D5614D18();
      v41 = *(v38 + 8);
      v41(v40, v35);
      v41(v36, v35);
      sub_1D4E50004(v33, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_21;
    }

    (*(v44 + 8))(v36, v35);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_5_1(v33 + v34);
  if (!v26)
  {
LABEL_19:
    v27 = &qword_1EC7F1BD8;
    v28 = &unk_1D56429B0;
    v29 = v33;
    goto LABEL_20;
  }

  sub_1D4E50004(v33, &qword_1EC7EA7E0, &unk_1D5623AB0);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D5463E10()
{
  result = qword_1EC7F6B38;
  if (!qword_1EC7F6B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    sub_1D5463ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B38);
  }

  return result;
}

void sub_1D5463ECC()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v2))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCE0, &qword_1D5622EE8);
    sub_1D5462E7C(v1);
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.Relationships.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B50, &qword_1D56669A0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v7 = sub_1D54640F0();
  OUTLINED_FUNCTION_132(&type metadata for LegacyModelCodablePlaylistEntryReaction.Relationships.CodingKeys, v8, v7);
  v18[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_17_86();
  sub_1D5464ED0();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_62_3(v0, v9, v10, v11, v12);
  if (!v1)
  {
    v13 = *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0) + 20);
    OUTLINED_FUNCTION_7_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_17_86();
    sub_1D5464144();
    OUTLINED_FUNCTION_62_3(v0 + v13, v18, v15, v16, v14);
  }

  return (*(v5 + 8))(v2, v3);
}

unint64_t sub_1D54640F0()
{
  result = qword_1EC7F6B58;
  if (!qword_1EC7F6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6B58);
  }

  return result;
}

void sub_1D5464144()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D54641A8();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D54641A8()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D5462E7C(&qword_1EDD530F8);
    sub_1D5462E7C(&qword_1EDD53100);
    atomic_store(OUTLINED_FUNCTION_9_47(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v21 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_114();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_118_1();
  v15 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v15, v16, &qword_1EC7ECCC0, &unk_1D5623B30);
  v17 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v17, v18, v9);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v11 + 32))(v2, v0, v9);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v11 + 8))(v2, v9);
  }

  v20 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  sub_1D4F39AB0(v0 + *(v20 + 20), v1, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v1, 1, v23);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v22 + 32))(v21, v1, v23);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v22 + 8))(v21, v23);
  }

  OUTLINED_FUNCTION_46();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v21 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_108();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v15 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_63_25(v15, v16);
  v17 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v17, v18, v9);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v11 + 32))(v3, v0, v9);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v11 + 8))(v3, v9);
  }

  v20 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  sub_1D4F39AB0(v0 + *(v20 + 20), v2, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v2, 1, v4);
  if (v19)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v21 + 32))(v1, v2, v4);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v21 + 8))(v1, v4);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void LegacyModelCodablePlaylistEntryReaction.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_25_1();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_114();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v43 = v34;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6B80, &qword_1D56669A8);
  OUTLINED_FUNCTION_4();
  v42 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_45();
  v37 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D54640F0();
  sub_1D5616398();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_19_80();
    sub_1D5464ED0();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_45_42(v39, v40);
    sub_1D4F39A1C(v43, v23, &qword_1EC7ECCC0, &unk_1D5623B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_19_80();
    sub_1D5464144();
    OUTLINED_FUNCTION_45_42(v41, &a12);
    (*(v42 + 8))(v25, v44);
    sub_1D4F39A1C(v24, v23 + *(v37 + 20), &qword_1EC7EA7E0, &unk_1D5623AB0);
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1D5465040(v23, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5464B84(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v14, &qword_1EC7ECCC0, &unk_1D5623B30);
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1D56162F8();
    sub_1D4F8B0D4();
    sub_1D5614CB8();
    (*(v9 + 8))(v11, v8);
  }

  sub_1D4F39AB0(v2 + *(v20 + 20), v7, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v15 = v18;
    v16 = v19;
    (*(v19 + 32))(v18, v7, v3);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v16 + 8))(v15, v3);
  }

  return sub_1D5616328();
}

void sub_1D5464ED0()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    sub_1D5464F34();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D5464F34()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCE0, &qword_1D5622EE8);
    sub_1D5462E7C(&unk_1EC7F6B70);
    sub_1D5462E7C(&unk_1EC7F6B78);
    atomic_store(OUTLINED_FUNCTION_9_47(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5464FEC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D5465040(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D54650A0(uint64_t a1)
{
  v2 = sub_1D546515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54650DC(uint64_t a1)
{
  v2 = sub_1D546515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D546515C()
{
  result = qword_1EC7F6BA0;
  if (!qword_1EC7F6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BA0);
  }

  return result;
}

uint64_t sub_1D5465234(uint64_t a1)
{
  v2 = sub_1D54653EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5465270(uint64_t a1)
{
  v2 = sub_1D54653EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D54652F0()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_108();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D54653EC()
{
  result = qword_1EC7F6BB0;
  if (!qword_1EC7F6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BB0);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.attributes.getter()
{
  OUTLINED_FUNCTION_61_35();
  OUTLINED_FUNCTION_23_70();
  return sub_1D5464FEC();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.views.getter()
{
  result = OUTLINED_FUNCTION_61_35();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntryReaction.meta.getter()
{
  result = OUTLINED_FUNCTION_61_35();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D54655B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FF88();
  qword_1EC7F6AF8 = v0;
  return result;
}

uint64_t sub_1D5465694()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F6B00);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F6B00);
  v2 = *MEMORY[0x1E6976818];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodablePlaylistEntryReaction.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E96A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F6B00);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

void static LegacyModelCodablePlaylistEntryReaction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_106_0();
  v5 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BB8, &qword_1D56669C8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_150_1();
  v14 = *v1 == *v0 && v1[1] == v0[1];
  if (v14 || (sub_1D5616168() & 1) != 0)
  {
    v15 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
    static LegacyModelCodablePlaylistEntryReaction.Attributes.== infix(_:_:)();
    if (v16)
    {
      v21 = v9;
      v17 = *(v15 + 24);
      v18 = *(v12 + 48);
      OUTLINED_FUNCTION_63_25(v1 + v17, v2);
      OUTLINED_FUNCTION_63_25(v0 + v17, v2 + v18);
      OUTLINED_FUNCTION_57(v2, 1, v5);
      if (!v14)
      {
        sub_1D4F39AB0(v2, v3, &qword_1EC7ECCC8, &qword_1D5622EE0);
        OUTLINED_FUNCTION_57(v2 + v18, 1, v5);
        if (!v19)
        {
          sub_1D5467B04();
          static LegacyModelCodablePlaylistEntryReaction.Relationships.== infix(_:_:)();
          sub_1D5465040(v21, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
          sub_1D5465040(v3, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
          sub_1D4E50004(v2, &qword_1EC7ECCC8, &qword_1D5622EE0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_4_140();
        sub_1D5465040(v3, v20);
LABEL_15:
        sub_1D4E50004(v2, &qword_1EC7F6BB8, &qword_1D56669C8);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_57(v2 + v18, 1, v5);
      if (!v14)
      {
        goto LABEL_15;
      }

      sub_1D4E50004(v2, &qword_1EC7ECCC8, &qword_1D5622EE0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5465A70(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5465B0C(uint64_t a1)
{
  v2 = sub_1D5465DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5465B48(uint64_t a1)
{
  v2 = sub_1D5465DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodablePlaylistEntryReaction.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BC0, &qword_1D56669D0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_102_1();
  v6 = sub_1D5465DBC();
  OUTLINED_FUNCTION_132(&type metadata for LegacyModelCodablePlaylistEntryReaction.CodingKeys, v7, v6);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v0)
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(0);
    OUTLINED_FUNCTION_21_76();
    sub_1D5462E7C(v8);
    OUTLINED_FUNCTION_7_6();
    sub_1D56160C8();
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
    OUTLINED_FUNCTION_20_89();
    sub_1D5462E7C(v9);
    OUTLINED_FUNCTION_7_6();
    sub_1D5616068();
    sub_1D5465E10();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D5465E64();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_1D5465DBC()
{
  result = qword_1EC7F6BC8;
  if (!qword_1EC7F6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BC8);
  }

  return result;
}

unint64_t sub_1D5465E10()
{
  result = qword_1EC7F6BE0;
  if (!qword_1EC7F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BE0);
  }

  return result;
}

unint64_t sub_1D5465E64()
{
  result = qword_1EC7F6BE8;
  if (!qword_1EC7F6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6BE8);
  }

  return result;
}

void LegacyModelCodablePlaylistEntryReaction.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_118_1();
  sub_1D5614E28();
  v10 = v0 + *(type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0) + 20);
  OUTLINED_FUNCTION_63_25(v10, v0);
  v11 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v11, v12, v1);
  if (v13)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v3 + 32))(v7, v0, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_239();
    sub_1D5462E7C(v14);
    sub_1D5614CB8();
    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_62_38();
  if (*(v10 + v15 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F8566C();
  sub_1D56162F8();
  sub_1D56162F8();
  OUTLINED_FUNCTION_46();
}

uint64_t LegacyModelCodablePlaylistEntryReaction.hashValue.getter()
{
  sub_1D56162D8();
  LegacyModelCodablePlaylistEntryReaction.hash(into:)();
  return sub_1D5616328();
}

void LegacyModelCodablePlaylistEntryReaction.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v18 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6BF0, &unk_1D56669D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_114();
  v10 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5465DBC();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v1 = v19;
    v1[1] = v20;
    OUTLINED_FUNCTION_21_76();
    sub_1D5462E7C(v12);
    sub_1D5615FD8();
    sub_1D5467B04();
    type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
    OUTLINED_FUNCTION_20_89();
    sub_1D5462E7C(v13);
    sub_1D5615F78();
    sub_1D4F39A1C(v18, v1 + v10[6], &qword_1EC7ECCC8, &qword_1D5622EE0);
    sub_1D5467B58();
    OUTLINED_FUNCTION_128_1(&type metadata for LegacyModelCodablePlaylistEntryReaction.Associations);
    *(v1 + v10[7]) = 2;
    sub_1D5467BAC();
    OUTLINED_FUNCTION_128_1(&type metadata for LegacyModelCodablePlaylistEntryReaction.Metadata);
    v14 = OUTLINED_FUNCTION_51_1();
    v15(v14);
    *(v1 + v10[8]) = 2;
    sub_1D5464FEC();
    __swift_destroy_boxed_opaque_existential_1(v3);
    v16 = OUTLINED_FUNCTION_116();
    sub_1D5465040(v16, v17);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54665B8(uint64_t a1)
{
  sub_1D56162D8();
  LegacyModelCodablePlaylistEntryReaction.hash(into:)();
  return sub_1D5616328();
}

void Playlist.Entry.Reaction.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v126 = v4;
  v6 = v5;
  v8 = v7;
  v122 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v110 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v121 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v108 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC8, &qword_1D5622EE0);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v118 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v106 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v107 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v123 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v114 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(v30);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v124 = v33 - v32;
  v34 = OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for PlaylistEntryReactionPropertyProvider(v34);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = sub_1D560C328();
  OUTLINED_FUNCTION_146_0(v39, v41, v42, v40);
  v43 = v35[6];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v117 = v43;
  OUTLINED_FUNCTION_146_0(v39 + v43, v44, v45, v116);
  v46 = v35[7];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v120 = v46;
  OUTLINED_FUNCTION_146_0(v39 + v46, v47, v48, v119);
  if (qword_1EC7E8D88 != -1)
  {
    swift_once();
  }

  v49 = sub_1D560D9A8();
  __swift_project_value_buffer(v49, qword_1EC7EF490);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6C18, &unk_1D56669E8);
  OUTLINED_FUNCTION_22_71();
  sub_1D5462E7C(v51);
  v127 = v6;
  v109 = v1;
  sub_1D5610668();
  sub_1D5610658();
  v52 = sub_1D5610618();
  v112 = v53;
  v113 = v52;
  v111 = sub_1D56105C8();
  v54 = sub_1D56105F8();
  v55 = sub_1D56105E8();
  v56 = v8;
  v57 = sub_1D56105A8();
  if (qword_1EC7E9860 != -1)
  {
    swift_once();
  }

  v58 = qword_1EC87C790;
  v125 = v3;
  if (qword_1EC87C790 >> 62)
  {
    sub_1D560CDE8();

    v105 = sub_1D5615E18();

    v58 = v105;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v59 = (v39 + v35[5]);
  *(v39 + v35[8]) = v58;
  v60 = (v39 + v35[11]);
  v61 = v112;
  *v60 = v113;
  v60[1] = v61;
  *(v39 + v35[12]) = v111;
  *(v39 + v35[13]) = v54;
  *(v39 + v35[14]) = v55;
  *(v39 + v35[15]) = v57;
  v62 = v124;
  sub_1D5610648();
  v63 = v114;
  v64 = v62 + *(v114 + 20);
  sub_1D5467C00(v64, v39);
  OUTLINED_FUNCTION_62_38();
  v66 = (v64 + v65);
  v67 = v66[1];
  *v59 = *v66;
  v59[1] = v67;
  v68 = *(v63 + 24);
  v69 = v115;
  sub_1D4F39AB0(v62 + v68, v115, &qword_1EC7ECCC8, &qword_1D5622EE0);
  v70 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  OUTLINED_FUNCTION_5_1(v69);
  if (v78)
  {

    sub_1D4E50004(v69, &qword_1EC7ECCC8, &qword_1D5622EE0);
    v71 = 1;
    v72 = v125;
  }

  else
  {
    v73 = v107;
    sub_1D4F39AB0(v69, v107, &qword_1EC7ECCC0, &unk_1D5623B30);

    OUTLINED_FUNCTION_4_140();
    sub_1D5465040(v69, v74);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    v76 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v76, v77, v75);
    v72 = v125;
    if (v78)
    {
      sub_1D4E50004(v73, &qword_1EC7ECCC0, &unk_1D5623B30);
      v71 = 1;
    }

    else
    {
      v79 = sub_1D560CD98();
      OUTLINED_FUNCTION_46_39(v79);
      sub_1D5614828();
      OUTLINED_FUNCTION_18_84();
      sub_1D5462E7C(v80);
      v72 = v125;
      sub_1D5612358();
      v81 = v56;
      v56 = v115;
      sub_1D4E50004(v81, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v82 + 8))(v73, v75);
      v71 = 0;
    }
  }

  v83 = v127;
  v84 = v123;
  __swift_storeEnumTagSinglePayload(v123, v71, 1, v116);
  sub_1D4E68940(v84, v39 + v117, &qword_1EC7EC450, &unk_1D5621060);
  v85 = v118;
  sub_1D4F39AB0(v62 + v68, v118, &qword_1EC7ECCC8, &qword_1D5622EE0);
  OUTLINED_FUNCTION_5_1(v85);
  if (v78)
  {
    v86 = &qword_1EC7ECCC8;
    v87 = &qword_1D5622EE0;
    v88 = v85;
LABEL_19:
    sub_1D4E50004(v88, v86, v87);
    v102 = 1;
    v98 = v121;
    goto LABEL_20;
  }

  v89 = v85 + *(v70 + 20);
  v90 = v110;
  sub_1D4F39AB0(v89, v110, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_4_140();
  sub_1D5465040(v85, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_57(v90, 1, v92);
  if (v93)
  {
    v86 = &qword_1EC7EA7E0;
    v87 = &unk_1D5623AB0;
    v88 = v90;
    goto LABEL_19;
  }

  v94 = sub_1D560CD98();
  v95 = OUTLINED_FUNCTION_46_39(v94);
  type metadata accessor for SocialProfile(v95);
  v96 = v90;
  sub_1D5462E7C(&qword_1EDD57510);
  OUTLINED_FUNCTION_10_1();
  sub_1D5462E7C(v97);
  v98 = v121;
  v62 = v124;
  sub_1D5612368();
  v99 = v56;
  v56 = v115;
  sub_1D4E50004(v99, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_24_0();
  v101 = v96;
  v83 = v127;
  (*(v100 + 8))(v101, v92);
  v102 = 0;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v98, v102, 1, v119);
  sub_1D4E68940(v98, v39 + v120, &qword_1EC7EA778, &qword_1D5622E60);
  v128[3] = v35;
  v128[4] = sub_1D5462E7C(&qword_1EC7F4D58);
  __swift_allocate_boxed_opaque_existential_0(v128);
  sub_1D5464FEC();
  Playlist.Entry.Reaction.init(propertyProvider:)(v128, v122);

  OUTLINED_FUNCTION_24_0();
  (*(v103 + 8))(v83, v72);
  OUTLINED_FUNCTION_24_0();
  (*(v104 + 8))(v56, v50);
  sub_1D5465040(v62, type metadata accessor for LegacyModelCodablePlaylistEntryReaction);
  sub_1D5465040(v39, type metadata accessor for PlaylistEntryReactionPropertyProvider);
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.Reaction.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v117 = v0;
  v103 = v5;
  v104 = v6;
  v102 = v7;
  v113 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v112 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v109 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v107 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v106 = v21;
  OUTLINED_FUNCTION_70_0();
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v110 = v23;
  v111 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v108 = v25 - v24;
  v26 = OUTLINED_FUNCTION_70_0();
  v116 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction(v26);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v115 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v105 = v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_114();
  v99 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v101 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v98 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v100 = v43;
  v44 = OUTLINED_FUNCTION_70_0();
  v45 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(v44);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v114 = v48 - v47;
  v49 = OUTLINED_FUNCTION_70_0();
  v50 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(v49);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  if (qword_1EC7E8D50 != -1)
  {
    swift_once();
  }

  v52 = qword_1EC87C080;
  v53 = sub_1D560C328();
  v54 = sub_1D5462E7C(&qword_1EC7EF4A8);
  v55 = sub_1D5462E7C(&qword_1EC7EF4B0);
  v56 = v53;
  v57 = v55;
  OUTLINED_FUNCTION_44_41(v52, v56);
  v58 = Playlist.Entry.Reaction.value.getter();
  v59 = (v2 + *(v50 + 20));
  *v59 = v58;
  v59[1] = v60;
  if (qword_1EC7E8D60 != -1)
  {
    swift_once();
  }

  v61 = qword_1EC7EF458;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_44_41(v61, v62);
  OUTLINED_FUNCTION_57(v1, 1, v62);
  if (v63)
  {
    sub_1D4E50004(v1, &qword_1EC7EC450, &unk_1D5621060);
    v69 = 1;
    v66 = v100;
  }

  else
  {
    sub_1D5614828();
    OUTLINED_FUNCTION_18_84();
    sub_1D5462E7C(v64);
    v97[1] = v57;
    v97[0] = v1;
    v65 = v98;
    v97[2] = v54;
    sub_1D5467A88(v98);
    v66 = v100;
    v67 = v97[0];
    sub_1D560DA78();
    (*(v101 + 8))(v65, v99);
    OUTLINED_FUNCTION_24_0();
    (*(v68 + 8))(v67, v62);
    v69 = 0;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  __swift_storeEnumTagSinglePayload(v66, v69, 1, v70);
  if (qword_1EC7E8D68 != -1)
  {
    swift_once();
  }

  v71 = qword_1EC7EF460;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_44_41(v71, v72);
  OUTLINED_FUNCTION_5_1(v3);
  if (v63)
  {
    sub_1D4E50004(v3, &qword_1EC7EA778, &qword_1D5622E60);
    v76 = 1;
  }

  else
  {
    type metadata accessor for SocialProfile(0);
    sub_1D5462E7C(&qword_1EDD57510);
    OUTLINED_FUNCTION_10_1();
    sub_1D5462E7C(v73);
    v74 = v98;
    sub_1D4F1ABE8(v98);
    sub_1D560DA98();
    (*(v101 + 8))(v74, v99);
    OUTLINED_FUNCTION_24_0();
    (*(v75 + 8))(v3, v72);
    v76 = 0;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  __swift_storeEnumTagSinglePayload(v4, v76, 1, v77);
  v78 = v114;
  sub_1D4F39A1C(v66, v114, &qword_1EC7ECCC0, &unk_1D5623B30);
  sub_1D4F39A1C(v4, v78 + *(v45 + 20), &qword_1EC7EA7E0, &unk_1D5623AB0);
  v79 = v116;
  v81 = *v117;
  v80 = v117[1];
  OUTLINED_FUNCTION_23_70();
  v104 = v82;
  v83 = v105;
  sub_1D5464FEC();
  v84 = v79[6];
  v103 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships;
  sub_1D5464FEC();
  __swift_storeEnumTagSinglePayload(v83 + v84, 0, 1, v45);
  *v83 = v81;
  v83[1] = v80;
  *(v83 + v79[7]) = 1;
  *(v83 + v79[8]) = 1;
  type metadata accessor for Playlist.Entry.Reaction(0);

  v85 = v106;
  sub_1D5611A28();
  v86 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
  v87 = sub_1D5611C98();
  OUTLINED_FUNCTION_146_0(v107, v88, v89, v87);
  v90 = v108;
  sub_1D5612B38();
  v106 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction;
  sub_1D5464FEC();
  v107 = v2;
  sub_1D5611A98();
  v91 = sub_1D5611A88();
  v101 = v92;
  v102 = v91;
  v94 = v110;
  v93 = v111;
  v95 = v112;
  (*(v110 + 16))(v112, v90, v111);
  __swift_storeEnumTagSinglePayload(v95, 0, 1, v93);
  v100 = sub_1D5611A38();
  v99 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_22_71();
  sub_1D5462E7C(v96);
  sub_1D5610628();
  (*(v94 + 8))(v90, v93);
  sub_1D5465040(v83, v106);
  sub_1D5465040(v114, v103);
  sub_1D5465040(v107, v104);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5467A88@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976A78];
  v3 = sub_1D5613578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D5467B04()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D5467B58()
{
  result = qword_1EC7F6C08;
  if (!qword_1EC7F6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C08);
  }

  return result;
}

unint64_t sub_1D5467BAC()
{
  result = qword_1EC7F6C10;
  if (!qword_1EC7F6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C10);
  }

  return result;
}

uint64_t sub_1D5467C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5467CBC()
{
  result = qword_1EC7F6C40;
  if (!qword_1EC7F6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C40);
  }

  return result;
}

unint64_t sub_1D5467D14()
{
  result = qword_1EC7F6C48;
  if (!qword_1EC7F6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C48);
  }

  return result;
}

unint64_t sub_1D5467D6C()
{
  result = qword_1EC7F6C50;
  if (!qword_1EC7F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C50);
  }

  return result;
}

unint64_t sub_1D5467DC4()
{
  result = qword_1EC7F6C58;
  if (!qword_1EC7F6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6C60, &qword_1D5666BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C58);
  }

  return result;
}

unint64_t sub_1D5467E74()
{
  result = qword_1EC7F6C70;
  if (!qword_1EC7F6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C70);
  }

  return result;
}

unint64_t sub_1D5467ECC()
{
  result = qword_1EC7F6C78;
  if (!qword_1EC7F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6C78);
  }

  return result;
}

void sub_1D54681E4(uint64_t a1)
{
  type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D54683BC(319, &qword_1EC7F6CA0, type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7F6CA8, &type metadata for LegacyModelCodablePlaylistEntryReaction.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7F6CB0, &type metadata for LegacyModelCodablePlaylistEntryReaction.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D546830C(uint64_t a1)
{
  sub_1D54683BC(319, &qword_1EDD5CF48, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D54683BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5468438(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7F6CD8, &qword_1EC7ECCB8, &unk_1D5622ED0);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530C0, &qword_1EC7EA800, &unk_1D5622EC0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_1D546850C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntryReaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D54686B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5468794()
{
  result = qword_1EC7F6CE0;
  if (!qword_1EC7F6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CE0);
  }

  return result;
}

unint64_t sub_1D54687EC()
{
  result = qword_1EC7F6CE8;
  if (!qword_1EC7F6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CE8);
  }

  return result;
}

unint64_t sub_1D5468844()
{
  result = qword_1EC7F6CF0;
  if (!qword_1EC7F6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CF0);
  }

  return result;
}

unint64_t sub_1D546889C()
{
  result = qword_1EC7F6CF8;
  if (!qword_1EC7F6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6CF8);
  }

  return result;
}

unint64_t sub_1D54688F4()
{
  result = qword_1EC7F6D00;
  if (!qword_1EC7F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D00);
  }

  return result;
}

unint64_t sub_1D546894C()
{
  result = qword_1EC7F6D08;
  if (!qword_1EC7F6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D08);
  }

  return result;
}

unint64_t sub_1D54689A4()
{
  result = qword_1EC7F6D10;
  if (!qword_1EC7F6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D10);
  }

  return result;
}

unint64_t sub_1D54689FC()
{
  result = qword_1EC7F6D18;
  if (!qword_1EC7F6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D18);
  }

  return result;
}

unint64_t sub_1D5468A54()
{
  result = qword_1EC7F6D20;
  if (!qword_1EC7F6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D20);
  }

  return result;
}

unint64_t sub_1D5468AAC()
{
  result = qword_1EC7F6D28;
  if (!qword_1EC7F6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6D28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_39(uint64_t a1)
{
  *(v2 - 232) = v1;
  __swift_storeEnumTagSinglePayload(*(v2 - 288), 1, 1, a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_61_35()
{

  return type metadata accessor for LegacyModelCodablePlaylistEntryReaction(0);
}

uint64_t sub_1D5468BEC()
{
  v0 = sub_1D560F8F8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for UploadedAudioPropertyProvider(0);
  sub_1D4F43D5C(v27[1] + *(v21 + 28), v13, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v13, 1, v14);
  if (v22)
  {
    sub_1D4E7661C(v13, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    sub_1D560F908();
    (*(v2 + 104))(v6, *MEMORY[0x1E6975910], v0);
    OUTLINED_FUNCTION_61();
    v23 = sub_1D560F8E8();
    v24 = *(v2 + 8);
    v24(v6, v0);
    v24(v9, v0);
    if (v23)
    {
      v25 = sub_1D560F918();
      (*(v16 + 8))(v20, v14);
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      (*(v16 + 8))(v20, v14);
    }
  }

  return 0;
}

uint64_t sub_1D5468E98()
{
  type metadata accessor for UploadedAudioPropertyProvider(0);
  sub_1D560D768();
  if (!v0)
  {
    sub_1D560D628();
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D5468EF8()
{
  v1 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v27 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = *(type metadata accessor for UploadedAudioPropertyProvider(0) + 32);
  (*(v3 + 104))(v18, *MEMORY[0x1E6975D58], v1);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v1);
  v20 = *(v7 + 56);
  sub_1D4F43D5C(v0 + v19, v10, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F43D5C(v18, &v10[v20], &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(v10, 1, v1);
  if (!v22)
  {
    sub_1D4F43D5C(v10, v15, &qword_1EC7EC478, &unk_1D56299D0);
    OUTLINED_FUNCTION_57(&v10[v20], 1, v1);
    if (!v22)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v10[v20], v1);
      sub_1D52FCF44();
      OUTLINED_FUNCTION_61();
      v21 = sub_1D5614D18();
      v24 = *(v3 + 8);
      v24(v23, v1);
      sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
      v24(v15, v1);
      sub_1D4E7661C(v10, &qword_1EC7EC478, &unk_1D56299D0);
      return v21 & 1;
    }

    sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
    (*(v3 + 8))(v15, v1);
LABEL_9:
    sub_1D4E7661C(v10, &qword_1EC7EE730, &unk_1D562C598);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(&v10[v20], 1, v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1D4E7661C(v10, &qword_1EC7EC478, &unk_1D56299D0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D5469250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_2_180();
  OUTLINED_FUNCTION_9_92(*(v3 + 72));
  v4 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v0, 1, v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D8, &unk_1D5632160);
    v6 = 0;
  }

  else
  {
    v6 = sub_1D5614A58();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v0, v4);
  }

  return v6 & 1;
}

BOOL sub_1D5469340()
{
  v1 = v0;
  sub_1D5614A48();
  OUTLINED_FUNCTION_4();
  v34 = v3;
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v33 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = *(type metadata accessor for UploadedAudioPropertyProvider(0) + 72);
  sub_1D4F43D5C(v1 + v22, v21, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v21, 1, v7);
  if (v23)
  {
    goto LABEL_3;
  }

  v24 = sub_1D5614A58();
  v32 = *(v9 + 8);
  v32(v21, v7);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  sub_1D4F43D5C(v1 + v22, v18, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v18, 1, v7);
  if (v23)
  {
    v21 = v18;
LABEL_3:
    sub_1D4E7661C(v21, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v9 + 32))(v13, v18, v7);
  sub_1D5614A68();
  v26 = v33;
  v25 = v34;
  v27 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E6977490], v35);
  v28 = sub_1D5614A38();
  v29 = *(v25 + 8);
  v29(v26, v27);
  v30 = OUTLINED_FUNCTION_61();
  (v29)(v30);
  v32(v13, v7);
  return (v28 & 1) != 0;
}

uint64_t sub_1D5469648(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_2_180();
  sub_1D4F43D5C(v1 + *(v6 + 28), v2, &qword_1EC7EDB98, L"X\b\a");
  v7 = sub_1D560F928();
  v8 = OUTLINED_FUNCTION_57(v2, 1, v7);
  if (v9)
  {
    sub_1D4E7661C(v2, &qword_1EC7EDB98, L"X\b\a");
    v10 = 0;
  }

  else
  {
    v10 = a1(v8);
    OUTLINED_FUNCTION_24_0();
    v11 = OUTLINED_FUNCTION_61();
    v12(v11);
  }

  return v10 & 1;
}

uint64_t sub_1D5469754()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_2_180();
  OUTLINED_FUNCTION_9_92(*(v3 + 60));
  v4 = sub_1D5610CB8();
  OUTLINED_FUNCTION_57(v0, 1, v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D0, &unk_1D5632140);
    v6 = 0;
  }

  else
  {
    v6 = sub_1D5610CA8();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v0, v4);
  }

  return v6 & 1;
}

void MusicLibraryMapping.SectionedRequest.init(mappingSections:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_24_67();
  v98 = v11;
  v14 = _s10FrozenItemVMa(v10, v12, v11, v13);
  OUTLINED_FUNCTION_1_0();
  v91 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v97 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v80 - v19;
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  v80[2] = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_23_71();
  v94 = a3;
  v27 = type metadata accessor for MappingSectionWrapper(v25, a2, a3, v26);
  OUTLINED_FUNCTION_1_0();
  v90 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v86 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v92 = v80 - v32;
  OUTLINED_FUNCTION_1_0();
  v87 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12_95(v35, v36, v37, v38, v39, v40, v41, v42, v80[0]);
  v80[1] = v43;
  MEMORY[0x1EEE9AC00](v44);
  v95 = v80 - v45;
  *(a4 + 8) = 0;
  *a4 = a1;

  v93 = v27;
  v46 = sub_1D56151C8();
  v105 = v46;
  v99 = sub_1D56152D8();
  v96 = sub_1D56151C8();
  v104 = v96;

  v47 = sub_1D5615178();

  v103 = v47;
  v88 = a1;
  v89 = a2;
  if (v47 != sub_1D5615208())
  {
    v51 = v47;
    v80[0] = a4;
    v81 = *(v94 + 32);
    v82 = v94 + 32;
    v84 = v87 + 16;
    v80[5] = v90 + 16;
    v80[4] = v87 + 8;
    v96 = (v22 + 16);
    v52 = (v91 + 16);
    v53 = (v91 + 8);
    v80[3] = v90 + 8;
    v54 = v88;
    v55 = v89;
    v83 = v14;
    while (1)
    {
      v56 = v51;
      v57 = sub_1D56151E8();
      v91 = v56;
      sub_1D56151A8();
      v90 = v84 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if (v57)
      {
        OUTLINED_FUNCTION_43_3();
        v60 = v54 + v58 + *(v59 + 72) * v91;
        v91 = *(v59 + 16);
        (v91)(v95, v60, v55);
        v61 = v83;
      }

      else
      {
        sub_1D5615BB8();
        OUTLINED_FUNCTION_22_72();
        v61 = v83;
        if (!v75)
        {
LABEL_20:
          __break(1u);
          return;
        }

        v102 = v78;
        v91 = *v84;
        (v91)(v95, &v102, v55);
        swift_unknownObjectRelease();
      }

      sub_1D56152C8();
      (v91)(v85, v95, v55);
      v62 = v92;
      v63 = OUTLINED_FUNCTION_71_15();
      sub_1D5038760(v63, v64, v65);
      OUTLINED_FUNCTION_195();
      v66(v86, v62, v93);
      sub_1D56152D8();
      sub_1D5615218();
      v102 = sub_1D56151C8();
      v67 = v81(v55, v94);
      v68 = OUTLINED_FUNCTION_7_127();
      v69(v68, v55);

      v70 = sub_1D5615178();

      v101 = v70;
      v71 = sub_1D5615208();
      while (v70 != v71)
      {
        v72 = sub_1D56151E8();
        sub_1D56151A8();
        if (v72)
        {
          OUTLINED_FUNCTION_43_3();
          (*(v22 + 16))(v4, v67 + v73 + *(v22 + 72) * v70, AssociatedTypeWitness);
        }

        else
        {
          sub_1D5615BB8();
          OUTLINED_FUNCTION_22_72();
          if (!v75)
          {
            __break(1u);
            goto LABEL_20;
          }

          v100 = v74;
          (*v96)(v4, &v100, AssociatedTypeWitness);
          swift_unknownObjectRelease();
        }

        sub_1D56152C8();
        sub_1D5015F48(v4, AssociatedTypeWitness, v98, v20);
        (*v52)(v97, v20, v61);
        sub_1D5615218();
        (*v53)(v20, v61);
        v71 = sub_1D5615208();
        v70 = v101;
      }

      v101 = v102;
      sub_1D56152D8();
      sub_1D5615218();
      OUTLINED_FUNCTION_195();
      v76(v92, v93);
      v54 = v88;
      v55 = v89;
      v77 = sub_1D5615208();
      v51 = v103;
      if (v103 == v77)
      {

        v50 = v104;
        v46 = v105;
        a4 = v80[0];
        v49 = v94;
        goto LABEL_19;
      }
    }
  }

  v49 = v94;
  v50 = v96;
LABEL_19:
  *(a4 + 16) = v46;
  v103 = MEMORY[0x1E69E7CC0];
  v79 = type metadata accessor for MusicLibraryMapping.SectionedRequest(0, v89, v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6D30, &qword_1D5667500);
  sub_1D5612878();
  *(a4 + *(v79 + 48)) = v50;
}

void MusicLibraryMapping.SectionedRequest.init<>(mappingSections:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = _s10FrozenItemVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  OUTLINED_FUNCTION_1_0();
  v100 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v102 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v86 - v18;
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v86[2] = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_23_71();
  v93 = a3;
  v96 = _s10FrozenItemVMa(v24, a2, a3, v25);
  OUTLINED_FUNCTION_1_0();
  v94 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v95 = v86 - v28;
  OUTLINED_FUNCTION_1_0();
  v30 = v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12_95(v32, v33, v34, v35, v36, v37, v38, v39, v86[0]);
  v86[1] = v40;
  MEMORY[0x1EEE9AC00](v41);
  v97 = v13;
  v98 = v86 - v42;
  *(a5 + 8) = 0;
  *a5 = a1;
  v43 = sub_1D56152D8();

  v104 = v43;
  v110 = sub_1D56151C8();

  v44 = sub_1D5615178();

  v109 = v44;
  v99 = a2;
  if (v44 != sub_1D5615208())
  {
    v86[0] = a5;
    v91 = a4;
    v87 = *(a4 + 32);
    v88 = a4 + 32;
    v90 = v30 + 16;
    v86[6] = v94 + 16;
    v86[3] = v30;
    v86[5] = v30 + 8;
    v101 = (v21 + 16);
    v47 = (v100 + 8);
    v86[4] = v94 + 8;
    v100 = MEMORY[0x1E69E7CC0];
    v48 = v99;
    v49 = a1;
    v89 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_20_5();
      v50 = sub_1D56151E8();
      sub_1D56151A8();
      v94 = v90 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if (v50)
      {
        OUTLINED_FUNCTION_43_3();
        v53 = v49 + v51 + *(v52 + 72) * v44;
        v54 = *(v52 + 16);
        v55 = v98;
        v54(v98, v53, v48);
      }

      else
      {
        sub_1D5615BB8();
        OUTLINED_FUNCTION_22_72();
        if (!v76)
        {
LABEL_24:
          __break(1u);
          return;
        }

        *&v107 = v79;
        v54 = *v90;
        v55 = v98;
        (*v90)(v98, &v107, v48);
        swift_unknownObjectRelease();
      }

      sub_1D56152C8();
      v54(v92, v55, v48);
      v56 = OUTLINED_FUNCTION_20_5();
      sub_1D5015F48(v56, v57, v93, v58);
      v108 = v96;
      __swift_allocate_boxed_opaque_existential_0(&v107);
      OUTLINED_FUNCTION_195();
      v59();
      v60 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F02E2C();
        v60 = v80;
      }

      v62 = *(v60 + 16);
      v61 = *(v60 + 24);
      v100 = v60;
      if (v62 >= v61 >> 1)
      {
        sub_1D4F02E2C();
        v100 = v81;
      }

      v63 = v100;
      *(v100 + 16) = v62 + 1;
      sub_1D4E519A8(&v107, (v63 + 32 * v62 + 32));
      *&v107 = sub_1D56151C8();
      v64 = v99;
      v65 = v87(v99, v91);
      v66 = OUTLINED_FUNCTION_7_127();
      v67 = v97;
      v68(v66, v64);

      v69 = sub_1D5615178();

      v106 = v69;
      OUTLINED_FUNCTION_71_15();
      v70 = sub_1D5615208();
      while (v69 != v70)
      {
        OUTLINED_FUNCTION_71_15();
        v71 = sub_1D56151E8();
        sub_1D56151A8();
        if (v71)
        {
          OUTLINED_FUNCTION_43_3();
          (*(v21 + 16))(v5, v65 + v72 + *(v21 + 72) * v69, AssociatedTypeWitness);
        }

        else
        {
          sub_1D5615BB8();
          OUTLINED_FUNCTION_22_72();
          if (!v76)
          {
            __break(1u);
            goto LABEL_24;
          }

          v105 = v75;
          (*v101)(v5, &v105, AssociatedTypeWitness);
          swift_unknownObjectRelease();
        }

        sub_1D56152C8();
        sub_1D5015F48(v5, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
        v73 = OUTLINED_FUNCTION_59_2();
        v74(v73);
        sub_1D5615218();
        (*v47)(v19, v67);
        OUTLINED_FUNCTION_71_15();
        v70 = sub_1D5615208();
        v69 = v106;
      }

      v106 = v107;
      sub_1D56152D8();
      sub_1D5615218();
      OUTLINED_FUNCTION_195();
      v77(v95, v96);
      v49 = v89;
      v48 = v99;
      v78 = sub_1D5615208();
      v44 = v109;
      if (v109 == v78)
      {

        a5 = v86[0];
        a4 = v91;
        v46 = v100;
        goto LABEL_23;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_23:
  type metadata accessor for MappingSectionWrapper(0, v99, a4, v45);
  *(a5 + 16) = sub_1D56151C8();
  *&v107 = v46;
  v82 = OUTLINED_FUNCTION_4_32();
  v85 = type metadata accessor for MusicLibraryMapping.SectionedRequest(v82, v83, a4, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6D30, &qword_1D5667500);
  sub_1D5612878();
  *(a5 + *(v85 + 48)) = v110;
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D546A8F0, 0, 0);
}

uint64_t sub_1D546A8F0()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1D546A99C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);

  return sub_1D546AAF4(v4, v0 + 16, v3, v1);
}

uint64_t sub_1D546A99C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v2 + 88) = v0;

  sub_1D4E6C9CC(v2 + 16, &qword_1EC7F0FE8, &qword_1D5652AB0);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D546AADC, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D546AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[44] = a3;
  v5[45] = v4;
  v5[42] = a1;
  v5[43] = a2;
  v6 = *(a3 + 16);
  v5[46] = v6;
  v7 = *(a3 + 24);
  v5[47] = v7;
  v8 = type metadata accessor for MappingSectionWrapper(255, v6, v7, a4);
  v5[48] = v8;
  v9 = sub_1D56158D8();
  v5[49] = v9;
  v5[50] = *(v9 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = *(v6 - 8);
  v5[53] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibraryMapping.MappedSection(0, v6, v7, v10);
  v5[54] = v11;
  v5[55] = *(v11 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[58] = AssociatedTypeWitness;
  v5[59] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[60] = AssociatedConformanceWitness;
  v15 = type metadata accessor for MusicLibraryMapping.MappedItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v5[61] = v15;
  v5[62] = *(v15 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v5[65] = v16;
  v17 = sub_1D56158D8();
  v5[66] = v17;
  v5[67] = *(v17 - 8);
  v5[68] = swift_task_alloc();
  swift_getAssociatedConformanceWitness();
  v18 = sub_1D560CAB8();
  v5[69] = v18;
  v5[70] = *(v18 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = *(v16 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v20 = _s10FrozenItemVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v5[75] = v20;
  v21 = *(v20 - 8);
  v5[76] = v21;
  v5[77] = *(v21 + 64);
  v5[78] = swift_task_alloc();
  v5[79] = *(v8 - 8);
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_getTupleTypeMetadata2();
  v22 = sub_1D56158D8();
  v5[84] = v22;
  v5[85] = *(v22 - 8);
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D546B080, 0, 0);
}

void sub_1D546B080()
{
  v1 = dynamic_cast_existential_1_conditional(v0[65], v0[65], MEMORY[0x1E6976A08]);
  v0[89] = v1;
  v0[90] = v2;
  if (!v1)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_139();
    v125 = v62;
    v126 = v63;
    v64 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v64);

    OUTLINED_FUNCTION_10_115();
    v65 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v65);

    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568E7F0);
    v66 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v66);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v67 = v125;
    v68 = v126;
LABEL_26:
    OUTLINED_FUNCTION_5_85("Fatal error", v8, v9, v67, v68, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
    OUTLINED_FUNCTION_56();
    return;
  }

  v3 = dynamic_cast_existential_1_conditional(v0[65], v0[65], MEMORY[0x1E6975230]);
  v0[91] = v3;
  v0[92] = v4;
  if (!v3)
  {
    sub_1D5615B68();
    OUTLINED_FUNCTION_9_119();
    v69 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v69);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    v67 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_26;
  }

  v5 = v0[45];
  v108 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  v0[93] = v108;
  v107 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  v0[94] = v107;
  v6 = *(v5 + 16);
  v7 = sub_1D5615208();
  OUTLINED_FUNCTION_4_32();
  sub_1D56152D8();
  if (v7 != sub_1D5615208())
  {
    v67 = 0xD0000000000000B5;
    v68 = 0x80000001D568E830;
    goto LABEL_26;
  }

  v10 = objc_opt_self();
  v11 = [v10 sharedCloudController];
  v12 = [v11 isUpdateInProgress];

  if (!v12 || (v13 = [v10 sharedCloudController], v14 = objc_msgSend(v13, sel_isInitialImport), v13, !v14))
  {
    v70 = v0[85];
    v122 = v0[83];
    v71 = v0[79];
    v0[31] = v6;
    v72 = sub_1D56152D8();
    OUTLINED_FUNCTION_0_1();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1DA6EAE20](v72, WitnessTable);
    v0[32] = v0[30];
    OUTLINED_FUNCTION_4_32();
    sub_1D5615E58();
    sub_1D5615E28();
    v74 = (v70 + 32);
    v75 = (v71 + 32);
    OUTLINED_FUNCTION_4_32();
    sub_1D5615E48();
    while (1)
    {
      v76 = v0[87];
      v77 = v0[86];
      v78 = v0[84];
      v79 = v0[83];
      sub_1D5615E38();
      (*v74)(v77, v76, v78);
      if (__swift_getEnumTagSinglePayload(v77, 1, v79) == 1)
      {
        break;
      }

      v80 = v0[86];
      v81 = v0[81];
      v82 = v0[47];
      v84 = v0[45];
      v83 = v0[46];
      v85 = v0[43];
      v86 = *v80;
      v87 = (*v75)(v81, v80 + *(v122 + 48), v0[48]);
      v88 = MEMORY[0x1DA6EC3C0](v87);
      sub_1D546C788(v108, v81, v107, v84, v86, v85, v83, v82);
      objc_autoreleasePoolPop(v88);
      v89 = OUTLINED_FUNCTION_15_87();
      v90(v89);
    }

    sub_1D54724B4();
    v91 = [objc_opt_self() defaultUnpersonalizedRequest];
    v92 = sub_1D546CC1C(v91, v108, v107);
    v0[95] = v92;
    OUTLINED_FUNCTION_4_32();
    v93 = sub_1D56151C8();
    v0[96] = v93;
    v0[33] = v93;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1D546BD1C;
    v94 = swift_continuation_init();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F6D50, qword_1D5667538);
    OUTLINED_FUNCTION_34_2(v95);
    v0[11] = 1107296256;
    v0[12] = sub_1D5472870;
    v0[13] = &block_descriptor_34_0;
    v0[14] = v94;
    [v92 performWithCompletionHandler_];
    OUTLINED_FUNCTION_56();

    goto _swift_continuation_await;
  }

  v106 = v0[83];
  v15 = v0[79];
  v100 = v0[77];
  v16 = v0[76];
  v17 = v0[72];
  v18 = v0[62];
  v19 = v0[55];
  v119 = v0[52];
  v127 = sub_1D56151C8();
  v0[38] = v6;
  OUTLINED_FUNCTION_4_32();
  v20 = sub_1D56152D8();
  OUTLINED_FUNCTION_0_1();
  v21 = swift_getWitnessTable();
  MEMORY[0x1DA6EAE20](v20, v21);
  v0[39] = v0[37];
  OUTLINED_FUNCTION_2_59();
  sub_1D5615E58();
  sub_1D5615E28();
  v105 = (v15 + 32);
  v121 = (v16 + 16);
  v114 = v16;
  v112 = (v17 + 16);
  v113 = (v17 + 32);
  v110 = (v18 + 8);
  v111 = (v18 + 16);
  v109 = (v17 + 8);
  v103 = (v19 + 16);
  v104 = (v119 + 16);
  v101 = (v15 + 8);
  v102 = (v19 + 8);
  OUTLINED_FUNCTION_2_59();
  sub_1D5615E48();
  v22 = 0;
  v120 = 0;
  while (1)
  {
    v23 = v0[88];
    v24 = v0[83];
    sub_1D5615E38();
    v25 = OUTLINED_FUNCTION_15_87();
    v26(v25);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      v97 = v0[42];

      sub_1D52B33FC(v127, v22, 0, v97);
      OUTLINED_FUNCTION_3_182();

      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X1, X16 }
    }

    (*v105)(v0[82], v0[88] + *(v106 + 48), v0[48]);
    v27 = sub_1D56151C8();
    v128 = v27;
    sub_1D5615328();

    v28 = sub_1D5615178();

    v124 = v28;
    if (v28 != sub_1D5615208())
    {
      break;
    }

    v117 = v27;
LABEL_22:
    v55 = v0[82];
    v57 = v0[56];
    v56 = v0[57];
    v59 = v0[53];
    v58 = v0[54];
    v60 = v0[47];
    v123 = v0[48];
    v61 = v0[46];

    (*v104)(v59, v55, v61);
    sub_1D500EE5C(v59, v117, v61, v60, v56);
    (*v103)(v57, v56, v58);
    OUTLINED_FUNCTION_24_67();
    sub_1D56152D8();
    sub_1D5615218();
    (*v102)(v56, v58);
    (*v101)(v55, v123);
  }

  v29 = v114;
  while (1)
  {
    v30 = sub_1D56151E8();
    sub_1D56151A8();
    if (v30)
    {
      OUTLINED_FUNCTION_43_3();
      (*(v29 + 16))();
    }

    else
    {
      v51 = sub_1D5615BB8();
      if (v100 != 8)
      {
        goto LABEL_37;
      }

      v52 = v51;
      v53 = v0[78];
      v54 = v0[75];
      v0[41] = v52;
      (*v121)(v53, (v0 + 41), v54);
      swift_unknownObjectRelease();
    }

    v31 = v0[75];
    sub_1D56152C8();
    OUTLINED_FUNCTION_2_59();
    v35 = sub_1D5016040(v32, v33, v34);
    v36 = OUTLINED_FUNCTION_7_127();
    v37(v36, v31);
    if (!v35)
    {
      goto LABEL_18;
    }

    v38 = v0[68];
    v39 = v0[65];
    sub_1D560CAC8();
    sub_1D560CAA8();
    v40 = OUTLINED_FUNCTION_15_87();
    v41(v40);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      break;
    }

    v42 = v0[66];

    v43 = OUTLINED_FUNCTION_7_127();
    v44(v43, v42);
LABEL_18:
    if (v124 == sub_1D5615208())
    {
      v117 = v128;
      goto LABEL_22;
    }
  }

  v45 = v0[74];
  v46 = v0[73];
  v47 = v0[65];
  v48 = v0[64];
  v49 = v0[61];
  v116 = v0[60];
  v118 = v0[63];
  v50 = v0[59];
  v115 = v0[58];
  (*v113)(v45, v0[68], v47);
  (*v112)(v46, v45, v47);
  sub_1D560CAD8();
  sub_1D52FB70C(v46, v50, v115, v116, v48);
  (*v111)(v118, v48, v49);
  OUTLINED_FUNCTION_4_32();
  sub_1D56152D8();
  sub_1D5615218();

  (*v110)(v48, v49);
  v51 = (*v109)(v45, v47);
  v22 = v120 + 1;
  if (!__OFADD__(v120, 1))
  {
    ++v120;
    v29 = v114;
    goto LABEL_18;
  }

  __break(1u);
LABEL_37:
  __break(1u);
_swift_continuation_await:
  MEMORY[0x1EEE6DEC8](v51);
}

uint64_t sub_1D546BD1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 776) = v4;
  if (v4)
  {

    v5 = sub_1D546C468;
  }

  else
  {
    v5 = sub_1D546BE2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D546BE2C()
{
  v53 = v0;
  v42 = v0[34];
  v1 = [v42 results];
  v2 = [v1 numberOfSections];

  v43 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = v0[55];
    v41 = (v4 + 16);
    v40 = (v4 + 8);
    while (v43 != v3)
    {
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v46 = *(v0 + 23);
      v49 = *(v0 + 91);
      v48 = *(v0 + 89);
      v0[35] = sub_1D56151C8();
      v5 = [v42 results];
      v6 = [v5 sectionAtIndex_];

      v7 = [v42 results];
      v8 = swift_allocObject();
      *(v8 + 16) = v46;
      *(v8 + 32) = v3;
      *(v8 + 40) = v42;
      *(v8 + 48) = v49;
      *(v8 + 64) = v48;
      *(v8 + 80) = v0 + 35;
      v9 = v42;
      v10 = OUTLINED_FUNCTION_20_5();
      sub_1D4EA7420(v10, v11);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1D5472814;
      *(v12 + 24) = v8;
      v0[22] = sub_1D5472874;
      v0[23] = v12;
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D546E24C;
      v0[21] = &block_descriptor_44;
      v13 = _Block_copy(v0 + 18);

      [v7 enumerateItemIdentifiersInSectionAtIndex:v3 usingBlock:v13];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        goto LABEL_13;
      }

      v0[36] = v6;
      swift_unknownObjectRetain();
      v14 = swift_dynamicCast();
      if (!v14)
      {
        v38 = OUTLINED_FUNCTION_32_58(v14, v15, v16, v0[48]);
        v39(v38);
        sub_1D5615E08();
        return;
      }

      v17 = v0[80];
      v18 = v0[79];
      v19 = v0[57];
      v45 = v0[56];
      v50 = v3;
      v20 = v0[53];
      v21 = v0[54];
      v22 = v0[51];
      v23 = v0[48];
      v44 = v0[47];
      v24 = v0[46];
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
      (*(v18 + 32))(v17, v22, v23);
      v25 = OUTLINED_FUNCTION_7_127();
      v26(v25, v17, v24);
      sub_1D500EE5C(v20, v0[35], v24, v44, v19);
      (*v41)(v45, v19, v21);
      OUTLINED_FUNCTION_24_67();
      sub_1D56152D8();

      OUTLINED_FUNCTION_59_2();
      sub_1D5615218();
      swift_unknownObjectRelease();
      (*v40)(v19, v21);
      (*(v18 + 8))(v17, v23);

      v3 = v50 + 1;
    }

    v27 = v0[95];
    v28 = v0[94];
    v29 = v0[93];
    v30 = v0[42];
    v47 = v0[33];
    v31 = [v42 results];

    v32 = [v31 totalItemCount];
    sub_1D52B33FC(v47, v32, 1, v51);
    v33 = OUTLINED_FUNCTION_20_5();
    sub_1D4EA7420(v33, v34);
    v35 = v51[1];
    v36 = v52;
    *v30 = v51[0];
    *(v30 + 8) = v35;
    *(v30 + 16) = v36;
    OUTLINED_FUNCTION_3_182();

    OUTLINED_FUNCTION_22_1();

    v37();
  }
}

uint64_t sub_1D546C468(uint64_t a1)
{
  v2 = v1[95];
  v3 = v1[94];
  v4 = v1[93];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>(revisionID:requester:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D546C69C;
  OUTLINED_FUNCTION_2_59();

  return sub_1D546AAF4(v2, v3, v4, v5);
}

uint64_t sub_1D546C69C()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_1D546C788(void *a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(char *, uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a6;
  v32 = a5;
  v38 = a3;
  v39 = a4;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = _s10FrozenItemVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v33 = &v31 - v20;
  type metadata accessor for MappingSectionWrapper(0, a7, a8, v21);
  [v37 appendSection_];
  swift_unknownObjectRelease();
  [v38 appendSection_];
  swift_unknownObjectRelease();
  v35 = a7;
  v36 = a8;
  type metadata accessor for MusicLibraryMapping.SectionedRequest(0, a7, a8, v22);
  sub_1D56152D8();
  sub_1D5615328();
  v23 = v40;

  v24 = sub_1D5615178();

  v41 = v24;
  v32 = (v16 + 16);
  while (1)
  {
    v25 = sub_1D5615208();
    v26 = v41;
    if (v41 == v25)
    {

      return;
    }

    v27 = sub_1D56151E8();
    sub_1D56151A8();
    if (v27)
    {
      v28 = v33;
      (*(v16 + 16))(v33, v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v15);
      goto LABEL_5;
    }

    v30 = sub_1D5615BB8();
    if (v31 != 8)
    {
      break;
    }

    v40 = v30;
    v28 = v33;
    (*v32)(v33, &v40, v15);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1D56152C8();
    v29 = (*(v16 + 32))(v19, v28, v15);
    v26 = MEMORY[0x1DA6EC3C0](v29);
    sub_1D546CB14(v19, v39, v34, v38, v37, v35, v36);
    if (v9)
    {
      goto LABEL_11;
    }

    v9 = 0;
    objc_autoreleasePoolPop(v26);
    (*(v16 + 8))(v19, v15);
  }

  __break(1u);
LABEL_11:
  objc_autoreleasePoolPop(v26);
  __break(1u);
}

void sub_1D546CB14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = _s10FrozenItemVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = sub_1D5016040(v9, a3, v13);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D55F45E8();
    [a4 appendItem_];
    [a5 appendItem_];
  }
}

id sub_1D546CC1C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnpersonalizedRequest:a1 unpersonalizedContentDescriptors:a2 representedObjects:a3];

  return v6;
}

uint64_t sub_1D546CC84(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v152 = a8;
  v163 = a7;
  v154 = a6;
  v146 = a2;
  v172 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v167 = &v128 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v170 = type metadata accessor for MusicLibraryMapping.MappedItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v168 = *(v170 - 8);
  v17 = MEMORY[0x1EEE9AC00](v170);
  v164 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v128 - v19;
  v20 = sub_1D5613158();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v151 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1D5613558();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v142 = &v128 - v24;
  v25 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v141 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1D560D9A8();
  v137 = *(v138 - 8);
  v27 = MEMORY[0x1EEE9AC00](v138);
  v144 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v140 = &v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v135 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v134 = &v128 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v162 = &v128 - v35;
  v36 = sub_1D560D838();
  v179 = *(v36 - 8);
  v180 = v36;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v157 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v145 = &v128 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v133 = &v128 - v41;
  v42 = sub_1D560D9E8();
  v177 = *(v42 - 8);
  v178 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v176 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = swift_getAssociatedTypeWitness();
  v161 = sub_1D56158D8();
  v175 = *(v161 - 8);
  v45 = MEMORY[0x1EEE9AC00](v161);
  v143 = &v128 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v139 = &v128 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v132 = &v128 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v128 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v182 = &v128 - v54;
  v158 = sub_1D560CB48();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v171 = &v128 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = AssociatedConformanceWitness;
  v56 = swift_getAssociatedConformanceWitness();
  v57 = sub_1D560CAB8();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v128 - v60;
  v181 = *(v44 - 8);
  v62 = MEMORY[0x1EEE9AC00](v59);
  v159 = &v128 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v131 = &v128 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v160 = &v128 - v66;
  v67 = sub_1D560C4A8();
  v173 = *(v67 - 8);
  v174 = v67;
  v68 = MEMORY[0x1EEE9AC00](v67);
  v136 = &v128 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v128 - v70;
  sub_1D560C498();
  v147 = a5;
  v72 = [a5 representedObjectResults];
  v172 = v71;
  v73 = sub_1D560C478();
  v74 = [v72 itemAtIndexPath_];

  v169 = AssociatedTypeWitness;
  v153 = v56;
  sub_1D560CAE8();
  v75 = swift_dynamicCastClass();
  if (!v75)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v155 = v75;
  sub_1D560CAC8();
  v76 = (*(v58 + 88))(v61, v57);
  if (v76 == *MEMORY[0x1E6974C60])
  {
    v130 = v74;
    (*(v58 + 96))(v61, v57);
    v77 = v158;
    v78 = v161;
    v79 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v156 + 32))(v171, v61, v77);
    v80 = v175;
    v81 = &v61[v79];
    v82 = v182;
    (*(v175 + 32))(v182, v81, v78);
    v83 = *(v80 + 16);
    v83(v53, v82, v78);
    if (__swift_getEnumTagSinglePayload(v53, 1, v44) == 1)
    {
      (*(v80 + 8))(v53, v78);
      v84 = v181;
      v85 = v134;
      v86 = v132;
    }

    else
    {
      v84 = v181;
      v89 = v131;
      (*(v181 + 32))(v131, v53, v44);
      v90 = v133;
      sub_1D560EC98();
      v91 = sub_1D560D7E8();
      (*(v179 + 8))(v90, v180);
      (*(v84 + 8))(v89, v44);
      v85 = v134;
      v86 = v132;
      if ((v91 & 1) == 0)
      {
        v92 = MEMORY[0x1E6974FD0];
        goto LABEL_10;
      }
    }

    v92 = MEMORY[0x1E6974FD8];
LABEL_10:
    (*(v177 + 104))(v176, *v92, v178);
    v83(v86, v182, v78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v44);
    v94 = v162;
    if (EnumTagSinglePayload == 1)
    {
      (*(v175 + 8))(v86, v78);
      v95 = v138;
      __swift_storeEnumTagSinglePayload(v85, 1, 1, v138);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v85, 1, v95) != 1)
      {
        sub_1D4E6C9CC(v85, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v96 = v133;
      sub_1D560EC98();
      (*(v84 + 8))(v86, v44);
      sub_1D560D828();
      (*(v179 + 8))(v96, v180);
      v95 = v138;
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v138);
      (*(v137 + 32))(v94, v85, v95);
      __swift_storeEnumTagSinglePayload(v94, 0, 1, v95);
    }

    v97 = v94;
    v98 = v135;
    sub_1D547279C(v97, v135);
    v99 = __swift_getEnumTagSinglePayload(v98, 1, v95);
    v100 = v140;
    v129 = v83;
    if (v99 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v98, 1, v95) != 1)
      {
        sub_1D4E6C9CC(v98, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v137 + 32))(v140, v98, v95);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v101 = sub_1D560DB08();
    v102 = *(v101 - 8);
    v103 = *(v102 + 72);
    v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1D5621D90;
    v106 = v105 + v104;
    v107 = *(v102 + 104);
    v107(v106, *MEMORY[0x1E6975040], v101);
    v107(v106 + v103, *MEMORY[0x1E6975030], v101);
    v108 = v141;
    sub_1D560E718();
    v109 = v142;
    v110 = v178;
    (*(v177 + 16))(v142, v176, v178);
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v110);
    v111 = swift_unknownObjectRetain();
    v112 = v145;
    sub_1D4F40E88(v111, v100, v108, v109, v145);
    (*(v179 + 16))(v157, v112, v180);
    (*(v173 + 16))(v136, v172, v174);
    v113 = [v147 results];
    v114 = [v113 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v114;
    v115 = v139;
    v116 = v161;
    v129(v139, v182, v161);
    if (__swift_getEnumTagSinglePayload(v115, 1, v44) == 1)
    {
      (*(v175 + 8))(v115, v116);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
    }

    else
    {
      *(&v185 + 1) = v44;
      v186 = v153;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v184);
      (*(v181 + 32))(boxed_opaque_existential_0, v115, v44);
    }

    sub_1D560E358();
    (*(v148 + 104))(v150, *MEMORY[0x1E6976A50], v149);
    v118 = sub_1D5613568();
    swift_allocObject();
    v119 = sub_1D5613538();
    v183[3] = v118;
    v183[4] = MEMORY[0x1E6976A68];
    v183[0] = v119;

    v120 = v171;
    sub_1D560CB38();
    *(&v185 + 1) = v152;
    v186 = a9;
    __swift_allocate_boxed_opaque_existential_0(&v184);
    sub_1D56132D8();
    sub_1D4E628D4(&v184, v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v121 = v143;
    if (swift_dynamicCast())
    {

      (*(v179 + 8))(v112, v180);
      sub_1D4E6C9CC(v162, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v177 + 8))(v176, v178);
      (*(v175 + 8))(v182, v116);
      (*(v156 + 8))(v120, v158);
      __swift_storeEnumTagSinglePayload(v121, 0, 1, v44);
      v87 = v181;
      v88 = v160;
      (*(v181 + 32))(v160, v121, v44);
      __swift_destroy_boxed_opaque_existential_1(&v184);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v121, 1, 1, v44);
    (*(v175 + 8))(v121, v116);
    goto LABEL_27;
  }

  if (v76 == *MEMORY[0x1E6974C58])
  {
    (*(v58 + 96))(v61, v57);
    v87 = v181;
    v88 = v160;
    (*(v181 + 32))(v160, v61, v44);
LABEL_23:
    v122 = v159;
    (*(v87 + 16))(v159, v88, v44);
    v123 = v167;
    sub_1D560CAD8();
    v124 = v166;
    sub_1D52FB70C(v122, v123, v169, v165, v166);
    v125 = v168;
    v126 = v170;
    (*(v168 + 16))(v164, v124, v170);
    sub_1D56152D8();
    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v125 + 8))(v124, v126);
    (*(v87 + 8))(v88, v44);
    return (*(v173 + 8))(v172, v174);
  }

LABEL_27:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D546E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t MusicLibraryMapping.SectionedRequest.response<>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[56] = a3;
  v4[57] = v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[58] = *(a2 + 24);
  v4[59] = *(a2 + 16);
  v4[60] = swift_getAssociatedTypeWitness();
  v4[61] = swift_getAssociatedConformanceWitness();
  v5 = OUTLINED_FUNCTION_24_67();
  v9 = _s10FrozenItemVMa(v5, v6, v7, v8);
  v4[62] = v9;
  v10 = *(v9 - 8);
  v4[63] = v10;
  v4[64] = *(v10 + 64);
  v4[65] = swift_task_alloc();
  OUTLINED_FUNCTION_2_59();
  v15 = _s10FrozenItemVMa(v11, v12, v13, v14);
  v4[66] = v15;
  v16 = sub_1D56158D8();
  v4[67] = v16;
  v4[68] = *(v16 - 8);
  v4[69] = swift_task_alloc();
  v4[70] = *(v15 - 8);
  v4[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D546E4BC, 0, 0);
}

uint64_t sub_1D546E4BC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness, AssociatedTypeWitness, MEMORY[0x1E6976A08]);
  *(v0 + 576) = v2;
  *(v0 + 584) = v3;
  if (!v2)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_139();
    v45 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v45);

    OUTLINED_FUNCTION_10_115();
    v46 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v46);

    OUTLINED_FUNCTION_14_89();
    MEMORY[0x1DA6EAC70](v47 | 4, v48 | 0x8000000000000000);
    v49 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v49);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85("Fatal error", v13, v14, v50, v51, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
  }

  v4 = swift_getAssociatedTypeWitness();
  v5 = dynamic_cast_existential_1_conditional(v4, v4, MEMORY[0x1E6976A08]);
  *(v0 + 592) = v5;
  *(v0 + 600) = v6;
  if (!v5)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();

    v52 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v52);

    OUTLINED_FUNCTION_10_115();
    v53 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v53);

    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D568E7F0);
    v54 = OUTLINED_FUNCTION_31_53();
    MEMORY[0x1DA6EAC70](v54);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85("Fatal error", v13, v14, v50, v51, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
  }

  v7 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness, AssociatedTypeWitness, MEMORY[0x1E6975230]);
  *(v0 + 608) = v7;
  *(v0 + 616) = v8;
  if (!v7)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();
    OUTLINED_FUNCTION_9_119();
    v55 = OUTLINED_FUNCTION_29_57();
    MEMORY[0x1DA6EAC70](v55);

    OUTLINED_FUNCTION_14_89();
    MEMORY[0x1DA6EAC70](v56 + 28, v57 | 0x8000000000000000);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85("Fatal error", v13, v14, v50, v51, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
  }

  v9 = dynamic_cast_existential_1_conditional(v4, v4, MEMORY[0x1E6975230]);
  *(v0 + 624) = v9;
  *(v0 + 632) = v11;
  if (!v9)
  {
    OUTLINED_FUNCTION_4_141();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568E810);
    v58 = OUTLINED_FUNCTION_30_64();
    MEMORY[0x1DA6EAC70](v58);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    OUTLINED_FUNCTION_27_69();
    return OUTLINED_FUNCTION_5_85("Fatal error", v13, v14, v50, v51, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
  }

  type metadata accessor for MusicLibraryMapping.MappedSection(0, *(v0 + 472), *(v0 + 464), v10);
  *(v0 + 384) = sub_1D56151C8();
  v75 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  *(v0 + 640) = v75;
  v74 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  *(v0 + 648) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6D40, &qword_1D5667530);
  sub_1D5612858();
  v12 = *(*(v0 + 392) + 16);

  sub_1D56152D8();
  if (v12 != sub_1D5615208())
  {
    v60 = "The section type ";
    v50 = 0xD0000000000000B5;
LABEL_36:
    v51 = v60 | 0x8000000000000000;
    return OUTLINED_FUNCTION_5_85("Fatal error", v13, v14, v50, v51, "MusicKitInternal/MusicLibraryMappingSectionedRequest.swift");
  }

  v15 = *(v0 + 560);
  v16 = *(v0 + 504);
  v68 = *(v0 + 512);
  v70 = *(v0 + 456);
  v17 = sub_1D5612858();
  v18 = 0;
  v71 = *(v0 + 400);
  v69 = (v15 + 8);
  while (1)
  {
    v19 = *(v71 + 16);
    if (v18 == v19)
    {
      v20 = 0;
      v21 = 0uLL;
      v22 = 0uLL;
      goto LABEL_11;
    }

    if (v18 >= v19)
    {
      break;
    }

    *(v0 + 232) = v18;
    sub_1D4E5194C(v71 + 32 + 32 * v18, v0 + 240);
    v21 = *(v0 + 232);
    v22 = *(v0 + 248);
    ++v18;
    v20 = *(v0 + 264);
LABEL_11:
    *(v0 + 192) = v21;
    *(v0 + 208) = v22;
    *(v0 + 224) = v20;
    if (!v20)
    {

      sub_1D54724B4();
      v61 = [objc_opt_self() defaultUnpersonalizedRequest];
      v62 = sub_1D546CC1C(v61, v75, v74);
      *(v0 + 656) = v62;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 408;
      *(v0 + 24) = sub_1D546EE30;
      v63 = swift_continuation_init();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F6D50, qword_1D5667538);
      OUTLINED_FUNCTION_34_2(v64);
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D5472870;
      *(v0 + 104) = &block_descriptor_29;
      *(v0 + 112) = v63;
      [v62 performWithCompletionHandler_];
      v17 = v0 + 16;

      return MEMORY[0x1EEE6DEC8](v17);
    }

    sub_1D4E519A8((v0 + 200), (v0 + 352));
    v23 = swift_dynamicCast();
    if ((v23 & 1) == 0)
    {
      v65 = OUTLINED_FUNCTION_32_58(v23, v24, v25, *(v0 + 528));
      v66(v65);
LABEL_35:
      OUTLINED_FUNCTION_14_89();
      v50 = v67 + 189;
      goto LABEL_36;
    }

    v26 = *(v0 + 552);
    v27 = *(v0 + 528);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    v28 = OUTLINED_FUNCTION_7_127();
    v29(v28, v26, v27);
    v30 = *(v70 + 8);
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    v31 = sub_1D5016040(v30, v0 + 272, v27);
    sub_1D4E6C9CC(v0 + 272, &qword_1EC7F0FE8, &qword_1D5652AB0);
    if (!v31)
    {
      (*v69)(*(v0 + 568), *(v0 + 528));
      goto LABEL_35;
    }

    v73 = v18;
    v72 = sub_1D55F45E8();
    [v75 appendSection_];
    [v74 appendSection_];
    sub_1D5615328();

    v32 = sub_1D5615178();

    v76 = v32;
    OUTLINED_FUNCTION_59_2();
    v33 = sub_1D5615208();
    while (v32 != v33)
    {
      OUTLINED_FUNCTION_59_2();
      v34 = sub_1D56151E8();
      sub_1D56151A8();
      if (v34)
      {
        OUTLINED_FUNCTION_43_3();
        (*(v16 + 16))();
      }

      else
      {
        OUTLINED_FUNCTION_20_5();
        v17 = sub_1D5615BB8();
        if (v68 != 8)
        {
          goto LABEL_38;
        }

        v39 = v17;
        v40 = *(v0 + 520);
        v41 = *(v0 + 496);
        *(v0 + 424) = v39;
        (*(v16 + 16))(v40, v0 + 424, v41);
        swift_unknownObjectRelease();
      }

      v35 = *(v0 + 520);
      v36 = *(v0 + 496);
      sub_1D56152C8();
      *(v0 + 344) = 0;
      *(v0 + 312) = 0u;
      *(v0 + 328) = 0u;
      v37 = sub_1D5016040(v30, v0 + 312, v36);
      (*(v16 + 8))(v35, v36);
      sub_1D4E6C9CC(v0 + 312, &qword_1EC7F0FE8, &qword_1D5652AB0);
      if (v37)
      {

        v38 = sub_1D55F45E8();
        [v74 appendItem_];
        [v75 appendItem_];
      }

      v33 = sub_1D5615208();
      v32 = v76;
    }

    v42 = *(v0 + 528);

    v43 = OUTLINED_FUNCTION_7_127();
    v17 = v44(v43, v42);
    v18 = v73;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1D546EE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 664) = v4;
  if (v4)
  {
    v5 = sub_1D546F1F4;
  }

  else
  {
    v5 = sub_1D546EF38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D546EF38()
{
  v27 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v4 = v0[51];
  v23 = *(v0 + 39);
  v24 = *(v0 + 38);
  v21 = *(v0 + 36);
  v22 = *(v0 + 37);
  v5 = [v4 results];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v6 + 48) = v24;
  *(v6 + 64) = v21;
  *(v6 + 80) = v23;
  *(v6 + 96) = v22;
  *(v6 + 112) = v0 + 48;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D54724F8;
  *(v7 + 24) = v6;
  v0[22] = sub_1D547253C;
  v0[23] = v7;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D546E24C;
  v0[21] = &block_descriptor_10;
  v8 = _Block_copy(v0 + 18);
  v9 = v4;

  [v5 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[82];
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[54];
    v15 = v0[48];

    v16 = [v9 results];

    v17 = [v16 totalItemCount];
    sub_1D52B33FC(v15, v17, 1, v25);
    v18 = v25[1];
    v19 = v26;
    *v14 = v25[0];
    *(v14 + 8) = v18;
    *(v14 + 16) = v19;

    OUTLINED_FUNCTION_22_1();

    return v20();
  }

  return result;
}

uint64_t sub_1D546F1F4(uint64_t a1)
{
  v2 = v1[82];
  v3 = v1[81];
  v4 = v1[80];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void sub_1D546F2B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void, void), void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = MEMORY[0x1DA6EC3C0](a1, a2, a3);
  sub_1D546F38C(a4, a1, a5, a6, a7, a8, a2, a9, a10, a11, a12, a13, a14, a15, a16);

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_1D546F38C(void *a1, uint64_t a2, void (*a3)(void, void, void), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v167 = a8;
  v162 = a7;
  v189 = a6;
  v188 = a5;
  v187 = a4;
  v186 = a3;
  v17 = a13;
  v185 = type metadata accessor for MusicLibraryMapping.MappedSection(0, a13, a15, a4);
  v184 = *(v185 - 8);
  v18 = MEMORY[0x1EEE9AC00](v185);
  v181 = v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v183 = v145 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v178 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for MusicLibraryMapping.MappedItem(0, a13, a14, v23);
  v179 = *(v180 - 8);
  v24 = MEMORY[0x1EEE9AC00](v180);
  v177 = v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v176 = v145 - v26;
  v27 = sub_1D5613158();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v166 = v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1D5613558();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v165 = v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v158 = v145 - v31;
  v32 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v157 = v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1D560D9A8();
  v153 = *(v154 - 8);
  v34 = MEMORY[0x1EEE9AC00](v154);
  v160 = v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v156 = v145 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v152 = v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v151 = v145 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v175 = v145 - v42;
  v43 = sub_1D560D838();
  v197 = *(v43 - 8);
  v198 = v43;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v172 = v145 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v161 = v145 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v150 = v145 - v48;
  v195 = sub_1D560D9E8();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v192 = sub_1D56158D8();
  v191 = *(v192 - 8);
  v51 = MEMORY[0x1EEE9AC00](v192);
  v159 = v145 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v155 = v145 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v149 = v145 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v148 = v145 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v201 = v145 - v59;
  v173 = sub_1D560CB48();
  v171 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v190 = v145 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v170 = sub_1D560CAB8();
  v169 = *(v170 - 8);
  v61 = MEMORY[0x1EEE9AC00](v170);
  v63 = v145 - v62;
  v196 = *(AssociatedTypeWitness - 8);
  v64 = MEMORY[0x1EEE9AC00](v61);
  v174 = v145 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v147 = v145 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v202 = v145 - v68;
  v69 = swift_getAssociatedTypeWitness();
  v70 = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibraryMapping.MappedItem(0, v69, v70, v71);
  v209 = sub_1D56151C8();
  v72 = [a1 representedObjectResults];
  v73 = a2;
  v200 = [v72 sectionAtIndex_];

  v74 = [a1 results];
  v75 = swift_allocObject();
  v76 = v203;
  *(v75 + 16) = a13;
  *(v75 + 24) = v76;
  v182 = a15;
  *(v75 + 32) = a15;
  *(v75 + 40) = v73;
  v77 = v186;
  *(v75 + 48) = a1;
  *(v75 + 56) = v77;
  v78 = v188;
  *(v75 + 64) = v187;
  *(v75 + 72) = v78;
  *(v75 + 80) = v189;
  *(v75 + 88) = &v209;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1D5472748;
  *(v79 + 24) = v75;
  v189 = v75;
  v207 = sub_1D5472874;
  v208 = v79;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v206 = sub_1D546E24C;
  *(&v206 + 1) = &block_descriptor_25;
  v80 = _Block_copy(&aBlock);
  v81 = a1;

  v188 = v73;
  [v74 enumerateItemIdentifiersInSectionAtIndex:v73 usingBlock:v80];

  _Block_release(v80);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if (v75)
  {
    __break(1u);
    goto LABEL_26;
  }

  v187 = v81;
  sub_1D560CAE8();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v83 = v82;
  sub_1D560CAC8();
  v84 = v169;
  v85 = v170;
  v86 = (*(v169 + 88))(v63, v170);
  if (v86 == *MEMORY[0x1E6974C60])
  {
    v145[1] = v83;
    v146 = a13;
    (*(v84 + 96))(v63, v85);
    v87 = v173;
    v88 = v192;
    v89 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v171 + 32))(v190, v63, v87);
    v90 = v191;
    v91 = &v63[v89];
    v92 = v201;
    (*(v191 + 32))(v201, v91, v88);
    v93 = v148;
    v186 = *(v90 + 16);
    v186(v148, v92, v88);
    if (__swift_getEnumTagSinglePayload(v93, 1, AssociatedTypeWitness) == 1)
    {
      (*(v90 + 8))(v93, v88);
      v94 = v196;
      v95 = v149;
    }

    else
    {
      v94 = v196;
      v98 = AssociatedTypeWitness;
      v99 = v147;
      (*(v196 + 32))(v147, v93, v98);
      v170 = v90 + 16;
      v100 = v150;
      sub_1D560EC98();
      v101 = sub_1D560D7E8();
      (*(v197 + 8))(v100, v198);
      v102 = v99;
      AssociatedTypeWitness = v98;
      (*(v94 + 8))(v102, v98);
      v95 = v149;
      if ((v101 & 1) == 0)
      {
        v103 = MEMORY[0x1E6974FD0];
        goto LABEL_11;
      }
    }

    v103 = MEMORY[0x1E6974FD8];
LABEL_11:
    (*(v194 + 104))(v193, *v103, v195);
    v186(v95, v201, v88);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, AssociatedTypeWitness);
    v105 = v175;
    if (EnumTagSinglePayload == 1)
    {
      (*(v90 + 8))(v95, v88);
      v106 = v151;
      v107 = v154;
      __swift_storeEnumTagSinglePayload(v151, 1, 1, v154);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v106, 1, v107) != 1)
      {
        sub_1D4E6C9CC(v106, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v108 = v150;
      sub_1D560EC98();
      (*(v94 + 8))(v95, AssociatedTypeWitness);
      v109 = v151;
      sub_1D560D828();
      (*(v197 + 8))(v108, v198);
      v107 = v154;
      __swift_storeEnumTagSinglePayload(v109, 0, 1, v154);
      (*(v153 + 32))(v105, v109, v107);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v107);
    }

    v110 = v105;
    v111 = v152;
    sub_1D547279C(v110, v152);
    v112 = __swift_getEnumTagSinglePayload(v111, 1, v107);
    v113 = v156;
    v170 = a9;
    if (v112 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v111, 1, v107) != 1)
      {
        sub_1D4E6C9CC(v111, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v153 + 32))(v156, v111, v107);
    }

    v169 = a11;
    v156 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v114 = sub_1D560DB08();
    v115 = *(v114 - 8);
    v116 = *(v115 + 72);
    v117 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1D5621D90;
    v119 = v118 + v117;
    v120 = *(v115 + 104);
    v120(v119, *MEMORY[0x1E6975040], v114);
    v120(v119 + v116, *MEMORY[0x1E6975030], v114);
    v121 = v157;
    sub_1D560E718();
    v122 = v158;
    v123 = v195;
    (*(v194 + 16))(v158, v193, v195);
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v123);
    v124 = swift_unknownObjectRetain();
    v125 = v161;
    sub_1D4F40E88(v124, v113, v121, v122, v161);
    (*(v197 + 16))(v172, v125, v198);
    v126 = [v187 results];
    v127 = [v126 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v127;
    v128 = v155;
    v129 = v192;
    v186(v155, v201, v192);
    if (__swift_getEnumTagSinglePayload(v128, 1, AssociatedTypeWitness) == 1)
    {
      (*(v191 + 8))(v128, v129);
      v207 = 0;
      aBlock = 0u;
      v206 = 0u;
      v96 = v196;
    }

    else
    {
      *(&v206 + 1) = AssociatedTypeWitness;
      v207 = AssociatedConformanceWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      v96 = v196;
      (*(v196 + 32))(boxed_opaque_existential_0, v128, AssociatedTypeWitness);
    }

    sub_1D560E358();
    (*(v163 + 104))(v165, *MEMORY[0x1E6976A50], v164);
    v131 = sub_1D5613568();
    swift_allocObject();
    v132 = sub_1D5613548();
    v204[3] = v131;
    v204[4] = MEMORY[0x1E6976A68];
    v204[0] = v132;

    v133 = v190;
    sub_1D560CB38();
    *(&v206 + 1) = v156;
    v207 = v169;
    __swift_allocate_boxed_opaque_existential_0(&aBlock);
    sub_1D56132D8();
    sub_1D4E628D4(&aBlock, v204);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v134 = v159;
    if (swift_dynamicCast())
    {

      (*(v197 + 8))(v125, v198);
      sub_1D4E6C9CC(v175, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v194 + 8))(v193, v195);
      (*(v191 + 8))(v201, v192);
      (*(v171 + 8))(v133, v173);
      __swift_storeEnumTagSinglePayload(v134, 0, 1, AssociatedTypeWitness);
      v97 = v202;
      (*(v96 + 32))(v202, v134, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v17 = v146;
      goto LABEL_24;
    }

    __swift_storeEnumTagSinglePayload(v134, 1, 1, AssociatedTypeWitness);
    (*(v191 + 8))(v134, v192);
    goto LABEL_29;
  }

  if (v86 == *MEMORY[0x1E6974C58])
  {
    (*(v84 + 96))(v63, v85);
    v96 = v196;
    v97 = v202;
    (*(v196 + 32))(v202, v63, AssociatedTypeWitness);
LABEL_24:
    v168 = AssociatedTypeWitness;
    v201 = a12;
    v135 = v174;
    (*(v96 + 16))(v174, v97, AssociatedTypeWitness);
    v136 = v178;
    sub_1D560CAD8();
    v137 = v176;
    sub_1D52FB70C(v135, v136, v17, v203, v176);
    v138 = v179;
    v139 = v177;
    v140 = v180;
    (*(v179 + 16))(v177, v137, v180);
    v141 = v183;
    sub_1D500EE5C(v139, v209, v17, v182, v183);
    v142 = v184;
    v143 = v185;
    (*(v184 + 16))(v181, v141, v185);
    sub_1D56152D8();

    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v142 + 8))(v141, v143);
    (*(v138 + 8))(v137, v140);
    (*(v96 + 8))(v202, v168);
  }

LABEL_29:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D5470C24(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = MEMORY[0x1DA6EC3C0](a1, a2, a3);
  sub_1D5470CE4(a1, a4, a5, a2, a6, a7, a8, a9, a10, a11, a12, a13);

  objc_autoreleasePoolPop(v19);
}

uint64_t sub_1D5470CE4(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v155 = a8;
  v154 = a7;
  v158 = a6;
  v157 = a5;
  v148 = a4;
  v176 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v170 = v131 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v173 = type metadata accessor for MusicLibraryMapping.MappedItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v171 = *(v173 - 8);
  v17 = MEMORY[0x1EEE9AC00](v173);
  v167 = v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v169 = v131 - v19;
  v20 = sub_1D5613158();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v153 = v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D5613558();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v152 = v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v144 = v131 - v24;
  v25 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v143 = v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D560D9A8();
  v139 = *(v140 - 8);
  v27 = MEMORY[0x1EEE9AC00](v140);
  v146 = v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v142 = v131 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v138 = v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v137 = v131 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v166 = v131 - v35;
  v36 = sub_1D560D838();
  v184 = *(v36 - 8);
  v185 = v36;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v162 = v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v147 = v131 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v136 = v131 - v41;
  v42 = sub_1D560D9E8();
  v182 = *(v42 - 8);
  v183 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v180 = v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = swift_getAssociatedTypeWitness();
  v179 = sub_1D56158D8();
  v175 = *(v179 - 8);
  v45 = MEMORY[0x1EEE9AC00](v179);
  v145 = v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v141 = v131 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v134 = v131 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v133 = v131 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v190 = v131 - v53;
  v163 = sub_1D560CB48();
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v174 = v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = AssociatedConformanceWitness;
  v55 = swift_getAssociatedConformanceWitness();
  v56 = sub_1D560CAB8();
  v57 = *(v56 - 8);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = v131 - v59;
  v181 = *(v44 - 8);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v164 = v131 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v132 = v131 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v165 = v131 - v65;
  v66 = sub_1D560C4A8();
  v177 = *(v66 - 8);
  v178 = v66;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v159 = v131 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v70 = v131 - v69;
  sub_1D560C498();
  v149 = a3;
  v71 = [a3 representedObjectResults];
  v176 = v70;
  v72 = sub_1D560C478();
  v73 = [v71 itemAtIndexPath_];

  v172 = AssociatedTypeWitness;
  v156 = v55;
  sub_1D560CAE8();
  v160 = v73;
  v74 = swift_dynamicCastClass();
  if (!v74)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v75 = v74;
  sub_1D560CAC8();
  v76 = (*(v57 + 88))(v60, v56);
  if (v76 == *MEMORY[0x1E6974C60])
  {
    (*(v57 + 96))(v60, v56);
    v77 = v163;
    v78 = v179;
    v79 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v161 + 32))(v174, v60, v77);
    v80 = v175;
    v81 = &v60[v79];
    v82 = v190;
    (*(v175 + 32))(v190, v81, v78);
    v83 = v133;
    v135 = *(v80 + 16);
    v135(v133, v82, v78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v44);
    v85 = v181;
    if (EnumTagSinglePayload == 1)
    {
      (*(v80 + 8))(v83, v78);
      v86 = v134;
    }

    else
    {
      v89 = *(v181 + 32);
      v131[0] = v80 + 16;
      v90 = v132;
      v89(v132, v83, v44);
      v91 = v136;
      sub_1D560EC98();
      v92 = sub_1D560D7E8();
      (*(v184 + 8))(v91, v185);
      (*(v85 + 8))(v90, v44);
      v86 = v134;
      if ((v92 & 1) == 0)
      {
        v93 = MEMORY[0x1E6974FD0];
        goto LABEL_10;
      }
    }

    v93 = MEMORY[0x1E6974FD8];
LABEL_10:
    (*(v182 + 104))(v180, *v93, v183);
    v135(v86, v190, v78);
    v94 = __swift_getEnumTagSinglePayload(v86, 1, v44);
    v95 = v166;
    v131[1] = v75;
    if (v94 == 1)
    {
      (*(v80 + 8))(v86, v78);
      v96 = v137;
      v97 = v140;
      __swift_storeEnumTagSinglePayload(v137, 1, 1, v140);
      sub_1D560CB28();
      if (__swift_getEnumTagSinglePayload(v96, 1, v97) != 1)
      {
        sub_1D4E6C9CC(v96, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      v98 = v136;
      sub_1D560EC98();
      (*(v85 + 8))(v86, v44);
      v99 = v137;
      sub_1D560D828();
      (*(v184 + 8))(v98, v185);
      v97 = v140;
      __swift_storeEnumTagSinglePayload(v99, 0, 1, v140);
      (*(v139 + 32))(v95, v99, v97);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v97);
    }

    v100 = v95;
    v101 = v138;
    sub_1D547279C(v100, v138);
    v102 = __swift_getEnumTagSinglePayload(v101, 1, v97);
    v103 = v142;
    if (v102 == 1)
    {
      sub_1D560E358();
      if (__swift_getEnumTagSinglePayload(v101, 1, v97) != 1)
      {
        sub_1D4E6C9CC(v101, &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(v139 + 32))(v142, v101, v97);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v104 = sub_1D560DB08();
    v105 = *(v104 - 8);
    v106 = *(v105 + 72);
    v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1D5621D90;
    v109 = v108 + v107;
    v110 = *(v105 + 104);
    v110(v109, *MEMORY[0x1E6975040], v104);
    v110(v109 + v106, *MEMORY[0x1E6975030], v104);
    v111 = v143;
    sub_1D560E718();
    v112 = v183;
    v113 = v144;
    (*(v182 + 16))(v144, v180, v183);
    __swift_storeEnumTagSinglePayload(v113, 0, 1, v112);
    v114 = swift_unknownObjectRetain();
    v115 = v147;
    sub_1D4F40E88(v114, v103, v111, v113, v147);
    (*(v184 + 16))(v162, v115, v185);
    (*(v177 + 16))(v159, v176, v178);
    v116 = [v149 results];
    v117 = [v116 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v117;
    v118 = v141;
    v119 = v179;
    v135(v141, v190, v179);
    if (__swift_getEnumTagSinglePayload(v118, 1, v44) == 1)
    {
      (*(v175 + 8))(v118, v119);
      v189 = 0;
      v187 = 0u;
      v188 = 0u;
      v87 = v181;
    }

    else
    {
      *(&v188 + 1) = v44;
      v189 = v156;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v187);
      v87 = v181;
      (*(v181 + 32))(boxed_opaque_existential_0, v118, v44);
    }

    sub_1D560E358();
    (*(v150 + 104))(v152, *MEMORY[0x1E6976A50], v151);
    v121 = sub_1D5613568();
    swift_allocObject();
    v122 = sub_1D5613538();
    v186[3] = v121;
    v186[4] = MEMORY[0x1E6976A68];
    v186[0] = v122;

    v123 = v174;
    sub_1D560CB38();
    *(&v188 + 1) = v154;
    v189 = v155;
    __swift_allocate_boxed_opaque_existential_0(&v187);
    sub_1D56132D8();
    sub_1D4E628D4(&v187, v186);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    v124 = v145;
    if (swift_dynamicCast())
    {

      (*(v184 + 8))(v115, v185);
      sub_1D4E6C9CC(v166, &qword_1EC7F6DF0, &qword_1D561D1E0);
      (*(v182 + 8))(v180, v183);
      (*(v175 + 8))(v190, v179);
      (*(v161 + 8))(v123, v163);
      __swift_storeEnumTagSinglePayload(v124, 0, 1, v44);
      v88 = v165;
      (*(v87 + 32))(v165, v124, v44);
      __swift_destroy_boxed_opaque_existential_1(&v187);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v124, 1, 1, v44);
    (*(v175 + 8))(v124, v179);
    goto LABEL_27;
  }

  v87 = v181;
  if (v76 == *MEMORY[0x1E6974C58])
  {
    (*(v57 + 96))(v60, v56);
    v88 = v165;
    (*(v87 + 32))(v165, v60, v44);
LABEL_23:
    v125 = v164;
    (*(v87 + 16))(v164, v88, v44);
    v126 = v170;
    sub_1D560CAD8();
    v127 = v169;
    sub_1D52FB70C(v125, v126, v172, v168, v169);
    v128 = v171;
    v129 = v173;
    (*(v171 + 16))(v167, v127, v173);
    sub_1D56152D8();
    sub_1D5615218();
    swift_unknownObjectRelease();
    (*(v128 + 8))(v127, v129);
    (*(v87 + 8))(v88, v44);
    return (*(v177 + 8))(v176, v178);
  }

LABEL_27:
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D54722E4(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, a1);
  sub_1D56159A8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D5472344(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5472860;

  return MusicLibraryMapping.SectionedRequest.response<>()(a1, a2);
}

uint64_t sub_1D54723EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5472860;

  return MusicLibraryMapping.SectionedRequest.response<>(revisionID:requester:)();
}

unint64_t sub_1D54724B4()
{
  result = qword_1EC7F6D48;
  if (!qword_1EC7F6D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7F6D48);
  }

  return result;
}

void sub_1D547256C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1D56152D8();
  if (v4 <= 0x3F)
  {
    type metadata accessor for MappingSectionWrapper(255, v2, *(a1 + 24), v3);
    sub_1D56152D8();
    if (v5 <= 0x3F)
    {
      sub_1D54726E4(319);
      if (v6 <= 0x3F)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        _s10FrozenItemVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
        sub_1D56152D8();
        sub_1D56152D8();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D54726E4(uint64_t a1)
{
  if (!qword_1EC7F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F6D30, &qword_1D5667500);
    v1 = sub_1D5612868();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F6DE0);
    }
  }
}

uint64_t sub_1D547279C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_53()
{

  return sub_1D5616458();
}

uint64_t PinnableMusicItem.itemToPin.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

double PinnableMusicItem<>.itemToPin.getter@<D0>(uint64_t a3@<X8>)
{
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D54729B4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v159 = a1;
  v163 = a5;
  v157 = type metadata accessor for MusicPinPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v154 = v9;
  v168 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v160 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v158 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v167 = &v137 - v14;
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v161 = v16;
  v162 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v166 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v20);
  v146 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v145 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v26);
  v148 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v139 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v153 = v32;
  v152 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v141 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v38);
  v150 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v143 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v137 - v44;
  v46 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  v165 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v164 = &v137 - v55;
  v156 = *a2;
  v56 = a4;
  v57 = *(a4 + 16);
  v58 = a3;
  v59 = a3;
  v60 = v56;
  v61 = v57;
  (v57)(&v169, v59);
  if (!v170)
  {
    sub_1D4E50004(&v169, &qword_1EC7EC500, &unk_1D5621030);
    v71 = OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v71, v72, 1, v46);
LABEL_5:
    sub_1D4E50004(v45, &qword_1EC7EEC30, &unk_1D5620CE0);
    v73 = v61;
    (v61)(&v169, v58, v60);
    if (v170)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v74 = v151;
      v75 = v150;
      swift_dynamicCast();
      v76 = OUTLINED_FUNCTION_6_140();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
      v79 = OUTLINED_FUNCTION_105();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, v80, v75);
      v82 = v153;
      v70 = v154;
      v83 = v152;
      if (EnumTagSinglePayload != 1)
      {
        v67 = v157;
        v84 = *(v143 + 32);
        v85 = v142;
        v84(v142, v74, v75);
        v86 = OUTLINED_FUNCTION_10_116();
        v84(v86, v85, v75);
        LODWORD(v153) = 1;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v169, &qword_1EC7EC500, &unk_1D5621030);
      v74 = v151;
      v87 = OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v87, v88, 1, v150);
      v82 = v153;
      v70 = v154;
      v83 = v152;
    }

    sub_1D4E50004(v74, &qword_1EC7EA8A8, &qword_1D561CF10);
    v89 = OUTLINED_FUNCTION_7_128();
    v73(v89);
    if (v170)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v90 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v82, v90 ^ 1u, 1, v83);
      if (__swift_getEnumTagSinglePayload(v82, 1, v83) != 1)
      {
        v67 = v157;
        v91 = *(v141 + 32);
        v92 = v140;
        v91(v140, v82, v83);
        v93 = OUTLINED_FUNCTION_10_116();
        v91(v93, v92, v83);
        LODWORD(v153) = 3;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v169, &qword_1EC7EC500, &unk_1D5621030);
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v83);
    }

    sub_1D4E50004(v82, &qword_1EC7EA990, &qword_1D561D220);
    v94 = OUTLINED_FUNCTION_7_128();
    v73(v94);
    if (v170)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v95 = v149;
      v96 = v148;
      swift_dynamicCast();
      v97 = OUTLINED_FUNCTION_6_140();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
      v100 = OUTLINED_FUNCTION_105();
      if (__swift_getEnumTagSinglePayload(v100, v101, v96) != 1)
      {
        v67 = v157;
        v102 = *(v139 + 32);
        v103 = v138;
        v102(v138, v95, v96);
        v104 = OUTLINED_FUNCTION_10_116();
        v102(v104, v103, v96);
        LODWORD(v153) = 2;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v169, &qword_1EC7EC500, &unk_1D5621030);
      v95 = v149;
      v105 = OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v105, v106, 1, v148);
    }

    sub_1D4E50004(v95, &unk_1EC7F1990, &unk_1D561CEF0);
    v107 = OUTLINED_FUNCTION_7_128();
    v73(v107);
    if (v170)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      OUTLINED_FUNCTION_8_127();
      v108 = v147;
      v109 = v146;
      v110 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v108, v110 ^ 1u, 1, v109);
      if (__swift_getEnumTagSinglePayload(v108, 1, v109) != 1)
      {
        v67 = v157;
        v111 = *(v145 + 32);
        v112 = v144;
        v111(v144, v108, v109);
        v113 = OUTLINED_FUNCTION_10_116();
        v111(v113, v112, v109);
        LODWORD(v153) = 3;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D4E50004(&v169, &qword_1EC7EC500, &unk_1D5621030);
      v108 = v147;
      __swift_storeEnumTagSinglePayload(v147, 1, 1, v146);
    }

    sub_1D4E50004(v108, &qword_1EC7EA978, &qword_1D5652B10);
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  OUTLINED_FUNCTION_8_127();
  swift_dynamicCast();
  v62 = OUTLINED_FUNCTION_6_140();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v46);
  v65 = OUTLINED_FUNCTION_105();
  if (__swift_getEnumTagSinglePayload(v65, v66, v46) == 1)
  {
    goto LABEL_5;
  }

  v67 = v157;
  v68 = *(v48 + 32);
  v68(v51, v45, v46);
  v69 = OUTLINED_FUNCTION_10_116();
  v68(v69, v51, v46);
  LODWORD(v153) = 0;
  v70 = v154;
LABEL_20:
  v114 = v155;
  swift_storeEnumTagMultiPayload();
  v115 = v165;
  sub_1D54738E8(v58, v165, type metadata accessor for MusicPin.Item);
  sub_1D560FE18();
  MusicPin.Item.innerItem.getter(&v169);
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(&v169);
  v157 = sub_1D560FDE8();
  v154 = v116;

  sub_1D54738A0(&qword_1EC7EC830, type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  v117 = v158;
  sub_1D560EC98();
  sub_1D528F570(v167);
  v118 = v160;
  v158 = *(v160 + 8);
  v158(v117, v168);
  v119 = v67;
  v120 = v67[5];
  sub_1D54738E8(v115, &v70[v120], type metadata accessor for MusicPin.Item);
  __swift_storeEnumTagSinglePayload(&v70[v120], 0, 1, v114);
  sub_1D5614A88();
  v121 = OUTLINED_FUNCTION_3_183();
  v155 = OUTLINED_FUNCTION_3_183();
  v152 = OUTLINED_FUNCTION_3_183();
  v122 = OUTLINED_FUNCTION_3_183();
  *v70 = v156;
  v70[v67[6]] = v153;
  v123 = &v70[v67[7]];
  *v123 = v159;
  v123[8] = 0;
  if (qword_1EC7E9388 != -1)
  {
    swift_once();
  }

  v124 = qword_1EC87C4C0;
  if (qword_1EC87C4C0 >> 62)
  {
    sub_1D560CDE8();

    v136 = sub_1D5615E18();

    v124 = v136;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v70[v67[8]] = v124;
  v126 = v167;
  v125 = v168;
  (*(v118 + 16))(&v70[v67[9]], v167, v168);
  v128 = v161;
  v127 = v162;
  v129 = &v70[v67[10]];
  v130 = v166;
  (*(v161 + 16))(v129, v166, v162);
  v131 = &v70[v119[11]];
  v133 = v154;
  v132 = v155;
  *v131 = v157;
  v131[1] = v133;
  *&v70[v119[12]] = v121;
  *&v70[v119[13]] = v132;
  *&v70[v119[14]] = v152;
  *&v70[v119[15]] = v122;
  v170 = v119;
  v171 = sub_1D54738A0(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider, &unk_1D564BCEC);
  v134 = __swift_allocate_boxed_opaque_existential_0(&v169);
  sub_1D54738E8(v70, v134, type metadata accessor for MusicPinPropertyProvider);
  MusicPin.init(propertyProvider:)(&v169, v163);
  sub_1D5473948(v70, type metadata accessor for MusicPinPropertyProvider);
  v158(v126, v125);
  (*(v128 + 8))(v130, v127);
  sub_1D5473948(v165, type metadata accessor for MusicPin.Item);
  return sub_1D5473948(v164, type metadata accessor for MusicPin.Item);
}

uint64_t sub_1D54738A0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D54738E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D5473948(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D54739B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  return sub_1D5616328();
}

uint64_t sub_1D5473A2C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    v4 = 0x73616364616F7262;
  }

  else
  {
    v4 = 0x65646F73697065;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5473AA0(uint64_t a1, char a2)
{
  v3 = sub_1D56162D8();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 6778480;
    }

    else
    {
      v5 = 1667851624;
    }
  }

  else
  {
    v5 = 6778986;
  }

  OUTLINED_FUNCTION_312_1(v3, v5, v4);

  return sub_1D5616328();
}

uint64_t sub_1D5473B4C(uint64_t a1)
{
  OUTLINED_FUNCTION_305_0(a1);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5473BD8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    v4 = 0x72506C6169636F73;
  }

  else
  {
    v4 = 0x7473696C79616C70;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5473C60(uint64_t a1, char a2)
{
  v3 = sub_1D56162D8();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x6577656976657270;
    }

    else
    {
      v5 = 0x64657463656C6573;
    }
  }

  else
  {
    v5 = 0x6573736572706D69;
  }

  OUTLINED_FUNCTION_312_1(v3, v5, v4);

  return sub_1D5616328();
}

uint64_t sub_1D5473D38(uint64_t a1, char a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](qword_1D5668698[a2]);
  return sub_1D5616328();
}

uint64_t sub_1D5473D88(uint64_t a1)
{
  OUTLINED_FUNCTION_305_0(a1);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5473EB0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x736E6F73616573;
    }

    else
    {
      v4 = 2003789939;
    }
  }

  else
  {
    v4 = 0x7365726E6567;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5473F34(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x70652D726568746FLL;
    }

    else
    {
      v4 = 0x7473696C79616C70;
    }
  }

  else
  {
    v4 = 0x72612D636973756DLL;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5473FF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7365726E6567;
    }

    else
    {
      v4 = 2003789939;
    }
  }

  else
  {
    v4 = 0x7365646F73697065;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D547407C(uint64_t a1, char a2)
{
  sub_1D56162D8();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5474114(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    v4 = 0x564953554C435845;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D54741B8(uint64_t a1)
{
  OUTLINED_FUNCTION_305_0(a1);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5474224(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    v4 = 0x6E6F6973726556;
  }

  else
  {
    v4 = 0x696669746E656449;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5474298(uint64_t a1)
{
  v1 = sub_1D56162D8();
  OUTLINED_FUNCTION_19_63(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54742E4(uint64_t a1)
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_102();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D547432C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 6775106;
    }

    else
    {
      v4 = 0x6F44746E65746E49;
    }
  }

  else
  {
    v4 = 4804673;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D54743D0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x676948636972796CLL;
    }

    else
    {
      v4 = 0x73636972796CLL;
    }
  }

  else
  {
    v4 = 0x6564756C637865;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5474480(uint64_t a1)
{
  v1 = sub_1D56162D8();
  OUTLINED_FUNCTION_19_63(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54744E4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    v4 = 0x7972617262694CLL;
  }

  else
  {
    v4 = 0x754D2E656C707041;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5474574(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 1684957547;
    }

    else
    {
      v4 = 0x6564644165746164;
    }
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5474608(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_305_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7972617262696CLL;
    }

    else
    {
      v4 = 1684366707;
    }
  }

  else
  {
    v4 = 1835365481;
  }

  OUTLINED_FUNCTION_312_1(v2, v4, v3);

  return sub_1D5616328();
}

uint64_t sub_1D5474688(uint64_t a1)
{
  OUTLINED_FUNCTION_305_0(a1);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D5474738(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_386(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_385(v3, v4, v5);

  return sub_1D5616328();
}

uint64_t sub_1D547479C(uint64_t a1, char a2)
{
  sub_1D56162D8();
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D547484C(uint64_t a1)
{
  OUTLINED_FUNCTION_386(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_385(v3, v4, v5);

  return sub_1D5616328();
}

uint64_t sub_1D5474894(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  return sub_1D5616328();
}

uint64_t sub_1D5474914(uint64_t a1)
{
  OUTLINED_FUNCTION_386(a1);
  v1(v4, v2);
  return sub_1D5616328();
}

uint64_t sub_1D5474954(uint64_t a1)
{
  v1 = sub_1D56162D8();
  OUTLINED_FUNCTION_19_63(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54749DC()
{
  v0 = type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_215_3();
  v2 = OUTLINED_FUNCTION_159();
  sub_1D54ACBB0(v2, v3);
  sub_1D560F0D8();
  _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7130, &qword_1D5668208);
  OUTLINED_FUNCTION_2_19(v4);
  v5 = OUTLINED_FUNCTION_71();
  return sub_1D54775E0(v5, v6);
}

uint64_t sub_1D5474AB8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  a1(0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  (*(v8 + 16))(v5, v4);
  sub_1D560F0D8();
  v9 = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v10 = OUTLINED_FUNCTION_61();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_2_19(v12);
  return a4(v5, v9);
}

uint64_t sub_1D5474C20()
{
  v0 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_212_7();
  v2 = OUTLINED_FUNCTION_159();
  sub_1D54ACBB0(v2, v3);
  sub_1D560F0D8();
  _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F08, &qword_1D5667988);
  OUTLINED_FUNCTION_2_19(v4);
  v5 = OUTLINED_FUNCTION_71();
  return sub_1D547BB1C(v5, v6);
}

uint64_t sub_1D5474CC0()
{
  v0 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_159();
  sub_1D54ACBB0(v2, v3);
  sub_1D560F0D8();
  _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7010, &qword_1D5667E68);
  OUTLINED_FUNCTION_2_19(v4);
  v5 = OUTLINED_FUNCTION_71();
  return sub_1D547C7A0(v5, v6);
}

uint64_t sub_1D5474D70(char a1, uint64_t a2)
{
  v43 = a2;
  v4 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v41 - v14;
  v15 = type metadata accessor for GenericMusicItem(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D18, &qword_1D563C1D0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v41 - v22;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0) + 36);
  v45 = v2;
  sub_1D4F39AB0(v2 + v24, v23, &qword_1EC7F0D18, &qword_1D563C1D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D54B5AC0(v23, v20);
    GenericMusicItem.innerItem.getter(v56);
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_1D560EC18();
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_1D54B4BA4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560EC88();
    v33 = v44;
    sub_1D54ACBB0(v20, v44);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v15);
    sub_1D54ACBB0(v45, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7238, &unk_1D5668568);
    swift_allocObject();
    v31 = sub_1D560CA88();
    sub_1D54B4B54();
    return v31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D54BE1FC(v23, &qword_1EC7F0D18);
    return 0;
  }

  v27 = *v23;
  v26 = *(v23 + 1);
  v28 = v23[16];
  if ((a1 & 1) == 0)
  {
LABEL_12:
    LOBYTE(v56[0]) = v28;
    sub_1D540C614(v46);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v15);
    sub_1D54ACBB0(v45, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7238, &unk_1D5668568);
    swift_allocObject();
    return sub_1D560CA88();
  }

  if (qword_1EDD5BC20 != -1)
  {
    swift_once();
  }

  LOBYTE(v51[0]) = v28;
  sub_1D53185E4(v27, v26, v51, v43, &v54);
  if (!v55)
  {
    sub_1D54BE1FC(&v54, &qword_1EC7EEC40);
    goto LABEL_12;
  }

  sub_1D4E48324(&v54, v56);
  sub_1D4E628D4(v56, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    sub_1D54B5AC0(v9, v18);
    sub_1D54B4BA4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v29 = v46;
    sub_1D560EC88();
    sub_1D4F39AB0(v29, v42, &qword_1EC7ECE10, &qword_1D5634400);
    v30 = v44;
    sub_1D54ACBB0(v18, v44);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v15);
    sub_1D54ACBB0(v45, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7238, &unk_1D5668568);
    swift_allocObject();
    v31 = sub_1D560CA88();
    sub_1D54BE1FC(v29, &qword_1EC7ECE10);
    sub_1D54B4B54();
    v32 = v56;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1(v32);
    return v31;
  }

  v41[1] = v27;
  v43 = v26;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_1D54BE1FC(v9, &qword_1EC7EA608);
  sub_1D4E628D4(v56, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v48, &v54);
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    sub_1D5612B18();
    v34 = v52;
    v35 = v53;
    v36 = __swift_project_boxed_opaque_existential_1(v51, v52);
    *(&v49 + 1) = v34;
    v50 = *(v35 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v36, v34);
    GenericMusicItem.init(propertyProvider:)();
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_1D54B4BA4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v38 = v46;
    sub_1D560EC88();
    sub_1D4F39AB0(v38, v42, &qword_1EC7ECE10, &qword_1D5634400);
    v39 = v44;
    sub_1D54ACBB0(v20, v44);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v15);
    sub_1D54ACBB0(v45, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7238, &unk_1D5668568);
    swift_allocObject();
    v31 = sub_1D560CA88();
    sub_1D54BE1FC(v38, &qword_1EC7ECE10);
    sub_1D54B4B54();
    __swift_destroy_boxed_opaque_existential_1(v56);
    v32 = &v54;
    goto LABEL_15;
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_1D54BE1FC(&v48, &qword_1EC7EA368);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x746920646E756F46, 0xEB00000000206D65);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0xD00000000000006ALL, 0x80000001D5681750);
  MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568ABA0);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D54758D0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = (a4)(0, a2);
    OUTLINED_FUNCTION_69(v10);
    result = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v8;
  }

  return v8;
}

uint64_t sub_1D54759BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EF0, &qword_1D5667970);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_1D4F39AB0(a1, &v18 - v12, &qword_1EC7F6EE8, &qword_1D5667968);
  sub_1D4F39AB0(a2, &v13[v14], &qword_1EC7F6EE8, &qword_1D5667968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D4F39AB0(v13, v9, &qword_1EC7F6EE8, &qword_1D5667968);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D54B5AC0(&v13[v14], v6);
      sub_1D5613838();
      sub_1D54B4BA4(&unk_1EC7F2BF0, MEMORY[0x1E6976BE8], MEMORY[0x1E6976C00]);
      v16 = sub_1D560DAA8();
      sub_1D54B4B54();
      sub_1D54B4B54();
      sub_1D54BE1FC(v13, &qword_1EC7F6EE8);
      return v16 & 1;
    }

    sub_1D54B4B54();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_9:
    sub_1D54BE1FC(v13, &qword_1EC7F6EF0);
    v16 = 0;
    return v16 & 1;
  }

  sub_1D54BE1FC(v13, &qword_1EC7F6EE8);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1D5475CB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7220, &qword_1D5668548);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_1D560DF28();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7228, &unk_1D5668550);
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  *(v5 + 120) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7230, &qword_1D5668560);
  *(v5 + 128) = v9;
  *(v5 + 136) = *(v9 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = type metadata accessor for GenericMusicItem(0);
  *(v5 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB070, &qword_1D561DE20);
  *(v5 + 168) = v10;
  *(v5 + 176) = *(v10 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5475F9C, 0, 0);
}

uint64_t sub_1D5475F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v15 = *(v12 + 232);
  v16 = *(v12 + 24);
  v17 = swift_task_alloc();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = v13;
  *(v17 + 40) = v16;
  v65 = sub_1D50DECAC(sub_1D54BE070, v17, v13);

  v18 = objc_opt_self();
  v19 = [v18 sharedCloudController];
  v20 = [v19 isUpdateInProgress];

  if (v20 && (v21 = [v18 sharedCloudController], v22 = objc_msgSend(v21, sel_isInitialImport), v21, v22))
  {
    v23 = *(v12 + 136);
    v24 = sub_1D4E62628(v65);
    v32 = 0;
    v64 = v24;
    v33 = (v23 + 8);
    v63 = MEMORY[0x1E69E7CC0];
    while (v64 != v32)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA6EB9B0](v32, v65);
      }

      else
      {
        if (v32 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return MEMORY[0x1EEDCE158](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
      }

      v34 = *(v12 + 144);
      v35 = *(v12 + 152);
      v37 = *(v12 + 120);
      v36 = *(v12 + 128);
      sub_1D560CAC8();
      sub_1D560CAA8();
      (*v33)(v34, v36);
      OUTLINED_FUNCTION_57(v37, 1, v35);
      if (v38)
      {
        v39 = *(v12 + 120);

        v24 = sub_1D54BE1FC(v39, &qword_1EC7EA608);
        ++v32;
      }

      else
      {
        v41 = *(v12 + 192);
        v40 = *(v12 + 200);
        v42 = *(v12 + 160);
        sub_1D54B5AC0(*(v12 + 120), v42);
        sub_1D54ACBB0(v42, v41);
        sub_1D560CAD8();

        sub_1D54B4B54();
        sub_1D4F39A1C(v41, v40, &qword_1EC7EB070, &qword_1D561DE20);
        v43 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = OUTLINED_FUNCTION_1_13();
          sub_1D4F01C1C(v50, v51, v52, v63);
          v43 = v53;
        }

        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        if (v46 >= v45 >> 1)
        {
          v54 = OUTLINED_FUNCTION_93_1(v45);
          sub_1D4F01C1C(v54, v46 + 1, 1, v43);
          v43 = v55;
        }

        *(v43 + 16) = v46 + 1;
        OUTLINED_FUNCTION_6_4();
        v63 = v43;
        v24 = sub_1D4F39A1C(v49, v43 + v47 + *(v48 + 72) * v46, &qword_1EC7EB070, &qword_1D561DE20);
        ++v32;
      }
    }

    OUTLINED_FUNCTION_270_3();
    *v60 = v63;
    *(v60 + 8) = 0;

    OUTLINED_FUNCTION_22_1();

    return v61();
  }

  else
  {
    v56 = *(v12 + 80);
    v57 = *(v12 + 88);
    v58 = *(v12 + 72);
    type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
    sub_1D54B4BA4(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560CB08();
    (*(v56 + 104))(v57, *MEMORY[0x1E6975110], v58);
    v59 = swift_task_alloc();
    *(v12 + 208) = v59;
    *v59 = v12;
    v59[1] = sub_1D547647C;
    v24 = OUTLINED_FUNCTION_93_0(*(v12 + 88));

    return MEMORY[0x1EEDCE158](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_1D547647C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v7 + 216) = v6;
  *(v7 + 224) = v0;

  v8 = OUTLINED_FUNCTION_128();
  v9(v8);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D54765D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = v16[27];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v16[22];
    a12 = v16[21];
    v20 = v16[7];
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D4F0454C(0, v18, 0);
    v21 = v44;
    v20 += 16;
    OUTLINED_FUNCTION_43_3();
    v23 = v17 + v22;
    a9 = *(v20 + 56);
    a10 = v24;
    a11 = v20;
    do
    {
      a10(v16[8], v23, v16[6]);
      sub_1D560CA48();
      sub_1D560CA38();
      sub_1D560CAD8();

      v25 = OUTLINED_FUNCTION_210();
      v26(v25);
      a13 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        v31 = OUTLINED_FUNCTION_93_1(v27);
        sub_1D4F0454C(v31, v28 + 1, 1);
      }

      *(v21 + 16) = v28 + 1;
      OUTLINED_FUNCTION_43_3();
      sub_1D4F39A1C(v30, v21 + v29 + *(v19 + 72) * v28, &qword_1EC7EB070, &qword_1D561DE20);
      v23 += a9;
      --v18;
    }

    while (v18);
    (*(v16[13] + 8))(v16[14], v16[12]);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_159();
    v33(v32);
    v21 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_270_3();
  *v34 = v21;
  *(v34 + 8) = 1;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_63_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D5476810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  (*(v12[13] + 8))(v12[14], v12[12]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1D547691C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v73 = a1;
  v60 = sub_1D560C988();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560C9B8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7178, &qword_1D56682F8);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v12;
  v70 = sub_1D560E8E8();
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7180, &unk_1D5668300);
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(*v3 + 104);
  v26 = sub_1D560EA18();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1D4F39AB0(v24, v22, &qword_1EC7EABF0, &qword_1D561D7F0);
  sub_1D560C8B8();
  sub_1D54BE1FC(v24, &qword_1EC7EABF0);
  (*(v16 + 32))(v3 + v25, v18, v61);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v26);
  sub_1D560C358();
  v27 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v27))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v28;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v29 = v72;
  v30 = *(v72 + 16);
  v31 = v66;
  v32 = v70;
  v30(v66, v73, v70);
  swift_beginAccess();
  v30(v62, v31, v32);
  sub_1D560C8B8();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v66 = v34;
  (v34)(v31, v32);
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v71;

  v35 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v35;
  *(v3 + *(*v3 + 200)) = 1;
  v36 = v63;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v36, v64, &qword_1EC7F7178, &qword_1D56682F8);
  sub_1D560C8B8();
  sub_1D54BE1FC(v36, &qword_1EC7F7178);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D561C770;
  *(v37 + 32) = sub_1D560F018();
  *(v37 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v38 = v67;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v39 = v69;
  v40 = sub_1D560C948();

  (*(v68 + 8))(v38, v39);
  *(v3 + *(*v3 + 184)) = v40;

  sub_1D5481A80();
  v41 = sub_1D560F028();
  if (v41)
  {
    v42 = sub_1D5615458();
    v43 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();

    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v46 = sub_1D4F405A0(0, 0, v43, &unk_1D5668318, v45);

    (v66)(v73, v32);
    sub_1D54BE1FC(v43, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v46;
  }

  else
  {
    sub_1D54883CC(v41);
    sub_1D4E699CC();
    v47 = sub_1D5615738();
    v48 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BD6D8;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_508;
    v49 = _Block_copy(aBlock);

    v50 = v55;
    sub_1D560C9A8();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    v72 = v33;
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v51 = v57;
    v52 = v60;
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v50, v51, v49);
    _Block_release(v49);

    (v66)(v73, v70);
    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v50, v58);
  }

  return v3;
}

uint64_t sub_1D54775E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = sub_1D560C988();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D560C9B8();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7138, &qword_1D5668210);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v23 = *(*v2 + 104);
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7140, &qword_1D5668218);
  sub_1D560C8B8();
  (*(v20 + 32))(v2 + v23, v22, v19);
  *(v2 + *(*v2 + 120)) = 0;
  sub_1D560C358();
  v24 = MEMORY[0x1E69E7CC0];
  *(v2 + *(*v2 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v24))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + *(*v2 + 144)) = v25;
  *(v2 + *(*v2 + 168)) = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 208)) = 0;
  *(v2 + *(*v2 + 216)) = 0;
  sub_1D54ACBB0(v52, v18);
  swift_beginAccess();
  sub_1D54ACBB0(v18, v16);
  sub_1D560C8B8();
  sub_1D54B4B54();
  swift_endAccess();
  *(v2 + *(*v2 + 152)) = a2;

  v26 = *(sub_1D4E5A1CC() + 48);

  *(v2 + *(*v2 + 160)) = v26;
  *(v2 + *(*v2 + 200)) = 1;
  swift_beginAccess();
  v54 = 0;
  v55 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7148, &qword_1D5668220);
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D561C770;
  *(v27 + 32) = sub_1D560F018();
  *(v27 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v2 + *(*v2 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v28 = v51;
  v29 = sub_1D560C948();

  (*(v50 + 8))(v12, v28);
  *(v3 + *(*v3 + 184)) = v29;

  sub_1D548241C();
  v30 = sub_1D560F028();
  if (v30)
  {
    v31 = sub_1D5615458();
    v32 = v43;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v31);
    v33 = swift_allocObject();
    swift_weakInit();

    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v33;
    v35 = sub_1D4F405A0(0, 0, v32, &unk_1D5668230, v34);

    sub_1D54B4B54();
    sub_1D54BE1FC(v32, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v35;
  }

  else
  {
    sub_1D54883CC(v30);
    sub_1D4E699CC();
    v51 = sub_1D5615738();
    v36 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BD32C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_458;
    v37 = _Block_copy(aBlock);

    v38 = v44;
    sub_1D560C9A8();
    v54 = v24;
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v39 = v46;
    v40 = v49;
    sub_1D56159E8();
    v41 = v51;
    MEMORY[0x1DA6EB530](0, v38, v39, v37);
    _Block_release(v37);

    sub_1D54B4B54();
    (*(v48 + 8))(v39, v40);
    (*(v45 + 8))(v38, v47);
  }

  return v3;
}

uint64_t sub_1D54780C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v73 = a1;
  v60 = sub_1D560C988();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560C9B8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70F0, &qword_1D5668130);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v12;
  v70 = sub_1D560DF18();
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70F8, &qword_1D5668138);
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7100, &qword_1D5668140);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(*v3 + 104);
  v26 = sub_1D560DFC8();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1D4F39AB0(v24, v22, &qword_1EC7F7100, &qword_1D5668140);
  sub_1D560C8B8();
  sub_1D54BE1FC(v24, &qword_1EC7F7100);
  (*(v16 + 32))(v3 + v25, v18, v61);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v26);
  sub_1D560C358();
  v27 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v27))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v28;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v29 = v72;
  v30 = *(v72 + 16);
  v31 = v66;
  v32 = v70;
  v30(v66, v73, v70);
  swift_beginAccess();
  v30(v62, v31, v32);
  sub_1D560C8B8();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v66 = v34;
  (v34)(v31, v32);
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v71;

  v35 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v35;
  *(v3 + *(*v3 + 200)) = 1;
  v36 = v63;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v36, v64, &qword_1EC7F70F0, &qword_1D5668130);
  sub_1D560C8B8();
  sub_1D54BE1FC(v36, &qword_1EC7F70F0);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D561C770;
  *(v37 + 32) = sub_1D560F018();
  *(v37 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v38 = v67;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v39 = v69;
  v40 = sub_1D560C948();

  (*(v68 + 8))(v38, v39);
  *(v3 + *(*v3 + 184)) = v40;

  sub_1D5483228();
  v41 = sub_1D560F028();
  if (v41)
  {
    v42 = sub_1D5615458();
    v43 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();

    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v46 = sub_1D4F405A0(0, 0, v43, &unk_1D5668150, v45);

    (v66)(v73, v32);
    sub_1D54BE1FC(v43, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v46;
  }

  else
  {
    sub_1D54883CC(v41);
    sub_1D4E699CC();
    v47 = sub_1D5615738();
    v48 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BCF90;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_413;
    v49 = _Block_copy(aBlock);

    v50 = v55;
    sub_1D560C9A8();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    v72 = v33;
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v51 = v57;
    v52 = v60;
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v50, v51, v49);
    _Block_release(v49);

    (v66)(v73, v70);
    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v50, v58);
  }

  return v3;
}

void sub_1D5478DB0()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v90 = v6;
  v89 = v7;
  v9 = v8;
  sub_1D560C988();
  OUTLINED_FUNCTION_4();
  v87 = v11;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v85 = v13 - v12;
  OUTLINED_FUNCTION_70_0();
  v86 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v84 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v83 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v82 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D10, &unk_1D563C1A8);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_12_24();
  v30 = *(v29 + 104);
  v92 = 0;
  LOBYTE(v93) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71E0, &qword_1D5668480);
  sub_1D560C8B8();
  (*(v27 + 32))(v3 + v30, v2, v25);
  OUTLINED_FUNCTION_12_24();
  v32 = v3 + *(v31 + 120);
  *v32 = 0;
  *(v32 + 8) = 0;
  OUTLINED_FUNCTION_12_24();
  sub_1D560C358();
  OUTLINED_FUNCTION_12_24();
  v34 = MEMORY[0x1E69E7CC0];
  *(v3 + *(v33 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v34))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v35 + 144)) = v36;
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_100_15(*(v37 + 168));
  *(v3 + *(v38 + 176)) = 0;
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_100_15(*(v39 + 184));
  OUTLINED_FUNCTION_100_15(*(v40 + 192));
  OUTLINED_FUNCTION_100_15(*(v41 + 208));
  OUTLINED_FUNCTION_100_15(*(v42 + 216));
  OUTLINED_FUNCTION_54_0(v3 + *(v43 + 96), &v92);
  v98 = v9;
  LOBYTE(v99) = v89 & 1;
  v100 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71E8, &qword_1D5668488);
  sub_1D560C8B8();
  swift_endAccess();
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v44 + 152)) = v5;

  v45 = *(sub_1D4E5A1CC() + 48);

  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v46 + 160)) = v45;
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v47 + 200)) = 1;
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_54_0(v3 + *(v48 + 112), &v92);
  v98 = 0;
  v99 = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71F0, &qword_1D5668490);
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1D561C770;
  *(v49 + 32) = sub_1D560F018();
  *(v49 + 40) = sub_1D560F058();
  OUTLINED_FUNCTION_40_13();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v50);
  v51 = sub_1D56120C8();
  OUTLINED_FUNCTION_2_19(v51);

  sub_1D56120D8();
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v52 + 192)) = v53;

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_54_0(*(v3 + *(v54 + 160)) + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController__status, &v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_40_13();
  v55 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v55);
  OUTLINED_FUNCTION_37();
  sub_1D54BE3C4(v56, v57, v58, v59);
  OUTLINED_FUNCTION_97_5();
  sub_1D560C948();

  (*(v23 + 8))(v1, v21);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_356_1(*(v60 + 184));

  sub_1D54828B0();
  v61 = sub_1D560F028();
  if (v61)
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    OUTLINED_FUNCTION_40_13();
    v66 = swift_allocObject();
    OUTLINED_FUNCTION_88_4(v66);

    OUTLINED_FUNCTION_83_2();
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = v5;
    v68 = OUTLINED_FUNCTION_41_7();
    sub_1D4F405A0(v68, v69, v82, v70, v71);
    OUTLINED_FUNCTION_0_6();

    sub_1D54BE1FC(v82, &qword_1EC7EB710);
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_356_1(*(v72 + 168));
  }

  else
  {
    sub_1D54883CC(v61);
    sub_1D4E699CC();
    v91 = sub_1D5615738();
    OUTLINED_FUNCTION_40_13();
    v73 = swift_allocObject();
    OUTLINED_FUNCTION_52_18(v73);

    v96 = sub_1D54BDE44;
    v97 = v73;
    v92 = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_1D4E735E0;
    v95 = &block_descriptor_592;
    v74 = _Block_copy(&v92);

    sub_1D560C9A8();
    v98 = v34;
    OUTLINED_FUNCTION_211_5();
    sub_1D54B4BA4(v75, v76, MEMORY[0x1E69E7F70]);
    v77 = OUTLINED_FUNCTION_74_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
    OUTLINED_FUNCTION_72_29();
    sub_1D54BE3C4(v79, v80, &unk_1D563C2C0, v81);
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v83, v85, v74);
    _Block_release(v74);

    (*(v87 + 8))(v85, v88);
    (*(v84 + 8))(v83, v86);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D5479640()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v119 = v4;
  v121 = v5;
  sub_1D560C988();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v107 = v8 - v7;
  OUTLINED_FUNCTION_70_0();
  v108 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v106 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v105 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v104 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  OUTLINED_FUNCTION_4();
  v116 = v17;
  v117 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v115 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FE0, &qword_1D5667D90);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v112 = v21 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v111 = v24;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DB0, &qword_1D5643CE0);
  OUTLINED_FUNCTION_4();
  v120 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v110 = v27 - v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v113 = v30;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DC0, &qword_1D5643CF0);
  OUTLINED_FUNCTION_4();
  v32 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_68_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_245_3();
  OUTLINED_FUNCTION_12_24();
  v40 = *(v39 + 104);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  sub_1D4F39AB0(v2, v37, &qword_1EC7F1D98, &qword_1D5643CC8);
  sub_1D560C8B8();
  v45 = OUTLINED_FUNCTION_210();
  sub_1D54BE1FC(v45, v46);
  (*(v32 + 32))(v3 + v40, v1, v109);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v41);
  OUTLINED_FUNCTION_12_24();
  sub_1D560C358();
  OUTLINED_FUNCTION_12_24();
  v51 = MEMORY[0x1E69E7CC0];
  *(v3 + *(v50 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v51))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v52 + 144)) = v53;
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_100_15(*(v54 + 168));
  *(v3 + *(v55 + 176)) = 0;
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_100_15(*(v56 + 184));
  OUTLINED_FUNCTION_100_15(*(v57 + 192));
  OUTLINED_FUNCTION_100_15(*(v58 + 208));
  *(v3 + *(v59 + 216)) = 0;
  v60 = *(v120 + 16);
  v61 = v113;
  v60(v113, v121, v118);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_54_0(v3 + *(v62 + 96), v122);
  v60(v110, v113, v118);
  sub_1D560C8B8();
  v114 = *(v120 + 8);
  v114(v61, v118);
  swift_endAccess();
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v63 + 152)) = v119;

  v64 = *(sub_1D4E5A1CC() + 48);

  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v65 + 160)) = v64;
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v66 + 200)) = 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_54_0(v3 + *(v67 + 112), v122);
  sub_1D4F39AB0(v111, v112, &qword_1EC7F6FE0, &qword_1D5667D90);
  sub_1D560C8B8();
  sub_1D54BE1FC(v111, &qword_1EC7F6FE0);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1D561C770;
  *(v68 + 32) = sub_1D560F018();
  *(v68 + 40) = sub_1D560F058();
  OUTLINED_FUNCTION_40_13();
  v69 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v69);
  v70 = sub_1D56120C8();
  OUTLINED_FUNCTION_2_19(v70);
  OUTLINED_FUNCTION_178_5();

  sub_1D56120D8();
  OUTLINED_FUNCTION_12_24();
  *(v3 + *(v71 + 192)) = v72;

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_54_0(*(v3 + *(v73 + 160)) + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController__status, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_40_13();
  v74 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v74);
  OUTLINED_FUNCTION_37();
  sub_1D54BE3C4(v75, v76, v77, v78);
  sub_1D560C948();
  OUTLINED_FUNCTION_0_6();

  (*(v116 + 8))(v115, v117);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_356_1(*(v79 + 184));

  sub_1D5482D30();
  v80 = sub_1D560F028();
  if (v80)
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    OUTLINED_FUNCTION_40_13();
    v85 = swift_allocObject();
    OUTLINED_FUNCTION_88_4(v85);

    OUTLINED_FUNCTION_83_2();
    v86 = swift_allocObject();
    v86[2] = 0;
    v86[3] = 0;
    v86[4] = v119;
    v87 = OUTLINED_FUNCTION_41_7();
    sub_1D4F405A0(v87, v88, v104, v89, v90);
    OUTLINED_FUNCTION_1_35();

    v114(v121, v118);
    sub_1D54BE1FC(v104, &qword_1EC7EB710);
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_356_1(*(v91 + 168));
  }

  else
  {
    sub_1D54883CC(v80);
    sub_1D4E699CC();
    v92 = sub_1D5615738();
    OUTLINED_FUNCTION_40_13();
    v93 = swift_allocObject();
    OUTLINED_FUNCTION_52_18(v93);

    v122[4] = sub_1D54BB194;
    v122[5] = v93;
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 1107296256;
    v122[2] = sub_1D4E735E0;
    v122[3] = &block_descriptor_221;
    v94 = _Block_copy(v122);

    sub_1D560C9A8();
    OUTLINED_FUNCTION_211_5();
    sub_1D54B4BA4(v95, v96, MEMORY[0x1E69E7F70]);
    v97 = OUTLINED_FUNCTION_74_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v97, v98);
    OUTLINED_FUNCTION_72_29();
    sub_1D54BE3C4(v99, v100, &unk_1D563C2C0, v101);
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v105, v107, v94);
    _Block_release(v94);

    v114(v121, v118);
    v102 = OUTLINED_FUNCTION_130();
    v103(v102);
    (*(v106 + 8))(v105, v108);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D547A13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v73 = a1;
  v60 = sub_1D560C988();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560C9B8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70A8, &qword_1D5668050);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v12;
  v70 = sub_1D560E9B8();
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B0, &qword_1D5668058);
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B8, &qword_1D5668060);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(*v3 + 104);
  v26 = sub_1D560EA78();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1D4F39AB0(v24, v22, &qword_1EC7F70B8, &qword_1D5668060);
  sub_1D560C8B8();
  sub_1D54BE1FC(v24, &qword_1EC7F70B8);
  (*(v16 + 32))(v3 + v25, v18, v61);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v26);
  sub_1D560C358();
  v27 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v27))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v28;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v29 = v72;
  v30 = *(v72 + 16);
  v31 = v66;
  v32 = v70;
  v30(v66, v73, v70);
  swift_beginAccess();
  v30(v62, v31, v32);
  sub_1D560C8B8();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v66 = v34;
  (v34)(v31, v32);
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v71;

  v35 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v35;
  *(v3 + *(*v3 + 200)) = 1;
  v36 = v63;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v36, v64, &qword_1EC7F70A8, &qword_1D5668050);
  sub_1D560C8B8();
  sub_1D54BE1FC(v36, &qword_1EC7F70A8);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D561C770;
  *(v37 + 32) = sub_1D560F018();
  *(v37 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v38 = v67;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v39 = v69;
  v40 = sub_1D560C948();

  (*(v68 + 8))(v38, v39);
  *(v3 + *(*v3 + 184)) = v40;

  sub_1D5483228();
  v41 = sub_1D560F028();
  if (v41)
  {
    v42 = sub_1D5615458();
    v43 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();

    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v46 = sub_1D4F405A0(0, 0, v43, &unk_1D5668070, v45);

    (v66)(v73, v32);
    sub_1D54BE1FC(v43, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v46;
  }

  else
  {
    sub_1D54883CC(v41);
    sub_1D4E699CC();
    v47 = sub_1D5615738();
    v48 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BCBF4;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_368;
    v49 = _Block_copy(aBlock);

    v50 = v55;
    sub_1D560C9A8();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    v72 = v33;
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v51 = v57;
    v52 = v60;
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v50, v51, v49);
    _Block_release(v49);

    (v66)(v73, v70);
    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v50, v58);
  }

  return v3;
}

uint64_t sub_1D547AE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v73 = a1;
  v60 = sub_1D560C988();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560C9B8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7060, &qword_1D5667F68);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v12;
  v70 = sub_1D560DF88();
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7068, &qword_1D5667F70);
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7070, &qword_1D5667F78);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(*v3 + 104);
  v26 = sub_1D560E058();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1D4F39AB0(v24, v22, &qword_1EC7F7070, &qword_1D5667F78);
  sub_1D560C8B8();
  sub_1D54BE1FC(v24, &qword_1EC7F7070);
  (*(v16 + 32))(v3 + v25, v18, v61);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v26);
  sub_1D560C358();
  v27 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v27))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v28;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v29 = v72;
  v30 = *(v72 + 16);
  v31 = v66;
  v32 = v70;
  v30(v66, v73, v70);
  swift_beginAccess();
  v30(v62, v31, v32);
  sub_1D560C8B8();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v66 = v34;
  (v34)(v31, v32);
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v71;

  v35 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v35;
  *(v3 + *(*v3 + 200)) = 1;
  v36 = v63;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v36, v64, &qword_1EC7F7060, &qword_1D5667F68);
  sub_1D560C8B8();
  sub_1D54BE1FC(v36, &qword_1EC7F7060);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D561C770;
  *(v37 + 32) = sub_1D560F018();
  *(v37 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v38 = v67;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v39 = v69;
  v40 = sub_1D560C948();

  (*(v68 + 8))(v38, v39);
  *(v3 + *(*v3 + 184)) = v40;

  sub_1D5483228();
  v41 = sub_1D560F028();
  if (v41)
  {
    v42 = sub_1D5615458();
    v43 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();

    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v46 = sub_1D4F405A0(0, 0, v43, &unk_1D5667F88, v45);

    (v66)(v73, v32);
    sub_1D54BE1FC(v43, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v46;
  }

  else
  {
    sub_1D54883CC(v41);
    sub_1D4E699CC();
    v47 = sub_1D5615738();
    v48 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BC858;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_319;
    v49 = _Block_copy(aBlock);

    v50 = v55;
    sub_1D560C9A8();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    v72 = v33;
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v51 = v57;
    v52 = v60;
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v50, v51, v49);
    _Block_release(v49);

    (v66)(v73, v70);
    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v50, v58);
  }

  return v3;
}

uint64_t sub_1D547BB1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v69 = a1;
  v4 = sub_1D560C988();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D560C9B8();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v50 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  v11 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v50 - v13;
  v61 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v14 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v50 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F10, &qword_1D56679E8);
  v17 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - v24;
  v26 = *(*v3 + 104);
  v27 = type metadata accessor for MusicSuggestedSongsResponse(0);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
  sub_1D4F39AB0(v25, v23, &qword_1EC7F6F38, &unk_1D5667A08);
  sub_1D560C8B8();
  sub_1D54BE1FC(v25, &qword_1EC7F6F38);
  (*(v17 + 32))(v3 + v26, v19, v58);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v27);
  sub_1D560C358();
  v28 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v28))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v29;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v30 = v59;
  sub_1D54ACBB0(v69, v59);
  swift_beginAccess();
  sub_1D54ACBB0(v30, v60);
  sub_1D560C8B8();
  sub_1D54B4B54();
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v68;

  v31 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v31;
  *(v3 + *(*v3 + 200)) = 1;
  v32 = v62;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v32, v63, &qword_1EC7F6EE8, &qword_1D5667968);
  sub_1D560C8B8();
  sub_1D54BE1FC(v32, &qword_1EC7F6EE8);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D561C770;
  *(v33 + 32) = sub_1D560F018();
  *(v33 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v34 = v65;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v35 = v67;
  v36 = sub_1D560C948();

  (*(v66 + 8))(v34, v35);
  *(v3 + *(*v3 + 184)) = v36;

  sub_1D548364C();
  v37 = sub_1D560F028();
  if (v37)
  {
    v38 = sub_1D5615458();
    v39 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v38);
    v40 = swift_allocObject();
    swift_weakInit();

    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v40;
    v42 = sub_1D4F405A0(0, 0, v39, &unk_1D5667A20, v41);

    sub_1D54B4B54();
    sub_1D54BE1FC(v39, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v42;
  }

  else
  {
    sub_1D54883CC(v37);
    sub_1D4E699CC();
    v67 = sub_1D5615738();
    v43 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54B6B1C;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_30;
    v44 = _Block_copy(aBlock);

    v45 = v52;
    sub_1D560C9A8();
    v70 = v28;
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v46 = v54;
    v47 = v57;
    sub_1D56159E8();
    v48 = v67;
    MEMORY[0x1DA6EB530](0, v45, v46, v44);
    _Block_release(v44);

    sub_1D54B4B54();
    (*(v56 + 8))(v46, v47);
    (*(v53 + 8))(v45, v55);
  }

  return v3;
}

uint64_t sub_1D547C7A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v5 = sub_1D560C988();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D560C9B8();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7018, &qword_1D5667E70);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  v23 = *(*v2 + 104);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  aBlock = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7020, &qword_1D5667E78);
  sub_1D560C8B8();
  (*(v20 + 32))(v2 + v23, v22, v19);
  v24 = (v3 + *(*v3 + 120));
  v24[3] = 0u;
  v24[4] = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  *v24 = 0u;
  sub_1D560C358();
  v25 = MEMORY[0x1E69E7CC0];
  *(v2 + *(*v2 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v25))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + *(*v2 + 144)) = v26;
  *(v2 + *(*v2 + 168)) = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 208)) = 0;
  *(v2 + *(*v2 + 216)) = 0;
  sub_1D54ACBB0(v53, v18);
  swift_beginAccess();
  sub_1D54ACBB0(v18, v16);
  sub_1D560C8B8();
  sub_1D54B4B54();
  swift_endAccess();
  *(v2 + *(*v2 + 152)) = a2;

  v27 = *(sub_1D4E5A1CC() + 48);

  *(v2 + *(*v2 + 160)) = v27;
  *(v2 + *(*v2 + 200)) = 1;
  swift_beginAccess();
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  aBlock = 0u;
  v59 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7028, &qword_1D5667E80);
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D561C770;
  *(v28 + 32) = sub_1D560F018();
  *(v28 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v2 + *(*v2 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v29 = v52;
  v30 = sub_1D560C948();

  (*(v51 + 8))(v12, v29);
  *(v3 + *(*v3 + 184)) = v30;

  sub_1D5483AE0();
  v31 = sub_1D560F028();
  if (v31)
  {
    v32 = sub_1D5615458();
    v33 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v32);
    v34 = swift_allocObject();
    swift_weakInit();

    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v34;
    v36 = sub_1D4F405A0(0, 0, v33, &unk_1D5667E90, v35);

    sub_1D54B4B54();
    sub_1D54BE1FC(v33, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v36;
  }

  else
  {
    sub_1D54883CC(v31);
    sub_1D4E699CC();
    v52 = sub_1D5615738();
    v37 = swift_allocObject();
    swift_weakInit();

    *&v56 = sub_1D54BB544;
    *(&v56 + 1) = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_1D4E735E0;
    *(&v55 + 1) = &block_descriptor_270;
    v38 = _Block_copy(&aBlock);

    v39 = v45;
    sub_1D560C9A8();
    v60 = v25;
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v40 = v47;
    v41 = v50;
    sub_1D56159E8();
    v42 = v52;
    MEMORY[0x1DA6EB530](0, v39, v40, v38);
    _Block_release(v38);

    sub_1D54B4B54();
    (*(v49 + 8))(v40, v41);
    (*(v46 + 8))(v39, v48);
  }

  return v3;
}

uint64_t sub_1D547D2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v73 = a1;
  v60 = sub_1D560C988();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D560C9B8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F98, &qword_1D5667C98);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F19B0, &unk_1D561D170);
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F80, &unk_1D5667C80);
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F90, &qword_1D5667C90);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(*v3 + 104);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  sub_1D4F39AB0(v24, v22, &qword_1EC7F6F90, &qword_1D5667C90);
  sub_1D560C8B8();
  sub_1D54BE1FC(v24, &qword_1EC7F6F90);
  (*(v16 + 32))(v3 + v25, v18, v61);
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 120), 1, 1, v26);
  sub_1D560C358();
  v27 = MEMORY[0x1E69E7CC0];
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(v27))
  {
    sub_1D5011990(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + *(*v3 + 144)) = v28;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  v29 = v72;
  v30 = *(v72 + 16);
  v31 = v66;
  v32 = v70;
  v30(v66, v73, v70);
  swift_beginAccess();
  v30(v62, v31, v32);
  sub_1D560C8B8();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v66 = v34;
  (v34)(v31, v32);
  swift_endAccess();
  *(v3 + *(*v3 + 152)) = v71;

  v35 = *(sub_1D4E5A1CC() + 48);

  *(v3 + *(*v3 + 160)) = v35;
  *(v3 + *(*v3 + 200)) = 1;
  v36 = v63;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1D4F39AB0(v36, v64, &qword_1EC7F6F98, &qword_1D5667C98);
  sub_1D560C8B8();
  sub_1D54BE1FC(v36, &qword_1EC7F6F98);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D561C770;
  *(v37 + 32) = sub_1D560F018();
  *(v37 + 40) = sub_1D560F058();
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v3 + *(*v3 + 192)) = sub_1D56120D8();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v38 = v67;
  sub_1D560C8C8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1D54BE3C4(&qword_1EDD54440, &qword_1EC7F1DD0, &qword_1D5643DF0, MEMORY[0x1E695C068]);
  v39 = v69;
  v40 = sub_1D560C948();

  (*(v68 + 8))(v38, v39);
  *(v3 + *(*v3 + 184)) = v40;

  sub_1D5483F74();
  v41 = sub_1D560F028();
  if (v41)
  {
    v42 = sub_1D5615458();
    v43 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();

    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v46 = sub_1D4F405A0(0, 0, v43, &unk_1D5667CA8, v45);

    (v66)(v73, v32);
    sub_1D54BE1FC(v43, &qword_1EC7EB710);
    *(v3 + *(*v3 + 168)) = v46;
  }

  else
  {
    sub_1D54883CC(v41);
    sub_1D4E699CC();
    v47 = sub_1D5615738();
    v48 = swift_allocObject();
    swift_weakInit();

    aBlock[4] = sub_1D54BADE4;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_172;
    v49 = _Block_copy(aBlock);

    v50 = v55;
    sub_1D560C9A8();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D54B4BA4(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
    v72 = v33;
    sub_1D54BE3C4(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
    v51 = v57;
    v52 = v60;
    sub_1D56159E8();
    MEMORY[0x1DA6EB530](0, v50, v51, v49);
    _Block_release(v49);

    (v66)(v73, v70);
    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v50, v58);
  }

  return v3;
}

uint64_t sub_1D547DFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7178, &qword_1D56682F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v5 = sub_1D560E8E8();
  v7[2] = v5;
  v7[3] = &protocol witness table for MusicPersonalRecommendationsRequest;
  swift_getKeyPath();
  v7[0] = v5;
  v7[1] = &protocol witness table for MusicPersonalRecommendationsRequest;
  swift_getKeyPath();
  sub_1D4F39AB0(a1, v4, &qword_1EC7F7178, &qword_1D56682F8);

  sub_1D560C908();
  return sub_1D54BE1FC(a1, &qword_1EC7F7178);
}

uint64_t sub_1D547E0C0(uint64_t a1, char a2)
{
  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D547E154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70F0, &qword_1D5668130);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v5 = sub_1D560DF18();
  v7[2] = v5;
  v7[3] = &protocol witness table for MusicCatalogSearchRequest;
  swift_getKeyPath();
  v7[0] = v5;
  v7[1] = &protocol witness table for MusicCatalogSearchRequest;
  swift_getKeyPath();
  sub_1D4F39AB0(a1, v4, &qword_1EC7F70F0, &qword_1D5668130);

  sub_1D560C908();
  return sub_1D54BE1FC(a1, &qword_1EC7F70F0);
}

uint64_t sub_1D547E270(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71E8, &qword_1D5668488);
  sub_1D54BE3C4(qword_1EDD5BFD0, &qword_1EC7F71E8, &qword_1D5668488, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D547E348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70A8, &qword_1D5668050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v5 = sub_1D560E9B8();
  v7[2] = v5;
  v7[3] = &protocol witness table for MusicCatalogSearchSuggestionsRequest;
  swift_getKeyPath();
  v7[0] = v5;
  v7[1] = &protocol witness table for MusicCatalogSearchSuggestionsRequest;
  swift_getKeyPath();
  sub_1D4F39AB0(a1, v4, &qword_1EC7F70A8, &qword_1D5668050);

  sub_1D560C908();
  return sub_1D54BE1FC(a1, &qword_1EC7F70A8);
}

uint64_t sub_1D547E464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7060, &qword_1D5667F68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v5 = sub_1D560DF88();
  v7[2] = v5;
  v7[3] = &protocol witness table for MusicLibrarySearchRequest;
  swift_getKeyPath();
  v7[0] = v5;
  v7[1] = &protocol witness table for MusicLibrarySearchRequest;
  swift_getKeyPath();
  sub_1D4F39AB0(a1, v4, &qword_1EC7F7060, &qword_1D5667F68);

  sub_1D560C908();
  return sub_1D54BE1FC(a1, &qword_1EC7F7060);
}

uint64_t sub_1D547E580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v5 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v7[2] = v5;
  v7[3] = &protocol witness table for MusicSuggestedSongsRequest;
  swift_getKeyPath();
  v7[0] = v5;
  v7[1] = &protocol witness table for MusicSuggestedSongsRequest;
  swift_getKeyPath();
  sub_1D4F39AB0(a1, v4, &qword_1EC7F6EE8, &qword_1D5667968);

  sub_1D560C908();
  return sub_1D54BE1FC(a1, &qword_1EC7F6EE8);
}

uint64_t sub_1D547E69C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for MusicCatalogInternalSearchRequest(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D547E738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_40_13();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_59(a1 + 16, v18);
  Strong = swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();
  OUTLINED_FUNCTION_1_35();

  sub_1D56153B8();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_83_2();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = Strong;
  v10[3] = v11;
  v10[4] = v8;

  OUTLINED_FUNCTION_224_5();
  sub_1D51ECB60(v12, v13, v14, v15, v16);
}

uint64_t sub_1D547E860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547E8F8, v5, v4);
}

uint64_t sub_1D547E8F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D5488450();
  }

  else
  {

    v6 = OUTLINED_FUNCTION_6_141();

    return v7(v6);
  }
}

uint64_t sub_1D547E9C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_83_21();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  OUTLINED_FUNCTION_76_19();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D54BE470, v6, v5);
}

uint64_t sub_1D547EAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547EB8C, v5, v4);
}

uint64_t sub_1D547EB8C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D548854C();
  }

  else
  {

    v6 = OUTLINED_FUNCTION_6_141();

    return v7(v6);
  }
}

uint64_t sub_1D547EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547ECF0, v5, v4);
}

uint64_t sub_1D547ECF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D5488648();
  }

  else
  {

    v6 = OUTLINED_FUNCTION_6_141();

    return v7(v6);
  }
}

uint64_t sub_1D547EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547EE54, v5, v4);
}

uint64_t sub_1D547EE54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D5488744();
  }

  else
  {

    v6 = OUTLINED_FUNCTION_6_141();

    return v7(v6);
  }
}

uint64_t sub_1D547EF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547EFB8, v5, v4);
}

uint64_t sub_1D547EFB8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D5488840();
  }

  else
  {

    v6 = OUTLINED_FUNCTION_6_141();

    return v7(v6);
  }
}

uint64_t sub_1D547F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1D56153C8();
  v3[6] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D547F11C, v5, v4);
}