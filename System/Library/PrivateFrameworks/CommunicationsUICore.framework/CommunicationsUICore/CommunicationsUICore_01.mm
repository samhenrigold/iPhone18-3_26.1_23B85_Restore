uint64_t sub_1C2F0EB9C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0ECBC, v3, v2);
}

uint64_t sub_1C2F0ECBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ActivityWrapper.end()()
{
  v1[2] = v0;
  v2 = sub_1C2F75D1C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0);
  v1[6] = swift_task_alloc();
  sub_1C2F7688C();
  v1[7] = sub_1C2F7687C();
  v4 = sub_1C2F7684C();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0EE9C, v4, v3);
}

uint64_t sub_1C2F0EE9C()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1C2F75D0C();
  v7 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1C2F0EFAC;
  v4 = v0[5];
  v5 = v0[6];

  return v7(v5, v4);
}

uint64_t sub_1C2F0EFAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  (*(v4 + 8))(v3, v5);
  sub_1C2F0A8D8(v2, &qword_1EC076338, &qword_1C2F791E0);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F15C, v7, v6);
}

uint64_t sub_1C2F0F15C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActivityWrapper.deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver + 8, &qword_1EC076340, qword_1C2F791E8);
  return v0;
}

uint64_t ActivityWrapper.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver + 8, &qword_1EC076340, qword_1C2F791E8);

  return swift_deallocClassInstance();
}

char *sub_1C2F0F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C2F761FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IntelligenceActivityAttributes(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F0E650(a1, v16, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(a2, v13, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  (*(v8 + 16))(v10, a3, v7);
  swift_allocObject();
  v17 = v21;
  result = sub_1C2F0CB3C(v16, v13, v10);
  if (!v17)
  {
    *v20 = result;
  }

  return result;
}

uint64_t sub_1C2F0F50C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C2F06348;

  return ActivityWrapper.update(_:)(a1);
}

uint64_t sub_1C2F0F5A4()
{
  v2 = sub_1C2F75D1C();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_1C2F7688C();
  v1[7] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F6D0, v6, v5);
}

uint64_t sub_1C2F0F6D0()
{
  v1 = v0[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1C2F75D0C();
  v7 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1C2F0F7E0;
  v4 = v0[4];
  v5 = v0[5];

  return v7(v5, v4);
}

uint64_t sub_1C2F0F7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);

  (*(v4 + 8))(v3, v5);
  sub_1C2F0A8D8(v2, &qword_1EC076338, &qword_1C2F791E0);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F990, v7, v6);
}

uint64_t sub_1C2F0F990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F0FA04()
{
  v0 = sub_1C2F75CDC();
  v2 = v1;
  if (v0 == sub_1C2F75CDC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C2F76EFC();
  }

  return v5 & 1;
}

uint64_t ActivityWrapper.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - v2;
  v4 = sub_1C2F75D7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0x7974697669746341, 0xE900000000000028);
  v8 = sub_1C2F75CDC();
  MEMORY[0x1C6928D30](v8);

  MEMORY[0x1C6928D30](0x3A65746174732029, 0xE900000000000020);
  sub_1C2F75CBC();
  sub_1C2F76D3C();
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1C6928D30](0x746E65746E6F6320, 0xEF203A6574617453);
  sub_1C2F75CEC();
  sub_1C2EF7414(&qword_1EC076348, &qword_1EC076318, &qword_1C2F791D0, MEMORY[0x1E6959C50]);
  v9 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v9);

  (*(v1 + 8))(v3, v0);
  return v11[0];
}

uint64_t sub_1C2F0FD9C(uint64_t a1)
{
  *(a1 + 8) = sub_1C2F0FE6C(&qword_1EDEBD060, type metadata accessor for ActivityWrapper, &protocol conformance descriptor for ActivityWrapper);
  result = sub_1C2F0FE6C(qword_1EDEBD068, type metadata accessor for ActivityWrapper, &protocol conformance descriptor for ActivityWrapper);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ActivityWrapper(uint64_t a1)
{
  result = qword_1EDEBD050;
  if (!qword_1EDEBD050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F0FE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ActivityWrapperProtocol.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C2F0AC48;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityWrapperProtocol.end()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F0AC48;

  return v7(a1, a2);
}

uint64_t sub_1C2F10124(uint64_t a1)
{
  result = sub_1C2F761FC();
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

uint64_t sub_1C2F101E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2F10244(uint64_t a1)
{
  v4 = *(sub_1C2F761FC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C2F06348;

  return sub_1C2F0D730(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C2F103EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C2F76ADC();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return sub_1C2F10568(v7);
}

uint64_t sub_1C2F104BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C2F76ADC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C2F10568(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C2F76ADC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t CallScreeningActivityController.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CallScreeningActivityController.init(logger:)(a1);
  return v2;
}

uint64_t CallScreeningActivityController.init(logger:)(uint64_t a1)
{
  v2 = v1;
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + *(*v1 + 104), 1, 1);
  v4 = *(*v1 + 112);
  sub_1C2F75E1C();
  *(v1 + v4) = sub_1C2F75E0C();
  v5 = qword_1EDEBDA90;
  v6 = sub_1C2F761FC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t sub_1C2F10758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = *(type metadata accessor for IntelligenceActivityAttributes(0) - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  sub_1C2F7688C();
  v4[13] = sub_1C2F7687C();
  v8 = sub_1C2F7684C();
  v4[14] = v8;
  v4[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2F108DC, v8, v7);
}

uint64_t sub_1C2F108DC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v15 = v0[11];
  v16 = v2;
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  sub_1C2F0E650(v0[3], v1, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(v7, v2, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = (v15 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  v11 = *(v6 + 80);
  v10[2] = v11;
  v10[3] = *(v6 + 88);
  v10[4] = v5;
  sub_1C2F114F8(v1, v10 + v8, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F114F8(v16, v10 + v9, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v17 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1C2F10ABC;
  v13 = v0[2];

  return v17(v13, &unk_1C2F79380, v10, v11);
}

uint64_t sub_1C2F10ABC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1C2F10C8C;
  }

  else
  {
    v5 = sub_1C2F10C14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C2F10C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F10C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F10D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *a2;
  v4[6] = *a2;
  v4[7] = *(v5 + 80);
  v6 = sub_1C2F76ADC();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = sub_1C2F7688C();
  v4[13] = sub_1C2F7687C();
  v7 = swift_task_alloc();
  v4[14] = v7;
  *v7 = v4;
  v7[1] = sub_1C2F10E64;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F10E64()
{

  v1 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F10FA0, v1, v0);
}

uint64_t sub_1C2F10FA0()
{
  v25 = v0;
  v1 = v0[3];

  v2 = qword_1EDEBDA90;
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v24);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v24);
    _os_log_impl(&dword_1C2EF2000, v3, v4, "[%s] %s: Requesting Call Screening Live Activity.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v7 = *(v0[6] + 88);
  (*(v7 + 40))(v0[4], v0[5], v1 + v2);
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[7];
  v11 = *(v10 - 8);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_1C2F10568(v9);
  sub_1C2F104BC(v8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v24);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v24);
      _os_log_impl(&dword_1C2EF2000, v12, v13, "[%s] %s: Failed to start the Call Screening Live Activity", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v15, -1, -1);
      MEMORY[0x1C6929E80](v14, -1, -1);
    }

    type metadata accessor for CallScreeningActivityController.Error(0, v0[7], v7, v16);
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 0xD00000000000001CLL;
    v17[1] = 0x80000001C2F7E890;
    swift_willThrow();

    v18 = v0[1];
  }

  else
  {
    (*(v11 + 32))(v0[2], v0[10], v0[7]);
    v20 = sub_1C2F761DC();
    v21 = sub_1C2F769EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v24);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v24);
      _os_log_impl(&dword_1C2EF2000, v20, v21, "[%s] %s: Started Call Screening Live Activity", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v23, -1, -1);
      MEMORY[0x1C6929E80](v22, -1, -1);
    }

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1C2F114F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2F11560(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C2F0AC48;

  return sub_1C2F10D04(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1C2F116AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *v2;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(v4 + 80);
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v3[11] = *(v7 + 64);
  v3[12] = swift_task_alloc();
  sub_1C2F7688C();
  v3[13] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v3[14] = v9;
  v3[15] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F11844, v9, v8);
}

uint64_t sub_1C2F11844()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v13 = v0[11];
  v5 = v0[6];
  v14 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  (*(v3 + 16))(v1, v0[2], v2);
  sub_1C2F0E650(v7, v4, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = (v13 + *(v5 + 80) + v8) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 2) = v2;
  *(v10 + 3) = *(v14 + 88);
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v8], v1, v2);
  sub_1C2F114F8(v4, &v10[v9], type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v15 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1C2F11A30;

  return v15();
}

uint64_t sub_1C2F11A30()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1C2F11BC4;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1C2F11B4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C2F11B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F11BC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F11C50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *a2;
  v4[5] = *a2;
  v6 = *(v5 + 80);
  v4[6] = v6;
  v7 = sub_1C2F76ADC();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1C2F7688C();
  v4[14] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v4[15] = v9;
  v4[16] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F11DF8, v9, v8);
}

uint64_t sub_1C2F11DF8()
{
  v31 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  sub_1C2F104BC(v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
    v7 = sub_1C2F761DC();
    v8 = sub_1C2F769DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v30);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, v30);
      _os_log_impl(&dword_1C2EF2000, v7, v8, "[%s] %s: Cannot update activity that is not started", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v10, -1, -1);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    type metadata accessor for CallScreeningActivityController.Error(0, v0[6], *(v0[5] + 88), v11);
    swift_getWitnessTable();
    swift_allocError();
    *v12 = 0xD00000000000002ALL;
    v12[1] = 0x80000001C2F7E7E0;
    swift_willThrow();
LABEL_12:

    v28 = v0[1];

    return v28();
  }

  v13 = v0[5];
  (*(v0[10] + 32))(v0[13], v0[9], v0[6]);
  v14 = *(v13 + 88);
  v0[17] = v14;
  if ((sub_1C2F7662C() & 1) == 0)
  {

    v19 = sub_1C2F761DC();
    v20 = sub_1C2F769DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v30);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, v30);
      _os_log_impl(&dword_1C2EF2000, v19, v20, "[%s] %s: currentActivity does not equal the activity we want to update.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v22, -1, -1);
      MEMORY[0x1C6929E80](v21, -1, -1);
    }

    v23 = v0[13];
    v24 = v0[10];
    v25 = v0[6];
    type metadata accessor for CallScreeningActivityController.Error(0, v25, v14, v26);
    swift_getWitnessTable();
    swift_allocError();
    *v27 = 0xD000000000000031;
    v27[1] = 0x80000001C2F7E850;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    goto LABEL_12;
  }

  v29 = (*(v14 + 48) + **(v14 + 48));
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1C2F12374;
  v16 = v0[6];
  v17 = v0[4];

  return v29(v17, v16, v14);
}

uint64_t sub_1C2F12374()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C2F12494, v3, v2);
}

uint64_t sub_1C2F12494()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  v5 = *(v3 + 16);
  v5(v2, v1, v4);
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769EC();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = v0[13];
    v22 = v0[12];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v11 = 136315650;
    *(v11 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, &v25);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, &v25);
    *(v11 + 22) = 2080;
    v5(v8, v22, v10);
    v12 = *(v9 + 8);
    v12(v22, v10);
    v13 = sub_1C2F76EEC();
    v15 = v14;
    v12(v8, v10);
    v16 = sub_1C2EFAB28(v13, v15, &v25);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "[%s] %s:Updated Call Screening Live Activity %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v23, -1, -1);
    MEMORY[0x1C6929E80](v11, -1, -1);

    v12(v24, v10);
  }

  else
  {
    v17 = v0[13];
    v18 = v0[6];
    v19 = *(v0[10] + 8);
    v19(v0[12], v18);

    v19(v17, v18);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1C2F12770(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 40) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = *(*(*(v1 + 16) - 8) + 64);
  v7 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1C2F0AC48;

  return sub_1C2F11C50(a1, v9, v1 + v5, v1 + v8);
}

uint64_t sub_1C2F128B8()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v4 = sub_1C2F76ADC();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1C2F7688C();
  v1[14] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2F12A74, v6, v5);
}

uint64_t sub_1C2F12A74()
{
  v50 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0 + 9;
  v5 = v0 + 4;
  v4 = v0[4];
  sub_1C2F104BC(v1);
  v6 = *(v2 + 48);
  if (v6(v1, 1, v4) == 1)
  {
    v7 = v0[6];

    v5 = v0 + 5;
    v8 = (v7 + 8);
LABEL_8:
    (*v8)(*v3, *v5);

    v36 = v0[1];

    return v36();
  }

  v47 = v6;
  v3 = v0 + 13;
  v9 = v0[13];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[4];
  (*(v11 + 32))(v9, v0[9], v12);
  v13 = v12;
  v14 = *(v11 + 16);
  v14(v10, v9, v13);
  v15 = sub_1C2F761DC();
  v16 = sub_1C2F769CC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[12];
  v46 = v14;
  if (v17)
  {
    log = v15;
    v20 = v0[10];
    v19 = v0[11];
    v44 = v16;
    v21 = v0[4];
    buf = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *buf = 136315138;
    v46(v19, v18, v21);
    v22 = *(v20 + 8);
    v22(v18, v21);
    v23 = v19;
    v24 = sub_1C2F76EEC();
    v26 = v25;
    v22(v23, v21);
    v27 = sub_1C2EFAB28(v24, v26, &v49);

    *(buf + 4) = v27;
    _os_log_impl(&dword_1C2EF2000, log, v44, "CallScreeningActivityController - Ending activity %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1C6929E80](v43, -1, -1);
    MEMORY[0x1C6929E80](buf, -1, -1);
  }

  else
  {
    v22 = *(v0[10] + 8);
    v22(v18, v0[4]);
  }

  v0[17] = v22;
  v8 = (v0 + 17);
  v28 = v0[8];
  v29 = v0[6];
  v30 = v0[4];
  sub_1C2F104BC(v28);
  v31 = v47(v28, 1, v30);
  v32 = (v29 + 8);
  v33 = v0[8];
  v34 = v0[5];
  if (v31)
  {

    (*v32)(v33, v34);
    v35 = v0[7];
    (*(v0[10] + 56))(v35, 1, 1, v0[4]);
    sub_1C2F10568(v35);
    goto LABEL_8;
  }

  v38 = v0[3];
  v46(v0[11], v0[8], v0[4]);
  (*v32)(v33, v34);
  v39 = *(v38 + 88);
  v48 = (*(v39 + 56) + **(v39 + 56));
  v40 = swift_task_alloc();
  v0[18] = v40;
  *v40 = v0;
  v40[1] = sub_1C2F12F58;
  v41 = v0[4];

  return v48(v41, v39);
}

uint64_t sub_1C2F12F58()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 32);

  v2(v3, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C2F130F0, v6, v5);
}

uint64_t sub_1C2F130F0()
{

  v1 = *(v0 + 56);
  (*(*(v0 + 80) + 56))(v1, 1, 1, *(v0 + 32));
  sub_1C2F10568(v1);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C2F131F0()
{
  v1[2] = v0;
  sub_1C2F7688C();
  v1[3] = sub_1C2F7687C();
  v3 = sub_1C2F7684C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F13288, v3, v2);
}

uint64_t sub_1C2F13288()
{
  v3 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F13374;

  return v3();
}

uint64_t sub_1C2F13374()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0D940, v3, v2);
}

uint64_t sub_1C2F134B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F0AC48;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F13548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F0AC48;

  return sub_1C2F134B8();
}

uint64_t sub_1C2F135E4()
{

  sub_1C2F75DFC();
}

uint64_t sub_1C2F13658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06348;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F136E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06348;

  return sub_1C2F13658();
}

uint64_t static CallScreeningActivityController.stopAllActivities()()
{
  v1 = sub_1C2F75D1C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0);
  v0[5] = swift_task_alloc();
  sub_1C2F7688C();
  v0[6] = sub_1C2F7687C();
  v3 = sub_1C2F7684C();
  v0[7] = v3;
  v0[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F138A0, v3, v2);
}

uint64_t sub_1C2F138A0()
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  __swift_project_value_buffer(v1, qword_1EDEBDA78);
  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "CallScreeningActivityController - Stopping all activities with IntelligenceActivityAttributes", v4, 2u);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076368, &qword_1C2F79320);
  v5 = sub_1C2F75CAC();
  v0[9] = v5;
  if (v5 >> 62)
  {
    result = sub_1C2F76BBC();
    v0[10] = result;
    if (result)
    {
LABEL_7:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[11] = 0;
        v7 = v0[9];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C6929250](0);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v0[12] = v8;
        v9 = v0[5];
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
        sub_1C2F75D0C();
        v15 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
        v11 = swift_task_alloc();
        v0[13] = v11;
        *v11 = v0;
        v11[1] = sub_1C2F13B44;
        v12 = v0[4];
        v13 = v0[5];

        return v15(v13, v12);
      }

      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[10] = result;
    if (result)
    {
      goto LABEL_7;
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C2F13B44()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);

  (*(v4 + 8))(v3, v5);
  sub_1C2F13FD8(v2);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1C2F13CE4, v7, v6);
}

uint64_t sub_1C2F13CE4()
{
  v1 = v0[11];
  v2 = v0[10];

  if (v1 + 1 == v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[11] + 1;
    v0[11] = v5;
    v6 = v0[9];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6929250]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v0[12] = v7;
    v8 = v0[5];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1C2F75D0C();
    v13 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_1C2F13B44;
    v11 = v0[4];
    v12 = v0[5];

    return v13(v12, v11);
  }
}

uint64_t *CallScreeningActivityController.deinit()
{
  v1 = qword_1EDEBDA90;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_1C2F76ADC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t CallScreeningActivityController.__deallocating_deinit()
{
  CallScreeningActivityController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F13FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F14044(uint64_t a1)
{
  result = sub_1C2F761FC();
  if (v2 <= 0x3F)
  {
    result = sub_1C2F76ADC();
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

uint64_t dispatch thunk of CallScreeningActivityController.startActivity(with:contentState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C2F06348;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CallScreeningActivityController.update(_:with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C2F0AC48;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CallScreeningActivityController.stopActivity()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C2F0AC48;

  return v4();
}

{
  return (*(*v0 + 184))();
}

uint64_t sub_1C2F14568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2F145B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F145F8(uint64_t result, int a2, int a3)
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

uint64_t IntelligenceActivityAttributes.ContentState.titleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t IntelligenceActivityAttributes.ContentState.subtitleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 8);
  v12 = *a4;
  v11 = a4[1];
  v17 = *(a4 + 8);
  sub_1C2F09460(a1, a6, &qword_1EC076410, &qword_1C2F794E0);
  v13 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  result = sub_1C2F09460(a2, a6 + v13[5], &qword_1EC076410, &qword_1C2F794E0);
  v15 = a6 + v13[6];
  *v15 = v8;
  *(v15 + 8) = v9;
  *(v15 + 16) = v10;
  v16 = a6 + v13[7];
  *v16 = v12;
  *(v16 + 8) = v11;
  *(v16 + 16) = v17;
  *(a6 + v13[8]) = a5;
  return result;
}

uint64_t sub_1C2F14864()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 0x6D7953656C746974;
  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F14914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F17EEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F14954(uint64_t a1)
{
  v2 = sub_1C2F17318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F14990(uint64_t a1)
{
  v2 = sub_1C2F17318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceActivityAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076418, &qword_1C2F794E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F17318();
  sub_1C2F7702C();
  LOBYTE(v18) = 0;
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC076428, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  sub_1C2F76E5C();
  if (!v2)
  {
    v9 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
    LOBYTE(v18) = 1;
    sub_1C2F76E5C();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    v12 = v10[1];
    LOWORD(v10) = *(v10 + 8);
    v18 = v11;
    v19 = v12;
    v20 = v10;
    v21 = 2;
    sub_1C2F1736C();

    sub_1C2F76E5C();

    v13 = (v3 + *(v9 + 28));
    v15 = *v13;
    v14 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v18 = v15;
    v19 = v14;
    v20 = v13;
    v21 = 3;

    sub_1C2F76E5C();

    LOBYTE(v18) = 4;
    sub_1C2F76E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t IntelligenceActivityAttributes.ContentState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C2F759EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_1C2EF6A3C(v2, &v20 - v11, &qword_1EC076410, &qword_1C2F794E0);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_1C2F76FBC();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_1C2F76FBC();
    sub_1C2F173C0(&qword_1EC076438, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1C2F7661C();
    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  sub_1C2EF6A3C(v2 + v14[5], v10, &qword_1EC076410, &qword_1C2F794E0);
  if (v13(v10, 1, v3) == 1)
  {
    sub_1C2F76FBC();
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1C2F76FBC();
    sub_1C2F173C0(&qword_1EC076438, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1C2F7661C();
    (*(v4 + 8))(v6, v3);
  }

  v15 = v2 + v14[6];
  if (*(v15 + 8))
  {
    v16 = *(v15 + 16);
    sub_1C2F76FBC();
    sub_1C2F7673C();
    MEMORY[0x1C6929580](v16 & 1);
    MEMORY[0x1C6929580](v16 >> 8);
  }

  else
  {
    sub_1C2F76FBC();
  }

  v17 = v2 + v14[7];
  if (*(v17 + 8))
  {
    v18 = *(v17 + 16);
    sub_1C2F76FBC();
    sub_1C2F7673C();
    MEMORY[0x1C6929580](v18 & 1);
    MEMORY[0x1C6929580](v18 >> 8);
  }

  else
  {
    sub_1C2F76FBC();
  }

  return sub_1C2F76FBC();
}

uint64_t IntelligenceActivityAttributes.ContentState.hashValue.getter()
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)(v1);
  return sub_1C2F76FDC();
}

uint64_t IntelligenceActivityAttributes.ContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076440, &unk_1C2F794F0);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F17318();
  v31 = v11;
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v7;
  v26 = v14;
  sub_1C2F759EC();
  LOBYTE(v32) = 0;
  sub_1C2F173C0(&qword_1EC076448, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  v16 = v28;
  v17 = v30;
  sub_1C2F76DCC();
  v18 = v16;
  v19 = v26;
  sub_1C2F09460(v18, v26, &qword_1EC076410, &qword_1C2F794E0);
  LOBYTE(v32) = 1;
  sub_1C2F76DCC();
  sub_1C2F09460(v15, v19 + v12[5], &qword_1EC076410, &qword_1C2F794E0);
  v34 = 2;
  sub_1C2F17408();
  sub_1C2F76DCC();
  v20 = v33;
  v21 = v19 + v12[6];
  *v21 = v32;
  *(v21 + 16) = v20;
  v34 = 3;
  sub_1C2F76DCC();
  v22 = v33;
  v23 = v19 + v12[7];
  *v23 = v32;
  *(v23 + 16) = v22;
  LOBYTE(v32) = 4;
  v24 = sub_1C2F76DEC();
  (*(v29 + 8))(v31, v17);
  *(v19 + v12[8]) = v24 & 1;
  sub_1C2F17578(v19, v27, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C2F101E4(v19, type metadata accessor for IntelligenceActivityAttributes.ContentState);
}

uint64_t sub_1C2F155F0()
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)(v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15634(uint64_t a1)
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)(v2);
  return sub_1C2F76FDC();
}

uint64_t IntelligenceActivityAttributes.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F759EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IntelligenceActivityAttributes.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceActivityAttributes(0) + 20);
  v4 = sub_1C2F759EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceActivityAttributes.contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceActivityAttributes(0) + 36));

  return v1;
}

uint64_t IntelligenceActivityAttributes.titleStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntelligenceActivityAttributes(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t IntelligenceActivityAttributes.subtitleStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntelligenceActivityAttributes(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *a9, char *a10)
{
  v16 = *a9;
  v22 = *a10;
  v17 = sub_1C2F759EC();
  v18 = *(*(v17 - 8) + 32);
  v18(a8, a1, v17);
  v19 = type metadata accessor for IntelligenceActivityAttributes(0);
  v18(a8 + v19[5], a2, v17);
  *(a8 + v19[6]) = a3;
  *(a8 + v19[7]) = a4;
  result = sub_1C2F09460(a5, a8 + v19[8], &qword_1EC076458, &unk_1C2F7B430);
  v21 = (a8 + v19[9]);
  *v21 = a6;
  v21[1] = a7;
  *(a8 + v19[10]) = v16;
  *(a8 + v19[11]) = v22;
  return result;
}

uint64_t sub_1C2F159BC()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15A04(uint64_t a1)
{
  v2 = *v1;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v2);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15A48()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x797453656C746974;
  if (v1 != 6)
  {
    v3 = 0x656C746974627573;
  }

  v4 = 0x67616D496C6C6163;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65695673776F6873;
  if (v1 != 2)
  {
    v5 = 0x7379616C70736964;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F15B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F180AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F15BA8(uint64_t a1)
{
  v2 = sub_1C2F1747C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F15BE4(uint64_t a1)
{
  v2 = sub_1C2F1747C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076460, &qword_1C2F79500);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F1747C();
  sub_1C2F7702C();
  v11[31] = 0;
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC076428, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  sub_1C2F76E9C();
  if (!v2)
  {
    v9 = type metadata accessor for IntelligenceActivityAttributes(0);
    v11[30] = 1;
    sub_1C2F76E9C();
    v11[29] = 2;
    sub_1C2F76E7C();
    v11[28] = 3;
    sub_1C2F76E7C();
    v11[27] = 4;
    sub_1C2F75A5C();
    sub_1C2F173C0(&qword_1EC076470, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1C2F76E5C();
    v11[26] = 5;
    sub_1C2F76E4C();
    v11[25] = *(v3 + *(v9 + 40));
    v11[24] = 6;
    sub_1C2F174D0();
    sub_1C2F76E5C();
    v11[15] = *(v3 + *(v9 + 44));
    v11[14] = 7;
    sub_1C2F76E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t IntelligenceActivityAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v44 = sub_1C2F759EC();
  v40 = *(v44 - 8);
  v6 = MEMORY[0x1EEE9AC00](v44);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076480, &qword_1C2F79508);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for IntelligenceActivityAttributes(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F1747C();
  v45 = v13;
  v17 = v46;
  sub_1C2F7701C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v8;
  v37 = v5;
  v38 = v14;
  v46 = v16;
  v56 = 0;
  sub_1C2F173C0(&qword_1EC076448, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  v19 = v41;
  v20 = v42;
  sub_1C2F76E0C();
  v21 = v46;
  v22 = v19;
  v23 = v44;
  v41 = *(v40 + 32);
  (v41)(v46, v22, v44);
  v55 = 1;
  v24 = v20;
  v25 = v18;
  v26 = v24;
  sub_1C2F76E0C();
  v27 = v25;
  v28 = v38;
  (v41)(v21 + v38[5], v27, v23);
  v54 = 2;
  v41 = 0;
  v29 = v21;
  *(v21 + v28[6]) = sub_1C2F76DEC() & 1;
  v53 = 3;
  v30 = sub_1C2F76DEC();
  v31 = v43;
  *(v29 + v28[7]) = v30 & 1;
  sub_1C2F75A5C();
  v52 = 4;
  sub_1C2F173C0(&qword_1EC076488, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1C2F76DCC();
  sub_1C2F09460(v37, v29 + v28[8], &qword_1EC076458, &unk_1C2F7B430);
  v51 = 5;
  v32 = sub_1C2F76DBC();
  v33 = (v29 + v28[9]);
  *v33 = v32;
  v33[1] = v34;
  v49 = 6;
  sub_1C2F17524();
  sub_1C2F76DCC();
  *(v29 + v28[10]) = v50;
  v47 = 7;
  sub_1C2F76DCC();
  (*(v31 + 8))(v45, v26);
  *(v29 + v28[11]) = v48;
  sub_1C2F17578(v29, v39, type metadata accessor for IntelligenceActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C2F101E4(v29, type metadata accessor for IntelligenceActivityAttributes);
}

uint64_t IntelligenceActivityAttributes.ContentState.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v6 - v2;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000035, 0x80000001C2F7E8E0);
  sub_1C2EF6A3C(v0, v3, &qword_1EC076410, &qword_1C2F794E0);
  v4 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v4);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v6[0];
}

uint64_t IntelligenceActivityAttributes.ContentState.description.getter()
{
  v1 = sub_1C2F759DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000045, 0x80000001C2F7E920);
  sub_1C2EF6A3C(v0, v7, &qword_1EC076410, &qword_1C2F794E0);
  v8 = sub_1C2F759EC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    sub_1C2F0A8D8(v7, &qword_1EC076410, &qword_1C2F794E0);
    v11 = 0;
  }

  else
  {
    sub_1C2F759BC();
    (*(v9 + 8))(v7, v8);
    v11 = sub_1C2F759CC();
    (*(v2 + 8))(v4, v1);
  }

  v14 = v11;
  v15 = v10 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076498, &qword_1C2F79510);
  v12 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v12);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v16;
}

uint64_t sub_1C2F16A00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v6 - v2;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000035, 0x80000001C2F7E8E0);
  sub_1C2EF6A3C(v0, v3, &qword_1EC076410, &qword_1C2F794E0);
  v4 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v4);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v6[0];
}

uint64_t IntelligenceActivityAttributes.description.getter()
{
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000026, 0x80000001C2F7E970);
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC0764A0, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
  v0 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v0);

  MEMORY[0x1C6928D30](0x746974627573202CLL, 0xEC000000203A656CLL);
  type metadata accessor for IntelligenceActivityAttributes(0);
  v1 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v1);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return 0;
}

uint64_t _s20CommunicationsUICore30IntelligenceActivityAttributesV12ContentStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F759EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0764D8, &qword_1C2F799C8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53[-v16];
  v18 = *(v15 + 48);
  v59 = a1;
  v19 = a1;
  v20 = v5;
  sub_1C2EF6A3C(v19, &v53[-v16], &qword_1EC076410, &qword_1C2F794E0);
  v58 = a2;
  sub_1C2EF6A3C(a2, &v17[v18], &qword_1EC076410, &qword_1C2F794E0);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1C2EF6A3C(v17, v11, &qword_1EC076410, &qword_1C2F794E0);
    if (v21(&v17[v18], 1, v4) != 1)
    {
      v22 = *(v5 + 32);
      v23 = v56;
      v22(v56, &v17[v18], v4);
      sub_1C2F173C0(&qword_1EC0764E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
      v54 = sub_1C2F7662C();
      v24 = *(v20 + 8);
      v24(v23, v4);
      v24(v11, v4);
      sub_1C2F0A8D8(v17, &qword_1EC076410, &qword_1C2F794E0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1C2F0A8D8(v17, &qword_1EC0764D8, &qword_1C2F799C8);
    goto LABEL_36;
  }

  if (v21(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C2F0A8D8(v17, &qword_1EC076410, &qword_1C2F794E0);
LABEL_8:
  v25 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v26 = v25[5];
  v27 = *(v12 + 48);
  v28 = v57;
  sub_1C2EF6A3C(v59 + v26, v57, &qword_1EC076410, &qword_1C2F794E0);
  v29 = v58 + v26;
  v30 = v58;
  sub_1C2EF6A3C(v29, &v28[v27], &qword_1EC076410, &qword_1C2F794E0);
  if (v21(v28, 1, v4) == 1)
  {
    if (v21(&v28[v27], 1, v4) == 1)
    {
      sub_1C2F0A8D8(v28, &qword_1EC076410, &qword_1C2F794E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v31 = v55;
  sub_1C2EF6A3C(v28, v55, &qword_1EC076410, &qword_1C2F794E0);
  if (v21(&v28[v27], 1, v4) == 1)
  {
    (*(v20 + 8))(v31, v4);
LABEL_13:
    sub_1C2F0A8D8(v28, &qword_1EC0764D8, &qword_1C2F799C8);
    goto LABEL_36;
  }

  v32 = &v28[v27];
  v33 = v28;
  v34 = v56;
  (*(v20 + 32))(v56, v32, v4);
  sub_1C2F173C0(&qword_1EC0764E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  v35 = sub_1C2F7662C();
  v36 = *(v20 + 8);
  v36(v34, v4);
  v36(v31, v4);
  sub_1C2F0A8D8(v33, &qword_1EC076410, &qword_1C2F794E0);
  if (v35)
  {
LABEL_15:
    v37 = v25[6];
    v38 = v59 + v37;
    v39 = *(v59 + v37 + 8);
    v40 = v30 + v37;
    v41 = *(v40 + 8);
    if (v39)
    {
      if (!v41)
      {
        goto LABEL_35;
      }

      v42 = *(v40 + 16);
      v43 = *(v38 + 16);
      if (*v38 != *v40 || v39 != v41) && (sub_1C2F76EFC() & 1) == 0 || ((v43 ^ v42))
      {
        goto LABEL_21;
      }

      if ((v43 ^ v42) >= 0x100)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v41)
      {
        goto LABEL_35;
      }
    }

    v44 = v25[7];
    v45 = v59 + v44;
    v46 = *(v59 + v44 + 8);
    v47 = v30 + v44;
    v48 = *(v47 + 8);
    if (v46)
    {
      if (v48)
      {
        v49 = *(v47 + 16);
        v50 = *(v45 + 16);
        if (*v45 != *v47 || v46 != v48) && (sub_1C2F76EFC() & 1) == 0 || ((v50 ^ v49))
        {
LABEL_21:
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        if ((v50 ^ v49) >= 0x100)
        {
          goto LABEL_36;
        }

LABEL_40:
        v51 = *(v59 + v25[8]) ^ *(v30 + v25[8]) ^ 1;
        return v51 & 1;
      }
    }

    else if (!v48)
    {

      goto LABEL_40;
    }

LABEL_35:
  }

LABEL_36:
  v51 = 0;
  return v51 & 1;
}

unint64_t sub_1C2F17318()
{
  result = qword_1EC076420;
  if (!qword_1EC076420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076420);
  }

  return result;
}

unint64_t sub_1C2F1736C()
{
  result = qword_1EC076430;
  if (!qword_1EC076430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076430);
  }

  return result;
}

uint64_t sub_1C2F173C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2F17408()
{
  result = qword_1EC076450;
  if (!qword_1EC076450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076450);
  }

  return result;
}

unint64_t sub_1C2F1747C()
{
  result = qword_1EC076468;
  if (!qword_1EC076468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076468);
  }

  return result;
}

unint64_t sub_1C2F174D0()
{
  result = qword_1EC076478;
  if (!qword_1EC076478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076478);
  }

  return result;
}

unint64_t sub_1C2F17524()
{
  result = qword_1EC076490;
  if (!qword_1EC076490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076490);
  }

  return result;
}

uint64_t sub_1C2F17578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C2F177B8(uint64_t a1)
{
  sub_1C2F759EC();
  if (v1 <= 0x3F)
  {
    sub_1C2F1799C(319, &qword_1EDEBDA68, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1C2F179F0(319, &unk_1EDEBD798, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C2F179F0(319, &qword_1EDEBD938, &type metadata for ActivityLabelStyle);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2F178DC(uint64_t a1)
{
  sub_1C2F1799C(319, &qword_1EDEBDA70, MEMORY[0x1E6968848]);
  if (v1 <= 0x3F)
  {
    sub_1C2F179F0(319, &qword_1EDEBDA60, &type metadata for ActivitySymbol);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2F1799C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2F76ADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C2F179F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C2F76ADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceActivityAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceActivityAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceActivityAttributes.ContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceActivityAttributes.ContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2F17CE0()
{
  result = qword_1EC0764A8;
  if (!qword_1EC0764A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764A8);
  }

  return result;
}

unint64_t sub_1C2F17D38()
{
  result = qword_1EC0764B0;
  if (!qword_1EC0764B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764B0);
  }

  return result;
}

unint64_t sub_1C2F17D90()
{
  result = qword_1EC0764B8;
  if (!qword_1EC0764B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764B8);
  }

  return result;
}

unint64_t sub_1C2F17DE8()
{
  result = qword_1EC0764C0;
  if (!qword_1EC0764C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764C0);
  }

  return result;
}

unint64_t sub_1C2F17E40()
{
  result = qword_1EC0764C8;
  if (!qword_1EC0764C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764C8);
  }

  return result;
}

unint64_t sub_1C2F17E98()
{
  result = qword_1EC0764D0;
  if (!qword_1EC0764D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764D0);
  }

  return result;
}

uint64_t sub_1C2F17EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D7953656C746974 && a2 == 0xEB000000006C6F62 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEE006C6F626D7953 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2F7E9A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C2F180AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65695673776F6873 && a2 == 0xEF6E6F7474754277 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xEE00726174617641 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67616D496C6C6163 && a2 == 0xEC0000004C525565 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C2F7E9C0 == a2 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797453656C746974 && a2 == 0xEA0000000000656CLL || (sub_1C2F76EFC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED0000656C797453)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t BlocklistViewModel.knownEntries.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 56);
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1C2F184D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F2958C(v2);
}

uint64_t BlocklistViewModel.knownEntries.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F2958C(a1);
}

uint64_t BlocklistViewModel.knownPersonListViewModel.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
}

uint64_t (*BlocklistViewModel.knownEntries.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_getKeyPath();
  v4[9] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[10] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 56);
  swift_getKeyPath();
  v4[3] = v5;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v6 = *(v5 + 16);

  v4[6] = v6;
  return sub_1C2F188FC;
}

void sub_1C2F188FC(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[6];
  swift_getKeyPath();
  v3[7] = v3[8];
  if (a2)
  {

    sub_1C2F75DAC();

    sub_1C2F2958C(v4);
  }

  else
  {
    sub_1C2F75DAC();

    sub_1C2F2958C(v4);
  }

  free(v3);
}

uint64_t BlocklistViewModel.unknownEntries.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 64);
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t BlocklistViewModel.unknownEntries.setter(uint64_t a1)
{
  v3 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C2F7669C();
  v5 = *(v23 - 8);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = sub_1C2F7667C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  swift_getKeyPath();
  v28 = v1;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F2958C(a1);

  swift_getKeyPath();
  v27 = v1;
  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F7666C();
  sub_1C2F7665C();
  swift_getKeyPath();
  v26 = v1;
  sub_1C2F75DAC();

  v12 = *(v1 + 64);
  swift_getKeyPath();
  v26 = v12;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v13 = *(v12 + 16);

  v14 = *(v13 + 16);

  v25 = v14;
  sub_1C2F7664C();
  sub_1C2F7665C();
  sub_1C2F7668C();
  v15 = v23;
  (*(v5 + 16))(v8, v10, v23);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v18 = sub_1C2F766EC();
  v20 = v19;
  (*(v5 + 8))(v10, v15);
  sub_1C2F299FC(v18, v20);
}

uint64_t BlocklistViewModel.unknownPersonListViewModel.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
}

void (*BlocklistViewModel.unknownEntries.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  *v4 = v1;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 64);
  swift_getKeyPath();
  v4[3] = v5;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v6 = *(v5 + 16);

  v4[6] = v6;
  return sub_1C2F19238;
}

void sub_1C2F19238(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {

    BlocklistViewModel.unknownEntries.setter(v4);
  }

  else
  {
    BlocklistViewModel.unknownEntries.setter(v3);
  }

  free(v2);
}

uint64_t BlocklistViewModel.presentContactPicker.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C2F19360@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2F1D00C;
  a2[1] = v6;
}

uint64_t sub_1C2F194A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t (*BlocklistViewModel.presentContactPicker.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F19654;
}

uint64_t BlocklistViewModel.deleteEntryAction.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C2F19724@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2F1CFDC;
  a2[1] = v6;
}

uint64_t sub_1C2F1984C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);

  sub_1C2F75D9C();
}

uint64_t sub_1C2F19974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75D9C();
}

uint64_t sub_1C2F19A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t (*BlocklistViewModel.deleteEntryAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F19BF0;
}

uint64_t sub_1C2F19BFC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_getKeyPath();

  sub_1C2F75DAC();

  swift_beginAccess();
  v3 = *(v0 + 48);
  swift_beginAccess();
  if (v3 == *(v2 + 137))
  {
    *(v2 + 137) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);
    sub_1C2F75D9C();
  }

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 64);
  swift_getKeyPath();

  sub_1C2F75DAC();

  v6 = *(v1 + 48);
  swift_beginAccess();
  if (v6 == *(v5 + 137))
  {
    *(v5 + 137) = v6;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t BlocklistViewModel.customEditMode.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t (*sub_1C2F1A048(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2F1A09C;
}

uint64_t sub_1C2F1A09C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C2F19BFC();
  }

  return result;
}

uint64_t sub_1C2F1A0D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t BlocklistViewModel.customEditMode.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
    return sub_1C2F19BFC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t (*BlocklistViewModel.customEditMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F1A048(v4);
  return sub_1C2F1A414;
}

void sub_1C2F1A414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t sub_1C2F1A4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t type metadata accessor for BlocklistViewModel(uint64_t a1)
{
  result = qword_1EC076520;
  if (!qword_1EC076520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlocklistViewModel.knownPersonListViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1A708(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t (*BlocklistViewModel.knownPersonListViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F1A8B0;
}

uint64_t sub_1C2F1A8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t BlocklistViewModel.unknownPersonListViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1AAD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t (*BlocklistViewModel.unknownPersonListViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F1AC78;
}

void sub_1C2F1AC84(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v3);
}

uint64_t sub_1C2F1AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v103 = a6;
  v98 = a5;
  v99 = a3;
  v101 = a2;
  v93 = a1;
  v10 = sub_1C2F7667C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C2F7669C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - v19;
  *(v6 + 48) = 0;
  sub_1C2F75DDC();
  v100 = v6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v97 = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = v103;
  swift_retain_n();

  sub_1C2F7663C();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  v22 = v21;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v104 = ObjCClassFromMetadata;
  v24 = objc_opt_self();
  v25 = [v24 bundleForClass_];
  sub_1C2F75BFC();
  v26 = sub_1C2F766EC();
  v91 = v27;
  v92 = v26;
  v105 = *(v15 + 8);
  v105(v20, v14);
  sub_1C2F7666C();
  sub_1C2F7665C();
  v106[0] = *(v101 + 16);
  sub_1C2F7664C();
  sub_1C2F7665C();
  sub_1C2F7668C();
  v22(v18, v20, v14);
  v28 = v104;
  v29 = [v24 bundleForClass_];
  v102 = v13;
  sub_1C2F75BFC();
  v87 = sub_1C2F766EC();
  v86 = v30;
  v31 = v14;
  v32 = v14;
  v33 = v105;
  v105(v20, v31);
  sub_1C2F7663C();
  v22(v18, v20, v32);
  v34 = [v24 bundleForClass_];
  sub_1C2F75BFC();
  v85 = sub_1C2F766EC();
  v84 = v35;
  v33(v20, v32);
  v90 = "ADD_BLOCKED_CONTACT";
  sub_1C2F7663C();
  v95 = v22;
  v22(v18, v20, v32);
  v36 = v24;
  v94 = v24;
  v37 = v104;
  v38 = [v24 bundleForClass_];
  sub_1C2F75BFC();
  v83 = sub_1C2F766EC();
  v82 = v39;
  v40 = v105;
  v105(v20, v32);
  v96 = v15 + 8;
  v89 = "UNBLOCK_SWIPE_ACTION";
  sub_1C2F7663C();
  v22(v18, v20, v32);
  v41 = [v36 bundleForClass_];
  sub_1C2F75BFC();
  v42 = sub_1C2F766EC();
  v44 = v43;
  v40(v20, v32);
  v88 = type metadata accessor for SettingsPersonListViewModel(0);
  v45 = swift_allocObject();
  *(v45 + 137) = 0;
  sub_1C2F75DDC();
  v46 = v99;
  *(v45 + 16) = v93;
  *(v45 + 24) = v46;
  v47 = v98;
  *(v45 + 32) = v97;
  *(v45 + 40) = v47;
  v49 = v91;
  v48 = v92;
  *(v45 + 48) = v103;
  *(v45 + 56) = v48;
  v50 = v87;
  *(v45 + 64) = v49;
  *(v45 + 72) = v50;
  v51 = v85;
  *(v45 + 80) = v86;
  *(v45 + 88) = v51;
  v52 = v83;
  *(v45 + 96) = v84;
  *(v45 + 104) = v52;
  *(v45 + 112) = v82;
  *(v45 + 120) = v42;
  *(v45 + 128) = v44;
  *(v45 + 136) = 0;
  *(v100 + 56) = v45;

  sub_1C2F7663C();
  v53 = v95;
  v95(v18, v20, v32);
  v54 = v94;
  v55 = v104;
  v56 = [v94 bundleForClass_];
  sub_1C2F75BFC();
  v57 = sub_1C2F766EC();
  v92 = v58;
  v93 = v57;
  v105(v20, v32);
  sub_1C2F7663C();
  v53(v18, v20, v32);
  v59 = [v54 bundleForClass_];
  sub_1C2F75BFC();
  v91 = sub_1C2F766EC();
  v87 = v60;
  v81 = v32;
  v61 = v105;
  v105(v20, v32);
  sub_1C2F7663C();
  v62 = v95;
  v95(v18, v20, v32);
  v63 = v54;
  v64 = v104;
  v65 = [v63 bundleForClass_];
  sub_1C2F75BFC();
  v90 = sub_1C2F766EC();
  v86 = v66;
  v67 = v81;
  v61(v20, v81);
  sub_1C2F7663C();
  v62(v18, v20, v67);
  v68 = [v94 bundleForClass_];
  sub_1C2F75BFC();
  v69 = sub_1C2F766EC();
  v71 = v70;
  v105(v20, v67);
  v72 = swift_allocObject();
  *(v72 + 137) = 0;
  sub_1C2F75DDC();

  v73 = v99;
  *(v72 + 16) = v101;
  *(v72 + 24) = v73;
  v74 = v98;
  *(v72 + 32) = v97;
  *(v72 + 40) = v74;
  v75 = v92;
  v76 = v93;
  *(v72 + 48) = v103;
  *(v72 + 56) = v76;
  *(v72 + 64) = v75;
  *(v72 + 72) = 0;
  v77 = v91;
  *(v72 + 80) = 0xE000000000000000;
  *(v72 + 88) = v77;
  v78 = v90;
  *(v72 + 96) = v87;
  *(v72 + 104) = v78;
  *(v72 + 112) = v86;
  *(v72 + 120) = v69;
  *(v72 + 128) = v71;
  *(v72 + 136) = 0;
  result = v100;
  *(v100 + 64) = v72;
  return result;
}

uint64_t BlocklistViewModel.__allocating_init(entries:presentContactPicker:deleteEntryAction:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  v54 = result;
  v56 = v5;
  if (!v5)
  {
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v6 = result;
  v7 = 0;
  v8 = result + 64;
  v57 = v5 - 1;
  v55 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = (v8 + 40 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v11 = *(v9 - 2);
      if (v11)
      {
        break;
      }

LABEL_4:
      ++v10;
      v9 += 5;
      if (v5 == v10)
      {
        goto LABEL_16;
      }
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    v15 = *(v9 - 4);
    v14 = *(v9 - 3);
    v16 = v13;

    if (sub_1C2F7674C() <= 0)
    {

      v5 = v56;
      goto LABEL_4;
    }

    v17 = v55;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2F08774(0, *(v55 + 16) + 1, 1);
      v17 = v55;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1C2F08774((v18 > 1), v19 + 1, 1);
      v17 = v55;
    }

    v7 = v10 + 1;
    *(v17 + 16) = v19 + 1;
    v55 = v17;
    v20 = (v17 + 40 * v19);
    v20[4] = v15;
    v20[5] = v14;
    v20[6] = v11;
    v20[7] = v13;
    v20[8] = v12;
    v6 = v54;
    v5 = v56;
  }

  while (v57 != v10);
LABEL_16:
  v21 = v55;
  v22 = *(v55 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v55 + 64;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_52;
      }

      v26 = *v24;
      v27 = *(*v24 + 16);
      v28 = *(v25 + 16);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_53;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v29 <= *(v25 + 24) >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v30 = v28 + v27;
        }

        else
        {
          v30 = v28;
        }

        result = sub_1C2F1C554(result, v30, 1, v25);
        v25 = result;
        if (!*(v26 + 16))
        {
LABEL_18:

          v21 = v55;
          if (v27)
          {
            goto LABEL_54;
          }

          goto LABEL_19;
        }
      }

      if ((*(v25 + 24) >> 1) - *(v25 + 16) < v27)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v21 = v55;
      if (v27)
      {
        v31 = *(v25 + 16);
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_56;
        }

        *(v25 + 16) = v33;
      }

LABEL_19:
      ++v23;
      v24 += 40;
      if (v22 == v23)
      {
        goto LABEL_35;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_35:
  sub_1C2F1CCD8(v25);

  if (!v56)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_49:

    v47 = swift_allocObject();
    sub_1C2F1AD08(v55, v36, a2, a3, a4, a5);
    return v47;
  }

  v34 = 0;
  result = v54;
  v35 = v54 + 64;
  v36 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v37 = (v35 + 40 * v34);
  v38 = v34;
  while (v38 < *(result + 16))
  {
    v52 = *(v37 - 1);
    v53 = *(v37 - 2);
    v39 = *v37;
    v40 = v38 + 1;
    v41 = *(v37 - 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0764F8, &qword_1C2F79AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076500, &qword_1C2F79AC8);
    sub_1C2EF7414(&qword_1EC076508, &qword_1EC0764F8, &qword_1C2F79AC0, MEMORY[0x1E69E6518]);
    sub_1C2EF7414(&qword_1EC076510, &qword_1EC076500, &qword_1C2F79AC8, MEMORY[0x1E69E6340]);
    sub_1C2F1CD80();
    if ((sub_1C2F769BC() & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C2F08774(0, *(v36 + 16) + 1, 1);
      }

      v35 = v54 + 64;
      v34 = v38 + 1;
      v43 = v52;
      v42 = v53;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1C2F08774((v44 > 1), v45 + 1, 1);
        v43 = v52;
        v42 = v53;
      }

      *(v36 + 16) = v45 + 1;
      v46 = v36 + 40 * v45;
      *(v46 + 32) = v42;
      *(v46 + 48) = v43;
      *(v46 + 64) = v39;
      result = v54;
      if (v56 - 1 != v38)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    v37 += 5;
    ++v38;
    result = v54;
    if (v56 == v40)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BlocklistViewModel.update(with:unknownEntries:)(Swift::OpaquePointer with, Swift::OpaquePointer unknownEntries)
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F2958C(v2);

  BlocklistViewModel.unknownEntries.setter(v3);
}

char *BlocklistViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BlocklistViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F1BE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel, &protocol conformance descriptor for SettingsPersonListViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2F1BF24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2F1BFE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 48) = v2;
  return sub_1C2F19BFC();
}

void *sub_1C2F1C0E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1C2F1C2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C2F1C420(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C2F1C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2F1C670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076570, &qword_1C2F79BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2F1C78C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076560, &qword_1C2F79BB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C2F1C890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E00, &qword_1C2F79BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C2F1C9D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C2F1CBB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076550, &qword_1C2F79BA0);
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
    if (v10 != a4 || v12 >= &v13[72 * v8])
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

uint64_t sub_1C2F1CCD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C2F1CEE4();
  result = MEMORY[0x1C6928F70](v2, &type metadata for SettingsPersonHandle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_1C2F1CF38(v9, &v7);
      sub_1C2F57C18(&v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C2F1CD80()
{
  result = qword_1EC076518;
  if (!qword_1EC076518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076518);
  }

  return result;
}

uint64_t sub_1C2F1CE10(uint64_t a1)
{
  result = sub_1C2F75DEC();
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

unint64_t sub_1C2F1CEE4()
{
  result = qword_1EC076578;
  if (!qword_1EC076578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076578);
  }

  return result;
}

uint64_t FTMenuContextMenuView.ContextMenuItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C2F75ADC();
  result = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_1C2F1D130@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FTMenuContextMenuView.body.getter()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076598, &qword_1C2F79C38);
  sub_1C2EF7414(&qword_1EC0765A0, &qword_1EC076590, &qword_1C2F79C30, MEMORY[0x1E69E6338]);
  sub_1C2F1D820();
  sub_1C2F1E1CC(&qword_1EC0765D0, type metadata accessor for FTMenuContextMenuView.ContextMenuItem, &protocol conformance descriptor for FTMenuContextMenuView.ContextMenuItem);
  return sub_1C2F764BC();
}

uint64_t sub_1C2F1D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765C8, &qword_1C2F79C48);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076618, &qword_1C2F79E58);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765B8, &qword_1C2F79C40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  v15 = *(a1 + *(v14 + 24));
  if (v15 >> 62)
  {
    v18 = v14;
    v19 = sub_1C2F76BBC();
    v14 = v18;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v21 = &v21;
    v16 = MEMORY[0x1EEE9AC00](v14);
    *(&v21 - 2) = a1;
    *(&v21 - 1) = a2;
    MEMORY[0x1EEE9AC00](v16);
    *(&v21 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076628, &qword_1C2F79E68);
    sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60, MEMORY[0x1E697D658]);
    sub_1C2F209C8();
    sub_1C2F7638C();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40, MEMORY[0x1E697CD28]);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48, MEMORY[0x1E697D680]);
    sub_1C2F7633C();
    return (*(v11 + 8))(v13, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
  sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60, MEMORY[0x1E697D658]);
  sub_1C2F7649C();
  v20 = v24;
  (*(v5 + 16))(v9, v7, v24);
  swift_storeEnumTagMultiPayload();
  sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40, MEMORY[0x1E697CD28]);
  sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48, MEMORY[0x1E697D680]);
  sub_1C2F7633C();
  return (*(v5 + 8))(v7, v20);
}

unint64_t sub_1C2F1D820()
{
  result = qword_1EC0765A8;
  if (!qword_1EC0765A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076598, &qword_1C2F79C38);
    sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40, MEMORY[0x1E697CD28]);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0765A8);
  }

  return result;
}

uint64_t sub_1C2F1D904(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076650, &unk_1C2F79EA0);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765C8, &qword_1C2F79C48);
  sub_1C2EF7414(&qword_1EC076658, &qword_1EC076650, &unk_1C2F79EA0, MEMORY[0x1E69E6338]);
  sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48, MEMORY[0x1E697D680]);
  sub_1C2F1E1CC(&qword_1EC076660, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  return sub_1C2F764BC();
}

uint64_t sub_1C2F1DAA8(void *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
  sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60, MEMORY[0x1E697D658]);

  return sub_1C2F7649C();
}

uint64_t sub_1C2F1DB78(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0) + 20));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v3 = sub_1C2F20A98();
  v4 = MEMORY[0x1E6981148];
  v5 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20B48, v1, sub_1C2F20B4C, v1, v4, v2, v5, v3);
}

uint64_t sub_1C2F1DC2C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v2 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  swift_beginAccess();
  v3 = *v2;

  v3(v4);
}

uint64_t sub_1C2F1DD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v3 = sub_1C2F20A98();
  v4 = MEMORY[0x1E6981148];
  v5 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20A88, a1, sub_1C2F20A90, a1, v4, v2, v5, v3);
}

uint64_t sub_1C2F1DDCC()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076598, &qword_1C2F79C38);
  sub_1C2EF7414(&qword_1EC0765A0, &qword_1EC076590, &qword_1C2F79C30, MEMORY[0x1E69E6338]);
  sub_1C2F1D820();
  sub_1C2F1E1CC(&qword_1EC0765D0, type metadata accessor for FTMenuContextMenuView.ContextMenuItem, &protocol conformance descriptor for FTMenuContextMenuView.ContextMenuItem);
  return sub_1C2F764BC();
}

id sub_1C2F1DF24()
{
  type metadata accessor for FTMenuViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDEBCF90 = result;
  return result;
}

id static FTMenuViewModel.bundle.getter()
{
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBCF90;

  return v1;
}

uint64_t sub_1C2F1E028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2F1E114()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
}

uint64_t sub_1C2F1E1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2F1E234(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2F1FAC8(v3, a1, &OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, MEMORY[0x1E6969588]);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1E398(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_1C2F1E400(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F1DFD8(v4);
  return sub_1C2F1E538;
}

void sub_1C2F1E538(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t sub_1C2F1E5CC()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v14 = *(v0 + 16);
  if (v14 >> 62)
  {
LABEL_23:
    v12 = sub_1C2F76BBC();
  }

  else
  {
    v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v1 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1C6929250](v1, v14);
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v1 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v2 = *(v14 + 8 * v1 + 32);

        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
      sub_1C2F75DAC();

      v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v2 + v4) == 1)
      {
        swift_getKeyPath();
        sub_1C2F75DAC();

        v5 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
        swift_beginAccess();
        v13 = v5;
        if (v5[1])
        {
          swift_getKeyPath();
          sub_1C2F75DAC();

          if (!v5[1])
          {
            __break(1u);
            return result;
          }

          if (!*v5)
          {
            break;
          }
        }
      }

      ++v1;
      if (v3 == v12)
      {
        goto LABEL_17;
      }
    }

    swift_getKeyPath();

    sub_1C2F75DAC();

    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    sub_1C2EFCA04(*v13, v13[1], v13[2]);

    if (v8)
    {

      v10 = sub_1C2F2039C(v7, v8, v9);
      v11 = v8(v10);

      return v11;
    }

    sub_1C2F2039C(v7, 0, v9);
  }

  else
  {
LABEL_17:
  }

  return 0;
}

BOOL sub_1C2F1E994()
{
  v0 = sub_1C2F1E5CC();
  v3 = v1;
  if (v1)
  {
    sub_1C2F203AC(v0, v1, v2);
  }

  return v3 != 0;
}

uint64_t sub_1C2F1E9CC()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v11 = v1 & 0xC000000000000001;
    v10 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v1;
    do
    {
      if (v11)
      {
        v4 = MEMORY[0x1C6929250](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v3 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
      sub_1C2F75DAC();

      v6 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v4 + v6) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2F75D9C();

        v1 = v9;
      }

      else
      {
      }

      ++v3;
    }

    while (v5 != v2);
  }
}

uint64_t sub_1C2F1EC94()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6929250](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_13;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
      sub_1C2F75DAC();

      v6 = *(v4 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);

      if ((v6 & 1) == 0)
      {
        ++v3;
        if (v5 != v2)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t sub_1C2F1EE90(char a1)
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel, &protocol conformance descriptor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v11 = v3;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6929250](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      if (*(v5 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
        sub_1C2F75D9C();

        v3 = v11;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(v5 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      v8 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v5 + v8))
      {
        v9 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v9);
        sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
        sub_1C2F75D9C();

        v3 = v11;
        goto LABEL_7;
      }

      *(v5 + v8) = 0;
LABEL_6:

LABEL_7:
      ++v4;
    }

    while (v6 != v3);
  }
}

uint64_t FTMenuViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C2F75DDC();
  return v0;
}

uint64_t FTMenuViewModel.init()(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C2F75DDC();
  return v1;
}

uint64_t FTMenuViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FTMenuViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F1F38C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C2F76EFC() & 1) == 0)
      {
        break;
      }

      if (v6 == v9 && v7 == v10)
      {
        if (v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1C2F76EFC();
        result = 0;
        if (v14 & 1) == 0 || ((v8 ^ v11))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1C2F1F490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v31 = a2 + 32;
  v32 = a1 + 32;
  v30 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_51;
    }

    v4 = (v32 + 40 * v3);
    v6 = v4[1];
    v5 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    v9 = (v31 + 40 * v3);
    v10 = v9[3];
    v11 = v9[4];
    v38 = v9[2];
    v39 = v5;
    v34 = v6;
    v35 = v3;
    v33 = v9[1];
    if (v7)
    {
      if (!v10)
      {
        return;
      }

      sub_1C2F208DC();

      v12 = v10;

      v13 = v12;
      v14 = v7;

      v15 = v14;

      v16 = sub_1C2F76AAC();

      if ((v16 & 1) == 0)
      {

        return;
      }
    }

    else
    {
      if (v10)
      {
        return;
      }
    }

    v37 = v10;
    v17 = *(v8 + 16);
    if (v17 != *(v11 + 16))
    {

      return;
    }

    v36 = v7;
    if (v17 && v8 != v11)
    {
      break;
    }

LABEL_18:
    if (v39)
    {
      v19 = v36;
      if (!v38)
      {

LABEL_49:

        return;
      }

      if (v34 != v33 || v39 != v38)
      {
        v29 = sub_1C2F76EFC();

        if ((v29 & 1) == 0)
        {
          return;
        }

        goto LABEL_41;
      }
    }

    else
    {

      v19 = v36;
      if (v38)
      {

        goto LABEL_49;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_41:
    v3 = v35 + 1;
    v2 = v30;
    if (v35 + 1 == v30)
    {
      return;
    }
  }

  v20 = 0;
  while (v17)
  {
    v21 = *(v8 + v20 + 48);
    v22 = *(v8 + v20 + 56);
    v23 = *(v8 + v20 + 64);
    v24 = *(v11 + v20 + 48);
    v25 = *(v11 + v20 + 56);
    v26 = *(v11 + v20 + 64);
    v27 = *(v8 + v20 + 32) == *(v11 + v20 + 32) && *(v8 + v20 + 40) == *(v11 + v20 + 40);
    if (!v27 && (sub_1C2F76EFC() & 1) == 0 || (v21 == v24 ? (v28 = v22 == v25) : (v28 = 0), !v28 && (sub_1C2F76EFC() & 1) == 0 || v23 != v26))
    {

      return;
    }

    v20 += 40;
    if (!--v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1C2F1F868(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C2F208DC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C6929250](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C6929250](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C2F76AAC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C2F76AAC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C2F76BBC();
  }

  result = sub_1C2F76BBC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C2F1FAC8(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v6 = 4;
      while (1)
      {
        v14 = v6 - 4;
        v15 = v6 - 3;
        if (__OFADD__(v6 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1C6929250](v6 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v5 + 8 * v6);

          if (!v13)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v6);

            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1C6929250](v6 - 4, a2);
LABEL_26:
        v18 = a4(v16 + *a3, v17 + *a3);

        if (v18)
        {
          ++v6;
          if (v15 != v7)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v6 = v5 + 32;
    v19 = (a2 + 32);
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v7 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_40;
      }

      if (!v21)
      {
        break;
      }

      v23 = *v6;
      v6 += 8;
      a2 = v23;
      v24 = *v19++;
      v5 = v24;
      v25 = *a3;

      v18 = a4(a2 + v25, v24 + v25);

      v27 = v22-- != 0;
      if (v18)
      {
        --v21;
        --v20;
        if (v27)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v7 = sub_1C2F76BBC();
  }

  result = sub_1C2F76BBC();
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C2F1FD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F75C8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1C2F1E1CC(&qword_1EC076610, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v21 = sub_1C2F7662C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F1FF40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);
  return result;
}

uint64_t sub_1C2F20018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C2F20104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = v5;
    v10 = sub_1C2F20984;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v8;
  return sub_1C2EFCA04(v5, v6, v7);
}

uint64_t sub_1C2F20224(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = v2;
    v7 = sub_1C2F20948;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFCA04(v2, v3, v4);
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2F2039C(v6, v7, v5);
}

uint64_t sub_1C2F2039C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_1C2F203AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1C2F204B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F204FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C2F20570(uint64_t a1)
{
  sub_1C2F75AEC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FTMenuItem(319);
    if (v2 <= 0x3F)
    {
      sub_1C2F2060C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2F2060C(uint64_t a1)
{
  if (!qword_1EC0765F8)
  {
    type metadata accessor for FTMenuItem(255);
    v1 = sub_1C2F7683C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0765F8);
    }
  }
}

uint64_t sub_1C2F2066C(uint64_t a1)
{
  result = sub_1C2F75DEC();
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

unint64_t sub_1C2F20858()
{
  result = qword_1EC076600;
  if (!qword_1EC076600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076608, &qword_1C2F79E50);
    sub_1C2F1D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076600);
  }

  return result;
}

unint64_t sub_1C2F208DC()
{
  result = qword_1EDEBC4D0;
  if (!qword_1EDEBC4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBC4D0);
  }

  return result;
}

uint64_t sub_1C2F20984@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C2F209C8()
{
  result = qword_1EC076638;
  if (!qword_1EC076638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076628, &qword_1C2F79E68);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076638);
  }

  return result;
}

unint64_t sub_1C2F20A98()
{
  result = qword_1EC076648;
  if (!qword_1EC076648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076640, &qword_1C2F79E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076648);
  }

  return result;
}

uint64_t AudioRoute.uniqueIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AudioRoute.label.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AudioRoute.systemImageName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void __swiftcall AudioRoute.init(isReceiver:isAuxiliary:isSpeaker:isCurrentlyPicked:uniqueIdentifier:bluetoothID:label:systemImageName:supportsSharePlay:)(CommunicationsUICore::AudioRoute *__return_ptr retstr, Swift::Bool isReceiver, Swift::Bool isAuxiliary, Swift::Bool isSpeaker, Swift::Bool isCurrentlyPicked, Swift::String uniqueIdentifier, Swift::String_optional bluetoothID, Swift::String label, Swift::String_optional systemImageName, Swift::Bool supportsSharePlay)
{
  retstr->isReceiver = isReceiver;
  retstr->isAuxiliary = isAuxiliary;
  retstr->isSpeaker = isSpeaker;
  retstr->isCurrentlyPicked = isCurrentlyPicked;
  retstr->bluetoothID = bluetoothID;
  retstr->uniqueIdentifier = uniqueIdentifier;
  retstr->label = label;
  retstr->systemImageName = systemImageName;
  retstr->supportsSharePlay = supportsSharePlay;
}

void sub_1C2F20C40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = [a1 isReceiver];
  v6 = [a1 isAuxiliary];
  v7 = [a1 isSpeaker];
  v8 = [a1 isCurrentlyPicked];
  v9 = [a1 uniqueIdentifier];
  v10 = sub_1C2F766CC();
  v12 = v11;

  v13 = [a1 name];
  v14 = sub_1C2F766CC();
  v16 = v15;

  LOBYTE(v13) = [a1 supportsSharePlay];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 17) = v6;
  *(a4 + 18) = v7;
  *(a4 + 24) = v10;
  *(a4 + 32) = v12;
  *(a4 + 40) = v14;
  *(a4 + 48) = v16;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  *(a4 + 72) = v8;
  *(a4 + 73) = v13;
}

uint64_t AudioRoute.hashValue.getter()
{
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F20DD4()
{
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F20E28(uint64_t a1)
{
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t _s20CommunicationsUICore10AudioRouteV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = *(a1 + 72);
  v59 = *(a1 + 73);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 17);
  v17 = *(a2 + 18);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v23 = *(a2 + 56);
  v22 = *(a2 + 64);
  v24 = *(a2 + 72);
  v58 = *(a2 + 73);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v14)
    {
      result = 0;
      if (v4 != v15)
      {
        return result;
      }

LABEL_9:
      if ((v5 ^ v16) & 1) != 0 || ((v6 ^ v17))
      {
        return result;
      }

      goto LABEL_16;
    }

    v48 = *(a2 + 48);
    v49 = *(a2 + 40);
    v50 = a1[6];
    v51 = a1[5];
    v52 = *(a2 + 56);
    v53 = *(a2 + 64);
    v54 = a1[8];
    v55 = a1[7];
    v56 = *(a2 + 72);
    v57 = *(a1 + 72);
    v26 = sub_1C2F76EFC();
    result = 0;
    if ((v26 & 1) != 0 && ((v4 ^ v15) & 1) == 0 && ((v5 ^ v16) & 1) == 0)
    {
      v24 = v56;
      v13 = v57;
      v12 = v54;
      v11 = v55;
      v23 = v52;
      v22 = v53;
      v10 = v50;
      v9 = v51;
      v21 = v48;
      v20 = v49;
      if (((v6 ^ v17) & 1) == 0)
      {
LABEL_16:
        if (v7 != v18 || v8 != v19)
        {
          v27 = v20;
          v28 = v13;
          v29 = v24;
          v30 = v11;
          v31 = v12;
          v32 = v22;
          v33 = v23;
          v34 = v9;
          v35 = v10;
          v36 = v21;
          v37 = sub_1C2F76EFC();
          v21 = v36;
          v20 = v27;
          v10 = v35;
          v9 = v34;
          v23 = v33;
          v22 = v32;
          v12 = v31;
          v11 = v30;
          v24 = v29;
          v13 = v28;
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }

        if (v9 != v20 || v10 != v21)
        {
          v38 = v13;
          v39 = v24;
          v40 = v11;
          v41 = v12;
          v42 = v22;
          v43 = v23;
          v44 = sub_1C2F76EFC();
          v23 = v43;
          v22 = v42;
          v12 = v41;
          v11 = v40;
          v24 = v39;
          v13 = v38;
          if ((v44 & 1) == 0)
          {
            return 0;
          }
        }

        if (!v12)
        {
          result = 0;
          if (v22 || ((v13 ^ v24) & 1) != 0)
          {
            return result;
          }

          return v59 ^ v58 ^ 1u;
        }

        if (v22)
        {
          if (v11 == v23 && v12 == v22)
          {
            if (v13 != v24)
            {
              return 0;
            }
          }

          else
          {
            v45 = v24;
            v46 = v13;
            v47 = sub_1C2F76EFC();
            result = 0;
            if (v47 & 1) == 0 || ((v46 ^ v45))
            {
              return result;
            }
          }

          return v59 ^ v58 ^ 1u;
        }

        return 0;
      }
    }
  }

  else
  {
    result = 0;
    if (!v14 && ((v4 ^ v15) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t sub_1C2F21108()
{
  result = qword_1EC076668;
  if (!qword_1EC076668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076668);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2F21180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F211C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20CommunicationsUICore16CallProviderTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2F21248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F212A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1C2F212F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Participant(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_1C2F21504()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for RouteControllerDelegate(0)) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler];
    v7 = *&v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler];
    v8 = *&v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler + 8];
    *v6 = sub_1C2F248E0;
    v6[1] = v5;

    sub_1C2EFDE10(v7, v8);

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1C2F215E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C2F240B4();
  }
}

char *AudioRouteService.__allocating_init(callCenter:)(uint64_t a1)
{
  v2 = sub_1C2F23950([*(a1 + 16) routeController], objc_allocWithZone(v1));

  return v2;
}

uint64_t AudioRouteService.areAuxiliaryRoutesAvailable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

Swift::Void __swiftcall AudioRouteService.pick(route:)(CommunicationsUICore::AudioRoute *route)
{
  countAndFlagsBits = route->uniqueIdentifier._countAndFlagsBits;
  object = route->uniqueIdentifier._object;
  v4 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v5 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v4);
  (*(v5 + 32))(countAndFlagsBits, object, v4, v5);
}

__n128 sub_1C2F217BC@<Q0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v4 = *a1;

  v5 = objc_opt_self();
  v6 = [v5 systemImageNameForDeviceType_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C2F766CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v4 modelIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C2F766CC();
    v15 = v14;
    if ([v4 deviceType])
    {
    }

    else
    {
      v16 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
      swift_beginAccess();
      v17 = *(v30 + v16);
      if (*(v17 + 16) && (v18 = sub_1C2EFAEC0(v13, v15), (v19 & 1) != 0))
      {
        v20 = (*(v17 + 56) + 16 * v18);
        v8 = *v20;
        v10 = v20[1];

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = v13;
        v22[4] = v15;
        *&v28 = sub_1C2F24604;
        *(&v28 + 1) = v22;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v27.n128_u64[0] = sub_1C2F21E84;
        v27.n128_u64[1] = &block_descriptor_1;
        v23 = _Block_copy(&aBlock);

        [v5 systemImageNameForModelId:v12 completion:v23];
        _Block_release(v23);
      }
    }
  }

  sub_1C2F20C40(v4, v8, v10, &aBlock);
  v24 = v29[0];
  *(a3 + 32) = v28;
  *(a3 + 48) = v24;
  *(a3 + 58) = *(v29 + 10);
  result = v27;
  *a3 = aBlock;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1C2F21A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C2F764EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C2F7651C();
  v15 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = v10;
    v30 = result;
    v31 = v11;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
      v28 = v15;
      v21 = a4;
      v22 = Strong;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *&v22[v20];
      *&v22[v20] = 0x8000000000000000;
      sub_1C2F69FF8(a1, a2, v21, a5, isUniquelyReferenced_nonNull_native);

      *&v22[v20] = v33;
      swift_endAccess();

      a4 = v21;
      v15 = v28;
    }

    else
    {
    }

    sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
    v24 = sub_1C2F76A2C();
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a1;
    v25[6] = a2;
    aBlock[4] = sub_1C2F24628;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F40688;
    aBlock[3] = &block_descriptor_17;
    v26 = _Block_copy(aBlock);

    sub_1C2F764FC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C2F24638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
    sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
    v27 = v29;
    sub_1C2F76B3C();
    MEMORY[0x1C6929010](0, v18, v13, v26);
    _Block_release(v26);

    (*(v31 + 8))(v13, v27);
    return (*(v15 + 8))(v18, v30);
  }

  return result;
}

void sub_1C2F21E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C2F24690(a2, a3);
  }
}

uint64_t sub_1C2F21E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1C2F766CC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

id AudioRouteService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2F22064()
{
  v1 = (*v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3) & 1;
}

uint64_t sub_1C2F22110(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v6 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v5);
  return (*(v6 + 32))(v3, v4, v5, v6);
}

void sub_1C2F22180(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v6 = &selRef_objectForKey_;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v7 = 136315394;
    v10 = [v3 routes];
    v11 = sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
    v12 = sub_1C2F767EC();

    v13 = MEMORY[0x1C6928DD0](v12, v11);
    v15 = v14;

    v16 = sub_1C2EFAB28(v13, v15, &v24);

    *(v7 + 4) = v16;
    v6 = &selRef_objectForKey_;
    *(v7 + 12) = 2112;
    v17 = [v3 pickedRoute];
    *(v7 + 14) = v17;
    *v8 = v17;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "routes have changed, %s, %@", v7, 0x16u);
    sub_1C2F0A8D8(v8, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v18 = v2 + OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler;
  v19 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler);
  if (v19)
  {
    v20 = *(v18 + 8);

    v21 = [v3 routes];
    sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
    v22 = sub_1C2F767EC();

    v23 = [v3 v6[47]];
    v19(v22, v23);
    sub_1C2EFDE10(v19, v20);
  }
}

uint64_t sub_1C2F225C0()
{
  v1 = [*v0 routes];
  sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
  v2 = sub_1C2F767EC();

  return v2;
}

id sub_1C2F22628()
{
  v1 = [*v0 pickedRoute];

  return v1;
}

void sub_1C2F22684(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1C2F766AC();
  [v3 pickRouteWithUniqueIdentifier_];
}

uint64_t sub_1C2F226F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C2F5C3F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C2F2276C(v6);
  return sub_1C2F76CFC();
}

void sub_1C2F2276C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C2F76ECC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
        v6 = sub_1C2F7681C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C2F22BC0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C2F22880(0, v2, 1, a1);
  }
}

void sub_1C2F22880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_objectForKey_;
    v8 = &selRef_objectForKey_;
    v29 = *a4;
LABEL_6:
    v32 = a3;
    v9 = *(v4 + 8 * a3);
    v30 = v6;
    v31 = v5;
    while (1)
    {
      v10 = *v5;
      v11 = v9;
      v12 = v10;
      if (([v11 v7[40]] & 1) != 0 || objc_msgSend(v11, sel_isReceiver))
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isDefaultRoute];
      }

      if (([v12 v7[40]] & 1) != 0 || objc_msgSend(v12, sel_isReceiver))
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13 != [v12 isDefaultRoute])
      {
        goto LABEL_29;
      }

      if (([v11 v8[56]] & 1) != 0 || objc_msgSend(v11, sel_isWiredHeadphones))
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isWirelessHeadset];
      }

      if (([v12 v8[56]] & 1) != 0 || objc_msgSend(v12, sel_isWiredHeadphones))
      {
        if ((v13 & 1) == 0)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (v13 != [v12 isWirelessHeadset])
      {
        goto LABEL_29;
      }

      v14 = [v11 isRecommended];
      if (v14 != [v12 isRecommended])
      {
        LOBYTE(v13) = [v11 isRecommended];
LABEL_29:

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      v15 = [v11 isGuest];
      if (v15 == [v12 isGuest])
      {
        v17 = [v11 name];
        v18 = sub_1C2F766CC();
        v20 = v19;

        v21 = [v12 name];
        v22 = sub_1C2F766CC();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {

          v4 = v29;
          v7 = &selRef_objectForKey_;
          v8 = &selRef_objectForKey_;
LABEL_5:
          a3 = v32 + 1;
          v5 = v31 + 8;
          v6 = v30 - 1;
          if (v32 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v25 = sub_1C2F76EFC();

        v4 = v29;
        v7 = &selRef_objectForKey_;
        v8 = &selRef_objectForKey_;
        if ((v25 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = [v11 isGuest];

        if ((v16 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v26 = *v5;
      v9 = *(v5 + 8);
      *v5 = v9;
      *(v5 + 8) = v26;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1C2F22BC0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    v4 = v125;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_153:
      v110 = *(v7 + 2);
      if (v110 >= 2)
      {
        while (*a3)
        {
          v111 = *&v7[16 * v110];
          v112 = *&v7[16 * v110 + 24];
          sub_1C2F236C8((*a3 + 8 * v111), (*a3 + 8 * *&v7[16 * v110 + 16]), (*a3 + 8 * v112), v6);
          if (v4)
          {
            goto LABEL_161;
          }

          if (v112 < v111)
          {
            goto LABEL_176;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1C2F59928(v7);
          }

          if (v110 - 2 >= *(v7 + 2))
          {
            goto LABEL_177;
          }

          v113 = &v7[16 * v110];
          *v113 = v111;
          *(v113 + 1) = v112;
          sub_1C2F5989C(v110 - 1);
          v110 = *(v7 + 2);
          if (v110 <= 1)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_187;
      }

LABEL_161:

      return;
    }

LABEL_183:
    v7 = sub_1C2F59928(v7);
    goto LABEL_153;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_objectForKey_;
LABEL_4:
  v9 = v6++;
  v123 = v7;
  if (v6 >= v5)
  {
    goto LABEL_51;
  }

  v10 = *a3;
  v11 = *(*a3 + 8 * v9);
  v12 = *(*a3 + 8 * v6);
  v13 = v11;
  v126 = sub_1C2F23E60(v12, v13);

  v4 = (v9 + 2);
  if (v9 + 2 >= v5)
  {
    v6 = v9 + 2;
    if (v126)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  v114 = v9;
  v14 = (v10 + 8 * v9 + 16);
  v15 = &selRef_objectForKey_;
  v16 = v126;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    v19 = v17;
    if (([v18 isSpeaker] & 1) != 0 || objc_msgSend(v18, sel_isReceiver))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 isDefaultRoute];
    }

    if (([v19 isSpeaker] & 1) != 0 || objc_msgSend(v19, sel_isReceiver))
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v20 != [v19 isDefaultRoute])
    {
      goto LABEL_38;
    }

    if (([v18 isWiredHeadset] & 1) != 0 || objc_msgSend(v18, sel_isWiredHeadphones))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 isWirelessHeadset];
    }

    if (([v19 isWiredHeadset] & 1) != 0 || objc_msgSend(v19, sel_isWiredHeadphones))
    {
      if ((v20 & 1) == 0)
      {
LABEL_7:

        v7 = v123;
        if (v16)
        {
          v8 = &selRef_objectForKey_;
          v6 = v4;
          v9 = v114;
          if (v4 < v114)
          {
            goto LABEL_180;
          }

          goto LABEL_45;
        }

        goto LABEL_8;
      }
    }

    else if (v20 != [v19 isWirelessHeadset])
    {
      goto LABEL_38;
    }

    v21 = [v18 v15[59]];
    if (v21 != [v19 v15[59]])
    {
      v22 = [v18 v15[59]];
      goto LABEL_31;
    }

    v23 = [v18 isGuest];
    if (v23 != [v19 isGuest])
    {
      v22 = [v18 isGuest];
LABEL_31:
      v24 = v22;

      v25 = v126 ^ v24;
      v16 = v126;
      v7 = v123;
      if (v25)
      {
        goto LABEL_39;
      }

      goto LABEL_8;
    }

    v26 = [v18 name];
    v121 = sub_1C2F766CC();
    v28 = v27;

    v29 = v28;
    v30 = [v19 name];
    v31 = sub_1C2F766CC();
    v33 = v32;

    if (v121 == v31 && v29 == v33)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      LOBYTE(v20) = sub_1C2F76EFC();
    }

    v15 = &selRef_objectForKey_;

    v16 = v126;
LABEL_38:

    v34 = v16 ^ v20;
    v7 = v123;
    if (v34)
    {
LABEL_39:
      v8 = &selRef_objectForKey_;
      v6 = v4;
      goto LABEL_43;
    }

LABEL_8:
    ++v14;
    v4 = (v4 + 1);
  }

  while (v5 != v4);
  v6 = v5;
  v8 = &selRef_objectForKey_;
LABEL_43:
  v9 = v114;
  if ((v126 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v6 < v9)
  {
    goto LABEL_180;
  }

LABEL_45:
  if (v9 < v6)
  {
    v35 = 8 * v6 - 8;
    v36 = 8 * v9;
    v37 = v6;
    v38 = v9;
    do
    {
      if (v38 != --v37)
      {
        v39 = *a3;
        if (!*a3)
        {
          goto LABEL_186;
        }

        v40 = *(v39 + v36);
        *(v39 + v36) = *(v39 + v35);
        *(v39 + v35) = v40;
      }

      ++v38;
      v35 -= 8;
      v36 += 8;
    }

    while (v38 < v37);
  }

LABEL_51:
  v41 = a3[1];
  if (v6 >= v41)
  {
    goto LABEL_97;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_179;
  }

  if (v6 - v9 >= a4)
  {
    goto LABEL_97;
  }

  v42 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_181;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v9)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v6 == v42)
  {
    goto LABEL_97;
  }

  v127 = *a3;
  v43 = *a3 + 8 * v6 - 8;
  v115 = v9;
  v44 = v9 - v6;
  v118 = v42;
  while (2)
  {
    v120 = v43;
    v122 = v6;
    v45 = *(v127 + 8 * v6);
    v119 = v44;
LABEL_63:
    v46 = *v43;
    v47 = v45;
    v4 = v46;
    if (([v47 v8[40]] & 1) != 0 || objc_msgSend(v47, sel_isReceiver))
    {
      v48 = 1;
    }

    else
    {
      v48 = [v47 isDefaultRoute];
    }

    if (([v4 v8[40]] & 1) == 0 && !objc_msgSend(v4, sel_isReceiver))
    {
      if (v48 == [v4 isDefaultRoute])
      {
        goto LABEL_70;
      }

LABEL_86:

      if ((v48 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_70:
    if (([v47 isWiredHeadset] & 1) != 0 || objc_msgSend(v47, sel_isWiredHeadphones))
    {
      v48 = 1;
    }

    else
    {
      v48 = [v47 isWirelessHeadset];
    }

    if (([v4 isWiredHeadset] & 1) == 0 && !objc_msgSend(v4, sel_isWiredHeadphones))
    {
      if (v48 == [v4 isWirelessHeadset])
      {
        goto LABEL_79;
      }

      goto LABEL_86;
    }

    if ((v48 & 1) == 0)
    {
LABEL_60:

      goto LABEL_61;
    }

LABEL_79:
    v49 = [v47 isRecommended];
    if (v49 != [v4 isRecommended])
    {
      v50 = [v47 isRecommended];

      if ((v50 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    v51 = [v47 isGuest];
    if (v51 != [v4 isGuest])
    {
      v52 = [v47 isGuest];

      if ((v52 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    v53 = [v47 name];
    v54 = sub_1C2F766CC();
    v56 = v55;

    v57 = [v4 name];
    v58 = sub_1C2F766CC();
    v60 = v59;

    if (v54 == v58 && v56 == v60)
    {

      v7 = v123;
      v8 = &selRef_objectForKey_;
LABEL_61:
      v6 = v122 + 1;
      v43 = v120 + 8;
      v44 = v119 - 1;
      if ((v122 + 1) != v118)
      {
        continue;
      }

      v6 = v118;
      v9 = v115;
LABEL_97:
      if (v6 < v9)
      {
        goto LABEL_178;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C2F1C78C(0, *(v7 + 2) + 1, 1, v7);
      }

      v65 = *(v7 + 2);
      v64 = *(v7 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v7 = sub_1C2F1C78C((v64 > 1), v65 + 1, 1, v7);
      }

      *(v7 + 2) = v66;
      v67 = &v7[16 * v65];
      *(v67 + 4) = v9;
      *(v67 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_188;
      }

      if (!v65)
      {
LABEL_3:
        v5 = a3[1];
        v8 = &selRef_objectForKey_;
        if (v6 >= v5)
        {
          goto LABEL_151;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v7 + 4);
          v70 = *(v7 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_117:
          if (v72)
          {
            goto LABEL_167;
          }

          v85 = &v7[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_170;
          }

          v91 = &v7[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_173;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_174;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_138;
          }

          goto LABEL_131;
        }

        v95 = &v7[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_131:
        if (v90)
        {
          goto LABEL_169;
        }

        v98 = &v7[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_172;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_138:
        v106 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (!*a3)
        {
          goto LABEL_185;
        }

        v107 = *&v7[16 * v106 + 32];
        v108 = *&v7[16 * v68 + 40];
        sub_1C2F236C8((*a3 + 8 * v107), (*a3 + 8 * *&v7[16 * v68 + 32]), (*a3 + 8 * v108), v4);
        if (v125)
        {
          goto LABEL_161;
        }

        if (v108 < v107)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C2F59928(v7);
        }

        if (v106 >= *(v7 + 2))
        {
          goto LABEL_164;
        }

        v109 = &v7[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        sub_1C2F5989C(v68);
        v66 = *(v7 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v7[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_165;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_166;
      }

      v80 = &v7[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_168;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_171;
      }

      if (v84 >= v76)
      {
        v102 = &v7[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_175;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_138;
      }

      goto LABEL_117;
    }

    break;
  }

  v61 = sub_1C2F76EFC();

  v7 = v123;
  v8 = &selRef_objectForKey_;
  if ((v61 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_91:
  if (v127)
  {
    v62 = *v43;
    v45 = *(v43 + 8);
    *v43 = v45;
    *(v43 + 8) = v62;
    v43 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
}

uint64_t sub_1C2F236C8(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_1C2F23E60(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_1C2F23E60(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

char *sub_1C2F23950(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v26[3] = sub_1C2EF5A14(0, &qword_1EDEBD788, 0x1E69D8CB0);
  v26[4] = &off_1F42B3A90;
  v26[0] = a1;
  sub_1C2F761EC();
  v5 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_pickedRouteSubject;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076678, &qword_1C2F7A058);
  swift_allocObject();
  *&a2[v5] = sub_1C2F7629C();
  v6 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routesSubject;
  v7 = MEMORY[0x1E69E7CC0];
  *&v22 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076670, &qword_1C2F7A050);
  swift_allocObject();
  *&a2[v6] = sub_1C2F7629C();
  *&a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_cancellables] = MEMORY[0x1E69E7CD0];
  v8 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
  *&a2[v8] = sub_1C2F266BC(v7);
  *&a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate] = 0;
  sub_1C2F09348(v26, &a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController]);
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = &v9[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController];
  v11 = *&v9[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24];
  v12 = *&v9[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32];
  __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController], v11);
  v13 = v9;
  v14 = sub_1C2F21504();
  (*(v12 + 40))(v14, v11, v12);

  v15 = *(v10 + 3);
  v16 = *(v10 + 4);
  __swift_project_boxed_opaque_existential_1(v10, v15);
  (*(v16 + 8))(v15, v16);
  v17 = *(v10 + 3);
  v18 = *(v10 + 4);
  __swift_project_boxed_opaque_existential_1(v10, v17);
  v19 = (*(v18 + 16))(v17, v18);
  sub_1C2F240B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v13;
}

uint64_t sub_1C2F23C4C(uint64_t a1)
{
  result = sub_1C2F761FC();
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

uint64_t sub_1C2F23D50(uint64_t a1)
{
  result = sub_1C2F761FC();
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

id sub_1C2F23E60(void *a1, void *a2)
{
  if ([a1 isSpeaker] & 1) != 0 || (objc_msgSend(a1, sel_isReceiver))
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 isDefaultRoute];
  }

  if (([a2 isSpeaker] & 1) != 0 || objc_msgSend(a2, sel_isReceiver))
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4 != [a2 isDefaultRoute])
  {
    return v4;
  }

  if ([a1 isWiredHeadset] & 1) != 0 || (objc_msgSend(a1, sel_isWiredHeadphones))
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 isWirelessHeadset];
  }

  if (([a2 isWiredHeadset] & 1) != 0 || objc_msgSend(a2, sel_isWiredHeadphones))
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4 != [a2 isWirelessHeadset])
  {
    return v4;
  }

  v5 = [a1 isRecommended];
  if (v5 != [a2 isRecommended])
  {
    return [a1 isRecommended];
  }

  v7 = [a1 isGuest];
  if (v7 != [a2 isGuest])
  {
    return [a1 isGuest];
  }

  v9 = [a1 name];
  v10 = sub_1C2F766CC();
  v12 = v11;

  v13 = [a2 name];
  v14 = sub_1C2F766CC();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    return 0;
  }

  v17 = sub_1C2F76EFC();

  return (v17 & 1);
}

uint64_t sub_1C2F240B4()
{
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v2);
  (*(v3 + 8))(v2, v3);

  *&__dst = sub_1C2F3ED18(v4);
  sub_1C2F226F0(&__dst);

  v5 = __dst;
  v33 = v1;
  if ((__dst & 0x8000000000000000) != 0 || (__dst & 0x4000000000000000) != 0)
  {
    goto LABEL_20;
  }

  for (i = *(__dst + 16); i; i = sub_1C2F76BBC())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6929250](v7, v5);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v35 = v9;
      sub_1C2F217BC(&v35, v34, &__dst);

      if (v49)
      {
        v45 = v49;
        *v46 = v50[0];
        *&v46[10] = *(v50 + 10);
        v43 = __dst;
        v44 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C2F1C670(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1C2F1C670((v12 > 1), v13 + 1, 1, v8);
        }

        *(v42 + 10) = *&v46[10];
        v41 = v45;
        v42[0] = *v46;
        v14 = v43;
        v39 = v43;
        v40 = v44;
        *(v8 + 2) = v13 + 1;
        v15 = &v8[80 * v13];
        *(v15 + 2) = v14;
        v16 = v40;
        v17 = v41;
        v18 = v42[0];
        *(v15 + 90) = *(v42 + 10);
        *(v15 + 4) = v17;
        *(v15 + 5) = v18;
        *(v15 + 3) = v16;
      }

      else
      {
        v45 = v49;
        *v46 = v50[0];
        *&v46[10] = *(v50 + 10);
        v43 = __dst;
        v44 = v48;
        sub_1C2F0A8D8(&v43, &unk_1EC0766F0, &qword_1C2F7A198);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_22:

  *&__dst = v8;

  sub_1C2F7627C();

  v19 = *(v8 + 2);
  if (v19)
  {
    v20 = 32;
    while (1)
    {
      v43 = *&v8[v20];
      v21 = *&v8[v20 + 16];
      v22 = *&v8[v20 + 32];
      v23 = *&v8[v20 + 48];
      *&v46[10] = *&v8[v20 + 58];
      v45 = v22;
      *v46 = v23;
      v44 = v21;
      memmove(&__dst, &v8[v20], 0x4AuLL);
      if (v46[24])
      {
        break;
      }

      v20 += 80;
      if (!--v19)
      {
        goto LABEL_26;
      }
    }

    sub_1C2F245A8(&v43, &v39);

    v37 = v49;
    v38[0] = v50[0];
    *(v38 + 10) = *(v50 + 10);
    v35 = __dst;
    v36 = v48;

    sub_1C2F7627C();

    v41 = v37;
    v42[0] = v38[0];
    *(v42 + 10) = *(v38 + 10);
    v39 = v35;
    v40 = v36;
    return sub_1C2F0A8D8(&v39, &unk_1EC0766F0, &qword_1C2F7A198);
  }

  else
  {
LABEL_26:

    v24 = v33[3];
    v25 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v24);
    v26 = (*(v25 + 16))(v24, v25);
    if (v26)
    {
      v27 = v26;

      v28 = v27;
      sub_1C2F20C40(v28, 0, 0, &v43);
      sub_1C2F7627C();

      v49 = v45;
      v50[0] = *v46;
      *(v50 + 10) = *&v46[10];
      __dst = v43;
      v48 = v44;
      return sub_1C2F0A8D8(&__dst, &unk_1EC0766F0, &qword_1C2F7A198);
    }

    else
    {
      v30 = sub_1C2F761DC();
      v31 = sub_1C2F769DC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C2EF2000, v30, v31, "TURouteController pickedRoute is nil", v32, 2u);
        MEMORY[0x1C6929E80](v32, -1, -1);
      }

      v49 = 0u;
      memset(v50, 0, 26);
      __dst = 0u;
      v48 = 0u;

      sub_1C2F7627C();
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F24638()
{
  result = qword_1EC076700;
  if (!qword_1EC076700)
  {
    sub_1C2F764EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076700);
  }

  return result;
}

void sub_1C2F24690(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v5 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  v26 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_26:
    v8 = sub_1C2F76BBC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v28 = (v7 & 0xC000000000000001);
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v28)
        {
          v11 = MEMORY[0x1C6929250](v9, v7);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_25;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v14 = [v11 modelIdentifier];
        if (!v14)
        {
          break;
        }

        v15 = v7;
        v16 = a2;
        v17 = v14;
        v18 = sub_1C2F766CC();
        v20 = v19;

        a2 = v16;
        if (v18 == a1 && v20 == v16)
        {

          v7 = v15;
        }

        else
        {
          v22 = sub_1C2F76EFC();

          v7 = v15;
          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        v23 = [v12 deviceType];

        if (!v23)
        {
          v24 = v26[3];
          v25 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v24);
          v29 = (*(v25 + 16))(v24, v25);
          sub_1C2F240B4();

          return;
        }

LABEL_5:
        ++v9;
        if (v13 == v8)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_5;
    }
  }

LABEL_27:
}

void DeviceConditions.requestPasscodeUnlock(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  if (sub_1C2F25A48())
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C2F07C9C;
    v5[3] = &block_descriptor_2;
    v4 = _Block_copy(v5);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v4);
  }

  else
  {
    a1(1);
  }
}

uint64_t DeviceConditions.isSetupAssistantRunning.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = BYSetupAssistantNeedsToRun();
    LOBYTE(v1) = v2;
    if (v2)
    {
      sub_1C2F24A10();
    }

    *(v0 + 16) = v1;
  }

  return v1 & 1;
}

void sub_1C2F24A10()
{
  if (*MEMORY[0x1E69CA9C0])
  {
    v1 = sub_1C2F766CC();
    v3 = v2;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for DarwinNotificationWrapper();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
    v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
    v7 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
    *v7 = v1;
    v7[1] = v3;
    v8 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
    *v8 = sub_1C2F266B4;
    v8[1] = v4;
    v13.receiver = v6;
    v13.super_class = v5;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + 24);
    *(v0 + 24) = v9;

    v11 = *(v0 + 24);
    if (v11)
    {
      v12 = v11;
      sub_1C2F2FFC0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DeviceConditions.isInLostMode.getter()
{
  v1 = *(v0 + 17);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() sharedInstance];
    LOBYTE(v1) = [v2 lostModeIsActive];

    sub_1C2F24B8C();
    *(v0 + 17) = v1;
  }

  return v1 & 1;
}

void sub_1C2F24B8C()
{
  v1 = sub_1C2F766CC();
  v3 = v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = type metadata accessor for DarwinNotificationWrapper();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
  v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
  v7 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
  *v7 = v1;
  v7[1] = v3;
  v8 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
  *v8 = sub_1C2F266AC;
  v8[1] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *(v0 + 32);
  *(v0 + 32) = v9;

  v11 = *(v0 + 32);
  if (v11)
  {
    v12 = v11;
    sub_1C2F2FFC0();
  }
}

void sub_1C2F24C8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + 16) = BYSetupAssistantNeedsToRun();
    if (DeviceConditions.isSetupAssistantRunning.getter())
    {
    }

    else
    {
      v3 = *(v2 + 24);
      *(v2 + 24) = 0;
    }
  }
}

uint64_t sub_1C2F24D08(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 lostModeIsActive];

    *(v2 + 17) = v4;
  }

  return result;
}

Swift::Bool __swiftcall DeviceConditions.canPerformFaceID()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  [v0 canEvaluatePolicy:1 error:0];
  v1 = [v0 biometryType];

  return v1 == 2;
}

void DeviceConditions.requestFaceIDAuth(_:)(void (*a1)(void), uint64_t a2)
{
  if (qword_1EC075C70 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076720);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Request FaceID", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  [v13 canEvaluatePolicy:1 error:0];
  if ([v13 biometryType] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076738, &qword_1C2F7A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C2F7A1A0;
    v9 = MEMORY[0x1E69E6530];
    sub_1C2F76C1C();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    sub_1C2F76C1C();
    *(inited + 168) = v9;
    *(inited + 144) = 0;
    sub_1C2F263A4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
    swift_arrayDestroy();
    v10 = sub_1C2F7659C();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    aBlock[4] = sub_1C2F264C0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F257BC;
    aBlock[3] = &block_descriptor_3;
    v12 = _Block_copy(aBlock);

    [v13 evaluatePolicy:1 options:v10 reply:v12];
    _Block_release(v12);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1C2F25144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2F764EC();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2F7651C();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1)
    {
      *&v54 = 1;
      sub_1C2F76C1C();
      if (*(a1 + 16))
      {
        v34 = sub_1C2F3D8D0(&aBlock);
        if (v35)
        {
          sub_1C2EFAD00(*(a1 + 56) + 32 * v34, &v54);
          sub_1C2F265AC(&aBlock);
          if (*(&v55 + 1))
          {
            sub_1C2EF5A14(0, &qword_1EC076748, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              v36 = aBlock;
            }

            else
            {
              v36 = 0;
            }

            goto LABEL_17;
          }

LABEL_16:
          sub_1C2F26504(&v54);
          v36 = 0;
LABEL_17:
          sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
          v37 = sub_1C2F76A2C();
          v38 = swift_allocObject();
          v38[2] = a3;
          v38[3] = a4;
          v38[4] = v36;
          v52 = sub_1C2F2656C;
          v53 = v38;
          aBlock = MEMORY[0x1E69E9820];
          v49 = 1107296256;
          v50 = sub_1C2F40688;
          v51 = &block_descriptor_13;
          v39 = _Block_copy(&aBlock);
          v40 = v36;

          sub_1C2F764FC();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1C2F24638();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
          sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
          sub_1C2F76B3C();
          MEMORY[0x1C6929010](0, v13, v10, v39);
          _Block_release(v39);

          goto LABEL_18;
        }
      }

      sub_1C2F265AC(&aBlock);
    }

    v54 = 0u;
    v55 = 0u;
    goto LABEL_16;
  }

  v14 = a2;
  if (qword_1EC075C70 != -1)
  {
    swift_once();
  }

  v15 = sub_1C2F761FC();
  __swift_project_value_buffer(v15, qword_1EC076720);
  v16 = a2;
  v17 = sub_1C2F761DC();
  v18 = sub_1C2F769DC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = a3;
    v20 = v19;
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v20 = 136315138;
    swift_getErrorValue();
    v21 = sub_1C2F76F3C();
    v23 = a2;
    v24 = v13;
    v25 = v10;
    v26 = v8;
    v27 = a4;
    v28 = sub_1C2EFAB28(v21, v22, &aBlock);

    *(v20 + 4) = v28;
    a4 = v27;
    v8 = v26;
    v10 = v25;
    v13 = v24;
    a2 = v23;
    _os_log_impl(&dword_1C2EF2000, v17, v18, "fail to evaluate policy %s", v20, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1C6929E80](v29, -1, -1);
    v30 = v20;
    a3 = v44;
    MEMORY[0x1C6929E80](v30, -1, -1);
  }

  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v31 = sub_1C2F76A2C();
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v52 = sub_1C2F26600;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C2F40688;
  v51 = &block_descriptor_19;
  v33 = _Block_copy(&aBlock);

  sub_1C2F764FC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C2F24638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v13, v10, v33);
  _Block_release(v33);

LABEL_18:
  (*(v47 + 8))(v10, v8);
  return (*(v45 + 8))(v13, v46);
}

uint64_t sub_1C2F257BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C2F765AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1C2F2586C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  v6[1] = sub_1C2F25CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F7630C();

  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0, MEMORY[0x1E695BD38]);
  v4 = sub_1C2F762AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t _s20CommunicationsUICore16DeviceConditionsC02isC6LockedSbvg_0(uint64_t a1)
{
  sub_1C2F25CF4();
  sub_1C2F7628C();

  return v2;
}

BOOL sub_1C2F25A48()
{
  state64[1] = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = sub_1C2F7672C();
  v1 = notify_register_check((v0 + 32), &out_token);

  if (v1)
  {
    if (qword_1EC075C70 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EC076720);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769DC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    state64[0] = v6;
    *v5 = 136315138;
    LODWORD(v17) = v1;
    v7 = sub_1C2F7670C();
    v9 = sub_1C2EFAB28(v7, v8, state64);

    *(v5 + 4) = v9;
    v10 = "Unable to get token to check if SpringBoard is passcode locked: result = %s";
LABEL_11:
    _os_log_impl(&dword_1C2EF2000, v3, v4, v10, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
LABEL_12:

    return 0;
  }

  state64[0] = 0;
  if (notify_get_state(out_token, state64))
  {
    if (qword_1EC075C70 != -1)
    {
      swift_once();
    }

    v11 = sub_1C2F761FC();
    __swift_project_value_buffer(v11, qword_1EC076720);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769DC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v12 = sub_1C2F7670C();
    v14 = sub_1C2EFAB28(v12, v13, &v17);

    *(v5 + 4) = v14;
    v10 = "Unable to get SpringBoard passcode lock state: result = %s";
    goto LABEL_11;
  }

  return state64[0] != 0;
}

uint64_t sub_1C2F25CF4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    sub_1C2F25A48();
    sub_1C2F25DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
    swift_allocObject();
    v1 = sub_1C2F7629C();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2F25DB0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = type metadata accessor for DarwinNotificationWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
  v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
  v6 = &v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
  *v6 = v2;
  v6[1] = v1;
  v7 = &v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
  *v7 = sub_1C2F267D0;
  v7[1] = v3;
  v12.receiver = v5;
  v12.super_class = v4;

  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = v0[8];
  v0[8] = v8;

  v10 = v0[8];
  if (v10)
  {
    v11 = v10;
    sub_1C2F2FFC0();
  }
}

uint64_t sub_1C2F25EA8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_1C2F25A48();
    if (qword_1EC075C70 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2F761FC();
    __swift_project_value_buffer(v3, qword_1EC076720);
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "update lock state, send value: %{BOOL}d", v6, 8u);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }

    sub_1C2F25CF4();
    sub_1C2F7627C();
  }

  return result;
}

id *DeviceConditions.deinit()
{

  return v0;
}

uint64_t DeviceConditions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F26098()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076720);
  __swift_project_value_buffer(v0, qword_1EC076720);
  return sub_1C2F761EC();
}