uint64_t sub_22FC1DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v5[5] = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20);
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v5[8] = *(v9 + 64);
  v5[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[10] = v10;
  sub_22FA2D328(a1, v10);
  sub_22FC1F3B8(a2, v10 + *(v8 + 48), type metadata accessor for MomentGraphResource);

  return MEMORY[0x2822009F8](sub_22FC1DDAC, v4, 0);
}

uint64_t sub_22FC1DDAC()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v19 = v0[2];
  v20 = v0[5];
  sub_22FA4FAA4(v2, v1, &unk_27DAD8FF0, &qword_22FCDCD20);
  v7 = *(v5 + 48);
  v21 = sub_22FC154F0();
  v9 = v8;
  v0[11] = v8;
  sub_22FC1F6C4(v1 + v7, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v1);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_22FA4FAA4(v2, v1, &unk_27DAD8FF0, &qword_22FCDCD20);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v10;
  sub_22FC1E6D4(v1, v13 + v11);
  v14 = (v13 + v12);
  *v14 = v19;
  v14[1] = v6;
  *(v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_22FC1DF9C;
  v16 = v0[3];
  v17 = v0[2];

  return sub_22FC18A10(v21, v9, v17, v16, &unk_22FCDCD40, v13);
}

uint64_t sub_22FC1DF9C(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[4];
  if (v1)
  {

    v6 = sub_22FC1E1B8;
  }

  else
  {

    v4[15] = a1;
    v6 = sub_22FC1E12C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FC1E12C()
{
  sub_22FA2B420(v0[10], &unk_27DAD8FF0, &qword_22FCDCD20);

  v1 = v0[1];
  v2 = v0[15];

  return v1(v2);
}

uint64_t sub_22FC1E1B8()
{
  sub_22FA2B420(*(v0 + 80), &unk_27DAD8FF0, &qword_22FCDCD20);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC1E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC1E2E8, 0, 0);
}

uint64_t sub_22FC1E2E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    sub_22FA4FAA4(*(v0 + 56), v2, &unk_27DAD8FF0, &qword_22FCDCD20);
    v4 = *(v3 + 48);
    *(v0 + 136) = v4;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_22FC1E470;
    v6 = *(v0 + 96);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    return sub_22FC1E890(v6, v2 + v4, v7, v8);
  }

  else
  {
    v10 = sub_22FCC9904();
    v12 = v11;
    sub_22FAA1C84();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22FC1E470(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_22FC1E640;
  }

  else
  {
    v6 = *(v4 + 136);
    v7 = *(v4 + 96);
    *(v4 + 128) = a1;
    sub_22FC1F6C4(v7 + v6, type metadata accessor for MomentGraphResource);
    __swift_destroy_boxed_opaque_existential_0(v7);
    v5 = sub_22FC1E5C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FC1E5C0()
{
  v1 = v0[16];
  v2 = v0[5];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1E640()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  sub_22FC1F6C4(v2 + v1, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FC1E6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC1E744(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22FA2C21C;

  return sub_22FC1E240(a1, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_22FC1E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a3;
  type metadata accessor for MomentGraphResource(0);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20);
  v5[16] = v8;
  v5[17] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[18] = v9;
  sub_22FA2D328(a1, v9);
  sub_22FC1F3B8(a2, v9 + *(v8 + 48), type metadata accessor for MomentGraphResource);

  return MEMORY[0x2822009F8](sub_22FC1E9C0, v4, 0);
}

uint64_t sub_22FC1E9C0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  if (*(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    sub_22FA4FAA4(*(v0 + 144), v3, &unk_27DAD8FF0, &qword_22FCDCD20);
    v6 = *(v5 + 48);
    sub_22FA2CF78(v3, v0 + 16);
    sub_22FC1F244(v3 + v6, v4);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    v9 = (*(*(v7 + 8) + 16))(v8);
    v11 = v10;
    *(v0 + 152) = v10;
    sub_22FA2D328(v0 + 16, v0 + 56);
    v12 = swift_allocObject();
    *(v0 + 160) = v12;
    *(v12 + 16) = v1;
    sub_22FA2CF78((v0 + 56), v12 + 24);

    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_22FC1EC24;
    v14 = *(v0 + 104);
    v15 = *(v0 + 96);

    return sub_22FC16B78(v9, v11, v15, v14, &unk_22FCDCD80, v12);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    swift_willThrow();

    sub_22FA2B420(v17, &unk_27DAD8FF0, &qword_22FCDCD20);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FC1EC24(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[14];
    v5 = sub_22FC1ED54;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_22FC1EE28;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22FC1ED54()
{
  v1 = v0[18];
  v2 = v0[15];

  sub_22FC1F6C4(v2, type metadata accessor for MomentGraphResource);
  sub_22FA2B420(v1, &unk_27DAD8FF0, &qword_22FCDCD20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1EE28()
{
  v1 = v0[22];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = objc_allocWithZone(MEMORY[0x277D3BA40]);
  v5 = sub_22FCC6564();
  v6 = [v4 initWithGraphPersistentStoreURL:v5 photoLibrary:v2 analytics:v3 progressBlock:0];

  type metadata accessor for MomentGraphManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = v6;
  *(v7 + 120) = v1;
  v8 = qword_281480070;
  v9 = v6;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = v0[18];
  v11 = v0[15];
  sub_22FB5A674();

  sub_22FC1F6C4(v11, type metadata accessor for MomentGraphResource);
  sub_22FA2B420(v10, &unk_27DAD8FF0, &qword_22FCDCD20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_22FC1EFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C030;

  return sub_22FC1AC18(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22FC1F08C()
{
  result = qword_27DAD9008;
  if (!qword_27DAD9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9008);
  }

  return result;
}

unint64_t sub_22FC1F0E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](*(a1 + 16));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 40;
    do
    {

      sub_22FCC8B14();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  sub_22FCC9894();
  result = sub_22FCC92A4();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

uint64_t sub_22FC1F244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentGraphResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FC1F2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FC1A8C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FC1F3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC1F420(uint64_t a1, uint64_t a2)
{
  v24[3] = type metadata accessor for PhotoLibraryResource(0);
  v24[4] = sub_22FC1F724(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_22FC1F3B8(a1, boxed_opaque_existential_1, type metadata accessor for PhotoLibraryResource);
  v5 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  swift_beginAccess();
  v6 = *(a2 + v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (1)
    {
      v10 = sub_22FAA1CD8(v9);
      if (v10)
      {
        break;
      }

      ++v8;
      v9 += 5;
      if (v7 == v8)
      {
        v8 = 0;
        break;
      }
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
    v11 = 1;
  }

  v12 = v11 & 1;

  if (v12)
  {
    sub_22FA2D328(v24, v23);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v17 = sub_22FCC96C4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(v23);
      v20 = sub_22FA2F600(v17, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "Skipping deletion of unknown resource: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  else
  {
    swift_beginAccess();
    sub_22FC15288(v8, v23);
    __swift_destroy_boxed_opaque_existential_0(v23);
    swift_endAccess();
    sub_22FA631E8();
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_22FC1F6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC1F724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22FC1F79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FC1F7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FC1F82C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_22FC1F870()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_28147D000 = result;
  return result;
}

uint64_t sub_22FC1F8E8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147CFD8);
  __swift_project_value_buffer(v0, qword_28147CFD8);
  if (qword_28147CFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D000;
  return sub_22FCC8694();
}

uint64_t sub_22FC1F974(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84F98];
  v3[3] = v2;
  v3[2] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_22FC1FA30;

  return sub_22FC20140((v3 + 2), a1, a2);
}

uint64_t sub_22FC1FA30()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22FC1FD8C;
  }

  else
  {
    v2 = sub_22FC1FB44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC1FB44()
{
  v15 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics);
  v2 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADD0, 0x277D82BB8);

  v3 = sub_22FCC89C4();

  [v1 sendEvent:v2 withPayload:v3];

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22FA2F600(0xD00000000000002ALL, 0x800000022FCE7FA0, &v14);
    *(v6 + 12) = 2080;

    v8 = sub_22FCC89E4();
    v10 = v9;

    v11 = sub_22FA2F600(v8, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Reported analytics to %s. Payload: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22FC1FD8C()
{
  v28 = v0;
  v1 = v0[5];
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22FA28000, v3, v4, "Execution failed with error %@, reporting analytics and rethrowing", v6, 0xCu);
    sub_22FA2B420(v7, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v10 = v0[5];
  v11 = v0[3];

  sub_22FC22F40(v10);
  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v12 = sub_22FCC9164();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v0[2];
  sub_22FB25940(v12, 0xD000000000000013, 0x800000022FCE7F80, isUniquelyReferenced_nonNull_native);
  v0[2] = v27[0];
  v14 = *(v11 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics);
  v15 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADD0, 0x277D82BB8);

  v16 = sub_22FCC89C4();

  [v14 sendEvent:v15 withPayload:v16];

  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_22FA2F600(0xD00000000000002ALL, 0x800000022FCE7FA0, v27);
    *(v19 + 12) = 2080;

    v21 = sub_22FCC89E4();
    v23 = v22;

    v24 = sub_22FA2F600(v21, v23, v27);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_22FA28000, v17, v18, "Reported analytics to %s. Payload: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v20, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_22FC20140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v4[12] = swift_task_alloc();
  v5 = sub_22FCC6794();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC20248, 0, 0);
}

uint64_t sub_22FC20248()
{
  v50 = v0;
  if (qword_28147CFF8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = qword_28147D000;
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  v0[17] = sub_22FCC76C4();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_33;
  v6 = _Block_copy(v0 + 2);
  v7 = objc_opt_self();

  v0[18] = [v7 progressReporterWithProgressBlock_];
  _Block_release(v6);

  v8 = sub_22FCC9014();
  v0[19] = v8;
  v0[20] = v9;
  sub_22FCC90E4();
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_22FA2B420(v12, &qword_27DAD8730, &qword_22FCD1B20);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FA28000, v13, v14, "No scheduled cache invalidation date found.", v15, 2u);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    v16 = v0[8];

    sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
    v17 = sub_22FCC9154();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v16;
    sub_22FB25940(v17, 0xD000000000000018, 0x800000022FCE8000, isUniquelyReferenced_nonNull_native);
    *v16 = v49;
    v19 = sub_22FCC9154();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v16;
    sub_22FB25940(v19, 0xD000000000000025, 0x800000022FCE8020, v20);
    *v16 = v49;
    v21 = swift_task_alloc();
    v0[24] = v21;
    *v21 = v0;
    v21[1] = sub_22FC20CF0;
    v22 = v0[20];
    v23 = v0[8];

    return sub_22FC21568(v23, v22);
  }

  else
  {
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[11];
    (*(v11 + 32))(v25, v12, v10);
    (*(v11 + 16))(v26, v25, v10);
    v28 = v27;
    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[13];
    if (v31)
    {
      v48 = v30;
      v35 = v0[11];
      v36 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v36 = 136315138;
      v37 = *(v35 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter);
      v38 = sub_22FCC66F4();
      v39 = [v37 stringFromDate_];

      v40 = sub_22FCC8A84();
      v42 = v41;

      v43 = *(v33 + 8);
      v43(v32, v34);
      v44 = sub_22FA2F600(v40, v42, &v49);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_22FA28000, v29, v48, "Scheduled cache invalidation date found: %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v36, -1, -1);
    }

    else
    {

      v43 = *(v33 + 8);
      v43(v32, v34);
    }

    v0[21] = v43;
    v45 = swift_task_alloc();
    v0[22] = v45;
    *v45 = v0;
    v45[1] = sub_22FC208C4;
    v46 = v0[16];

    return sub_22FC210A4(v46, v8);
  }
}

uint64_t sub_22FC208C4(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_22FC20F1C;
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v5 = sub_22FC209F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FC209F0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 64);
  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v3 = sub_22FCC9154();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  sub_22FB25940(v3, 0xD000000000000018, 0x800000022FCE8000, isUniquelyReferenced_nonNull_native);
  *v2 = v20;
  v5 = *(v0 + 168);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  if (v1 == 1)
  {
    v9 = sub_22FCC9164();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v8;
    sub_22FB25940(v9, 0xD000000000000012, 0x800000022FCE8050, v10);
    *v8 = v21;
    v5(v6, v7);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_22FC20CF0;
    v12 = *(v0 + 160);
    v13 = *(v0 + 64);

    return sub_22FC21568(v13, v12);
  }

  else
  {
    v15 = sub_22FCC9154();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v8;
    sub_22FB25940(v15, 0xD000000000000025, 0x800000022FCE8020, v16);
    *v8 = v22;
    v5(v6, v7);
    sub_22FCC9004();
    v17 = *(v0 + 152);
    v18 = *(v0 + 144);

    sub_22FCC76B4();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22FC20CF0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_22FC20FF0;
  }

  else
  {
    v2 = sub_22FC20E04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC20E04(uint64_t a1)
{
  sub_22FCC9004();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  sub_22FCC76B4();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_22FC20F1C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);

  v1(v4, v5);
  sub_22FCC76B4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FC20FF0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  sub_22FCC76B4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FC210A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC6794();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC21180, 0, 0);
}

uint64_t sub_22FC21180(uint64_t a1)
{
  v41 = v1;
  sub_22FCC6764();
  sub_22FC232F8(&qword_27DAD90B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v2 = sub_22FCC8A34();
  if ((v2 & 1) == 0)
  {
    v3 = v1[7];
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[2];
    v7 = *(v1[6] + 16);
    v7(v1[8], v1[9], v4);
    v7(v3, v6, v4);
    v8 = v5;
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v1[7];
    v12 = v1[8];
    v15 = v1[5];
    v14 = v1[6];
    if (v11)
    {
      log = v9;
      v16 = v1[4];
      v36 = v1[7];
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v17 = 136315394;
      v18 = *(v16 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter);
      v19 = sub_22FCC66F4();
      v37 = v10;
      v20 = [v18 stringFromDate_];

      v21 = sub_22FCC8A84();
      v23 = v22;

      v24 = *(v14 + 8);
      v24(v12, v15);
      v25 = sub_22FA2F600(v21, v23, v40);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      v26 = sub_22FCC66F4();
      v27 = [v18 stringFromDate_];

      v28 = sub_22FCC8A84();
      v30 = v29;

      v24(v36, v15);
      v31 = sub_22FA2F600(v28, v30, v40);

      *(v17 + 14) = v31;
      _os_log_impl(&dword_22FA28000, log, v37, "Invalidating the cache because the current date: %s is after the scheduled invalidation date: %s.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v38, -1, -1);
      MEMORY[0x23190A000](v17, -1, -1);
    }

    else
    {

      v33 = *(v14 + 8);
      v33(v13, v15);
      v32 = (v33)(v12, v15);
    }

    sub_22FC21EE8(v32);
  }

  sub_22FCC9004();
  (*(v1[6] + 8))(v1[9], v1[5]);

  v34 = v1[1];

  return v34((v2 & 1) == 0);
}

uint64_t sub_22FC21568(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;

  return MEMORY[0x2822009F8](sub_22FC215FC, 0, 0);
}

uint64_t sub_22FC215FC()
{
  v1 = *(v0[21] + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22FC2175C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C0, &qword_22FCDD008);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22FC21FC0;
  v0[13] = &block_descriptor_11;
  v0[14] = v2;
  [v1 requestCurrentServiceVersionWithCompletionBlock_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FC2175C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_22FC21E50;
  }

  else
  {
    v2 = sub_22FC21898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FC21898()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v2 = [v1 versionString];
  if (!v2)
  {
    sub_22FCC8A84();
    v2 = sub_22FCC8A54();
  }

  v3 = v0[19];
  v4 = sub_22FCC8A84();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *v3;
  sub_22FB25940(v2, 0xD000000000000014, 0x800000022FCE80B0, isUniquelyReferenced_nonNull_native);
  *v3 = v38[0];
  sub_22FCC8FF4();
  v8 = sub_22FCC90D4();
  v12 = v9;
  if (v9)
  {
    v13 = v0[19];
    v36 = v8;
    v14 = sub_22FCC8A54();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v13;
    sub_22FB25940(v14, 0xD000000000000015, 0x800000022FCE80D0, v15);
    *v13 = v38[0];
    sub_22FCC8FF4();
    if (v36 == v4 && v12 == v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_22FCC9704();
    }

    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v29 = 136315650;
      v30 = v21;
      v31 = sub_22FA2F600(v36, v12, v38);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = sub_22FA2F600(v4, v6, v38);

      *(v29 + 14) = v32;
      *(v29 + 22) = 1024;
      *(v29 + 24) = v30 & 1;
      _os_log_impl(&dword_22FA28000, v27, v28, "Cached version: %s, current version: %s, isCachedServiceVersionValid: %{BOOL}d", v29, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v37, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {
    }

    v33 = v0[19];
    sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
    v34 = sub_22FCC9154();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v33;
    sub_22FB25940(v34, 0xD000000000000016, 0x800000022FCE80F0, v35);
    *v33 = v38[0];
  }

  else
  {

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136315138;
      v20 = sub_22FA2F600(v4, v6, v38);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v16, v17, "Writing new service version %s to public events cache", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {
    }

    v22 = v0[22];
    v0[10] = 0;
    v23 = [v22 setNewCachedServiceVersion:v1 forEventSourceService:1 error:v0 + 10];
    v24 = v0[10];
    if (!v23)
    {
      v26 = v24;
      sub_22FCC6514();

      swift_willThrow();
      v10 = v0[1];
      goto LABEL_4;
    }

    v25 = v24;
  }

  sub_22FCC9004();

  v10 = v0[1];
LABEL_4:

  return v10();
}

uint64_t sub_22FC21E50(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id sub_22FC21EE8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22FA28000, v3, v4, "Performing cache invalidation", v5, 2u);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = *(v2 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager);
  [v6 invalidateDiskCaches];

  return [v6 invalidateMemoryCaches];
}

uint64_t sub_22FC21FC0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22FC22090()
{
  v2 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22FCC6794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v40 - v14;
  sub_22FC22A50(0x20000000000001uLL);
  sub_22FCC8DE4();
  sub_22FCC6764();
  sub_22FCC66E4();
  v16 = *(v4 + 8);
  v16(v11, v3);
  v17 = *(v4 + 16);
  v45 = v15;
  v17(v7, v15, v3);
  v18 = v2;
  v19 = sub_22FCC8664();
  v20 = sub_22FCC8F34();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v1;
    v41 = v16;
    v22 = v21;
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v22 = 136315138;
    v23 = *&v18[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter];
    v42 = v20;
    v24 = sub_22FCC66F4();
    v25 = [v23 stringFromDate_];

    v26 = sub_22FCC8A84();
    v27 = v18;
    v29 = v28;

    v30 = v41;
    v41(v7, v3);
    v31 = sub_22FA2F600(v26, v29, v46);
    v18 = v27;

    *(v22 + 4) = v31;
    _os_log_impl(&dword_22FA28000, v19, v42, "Scheduling cache invalidation for %s", v22, 0xCu);
    v32 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x23190A000](v32, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);

    v16 = v30;
  }

  else
  {

    v16(v7, v3);
  }

  v33 = *&v18[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager];
  v34 = v45;
  v35 = sub_22FCC66F4();
  v46[0] = 0;
  v36 = [v33 setLatestVersionScheduledInvalidationDate:v35 forEventSourceService:1 error:v46];

  if (v36)
  {
    v37 = v46[0];
  }

  else
  {
    v38 = v46[0];
    sub_22FCC6514();

    swift_willThrow();
  }

  return (v16)(v34, v3);
}

id PublicEventCacheInvalidationTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventCacheInvalidationTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FC22624()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_name);

  return v1;
}

uint64_t sub_22FC22664()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_identifier);

  return v1;
}

uint64_t sub_22FC226BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FC1F974(a2, a3);
}

void sub_22FC22764(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FC22844()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPublicEventCacheInvalidationTask_incrementalKey);

  return v1;
}

uint64_t sub_22FC22884(uint64_t a1)
{
  *(a1 + 8) = sub_22FC232F8(&qword_28147CFA8, type metadata accessor for PublicEventCacheInvalidationTask, MEMORY[0x277CC9E10]);
  result = sub_22FC232F8(&qword_28147CFB0, type metadata accessor for PublicEventCacheInvalidationTask, MEMORY[0x277D85380]);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PublicEventCacheInvalidationTask(uint64_t a1)
{
  result = qword_28147CFB8;
  if (!qword_28147CFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC2295C(uint64_t a1)
{
  result = sub_22FCC8684();
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

unint64_t sub_22FC22A50(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23190A010](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23190A010](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22FC22ADC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22FCC67F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_version] = 0;
  v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_shouldRecordCompletion] = 1;
  v10 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_name];
  *v10 = 0xD000000000000020;
  v10[1] = 0x800000022FCDCF20;
  v11 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_identifier];
  sub_22FCC67E4();
  v12 = sub_22FCC67B4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *v11 = v12;
  v11[1] = v14;
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_periodicity] = 0x4122750000000000;
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_priority] = 4;
  v15 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_incrementalKey];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR___PHAPublicEventCacheInvalidationTask_logger;
  if (qword_28147CFD0 != -1)
  {
    swift_once();
  }

  v17 = sub_22FCC8684();
  v18 = __swift_project_value_buffer(v17, qword_28147CFD8);
  (*(*(v17 - 8) + 16))(&v2[v16], v18, v17);
  v19 = OBJC_IVAR___PHAPublicEventCacheInvalidationTask_dateFormatter;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v20 = &v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_worker];
  v20[3] = type metadata accessor for MomentGraphWorker();
  v20[4] = sub_22FC232F8(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *v20 = a1;
  v21 = *(a1 + 112);
  v22 = *(v21 + 112);

  v23 = [v22 publicEventManager];
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_publicEventManager] = v23;
  v24 = *(*(v21 + 120) + 120);
  *&v2[OBJC_IVAR___PHAPublicEventCacheInvalidationTask_analytics] = v24;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v25 = v24;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_22FC22DBC()
{
  v0 = sub_22FCC6DE4();
  v8[3] = v0;
  v8[4] = sub_22FC232F8(qword_28147B080, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A808], v0);
  v2 = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_28147CFD0 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147CFD8);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "PublicEventCacheInvalidationTask not enabled to run due to feature flag being disabled", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_22FC22F40(void *a1)
{
  v2 = sub_22FCC8CF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90B0, &qword_22FCDCFF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_22FCC6C94();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v29 - v18;
  v32 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  v21 = swift_dynamicCast();
  v22 = *(v12 + 56);
  if (v21)
  {
    v29 = v6;
    v30 = v3;
    v31 = v2;
    v22(v10, 0, 1, v11);
    (*(v12 + 32))(v19, v10, v11);
    v23 = *(v12 + 104);
    v23(v15, *MEMORY[0x277D54EA0], v11);
    v24 = MEMORY[0x2319060E0](v19, v15);
    v25 = *(v12 + 8);
    v25(v15, v11);
    if (v24)
    {
      v25(v19, v11);
      return 1;
    }

    v23(v15, *MEMORY[0x277D54EA8], v11);
    v28 = MEMORY[0x2319060E0](v19, v15);
    v25(v15, v11);
    v25(v19, v11);
    v3 = v30;
    v2 = v31;
    v6 = v29;
    if (v28)
    {
      return 2;
    }
  }

  else
  {
    v22(v10, 1, 1, v11);
    sub_22FA2B420(v10, &qword_27DAD90B0, &qword_22FCDCFF0);
  }

  v32 = a1;
  v27 = a1;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v3 + 8))(v6, v2);
    return 4;
  }

  return result;
}

uint64_t sub_22FC232F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FC23340(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x231908810](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject rankedItems];
      sub_22FA3A77C(0, &qword_27DAD90E8, 0x277D1F468);
      v7 = sub_22FCC8C44();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_22FCC92C4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC92C4();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_22FCC92C4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC93C4();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22FCC92C4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_22FC2527C();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90F0, &qword_22FCDD0B8);
              v18 = sub_22FA881E8(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22FCC92C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22FC236B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_28147CEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FCC8684();
  v3 = __swift_project_value_buffer(v2, qword_28147CEC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ECRPersonGroundingProcessorHelper.groundPerson(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_22FC23814;

  return sub_22FC23DDC(a1, a2, 0, 0, 0);
}

uint64_t sub_22FC23814(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FC23948, 0, 0);
  }
}

uint64_t sub_22FC23948()
{
  v14 = v0;
  if (*(v0[6] + 16))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {

    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_22FA2F600(v6, v5, &v13);
      _os_log_impl(&dword_22FA28000, v3, v4, "Retry fetching ECR results that only match with person relationship by removing possessive pronoun my and our from person name: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v9 = sub_22FCC7D34();
    v11 = v10;
    v0[7] = v10;
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_22FC23B34;

    return sub_22FC23DDC(v9, v11, 0, 1, 0);
  }
}

uint64_t sub_22FC23B34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FC23C8C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FC23C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC23CF0()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  sub_22FCC6E94();
  result = sub_22FCC91C4();
  qword_28147CEF0 = result;
  return result;
}

uint64_t sub_22FC23D50()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147CEC8);
  __swift_project_value_buffer(v0, qword_28147CEC8);
  if (qword_28147CEE8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147CEF0;
  return sub_22FCC8694();
}

uint64_t sub_22FC23DDC(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 40) = a2;
  *(v6 + 48) = v5;
  *(v6 + 138) = a5;
  *(v6 + 137) = a4;
  *(v6 + 136) = a3;
  *(v6 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C8, &qword_22FCDD0B0);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_22FCC7C14();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC23EE4, 0, 0);
}

uint64_t sub_22FC23EE4()
{
  *(v0 + 16) = *(v0 + 32);
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  *(v0 + 24) = v2;

  if ((v1 & 1) == 0)
  {
    MEMORY[0x231907FA0](32, 0xE100000000000000);
    v2 = *(v0 + 24);
  }

  *(v0 + 88) = v2;
  if (*(v0 + 138))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D1F418]);
  v5 = sub_22FCC8A54();
  v6 = sub_22FCC8C24();
  v7 = [v4 initWithText:v5 entityClassFilter:v6 spans:0 mode:v3 constraint:0 includeInferredNames:1];
  *(v0 + 96) = v7;

  v8 = objc_allocWithZone(sub_22FCC83D4());
  *(v0 + 104) = sub_22FCC83C4();
  v11 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22FC240E0;

  return v11(v7);
}

uint64_t sub_22FC240E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {

    v4 = sub_22FC248A4;
  }

  else
  {
    v4 = sub_22FC241FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FC241FC()
{
  v65 = v0;
  v1 = *(v0 + 120);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F04();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64[0] = v6;
    *v5 = 136380675;
    v7 = v4;
    v8 = [v7 description];
    v9 = sub_22FCC8A84();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, v64);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetched ECR result: %{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v13 = *(v0 + 128);
  v58 = v0;
  v14 = *(v0 + 137);
  v15 = [*(v0 + 120) rankedResults];
  sub_22FA3A77C(0, &qword_27DAD90D0, 0x277D1F470);
  v16 = sub_22FCC8C44();

  v17 = sub_22FC23340(v16);

  if (v14 == 1)
  {
    v64[0] = MEMORY[0x277D84F90];
    if (v17 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
    {
      v62 = v13;
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x231908810](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ([v20 isRelationshipMatch])
        {
          sub_22FCC93F4();
          sub_22FCC9424();
          sub_22FCC9434();
          sub_22FCC9404();
        }

        else
        {
        }

        ++v19;
        if (v13 == i)
        {
          v13 = v62;
          v22 = v64[0];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_22:
  }

  else
  {
    v22 = v17;
  }

  v23 = *(v58 + 48);
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  v25 = sub_22FC4C7CC(sub_22FC251F8, v24, v22);

  if (v13)
  {
    v26 = *(v58 + 120);
    v28 = *(v58 + 96);
    v27 = *(v58 + 104);

    v29 = *(v58 + 8);

    return v29();
  }

  else
  {

    v31 = sub_22FCC8664();
    v32 = sub_22FCC8EF4();

    v63 = v25;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64[0] = v34;
      *v33 = 136642819;
      v35 = sub_22FA3A77C(0, &qword_27DAD90D8, 0x277D1F4B0);
      v36 = MEMORY[0x2319080B0](v25, v35);
      v38 = sub_22FA2F600(v36, v37, v64);

      *(v33 + 4) = v38;
      v25 = v63;
      _os_log_impl(&dword_22FA28000, v31, v32, "Grounded person to %{sensitive}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23190A000](v34, -1, -1);
      MEMORY[0x23190A000](v33, -1, -1);
    }

    if (v25 >> 62)
    {
      goto LABEL_47;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_22FCC92C4())
    {
      v40 = 0;
      v41 = *(v58 + 72);
      v60 = v25 & 0xFFFFFFFFFFFFFF8;
      v61 = v25 & 0xC000000000000001;
      v42 = (v41 + 48);
      v59 = v41;
      v43 = (v41 + 32);
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v61)
        {
          v45 = MEMORY[0x231908810](v40, v25);
        }

        else
        {
          if (v40 >= *(v60 + 16))
          {
            goto LABEL_46;
          }

          v45 = *(v25 + 8 * v40 + 32);
        }

        v46 = v45;
        v47 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v49 = *(v58 + 56);
        v48 = *(v58 + 64);
        sub_22FC249FC(v45, v49);

        if ((*v42)(v49, 1, v48) == 1)
        {
          sub_22FC25214(*(v58 + 56));
        }

        else
        {
          v50 = *v43;
          (*v43)(*(v58 + 80), *(v58 + 56), *(v58 + 64));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_22FAC2C5C(0, *(v44 + 2) + 1, 1, v44);
          }

          v52 = *(v44 + 2);
          v51 = *(v44 + 3);
          if (v52 >= v51 >> 1)
          {
            v44 = sub_22FAC2C5C((v51 > 1), v52 + 1, 1, v44);
          }

          v53 = *(v58 + 80);
          v54 = *(v58 + 64);
          *(v44 + 2) = v52 + 1;
          v50(&v44[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v52], v53, v54);
        }

        v25 = v63;
        ++v40;
        if (v47 == j)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    v44 = MEMORY[0x277D84F90];
LABEL_49:
    v55 = *(v58 + 120);
    v56 = *(v58 + 104);

    v57 = *(v58 + 8);

    return v57(v44);
  }
}

uint64_t sub_22FC248A4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FC24920(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_22FCC83B4();
  v5 = sub_22FCC83A4();
  v6 = sub_22FCC8394();

  if (!v2)
  {
    v7 = [v4 entityID];
    v8 = [v7 stringValue];
    if (v8)
    {
      v9 = v8;

      v10 = [v6 personForIdentifier_];
      swift_unknownObjectRelease();
      *a2 = v10;
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_22FC249FC@<D0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = [a1 visualIdentifierObjects];
  sub_22FA3A77C(0, &qword_27DAD90E0, 0x277D1F4A8);
  v4 = sub_22FCC8C44();

  if (v4 >> 62)
  {
LABEL_26:
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_22FCC92C4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_27:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v36 = v4 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = 0;
  v35 = MEMORY[0x277D84F90];
  v33 = a2;
  do
  {
    a2 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231908810](a2, v4);
      }

      else
      {
        if (a2 >= *(v36 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v4 + 8 * a2 + 32);
      }

      v8 = v7;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = [v7 visualIdentifier];
      v10 = sub_22FCC8A84();
      v12 = v11;

      v37[0] = v10;
      v37[1] = v12;
      v37[5] = 47;
      v37[6] = 0xE100000000000000;
      sub_22FA7FD88();
      v13 = sub_22FCC9204();

      if (v13[2])
      {
        break;
      }

LABEL_6:
      ++a2;
      if (v6 == v5)
      {
        a2 = v33;
        goto LABEL_28;
      }
    }

    v14 = v13[4];
    v15 = v13[5];

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

      goto LABEL_6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_22FAC1D0C(0, *(v35 + 2) + 1, 1, v35);
    }

    v18 = *(v35 + 2);
    v17 = *(v35 + 3);
    if (v18 >= v17 >> 1)
    {
      v35 = sub_22FAC1D0C((v17 > 1), v18 + 1, 1, v35);
    }

    *(v35 + 2) = v18 + 1;
    v19 = &v35[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v15;
    a2 = v33;
  }

  while (v6 != v5);
LABEL_28:

  v20 = sub_22FAA99B0(v35);

  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = sub_22FA86B08(*(v20 + 16), 0);
  v23 = sub_22FA88270(v37, v22 + 4, v21, v20);
  sub_22FA72BC8(v37[0]);
  if (v23 != v21)
  {
    __break(1u);
LABEL_31:

    v22 = MEMORY[0x277D84F90];
  }

  v24 = [a1 contactIdentifiers];
  v25 = sub_22FCC8C44();

  v26 = [a1 names];
  v27 = sub_22FCC8C44();

  v28 = [a1 phoneNumbers];
  sub_22FCC8C44();

  v29 = [a1 emails];
  sub_22FCC8C44();

  if (*(v27 + 16) || *(v25 + 16) || v22[2])
  {
    sub_22FCC7C04();
    v30 = sub_22FCC7C14();
    (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  else
  {
    v32 = sub_22FCC7C14();
    (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }

  return result;
}

uint64_t ECRPersonGroundingProcessor.groundPerson(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA52F04;

  return ECRPersonGroundingProcessorHelper.groundPerson(_:)(a1, a2);
}

uint64_t sub_22FC24F40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FAA31A4;

  return ECRPersonGroundingProcessorHelper.groundPerson(_:)(a1, a2);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22FC25188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FC25214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD90C8, &qword_22FCDD0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FC2527C()
{
  result = qword_27DAD90F8;
  if (!qword_27DAD90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD90F0, &qword_22FCDD0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD90F8);
  }

  return result;
}

uint64_t sub_22FC252E4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22FCC69A4();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_22FCC85D4();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = sub_22FCC8604();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = sub_22FCC8684();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC254D4, 0, 0);
}

uint64_t sub_22FC254D4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  sub_22FCC8674();
  (*(v4 + 16))(v2, v1, v3);
  sub_22FCC85E4();
  sub_22FCC85C4();
  v5 = sub_22FCC85F4();
  v6 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v5, v6, v8, "GraphSearchEntityRankingDonationTask.execute", "", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  v14 = v0[19];
  v13 = v0[20];

  (*(v12 + 16))(v9, v10, v11);
  sub_22FCC8644();
  swift_allocObject();
  v0[36] = sub_22FCC8634();
  (*(v12 + 8))(v10, v11);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v15;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_34;
  v16 = _Block_copy(v0 + 2);
  v17 = objc_opt_self();

  v0[37] = [v17 progressReporterWithProgressBlock_];
  _Block_release(v16);

  v18 = sub_22FCC9014();
  v0[38] = v18;
  v0[39] = v19;
  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22FA28000, v20, v21, "GraphSearchEntityRankingDonationTask.execute - Will rank graph search entities", v22, 2u);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v23 = v0[35];
  v24 = v0[21];

  v0[18] = MEMORY[0x277D84F90];
  v25 = *(v24 + 168);
  v0[40] = v25;
  v26 = swift_task_alloc();
  v0[41] = v26;
  v26[2] = v0 + 18;
  v26[3] = v18;
  v26[4] = v23;

  return MEMORY[0x2822009F8](sub_22FC2584C, v25, 0);
}

uint64_t sub_22FC2584C()
{
  v1 = [*(*(v0 + 320) + 112) workingContext];
  sub_22FCC9124();

  return MEMORY[0x2822009F8](sub_22FC25900, 0, 0);
}

uint64_t sub_22FC25900(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "GraphSearchEntityRankingDonationTask.execute - will persist ranked graph search entities", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v7 = *(v1 + 320);

    v8 = *(*(v7 + 120) + 112);
    sub_22FCC6984();

    sub_22FCC6994();

    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v2 + 16);
      _os_log_impl(&dword_22FA28000, v9, v10, "GraphSearchEntityRankingDonationTask.execute - completed with %ld ranked entities", v12, 0xCu);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    v13 = *(v1 + 168);

    sub_22FA2E6E4(v13 + 128, v1 + 104);
    v15 = *(v1 + 304);
    v14 = *(v1 + 312);
    v16 = *(v1 + 296);
    v17 = *(v1 + 184);
    if (*(v1 + 128))
    {
      v35 = *(v1 + 304);
      v36 = *(v1 + 176);
      v18 = *(v1 + 168);
      v37 = *(v1 + 192);
      sub_22FA2D89C((v1 + 104), v1 + 64);
      v19 = *(v1 + 88);
      v20 = *(v1 + 96);
      __swift_project_boxed_opaque_existential_1((v1 + 64), v19);
      (*(v20 + 16))(v3, *(v18 + 32), *(v18 + 40), v19, v20);

      (*(v17 + 8))(v37, v36);
      __swift_destroy_boxed_opaque_existential_0((v1 + 64));
    }

    else
    {
      (*(v17 + 8))(*(v1 + 192), *(v1 + 176));

      sub_22FA518B4(v1 + 104);
    }
  }

  else
  {
    sub_22FCC9004();
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F34();
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22FA28000, v21, v22, "GraphSearchEntityRankingDonationTask.execute - completed with no ranked entities to persist", v24, 2u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v1 + 312);
    v26 = *(v1 + 296);
  }

  v27 = *(v1 + 280);
  v28 = *(v1 + 264);
  v30 = *(v1 + 248);
  v29 = *(v1 + 256);
  v31 = *(v1 + 232);
  v32 = *(v1 + 240);
  sub_22FC25DC8(v30, *(v1 + 288), *(v1 + 168));

  (*(v32 + 8))(v30, v31);
  (*(v28 + 8))(v27, v29);

  v33 = *(v1 + 8);

  return v33();
}

uint64_t sub_22FC25DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FCC8614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22FCC85D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v14 = sub_22FCC85F4();
  sub_22FCC8624();
  v23 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {

    sub_22FCC8654();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v15 = 0;
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v17 = "%{public}s";
      v16 = 2;
      v15 = 1;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = v16;
    *(v18 + 1) = v15;
    *(v18 + 2) = 2082;
    *(v18 + 4) = sub_22FA2F600(*(a3 + 48), *(a3 + 56), &v24);
    v20 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v14, v23, v20, "GraphSearchEntityRankingDonationTask.execute", v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23190A000](v19, -1, -1);
    MEMORY[0x23190A000](v18, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

double sub_22FC26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a2;
  v17[1] = a4;
  v4 = sub_22FCC6794();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC69D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC69F4();
  swift_allocObject();
  sub_22FCC69E4();
  sub_22FCC69C4();
  v14 = [objc_opt_self() currentLocalDate];
  sub_22FCC6754();

  v15 = sub_22FCC69B4();

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  *v17[0] = v15;

  return result;
}

uint64_t sub_22FC263D8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  sub_22FA518B4(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22FC2646C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE30, off_2788AF348);
  return v0;
}

uint64_t sub_22FC264D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FC252E4(a2, a3);
}

void sub_22FC26580(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FC26684(uint64_t a1)
{
  *(a1 + 8) = sub_22FC266EC(qword_28147C790, &unk_22FCDD160);
  result = sub_22FC266EC(&qword_27DAD9100, &unk_22FCDD138);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FC266EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GraphSearchEntityRankingDonationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FC26740()
{
  sub_22FA812F8();
  result = sub_22FCC91C4();
  qword_28147B780 = result;
  return result;
}

uint64_t sub_22FC267A8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147B6A8);
  __swift_project_value_buffer(v0, qword_28147B6A8);
  if (qword_28147B778 != -1)
  {
    swift_once();
  }

  v1 = qword_28147B780;
  return sub_22FCC8694();
}

uint64_t sub_22FC26834()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = OBJC_IVAR____TtC13PhotoAnalysis26StoryDiagnosticCleanUpTask_oldestAllowedDate;
  v2 = sub_22FCC6794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoryDiagnosticCleanUpTask(uint64_t a1)
{
  result = qword_28147DD68;
  if (!qword_28147DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC26954(uint64_t a1)
{
  result = sub_22FCC6794();
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

uint64_t sub_22FC26A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FC26BE0();
}

uint64_t sub_22FC26AD0(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FC26B34(uint64_t a1)
{
  *(a1 + 8) = sub_22FC26B9C(&qword_28147DD80, &unk_22FCDD2A8);
  result = sub_22FC26B9C(&qword_28147DD88, &unk_22FCDD280);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FC26B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoryDiagnosticCleanUpTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FC26C00()
{
  sub_22FCC7F84();
  sub_22FCC7F64();
  sub_22FCC7F74();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC26D70(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_22FA37D64(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22FC26E50(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_22FB050C4(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22FC26F30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22FB04E04(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22FC27034(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
      result = 0x502E736F746F6850;
      break;
    case 2:
      result = 0x4D2E736F746F6850;
      break;
    case 3:
    case 7:
    case 9:
      result = 0x532E736F746F6850;
      break;
    case 4:
      result = 0x452E736F746F6850;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x462E736F746F6850;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000023;
      break;
    default:
      result = sub_22FCC9744();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_22FC27298@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FC2CF58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22FC272DC()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_27DAE29E0 = result;
  return result;
}

uint64_t sub_22FC27358()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAE29E8);
  __swift_project_value_buffer(v0, qword_27DAE29E8);
  if (qword_27DAD6F38 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAE29E0;
  return sub_22FCC8694();
}

id sub_22FC274F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8 = a3(a1, a2);
  sub_22FC26D70(v8, a4, a5);
  v9 = sub_22FCC8C24();

  return v9;
}

uint64_t sub_22FC27744(uint64_t (*a1)(void), uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = a2(*(v5 + 16), 0);
  v9 = a3(&v11, v8 + 32, v7, v6);
  sub_22FA37D64(v11);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

id sub_22FC27838(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v51 - v5;
  v7 = *(type metadata accessor for UserAnalyticsOutputSample(0) + 240);
  v8 = type metadata accessor for UserAnalyticsInputSample(0);
  v9 = *(v8 + 20);
  v10 = sub_22FCC6794();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1 + v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = sub_22FC2FEA4(v1 + v7, v6);
  sub_22FA2B420(v6, &qword_27DAD8730, &qword_22FCD1B20);
  v13 = 0;
  v14 = *(v1 + 8);
  v63 = *v1;
  v66 = v14;
  v15 = (a1 + *(v8 + 32));
  v17 = *v15;
  v16 = v15[1];
  v65 = v17;
  v62 = v16;
  if (*(v1 + 32) != 2)
  {
    v13 = sub_22FCC8CB4();
  }

  v18 = *(v1 + 40);
  v70 = v13;
  if (v18)
  {
    v69 = 0;
  }

  else
  {
    v69 = sub_22FCC9824();
  }

  if (*(v1 + 41) == 2)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_22FCC8CB4();
  }

  if (*(v1 + 42) == 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_22FCC8CB4();
  }

  if (*(v1 + 43) == 2)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_22FCC8CB4();
  }

  if (*(v1 + 44) == 2)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_22FCC8CB4();
  }

  if (*(v1 + 45) == 2)
  {
    v64 = 0;
  }

  else
  {
    v64 = sub_22FCC8CB4();
  }

  if (*(v1 + 46) == 2)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_22FCC8CB4();
  }

  if (*(v1 + 47) == 2)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_22FCC8CB4();
  }

  if (*(v1 + 48) == 2)
  {
    v103 = 0;
  }

  else
  {
    v103 = sub_22FCC8CB4();
  }

  if (*(v1 + 49) == 2)
  {
    v102 = 0;
  }

  else
  {
    v102 = sub_22FCC8CB4();
  }

  if (*(v1 + 50) == 2)
  {
    v101 = 0;
  }

  else
  {
    v101 = sub_22FCC8CB4();
  }

  if (*(v1 + 51) == 2)
  {
    v100 = 0;
  }

  else
  {
    v100 = sub_22FCC8CB4();
  }

  if (*(v1 + 52) == 2)
  {
    v99 = 0;
  }

  else
  {
    v99 = sub_22FCC8CB4();
  }

  if (*(v1 + 53) == 2)
  {
    v98 = 0;
    if ((*(v1 + 64) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v98 = sub_22FCC8CB4();
    if ((*(v1 + 64) & 1) == 0)
    {
LABEL_44:
      v97 = sub_22FCC9824();
      if ((*(v1 + 72) & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      v96 = 0;
      if ((*(v1 + 80) & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }
  }

  v97 = 0;
  if (*(v1 + 72))
  {
    goto LABEL_49;
  }

LABEL_45:
  v96 = sub_22FCC9824();
  if ((*(v1 + 80) & 1) == 0)
  {
LABEL_46:
    v95 = sub_22FCC9824();
    goto LABEL_51;
  }

LABEL_50:
  v95 = 0;
LABEL_51:
  if (*(v1 + 81) == 2)
  {
    v94 = 0;
  }

  else
  {
    v94 = sub_22FCC8CB4();
  }

  if (*(v1 + 82) == 2)
  {
    v93 = 0;
  }

  else
  {
    v93 = sub_22FCC8CB4();
  }

  if (*(v1 + 83) == 2)
  {
    v91 = 0;
  }

  else
  {
    v91 = sub_22FCC8CB4();
  }

  if (*(v1 + 84) == 2)
  {
    v90 = 0;
  }

  else
  {
    v90 = sub_22FCC8CB4();
  }

  if (*(v1 + 85) == 2)
  {
    v89 = 0;
  }

  else
  {
    v89 = sub_22FCC8CB4();
  }

  if (*(v1 + 86) == 2)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_22FCC8CB4();
  }

  if (*(v1 + 87) == 2)
  {
    v87 = 0;
  }

  else
  {
    v87 = sub_22FCC8CB4();
  }

  if (*(v1 + 88) == 2)
  {
    v86 = 0;
  }

  else
  {
    v86 = sub_22FCC8CB4();
  }

  if (*(v1 + 89) == 2)
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_22FCC8CB4();
  }

  if (*(v1 + 90) == 2)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_22FCC8CB4();
  }

  if (*(v1 + 91) == 2)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_22FCC8CB4();
  }

  if (*(v1 + 92) == 2)
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_22FCC8CB4();
  }

  if (*(v1 + 93) == 2)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_22FCC8CB4();
  }

  if (*(v1 + 94) == 2)
  {
    v80 = 0;
  }

  else
  {
    v80 = sub_22FCC8CB4();
  }

  if (*(v1 + 95) == 2)
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_22FCC8CB4();
  }

  if (*(v1 + 96) == 2)
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_22FCC8CB4();
  }

  if (*(v1 + 97) == 2)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_22FCC8CB4();
  }

  if (*(v1 + 99) == 2)
  {
    v72 = 0;
    v76 = 0;
  }

  else
  {
    v76 = sub_22FCC8CB4();
    v72 = sub_22FCC8CB4();
  }

  if (*(v1 + 100) == 2)
  {
    v75 = 0;
  }

  else
  {
    v75 = sub_22FCC8CB4();
  }

  if (*(v1 + 101) == 2)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_22FCC8CB4();
  }

  if (*(v1 + 102) == 2)
  {
    v73 = 0;
  }

  else
  {
    v73 = sub_22FCC8CB4();
  }

  if (*(v1 + 103) == 2)
  {
    v71 = 0;
  }

  else
  {
    v71 = sub_22FCC8CB4();
  }

  if (*(v1 + 104) == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22FCC8CB4();
  }

  if (*(v1 + 105) == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_22FCC8CB4();
  }

  if (*(v1 + 106) == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_22FCC8CB4();
  }

  if (*(v1 + 107) == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_22FCC8CB4();
  }

  if (*(v1 + 108) == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_22FCC8CB4();
  }

  if (*(v1 + 109) == 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_22FCC8CB4();
  }

  if (*(v1 + 110) != 2)
  {
    v25 = sub_22FCC8CB4();
    if ((*(v1 + 116) & 1) == 0)
    {
      goto LABEL_137;
    }

LABEL_139:
    v26 = 0;
    goto LABEL_140;
  }

  v25 = 0;
  if (*(v1 + 116))
  {
    goto LABEL_139;
  }

LABEL_137:
  v26 = sub_22FCC8E54();
LABEL_140:
  v51 = v26;
  v27 = objc_allocWithZone(MEMORY[0x277CF1410]);
  v63 = sub_22FCC8A54();
  v28 = sub_22FCC8A54();
  v50 = v26;
  LODWORD(v49) = 0;
  v58 = v25;
  v48 = v25;
  v57 = v24;
  v47 = v24;
  v56 = v23;
  v46 = v23;
  v55 = v22;
  v45 = v22;
  v54 = v21;
  v44 = v21;
  v53 = v20;
  v43 = v20;
  v52 = v19;
  v42 = v19;
  v41 = v12;
  v29 = v60;
  v30 = v61;
  v31 = v64;
  v32 = v59;
  v33 = v27;
  v34 = v63;
  v35 = v28;
  v36 = v70;
  v37 = v69;
  v38 = v68;
  v39 = v67;
  v66 = [v33 initWithIdentifier:v63 userEvent:v28 containsVIP:v70 faceCount:v69 containsPets:v68 capturedAtHome:v67 capturedAtWork:v59 capturedAtFrequentLocation:v92 capturedOnTrip:v64 capturedOnShortTrip:v61 isDocument:v60 isMeme:v103 isScreenshot:v102 isFavorite:v101 isCapturedOnWeekend:v100 isCapturedAtPrivateEvent:v99 isCapturedOnHoliday:v98 mediaType:0 importSource:v41 assetAge:v97 userLibrarySize:v96 userNumTrips:v95 userNumVIPPeople:v94 userNumFavorites:v93 userHasVIP:v91 userHasHome:v90 userHasPet:v89 containsBaby:v88 containsSocialGroup:v87 containsMyPet:v86 containsCoWorker:v85 containsFamily:v84 containsFriends:v83 containsPartner:v82 containsParent:v81 containsSibling:v80 containsChild:v79 isCoupon:v78 isRecipe:v77 isReceipt:v76 isRecentView:v72 isRecentEdit:v75 isRecentShare:v74 isRecentFavorite:v73 isContainedInSharedAlbum:v71 isContainedInOnThisDay:v42 capturedAtAOI:v43 capturedAtPOI:v44 capturedAtROI:v45 capturedAtBusiness:v46 isCapturedAtPublicEvent:v47 isContainedInVisualTrend:v48 isContainedInActivity:v49 isContainedInChildActivity:v50 userLibraryAgeInDays:? userisDAU:?];

  return v66;
}

id sub_22FC284A0()
{
  v1 = *(v0 + 24);
  v24 = *(v0 + 32);
  v27 = *(v0 + 49);
  v28 = *(v0 + 48);
  v26 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  LODWORD(v17) = *(v0 + 108);
  HIDWORD(v17) = *(v0 + 116);
  v5 = *(v0 + 120);
  v6 = *(v0 + 160);
  v21 = *(v0 + 176);
  v22 = *(v0 + 192);
  if (*(v0 + 72))
  {

    v25 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v25 = sub_22FCC8ED4();
    if ((v2 & 1) == 0)
    {
LABEL_3:
      v23 = sub_22FCC8ED4();
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v23 = 0;
  if ((v3 & 1) == 0)
  {
LABEL_4:
    v7 = sub_22FCC8ED4();
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v8 = sub_22FCC9824();
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = sub_22FCC9824();
  if ((v6 & 1) == 0)
  {
LABEL_7:
    v10 = sub_22FCC8ED4();
    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
LABEL_14:
  v20 = sub_22FCC8A54();
  if (v1)
  {
    v19 = sub_22FCC8A54();
  }

  else
  {
    v19 = 0;
  }

  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v18 = sub_22FCC8C24();

  if (v21)
  {
    v11 = sub_22FCC8A54();
    if (v22)
    {
LABEL_19:
      v12 = sub_22FCC8A54();
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v12 = 0;
LABEL_22:
  if (v24)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v24 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CF1408]) initWithIdentifier:v20 styleChoice:v19 styleSelectionType:v14 sliderValues:v18 userLibrarySize:v28 userLibraryAgeInDays:v27 brightnessValue:v26 stillImageProcessingFlags:v25 camera:v23 stillImageCaptureType:v7 faceCount:v8 petCount:v9 version:v10 sceneForAsset:v11 subjectForAsset:{v12, v17}];

  return v15;
}

uint64_t sub_22FC2875C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22FCC6794();
  v303 = *(v6 - 8);
  v304 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v301 = &v295 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v299 = &v295 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v300 = &v295 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v297 = &v295 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v298 = &v295 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v296 = &v295 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v295 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v295 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v295 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v295 - v38;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v295 - v42;
  *&v46 = MEMORY[0x28223BE20](v44, v45).n128_u64[0];
  v305 = &v295 - v47;
  result = [a1 respondsToSelector_];
  if (result)
  {
    v302 = [a1 eventBody];
    if ([a1 respondsToSelector_])
    {
      [a1 timestamp];
      v49 = v305;
      sub_22FCC6694();
      v310 = 0;
      memset(v309, 0, sizeof(v309));
      v50 = v304;
      v51 = v303;
      switch(a2)
      {
        case 0:
        case 16:
          (*(v303 + 8))(v49, v304);
          result = swift_unknownObjectRelease();
          goto LABEL_139;
        case 1:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (!v91)
          {
            goto LABEL_66;
          }

          v92 = v91;
          v93 = [v91 identifier];
          if (v93)
          {
            v94 = v93;
            v95 = sub_22FCC8A84();
            v97 = v96;
          }

          else
          {
            v95 = 1280070990;
            v97 = 0xE400000000000000;
          }

          (*(v51 + 16))(v43, v49, v50);
          v208 = [v92 subset];
          if (v208)
          {
            v209 = v208;
            v210 = sub_22FCC8A84();
            v212 = v211;
          }

          else
          {
            v210 = 0;
            v212 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v213 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v213;
          v308 = &off_2844AA178;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *boxed_opaque_existential_1 = v95;
          boxed_opaque_existential_1[1] = v97;
          result = (*(v51 + 32))(boxed_opaque_existential_1 + v213[5], v43, v50);
          v215 = (boxed_opaque_existential_1 + v213[6]);
          *v215 = v210;
          v215[1] = v212;
          v216 = boxed_opaque_existential_1 + v213[7];
          *v216 = 0;
          v216[4] = 1;
          v176 = (boxed_opaque_existential_1 + v213[8]);
          v177 = 0x72656B636950;
          goto LABEL_97;
        case 2:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v105 = swift_dynamicCastObjCClass();
          if (!v105)
          {
            goto LABEL_66;
          }

          v106 = v105;
          v107 = [v105 identifier];
          if (v107)
          {
            v108 = v107;
            v109 = sub_22FCC8A84();
            v111 = v110;
          }

          else
          {
            v109 = 1280070990;
            v111 = 0xE400000000000000;
          }

          (*(v51 + 16))(v35, v49, v50);
          v227 = [v106 subset];
          if (v227)
          {
            v228 = v227;
            v229 = sub_22FCC8A84();
            v231 = v230;
          }

          else
          {
            v229 = 0;
            v231 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v232 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v232;
          v308 = &off_2844AA178;
          v233 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v233 = v109;
          v233[1] = v111;
          result = (*(v51 + 32))(v233 + v232[5], v35, v50);
          v234 = (v233 + v232[6]);
          *v234 = v229;
          v234[1] = v231;
          v235 = v233 + v232[7];
          *v235 = 0;
          v235[4] = 1;
          v176 = (v233 + v232[8]);
          v177 = 1936744781;
          v178 = 0xE400000000000000;
          goto LABEL_137;
        case 3:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v72 = swift_dynamicCastObjCClass();
          if (!v72)
          {
            goto LABEL_66;
          }

          v73 = v72;
          v74 = [v72 identifier];
          if (v74)
          {
            v75 = v74;
            v76 = sub_22FCC8A84();
            v78 = v77;
          }

          else
          {
            v76 = 1280070990;
            v78 = 0xE400000000000000;
          }

          (*(v51 + 16))(v39, v49, v50);
          v188 = [v73 subset];
          if (v188)
          {
            v189 = v188;
            v190 = sub_22FCC8A84();
            v192 = v191;
          }

          else
          {
            v190 = 0;
            v192 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v193 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v193;
          v308 = &off_2844AA178;
          v194 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v194 = v76;
          v194[1] = v78;
          result = (*(v51 + 32))(v194 + v193[5], v39, v50);
          v195 = (v194 + v193[6]);
          *v195 = v190;
          v195[1] = v192;
          v196 = v194 + v193[7];
          *v196 = 0;
          v196[4] = 1;
          v176 = (v194 + v193[8]);
          v177 = 0x686372616553;
LABEL_97:
          v178 = 0xE600000000000000;
          goto LABEL_137;
        case 4:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v119 = swift_dynamicCastObjCClass();
          if (!v119)
          {
            goto LABEL_66;
          }

          v120 = v119;
          v121 = [v119 identifier];
          if (v121)
          {
            v122 = v121;
            v123 = sub_22FCC8A84();
            v125 = v124;
          }

          else
          {
            v123 = 1280070990;
            v125 = 0xE400000000000000;
          }

          (*(v51 + 16))(v31, v49, v50);
          v246 = [v120 subset];
          if (v246)
          {
            v247 = v246;
            v248 = sub_22FCC8A84();
            v250 = v249;

            v49 = v305;
          }

          else
          {
            v248 = 0;
            v250 = 0;
          }

          v251 = [v120 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v252 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v252;
          v308 = &off_2844AA178;
          v253 = __swift_allocate_boxed_opaque_existential_1(&v306);
          v254 = v50;
          v255 = v253;
          *v253 = v123;
          v253[1] = v125;
          result = (*(v51 + 32))(v253 + v252[5], v31, v254);
          v256 = (v255 + v252[6]);
          *v256 = v248;
          v256[1] = v250;
          v257 = v255 + v252[7];
          *v257 = v251;
          v257[4] = 0;
          v176 = (v255 + v252[8]);
          v177 = 0x6445736F746F6850;
          v178 = 0xEA00000000007469;
          goto LABEL_137;
        case 5:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v132 = swift_dynamicCastObjCClass();
          if (!v132)
          {
            goto LABEL_66;
          }

          v133 = v132;
          v134 = [v132 identifier];
          if (v134)
          {
            v135 = v134;
            v301 = sub_22FCC8A84();
            v137 = v136;
          }

          else
          {
            v301 = 1280070990;
            v137 = 0xE400000000000000;
          }

          (*(v51 + 16))(v27, v49, v50);
          v262 = [v133 subset];
          if (v262)
          {
            v263 = v262;
            v264 = sub_22FCC8A84();
            v266 = v265;

            v49 = v305;
          }

          else
          {
            v264 = 0;
            v266 = 0;
          }

          v267 = [v133 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          v268 = v303;
          (*(v303 + 8))(v49, v50);
          v269 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v269;
          v308 = &off_2844AA178;
          v270 = __swift_allocate_boxed_opaque_existential_1(&v306);
          v271 = v50;
          v272 = v270;
          *v270 = v301;
          v270[1] = v137;
          result = (*(v268 + 32))(v270 + v269[5], v27, v271);
          v273 = (v272 + v269[6]);
          *v273 = v264;
          v273[1] = v266;
          v274 = v272 + v269[7];
          *v274 = v267;
          v274[4] = 0;
          v275 = (v272 + v269[8]);
          *v275 = 0xD000000000000010;
          v275[1] = 0x800000022FCE83F0;
          goto LABEL_138;
        case 6:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v112 = swift_dynamicCastObjCClass();
          if (!v112)
          {
            goto LABEL_66;
          }

          v113 = v112;
          v114 = [v112 identifier];
          if (v114)
          {
            v115 = v114;
            v116 = sub_22FCC8A84();
            v118 = v117;
          }

          else
          {
            v116 = 1280070990;
            v118 = 0xE400000000000000;
          }

          (*(v51 + 16))(v296, v49, v50);
          v236 = [v113 subset];
          if (v236)
          {
            v237 = v236;
            v238 = sub_22FCC8A84();
            v240 = v239;
          }

          else
          {
            v238 = 0;
            v240 = 0;
          }

          v241 = [v113 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v242 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v242;
          v308 = &off_2844AA178;
          v243 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v243 = v116;
          v243[1] = v118;
          result = (*(v51 + 32))(v243 + v242[5], v296, v50);
          v244 = (v243 + v242[6]);
          *v244 = v238;
          v244[1] = v240;
          v245 = v243 + v242[7];
          *v245 = v241;
          v245[4] = 0;
          v176 = (v243 + v242[8]);
          v177 = 0x6146736F746F6850;
          v178 = 0xEE00657469726F76;
          goto LABEL_137;
        case 7:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v146 = swift_dynamicCastObjCClass();
          if (!v146)
          {
            goto LABEL_66;
          }

          v147 = v146;
          v148 = [v146 identifier];
          if (v148)
          {
            v149 = v148;
            v150 = sub_22FCC8A84();
            v152 = v151;
          }

          else
          {
            v150 = 1280070990;
            v152 = 0xE400000000000000;
          }

          (*(v51 + 16))(v298, v49, v50);
          v284 = [v147 subset];
          if (v284)
          {
            v285 = v284;
            v286 = sub_22FCC8A84();
            v288 = v287;
          }

          else
          {
            v286 = 0;
            v288 = 0;
          }

          v289 = [v147 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v290 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v290;
          v308 = &off_2844AA178;
          v291 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v291 = v150;
          v291[1] = v152;
          result = (*(v51 + 32))(v291 + v290[5], v298, v50);
          v292 = (v291 + v290[6]);
          *v292 = v286;
          v292[1] = v288;
          v293 = v291 + v290[7];
          *v293 = v289;
          v293[4] = 0;
          v176 = (v291 + v290[8]);
          v177 = 0x6853736F746F6850;
          v226 = 6648417;
          goto LABEL_136;
        case 8:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v85 = swift_dynamicCastObjCClass();
          if (!v85)
          {
            goto LABEL_66;
          }

          v86 = [v85 identifier];
          if (v86)
          {
            v87 = v86;
            v88 = sub_22FCC8A84();
            v90 = v89;
          }

          else
          {
            v88 = 1280070990;
            v90 = 0xE400000000000000;
          }

          v204 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v204;
          v308 = &off_2844AA178;
          v205 = __swift_allocate_boxed_opaque_existential_1(&v306);
          (*(v51 + 16))(v205 + v204[5], v49, v50);
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          result = (*(v51 + 8))(v49, v50);
          *v205 = v88;
          v205[1] = v90;
          v206 = (v205 + v204[6]);
          *v206 = 0;
          v206[1] = 0;
          v207 = v205 + v204[7];
          *v207 = 0;
          v207[4] = 1;
          v201 = (v205 + v204[8]);
          v202 = 0x6C616E4172657355;
          v203 = 0xED00007363697479;
          goto LABEL_120;
        case 9:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v138 = swift_dynamicCastObjCClass();
          if (!v138)
          {
            goto LABEL_66;
          }

          v139 = v138;
          v140 = 1280070990;
          v141 = [v138 identifier];
          if (v141)
          {
            v142 = v141;
            v143 = sub_22FCC8A84();
            v145 = v144;
          }

          else
          {
            v145 = 0xE400000000000000;
            v143 = 1280070990;
          }

          v276 = [v139 styleChoice];
          if (v276)
          {
            v277 = v276;
            v140 = sub_22FCC8A84();
            v279 = v278;
          }

          else
          {
            v279 = 0xE400000000000000;
          }

          v280 = [v139 styleSelectionType];
          v281 = [v139 sliderValues];
          sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
          v282 = sub_22FCC8C44();

          v283 = swift_allocObject();
          swift_unknownObjectRelease();
          *(v283 + 16) = v143;
          *(v283 + 24) = v145;
          *(v283 + 32) = v140;
          *(v283 + 40) = v279;
          *(v283 + 48) = v280;
          *(v283 + 56) = v282;
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          result = (*(v51 + 8))(v305, v304);
          *(v309 + 8) = v306;
          *&v309[0] = v283;
          *(&v309[1] + 1) = &type metadata for PhotoStyleInputSample;
          v310 = &off_2844A90F0;
          goto LABEL_139;
        case 10:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v65 = swift_dynamicCastObjCClass();
          if (!v65)
          {
            goto LABEL_66;
          }

          v66 = v65;
          v67 = [v65 identifier];
          if (v67)
          {
            v68 = v67;
            v69 = sub_22FCC8A84();
            v71 = v70;
          }

          else
          {
            v69 = 1280070990;
            v71 = 0xE400000000000000;
          }

          (*(v51 + 16))(v297, v49, v50);
          v179 = [v66 subset];
          if (v179)
          {
            v180 = v179;
            v181 = sub_22FCC8A84();
            v183 = v182;
          }

          else
          {
            v181 = 0;
            v183 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v184 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v184;
          v308 = &off_2844AA178;
          v185 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v185 = v69;
          v185[1] = v71;
          result = (*(v51 + 32))(v185 + v184[5], v297, v50);
          v186 = (v185 + v184[6]);
          *v186 = v181;
          v186[1] = v183;
          v187 = v185 + v184[7];
          *v187 = 0;
          v187[4] = 1;
          v176 = (v185 + v184[8]);
          v177 = 0x685379726F6D654DLL;
          v178 = 0xEC00000064657261;
          goto LABEL_137;
        case 11:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v79 = swift_dynamicCastObjCClass();
          if (!v79)
          {
            goto LABEL_66;
          }

          v80 = [v79 identifier];
          if (v80)
          {
            v81 = v80;
            v82 = sub_22FCC8A84();
            v84 = v83;
          }

          else
          {
            v82 = 1280070990;
            v84 = 0xE400000000000000;
          }

          v197 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v197;
          v308 = &off_2844AA178;
          v198 = __swift_allocate_boxed_opaque_existential_1(&v306);
          (*(v51 + 16))(v198 + v197[5], v49, v50);
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          result = (*(v51 + 8))(v49, v50);
          *v198 = v82;
          v198[1] = v84;
          v199 = (v198 + v197[6]);
          *v199 = 0;
          v199[1] = 0;
          v200 = v198 + v197[7];
          *v200 = 0;
          v200[4] = 1;
          v201 = (v198 + v197[8]);
          v202 = 0x695679726F6D654DLL;
          v203 = 0xEC00000064657765;
          goto LABEL_120;
        case 12:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v126 = swift_dynamicCastObjCClass();
          if (!v126)
          {
            goto LABEL_66;
          }

          v127 = [v126 identifier];
          if (v127)
          {
            v128 = v127;
            v129 = sub_22FCC8A84();
            v131 = v130;
          }

          else
          {
            v129 = 1280070990;
            v131 = 0xE400000000000000;
          }

          v258 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v258;
          v308 = &off_2844AA178;
          v259 = __swift_allocate_boxed_opaque_existential_1(&v306);
          (*(v51 + 16))(v259 + v258[5], v49, v50);
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          result = (*(v51 + 8))(v49, v50);
          *v259 = v129;
          v259[1] = v131;
          v260 = (v259 + v258[6]);
          *v260 = 0;
          v260[1] = 0;
          v261 = v259 + v258[7];
          *v261 = 0;
          v261[4] = 1;
          v201 = (v259 + v258[8]);
          v202 = 0x724379726F6D654DLL;
          v203 = 0xEE006E6F69746165;
LABEL_120:
          *v201 = v202;
          v201[1] = v203;
          v309[0] = v306;
          v309[1] = v307;
          v310 = v308;
          goto LABEL_139;
        case 13:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v58 = swift_dynamicCastObjCClass();
          if (!v58)
          {
            goto LABEL_66;
          }

          v59 = v58;
          v60 = [v58 identifier];
          if (v60)
          {
            v61 = v60;
            v62 = sub_22FCC8A84();
            v64 = v63;
          }

          else
          {
            v62 = 1280070990;
            v64 = 0xE400000000000000;
          }

          (*(v51 + 16))(v300, v49, v50);
          v166 = [v59 subset];
          if (v166)
          {
            v167 = v166;
            v168 = sub_22FCC8A84();
            v170 = v169;
          }

          else
          {
            v168 = 0;
            v170 = 0;
          }

          v171 = [v59 type];
          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v172 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v172;
          v308 = &off_2844AA178;
          v173 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v173 = v62;
          v173[1] = v64;
          result = (*(v51 + 32))(v173 + v172[5], v300, v50);
          v174 = (v173 + v172[6]);
          *v174 = v168;
          v174[1] = v170;
          v175 = v173 + v172[7];
          *v175 = v171;
          v175[4] = 0;
          v176 = (v173 + v172[8]);
          v177 = 0x754379726F6D654DLL;
          v178 = 0xEE006E6F69746172;
          goto LABEL_137;
        case 14:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v98 = swift_dynamicCastObjCClass();
          if (!v98)
          {
            goto LABEL_66;
          }

          v99 = v98;
          v100 = [v98 identifier];
          if (v100)
          {
            v101 = v100;
            v102 = sub_22FCC8A84();
            v104 = v103;
          }

          else
          {
            v102 = 1280070990;
            v104 = 0xE400000000000000;
          }

          (*(v51 + 16))(v299, v49, v50);
          v217 = [v99 subset];
          if (v217)
          {
            v218 = v217;
            v219 = sub_22FCC8A84();
            v221 = v220;
          }

          else
          {
            v219 = 0;
            v221 = 0;
          }

          swift_unknownObjectRelease();
          sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
          (*(v51 + 8))(v49, v50);
          v222 = type metadata accessor for UserAnalyticsInputSample(0);
          *(&v307 + 1) = v222;
          v308 = &off_2844AA178;
          v223 = __swift_allocate_boxed_opaque_existential_1(&v306);
          *v223 = v102;
          v223[1] = v104;
          result = (*(v51 + 32))(v223 + v222[5], v299, v50);
          v224 = (v223 + v222[6]);
          *v224 = v219;
          v224[1] = v221;
          v225 = v223 + v222[7];
          *v225 = 0;
          v225[4] = 1;
          v176 = (v223 + v222[8]);
          v177 = 0x616C506569766F4DLL;
          v226 = 6579577;
LABEL_136:
          v178 = v226 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_137:
          *v176 = v177;
          v176[1] = v178;
          goto LABEL_138;
        case 15:
          if (!v302)
          {
            goto LABEL_67;
          }

          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            v54 = [v52 identifier];
            if (v54)
            {
              v55 = v54;
              v300 = sub_22FCC8A84();
              v57 = v56;
            }

            else
            {
              v300 = 1280070990;
              v57 = 0xE400000000000000;
            }

            (*(v51 + 16))(v301, v49, v50);
            v153 = [v53 subset];
            if (v153)
            {
              v154 = v153;
              v155 = sub_22FCC8A84();
              v157 = v156;
            }

            else
            {
              v155 = 0;
              v157 = 0;
            }

            v158 = [v53 type];
            swift_unknownObjectRelease();
            sub_22FA2B420(v309, &qword_27DAD9140, &qword_22FCDD440);
            v159 = v304;
            (*(v51 + 8))(v49, v304);
            v160 = type metadata accessor for UserAnalyticsInputSample(0);
            *(&v307 + 1) = v160;
            v308 = &off_2844AA178;
            v161 = __swift_allocate_boxed_opaque_existential_1(&v306);
            v162 = v301;
            *v161 = v300;
            v161[1] = v57;
            result = (*(v51 + 32))(v161 + v160[5], v162, v159);
            v163 = (v161 + v160[6]);
            *v163 = v155;
            v163[1] = v157;
            v164 = v161 + v160[7];
            *v164 = v158;
            v164[4] = 0;
            v165 = (v161 + v160[8]);
            *v165 = 0xD000000000000012;
            v165[1] = 0x800000022FCE83D0;
LABEL_138:
            v310 = v308;
            v309[0] = v306;
            v309[1] = v307;
          }

          else
          {
LABEL_66:
            swift_unknownObjectRelease();
LABEL_67:
            result = (*(v51 + 8))(v49, v50);
          }

LABEL_139:
          v294 = v309[1];
          *a3 = v309[0];
          *(a3 + 16) = v294;
          *(a3 + 32) = v310;
          break;
        default:
          goto LABEL_142;
      }
    }

    else
    {
      __break(1u);
LABEL_142:
      *&v306 = a2;
      result = sub_22FCC9744();
      __break(1u);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22FC2A1A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26[-v8 - 8];
  v10 = type metadata accessor for UserAnalyticsInputSample(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26[-v17 - 8];
  type metadata accessor for BiomeUtilities();
  sub_22FC2875C(a1, a2, v26);
  if (!v27)
  {
    sub_22FA2B420(v26, &qword_27DAD9140, &qword_22FCDD440);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_22FA2B420(v9, &qword_27DAD9108, &qword_22FCDD310);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148, &qword_22FCDD448);
  v19 = swift_dynamicCast();
  (*(v11 + 56))(v9, v19 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22FA2B420(v9, &qword_27DAD9108, &qword_22FCDD310);
  }

  sub_22FC2E18C(v9, v18, type metadata accessor for UserAnalyticsInputSample);
  sub_22FC2E124(v18, v14, type metadata accessor for UserAnalyticsInputSample);
  swift_beginAccess();
  v20 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_22FAC2CAC(0, v20[2] + 1, 1, v20);
    *(a3 + 16) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_22FAC2CAC((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_22FC2E18C(v14, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, type metadata accessor for UserAnalyticsInputSample);
  *(a3 + 16) = v20;
  swift_endAccess();
  return sub_22FC2E1F4(v18, type metadata accessor for UserAnalyticsInputSample);
}

uint64_t sub_22FC2A4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v9 = sub_22FC2C430();
  v10 = *(v9 + 16);
  v45 = a4;
  if (v10)
  {
    v11 = sub_22FA86B8C(v10, 0);
    v12 = sub_22FA8861C(&aBlock, v11 + 4, v10, v9);
    sub_22FA37D64(aBlock);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = sub_22FAA9A78(v11);

  v14 = sub_22FC2C854();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_22FA86B8C(*(v14 + 16), 0);
    v18 = sub_22FA8861C(&aBlock, v17 + 4, v16, v15);
    sub_22FA37D64(aBlock);
    if (v18 == v16)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_9:
  v19 = sub_22FAA9A78(v17);

  v20 = sub_22FC26E50(v19, v13);
  v21 = sub_22FC2CBC4();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = sub_22FA86B8C(*(v21 + 16), 0);
    v25 = sub_22FA8861C(&aBlock, v24 + 4, v23, v22);
    sub_22FA37D64(aBlock);
    if (v25 == v23)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v24 = MEMORY[0x277D84F90];
LABEL_13:
  v26 = sub_22FAA9A78(v24);

  v27 = sub_22FC26E50(v26, v20);
  v28 = sub_22FAB5D0C(a1, v27);

  if (v28)
  {
    v29 = BiomeLibrary();
    sub_22FC27034(a1);
    v30 = sub_22FCC8A54();

    aBlock = 0;
    v31 = [v29 streamWithIdentifier:v30 error:&aBlock];
    swift_unknownObjectRelease();

    if (v31)
    {
      v32 = aBlock;
      v42 = sub_22FCC8A54();
      v33 = [v31 publisherWithUseCase_];
      v50 = nullsub_1;
      v51 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_22FC2E314;
      v49 = &block_descriptor_35;
      v34 = _Block_copy(&aBlock);
      v35 = swift_allocObject();
      v35[2] = a1;
      v35[3] = v44;
      v35[4] = v8;
      v35[5] = a2;
      v35[6] = a3;
      v35[7] = v45;
      v50 = sub_22FC2CF70;
      v51 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_22FC2A4C4;
      v49 = &block_descriptor_3;
      v36 = _Block_copy(&aBlock);
      v37 = v45;
      v38 = v8;

      v39 = [v33 sinkWithCompletion:v34 receiveInput:v36];
      _Block_release(v36);
      _Block_release(v34);

      sub_22FCC9004();
      if (v4)
      {
      }
    }

    else
    {
      v40 = aBlock;
      sub_22FCC6514();

      swift_willThrow();
      v33 = v8;
    }
  }

  return v8;
}

void sub_22FC2AA90(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v61 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for UserAnalyticsInputSample(0);
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v16, v18).n128_u64[0];
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 16)
  {
    type metadata accessor for BiomeUtilities();
    sub_22FC2875C(a1, a2, v66);
    sub_22FC2E26C(v66, &v63);
    if (v64)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148, &qword_22FCDD448);
      v40 = swift_dynamicCast();
      (*(v17 + 56))(v15, v40 ^ 1u, 1, v16);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        sub_22FC2E18C(v15, v21, type metadata accessor for UserAnalyticsInputSample);
        if (a6)
        {
          v41 = &v21[*(v16 + 24)];
          v42 = *(v41 + 1);
          if (!v42 || (*v41 == a5 ? (v43 = v42 == a6) : (v43 = 0), !v43 && (sub_22FCC9704() & 1) == 0))
          {
            sub_22FC2E1F4(v21, type metadata accessor for UserAnalyticsInputSample);
LABEL_51:
            sub_22FA2B420(v66, &qword_27DAD9140, &qword_22FCDD440);
            return;
          }
        }

        if (a7)
        {
          v44 = &v21[*(v16 + 28)];
          v45 = *v44;
          v46 = v44[4];
          v47 = [a7 intValue];
          sub_22FC2E1F4(v21, type metadata accessor for UserAnalyticsInputSample);
          if ((v46 & 1) != 0 || v45 != v47)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_22FC2E1F4(v21, type metadata accessor for UserAnalyticsInputSample);
        }

LABEL_36:
        sub_22FC2E26C(v66, &v63);
        v48 = v64;
        if (!v64)
        {
          sub_22FA2B420(v66, &qword_27DAD9140, &qword_22FCDD440);
          sub_22FA2B420(&v63, &qword_27DAD9140, &qword_22FCDD440);
          return;
        }

        v49 = v65;
        __swift_project_boxed_opaque_existential_1(&v63, v64);
        v50 = (*(v49 + 8))(v48, v49);
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_0(&v63);
        if (v50 == 1280070990 && v52 == 0xE400000000000000 || (sub_22FCC9704() & 1) != 0)
        {
          sub_22FA2B420(v66, &qword_27DAD9140, &qword_22FCDD440);

          return;
        }

        v53 = sub_22FCC8A54();

        [v61 addObject_];

        goto LABEL_51;
      }
    }

    else
    {
      sub_22FA2B420(&v63, &qword_27DAD9140, &qword_22FCDD440);
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_22FA2B420(v15, &qword_27DAD9108, &qword_22FCDD310);
    goto LABEL_36;
  }

  if ([a1 respondsToSelector_])
  {
    v22 = [a1 eventBody];
    if (v22)
    {
      v23 = v22;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = [v24 presentedAssets];
        sub_22FA3A77C(0, &qword_27DAD9110, 0x277CF0FD0);
        v26 = sub_22FCC8C44();

        if (v26 >> 62)
        {
          v27 = sub_22FCC92C4();
          v60 = v23;
          if (v27)
          {
LABEL_7:
            v28 = 0;
            v62 = (v26 & 0xC000000000000001);
            v29 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v62)
              {
                v30 = MEMORY[0x231908810](v28, v26);
              }

              else
              {
                if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_54;
                }

                v30 = *(v26 + 8 * v28 + 32);
              }

              v31 = v30;
              v32 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              v33 = [v30 assetUUID];
              if (v33)
              {
                v34 = v33;
                v35 = sub_22FCC8A84();
                v37 = v36;

                v64 = MEMORY[0x277D837D0];
                *&v63 = v35;
                *(&v63 + 1) = v37;
                sub_22FA4FE00(&v63, v66);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v29 = sub_22FAC2CD4(0, *(v29 + 2) + 1, 1, v29);
                }

                v39 = *(v29 + 2);
                v38 = *(v29 + 3);
                if (v39 >= v38 >> 1)
                {
                  v29 = sub_22FAC2CD4((v38 > 1), v39 + 1, 1, v29);
                }

                *(v29 + 2) = v39 + 1;
                sub_22FA4FE00(v66, &v29[32 * v39 + 32]);
              }

              else
              {
              }

              ++v28;
              if (v32 == v27)
              {
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v60 = v23;
          if (v27)
          {
            goto LABEL_7;
          }
        }

LABEL_57:

        v58 = sub_22FCC8C24();

        [v61 addObjectsFromArray_];
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_27DAD6F40 != -1)
  {
LABEL_55:
    swift_once();
  }

  v54 = sub_22FCC8684();
  __swift_project_value_buffer(v54, qword_27DAE29E8);
  v62 = sub_22FCC8664();
  v55 = sub_22FCC8F14();
  if (os_log_type_enabled(v62, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_22FA28000, v62, v55, "Invalid event for Photos Search Session", v56, 2u);
    MEMORY[0x23190A000](v56, -1, -1);
  }

  v57 = v62;
}

double sub_22FC2B3EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for BiomeUtilities();
  sub_22FC2875C(a1, 9, v24);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9148, &qword_22FCDD448);
    if (swift_dynamicCast())
    {

      if (v23)
      {
        v13 = sub_22FCC8A54();

        PFAdjustmentStyleCastFromString();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9150, &qword_22FCDD450);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22FCD17F0;
        *(inited + 32) = a2;
        *(inited + 40) = a3;
        *(inited + 48) = v21;
        *(inited + 56) = v22;
        *(inited + 64) = a4;
        *(inited + 72) = a5;

        *(inited + 80) = sub_22FCC96C4();
        *(inited + 88) = v15;
        v16 = sub_22FA4D474(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8288, &qword_22FCD51D8);
        swift_arrayDestroy();
        swift_beginAccess();
        v17 = *(a6 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a6 + 16) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_22FAC2DE4(0, v17[2] + 1, 1, v17);
          *(a6 + 16) = v17;
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          v17 = sub_22FAC2DE4((v19 > 1), v20 + 1, 1, v17);
        }

        v17[2] = v20 + 1;
        v17[v20 + 4] = v16;
        *(a6 + 16) = v17;
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_22FA2B420(v24, &qword_27DAD9140, &qword_22FCDD440);
  }

  return result;
}

void static BiomeUtilities.sendBiomAssetSharedEventForTesting(for:progressReporter:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - v8;
  v37 = type metadata accessor for UserAnalyticsInputSample(0);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v11);
  v45 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v36 = [v13 Share];
  swift_unknownObjectRelease();
  if (a1 >> 62)
  {
LABEL_24:
    v15 = sub_22FCC92C4();
    v14 = sub_22FCC92C4();
    v16 = v37;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14;
    v16 = v37;
    if (v14)
    {
LABEL_3:
      v17 = 0;
      v43 = a1 & 0xFFFFFFFFFFFFFF8;
      v44 = a1 & 0xC000000000000001;
      v41 = v14;
      v42 = (v10 + 56);
      v33 = v9;
      v34 = a1;
      v35 = a2;
      v32 = v15;
      do
      {
        if (v44)
        {
          v10 = MEMORY[0x231908810](v17, a1);
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          if (v17 >= *(v43 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v10 = *(a1 + 8 * v17 + 32);
          swift_unknownObjectRetain();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_21;
          }
        }

        v46 = v10;
        swift_unknownObjectRetain();
        v19 = swift_dynamicCast();
        v20 = *v42;
        if (v19)
        {
          v20(v9, 0, 1, v16);
          v21 = v45;
          sub_22FC2E18C(v9, v45, type metadata accessor for UserAnalyticsInputSample);
          v22 = *(v16 + 24);
          v23 = v21 + *(v16 + 28);
          if (*(v23 + 4))
          {
            v24 = 0;
          }

          else
          {
            v24 = *v23;
          }

          v38 = v24;
          v25 = *(v21 + v22 + 8);
          v39 = v3;
          if (v25)
          {
            v40 = *(v21 + v22);
          }

          else
          {
            v40 = 1280070990;
          }

          v26 = v45;
          v27 = objc_allocWithZone(MEMORY[0x277CF1400]);

          v28 = sub_22FCC8A54();
          v29 = sub_22FCC8A54();

          v30 = [v27 initWithIdentifier:v28 subset:v29 type:{v38, v32}];

          v31 = [v36 source];
          [v31 sendEvent_];

          sub_22FC2E1F4(v26, type metadata accessor for UserAnalyticsInputSample);
          v3 = v39;
          a1 = v34;
          a2 = v35;
          v9 = v33;
          v16 = v37;
        }

        else
        {
          v20(v9, 1, 1, v16);
          sub_22FA2B420(v9, &qword_27DAD9108, &qword_22FCDD310);
        }

        sub_22FCC8FE4();
        if (v3)
        {
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
        ++v17;
      }

      while (v18 != v41);
    }
  }

  sub_22FCC9004();
}

void static BiomeUtilities.sendBiomeMemorySharedEventForTesting(for:subset:isThirdPartyShareDestination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v8 = [v7 Memories];
  swift_unknownObjectRelease();
  v9 = [v8 Shared];
  swift_unknownObjectRelease();

  v10 = sub_22FCC8CB4();

  v11 = sub_22FCC8A54();

  if (a4)
  {
    v12 = sub_22FCC8A54();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CF13C8]) initWithIdentifier:v11 subset:v12 isThirdPartyShareDestination:v10];

  v14 = [v9 source];
  [v14 sendEvent_];
}

void static BiomeUtilities.sendBiomeSearchSessionEventForTesting(for:queryEmbedding:assetUUIDs:language:region:version:libraryProcessingProgress:librarySize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v15 = [v14 RawEvent];
  swift_unknownObjectRelease();
  v16 = [v15 PhotosSearchSession];
  swift_unknownObjectRelease();
  v35 = [v16 source];
  v36 = MEMORY[0x277D84F90];
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = a4 + 40;
    do
    {

      v20 = sub_22FCC8ED4();
      v21 = objc_allocWithZone(MEMORY[0x277CF0FD0]);
      v22 = sub_22FCC8A54();

      v23 = [v21 initWithAssetUUID:v22 rankingIndex:v20 cosDistance:0];

      v24 = v23;
      MEMORY[0x231908070]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      ++v18;
      sub_22FCC8C84();

      v19 += 16;
    }

    while (v17 != v18);
  }

  if (a13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a13 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v25 = sub_22FCC8ED4();
  v26 = objc_allocWithZone(MEMORY[0x277CF0FC8]);
  v27 = sub_22FCC8A54();
  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v28 = sub_22FCC8C24();
  sub_22FA3A77C(0, &qword_27DAD9110, 0x277CF0FD0);
  v29 = sub_22FCC8C24();

  v30 = sub_22FCC8A54();
  v31 = sub_22FCC8A54();
  v32 = sub_22FCC8A54();
  LODWORD(v34) = a13;
  v33 = [v26 initWithQueryRaw:v27 queryEmbedding:v28 presentedAssets:v29 language:v30 region:v31 version:v32 libraryProcessingProgress:v25 librarySizeBucket:v34];

  [v35 sendEvent_];
}

uint64_t static BiomeUtilities.numberOfRecordsForPhotosSearchSessionStream()(__n128 a1)
{
  v1 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v2 = [v1 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  swift_unknownObjectRelease();
  v4 = sub_22FCC8A54();
  v5 = [v3 publisherWithUseCase_];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22FC2E314;
  v15 = &block_descriptor_10_0;
  v7 = _Block_copy(&v12);
  v16 = sub_22FC2E028;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22FC2E314;
  v15 = &block_descriptor_13_0;
  v8 = _Block_copy(&v12);

  v9 = [v5 sinkWithCompletion:v7 receiveInput:v8];

  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();
  v10 = *(v6 + 16);

  return v10;
}

void sub_22FC2C300(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
  }
}

id BiomeUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeUtilities.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v3, sel_init);
}

id BiomeUtilities.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22FC2C430()
{
  sub_22FA4DBE0(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9178, &qword_22FCDD478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCDD300;
  *(inited + 32) = 8;
  v1 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v2 = [v1 UserAnalytics];
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8230, &qword_22FCD4FE8);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = 1;
  v4 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v5 = [v4 Picker];
  swift_unknownObjectRelease();
  *(inited + 80) = v5;
  *(inited + 104) = v3;
  *(inited + 112) = 3;
  v6 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v7 = [v6 Search];
  swift_unknownObjectRelease();
  *(inited + 120) = v7;
  *(inited + 144) = v3;
  *(inited + 152) = 2;
  v8 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v9 = [v8 Map];
  swift_unknownObjectRelease();
  *(inited + 160) = v9;
  *(inited + 184) = v3;
  *(inited + 192) = 7;
  v10 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v11 = [v10 Share];
  swift_unknownObjectRelease();
  *(inited + 200) = v11;
  *(inited + 224) = v3;
  *(inited + 232) = 6;
  v12 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v13 = [v12 Favorite];
  swift_unknownObjectRelease();
  *(inited + 240) = v13;
  *(inited + 264) = v3;
  *(inited + 272) = 4;
  v14 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v15 = [v14 Edit];
  swift_unknownObjectRelease();
  *(inited + 280) = v15;
  *(inited + 304) = v3;
  *(inited + 312) = 5;
  v16 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v17 = [v16 Engagement];
  swift_unknownObjectRelease();
  *(inited + 344) = v3;
  *(inited + 320) = v17;
  v18 = sub_22FA4DBE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72E0, &qword_22FCD1C18);
  swift_arrayDestroy();
  v23 = v18;
  v19 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v20 = [v19 Style];
  swift_unknownObjectRelease();
  v22[3] = v3;
  v22[0] = v20;
  sub_22FC31D98(v22, 9);
  return v23;
}

uint64_t sub_22FC2C854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9168, &qword_22FCDD468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2670;
  *(inited + 32) = 11;
  v1 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v2 = [v1 Memories];
  swift_unknownObjectRelease();
  v3 = [v2 Viewed];
  swift_unknownObjectRelease();
  *(inited + 40) = v3;
  *(inited + 48) = 10;
  v4 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v5 = [v4 Memories];
  swift_unknownObjectRelease();
  v6 = [v5 Shared];
  swift_unknownObjectRelease();
  *(inited + 56) = v6;
  *(inited + 64) = 12;
  v7 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v8 = [v7 MemoryCreation];
  swift_unknownObjectRelease();
  *(inited + 72) = v8;
  *(inited + 80) = 13;
  v9 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v10 = [v9 Memories];
  swift_unknownObjectRelease();
  v11 = [v10 Curation];
  swift_unknownObjectRelease();
  *(inited + 88) = v11;
  *(inited + 96) = 15;
  v12 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v13 = [v12 Memories];
  swift_unknownObjectRelease();
  v14 = [v13 Notification];
  swift_unknownObjectRelease();
  *(inited + 104) = v14;
  *(inited + 112) = 14;
  v15 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v16 = [v15 Memories];
  swift_unknownObjectRelease();
  v17 = [v16 MoviePlayed];
  swift_unknownObjectRelease();
  *(inited + 120) = v17;
  v18 = sub_22FA4DCFC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9170, &qword_22FCDD470);
  swift_arrayDestroy();
  sub_22FAC7414(v18);
  v20 = v19;

  return v20;
}

uint64_t sub_22FC2CBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9158, &qword_22FCDD458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 16;
  v1 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v2 = [v1 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  swift_unknownObjectRelease();
  *(inited + 40) = v3;
  v4 = sub_22FA4DD10(inited);
  swift_setDeallocating();
  sub_22FA2B420(inited + 32, &qword_27DAD9160, &qword_22FCDD460);
  sub_22FAC7684(v4);
  v6 = v5;

  return v6;
}

void sub_22FC2CCE8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v42 = [v5 Style];
  swift_unknownObjectRelease();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = qword_281481B40;

      if (v11 != -1)
      {
        swift_once();
      }

      ++v7;
      swift_beginAccess();
      v12 = off_281481B48;
      if (*(off_281481B48 + 2) && (v13 = sub_22FA2DB54(v9, v10), (v14 & 1) != 0))
      {
        v15 = v12[7] + 200 * v13;
        v29 = *v15;
        v16 = *(v15 + 48);
        v17 = *(v15 + 64);
        v18 = *(v15 + 32);
        v30 = *(v15 + 16);
        v31 = v18;
        v32 = v16;
        v33 = v17;
        v19 = *(v15 + 80);
        v20 = *(v15 + 96);
        v21 = *(v15 + 128);
        v36 = *(v15 + 112);
        v37 = v21;
        v34 = v19;
        v35 = v20;
        v22 = *(v15 + 144);
        v23 = *(v15 + 160);
        v24 = *(v15 + 176);
        v41 = *(v15 + 192);
        v39 = v23;
        v40 = v24;
        v38 = v22;
        swift_endAccess();
        sub_22FA72B60(&v29, v27);

        v27[10] = v39;
        v27[11] = v40;
        v28 = v41;
        v27[6] = v35;
        v27[7] = v36;
        v27[8] = v37;
        v27[9] = v38;
        v27[2] = v31;
        v27[3] = v32;
        v27[4] = v33;
        v27[5] = v34;
        v27[0] = v29;
        v27[1] = v30;
        v25 = sub_22FC284A0();
        v26 = [v42 source];
        [v26 sendEvent_];
        sub_22FCC8FE4();

        sub_22FA89F5C(&v29);
        if (v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        swift_endAccess();
      }

      v8 += 2;
    }

    while (v6 != v7);
  }

  sub_22FCC9004();
LABEL_12:
}

unint64_t sub_22FC2CF58(unint64_t result)
{
  if (result > 0x10)
  {
    return 0;
  }

  return result;
}

void sub_22FC2CF80(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for UserAnalyticsOutputSample(0);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v51 = &v44 - v8;
  v9 = type metadata accessor for UserAnalyticsInputSample(0);
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9130, &qword_22FCDD430);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v48 = (&v44 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9138, &qword_22FCDD438);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v44 - v23);
  v25 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v47 = [v25 UserAnalytics];
  swift_unknownObjectRelease();
  v26 = 0;
  v50 = a1;
  v27 = *(a1 + 16);
  v28 = v13;
  v53 = (v14 + 48);
  v54 = (v14 + 56);
  while (1)
  {
    if (v26 == v27)
    {
      v29 = 1;
      v26 = v27;
      goto LABEL_9;
    }

    if (v26 >= v27)
    {
      break;
    }

    if (__OFADD__(v26, 1))
    {
      goto LABEL_20;
    }

    v30 = v48;
    v31 = v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v26;
    v32 = *(v28 + 48);
    *v48 = v26;
    sub_22FC2E124(v31, v30 + v32, type metadata accessor for UserAnalyticsInputSample);
    sub_22FA4F224(v30, v20, &qword_27DAD9130, &qword_22FCDD430);
    v29 = 0;
    ++v26;
LABEL_9:
    (*v54)(v20, v29, 1, v28);
    sub_22FA4F224(v20, v24, &qword_27DAD9138, &qword_22FCDD438);
    if ((*v53)(v24, 1, v28) == 1)
    {
      sub_22FCC9004();

      return;
    }

    v55 = *v24;
    v33 = v28;
    sub_22FC2E18C(v24 + *(v28 + 48), v12, type metadata accessor for UserAnalyticsInputSample);
    if (qword_28147F598 != -1)
    {
      swift_once();
    }

    v34 = *v12;
    v35 = v12[1];
    swift_beginAccess();
    v36 = qword_281487E68;
    if (*(qword_281487E68 + 16) && (v37 = sub_22FA2DB54(v34, v35), (v38 & 1) != 0))
    {
      v39 = *(v36 + 56);
      v40 = v44;
      sub_22FC2E124(v39 + *(v45 + 72) * v37, v44, type metadata accessor for UserAnalyticsOutputSample);
      sub_22FC2E18C(v40, v51, type metadata accessor for UserAnalyticsOutputSample);
      swift_endAccess();
      v41 = sub_22FC27838(v12);
      v42 = [v47 source];
      [v42 sendEvent_];
      if (__OFADD__(v55, 1))
      {
        goto LABEL_21;
      }

      v43 = v52;
      sub_22FCC8FE4();
      v52 = v43;
      if (v43)
      {

        sub_22FC2E1F4(v51, type metadata accessor for UserAnalyticsOutputSample);
        sub_22FC2E1F4(v12, type metadata accessor for UserAnalyticsInputSample);
        return;
      }

      sub_22FC2E1F4(v51, type metadata accessor for UserAnalyticsOutputSample);
    }

    else
    {
      swift_endAccess();
    }

    sub_22FC2E1F4(v12, type metadata accessor for UserAnalyticsInputSample);
    v28 = v33;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22FC2D538()
{
  v1 = v0;
  v33 = *MEMORY[0x277D85DE8];
  v2 = sub_22FCC8FD4();
  v3 = 0;
  v32 = MEMORY[0x277D84F90];
  v22 = v2 & 0xC000000000000001;
  v23 = v2;
  v21 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v25 = v1;
    v4 = qword_2844A5CA8[v3 + 4];
    v5 = BiomeLibrary();
    sub_22FC27034(v4);
    v6 = sub_22FCC8A54();

    aBlock = 0;
    v7 = [v5 streamWithIdentifier:v6 error:&aBlock];
    swift_unknownObjectRelease();

    if (!v7)
    {
      v20 = aBlock;

      sub_22FCC6514();

      swift_willThrow();
      return;
    }

    if (v22)
    {
      v19 = aBlock;
      v10 = MEMORY[0x231908810](v3, v23);
    }

    else
    {
      if (v3 >= *(v21 + 16))
      {
        __break(1u);
      }

      v8 = *(v23 + 8 * v3 + 32);
      v9 = aBlock;
      v10 = v8;
    }

    v24 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x277D84F90];
    v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:10 lastN:10 reversed:0];
    v13 = [v7 publisherWithOptions_];
    v30 = nullsub_1;
    v31 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22FC2E314;
    v29 = &block_descriptor_21;
    v14 = _Block_copy(&aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v11;
    v30 = sub_22FC2E254;
    v31 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22FC2A4C4;
    v29 = &block_descriptor_27;
    v16 = _Block_copy(&aBlock);

    v17 = [v13 sinkWithCompletion:v14 receiveInput:v16];
    _Block_release(v16);
    _Block_release(v14);

    sub_22FCC9004();
    v1 = v25;
    if (v25)
    {
      break;
    }

    ++v3;

    swift_beginAccess();
    v18 = *(v11 + 16);

    sub_22FA68B20(v18);

    if (v3 == 3)
    {

      return;
    }
  }
}

uint64_t sub_22FC2D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v16 = [v7 Style];
  swift_unknownObjectRelease();
  v8 = sub_22FCC8A54();
  v9 = [v16 publisherWithUseCase_];
  v23 = nullsub_1;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22FC2E314;
  v22 = &block_descriptor_36;
  v10 = _Block_copy(&aBlock);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v6;
  v23 = sub_22FC2E25C;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22FC2E314;
  v22 = &block_descriptor_42;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 sinkWithCompletion:v10 receiveInput:v12];

  _Block_release(v12);
  _Block_release(v10);

  swift_beginAccess();
  v14 = *(v6 + 16);

  return v14;
}

uint64_t _s13PhotoAnalysis14BiomeUtilitiesC11biomeStream3forAA0cF0OSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000022FCE8410 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x4D2E736F746F6850 && a2 == 0xEA00000000007061 || (sub_22FCC9704() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x502E736F746F6850 && a2 == 0xED000072656B6369 || (sub_22FCC9704() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xED00006863726165 || (sub_22FCC9704() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x452E736F746F6850 && a2 == 0xEB00000000746964 || (sub_22FCC9704() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0xD000000000000011 && 0x800000022FCE8430 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x462E736F746F6850 && a2 == 0xEF657469726F7661 || (sub_22FCC9704() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xEC00000065726168 || (sub_22FCC9704() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x532E736F746F6850 && a2 == 0xEC000000656C7974 || (sub_22FCC9704() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000016 && 0x800000022FCE8450 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0xD000000000000016 && 0x800000022FCE8470 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 11;
  }

  if (a1 == 0xD000000000000015 && 0x800000022FCE8490 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 12;
  }

  if (a1 == 0xD000000000000018 && 0x800000022FCE84B0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 13;
  }

  if (a1 == 0xD00000000000001BLL && 0x800000022FCE84D0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 14;
  }

  if (a1 == 0xD00000000000001CLL && 0x800000022FCE84F0 == a2 || (sub_22FCC9704() & 1) != 0)
  {
    return 15;
  }

  if (a1 == 0xD000000000000023 && 0x800000022FCE8510 == a2)
  {
    return 16;
  }

  if (sub_22FCC9704())
  {
    return 16;
  }

  return 0;
}

unint64_t sub_22FC2E058()
{
  result = qword_27DAD9118;
  if (!qword_27DAD9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9118);
  }

  return result;
}

unint64_t sub_22FC2E0B0()
{
  result = qword_27DAD9120;
  if (!qword_27DAD9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD9128, &qword_22FCDD3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9120);
  }

  return result;
}

uint64_t sub_22FC2E124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC2E18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC2E1F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC2E26C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9140, &qword_22FCDD440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22FC2E318(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22FB04E04(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id UserAnalyticsUtilities.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id UserAnalyticsUtilities.init(photoLibrary:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserAnalyticsUtilities();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_22FC2E53C(void *a1)
{
  v3 = [*&v1[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] librarySpecificFetchOptions];
  [v3 setPersonContext_];
  v4 = [objc_opt_self() fetchPersonsGroupedByAssetLocalIdentifierForAssets:a1 options:v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9188, &qword_22FCDD4B8);
  v5 = sub_22FCC89D4();

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v9[4] = sub_22FC30254;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22FA862D0;
  v9[3] = &block_descriptor_36;
  v7 = _Block_copy(v9);
  v8 = v1;

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v7);
  sub_22FCC9004();
}

void sub_22FC2E6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  sub_22FC2E744(a4, a1, a5);

  objc_autoreleasePoolPop(v8);
}

id sub_22FC2E744(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190, &unk_22FCDD4C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UserAnalyticsOutputSample(0);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v12, v13).n128_u64[0];
  v16 = &v44 - v15;
  result = [a2 uuid];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  v19 = sub_22FCC8A84();
  v21 = v20;

  sub_22FC30264(v19, v21);

  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  v45 = v8;
  result = [a2 uuid];
  if (!result)
  {
    goto LABEL_17;
  }

  v22 = result;
  v23 = sub_22FCC8A84();
  v25 = v24;

  swift_beginAccess();
  v26 = qword_281487E68;
  if (!*(qword_281487E68 + 16))
  {

    return swift_endAccess();
  }

  v27 = sub_22FA2DB54(v23, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    return swift_endAccess();
  }

  v30 = v47;
  sub_22FC2E124(*(v26 + 56) + *(v47 + 72) * v27, v11, type metadata accessor for UserAnalyticsOutputSample);
  sub_22FC305F8(v11, v16);
  swift_endAccess();
  v31 = [a2 localIdentifier];
  v32 = sub_22FCC8A84();
  v34 = v33;

  v35 = v46;
  if (*(v46 + 16))
  {
    v36 = sub_22FA2DB54(v32, v34);
    v38 = v37;

    if (v38)
    {
      v39 = [*(*(v35 + 56) + 8 * v36) count] > 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v39 = 0;
LABEL_14:
  v16[32] = v39;
  result = [a2 uuid];
  if (result)
  {
    v40 = result;
    v41 = sub_22FCC8A84();
    v43 = v42;

    sub_22FC2E124(v16, v7, type metadata accessor for UserAnalyticsOutputSample);
    (*(v30 + 56))(v7, 0, 1, v45);
    swift_beginAccess();
    sub_22FC31E9C(v7, v41, v43);
    swift_endAccess();
    return sub_22FC2E1F4(v16, type metadata accessor for UserAnalyticsOutputSample);
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_22FC2EB18(uint64_t a1, void *a2)
{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190, &unk_22FCDD4C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v38 - v5;
  v39 = type metadata accessor for UserAnalyticsOutputSample(0);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v11, v12).n128_u64[0];
  v15 = &v38 - v14;
  result = [a2 uuid];
  if (result)
  {
    v17 = result;
    v18 = sub_22FCC8A84();
    v20 = v19;

    sub_22FC30264(v18, v20);

    if (qword_28147F598 != -1)
    {
      swift_once();
    }

    result = [a2 uuid];
    if (result)
    {
      v21 = result;
      v22 = sub_22FCC8A84();
      v24 = v23;

      swift_beginAccess();
      v25 = qword_281487E68;
      if (*(qword_281487E68 + 16))
      {
        v26 = sub_22FA2DB54(v22, v24);
        v28 = v27;

        if (v28)
        {
          sub_22FC2E124(*(v25 + 56) + *(v7 + 72) * v26, v10, type metadata accessor for UserAnalyticsOutputSample);
          sub_22FC305F8(v10, v15);
          swift_endAccess();
          v29 = [*(v40 + OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary) librarySpecificFetchOptions];
          sub_22FC306BC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_22FCD17F0;
          *(v30 + 56) = MEMORY[0x277D837D0];
          *(v30 + 64) = sub_22FA4EF4C();
          *(v30 + 32) = 1701869940;
          *(v30 + 40) = 0xE400000000000000;
          v31 = MEMORY[0x277D84CB8];
          *(v30 + 96) = MEMORY[0x277D84C58];
          *(v30 + 104) = v31;
          *(v30 + 72) = 5;
          v32 = sub_22FCC8EE4();
          [v29 setPredicate_];

          v33 = [objc_opt_self() fetchAssetCollectionsContainingAsset:a2 withType:6 options:v29];
          v15[45] = [v33 count] > 0;
          result = [a2 uuid];
          if (result)
          {
            v34 = result;
            v35 = sub_22FCC8A84();
            v37 = v36;

            sub_22FC2E124(v15, v6, type metadata accessor for UserAnalyticsOutputSample);
            (*(v7 + 56))(v6, 0, 1, v39);
            swift_beginAccess();
            sub_22FC31E9C(v6, v35, v37);
            swift_endAccess();

            return sub_22FC2E1F4(v15, type metadata accessor for UserAnalyticsOutputSample);
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_22FC2EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = objc_autoreleasePoolPush();
  a5(a4, a1);

  objc_autoreleasePoolPop(v8);
}

void sub_22FC2EFE8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190, &unk_22FCDD4C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v52 - v5;
  v7 = sub_22FCC6794();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for UserAnalyticsOutputSample(0);
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v18, v19).n128_u64[0];
  v22 = &v52 - v21;
  v23 = [a2 uuid];
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = v23;
  v25 = sub_22FCC8A84();
  v27 = v26;

  sub_22FC30264(v25, v27);

  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  v28 = [a2 uuid];
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;
  v30 = sub_22FCC8A84();
  v32 = v31;

  swift_beginAccess();
  v33 = qword_281487E68;
  if (!*(qword_281487E68 + 16))
  {

    goto LABEL_10;
  }

  v52 = v14;
  v34 = v6;
  v35 = sub_22FA2DB54(v30, v32);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_10:
    swift_endAccess();
    return;
  }

  sub_22FC2E124(*(v33 + 56) + *(v56 + 72) * v35, v17, type metadata accessor for UserAnalyticsOutputSample);
  sub_22FC305F8(v17, v22);
  swift_endAccess();
  v38 = [a2 creationDate];
  if (v38)
  {
    v39 = v53;
    v40 = v38;
    sub_22FCC6754();

    v42 = v54;
    v41 = v55;
    (*(v54 + 32))(v13, v39, v55);
    v43 = 0;
    v44 = v52;
  }

  else
  {
    v43 = 1;
    v44 = v52;
    v42 = v54;
    v41 = v55;
  }

  (*(v42 + 56))(v13, v43, 1, v41);
  sub_22FA2F4C8(v13, &v22[*(v44 + 240)]);
  v45 = [a2 mediaAnalysisProperties];
  v46 = [v45 faceCount];

  if (v46 >> 31)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v22 + 9) = v46;
  v22[40] = 0;
  v22[50] = [a2 isFavorite];
  v47 = [a2 uuid];
  if (v47)
  {
    v48 = v47;
    v49 = sub_22FCC8A84();
    v51 = v50;

    sub_22FC2E124(v22, v34, type metadata accessor for UserAnalyticsOutputSample);
    (*(v56 + 56))(v34, 0, 1, v44);
    swift_beginAccess();
    sub_22FC31E9C(v34, v49, v51);
    swift_endAccess();
    sub_22FC2E1F4(v22, type metadata accessor for UserAnalyticsOutputSample);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22FC2F4E0(uint64_t a1)
{
  v3 = v1;
  v4 = [*&v1[OBJC_IVAR___PHAUserAnalyticsUtilities_photoLibrary] librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FCD2240;
  *(v5 + 32) = sub_22FCC8A84();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_22FCC8A84();
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_22FCC8A84();
  *(v5 + 72) = v8;
  v9 = sub_22FCC8C24();

  [v4 setFetchPropertySets_];

  v10 = sub_22FCC9024();
  v12 = v11;
  v14 = v13;
  v15 = objc_opt_self();
  v16 = sub_22FCC8C24();
  v17 = [v15 fetchAssetsWithUUIDs:v16 options:v4];

  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    v28 = sub_22FC3065C;
    v29 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_22FA862D0;
    v27 = &block_descriptor_13_1;
    v19 = _Block_copy(&aBlock);
    v20 = v3;

    [v17 enumerateObjectsUsingBlock_];
    _Block_release(v19);
    sub_22FCC9004();
    if (!v2)
    {
      sub_22FC2E53C(v17);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v28 = sub_22FC3068C;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_22FA862D0;
      v27 = &block_descriptor_19_0;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v17 enumerateObjectsUsingBlock_];
      _Block_release(v22);
      sub_22FCC9004();
      sub_22FCC9004();
    }
  }

  else
  {
  }
}

void sub_22FC2F83C()
{
  v2 = v1;
  v3 = type metadata accessor for UserAnalyticsInputSample(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22FCC9034();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v53 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84FA0];
  sub_22FC30820();
  if (v1)
  {
    goto LABEL_2;
  }

  v47 = v4;
  v42[1] = v0;
  v49 = v15;

  sub_22FA68B20(v49);
  v16 = *(v49 + 16);
  v48 = v12;
  if (v16)
  {
    v43 = v8;
    v44 = v10;
    v45 = v14;
    v46 = 0;
    v51 = MEMORY[0x277D84F90];
    v17 = v49;
    sub_22FA86EA8(0, v16, 0);
    v18 = v51;
    v19 = v17 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v50 = *(v47 + 72);
    do
    {
      sub_22FC2E124(v19, v7, type metadata accessor for UserAnalyticsInputSample);
      v20 = *v7;
      v21 = v7[1];

      sub_22FC2E1F4(v7, type metadata accessor for UserAnalyticsInputSample);
      v51 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22FA86EA8((v22 > 1), v23 + 1, 1);
        v18 = v51;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += v50;
      --v16;
    }

    while (v16);

    v14 = v45;
    v2 = v46;
    v8 = v43;
    v10 = v44;
    v12 = v48;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  sub_22FC2FE34(v18);

  sub_22FC2D538();
  if (v2)
  {

    goto LABEL_25;
  }

  v26 = v25;

  sub_22FA68B20(v27);
  v28 = *(v26 + 16);
  if (v28)
  {
    v43 = v8;
    v44 = v10;
    v45 = v14;
    v46 = 0;
    v51 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v28, 0);
    v29 = v26;
    v30 = v51;
    v31 = v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v32 = *(v47 + 72);
    v49 = v29;
    v50 = v32;
    do
    {
      sub_22FC2E124(v31, v7, type metadata accessor for UserAnalyticsInputSample);
      v33 = *v7;
      v34 = v7[1];

      sub_22FC2E1F4(v7, type metadata accessor for UserAnalyticsInputSample);
      v51 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22FA86EA8((v35 > 1), v36 + 1, 1);
        v30 = v51;
      }

      *(v30 + 16) = v36 + 1;
      v37 = v30 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v31 += v50;
      --v28;
    }

    while (v28);

    v14 = v45;
    v2 = v46;
    v8 = v43;
    v10 = v44;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_22FC2FE34(v30);

  v38 = v52;
  v39 = *(v52 + 16);
  if (!v39)
  {
    goto LABEL_22;
  }

  v40 = sub_22FA86B08(*(v52 + 16), 0);
  v41 = sub_22FA88270(&v51, v40 + 4, v39, v38);
  sub_22FA72BC8(v51);
  if (v41 != v39)
  {
    __break(1u);
LABEL_22:

    v40 = MEMORY[0x277D84F90];
  }

  v12 = v48;
  sub_22FC2F4E0(v40);
  if (!v2)
  {

    sub_22FC2CF80(v53, v14);

LABEL_2:

    return;
  }

LABEL_25:
}

id UserAnalyticsUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserAnalyticsUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserAnalyticsUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22FC2FE34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22FB04E04(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_22FC2FEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v38 - v10;
  v12 = sub_22FCC6794();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v38 - v19;
  sub_22FA83914(a1, v11);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    v22 = v11;
LABEL_5:
    sub_22FA2B420(v22, &qword_27DAD8730, &qword_22FCD1B20);
    return 0;
  }

  v23 = v11;
  v24 = *(v13 + 32);
  v24(v20, v23, v12);
  sub_22FA83914(a2, v7);
  if (v21(v7, 1, v12) == 1)
  {
    (*(v13 + 8))(v20, v12);
    v22 = v7;
    goto LABEL_5;
  }

  v24(v16, v7, v12);
  sub_22FCC66A4();
  v27 = v26;
  sub_22FCC66A4();
  v29 = v28;
  v30 = *(v13 + 8);
  v30(v16, v12);
  v30(v20, v12);
  v31 = (v27 - v29) / 60.0 / 60.0;
  v32 = v31 < 24.0;
  if (v31 < 24.0)
  {
    return 1;
  }

  v33 = v31 / 24.0;
  if (!v32 && v33 < 7.0)
  {
    return 2;
  }

  if (v33 > 7.0 && v33 < 30.0)
  {
    return 3;
  }

  v35 = v33 <= 30.0;
  v36 = v33 / 365.0;
  if (!v35 && v36 < 1.0)
  {
    return 4;
  }

  if (v36 > 1.0 && v36 < 5.0)
  {
    return 5;
  }

  if (v36 <= 5.0)
  {
    return 0;
  }

  return 6;
}

uint64_t sub_22FC30264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190, &unk_22FCDD4C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  if (qword_28147F598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_281487E68;
  if (*(qword_281487E68 + 16) && (v13 = sub_22FA2DB54(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for UserAnalyticsOutputSample(0);
    v18 = *(v17 - 8);
    sub_22FC2E124(v16 + *(v18 + 72) * v15, v11, type metadata accessor for UserAnalyticsOutputSample);
    (*(v18 + 56))(v11, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for UserAnalyticsOutputSample(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  swift_endAccess();
  type metadata accessor for UserAnalyticsOutputSample(0);
  v19 = *(v17 - 8);
  v20 = (*(v19 + 48))(v11, 1, v17);
  result = sub_22FA2B420(v11, &qword_27DAD9190, &unk_22FCDD4C0);
  if (v20 == 1)
  {
    v22 = *(v17 + 240);
    v23 = sub_22FCC6794();
    (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
    *v7 = a1;
    *(v7 + 1) = a2;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v7[32] = 2;
    *(v7 + 9) = 0;
    v7[40] = 1;
    *(v7 + 41) = 0x202020202020202;
    *(v7 + 46) = 0x202020202020202;
    *(v7 + 15) = 0;
    *(v7 + 54) = 0;
    v7[64] = 1;
    *(v7 + 17) = 0;
    v7[72] = 1;
    *(v7 + 19) = 0;
    v7[80] = 1;
    *(v7 + 81) = 0x202020202020202;
    *(v7 + 89) = 0x202020202020202;
    *(v7 + 97) = 0x202020202020202;
    *(v7 + 103) = 0x202020202020202;
    v7[111] = 0;
    *(v7 + 28) = 0;
    v7[116] = 1;
    (*(v19 + 56))(v7, 0, 1, v17);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_22FC31E9C(v7, a1, a2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22FC305F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsOutputSample(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FC306BC()
{
  result = qword_28147AEF0;
  if (!qword_28147AEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147AEF0);
  }

  return result;
}

uint64_t sub_22FC30718()
{
  sub_22FA680B4(&unk_2844A4E38);
  sub_22FA680B4(&unk_2844A4ED8);
  sub_22FA680B4(&unk_2844A5058);
  sub_22FA680B4(&unk_2844A51E8);
  sub_22FA680B4(&unk_2844A5458);
  result = sub_22FA680B4(&unk_2844A5488);
  qword_27DAD9198 = &unk_2844A4D68;
  return result;
}

double static PromptSuggestionBlockList.allPrompts.getter()
{
  if (qword_27DAD6F50 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_22FC30820()
{
  v1 = sub_22FCC8FD4();
  v10 = MEMORY[0x277D84F90];
  sub_22FA87308(0, 7, 0);
  v2 = 0;
  while (1)
  {
    v3 = byte_2844A5D38[v2 + 32];
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231908810](v2, v1);
      goto LABEL_6;
    }

    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v1 + 8 * v2 + 32);
LABEL_6:
    v5 = v4;
    sub_22FC309F8(v3, v4);
    if (v0)
    {

      return;
    }

    v7 = v6;

    v9 = *(v10 + 16);
    v8 = *(v10 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22FA87308((v8 > 1), v9 + 1, 1);
    }

    ++v2;
    *(v10 + 16) = v9 + 1;
    *(v10 + 8 * v9 + 32) = v7;
    if (v2 == 7)
    {

      sub_22FC31424(v10);

      return;
    }
  }

  __break(1u);
}

id sub_22FC309A0(char a1)
{
  v1 = [objc_opt_self() *off_2788B15C0[a1]];

  return v1;
}

void sub_22FC309F8(int a1, uint64_t a2)
{
  v3 = v2;
  v89[4] = *MEMORY[0x277D85DE8];
  v78 = sub_22FCC6794();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v7);
  v81 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UserAnalyticsInputSample(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v80 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = objc_opt_self();
  v12 = [v11 KnowledgeStore];
  v13 = [v11 CoreDuetEventQuery];
  if (v13)
  {
    v14 = v13;
    v84 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
    v15 = swift_allocObject();
    v85 = xmmword_22FCD1F90;
    *(v15 + 16) = xmmword_22FCD1F90;
    v16 = a1;
    *(v15 + 32) = sub_22FC309A0(a1);
    sub_22FA3A77C(0, &qword_28147AEB8, 0x277CFE1E8);
    v17 = sub_22FCC8C24();

    [v14 setEventStreams_];

    v18 = swift_allocObject();
    *(v18 + 16) = v85;
    v19 = [objc_opt_self() startDateSortDescriptorAscending_];
    if (v19)
    {
      *(v18 + 32) = v19;
      sub_22FA3A77C(0, &qword_28147AEB0, 0x277CCAC98);
      v20 = sub_22FCC8C24();

      [v14 setSortDescriptors_];

      [v14 setLimit_];
      if (v12)
      {
        v88[0] = 0;
        v21 = [v12 executeQuery:v14 error:v88];
        v22 = v88[0];
        if (!v21)
        {
          v64 = v88[0];
          sub_22FCC6514();

          swift_willThrow();
          swift_unknownObjectRelease();
          return;
        }

        v23 = v21;
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        v88[0] = 0;
        sub_22FA3A77C(0, &qword_28147ADB0, 0x277CFE1D8);
        v24 = v22;
        sub_22FCC8C34();
        v25 = v88[0];
        if (v88[0])
        {

          a1 = v16;
          v6 = v84;
          goto LABEL_8;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_70;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_8:
  v82 = v12;
  if (!(v25 >> 62))
  {
    *&v85 = v25 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v26;
    v83 = a2;
    if (v26)
    {
      goto LABEL_10;
    }

LABEL_63:
    v84 = MEMORY[0x277D84F90];
    goto LABEL_64;
  }

  *&v85 = v25 & 0xFFFFFFFFFFFFFF8;
  v27 = sub_22FCC92C4();
  v26 = sub_22FCC92C4();
  v83 = a2;
  if (!v26)
  {
    goto LABEL_63;
  }

LABEL_10:
  v74 = v27;
  v75 = a1;
  v28 = 0;
  v73 = 0x800000022FCE85B0;
  v71 = 0x800000022FCE85D0;
  v70 = 0x800000022FCE85F0;
  v69 = 0x800000022FCE8610;
  v72 = (v6 + 4);
  v84 = MEMORY[0x277D84F90];
  while (2)
  {
    v79 = v3;
    v29 = v28;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x231908810](v29, v25);
      }

      else
      {
        if (v29 >= *(v85 + 16))
        {
          goto LABEL_60;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v27 = v30;
      v28 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v31 = [v30 metadata];
      if (!v31)
      {
        __break(1u);
      }

      v32 = v31;
      v33 = sub_22FCC89D4();

      v86 = 0xD00000000000001FLL;
      v87 = 0x800000022FCE8590;
      sub_22FCC9324();
      if (*(v33 + 16))
      {
        v34 = sub_22FA69EBC(v88);
        if (v35)
        {
          break;
        }
      }

      sub_22FA3A7C4(v88);
LABEL_13:
      ++v29;
      if (v28 == v26)
      {
        v3 = v79;
        goto LABEL_64;
      }
    }

    sub_22FA2F7D8(*(v33 + 56) + 32 * v34, v89);
    sub_22FA3A7C4(v88);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_13;
    }

    v36 = v86;
    v68 = v87;
    v37 = [v27 startDate];
    if (!v37)
    {
      goto LABEL_72;
    }

    v38 = v37;
    sub_22FCC6754();

    v39 = [v27 metadata];
    if (!v39)
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v40 = v39;
    v41 = sub_22FCC89D4();

    v89[0] = 0xD00000000000001BLL;
    v89[1] = v73;
    sub_22FCC9324();
    if (*(v41 + 16) && (v42 = sub_22FA69EBC(v88), (v43 & 1) != 0))
    {
      sub_22FA2F7D8(*(v41 + 56) + 32 * v42, v89);
      sub_22FA3A7C4(v88);

      v44 = swift_dynamicCast();
      v45 = v86;
      if (!v44)
      {
        v45 = 0;
      }

      v66 = v45;
      if (v44)
      {
        v46 = v87;
      }

      else
      {
        v46 = 0;
      }

      v65 = v46;
    }

    else
    {

      sub_22FA3A7C4(v88);
      v66 = 0;
      v65 = 0;
    }

    v47 = v36;
    if (v75 <= 2u)
    {
      if (v75)
      {
        if (v75 != 1)
        {
          v48 = 0x657469726F766146;
          v49 = 0xEF746E6563655220;
          goto LABEL_49;
        }

        v67 = 0xE500000000000000;
        v48 = 0x6572616853;
      }

      else
      {
        v67 = 0xE400000000000000;
        v48 = 1953064005;
      }
    }

    else
    {
      if (v75 > 4u)
      {
        v48 = 0xD000000000000013;
        if (v75 == 5)
        {
          v50 = &v91;
        }

        else
        {
          v50 = &v92;
        }
      }

      else
      {
        if (v75 == 3)
        {
          v48 = 0x657469726F766146;
          v49 = 0xEC000000646C4F20;
          goto LABEL_49;
        }

        v48 = 0xD000000000000013;
        v50 = &v90;
      }

      v49 = *(v50 - 32);
LABEL_49:
      v67 = v49;
    }

    v51 = v68;
    v53 = v80;
    v52 = v81;
    *v80 = v47;
    *(v53 + 1) = v51;
    v54 = v77;
    (*v72)(&v53[*(v77 + 20)], v52, v78);
    v55 = &v53[v54[6]];
    v56 = v65;
    *v55 = v66;
    v55[1] = v56;
    v57 = &v53[v54[7]];
    *v57 = 0;
    v57[4] = 1;
    v58 = &v53[v54[8]];
    v59 = v67;
    *v58 = v48;
    v58[1] = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_22FAC2CAC(0, v84[2] + 1, 1, v84);
    }

    v61 = v84[2];
    v60 = v84[3];
    if (v61 >= v60 >> 1)
    {
      v84 = sub_22FAC2CAC((v60 > 1), v61 + 1, 1, v84);
    }

    v62 = v84;
    v84[2] = v61 + 1;
    sub_22FC319EC(v80, v62 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v61);
    v63 = v79;
    sub_22FCC8FE4();
    v3 = v63;
    if (v63)
    {
LABEL_61:

      swift_unknownObjectRelease();

      return;
    }

    if (v28 != v26)
    {
      continue;
    }

    break;
  }

LABEL_64:

  sub_22FCC9004();
  swift_unknownObjectRelease();
  if (v3)
  {
  }
}

void sub_22FC31424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v52 = &v46 - v8;
  v9 = type metadata accessor for UserAnalyticsInputSample(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v57 = 0;
  v13 = 0;
  v48 = *(v14 + 80);
  v15 = (v48 + 32) & ~v48;
  v16 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90] + v15;
  v17 = (v14 + 56);
  v49 = v14 + 48;
  v50 = v14;
  v51 = v15;
LABEL_4:
  v20 = *(a1 + 16);
  if (v13 != v20)
  {
    if (v13 < v20)
    {
      while (1)
      {
        v21 = *(a1 + 32 + 8 * v13);

        if (v21)
        {
          break;
        }

LABEL_9:
        ++v13;
        v22 = *(a1 + 16);
        if (v13 == v22)
        {
          goto LABEL_36;
        }

        if (v13 >= v22)
        {
          goto LABEL_42;
        }
      }

      v18 = *(v21 + 16);
      if (!v18)
      {
        (*v17)(v5, 1, 1, v9);
        sub_22FC318B0(v5);
        goto LABEL_9;
      }

      v19 = 0;
      ++v13;
      while (1)
      {
        if (v19 >= v18)
        {
          goto LABEL_43;
        }

        v53 = v16;
        v23 = v21 + v15;
        v24 = v50;
        v25 = *(v50 + 72);
        v57 = v19;
        sub_22FC31918(v23 + v25 * v19, v5);
        (*(v24 + 56))(v5, 0, 1, v9);
        v26 = v52;
        sub_22FC3197C(v5, v52);
        if ((*(v24 + 48))(v26, 1, v9) == 1)
        {
          v16 = v53;
          goto LABEL_37;
        }

        sub_22FC319EC(v26, v54);
        v27 = v53;
        v28 = v56;
        if (!v56)
        {
          break;
        }

LABEL_34:
        v40 = __OFSUB__(v28, 1);
        v41 = v28 - 1;
        if (v40)
        {
          goto LABEL_44;
        }

        v56 = v41;
        ++v57;
        v42 = v55;
        sub_22FC319EC(v54, v55);
        v55 = v42 + v25;
        v16 = v27;
        v15 = v51;
        v18 = *(v21 + 16);
        v19 = v57;
        if (v57 == v18)
        {
          (*v17)(v5, 1, 1, v9);
          sub_22FC318B0(v5);
          goto LABEL_4;
        }
      }

      v29 = v53[3];
      if (((v29 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD80F8, &qword_22FCD4A10);
      v32 = v51;
      v56 = v31;
      v27 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v27);
      if (!v25)
      {
        goto LABEL_47;
      }

      v34 = v33 - v32;
      if (v33 - v32 == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_48;
      }

      v36 = v34 / v25;
      v27[2] = v56;
      v27[3] = 2 * (v34 / v25);
      v37 = v27 + v32;
      v38 = v53[3] >> 1;
      v39 = v38 * v25;
      if (!v53[2])
      {
LABEL_33:
        v55 = v37 + v39;
        v28 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        goto LABEL_34;
      }

      if (v27 < v53 || v37 >= v53 + v51 + v39)
      {
        v55 = v37;
        v56 = v34 / v25;
        v47 = v38 * v25;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v27 == v53)
        {
LABEL_32:
          v53[2] = 0;
          goto LABEL_33;
        }

        v55 = v37;
        v56 = v34 / v25;
        v47 = v38 * v25;
        swift_arrayInitWithTakeBackToFront();
      }

      v39 = v47;
      v37 = v55;
      v36 = v56;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

LABEL_36:
  v26 = v52;
  (*v17)(v52, 1, 1, v9, v11);
LABEL_37:

  sub_22FC318B0(v26);
  v43 = v16[3];
  if (v43 >= 2)
  {
    v44 = v43 >> 1;
    v40 = __OFSUB__(v44, v56);
    v45 = v44 - v56;
    if (!v40)
    {
      v16[2] = v45;
      return;
    }

    goto LABEL_45;
  }
}

uint64_t sub_22FC318B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FC31918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsInputSample(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC3197C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9108, &qword_22FCDD310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC319EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAnalyticsInputSample(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FC31A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A0, &unk_22FCD5560);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = sub_22FCC7FF4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_22FA2B420(a1, &qword_27DAD82A0, &unk_22FCD5560);
    v16 = sub_22FA6A110(a2);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FA6FF24();
        v20 = v24;
      }

      (*(v11 + 32))(v9, *(v20 + 56) + *(v11 + 72) * v18, v10);
      sub_22FB04584(v18, v20);
      *v3 = v20;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22FA2B420(v9, &qword_27DAD82A0, &unk_22FCD5560);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_22FB257D8(v15, a2, v21);
    *v3 = v24;
  }

  return result;
}

void sub_22FC31CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22FB25A00(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_22FA2DB54(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_22FA70358();
        v13 = v16;
      }

      sub_22FB04730(v9, v13, v14);
      *v4 = v13;
    }
  }
}

_OWORD *sub_22FC31D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_22FA4FE00(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_22FB260F8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_22FA2B420(a1, &qword_27DAD7BB8, &qword_22FCD4010);
    v7 = sub_22FA6A110(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_22FA70D98();
        v11 = v13;
      }

      sub_22FA4FE00((*(v11 + 56) + 32 * v9), v14);
      sub_22FB048F0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_22FA2B420(v14, &qword_27DAD7BB8, &qword_22FCD4010);
  }

  return result;
}

void sub_22FC31E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9190, &unk_22FCDD4C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UserAnalyticsOutputSample(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_22FA2B420(a1, &qword_27DAD9190, &unk_22FCDD4C0);
    sub_22FB043BC(a2, a3, v10);

    sub_22FA2B420(v10, &qword_27DAD9190, &unk_22FCDD4C0);
  }

  else
  {
    sub_22FC3B2C0(a1, v15, type metadata accessor for UserAnalyticsOutputSample);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22FB26C40(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

uint64_t sub_22FC32070(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91B8, &qword_22FCDD6C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B388();
  sub_22FCC98B4();
  v9[15] = 0;
  sub_22FCC9674();
  if (!v1)
  {
    type metadata accessor for TaskRecord(0);
    v9[14] = 1;
    sub_22FCC6794();
    sub_22FC3B3DC(&qword_281482538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22FCC9694();
    v9[13] = 2;
    sub_22FCC9664();
    v9[12] = 3;
    sub_22FCC9614();
    v9[11] = 4;
    sub_22FCC9614();
    v9[10] = 5;
    sub_22FCC9624();
    v9[9] = 6;
    sub_22FCC9634();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22FC32328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_22FCC6794();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91B0, &qword_22FCDD6B8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for TaskRecord(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B388();
  v41 = v9;
  v14 = v42;
  sub_22FCC98A4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v42 = a1;
  v15 = v38;
  v16 = v39;
  v49 = 0;
  v17 = sub_22FCC95D4();
  v36 = v13;
  *v13 = v17;
  v48 = 1;
  sub_22FC3B3DC(&qword_281482530, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22FCC95F4();
  v18 = *(v16 + 32);
  v19 = v36;
  v18(v36 + v10[5], v6, v3);
  v47 = 2;
  v20 = v19;
  *(v19 + v10[6]) = sub_22FCC95C4() & 1;
  v46 = 3;
  v21 = sub_22FCC9574();
  v22 = v42;
  v23 = v19 + v10[7];
  *v23 = v21;
  *(v23 + 8) = v24 & 1;
  v45 = 4;
  v25 = sub_22FCC9574();
  v26 = v19 + v10[8];
  *v26 = v25;
  *(v26 + 8) = v27 & 1;
  v44 = 5;
  v28 = sub_22FCC9584();
  v29 = v19 + v10[9];
  *v29 = v28;
  *(v29 + 8) = v30 & 1;
  v43 = 6;
  v31 = sub_22FCC9594();
  LOBYTE(v19) = v32;
  (*(v15 + 8))(v41, v40);
  v33 = v20 + v10[10];
  *v33 = v31;
  *(v33 + 8) = v19 & 1;
  sub_22FC3B658(v20, v37, type metadata accessor for TaskRecord);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return sub_22FC3B328(v20, type metadata accessor for TaskRecord);
}

unint64_t sub_22FC327C0()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x4365727574616566;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7265746E49657466;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6974656C706D6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22FC328BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FC3BFEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FC328F0(uint64_t a1)
{
  v2 = sub_22FC3B388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC3292C(uint64_t a1)
{
  v2 = sub_22FC3B388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC32998(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91E8, &qword_22FCDD6F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B838();
  sub_22FCC98B4();
  v9[15] = 0;
  sub_22FCC9674();
  if (!v1)
  {
    type metadata accessor for Metadata(0);
    v9[14] = 1;
    sub_22FCC6794();
    sub_22FC3B3DC(&qword_281482538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22FCC9694();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22FC32B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_22FCC6794();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91E0, &qword_22FCDD6E8);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B838();
  sub_22FCC98A4();
  if (!v2)
  {
    v22 = v10;
    v15 = v25;
    v14 = v26;
    v29 = 0;
    v16 = v27;
    v17 = sub_22FCC95D4();
    v21 = v13;
    *v13 = v17;
    v28 = 1;
    sub_22FC3B3DC(&qword_281482530, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22FCC95F4();
    (*(v15 + 8))(v9, v16);
    v18 = v21;
    (*(v23 + 32))(v21 + *(v22 + 20), v6, v14);
    sub_22FC3B2C0(v18, v24, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22FC32E4C()
{
  if (*v0)
  {
    return 0x4465646172677075;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void sub_22FC32E90(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_22FCC9704() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4465646172677075 && a2 == 0xEB00000000657461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22FCC9704();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_22FC32F70(uint64_t a1)
{
  v2 = sub_22FC3B838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC32FAC(uint64_t a1)
{
  v2 = sub_22FC3B838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC33018(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0, &qword_22FCDD568);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Metadata(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TaskRecords(0);
  sub_22FA4FAA4(v1 + *(v12 + 28), v6, &qword_27DAD91A0, &qword_22FCDD568);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22FA2B420(v6, &qword_27DAD91A0, &qword_22FCDD568);
    return sub_22FC332C8(3, a1);
  }

  else
  {
    sub_22FC3B2C0(v6, v11, type metadata accessor for Metadata);
    v14 = *v11;
    if (*v11 <= 2)
    {
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v15 = sub_22FCC8684();
      __swift_project_value_buffer(v15, qword_281488038);
      v16 = sub_22FCC8664();
      v17 = sub_22FCC8EF4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = v14;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 3;
        _os_log_impl(&dword_22FA28000, v16, v17, "Update Metadata due to version change from version %ld to version %ld", v18, 0x16u);
        MEMORY[0x23190A000](v18, -1, -1);
      }

      if (v14 == 2)
      {
        v19 = 1;
      }

      else
      {
        v19 = 3;
      }

      if (v14 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      sub_22FC332C8(v20, a1);
    }

    return sub_22FC3B328(v11, type metadata accessor for Metadata);
  }
}

uint64_t sub_22FC332C8(int a1, void *a2)
{
  v3 = v2;
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v53[-v11];
  v13 = sub_22FCC6794();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v53[-v20];
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v53[-v25];
  if (!a2)
  {
    (*(v14 + 56))(v12, 1, 1, v13, v24);
LABEL_7:
    sub_22FA2B420(v12, &qword_27DAD8730, &qword_22FCD1B20);
    if (qword_281481648 != -1)
    {
      swift_once();
    }

    v29 = sub_22FCC8684();
    __swift_project_value_buffer(v29, qword_281488038);
    v30 = sub_22FCC8664();
    v31 = sub_22FCC8F14();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = a2;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22FA28000, v30, v31, "No migrationDate in photos db, using current date", v33, 2u);
      v34 = v33;
      a2 = v32;
      MEMORY[0x23190A000](v34, -1, -1);
    }

    sub_22FCC6784();
    goto LABEL_18;
  }

  v27 = [a2 migrationDate];
  if (v27)
  {
    v28 = v27;
    sub_22FCC6754();

    (*(v14 + 56))(v8, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v8, 1, 1, v13);
  }

  sub_22FA4F224(v8, v12, &qword_27DAD8730, &qword_22FCD1B20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  v58 = a2;
  v57 = *(v14 + 32);
  v57(v21, v12, v13);
  if (qword_281481648 != -1)
  {
    swift_once();
  }

  v35 = sub_22FCC8684();
  __swift_project_value_buffer(v35, qword_281488038);
  (*(v14 + 16))(v17, v21, v13);
  v36 = sub_22FCC8664();
  v37 = sub_22FCC8F34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v55 = v38;
    v56 = swift_slowAlloc();
    v60 = v56;
    *v38 = 136315138;
    sub_22FC3B3DC(&qword_281482528, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v54 = v37;
    v39 = sub_22FCC96C4();
    v41 = v40;
    (*(v14 + 8))(v17, v13);
    v42 = sub_22FA2F600(v39, v41, &v60);

    v43 = v55;
    *(v55 + 1) = v42;
    v44 = v43;
    _os_log_impl(&dword_22FA28000, v36, v54, "Initialize metadata with migration date: %s", v43, 0xCu);
    v45 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x23190A000](v45, -1, -1);
    MEMORY[0x23190A000](v44, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v57(v26, v21, v13);
  a2 = v58;
LABEL_18:
  v46 = v3 + *(type metadata accessor for TaskRecords(0) + 28);
  sub_22FA2B420(v46, &qword_27DAD91A0, &qword_22FCDD568);
  v47 = type metadata accessor for Metadata(0);
  (*(v14 + 16))(&v46[*(v47 + 20)], v26, v13);
  *v46 = 3;
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  if (v59 != 3)
  {
    if (!v59)
    {
      v48 = MEMORY[0x277D84F90];
      v49 = sub_22FA4D6AC(MEMORY[0x277D84F90]);

      *v3 = v49;
      v50 = sub_22FA4D6AC(v48);

      v3[1] = v50;
      v51 = sub_22FA4D894(v48);

      v3[2] = v51;
LABEL_22:
      sub_22FC33934(a2);
      return (*(v14 + 8))(v26, v13);
    }

    if (v59 <= 1u)
    {
      goto LABEL_22;
    }
  }

  return (*(v14 + 8))(v26, v13);
}

void sub_22FC33934(uint64_t a1)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22FCC65F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1, v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v62 - v13;
  *&v18 = MEMORY[0x28223BE20](v15, v16).n128_u64[0];
  v20 = &v62 - v19;
  if (v17)
  {
    v67[0] = 0;
    v21 = [v17 urlForApplicationDataFolderIdentifier:1 error:{v67, v18}];
    v22 = v67[0];
    if (v21)
    {
      v23 = v21;
      sub_22FCC65A4();
      v24 = v22;

      (*(v3 + 32))(v20, v14, v2);
      sub_22FCC6574();
      v25 = objc_opt_self();
      v26 = [v25 defaultManager];
      sub_22FCC65B4();
      v27 = sub_22FCC8A54();

      v28 = [v26 fileExistsAtPath_];

      if (!v28)
      {
LABEL_10:
        v38 = *(v3 + 8);
LABEL_11:
        v38(v10, v2);
        v38(v20, v2);
        return;
      }

      v29 = [v25 defaultManager];
      v30 = sub_22FCC6564();
      v67[0] = 0;
      v31 = [v29 removeItemAtURL:v30 error:v67];

      if (v31)
      {
        v32 = qword_281481648;
        v33 = v67[0];
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_22FCC8684();
        __swift_project_value_buffer(v34, qword_281488038);
        v35 = sub_22FCC8664();
        v36 = sub_22FCC8EF4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_22FA28000, v35, v36, "Removed existing ftemetrics", v37, 2u);
          MEMORY[0x23190A000](v37, -1, -1);
        }

        goto LABEL_10;
      }

      v49 = v67[0];
      v50 = sub_22FCC6514();

      swift_willThrow();
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v51 = sub_22FCC8684();
      __swift_project_value_buffer(v51, qword_281488038);
      (*(v3 + 16))(v6, v10, v2);
      v52 = sub_22FCC8664();
      v53 = sub_22FCC8F14();
      if (!os_log_type_enabled(v52, v53))
      {

        v38 = *(v3 + 8);
        v38(v6, v2);
        goto LABEL_11;
      }

      v54 = swift_slowAlloc();
      v63 = v54;
      v65 = swift_slowAlloc();
      v67[0] = v65;
      *v54 = 136315138;
      sub_22FC3B3DC(&qword_27DAD73F8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v55 = sub_22FCC96C4();
      v64 = v50;
      v57 = v56;
      v58 = *(v3 + 8);
      v58(v6, v2);
      v59 = sub_22FA2F600(v55, v57, v67);

      v60 = v63;
      *(v63 + 1) = v59;
      _os_log_impl(&dword_22FA28000, v52, v53, "Failed to remove existing ftemetrics at %s", v60, 0xCu);
      v61 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x23190A000](v61, -1, -1);
      MEMORY[0x23190A000](v60, -1, -1);

      v58(v10, v2);
      v58(v20, v2);
    }

    else
    {
      v39 = v67[0];
      v40 = sub_22FCC6514();

      swift_willThrow();
      v67[0] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      sub_22FA3A77C(0, &qword_28147ADF0, 0x277CCA9B8);
      swift_dynamicCast();
      v41 = v66;
      if (qword_281481648 != -1)
      {
        swift_once();
      }

      v42 = sub_22FCC8684();
      __swift_project_value_buffer(v42, qword_281488038);
      v43 = v41;
      v44 = sub_22FCC8664();
      v45 = sub_22FCC8F14();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v43;
        v48 = v43;
        _os_log_impl(&dword_22FA28000, v44, v45, "Failed to access the graphServicePath %@", v46, 0xCu);
        sub_22FA2B420(v47, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v47, -1, -1);
        MEMORY[0x23190A000](v46, -1, -1);
        v43 = v44;
        v44 = v48;
      }
    }
  }
}

uint64_t sub_22FC3405C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D8, &qword_22FCDD6E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FC3B424();
  sub_22FCC98B4();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C8, &qword_22FCDD6D0);
  sub_22FC3B6C0();
  sub_22FCC9694();
  if (!v2)
  {
    v12 = v3[1];
    HIBYTE(v11) = 1;
    sub_22FCC9694();
    v12 = v3[2];
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D0, &qword_22FCDD6D8);
    sub_22FC3B77C();
    sub_22FCC9694();
    type metadata accessor for TaskRecords(0);
    LOBYTE(v12) = 3;
    type metadata accessor for Metadata(0);
    sub_22FC3B3DC(&qword_28147B398, type metadata accessor for Metadata, &unk_22FCDD588);
    sub_22FCC9644();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FC3430C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0, &qword_22FCDD568);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C0, &qword_22FCDD6C8);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F98];
  *v15 = MEMORY[0x277D84F98];
  *(v15 + 1) = v16;
  *(v15 + 2) = v16;
  v18 = *(v17 + 36);
  v19 = type metadata accessor for Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  v20 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_22FC3B424();
  sub_22FCC98A4();
  if (!v2)
  {
    v26 = v18;
    v27 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91C8, &qword_22FCDD6D0);
    v32 = 0;
    sub_22FC3B478();
    v21 = v30;
    sub_22FCC95F4();
    *v15 = v33;
    v32 = 1;
    sub_22FCC95F4();
    *(v15 + 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91D0, &qword_22FCDD6D8);
    v32 = 2;
    sub_22FC3B534();
    sub_22FCC95F4();
    v23 = v29;
    *(v15 + 2) = v33;
    LOBYTE(v33) = 3;
    sub_22FC3B3DC(&qword_28147B390, type metadata accessor for Metadata, &unk_22FCDD5B0);
    v24 = v27;
    sub_22FCC95A4();
    (*(v23 + 8))(v11, v21);
    sub_22FC3B5F0(v24, &v15[v26], &qword_27DAD91A0, &qword_22FCDD568);
    sub_22FC3B658(v15, v28, type metadata accessor for TaskRecords);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_22FC3B328(v15, type metadata accessor for TaskRecords);
}

unint64_t sub_22FC34728()
{
  v1 = 0x7364726F636572;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FC347B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FC3C250(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FC347D8(uint64_t a1)
{
  v2 = sub_22FC3B424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FC34814(uint64_t a1)
{
  v2 = sub_22FC3B424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FC34880()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281488038);
  __swift_project_value_buffer(v0, qword_281488038);
  return sub_22FCC8674();
}

uint64_t sub_22FC34900@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D30, &qword_22FCDBA58);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords;
  swift_beginAccess();
  sub_22FA4FAA4(v1 + v11, v10, &qword_27DAD8D30, &qword_22FCDBA58);
  v12 = type metadata accessor for TaskRecords(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_22FC3B2C0(v10, a1, type metadata accessor for TaskRecords);
  }

  sub_22FA2B420(v10, &qword_27DAD8D30, &qword_22FCDBA58);
  sub_22FC357D0(a1);
  sub_22FC3B658(a1, v6, type metadata accessor for TaskRecords);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_22FC3B5F0(v6, v1 + v11, &qword_27DAD8D30, &qword_22FCDBA58);
  return swift_endAccess();
}

uint64_t sub_22FC34B08(__n128 a1)
{
  v2 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder;
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder);
  }

  else
  {
    v4 = v1;
    sub_22FCC64F4();
    swift_allocObject();
    v3 = sub_22FCC64E4();
    sub_22FCC64C4();
    *(v4 + v2) = v3;
  }

  return v3;
}

id sub_22FC34B90()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setAllowedUnits_];
  qword_281488058 = v0;
  return result;
}

uint64_t sub_22FC34C08()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_22FCC64B4();
    swift_allocObject();
    v2 = sub_22FCC64A4();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22FC34C84(char *a1)
{
  v2 = v1;
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v45 = &v43 - v6;
  v7 = sub_22FCC8684();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC65F4();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - v17;
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_logger;
  if (qword_281481648 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_281488038);
  v21 = *(v8 + 16);
  v21(v2 + v19, v20, v7);
  v22 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords;
  v23 = type metadata accessor for TaskRecords(0);
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___encoder) = 0;
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___decoder) = 0;
  v24 = *(a1 + 14);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary) = v24;
  v43 = v19;
  v25 = a1;
  v26 = *(a1 + 15);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_analytics) = v26;
  v48[0] = 0;
  v27 = v24;
  v28 = v26;
  v29 = [v27 urlForApplicationDataFolderIdentifier:1 error:v48];
  v30 = v48[0];
  if (v29)
  {
    v31 = v29;
    sub_22FCC65A4();
    v32 = v30;

    v34 = v46;
    v33 = v47;
    (*(v46 + 32))(v18, v14, v47);
    v35 = v45;
    sub_22FCC6574();

    (*(v34 + 8))(v18, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    sub_22FA4F224(v35, v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, &qword_27DAD7470, &qword_22FCD25D8);
  }

  else
  {
    v45 = v25;
    v36 = v48[0];
    v37 = sub_22FCC6514();

    swift_willThrow();
    v38 = v44;
    v21(v44, v2 + v43, v7);
    v39 = sub_22FCC8664();
    v40 = sub_22FCC8F14();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22FA28000, v39, v40, "Unable to find GraphService directory", v41, 2u);
      MEMORY[0x23190A000](v41, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v38, v7);
    (*(v46 + 56))(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, 1, 1, v47);
  }

  return v2;
}

uint64_t sub_22FC35168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for TaskRecord(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FC34900(v6);
  v16 = *v6;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 40))(v17, v18);
  if (*(v16 + 16))
  {
    v21 = sub_22FA2DB54(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_22FC3B658(*(v16 + 56) + *(v12 + 72) * v21, v10, type metadata accessor for TaskRecord);
      v24 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v24 = 1;
LABEL_6:
  v25 = *(v12 + 56);
  v25(v10, v24, 1, v11);
  sub_22FC3B328(v6, type metadata accessor for TaskRecords);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22FA2B420(v10, &qword_27DAD84B8, &unk_22FCD64A0);
LABEL_11:
    v31 = 1;
    v30 = v34;
    return (v25)(v30, v31, 1, v11);
  }

  sub_22FC3B2C0(v10, v15, type metadata accessor for TaskRecord);
  v26 = *v15;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  if (v26 != (*(v28 + 56))(v27, v28))
  {
    sub_22FC3B328(v15, type metadata accessor for TaskRecord);
    goto LABEL_11;
  }

  v29 = v34;
  sub_22FC3B2C0(v15, v34, type metadata accessor for TaskRecord);
  v30 = v29;
  v31 = 0;
  return (v25)(v30, v31, 1, v11);
}

uint64_t sub_22FC3549C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for TaskRecord(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FC34900(v6);
  v16 = *(v6 + 1);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 40))(v17, v18);
  if (*(v16 + 16))
  {
    v21 = sub_22FA2DB54(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_22FC3B658(*(v16 + 56) + *(v12 + 72) * v21, v10, type metadata accessor for TaskRecord);
      v24 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v24 = 1;
LABEL_6:
  v25 = *(v12 + 56);
  v25(v10, v24, 1, v11);
  sub_22FC3B328(v6, type metadata accessor for TaskRecords);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22FA2B420(v10, &qword_27DAD84B8, &unk_22FCD64A0);
LABEL_11:
    v31 = 1;
    v30 = v34;
    return (v25)(v30, v31, 1, v11);
  }

  sub_22FC3B2C0(v10, v15, type metadata accessor for TaskRecord);
  v26 = *v15;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  if (v26 != (*(v28 + 56))(v27, v28))
  {
    sub_22FC3B328(v15, type metadata accessor for TaskRecord);
    goto LABEL_11;
  }

  v29 = v34;
  sub_22FC3B2C0(v15, v34, type metadata accessor for TaskRecord);
  v30 = v29;
  v31 = 0;
  return (v25)(v30, v31, 1, v11);
}

uint64_t sub_22FC357D0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22FCC6324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D30, &qword_22FCDBA58);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v65 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v63 = v56 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v56 - v19;
  v21 = sub_22FCC65F4();
  MEMORY[0x28223BE20](v21, v22);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  v28 = v27;
  sub_22FA4FAA4(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, v20, &qword_27DAD7470, &qword_22FCD25D8);
  if ((*(v28 + 48))(v20, 1, v26) == 1)
  {
    sub_22FA2B420(v20, &qword_27DAD7470, &qword_22FCD25D8);
    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F14();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22FA28000, v29, v30, "Cannot read records, not a valid libraryScopedPreferencesURL", v31, 2u);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    v32 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary);
    v33 = MEMORY[0x277D84F98];
    *a1 = MEMORY[0x277D84F98];
    *(a1 + 1) = v33;
    *(a1 + 2) = v33;
    v34 = *(type metadata accessor for TaskRecords(0) + 28);
    v35 = type metadata accessor for Metadata(0);
    (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
    return sub_22FC33018(v32);
  }

  else
  {
    v56[1] = v5;
    v64 = v2;
    v61 = a1;
    v62 = v28;
    v37 = *(v28 + 32);
    v59 = v26;
    v37(v24, v20, v26);
    v38 = type metadata accessor for TaskRecords(0);
    v57 = *(v38 - 8);
    v39 = *(v57 + 56);
    v60 = v16;
    v39();
    v58 = v24;
    v40 = sub_22FCC6614();
    v42 = v41;
    sub_22FC34C08();
    sub_22FC3B3DC(&qword_2814817E0, type metadata accessor for TaskRecords, &unk_22FCDD600);
    v43 = v63;
    sub_22FCC6494();
    v44 = v43;
    v45 = v60;
    sub_22FA2B420(v60, &qword_27DAD8D30, &qword_22FCDBA58);

    sub_22FA7E6C4(v40, v42);
    (v39)(v44, 0, 1, v38);
    v46 = v45;
    sub_22FA4F224(v44, v45, &qword_27DAD8D30, &qword_22FCDBA58);
    v48 = v61;
    v47 = v62;
    v49 = v64;
    v50 = v58;
    v51 = v65;
    sub_22FA4FAA4(v46, v65, &qword_27DAD8D30, &qword_22FCDBA58);
    if ((*(v57 + 48))(v51, 1, v38) == 1)
    {
      sub_22FA2B420(v51, &qword_27DAD8D30, &qword_22FCDBA58);
      v52 = *(v49 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary);
      v53 = MEMORY[0x277D84F98];
      *v48 = MEMORY[0x277D84F98];
      *(v48 + 1) = v53;
      *(v48 + 2) = v53;
      v54 = *(v38 + 28);
      v55 = type metadata accessor for Metadata(0);
      (*(*(v55 - 8) + 56))(&v48[v54], 1, 1, v55);
      sub_22FC33018(v52);
    }

    else
    {
      sub_22FC3B2C0(v51, v48, type metadata accessor for TaskRecords);
      sub_22FC33018(*(v49 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary));
    }

    sub_22FA2B420(v46, &qword_27DAD8D30, &qword_22FCDBA58);
    return (*(v47 + 8))(v50, v59);
  }
}

uint64_t sub_22FC36058()
{
  v1 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v42 - v8;
  v10 = sub_22FCC65F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v42 - v17;
  sub_22FA4FAA4(v1 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, v9, &qword_27DAD7470, &qword_22FCD25D8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v18, v9, v10);
    v20 = [objc_opt_self() defaultManager];
    sub_22FCC6594();
    sub_22FCC65C4();
    v21 = sub_22FCC8A54();

    v22 = [v20 directoryExistsAtPath_];

    if (v22)
    {
      v23 = *(v11 + 8);
      v23(v14, v10);
    }

    else
    {
      v42[0] = v18;
      sub_22FCC65C4();
      v24 = sub_22FCC8A54();

      v43[0] = 0;
      v25 = [v20 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:v43];

      if (!v25)
      {
        v31 = v43[0];
        v32 = sub_22FCC6514();

        swift_willThrow();
        v33 = *(v11 + 8);
        v33(v14, v10);
        v34 = v32;
        v35 = sub_22FCC8664();
        v36 = sub_22FCC8F14();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138543362;
          v39 = v32;
          v40 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 4) = v40;
          *v38 = v40;
          _os_log_impl(&dword_22FA28000, v35, v36, "Failed to write directories for the records: %{public}@", v37, 0xCu);
          sub_22FA2B420(v38, &unk_27DAD7B10, &unk_22FCD21C0);
          MEMORY[0x23190A000](v38, -1, -1);
          MEMORY[0x23190A000](v37, -1, -1);
        }

        else
        {
        }

        v33(v42[0], v10);
        return 0;
      }

      v23 = *(v11 + 8);
      v26 = v43[0];
      v23(v14, v10);
      v18 = v42[0];
    }

    sub_22FC34B08(v27);
    sub_22FC34900(v5);
    sub_22FC3B3DC(&qword_2814817E8, type metadata accessor for TaskRecords, &unk_22FCDD5D8);
    v28 = sub_22FCC64D4();
    v30 = v29;
    sub_22FC3B328(v5, type metadata accessor for TaskRecords);

    sub_22FCC6674();
    v23(v18, v10);
    sub_22FA7E6C4(v28, v30);
    return 1;
  }

  sub_22FA2B420(v9, &qword_27DAD7470, &qword_22FCD25D8);
  sub_22FCC8F14();
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  v19 = sub_22FCC91B4();
  sub_22FCC85A4();

  return 0;
}

uint64_t sub_22FC36750()
{
  sub_22FA2B420(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_libraryScopedPreferencesURL, &qword_27DAD7470, &qword_22FCD25D8);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22FA2B420(v0 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords, &qword_27DAD8D30, &qword_22FCDBA58);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22FC36870(uint64_t a1)
{
  sub_22FC369C8(319, &qword_281482550, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_22FCC8684();
    if (v2 <= 0x3F)
    {
      sub_22FC369C8(319, qword_281481798, type metadata accessor for TaskRecords);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22FC369C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FCC91F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}