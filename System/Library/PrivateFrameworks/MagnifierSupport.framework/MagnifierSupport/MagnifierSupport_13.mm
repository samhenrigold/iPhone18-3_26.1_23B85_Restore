uint64_t sub_257CD3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v4[3] = swift_task_alloc();
  v4[4] = sub_257ECF900();
  v4[5] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CD3ECC, v6, v5);
}

uint64_t sub_257CD3ECC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_257ECF930();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_257ECF8F0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0;
  sub_257C3FBD4(0, 0, v1, &unk_257EF2B10, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_257CD3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD407C, v6, v5);
}

uint64_t sub_257CD407C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D70330] + MEMORY[0x277D70330]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD4144;

  return v4();
}

uint64_t sub_257CD4144()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_257CC9EBC, v4, v3);
}

uint64_t sub_257CD4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD431C, v6, v5);
}

uint64_t sub_257CD431C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD43E4;

  return v4();
}

uint64_t sub_257CD43E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_257CC0064, v4, v3);
}

void sub_257CD4524(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v17 - v8;
  v10 = sub_257ECF930();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_257ECF900();
  v11 = v1;
  v12 = sub_257ECF8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_257C3FBD4(0, 0, v9, &unk_257EE1470, v13);

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 2;
  v15 = v11;
  sub_257ECDD70();
  sub_257CD1E08();
  sub_257DCD40C();

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = 0;
    v16 = v15;
    sub_257ECDD70();
  }
}

uint64_t sub_257CD46F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_257ECF900();
  v4[3] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_257CD478C, v6, v5);
}

uint64_t sub_257CD478C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth);
  v0[6] = v1;
  v4 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_257CD4144;

  return v4();
}

id MFReaderBlockManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MFReaderBlockManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_257CD4924()
{
  result = qword_27F8F7408;
  if (!qword_27F8F7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7408);
  }

  return result;
}

uint64_t sub_257CD4A5C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MFReaderBlockManager(uint64_t a1)
{
  result = qword_27F8F7428;
  if (!qword_27F8F7428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CD4B00(uint64_t a1)
{
  sub_257CD4C1C(319, &qword_27F8F7438, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_27F8F7440, &type metadata for MFReaderSpeechState);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_257CD4C1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_257ECDD80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_257CD4C68(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v30 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F73F8, &qword_257EE12C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v28[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7448, &unk_257EE1408);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17, v18);
  v20 = &v28[-v19];
  v29 = *a2;
  v21 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_synth;
  *&v3[v21] = sub_257CD1B88();
  v22 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks] = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__blockIndex;
  v34[0] = 0;
  sub_257ECDD20();
  (*(v14 + 32))(&v3[v23], v20, v13);
  v24 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager__speechState;
  LOBYTE(v34[0]) = 2;
  sub_257ECDD20();
  (*(v6 + 32))(&v3[v24], v12, v5);
  swift_beginAccess();
  (*(v14 + 8))(&v3[v23], v13);
  v33 = 0;
  sub_257ECDD20();
  swift_endAccess();
  if (v30)
  {
    LOBYTE(v34[0]) = v29;
    v25 = v30;
    v26 = sub_257EB62C8(v34);

    swift_beginAccess();
    *&v3[v22] = v26;
  }

  v32.receiver = v3;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t sub_257CD4F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CD46F4(a1, v4, v5, v6);
}

unint64_t sub_257CD4FDC()
{
  result = qword_27F8F7280;
  if (!qword_27F8F7280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7278, &qword_257EE09B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7280);
  }

  return result;
}

void sub_257CD5040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v22 - v6;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_257ECDD60();

  v9 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v9;
    v0 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    KeyPath = v23;
    v10 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v11 = *&v0[v10];
    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v12 = sub_257ED0210();
LABEL_4:
  if (KeyPath >= v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = 2;
    v18 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = 0;
    v19 = v18;
    sub_257ECDD70();
    if (!AXIsInternalInstall())
    {
      return;
    }
  }

  else
  {
    v13 = sub_257ECF930();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_257ECF900();
    v14 = v0;
    v15 = sub_257ECF8F0();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v14;
    *(v16 + 40) = 0;
    sub_257C3FBD4(0, 0, v7, &unk_257EE1500, v16);

    if ((AXIsInternalInstall() & 1) == 0)
    {
      return;
    }
  }

  v20 = sub_257ECF4C0();
  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v21, v20, 0, 0, 1u);
}

uint64_t sub_257CD53B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257CD5424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257CD29FC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t MAGVideoCaptioningService.__allocating_init()()
{
  v0 = swift_allocObject();
  MAGVideoCaptioningService.init()();
  return v0;
}

uint64_t MAGVideoCaptioningService.init()()
{
  v1 = v0;
  v2 = sub_257ECD640();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFD20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECFE60();
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v21 = sub_257ECF190();
  MEMORY[0x28223BE20](v21 - 8, v22, v23, v24, v25);
  sub_257ECF170();
  v32 = MEMORY[0x277D84F90];
  sub_257CD8820(&qword_27F8F7450, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7458, &qword_257EE1570);
  sub_257CD58DC();
  sub_257ED0180();
  (*(v9 + 104))(v15, *MEMORY[0x277D85268], v8);
  sub_257ECD210();
  swift_allocObject();
  *(v0 + 16) = sub_257ECD220();
  v26 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  v27 = sub_257ECD630();
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating) = 0;
  sub_257ECCC70();
  sub_257ECD690();
  (*(v30 + 104))(v29, *MEMORY[0x277D782E0], v31);
  *(v1 + 24) = sub_257ECD670();
  return v1;
}

unint64_t sub_257CD58DC()
{
  result = qword_27F8F7460;
  if (!qword_27F8F7460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7458, &qword_257EE1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7460);
  }

  return result;
}

uint64_t sub_257CD5940()
{
  v1[2] = v0;
  v2 = sub_257ECD5F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService(0);
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService, &protocol conformance descriptor for MAGVideoCaptioningService);
  v5 = sub_257ECF8B0();
  v1[9] = v5;
  v1[10] = v4;

  return MEMORY[0x2822009F8](sub_257CD5AB0, v5, v4);
}

uint64_t sub_257CD5AB0()
{
  v14 = v0;
  sub_257ECD4B0();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFC00();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_257BF1FC8(0x286D726177657270, 0xE900000000000029, &v13);
    _os_log_impl(&dword_257BAC000, v1, v2, "%s - start", v7, 0xCu);
    v9 = __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C74820](v8, -1, -1, v9);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v0[11] = *(v0[2] + 24);
  sub_257ECC3F0();
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_257CD5C68;
  v11 = v0[5];

  return MEMORY[0x2821DF628](v11);
}

uint64_t sub_257CD5C68()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_257CD5E38;
  }

  else
  {
    v5 = sub_257CD5DC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CD5DC0()
{
  sub_257CD5F78();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257CD5E38()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_257CD8820(&qword_27F8F7488, MEMORY[0x277D782D0], MEMORY[0x277D782D8]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  sub_257CD5F78();

  v5 = v0[1];

  return v5();
}

uint64_t type metadata accessor for MAGVideoCaptioningService(uint64_t a1)
{
  result = qword_27F8F7498;
  if (!qword_27F8F7498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257CD5F78()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4B0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFC00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_257BF1FC8(0x286D726177657270, 0xE900000000000029, &v15);
    _os_log_impl(&dword_257BAC000, v8, v9, "%s - end", v10, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C74820](v11, -1, -1, v12);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_257CD6110()
{
  v1[5] = v0;
  v2 = sub_257ECD5F0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490, &qword_257EE1588);
  v1[9] = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService(0);
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService, &protocol conformance descriptor for MAGVideoCaptioningService);
  v4 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CD625C, v4, v3);
}

uint64_t sub_257CD625C()
{
  sub_257ECC3F0();
  sub_257ECD680();

  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_257ECD630();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  swift_beginAccess();
  sub_257CD80A4(v1, v2 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_257CD6414(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 184) = v5;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  v7 = sub_257ECD630();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();
  v8 = sub_257ECD5F0();
  *(v6 + 216) = v8;
  *(v6 + 224) = *(v8 - 8);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v9 = sub_257ECD610();
  *(v6 + 248) = v9;
  *(v6 + 256) = *(v9 - 8);
  *(v6 + 264) = swift_task_alloc();
  v10 = sub_257ECCC80();
  *(v6 + 272) = v10;
  *(v6 + 280) = *(v10 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490, &qword_257EE1588);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v11 = sub_257ECDA30();
  *(v6 + 336) = v11;
  *(v6 + 344) = *(v11 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v12 = sub_257ECCCF0();
  *(v6 + 392) = v12;
  *(v6 + 400) = *(v12 - 8);
  *(v6 + 408) = swift_task_alloc();
  type metadata accessor for MAGVideoCaptioningService(0);
  sub_257CD8820(&qword_27F8F7480, type metadata accessor for MAGVideoCaptioningService, &protocol conformance descriptor for MAGVideoCaptioningService);
  v14 = sub_257ECF8B0();
  *(v6 + 416) = v14;
  *(v6 + 424) = v13;

  return MEMORY[0x2822009F8](sub_257CD67A4, v14, v13);
}

uint64_t sub_257CD67A4(uint64_t a1, __n128 a2)
{
  v80 = v2;
  v3 = *(v2 + 23);
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating;
  *(v2 + 54) = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_isGenerating;
  if (*(v3 + v4))
  {
    sub_257ECD4B0();
    v5 = sub_257ECDA20();
    v6 = sub_257ECFC00();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v2 + 43);
    v8 = *(v2 + 44);
    v10 = *(v2 + 42);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v79[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v79);
      _os_log_impl(&dword_257BAC000, v5, v6, "%s - generation already in progress. returning nil", v11, 0xCu);
      v13 = __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C74820](v12, -1, -1, v13);
      MEMORY[0x259C74820](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_16;
  }

  v15 = *(v2 + 50);
  v14 = *(v2 + 51);
  v16 = *(v2 + 49);
  v77 = v4;
  v78 = v3;
  *(v3 + v4) = 1;
  sub_257ECCCE0();
  v17 = sub_257ECCCA0();
  v19 = v18;
  *(v2 + 55) = v17;
  *(v2 + 56) = v18;
  (*(v15 + 8))(v14, v16);
  sub_257ECD4B0();

  v20 = sub_257ECDA20();
  v21 = sub_257ECFC00();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v2 + 48);
  v24 = *(v2 + 42);
  v25 = *(v2 + 43);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v79[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v79);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_257BF1FC8(v17, v19, v79);
    _os_log_impl(&dword_257BAC000, v20, v21, "%s - start - %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v27, -1, -1);
    MEMORY[0x259C74820](v26, -1, -1);
  }

  v28 = *(v25 + 8);
  v28(v23, v24);
  v29 = *(v2 + 41);
  v30 = *(v2 + 24);
  v31 = *(v2 + 25);
  v32 = *(v2 + 23);
  v33 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState;
  *(v2 + 57) = v28;
  *(v2 + 58) = v33;
  swift_beginAccess();
  sub_257CD8114(v32 + v33, v29);
  v34 = *(v31 + 48);
  *(v2 + 59) = v34;
  *(v2 + 60) = (v31 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v30) = v34(v29, 1, v30);
  sub_257CD8184(v29);
  if (v30 == 1)
  {
    sub_257ECD4B0();

    v35 = sub_257ECDA20();
    v36 = sub_257ECFC00();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v2 + 45);
    v39 = *(v2 + 42);
    if (v37)
    {
      v75 = *(v2 + 45);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, v79);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_257BF1FC8(v17, v19, v79);
      _os_log_impl(&dword_257BAC000, v35, v36, "%s - %s - videoCaptioningState=nil, returning nil", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v41, -1, -1);
      MEMORY[0x259C74820](v40, -1, -1);

      v42 = v75;
    }

    else
    {

      v42 = v38;
    }

    v28(v42, v39);
    v62 = v17;
    goto LABEL_15;
  }

  v72 = v34;
  v73 = v32;
  v76 = v17;
  v44 = *(v2 + 36);
  v43 = *(v2 + 37);
  v46 = *(v2 + 34);
  v45 = *(v2 + 35);
  v47 = *(v2 + 23);
  v49 = v2[21];
  v48 = v2[22];
  v51 = v2[19];
  v50 = v2[20];
  v52 = *(v2 + 18);
  CVPixelBufferGetWidth(v52);
  CVPixelBufferGetHeight(v52);
  v82.origin.x = v51;
  v82.origin.y = v50;
  v82.size.width = v49;
  v82.size.height = v48;
  CGRectGetMinX(v82);
  v83.origin.x = v51;
  v83.origin.y = v50;
  v83.size.width = v49;
  v83.size.height = v48;
  CGRectGetMinY(v83);
  v84.origin.x = v51;
  v84.origin.y = v50;
  v84.size.width = v49;
  v84.size.height = v48;
  CGRectGetWidth(v84);
  v85.origin.x = v51;
  v85.origin.y = v50;
  v85.size.width = v49;
  v85.size.height = v48;
  CGRectGetHeight(v85);
  sub_257ECCC70();
  v53 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  swift_beginAccess();
  v74 = v47;
  (*(v45 + 16))(v44, v47 + v53, v46);
  sub_257ECCBC0();
  v55 = v54;
  v56 = *(v45 + 8);
  v56(v44, v46);
  v56(v43, v46);
  if (v55 <= 0.15)
  {
    v62 = v76;
LABEL_15:
    sub_257CD7D08(v62, v19);

    *(v78 + v77) = 0;
LABEL_16:

    v63 = *(v2 + 1);

    return v63(0, 0);
  }

  v57 = *(v2 + 37);
  v58 = *(v2 + 34);
  v59 = *(v2 + 35);
  v60 = *(v2 + 18);
  CGSizeMake();
  sub_257ECCC70();
  swift_beginAccess();
  (*(v59 + 40))(v74 + v53, v57, v58);
  swift_endAccess();
  v61 = v60;
  sub_257ECD600();
  v65 = *(v2 + 40);
  v66 = *(v2 + 24);
  sub_257CD8114(v73 + v33, v65);
  v67 = v72(v65, 1, v66);
  if (v67 == 1)
  {
    __break(1u);
  }

  else
  {
    v70 = *(v2 + 23);
    (*(*(v2 + 25) + 32))(*(v2 + 26), *(v2 + 40), *(v2 + 24));
    v2[61] = *(v70 + 24);
    sub_257ECC3F0();
    v71 = swift_task_alloc();
    *(v2 + 62) = v71;
    *v71 = v2;
    v71[1] = sub_257CD71D8;
    v68 = *(v2 + 33);
    v69 = *(v2 + 29);
    v67 = *(v2 + 26);
  }

  return MEMORY[0x2821DF620](v67, v68, v69);
}

uint64_t sub_257CD71D8()
{
  v2 = *v1;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_257CD7B04;
  }

  else
  {
    v5 = sub_257CD732C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CD732C()
{
  v74 = v0;
  v1 = v0[59];
  v2 = v0[58];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[25];
  v7 = v0[23];
  v6 = v0[24];
  (*(v5 + 16))(v4, v0[26], v6);
  (*(v5 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  sub_257CD80A4(v4, v7 + v2);
  swift_endAccess();
  sub_257CD8114(v7 + v2, v3);
  result = v1(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[38];
    v10 = v0[24];
    v11 = v0[25];
    v12 = sub_257ECD620();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    v72 = v15;
    if (v12 == 0x6E776F6E6B6E75 && v14 == 0xE700000000000000 || (sub_257ED0640() & 1) != 0 || !v12 && v14 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0 || (v0[14] = v12, v0[15] = v14, v0[16] = 1919905636, v0[17] = 0xE400000000000000, sub_257BDAB08(), (sub_257ED0150() & 1) == 0))
    {

      sub_257ECD4B0();

      v31 = sub_257ECDA20();
      v32 = sub_257ECFC00();

      v33 = os_log_type_enabled(v31, v32);
      v71 = v0[57];
      if (v33)
      {
        v35 = v0[55];
        v34 = v0[56];
        v63 = v0[42];
        v65 = v0[46];
        v36 = v0[32];
        v67 = v0[31];
        v69 = v0[33];
        v61 = v0[26];
        v37 = v0[24];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v73 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v73);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_257BF1FC8(v35, v34, &v73);
        _os_log_impl(&dword_257BAC000, v31, v32, "%s - %s - produced caption <nil>", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v39, -1, -1);
        MEMORY[0x259C74820](v38, -1, -1);

        v71(v65, v63);
        v72(v61, v37);
        (*(v36 + 8))(v69, v67);
      }

      else
      {
        v40 = v0[46];
        v41 = v0[42];
        v43 = v0[32];
        v42 = v0[33];
        v44 = v0[31];
        v45 = v0[26];
        v46 = v0[24];

        v71(v40, v41);
        v72(v45, v46);
        (*(v43 + 8))(v42, v44);
      }

      v47 = (v0[23] + v0[54]);
      sub_257CD7D08(v0[55], v0[56]);
      v68 = 0;
      v70 = 0;
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_257ECF4C0();

      v19 = sub_257ECF4C0();
      v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

      v21 = sub_257ECF500();
      v23 = v22;

      sub_257ECD4B0();

      v24 = sub_257ECDA20();
      v25 = sub_257ECFC00();

      v26 = os_log_type_enabled(v24, v25);
      v66 = v0[57];
      v68 = v23;
      v70 = v21;
      if (v26)
      {
        v27 = v0[55];
        v56 = v0[56];
        v59 = v0[42];
        v60 = v0[47];
        v28 = v0[32];
        v62 = v0[31];
        v64 = v0[33];
        v57 = v0[24];
        v58 = v0[26];
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v73 = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v73);
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_257BF1FC8(v27, v56, &v73);
        *(v29 + 22) = 2080;
        *(v29 + 24) = sub_257BF1FC8(v21, v23, &v73);
        _os_log_impl(&dword_257BAC000, v24, v25, "%s - %s - produced caption '%s'", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v30, -1, -1);
        MEMORY[0x259C74820](v29, -1, -1);

        v66(v60, v59);
        v72(v58, v57);
        (*(v28 + 8))(v64, v62);
      }

      else
      {
        v49 = v0[47];
        v50 = v0[42];
        v51 = v0[32];
        v52 = v0[33];
        v53 = v0[31];
        v54 = v0[26];
        v55 = v0[24];

        v66(v49, v50);
        v72(v54, v55);
        (*(v51 + 8))(v52, v53);
      }

      v47 = (v0[23] + v0[54]);
      sub_257CD7D08(v0[55], v0[56]);
    }

    *v47 = 0;

    v48 = v0[1];

    return v48(v70, v68);
  }

  return result;
}

uint64_t sub_257CD7B04()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  sub_257CD8820(&qword_27F8F7488, MEMORY[0x277D782D0], MEMORY[0x277D782D8]);
  swift_allocError();
  (*(v5 + 32))(v10, v4, v6);
  (*(v9 + 8))(v7, v8);
  (*(v2 + 8))(v1, v3);
  v11 = v0[54];
  v12 = v0[23];
  sub_257CD7D08(v0[55], v0[56]);

  *(v12 + v11) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_257CD7D08(uint64_t a1, unint64_t a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4B0();

  v12 = sub_257ECDA20();
  v13 = sub_257ECFC00();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_257BF1FC8(0xD000000000000038, 0x8000000257EFDE10, &v18);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_257BF1FC8(a1, a2, &v18);
    _os_log_impl(&dword_257BAC000, v12, v13, "%s - end - %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v15, -1, -1);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  return (*(v5 + 8))(v11, v4);
}

uint64_t MAGVideoCaptioningService.deinit()
{

  sub_257CD8184(v0 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState);
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  v2 = sub_257ECCC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MAGVideoCaptioningService.__deallocating_deinit()
{

  sub_257CD8184(v0 + OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_videoCaptioningState);
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGVideoCaptioningService_lastGenerationTime;
  v2 = sub_257ECCC80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_257CD8028()
{
  v0 = type metadata accessor for MAGVideoCaptioningService(0);
  v1 = sub_257CD8820(&unk_27F8F74B0, type metadata accessor for MAGVideoCaptioningService, &protocol conformance descriptor for MAGVideoCaptioningService);

  return MEMORY[0x282138AC0](v0, v1);
}

uint64_t sub_257CD80A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490, &qword_257EE1588);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CD8114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490, &qword_257EE1588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CD8184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7490, &qword_257EE1588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CD823C(uint64_t a1)
{
  sub_257CD87C8(319);
  if (v1 <= 0x3F)
  {
    sub_257ECCC80();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MAGVideoCaptioningService.prewarm()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return v4();
}

uint64_t dispatch thunk of MAGVideoCaptioningService.resetState()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257BE3DE0;

  return v4();
}

uint64_t dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v18 = (*(*v5 + 240) + **(*v5 + 240));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_257CD86BC;
  v13.n128_f64[0] = a2;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;

  return v18(a1, v13, v14, v15, v16);
}

uint64_t sub_257CD86BC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_257CD87C8(uint64_t a1)
{
  if (!qword_27F8F74A8)
  {
    sub_257ECD630();
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F74A8);
    }
  }
}

uint64_t sub_257CD8820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257CD8868()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257CD8A04(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257CD8BC0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257CD8D64(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257CD8EF0(void *a1)
{
  v3 = sub_257ECF4C0();
  v4 = sub_257ECCE30();
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:v4];

  v6 = sub_257ECCEA0();
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = sub_257ECCE60();
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v9 = sub_257ECCE60();
  v10 = __OFADD__(v9, v8);
  v7 = v8 + v9;
  if (v10)
  {
    __break(1u);
LABEL_7:
    v7 = 0;
  }

LABEL_8:
  ColorFilter.init(rawValue:)(v7);
  if (v22 != 12)
  {
    v11 = [v5 textLabel];
    if (v11)
    {
      v12 = v11;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_257ECF4C0();

      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      if (!v17)
      {
        sub_257ECF500();
        v17 = sub_257ECF4C0();
      }

      [v12 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v18 = sub_257C592D0(v22, v21);

    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [v5 setAccessoryType_];
  }

  return v5;
}

id sub_257CD9300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  a5(a4, a2, a3);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_257CD945C(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCE30();
  v12 = [a1 cellForRowAtIndexPath_];

  if (!v12)
  {
    return result;
  }

  v14 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v14 animated:1];

  v15 = sub_257ECCEA0();
  if (v15 == 1)
  {
    v17 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
    v18 = sub_257ECCE60();
    v19 = __OFADD__(v18, v17);
    v16 = v17 + v18;
    if (!v19)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (v15)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = sub_257ECCE60();
LABEL_9:
  ColorFilter.init(rawValue:)(v16);
  v20 = v45;
  if (v45 != 12)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v21 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v22 = v45;
    v23 = sub_257C592D0(v20, v45);
    v43 = v10;
    v44 = v4;
    if (v23)
    {
      v41 = v21;
      v42 = v3;
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = (v22 + 32);
        v26 = MEMORY[0x277D84F90];
        do
        {
          v30 = *v25++;
          v29 = v30;
          if (v30 != v20)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_257BF2944(0, *(v26 + 16) + 1, 1);
              v26 = v45;
            }

            v28 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_257BF2944((v27 > 1), v28 + 1, 1);
              v26 = v45;
            }

            *(v26 + 16) = v28 + 1;
            *(v26 + v28 + 32) = v29;
          }

          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
      }

      if (!*(v26 + 16))
      {

        return result;
      }

      [v12 setAccessoryType_];
      v3 = v42;
      v10 = v43;
      v4 = v44;
    }

    else
    {
      [v12 setAccessoryType_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F74D0, &unk_257EDB210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v20;
      v45 = v22;
      sub_257EB10DC(inited);
      v26 = v45;
    }

    sub_257ECD420();

    v33 = sub_257ECDA20();
    v34 = sub_257ECFBD0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315138;
      v37 = MEMORY[0x259C72340](v26, &type metadata for ColorFilter);
      v39 = sub_257BF1FC8(v37, v38, &v45);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_257BAC000, v33, v34, "New filters: %s", v35, 0xCu);
      v40 = __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x259C74820](v36, -1, -1, v40);
      MEMORY[0x259C74820](v35, -1, -1);

      (*(v44 + 8))(v43, v3);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    sub_257D5874C(v26);
  }

  return result;
}

uint64_t sub_257CD99E8(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CD9AF0(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CD9BF8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = *(v12 + 16);

  if (v1 != 1)
  {
    return 1;
  }

  v2 = sub_257ECCEA0();
  if (v2 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport33FilterCustomizationViewController_tableView) numberOfRowsInSection_];
    v6 = sub_257ECCE60();
    v7 = __OFADD__(v6, v5);
    v3 = v5 + v6;
    if (!v7)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v2)
  {
LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  v3 = sub_257ECCE60();
LABEL_12:
  ColorFilter.init(rawValue:)(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v12 + 16))
  {
    v8 = *(v12 + 32);
  }

  else
  {
    v8 = 12;
  }

  if (v11 == 12)
  {
    v9 = v8 == 12;
  }

  else
  {
    v9 = v8 != 12 && v11 == v8;
  }

  v10 = v9;
  return v10 ^ 1u;
}

id sub_257CD9DA4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

double sub_257CD9E1C(uint64_t a1)
{
  v2 = *v1;
  if (v2 > 0x13)
  {
    if (*v1 > 0x15u)
    {
      if (v2 == 22)
      {
        v3 = 7;
        goto LABEL_20;
      }

      if (v2 == 23)
      {
        v3 = 8;
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 == 20)
      {
        v3 = 5;
        goto LABEL_20;
      }

      if (v2 == 21)
      {
        v3 = 6;
        goto LABEL_20;
      }
    }
  }

  else if (*v1 > 0x11u)
  {
    if (v2 == 18)
    {
      v3 = 3;
      goto LABEL_20;
    }

    if (v2 == 19)
    {
      v3 = 4;
      goto LABEL_20;
    }
  }

  else
  {
    if (v2 == 16)
    {
      v3 = 1;
      goto LABEL_20;
    }

    if (v2 == 17)
    {
      v3 = 2;
LABEL_20:
      MEMORY[0x259C732E0](v3);
      return result;
    }
  }

  MEMORY[0x259C732E0](0);
  Control.rawValue.getter();
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257CD9F44()
{
  v2[79] = *v0;
  sub_257ED07B0();
  sub_257CD9E1C(v2);
  return sub_257ED0800();
}

uint64_t sub_257CD9F94(uint64_t a1)
{
  v3[79] = *v1;
  sub_257ED07B0();
  sub_257CD9E1C(v3);
  return sub_257ED0800();
}

uint64_t sub_257CD9FE0(unsigned __int8 a1)
{
  if (a1 >= 4u)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257CDA140@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257CE4C1C(*a1);
  *a2 = result;
  return result;
}

id sub_257CDA190(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_activityCreatedDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController] = 0;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  *&v3[v9] = v12;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource] = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v25.receiver = v3;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, v14, a3);

  v16 = v15;
  v17 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController, type metadata accessor for ActivityFilterCustomizationViewController);
  *&v17[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v18 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController, type metadata accessor for ActivityPeopleDetectionCustomizationViewController);
  *&v18[OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v19 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController, type metadata accessor for ActivityDoorDetectionCustomizationViewController);
  *&v19[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v20 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController, type metadata accessor for ActivityObjectUnderstandingCustomizationViewController);
  *&v20[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v21 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController, type metadata accessor for ActivityImageCaptionsCustomizationViewController);
  *&v21[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v22 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController, type metadata accessor for ActivityPointSpeakCustomizationViewController);
  *&v22[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  v23 = sub_257CD9DA4(&OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController, type metadata accessor for ActivityTextDetectionCustomizationViewController);
  *&v23[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = &off_28690BB10;
  swift_unknownObjectWeakAssign();

  return v16;
}

id sub_257CDA5F8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = sub_257CDA65C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257CDA65C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for ActivityControlsViewController.DataSource(0)) + qword_27F8F75B0;
  *v3 = 0;
  v3[1] = 0;
  v4 = v2;
  v5 = a1;
  v6 = sub_257ECDBD0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + qword_27F8F75B0);
  v9 = *(v6 + qword_27F8F75B0);
  v10 = *(v6 + qword_27F8F75B0 + 8);
  *v8 = sub_257CE4C70;
  v8[1] = v7;
  sub_257ECC3F0();
  sub_257BBD88C(v9, v10);

  return v6;
}

id sub_257CDA770(void *a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v4 = *&a4[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
  if (v4)
  {
    v250 = a1;
    v5 = *a3;
    v6 = *&a4[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
    v7 = qword_281544FE0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_281548348;
    swift_beginAccess();
    v9 = v8[12];
    v10 = v8[13];
    v253[0] = v8[11];
    v253[1] = v9;
    v253[2] = v10;
    v11 = qword_2815447E0;

    if (v11 != -1)
    {
      v12 = swift_once();
    }

    MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v252[0] + 16))
    {
      v17 = sub_257C03F6C(v6, v4);
      v19 = v18;

      if (v19)
      {
        v20 = (*(v252[0] + 56) + 296 * v17);
        memcpy(v253, v20, 0x128uLL);
        memmove(v254, v20, 0x128uLL);
        sub_257C09C58(v253, v252);

        CGSizeMake();
        if (v5 > 19)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_257C10998(v253);
    memcpy(v254, v253, 0x128uLL);
    if (v5 > 19)
    {
LABEL_9:
      if (v5 <= 21)
      {
        if (v5 != 20)
        {
          v21 = objc_allocWithZone(MEMORY[0x277D75B48]);
          v22 = sub_257ECF4C0();
          v23 = [v21 initWithStyle:1 reuseIdentifier:v22];

          if (sub_257ECF030())
          {
            _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000020, 0x8000000257EFD170, a4);
            if (!v24)
            {
              goto LABEL_166;
            }

            v25 = v24;
            v26 = [v23 imageView];
            if (!v26)
            {
              goto LABEL_165;
            }

            v27 = v26;
          }

          else
          {
            v125 = [v23 imageView];
            if (!v125)
            {
              goto LABEL_166;
            }

            v27 = v125;
            v126 = sub_257ECF4C0();
            v25 = [objc_opt_self() systemImageNamed_];

            if (v25)
            {
              v127 = objc_opt_self();
              v128 = v25;
              v129 = [v127 configurationWithPointSize:4 weight:-1 scale:25.0];
              v130 = [v128 imageByApplyingSymbolConfiguration_];

              if (v130)
              {
                v131 = [objc_opt_self() whiteColor];
                v25 = [v130 imageWithTintColor:v131 renderingMode:1];
              }

              else
              {
                v25 = 0;
              }
            }
          }

          [v27 setImage_];

LABEL_165:
LABEL_166:
          v203 = [v23 textLabel];
          if (v203)
          {
            v204 = v203;
            [v203 setNumberOfLines_];
          }

          v205 = [v23 textLabel];
          if (v205)
          {
            v206 = v205;
            [v205 setLineBreakMode_];
          }

          [v23 setAccessoryType_];
          [v23 setShowsReorderControl_];
          memcpy(v253, v254, 0x128uLL);
          if (sub_257C108C4(v253) == 1)
          {
            goto LABEL_205;
          }

          v207 = v254[76];
          v208 = [v23 detailTextLabel];
          if (v208)
          {
            v209 = v208;
            if (v207)
            {
              type metadata accessor for MAGUtilities();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v211 = [objc_opt_self() bundleForClass_];
              v212 = sub_257ECF4C0();
              v213 = sub_257ECF4C0();
              v214 = [v211 localizedStringForKey:v212 value:0 table:v213];

              sub_257ECF500();
            }

            v215 = sub_257ECF4C0();

            [v209 setText_];
          }

          v165 = [v23 textLabel];
          if (!v165)
          {
            goto LABEL_205;
          }

          goto LABEL_204;
        }

        v58 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v59 = sub_257ECF4C0();
        v23 = [v58 initWithStyle:1 reuseIdentifier:v59];

        if (sub_257ECF030())
        {
          _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6569762E74786574, 0xEF7265646E696677, a4);
          if (!v60)
          {
            goto LABEL_113;
          }

          v61 = v60;
          v62 = [v23 imageView];
          if (!v62)
          {
            goto LABEL_112;
          }

          v63 = v62;
        }

        else
        {
          v97 = [v23 imageView];
          if (!v97)
          {
            goto LABEL_113;
          }

          v63 = v97;
          v98 = sub_257ECF4C0();
          v61 = [objc_opt_self() systemImageNamed_];

          if (v61)
          {
            v99 = objc_opt_self();
            v100 = v61;
            v101 = [v99 configurationWithPointSize:4 weight:-1 scale:25.0];
            v102 = [v100 imageByApplyingSymbolConfiguration_];

            if (v102)
            {
              v103 = [objc_opt_self() whiteColor];
              v61 = [v102 imageWithTintColor:v103 renderingMode:1];
            }

            else
            {
              v61 = 0;
            }
          }
        }

        [v63 setImage_];

LABEL_112:
LABEL_113:
        v152 = [v23 textLabel];
        if (v152)
        {
          v153 = v152;
          [v152 setNumberOfLines_];
        }

        v154 = [v23 textLabel];
        if (v154)
        {
          v155 = v154;
          [v154 setLineBreakMode_];
        }

        [v23 setAccessoryType_];
        [v23 setShowsReorderControl_];
        memcpy(v253, v254, 0x128uLL);
        if (sub_257C108C4(v253) == 1)
        {
          goto LABEL_205;
        }

        v156 = v254[77];
        v157 = [v23 detailTextLabel];
        if (v157)
        {
          v158 = v157;
          if (v156)
          {
            type metadata accessor for MAGUtilities();
            v159 = swift_getObjCClassFromMetadata();
            v160 = [objc_opt_self() bundleForClass_];
            v161 = sub_257ECF4C0();
            v162 = sub_257ECF4C0();
            v163 = [v160 localizedStringForKey:v161 value:0 table:v162];

            sub_257ECF500();
          }

          v164 = sub_257ECF4C0();

          [v158 setText_];
        }

        v165 = [v23 textLabel];
        if (!v165)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      if (v5 != 22)
      {
        if (v5 == 23)
        {
          v34 = sub_257ECF4C0();
          v35 = sub_257ECCE30();
          v23 = [v250 dequeueReusableCellWithIdentifier:v34 forIndexPath:v35];

          v36 = [v23 textLabel];
          if (v36)
          {
            v37 = v36;
            type metadata accessor for MAGUtilities();
            v38 = swift_getObjCClassFromMetadata();
            v39 = [objc_opt_self() bundleForClass_];
            v40 = sub_257ECF4C0();
            v41 = sub_257ECF4C0();
            v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

            if (!v42)
            {
              sub_257ECF500();
              v42 = sub_257ECF4C0();
            }

            [v37 setText_];
          }

          v43 = [v23 textLabel];
          if (v43)
          {
            v44 = v43;
            [v43 setNumberOfLines_];
          }

          v45 = [v23 textLabel];
          if (v45)
          {
            v46 = v45;
            [v45 setLineBreakMode_];
          }

          v47 = [v23 textLabel];
          if (v47)
          {
            v48 = v47;
            [v47 setTextAlignment_];
          }

          v49 = [v23 textLabel];
          if (!v49)
          {
            goto LABEL_148;
          }

          v50 = v49;
          v51 = [objc_opt_self() systemRedColor];
          [v50 setTextColor_];
          goto LABEL_147;
        }

LABEL_60:
        v82 = sub_257ECF4C0();
        v83 = sub_257ECCE30();
        v23 = [v250 dequeueReusableCellWithIdentifier:v82 forIndexPath:v83];

        v84 = [v23 textLabel];
        if (v84)
        {
          v85 = v84;
          LOBYTE(v253[0]) = v5;
          sub_257D14A40(v84);
          v86 = sub_257ECF4C0();

          [v85 setText_];
        }

        v87 = [v23 textLabel];
        if (v87)
        {
          v88 = v87;
          [v87 setNumberOfLines_];
        }

        v89 = [v23 textLabel];
        if (v89)
        {
          v90 = v89;
          [v89 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          LOBYTE(v253[0]) = v5;
          v91 = sub_257D15518();
          _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v91, v92, a4);
          v94 = v93;

          if (v94)
          {
            v95 = [v23 imageView];
            if (!v95)
            {
LABEL_103:

              goto LABEL_104;
            }

            v96 = v95;
LABEL_102:
            [v96 setImage_];

            goto LABEL_103;
          }
        }

        else
        {
          v146 = [v23 imageView];
          if (v146)
          {
            v96 = v146;
            LOBYTE(v253[0]) = v5;
            v147 = sub_257D14B7C();
            if (v147)
            {
              v148 = v147;
              v149 = [objc_opt_self() whiteColor];
              v94 = [v148 imageWithTintColor:v149 renderingMode:1];
            }

            else
            {
              v94 = 0;
            }

            goto LABEL_102;
          }
        }

LABEL_104:
        [v23 setShowsReorderControl_];
        LOBYTE(v253[0]) = v5;
        if (Control.rawValue.getter() == 0x737265746C6966 && v150 == 0xE700000000000000)
        {
        }

        else
        {
          v151 = sub_257ED0640();

          if ((v151 & 1) == 0)
          {
            [v23 setEditingAccessoryType_];
            goto LABEL_148;
          }
        }

        [v23 setEditingAccessoryType_];
LABEL_148:
        memcpy(v253, v254, 0x128uLL);
        v189 = v253;
LABEL_206:
        sub_257BE4084(v189, &unk_27F8F68B0, &unk_257EE22E0);
        return v23;
      }

      v70 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v71 = sub_257ECF4C0();
      v23 = [v70 initWithStyle:1 reuseIdentifier:v71];

      if (sub_257ECF030())
      {
        _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x646E696677656976, 0xEA00000000007265, a4);
        if (v72)
        {
          v73 = v72;
          v74 = [v23 imageView];
          if (!v74)
          {
LABEL_140:

            goto LABEL_141;
          }

          v75 = v74;
LABEL_139:
          [v75 setImage_];

          goto LABEL_140;
        }
      }

      else
      {
        v111 = [v23 imageView];
        if (v111)
        {
          v75 = v111;
          v112 = sub_257ECF4C0();
          v73 = [objc_opt_self() systemImageNamed_];

          if (v73)
          {
            v113 = objc_opt_self();
            v114 = v73;
            v115 = [v113 configurationWithPointSize:4 weight:-1 scale:25.0];
            v116 = [v114 imageByApplyingSymbolConfiguration_];

            if (v116)
            {
              v117 = [objc_opt_self() whiteColor];
              v73 = [v116 imageWithTintColor:v117 renderingMode:1];
            }

            else
            {
              v73 = 0;
            }
          }

          goto LABEL_139;
        }
      }

LABEL_141:
      v179 = [v23 textLabel];
      if (v179)
      {
        v180 = v179;
        [v179 setNumberOfLines_];
      }

      v181 = [v23 textLabel];
      if (v181)
      {
        v182 = v181;
        [v181 setLineBreakMode_];
      }

      [v23 setAccessoryType_];
      [v23 setShowsReorderControl_];
      v183 = [v23 textLabel];
      if (!v183)
      {
        goto LABEL_148;
      }

      v50 = v183;
      type metadata accessor for MAGUtilities();
      v184 = swift_getObjCClassFromMetadata();
      v185 = [objc_opt_self() bundleForClass_];
      v186 = sub_257ECF4C0();
      v187 = sub_257ECF4C0();
      v188 = [v185 localizedStringForKey:v186 value:0 table:v187];

      sub_257ECF500();
      v51 = sub_257ECF4C0();

      [v50 setText_];
LABEL_147:

      goto LABEL_148;
    }

LABEL_18:
    if (v5 <= 17)
    {
      if (v5 != 16)
      {
        if (v5 != 17)
        {
          goto LABEL_60;
        }

        v28 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v29 = sub_257ECF4C0();
        v23 = [v28 initWithStyle:1 reuseIdentifier:v29];

        if (sub_257ECF030())
        {
          _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000025, 0x8000000257EFBBE0, a4);
          if (!v30)
          {
            goto LABEL_180;
          }

          v31 = v30;
          v32 = [v23 imageView];
          if (!v32)
          {
            goto LABEL_179;
          }

          v33 = v32;
        }

        else
        {
          v132 = [v23 imageView];
          if (!v132)
          {
            goto LABEL_180;
          }

          v33 = v132;
          v133 = sub_257ECF4C0();
          v31 = [objc_opt_self() systemImageNamed_];

          if (v31)
          {
            v134 = objc_opt_self();
            v135 = v31;
            v136 = [v134 configurationWithPointSize:4 weight:-1 scale:25.0];
            v137 = [v135 imageByApplyingSymbolConfiguration_];

            if (v137)
            {
              v138 = [objc_opt_self() whiteColor];
              v31 = [v137 imageWithTintColor:v138 renderingMode:1];
            }

            else
            {
              v31 = 0;
            }
          }
        }

        [v33 setImage_];

LABEL_179:
LABEL_180:
        v216 = [v23 textLabel];
        if (v216)
        {
          v217 = v216;
          [v216 setNumberOfLines_];
        }

        v218 = [v23 textLabel];
        if (v218)
        {
          v219 = v218;
          [v218 setLineBreakMode_];
        }

        [v23 setAccessoryType_];
        [v23 setShowsReorderControl_];
        memcpy(v253, v254, 0x128uLL);
        if (sub_257C108C4(v253) == 1)
        {
          goto LABEL_205;
        }

        v220 = v254[72];
        v221 = [v23 detailTextLabel];
        if (v221)
        {
          v222 = v221;
          if (v220)
          {
            type metadata accessor for MAGUtilities();
            v223 = swift_getObjCClassFromMetadata();
            v224 = [objc_opt_self() bundleForClass_];
            v225 = sub_257ECF4C0();
            v226 = sub_257ECF4C0();
            v227 = [v224 localizedStringForKey:v225 value:0 table:v226];

            sub_257ECF500();
          }

          v228 = sub_257ECF4C0();

          [v222 setText_];
        }

        v165 = [v23 textLabel];
        if (!v165)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      v64 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v65 = sub_257ECF4C0();
      v23 = [v64 initWithStyle:1 reuseIdentifier:v65];

      if (sub_257ECF030())
      {
        _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x75622E6F746F6870, 0xEC000000656C6262, a4);
        if (!v66)
        {
          goto LABEL_127;
        }

        v67 = v66;
        v68 = [v23 imageView];
        if (!v68)
        {
          goto LABEL_126;
        }

        v69 = v68;
      }

      else
      {
        v104 = [v23 imageView];
        if (!v104)
        {
          goto LABEL_127;
        }

        v69 = v104;
        v105 = sub_257ECF4C0();
        v67 = [objc_opt_self() _systemImageNamed_];

        if (v67)
        {
          v106 = objc_opt_self();
          v107 = v67;
          v108 = [v106 configurationWithPointSize:4 weight:-1 scale:25.0];
          v109 = [v107 imageByApplyingSymbolConfiguration_];

          if (v109)
          {
            v110 = [objc_opt_self() whiteColor];
            v67 = [v109 imageWithTintColor:v110 renderingMode:1];
          }

          else
          {
            v67 = 0;
          }
        }
      }

      [v69 setImage_];

LABEL_126:
LABEL_127:
      v166 = [v23 textLabel];
      if (v166)
      {
        v167 = v166;
        [v166 setNumberOfLines_];
      }

      v168 = [v23 textLabel];
      if (v168)
      {
        v169 = v168;
        [v168 setLineBreakMode_];
      }

      [v23 setAccessoryType_];
      [v23 setShowsReorderControl_];
      memcpy(v253, v254, 0x128uLL);
      if (sub_257C108C4(v253) == 1)
      {
        goto LABEL_205;
      }

      v170 = v254[75];
      v171 = [v23 detailTextLabel];
      if (v171)
      {
        v172 = v171;
        if (v170)
        {
          type metadata accessor for MAGUtilities();
          v173 = swift_getObjCClassFromMetadata();
          v174 = [objc_opt_self() bundleForClass_];
          v175 = sub_257ECF4C0();
          v176 = sub_257ECF4C0();
          v177 = [v174 localizedStringForKey:v175 value:0 table:v176];

          sub_257ECF500();
        }

        v178 = sub_257ECF4C0();

        [v172 setText_];
      }

      v165 = [v23 textLabel];
      if (!v165)
      {
        goto LABEL_205;
      }

      goto LABEL_204;
    }

    if (v5 != 18)
    {
      v52 = objc_allocWithZone(MEMORY[0x277D75B48]);
      v53 = sub_257ECF4C0();
      v23 = [v52 initWithStyle:1 reuseIdentifier:v53];

      if (sub_257ECF030())
      {
        _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6C69662E61666F73, 0xE90000000000006CLL, a4);
        if (!v54)
        {
          goto LABEL_194;
        }

        v55 = v54;
        v56 = [v23 imageView];
        if (!v56)
        {
          goto LABEL_193;
        }

        v57 = v56;
      }

      else
      {
        v139 = [v23 imageView];
        if (!v139)
        {
          goto LABEL_194;
        }

        v57 = v139;
        v140 = sub_257ECF4C0();
        v55 = [objc_opt_self() systemImageNamed_];

        if (v55)
        {
          v141 = objc_opt_self();
          v142 = v55;
          v143 = [v141 configurationWithPointSize:4 weight:-1 scale:25.0];
          v144 = [v142 imageByApplyingSymbolConfiguration_];

          if (v144)
          {
            v145 = [objc_opt_self() whiteColor];
            v55 = [v144 imageWithTintColor:v145 renderingMode:1];
          }

          else
          {
            v55 = 0;
          }
        }
      }

      [v57 setImage_];

LABEL_193:
LABEL_194:
      v229 = [v23 textLabel];
      if (v229)
      {
        v230 = v229;
        [v229 setNumberOfLines_];
      }

      v231 = [v23 textLabel];
      if (v231)
      {
        v232 = v231;
        [v231 setLineBreakMode_];
      }

      [v23 setAccessoryType_];
      [v23 setShowsReorderControl_];
      memcpy(v253, v254, 0x128uLL);
      if (sub_257C108C4(v253) == 1)
      {
        goto LABEL_205;
      }

      v233 = v254[74];
      v234 = [v23 detailTextLabel];
      if (v234)
      {
        v235 = v234;
        if (v233)
        {
          type metadata accessor for MAGUtilities();
          v236 = swift_getObjCClassFromMetadata();
          v237 = [objc_opt_self() bundleForClass_];
          v238 = sub_257ECF4C0();
          v239 = sub_257ECF4C0();
          v240 = [v237 localizedStringForKey:v238 value:0 table:v239];

          sub_257ECF500();
        }

        v241 = sub_257ECF4C0();

        [v235 setText_];
      }

      v165 = [v23 textLabel];
      if (!v165)
      {
        goto LABEL_205;
      }

      goto LABEL_204;
    }

    v76 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v77 = sub_257ECF4C0();
    v23 = [v76 initWithStyle:1 reuseIdentifier:v77];

    if (sub_257ECF030())
    {
      _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000016, 0x8000000257EFBC30, a4);
      if (!v78)
      {
        goto LABEL_152;
      }

      v79 = v78;
      v80 = [v23 imageView];
      if (!v80)
      {
        goto LABEL_151;
      }

      v81 = v80;
    }

    else
    {
      v118 = [v23 imageView];
      if (!v118)
      {
        goto LABEL_152;
      }

      v81 = v118;
      v119 = sub_257ECF4C0();
      v79 = [objc_opt_self() systemImageNamed_];

      if (v79)
      {
        v120 = objc_opt_self();
        v121 = v79;
        v122 = [v120 configurationWithPointSize:4 weight:-1 scale:25.0];
        v123 = [v121 imageByApplyingSymbolConfiguration_];

        if (v123)
        {
          v124 = [objc_opt_self() whiteColor];
          v79 = [v123 imageWithTintColor:v124 renderingMode:1];
        }

        else
        {
          v79 = 0;
        }
      }
    }

    [v81 setImage_];

LABEL_151:
LABEL_152:
    v190 = [v23 textLabel];
    if (v190)
    {
      v191 = v190;
      [v190 setNumberOfLines_];
    }

    v192 = [v23 textLabel];
    if (v192)
    {
      v193 = v192;
      [v192 setLineBreakMode_];
    }

    [v23 setAccessoryType_];
    [v23 setShowsReorderControl_];
    memcpy(v253, v254, 0x128uLL);
    if (sub_257C108C4(v253) == 1)
    {
      goto LABEL_205;
    }

    v194 = v254[73];
    v195 = [v23 detailTextLabel];
    if (v195)
    {
      v196 = v195;
      if (v194)
      {
        type metadata accessor for MAGUtilities();
        v197 = swift_getObjCClassFromMetadata();
        v198 = [objc_opt_self() bundleForClass_];
        v199 = sub_257ECF4C0();
        v200 = sub_257ECF4C0();
        v201 = [v198 localizedStringForKey:v199 value:0 table:v200];

        sub_257ECF500();
      }

      v202 = sub_257ECF4C0();

      [v196 setText_];
    }

    v165 = [v23 textLabel];
    if (!v165)
    {
      goto LABEL_205;
    }

LABEL_204:
    v242 = v165;
    type metadata accessor for MAGUtilities();
    v243 = swift_getObjCClassFromMetadata();
    v244 = [objc_opt_self() bundleForClass_];
    v245 = sub_257ECF4C0();
    v246 = sub_257ECF4C0();
    v247 = [v244 localizedStringForKey:v245 value:0 table:v246];

    sub_257ECF500();
    v248 = sub_257ECF4C0();

    [v242 setText_];

LABEL_205:
    memcpy(v252, v254, sizeof(v252));
    v189 = v252;
    goto LABEL_206;
  }

  return 0;
}

void sub_257CDCEA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_257CDCF74();
  }

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if ((byte_27F8F78A0 & 1) == 0)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v6 = v4;
      sub_257CDD3D4(v4, v5);
    }
  }
}

double sub_257CDCF74()
{
  v2 = sub_257CE492C();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v5)
  {
    v20 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v21 = v1;
    v6 = qword_281544FE0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_281548348;
    swift_beginAccess();
    v8 = v7[12];
    v9 = v7[13];
    v25[0] = v7[11];
    v25[1] = v8;
    v25[2] = v9;
    v10 = qword_2815447E0;

    if (v10 != -1)
    {
      v11 = swift_once();
    }

    MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(*v24 + 16) && (v16 = sub_257C03F6C(v20, v5), (v17 & 1) != 0))
    {
      memcpy(v23, (*(*v24 + 56) + 296 * v16), sizeof(v23));
      sub_257C09C58(v23, v25);

      v39 = *&v23[192];
      v40 = *&v23[208];
      v41 = *&v23[224];
      v42 = *&v23[240];
      v35 = *&v23[128];
      v36 = *&v23[144];
      v37 = *&v23[160];
      v38 = *&v23[176];
      v31 = *&v23[64];
      v32 = *&v23[80];
      v33 = *&v23[96];
      v34 = *&v23[112];
      v27 = *v23;
      v28 = *&v23[16];
      v29 = *&v23[32];
      v30 = *&v23[48];
      v26 = *&v23[280];

      *&v24[192] = v39;
      *&v24[208] = v40;
      *&v24[224] = v41;
      *&v24[240] = v42;
      *&v24[128] = v35;
      *&v24[144] = v36;
      *&v24[160] = v37;
      *&v24[176] = v38;
      *&v24[64] = v31;
      *&v24[80] = v32;
      *&v24[96] = v33;
      *&v24[112] = v34;
      *v24 = v27;
      *&v24[16] = v28;
      *&v24[32] = v29;
      *&v24[48] = v30;
      *&v24[256] = v2;
      *&v24[264] = v4;
      *&v24[272] = v21;
      *&v24[280] = v26;
      v18 = v27;
      memcpy(v22, v24, sizeof(v22));
      sub_257C09C58(v24, v25);
      sub_257D58DA0(v20, v5, v22, 0);

      memcpy(v25, v22, 0x128uLL);
      sub_257C63C04(v25);
      if (v18 == 1)
      {
        sub_257D53B38(*&v24[248], *&v24[256], *&v24[264], *&v24[272]);
      }

      *&v22[192] = v39;
      *&v22[208] = v40;
      *&v22[224] = v41;
      *&v22[240] = v42;
      *&v22[128] = v35;
      *&v22[144] = v36;
      *&v22[160] = v37;
      *&v22[176] = v38;
      *&v22[64] = v31;
      *&v22[80] = v32;
      *&v22[96] = v33;
      *&v22[112] = v34;
      *v22 = v27;
      *&v22[16] = v28;
      *&v22[32] = v29;
      *&v22[48] = v30;
      *&v22[256] = v2;
      *&v22[264] = v4;
      *&v22[272] = v21;
      *&v22[280] = v26;
      sub_257C63C04(v22);
    }

    else
    {
    }
  }

  else
  {
  }

  return result;
}

void sub_257CDD3D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v5 = qword_281544FE0;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  if (!*(v27 + 16))
  {
    goto LABEL_15;
  }

  v12 = sub_257C03F6C(v4, v3);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(v27 + 56) + 296 * v12;
  v16 = *v15;
  v17 = *(v15 + 75);
  v19 = *(v15 + 256);
  v18 = *(v15 + 264);

  if ((v16 & 1) == 0)
  {
LABEL_15:

LABEL_16:

    return;
  }

  v26 = v17;
  v20 = *(v19 + 16);
  v21 = (v19 + 32);
  while (2)
  {
    if (v20)
    {
      switch(*v21)
      {
        case 0xC:

          goto LABEL_26;
        default:
          v22 = sub_257ED0640();

          ++v21;
          --v20;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          goto LABEL_26;
      }
    }

    break;
  }

  v23 = *(v18 + 16);
  v24 = (v18 + 32);
  while (2)
  {
    if (!v23)
    {
      goto LABEL_16;
    }

    switch(*v24)
    {
      case 0xC:
LABEL_26:

        break;
      default:
        v25 = sub_257ED0640();

        ++v24;
        --v23;
        if ((v25 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  sub_257D71A84(v26);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

id sub_257CDDAB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v21 - v10;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewDidLoad, v9);
  result = [v1 view];
  if (result)
  {
    v13 = result;
    v14 = *&v1[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView];
    [result addSubview_];

    [v14 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = sub_257ECF4C0();
    [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

    v17 = sub_257ECF4C0();
    [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

    v18 = sub_257ECF4C0();
    [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v18];

    [v14 setAllowsSelectionDuringEditing_];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (result)
    {
      v19 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      v20 = sub_257CDA5F8();
      sub_257CDDD74();
      sub_257ECDBF0();

      return (*(v4 + 8))(v11, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_257CDDD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618, &unk_257EE1A90);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v40[-v6];
  v8 = sub_257ECCD90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257CE5150();
  sub_257CE51A4();
  sub_257ECDBB0();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v43 = v0;
  v44 = v9;
  v16 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v16)
  {
    v42 = v8;
    v17 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v18 = qword_281548348;
    swift_beginAccess();
    v19 = v18[12];
    v20 = v18[13];
    v45[0] = v18[11];
    v45[1] = v19;
    v45[2] = v20;
    v21 = qword_2815447E0;

    if (v21 != -1)
    {
      v22 = swift_once();
    }

    MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
    *&v40[-16] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v27 = v46;
    if (*(v46 + 16))
    {
      v28 = sub_257C03F6C(v17, v16);
      v30 = v29;

      if (v30)
      {
        v31 = *(v27 + 56) + 296 * v28;
        v41 = *(v31 + 1);
        v33 = *(v31 + 256);
        v32 = *(v31 + 264);
        v34 = *(v31 + 272);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
        sub_257ECDB50();
        sub_257CE4594(v33);

        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        sub_257CE4594(v32);

        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        sub_257CE4594(v34);

        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();

        sub_257ECDB50();
        v35 = *(v43 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator);
        sub_257ECCD80();
        v36 = sub_257ECCD60();
        v37 = v44;
        v38 = v42;
        (*(v44 + 8))(v15, v42);
        v39 = [v35 _proposedTranslationLocaleForLocale_];

        if (v39)
        {
          sub_257ECCD70();

          (*(v37 + 56))(v7, 0, 1, v38);
          sub_257BE4084(v7, &qword_27F8F7618, &unk_257EE1A90);
          LOBYTE(v45[0]) = 5;
          sub_257ECDB20();
        }

        else
        {
          (*(v37 + 56))(v7, 1, 1, v38);
          sub_257BE4084(v7, &qword_27F8F7618, &unk_257EE1A90);
        }

        if (qword_27F8F4618 != -1)
        {
          swift_once();
        }

        if (byte_27F8F78A0 == 1)
        {
          LOBYTE(v45[0]) = 5;
          sub_257ECDB20();
          LOBYTE(v45[0]) = 5;
          sub_257ECDB20();
          LOBYTE(v45[0]) = 5;
          sub_257ECDB20();
        }

        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();
        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();
        LOBYTE(v45[0]) = 5;
        sub_257ECDB20();
        if (v41)
        {
          sub_257ECDB50();
          LOBYTE(v45[0]) = 5;
          sub_257ECDB20();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_257CDE3EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDoneButtonTap_];
  v2 = [objc_opt_self() systemYellowColor];
  [v1 setTintColor_];

  v3 = [v0 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BF0;
  *(v4 + 32) = v1;
  sub_257BD2C2C(0, qword_27F8F7638, 0x277D751E0);
  v5 = v1;
  v6 = sub_257ECF7F0();

  [v3 setRightBarButtonItems_];

  v7 = [v0 navigationItem];
  if (*&v0[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8])
  {
    v8 = v7;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();

    v11 = [v10 bundleForClass_];
    v12 = sub_257ECF4C0();

    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    if (!v14)
    {
      sub_257ECF500();
      v14 = sub_257ECF4C0();
    }

    [v8 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ActivityControlsViewController.DataSource(uint64_t a1)
{
  result = qword_27F8F75C8;
  if (!qword_27F8F75C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_257CDEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  a5(a4, a2, a3);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257CDEB34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v24 - v19;
  sub_257ECCE40();
  sub_257ECCE40();
  v21 = a1;
  sub_257CDEFC8(v20, v13, 0);

  v22 = *(v7 + 8);
  v22(v13, v6);
  return (v22)(v20, v6);
}

void *sub_257CDEC70(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_257ECDBE0();
  if (v18 != 24 && (v18 & 0xF8) != 16)
  {
    if (a2 == 1)
    {
      v16 = 2;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v16 = 1;
    }

    MEMORY[0x259C6F990]([a1 numberOfRowsInSection_], v16);
    sub_257CDEFC8(a3, v13, 1);
    return (*(v7 + 8))(v13, v6);
  }

  return result;
}

uint64_t sub_257CDEDB4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_257ECCEB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v16 = a3;
  v17 = a1;
  sub_257CDEC70(v16, a4, v15);

  return (*(v9 + 8))(v15, v8);
}

BOOL sub_257CDEEC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v13 = a1;
  sub_257ECDBE0();

  (*(v6 + 8))(v12, v5);
  return v17 != 24 && (v17 & 0xF8) != 16;
}

void sub_257CDEFC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26 - v10;
  sub_257ECCEB0();
  sub_257CE50DC();
  if (sub_257ECF450())
  {
    return;
  }

  sub_257ECDBE0();
  v12 = v39;
  if (v39 == 24)
  {
    return;
  }

  sub_257ECDBE0();
  v13 = v38;
  sub_257ECDC00();
  if (v13 == 24)
  {
    v14 = sub_257ECDB80();
    v15 = sub_257ECCEA0();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + v15 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C8, &unk_257EE1A80);
      v17 = swift_allocObject();
      v26 = xmmword_257ED6D30;
      *(v17 + 16) = xmmword_257ED6D30;
      *(v17 + 32) = v12;
      sub_257ECDB30();

      v18 = swift_allocObject();
      *(v18 + 16) = v26;
      *(v18 + 32) = v12;
      v37 = v16;
      sub_257ECDB20();

      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v36 = v12;
  v19 = sub_257ECDB40();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    v35 = v13;
    v22 = sub_257ECDB40();
    if ((v23 & 1) == 0)
    {
      if (v21 < v22)
      {
        v31 = v12;
        sub_257ECDB70();
        v24 = v32;
        v29 = v13;
        sub_257ECDB70();
        if (v24 == 5)
        {
          if (v30 != 5)
          {
            goto LABEL_16;
          }
        }

        else if (v30 == 5 || v24 != v30)
        {
          goto LABEL_16;
        }

        v28 = v12;
        v27 = v13;
        sub_257ECDB90();
        goto LABEL_17;
      }

LABEL_16:
      v34 = v12;
      v33 = v13;
      sub_257ECDBA0();
    }
  }

LABEL_17:
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  v25 = (v5 + 8);
  if (a3)
  {
    sub_257ECDBF0();
  }

  else
  {
    sub_257ECDBC0();
  }

  (*v25)(v11, v4);
}

char *sub_257CDF34C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_257ECDC00();
    v11 = *&v10[qword_27F8F75B0];
    if (v11)
    {
      v12 = *&v10[qword_27F8F75B0 + 8];
      sub_257ECC3F0();
      v11(v8);
      sub_257BBD88C(v11, v12);
    }

    return (*(v2 + 8))(v8, v1);
  }

  return result;
}

id sub_257CDF49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityControlsViewController.DataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257CDF4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for ActivityControlsViewController.DataSource(0)) + qword_27F8F75B0;
  *v3 = 0;
  v3[1] = 0;
  return sub_257ECDBD0();
}

double sub_257CDF908@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v8 = qword_281544FE0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  swift_beginAccess();
  v10 = v9[12];
  v11 = v9[13];
  v35[0] = v9[11];
  v35[1] = v10;
  v35[2] = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  if (*(v34[0] + 16))
  {
    v18 = sub_257C03F6C(v7, v6);
    v20 = v19;

    if (v20)
    {
      v21 = (*(v34[0] + 56) + 296 * v18);
      memcpy(v34, v21, sizeof(v34));
      memmove(v35, v21, 0x128uLL);
      CGSizeMake();
      sub_257C09C58(v34, &v33);

      memcpy(v36, v35, 0x128uLL);
    }

    else
    {

      sub_257C10998(v36);
    }
  }

  else
  {

    sub_257C10998(v36);
  }

  v22 = sub_257ECCEA0();
  if (v22 == sub_257ECCEA0())
  {
    v23 = sub_257ECCEB0();
    (*(*(v23 - 8) + 16))(a3, a2, v23);
    sub_257BE4084(v36, &unk_27F8F68B0, &unk_257EE22E0);
    return result;
  }

  v25 = sub_257ECCEA0();
  if (v25 > 2)
  {
    sub_257BE4084(v36, &unk_27F8F68B0, &unk_257EE22E0);
    v29 = sub_257ECCEB0();
    (*(*(v29 - 8) + 16))(a3, a1, v29);
    return result;
  }

  v26 = v25;
  memcpy(v35, v36, 0x128uLL);
  if (sub_257C108C4(v35) == 1)
  {
    goto LABEL_22;
  }

  v27 = v35[32];

  sub_257BE4084(v36, &unk_27F8F68B0, &unk_257EE22E0);
  if (sub_257ECCEA0() || *(v27 + 16))
  {
    if (1u >> (v26 & 7))
    {
      v28 = *(v27 + 16);

      if (v28 >= 2)
      {
        MEMORY[0x259C6F970](0, 1);
        return result;
      }
    }

    else
    {
    }

LABEL_22:
    v30 = sub_257ECCEB0();
    (*(*(v30 - 8) + 16))(a3, a2, v30);
    return result;
  }

  v31 = sub_257ECCEB0();
  (*(*(v31 - 8) + 16))(a3, a1, v31);

  return result;
}

void sub_257CDFEFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_257CDA5F8();
  sub_257ECDBE0();

  if (aBlock != 24)
  {
    v6 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v6 animated:1];

    if (aBlock > 0x13u)
    {
      if (aBlock <= 0x15u)
      {
        if (aBlock == 20)
        {
          v38 = [v3 navigationController];
          if (!v38)
          {
            return;
          }

          v8 = v38;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController;
          v10 = type metadata accessor for ActivityTextDetectionCustomizationViewController;
        }

        else
        {
          v11 = [v3 navigationController];
          if (!v11)
          {
            return;
          }

          v8 = v11;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController;
          v10 = type metadata accessor for ActivityPointSpeakCustomizationViewController;
        }

        goto LABEL_37;
      }

      if (aBlock == 22)
      {
        v40 = [v3 navigationController];
        if (!v40)
        {
          return;
        }

        v8 = v40;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController;
        v10 = type metadata accessor for ActivityDetectionModeUniversalSettingsViewController;
        goto LABEL_37;
      }

      if (aBlock == 23)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v14 = objc_opt_self();
        v15 = [v14 bundleForClass_];
        v16 = sub_257ECF4C0();
        v17 = sub_257ECF4C0();
        v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

        sub_257ECF500();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_257ED6D30;
        v20 = *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
        if (!v20)
        {
          __break(1u);
          return;
        }

        v21 = *&v3[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];
        *(v19 + 56) = MEMORY[0x277D837D0];
        v22 = v19;
        *(v19 + 64) = sub_257BFB13C();
        *(v22 + 32) = v21;
        *(v22 + 40) = v20;

        sub_257ECF4D0();

        v23 = sub_257ECF4C0();

        v45 = [objc_opt_self() alertControllerWithTitle:v23 message:0 preferredStyle:0];

        v24 = [v14 bundleForClass_];
        v25 = sub_257ECF4C0();
        v26 = sub_257ECF4C0();
        v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

        if (!v27)
        {
          sub_257ECF500();
          v27 = sub_257ECF4C0();
        }

        v28 = swift_allocObject();
        *(v28 + 16) = v3;
        v50 = sub_257CE4C48;
        v51 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v47 = 1107296256;
        v48 = sub_257CED4E8;
        v49 = &block_descriptor_21;
        v29 = _Block_copy(&aBlock);
        v44 = v3;

        v30 = objc_opt_self();
        v8 = [v30 actionWithTitle:v27 style:2 handler:v29];
        _Block_release(v29);

        v31 = [v14 bundleForClass_];
        v32 = sub_257ECF4C0();
        v33 = sub_257ECF4C0();
        v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

        if (!v34)
        {
          sub_257ECF500();
          v34 = sub_257ECF4C0();
        }

        v50 = CGSizeMake;
        v51 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v47 = 1107296256;
        v48 = sub_257CED4E8;
        v49 = &block_descriptor_86;
        v35 = _Block_copy(&aBlock);

        v36 = [v30 actionWithTitle:v34 style:1 handler:v35];
        _Block_release(v35);

        [v45 addAction_];
        [v45 addAction_];
        [v44 presentViewController:v45 animated:1 completion:0];

        goto LABEL_38;
      }
    }

    else
    {
      if (aBlock > 0x11u)
      {
        if (aBlock == 18)
        {
          v39 = [v3 navigationController];
          if (!v39)
          {
            return;
          }

          v8 = v39;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController;
          v10 = type metadata accessor for ActivityDoorDetectionCustomizationViewController;
        }

        else
        {
          v12 = [v3 navigationController];
          if (!v12)
          {
            return;
          }

          v8 = v12;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController;
          v10 = type metadata accessor for ActivityObjectUnderstandingCustomizationViewController;
        }

        goto LABEL_37;
      }

      if (aBlock == 16)
      {
        v37 = [v3 navigationController];
        if (!v37)
        {
          return;
        }

        v8 = v37;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController;
        v10 = type metadata accessor for ActivityImageCaptionsCustomizationViewController;
        goto LABEL_37;
      }

      if (aBlock == 17)
      {
        v7 = [v3 navigationController];
        if (!v7)
        {
          return;
        }

        v8 = v7;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController;
        v10 = type metadata accessor for ActivityPeopleDetectionCustomizationViewController;
        goto LABEL_37;
      }
    }

    if (Control.rawValue.getter() == 0x737265746C6966 && v41 == 0xE700000000000000)
    {
    }

    else
    {
      v42 = sub_257ED0640();

      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    v43 = [v3 navigationController];
    if (v43)
    {
      v8 = v43;
      v9 = &OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController;
      v10 = type metadata accessor for ActivityFilterCustomizationViewController;
LABEL_37:
      v36 = sub_257CD9DA4(v9, v10);
      [v8 pushViewController:v36 animated:1];
LABEL_38:
    }
  }
}

void sub_257CE072C(uint64_t a1, char *a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v3 = *&a2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8];
  if (v3)
  {
    v4 = *&a2[OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle];

    sub_257D54B08(v4, v3);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_257C618B0();
      swift_unknownObjectRelease();
    }

    v5 = [a2 navigationController];
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for ActivityControlsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 23;
  if (a2 + 23 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 23;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 23;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x10)
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityControlsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 23;
  if (a3 + 23 >= 0xFFFF00)
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

  if (a3 < 0xE9)
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_257CE0AB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x10)
  {
    return v1 - 15;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_257CE0AC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 15;
  }

  return result;
}

unint64_t sub_257CE0AF8()
{
  result = qword_27F8F75D8;
  if (!qword_27F8F75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F75E0, qword_257EE17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75D8);
  }

  return result;
}

unint64_t sub_257CE0B60()
{
  result = qword_27F8F75E8;
  if (!qword_27F8F75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75E8);
  }

  return result;
}

unint64_t sub_257CE0BB8()
{
  result = qword_27F8F75F0;
  if (!qword_27F8F75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F75F0);
  }

  return result;
}

void *sub_257CE0C0C@<X0>(void *a2@<X8>)
{
  sub_257D54F8C(v23);
  v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v6 = qword_281544FE0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_281548348;
  swift_beginAccess();
  v8 = v7[12];
  v9 = v7[13];
  v22[0] = v7[11];
  v22[1] = v8;
  v22[2] = v9;
  v10 = qword_2815447E0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  if (!*(v21[0] + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_257C03F6C(v5, v4);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    v19 = v23;
    return memcpy(a2, v19, 0x128uLL);
  }

  sub_257C63C04(v23);
  memcpy(v22, (*(v21[0] + 56) + 296 * v16), 0x128uLL);
  sub_257C09C58(v22, v21);

  v19 = v22;
  return memcpy(a2, v19, 0x128uLL);
}

void sub_257CE0E2C(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v24);
    *&v25[95] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    v14 = v24;
    v23[0] = v24;
    memcpy(&v23[1], v25, 0x127uLL);
    sub_257D58DA0(v12, v11, v23, 0);

    memcpy(v26, v23, sizeof(v26));
    sub_257C63C04(v26);
    if (v14)
    {
      v15 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
      swift_beginAccess();
      v22 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v16 = sub_257ECF110();
      MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
      *&v21[-16] = &v22;
      *&v21[-8] = v15;
      sub_257ECFD40();
      (*(v4 + 8))(v10, v3);
      swift_endAccess();
    }
  }
}

uint64_t sub_257CE1094(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[14] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D523FC(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

void sub_257CE11EC(double a1, double a2, double a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v15)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v28);
    *&v29[135] = a1;
    *&v29[143] = a2;
    *&v29[151] = a3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v17 = qword_281548348;
    v18 = v28;
    v27[0] = v28;
    memcpy(&v27[1], v29, 0x127uLL);
    sub_257D58DA0(v16, v15, v27, 0);

    memcpy(v30, v27, sizeof(v30));
    sub_257C63C04(v30);
    if (v18)
    {
      v19 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
      swift_beginAccess();
      *v26 = a1;
      *&v26[1] = a2;
      *&v26[2] = a3;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v20 = sub_257ECF110();
      MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
      *&v25[-16] = v26;
      *&v25[-8] = v19;
      sub_257ECFD40();
      (*(v8 + 8))(v14, v7);
      swift_endAccess();
    }
  }
}

double sub_257CE146C(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[161] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

double sub_257CE16D0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[175] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

double sub_257CE1934(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[159] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

double sub_257CE1B98(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[160] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE1E14(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[11] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D59094(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

void sub_257CE1F54(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v24);
    *&v25[79] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    v14 = v24;
    v23[0] = v24;
    memcpy(&v23[1], v25, 0x127uLL);
    sub_257D58DA0(v12, v11, v23, 0);

    memcpy(v26, v23, sizeof(v26));
    sub_257C63C04(v26);
    if (v14)
    {
      v15 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
      swift_beginAccess();
      v22 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v16 = sub_257ECF110();
      MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
      *&v21[-16] = &v22;
      *&v21[-8] = v15;
      sub_257ECFD40();
      (*(v4 + 8))(v10, v3);
      swift_endAccess();
    }
  }
}

uint64_t sub_257CE21BC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[71] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D71A04(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE2304(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[72] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D71A24(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CE244C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[73] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D719C4(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

void sub_257CE2594(double a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v24);
    *&v25[103] = a1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    v14 = v24;
    v23[0] = v24;
    memcpy(&v23[1], v25, 0x127uLL);
    sub_257D58DA0(v12, v11, v23, 0);

    memcpy(v26, v23, sizeof(v26));
    sub_257C63C04(v26);
    if (v14)
    {
      v15 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
      swift_beginAccess();
      v22 = a1;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v16 = sub_257ECF110();
      MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
      *&v21[-16] = &v22;
      *&v21[-8] = v15;
      sub_257ECFD40();
      (*(v4 + 8))(v10, v3);
      swift_endAccess();
    }
  }
}

double sub_257CE27FC(char a1, uint64_t a2)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  *&result = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v14)
  {
    v25[1] = a2;
    v15 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v28);
    v16 = a1 & 1;
    v29[77] = v16;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v17 = qword_281548348;
    v18 = v28;
    v27[0] = v28;
    memcpy(&v27[1], v29, 0x127uLL);
    sub_257D58DA0(v15, v14, v27, 0);

    memcpy(v30, v27, 0x128uLL);
    sub_257C63C04(v30);
    if (v18)
    {
      v19 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
      swift_beginAccess();
      v26 = v16;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v20 = sub_257ECF110();
      MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
      v25[-2] = &v26;
      v25[-1] = v19;
      sub_257ECFD40();
      (*(v6 + 8))(v13, v5);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE2A58(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[15] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D4F488(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

double sub_257CE2B98(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[127] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE2DFC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[74] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D71A84(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

char *sub_257CE2F44(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[23] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D59960(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

uint64_t sub_257CE3084(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[5] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = LOBYTE(__dst[0]);
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D5874C(__dst[5]);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

uint64_t sub_257CE31C0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[75] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D71A44(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

double sub_257CE3308(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[240] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

double sub_257CE356C(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[239] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

double sub_257CE37D0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[241] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

void sub_257CE3A34(double a1, double a2, double a3)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v15)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v28);
    *&v29[215] = a1;
    *&v29[223] = a2;
    *&v29[231] = a3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v17 = qword_281548348;
    v18 = v28;
    v27[0] = v28;
    memcpy(&v27[1], v29, 0x127uLL);
    sub_257D58DA0(v16, v15, v27, 0);

    memcpy(v30, v27, sizeof(v30));
    sub_257C63C04(v30);
    if (v18)
    {
      v19 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
      swift_beginAccess();
      *v26 = a1;
      *&v26[1] = a2;
      *&v26[2] = a3;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v20 = sub_257ECF110();
      MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
      *&v25[-16] = v26;
      *&v25[-8] = v19;
      sub_257ECFD40();
      (*(v8 + 8))(v14, v7);
      swift_endAccess();
    }
  }
}

uint64_t sub_257CE3CB8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[24] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D5A210(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

uint64_t sub_257CE3DF8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v8);
    v9[76] = v4 & 1;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = v8;
    __src[0] = v8;
    memcpy(&__src[1], v9, 0x127uLL);
    sub_257D58DA0(v5, v3, __src, 0);

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_257C63C04(__dst);
    if (v6)
    {
      sub_257D71A64(v4 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      __src[0] = v4 & 1;
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

char *sub_257CE3F40(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[25] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D519D8(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

uint64_t sub_257CE4080(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(__src);

    __src[26] = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, __src, sizeof(__dst));
    v6 = __dst[0];
    memcpy(v7, __src, sizeof(v7));
    sub_257C09C58(__dst, v10);
    sub_257D58DA0(v5, v3, v7, 0);

    memcpy(v10, v7, sizeof(v10));
    sub_257C63C04(v10);
    if (v6 == 1)
    {
      sub_257D57C64(v4, 1);
    }

    memcpy(v7, __src, sizeof(v7));
    return sub_257C63C04(v7);
  }

  return result;
}

double sub_257CE41C0(char a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

    sub_257CE0C0C(&v26);
    v14 = a1 & 1;
    v27[242] = v14;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v15 = qword_281548348;
    v16 = v26;
    v25[0] = v26;
    memcpy(&v25[1], v27, 0x127uLL);
    sub_257D58DA0(v13, v12, v25, 0);

    memcpy(v28, v25, 0x128uLL);
    sub_257C63C04(v28);
    if (v16)
    {
      v17 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
      swift_beginAccess();
      v24 = v14;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *&v23[-16] = &v24;
      *&v23[-8] = v17;
      sub_257ECFD40();
      (*(v4 + 8))(v11, v3);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_257CE4424(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0x13)
  {
    if (*a1 > 0x15u)
    {
      if (v2 == 22)
      {
        if (v3 != 22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v2 != 23)
        {
          goto LABEL_28;
        }

        if (v3 != 23)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v2 == 20)
    {
      if (v3 != 20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v2 != 21)
      {
        goto LABEL_28;
      }

      if (v3 != 21)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    v4 = 1;
    return v4 & 1;
  }

  if (*a1 > 0x11u)
  {
    if (v2 == 18)
    {
      if (v3 != 18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v2 != 19)
      {
        goto LABEL_28;
      }

      if (v3 != 19)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

  if (v2 == 16)
  {
    if (v3 != 16)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v2 == 17)
  {
    if (v3 == 17)
    {
      goto LABEL_27;
    }

LABEL_29:
    v4 = 0;
    return v4 & 1;
  }

LABEL_28:
  if ((v3 & 0xF8) == 0x10)
  {
    goto LABEL_29;
  }

  v6 = Control.rawValue.getter();
  v8 = v7;
  if (v6 == Control.rawValue.getter() && v8 == v9)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_257ED0640();
  }

  return v4 & 1;
}

char *sub_257CE4594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (2)
    {
      v5 = *v2++;
      v4 = v5;
      switch(v5)
      {
        case 4:

          goto LABEL_8;
        default:
          v6 = sub_257ED0640();

          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_8:
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = sub_257ECF4C0();
          v8 = MGGetBoolAnswer();

          if (v8)
          {
LABEL_11:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_257BFDE34(0, *(v3 + 2) + 1, 1, v3);
            }

            v10 = *(v3 + 2);
            v9 = *(v3 + 3);
            if (v10 >= v9 >> 1)
            {
              v3 = sub_257BFDE34((v9 > 1), v10 + 1, 1, v3);
            }

            *(v3 + 2) = v10 + 1;
            v3[v10 + 32] = v4;
          }

          if (--v1)
          {
            continue;
          }

          return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_257CE492C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7600, &unk_257EE1A70);
  result = sub_257ECDB60();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_33;
    }

    v6 = *(v1 + v2++ + 32);
    if ((v6 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_257BFCB14((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + v8 + 32) = v6;
      v2 = v5;
    }
  }

  result = sub_257ECDB60();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      goto LABEL_34;
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_35;
    }

    v14 = *(v9 + v10++ + 32);
    if ((v14 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257BFCB14((v15 > 1), v16 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + v16 + 32) = v14;
      v10 = v13;
    }
  }

  result = sub_257ECDB60();
  v17 = result;
  v18 = 0;
  v19 = *(result + 16);
  v20 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    if (v18 >= v19)
    {
      goto LABEL_36;
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_37;
    }

    v22 = *(v17 + v18++ + 32);
    if ((v22 & 0xF8) != 0x10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_257BFCB14((v23 > 1), v24 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + v24 + 32) = v22;
      v18 = v21;
    }
  }

  return v4;
}

unint64_t sub_257CE4C1C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257CE4C78()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_activityCreatedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___filtersCollectionCustomizationViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___peopleDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___doorDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___objectUnderstandingSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___imageCaptionsSettingsViewController) = 0;
  v1 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_languageTranslator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___pointSpeakSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___textDetectionSettingsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___detectionModeUniversalSettingsViewController) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_tableView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemYellowColor];
  [v6 setTintColor_];

  *(v0 + v3) = v6;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController____lazy_storage___dataSource) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CE4E20(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return sub_257CD9FE0(a1);
  }
}

uint64_t sub_257CE4E50(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

uint64_t sub_257CE4F50(void *a1)
{
  result = sub_257ECCEA0();
  if (result != 2 && result != 1)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      v3 = [a1 numberOfRowsInSection_];
      if (qword_281544FE0 != -1)
      {
        v4 = v3;
        swift_once();
        v3 = v4;
      }

      return v3 > 0;
    }
  }

  return result;
}

uint64_t sub_257CE4FEC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257CE50DC()
{
  result = qword_27F8F7610;
  if (!qword_27F8F7610)
  {
    sub_257ECCEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7610);
  }

  return result;
}

unint64_t sub_257CE5150()
{
  result = qword_27F8F7620;
  if (!qword_27F8F7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7620);
  }

  return result;
}

unint64_t sub_257CE51A4()
{
  result = qword_27F8F7628;
  if (!qword_27F8F7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7628);
  }

  return result;
}

uint64_t sub_257CE528C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257CE5310()
{
  result = qword_27F8F76C0;
  if (!qword_27F8F76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76C0);
  }

  return result;
}

unint64_t sub_257CE5368()
{
  result = qword_27F8F76C8;
  if (!qword_27F8F76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76C8);
  }

  return result;
}

unint64_t sub_257CE5428()
{
  result = qword_27F8F76D0;
  if (!qword_27F8F76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F76D0);
  }

  return result;
}

uint64_t sub_257CE547C()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F60);
  __swift_project_value_buffer(v0, qword_27F912F60);
  return sub_257ECCA00();
}

uint64_t sub_257CE54E0()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257CE55D0, v3, v2);
}

uint64_t sub_257CE55D0()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257CE56B0;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257CE56B0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257CE57F0;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CE57F0()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DescribeThisIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257CE596C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4608 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257CE5A14(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CE5AE8, v3, v2);
}

uint64_t sub_257CE5AE8()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE1C60, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257CE5BFC(uint64_t a1)
{
  v2 = sub_257CE5428();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257CE5C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257CE54E0();
}

void sub_257CE5CF4(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor_22;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

void sub_257CE5F80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v40 = *(v18 - 8);
  v41 = v18;
  *&v23 = MEMORY[0x28223BE20](v18, v19, v20, v21, v22).n128_u64[0];
  v25 = &v39 - v24;
  v43.receiver = v1;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_viewDidLoad, v23);
  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView];
  [v26 setDataSource_];
  [v26 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = sub_257ECF4C0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  type metadata accessor for UIStepperLengthCell(0);
  v29 = swift_getObjCClassFromMetadata();
  v30 = sub_257ECF4C0();
  [v26 registerClass:v29 forCellReuseIdentifier:v30];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v1 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_7;
  }

  v32 = v31;
  [v31 addSubview_];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v34 = v33;
  sub_257EB6FD8(v33, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v35 = [objc_opt_self() mainRunLoop];
  v42 = v35;
  v36 = sub_257ED0080();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v9);

  (*(v11 + 8))(v17, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v37 = v41;
  v38 = sub_257ECDE50();

  (*(v40 + 8))(v25, v37);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = v38;
}

void sub_257CE64D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15[7] == 1)
    {
      [v11 beginUpdates];
      MEMORY[0x259C6F970](1, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_257ED6D30;
      (*(v3 + 16))(v13 + v12, v9, v2);
      v14 = sub_257ECF7F0();

      [v11 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

      [v11 endUpdates];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
    }
  }
}

void sub_257CE676C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257CE6928(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286904EB0[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v23 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v7 + 16) + 1, 1);
        v7 = v23;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2964((v8 > 1), v9 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v16 = sub_257ECF4C0();
  }

  else
  {
    v16 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, v16, a3, a1);

  return v17;
}

id sub_257CE6BD4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286904ED8[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v18 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2964(0, *(v5 + 16) + 1, 1);
        v5 = v18;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF2964((v6 > 1), v7 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

id sub_257CE6EFC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v91 - v10;
  v12 = sub_257ECCEA0();
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v39 = 3;
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v39 = 2;
  }

  else
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = sub_257ECF4C0();
        v14 = sub_257ECCE30();
        v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:v14];

        type metadata accessor for UIStepperLengthCell(0);
        if (swift_dynamicCastClass())
        {
          v16 = qword_281544FE0;
          v15 = v15;
          if (v16 != -1)
          {
            swift_once();
          }

          v17 = qword_281548348;
          v18 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
          swift_beginAccess();
          v19 = v18[1];
          v20 = v18[2];
          v94 = *v18;
          v95 = v19;
          v96 = v20;
          v21 = qword_2815447E0;

          if (v21 != -1)
          {
            v22 = swift_once();
          }

          MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
          v91[-2] = &v94;
          sub_257ECFD50();

          v27 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
          v28 = swift_beginAccess();
          v29 = *(v27 + 8);
          v30 = *(v27 + 16);
          v91[0] = *v27;
          v91[1] = v29;
          v92 = v30;
          MEMORY[0x28223BE20](v28, v31, v32, v33, v34);
          v91[-2] = v91;

          sub_257ECFD50();

          v35 = v93;
          v36 = objc_opt_self();
          v37 = &selRef_feet;
          if (!v35)
          {
            v37 = &selRef_meters;
          }

          v38 = [v36 *v37];
          sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
          sub_257ECC740();
          sub_257D3DB54(v11, sub_257CE7A0C, 0);

          (*(v5 + 8))(v11, v4);
        }

        return v15;
      }

LABEL_15:
      v39 = 4;
      goto LABEL_18;
    }

    v39 = 0;
  }

LABEL_18:
  v40 = sub_257ECF4C0();
  v41 = sub_257ECCE30();
  v15 = [a1 dequeueReusableCellWithIdentifier:v40 forIndexPath:v41];

  if (v39 > 2)
  {
    if (v39 == 3)
    {
      v44 = [v15 textLabel];
      if (v44)
      {
        v45 = v44;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v47 = [objc_opt_self() bundleForClass_];
        v48 = sub_257ECF4C0();
        v49 = sub_257ECF4C0();
        v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

        if (!v50)
        {
          sub_257ECF500();
          v50 = sub_257ECF4C0();
        }

        [v45 setText_];
      }

      v51 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v52 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled;
      swift_beginAccess();
      v53 = *(v52 + 8);
      v54 = *(v52 + 16);
      v94 = *v52;
      v95 = v53;
      LOBYTE(v96) = v54;
      v55 = qword_2815447E0;

      if (v55 != -1)
      {
        v56 = swift_once();
      }

      MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
      v91[-2] = &v94;
      sub_257ECFD50();

      [v51 setOn_];
      [v51 addTarget:v2 action:sel_didToggleActionsSwitch_ forControlEvents:4096];
      [v15 setAccessoryView_];
      [v15 setAccessoryType_];
    }

    return v15;
  }

  if (v39)
  {
    v61 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks);
    v62 = sub_257ECCE60();
    if ((v62 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v62 < *(v61 + 16))
    {
      v41 = *(v61 + v62 + 32);
      v63 = [v15 textLabel];
      if (v63)
      {
        v64 = v63;
        sub_257C69F7C(v41);
        v65 = sub_257ECF4C0();

        [v64 setText_];
      }

      v39 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_55:
    swift_once();
LABEL_38:
    v66 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v67 = v66[1];
    v68 = v66[2];
    v94 = *v66;
    v95 = v67;
    v96 = v68;
    v69 = qword_2815447E0;

    if (v69 != -1)
    {
      v70 = swift_once();
    }

    MEMORY[0x28223BE20](v70, v71, v72, v73, v74);
    v91[-2] = &v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
    sub_257ECFD50();

    v75 = sub_257C592D0(v41, v91[0]);

    [v39 setOn_];
    v76 = v39;
    [v76 setTag_];
    [v76 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v15 setAccessoryView_];

    [v15 setAccessoryType_];
    return v15;
  }

  v42 = sub_257ECCE60();
  if (v42)
  {
    if (v42 != 1)
    {
      return v15;
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  v77 = [v15 textLabel];
  if (v77)
  {
    v78 = v77;
    sub_257C69A6C(v43);
    v79 = sub_257ECF4C0();

    [v78 setText_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v80 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v81 = *(v80 + 8);
  v82 = *(v80 + 16);
  v94 = *v80;
  v95 = v81;
  LOBYTE(v96) = v82;
  v83 = qword_2815447E0;

  if (v83 != -1)
  {
    v84 = swift_once();
  }

  MEMORY[0x28223BE20](v84, v85, v86, v87, v88);
  v91[-2] = &v94;
  sub_257ECFD50();

  if ((v43 ^ LOBYTE(v91[0])))
  {
    v89 = 0;
  }

  else
  {
    v89 = 3;
  }

  [v15 setAccessoryType_];
  [v15 setAccessoryView_];
  return v15;
}

void sub_257CE7A0C(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
  swift_beginAccess();
  v17 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  *&v16[-16] = &v17;
  *&v16[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
}

id sub_257CE7DD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257CE85C4(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_257CE8000(void *a1)
{
  v2 = [a1 tag];
  if (v2 <= 3)
  {
    v4 = v2;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v5 = qword_2815447E0;

      if (v5 != -1)
      {
        v6 = swift_once();
      }

      MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6910, &unk_257EDB1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v4;
      sub_257EB10F4(inited);
      sub_257D59094(v25, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_2815447E0;

      if (v12 != -1)
      {
        v13 = swift_once();
      }

      MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
      sub_257ECFD50();

      v18 = *(v25 + 16);
      if (v18)
      {
        v19 = (v25 + 32);
        v20 = MEMORY[0x277D84F90];
        do
        {
          v24 = *v19++;
          v23 = v24;
          if (v24 != v4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2964(0, *(v20 + 16) + 1, 1);
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_257BF2964((v21 > 1), v22 + 1, 1);
            }

            *(v20 + 16) = v22 + 1;
            *(v20 + v22 + 32) = v23;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_257D59094(v20, 1);
    }
  }

  return result;
}

double sub_257CE83E0(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = [a1 isOn];
  v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled;
  swift_beginAccess();
  v20 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *&v19[-16] = &v20;
  *&v19[-8] = v12;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  return result;
}

uint64_t sub_257CE85C4(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

void sub_257CE85F8(void *a1)
{
  v2 = sub_257ECCDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v124 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_257ECDA30();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v9, v10, v11, v12);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECCEB0();
  v121 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_257ECF120();
  v22 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v23, v24, v25, v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_257ECCE30();
  v126 = [a1 cellForRowAtIndexPath_];

  if (!v126)
  {
    return;
  }

  v30 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v30 animated:1];

  if (!sub_257ECCEA0())
  {
    v32 = sub_257ECCE60();
    if (v32)
    {
      if (v32 != 1)
      {
        goto LABEL_3;
      }

      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v120 = v33;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v115 = v3;
    v116 = v2;
    v118 = qword_281548348;
    v34 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v35 = *v34;
    v36 = *(v34 + 8);
    v117 = v34;
    v37 = *(v34 + 16);
    v130 = v35;
    v131 = v36;
    LOBYTE(v132) = v37;
    v38 = qword_2815447E0;

    if (v38 != -1)
    {
      v39 = swift_once();
    }

    v44 = qword_2815447E8;
    MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
    *(&v109 - 2) = &v130;
    v119 = v44;
    sub_257ECFD50();

    v45 = v120;
    if (v120 == v134)
    {
LABEL_33:

      return;
    }

    v46 = v117;
    swift_beginAccess();
    v134 = v45;
    v47 = sub_257ECF110();
    MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
    *(&v109 - 2) = &v134;
    *(&v109 - 1) = v46;
    sub_257ECFD40();
    v52 = *(v22 + 8);
    v113 = v22 + 8;
    v112 = v52;
    v52(v28, v125);
    swift_endAccess();
    v53 = v118;
    swift_beginAccess();
    v114 = &v109;
    v54 = v53[16];
    v55 = v53[17];
    v56 = v53[18];
    v130 = v53[15];
    v131 = v54;
    v132 = v55;
    v133 = v56;
    v111 = v56;
    MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
    *(&v109 - 2) = &v130;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    if (v128)
    {
      v110 = v128;
      v109 = v127;
      v61 = swift_beginAccess();
      v111 = &v109;
      v62 = v53[12];
      v63 = v53[13];
      v130 = v53[11];
      v131 = v62;
      v132 = v63;
      MEMORY[0x28223BE20](v61, v64, v65, v66, v67);
      *(&v109 - 2) = &v130;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
      sub_257ECFD50();
      v114 = 0;

      v68 = v129;
      if (*(*&v129 + 16))
      {
        v69 = sub_257C03F6C(v109, v110);
        v71 = v70;

        if (v71)
        {
          LODWORD(v111) = *(*(*&v68 + 56) + 296 * v69 + 78);

          v73 = *(v117 + 8);
          v74 = *(v117 + 16);
          v130 = *v117;
          v131 = v73;
          LOBYTE(v132) = v74;
          MEMORY[0x28223BE20](v72, v75, v76, v77, v78);
          *(&v109 - 2) = &v130;

          v79 = v114;
          sub_257ECFD50();
          v114 = v79;

          if (v111 != LOBYTE(v129))
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v130) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
          }

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      v114 = 0;
    }

LABEL_23:
    ++v121;
    MEMORY[0x259C6F970](byte_286904F20, 0);
    v80 = sub_257ECCE30();
    v81 = [a1 cellForRowAtIndexPath_];

    if (v81)
    {
      [v81 setAccessoryType_];
    }

    v82 = *v121;
    (*v121)(v21, v15);
    MEMORY[0x259C6F970](byte_286904F21, 0);
    v83 = sub_257ECCE30();
    v84 = [a1 cellForRowAtIndexPath_];

    if (v84)
    {
      [v84 setAccessoryType_];
    }

    v82(v21, v15);
    [v126 setAccessoryType_];
    sub_257ECD420();
    v85 = sub_257ECDA20();
    v86 = sub_257ECFBD0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v120;
      v88 = swift_slowAlloc();
      *v88 = 134217984;
      *(v88 + 4) = v87;
      _os_log_impl(&dword_257BAC000, v85, v86, "New people detection unit: %ld", v88, 0xCu);
      MEMORY[0x259C74820](v88, -1, -1);
    }

    (*(v122 + 8))(v14, v123);
    if (v120)
    {
      v89 = 6.0;
    }

    else
    {
      v89 = 2.0;
    }

    v90 = v118;
    v91 = v118 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
    swift_beginAccess();
    v129 = v89;
    v92 = sub_257ECF110();
    MEMORY[0x28223BE20](v92, v93, v94, v95, v96);
    *(&v109 - 2) = &v129;
    *(&v109 - 1) = v91;
    sub_257ECFD40();
    v97 = v90;
    v98 = v125;
    v99 = v112;
    v112(v28, v125);
    swift_endAccess();
    v100 = v97 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
    swift_beginAccess();
    v129 = v89;
    v101 = sub_257ECF110();
    MEMORY[0x28223BE20](v101, v102, v103, v104, v105);
    *(&v109 - 2) = &v129;
    *(&v109 - 1) = v100;
    sub_257ECFD40();
    v99(v28, v98);
    swift_endAccess();
    [a1 beginUpdates];
    v130 = &unk_286904F28;
    sub_257C108DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
    sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
    v106 = v124;
    v107 = v116;
    sub_257ED0180();
    v108 = sub_257ECCDE0();
    (*(v115 + 8))(v106, v107);
    [a1 reloadSections:v108 withRowAnimation:100];

    [a1 endUpdates];
    goto LABEL_33;
  }

LABEL_3:
  v31 = v126;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t type metadata accessor for MFReaderDynamicTypeSizeStepper(uint64_t a1)
{
  result = qword_27F8F7700;
  if (!qword_27F8F7700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CE9344(uint64_t a1)
{
  sub_257CE9478(319, &qword_27F8F7710, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_257CE9428();
    if (v2 <= 0x3F)
    {
      sub_257CE9478(319, &qword_27F8F5B68, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257CE9428()
{
  if (!qword_27F8F7718)
  {
    v0 = sub_257ECEE90();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7718);
    }
  }
}

void sub_257CE9478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_257ECE1D0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_257CE94F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  sub_257BE401C(v1 + *(v18 + 24), v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v17, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_257CE96FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v211 = a2;
  v3 = sub_257ECE1D0();
  v246 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v232 = v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58, &qword_257EE1E00);
  MEMORY[0x28223BE20](v230, v9, v10, v11, v12);
  v235 = v194 - v13;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7738, &qword_257EE1E08);
  MEMORY[0x28223BE20](v233, v14, v15, v16, v17);
  v210 = v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v231 = v194 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v237 = v194 - v30;
  v245 = sub_257ECE750();
  v251 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v31, v32, v33, v34);
  v243 = v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0, &qword_257EE1E10);
  MEMORY[0x28223BE20](v240, v36, v37, v38, v39);
  v41 = v194 - v40;
  v42 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45, v46, v47, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7740, &qword_257EE1E18);
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v55 = v194 - v54;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7748, &qword_257EE1E20);
  v249 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v56, v57, v58, v59);
  v238 = v194 - v60;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7750, &qword_257EE1E28);
  v250 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v61, v62, v63, v64);
  v241 = v194 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7758, &qword_257EE1E30);
  MEMORY[0x28223BE20](v66 - 8, v67, v68, v69, v70);
  v208 = v194 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
  v209 = v194 - v77;
  MEMORY[0x28223BE20](v78, v79, v80, v81, v82);
  v207 = v194 - v83;
  MEMORY[0x28223BE20](v84, v85, v86, v87, v88);
  v244 = v194 - v89;
  sub_257CEB44C(a1, v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = *(v43 + 80);
  v91 = (v90 + 16) & ~v90;
  v226 = v90;
  v225 = v91 + v44;
  v92 = swift_allocObject();
  v228 = v91;
  v229 = v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257CEB4B0(v229, v92 + v91);
  v252 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7760, &qword_257EE1E38);
  v227 = sub_257CEB594();
  sub_257ECEEA0();
  v94 = (a1 + *(v42 + 20));
  v96 = *v94;
  v95 = v94[1];
  v224 = v96;
  *&v256 = v96;
  *(&v256 + 1) = v95;
  v223 = v95;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  sub_257ECEE60();
  v234 = v42;
  LOBYTE(v42) = v254 == *(a1 + *(v42 + 28));
  KeyPath = swift_getKeyPath();
  v98 = swift_allocObject();
  *(v98 + 16) = v42;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7780, &qword_257EE1E78);
  v100 = &v55[*(v99 + 36)];
  *v100 = KeyPath;
  v100[1] = sub_257C133DC;
  v100[2] = v98;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7788, &qword_257EE1E80);
  v55[*(v221 + 36)] = 0;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7790, &qword_257EE1E88);
  v101 = &v55[*(v220 + 36)];
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7798, &qword_257EE1E90);
  v102 = *(v219 + 28);
  v103 = *MEMORY[0x277CDF420];
  v104 = sub_257ECDFA0();
  v105 = *(v104 - 8);
  v106 = *(v105 + 104);
  v218 = v103;
  v217 = v104;
  v216 = v106;
  v215 = v105 + 104;
  (v106)(v101 + v102, v103);
  *v101 = swift_getKeyPath();
  v107 = sub_257ECED90();
  v108 = swift_getKeyPath();
  v248 = v49;
  v109 = &v55[*(v49 + 36)];
  *v109 = v108;
  v109[1] = v107;
  v111 = v246 + 104;
  v110 = *(v246 + 104);
  v213 = *MEMORY[0x277CDF988];
  v212 = v110;
  v110(v41);
  v112 = sub_257CEBA78(&qword_27F8F67F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v236 = v3;
  v214 = v112;
  result = sub_257ECF450();
  if (result)
  {
    v114 = sub_257CEB76C();
    v206 = v111;
    v203 = v93;
    v115 = sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0, &qword_257EE1E10, MEMORY[0x277D84338]);
    v247 = v41;
    v202 = a1;
    v116 = v238;
    v117 = v248;
    v118 = v240;
    sub_257ECEBB0();
    sub_257BE4084(v247, &qword_27F8F67E0, &qword_257EE1E10);
    sub_257BE4084(v55, &qword_27F8F7740, &qword_257EE1E18);
    v204 = v99;
    v119 = v243;
    sub_257ECE740();
    *&v256 = v117;
    *(&v256 + 1) = v118;
    v201 = v114;
    *&v257 = v114;
    *(&v257 + 1) = v115;
    v200 = v115;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = sub_257CEBA78(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v205 = v55;
    v122 = v121;
    v123 = v241;
    v124 = v249;
    v125 = v239;
    v126 = v245;
    sub_257ECEB60();
    v127 = *(v251 + 8);
    v251 += 8;
    v199 = v127;
    v127(v119, v126);
    v128 = *(v124 + 8);
    v249 = v124 + 8;
    v198 = v128;
    v128(v116, v125);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v197 = objc_opt_self();
    v130 = [v197 bundleForClass_];
    v131 = sub_257ECF4C0();
    v132 = sub_257ECF4C0();
    v133 = [v130 localizedStringForKey:v131 value:0 table:v132];

    v134 = sub_257ECF500();
    v136 = v135;

    v137 = v122;
    v138 = v205;
    v254 = v134;
    v255 = v136;
    *&v256 = v125;
    *(&v256 + 1) = v126;
    *&v257 = OpaqueTypeConformance2;
    *(&v257 + 1) = v137;
    v194[1] = v137;
    v139 = swift_getOpaqueTypeConformance2();
    v140 = sub_257BDAB08();
    v141 = v242;
    v194[2] = v139;
    v196 = v140;
    sub_257ECEBF0();

    v142 = *(v250 + 8);
    v250 += 8;
    v195 = v142;
    v142(v123, v141);
    v143 = v235;
    sub_257ECEF70();
    v144 = sub_257ECED60();
    v145 = sub_257ECE930();
    v146 = &v143[*(v230 + 36)];
    *v146 = v144;
    v146[8] = v145;
    v147 = v232;
    v148 = v202;
    sub_257CE94F4(v232);
    sub_257ECE1C0();
    v149 = v236;
    (*(v246 + 8))(v147, v236);
    sub_257ECF060();
    sub_257ECE080();
    v150 = v143;
    v151 = v231;
    sub_257C0DD14(v150, v231, &qword_27F8F5C58, &qword_257EE1E00);
    v152 = (v151 + *(v233 + 36));
    v153 = v257;
    *v152 = v256;
    v152[1] = v153;
    v152[2] = v258;
    v154 = v237;
    sub_257C0DD14(v151, v237, &qword_27F8F7738, &qword_257EE1E08);
    v155 = v229;
    sub_257CEB44C(v148, v229);
    v156 = swift_allocObject();
    v157 = sub_257CEB4B0(v155, v156 + v228);
    MEMORY[0x28223BE20](v157, v158, v159, v160, v161);
    v194[-2] = v148;
    sub_257ECEEA0();
    v254 = v224;
    v255 = v223;
    sub_257ECEE60();
    v162 = v247;
    LOBYTE(v147) = v253 == *(v148 + *(v234 + 32));
    v163 = swift_getKeyPath();
    v164 = swift_allocObject();
    *(v164 + 16) = v147;
    v165 = (v138 + *(v204 + 36));
    *v165 = v163;
    v165[1] = sub_257C13448;
    v165[2] = v164;
    *(v138 + *(v221 + 36)) = 0;
    v166 = (v138 + *(v220 + 36));
    v216(v166 + *(v219 + 28), v218, v217);
    *v166 = swift_getKeyPath();
    v167 = sub_257ECED90();
    v168 = swift_getKeyPath();
    v169 = (v138 + *(v248 + 36));
    *v169 = v168;
    v169[1] = v167;
    v212(v162, v213, v149);
    result = sub_257ECF450();
    if (result)
    {
      v170 = ObjCClassFromMetadata;
      v171 = v238;
      sub_257ECEBB0();
      sub_257BE4084(v162, &qword_27F8F67E0, &qword_257EE1E10);
      sub_257BE4084(v138, &qword_27F8F7740, &qword_257EE1E18);
      v172 = v243;
      sub_257ECE740();
      v173 = v241;
      v174 = v239;
      v175 = v245;
      sub_257ECEB60();
      v199(v172, v175);
      v198(v171, v174);
      v176 = [v197 bundleForClass_];
      v177 = sub_257ECF4C0();
      v178 = sub_257ECF4C0();
      v179 = [v176 localizedStringForKey:v177 value:0 table:v178];

      v180 = sub_257ECF500();
      v182 = v181;

      v254 = v180;
      v255 = v182;
      v183 = v207;
      v184 = v242;
      sub_257ECEBF0();

      v195(v173, v184);
      v185 = v244;
      v186 = v209;
      sub_257BB3F70(v244, v209);
      v187 = v210;
      sub_257BE401C(v154, v210, &qword_27F8F7738, &qword_257EE1E08);
      v188 = v208;
      sub_257BB3F70(v183, v208);
      v189 = v211;
      *v211 = 0;
      *(v189 + 8) = 1;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7800, &qword_257EE1F08);
      sub_257BB3F70(v186, v189 + v190[12]);
      v191 = v189 + v190[16];
      *v191 = 0;
      v191[8] = 1;
      sub_257BE401C(v187, v189 + v190[20], &qword_27F8F7738, &qword_257EE1E08);
      v192 = v189 + v190[24];
      *v192 = 0;
      v192[8] = 1;
      sub_257BB3F70(v188, v189 + v190[28]);
      v193 = v189 + v190[32];
      *v193 = 0;
      v193[8] = 1;
      sub_257BB3FE0(v183);
      sub_257BE4084(v154, &qword_27F8F7738, &qword_257EE1E08);
      sub_257BB3FE0(v185);
      sub_257BB3FE0(v188);
      sub_257BE4084(v187, &qword_27F8F7738, &qword_257EE1E08);
      return sub_257BB3FE0(v186);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_257CEA98C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8, &unk_257EE1D60);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v9 = (v0 + *(v8 + 20));
  v11 = *v9;
  v10 = v9[1];
  v18 = *v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  result = sub_257ECEE60();
  if (v15 != *(v0 + *(v8 + 28)))
  {
    v18 = v11;
    v19 = v10;
    sub_257ECC3F0();
    result = sub_257ECEE60();
    if (__OFSUB__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = v11;
      v16 = v10;
      v14 = v17 - 1;
      sub_257ECEE70();

      v18 = v11;
      v19 = v10;
      sub_257ECEE60();
      v13 = v15;
      sub_257ECEF50();
      sub_257CEB218(v13);
      return sub_257BE4084(v7, &qword_27F8F76F8, &unk_257EE1D60);
    }
  }

  return result;
}

__n128 sub_257CEAB08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE10();
  v5 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v8 = *(a1 + *(v5 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  sub_257ECEE60();
  if (v15 == *(a1 + *(v5 + 28)))
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 1.0;
  }

  sub_257ECF060();
  sub_257ECE2F0();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  result = v11;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  return result;
}

void *sub_257CEAC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8, &unk_257EE1D60);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v9 = (v0 + *(v8 + 20));
  v11 = *v9;
  v10 = v9[1];
  v18 = *v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  result = sub_257ECEE60();
  if (v15 != *(v0 + *(v8 + 32)))
  {
    v18 = v11;
    v19 = v10;
    sub_257ECC3F0();
    result = sub_257ECEE60();
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = v11;
      v16 = v10;
      v14 = v17 + 1;
      sub_257ECEE70();

      v18 = v11;
      v19 = v10;
      sub_257ECEE60();
      v13 = v15;
      sub_257ECEF50();
      sub_257CEB218(v13);
      return sub_257BE4084(v7, &qword_27F8F76F8, &unk_257EE1D60);
    }
  }

  return result;
}

__n128 sub_257CEADAC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE10();
  v5 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v8 = *(a1 + *(v5 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  sub_257ECEE60();
  if (v15 == *(a1 + *(v5 + 32)))
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 1.0;
  }

  sub_257ECF060();
  sub_257ECE2F0();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  result = v11;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_257CEAED4(uint64_t a1)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8, &unk_257EE1D60);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = v27 - v22;
  sub_257ECEF50();
  MEMORY[0x259C71A50](v17);
  sub_257BE4084(v23, &qword_27F8F76F8, &unk_257EE1D60);
  (*(v3 + 32))(v9, v16, v2);
  v24 = (*(v3 + 88))(v9, v2);
  v25 = 0;
  if (v24 != *MEMORY[0x277CDF9F8])
  {
    if (v24 == *MEMORY[0x277CDF9E0])
    {
      v25 = 1;
    }

    else if (v24 == *MEMORY[0x277CDF9E8])
    {
      v25 = 2;
    }

    else if (v24 == *MEMORY[0x277CDF9D8])
    {
      v25 = 3;
    }

    else if (v24 == *MEMORY[0x277CDF9F0])
    {
      v25 = 4;
    }

    else if (v24 == *MEMORY[0x277CDFA00])
    {
      v25 = 5;
    }

    else if (v24 == *MEMORY[0x277CDFA10])
    {
      v25 = 6;
    }

    else
    {
      if (v24 != *MEMORY[0x277CDF988])
      {
        if (v24 == *MEMORY[0x277CDF998])
        {
          v25 = 8;
          goto LABEL_24;
        }

        if (v24 == *MEMORY[0x277CDF9A8])
        {
          v25 = 9;
          goto LABEL_24;
        }

        if (v24 == *MEMORY[0x277CDF9B8])
        {
          v25 = 10;
          goto LABEL_24;
        }

        if (v24 == *MEMORY[0x277CDF9D0])
        {
          v25 = 11;
          goto LABEL_24;
        }

        (*(v3 + 8))(v9, v2);
      }

      v25 = 7;
    }
  }

LABEL_24:
  v28 = *(a1 + *(type metadata accessor for MFReaderDynamicTypeSizeStepper(0) + 20));
  v27[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7730, &qword_257EE1DF8);
  return sub_257ECEE70();
}

void sub_257CEB218(unint64_t a1)
{
  v2 = sub_257ECE1D0();
  v8 = MEMORY[0x28223BE20](v2, v3, v2, v4, v5);
  if (a1 <= 0xB)
  {
    (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_279854398 + a1), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8, &unk_257EE1D60);
    sub_257ECEF40();
  }
}

uint64_t sub_257CEB30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1 - 8, a2, a3, a4, a5);
  *a6 = sub_257ECE500();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7720, &unk_257EE1DE0);
  sub_257CE96FC(v6, (a6 + *(v10 + 44)));
  sub_257CEB44C(v6, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_257CEB4B0(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7728, &qword_257EE1DF0);
  v14 = (a6 + *(result + 36));
  *v14 = sub_257CEB514;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

uint64_t sub_257CEB44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CEB4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CEB514()
{
  v1 = *(type metadata accessor for MFReaderDynamicTypeSizeStepper(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_257CEAED4(v2);
}

unint64_t sub_257CEB594()
{
  result = qword_27F8F7768;
  if (!qword_27F8F7768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7760, &qword_257EE1E38);
    sub_257CEB620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7768);
  }

  return result;
}

unint64_t sub_257CEB620()
{
  result = qword_27F8F7770;
  if (!qword_27F8F7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7778, &qword_257EE1E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7770);
  }

  return result;
}

uint64_t sub_257CEB6A4(uint64_t a1)
{
  v2 = sub_257ECDFA0();
  v6 = MEMORY[0x28223BE20](v2, v3, v2, v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return MEMORY[0x259C70EB0](v8);
}

unint64_t sub_257CEB76C()
{
  result = qword_27F8F77A0;
  if (!qword_27F8F77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7740, &qword_257EE1E18);
    sub_257CEB824();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77A0);
  }

  return result;
}

unint64_t sub_257CEB824()
{
  result = qword_27F8F77A8;
  if (!qword_27F8F77A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7790, &qword_257EE1E88);
    sub_257CEB8DC();
    sub_257BD2D4C(&qword_27F8F77F0, &qword_27F8F7798, &qword_257EE1E90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77A8);
  }

  return result;
}

unint64_t sub_257CEB8DC()
{
  result = qword_27F8F77B0;
  if (!qword_27F8F77B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7788, &qword_257EE1E80);
    sub_257CEB994();
    sub_257BD2D4C(&qword_27F8F77E0, &qword_27F8F77E8, &qword_257EEEFB0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77B0);
  }

  return result;
}

unint64_t sub_257CEB994()
{
  result = qword_27F8F77B8;
  if (!qword_27F8F77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7780, &qword_257EE1E78);
    sub_257BD2D4C(&qword_27F8F77C0, &qword_27F8F77C8, &qword_257EE1EF8, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8, &qword_257EE1F00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F77B8);
  }

  return result;
}

uint64_t sub_257CEBA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for MFReaderDynamicTypeSizeStepper(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8, &unk_257EE1D60) + 32);
  v4 = sub_257ECE1D0();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5(v2 + v6, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_257CEBCB8()
{
  result = qword_27F8F7808;
  if (!qword_27F8F7808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7728, &qword_257EE1DF0);
    sub_257BD2D4C(&qword_27F8F7810, &qword_27F8F7818, &qword_257EE1F10, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7808);
  }

  return result;
}

void sub_257CEBD80(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 16);
  sub_257ECC3F0();
  v5 = [v4 deviceMotion];
  if (v5)
  {
    v6 = v5;
    [v5 rotationRate];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (sqrt(v12 * v12 + v8 * v8 + v10 * v10) >= 0.05)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (byte_27F8F87B0 != 1)
  {
    return;
  }

LABEL_7:
  v13 = sub_257E003E8();
  v14 = [v13 text];

  if (v14)
  {
    v15 = sub_257ECF500();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  v23 = sub_257ECF500();
  v25 = v24;

  aBlock = v23;
  v43 = v25;
  sub_257BDAB08();
  v26 = sub_257ED0100();
  v28 = v27;

  if (v17)
  {
    if (v15 == v26 && v17 == v28)
    {

LABEL_16:
      v30 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel);
      v31 = sub_257E00504();
      *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
      v32 = objc_opt_self();
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *(v33 + 24) = v31;
      v46 = sub_257BDAD38;
      v47 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_257D231C0;
      v45 = &block_descriptor_29;
      v34 = _Block_copy(&aBlock);
      v35 = v30;
      v36 = v31;

      v37 = [v32 runningPropertyAnimatorWithDuration:0x20000 delay:v34 options:0 animations:0.2 completion:0.1];
      _Block_release(v34);

      goto LABEL_17;
    }

    v29 = sub_257ED0640();

    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_17:
  v38 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
  v39 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
  if (v39)
  {
    [v39 removeFromSuperlayer];
    v40 = *(v2 + v38);
    *(v2 + v38) = 0;
  }

  v41 = (v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  if ((*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement) || *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement + 8) != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
  {
    LOBYTE(aBlock) = 5;
    sub_257CC6340(&aBlock);
  }

  *v41 = 0;
  v41[1] = 0xE000000000000000;
}

void sub_257CEC1E8()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  v30[0] = v21;
  v30[1] = v23;
  sub_257BDAB08();
  v24 = sub_257ED0100();
  v26 = v25;

  v27 = sub_257E003E8();
  v28 = sub_257E00504();
  sub_257DFD370(v24, v26, v27, v28);

  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) == 1)
  {
    *v8 = 9;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v8, &v15[v9[5]]);
    v15[v9[6]] = 0;
    v15[v9[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v29 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
    *&v15[v9[8]] = v29;
    sub_257CBBC80(v15);
    sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
  }
}

void sub_257CEC4E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v37 - v7;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[2];
  v38 = *v9;
  v39 = v10;
  v40 = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *(&v37 - 2) = &v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v18 = sub_257C592D0(1u, v41);

  if (v18)
  {
    v19 = sub_257ECF930();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    sub_257ECF900();
    v20 = v1;
    v21 = sub_257ECF8F0();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    sub_257C3FBD4(0, 0, v8, &unk_257EE2148, v22);
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_257ECF4C0();
  v27 = sub_257ECF4C0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_257ECF500();
  v31 = v30;

  v38 = v29;
  v39 = v31;
  sub_257BDAB08();
  v32 = sub_257ED0100();
  v34 = v33;

  v35 = sub_257E003E8();
  v36 = sub_257E00504();
  sub_257DFD370(v32, v34, v35, v36);
}

void sub_257CEC88C(void *a1, float32x2_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v21 = a5.n128_f64[0];
  v22 = a6.n128_f64[0];
  v19 = a3.n128_f64[0];
  v20 = a4.n128_f64[0];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
    v10 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    if (v10)
    {
      v11 = [v10 scene];
      v12 = [v11 rootNode];

      aBlock[4] = sub_257CEFA68;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257CEFA74;
      aBlock[3] = &block_descriptor_49;
      v13 = _Block_copy(aBlock);

      [v12 enumerateChildNodesUsingBlock_];

      _Block_release(v13);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);
      }

      else
      {
        v14 = *(v6 + v9);
        if (v14)
        {
          v15 = [v14 scene];
          v16 = [v15 rootNode];

          v17 = objc_allocWithZone(type metadata accessor for WireframePlane());
          v18 = sub_257EAEB9C(a1, 0.003, COERCE_DOUBLE(vadd_f32(a2, vdup_n_s32(0x3CA3D70Au))), v19, v20, v21, v22);
          [v16 addChildNode_];
        }
      }
    }
  }
}

void sub_257CECAF4(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v32 = a2;
  v12 = sub_257ECF120();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_257ECF190();
  v19 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v20, v21, v22, v23);
  v25 = &v31[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_257BD52CC();
    v26 = sub_257ECFD30();
    v27 = swift_allocObject();
    *(v27 + 16) = v6;
    *(v27 + 24) = v32 & 1;
    *(v27 + 32) = a3;
    *(v27 + 40) = a4;
    *(v27 + 48) = a5;
    *(v27 + 56) = a6;
    *(v27 + 64) = a1;
    aBlock[4] = sub_257CEFBB4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_46;
    v28 = _Block_copy(aBlock);
    v29 = v6;
    v30 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v25, v18, v28);
    _Block_release(v28);

    (*(v34 + 8))(v18, v12);
    (*(v19 + 8))(v25, v33);
  }
}

double sub_257CECE74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v60[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v18 = a1;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  sub_257C15EC0(v18, &v25[v19[5]]);
  v25[v19[6]] = 1;
  v25[v19[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v26 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v18, type metadata accessor for MAGOutputEvent.EventType);
  *&v25[v19[8]] = v26;
  v27 = MAGOutputEvent.displayContent.getter();
  if (!v28)
  {
    goto LABEL_38;
  }

  v29 = v27;
  v30 = v28;
  v62 = v11;
  v63 = v5;
  v64 = v4;
  v65 = v2;
  v31 = (v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  v33 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  v32 = v31[1];

  v34 = sub_257ECF4C0();
  v35 = sub_257ECF4C0();
  v36 = sub_257E5BABC(v35, 360, 0.35);

  if (v29)
  {
    v37 = 0;
  }

  else
  {
    v37 = v30 == 0xE000000000000000;
  }

  v38 = v37;
  if (v37 || (sub_257ED0640() & 1) != 0)
  {
    v61 = v38;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v69 == 1)
    {
      v39 = (v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement);
      if ((*(v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement) || *(v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement + 8) != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
      {

        v41 = *v39;
        v40 = v39[1];
        *v31 = v29;
        v31[1] = v30;

        if ((v36 & 1) == 0)
        {
          goto LABEL_39;
        }

        v29 = v41;
        goto LABEL_30;
      }
    }

    if (v36)
    {

      if (v61)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_23:

    if (!v33 && v32 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0)
    {
    }

    goto LABEL_39;
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (sub_257ED0640())
  {
LABEL_22:

    v29 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_30;
  }

  *v31 = v29;
  v31[1] = v30;

  v40 = v30;
LABEL_30:
  sub_257CBBC80(v25);
  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    v42 = qword_281548358;
    v43 = qword_281548358 + 48;
    v44 = swift_beginAccess();
    v66 = *(v42 + 48);
    v67 = *(v42 + 56);
    if (qword_2815447E0 != -1)
    {
      v44 = swift_once();
    }

    MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
    *&v60[-16] = &v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257ECFD50();
    v49 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_257BFCB3C(0, *(v49 + 2) + 1, 1, v49);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_257BFCB3C((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[16 * v51];
    *(v52 + 4) = v29;
    *(v52 + 5) = v40;
    v66 = v49;
    v53 = v62;
    v54 = sub_257ECF110();
    MEMORY[0x28223BE20](v54, v55, v56, v57, v58);
    *&v60[-16] = &v66;
    *&v60[-8] = v43;
    sub_257ECFD40();
    (*(v63 + 8))(v53, v64);

    swift_endAccess();
LABEL_38:
    sub_257C15F24(v25, type metadata accessor for MAGOutputEvent);
    return result;
  }

LABEL_39:
  sub_257C15F24(v25, type metadata accessor for MAGOutputEvent);

  return result;
}

void sub_257CED4E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  v3();
}

uint64_t sub_257CED550(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257CED718()
{
  result = qword_27F8F7820;
  if (!qword_27F8F7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7820);
  }

  return result;
}

unint64_t sub_257CED7B0()
{
  result = qword_281544BF0;
  if (!qword_281544BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544BF0);
  }

  return result;
}

double sub_257CED804()
{
  v1 = v0;
  v78 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v78, v2, v3, v4, v5);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v80, v7, v8, v9, v10);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF120();
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v88 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF190();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_257ECCC80();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27, v28, v29, v30);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff;
  v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 0;
  sub_257CEE17C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v87 = v12;
  v33 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v33;
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v77 = v25;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];
    v36 = sub_257ECF4C0();
    v37 = sub_257ECF4C0();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    v39 = v38;
    if (!v38)
    {
      sub_257ECF500();
      v39 = sub_257ECF4C0();
    }

    aBlock = sub_257ECF500();
    v91 = v40;
    sub_257BDAB08();
    v41 = sub_257ED0100();
    v43 = v42;

    v44 = sub_257E003E8();
    v45 = sub_257E00504();
    sub_257DFD370(v41, v43, v44, v45);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
    v25 = v77;
  }

  v46 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService];
  sub_257ECCC70();
  v47 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
  swift_beginAccess();
  (*(v26 + 40))(v46 + v47, v32, v25);
  swift_endAccess();
  sub_257BD52CC();
  v48 = sub_257ECFD30();
  v49 = swift_allocObject();
  *(v49 + 16) = v1;
  v94 = sub_257CEFAD0;
  v95 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_257D231C0;
  v93 = &block_descriptor_23;
  v50 = _Block_copy(&aBlock);
  v51 = v1;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  v52 = v88;
  v53 = v87;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v24, v52, v50);
  _Block_release(v50);

  v54 = *(v86 + 8);
  v54(v52, v53);
  (*(v84 + 8))(v24, v85);
  if (v51[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v83;
    sub_257ECDD60();

    if ((aBlock & 1) == 0)
    {
      v56 = v55 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v57 = *(v56 + 8);
      v58 = *(v56 + 16);
      aBlock = *v56;
      v91 = v57;
      LOBYTE(v92) = v58;
      v59 = qword_2815447E0;

      if (v59 != -1)
      {
        v60 = swift_once();
      }

      MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
      *(&v77 - 2) = &aBlock;
      sub_257ECFD50();

      if (v89 == 1 && (v1[v82] & 1) == 0)
      {
        if (v51[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] == 1)
        {
          v86 = *&v51[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine];
          v65 = v81;
          *v81 = 4;
          swift_storeEnumTagMultiPayload();
          v66 = v79;
          sub_257ECCCE0();
          v67 = v80;
          sub_257C15EC0(v65, v66 + *(v80 + 20));
          *(v66 + v67[6]) = 0;
          *(v66 + v67[7]) = 0;
          v68 = v83;
          sub_257ECC3F0();
          sub_257C15F24(v65, type metadata accessor for MAGOutputEvent.EventType);
          *(v66 + v67[8]) = v68;
          sub_257CBBC80(v66);
          sub_257C15F24(v66, type metadata accessor for MAGOutputEvent);
        }

        sub_257BD7F48();
      }
    }
  }

  v69 = qword_281548350 + 88;
  swift_beginAccess();
  v89 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v70 = v88;
  v71 = sub_257ECF110();
  MEMORY[0x28223BE20](v71, v72, v73, v74, v75);
  *(&v77 - 2) = &v89;
  *(&v77 - 1) = v69;
  sub_257ECFD40();
  v54(v70, v53);
  swift_endAccess();
  return result;
}

double sub_257CEE17C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v17 = v16[1];
  v18 = v16[2];
  aBlock = *v16;
  v37 = v17;
  v38 = v18;
  v19 = qword_2815447E0;

  if (v19 != -1)
  {
    v20 = swift_once();
  }

  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  *(&v33 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v25 = v42;
  v26 = sub_257C592D0(2u, v42);
  v27 = sub_257C592D0(3u, v25);
  v28 = sub_257C592D0(1u, v25);

  v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = v26;
  *(v29 + 25) = v27;
  v40 = sub_257CEFAF0;
  v41 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_257D231C0;
  v39 = &block_descriptor_23;
  v30 = _Block_copy(&aBlock);
  v31 = v1;
  sub_257ECF150();
  v42 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v15, v8, v30);
  _Block_release(v30);
  (*(v35 + 8))(v8, v2);
  (*(v33 + 8))(v15, v34);

  return result;
}

void sub_257CEE5A8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  sub_257ECFD50();

  if ((v6 & 1) == 0)
  {
    sub_257CEE6F8();
  }
}

void sub_257CEE6F8()
{
  if (qword_2815455E0 != -1)
  {
    swift_once();
  }

  v25 = v0;
  if (byte_2815483A8 == 1)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_257ECF500();
  type metadata accessor for MAGUtilities();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 &selRef:v7 reloadSections:0 withRowAnimation:v8 + 4];

  sub_257ECF500();
  v10 = sub_257ECF4C0();

  v11 = sub_257ECF4C0();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController] = v12;
  v14 = v12;

  if (v14)
  {
    v15 = [v5 bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v18 = [v15 &selRef:v16 reloadSections:0 withRowAnimation:v17 + 4];

    sub_257ECF500();
    v19 = sub_257ECF4C0();

    aBlock[4] = sub_257CEF214;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257CED4E8;
    aBlock[3] = &block_descriptor_16_0;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    v22 = [objc_opt_self() systemYellowColor];
    v23 = sub_257ECF4C0();
    [v21 setValue:v22 forKey:v23];

    [v14 addAction_];
    [v25 presentViewController:v14 animated:1 completion:0];
  }
}

void sub_257CEEC84()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257DFF054();
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    [v17 alpha];
    v20 = v19;

    if (v20 == 0.0)
    {
      v41[1] = v2;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_257ECF4C0();
      v24 = sub_257ECF4C0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      v26 = v25;
      if (!v25)
      {
        sub_257ECF500();
        v26 = sub_257ECF4C0();
      }

      v43 = sub_257ECF500();
      v44 = v27;
      sub_257BDAB08();
      v28 = sub_257ED0100();
      v30 = v29;

      v31 = sub_257E003E8();
      v32 = sub_257E00504();
      sub_257DFD370(v28, v30, v31, v32);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    *v8 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v8, &v15[v9[5]]);
    v15[v9[6]] = 1;
    v15[v9[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v33 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
    *&v15[v9[8]] = v33;
    sub_257CBBC80(v15);
    sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
    v34 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v35 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
    swift_beginAccess();
    [*(v34 + v35) setUseHapticFeedback_];
    [*(v34 + v35) setUseSoundFeedback_];
    [*(v34 + v35) stopPulse];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v42 == 1)
    {
      v36 = sub_257D1A130();
    }

    v37 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
    v38 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
    if (v38)
    {
      [v38 removeFromSuperlayer];
      v39 = *(v1 + v37);
      *(v1 + v37) = 0;
    }

    v40 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService);
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
    *(v40 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_257CEF174(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  [*(v5 + v6) setUseHapticFeedback_];
  return [*(v5 + v6) setDetectionType_];
}

double sub_257CEF214()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakInstructionsDisplayed;
  swift_beginAccess();
  v16 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  *&v15[-16] = &v16;
  *&v15[-8] = v8;
  sub_257ECFD40();
  (*(v1 + 8))(v7, v0);
  swift_endAccess();
  return result;
}

uint64_t sub_257CEF3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for MAGOutputEvent(0);
  v4[6] = swift_task_alloc();
  sub_257ECF900();
  v4[7] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CEF4D4, v6, v5);
}

uint64_t sub_257CEF4D4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  *v2 = 10;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, v1 + v3[5]);
  *(v1 + v3[6]) = 0;
  *(v1 + v3[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v6, type metadata accessor for MAGOutputEvent.EventType);
  *(v4 + *(v5 + 32)) = v7;
  sub_257CBBC80(v4);
  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent);

  v8 = v0[1];

  return v8();
}

void sub_257CEF63C(uint64_t a1, char a2, void *a3)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView;
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (!v5)
  {
    return;
  }

  [v5 bounds];
  if (a2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
  if (v8)
  {
LABEL_7:
    [v8 removeFromSuperlayer];
  }

LABEL_8:
  v9 = [objc_opt_self() currentDevice];
  [v9 orientation];

  v10 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  CGSizeMake();
  v24 = CGPathCreateWithRoundedRect(v26, 16.0, 16.0, 0);
  [v11 setPath_];
  v12 = [objc_opt_self() clearColor];
  v13 = [v12 CGColor];

  [v11 setFillColor_];
  v14 = [a3 CGColor];
  [v11 setStrokeColor_];

  v15 = v11;
  v16 = [a3 CGColor];
  [v15 setBorderColor_];

  [v15 setLineWidth_];
  LODWORD(v17) = 1.0;
  [v15 setOpacity_];
  [v15 setCornerRadius_];

  [v10 addSublayer_];
  [v10 setDrawsAsynchronously_];
  v18 = &OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer;
  if ((a2 & 1) == 0)
  {
    v18 = &OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
  }

  v19 = *v18;
  v20 = *(a1 + v19);
  *(a1 + v19) = v10;
  v21 = v10;

  v22 = *(a1 + v4);
  if (v22)
  {
    v23 = [v22 layer];
    [v23 insertSublayer:v21 atIndex:0];
  }
}

void sub_257CEFA74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CEFB00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CEF3DC(a1, v4, v5, v6);
}

void sub_257CEFBF8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = v2;
    *&v11[0] = 0x6675426C65786970;
    *(&v11[0] + 1) = 0xEB00000000726566;
    v5 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v5)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(v11, v12);
      sub_257BE41F4(v12, v11);
      type metadata accessor for CVBuffer(0);
      swift_dynamicCast();
      Width = CVPixelBufferGetWidth(pixelBuffer);

      sub_257BE41F4(v12, v11);
      swift_dynamicCast();
      Height = CVPixelBufferGetHeight(pixelBuffer);

      v8 = Width * Height;
      if ((Width * Height) >> 64 == (Width * Height) >> 63)
      {
        if ((v8 - 0x2000000000000000) >> 62 == 3)
        {
          [*(v3 + 16) setObject:a1 forKey:a2 cost:4 * v8];
          swift_beginAccess();
          Height = a2;
          MEMORY[0x259C72300]();
          if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_257ECF860();
            swift_endAccess();

            __swift_destroy_boxed_opaque_existential_0(v12);
            return;
          }

LABEL_14:
          sub_257ECF830();
          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
  }
}

void sub_257CEFE48(void *a1)
{
  v56 = a1;
  v1 = sub_257ECCDC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_257ECCDD0();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v10, v11, v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  v22 = &v53 - v21;
  v23 = sub_257ECCC80();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25, v26, v27, v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v53 - v36;
  sub_257ECCDB0();
  (*(v2 + 104))(v8, *MEMORY[0x277CC9930], v1);
  sub_257ECCC70();
  sub_257ECCDA0();
  v53 = *(v24 + 8);
  v53(v30, v23);
  (*(v2 + 8))(v8, v1);
  (*(v9 + 8))(v15, v54);
  v38 = *(v24 + 48);
  if (v38(v22, 1, v23) == 1)
  {
    sub_257ECCC70();
    if (v38(v22, 1, v23) != 1)
    {
      sub_257CF0448(v22);
    }
  }

  else
  {
    (*(v24 + 32))(v37, v22, v23);
  }

  sub_257ECCC30();
  v40 = round(v39 * 1000.0);
  v42 = v55;
  v41 = v56;
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v56 timeIntervalSince1970];
  v44 = round(v43 * 1000.0);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v44 >= v40)
  {
    goto LABEL_15;
  }

  [*(v42 + 16) removeObjectForKey_];
  swift_beginAccess();
  v45 = *(v42 + 24);

  sub_257DB8588(v41, v45);
  v47 = v46;

  if (v47)
  {
    goto LABEL_15;
  }

  v48 = *(v42 + 24);

  v49 = sub_257DB8588(v41, v48);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    swift_beginAccess();
    v52 = sub_257C1C9AC(v49);
    swift_endAccess();

LABEL_15:
    [*(v42 + 16) objectForKey_];
    v53(v37, v23);
    return;
  }

LABEL_22:
  __break(1u);
}