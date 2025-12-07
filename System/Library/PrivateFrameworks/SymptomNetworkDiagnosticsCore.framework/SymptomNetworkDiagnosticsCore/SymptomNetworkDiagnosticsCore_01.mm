uint64_t sub_2324DB028(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2324C2910;

  return sub_2324D9CCC(a1, v5, v6, v4);
}

uint64_t sub_2324DB0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324C290C;

  return sub_2324DA6A0(a1, v4);
}

uint64_t sub_2324DB180(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324C2910;

  return sub_2324DA6A0(a1, v4);
}

uint64_t sub_2324DB238(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2324DB388(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2324DB288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2324DB2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324DB334()
{
  result = qword_2814D4C70;
  if (!qword_2814D4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C70);
  }

  return result;
}

uint64_t sub_2324DB388(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2324DB3D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2324DB3E4(result, a2);
  }

  return result;
}

uint64_t sub_2324DB3E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2324DB438(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2324DB44C(result, a2);
  }

  return result;
}

uint64_t sub_2324DB44C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2324DB4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2324DB51C()
{
  v0 = objc_opt_self();
  v1 = &unk_284793910;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814D6EE8 = v2;
}

uint64_t *sub_2324DB584()
{
  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  return &qword_2814D6EE8;
}

id sub_2324DB5D4()
{
  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6EE8;

  return v1;
}

uint64_t sub_2324DB630@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4750();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324DB6A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2324DB718()
{
  v1 = v0;
  v2 = sub_232546238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232546218();
  MEMORY[0x28223BE20](v6);
  v7 = sub_232545EA8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue;
  v9 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  }

  else
  {
    v11 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
    v18 = "com.apple.activity.interval";
    v19 = v11;
    sub_232545E98();
    v20 = MEMORY[0x277D84F90];
    v16[1] = sub_2324E25F8(&qword_2814D4ED0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
    v17 = v2;
    sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
    sub_232546378();
    (*(v3 + 104))(v5, *MEMORY[0x277D85260], v17);
    v12 = sub_232546258();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

void (*sub_2324DB9C4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324DB718();
  return sub_2324DBA0C;
}

void sub_2324DBA0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue) = v2;
}

id sub_2324DBA9C()
{
  v1 = v0;
  v2 = sub_232546238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232546218();
  MEMORY[0x28223BE20](v6);
  v7 = sub_232545EA8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue;
  v9 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  }

  else
  {
    v11 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
    v18 = "msd.distribution.timer";
    v19 = v11;
    sub_232545E98();
    v20 = MEMORY[0x277D84F90];
    v16[1] = sub_2324E25F8(&qword_2814D4ED0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
    v17 = v2;
    sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
    sub_232546378();
    (*(v3 + 104))(v5, *MEMORY[0x277D85260], v17);
    v12 = sub_232546258();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

void (*sub_2324DBD48(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324DBA9C();
  return sub_2324DBD90;
}

void sub_2324DBD90(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue) = v2;
}

uint64_t sub_2324DBE04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

double sub_2324DBEB8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2324DBF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2324DBFB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324DC04C()
{
  v0 = swift_allocObject();
  sub_2324DC084();
  return v0;
}

uint64_t sub_2324DC084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D0, &unk_2325480E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v28 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v14 = sub_2324F4750();
  v15 = sub_2325458A8();
  (*(*(v15 - 8) + 16))(v0 + v13, v14, v15);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_periodicTimer) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitTimer) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates) = MEMORY[0x277D84F90];
  sub_232545B08();
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  v29 = v12;
  v16 = v35;
  sub_232546108();
  (*(v4 + 8))(v6, v3);
  v17 = v31;
  v18 = v33;
  (*(v31 + 16))(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation, v16, v33);
  v19 = sub_2325460F8();
  v20 = v34;
  (*(*(v19 - 8) + 56))(v34, 1, 1, v19);
  v21 = v30;
  v22 = v12;
  v23 = v32;
  (*(v8 + 16))(v30, v22, v32);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v8 + 32))(v25 + v24, v21, v23);
  v26 = sub_2324C8F70(0, 0, v20, &unk_232547820, v25);
  (*(v17 + 8))(v35, v18);
  (*(v8 + 8))(v29, v23);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsTask) = v26;
  return v0;
}

uint64_t sub_2324DC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_232545B08();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DC6E0, 0, 0);
}

uint64_t sub_2324DC6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2324DC7A8;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2324DC7A8()
{

  return MEMORY[0x2822009F8](sub_2324DC8A4, 0, 0);
}

uint64_t sub_2324DC8A4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v6 = sub_232545AF8();
    v0[14] = v7;
    v9 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2324DCA70;

    return v9();
  }
}

uint64_t sub_2324DCA70()
{

  return MEMORY[0x2822009F8](sub_2324DCB88, 0, 0);
}

uint64_t sub_2324DCB88()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2324DC7A8;
  v8 = v0[9];
  v9 = v0[10];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_2324DCC98()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324DC518(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324DCD6C()
{

  sub_232546158();

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324DCEBC()
{
  sub_2324DCD6C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324DCEE8()
{
  v1[9] = v0;
  v2 = sub_232545E68();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_232545EA8();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_232545E58();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_232545EC8();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = sub_232546268();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DD124, v0, 0);
}

uint64_t sub_2324DD124()
{
  v1 = *(**(v0 + 72) + 224);
  if (v1())
  {
    swift_unknownObjectRelease();
    v2 = sub_232545888();
    v3 = sub_2325461D8();
    if (!os_log_type_enabled(v2, v3))
    {
LABEL_5:

      goto LABEL_10;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "CloudKit timer is already running";
LABEL_4:
    _os_log_impl(&dword_2324C0000, v2, v3, v5, v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
    goto LABEL_5;
  }

  v39 = *(v0 + 192);
  v35 = *(v0 + 200);
  v37 = *(v0 + 184);
  v6 = *(v0 + 72);
  sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v7 = (*(*v6 + 200))();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2324E25F8(&unk_2814D4EB0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  sub_232546378();
  v8 = sub_232546278();

  (*(v39 + 8))(v35, v37);
  v9 = (*(*v6 + 232))(v8);
  if (!(v1)(v9))
  {
    v2 = sub_232545888();
    v3 = sub_2325461F8();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_5;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Failed to create CloudKit timer";
    goto LABEL_4;
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v29 = v12;
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v32 = *(v0 + 120);
  v38 = *(v0 + 112);
  v40 = *(v0 + 104);
  v33 = *(v0 + 96);
  v34 = *(v0 + 88);
  v36 = *(v0 + 80);
  v31 = *(v0 + 128);
  ObjectType = swift_getObjectType();
  sub_232545EB8();
  sub_232545ED8();
  v16 = *(v13 + 8);
  v16(v10, v12);
  v17 = *(**sub_2324C4D38() + 320);

  v19 = v17(v18);

  *v14 = 0;
  v20 = *MEMORY[0x277D85168];
  v21 = sub_232545E58();
  (*(*(v21 - 8) + 104))(v14, v20, v21);
  MEMORY[0x2383858F0](v11, v14, ObjectType, v19);
  (*(v15 + 8))(v14, v31);
  v16(v11, v29);
  v22 = swift_allocObject();
  swift_weakInit();
  *(v0 + 48) = sub_2324E24B8;
  *(v0 + 56) = v22;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2324D0160;
  *(v0 + 40) = &block_descriptor_27;
  v23 = _Block_copy((v0 + 16));

  sub_232545E78();
  sub_2324DDFC0();
  sub_232546298();
  _Block_release(v23);
  (*(v34 + 8))(v33, v36);
  (*(v38 + 8))(v32, v40);

  sub_2325462C8();
  v24 = sub_232545888();
  v25 = sub_232546208();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2324C0000, v24, v25, "Activated CloudKit timer", v26, 2u);
    MEMORY[0x238386450](v26, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_10:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2324DD744(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_2325460F8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_2324C8F70(0, 0, v3, &unk_232547930, v7);
  }

  return result;
}

uint64_t sub_2324DD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2324DD884, 0, 0);
}

uint64_t sub_2324DD884()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2324CB1E8;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000014, 0x800000023254C570, sub_2324E2560, v3, v4);
}

uint64_t sub_2324DD95C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_232545B08();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  (*(v6 + 16))(v8, v17, v5);

  sub_232545AD8();
  (*(v10 + 16))(v13, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  sub_232546118();
  (*(v2 + 8))(v4, v18);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_2324DDC28(uint64_t a1)
{
  *(v1 + 40) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Ready to send updates to CloudKit", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_2324DDD40;

  return sub_2324DE098();
}

uint64_t sub_2324DDD40(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_2324DDE44, 0, 0);
}

uint64_t sub_2324DDE44(uint64_t a1)
{
  v13 = v1;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6673736563637573;
    }

    else
    {
      v7 = 0x6363757320746F6ELL;
    }

    if (v4)
    {
      v8 = 0xEA00000000006C75;
    }

    else
    {
      v8 = 0xEE006C7566737365;
    }

    v9 = sub_2324C2220(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2324C0000, v2, v3, "Updates to CloudKit was %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_2324DDFC0()
{
  sub_232545E68();
  sub_2324E25F8(&qword_2814D4F30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93328, &qword_232547960);
  sub_2324E2640(&qword_2814D4F10, &qword_27DD93328, &qword_232547960);
  return sub_232546378();
}

uint64_t sub_2324DE098()
{
  v1[29] = v0;
  v1[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v2 = sub_232545A88();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v1[39] = swift_task_alloc();
  v3 = sub_2325456F8();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v4 = sub_232545688();
  v1[43] = v4;
  v1[44] = *(v4 - 8);
  v1[45] = swift_task_alloc();
  v5 = sub_232545B68();
  v1[46] = v5;
  v1[47] = *(v5 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v6 = sub_2325458C8();
  v1[51] = v6;
  v1[52] = *(v6 - 8);
  v1[53] = swift_task_alloc();
  v7 = type metadata accessor for NDFDevice(0);
  v1[54] = v7;
  v1[55] = *(v7 - 8);
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DE3E0, v0, 0);
}

uint64_t sub_2324DE3E0()
{
  v113 = v0;
  v1 = v0[29];
  v2 = *(*v1 + 248);
  v3 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x2357000000000000;
  v0[57] = v2;
  v0[58] = v3;
  v4 = *(v2() + 16);

  v0[59] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  if (v4)
  {

    v5 = sub_232545888();
    v6 = sub_232546208();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(v2() + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_2324C0000, v5, v6, "=> Preparing to send %ld CloudKit update(s) to symptomsd-distributed", v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
    }

    else
    {
    }

    sub_232545FB8();
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_232545F58();

    v14 = [v12 initWithMachServiceName:v13 options:4096];
    v0[60] = v14;

    if (qword_2814D6460 != -1)
    {
      swift_once();
    }

    [v14 setRemoteObjectInterface_];
    [v14 activate];
    v15 = [v14 remoteObjectProxy];
    sub_232546338();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
    if (swift_dynamicCast())
    {
      v90 = v0[26];
      v0[61] = v90;
      v0[27] = MEMORY[0x277D84F90];
      v16 = v2();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v0[55];
        v111 = v0[54];
        v19 = v0[52];
        v20 = v0[47];
        v21 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v105 = (v19 + 104);
        v104 = (v20 + 104);
        v22 = (v20 + 32);
        v102 = (v0[44] + 16);
        v101 = (v0[41] + 16);
        v23 = v0[34];
        v100 = *(v18 + 72);
        v99 = *MEMORY[0x277D6B2D0];
        v95 = *MEMORY[0x277D6B320];
        v94 = *MEMORY[0x277D6B338];
        v92 = (v23 + 16);
        v106 = (v23 + 8);
        v91 = (v23 + 32);
        v98 = (v20 + 8);
        v93 = *MEMORY[0x277D6B328];
        v96 = v0[30];
        v97 = (v19 + 8);
        v103 = (v20 + 32);
        do
        {
          v109 = v21;
          v110 = v17;
          v24 = v0[56];
          v25 = v0[53];
          v26 = v0[51];
          sub_2324CE250(v21, v24);
          (*v105)(v25, v99, v26);
          v27 = *(v24 + v111[12]);
          v28 = v0[49];
          if (v27 == 2)
          {
            (*v104)(v0[49], v93, v0[46]);
            v29 = *v22;
          }

          else
          {
            v30 = v0[48];
            v31 = v0[46];
            if (v27)
            {
              v32 = v94;
            }

            else
            {
              v32 = v95;
            }

            (*v104)(v0[48], v32, v0[46]);
            v29 = *v22;
            (*v22)(v28, v30, v31);
          }

          v33 = v0[56];
          v34 = v0[45];
          v35 = v0[42];
          v36 = v0[43];
          v37 = v0[40];
          v107 = v0[39];
          v29(v0[50], v0[49], v0[46]);
          v38 = v111;
          (*v102)(v34, v33 + v111[5], v36);
          (*v101)(v35, v33, v37);
          sub_2325458B8();
          v39 = objc_allocWithZone(sub_232545A48());
          v40 = sub_232545A38();
          sub_2325458B8();
          sub_2325459A8();

          sub_232545918();
          sub_2324CF3C4(v33 + v111[7], v107, &unk_27DD932E0, qword_2325472E0);
          sub_232545968();
          sub_2324DB3D0(*(v33 + v38[8]), *(v33 + v38[8] + 8));
          sub_2325459F8();
          sub_2324DB3D0(*(v33 + v38[9]), *(v33 + v38[9] + 8));
          sub_232545A18();

          sub_232545938();
          sub_2325459D8();
          v0[28] = 0;
          sub_2324E25F8(&unk_27DD93300, MEMORY[0x277D6B300], MEMORY[0x277D6B318]);
          sub_232546798();
          v41 = *(v33 + v111[15]);
          if (v41 != 2 && (v41 & 1) != 0)
          {
            v42 = v0[38];
            v43 = v0[35];
            v44 = v0[33];
            v108 = v0[32];
            sub_232545A58();
            v45 = *v92;
            (*v92)(v43, v42, v44);
            v46 = MEMORY[0x277D6B300];
            sub_2324E25F8(&qword_27DD93278, MEMORY[0x277D6B300], MEMORY[0x277D6B310]);
            sub_232546358();
            sub_2324E25F8(&qword_27DD93310, v46, MEMORY[0x277D6B308]);
            v47 = sub_232545F48();
            v48 = *(v96 + 48);
            *v108 = (v47 & 1) == 0;
            v49 = *v106;
            if (v47)
            {
              v50 = v0[36];
              v51 = v0[33];
              v49(v0[37], v51);
              (*v91)(&v108[v48], v50, v51);
            }

            else
            {
              v52 = v0[37];
              v53 = v0[35];
              v54 = v0[33];
              v49(v0[36], v54);
              v45(&v108[v48], v52, v54);
              v45(v53, v52, v54);
              sub_232546368();
              v49(v52, v54);
            }

            v55 = v0[33];
            v56 = v0[31];
            sub_2324DB4A0(v0[32], v56);
            v49(v56 + *(v96 + 48), v55);
          }

          sub_232545A78();
          sub_232545988();
          v57 = v40;
          MEMORY[0x238385620]();
          if (*((v0[27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232546078();
          }

          v58 = v0[56];
          v59 = v0[53];
          v61 = v0[50];
          v60 = v0[51];
          v62 = v0[46];
          v63 = v0[38];
          v64 = v0[33];
          sub_232546088();

          (*v106)(v63, v64);
          (*v98)(v61, v62);
          (*v97)(v59, v60);
          sub_2324CE2B4(v58);
          v21 = v109 + v100;
          v17 = v110 - 1;
          v22 = v103;
        }

        while (v110 != 1);
        v70 = v0[27];
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      v0[62] = v70;
      v71 = sub_232545888();
      v72 = sub_232546208();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        if (v70 >> 62)
        {
          v89 = v73;
          v74 = sub_232546488();
          v73 = v89;
        }

        else
        {
          v74 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v73 + 4) = v74;
        v75 = v72;
        v76 = v73;
        _os_log_impl(&dword_2324C0000, v71, v75, "==> Ready to send %ld CloudKit update(s) to symptomsd-distributed", v73, 0xCu);
        MEMORY[0x238386450](v76, -1, -1);
      }

      v77 = sub_232545888();
      v78 = sub_2325461D8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v112 = v80;
        *v79 = 136315138;
        v81 = sub_232545A48();

        v83 = MEMORY[0x238385650](v82, v81);
        v85 = v84;

        v86 = sub_2324C2220(v83, v85, &v112);

        *(v79 + 4) = v86;
        _os_log_impl(&dword_2324C0000, v77, v78, "    Sending payloads to symptomsd-distributed: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x238386450](v80, -1, -1);
        MEMORY[0x238386450](v79, -1, -1);
      }

      sub_232545A48();

      v87 = sub_232546048();
      v0[63] = v87;

      v0[2] = v0;
      v0[7] = v0 + 64;
      v0[3] = sub_2324DF1B8;
      v88 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932F0, qword_232547848);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2324DF5A0;
      v0[13] = &block_descriptor_23;
      v0[14] = v88;
      [v90 deliverCloudKitDevicePayloads:v87 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v65 = sub_232545888();
    v66 = sub_2325461F8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2324C0000, v65, v66, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v67, 2u);
      MEMORY[0x238386450](v67, -1, -1);
    }

    v9 = v0[60];
    [v9 invalidate];
  }

  else
  {
    v9 = sub_232545888();
    v10 = sub_2325461D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "No pending updates to send to CloudKit", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }
  }

  v68 = v0[1];

  return v68(v4 == 0);
}

uint64_t sub_2324DF1B8()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_2324DF2AC, v1, 0);
}

uint64_t sub_2324DF2AC()
{
  v1 = *(v0 + 512);

  v15 = v1;
  if (v1 == 1)
  {
    v2 = (*(**(v0 + 232) + 264))(v0 + 176);
    *v3 = MEMORY[0x277D84F90];

    v2(v0 + 176, 0);

    v4 = sub_232545888();
    v5 = sub_232546208();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 456);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(v6() + 16);

      *(v7 + 4) = v8;

      v9 = "   Sending payloads to symptomsd-distributed was successful. Pending updates: %ld";
LABEL_6:
      _os_log_impl(&dword_2324C0000, v4, v5, v9, v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {

    v4 = sub_232545888();
    v5 = sub_2325461F8();
    if (os_log_type_enabled(v4, v5))
    {
      v10 = *(v0 + 456);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v11 = *(v10() + 16);

      *(v7 + 4) = v11;

      v9 = "   Failed sending payloads to symptomsd-distributed. Retaining %ld pending updates for future retries";
      goto LABEL_6;
    }
  }

LABEL_8:

  swift_unknownObjectRelease();

  v12 = *(v0 + 480);
  [v12 invalidate];

  v13 = *(v0 + 8);

  return v13(v15);
}

uint64_t sub_2324DF5A0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_2324DF5FC()
{
  v1[26] = v0;
  sub_232545688();
  v1[27] = swift_task_alloc();
  v2 = sub_2325458C8();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v1[31] = swift_task_alloc();
  v3 = sub_2325456F8();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DF794, v0, 0);
}

uint64_t sub_2324DF794()
{
  v64 = v0;
  sub_232545FB8();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_232545F58();

  v3 = [v1 initWithMachServiceName:v2 options:4096];
  v0[37] = v3;

  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  [v3 setRemoteObjectInterface_];
  [v3 activate];
  v4 = [v3 remoteObjectProxy];
  sub_232546338();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
  if (!swift_dynamicCast())
  {
    v13 = sub_232545888();
    v14 = sub_2325461F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2324C0000, v13, v14, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v15, 2u);
      MEMORY[0x238386450](v15, -1, -1);
    }

    goto LABEL_11;
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[25];
  v0[38] = v8;
  v9 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v9, v7, &unk_27DD932E0, qword_2325472E0);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_2324C28AC(v0[31], &unk_27DD932E0, qword_2325472E0);
    v10 = sub_232545888();
    v11 = sub_2325461F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2324C0000, v10, v11, "Unable to obtain a valid device identifier", v12, 2u);
      MEMORY[0x238386450](v12, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v16 = v0[37];
    [v16 invalidate];

    v17 = v0[1];

    return v17(0);
  }

  v20 = v0[35];
  v19 = v0[36];
  v21 = v0[33];
  v61 = v0[34];
  v62 = v8;
  v22 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[28];
  (*(v21 + 32))(v19, v0[31], v22);
  (*(v24 + 104))(v23, *MEMORY[0x277D6B2D0], v25);
  v26 = *(v21 + 16);
  v26(v20, v19, v22);
  sub_2325458B8();
  sub_232545668();
  v27 = objc_allocWithZone(sub_232545A48());
  v28 = sub_232545A38();
  v29 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v0[39] = v28;
  v0[40] = v29;
  v26(v61, v19, v22);
  v30 = v28;
  v31 = sub_232545888();
  v32 = sub_232546208();

  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[33];
  v34 = v0[34];
  v36 = v0[32];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v37 = 136315394;
    sub_2324E25F8(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v58 = v32;
    v38 = sub_232546608();
    v39 = v30;
    v41 = v40;
    v42 = *(v35 + 8);
    v42(v34, v36);
    v43 = sub_2324C2220(v38, v41, &v63);
    v30 = v39;

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v39;
    *v59 = v39;
    v44 = v39;
    _os_log_impl(&dword_2324C0000, v31, v58, "Created payload with identifier %s: %@", v37, 0x16u);
    sub_2324C28AC(v59, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x238386450](v60, -1, -1);
    MEMORY[0x238386450](v37, -1, -1);
  }

  else
  {

    v42 = *(v35 + 8);
    v42(v34, v36);
  }

  v0[41] = v42;
  v45 = MobileGestalt_get_current_device();
  if (v45)
  {
    v46 = v45;
    v47 = MobileGestalt_copy_productType_obj();
    if (v47)
    {
      v48 = v47;
      sub_232545F68();
    }

    sub_232545918();
  }

  else
  {
    v46 = sub_232545888();
    v49 = sub_232546208();
    if (os_log_type_enabled(v46, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2324C0000, v46, v49, "Unable to access MobileGestalt. Cannot determine device model", v50, 2u);
      MEMORY[0x238386450](v50, -1, -1);
    }
  }

  v51 = v30;
  v52 = sub_232545888();
  v53 = sub_232546208();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_2324C0000, v52, v53, "Ready to send payload to symptomsd-distributed: %@", v54, 0xCu);
    sub_2324C28AC(v55, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v55, -1, -1);
    MEMORY[0x238386450](v54, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_2324E0024;
  v57 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932F0, qword_232547848);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2324DF5A0;
  v0[13] = &block_descriptor_2;
  v0[14] = v57;
  [v62 deliverCloudKitDevicePayload:v51 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2324E0024()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_2324E0118, v1, 0);
}

uint64_t sub_2324E0118(uint64_t a1)
{
  v28 = *(v1 + 336);
  if (v28)
  {
    v2 = *(v1 + 312);
    v3 = sub_232545888();
    v4 = sub_232546208();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 312);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&dword_2324C0000, v3, v4, "Successfully delivered payload to symptomsd-distributed: %@", v6, 0xCu);
      sub_2324C28AC(v7, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v7, -1, -1);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v9 = *(v1 + 328);
    v10 = *(v1 + 288);
    v11 = *(v1 + 256);
    v13 = *(v1 + 232);
    v12 = *(v1 + 240);
    v14 = *(v1 + 224);

    swift_unknownObjectRelease();
    (*(v13 + 8))(v12, v14);
    v9(v10, v11);
  }

  else
  {
    v15 = sub_232545888();
    v16 = sub_2325461F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2324C0000, v15, v16, "Failed to deliver payload to symptomsd-distributed", v17, 2u);
      MEMORY[0x238386450](v17, -1, -1);
    }

    v27 = *(v1 + 328);
    v18 = *(v1 + 312);
    v19 = *(v1 + 288);
    v20 = *(v1 + 256);
    v22 = *(v1 + 232);
    v21 = *(v1 + 240);
    v23 = *(v1 + 224);

    swift_unknownObjectRelease();
    (*(v22 + 8))(v21, v23);
    v27(v19, v20);
  }

  v24 = *(v1 + 296);
  [v24 invalidate];

  v25 = *(v1 + 8);

  return v25(v28);
}

uint64_t sub_2324E0404(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_232545E68();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_232545EA8();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_232545E58();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_232545EC8();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = sub_232546268();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E0650, v2, 0);
}

void sub_2324E0650()
{
  v89 = v0;
  v1 = *(**(v0 + 88) + 176);
  if (v1())
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 72) <= 0)
  {
    v73 = sub_232545888();
    v74 = sub_232546208();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2324C0000, v73, v74, "Stopping periodic payload sending", v75, 2u);
      MEMORY[0x238386450](v75, -1, -1);
    }

    v72 = 1;
    goto LABEL_25;
  }

  v87 = v1;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 88);
  sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v6 = (*(*v5 + 152))();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2324E25F8(&unk_2814D4EB0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  sub_232546378();
  v7 = sub_232546278();

  (*(v3 + 8))(v2, v4);
  v8 = (*(*v5 + 184))(v7);
  if (!(v87)(v8))
  {
    v76 = sub_232545888();
    v77 = sub_2325461F8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2324C0000, v76, v77, "Failed to create periodic timer", v78, 2u);
      MEMORY[0x238386450](v78, -1, -1);
    }

    v72 = 0;
    goto LABEL_25;
  }

  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = __OFADD__(v10, v9);
  v13 = v10 + v9;
  if (v12)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v11;
  v15 = v13;
  v16 = sub_232545888();
  v17 = sub_2325461E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v88 = v19;
    *v18 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D839F8];
    *(v20 + 16) = xmmword_232547150;
    v22 = MEMORY[0x277D83A80];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = v14;
    v23 = sub_232545F78();
    v25 = sub_2324C2220(v23, v24, &v88);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_232547150;
    *(v26 + 56) = MEMORY[0x277D839F8];
    *(v26 + 64) = v22;
    *(v26 + 32) = v15;
    v27 = sub_232545F78();
    v29 = sub_2324C2220(v27, v28, &v88);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_2324C0000, v16, v17, "Choosing random interval between %s and %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v19, -1, -1);
    MEMORY[0x238386450](v18, -1, -1);
  }

  if (v14 > v15)
  {
    goto LABEL_30;
  }

  if (COERCE__INT64(fabs(v15 - v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v30 = *(v0 + 192);
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);
  v33 = *(v0 + 160);
  v80 = *(v0 + 200);
  v81 = *(v0 + 168);
  v34 = *(v0 + 152);
  v84 = *(v0 + 144);
  v35 = sub_2324E2058(0x20000000000001uLL);
  v36 = (v15 - v14) * vcvtd_n_f64_u64(v35, 0x35uLL) + v14;
  if (v35 == 0x20000000000000)
  {
    v37 = v15;
  }

  else
  {
    v37 = v36;
  }

  ObjectType = swift_getObjectType();
  sub_232545EB8();
  sub_232545ED8();
  v82 = *(v31 + 8);
  v82(v30, v32);
  v38 = *MEMORY[0x277D85180];
  v39 = sub_232545E58();
  v40 = *(*(v39 - 8) + 104);
  v40(v81, v38, v39);
  *v33 = 0;
  v40(v33, *MEMORY[0x277D85168], v39);
  MEMORY[0x2383858E0](v80, v81, v33, ObjectType);
  v41 = *(v34 + 8);
  v41(v33, v84);
  v41(v81, v84);
  v82(v80, v32);
  v42 = sub_232545888();
  v43 = sub_2325461E8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v88 = v45;
    *v44 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D839F8];
    *(v46 + 16) = xmmword_232547150;
    v48 = MEMORY[0x277D83A80];
    *(v46 + 56) = v47;
    *(v46 + 64) = v48;
    *(v46 + 32) = v37;
    v49 = sub_232545F78();
    v51 = sub_2324C2220(v49, v50, &v88);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_2324C0000, v42, v43, "Current publishing interval is %s seconds", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x238386450](v45, -1, -1);
    MEMORY[0x238386450](v44, -1, -1);
  }

  v52 = *(v0 + 128);
  v53 = *(v0 + 136);
  v54 = *(v0 + 112);
  v55 = *(v0 + 104);
  v83 = *(v0 + 96);
  v85 = *(v0 + 120);
  v56 = *(v0 + 80);
  v57 = *(v0 + 72);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = v58;
  v60[4] = v57;
  v60[5] = v56;
  *(v0 + 48) = sub_2324E20E4;
  *(v0 + 56) = v60;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2324D0160;
  *(v0 + 40) = &block_descriptor_15;
  v61 = _Block_copy((v0 + 16));

  sub_232545E78();
  sub_2324DDFC0();
  sub_232546298();
  _Block_release(v61);
  (*(v55 + 8))(v54, v83);
  (*(v52 + 8))(v53, v85);

  sub_2325462C8();
  v62 = sub_232545888();
  v63 = sub_232546208();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v88 = v65;
    *v64 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v66 = swift_allocObject();
    v67 = MEMORY[0x277D839F8];
    *(v66 + 16) = xmmword_232547150;
    v68 = MEMORY[0x277D83A80];
    *(v66 + 56) = v67;
    *(v66 + 64) = v68;
    *(v66 + 32) = v37;
    v69 = sub_232545F78();
    v71 = sub_2324C2220(v69, v70, &v88);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_2324C0000, v62, v63, "Started periodic/random record creating [current interval: %s seconds]", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x238386450](v65, -1, -1);
    MEMORY[0x238386450](v64, -1, -1);
  }

  swift_unknownObjectRelease();

  v72 = 1;
LABEL_25:

  v79 = *(v0 + 8);

  v79(v72);
}

uint64_t sub_2324E10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    result = swift_beginAccess();
    v12 = *(a2 + 16);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(a2 + 16) = v14;
      v15 = sub_2325460F8();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v11;
      v16[5] = a2;
      v16[6] = a3;
      v16[7] = a4;

      sub_2324D9D7C(0, 0, v9, &unk_232547970, v16);
    }
  }

  return result;
}

uint64_t sub_2324E1260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_2324E1288, 0, 0);
}

uint64_t sub_2324E1288()
{

  v1 = sub_232545888();
  v2 = sub_232546208();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 56);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = *(v3 + 16);

    _os_log_impl(&dword_2324C0000, v1, v2, "Performing record creation [iteration %ld]", v4, 0xCu);
    MEMORY[0x238386450](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(**(v0 + 48) + 328);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2324E1474;

  return v8();
}

uint64_t sub_2324E1474()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v8 = (*(*v2 + 336) + **(*v2 + 336));
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v3;
  v4[1] = sub_2324E1684;
  v5 = v1[9];
  v6 = v1[8];

  return v8(v6, v5);
}

uint64_t sub_2324E1684(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_2324E1784, 0, 0);
}

uint64_t sub_2324E17A4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *(type metadata accessor for NDFDevice(0) - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E1884, v1, 0);
}

void (*sub_2324E1884())(uint64_t, void)
{
  v43 = v0;
  v1 = *((*(**(v0 + 88) + 248))() + 16);

  if (v1)
  {
    result = (*(**(v0 + 88) + 264))(v0 + 48);
    if (!*(*v3 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(*(v0 + 96) + 80);
    sub_2324CE250(*v3 + ((v7 + 32) & ~v7), v5);
    sub_2324E2250(0, 1);
    v4(v0 + 48, 0);
    sub_2324CE250(v5, v6);
    v8 = sub_232545888();
    v9 = sub_232546208();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v10)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = v14;
      *v13 = 136315138;
      v15 = sub_2324F6270();
      v17 = v16;
      sub_2324CE2B4(v11);
      v18 = sub_2324C2220(v15, v17, &v42);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2324C0000, v8, v9, "Removed a pending CloudKit update for: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x238386450](v14, -1, -1);
      MEMORY[0x238386450](v13, -1, -1);
    }

    else
    {

      sub_2324CE2B4(v11);
    }

    sub_2324CE2B4(v12);
  }

  v19 = *(v0 + 88);
  sub_2324CE250(*(v0 + 80), *(v0 + 112));
  v20 = (*(*v19 + 264))(v0 + 16);
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_2324E1E80(0, v23[2] + 1, 1, v23);
    *v22 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_2324E1E80((v25 > 1), v26 + 1, 1, v23);
    *v22 = v23;
  }

  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 96);
  v30 = *(v0 + 80);
  v23[2] = v26 + 1;
  sub_2324DB2D0(v27, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
  v20(v0 + 16, 0);
  sub_2324CE250(v30, v28);
  v31 = sub_232545888();
  v32 = sub_232546208();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 104);
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    v37 = sub_2324F6270();
    v39 = v38;
    sub_2324CE2B4(v34);
    v40 = sub_2324C2220(v37, v39, &v42);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_2324C0000, v31, v32, "Queued pending CloudKit update for: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x238386450](v36, -1, -1);
    MEMORY[0x238386450](v35, -1, -1);
  }

  else
  {

    sub_2324CE2B4(v34);
  }

  v41 = swift_task_alloc();
  *(v0 + 136) = v41;
  *v41 = v0;
  v41[1] = sub_2324E1CFC;

  return sub_2324DCEE8();
}

uint64_t sub_2324E1CFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2324E1E80(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v10 = *(type metadata accessor for NDFDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NDFDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2324E2058(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x238386460](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x238386460](&v3, 8);
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

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2324E2108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NDFDevice(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2324E2250(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2324E1E80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2324E2108(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t type metadata accessor for NDFDistributionController(uint64_t a1)
{
  result = qword_2814D6C30;
  if (!qword_2814D6C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2324E2364(uint64_t a1)
{
  sub_2325458A8();
  if (v1 <= 0x3F)
  {
    sub_2324E2460(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2324E2460(uint64_t a1)
{
  if (!qword_27DD932F8)
  {
    sub_232545B08();
    v1 = sub_232546128();
    if (!v2)
    {
      atomic_store(v1, &qword_27DD932F8);
    }
  }
}

uint64_t sub_2324E24C0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2324C2910;

  return sub_2324DD864(a1, v5, v6, v4);
}

uint64_t sub_2324E2568()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2324C290C;

  return sub_2324DDC08(v0);
}

uint64_t sub_2324E25F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2324E2640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2324E2694(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2324C290C;

  return sub_2324E1260(a1, v8, v9, v4, v5, v7, v6);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2324E27BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F46E8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324E282C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_2324E28B0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2324E28F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2324E29B0()
{
  sub_2324E8FA0();
}

void sub_2324E29EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v98 = a1;
  v7 = sub_232545688();
  v90 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = v82 - v10;
  v100 = type metadata accessor for NDFEvent(0);
  v11 = *(v100 - 8);
  v12 = MEMORY[0x28223BE20](v100);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v101 = v82 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v82 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v99 = v82 - v21;
  MEMORY[0x28223BE20](v20);
  v102 = (v82 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v82 - v24;
  v26 = sub_2325456F8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v92 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v29 = 0xE500000000000000;
    goto LABEL_5;
  }

  sub_232545698();
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    v36 = v92;
    v37 = (*(v27 + 32))(v92, v25, v26);
    v38 = (*(*v4 + 112))(v37);
    v39 = *(v38 + 16);
    v40 = v27;
    v85 = v26;
    if (v39 && (v41 = sub_2324E6CD4(v36), (v42 & 1) != 0) && (v43 = *(*(v38 + 56) + 8 * v41), , , (v97 = *(v43 + 16)) != 0))
    {
      v83 = v40;
      v89 = v7;
      v45 = 0;
      v93 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
      v46 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v82[1] = v43;
      v96 = v43 + v46;
      v47 = v11;
      v48 = *(v11 + 72);
      v86 = v98 + v46;
      v84 = v47;
      v90 += 5;
      v91 = (v47 + 56);
      *&v44 = 136315138;
      v87 = v44;
      v88 = v4;
      v49 = v95;
      v50 = v99;
      v51 = v102;
      do
      {
        sub_2324D32DC(v96 + v48 * v45, v51);
        v53 = *(v51 + 8);
        if (v53)
        {
          v54 = *(v98 + 16);
          if (v54)
          {
            v55 = *v102;
            v56 = v86;
            while (1)
            {
              sub_2324D32DC(v56, v19);
              if (sub_232536950(*v19, v19[8], v55, v53))
              {
                break;
              }

              sub_2324D3340(v19);
              v56 += v48;
              if (!--v54)
              {
                goto LABEL_23;
              }
            }

            sub_2324E6D6C(v19, v49);
            (*v91)(v49, 0, 1, v100);
            sub_2324C28AC(v49, &qword_27DD93400, &qword_2325479C0);
          }

          else
          {
LABEL_23:
            (*v91)(v49, 1, 1, v100);
            v57 = v101;
            sub_2324D32DC(v102, v101);
            v58 = sub_232545888();
            v59 = sub_232546208();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v103 = v61;
              *v60 = v87;
              swift_beginAccess();
              v62 = sub_2325384B0();
              v64 = sub_2324C2220(v62, v63, &v103);

              *(v60 + 4) = v64;
              v4 = v88;
              _os_log_impl(&dword_2324C0000, v58, v59, "Assume event %s has ended", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v61);
              v65 = v61;
              v57 = v101;
              MEMORY[0x238386450](v65, -1, -1);
              v66 = v60;
              v49 = v95;
              MEMORY[0x238386450](v66, -1, -1);
            }

            v52 = v94;
            sub_232545668();
            swift_beginAccess();
            (*v90)(v57 + *(v100 + 24), v52, v89);
            *(v57 + 9) = 3;
            (*(*v4 + 144))(v57);
            sub_2324C28AC(v49, &qword_27DD93400, &qword_2325479C0);
            sub_2324D3340(v57);
          }

          v50 = v99;
        }

        else
        {
          sub_2324D32DC(v51, v50);
          v67 = sub_232545888();
          v68 = sub_232546208();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v103 = v70;
            *v69 = v87;
            v71 = sub_2325384B0();
            v73 = v72;
            sub_2324D3340(v99);
            v74 = sub_2324C2220(v71, v73, &v103);
            v50 = v99;

            *(v69 + 4) = v74;
            _os_log_impl(&dword_2324C0000, v67, v68, "Not prematurely ending misconfigured event %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v70);
            v75 = v70;
            v4 = v88;
            MEMORY[0x238386450](v75, -1, -1);
            v76 = v69;
            v49 = v95;
            MEMORY[0x238386450](v76, -1, -1);
          }

          else
          {

            sub_2324D3340(v50);
          }
        }

        v51 = v102;
        ++v45;
        sub_2324D3340(v102);
      }

      while (v45 != v97);

      v77 = v98;
      v11 = v84;
      v40 = v83;
      v78 = *(v98 + 16);
      if (!v78)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v77 = v98;
      v78 = *(v98 + 16);
      if (!v78)
      {
LABEL_32:
        (*(v40 + 8))(v92, v85);
        return;
      }
    }

    v79 = *(*v4 + 144);
    v80 = v77 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v81 = *(v11 + 72);
    do
    {
      sub_2324D32DC(v80, v14);
      v79(v14);
      sub_2324D3340(v14);
      v80 += v81;
      --v78;
    }

    while (v78);
    goto LABEL_32;
  }

  sub_2324C28AC(v25, &unk_27DD932E0, qword_2325472E0);
  v29 = a3;
LABEL_5:

  v30 = sub_232545888();
  v31 = sub_2325461F8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v104[0] = v33;
    *v32 = 136315138;
    if (a3)
    {
      v34 = a2;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
    }

    v35 = sub_2324C2220(v34, v29, v104);

    *(v32 + 4) = v35;
    _os_log_impl(&dword_2324C0000, v30, v31, "Failed to process polled events: invalid deviceID %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x238386450](v33, -1, -1);
    MEMORY[0x238386450](v32, -1, -1);
  }
}

uint64_t sub_2324E33C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NDFEvent(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_2324D32DC(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_2324D3340(v10);
      }

      if (v14)
      {
        break;
      }

      sub_2324D3340(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_2324E6D6C(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void sub_2324E353C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v103 - v5;
  v6 = sub_232545688();
  v111 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = &v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v103 - v12;
  v13 = type metadata accessor for NDFEvent(0);
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v115 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v103 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v108 = &v103 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v107 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v117 = &v103 - v24;
  v114 = v25;
  MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  v28 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v120 = a1;
  sub_2324D32DC(a1, &v103 - v26);
  v29 = sub_232545888();
  v30 = sub_232546208();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v113 = v2;
    v109 = v6;
    v33 = v28;
    v34 = v32;
    v124[0] = v32;
    *v31 = 136315138;
    v35 = sub_2325384B0();
    v36 = v9;
    v37 = v18;
    v39 = v38;
    sub_2324D3340(v27);
    v40 = sub_2324C2220(v35, v39, v124);
    v18 = v37;
    v9 = v36;

    *(v31 + 4) = v40;
    _os_log_impl(&dword_2324C0000, v29, v30, "Noted event %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v41 = v34;
    v28 = v33;
    v6 = v109;
    v2 = v113;
    MEMORY[0x238386450](v41, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);
  }

  else
  {

    v42 = sub_2324D3340(v27);
  }

  v43 = (*v2 + 112);
  v113 = *v43;
  v44 = (v113)(v42);
  v45 = v120;
  if (!*(v44 + 16) || (v46 = sub_2324E6CD4(v120 + *(v119 + 28)), (v47 & 1) == 0))
  {

    LOBYTE(v124[0]) = *(v45 + 9);
    LOBYTE(v121) = 3;
    sub_2324E6DD0();
    if (sub_232545F48())
    {
LABEL_11:
      v52 = 1;
      goto LABEL_12;
    }

LABEL_10:
    (*(*v2 + 184))(v45);
    goto LABEL_11;
  }

  v106 = v43;
  v48 = *(*(v44 + 56) + 8 * v46);

  MEMORY[0x28223BE20](v49);
  *(&v103 - 2) = v45;
  v50 = v110;
  sub_2324E33C0(sub_2324E8E28, v48, v110);
  v51 = v119;

  if ((*(v118 + 48))(v50, 1, v51) == 1)
  {
    sub_2324C28AC(v50, &qword_27DD93400, &qword_2325479C0);
    LOBYTE(v124[0]) = *(v45 + 9);
    LOBYTE(v121) = 3;
    sub_2324E6DD0();
    if (sub_232545F48())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v105 = v28;
  v79 = v117;
  sub_2324E6D6C(v50, v117);
  v80 = *(v79 + 9);
  v81 = *(v111 + 16);
  v81(v112, v79 + *(v51 + 24), v6);
  v82 = *(v45 + 9);
  v81(v9, v45 + *(v51 + 24), v6);
  LOBYTE(v124[0]) = v82;
  LOBYTE(v121) = v80;
  sub_2324E6DD0();
  v83 = sub_232545F48();
  v104 = v9;
  if ((v83 & 1) != 0 && (sub_232545618() & 1) == 0)
  {
    v52 = 0;
  }

  else
  {
    LODWORD(v119) = v82;
    v84 = v107;
    sub_2324D32DC(v117, v107);
    v85 = v108;
    sub_2324D32DC(v45, v108);
    v86 = sub_232545888();
    v87 = sub_232546208();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v109 = v6;
      v89 = v88;
      v90 = swift_slowAlloc();
      v124[0] = v90;
      *v89 = 136315394;
      v91 = sub_2325384B0();
      v92 = v84;
      v93 = v85;
      v95 = v94;
      sub_2324D3340(v92);
      v96 = sub_2324C2220(v91, v95, v124);

      *(v89 + 4) = v96;
      *(v89 + 12) = 2080;
      v97 = sub_2325384B0();
      v99 = v98;
      sub_2324D3340(v93);
      v100 = sub_2324C2220(v97, v99, v124);

      *(v89 + 14) = v100;
      _os_log_impl(&dword_2324C0000, v86, v87, "Updating event %s to %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v90, -1, -1);
      v101 = v89;
      v6 = v109;
      MEMORY[0x238386450](v101, -1, -1);
    }

    else
    {

      sub_2324D3340(v85);
      sub_2324D3340(v84);
    }

    (*(*v2 + 176))(v117);
    (*(*v2 + 184))(v45);
    v52 = 1;
    LOBYTE(v82) = v119;
  }

  v123 = v82;
  v122 = 3;
  sub_2324E6F6C();
  sub_232546008();
  sub_232546008();
  if (LODWORD(v124[0]) == v121)
  {
    (*(*v2 + 176))(v45);
    v52 = 1;
  }

  v102 = *(v111 + 8);
  v102(v104, v6);
  v102(v112, v6);
  sub_2324D3340(v117);
LABEL_12:
  sub_2324D32DC(v45, v18);
  v53 = sub_232545888();
  v54 = sub_232546208();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v124[0] = v56;
    *v55 = 136315394;
    v57 = sub_2325384B0();
    v59 = v58;
    sub_2324D3340(v18);
    v60 = sub_2324C2220(v57, v59, v124);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    if (v52)
    {
      v61 = 7562617;
    }

    else
    {
      v61 = 28526;
    }

    if (v52)
    {
      v62 = 0xE300000000000000;
    }

    else
    {
      v62 = 0xE200000000000000;
    }

    v63 = sub_2324C2220(v61, v62, v124);

    *(v55 + 14) = v63;
    _os_log_impl(&dword_2324C0000, v53, v54, "Done noting event %s [update clients? %s]", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v56, -1, -1);
    MEMORY[0x238386450](v55, -1, -1);
  }

  else
  {

    sub_2324D3340(v18);
  }

  v64 = sub_232545888();
  v65 = sub_2325461E8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v124[0] = v67;
    *v66 = 136315138;
    v113();
    sub_2325456F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v68 = sub_232545EF8();
    v70 = v69;

    v71 = sub_2324C2220(v68, v70, v124);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_2324C0000, v64, v65, "All known events: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x238386450](v67, -1, -1);
    MEMORY[0x238386450](v66, -1, -1);
  }

  v72 = v120;
  if (v52)
  {
    (*(*v2 + 208))(v120);
    v73 = sub_2325460F8();
    v74 = v116;
    (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
    v75 = v115;
    sub_2324D32DC(v72, v115);
    v76 = sub_2324E8DE0(qword_2814D4DD8, type metadata accessor for NDFEventController, &unk_232547A08);
    v77 = (*(v118 + 80) + 40) & ~*(v118 + 80);
    v78 = swift_allocObject();
    v78[2] = v2;
    v78[3] = v76;
    v78[4] = v2;
    sub_2324E6D6C(v75, v78 + v77);
    swift_retain_n();
    sub_2324C8F70(0, 0, v74, &unk_2325479D0, v78);
  }
}

uint64_t sub_2324E4200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2324E4220, a4, 0);
}

uint64_t sub_2324E4220()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController);
  v0[4] = v1;
  v2 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x42F9000000000000;
  v0[5] = *(*v1 + 248);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324E4268, v1, 0);
}

uint64_t sub_2324E4268()
{
  (*(v0 + 40))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324E42CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  (*(*v4 + 168))(a1, a2, a3);
  v15 = type metadata accessor for NDFEvent(0);
  if ((*(*(v15 - 8) + 48))(v11, 1, v15) == 1)
  {
    sub_2324C28AC(v11, &qword_27DD93400, &qword_2325479C0);
    v16 = sub_2325456F8();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_2325456E8();
    result = (*(v17 + 48))(v14, 1, v16);
    if (result != 1)
    {
      return sub_2324C28AC(v14, &unk_27DD932E0, qword_2325472E0);
    }
  }

  else
  {
    v19 = *(v15 + 36);
    v20 = sub_2325456F8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v14, &v11[v19], v20);
    sub_2324D3340(v11);
    (*(v21 + 56))(v14, 0, 1, v20);
    return (*(v21 + 32))(a4, v14, v20);
  }

  return result;
}

uint64_t sub_2324E4598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_2325456F8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = sub_232545688();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2324E6FC0(a1, a2);
  sub_232545668();
  (*(v13 + 16))(v18, a3, v12);
  sub_2324CF3C4(v23, v11, &unk_27DD932E0, qword_2325472E0);
  (*(*v5 + 152))(a1, a2, a3);
  return sub_232538370(a1, a2, 1, v21, v18, v11, v16, v24);
}

uint64_t sub_2324E47B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2;
  v9 = type metadata accessor for NDFEvent(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  v17 = (*(*v4 + 112))(v14);
  if (*(v17 + 16) && (v18 = sub_2324E6CD4(a3), (v19 & 1) != 0) && (v20 = *(*(v17 + 56) + 8 * v18), , result = , (v22 = *(v20 + 16)) != 0))
  {
    v23 = 0;
    while (v23 < *(v20 + 16))
    {
      sub_2324D32DC(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v13);
      if (sub_232536950(*v13, v13[8], a1, v6))
      {

        sub_2324E6D6C(v13, v16);
        sub_2324E6D6C(v16, a4);
        v24 = 0;
        return (*(v10 + 56))(a4, v24, 1, v9);
      }

      ++v23;
      result = sub_2324D3340(v13);
      if (v22 == v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v24 = 1;
    return (*(v10 + 56))(a4, v24, 1, v9);
  }

  return result;
}

uint64_t sub_2324E49B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDFEvent(0);
  v9 = *(v5 + 16);
  v27 = *(v8 + 28);
  v9(v7, a1 + v27, v4);
  v10 = *(*v1 + 128);
  v25 = *v1 + 128;
  v26 = v10;
  v11 = v10(v29);
  v12 = sub_2324E4CB0(v28);
  v14 = v12;
  if (*v13)
  {
    v15 = v13;
    MEMORY[0x28223BE20](v12);
    *(&v25 - 2) = a1;
    result = sub_2324E73C8(sub_2324E6FD4, (&v25 - 4));
    v17 = *(*v15 + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    sub_2324E88F0(result, v17);
    (v14)(v28, 0);
    (*(v5 + 8))(v7, v4);
    v18 = v11(v29, 0);
  }

  else
  {
    (v12)(v28, 0);
    (*(v5 + 8))(v7, v4);
    v18 = v11(v29, 0);
  }

  v19 = (*(*v2 + 112))(v18);
  if (!*(v19 + 16))
  {
  }

  v20 = sub_2324E6CD4(a1 + v27);
  if ((v21 & 1) == 0)
  {
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  v23 = *(v22 + 16);

  if (!v23)
  {
    v24 = v26(v29);
    sub_2324E4E40(a1 + v27);

    return v24(v29, 0);
  }

  return result;
}

uint64_t (*sub_2324E4CB0(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2325456F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2324E71F4(v4, v9);
  return sub_2324E4DC8;
}

void sub_2324E4DC8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_2324E4E40(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2324E6CD4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2324E7D94();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_2325456F8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_2324E7A74(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_2324E4F08(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFEvent(0);
  v5 = v4 - 8;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 36);
  v14 = *(*v2 + 112);
  v37[1] = *v2 + 112;
  v38 = v14;
  if (!*((v14)(v10) + 16))
  {

    goto LABEL_5;
  }

  sub_2324E6CD4(a1 + v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_5:
    v17 = (*(*v2 + 128))(v41);
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = *v19;
    *v19 = 0x8000000000000000;
    sub_2324E849C(MEMORY[0x277D84F90], a1 + v13, isUniquelyReferenced_nonNull_native);
    *v19 = v40[0];
    v17(v41, 0);
  }

  (*(v9 + 16))(v12, a1 + v13, v8);
  v21 = (*(*v2 + 128))(v41);
  v23 = sub_2324E4CB0(v40);
  if (*v22)
  {
    v24 = v22;
    v37[0] = v8;
    sub_2324D32DC(a1, v7);
    v25 = *v24;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_2324E6AFC(0, v25[2] + 1, 1, v25);
      *v24 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_2324E6AFC((v27 > 1), v28 + 1, 1, v25);
      *v24 = v25;
    }

    v25[2] = v28 + 1;
    sub_2324E6D6C(v7, v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v28);
    (v23)(v40, 0);
    (*(v9 + 8))(v12, v37[0]);
  }

  else
  {
    (v23)(v40, 0);
    (*(v9 + 8))(v12, v8);
  }

  v21(v41, 0);

  v29 = sub_232545888();
  v30 = sub_2325461E8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41[0] = v32;
    *v31 = 136315138;
    v38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v33 = sub_232545EF8();
    v35 = v34;

    v36 = sub_2324C2220(v33, v35, v41);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_2324C0000, v29, v30, "All known events: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);
  }
}

void *sub_2324E5428()
{
  v1 = type metadata accessor for NDFEvent(0);
  v51 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v66 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = &v50 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v63 = sub_2325456F8();
  v8 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  result = (*(*v0 + 112))(v14);
  v18 = 0;
  v20 = result + 8;
  v19 = result[8];
  v54 = v8;
  v55 = result;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v52 = v8 + 32;
  v53 = v8 + 16;
  v56 = (v8 + 8);
  v25 = MEMORY[0x277D84F90];
  v60 = v16;
  v61 = v13;
  v57 = v24;
  v58 = result + 8;
  while (v23)
  {
    v27 = v18;
LABEL_16:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v33 = v54;
    v32 = v55;
    v34 = v63;
    (*(v54 + 16))(v62, *(v55 + 48) + *(v54 + 72) * v31, v63);
    v35 = *(*(v32 + 56) + 8 * v31);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
    v37 = *(v36 + 48);
    v38 = *(v33 + 32);
    v13 = v61;
    v38(v61, v62, v34);
    *&v13[v37] = v35;
    (*(*(v36 - 8) + 56))(v13, 0, 1, v36);

    v16 = v60;
LABEL_17:
    sub_2324E89B0(v13, v16);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
    if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
    {

      return v25;
    }

    v40 = *&v16[*(v39 + 48)];
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = *(v51 + 80);
      v59 = v40;
      v64 = (v42 + 32) & ~v42;
      v43 = v40 + v64;
      v44 = *(v51 + 72);
      do
      {
        sub_2324D32DC(v43, v7);
        v45 = v7[9];
        v70 = v45;
        v69 = 0;
        sub_2324E6DD0();
        if (sub_232545F48() & 1) != 0 || (v68 = v45, v67 = 3, (sub_232545F48()))
        {
          sub_2324D3340(v7);
        }

        else
        {
          v46 = v65;
          sub_2324D32DC(v7, v65);
          *(v46 + 9) = 2;
          sub_2324D32DC(v46, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2324E6AFC(0, v25[2] + 1, 1, v25);
          }

          v48 = v25[2];
          v47 = v25[3];
          if (v48 >= v47 >> 1)
          {
            v25 = sub_2324E6AFC((v47 > 1), v48 + 1, 1, v25);
          }

          sub_2324D3340(v65);
          sub_2324D3340(v7);
          v25[2] = v48 + 1;
          sub_2324E6D6C(v66, v25 + v64 + v48 * v44);
        }

        v43 += v44;
        --v41;
      }

      while (v41);

      v26 = v63;
      v16 = v60;
      v13 = v61;
    }

    else
    {

      v26 = v63;
    }

    result = (*v56)(v16, v26);
    v24 = v57;
    v20 = v58;
  }

  if (v24 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
      v23 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v23 = v20[v27];
    ++v18;
    if (v23)
    {
      v18 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2324E5A10(uint64_t a1)
{
  v3 = (*(*v1 + 112))();
  if (*(v3 + 16) && (v4 = sub_2324E6CD4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2324E5A90(uint64_t a1)
{
  v3 = type metadata accessor for NDFEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_2325460F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2324D32DC(a1, v6);
  v11 = sub_2324E8DE0(qword_2814D4DD8, type metadata accessor for NDFEventController, &unk_232547A08);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v11;
  v13[4] = v1;
  sub_2324E6D6C(v6, v13 + v12);
  swift_retain_n();
  sub_2324C8F70(0, 0, v9, &unk_2325479F8, v13);
}

uint64_t sub_2324E5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for NDFEvent(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E5D08, a4, 0);
}

uint64_t sub_2324E5D08()
{
  v17 = v0;
  sub_2324D32DC(v0[3], v0[4]);
  v1 = sub_232545888();
  v2 = sub_232546208();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[4];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = sub_2325384B0();
    v9 = v8;
    sub_2324D3340(v4);
    v10 = sub_2324C2220(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2324C0000, v1, v2, "Delivering event %s to all clients", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  else
  {

    sub_2324D3340(v4);
  }

  v11 = *sub_2324C8418();
  if (v11)
  {
    v12 = *(v11 + 112);
    v0[5] = v12;
    v13 = (*v12 + 160) & 0xFFFFFFFFFFFFLL | 0xDF24000000000000;
    v0[6] = *(*v12 + 160);
    v0[7] = v13;

    return MEMORY[0x2822009F8](sub_2324E5F00, v12, 0);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2324E5F00()
{
  (*(v0 + 48))(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324E5F78()
{
  v1 = type metadata accessor for NDFEvent(0);
  v74 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v97 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2325456F8();
  v88 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - v7;
  MEMORY[0x28223BE20](v6);
  v86 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v83 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v85 = v0;
  v16 = sub_232545888();
  v17 = sub_232546208();
  v18 = os_log_type_enabled(v16, v17);
  v95 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2324C0000, v16, v17, "\tKnown Events:", v19, 2u);
    v20 = v19;
    v13 = v95;
    MEMORY[0x238386450](v20, -1, -1);
  }

  result = (*(*v85 + 112))();
  v23 = 0;
  v25 = result + 64;
  v24 = *(result + 64);
  v87 = result;
  v26 = 1 << *(result + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v93 = (v88 + 16);
  v94 = (v88 + 32);
  v92 = (v88 + 8);
  *&v22 = 136315394;
  v75 = v22;
  v90 = result + 64;
  v91 = v15;
  v89 = v29;
  v73 = v3;
  v76 = v8;
  if ((v27 & v24) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v30 = v23;
LABEL_18:
      v96 = (v28 - 1) & v28;
      v33 = __clz(__rbit64(v28)) | (v30 << 6);
      v34 = v87;
      v35 = v88;
      v36 = v86;
      (*(v88 + 16))(v86, *(v87 + 48) + *(v88 + 72) * v33, v3);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      v39 = *(v38 + 48);
      v40 = *(v35 + 32);
      v13 = v95;
      v41 = v36;
      v42 = v3;
      v40(v95, v41, v3);
      *&v13[v39] = v37;
      (*(*(v38 - 8) + 56))(v13, 0, 1, v38);

      v15 = v91;
LABEL_19:
      sub_2324E89B0(v13, v15);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      if ((*(*(v43 - 8) + 48))(v15, 1, v43) == 1)
      {
      }

      v44 = *&v15[*(v43 + 48)];
      v3 = v42;
      (*v94)(v8, v15, v42);
      if (*(v44 + 16))
      {
        break;
      }

      (*v92)(v8, v42);

      v29 = v89;
      v25 = v90;
LABEL_8:
      v13 = v95;
      v28 = v96;
      if (!v96)
      {
        goto LABEL_10;
      }
    }

    v45 = v84;
    (*v93)(v84, v8, v42);

    v46 = sub_232545888();
    v47 = sub_232546208();

    if (!os_log_type_enabled(v46, v47))
    {

      v65 = *v92;
      (*v92)(v45, v42);
      result = (v65)(v8, v42);
      v29 = v89;
      v25 = v90;
      goto LABEL_8;
    }

    v81 = v47;
    v48 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v99[0] = v80;
    *v48 = v75;
    sub_2324E8DE0(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = sub_232546608();
    v51 = v50;
    v79 = *v92;
    v79(v45, v42);
    v52 = sub_2324C2220(v49, v51, v99);

    *(v48 + 4) = v52;
    v82 = v48;
    *(v48 + 12) = 2080;
    v53 = *(v44 + 16);
    if (v53)
    {
      v78 = v46;
      v98 = MEMORY[0x277D84F90];
      sub_2324E8668(0, v53, 0);
      v54 = v98;
      v55 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v77 = v44;
      v56 = v44 + v55;
      v57 = *(v74 + 72);
      do
      {
        v58 = v97;
        sub_2324D32DC(v56, v97);
        v59 = sub_2325384B0();
        v61 = v60;
        sub_2324D3340(v58);
        v98 = v54;
        v63 = *(v54 + 16);
        v62 = *(v54 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_2324E8668((v62 > 1), v63 + 1, 1);
          v54 = v98;
        }

        *(v54 + 16) = v63 + 1;
        v64 = v54 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
        v56 += v57;
        --v53;
      }

      while (v53);

      v3 = v73;
      v13 = v95;
      v15 = v91;
      v46 = v78;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
      v13 = v95;
    }

    v98 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v67 = sub_232545F28();
    v69 = v68;

    v70 = sub_2324C2220(v67, v69, v99);

    v71 = v82;
    *(v82 + 14) = v70;
    _os_log_impl(&dword_2324C0000, v46, v81, "\t\tDevice %s: %s", v71, 0x16u);
    v72 = v80;
    swift_arrayDestroy();
    MEMORY[0x238386450](v72, -1, -1);
    MEMORY[0x238386450](v71, -1, -1);

    v8 = v76;
    result = (v79)(v76, v3);
    v29 = v89;
    v25 = v90;
    v28 = v96;
  }

  while (v96);
LABEL_10:
  if (v29 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v29)
    {
      v42 = v3;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      (*(*(v66 - 8) + 56))(v13, 1, 1, v66);
      v96 = 0;
      v23 = v32;
      goto LABEL_19;
    }

    v28 = *(v25 + 8 * v30);
    ++v23;
    if (v28)
    {
      v23 = v30;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2324E687C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324E6904()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324E699C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2324F46E8();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents) = MEMORY[0x277D84F98];
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController;
  *(v0 + v4) = *sub_2324E8FA0();

  return v0;
}

uint64_t sub_2324E6A54()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2324F46E8();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents) = MEMORY[0x277D84F98];
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController;
  *(v0 + v4) = *sub_2324E8FA0();

  return v0;
}

void *sub_2324E6AFC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93420, &qword_232547A88);
  v10 = *(type metadata accessor for NDFEvent(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NDFEvent(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2324E6CD4(uint64_t a1)
{
  sub_2325456F8();
  sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_232545F08();

  return sub_2324E7034(a1, v2);
}

uint64_t sub_2324E6D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324E6DD0()
{
  result = qword_2814D4C80;
  if (!qword_2814D4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C80);
  }

  return result;
}

uint64_t type metadata accessor for NDFEventController(uint64_t a1)
{
  result = qword_2814D6CA0;
  if (!qword_2814D6CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324E6E70(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return sub_2324E6E84(a1);
  }

  return a1;
}

uint64_t sub_2324E6E84(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2324E6E94()
{
  v2 = *(type metadata accessor for NDFEvent(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2324C290C;

  return sub_2324E4200(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_2324E6F6C()
{
  result = qword_2814D4C78;
  if (!qword_2814D4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C78);
  }

  return result;
}

uint64_t sub_2324E6FC0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return sub_2324D339C(result);
  }

  return result;
}

unint64_t sub_2324E7034(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2324E8DE0(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_232545F48();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void (*sub_2324E71F4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_2325456F8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_2324E83B0(v6);
  v6[12] = sub_2324E8100(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2324E7330;
}

void sub_2324E7330(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_2324E73C8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for NDFEvent(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_2324E8014(a1, a2, *v2);
  if (!v3)
  {
    v43 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v35 = v13;
    v36 = v10;
    v34 = v2;
    v42 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v42;
      }

      v37 = v7;
      v38 = a2;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v25 = v24 * v19;
        v26 = v39;
        sub_2324D32DC(v23 + v24 * v19, v39);
        v27 = v43;
        v28 = v40(v26);
        result = sub_2324D3340(v26);
        v43 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v16 = v22;
        }

        else
        {
          v29 = v42;
          if (v19 == v42)
          {
            v7 = v37;
            v16 = v22;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v42 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v42;
            result = sub_2324D32DC(v23 + v24 * v42, v35);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            sub_2324D32DC(v23 + v25, v36);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_2324E8794(v22);
            }

            v32 = v16 + v41;
            result = sub_2324E8D7C(v36, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_2324E8D7C(v35, v32 + v25);
            *v34 = v16;
            v7 = v37;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2324E7698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93428, qword_232547A90);
  v39 = v4;
  result = sub_2325464A8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_232545F08();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_2324E7A74(int64_t a1, uint64_t a2)
{
  v40 = sub_2325456F8();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_232546398();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_232545F08();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_2324E7D94()
{
  v1 = v0;
  v33 = sub_2325456F8();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93428, qword_232547A90);
  v3 = *v0;
  v4 = sub_232546498();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_2324E8014(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for NDFEvent(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void (*sub_2324E8100(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2325456F8();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2324E6CD4(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_2324E7D94();
      v15 = v23;
      goto LABEL_14;
    }

    sub_2324E7698(v20, a3 & 1);
    v15 = sub_2324E6CD4(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_2324E82B0;
}

void sub_2324E82B0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2324E83E4(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2324E7A74(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_2324E83B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2324E83D8;
}

uint64_t sub_2324E83E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2324E849C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2324E6CD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2324E7D94();
      goto LABEL_7;
    }

    sub_2324E7698(v17, a3 & 1);
    v22 = sub_2324E6CD4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2324E83E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

char *sub_2324E8668(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2324E8688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2324E8688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93220, &qword_232547530);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2324E87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NDFEvent(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2324E88F0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2324E6AFC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2324E87A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2324E89B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NDFEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  sub_2324E6E70(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[6];
  v6 = sub_232545688();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = v1[8];
  if (!(*(v9 + 48))(v0 + v3 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  v10(v4 + v1[9], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_2324E8BE4()
{
  v2 = *(type metadata accessor for NDFEvent(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2324C2910;

  return sub_2324E5C74(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_2324E8CC4(uint64_t a1)
{
  result = sub_2325458A8();
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

uint64_t sub_2324E8D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324E8DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2324E8E44()
{
  v0 = *(**sub_2324C4D38() + 488);

  v2 = v0(v1);

  type metadata accessor for NDFPeriodicTelemetryController(0);
  v3 = swift_allocObject();
  result = sub_2324E9320(v2);
  qword_2814D6EE0 = v3;
  return result;
}

double sub_2324E8EE0()
{
  v0 = *(**sub_2324C4D38() + 488);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_2324E8F58(double a1)
{
  v2 = swift_allocObject();
  sub_2324E9320(a1);
  return v2;
}

uint64_t *sub_2324E8FA0()
{
  if (qword_2814D6410 != -1)
  {
    swift_once();
  }

  return &qword_2814D6EE0;
}

uint64_t sub_2324E8FF0()
{
  if (qword_2814D6410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324E904C()
{
  v7 = sub_232546238();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232546218();
  MEMORY[0x28223BE20](v3);
  v4 = sub_232545EA8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  sub_232545E98();
  v8 = MEMORY[0x277D84F90];
  sub_2324F22A8(&qword_2814D4ED0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324F22F0(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800, MEMORY[0x277D83970]);
  sub_232546378();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_232546258();
}

uint64_t sub_2324E9320(double a1)
{
  v2 = v1;
  v4 = sub_232545688();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4);
  v16 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232546238();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232546218();
  MEMORY[0x28223BE20](v9);
  v10 = sub_232545EA8();
  MEMORY[0x28223BE20](v10 - 8);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v11 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  v14[1] = "symptomActiveCount";
  v14[2] = v11;
  sub_232545E98();
  v19 = MEMORY[0x277D84F90];
  sub_2324F22A8(&qword_2814D4ED0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324F22F0(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800, MEMORY[0x277D83970]);
  sub_232546378();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v15);
  *(v1 + 120) = sub_232546258();
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics) = MEMORY[0x277D84F98];
  *(v1 + 128) = a1;
  v12 = v16;
  sub_232545668();
  (*(v17 + 32))(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime, v12, v18);
  return v2;
}

uint64_t sub_2324E967C()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6420);
  v1 = __swift_project_value_buffer(v0, qword_2814D6420);
  v2 = sub_2324F4820();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2324E9708()
{
  v1 = v0;
  v2 = sub_232545E68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_232545EA8();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232545EC8();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v11;
  v12 = sub_232545E58();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_232546268();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232545688();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry))
  {
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v21 = sub_2325458A8();
    __swift_project_value_buffer(v21, qword_2814D6420);
    v58 = sub_232545888();
    v22 = sub_232546208();
    if (os_log_type_enabled(v58, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2324C0000, v58, v22, "Already collecting telemetry, skipping", v23, 2u);
      MEMORY[0x238386450](v23, -1, -1);
    }

    v24 = v58;
  }

  else
  {
    v46 = v5;
    v48 = v2;
    *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry) = 1;
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v47 = v3;
    v25 = sub_2325458A8();
    __swift_project_value_buffer(v25, qword_2814D6420);

    v26 = sub_232545888();
    v27 = sub_232546208();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v1 + 128);
      _os_log_impl(&dword_2324C0000, v26, v27, "Report NDF telemetry every %fs", v28, 0xCu);
      MEMORY[0x238386450](v28, -1, -1);
    }

    sub_232545668();
    v29 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
    swift_beginAccess();
    (*(v18 + 40))(v1 + v29, v20, v17);
    swift_endAccess();
    v30 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
    swift_beginAccess();
    *(v1 + v30) = MEMORY[0x277D84F98];

    if (*(v1 + 112))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2325462A8();
      swift_unknownObjectRelease();
      *(v1 + 112) = 0;
      swift_unknownObjectRelease();
    }

    sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2324F22A8(&unk_2814D4EB0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
    sub_2324F22F0(&unk_2814D4EF0, &unk_27DD93430, qword_232547860, MEMORY[0x277D83970]);
    sub_232546378();
    v31 = sub_232546278();
    (*(v49 + 8))(v16, v14);
    v32 = v53;
    v33 = v54;
    *v53 = 5;
    v34 = v55;
    (*(v33 + 104))(v32, *MEMORY[0x277D85188], v55);
    ObjectType = swift_getObjectType();
    sub_232545EB8();
    v36 = *(v1 + 128);
    v37 = v50;
    sub_232545ED8();
    v38 = *(v51 + 8);
    v39 = v10;
    v40 = v52;
    v38(v39, v52);
    MEMORY[0x2383858F0](v37, v32, ObjectType, v36);
    v38(v37, v40);
    v41 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2324EA114;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2324D0160;
    aBlock[3] = &block_descriptor_3;
    v42 = _Block_copy(aBlock);

    v43 = v56;
    sub_232545E78();
    v44 = v58;
    sub_2324DDFC0();
    sub_232546298();
    _Block_release(v42);
    (*(v47 + 8))(v44, v48);
    (*(v57 + 8))(v43, v46);

    *(v1 + 112) = v31;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_2325462B8();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_2324E9FF4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_2325460F8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_2324C8F70(0, 0, v3, &unk_232547D80, v7);
  }

  return result;
}

uint64_t sub_2324EA13C()
{
  sub_2324EA19C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324EA19C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v174 - v2;
  v218 = type metadata accessor for NDFMetricsPayload(0);
  v4 = *(v218 - 8);
  v5 = MEMORY[0x28223BE20](v218);
  v197 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v195 = &v174 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v194 = &v174 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v196 = &v174 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v211 = &v174 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v221 = &v174 - v16;
  MEMORY[0x28223BE20](v15);
  v206 = &v174 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93448, &qword_232547AE8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v189 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v178 = &v174 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v174 - v24;
  MEMORY[0x28223BE20](v23);
  v219 = &v174 - v26;
  v187 = sub_2325456F8();
  v184 = *(v187 - 8);
  v27 = MEMORY[0x28223BE20](v187);
  v193 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v180 = &v174 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93450, &qword_232547AF0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v186 = &v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v185 = &v174 - v33;
  v34 = sub_232545688();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v210 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v174 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v174 - v41;
  sub_232545668();
  v43 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  swift_beginAccess();
  v44 = *(v35 + 16);
  v188 = v0;
  v174 = v43;
  v202 = v35 + 16;
  v201 = v44;
  v44(v40, (v0 + v43), v34);
  v205 = v42;
  sub_2325455F8();
  v46 = v45;
  v175 = v35;
  v47 = *(v35 + 8);
  v204 = v35 + 8;
  v203 = v47;
  v47(v40, v34);
  v48 = *(**sub_2324C4D38() + 416);

  v217 = v48(v49);

  if (qword_2814D6418 != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v50 = sub_2325458A8();
    __swift_project_value_buffer(v50, qword_2814D6420);
    v51 = sub_232545888();
    v52 = sub_232546208();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v46;
      _os_log_impl(&dword_2324C0000, v51, v52, "Submitting telemetry (%fs)", v53, 0xCu);
      MEMORY[0x238386450](v53, -1, -1);
    }

    v224 = MEMORY[0x277D84FA0];
    v54 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
    v55 = v188;
    swift_beginAccess();
    v183 = v54;
    v56 = *(v55 + v54);
    v57 = *(v56 + 64);
    v177 = v56 + 64;
    v58 = 1 << *(v56 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & v57;
    v176 = (v58 + 63) >> 6;
    v179 = v184 + 16;
    v192 = (v184 + 32);
    v212 = (v175 + 48);
    v200 = (v175 + 32);
    v199 = (v175 + 56);
    v182 = (v184 + 8);
    v181 = v56;

    v209 = 0;
    v208 = 0;
    v61 = 0;
    v214 = MEMORY[0x277D84F98];
    v62 = 0.0;
    v216 = v4;
    v220 = v34;
    v63 = v187;
    v213 = v3;
    v215 = v25;
LABEL_9:
    if (!v60)
    {
      if (v176 <= v61 + 1)
      {
        v69 = v61 + 1;
      }

      else
      {
        v69 = v176;
      }

      v70 = v69 - 1;
      while (1)
      {
        v68 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v68 >= v176)
        {
          v78 = v63;
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
          v34 = v186;
          (*(*(v148 - 8) + 56))(v186, 1, 1, v148);
          v191 = 0;
          goto LABEL_19;
        }

        v60 = *(v177 + 8 * v68);
        ++v61;
        if (v60)
        {
          goto LABEL_18;
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v68 = v61;
LABEL_18:
    v191 = (v60 - 1) & v60;
    v71 = __clz(__rbit64(v60)) | (v68 << 6);
    v72 = v181;
    v73 = v184;
    (*(v184 + 16))(v180, *(v181 + 48) + *(v184 + 72) * v71, v63);
    v74 = *(*(v72 + 56) + 8 * v71);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    v76 = *(v75 + 48);
    v77 = *(v73 + 32);
    v34 = v186;
    v78 = v63;
    v77();
    *(v34 + v76) = v74;
    (*(*(v75 - 8) + 56))(v34, 0, 1, v75);

    v70 = v68;
LABEL_19:
    v79 = v185;
    sub_2324F1C98(v34, v185, &qword_27DD93450, &qword_232547AF0);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) != 1)
    {
      break;
    }

LABEL_88:

    v4 = (v214 + 8);
    v149 = 1 << *(v214 + 32);
    v150 = -1;
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    v151 = v150 & v214[8];
    v25 = (v149 + 63) >> 6;

    v152 = 0;
    v153 = v178;
    while (1)
    {
      v154 = v189;
      if (!v151)
      {
        break;
      }

      v155 = v152;
LABEL_100:
      v157 = __clz(__rbit64(v151));
      v151 &= v151 - 1;
      v158 = v157 | (v155 << 6);
      v159 = *(v214[6] + v158);
      v160 = v206;
      sub_2324F1A48(v214[7] + *(v216 + 72) * v158, v206, type metadata accessor for NDFMetricsPayload);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
      v161 = *(v34 + 48);
      v154 = v189;
      *v189 = v159;
      sub_2324F0C18(v160, v154 + v161);
      (*(*(v34 - 8) + 56))(v154, 0, 1, v34);
      v3 = v155;
      v153 = v178;
LABEL_101:
      sub_2324F1C98(v154, v153, &qword_27DD93448, &qword_232547AE8);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
      if ((*(*(v162 - 8) + 48))(v153, 1, v162) == 1)
      {

        if ((v217 & 1) == 0)
        {
          sub_2324F159C(9u, v209, v62, v46);
          sub_2324EF3C4(&v223, 9);
        }

        sub_2324F17DC(v224, v46);

        v168 = v188;
        sub_2324EE0B4();
        v169 = v174;
        swift_beginAccess();
        v170 = v168 + v169;
        v171 = v205;
        v172 = v220;
        (*(v175 + 24))(v170, v205, v220);
        swift_endAccess();
        v203(v171, v172);
      }

      v163 = &v153[*(v162 + 48)];
      v164 = *(v163 + *(v218 + 20));
      v165 = *(v163 + *(v218 + 24));
      v166 = *v153;
      sub_2324F1AB0(v163, type metadata accessor for NDFMetricsPayload);
      sub_2324F159C(v166, v165, v164, v46);
      sub_2324EF3C4(&v223, v166);
      v152 = v3;
    }

    if (v25 <= v152 + 1)
    {
      v156 = v152 + 1;
    }

    else
    {
      v156 = v25;
    }

    v3 = v156 - 1;
    while (1)
    {
      v155 = v152 + 1;
      if (__OFADD__(v152, 1))
      {
        break;
      }

      if (v155 >= v25)
      {
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        (*(*(v167 - 8) + 56))(v154, 1, 1, v167);
        v151 = 0;
        goto LABEL_101;
      }

      v151 = *(v4 + 8 * v155);
      ++v152;
      if (v151)
      {
        goto LABEL_100;
      }
    }

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
    swift_once();
  }

  v190 = v70;
  v81 = *(v79 + *(v80 + 48));
  (*v192)(v193, v79, v78);
  v82 = v81 + 64;
  v83 = 1 << *(v81 + 32);
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  else
  {
    v84 = -1;
  }

  v85 = v84 & *(v81 + 64);
  v198 = (v83 + 63) >> 6;

  v86 = 0;
  v207 = v81;
  v87 = v81;
  v88 = v219;
  v34 = v220;
  while (2)
  {
    if (!v85)
    {
      if (v198 <= v86 + 1)
      {
        v92 = v86 + 1;
      }

      else
      {
        v92 = v198;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        if (v91 >= v198)
        {
          v3 = qword_232547B00;
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
          (*(*(v135 - 8) + 56))(v25, 1, 1, v135);
          v85 = 0;
          v86 = v93;
          goto LABEL_38;
        }

        v85 = *(v82 + 8 * v91);
        ++v86;
        if (v85)
        {
          v90 = v25;
          v86 = v91;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

    v90 = v25;
    v91 = v86;
LABEL_37:
    v94 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v95 = v94 | (v91 << 6);
    v96 = *(*(v207 + 48) + v95);
    v97 = v206;
    sub_2324F1A48(*(v207 + 56) + *(v4 + 72) * v95, v206, type metadata accessor for NDFMetricsPayload);
    v3 = qword_232547B00;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
    v99 = *(v98 + 48);
    *v90 = v96;
    v100 = v97;
    v25 = v90;
    sub_2324F0C18(v100, &v90[v99]);
    (*(*(v98 - 8) + 56))(v90, 0, 1, v98);
    v88 = v219;
    v34 = v220;
LABEL_38:
    sub_2324F1C98(v25, v88, &qword_27DD93448, &qword_232547AE8);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
    if ((*(*(v101 - 8) + 48))(v88, 1, v101) == 1)
    {

      v64 = v188;
      v65 = v183;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222 = *(v64 + v65);
      *(v64 + v65) = 0x8000000000000000;
      v67 = v193;
      sub_2324F08E0(v87, v193, isUniquelyReferenced_nonNull_native);
      *(v64 + v65) = v222;
      swift_endAccess();
      v63 = v187;
      (*v182)(v67, v187);
      v61 = v190;
      v4 = v216;
      v60 = v191;
      goto LABEL_9;
    }

    v102 = v88;
    v103 = *v88;
    v3 = v221;
    sub_2324F0C18(&v102[*(v101 + 48)], v221);
    v104 = v213;
    sub_2324CF3C4(v3, v213, &qword_27DD93440, &qword_232547AE0);
    if ((*v212)(v104, 1, v34) == 1)
    {
      sub_2324C28AC(v104, &qword_27DD93440, &qword_232547AE0);
      v89 = v3;
      v25 = v215;
      v105 = v218;
      v4 = v216;
      if (v217)
      {
        goto LABEL_41;
      }

LABEL_54:
      if ((v103 - 9) <= 0xFCu)
      {
        goto LABEL_55;
      }

LABEL_26:
      sub_2324F1AB0(v89, type metadata accessor for NDFMetricsPayload);
      v88 = v219;
      continue;
    }

    break;
  }

  (*v200)(v210, v104, v34);
  v106 = v205;
  sub_2325455F8();
  *(v3 + *(v218 + 20)) = v107 + *(v3 + *(v218 + 20));
  sub_2324C28AC(v3, &qword_27DD93440, &qword_232547AE0);
  v201(v3, v106, v34);
  (*v199)(v3, 0, 1, v34);
  sub_2324F1A48(v3, v211, type metadata accessor for NDFMetricsPayload);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  v223 = v87;
  v25 = sub_2324EF2E0(v103);
  v109 = v87[2];
  v110 = (v108 & 1) == 0;
  v111 = v109 + v110;
  if (__OFADD__(v109, v110))
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v3 = v108;
  if (v87[3] >= v111)
  {
    if ((v4 & 1) == 0)
    {
      sub_2324F0F90();
    }
  }

  else
  {
    sub_2324F00BC(v111, v4);
    v112 = sub_2324EF2E0(v103);
    if ((v3 & 1) != (v113 & 1))
    {
      goto LABEL_118;
    }

    v25 = v112;
  }

  v4 = v216;
  v87 = v223;
  if (v3)
  {
    sub_2324F1954(v211, v223[7] + *(v216 + 72) * v25);
    v34 = v220;
    v203(v210, v220);
  }

  else
  {
    v223[(v25 >> 6) + 8] |= 1 << v25;
    *(v87[6] + v25) = v103;
    sub_2324F0C18(v211, v87[7] + *(v4 + 72) * v25);
    v34 = v220;
    v203(v210, v220);
    v114 = v87[2];
    v115 = __OFADD__(v114, 1);
    v116 = v114 + 1;
    if (v115)
    {
      goto LABEL_109;
    }

    v87[2] = v116;
  }

  v105 = v218;
  v89 = v221;
  v25 = v215;
  if ((v217 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_41:
  if ((v103 - 6) >= 3)
  {
    goto LABEL_26;
  }

LABEL_55:
  v34 = v25;
  v25 = *(v89 + *(v105 + 24));
  v209 = v208 + v25;
  if (__OFADD__(v208, v25))
  {
    goto LABEL_108;
  }

  v117 = *(v105 + 20);
  v118 = *(v89 + v117);
  if (v62 <= v118)
  {
    v62 = *(v89 + v117);
  }

  if ((((v103 - 6) < 3) & v217) != 1)
  {
    sub_2324F159C(v103, v25, v118, v46);
    sub_2324EF3C4(&v223, v103);
LABEL_25:
    v208 = v209;
    v89 = v221;
    v25 = v34;
    v34 = v220;
    goto LABEL_26;
  }

  v119 = v214;
  if (v214[2])
  {
    v120 = sub_2324EF2E0(v103);
    v119 = v214;
    if (v121)
    {
      v3 = v218;
      v34 = *(v4 + 72);
      v122 = v194;
      sub_2324F1A48(v214[7] + v34 * v120, v194, type metadata accessor for NDFMetricsPayload);
      v123 = v122;
      v4 = v196;
      sub_2324F0C18(v123, v196);
      v124 = *(v3 + 24);
      v125 = *(v4 + v124);
      v115 = __OFADD__(v125, v25);
      v126 = v125 + v25;
      if (v115)
      {
        goto LABEL_114;
      }

      *(v4 + v124) = v126;
      v127 = *(v3 + 20);
      v128 = *(v4 + v127);
      if (v128 <= v118)
      {
        v128 = v118;
      }

      *(v4 + v127) = v128;
      sub_2324F1A48(v4, v195, type metadata accessor for NDFMetricsPayload);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v223 = v119;
      v129 = sub_2324EF2E0(v103);
      v131 = v119[2];
      v132 = (v130 & 1) == 0;
      v115 = __OFADD__(v131, v132);
      v133 = v131 + v132;
      if (v115)
      {
        goto LABEL_115;
      }

      v25 = v130;
      if (v119[3] >= v133)
      {
        if ((v4 & 1) == 0)
        {
          v147 = v129;
          sub_2324F0F90();
          v129 = v147;
        }
      }

      else
      {
        sub_2324F00BC(v133, v4);
        v129 = sub_2324EF2E0(v103);
        if ((v25 & 1) != (v134 & 1))
        {
          goto LABEL_118;
        }
      }

      v4 = v216;
      v214 = v223;
      if (v25)
      {
        sub_2324F1954(v195, v223[7] + v129 * v34);
        sub_2324F1AB0(v196, type metadata accessor for NDFMetricsPayload);
      }

      else
      {
        v223[(v129 >> 6) + 8] |= 1 << v129;
        *(v214[6] + v129) = v103;
        sub_2324F0C18(v195, v214[7] + v129 * v34);
        sub_2324F1AB0(v196, type metadata accessor for NDFMetricsPayload);
        v144 = v214[2];
        v115 = __OFADD__(v144, 1);
        v145 = v144 + 1;
        if (v115)
        {
          goto LABEL_116;
        }

        v214[2] = v145;
      }

      v208 = v209;
      v34 = v220;
      v89 = v221;
      v25 = v215;
      goto LABEL_26;
    }
  }

  sub_2324F1A48(v221, v197, type metadata accessor for NDFMetricsPayload);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  v223 = v119;
  v136 = sub_2324EF2E0(v103);
  v138 = v119[2];
  v139 = (v137 & 1) == 0;
  v115 = __OFADD__(v138, v139);
  v140 = v138 + v139;
  if (v115)
  {
    goto LABEL_112;
  }

  v25 = v137;
  if (v119[3] >= v140)
  {
    if ((v4 & 1) == 0)
    {
      v146 = v136;
      sub_2324F0F90();
      v136 = v146;
    }

LABEL_75:
    v4 = v216;
    v214 = v223;
    if (v25)
    {
      sub_2324F1954(v197, v223[7] + *(v216 + 72) * v136);
    }

    else
    {
      v223[(v136 >> 6) + 8] |= 1 << v136;
      *(v214[6] + v136) = v103;
      sub_2324F0C18(v197, v214[7] + *(v4 + 72) * v136);
      v142 = v214[2];
      v115 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (v115)
      {
        goto LABEL_113;
      }

      v214[2] = v143;
    }

    goto LABEL_25;
  }

  sub_2324F00BC(v140, v4);
  v136 = sub_2324EF2E0(v103);
  if ((v25 & 1) == (v141 & 1))
  {
    goto LABEL_75;
  }

LABEL_118:
  result = sub_232546668();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2324EB95C(uint64_t *a1)
{
  v2 = type metadata accessor for NDFEvent(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v71 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v63[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v63[-v15];
  v17 = sub_2325456F8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v68 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v63[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v63[-v23];
  v72 = sub_2324F19B8(a1);
  v25 = *(v3 + 36);
  v26 = *(v18 + 16);
  v70 = a1;
  v26(v24, a1 + v25, v17);
  v73 = v24;
  v66 = v26;
  v67 = v18 + 16;
  v26(v16, v24, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v27 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v27, v14, &unk_27DD932E0, qword_2325472E0);
  v28 = *(v6 + 56);
  sub_2324CF3C4(v16, v8, &unk_27DD932E0, qword_2325472E0);
  sub_2324CF3C4(v14, &v8[v28], &unk_27DD932E0, qword_2325472E0);
  v74 = v18;
  v29 = *(v18 + 48);
  if (v29(v8, 1, v17) == 1)
  {
    sub_2324C28AC(v14, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
    v30 = v17;
    v31 = v29(&v8[v28], 1, v17);
    v32 = v73;
    if (v31 == 1)
    {
      sub_2324C28AC(v8, &unk_27DD932E0, qword_2325472E0);
      v33 = v72;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v34 = v69;
  sub_2324CF3C4(v8, v69, &unk_27DD932E0, qword_2325472E0);
  if (v29(&v8[v28], 1, v17) == 1)
  {
    sub_2324C28AC(v14, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
    v30 = v17;
    (*(v74 + 8))(v34, v17);
    v32 = v73;
LABEL_6:
    sub_2324C28AC(v8, &qword_27DD93290, &qword_2325477E0);
    v33 = v72;
    goto LABEL_8;
  }

  v35 = v74;
  v36 = v65;
  (*(v74 + 32))(v65, &v8[v28], v17);
  sub_2324F22A8(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v64 = sub_232545F48();
  v37 = *(v35 + 8);
  v37(v36, v17);
  sub_2324C28AC(v14, &unk_27DD932E0, qword_2325472E0);
  sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
  v30 = v17;
  v37(v34, v17);
  sub_2324C28AC(v8, &unk_27DD932E0, qword_2325472E0);
  v32 = v73;
  v33 = v72;
  if (v64)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v33 - 6) < 3u)
  {
LABEL_14:
    v51 = v70;
    v52 = *(v70 + 9);
    if (v52 > 1)
    {
      v53 = v71;
      if (v52 != 2)
      {
        sub_2324ECB4C(v70, v33);
        return (*(v74 + 8))(v32, v30);
      }
    }

    else
    {
      v53 = v71;
      if (*(v70 + 9))
      {
        sub_2324EC284(v70, v33);
        return (*(v74 + 8))(v32, v30);
      }
    }

    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v54 = sub_2325458A8();
    __swift_project_value_buffer(v54, qword_2814D6420);
    sub_2324F1A48(v51, v53, type metadata accessor for NDFEvent);
    v55 = sub_232545888();
    v56 = sub_232546208();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v75 = v58;
      *v57 = 136315138;
      v59 = sub_2325384B0();
      v61 = v60;
      sub_2324F1AB0(v53, type metadata accessor for NDFEvent);
      v62 = sub_2324C2220(v59, v61, &v75);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2324C0000, v55, v56, "Skipping metrics processing for %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x238386450](v58, -1, -1);
      MEMORY[0x238386450](v57, -1, -1);
    }

    else
    {

      sub_2324F1AB0(v53, type metadata accessor for NDFEvent);
    }

    return (*(v74 + 8))(v32, v30);
  }

  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v38 = sub_2325458A8();
  __swift_project_value_buffer(v38, qword_2814D6420);
  v39 = v68;
  v66(v68, v32, v30);
  v40 = sub_232545888();
  v41 = sub_2325461E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75 = v43;
    *v42 = 136315138;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = sub_232546608();
    v45 = v39;
    v47 = v46;
    v48 = *(v74 + 8);
    v48(v45, v30);
    v49 = sub_2324C2220(v44, v47, &v75);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_2324C0000, v40, v41, "Ignoring irrelevant device event %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x238386450](v43, -1, -1);
    MEMORY[0x238386450](v42, -1, -1);
  }

  else
  {

    v48 = *(v74 + 8);
    v48(v39, v30);
  }

  return (v48)(v32, v30);
}

uint64_t sub_2324EC284(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v83 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v92 = type metadata accessor for NDFMetricsPayload(0);
  v85 = *(v92 - 8);
  v12 = MEMORY[0x28223BE20](v92);
  v86 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = sub_2325456F8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v82 - v25;
  v27 = *(type metadata accessor for NDFEvent(0) + 28);
  v91 = v20;
  v28 = *(v20 + 16);
  v87 = v19;
  v28(v26, a1 + v27, v19);
  v29 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  if (!*(*(v3 + v29) + 16) || (, sub_2324E6CD4(v26), v31 = v30, , (v31 & 1) == 0))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *(v3 + v29);
    *(v3 + v29) = 0x8000000000000000;
    sub_2324F08E0(MEMORY[0x277D84F98], v26, isUniquelyReferenced_nonNull_native);
    *(v3 + v29) = v94[0];
    swift_endAccess();
  }

  v33 = *(v3 + v29);
  v34 = *(v33 + 16);
  v93 = v26;
  if (v34)
  {

    v35 = sub_2324E6CD4(v26);
    if (v36)
    {
      v37 = *(*(v33 + 56) + 8 * v35);

      if (*(v37 + 16))
      {
        v38 = sub_2324EF2E0(v90);
        if (v39)
        {
          v40 = v16;
          v41 = v28;
          sub_2324F1A48(*(v37 + 56) + *(v85 + 72) * v38, v40, type metadata accessor for NDFMetricsPayload);

          sub_2324F0C18(v40, v18);
          goto LABEL_11;
        }
      }
    }
  }

  v41 = v28;
  v42 = sub_232545688();
  (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
  v43 = v92;
  *&v18[*(v92 + 20)] = 0;
  *&v18[*(v43 + 24)] = 0;
LABEL_11:
  sub_2324CF3C4(v18, v11, &qword_27DD93440, &qword_232547AE0);
  v44 = sub_232545688();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v11, 1, v44);
  sub_2324C28AC(v11, &qword_27DD93440, &qword_232547AE0);
  v47 = v46 == 1;
  v48 = v41;
  v49 = v89;
  if (v47)
  {
    v50 = v83;
    sub_232545668();
    (*(v45 + 56))(v50, 0, 1, v44);
    result = sub_2324F1B10(v50, v18);
    v52 = *(v92 + 24);
    v53 = *&v18[v52];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
      return result;
    }

    *&v18[v52] = v55;
  }

  v56 = v86;
  sub_2324F1A48(v18, v86, type metadata accessor for NDFMetricsPayload);
  sub_2324F1AB0(v18, type metadata accessor for NDFMetricsPayload);
  sub_2324F0C18(v56, v18);
  v57 = v87;
  v48(v49, v93, v87);
  v58 = sub_2324E92C0(v95);
  v59 = sub_2324EDD28(v94);
  if (*v60)
  {
    v61 = v84;
    sub_2324F1A48(v18, v84, type metadata accessor for NDFMetricsPayload);
    (*(v85 + 56))(v61, 0, 1, v92);
    sub_2324ED8D0(v61, v90);
  }

  (v59)(v94, 0);
  v62 = *(v91 + 8);
  v62(v49, v57);
  (v58)(v95, 0);
  v63 = v93;
  v64 = v88;
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v65 = sub_2325458A8();
  __swift_project_value_buffer(v65, qword_2814D6420);
  v48(v64, v63, v57);
  v66 = sub_232545888();
  v67 = sub_2325461E8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v92 = v62;
    v69 = v64;
    v70 = v68;
    v71 = swift_slowAlloc();
    v95[0] = v71;
    *v70 = 136315394;
    v72 = sub_2324EEC60(v90);
    v74 = v57;
    v75 = sub_2324C2220(v72, v73, v95);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2080;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v76 = sub_232546608();
    v78 = v77;
    v79 = v69;
    v80 = v92;
    (v92)(v79, v74);
    v81 = sub_2324C2220(v76, v78, v95);

    *(v70 + 14) = v81;
    _os_log_impl(&dword_2324C0000, v66, v67, "Event started: %s for device %s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v71, -1, -1);
    MEMORY[0x238386450](v70, -1, -1);

    v80(v93, v74);
  }

  else
  {

    v62(v64, v57);
    v62(v63, v57);
  }

  return sub_2324F1AB0(v18, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324ECB4C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v113 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v101 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v99 - v10;
  v12 = sub_232545688();
  v13 = *(v12 - 8);
  v109 = v12;
  v110 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v106 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v99 - v17;
  MEMORY[0x28223BE20](v16);
  v108 = &v99 - v19;
  v105 = type metadata accessor for NDFMetricsPayload(0);
  v107 = *(v105 - 8);
  v20 = MEMORY[0x28223BE20](v105);
  v102 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v99 - v23;
  MEMORY[0x28223BE20](v22);
  v111 = &v99 - v25;
  v26 = sub_2325456F8();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v104 = &v99 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v103 = &v99 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v99 - v35;
  v37 = a1 + *(type metadata accessor for NDFEvent(0) + 28);
  v114 = *(v27 + 16);
  v114(v36, v37, v26);
  v38 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v39 = *(v3 + v38);
  if (!*(v39 + 16))
  {
    goto LABEL_10;
  }

  v40 = sub_2324E6CD4(v36);
  if ((v41 & 1) == 0)
  {

LABEL_10:
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v48 = sub_2325458A8();
    __swift_project_value_buffer(v48, qword_2814D6420);
    v114(v30, v36, v26);
    v49 = sub_232545888();
    v50 = sub_2325461F8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v112 = v36;
      v53 = v52;
      v116[0] = v52;
      *v51 = 136315394;
      v54 = sub_2324EEC60(v113);
      v56 = sub_2324C2220(v54, v55, v116);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v57 = sub_232546608();
      v59 = v58;
      v60 = *(v27 + 8);
      v60(v30, v26);
      v61 = sub_2324C2220(v57, v59, v116);

      *(v51 + 14) = v61;
      _os_log_impl(&dword_2324C0000, v49, v50, "Missing start for %s on %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v53, -1, -1);
      MEMORY[0x238386450](v51, -1, -1);

      return (v60)(v112, v26);
    }

    else
    {

      v63 = *(v27 + 8);
      v63(v30, v26);
      return (v63)(v36, v26);
    }
  }

  v112 = v36;
  v42 = *(*(v39 + 56) + 8 * v40);

  if (!*(v42 + 16) || (v43 = sub_2324EF2E0(v113), (v44 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_2324F1A48(*(v42 + 56) + *(v107 + 72) * v43, v24, type metadata accessor for NDFMetricsPayload);

  v45 = v111;
  sub_2324F0C18(v24, v111);
  sub_2324CF3C4(v45, v11, &qword_27DD93440, &qword_232547AE0);
  v46 = v109;
  v47 = v110[6];
  if (v47(v11, 1, v109) == 1)
  {
    sub_2324F1AB0(v111, type metadata accessor for NDFMetricsPayload);
    sub_2324C28AC(v11, &qword_27DD93440, &qword_232547AE0);
LABEL_9:
    v36 = v112;
    goto LABEL_10;
  }

  v99 = v110[4];
  v99(v108, v11, v46);
  v64 = v101;
  sub_2324CF3C4(v111, v101, &qword_27DD93440, &qword_232547AE0);
  if (v47(v64, 1, v46) == 1)
  {
    sub_2324C28AC(v64, &qword_27DD93440, &qword_232547AE0);
    v65 = v111;
  }

  else
  {
    v99(v18, v64, v46);
    v66 = v106;
    sub_232545668();
    sub_2325455F8();
    v68 = v67;
    v69 = v110;
    v70 = v110[1];
    v70(v66, v46);
    v70(v18, v46);
    v65 = v111;
    *(v111 + *(v105 + 20)) = v68 + *(v111 + *(v105 + 20));
    sub_2324C28AC(v65, &qword_27DD93440, &qword_232547AE0);
    (v69[7])(v65, 1, 1, v46);
  }

  v71 = v103;
  v72 = v102;
  sub_2324F1A48(v65, v102, type metadata accessor for NDFMetricsPayload);
  sub_2324F1AB0(v65, type metadata accessor for NDFMetricsPayload);
  sub_2324F0C18(v72, v65);
  v73 = v112;
  v114(v71, v112, v26);
  v74 = sub_2324E92C0(v116);
  v75 = sub_2324EDD28(v115);
  if (*v76)
  {
    v77 = v65;
    v78 = v100;
    sub_2324F1A48(v77, v100, type metadata accessor for NDFMetricsPayload);
    (*(v107 + 56))(v78, 0, 1, v105);
    sub_2324ED8D0(v78, v113);
  }

  (v75)(v115, 0);
  v79 = *(v27 + 8);
  v79(v71, v26);
  (v74)(v116, 0);
  v80 = v106;
  sub_232545668();
  sub_2325455F8();
  v82 = v81;
  v83 = v110 + 1;
  v107 = v110[1];
  (v107)(v80, v109);
  v84 = v104;
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v85 = sub_2325458A8();
  __swift_project_value_buffer(v85, qword_2814D6420);
  v114(v84, v73, v26);
  v86 = sub_232545888();
  v87 = sub_2325461E8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v84;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v110 = v83;
    v91 = v90;
    v116[0] = v90;
    *v89 = 136315650;
    v92 = sub_2324EEC60(v113);
    v94 = sub_2324C2220(v92, v93, v116);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2080;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v95 = sub_232546608();
    v97 = v96;
    v79(v88, v26);
    v98 = sub_2324C2220(v95, v97, v116);

    *(v89 + 14) = v98;
    *(v89 + 22) = 2048;
    *(v89 + 24) = v82;
    _os_log_impl(&dword_2324C0000, v86, v87, "Event ended: %s for device %s, duration: %fs", v89, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v91, -1, -1);
    MEMORY[0x238386450](v89, -1, -1);

    (v107)(v108, v109);
    v79(v112, v26);
  }

  else
  {

    v79(v84, v26);
    (v107)(v108, v109);
    v79(v73, v26);
  }

  return sub_2324F1AB0(v111, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324ED7B0()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  v2 = sub_232545688();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324ED838()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  v2 = sub_232545688();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324ED8D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NDFMetricsPayload(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2324C28AC(a1, &qword_27DD934E0, &qword_232547D38);
    v13 = sub_2324EF2E0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2324F0F90();
        v17 = v21;
      }

      sub_2324F0C18(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_2324F0710(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2324C28AC(v8, &qword_27DD934E0, &qword_232547D38);
  }

  else
  {
    sub_2324F0C18(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2324F0AAC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_2324EDAFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_232545688();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for NDFMetricsPayload(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2324EDB74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_2324CF3C4(v1, &v17 - v7, &qword_27DD93440, &qword_232547AE0);
  v9 = sub_232545688();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  sub_2324C28AC(v8, &qword_27DD93440, &qword_232547AE0);
  if (v11 != 1)
  {
    return sub_2324F1A48(v1, a1, type metadata accessor for NDFMetricsPayload);
  }

  sub_232545668();
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_2324F1B10(v6, v1);
  result = type metadata accessor for NDFMetricsPayload(0);
  v13 = *(result + 24);
  v14 = *(v1 + v13);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v1 + v13) = v16;
    return sub_2324F1A48(v1, a1, type metadata accessor for NDFMetricsPayload);
  }

  __break(1u);
  return result;
}

void (*sub_2324EDD28(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2325456F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2324F11B0(v4, v9);
  return sub_2324E4DC8;
}

uint64_t sub_2324EDE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_232545688();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_2324CF3C4(v2, v6, &qword_27DD93440, &qword_232547AE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2324C28AC(v6, &qword_27DD93440, &qword_232547AE0);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_232545668();
    sub_2325455F8();
    v15 = v14;
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v13, v7);
    v17 = type metadata accessor for NDFMetricsPayload(0);
    *(v2 + *(v17 + 20)) = v15 + *(v2 + *(v17 + 20));
    sub_2324C28AC(v2, &qword_27DD93440, &qword_232547AE0);
    (*(v8 + 56))(v2, 1, 1, v7);
  }

  return sub_2324F1A48(v2, a1, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324EE0B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v109 = &v86 - v2;
  v108 = type metadata accessor for NDFMetricsPayload(0);
  v110 = *(v108 - 8);
  v3 = MEMORY[0x28223BE20](v108);
  v111 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v86 - v6;
  MEMORY[0x28223BE20](v5);
  v104 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93448, &qword_232547AE8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  v101 = sub_2325456F8();
  v15 = *(v101 - 8);
  v16 = MEMORY[0x28223BE20](v101);
  v100 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93450, &qword_232547AF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v95 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - v22;
  v24 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v94 = v0;
  v93 = v24;
  v25 = *(v0 + v24);
  v26 = *(v25 + 64);
  v87 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v86 = (v27 + 63) >> 6;
  v88 = v15 + 16;
  v99 = (v15 + 32);
  v90 = v15;
  v92 = (v15 + 8);
  v91 = v25;

  v30 = 0;
  v96 = v23;
  v106 = v14;
  v107 = v12;
LABEL_6:
  if (v29)
  {
    v35 = v30;
LABEL_15:
    v98 = (v29 - 1) & v29;
    v38 = __clz(__rbit64(v29)) | (v35 << 6);
    v39 = v91;
    v40 = v90;
    v41 = v89;
    v42 = v101;
    (*(v90 + 16))(v89, *(v91 + 48) + *(v90 + 72) * v38, v101);
    v43 = *(*(v39 + 56) + 8 * v38);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    v45 = *(v44 + 48);
    v46 = *(v40 + 32);
    v37 = v95;
    v46(v95, v41, v42);
    *(v37 + v45) = v43;
    (*(*(v44 - 8) + 56))(v37, 0, 1, v44);

    v97 = v35;
    v23 = v96;
LABEL_16:
    sub_2324F1C98(v37, v23, &qword_27DD93450, &qword_232547AF0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    if ((*(*(v47 - 8) + 48))(v23, 1, v47) != 1)
    {
      v48 = *&v23[*(v47 + 48)];
      (*v99)(v100, v23, v101);
      v49 = *(v48 + 64);
      v103 = v48 + 64;
      v50 = 1 << *(v48 + 32);
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v52 = v51 & v49;
      v102 = (v50 + 63) >> 6;

      v53 = 0;
      v105 = v48;
      while (v52)
      {
        v54 = v53;
LABEL_32:
        v57 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v58 = v57 | (v54 << 6);
        v59 = v104;
        v60 = *(*(v105 + 48) + v58);
        sub_2324F1A48(*(v105 + 56) + *(v110 + 72) * v58, v104, type metadata accessor for NDFMetricsPayload);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        v62 = *(v61 + 48);
        *v12 = v60;
        sub_2324F0C18(v59, &v12[v62]);
        (*(*(v61 - 8) + 56))(v12, 0, 1, v61);
        v56 = v54;
LABEL_33:
        sub_2324F1C98(v12, v14, &qword_27DD93448, &qword_232547AE8);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        if ((*(*(v63 - 8) + 48))(v14, 1, v63) == 1)
        {

          v31 = v94;
          v32 = v93;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112 = *(v31 + v32);
          *(v31 + v32) = 0x8000000000000000;
          v34 = v100;
          sub_2324F08E0(v48, v100, isUniquelyReferenced_nonNull_native);
          *(v31 + v32) = v112;
          swift_endAccess();
          (*v92)(v34, v101);
          v30 = v97;
          v23 = v96;
          v29 = v98;
          goto LABEL_6;
        }

        v64 = v56;
        v65 = *v14;
        sub_2324F0C18(&v14[*(v63 + 48)], v7);
        v67 = v108;
        v66 = v109;
        *&v7[*(v108 + 20)] = 0;
        sub_2324CF3C4(v7, v66, &qword_27DD93440, &qword_232547AE0);
        v68 = sub_232545688();
        v69 = (*(*(v68 - 8) + 48))(v66, 1, v68) != 1;
        sub_2324C28AC(v66, &qword_27DD93440, &qword_232547AE0);
        v70 = v111;
        *&v7[*(v67 + 24)] = v69;
        sub_2324F1A48(v7, v70, type metadata accessor for NDFMetricsPayload);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v113 = v48;
        v73 = sub_2324EF2E0(v65);
        v74 = *(v48 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v77 = v72;
        if (*(v48 + 24) >= v76)
        {
          if ((v71 & 1) == 0)
          {
            sub_2324F0F90();
          }
        }

        else
        {
          sub_2324F00BC(v76, v71);
          v78 = sub_2324EF2E0(v65);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_50;
          }

          v73 = v78;
        }

        v48 = v113;
        if (v77)
        {
          sub_2324F1954(v111, *(v113 + 56) + *(v110 + 72) * v73);
          sub_2324F1AB0(v7, type metadata accessor for NDFMetricsPayload);
        }

        else
        {
          *(v113 + 8 * (v73 >> 6) + 64) |= 1 << v73;
          *(*(v48 + 48) + v73) = v65;
          sub_2324F0C18(v111, *(v48 + 56) + *(v110 + 72) * v73);
          sub_2324F1AB0(v7, type metadata accessor for NDFMetricsPayload);
          v80 = *(v48 + 16);
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_48;
          }

          *(v48 + 16) = v82;
        }

        v53 = v64;
        v14 = v106;
        v12 = v107;
      }

      if (v102 <= v53 + 1)
      {
        v55 = v53 + 1;
      }

      else
      {
        v55 = v102;
      }

      v56 = v55 - 1;
      while (1)
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v54 >= v102)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
          (*(*(v83 - 8) + 56))(v12, 1, 1, v83);
          v52 = 0;
          goto LABEL_33;
        }

        v52 = *(v103 + 8 * v54);
        ++v53;
        if (v52)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }
  }

  else
  {
    if (v86 <= v30 + 1)
    {
      v36 = v30 + 1;
    }

    else
    {
      v36 = v86;
    }

    v37 = v95;
    while (1)
    {
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v35 >= v86)
      {
        v97 = v36 - 1;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
        (*(*(v84 - 8) + 56))(v37, 1, 1, v84);
        v98 = 0;
        goto LABEL_16;
      }

      v29 = *(v87 + 8 * v35);
      ++v30;
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_232546668();
    __break(1u);
  }

  return result;
}

id sub_2324EEBC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2324DB388(0, &qword_27DD93500, 0x277D82BB8);
    v4 = sub_232545EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2324EEC60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001ALL;
    if (a1 != 8)
    {
      v5 = 5852737;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000019;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736270;
    v2 = 0x6576726553534E44;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0x74656E7265746E49;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2324EEDD4()
{
  sub_2325466F8();
  sub_232546718();
  return sub_232546738();
}

uint64_t sub_2324EEE48(uint64_t a1)
{
  sub_2325466F8();
  sub_232546718();
  return sub_232546738();
}

uint64_t sub_2324EEE8C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2324F1C84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2324EEEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_232545688();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2324EEFCC(double a1)
{
  result = type metadata accessor for NDFMetricsPayload(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_2324EF068(uint64_t a1)
{
  result = type metadata accessor for NDFMetricsPayload(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2324EF0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a4.n128_u64[0];
  sub_2324F1C98(a1, a3, &qword_27DD93440, &qword_232547AE0);
  result = type metadata accessor for NDFMetricsPayload(0);
  *(a3 + *(result + 20)) = v5;
  *(a3 + *(result + 24)) = a2;
  return result;
}

double sub_2324EF1D0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2324EF218(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2324EF284()
{
  if (*(v0 + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = sub_232546288();
    swift_unknownObjectRelease();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2324EF2E0(uint64_t a1)
{
  v1 = a1;
  sub_2325466F8();
  sub_232546718();
  v2 = sub_232546738();

  return sub_2324EFBB8(v1, v2);
}

unint64_t sub_2324EF34C(uint64_t a1, uint64_t a2)
{
  sub_2325466F8();
  sub_232545FC8();
  v4 = sub_232546738();

  return sub_2324EFC28(a1, a2, v4);
}

uint64_t sub_2324EF3C4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2325466F8();
  sub_232546718();
  v6 = sub_232546738();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2324EF70C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2324EF4BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  result = sub_2325463B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2324EF70C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2324EF4BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2324EF858();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2324EF998(v5 + 1);
  }

  v8 = *v3;
  sub_2325466F8();
  sub_232546718();
  result = sub_232546738();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_232546658();
  __break(1u);
  return result;
}

void *sub_2324EF858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  v2 = *v0;
  v3 = sub_2325463A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2324EF998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  result = sub_2325463B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2324EFBB8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2324EFC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_232546628())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2324EFCE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E8, &unk_232547D40);
  v39 = v4;
  result = sub_2325464A8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2324F22A8(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_232545F08();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2324F00BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NDFMetricsPayload(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F0, &qword_232547D50);
  v36 = v4;
  result = sub_2325464A8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_2324F0C18(v24, v37);
      }

      else
      {
        sub_2324F1A48(v24, v37, type metadata accessor for NDFMetricsPayload);
      }

      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_2324F0C18(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2324F03F0(int64_t a1, uint64_t a2)
{
  v40 = sub_2325456F8();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_232546398();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2324F22A8(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_232545F08();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_2324F0710(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232546398() + 1) & ~v5;
    while (1)
    {
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for NDFMetricsPayload(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2324F08E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2324E6CD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2324F0D10();
      goto LABEL_7;
    }

    sub_2324EFCE0(v17, a3 & 1);
    v22 = sub_2324E6CD4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2324E83E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2324F0AAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2324EF2E0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2324F0F90();
      goto LABEL_7;
    }

    sub_2324F00BC(v13, a3 & 1);
    v20 = sub_2324EF2E0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for NDFMetricsPayload(0) - 8) + 72) * v10;

    return sub_2324F1954(a1, v18);
  }

LABEL_13:

  return sub_2324F0C7C(v10, a2, a1, v16);
}

uint64_t sub_2324F0C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFMetricsPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324F0C7C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NDFMetricsPayload(0);
  result = sub_2324F0C18(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_2324F0D10()
{
  v1 = v0;
  v33 = sub_2325456F8();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E8, &unk_232547D40);
  v3 = *v0;
  v4 = sub_232546498();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void *sub_2324F0F90()
{
  v1 = v0;
  v2 = type metadata accessor for NDFMetricsPayload(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F0, &qword_232547D50);
  v5 = *v0;
  v6 = sub_232546498();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_2324F1A48(*(v5 + 56) + v22, v4, type metadata accessor for NDFMetricsPayload);
        *(*(v7 + 48) + v20) = v21;
        result = sub_2324F0C18(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void (*sub_2324F11B0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_2325456F8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_2324E83B0(v6);
  v6[12] = sub_2324F12EC(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2324E7330;
}

void (*sub_2324F12EC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2325456F8();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2324E6CD4(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_2324F0D10();
      v15 = v23;
      goto LABEL_14;
    }

    sub_2324EFCE0(v20, a3 & 1);
    v15 = sub_2324E6CD4(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_2324F149C;
}

void sub_2324F149C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2324E83E4(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2324F03F0(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void sub_2324F159C(unsigned __int8 a1, uint64_t a2, double a3, double a4)
{
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v8 = sub_2325458A8();
  __swift_project_value_buffer(v8, qword_2814D6420);
  v9 = sub_232545888();
  v10 = sub_232546208();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315906;
    v13 = sub_2324EEC60(a1);
    v15 = sub_2324C2220(v13, v14, v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a3;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a2;
    *(v11 + 32) = 2048;
    *(v11 + 34) = a4;
    _os_log_impl(&dword_2324C0000, v9, v10, "Submitting CA telemetry: [event %s, active: %fs, occurrences: %ld, period: %fs]", v11, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x238386450](v12, -1, -1);
    MEMORY[0x238386450](v11, -1, -1);
  }

  v16 = sub_232545F58();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  v19[4] = sub_2324F2158;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2324EEBC4;
  v19[3] = &block_descriptor_24;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

void sub_2324F17DC(uint64_t a1, double a2)
{
  v4 = *(**sub_2324C4D38() + 416);

  v6 = v4(v5);

  v7 = 0;
  v8 = a1 + 56;
  do
  {
    v9 = byte_28478E368[v7 + 32];
    if (byte_28478E368[v7 + 32])
    {
      if (*(a1 + 16) && (sub_2325466F8(), sub_232546718(), v10 = sub_232546738(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (*(*(a1 + 48) + v12) != v9)
        {
          v12 = (v12 + 1) & v13;
          if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        if (v6)
        {
          if ((v9 - 6) < 3)
          {
            goto LABEL_2;
          }
        }

        else if ((v9 - 9) <= 0xFCu)
        {
LABEL_2:
          sub_2324F159C(v9, 0, 0.0, a2);
        }
      }
    }

    ++v7;
  }

  while (v7 != 10);
}

uint64_t sub_2324F1954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFMetricsPayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324F19B8(uint64_t *a1)
{
  v1 = *a1;
  if (!*(a1 + 8))
  {
    if (*a1 != 3)
    {
      if ((v1 & 0xFF0000) == 0x20000)
      {
        if (!(((*a1 & 0x100) == 0) | *a1 & 1))
        {
          return 7;
        }
      }

      else
      {
        v4 = v1 & 0x10100;
        if (v1)
        {
          if (v4 == 0x10000)
          {
            return 8;
          }
        }

        else if (v4 == 256)
        {
          return 7;
        }
      }
    }

    return 6;
  }

  v2 = 0x5040301u >> (8 * v1);
  if (*(a1 + 8) == 1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2324F1A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2324F1AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2324F1B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324F1B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93518, &qword_232547D70);
    v3 = sub_2325464B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2324EF34C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2324F1C84(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2324F1C98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2324F1D04()
{
  result = qword_2814D4DC8;
  if (!qword_2814D4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4DC8);
  }

  return result;
}

uint64_t sub_2324F1DC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F1DFC(uint64_t a1)
{
  result = sub_232545688();
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

uint64_t getEnumTagSinglePayload for NDFTelemetryEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFTelemetryEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2324F206C(uint64_t a1)
{
  sub_2324F20F0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2324F20F0(uint64_t a1)
{
  if (!qword_2814D4E88)
  {
    sub_232545688();
    v1 = sub_232546318();
    if (!v2)
    {
      atomic_store(v1, &qword_2814D4E88);
    }
  }
}

unint64_t sub_2324F2158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93508, &qword_232547D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232547AC0;
  *(inited + 32) = 0x4E6D6F74706D7973;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = sub_2325466E8();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x800000023254C770;
  *(inited + 72) = sub_232546178();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x800000023254C790;
  *(inited + 96) = sub_232546178();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000023254C7B0;
  *(inited + 120) = sub_2325461B8();
  v1 = sub_2324F1B80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93510, &qword_232547D68);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_2324F22A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2324F22F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2324F2338()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_2324EA11C(v3, v4, v5, v2);
}

uint64_t sub_2324F23D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4618();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324F2444@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324F2518()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe);
  v2 = *(**sub_2324C4D38() + 296);

  v4 = v2(v3);

  v8 = (*(*v1 + 160) + **(*v1 + 160));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2324CB414;
  v6.n128_f64[0] = v4;

  return v8(v6);
}