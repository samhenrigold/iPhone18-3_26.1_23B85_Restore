uint64_t sub_1D4ED3750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_1D4ED37A4()
{
  result = qword_1EC7EA7B8;
  if (!qword_1EC7EA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7B0, &qword_1D5623B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA7B8);
  }

  return result;
}

uint64_t sub_1D4ED3808(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D4ED3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  (*(v34 + 16))(&a9 - v33, v23);
  (*(v28 + 16))(v31, v27, v25);

  OUTLINED_FUNCTION_19_9();
  sub_1D4ED182C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ED39C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D4ED3A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2)
{

  return sub_1D4ED3750(a1, a2, v2, v3);
}

uint64_t MusicSiriItemRequest.init(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for MusicSiriItemRequest(0);

  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  sub_1D4ED4004(a1, type metadata accessor for MusicSiriRepresentation);
  *(a2 + *(v6 + 24)) = 4;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D4ED3B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MusicSiriItemRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a4 + *(v8 + 24)) = 4;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicSiriItemRequest.init(siriAssetInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MusicSiriItemRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a3 + *(v6 + 24)) = 4;
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for MusicSiriItemRequest.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicSiriItemRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_85_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  type metadata accessor for MusicSiriItemRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v11 = type metadata accessor for MusicRequestConfiguration(0);
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v12 ^ 1u, 1, v11);
  sub_1D4E69970(v10, v8, &qword_1EC7EA838, &unk_1D561CB10);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
    {
      sub_1D4E50004(v8, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4EF228C(v8, a1);
  }

  return sub_1D4E50004(v10, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D4ED3E48(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D4EF19F4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicSiriItemRequest.configuration.setter();
}

uint64_t MusicSiriItemRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_5_10();
  sub_1D4EF1A64(v5, v6, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_4_9();
  sub_1D4ED4004(v0, v7);
  v8 = type metadata accessor for MusicSiriItemRequest(0);
  return (*(v2 + 40))(v0 + *(v8 + 20), v4, v1);
}

uint64_t sub_1D4ED4004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

void (*MusicSiriItemRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicSiriItemRequest.configuration.getter(v10);
  return sub_1D4ED4150;
}

void sub_1D4ED4150(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_93();
    sub_1D4EF19F4(v6, v7);
    OUTLINED_FUNCTION_5_10();
    sub_1D4EF1A64(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4ED4004(v3, type metadata accessor for MusicRequestConfiguration);
    v10 = type metadata accessor for MusicSiriItemRequest(0);
    v11 = OUTLINED_FUNCTION_148_0(v10);
    v12(v11);
    sub_1D4ED4004(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    sub_1D4EF1A64(v13, v14, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_4_9();
    sub_1D4ED4004(v4, v15);
    v16 = type metadata accessor for MusicSiriItemRequest(0);
    v17 = OUTLINED_FUNCTION_148_0(v16);
    v18(v17);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicSiriItemRequest.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_166();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t MusicSiriItemRequest.source.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_166();
  *(v1 + v4) = v2;
  return result;
}

uint64_t MusicSiriItemRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  OUTLINED_FUNCTION_22(v3);
  v1[4] = OUTLINED_FUNCTION_127();
  v4 = type metadata accessor for MusicSiriItemResponse(0);
  OUTLINED_FUNCTION_22(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for MusicSiriItemRequest.Kind(0);
  v1[8] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[9] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4ED4434()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0x15uLL);
  v4 = v3;
  v6 = v5;
  *(v0 + 80) = v5;
  sub_1D4EF19F4(v2, v1);
  OUTLINED_FUNCTION_70();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 72);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_117_1(v8, *(v0 + 32));
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 120) = v9;
      *v9 = v10;
      v9[1] = sub_1D4ED4870;
      v11 = *(v0 + 48);
      v12 = *(v0 + 32);

      return sub_1D4ED58F8(v11, v12, v4, v6);
    }

    else
    {
      v20 = *v8;
      *(v0 + 136) = *v8;
      v21 = *(v8 + 8);
      *(v0 + 144) = v21;
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 152) = v22;
      *v22 = v23;
      v22[1] = sub_1D4ED4A20;
      v24 = *(v0 + 40);

      return sub_1D4ED6644(v24, v20, v21, v4, v6);
    }
  }

  else
  {
    v14 = *v8;
    *(v0 + 88) = *v8;
    v15 = *(v8 + 8);
    *(v0 + 96) = v15;
    v16 = *(v8 + 16);
    *(v0 + 168) = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 104) = v17;
    *v17 = v18;
    v17[1] = sub_1D4ED4688;
    v19 = *(v0 + 56);

    return sub_1D4ED4D60(v19, v14, v15, v16, v4, v6);
  }
}

uint64_t sub_1D4ED4688()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  v5 = *(v2 + 168);
  OUTLINED_FUNCTION_23_0();
  *v6 = v4;
  *(v7 + 112) = v0;

  v8 = OUTLINED_FUNCTION_98();
  sub_1D4EF1A4C(v8, v9, v5);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4ED47DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v1, v2);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4ED4870()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED4984()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_39_6(*(v0 + 32));
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v1, v2);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4ED4A20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED4B34()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  sub_1D4E55E1C(*(v0 + 136), *(v0 + 144));
  OUTLINED_FUNCTION_41_10();
  sub_1D4EF228C(v1, v2);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4ED4BD0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D4ED4C50()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_39_6(*(v0 + 32));
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D4ED4CD8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  sub_1D4E55E1C(*(v0 + 136), *(v0 + 144));
  OUTLINED_FUNCTION_150_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D4ED4D60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 170) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v7 + 112) = swift_task_alloc();
  v8 = sub_1D560C0A8();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED4EB4, 0, 0);
}

uint64_t sub_1D4ED4EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = *(v24 + 48);
  v28 = v27;
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
    v28 = *(v24 + 48);
  }

  v29 = *(v24 + 40);
  v30 = *(v24 + 170);
  v31 = sub_1D560C758();
  *(v24 + 144) = __swift_project_value_buffer(v31, qword_1EC87C330);

  sub_1D4EF21F8(v29, v28, v30);
  v32 = sub_1D560C738();
  v33 = sub_1D56156E8();

  sub_1D4EF1A4C(v29, v28, v30);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v24 + 40);
    v35 = OUTLINED_FUNCTION_144();
    a12 = swift_slowAlloc();
    *v35 = 136446466;
    v36 = OUTLINED_FUNCTION_66();
    *(v35 + 4) = sub_1D4E6835C(v36, v37, v38);
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_1D4E6835C(v34, v27, &a12);
    _os_log_impl(&dword_1D4E3F000, v32, v33, "[%{public}s] 􀀀􀀀􀀁 Start getting item for identifier: %{public}s.", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v40 = *(v24 + 112);
  v39 = *(v24 + 120);
  sub_1D560C028();
  if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
  {
    sub_1D4E50004(*(v24 + 112), &unk_1EC7E9CA8, &unk_1D561D1D0);
    v41 = sub_1D4EF211C();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v41);
    OUTLINED_FUNCTION_125(v42, 3);

    v43 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_146_1();

    if (OUTLINED_FUNCTION_152_0())
    {
      v57 = *(v24 + 56);
      v56 = *(v24 + 64);
      v58 = OUTLINED_FUNCTION_142();
      v59 = OUTLINED_FUNCTION_138_0();
      a12 = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_1D4E6835C(v57, v56, &a12);
      _os_log_impl(&dword_1D4E3F000, v43, v39, "[%{public}s] 􀀁􀀀􀀀 Finish.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v44 = *(v24 + 170);
    (*(*(v24 + 128) + 32))(*(v24 + 136), *(v24 + 112), *(v24 + 120));
    v45 = *(v24 + 40);
    if (v44)
    {
      if (v44 == 1)
      {
        v46 = (v24 + 80);
        sub_1D536E6A0(v45, v27, (v24 + 168), *(v24 + 80));
      }

      else
      {
        v46 = (v24 + 96);
        sub_1D55C4750();
      }
    }

    else
    {
      v46 = (v24 + 88);
      sub_1D536DB74(v45, v27, (v24 + 168), *(v24 + 88));
    }

    OUTLINED_FUNCTION_117_1(*v46, *(v24 + 104));
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v24 + 152) = v47;
    *v47 = v48;
    v47[1] = sub_1D4ED5554;
    OUTLINED_FUNCTION_63_0();

    return sub_1D4ED58F8(v49, v50, v51, v52);
  }
}

uint64_t sub_1D4ED5554()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED564C()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_39_6(*(v0 + 104));
  v1 = OUTLINED_FUNCTION_128();
  v2(v1);

  v3 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v4 = OUTLINED_FUNCTION_142();
    v12 = OUTLINED_FUNCTION_138_0();
    *v4 = 136446210;
    v5 = OUTLINED_FUNCTION_93();
    *(v4 + 4) = sub_1D4E6835C(v5, v6, v7);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v8, v9, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_22_1();

  return v10();
}

uint64_t sub_1D4ED57A0()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_39_6(*(v0 + 104));
  v1 = OUTLINED_FUNCTION_128();
  v2(v1);

  v3 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v4 = OUTLINED_FUNCTION_142();
    v12 = OUTLINED_FUNCTION_138_0();
    *v4 = 136446210;
    v5 = OUTLINED_FUNCTION_93();
    *(v4 + 4) = sub_1D4E6835C(v5, v6, v7);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v8, v9, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t sub_1D4ED58F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  type metadata accessor for MusicRequestConfiguration(0);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v5[9] = swift_task_alloc();
  v6 = sub_1D560D9A8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for GenericMusicItem(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED5A68, 0, 0);
}

uint64_t sub_1D4ED5A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v23 = *(v20 + 32);
  if (*(v23 + 32))
  {
    v24 = *(v20 + 64);
    v25 = *(v23 + 24);
    MusicSiriItemRequest.configuration.getter(v24);
    v26 = *v24;
    *(v20 + 128) = *v24;
    v27 = *(v24 + 8);
    *(v20 + 136) = v27;
    v28 = *(v24 + 16);
    *(v20 + 186) = v28;
    sub_1D4EF2264(v26, v27, v28);
    OUTLINED_FUNCTION_4_9();
    sub_1D4ED4004(v24, v29);
    if (v28 == 255)
    {
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
      }

      v48 = sub_1D560C758();
      __swift_project_value_buffer(v48, qword_1EC87C330);

      v49 = sub_1D560C738();
      v50 = sub_1D56156C8();

      if (OUTLINED_FUNCTION_165_0())
      {
        v52 = *(v20 + 40);
        v51 = *(v20 + 48);
        v53 = OUTLINED_FUNCTION_142();
        v54 = OUTLINED_FUNCTION_138_0();
        a9 = v54;
        *v53 = 136446210;
        *(v53 + 4) = sub_1D4E6835C(v52, v51, &a9);
        _os_log_impl(&dword_1D4E3F000, v49, v50, "[%{public}s] The configuration's account was set to nil. Treating as item not found.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_114_0();
        OUTLINED_FUNCTION_122();
      }

      v55 = sub_1D4EF211C();
      v56 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v55);
      *v57 = 0;
      swift_willThrow();
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
      }

      __swift_project_value_buffer(v48, qword_1EC87C330);

      v58 = v56;
      v59 = sub_1D560C738();
      sub_1D56156C8();

      if (OUTLINED_FUNCTION_152_0())
      {
        v60 = *(v20 + 40);
        OUTLINED_FUNCTION_144();
        a9 = OUTLINED_FUNCTION_119_0();
        *v48 = 136446466;
        v61 = OUTLINED_FUNCTION_66();
        v64 = sub_1D4E6835C(v61, v62, v63);
        OUTLINED_FUNCTION_84_0(v64);
        *(v20 + 16) = v56;
        v65 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        v66 = sub_1D5614DB8();
        sub_1D4E6835C(v66, v67, &a9);
        OUTLINED_FUNCTION_145_3();

        *(v48 + 14) = v60;
        OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v68, v69, "[%{public}s] Error while trying to fetch item: %{public}s.");
        OUTLINED_FUNCTION_123_1();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_118();
      }

      OUTLINED_FUNCTION_133_0(v70);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
    }

    else
    {
      sub_1D560F0D8();
      *(v20 + 160) = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
      *(v20 + 184) = v25;
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v20 + 168) = v30;
      *v30 = v31;
      v30[1] = sub_1D4ED60F4;
      OUTLINED_FUNCTION_134();

      return sub_1D4EE1848();
    }
  }

  else
  {
    v35 = *(v20 + 72);
    v34 = *(v20 + 80);
    type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
    sub_1D560D5E8();
    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {
      v37 = *(v20 + 72);
      v36 = *(v20 + 80);
      sub_1D560D828();
      if (__swift_getEnumTagSinglePayload(v37, 1, v36) != 1)
      {
        sub_1D4E50004(*(v20 + 72), &qword_1EC7F6DF0, &qword_1D561D1E0);
      }
    }

    else
    {
      (*(*(v20 + 88) + 32))(*(v20 + 96), *(v20 + 72), *(v20 + 80));
    }

    v38 = *(v20 + 56);
    OUTLINED_FUNCTION_166();
    *(v20 + 185) = *(v38 + v39);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v20 + 144) = v40;
    *v40 = v41;
    v40[1] = sub_1D4ED5F24;
    OUTLINED_FUNCTION_134();

    return sub_1D4ED7838(v42, v43, v44, v45, v46);
  }
}

uint64_t sub_1D4ED5F24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED601C()
{
  OUTLINED_FUNCTION_160();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v3 = v0[14];
  v2 = v0[15];
  OUTLINED_FUNCTION_92();
  sub_1D4EF228C(v3, v2);
  sub_1D4EF228C(v2, v1);

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D4ED60F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED61EC()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 186);

  v3 = OUTLINED_FUNCTION_71();
  sub_1D4EF2278(v3, v4, v2);
  v5 = *(v0 + 120);
  OUTLINED_FUNCTION_92();
  sub_1D4EF228C(v2, v5);
  sub_1D4EF228C(v5, v1);

  OUTLINED_FUNCTION_22_1();

  return v6();
}

uint64_t sub_1D4ED62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  (*(v20[11] + 8))(v20[12], v20[10]);
  v23 = v20[19];
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
  }

  v24 = v20[6];
  v25 = sub_1D560C758();
  __swift_project_value_buffer(v25, qword_1EC87C330);

  v26 = v23;
  v27 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v28 = v20[5];
    OUTLINED_FUNCTION_144();
    a9 = OUTLINED_FUNCTION_119_0();
    *v24 = 136446466;
    v29 = OUTLINED_FUNCTION_66();
    v32 = sub_1D4E6835C(v29, v30, v31);
    OUTLINED_FUNCTION_84_0(v32);
    v20[2] = v23;
    v33 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v34 = sub_1D5614DB8();
    sub_1D4E6835C(v34, v35, &a9);
    OUTLINED_FUNCTION_145_3();

    *(v24 + 14) = v28;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v36, v37, "[%{public}s] Error while trying to fetch item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_133_0(v38);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_1D4ED6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v23 = *(v20 + 186);

  v24 = OUTLINED_FUNCTION_71();
  sub_1D4EF2278(v24, v25, v23);
  v26 = *(v20 + 176);
  if (qword_1EC7E90D8 != -1)
  {
    OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
  }

  v27 = *(v20 + 48);
  v28 = sub_1D560C758();
  __swift_project_value_buffer(v28, qword_1EC87C330);

  v29 = v26;
  v30 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v31 = *(v20 + 40);
    OUTLINED_FUNCTION_144();
    a9 = OUTLINED_FUNCTION_119_0();
    *v27 = 136446466;
    v32 = OUTLINED_FUNCTION_66();
    v35 = sub_1D4E6835C(v32, v33, v34);
    OUTLINED_FUNCTION_84_0(v35);
    *(v20 + 16) = v26;
    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v37 = sub_1D5614DB8();
    sub_1D4E6835C(v37, v38, &a9);
    OUTLINED_FUNCTION_145_3();

    *(v27 + 14) = v31;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v39, v40, "[%{public}s] Error while trying to fetch item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_133_0(v41);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1D4ED6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  type metadata accessor for MusicRequestConfiguration(0);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for GenericMusicItem(0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB88, &qword_1D561D738);
  v6[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = sub_1D5610088();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  v6[25] = swift_task_alloc();
  v9 = sub_1D5612478();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = sub_1D560CD48();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4ED6910, 0, 0);
}

uint64_t sub_1D4ED72C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v24 = v20[15];
  v23 = v20[16];
  OUTLINED_FUNCTION_101();
  sub_1D4ED4004(v23, v25);
  v26 = OUTLINED_FUNCTION_70();
  v27(v26);
  v28 = OUTLINED_FUNCTION_159();
  v29(v28);
  sub_1D4EF228C(v24, v23);
  sub_1D4EF228C(v20[16], v20[7]);

  v30 = sub_1D560C738();
  v31 = sub_1D56156E8();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = v20[10];
    v32 = v20[11];
    v34 = OUTLINED_FUNCTION_142();
    v35 = OUTLINED_FUNCTION_138_0();
    a9 = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_1D4E6835C(v33, v32, &a9);
    OUTLINED_FUNCTION_151_0(&dword_1D4E3F000, v36, v31, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_114_0();
  }

  OUTLINED_FUNCTION_137_0();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1D4ED75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_100();
  a20 = v22;
  v25 = v22[18];
  OUTLINED_FUNCTION_101();
  sub_1D4ED4004(v26, v27);
  v28 = OUTLINED_FUNCTION_70();
  v29(v28);
  v30 = OUTLINED_FUNCTION_159();
  v31(v30);
  v32 = v22[36];
  OUTLINED_FUNCTION_156();

  v33 = v32;
  v34 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v35 = v22[10];
    OUTLINED_FUNCTION_144();
    a10 = OUTLINED_FUNCTION_119_0();
    *v25 = 136446466;
    v36 = OUTLINED_FUNCTION_66();
    v39 = sub_1D4E6835C(v36, v37, v38);
    OUTLINED_FUNCTION_84_0(v39);
    v22[6] = v32;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v41 = sub_1D5614DB8();
    sub_1D4E6835C(v41, v42, &a10);
    OUTLINED_FUNCTION_145_3();

    *(v25 + 14) = v35;
    OUTLINED_FUNCTION_87_1(&dword_1D4E3F000, v43, v44, "[%{public}s] Error while trying to decoding item: %{public}s.");
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  OUTLINED_FUNCTION_156();
  swift_willThrow();

  v45 = sub_1D560C738();
  v46 = sub_1D56156E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_142();
    v48 = OUTLINED_FUNCTION_138_0();
    a10 = v48;
    *v47 = 136446210;
    v49 = OUTLINED_FUNCTION_66();
    *(v47 + 4) = sub_1D4E6835C(v49, v50, v51);
    OUTLINED_FUNCTION_162(&dword_1D4E3F000, v52, v53, "[%{public}s] 􀀁􀀀􀀀 Finish.");
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_136_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, v32, a10, a11, a12, a13, a14);
}

uint64_t sub_1D4ED7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = type metadata accessor for UploadedVideo(0);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for UploadedAudio(0);
  *(v6 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = type metadata accessor for TVShow(0);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = type metadata accessor for TVSeason(0);
  *(v6 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for TVEpisode(0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = type metadata accessor for GenericMusicItem(0);
  *(v6 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  *(v6 + 192) = swift_task_alloc();
  v8 = sub_1D5614408();
  *(v6 + 200) = v8;
  *(v6 + 208) = *(v8 - 8);
  *(v6 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  *(v6 + 224) = swift_task_alloc();
  v9 = sub_1D5613838();
  *(v6 + 232) = v9;
  *(v6 + 240) = *(v9 - 8);
  *(v6 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210);
  *(v6 + 256) = swift_task_alloc();
  v10 = sub_1D560F8B8();
  *(v6 + 264) = v10;
  *(v6 + 272) = *(v10 - 8);
  *(v6 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  *(v6 + 288) = swift_task_alloc();
  v11 = sub_1D5614B68();
  *(v6 + 296) = v11;
  *(v6 + 304) = *(v11 - 8);
  *(v6 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  *(v6 + 320) = swift_task_alloc();
  v12 = sub_1D5614898();
  *(v6 + 328) = v12;
  *(v6 + 336) = *(v12 - 8);
  *(v6 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  *(v6 + 352) = swift_task_alloc();
  v13 = sub_1D560EEA8();
  *(v6 + 360) = v13;
  *(v6 + 368) = *(v13 - 8);
  *(v6 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = type metadata accessor for MusicMovie(0);
  *(v6 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  *(v6 + 408) = swift_task_alloc();
  v14 = sub_1D5613C48();
  *(v6 + 416) = v14;
  *(v6 + 424) = *(v14 - 8);
  *(v6 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA998, &qword_1D561D228);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = type metadata accessor for EditorialItem(0);
  *(v6 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  *(v6 + 464) = swift_task_alloc();
  v15 = sub_1D56141F8();
  *(v6 + 472) = v15;
  *(v6 + 480) = *(v15 - 8);
  *(v6 + 488) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = type metadata accessor for Composer(0);
  *(v6 + 512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  *(v6 + 520) = swift_task_alloc();
  v16 = sub_1D5613EF8();
  *(v6 + 528) = v16;
  *(v6 + 536) = *(v16 - 8);
  *(v6 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  *(v6 + 552) = swift_task_alloc();
  v17 = sub_1D5613AF8();
  *(v6 + 560) = v17;
  *(v6 + 568) = *(v17 - 8);
  *(v6 + 576) = swift_task_alloc();
  v18 = sub_1D560D9A8();
  *(v6 + 584) = v18;
  *(v6 + 592) = *(v18 - 8);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 1096) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1D4ED82A0, 0, 0);
}

uint64_t sub_1D4ED82A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v49 = v48[74];
  __swift_storeEnumTagSinglePayload(v48[79], 1, 1, v48[22]);
  v50 = OUTLINED_FUNCTION_159();
  v51(v50);
  sub_1D560D908();
  sub_1D4EF1A64(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
  v52 = OUTLINED_FUNCTION_40_8();
  v53 = *(v49 + 8);
  v54 = OUTLINED_FUNCTION_70();
  v53(v54);
  if (v52)
  {
    v55 = OUTLINED_FUNCTION_108_2();
    v53(v55);
    v48[80] = swift_getKeyPath();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v48[81] = v56;
    *v56 = v57;
    v56[1] = sub_1D4ED9448;
    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_56();

    return sub_1D4EE5DC0(v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    sub_1D560D938();
    v65 = OUTLINED_FUNCTION_40_8();
    v66 = OUTLINED_FUNCTION_70();
    v53(v66);
    if (v65)
    {
      v67 = OUTLINED_FUNCTION_120_0();
      v53(v67);
      v48[83] = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      v48[84] = v68;
      *v68 = v69;
      v68[1] = sub_1D4ED9978;
      OUTLINED_FUNCTION_15_12();
      OUTLINED_FUNCTION_56();

      return sub_1D4EE6318(v70, v71, v72, v73, v74);
    }

    else
    {
      if (qword_1EDD53C80 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_126_0();
      if (OUTLINED_FUNCTION_52_4(v76, qword_1EDD53C88))
      {
        v77 = OUTLINED_FUNCTION_108_2();
        v53(v77);
        v48[86] = swift_getKeyPath();
        swift_task_alloc();
        OUTLINED_FUNCTION_58();
        v48[87] = v78;
        *v78 = v79;
        v78[1] = sub_1D4ED9EA8;
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_56();

        return sub_1D4EE6870(v80, v81, v82, v83, v84);
      }

      else
      {
        OUTLINED_FUNCTION_45_7();
        sub_1D560D948();
        v86 = OUTLINED_FUNCTION_40_8();
        v87 = OUTLINED_FUNCTION_70();
        v53(v87);
        if (v86)
        {
          v88 = OUTLINED_FUNCTION_120_0();
          v53(v88);
          v48[89] = swift_getKeyPath();
          swift_task_alloc();
          OUTLINED_FUNCTION_58();
          v48[90] = v89;
          *v89 = v90;
          v89[1] = sub_1D4EDA3D0;
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_56();

          return sub_1D4EE6DE0(v91, v92, v93, v94, v95);
        }

        else
        {
          if (qword_1EDD53D70 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_126_0();
          if (OUTLINED_FUNCTION_52_4(v97, qword_1EDD53D78))
          {
            v98 = OUTLINED_FUNCTION_108_2();
            v53(v98);
            v48[92] = swift_getKeyPath();
            swift_task_alloc();
            OUTLINED_FUNCTION_58();
            v48[93] = v99;
            *v99 = v100;
            v99[1] = sub_1D4EDA8F8;
            OUTLINED_FUNCTION_15_12();
            OUTLINED_FUNCTION_56();

            return sub_1D4EE7338(v101, v102, v103, v104, v105);
          }

          else
          {
            OUTLINED_FUNCTION_45_7();
            sub_1D560D918();
            v107 = OUTLINED_FUNCTION_40_8();
            v108 = OUTLINED_FUNCTION_70();
            v53(v108);
            if (v107)
            {
              v109 = OUTLINED_FUNCTION_120_0();
              v53(v109);
              v48[95] = swift_getKeyPath();
              swift_task_alloc();
              OUTLINED_FUNCTION_58();
              v48[96] = v110;
              *v110 = v111;
              v110[1] = sub_1D4EDAE30;
              OUTLINED_FUNCTION_15_12();
              OUTLINED_FUNCTION_56();

              return sub_1D4EE78A8(v112, v113, v114, v115, v116);
            }

            else
            {
              if (qword_1EDD53D48 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_126_0();
              if (OUTLINED_FUNCTION_52_4(v118, qword_1EDD53D50))
              {
                v119 = OUTLINED_FUNCTION_108_2();
                v53(v119);
                v48[98] = swift_getKeyPath();
                swift_task_alloc();
                OUTLINED_FUNCTION_58();
                v48[99] = v120;
                *v120 = v121;
                v120[1] = sub_1D4EDB358;
                OUTLINED_FUNCTION_15_12();
                OUTLINED_FUNCTION_56();

                return sub_1D4EE7E00(v122, v123, v124, v125, v126);
              }

              else
              {
                OUTLINED_FUNCTION_45_7();
                sub_1D560D878();
                OUTLINED_FUNCTION_40_8();
                v128 = OUTLINED_FUNCTION_67_3();
                v53(v128);
                if (v52)
                {
                  v129 = OUTLINED_FUNCTION_108_2();
                  v53(v129);
                  v48[101] = swift_getKeyPath();
                  swift_task_alloc();
                  OUTLINED_FUNCTION_58();
                  v48[102] = v130;
                  *v130 = v131;
                  v130[1] = sub_1D4EDB880;
                  OUTLINED_FUNCTION_15_12();
                  OUTLINED_FUNCTION_56();

                  return sub_1D4EE8370(v132, v133, v134, v135, v136);
                }

                else
                {
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D968();
                  OUTLINED_FUNCTION_40_8();
                  v138 = OUTLINED_FUNCTION_67_3();
                  v53(v138);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D998();
                  OUTLINED_FUNCTION_40_8();
                  v139 = OUTLINED_FUNCTION_67_3();
                  v53(v139);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D888();
                  OUTLINED_FUNCTION_40_8();
                  v140 = OUTLINED_FUNCTION_67_3();
                  v53(v140);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D8E8();
                  OUTLINED_FUNCTION_40_8();
                  v141 = OUTLINED_FUNCTION_67_3();
                  v53(v141);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D958();
                  OUTLINED_FUNCTION_40_8();
                  v142 = OUTLINED_FUNCTION_67_3();
                  v53(v142);
                  OUTLINED_FUNCTION_45_7();
                  sub_1D560D928();
                  v143 = OUTLINED_FUNCTION_40_8();
                  v144 = OUTLINED_FUNCTION_70();
                  v53(v144);
                  if (v143)
                  {
                    v145 = OUTLINED_FUNCTION_120_0();
                    v53(v145);
                    v48[119] = swift_getKeyPath();
                    swift_task_alloc();
                    OUTLINED_FUNCTION_58();
                    v48[120] = v146;
                    *v146 = v147;
                    v146[1] = sub_1D4EDD770;
                    OUTLINED_FUNCTION_15_12();
                    OUTLINED_FUNCTION_56();

                    return sub_1D4EEA380(v148, v149, v150, v151, v152);
                  }

                  else
                  {
                    if (qword_1EDD53C38 != -1)
                    {
                      swift_once();
                    }

                    OUTLINED_FUNCTION_126_0();
                    if (OUTLINED_FUNCTION_52_4(v154, qword_1EDD53C40))
                    {
                      v155 = OUTLINED_FUNCTION_120_0();
                      v53(v155);
                      v48[122] = swift_getKeyPath();
                      swift_task_alloc();
                      OUTLINED_FUNCTION_58();
                      v48[123] = v156;
                      *v156 = v157;
                      v156[1] = sub_1D4EDDC9C;
                      OUTLINED_FUNCTION_15_12();
                      OUTLINED_FUNCTION_56();

                      return sub_1D4EEA9AC(v158, v159, v160, v161, v162);
                    }

                    else
                    {
                      if (qword_1EDD53C58 != -1)
                      {
                        swift_once();
                      }

                      OUTLINED_FUNCTION_126_0();
                      if (OUTLINED_FUNCTION_52_4(v164, qword_1EDD53C60))
                      {
                        v165 = OUTLINED_FUNCTION_120_0();
                        v53(v165);
                        v48[125] = swift_getKeyPath();
                        swift_task_alloc();
                        OUTLINED_FUNCTION_58();
                        v48[126] = v166;
                        *v166 = v167;
                        v166[1] = sub_1D4EDE1C0;
                        OUTLINED_FUNCTION_15_12();
                        OUTLINED_FUNCTION_56();

                        return sub_1D4EEAF1C(v168, v169, v170, v171, v172);
                      }

                      else
                      {
                        if (qword_1EC7E95E8 != -1)
                        {
                          swift_once();
                        }

                        OUTLINED_FUNCTION_126_0();
                        if (OUTLINED_FUNCTION_52_4(v174, qword_1EC7F5D98))
                        {
                          v175 = OUTLINED_FUNCTION_120_0();
                          v53(v175);
                          v48[128] = swift_getKeyPath();
                          swift_task_alloc();
                          OUTLINED_FUNCTION_58();
                          v48[129] = v176;
                          *v176 = v177;
                          v176[1] = sub_1D4EDE6E4;
                          OUTLINED_FUNCTION_15_12();
                          OUTLINED_FUNCTION_56();

                          return sub_1D4EEB48C(v178, v179, v180, v181, v182);
                        }

                        else
                        {
                          if (qword_1EC7E8F18 != -1)
                          {
                            swift_once();
                          }

                          OUTLINED_FUNCTION_126_0();
                          if (OUTLINED_FUNCTION_52_4(v184, qword_1EC7F08A0))
                          {
                            v185 = OUTLINED_FUNCTION_120_0();
                            v53(v185);
                            v48[131] = swift_getKeyPath();
                            swift_task_alloc();
                            OUTLINED_FUNCTION_58();
                            v48[132] = v186;
                            *v186 = v187;
                            v186[1] = sub_1D4EDEC08;
                            OUTLINED_FUNCTION_15_12();
                            OUTLINED_FUNCTION_56();

                            return sub_1D4EEB9FC(v188, v189, v190, v191, v192);
                          }

                          else
                          {
                            if (qword_1EDD53CE8 != -1)
                            {
                              swift_once();
                            }

                            v194 = v48[76];
                            v195 = v48[73];
                            __swift_project_value_buffer(v195, qword_1EDD53CF0);
                            v196 = sub_1D5614D18();
                            (v53)(v194, v195);
                            if (v196)
                            {
                              v48[134] = swift_getKeyPath();
                              swift_task_alloc();
                              OUTLINED_FUNCTION_58();
                              v48[135] = v197;
                              *v197 = v198;
                              v197[1] = sub_1D4EDF13C;
                              OUTLINED_FUNCTION_56();

                              return sub_1D4EEBF6C(v199, v200, v201, v202, v203);
                            }

                            else
                            {
                              v205 = sub_1D4EF211C();
                              v248 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v205);
                              OUTLINED_FUNCTION_125(v206, 5);
                              v215 = v48[64];
                              v216 = v48[62];
                              v217 = v48[61];
                              v218 = v48[58];
                              v219 = v48[57];
                              v220 = v48[55];
                              v221 = v48[54];
                              v222 = v48[51];
                              v223 = v48[50];
                              v224 = v48[48];
                              v225 = v48[47];
                              v226 = v48[44];
                              v227 = v48[43];
                              v228 = v48[40];
                              v229 = v48[39];
                              v230 = v48[36];
                              v231 = v48[35];
                              v232 = v48[32];
                              v233 = v48[31];
                              v234 = v48[28];
                              v235 = v48[27];
                              v236 = v48[24];
                              v237 = v48[23];
                              v238 = v48[21];
                              v239 = v48[19];
                              v240 = v48[18];
                              v241 = v48[16];
                              v242 = v48[15];
                              v243 = v48[13];
                              v244 = v48[12];
                              v245 = v48[10];
                              v246 = v48[9];
                              v247 = v48[7];
                              sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);

                              OUTLINED_FUNCTION_30_3();
                              OUTLINED_FUNCTION_56();

                              return v208(v207, v208, v209, v210, v211, v212, v213, v214, a9, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, a44, a45, a46, a47, a48);
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

uint64_t sub_1D4ED9448()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 656) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[70];
  v52 = v48[69];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v52, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    v49 = v48[71];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4ED9978()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[66];
  v52 = v48[65];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v52, &qword_1EC7EA8A8, &qword_1D561CF10);
  }

  else
  {
    v49 = v48[67];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4ED9EA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 704) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4ED9FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[62];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[63]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA8A0, &qword_1D5652B20);
  }

  else
  {
    v54 = v48[64];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_106_1();
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v62 = sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v62);
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDA3D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[58];
  v52 = v48[59];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA9A0, &qword_1D561D230);
  }

  else
  {
    v49 = v48[60];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDA8F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDAA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[55];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[56]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA998, &qword_1D561D228);
  }

  else
  {
    v54 = v48[57];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v62 = sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v62);
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDAE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 776) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[51];
  v52 = v48[52];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    v49 = v48[53];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDB358()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 800) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDB46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[48];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[49]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA890, &qword_1D5672D40);
  }

  else
  {
    v54 = v48[50];
    v55 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_105_0();
    sub_1D4EF228C(v50, v54);
    v56 = OUTLINED_FUNCTION_98();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_81_0();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v55);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v62 = sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v62);
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDB880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 824) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[44];
  v52 = v48[45];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA990, &qword_1D561D220);
  }

  else
  {
    v49 = v48[46];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDBDA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 848) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[40];
  v52 = v48[41];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v49 = v48[42];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDC2D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 872) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDC3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[36];
  v52 = v48[37];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA988, &qword_1D56397B0);
  }

  else
  {
    v49 = v48[38];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDC7F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 896) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[32];
  v52 = v48[33];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA980, &unk_1D561D210);
  }

  else
  {
    v49 = v48[34];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDCD20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 920) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDCE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[28];
  v52 = v48[29];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &qword_1EC7EA978, &qword_1D5652B10);
  }

  else
  {
    v49 = v48[30];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDD248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 944) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDD35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v51 = v48[24];
  v52 = v48[25];
  OUTLINED_FUNCTION_16_4();
  if (v53)
  {
    sub_1D4E50004(v51, &unk_1EC7F65A0, &unk_1D561D200);
  }

  else
  {
    v49 = v48[26];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    v55 = OUTLINED_FUNCTION_28_2();
    v50(v55);
    v56 = OUTLINED_FUNCTION_50_2();
    v50(v56);
    OUTLINED_FUNCTION_112();
    swift_storeEnumTagMultiPayload();
    v57 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v54);
  }

  v60 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v60, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v61 = sub_1D4EF211C();
    v62 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v61);
    OUTLINED_FUNCTION_42_6(v62, v63);
    v64 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v64, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDD770()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 968) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDD884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[78];
  v51 = v48[22];
  OUTLINED_FUNCTION_16_4();
  if (v52)
  {
    sub_1D4E50004(v50, &qword_1EC7EA608, &qword_1D561C510);
  }

  else
  {
    v53 = v48[23];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v50, v53);
    v54 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v54, v55);
    v56 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
  }

  v59 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v59, v51, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v52)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v60 = sub_1D4EF211C();
    v61 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v60);
    OUTLINED_FUNCTION_42_6(v61, v62);
    v63 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v63, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDDC9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 992) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDDDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v50 = v48[19];
  OUTLINED_FUNCTION_37_9(v51, v52, v48[20]);
  if (v53)
  {
    sub_1D4E50004(v50, &qword_1EC7EA880, &unk_1D561CEE0);
  }

  else
  {
    v55 = v48[21];
    v54 = v48[22];
    sub_1D4E50004(v48[79], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_104_1();
    sub_1D4EF228C(v50, v55);
    v56 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v56, v57);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v58 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
  }

  v61 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v61, v50, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v53)
  {
    sub_1D4E50004(v48[77], &qword_1EC7EA608, &qword_1D561C510);
    v62 = sub_1D4EF211C();
    v63 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v62);
    OUTLINED_FUNCTION_42_6(v63, v64);
    v65 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v65, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDE1C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1016) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDE2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[16];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[17]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA878, &unk_1D5634790);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[18];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_103();
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    v63 = sub_1D4EF211C();
    v64 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v63);
    OUTLINED_FUNCTION_42_6(v64, v65);
    v66 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDE6E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1040) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[13];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[14]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[15];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_102_2();
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    v63 = sub_1D4EF211C();
    v64 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v63);
    OUTLINED_FUNCTION_42_6(v64, v65);
    v66 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDEC08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1064) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[10];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[11]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA970, &unk_1D5652B00);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[12];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    v63 = sub_1D4EF211C();
    v64 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v63);
    OUTLINED_FUNCTION_42_6(v64, v65);
    v66 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF13C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1088) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EDF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  v52 = v50[7];
  OUTLINED_FUNCTION_37_9(v53, v54, v50[8]);
  if (v55)
  {
    sub_1D4E50004(v52, &qword_1EC7EA968, &unk_1D561D1F0);
  }

  else
  {
    OUTLINED_FUNCTION_157_1();
    v56 = v50[9];
    sub_1D4E50004(v48, &qword_1EC7EA608, &qword_1D561C510);
    sub_1D4EF228C(v52, v56);
    v57 = OUTLINED_FUNCTION_86_0();
    sub_1D4EF228C(v57, v58);
    OUTLINED_FUNCTION_128();
    swift_storeEnumTagMultiPayload();
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  }

  v62 = OUTLINED_FUNCTION_31_10();
  sub_1D4E69970(v62, v52, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_18_6();
  if (v55)
  {
    sub_1D4E50004(v50[77], &qword_1EC7EA608, &qword_1D561C510);
    v63 = sub_1D4EF211C();
    v64 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v63);
    OUTLINED_FUNCTION_42_6(v64, v65);
    v66 = OUTLINED_FUNCTION_2_3();
    sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);

    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1D4E50004(v51, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_132_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_56();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 656));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 680));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 704));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 728));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 752));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EDFF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 776));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 800));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 824));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 848));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 872));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 896));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 920));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 944));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 968));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE0F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 992));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1016));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE12F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1040));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE14B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1064));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_61_11();
  OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_1_22(*(v48 + 1088));
  sub_1D4E50004(v49, &qword_1EC7EA608, &qword_1D561C510);

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_56();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4EE1848()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v8);
  *(v0 + 56) = OUTLINED_FUNCTION_127();
  v9 = type metadata accessor for TVShow(0);
  *(v0 + 64) = v9;
  OUTLINED_FUNCTION_22(v9);
  *(v0 + 72) = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v10);
  *(v0 + 80) = OUTLINED_FUNCTION_127();
  v11 = type metadata accessor for TVSeason(0);
  *(v0 + 88) = v11;
  OUTLINED_FUNCTION_22(v11);
  *(v0 + 96) = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v12);
  *(v0 + 104) = OUTLINED_FUNCTION_127();
  v13 = type metadata accessor for TVEpisode(0);
  *(v0 + 112) = v13;
  OUTLINED_FUNCTION_22(v13);
  *(v0 + 120) = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v14);
  *(v0 + 128) = OUTLINED_FUNCTION_127();
  v15 = sub_1D5613D28();
  *(v0 + 136) = v15;
  OUTLINED_FUNCTION_69(v15);
  *(v0 + 144) = v16;
  *(v0 + 152) = swift_task_alloc();
  *(v0 + 160) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v17);
  *(v0 + 168) = OUTLINED_FUNCTION_127();
  v18 = sub_1D5614898();
  *(v0 + 176) = v18;
  OUTLINED_FUNCTION_69(v18);
  *(v0 + 184) = v19;
  *(v0 + 192) = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v20);
  *(v0 + 200) = OUTLINED_FUNCTION_127();
  v21 = type metadata accessor for MusicMovie(0);
  *(v0 + 208) = v21;
  OUTLINED_FUNCTION_22(v21);
  *(v0 + 216) = OUTLINED_FUNCTION_127();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  OUTLINED_FUNCTION_22(v22);
  *(v0 + 224) = OUTLINED_FUNCTION_127();
  v23 = sub_1D5613C48();
  *(v0 + 232) = v23;
  OUTLINED_FUNCTION_69(v23);
  *(v0 + 240) = v24;
  *(v0 + 248) = OUTLINED_FUNCTION_127();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  OUTLINED_FUNCTION_22(v25);
  *(v0 + 256) = OUTLINED_FUNCTION_127();
  v26 = type metadata accessor for Composer(0);
  *(v0 + 264) = v26;
  OUTLINED_FUNCTION_22(v26);
  *(v0 + 272) = OUTLINED_FUNCTION_127();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v27);
  *(v0 + 280) = OUTLINED_FUNCTION_127();
  v28 = sub_1D5613EF8();
  *(v0 + 288) = v28;
  OUTLINED_FUNCTION_69(v28);
  *(v0 + 296) = v29;
  *(v0 + 304) = OUTLINED_FUNCTION_127();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v30);
  *(v0 + 312) = OUTLINED_FUNCTION_127();
  v31 = sub_1D5613AF8();
  *(v0 + 320) = v31;
  OUTLINED_FUNCTION_69(v31);
  *(v0 + 328) = v32;
  *(v0 + 336) = OUTLINED_FUNCTION_127();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v33);
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 616) = *v2;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D4EE1CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_95_2();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_109_3();
  a34 = v36;
  v39 = *(v36 + 40);
  v40 = *(v36 + 32);
  if (_s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() == v40 && v41 == v39)
  {
  }

  else
  {
    v43 = sub_1D5616168();

    if ((v43 & 1) == 0)
    {
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_19_10(&qword_1EC7E90D8);
      }

      v44 = *(v36 + 48);
      v45 = sub_1D560C758();
      __swift_project_value_buffer(v45, qword_1EC87C330);

      v46 = sub_1D560C738();
      v47 = sub_1D56156C8();

      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_144();
        a24 = OUTLINED_FUNCTION_119_0();
        *v44 = 136315394;
        v48 = OUTLINED_FUNCTION_66();
        *(v44 + 4) = sub_1D4E6835C(v48, v49, v50);
        *(v44 + 12) = 2080;
        v51 = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
        v53 = sub_1D4E6835C(v51, v52, &a24);

        *(v44 + 14) = v53;
        _os_log_impl(&dword_1D4E3F000, v46, v47, "The provided database ID (%s) does not match the library’s unique identifier (%s). Treating as item not found.", v44, 0x16u);
        OUTLINED_FUNCTION_123_1();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_118();
      }

      v54 = sub_1D4EF211C();
      v55 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v54);
      *v56 = 0;
      v156 = v55;
      swift_willThrow();
LABEL_11:
      OUTLINED_FUNCTION_25_19();
      OUTLINED_FUNCTION_7_16();
      v155 = v57;

      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_71_2();

      return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v155, v156, a24, a25, a26, a27, a28);
    }
  }

  v67 = *(v36 + 616);
  v68 = *(v36 + 352);
  sub_1D560EF08();
  *(v36 + 360) = v69;
  v70 = type metadata accessor for GenericMusicItem(0);
  *(v36 + 368) = v70;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v70);
  switch(v67)
  {
    case 0:
      *(v36 + 376) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 384) = v111;
      *v111 = v112;
      v111[1] = sub_1D4EE2550;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEDCB4(v113, v114, v115, v116, v117);
      break;
    case 1:
      *(v36 + 400) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 408) = v127;
      *v127 = v128;
      v127[1] = sub_1D4EE2974;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE0C8(v129, v130, v131, v132, v133);
      break;
    case 2:
      *(v36 + 424) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 432) = v119;
      *v119 = v120;
      v119[1] = sub_1D4EE2D98;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE4DC(v121, v122, v123, v124, v125);
      break;
    case 5:
      *(v36 + 448) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 456) = v103;
      *v103 = v104;
      v103[1] = sub_1D4EE31B4;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEE91C(v105, v106, v107, v108, v109);
      break;
    case 6:
      *(v36 + 472) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 480) = v95;
      *v95 = v96;
      v95[1] = sub_1D4EE35D8;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEED30(v97, v98, v99, v100, v101);
      break;
    case 7:
    case 12:
      *(v36 + 520) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 528) = v71;
      *v71 = v72;
      v71[1] = sub_1D4EE3E18;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEF618(v73, v74, v75, v76, v77);
      break;
    case 8:
      *(v36 + 496) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 504) = v135;
      *v135 = v136;
      v135[1] = sub_1D4EE39F4;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEF204(v137, v138, v139, v140, v141);
      break;
    case 14:
      *(v36 + 544) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 552) = v79;
      *v79 = v80;
      v79[1] = sub_1D4EE4514;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEFA2C(v81, v82, v83, v84, v85);
      break;
    case 15:
      *(v36 + 568) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 576) = v143;
      *v143 = v144;
      v143[1] = sub_1D4EE4930;
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EEFE6C(v145, v146, v147, v148, v149);
      break;
    case 16:
      *(v36 + 592) = swift_getKeyPath();
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v36 + 600) = v87;
      *v87 = v88;
      v87[1] = sub_1D4EE4D4C;
      OUTLINED_FUNCTION_71_2();

      result = sub_1D4EF02AC(v89, v90, v91, v92, v93);
      break;
    default:
      v151 = *(v36 + 352);

      v152 = sub_1D4EF211C();
      v153 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v152);
      *v154 = 5;
      v156 = v153;
      swift_willThrow();
      sub_1D4E50004(v151, &qword_1EC7EA608, &qword_1D561C510);
      goto LABEL_11;
  }

  return result;
}

uint64_t sub_1D4EE2550()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v33 = *(v29 + 312);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    sub_1D4E50004(v33, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    OUTLINED_FUNCTION_155_0();
    sub_1D4E50004(v30, &qword_1EC7EA608, &qword_1D561C510);
    v35 = OUTLINED_FUNCTION_74_2();
    v31(v35);
    v36 = OUTLINED_FUNCTION_85_0();
    v31(v36);
    OUTLINED_FUNCTION_93();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
  }

  v40 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v40, v33, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    OUTLINED_FUNCTION_129_0(*(v29 + 344));
    v41 = sub_1D4EF211C();
    v42 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v41);
    OUTLINED_FUNCTION_94_0(v42, v43);
    v44 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v44, v45, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v32, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE2974()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v33 = *(v29 + 280);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    sub_1D4E50004(v33, &qword_1EC7EA8A8, &qword_1D561CF10);
  }

  else
  {
    OUTLINED_FUNCTION_155_0();
    sub_1D4E50004(v30, &qword_1EC7EA608, &qword_1D561C510);
    v35 = OUTLINED_FUNCTION_74_2();
    v31(v35);
    v36 = OUTLINED_FUNCTION_85_0();
    v31(v36);
    OUTLINED_FUNCTION_93();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
  }

  v40 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v40, v33, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    OUTLINED_FUNCTION_129_0(*(v29 + 344));
    v41 = sub_1D4EF211C();
    v42 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v41);
    OUTLINED_FUNCTION_94_0(v42, v43);
    v44 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v44, v45, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v32, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE2D98()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE2EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v32 = v30[32];
  OUTLINED_FUNCTION_37_9(v33, v34, v30[33]);
  if (v35)
  {
    sub_1D4E50004(v32, &qword_1EC7EA8A0, &qword_1D5652B20);
  }

  else
  {
    OUTLINED_FUNCTION_135_3();
    v36 = v30[34];
    sub_1D4E50004(v29, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_106_1();
    sub_1D4EF228C(v32, v36);
    v37 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v37, v38);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v28);
  }

  v42 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v42, v28, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v35)
  {
    OUTLINED_FUNCTION_129_0(v30[43]);
    v43 = sub_1D4EF211C();
    v44 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v43);
    OUTLINED_FUNCTION_94_0(v44, v45);
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v46, v47, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v31, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE31B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 464) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE32FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v33 = *(v29 + 224);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    sub_1D4E50004(v33, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    OUTLINED_FUNCTION_155_0();
    sub_1D4E50004(v30, &qword_1EC7EA608, &qword_1D561C510);
    v35 = OUTLINED_FUNCTION_74_2();
    v31(v35);
    v36 = OUTLINED_FUNCTION_85_0();
    v31(v36);
    OUTLINED_FUNCTION_93();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
  }

  v40 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v40, v33, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    OUTLINED_FUNCTION_129_0(*(v29 + 344));
    v41 = sub_1D4EF211C();
    v42 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v41);
    OUTLINED_FUNCTION_94_0(v42, v43);
    v44 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v44, v45, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v32, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE35D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE3720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v32 = v30[25];
  OUTLINED_FUNCTION_37_9(v33, v34, v30[26]);
  if (v35)
  {
    sub_1D4E50004(v32, &qword_1EC7EA890, &qword_1D5672D40);
  }

  else
  {
    OUTLINED_FUNCTION_135_3();
    v36 = v30[27];
    sub_1D4E50004(v29, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_105_0();
    sub_1D4EF228C(v32, v36);
    v37 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v37, v38);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v28);
  }

  v42 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v42, v28, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v35)
  {
    OUTLINED_FUNCTION_129_0(v30[43]);
    v43 = sub_1D4EF211C();
    v44 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v43);
    OUTLINED_FUNCTION_94_0(v44, v45);
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v46, v47, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v31, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE39F4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE3B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v33 = *(v29 + 168);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    sub_1D4E50004(v33, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    OUTLINED_FUNCTION_155_0();
    sub_1D4E50004(v30, &qword_1EC7EA608, &qword_1D561C510);
    v35 = OUTLINED_FUNCTION_74_2();
    v31(v35);
    v36 = OUTLINED_FUNCTION_85_0();
    v31(v36);
    OUTLINED_FUNCTION_93();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v28);
  }

  v40 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v40, v33, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v34)
  {
    OUTLINED_FUNCTION_129_0(*(v29 + 344));
    v41 = sub_1D4EF211C();
    v42 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v41);
    OUTLINED_FUNCTION_94_0(v42, v43);
    v44 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v44, v45, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v32, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE3E18()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 536) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE3F3C()
{
  v1 = v0[16];
  v2 = v0[17];
  OUTLINED_FUNCTION_16_4();
  if (v3)
  {

    sub_1D4E50004(v1, &qword_1EC7EA888, &qword_1D563B8C0);
  }

  else
  {
    v4 = v0[19];
    v5 = v0[18];
    v6 = OUTLINED_FUNCTION_98();
    v7(v6);
    v8 = OUTLINED_FUNCTION_93();
    v9(v8);
    v10 = (*(v5 + 88))(v4, v2);
    if (v10 == *MEMORY[0x1E6976E18])
    {
      v11 = v0[44];
      v12 = v0[19];
      v1 = v0[20];

      v13 = OUTLINED_FUNCTION_81_0();
      v14(v13);
      sub_1D4E50004(v11, &qword_1EC7EA608, &qword_1D561C510);
      v15 = OUTLINED_FUNCTION_70();
      v16(v15);
      sub_1D5613838();
    }

    else
    {
      if (v10 != *MEMORY[0x1E6976DF8])
      {
        sub_1D5615B68();

        sub_1D4EF1A64(&qword_1EC7EA708, MEMORY[0x1E6976E60], MEMORY[0x1E6976E80]);
        v33 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v33);

        return sub_1D5615E08();
      }

      v17 = v0[44];
      v12 = v0[19];
      v1 = v0[20];

      v18 = OUTLINED_FUNCTION_81_0();
      v19(v18);
      sub_1D4E50004(v17, &qword_1EC7EA608, &qword_1D561C510);
      v20 = OUTLINED_FUNCTION_70();
      v21(v20);
      sub_1D560EEA8();
    }

    OUTLINED_FUNCTION_135_3();
    (*(*(v22 - 8) + 32))(v12, v0[19]);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v23 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v1);
  }

  v26 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v26, v1, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_129_0(v0[43]);
    v27 = sub_1D4EF211C();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v27);
    *v28 = 1;
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v29, v30, &qword_1D561C510);

    OUTLINED_FUNCTION_55();
  }

  else
  {
    sub_1D4E50004(v0[44], &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  return v31();
}

uint64_t sub_1D4EE4514()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE465C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v32 = v30[13];
  OUTLINED_FUNCTION_37_9(v33, v34, v30[14]);
  if (v35)
  {
    sub_1D4E50004(v32, &qword_1EC7EA880, &unk_1D561CEE0);
  }

  else
  {
    OUTLINED_FUNCTION_135_3();
    v36 = v30[15];
    sub_1D4E50004(v29, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_104_1();
    sub_1D4EF228C(v32, v36);
    v37 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v37, v38);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v28);
  }

  v42 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v42, v28, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v35)
  {
    OUTLINED_FUNCTION_129_0(v30[43]);
    v43 = sub_1D4EF211C();
    v44 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v43);
    OUTLINED_FUNCTION_94_0(v44, v45);
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v46, v47, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v31, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE4930()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 584) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v32 = v30[10];
  OUTLINED_FUNCTION_37_9(v33, v34, v30[11]);
  if (v35)
  {
    sub_1D4E50004(v32, &qword_1EC7EA878, &unk_1D5634790);
  }

  else
  {
    OUTLINED_FUNCTION_135_3();
    v36 = v30[12];
    sub_1D4E50004(v29, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_103();
    sub_1D4EF228C(v32, v36);
    v37 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v37, v38);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v28);
  }

  v42 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v42, v28, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v35)
  {
    OUTLINED_FUNCTION_129_0(v30[43]);
    v43 = sub_1D4EF211C();
    v44 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v43);
    OUTLINED_FUNCTION_94_0(v44, v45);
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v46, v47, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v31, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE4D4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v0;

  OUTLINED_FUNCTION_115_1();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4EE4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_109_3();
  v32 = v30[7];
  OUTLINED_FUNCTION_37_9(v33, v34, v30[8]);
  if (v35)
  {
    sub_1D4E50004(v32, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    OUTLINED_FUNCTION_135_3();
    v36 = v30[9];
    sub_1D4E50004(v29, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_102_2();
    sub_1D4EF228C(v32, v36);
    v37 = OUTLINED_FUNCTION_93();
    sub_1D4EF228C(v37, v38);
    OUTLINED_FUNCTION_98();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_38_8();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v28);
  }

  v42 = OUTLINED_FUNCTION_107();
  sub_1D4E69970(v42, v28, &qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_16_4();
  if (v35)
  {
    OUTLINED_FUNCTION_129_0(v30[43]);
    v43 = sub_1D4EF211C();
    v44 = OUTLINED_FUNCTION_121_0(&type metadata for MusicSiriItemRequest.Error, v43);
    OUTLINED_FUNCTION_94_0(v44, v45);
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4E50004(v46, v47, &qword_1D561C510);
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_29_6();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1D4E50004(v31, &qword_1EC7EA608, &qword_1D561C510);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_140_0();

    OUTLINED_FUNCTION_22_1();
  }

  OUTLINED_FUNCTION_71_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4EE5168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 392);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE52A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 416);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE53E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 440);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 464);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 488);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 512);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 560);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 584);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 608);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  sub_1D4E50004(*(v26 + 352), &qword_1EC7EA608, &qword_1D561C510);
  v38 = *(v26 + 536);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_7_16();
  v37 = v27;

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_1D4EE5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC7EA9A8, &qword_1D561D5C8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9B0, &qword_1D561D5D0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE6000, 0, 0);
}

uint64_t sub_1D4EE615C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE6318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9C0, &qword_1D561D5D8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9C8, &qword_1D561D5E0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE6558, 0, 0);
}

uint64_t sub_1D4EE66B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE6870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9D0, &qword_1D561D5E8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9D8, &unk_1D561D5F0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE6AB0, 0, 0);
}

uint64_t sub_1D4EE6C24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE6DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9F0, &qword_1D561D600);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9F8, &qword_1D561D608);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE7020, 0, 0);
}

uint64_t sub_1D4EE717C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE7338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA620, &qword_1D561D610);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA00, &qword_1D561D618);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA08, &qword_1D561D620);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE7578, 0, 0);
}

uint64_t sub_1D4EE76EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA20, &qword_1D561D628);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA28, &qword_1D561D630);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE7AE8, 0, 0);
}

uint64_t sub_1D4EE7C44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA30, &qword_1D561D638);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA38, &unk_1D561D640);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE8040, 0, 0);
}

uint64_t sub_1D4EE81B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA420, &unk_1D5653250);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA48, &qword_1D561D650);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA50, &qword_1D561D658);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE85B0, 0, 0);
}

uint64_t sub_1D4EE870C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE88C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA60, &qword_1D561D660);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA68, &qword_1D561D668);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE8B08, 0, 0);
}

uint64_t sub_1D4EE8C64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA70, &qword_1D561D678);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA78, &unk_1D561D680);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE9060, 0, 0);
}

uint64_t sub_1D4EE91BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE9378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA630, &unk_1D561C530);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA80, &qword_1D561D690);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA88, &qword_1D561D698);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE95B8, 0, 0);
}

uint64_t sub_1D4EE9714()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA98, &qword_1D564E670);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAA0, &unk_1D561D6A0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EE9B10, 0, 0);
}

uint64_t sub_1D4EE9C6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EE9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA640, &unk_1D563EA60);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAB0, &qword_1D561D6B0);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAB8, &unk_1D561D6B8);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEA068, 0, 0);
}

uint64_t sub_1D4EEA1C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEA380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAC8, &qword_1D561D6C8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAD0, &qword_1D561D6D0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEA5C0, 0, 0);
}

uint64_t sub_1D4EEA734()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEA8F0()
{
  OUTLINED_FUNCTION_91();
  (*(v0[22] + 8))(v0[23], v0[21]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4EEA9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAE8, &qword_1D561D6D8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAF0, &qword_1D561D6E0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEABEC, 0, 0);
}

uint64_t sub_1D4EEAD60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB08, &qword_1D561D6E8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB10, &qword_1D561D6F0);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEB15C, 0, 0);
}

uint64_t sub_1D4EEB2D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB28, &qword_1D561D6F8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB30, &unk_1D561D700);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEB6CC, 0, 0);
}

uint64_t sub_1D4EEB840()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEB9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA660, &qword_1D561C548);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB48, &qword_1D561D710);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB50, &unk_1D561D718);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEBC3C, 0, 0);
}

uint64_t sub_1D4EEBDB0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEBF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 208) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA670, &qword_1D561C550);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB68, &qword_1D561D728);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  v9 = sub_1D560CD48();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = type metadata accessor for MusicRequestConfiguration(0);
  *(v6 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB70, &qword_1D561D730);
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EEC1AC, 0, 0);
}

uint64_t sub_1D4EEC320()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEC4DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4EEC534@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1D4EEC58C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB70, &qword_1D561D730);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEC6C4(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB50, &unk_1D561D718);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEC7FC(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB30, &unk_1D561D700);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEC934(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB10, &qword_1D561D6F0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EECA6C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAF0, &qword_1D561D6E0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EECBA4(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAD0, &qword_1D561D6D0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EECCDC(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAB8, &unk_1D561D6B8);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EECE14(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAA0, &unk_1D561D6A0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EECF4C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA88, &qword_1D561D698);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED084(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA78, &unk_1D561D680);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED1BC(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA68, &qword_1D561D668);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED2F4(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA50, &qword_1D561D658);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED42C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA38, &unk_1D561D640);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED564(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA28, &qword_1D561D630);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED69C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA08, &qword_1D561D620);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED7D4(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9F8, &qword_1D561D608);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EED90C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9D8, &unk_1D561D5F0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEDA44(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9C8, &qword_1D561D5E0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEDB7C(char a1)
{
  v2 = sub_1D560D358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 104))(v6, **(&unk_1E84C45A0 + a1), v2);
  (*(v3 + 32))(v8, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9B0, &qword_1D561D5D0);
  return sub_1D560E2B8();
}

uint64_t sub_1D4EEDCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8B8, &unk_1D561D100);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C0, &unk_1D56606D0);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEDE60, 0, 0);
}

uint64_t sub_1D4EEDE60()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_26_4();
  sub_1D5613AF8();
  sub_1D560DD68();
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_3(v1);

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D4EEDF24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEE0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8C8, &unk_1D56606E0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8D0, &unk_1D561D120);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEE274, 0, 0);
}

uint64_t sub_1D4EEE274()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_26_4();
  sub_1D5613EF8();
  sub_1D560DD68();
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_3(v1);

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D4EEE338()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8D8, &unk_1D561D130);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8E0, &qword_1D56606F0);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEE688, 0, 0);
}

uint64_t sub_1D4EEE688()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_26_4();
  type metadata accessor for Composer(v0);
  v1 = sub_1D4EF1A64(&qword_1EC7EA8E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_124(v1);
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_51_6(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_27_3(v3);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D4EEE778()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8F0, &qword_1D561D148);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8F8, &unk_1D561D150);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEEAC8, 0, 0);
}

uint64_t sub_1D4EEEAC8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_26_4();
  sub_1D5613C48();
  sub_1D560DD68();
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_3(v1);

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D4EEEB8C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEED30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA900, &qword_1D561D160);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEEEDC, 0, 0);
}

uint64_t sub_1D4EEEEDC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_26_4();
  type metadata accessor for MusicMovie(v0);
  v1 = sub_1D4EF1A64(&qword_1EC7EA908, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_124(v1);
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_51_6(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_27_3(v3);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D4EEEFCC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEF170()
{
  OUTLINED_FUNCTION_80();
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4EEF204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F19B0, &unk_1D561D170);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEF3B0, 0, 0);
}

uint64_t sub_1D4EEF3B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_26_4();
  sub_1D5614898();
  sub_1D560DD68();
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_3(v1);

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D4EEF474()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA910, &qword_1D561D180);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEF7C4, 0, 0);
}

uint64_t sub_1D4EEF7C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_26_4();
  sub_1D5613D28();
  sub_1D560DD68();
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_3(v1);

  return MEMORY[0x1EEDCEAC0](v3, v4);
}

uint64_t sub_1D4EEF888()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA918, &qword_1D561D188);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EEFBD8, 0, 0);
}

uint64_t sub_1D4EEFBD8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_26_4();
  type metadata accessor for TVEpisode(v0);
  v1 = sub_1D4EF1A64(&qword_1EC7EA920, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_124(v1);
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_51_6(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_27_3(v3);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D4EEFCC8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EEFE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA928, &qword_1D561D1A0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA930, &unk_1D561D1A8);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EF0018, 0, 0);
}

uint64_t sub_1D4EF0018()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_26_4();
  type metadata accessor for TVSeason(v0);
  v1 = sub_1D4EF1A64(&qword_1EC7EA938, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_124(v1);
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_51_6(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_27_3(v3);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D4EF0108()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4EF02AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a5;
  v5[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA940, &qword_1D561D1B8);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA948, &qword_1D561D1C0);
  v5[13] = v10;
  v5[14] = *(v10 - 8);
  v5[15] = swift_task_alloc();
  v5[2] = a3;
  v5[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D4EF0458, 0, 0);
}

uint64_t sub_1D4EF0458()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_26_4();
  type metadata accessor for TVShow(v0);
  v1 = sub_1D4EF1A64(&qword_1EC7EA950, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_124(v1);
  OUTLINED_FUNCTION_139_1();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  OUTLINED_FUNCTION_82_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_51_6(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_27_3(v3);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCEAC0](v5, v6);
}

uint64_t sub_1D4EF0548()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static MusicSiriItemRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D4EF0770(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicSiriItemRequest(0);
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D4EF0770(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  MEMORY[0x1EEE9AC00](v48);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicSiriItemRequest.Kind(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA958, &qword_1D561D1C8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v47 - v17;
  v19 = &v47 + *(v16 + 56) - v17;
  sub_1D4EF19F4(a1, &v47 - v17);
  sub_1D4EF19F4(a2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D4EF19F4(v18, v14);
    v36 = *v14;
    v37 = *(v14 + 1);
    v38 = v14[16];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D4EF1A4C(v36, v37, v38);
LABEL_18:
      sub_1D4E50004(v18, &qword_1EC7EA958, &qword_1D561D1C8);
LABEL_19:
      v35 = 0;
      return v35 & 1;
    }

    v43 = *v19;
    v44 = *(v19 + 1);
    v45 = v19[16];
    v35 = sub_1D4EF0DE4(v36, v37, v38, v43, v44, v45);
    sub_1D4EF1A4C(v36, v37, v38);
    sub_1D4EF1A4C(v43, v44, v45);
LABEL_22:
    sub_1D4ED4004(v18, type metadata accessor for MusicSiriItemRequest.Kind);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D4EF19F4(v18, v9);
    v39 = *v9;
    v40 = v9[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D4E55E1C(v39, v40);
      goto LABEL_18;
    }

    v41 = *v19;
    v42 = *(v19 + 1);
    v35 = MEMORY[0x1DA6E1F70](v39, v40, v41, v42);
    sub_1D4E55E1C(v41, v42);
    sub_1D4E55E1C(v39, v40);
    goto LABEL_22;
  }

  sub_1D4EF19F4(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D4ED4004(v12, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
    goto LABEL_18;
  }

  sub_1D4EF228C(v19, v5);
  v21 = *(v12 + 1);
  v22 = *(v12 + 2);
  v23 = *(v12 + 3);
  v24 = v12[32];
  v54 = *v12;
  v55 = v21;
  v56 = v22;
  v57 = v23;
  v58 = v24;
  v26 = *(v5 + 1);
  v27 = *(v5 + 2);
  v28 = *(v5 + 3);
  v29 = v5[32];
  v49 = *v5;
  v25 = v49;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  sub_1D4EF2170(v54, v21, v22, v23, v24);
  sub_1D4EF2170(v25, v26, v27, v28, v29);
  LOBYTE(v25) = static MusicSiriRepresentation.ParsedIdentifier.== infix(_:_:)(&v54, &v49);
  sub_1D4EF21B4(v49, v50, v51, v52, v53);
  sub_1D4EF21B4(v54, v55, v56, v57, v58);
  if ((v25 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || ((v30 = *(v48 + 24), v31 = *&v12[v30], v32 = *&v12[v30 + 8], v33 = &v5[v30], v31 == *v33) ? (v34 = v32 == *(v33 + 1)) : (v34 = 0), !v34 && (sub_1D5616168() & 1) == 0))
  {
    sub_1D4ED4004(v5, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
    sub_1D4ED4004(v12, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
    sub_1D4ED4004(v18, type metadata accessor for MusicSiriItemRequest.Kind);
    goto LABEL_19;
  }

  sub_1D4ED4004(v5, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
  sub_1D4ED4004(v12, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
  sub_1D4ED4004(v18, type metadata accessor for MusicSiriItemRequest.Kind);
  v35 = 1;
  return v35 & 1;
}

uint64_t MusicSiriItemRequest.hash(into:)(uint64_t a1)
{
  sub_1D4EF1068(a1);
  v2 = type metadata accessor for MusicSiriItemRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_99_1();
  sub_1D4EF1A64(v3, v4, MEMORY[0x1E6974D28]);
  OUTLINED_FUNCTION_81_0();
  sub_1D5614CB8();
  v5 = *(v1 + *(v2 + 24));
  if (v5 == 4)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v5);
}

uint64_t MusicSiriItemRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  sub_1D4EF1068(v6);
  v1 = type metadata accessor for MusicSiriItemRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_99_1();
  sub_1D4EF1A64(v2, v3, MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  v4 = *(v0 + *(v1 + 24));
  sub_1D56162F8();
  if (v4 != 4)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4EF0DE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_4:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D4EF0E44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x1DA6EC0D0](a4);

  return sub_1D5614E28();
}

uint64_t sub_1D4EF0E98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a3);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D4EF0F04(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D4EF1068(v6);
  sub_1D560CD48();
  sub_1D4EF1A64(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  v4 = *(v2 + *(a2 + 24));
  sub_1D56162F8();
  if (v4 != 4)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4EF1010(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D56162D8();
  sub_1D4EF0E44(v6, v2, v3, v4);
  return sub_1D5616328();
}

uint64_t sub_1D4EF1068(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MusicSiriItemRequest.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4EF19F4(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D4EF228C(v8, v5);
      MEMORY[0x1DA6EC0D0](1);
      v10 = *v5;
      v11 = *(v5 + 3);
      if (v5[32])
      {
        MEMORY[0x1DA6EC0D0](1);
        MEMORY[0x1DA6EC100](v10);
        sub_1D5614E28();
        v21[15] = v11;
        MusicSiriRepresentation.Kind.rawValue.getter();
        sub_1D5614E28();
      }

      else
      {
        MEMORY[0x1DA6EC0D0](0);
        sub_1D5614E28();
        sub_1D5614E28();
      }

      sub_1D560D838();
      sub_1D4EF1A64(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
      sub_1D5614CB8();
      sub_1D5614E28();
      return sub_1D4ED4004(v5, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
    }

    else
    {
      v18 = *v8;
      v19 = *(v8 + 1);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D560C1A8();
      return sub_1D4E55E1C(v18, v19);
    }
  }

  else
  {
    v13 = *v8;
    v12 = *(v8 + 1);
    v14 = v8[16];
    MEMORY[0x1DA6EC0D0](0);
    if (v14)
    {
      if (v14 == 1)
      {
        MEMORY[0x1DA6EC0D0](1);
        sub_1D5614E28();
        v15 = v13;
        v16 = v12;
        v17 = 1;
      }

      else
      {
        MEMORY[0x1DA6EC0D0](2);
        sub_1D5614E28();
        v15 = v13;
        v16 = v12;
        v17 = 2;
      }
    }

    else
    {
      MEMORY[0x1DA6EC0D0](0);
      sub_1D5614E28();
      v15 = v13;
      v16 = v12;
      v17 = 0;
    }

    return sub_1D4EF1A4C(v15, v16, v17);
  }
}

uint64_t sub_1D4EF1398()
{
  sub_1D56162D8();
  sub_1D4EF1068(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4EF13E4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4EF1068(v2);
  return sub_1D5616328();
}

uint64_t MusicSiriItemRequest.Error.ItemNotFoundReason.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

BOOL static MusicSiriItemRequest.Error.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t MusicSiriItemRequest.Error.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1;
  }

  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicSiriItemRequest.Error.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D4EF15D0(uint64_t a1)
{
  sub_1D56162D8();
  MusicSiriItemRequest.Error.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSiriItemRequest.Error.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 3:
      return 0x7420656C62616E55;
    case 5:
      return 0xD000000000000010;
    case 4:
      return 0xD00000000000001ALL;
  }

  sub_1D5615B68();

  v3 = 0xEE00797261726269;
  v4 = 0x6C206E6920746F6ELL;
  if (v1 != 1)
  {
    v4 = 0x63206E6920746F6ELL;
    v3 = 0xEE00676F6C617461;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x80000001D567E5D0;
  }

  MEMORY[0x1DA6EAC70](v5, v6);

  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t MusicSiriItemRequest.Error.ItemNotFoundReason.description.getter()
{
  v1 = 0x6C206E6920746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x63206E6920746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void sub_1D4EF1814(uint64_t result, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (a3 == v4)
      {

        v19 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABA8, &unk_1D561D740);
        sub_1D4EF2338();
        sub_1D5614F68();
        return;
      }

      if (v4 >= a3)
      {
        break;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

      ++v4;
      if (v5)
      {
        OUTLINED_FUNCTION_98();
        v8 = sub_1D5614E38();
        if (v8 < 0)
        {
          goto LABEL_24;
        }

        v9 = v8;
        if (!v8)
        {
          goto LABEL_25;
        }

        v19 = 0;
        MEMORY[0x1DA6ED210](&v19, 8);
        if (v9 > v19 * v9)
        {
          v10 = -v9 % v9;
          while (v10 > v19 * v9)
          {
            v19 = 0;
            MEMORY[0x1DA6ED210](&v19, 8);
          }
        }

        sub_1D5614E68();
        v11 = sub_1D5614F58();
        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4EFFD0C(0, *(v6 + 16) + 1, 1, v6);
          v6 = v17;
        }

        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D4EFFD0C(v14 > 1, v15 + 1, 1, v6);
          v6 = v18;
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1D4EF19F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D4EF1A4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D4EF1A64(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4EF1AF8()
{
  result = qword_1EC7EA858;
  if (!qword_1EC7EA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA858);
  }

  return result;
}

unint64_t sub_1D4EF1B50()
{
  result = qword_1EC7EA860;
  if (!qword_1EC7EA860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA860);
  }

  return result;
}

void sub_1D4EF1BCC(uint64_t a1)
{
  type metadata accessor for MusicSiriItemRequest.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D560CD48();
    if (v2 <= 0x3F)
    {
      sub_1D4EF1C68();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D4EF1C68()
{
  if (!qword_1EDD53DD8)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53DD8);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicSiriItemRequest.Error(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriItemRequest.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4EF1E3C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D4EF1E50(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriItemRequest.Error.ItemNotFoundReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D4EF1F6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1D4EF1FAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D4EF2008(uint64_t a1)
{
  result = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D4EF20C8()
{
  result = qword_1EC7EA870;
  if (!qword_1EC7EA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA870);
  }

  return result;
}

unint64_t sub_1D4EF211C()
{
  result = qword_1EC7EA8B0;
  if (!qword_1EC7EA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA8B0);
  }

  return result;
}

uint64_t sub_1D4EF2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1D4EF21B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1D4EF21F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1D4EF2210()
{
  result = qword_1EC7EA960;
  if (!qword_1EC7EA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA960);
  }

  return result;
}

uint64_t sub_1D4EF2264(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4E58128(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D4EF2278(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4E58768(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D4EF228C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

unint64_t sub_1D4EF22E4()
{
  result = qword_1EC7EAB98;
  if (!qword_1EC7EAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAB98);
  }

  return result;
}

unint64_t sub_1D4EF2338()
{
  result = qword_1EDD5D040;
  if (!qword_1EDD5D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABA8, &unk_1D561D740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t a1, _BYTE *a2)
{
  *(v2 - 96) = a1;
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_65_7()
{

  return sub_1D560E248();
}

void OUTLINED_FUNCTION_87_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, _BYTE *a2)
{
  *(v3 - 88) = a1;
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_113_1()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_117_1(uint64_t a1, uint64_t a2)
{

  return sub_1D4EF228C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1)
{

  return sub_1D560DD68();
}

uint64_t OUTLINED_FUNCTION_125@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_129_0(uint64_t a1)
{

  return sub_1D4E50004(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_131_0()
{
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return sub_1D4EF228C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_136_0()
{
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return sub_1D560DCD8();
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return sub_1D4EF228C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1)
{

  return sub_1D560E2E8();
}

uint64_t OUTLINED_FUNCTION_143_0(unint64_t *a1)
{

  return sub_1D4EF1A64(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_150_2()
{
}

void OUTLINED_FUNCTION_151_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_162(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void static MusicPersonalRecommendationsRequest.seeAll(for:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  sub_1D560BB98();
  OUTLINED_FUNCTION_4();
  v53 = v5;
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v52 = v6;
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D560E408();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v51 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB0, &qword_1D561D760) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB8, &qword_1D561D768);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v55 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v57 = v3;
  sub_1D560E868();
  sub_1D4EF2CD8();
  v56 = v21;
  sub_1D560E418();
  (*(v9 + 104))(v0, *MEMORY[0x1E69752B0], v7);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v7);
  v22 = *(v12 + 56);
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_189_0();
  v23 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v23, v24, v7);
  if (!v29)
  {
    v28 = v55;
    sub_1D4F0AE7C();
    OUTLINED_FUNCTION_57(v1 + v22, 1, v7);
    if (!v29)
    {
      v34 = v51;
      (*(v9 + 32))(v51, v1 + v22, v7);
      OUTLINED_FUNCTION_89_4();
      sub_1D4F0B28C(v35, v36, MEMORY[0x1E69752F0]);
      OUTLINED_FUNCTION_75_2();
      v37 = sub_1D5614D18();
      v38 = v28;
      v39 = *(v9 + 8);
      v39(v34, v7);
      v40 = OUTLINED_FUNCTION_63_1();
      sub_1D4E50004(v40, v41, &qword_1D561D768);
      v42 = OUTLINED_FUNCTION_175();
      sub_1D4E50004(v42, v43, &qword_1D561D768);
      v39(v38, v7);
      sub_1D4E50004(v1, &qword_1EC7EABB8, &qword_1D561D768);
      v27 = v56;
      if ((v37 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v30 = OUTLINED_FUNCTION_98();
    sub_1D4E50004(v30, v31, &qword_1D561D768);
    sub_1D4E50004(v20, &qword_1EC7EABB8, &qword_1D561D768);
    v32 = OUTLINED_FUNCTION_85_0();
    v33(v32);
    v27 = v56;
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7EABB0, &qword_1D561D760);
    goto LABEL_16;
  }

  v25 = OUTLINED_FUNCTION_98();
  sub_1D4E50004(v25, v26, &qword_1D561D768);
  sub_1D4E50004(v20, &qword_1EC7EABB8, &qword_1D561D768);
  OUTLINED_FUNCTION_57(v1 + v22, 1, v7);
  v27 = v56;
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7EABB8, &qword_1D561D768);
LABEL_11:
  v44 = v52;
  sub_1D560BB28();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4EFFE00();
    v27 = v48;
  }

  v46 = *(v27 + 16);
  v45 = *(v27 + 24);
  if (v46 >= v45 >> 1)
  {
    OUTLINED_FUNCTION_93_1(v45);
    sub_1D4EFFE00();
    v27 = v49;
  }

  *(v27 + 16) = v46 + 1;
  (*(v53 + 32))(v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, v44, v54);
LABEL_16:
  v47 = sub_1D560E838();
  sub_1D4EF35B4(v27);
  v47(&v58, 0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EF3050(unint64_t a1)
{
  v3 = sub_1D4E62638(a1);
  v4 = sub_1D4E62638(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1D4F05FC8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D4F0ACF4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D4EF3128(uint64_t a1)
{
  v4 = a1;
  v5 = *(*(a1 + 16) + 16);
  v6 = sub_1D4E62638(*v1);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D4F05FC8(v8, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  v11 = sub_1D4EFED04(&v18, v3 + 8 * v9 + 32, v10);
  if (v11 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v3 + 16);
    v7 = __OFADD__(v12, v11);
    v13 = v11 + v12;
    if (v7)
    {
      __break(1u);
LABEL_19:
      *(v10 + 16) = v4;
      goto LABEL_7;
    }

    *(v3 + 16) = v13;
  }

  if (v11 != v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  v4 = *(v3 + 16);
  v15 = sub_1D4EFE8A8();
  if (v15)
  {
    while (1)
    {
      if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = v15;
        sub_1D56151B8();
        v15 = v17;
      }

      v2 = *v1;
      v10 = *v1 & 0xFFFFFFFFFFFFFF8;
      v16 = *(v10 + 0x18) >> 1;
      while (v4 < v16)
      {
        *(v10 + 32 + 8 * v4++) = v15;
        v15 = sub_1D4EFE8A8();
        if (!v15)
        {
          goto LABEL_19;
        }
      }

      *(v10 + 16) = v4;
    }
  }

LABEL_7:

  *v1 = v2;
  return result;
}

void sub_1D4EF329C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F061D4(v4, 1, sub_1D4F0029C);
  OUTLINED_FUNCTION_170();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_155_1(v3 + 80 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_174();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF3348(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F06064(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF3424(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F061D4(v4, 1, sub_1D4F00FB4);
  OUTLINED_FUNCTION_170();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
  OUTLINED_FUNCTION_230(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_174();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF34E0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F06104(v4);
  OUTLINED_FUNCTION_170();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_230(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_174();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF35B4(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v5 = OUTLINED_FUNCTION_20_19(v4);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  sub_1D4F061D4(v5, 1, v6);
  v10 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v11 = (*(v10 + 24) >> 1) - *(v10 + 16);
  v9(0);
  if (v11 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v10;
    OUTLINED_FUNCTION_190();
    return;
  }

  v12 = *(v10 + 16);
  v8 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v8)
  {
    *(v10 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF36B0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F06064(v4);
  OUTLINED_FUNCTION_170();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_155_1(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_174();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF37E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D4F061D4(v4, 1, sub_1D4EFF8E4);
  OUTLINED_FUNCTION_170();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_155_1(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_174();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D4EF3910(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(*v1 + 16);
  if (__OFADD__(v6, v5))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v2;
  sub_1D4F0624C(v6 + v5);
  v8 = *v1;
  if (v4 == v7)
  {
    if (v5 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v1 = v8;
      OUTLINED_FUNCTION_190();
      return;
    }

    __break(1u);
  }

  if ((*(v8 + 24) >> 1) - *(v8 + 16) < v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_arrayInitWithCopy();
  if (v5 <= 0)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, v5);
  v11 = v9 + v5;
  if (!v10)
  {
    *(v8 + 16) = v11;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t MusicPersonalRecommendationsRequest.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABC8, &unk_1D561D770);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41_6();
  v5 = sub_1D560E8A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1D560E8B8();
  OUTLINED_FUNCTION_57(v1, 1, v5);
  if (v7)
  {
    result = sub_1D4E50004(v1, &qword_1EC7EABC8, &unk_1D561D770);
    v13 = 0uLL;
    v14 = -1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_2();
    v9(v8);
    sub_1D4EF4770();
    v10 = OUTLINED_FUNCTION_93();
    result = v11(v10);
    v13 = v15;
    v14 = v16;
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

double sub_1D4EF3B48@<D0>(uint64_t a1@<X8>)
{
  MusicPersonalRecommendationsRequest.content.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void MusicPersonalRecommendationsRequest.content.setter()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v119 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v130 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v118 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for MusicRequestConfiguration(v8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1D560BB98();
  OUTLINED_FUNCTION_4();
  v125 = v15;
  v126 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v124 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v123 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v122 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v121 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v120 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABC8, &unk_1D561D770);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = *v4;
  v31 = *(v4 + 8);
  v33 = *(v4 + 16);
  v133[0] = *v4;
  v133[1] = v31;
  v134 = v33;
  v34 = OUTLINED_FUNCTION_66();
  sub_1D4EFFED8(v34, v35, v33);
  sub_1D4EF4EE0();
  sub_1D560E8C8();
  MusicPersonalRecommendationsRequest.configuration.getter();
  LOBYTE(v133[0]) = *(v13 + *(v10 + 76));
  sub_1D514E568(v133);
  sub_1D4E58360();
  MusicPersonalRecommendationsRequest.configuration.getter();
  sub_1D514E3E8(v13);
  OUTLINED_FUNCTION_143();
  sub_1D4E58360();
  v128 = v28;
  v129 = v1;
  if (v33 == 255)
  {
    sub_1D560BB58();
    sub_1D560BB58();
  }

  else if (v33)
  {
    switch(v32)
    {
      case 1:
      case 8:
        OUTLINED_FUNCTION_208();
        break;
      default:
        break;
    }

    v42 = sub_1D560E838();
    sub_1D5615248();
    v43 = OUTLINED_FUNCTION_78_0();
    v42(v43);
    sub_1D4EF5340(v31);
    v44 = sub_1D560E838();
    sub_1D5615268();

    v45 = OUTLINED_FUNCTION_78_0();
    v44(v45);
    v46 = OUTLINED_FUNCTION_66();
    sub_1D4F039A0(v46, v47, v33);
  }

  else
  {
    v36 = sub_1D560E838();
    sub_1D5615248();
    v37 = OUTLINED_FUNCTION_78_0();
    v36(v37);
    sub_1D4EF5340(v32);
    v38 = sub_1D560E838();
    sub_1D5615268();

    v39 = OUTLINED_FUNCTION_78_0();
    v38(v39);
    v40 = OUTLINED_FUNCTION_66();
    sub_1D4F039A0(v40, v41, v33);
  }

  v48 = sub_1D560E838();
  sub_1D5615258();
  v49 = OUTLINED_FUNCTION_78_0();
  v48(v49);
  v127 = v2;
  v50 = sub_1D560E838();
  sub_1D5615258();
  v51 = OUTLINED_FUNCTION_78_0();
  v50(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v52 = v130;
  v53 = *(v130 + 72);
  v54 = (*(v130 + 80) + 32) & ~*(v130 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1D561D750;
  v117 = v55;
  v56 = v55 + v54;
  sub_1D560FFB8();
  sub_1D560FEA8();
  v114 = v56 + 2 * v53;
  sub_1D5610038();
  v115 = 3 * v53;
  sub_1D560FF58();
  v116 = v56 + 4 * v53;
  sub_1D5610008();
  v133[0] = MEMORY[0x1E69E7CC0];
  sub_1D4F03980(0, 5, 0);
  v57 = v133[0];
  v58 = v118;
  v59 = v119;
  v60 = OUTLINED_FUNCTION_210();
  v131 = v62;
  v132 = v61;
  (v62)(v60);
  v63 = sub_1D5610058();
  v65 = v64;
  v130 = *(v52 + 8);
  (v130)(v58, v59);
  OUTLINED_FUNCTION_58_3();
  if (v67)
  {
    v109 = OUTLINED_FUNCTION_93_1(v66);
    OUTLINED_FUNCTION_146_2(v109);
    v57 = v133[0];
  }

  OUTLINED_FUNCTION_207();
  *(v68 + 32) = v63;
  *(v68 + 40) = v65;
  v131(v58, v56 + v53, v59);
  sub_1D5610058();
  v69 = OUTLINED_FUNCTION_171();
  v70(v69);
  OUTLINED_FUNCTION_58_3();
  if (v67)
  {
    v110 = OUTLINED_FUNCTION_93_1(v71);
    OUTLINED_FUNCTION_146_2(v110);
    v57 = v133[0];
  }

  OUTLINED_FUNCTION_207();
  *(v72 + 32) = v63;
  *(v72 + 40) = v53;
  v131(v58, v114, v59);
  sub_1D5610058();
  v73 = OUTLINED_FUNCTION_171();
  v74(v73);
  OUTLINED_FUNCTION_58_3();
  if (v67)
  {
    v111 = OUTLINED_FUNCTION_93_1(v75);
    OUTLINED_FUNCTION_146_2(v111);
    v57 = v133[0];
  }

  OUTLINED_FUNCTION_207();
  *(v76 + 32) = v63;
  *(v76 + 40) = v53;
  v131(v58, v56 + v115, v59);
  v77 = sub_1D5610058();
  v78 = v59;
  v80 = v79;
  (v130)(v58, v78);
  v133[0] = v57;
  v82 = *(v57 + 16);
  v81 = *(v57 + 24);
  if (v82 >= v81 >> 1)
  {
    v112 = OUTLINED_FUNCTION_93_1(v81);
    sub_1D4F03980(v112, v82 + 1, 1);
    v57 = v133[0];
  }

  *(v57 + 16) = v82 + 1;
  v83 = v57 + 16 * v82;
  *(v83 + 32) = v77;
  *(v83 + 40) = v80;
  v131(v58, v116, v78);
  v84 = sub_1D5610058();
  v86 = v85;
  v87 = OUTLINED_FUNCTION_75_2();
  (v130)(v87);
  OUTLINED_FUNCTION_58_3();
  if (v67)
  {
    v113 = OUTLINED_FUNCTION_93_1(v88);
    OUTLINED_FUNCTION_146_2(v113);
    v57 = v133[0];
  }

  OUTLINED_FUNCTION_207();
  *(v89 + 32) = v84;
  *(v89 + 40) = v86;
  swift_setDeallocating();
  sub_1D4EFF328(MEMORY[0x1E6975BC8]);
  v133[0] = v57;
  v90 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
  sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780, MEMORY[0x1E69E6310]);
  sub_1D5614CF8();

  v92 = v120;
  sub_1D560BB28();

  v93 = v121;
  sub_1D560BB28();
  v94 = v122;
  sub_1D560BB28();
  v95 = v123;
  sub_1D560BB28();
  sub_1D560BB28();
  v96 = sub_1D560E838();
  sub_1D5615258();
  v97 = OUTLINED_FUNCTION_78_0();
  v96(v97);
  v98 = OUTLINED_FUNCTION_231();
  sub_1D5615258();
  v99 = OUTLINED_FUNCTION_78_0();
  v98(v99);
  v100 = OUTLINED_FUNCTION_231();
  sub_1D5615258();
  v101 = OUTLINED_FUNCTION_78_0();
  v100(v101);
  v102 = OUTLINED_FUNCTION_231();
  sub_1D5615258();
  v103 = OUTLINED_FUNCTION_78_0();
  v102(v103);
  v104 = OUTLINED_FUNCTION_231();
  sub_1D5615258();
  v105 = OUTLINED_FUNCTION_78_0();
  v104(v105);
  v106 = v126;
  v107 = *(v125 + 8);
  v108 = OUTLINED_FUNCTION_109();
  v107(v108);
  (v107)(v95, v106);
  (v107)(v94, v106);
  (v107)(v93, v106);
  (v107)(v92, v106);
  (v107)(v129, v106);
  (v107)(v128, v106);
  OUTLINED_FUNCTION_46();
}

void sub_1D4EF4770()
{
  OUTLINED_FUNCTION_47();
  v65 = v1;
  v2 = sub_1D560E408();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D560E898();
  OUTLINED_FUNCTION_4();
  v79 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v76 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_135();
  v77 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  v74 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  sub_1D560E8A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  v22 = OUTLINED_FUNCTION_159();
  v23(v22);
  v24 = OUTLINED_FUNCTION_68_4();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x1E69753B8])
  {
    v27 = OUTLINED_FUNCTION_68_4();
    v28(v27);
    v29 = *v21;
    v30 = *(*v21 + 16);
    if (v30)
    {
      OUTLINED_FUNCTION_187(MEMORY[0x1E69E7CC0]);
      v31 = 0;
      v32 = v80;
      OUTLINED_FUNCTION_43_3();
      v73 = v29 + v33;
      v71 = *MEMORY[0x1E6975390];
      v68 = *MEMORY[0x1E6975388];
      v70 = *MEMORY[0x1E6975398];
      v66 = *MEMORY[0x1E69753A0];
      v35 = (v34 + 8);
      v78 = v29;
      while (v31 < *(v29 + 16))
      {
        v36 = *(v79 + 16);
        v36(v0, v73 + *(v79 + 72) * v31, v9);
        v37 = OUTLINED_FUNCTION_210();
        (v36)(v37);
        v38 = (*(v79 + 88))(v74, v9);
        if (v38 == v71)
        {
          v39 = 0;
        }

        else if (v38 == v70)
        {
          v39 = 1;
        }

        else if (v38 == v68)
        {
          v39 = 2;
        }

        else
        {
          if (v38 != v66)
          {
            goto LABEL_40;
          }

          v39 = 3;
        }

        (*v35)(v0, v9);
        v41 = *(v80 + 16);
        v40 = *(v80 + 24);
        if (v41 >= v40 >> 1)
        {
          v42 = OUTLINED_FUNCTION_93_1(v40);
          sub_1D4F03B84(v42, v41 + 1, 1);
        }

        ++v31;
        *(v80 + 16) = v41 + 1;
        *(v80 + v41 + 32) = v39;
        v29 = v78;
        if (v30 == v31)
        {

          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();
      OUTLINED_FUNCTION_227();
      sub_1D5615D48();
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      while (1)
      {
        sub_1D5615E08();
        __break(1u);
LABEL_42:
        OUTLINED_FUNCTION_153();
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000043, 0x80000001D567E8D0);
        sub_1D5615D48();
        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v65 = v32;
    *(v65 + 8) = 0;
    *(v65 + 16) = 0;
  }

  else
  {
    if (v26 != *MEMORY[0x1E69753B0])
    {
      goto LABEL_42;
    }

    v43 = OUTLINED_FUNCTION_68_4();
    v44(v43);
    v45 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2C0, &qword_1D561DFD8) + 48));
    v61 = v8;
    v62 = v4;
    v46 = OUTLINED_FUNCTION_175();
    v63 = v2;
    v47(v46);
    v48 = *(v45 + 16);
    if (v48)
    {
      OUTLINED_FUNCTION_187(MEMORY[0x1E69E7CC0]);
      v49 = 0;
      v50 = v80;
      OUTLINED_FUNCTION_43_3();
      v75 = v45 + v51;
      v72 = *MEMORY[0x1E6975390];
      v67 = *MEMORY[0x1E6975388];
      v69 = *MEMORY[0x1E6975398];
      v64 = *MEMORY[0x1E69753A0];
      do
      {
        if (v49 >= *(v45 + 16))
        {
          goto LABEL_39;
        }

        v52 = *(v79 + 16);
        v52(v77, v75 + *(v79 + 72) * v49, v9);
        v53 = OUTLINED_FUNCTION_132_1();
        (v52)(v53);
        v54 = (*(v79 + 88))(v76, v9);
        if (v54 == v72)
        {
          v55 = 0;
        }

        else if (v54 == v69)
        {
          v55 = 1;
        }

        else if (v54 == v67)
        {
          v55 = 2;
        }

        else
        {
          if (v54 != v64)
          {
            goto LABEL_40;
          }

          v55 = 3;
        }

        v56 = OUTLINED_FUNCTION_93();
        v57(v56);
        v59 = *(v80 + 16);
        v58 = *(v80 + 24);
        if (v59 >= v58 >> 1)
        {
          v60 = OUTLINED_FUNCTION_93_1(v58);
          sub_1D4F03B84(v60, v59 + 1, 1);
        }

        ++v49;
        *(v80 + 16) = v59 + 1;
        *(v80 + v59 + 32) = v55;
      }

      while (v48 != v49);
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D5292ACC(&v81);
    (*(v62 + 8))(v61, v63);
    *v65 = v81;
    *(v65 + 8) = v50;
    *(v65 + 16) = 1;
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4EF4EE0()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D560E408();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_162_0();
  v13 = sub_1D560E8A8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_7();
  v17 = *(v2 + 16);
  if (v17 == 255)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }

  else
  {
    v40 = v4;
    v18 = *v2;
    sub_1D4EFE600();
    if (v17)
    {
      v39 = v19;
      v20 = OUTLINED_FUNCTION_130();
      sub_1D4F039A0(v20, v21, v17);
      (*(v7 + 104))(v11, **(&unk_1E84C4610 + v18), v5);
      v22 = *(v7 + 32);
      v23 = OUTLINED_FUNCTION_85_0();
      v22(v23);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2C0, &qword_1D561DFD8) + 48);
      v25 = OUTLINED_FUNCTION_55_4();
      v22(v25);
      *(v0 + v24) = v39;
      v26 = MEMORY[0x1E69753B0];
    }

    else
    {
      v32 = v19;
      v33 = OUTLINED_FUNCTION_130();
      sub_1D4F039A0(v33, v34, v17);
      *v0 = v32;
      v26 = MEMORY[0x1E69753B8];
    }

    (*(v15 + 104))(v0, *v26, v13);
    (*(v15 + 32))(v40, v0, v13);
    OUTLINED_FUNCTION_219();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    OUTLINED_FUNCTION_46();
  }
}

void MusicPersonalRecommendationsRequest.configuration.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_85_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1D560E7E8();
  sub_1D560CCE8();
  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  type metadata accessor for MusicRequestConfiguration(0);
  swift_dynamicCast();
  OUTLINED_FUNCTION_219();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_29_3();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_10(v0);
  if (v17)
  {
    static MusicRequestConfiguration.globalDefault.getter(v2);
    OUTLINED_FUNCTION_10(v0);
    if (!v17)
    {
      sub_1D4E50004(v0, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_134_0();
    sub_1D4F0AECC();
  }

  sub_1D4E50004(v10, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EF5340(uint64_t a1)
{
  v2 = sub_1D560BB98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v59 = &v58 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v58 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v58 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  if (sub_1D52F8A78(0, a1) || sub_1D52F8A78(1u, a1))
  {
    sub_1D4EFF8E4();
    v22 = v21;
    v23 = *(v21 + 16);
    if (v23 >= *(v21 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v22 = v47;
    }

    *(v22 + 16) = v23 + 1;
    v24 = v22 + 16 * v23;
    *(v24 + 32) = 0x6C6169636F73;
    *(v24 + 40) = 0xE600000000000000;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D52F8A78(1u, a1))
  {
    sub_1D4EFF8E4();
    v26 = v25;
    v27 = *(v25 + 16);
    if (v27 >= *(v25 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v26 = v50;
    }

    *(v26 + 16) = v27 + 1;
    v28 = v26 + 16 * v27;
    *(v28 + 32) = 0xD000000000000014;
    *(v28 + 40) = 0x80000001D567E860;
    sub_1D560BB28();
    (*(v3 + 16))(v18, v20, v2);
    sub_1D4EFFE00();
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31 >= *(v29 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v30 = v51;
    }

    (*(v3 + 8))(v20, v2);
    *(v30 + 16) = v31 + 1;
    (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, v18, v2);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D52F8A78(2u, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFF8E4();
      v22 = v52;
    }

    v32 = *(v22 + 16);
    if (v32 >= *(v22 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v22 = v53;
    }

    *(v22 + 16) = v32 + 1;
    v33 = v22 + 16 * v32;
    *(v33 + 32) = 0x6563696F76;
    *(v33 + 40) = 0xE500000000000000;
    v34 = v63;
    sub_1D560BB28();
    (*(v3 + 16))(v64, v34, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFFE00();
      v30 = v54;
    }

    v35 = *(v30 + 16);
    if (v35 >= *(v30 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v30 = v55;
    }

    (*(v3 + 8))(v63, v2);
    *(v30 + 16) = v35 + 1;
    (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35, v64, v2);
  }

  if (sub_1D52F8A78(3u, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFF8E4();
      v22 = v56;
    }

    v36 = *(v22 + 16);
    if (v36 >= *(v22 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v22 = v57;
    }

    *(v22 + 16) = v36 + 1;
    v37 = v22 + 16 * v36;
    *(v37 + 32) = 0x7972617262696CLL;
    *(v37 + 40) = 0xE700000000000000;
  }

  else if (!*(v22 + 16))
  {

    goto LABEL_36;
  }

  v65 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780, MEMORY[0x1E69E6310]);
  sub_1D5614CF8();

  v38 = v61;
  sub_1D560BB28();

  v39 = v62;
  (*(v3 + 16))(v62, v38, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4EFFE00();
    v30 = v45;
  }

  v40 = *(v30 + 16);
  if (v40 >= *(v30 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v30 = v46;
  }

  (*(v3 + 8))(v38, v2);
  *(v30 + 16) = v40 + 1;
  (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v40, v39, v2);
LABEL_36:
  if (*(v26 + 16))
  {
    v65 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780, MEMORY[0x1E69E6310]);
    sub_1D5614CF8();

    v41 = v59;
    sub_1D560BB28();

    v42 = v60;
    (*(v3 + 16))(v60, v41, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFFE00();
      v30 = v48;
    }

    v43 = *(v30 + 16);
    if (v43 >= *(v30 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v30 = v49;
    }

    (*(v3 + 8))(v41, v2);
    *(v30 + 16) = v43 + 1;
    (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v43, v42, v2);
  }

  else
  {
  }

  return v30;
}

void (*MusicPersonalRecommendationsRequest.content.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_198(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABC8, &unk_1D561D770);
  OUTLINED_FUNCTION_22(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 32) = v5;
  v6 = sub_1D560E8A8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  *(v1 + 40) = v10;
  sub_1D560E8B8();
  v11 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v11, v12, v6);
  if (v13)
  {
    sub_1D4E50004(v5, &qword_1EC7EABC8, &unk_1D561D770);
    v16 = 0uLL;
    v17 = -1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_2();
    v15(v14);
    sub_1D4EF4770();
    (*(v8 + 8))(v10, v6);
    v16 = v19;
    v17 = v20;
  }

  *v1 = v16;
  *(v1 + 16) = v17;
  return sub_1D4EF5DBC;
}

void sub_1D4EF5DBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[4];
  v5 = v2[5];
  if (a2)
  {
    sub_1D4EFFED8(v3, v2[1], *(v2 + 16));
    MusicPersonalRecommendationsRequest.content.setter();
    sub_1D4F039A0(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    MusicPersonalRecommendationsRequest.content.setter();
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t MusicPersonalRecommendationsRequest.recommendationItemsLimit.setter(uint64_t a1, char a2)
{
  sub_1D560E858();
  v2 = sub_1D560E838();
  sub_1D5615228();
  return v2(&v4, 0);
}

void (*MusicPersonalRecommendationsRequest.recommendationItemsLimit.modify())(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *(OUTLINED_FUNCTION_198(v2) + 48) = v0;
  *(v1 + 32) = sub_1D560E848();
  *(v1 + 40) = v3 & 1;
  return sub_1D4EF5FA0;
}

void sub_1D4EF5FA0(void **a1)
{
  v1 = *a1;
  sub_1D560E858();
  v2 = sub_1D560E838();
  sub_1D5615228();
  v2(v1, 0);

  free(v1);
}

uint64_t MusicPersonalRecommendationsRequest.source.getter@<X0>(char *a1@<X8>)
{
  sub_1D560D358();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  sub_1D560E878();
  v3 = OUTLINED_FUNCTION_61();
  result = v4(v3);
  if (result != *MEMORY[0x1E6974E90])
  {
    if (result == *MEMORY[0x1E6974EA8])
    {
      v6 = 1;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E98])
    {
      v6 = 2;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E88])
    {
      v6 = 3;
      goto LABEL_9;
    }

    if (result != *MEMORY[0x1E6974EA0])
    {
      v7 = OUTLINED_FUNCTION_61();
      result = v8(v7);
    }
  }

  v6 = 0;
LABEL_9:
  *a1 = v6;
  return result;
}

uint64_t sub_1D4EF6194@<X0>(_BYTE *a1@<X8>)
{
  result = MusicPersonalRecommendationsRequest.source.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.source.setter()
{
  OUTLINED_FUNCTION_64_1();
  v2 = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_162_0();
  (*(v4 + 104))(v1, **(&unk_1E84C4660 + *v0), v2);
  v7 = OUTLINED_FUNCTION_75_2();
  v8(v7);
  return sub_1D560E888();
}

void (*MusicPersonalRecommendationsRequest.source.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  *(v1 + 8) = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  *(v1 + 16) = v3;
  *(v1 + 24) = OUTLINED_FUNCTION_192();
  *(v1 + 32) = OUTLINED_FUNCTION_192();
  *(v1 + 40) = OUTLINED_FUNCTION_192();
  *(v1 + 48) = OUTLINED_FUNCTION_192();
  *(v1 + 56) = OUTLINED_FUNCTION_192();
  sub_1D560E878();
  v4 = OUTLINED_FUNCTION_75_2();
  v6 = v5(v4);
  v7 = *MEMORY[0x1E6974E90];
  *(v1 + 64) = *MEMORY[0x1E6974E90];
  if (v6 != v7)
  {
    if (v6 == *MEMORY[0x1E6974EA8])
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v6 == *MEMORY[0x1E6974E98])
    {
      v8 = 2;
      goto LABEL_9;
    }

    if (v6 == *MEMORY[0x1E6974E88])
    {
      v8 = 3;
      goto LABEL_9;
    }

    if (v6 != *MEMORY[0x1E6974EA0])
    {
      v10 = OUTLINED_FUNCTION_75_2();
      v11(v10);
    }
  }

  v8 = 0;
LABEL_9:
  *(v1 + 68) = v8;
  return sub_1D4EF6494;
}

void sub_1D4EF6494()
{
  OUTLINED_FUNCTION_47();
  if (v7)
  {
    OUTLINED_FUNCTION_126();
    v8(v4);
    v9 = OUTLINED_FUNCTION_201();
    v10(v9);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    v11(v2);
    (*(v6 + 32))(v1, v2, v5);
  }

  sub_1D560E888();
  free(v0);
  free(v1);
  free(v2);
  free(v3);
  free(v4);
  OUTLINED_FUNCTION_46();

  free(v12);
}

uint64_t (*MusicPersonalRecommendationsRequest.itemProperties.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = _s8MusicKit0A30PersonalRecommendationsRequestV0aB8InternalE14itemPropertiesSayAA07PartialA13AsyncPropertyCyAA0aC14RecommendationV4ItemOGGvg_0();
  return sub_1D4EF667C;
}

uint64_t sub_1D4EF667C(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _s8MusicKit0A30PersonalRecommendationsRequestV0aB8InternalE14itemPropertiesSayAA07PartialA13AsyncPropertyCyAA0aC14RecommendationV4ItemOGGvs_0();
  }

  _s8MusicKit0A30PersonalRecommendationsRequestV0aB8InternalE14itemPropertiesSayAA07PartialA13AsyncPropertyCyAA0aC14RecommendationV4ItemOGGvs_0();
}

void MusicPersonalRecommendationsRequest.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_191();
  a17 = v18;
  a18 = v19;
  OUTLINED_FUNCTION_46_7();
  v20 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_12_14();
  sub_1D4F0B28C(v27, v28, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  v29 = OUTLINED_FUNCTION_85_0();
  v30(v29);
  sub_1D560E7F8();
  OUTLINED_FUNCTION_33_12();
  sub_1D4E58360();
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_190();
}

void (*MusicPersonalRecommendationsRequest.configuration.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = sub_1D560CD48();
  v1[1] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[2] = v4;
  v1[3] = OUTLINED_FUNCTION_235();
  v1[4] = OUTLINED_FUNCTION_235();
  v5 = type metadata accessor for MusicRequestConfiguration(0);
  v1[5] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[6] = OUTLINED_FUNCTION_235();
  v1[7] = OUTLINED_FUNCTION_235();
  MusicPersonalRecommendationsRequest.configuration.getter();
  return sub_1D4EF6994;
}

void sub_1D4EF6994()
{
  OUTLINED_FUNCTION_47();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v5 = *(*v0 + 16);
  v4 = *(*v0 + 24);
  v6 = *(*v0 + 8);
  if (v7)
  {
    sub_1D4F0B238();
    OUTLINED_FUNCTION_12_14();
    sub_1D4F0B28C(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    v10 = OUTLINED_FUNCTION_178();
    v11(v10);
    sub_1D560E7F8();
    (*(v5 + 8))(v3, v6);
    OUTLINED_FUNCTION_33_12();
    sub_1D4E58360();
  }

  else
  {
    OUTLINED_FUNCTION_12_14();
    sub_1D4F0B28C(v12, v13, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    v14 = OUTLINED_FUNCTION_178();
    v15(v14);
    sub_1D560E7F8();
    (*(v5 + 8))(v3, v6);
  }

  sub_1D4E58360();
  free(v2);
  free(v1);
  free(v3);
  free(v4);
  OUTLINED_FUNCTION_46();

  free(v16);
}

void static MusicPersonalRecommendationsRequest.Content.listenNow.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static MusicPersonalRecommendationsRequest.Content.listenNow(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t static MusicPersonalRecommendationsRequest.Content.module(_:with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t MusicPersonalRecommendationsRequest.Content.AdditionalContent.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void static MusicPersonalRecommendationsRequest.Content.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if ((v5 & 1) == 0)
  {
    v9 = *v2;
    v10 = *v1;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1D4EFC494(v10, v9);
    v8 = v5;
    goto LABEL_8;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v9 = *(v2 + 8);
  v10 = *(v1 + 8);
  if (v6 == v3)
  {
    goto LABEL_7;
  }

  v8 = 1;
  v5 = 1;
LABEL_8:
  sub_1D4EFFEF0(v6, v7, v8);
  sub_1D4EFFEF0(v3, v4, v5);
  sub_1D4F039B8(v3, v4, v5);
  sub_1D4F039B8(v6, v7, v8);
  OUTLINED_FUNCTION_190();
}

void sub_1D4EF6CE4()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = type metadata accessor for MusicSearchResultGroup(v4);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_56_5();
  v8 = *(v2 + 16);
  if (v8 == *(v3 + 16) && v8 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4();
    v10 = v2 + v9;
    v11 = v3 + v9;
    v18 = *(v12 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_158();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v16 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
      if (!v16 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      type metadata accessor for GenericMusicItem(0);
      sub_1D4F0B28C(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      sub_1D4F0B28C(&qword_1EDD5C5F8, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      if ((sub_1D560DAA8() & 1) == 0)
      {
        break;
      }

      v17 = *(v1 + *(v5 + 28)) ^ *(v0 + *(v5 + 28));
      sub_1D4E58360();
      OUTLINED_FUNCTION_220();
      sub_1D4E58360();
      if ((v17 & 1) == 0)
      {
        v11 += v18;
        v10 += v18;
        if (--v8)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_21:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EF6F7C()
{
  OUTLINED_FUNCTION_206();
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D5615A98())
  {
    v4 = v0 >> 62 ? sub_1D5615A98() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v4 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_204_0();
    if (!v8)
    {
      v7 = v0;
    }

    if (v0 >> 62)
    {
      v6 = v7;
    }

    if (v5 == v6)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    sub_1D560CDE8();
    v9 = 4;
    while (1)
    {
      v10 = v9 - 4;
      v11 = v9 - 3;
      if (__OFADD__(v9 - 4, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](v9 - 4, v1);
      }

      else
      {
        if (v10 >= *(v21 + 16))
        {
          goto LABEL_29;
        }
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v12 = OUTLINED_FUNCTION_214();
        MEMORY[0x1DA6EB9B0](v12);
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_88_3();
      v14 = sub_1D4F0B28C(&qword_1EC7EB038, v13, MEMORY[0x1E6974D40]);
      v19 = OUTLINED_FUNCTION_228(v14, v15, v16, v17, v18);

      if (v19)
      {
        ++v9;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}