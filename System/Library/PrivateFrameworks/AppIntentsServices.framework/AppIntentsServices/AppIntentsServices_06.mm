uint64_t OUTLINED_FUNCTION_1_23(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_221A0FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  (*(v11 + 16))(&v21 - v14, a2, v9, v13);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  (*(v11 + 32))(v17 + v16, v15, v9);
  v18 = v5;
  v21(a1, a4, v17);

  v19 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  swift_beginAccess();
  (*(v11 + 24))(&v18[v19], a2, v9);
  return swift_endAccess();
}

id sub_221A0FE30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, const void *a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v28 = *a8;
  swift_weakInit();
  v16 = &v9[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_pendingRequests];
  *v16 = 0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *&v9[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_actionMetadata] = a1;
  v17 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a2, v18);
  swift_weakAssign();
  v20 = &v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier];
  *v20 = a4;
  v20[1] = a5;
  sub_2219A1B08(a6, &v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment]);
  v21 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier;
  v22 = sub_221BCC558();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v10[v21], a7, v22);
  v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_payloadPrivacy] = v28;
  memcpy(&v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment], a9, 0x64uLL);
  v32.receiver = v10;
  v32.super_class = ObjectType;
  v24 = a1;
  v25 = objc_msgSendSuper2(&v32, sel_init);

  (*(v23 + 8))(a7, v22);
  __swift_destroy_boxed_opaque_existential_0(a6);
  (*(v19 + 8))(a2, v18);
  return v25;
}

uint64_t sub_221A10188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v6[12] = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A10288, 0, 0);
}

uint64_t sub_221A10288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  if (v4)
  {
    v6 = *(v3 + 120);
    v5 = *(v3 + 128);
    v7 = *(v3 + 112);
    v8 = *(v3 + 88);
    v9 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
    swift_beginAccess();
    (*(v6 + 16))(v5, v8 + v9, v7);
    v10 = [v4 output];
    v11 = v8 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier;
    v12 = *(v8 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
    *(v3 + 136) = v12;
    v13 = *(v11 + 8);
    *(v3 + 144) = v13;
    *(v3 + 16) = v12;
    *(v3 + 24) = v13;
    *(v3 + 32) = xmmword_221BD0800;
    v14 = (v8 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment);
    v15 = *(v8 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
    v16 = *(v8 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v17 = *(v16 + 24);
    swift_bridgeObjectRetain_n();
    v18 = v17(v15, v16);
    v20 = v19;
    v21 = OUTLINED_FUNCTION_23_5();
    *(v3 + 152) = v21;
    *v21 = v3;
    v21[1] = sub_221A104E0;
    v22 = *(v3 + 104);

    return v28(v22, v10, v3 + 16, v18, v20);
  }

  else
  {
    v24 = *(v3 + 80);
    if (!v24)
    {
      sub_2219A1218(a1, a2, a3);
      swift_allocError();
      *v25 = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 5;
    }

    swift_willThrow();
    v26 = v24;

    OUTLINED_FUNCTION_25();

    return v27();
  }
}

uint64_t sub_221A104E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A105C4()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  *(v5 + 224) = v0[17];
  *(v5 + 232) = v1;
  swift_storeEnumTagMultiPayload();
  sub_221BCD798();

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221A106E4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221A5E640(v0);
  }

  return result;
}

void sub_221A1075C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6();
}

uint64_t sub_221A107F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_221A109A8;

  return sub_221A5FE8C();
}

uint64_t sub_221A109A8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A10B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v9;
  v6[7] = *(v9 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[10] = v10;
  v11 = swift_task_alloc();
  v6[11] = v11;
  *v11 = v6;
  v11[1] = sub_221A10CAC;

  return (sub_221A61248)(v10, a5, a6);
}

uint64_t sub_221A10CAC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A10E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_221A10FF0;

  return sub_221A622E0();
}

uint64_t sub_221A10FF0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A110D4()
{
  v1 = v0[9];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[10]) == 1)
  {
    sub_221A01F0C(v1, &unk_27CFB93C0, &qword_221BD3A60);
  }

  else
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    sub_221A13568(v1, v2);
    v8 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
    OUTLINED_FUNCTION_20_4(v7 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion);
    (*(v5 + 16))(v4, v7 + v8, v6);
    sub_221A0150C(v2, v3);
    sub_221BCD798();
    (*(v5 + 8))(v4, v6);
    sub_221A133F4(v2);
  }

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221A112C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_221A109A8;

  return sub_221A63044();
}

uint64_t sub_221A11528(void *a1, void *a2, void (*a3)(void *, double), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v9 = OUTLINED_FUNCTION_8_1(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  a3(a2, v10);
  v13 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  OUTLINED_FUNCTION_17_5();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v4;
  v16 = a1;
  v17 = a2;
  sub_2219F7E3C();
}

uint64_t sub_221A11628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v9;
  v6[7] = *(v9 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[10] = v10;
  v11 = swift_task_alloc();
  v6[11] = v11;
  *v11 = v6;
  v11[1] = sub_221A1179C;

  return sub_221A64028(v10, a5, a6);
}

uint64_t sub_221A1179C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A11880()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  OUTLINED_FUNCTION_20_4(v0[5] + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion);
  v6 = OUTLINED_FUNCTION_16_6();
  v7(v6);
  sub_221A0150C(v1, v2);
  sub_221BCD798();
  (*(v4 + 8))(v3, v5);
  sub_221A133F4(v1);

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221A11A14(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_221BCD7F8();
  OUTLINED_FUNCTION_24_4(v7);
  OUTLINED_FUNCTION_17_5();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;
  v8[6] = a1;
  v9 = v2;
  v10 = a2;
  v11 = a1;
  OUTLINED_FUNCTION_19_4();
  sub_2219F7E3C();
}

uint64_t sub_221A11AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A11BF0, 0, 0);
}

uint64_t sub_221A11BF0()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A5F354(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_23_5();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_221A11C94;
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v6(v2, v3, v4);
}

uint64_t sub_221A11C94()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A11D78()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  OUTLINED_FUNCTION_20_4(v0[5] + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion);
  v6 = OUTLINED_FUNCTION_16_6();
  v7(v6);
  sub_221A0150C(v1, v2);
  sub_221BCD798();
  (*(v4 + 8))(v3, v5);
  sub_221A133F4(v1);

  OUTLINED_FUNCTION_25();

  return v8();
}

void sub_221A11EE8()
{
  v0 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_221A106E4();
  sub_221A0E704(v3, v4, v5);
  v6 = swift_allocError();
  *v7 = 3;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 9;
  *v2 = sub_221BCC328();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  sub_221BCD798();
}

uint64_t sub_221A11FE8()
{
  OUTLINED_FUNCTION_1_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  OUTLINED_FUNCTION_8_1(v3);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = sub_221BCC588();
  v1[6] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_221BCC558();
  v1[9] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A12128()
{
  v66 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v1 = v0[2];
  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEDB0);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    v9 = [v6 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v10 = OUTLINED_FUNCTION_18_6();
    v11(v10);
    v12 = sub_2219A6360(v9, off_278482000, &v65);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v13, v14, "[%s] Received environmentForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v15 = v0[3];
  v16 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
  v17 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment), v16);
  (*(v17 + 24))(v16, v17);
  sub_221BCC568();
  v18 = v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment;
  v19 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment + 96);
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = v0[5];
    v22 = v0[6];
    v23 = v0[4];
    v24 = *(v18 + 99);
    v25 = *(v18 + 98);
    v26 = *(v18 + 97);
    v27 = *(v18 + 80);
    v60 = *(v18 + 72);
    v62 = *(v18 + 88);
    v56 = *(v18 + 56);
    v58 = *(v18 + 64);
    v28 = *(v18 + 40);
    v29 = *(v18 + 48);
    v31 = *v18;
    v30 = *(v18 + 8);
    (*(v0[7] + 16))(v21, v0[8], v22);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    sub_221A132F8(v21, v23);
    v32 = objc_allocWithZone(MEMORY[0x277D23C80]);
    v20 = sub_221A6C6C4(v23, v28, v29, v56, v58, v60, v62, v19 & 1, v31, v30, v27, v26 & 1, v25 & 1, v24 & 1);
    sub_221A01F0C(v21, &qword_27CFB82E0, &qword_221BD2C30);
  }

  v33 = v0[2];
  v34 = v20;
  v35 = v33;
  v36 = sub_221BCCD68();
  v37 = sub_221BCDA98();

  if (os_log_type_enabled(v36, v37))
  {
    v55 = v37;
    v39 = v0[10];
    v38 = v0[11];
    v40 = v0[9];
    v61 = v0[7];
    v63 = v0[6];
    v64 = v0[8];
    v41 = v0[2];
    v42 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v65 = v59;
    *v42 = 136315394;
    v43 = [v41 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v44 = sub_221BCE168();
    v45 = v20;
    v47 = v46;
    (*(v39 + 8))(v38, v40);
    v48 = sub_2219A6360(v44, v47, &v65);
    v20 = v45;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v34;
    *v57 = v45;
    v49 = v34;
    _os_log_impl(&dword_221989000, v36, v55, "[%s] Responding to environment for view snippet | snippetEnvironment=%@", v42, 0x16u);
    sub_221A01F0C(v57, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_23();
    __swift_destroy_boxed_opaque_existential_0(v59);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();

    (*(v61 + 8))(v64, v63);
  }

  else
  {
    v51 = v0[7];
    v50 = v0[8];
    v52 = v0[6];

    (*(v51 + 8))(v50, v52);
  }

  v53 = v0[1];

  return v53(v20);
}

uint64_t sub_221A12664(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_221A12728;

  return sub_221A11FE8();
}

uint64_t sub_221A12728(void *a1)
{
  OUTLINED_FUNCTION_21_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  (v4)[2](v4, a1);
  _Block_release(v4);

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221A1287C()
{
  OUTLINED_FUNCTION_1_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_221BCC558();
  v1[7] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A12928()
{
  v49 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v1 = *(v0 + 40);
  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEDB0);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v46 = v2;
    v48 = swift_slowAlloc();
    v8 = v48;
    *v7 = 136315138;
    v9 = [v6 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v10 = OUTLINED_FUNCTION_18_6();
    v11(v10);
    v12 = sub_2219A6360(v9, off_278482000, &v48);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v13, v14, "[%s] Received preferredContentSizeForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v8);
    v2 = v46;
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v15 = *(v0 + 48) + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v18 = *(v15 + 32);
  v19 = *(v15 + 96) == 2;
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v16;
  }

  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v17;
  }

  v22 = v19 | v18;
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 40);
  __swift_project_value_buffer(v2, qword_280FA9008);
  v24 = v23;
  v25 = sub_221BCCD68();
  v26 = sub_221BCDA98();

  if (os_log_type_enabled(v25, v26))
  {
    v45 = v26;
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);
    v47 = v20;
    v30 = *(v0 + 40);
    v31 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = [v30 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v33 = sub_221BCE168();
    v34 = v21;
    v36 = v35;
    (*(v28 + 8))(v27, v29);
    v37 = v33;
    v20 = v47;
    v38 = sub_2219A6360(v37, v36, &v48);
    v21 = v34;

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    *(v0 + 16) = v47;
    *(v0 + 24) = v34;
    *(v0 + 32) = v22 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82D0, &qword_221BD2C10);
    v39 = sub_221BCD3F8();
    v41 = sub_2219A6360(v39, v40, &v48);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_221989000, v25, v45, "[%s] Responding to preferred content size for view snippet | size=%s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  if (v22)
  {
    v42 = 0;
  }

  else
  {
    v42 = [objc_opt_self() valueWithSize_];
  }

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t sub_221A12D6C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_221A65FB8(a6, v10);
}

uint64_t sub_221A12DF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_221A139DC;

  return sub_221A1287C();
}

id sub_221A12EC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14descr283510E01V29PerformActionExecutorDelegateCMa(uint64_t a1)
{
  result = qword_27CFB84D8;
  if (!qword_27CFB84D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221A13048(uint64_t a1)
{
  sub_221A13158(319);
  if (v1 <= 0x3F)
  {
    sub_221BCC558();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_221A13158(uint64_t a1)
{
  if (!qword_27CFB9390)
  {
    type metadata accessor for AppIntentsProtocol.PerformAction.Response(255);
    v1 = sub_221BCD7A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFB9390);
    }
  }
}

uint64_t sub_221A131C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_71(v1);

  return v3(v2);
}

uint64_t sub_221A1325C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_71(v1);

  return v3(v2);
}

uint64_t sub_221A132F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A13368()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A11AE8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A133F4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221A13450()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A11628(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A134DC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A112C8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A13568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A135CC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10E3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A13658()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10B38(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_19Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_221A13730()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A107F4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A137BC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10188(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_55Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_221A13964()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_8_1(v0);

  sub_221A11EE8();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_22_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunnerServiceDispatcherActor.validateExecutionPermission(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v107 = *MEMORY[0x277D85DE8];
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v5 = sub_221BB85FC(countAndFlagsBits, object);
  if (v1)
  {

LABEL_30:
    sub_2219ACADC(v5, v6, v7);
    swift_allocError();
    *v29 = countAndFlagsBits;
    *(v29 + 8) = object;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 1;
    swift_willThrow();

    return;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_221A07948(v105);
  if ((v106 & 1) != 0 || (v8 = sub_221A145F0(v105[0], v105[1], v105[2], v105[3])) == 0)
  {
    type metadata accessor for IntentsServices.SecurityError(0);
    OUTLINED_FUNCTION_0_25();
    v32 = sub_221A149B8(v30, v31, &protocol conformance descriptor for IntentsServices.SecurityError);
    v33 = OUTLINED_FUNCTION_2_20(v32);
    OUTLINED_FUNCTION_7_7(v33, v34);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v9 = v8;
  error = 0;
  if ((SecTaskGetCodeSignStatus(v8) & 0xC000001) != 0x4000001)
  {
    v35 = SecTaskCopyTeamIdentifier();
    if (v35)
    {
      v36 = v35;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v102 = 0;
        v103 = 0;
        sub_221BCD378();
      }
    }

    v55 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v56 = sub_221A14A00(countAndFlagsBits, object, 1);
    if (v56)
    {
      v57 = v56;
      sub_221A14ADC(v57);
    }

    else
    {

      v57 = 0;
    }

    type metadata accessor for IntentsServices.SecurityError(0);
    OUTLINED_FUNCTION_0_25();
    v60 = sub_221A149B8(v58, v59, &protocol conformance descriptor for IntentsServices.SecurityError);
    OUTLINED_FUNCTION_2_20(v60);
    *v61 = countAndFlagsBits;
    v61[1] = object;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_62;
  }

  if (qword_27CFB7318 != -1)
  {
    OUTLINED_FUNCTION_3_14();
    swift_once();
  }

  OUTLINED_FUNCTION_11_5(&qword_27CFBC6E0);
  v11 = v11 && v10 == 0xE800000000000000;
  if (!v11 && (sub_221BCE1B8() & 1) == 0)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v45 = sub_221BCCD88();
    __swift_project_value_buffer(v45, qword_27CFDEDB0);
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA98();
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_5(&dword_221989000, v48, v49, "Unable to run internal tests on a Customer build");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    type metadata accessor for IntentsServices.SecurityError(0);
    OUTLINED_FUNCTION_0_25();
    v52 = sub_221A149B8(v50, v51, &protocol conformance descriptor for IntentsServices.SecurityError);
    v53 = OUTLINED_FUNCTION_2_20(v52);
    OUTLINED_FUNCTION_7_7(v53, v54);
LABEL_52:
    swift_storeEnumTagMultiPayload();
LABEL_61:
    swift_willThrow();
    goto LABEL_62;
  }

  v98 = v9;
  v99 = countAndFlagsBits;
  v12 = [objc_opt_self() allBundles];
  sub_221A14B4C();
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0();
  v15 = 0;
  v101 = v13 & 0xC000000000000001;
  v100 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      v102 = v99;
      v103 = object;
      MEMORY[0x28223BE20](v37);
      v96[2] = &v102;
      v38 = sub_221A14908(sub_221A14BBC, v96, v100);

      if (v38)
      {
LABEL_37:

        return;
      }

      v9 = v98;
      v39 = SecTaskCopySigningIdentifier(v98, &error);
      if (v39)
      {
        v40 = v39;
        v41 = sub_221BCD388();
        v43 = v42;

        if (!error)
        {
          if (v43)
          {
            v44 = v41 == v99 && v43 == object;
            if (v44 || (sub_221BCE1B8() & 1) != 0)
            {

LABEL_62:

              return;
            }

            v67 = 0;
            goto LABEL_65;
          }

LABEL_64:
          v67 = 1;
LABEL_65:
          v68 = sub_221A146DC();
          if (v68)
          {
            v2 = v68;
            v69 = SecTaskCopySigningIdentifier(v68, &error);
            if (v69)
            {
              v70 = v69;
              v71 = sub_221BCD388();
              v73 = v72;
            }

            else
            {
              v71 = 0;
              v73 = 0;
            }

            if (error)
            {

              v84 = error;
              type metadata accessor for CFError(0);
              OUTLINED_FUNCTION_1_25();
              v87 = sub_221A149B8(v85, v86, MEMORY[0x277CC9CB8]);
              OUTLINED_FUNCTION_2_20(v87);
              *v88 = v84;
              swift_willThrow();
LABEL_76:

              goto LABEL_37;
            }

            if (v67)
            {
              if (!v73)
              {
                goto LABEL_76;
              }
            }

            else if (v73)
            {
              if (v41 == v71 && v43 == v73)
              {
                goto LABEL_93;
              }

              v90 = sub_221BCE1B8();

              v91 = v98;
              if (v90)
              {
                goto LABEL_90;
              }

              goto LABEL_89;
            }

            v91 = v98;
LABEL_89:
            type metadata accessor for IntentsServices.SecurityError(0);
            OUTLINED_FUNCTION_0_25();
            v94 = sub_221A149B8(v92, v93, &protocol conformance descriptor for IntentsServices.SecurityError);
            OUTLINED_FUNCTION_2_20(v94);
            *v95 = v99;
            v95[1] = object;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

LABEL_90:

            return;
          }

          if (qword_27CFB7370 != -1)
          {
            OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
          }

          v74 = sub_221BCCD88();
          __swift_project_value_buffer(v74, qword_27CFDEDB0);
          v75 = sub_221BCCD68();
          v76 = sub_221BCDA98();
          if (os_log_type_enabled(v75, v76))
          {
            OUTLINED_FUNCTION_117();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_10_5(&dword_221989000, v77, v78, "Unable to perform tests due to unknown Team Identifier");
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
          }

          type metadata accessor for IntentsServices.SecurityError(0);
          OUTLINED_FUNCTION_0_25();
          v81 = sub_221A149B8(v79, v80, &protocol conformance descriptor for IntentsServices.SecurityError);
          v82 = OUTLINED_FUNCTION_2_20(v81);
          OUTLINED_FUNCTION_7_7(v82, v83);
          goto LABEL_52;
        }
      }

      else if (!error)
      {
        v41 = 0;
        v43 = 0;
        goto LABEL_64;
      }

      v62 = error;
      type metadata accessor for CFError(0);
      OUTLINED_FUNCTION_1_25();
      v65 = sub_221A149B8(v63, v64, MEMORY[0x277CC9CB8]);
      OUTLINED_FUNCTION_2_20(v65);
      *v66 = v62;
      goto LABEL_61;
    }

    if (v101)
    {
      v16 = MEMORY[0x223DA3BF0](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v18 = v16;
    v19 = [v18 bundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = sub_221BCD388();
      v97 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219B3AFC();
        v100 = v27;
      }

      v23 = *(v100 + 16);
      if (v23 >= *(v100 + 24) >> 1)
      {
        sub_2219B3AFC();
        v100 = v28;
      }

      v24 = v100;
      *(v100 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      v26 = v97;
      *(v25 + 32) = v21;
      *(v25 + 40) = v26;
      v15 = v17;
    }

    else
    {

      ++v15;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
}

SecTaskRef sub_221A145F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v10.val = a1;
  *&v10.val[2] = a2;
  *&v10.val[4] = a3;
  *&v10.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &v10);
  if (!result)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v5 = sub_221BCCD88();
    __swift_project_value_buffer(v5, qword_27CFDEDF8);
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA98();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_7(&dword_221989000, v8, v9, "A security task couldn’t be created for the audit token.");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    return 0;
  }

  return result;
}

SecTaskRef sub_221A146DC()
{
  result = SecTaskCreateFromSelf(0);
  if (!result)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v1 = sub_221BCCD88();
    __swift_project_value_buffer(v1, qword_27CFDEDF8);
    v2 = sub_221BCCD68();
    v3 = sub_221BCDA98();
    if (os_log_type_enabled(v2, v3))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_7(&dword_221989000, v4, v5, "A security task for self couldn’t be created.");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    return 0;
  }

  return result;
}

uint64_t RunnerServiceDispatcherActor.isAppleInternal.getter()
{
  if (qword_27CFB7318 != -1)
  {
    OUTLINED_FUNCTION_3_14();
    swift_once();
  }

  OUTLINED_FUNCTION_11_5(&qword_27CFBC6E0);
  v2 = v2 && v0 == 0xE800000000000000;
  if (v2)
  {
    return 1;
  }

  return sub_221BCE1B8();
}

void sub_221A14814(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2219A69A0();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DA3BF0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_221A14908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_221A149B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_221A14A00(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_221BCD358();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_221BCC338();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_221A14ADC(void *a1)
{
  v2 = [a1 teamIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_221BCD388();

  return v3;
}

unint64_t sub_221A14B4C()
{
  result = qword_27CFB8510;
  if (!qword_27CFB8510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB8510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_10_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_221A14CCC()
{
  OUTLINED_FUNCTION_1_5();
  v0[2] = v1;
  v2 = sub_221BCC708();
  v0[3] = v2;
  OUTLINED_FUNCTION_18_4(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v4 = sub_221BCC7D8();
  v0[6] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v0[7] = v5;
  v0[8] = swift_task_alloc();
  v6 = sub_221BCC858();
  v0[9] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[10] = v7;
  v0[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A14E28, 0, 0);
}

uint64_t sub_221A14E28()
{
  OUTLINED_FUNCTION_1_5();
  if (qword_27CFB6CC8 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_27CFB6CC8);
  }

  sub_221BCC7C8();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_221A14F24;
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  return MEMORY[0x2821E7788](v2, v3, sub_221A15730, 0, v4);
}

uint64_t sub_221A14F24()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v7 = sub_221A151D4;
  }

  else
  {
    v7 = sub_221A15088;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221A15088()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221A15D14(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  v5 = sub_221BCC848();
  sub_221BCC838();
  v6 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  (*(v2 + 8))(v1, v3);

  *v4 = v5;
  *(v4 + 24) = v9;
  *(v4 + 8) = v10;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221A151D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_221A15D14(&qword_27CFB85B0, MEMORY[0x277D7E968], MEMORY[0x277D7E970]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t RunnerServiceDispatcherActor.XPCService.Role.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_221A15364()
{
  sub_221BCC868();
  swift_allocObject();
  result = sub_221BCC878();
  qword_27CFB8518 = result;
  return result;
}

uint64_t sub_221A153BC()
{
  sub_221BCC868();
  swift_allocObject();
  result = sub_221BCC878();
  qword_27CFB8520 = result;
  return result;
}

uint64_t static RunnerServiceDispatcherActor.XPCService.xpcSystem(for:)(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_27CFB6CD0 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27CFB6CC8 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_27CFB6CC8);
  }
}

unint64_t sub_221A154C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8528[0];
  if (!qword_27CFB8528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB8528);
  }

  return result;
}

_BYTE *_s14descr283510E01V10XPCServiceOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s14descr283510E01V10XPCServiceO4RoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221A1569C(uint64_t a1)
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

void sub_221A15730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_221BCC808();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85B8, &qword_221BD3BC0);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + *(*v10 + 88), v9, v5);
  v11 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  sub_2219F8084();
}

uint64_t sub_221A158FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_221BCC828();
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A1598C, 0, 0);
}

uint64_t sub_221A1598C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BCC7F8();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_221A15A44;
  v2 = *(v0 + 16);

  return MEMORY[0x2821E77D0](v2);
}

uint64_t sub_221A15A44()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_221A15B34, 0, 0);
}

uint64_t sub_221A15B34()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A15BFC()
{
  v0 = sub_221A15B8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221A15C7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A15CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A15D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221A15D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2219A77F8;

  return sub_221A158FC(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_221A15E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_221A15F10()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  v135 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v128 = &v121 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_157();
  v131 = type metadata accessor for AppIntentsProtobuf_Property(0);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_6();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58_3();
  if (!v20 || !v2 || v1 == v0)
  {
LABEL_104:
    OUTLINED_FUNCTION_22();
    return;
  }

  v127 = v9;
  v130 = v5;
  v124 = 0;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_78(v19);
  while (1)
  {
    sub_221A1C608();
    sub_221A1C608();
    v20 = *v4 == *v17 && v4[1] == v17[1];
    if (!v20 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_103;
    }

    v21 = *(v129 + 48);
    sub_221A1C558();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v3, 1, v130);
    if (!v20)
    {
      break;
    }

    OUTLINED_FUNCTION_145(v3 + v21);
    if (!v20)
    {
      goto LABEL_101;
    }

    v22 = OUTLINED_FUNCTION_39_4();
    sub_2219A1CC8(v22, v23, &qword_221BE4610);
LABEL_94:
    sub_221BCC8D8();
    v115 = sub_221A1C500();
    v116 = OUTLINED_FUNCTION_85_1(v115);
    sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_Property);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_Property);
    if (v116)
    {
      OUTLINED_FUNCTION_59_3();
      if (!v20)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  v24 = v128;
  sub_221A1C558();
  OUTLINED_FUNCTION_145(v3 + v21);
  if (v25)
  {
    OUTLINED_FUNCTION_6_9();
    sub_221A1C660(v24, v120);
LABEL_101:
    v118 = &qword_27CFB85E0;
    v119 = &unk_221BD3E40;
LABEL_102:
    sub_2219A1CC8(v3, v118, v119);
LABEL_103:
    sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_Property);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_Property);
    goto LABEL_104;
  }

  v126 = v9;
  OUTLINED_FUNCTION_8_8();
  v26 = v127;
  sub_221A1C5B0();
  OUTLINED_FUNCTION_48_4();
  if (v20)
  {
    v32 = 0;
    if (!v28 && v9 == 0xC000000000000000 && v27 >= 3)
    {
      v32 = 0;
      if (!v26 && &qword_221BE4610 == 0xC000000000000000)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v32 = 0;
    switch(v30)
    {
      case 1:
        if (__OFSUB__(v29, v28))
        {
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
        }

        v32 = v29 - v28;
        break;
      case 2:
        OUTLINED_FUNCTION_82_2();
        if (!v33)
        {
          break;
        }

        goto LABEL_107;
      case 3:
        break;
      default:
        v32 = BYTE6(v9);
        break;
    }
  }

  v34 = (&qword_221BE4610 >> 48);
  switch(v27)
  {
    case 1uLL:
      LODWORD(v35) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_105;
      }

      v35 = v35;
LABEL_42:
      if (v32 != v35)
      {
        goto LABEL_99;
      }

      if (v32 < 1)
      {
        goto LABEL_93;
      }

      break;
    case 2uLL:
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      v33 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (!v33)
      {
        goto LABEL_42;
      }

      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    case 3uLL:
      if (v32)
      {
        goto LABEL_99;
      }

      goto LABEL_93;
    default:
      v35 = (&qword_221BE4610 >> 48);
      goto LABEL_42;
  }

  v125 = v5;
  v38 = v26 >> 32;
  v39 = v26 >> 8;
  v40 = v26 >> 16;
  v41 = v26 >> 24;
  v42 = v26 >> 40;
  v43 = HIWORD(v26);
  v44 = HIBYTE(v26);
  v45 = &qword_221BE4610 >> 8;
  switch(v30)
  {
    case 1:
      if (v28 >> 32 < v28)
      {
        goto LABEL_108;
      }

      v123 = v28;
      v72 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v72, v73);
      v74 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v74, v75);
      v76 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v76, v77);
      if (sub_221BCC278())
      {
        v78 = OUTLINED_FUNCTION_87_2();
        if (__OFSUB__(v123, v78))
        {
          goto LABEL_111;
        }

        v122 = v123 - v78 + v38;
      }

      else
      {
        v122 = 0;
      }

      sub_221BCC298();
      v83 = OUTLINED_FUNCTION_53_4();
      v84 = v134;
LABEL_75:
      v85 = v124;
      sub_221A1C1B4(v84, v83, v26, &qword_221BE4610);
      v86 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v86, v87);
      v88 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v88, v89);
      v90 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v90, v91);
      v124 = v85;
      if (v85)
      {
        goto LABEL_124;
      }

      v5 = v125;
      if ((v134[0] & 1) == 0)
      {
        goto LABEL_99;
      }

      break;
    case 2:
      v57 = *(v28 + 16);
      v123 = *(v28 + 24);
      v58 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v58, v59);
      v60 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v60, v61);
      v62 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v62, v63);
      if (sub_221BCC278())
      {
        if (__OFSUB__(v57, OUTLINED_FUNCTION_87_2()))
        {
          goto LABEL_110;
        }

        v64 = v57;
      }

      else
      {
        v64 = v57;
      }

      if (__OFSUB__(v123, v64))
      {
        goto LABEL_109;
      }

      sub_221BCC298();
      v83 = OUTLINED_FUNCTION_15_5();
      goto LABEL_75;
    case 3:
      memset(v134, 0, 14);
      if (!v27)
      {
        goto LABEL_68;
      }

      if (v27 == 2)
      {
        v65 = *(v26 + 16);
        v66 = *(v26 + 24);
        v67 = OUTLINED_FUNCTION_18_7();
        sub_2219EBFC8(v67, v68);
        v55 = sub_221BCC278();
        if (v55)
        {
          v69 = sub_221BCC2A8();
          if (__OFSUB__(v65, v69))
          {
            goto LABEL_117;
          }

          v55 += v65 - v69;
        }

        v33 = __OFSUB__(v66, v65);
        v70 = v66 - v65;
        if (v33)
        {
          goto LABEL_115;
        }

        v71 = sub_221BCC298();
        if (!v55)
        {
          goto LABEL_121;
        }

LABEL_89:
        if (v71 >= v70)
        {
          v95 = v70;
        }

        else
        {
          v95 = v71;
        }

        goto LABEL_92;
      }

      if (v38 < v26)
      {
        goto LABEL_113;
      }

      v92 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v92, v93);
      v55 = sub_221BCC278();
      if (v55)
      {
        v94 = sub_221BCC2A8();
        if (__OFSUB__(v26, v94))
        {
          goto LABEL_119;
        }

        v55 += v26 - v94;
      }

      sub_221BCC298();
      if (v55)
      {
        goto LABEL_83;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_62_2();
      v134[2] = v46;
      v134[3] = v47;
      v134[4] = v48;
      v134[5] = v49;
      OUTLINED_FUNCTION_47_1();
      v134[10] = v51;
      v134[11] = v52;
      v134[12] = BYTE4(v9);
      v134[13] = BYTE5(v9);
      if (v50)
      {
        if (v50 != 1)
        {
          v96 = *(v26 + 16);
          v97 = *(v26 + 24);
          v98 = OUTLINED_FUNCTION_18_7();
          sub_2219EBFC8(v98, v99);
          v55 = sub_221BCC278();
          if (v55)
          {
            v100 = sub_221BCC2A8();
            if (__OFSUB__(v96, v100))
            {
              goto LABEL_116;
            }

            v55 += v96 - v100;
          }

          v33 = __OFSUB__(v97, v96);
          v70 = v97 - v96;
          if (v33)
          {
            goto LABEL_114;
          }

          v71 = sub_221BCC298();
          if (!v55)
          {
            goto LABEL_122;
          }

          goto LABEL_89;
        }

        if (v38 < v26)
        {
          goto LABEL_112;
        }

        v53 = OUTLINED_FUNCTION_18_7();
        sub_2219EBFC8(v53, v54);
        v55 = sub_221BCC278();
        if (v55)
        {
          v56 = sub_221BCC2A8();
          if (__OFSUB__(v26, v56))
          {
            goto LABEL_118;
          }

          v55 += v26 - v56;
        }

        sub_221BCC298();
        if (!v55)
        {
          goto LABEL_123;
        }

LABEL_83:
        OUTLINED_FUNCTION_83_3();
LABEL_92:
        v101 = memcmp(v134, v55, v95);
        v102 = OUTLINED_FUNCTION_18_7();
        sub_2219EC040(v102, v103);
        v5 = v125;
        if (!v101)
        {
          break;
        }

LABEL_99:
        OUTLINED_FUNCTION_5_12();
        sub_221A1C660(v127, v117);
        sub_221A1C660(v128, v26);
        v118 = &unk_27CFBB660;
        v119 = &qword_221BE4610;
        goto LABEL_102;
      }

LABEL_68:
      v132 = v26;
      OUTLINED_FUNCTION_16_7(v45, v44, v34, v43, v42, v41, v40, v39);
      v133 = &qword_221BE4610;
      v82 = OUTLINED_FUNCTION_24_5(v79, v80, v81);
      v5 = v125;
      if (v82)
      {
        goto LABEL_99;
      }

      break;
  }

LABEL_93:
  v104 = sub_221BCC8D8();
  sub_221A1C500();
  v105 = v5;
  v106 = v2;
  v107 = v4;
  v108 = v17;
  v109 = v3;
  v110 = v127;
  v111 = v128;
  v112 = sub_221BCD338();
  OUTLINED_FUNCTION_7_8();
  sub_221A1C660(v110, v113);
  v114 = v111;
  v3 = v109;
  v17 = v108;
  v4 = v107;
  v2 = v106;
  v5 = v105;
  sub_221A1C660(v114, v104);
  sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
  v9 = v126;
  if ((v112 & 1) == 0)
  {
    goto LABEL_103;
  }

  goto LABEL_94;
}

void sub_221A16800()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(v5);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_6();
  if (!v14 || !v4 || v3 == v0)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_8();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    sub_221A1C608();
    OUTLINED_FUNCTION_63_3();
    sub_221A1C608();
    v8 = *v2;
    v9 = *v1;
    if (*(v1 + 8) == 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v8 != 2)
        {
          goto LABEL_36;
        }
      }

      else if (v8)
      {
        goto LABEL_36;
      }
    }

    else if (v8 != v9)
    {
      goto LABEL_36;
    }

    v10 = *(v2 + 32);
    v11 = *(v1 + 32);
    if (v10 == 255)
    {
      if (v11 != 255)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if (v11 == 255)
    {
      goto LABEL_36;
    }

    v12 = v2[2];
    v13 = *(v1 + 16);
    if ((v10 & 1) == 0)
    {
      if ((v11 & 1) != 0 || v12 != v13)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

    v14 = v12 == v13 && v2[3] == *(v1 + 24);
    if (!v14 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    sub_221BCC8D8();
    v15 = sub_221A1C500();
    v16 = OUTLINED_FUNCTION_38_1(v15);
    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
    OUTLINED_FUNCTION_86_1();
    if (v16)
    {
      OUTLINED_FUNCTION_14_8();
      if (!v14)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  sub_2219980F0(*(v1 + 16), *(v1 + 24), 0);
LABEL_36:
  sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
  v17 = OUTLINED_FUNCTION_55_3();
  sub_221A1C660(v17, v18);
LABEL_37:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A16A34()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  v134 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v128 = &v120 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_157();
  v130 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_6();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58_3();
  if (!v20 || !v2 || v1 == v0)
  {
    goto LABEL_104;
  }

  v126 = v9;
  v127 = v5;
  v123 = 0;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_78(v19);
  while (1)
  {
    sub_221A1C608();
    sub_221A1C608();
    if (*v4 != *v17)
    {
      goto LABEL_103;
    }

    v20 = v4[1] == v17[1] && v4[2] == v17[2];
    if (!v20 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_103;
    }

    v21 = *(v129 + 48);
    sub_221A1C558();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v3, 1, v127);
    if (!v20)
    {
      break;
    }

    OUTLINED_FUNCTION_145(v3 + v21);
    if (!v20)
    {
      goto LABEL_101;
    }

    v22 = OUTLINED_FUNCTION_39_4();
    sub_2219A1CC8(v22, v23, &qword_221BE4610);
LABEL_94:
    sub_221BCC8D8();
    v114 = sub_221A1C500();
    v115 = OUTLINED_FUNCTION_85_1(v114);
    sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    if (v115)
    {
      OUTLINED_FUNCTION_59_3();
      if (!v20)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  v24 = v128;
  sub_221A1C558();
  OUTLINED_FUNCTION_145(v3 + v21);
  if (v25)
  {
    OUTLINED_FUNCTION_6_9();
    sub_221A1C660(v24, v119);
LABEL_101:
    v117 = &qword_27CFB85E0;
    v118 = &unk_221BD3E40;
    goto LABEL_102;
  }

  v125 = v9;
  OUTLINED_FUNCTION_8_8();
  v26 = v126;
  sub_221A1C5B0();
  OUTLINED_FUNCTION_48_4();
  if (v20)
  {
    v32 = 0;
    if (!v28 && v9 == 0xC000000000000000 && v27 >= 3)
    {
      v32 = 0;
      if (!v26 && &qword_221BE4610 == 0xC000000000000000)
      {
LABEL_93:
        v104 = sub_221BCC8D8();
        sub_221A1C500();
        v105 = v5;
        v106 = v4;
        v107 = v17;
        v108 = v2;
        v109 = v3;
        v110 = v128;
        v111 = v126;
        v112 = sub_221BCD338();
        OUTLINED_FUNCTION_7_8();
        sub_221A1C660(v111, v113);
        v3 = v109;
        v2 = v108;
        v17 = v107;
        v4 = v106;
        v5 = v105;
        sub_221A1C660(v110, v104);
        sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
        v9 = v125;
        if ((v112 & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_94;
      }
    }
  }

  else
  {
    v32 = 0;
    switch(v30)
    {
      case 1:
        if (__OFSUB__(v29, v28))
        {
          goto LABEL_108;
        }

        v32 = v29 - v28;
        break;
      case 2:
        OUTLINED_FUNCTION_82_2();
        if (!v33)
        {
          break;
        }

        goto LABEL_107;
      case 3:
        break;
      default:
        v32 = BYTE6(v9);
        break;
    }
  }

  v34 = (&qword_221BE4610 >> 48);
  switch(v27)
  {
    case 1uLL:
      LODWORD(v35) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
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
      }

      v35 = v35;
LABEL_43:
      if (v32 == v35)
      {
        if (v32 >= 1)
        {
          v124 = v5;
          v38 = v26 >> 32;
          v39 = v26 >> 8;
          v40 = v26 >> 16;
          v41 = v26 >> 24;
          v42 = v26 >> 40;
          v43 = HIWORD(v26);
          v44 = HIBYTE(v26);
          v45 = &qword_221BE4610 >> 8;
          switch(v30)
          {
            case 1:
              if (v28 >> 32 < v28)
              {
                goto LABEL_109;
              }

              v122 = v28;
              v72 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v72, v73);
              v74 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v74, v75);
              v76 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v76, v77);
              if (sub_221BCC278())
              {
                v78 = OUTLINED_FUNCTION_87_2();
                if (__OFSUB__(v122, v78))
                {
                  goto LABEL_112;
                }

                v121 = v122 - v78 + v38;
              }

              else
              {
                v121 = 0;
              }

              sub_221BCC298();
              v83 = OUTLINED_FUNCTION_53_4();
              v84 = v133;
LABEL_76:
              v85 = v123;
              sub_221A1C1B4(v84, v83, v26, &qword_221BE4610);
              v123 = v85;
              v86 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v86, v87);
              v88 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v88, v89);
              v90 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v90, v91);
              v5 = v124;
              if ((v133[0] & 1) == 0)
              {
                goto LABEL_99;
              }

              goto LABEL_93;
            case 2:
              v57 = *(v28 + 16);
              v122 = *(v28 + 24);
              v58 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v58, v59);
              v60 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v60, v61);
              v62 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v62, v63);
              if (sub_221BCC278())
              {
                if (__OFSUB__(v57, OUTLINED_FUNCTION_87_2()))
                {
                  goto LABEL_111;
                }

                v64 = v57;
              }

              else
              {
                v64 = v57;
              }

              if (__OFSUB__(v122, v64))
              {
                goto LABEL_110;
              }

              sub_221BCC298();
              v83 = OUTLINED_FUNCTION_15_5();
              goto LABEL_76;
            case 3:
              memset(v133, 0, 14);
              if (!v27)
              {
                goto LABEL_69;
              }

              if (v27 == 2)
              {
                v65 = *(v26 + 16);
                v66 = *(v26 + 24);
                v67 = OUTLINED_FUNCTION_18_7();
                sub_2219EBFC8(v67, v68);
                v55 = sub_221BCC278();
                if (v55)
                {
                  v69 = sub_221BCC2A8();
                  if (__OFSUB__(v65, v69))
                  {
                    goto LABEL_117;
                  }

                  v55 += v65 - v69;
                }

                v33 = __OFSUB__(v66, v65);
                v70 = v66 - v65;
                if (v33)
                {
                  goto LABEL_115;
                }

                v71 = sub_221BCC298();
                if (!v55)
                {
                  goto LABEL_124;
                }

                goto LABEL_89;
              }

              if (v38 < v26)
              {
                goto LABEL_114;
              }

              v92 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v92, v93);
              v55 = sub_221BCC278();
              if (v55)
              {
                v94 = sub_221BCC2A8();
                if (__OFSUB__(v26, v94))
                {
                  goto LABEL_119;
                }

                v55 += v26 - v94;
              }

              sub_221BCC298();
              if (!v55)
              {
                goto LABEL_123;
              }

              goto LABEL_83;
            default:
              OUTLINED_FUNCTION_62_2();
              v133[2] = v46;
              v133[3] = v47;
              v133[4] = v48;
              v133[5] = v49;
              OUTLINED_FUNCTION_47_1();
              v133[10] = v51;
              v133[11] = v52;
              v133[12] = BYTE4(v9);
              v133[13] = BYTE5(v9);
              if (v50)
              {
                if (v50 == 1)
                {
                  if (v38 < v26)
                  {
                    goto LABEL_113;
                  }

                  v53 = OUTLINED_FUNCTION_18_7();
                  sub_2219EBFC8(v53, v54);
                  v55 = sub_221BCC278();
                  if (v55)
                  {
                    v56 = sub_221BCC2A8();
                    if (__OFSUB__(v26, v56))
                    {
                      goto LABEL_120;
                    }

                    v55 += v26 - v56;
                  }

                  sub_221BCC298();
                  if (!v55)
                  {
                    goto LABEL_122;
                  }

LABEL_83:
                  OUTLINED_FUNCTION_83_3();
                }

                else
                {
                  v96 = *(v26 + 16);
                  v97 = *(v26 + 24);
                  v98 = OUTLINED_FUNCTION_18_7();
                  sub_2219EBFC8(v98, v99);
                  v55 = sub_221BCC278();
                  if (v55)
                  {
                    v100 = sub_221BCC2A8();
                    if (__OFSUB__(v96, v100))
                    {
                      goto LABEL_118;
                    }

                    v55 += v96 - v100;
                  }

                  v33 = __OFSUB__(v97, v96);
                  v70 = v97 - v96;
                  if (v33)
                  {
                    goto LABEL_116;
                  }

                  v71 = sub_221BCC298();
                  if (!v55)
                  {
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
LABEL_124:
                    __break(1u);
                    return;
                  }

LABEL_89:
                  if (v71 >= v70)
                  {
                    v95 = v70;
                  }

                  else
                  {
                    v95 = v71;
                  }
                }

                v101 = memcmp(v133, v55, v95);
                v102 = OUTLINED_FUNCTION_18_7();
                sub_2219EC040(v102, v103);
                v5 = v124;
                if (v101)
                {
                  goto LABEL_99;
                }
              }

              else
              {
LABEL_69:
                v131 = v26;
                OUTLINED_FUNCTION_16_7(v45, v44, v34, v43, v42, v41, v40, v39);
                v132 = &qword_221BE4610;
                v82 = OUTLINED_FUNCTION_24_5(v79, v80, v81);
                v5 = v124;
                if (v82)
                {
                  goto LABEL_99;
                }
              }

              break;
          }
        }

        goto LABEL_93;
      }

LABEL_99:
      OUTLINED_FUNCTION_5_12();
      sub_221A1C660(v126, v116);
      sub_221A1C660(v128, v26);
      v117 = &unk_27CFBB660;
      v118 = &qword_221BE4610;
LABEL_102:
      sub_2219A1CC8(v3, v117, v118);
LABEL_103:
      sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
LABEL_104:
      OUTLINED_FUNCTION_22();
      return;
    case 2uLL:
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      v33 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (!v33)
      {
        goto LABEL_43;
      }

      goto LABEL_106;
    case 3uLL:
      if (v32)
      {
        goto LABEL_99;
      }

      goto LABEL_93;
    default:
      v35 = (&qword_221BE4610 >> 48);
      goto LABEL_43;
  }
}

void sub_221A17320()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(v5);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_6();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8();
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      v8 = *v2 == *v1 && v2[1] == v1[1];
      if (!v8 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v9 = v2[2] == v1[2] && v2[3] == v1[3];
      if (!v9 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      sub_221BCC8D8();
      v10 = sub_221A1C500();
      v11 = OUTLINED_FUNCTION_38_1(v10);
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
      OUTLINED_FUNCTION_86_1();
      if (v11)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
    v12 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v12, v13);
  }

LABEL_22:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A174D8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v111 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_6();
  v107 = (v6 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = (&v102 - v9);
  v11 = *(v3 + 16);
  if (v11 == *(v1 + 16) && v11 && v3 != v1)
  {
    v104 = 0;
    v105 = v4;
    OUTLINED_FUNCTION_12_4();
    v13 = v3 + v12;
    v14 = v1 + v12;
    v106 = *(v15 + 72);
    while (1)
    {
      sub_221A1C608();
      v16 = v107;
      sub_221A1C608();
      v17 = *v10;
      v18 = v10[1];
      v19 = v18 >> 62;
      v21 = *v16;
      v20 = v16[1];
      v22 = HIDWORD(*v10);
      v23 = v20 >> 62;
      if (v24)
      {
        v26 = 0;
        if (!v17 && v18 == 0xC000000000000000 && v20 >> 62 == 3)
        {
          v26 = 0;
          if (!v21 && v20 == 0xC000000000000000)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        v26 = 0;
        switch(v19)
        {
          case 0uLL:
            v26 = BYTE6(v18);
            break;
          case 1uLL:
            if (__OFSUB__(v22, v17))
            {
              goto LABEL_87;
            }

            v26 = v22 - v17;
            break;
          case 2uLL:
            OUTLINED_FUNCTION_82_2();
            if (!v27)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
            goto LABEL_106;
        }
      }

      v28 = BYTE6(v20);
      switch(v23)
      {
        case 1uLL:
          LODWORD(v29) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
          }

          v29 = v29;
LABEL_30:
          if (v26 != v29)
          {
LABEL_83:
            OUTLINED_FUNCTION_5_12();
            sub_221A1C660(v107, v101);
            sub_221A1C660(v10, v11);
            goto LABEL_84;
          }

          if (v26 >= 1)
          {
            v32 = v21 >> 32;
            v33 = v21 >> 8;
            v34 = v21 >> 16;
            v35 = v21 >> 24;
            v36 = v21 >> 40;
            v37 = HIWORD(v21);
            v38 = HIBYTE(v21);
            v39 = v20 >> 8;
            switch(v19)
            {
              case 1:
                if (v17 >> 32 < v17)
                {
                  goto LABEL_89;
                }

                v103 = v17;
                v66 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v66, v67);
                v68 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v68, v69);
                v70 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v70, v71);
                if (!sub_221BCC278() || !__OFSUB__(v103, sub_221BCC2A8()))
                {
                  goto LABEL_60;
                }

                goto LABEL_92;
              case 2:
                v51 = *(v17 + 16);
                v103 = *(v17 + 24);
                v52 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v52, v53);
                v54 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v54, v55);
                v56 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v56, v57);
                if (sub_221BCC278() && __OFSUB__(v51, sub_221BCC2A8()))
                {
                  goto LABEL_91;
                }

                if (__OFSUB__(v103, v51))
                {
                  goto LABEL_90;
                }

LABEL_60:
                sub_221BCC298();
                v75 = OUTLINED_FUNCTION_15_5();
                v76 = v104;
                sub_221A1C1B4(v77, v75, v21, v20);
                v78 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v78, v79);
                v80 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v80, v81);
                v82 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v82, v83);
                v104 = v76;
                if (v76)
                {
                  goto LABEL_105;
                }

                if ((v110[0] & 1) == 0)
                {
                  goto LABEL_83;
                }

                goto LABEL_79;
              case 3:
                memset(v110, 0, 14);
                if (!v23)
                {
                  goto LABEL_58;
                }

                if (v23 == 2)
                {
                  v58 = *(v21 + 16);
                  v59 = *(v21 + 24);
                  v60 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v60, v61);
                  v62 = sub_221BCC278();
                  if (v62)
                  {
                    v63 = sub_221BCC2A8();
                    if (__OFSUB__(v58, v63))
                    {
                      goto LABEL_97;
                    }

                    v62 += v58 - v63;
                  }

                  v27 = __OFSUB__(v59, v58);
                  v64 = v59 - v58;
                  if (v27)
                  {
                    goto LABEL_96;
                  }

                  v65 = sub_221BCC298();
                  if (!v62)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_74;
                }

                if (v32 < v21)
                {
                  goto LABEL_93;
                }

                v84 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v84, v85);
                v49 = sub_221BCC278();
                if (v49)
                {
                  v86 = sub_221BCC2A8();
                  if (__OFSUB__(v21, v86))
                  {
                    goto LABEL_100;
                  }

                  v49 += v21 - v86;
                }

                sub_221BCC298();
                if (!v49)
                {
                  goto LABEL_102;
                }

                goto LABEL_68;
              default:
                OUTLINED_FUNCTION_62_2();
                LOBYTE(v110[1]) = v41;
                HIBYTE(v110[1]) = v42;
                LOBYTE(v110[2]) = v43;
                HIBYTE(v110[2]) = v44;
                LOBYTE(v110[3]) = v45;
                HIBYTE(v110[3]) = v46;
                v110[4] = v18;
                LOBYTE(v110[5]) = BYTE2(v18);
                HIBYTE(v110[5]) = BYTE3(v18);
                LOBYTE(v110[6]) = BYTE4(v18);
                HIBYTE(v110[6]) = BYTE5(v18);
                if (v40)
                {
                  if (v40 == 1)
                  {
                    if (v32 < v21)
                    {
                      goto LABEL_94;
                    }

                    v47 = OUTLINED_FUNCTION_17_6();
                    sub_2219EBFC8(v47, v48);
                    v49 = sub_221BCC278();
                    if (v49)
                    {
                      v50 = sub_221BCC2A8();
                      if (__OFSUB__(v21, v50))
                      {
                        goto LABEL_99;
                      }

                      v49 += v21 - v50;
                    }

                    sub_221BCC298();
                    if (!v49)
                    {
                      goto LABEL_103;
                    }

LABEL_68:
                    OUTLINED_FUNCTION_83_3();
                    v88 = v49;
                  }

                  else
                  {
                    v89 = *(v21 + 16);
                    v90 = *(v21 + 24);
                    v91 = OUTLINED_FUNCTION_17_6();
                    sub_2219EBFC8(v91, v92);
                    v62 = sub_221BCC278();
                    if (v62)
                    {
                      v93 = sub_221BCC2A8();
                      if (__OFSUB__(v89, v93))
                      {
                        goto LABEL_98;
                      }

                      v62 += v89 - v93;
                    }

                    v27 = __OFSUB__(v90, v89);
                    v64 = v90 - v89;
                    if (v27)
                    {
                      goto LABEL_95;
                    }

                    v65 = sub_221BCC298();
                    if (!v62)
                    {
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
LABEL_105:

                      __break(1u);
LABEL_106:
                      JUMPOUT(0);
                    }

LABEL_74:
                    if (v65 >= v64)
                    {
                      v87 = v64;
                    }

                    else
                    {
                      v87 = v65;
                    }

                    v88 = v62;
                  }

                  v94 = memcmp(v110, v88, v87);
                  v95 = OUTLINED_FUNCTION_17_6();
                  sub_2219EC040(v95, v96);
                  if (v94)
                  {
                    goto LABEL_83;
                  }
                }

                else
                {
LABEL_58:
                  v108 = v21;
                  OUTLINED_FUNCTION_16_7(v39, v38, v28, v37, v36, v35, v34, v33);
                  v109 = v20;
                  if (OUTLINED_FUNCTION_24_5(v72, v73, v74))
                  {
                    goto LABEL_83;
                  }
                }

                break;
            }
          }

          break;
        case 2uLL:
          v31 = *(v21 + 16);
          v30 = *(v21 + 24);
          v27 = __OFSUB__(v30, v31);
          v29 = v30 - v31;
          if (!v27)
          {
            goto LABEL_30;
          }

          goto LABEL_86;
        case 3uLL:
          if (v26)
          {
            goto LABEL_83;
          }

          break;
        default:
          v29 = BYTE6(v20);
          goto LABEL_30;
      }

LABEL_79:
      v97 = sub_221BCC8D8();
      sub_221A1C500();
      v98 = v107;
      sub_221BCD338();
      OUTLINED_FUNCTION_35_4();
      v100 = v99;
      sub_221A1C660(v98, v99);
      sub_221A1C660(v10, v100);
      if (v97)
      {
        v14 += v106;
        v13 += v106;
        v11 = (v11 - 1);
        if (v11)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A17B70()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v396[3] = *MEMORY[0x277D85DE8];
  v387 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_157();
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v385 = &v355 - v12;
  v391 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  OUTLINED_FUNCTION_0_2();
  v378 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_5();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v355 - v19;
  v390 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v379 = &v355 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v28 = OUTLINED_FUNCTION_8_1(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_5();
  v380 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v386 = &v355 - v32;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_5();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v382 = &v355 - v38;
  v389 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13_6();
  v392 = (v40 - v41);
  MEMORY[0x28223BE20](v42);
  v44 = &v355 - v43;
  v45 = *(v4 + 16);
  if (v45 != *(v2 + 16) || !v45 || v4 == v2)
  {
    goto LABEL_262;
  }

  v371 = v0;
  v363 = 0;
  OUTLINED_FUNCTION_12_4();
  v47 = v4 + v46;
  v48 = 0;
  v369 = v2 + v46;
  v50 = *(v49 + 72);
  v384 = v44;
  v377 = v36;
  v370 = v8;
  v374 = v45;
  v365 = v47;
  v364 = v50;
  v368 = v20;
  do
  {
    OUTLINED_FUNCTION_33_2();
    sub_221A1C608();
    if (v48 == v45)
    {
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
    }

    v372 = v48;
    v51 = v17;
    OUTLINED_FUNCTION_33_2();
    v45 = v392;
    sub_221A1C608();
    v52 = *(v388 + 48);
    v53 = v382;
    OUTLINED_FUNCTION_89_2();
    OUTLINED_FUNCTION_89_2();
    v54 = v390;
    OUTLINED_FUNCTION_49_4(v53, 1, v390);
    if (v58)
    {
      OUTLINED_FUNCTION_49_4(v53 + v52, 1, v54);
      v55 = v53;
      if (!v58)
      {
        goto LABEL_254;
      }

      sub_2219A1CC8(v53, &qword_27CFB85E8, &unk_221BD86E0);
      v17 = v51;
      v56 = v368;
      OUTLINED_FUNCTION_57_3();
    }

    else
    {
      v57 = v386;
      sub_221A1C558();
      OUTLINED_FUNCTION_49_4(v53 + v52, 1, v54);
      if (v58)
      {
        OUTLINED_FUNCTION_30_3();
        sub_221A1C660(v57, v344);
        v55 = v53;
LABEL_254:
        sub_2219A1CC8(v55, &qword_27CFB85F0, &unk_221BD3E50);
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_31_4();
      v59 = v379;
      sub_221A1C5B0();
      sub_221A79FC4();
      OUTLINED_FUNCTION_34_3();
      v61 = v60;
      sub_221A1C660(v59, v60);
      sub_221A1C660(v386, v61);
      v62 = OUTLINED_FUNCTION_18_7();
      sub_2219A1CC8(v62, v63, &unk_221BD86E0);
      v17 = v51;
      v56 = v368;
      OUTLINED_FUNCTION_57_3();
      if ((v52 & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    v64 = *v384;
    v65 = *v392;
    v66 = *(*v384 + 16);
    if (v66 != *(*v392 + 16))
    {
      goto LABEL_261;
    }

    if (v66 && v64 != v65)
    {
      v67 = (*(v378 + 80) + 32) & ~*(v378 + 80);
      v68 = v64 + v67;
      v69 = v65 + v67;
      v366 = *(v378 + 72);
      v381 = v24;
      while (1)
      {
        OUTLINED_FUNCTION_29_4();
        sub_221A1C608();
        v376 = v68;
        OUTLINED_FUNCTION_29_4();
        v375 = v69;
        sub_221A1C608();
        v70 = *(v388 + 48);
        OUTLINED_FUNCTION_89_2();
        OUTLINED_FUNCTION_89_2();
        v71 = v390;
        OUTLINED_FUNCTION_49_4(v36, 1, v390);
        if (v58)
        {
          OUTLINED_FUNCTION_145(v36 + v70);
          if (!v58)
          {
            goto LABEL_248;
          }

          sub_2219A1CC8(v36, &qword_27CFB85E8, &unk_221BD86E0);
          v72 = v391;
          goto LABEL_73;
        }

        v73 = v380;
        sub_221A1C558();
        OUTLINED_FUNCTION_145(v36 + v70);
        if (v74)
        {
          OUTLINED_FUNCTION_30_3();
          sub_221A1C660(v73, v336);
LABEL_248:
          v334 = &qword_27CFB85F0;
          v335 = &unk_221BD3E50;
          goto LABEL_258;
        }

        OUTLINED_FUNCTION_31_4();
        v75 = v381;
        sub_221A1C5B0();
        v76 = *(v71 + 20);
        v78 = *(v73 + v76);
        v77 = *(v73 + v76 + 8);
        v79 = (v75 + v76);
        v80 = *v79;
        v367 = v79[1];
        if (v77 >> 60 != 15)
        {
          break;
        }

        if (v367 >> 60 != 15)
        {
          goto LABEL_249;
        }

        v81 = OUTLINED_FUNCTION_39_4();
        v83 = v82;
        sub_2219EBFB4(v81, v84);
        sub_2219EBFB4(v83, v367);
LABEL_63:
        v114 = OUTLINED_FUNCTION_39_4();
        sub_2219EC02C(v114, v115);
        v116 = v381;
LABEL_64:
        OUTLINED_FUNCTION_84_2();
        if (v118)
        {
          if (!v117)
          {
            goto LABEL_257;
          }
        }

        else
        {
          OUTLINED_FUNCTION_77_3();
          if (v119)
          {
            goto LABEL_257;
          }
        }

        OUTLINED_FUNCTION_84_2();
        if (v121)
        {
          if (!v120)
          {
            goto LABEL_257;
          }
        }

        else
        {
          OUTLINED_FUNCTION_77_3();
          if (v122)
          {
            goto LABEL_257;
          }
        }

        v123 = sub_221BCC8D8();
        sub_221A1C500();
        sub_221BCD338();
        OUTLINED_FUNCTION_34_3();
        v124 = v73;
        v126 = v125;
        sub_221A1C660(v381, v125);
        sub_221A1C660(v124, v126);
        sub_2219A1CC8(v377, &qword_27CFB85E8, &unk_221BD86E0);
        v72 = v391;
        if ((v123 & 1) == 0)
        {
          goto LABEL_260;
        }

LABEL_73:
        if (*v56 != *v17)
        {
          goto LABEL_260;
        }

        v127 = *(v72 + 32);
        v128 = *(v17 + v127 + 8);
        if (*(v56 + v127 + 8))
        {
          if (!v128)
          {
            goto LABEL_260;
          }

          OUTLINED_FUNCTION_61_3(v56 + v127);
          v131 = v58 && v129 == v130;
          if (!v131 && (sub_221BCE1B8() & 1) == 0)
          {
            goto LABEL_260;
          }
        }

        else if (v128)
        {
          goto LABEL_260;
        }

        v132 = v56[1] == v17[1] && v56[2] == v17[2];
        if (!v132 && (sub_221BCE1B8() & 1) == 0)
        {
          goto LABEL_260;
        }

        v133 = *(v383 + 48);
        v134 = v385;
        sub_221A1C558();
        sub_221A1C558();
        v135 = v387;
        OUTLINED_FUNCTION_49_4(v134, 1, v387);
        if (!v58)
        {
          v136 = v371;
          sub_221A1C558();
          OUTLINED_FUNCTION_49_4(v134 + v133, 1, v135);
          if (v137)
          {
            OUTLINED_FUNCTION_6_9();
            sub_221A1C660(v136, v342);
LABEL_251:
            v334 = &qword_27CFB85E0;
            v335 = &unk_221BD3E40;
LABEL_252:
            v343 = v134;
LABEL_259:
            sub_2219A1CC8(v343, v334, v335);
LABEL_260:
            sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_DynamicOption);
            v353 = OUTLINED_FUNCTION_12();
            sub_221A1C660(v353, v354);
LABEL_261:
            sub_221A1C660(v392, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
            sub_221A1C660(v384, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
            goto LABEL_262;
          }

          v373 = v66;
          OUTLINED_FUNCTION_8_8();
          v138 = v370;
          sub_221A1C5B0();
          v139 = *v136;
          v140 = v136[1];
          v141 = v140 >> 62;
          v143 = *v138;
          v142 = v138[1];
          v144 = HIDWORD(v139);
          v145 = v142 >> 62;
          if (!v58)
          {
            v24 = v381;
            v147 = v377;
            v148 = 0;
            switch(v141)
            {
              case 0uLL:
                v148 = BYTE6(v140);
                goto LABEL_110;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v139), v139))
                {
                  goto LABEL_268;
                }

                v148 = HIDWORD(v139) - v139;
                break;
              case 2uLL:
                OUTLINED_FUNCTION_82_2();
                if (!v91)
                {
                  goto LABEL_110;
                }

                goto LABEL_269;
              case 3uLL:
                goto LABEL_110;
              default:
                goto LABEL_301;
            }

            goto LABEL_110;
          }

          v148 = 0;
          v24 = v381;
          v147 = v377;
          if (v139 || (v140 == 0xC000000000000000 ? (v146 = v142 >> 62 == 3) : (v146 = 0), !v146 || (v148 = 0, v143) || v142 != 0xC000000000000000))
          {
LABEL_110:
            switch(v145)
            {
              case 1uLL:
                LODWORD(v149) = HIDWORD(v143) - v143;
                if (__OFSUB__(HIDWORD(v143), v143))
                {
                  goto LABEL_264;
                }

                v149 = v149;
LABEL_119:
                if (v148 != v149)
                {
                  goto LABEL_246;
                }

                if (v148 < 1)
                {
                  goto LABEL_176;
                }

                break;
              case 2uLL:
                v151 = *(v143 + 16);
                v150 = *(v143 + 24);
                v91 = __OFSUB__(v150, v151);
                v149 = v150 - v151;
                if (!v91)
                {
                  goto LABEL_119;
                }

                goto LABEL_265;
              case 3uLL:
                if (v148)
                {
                  goto LABEL_246;
                }

                goto LABEL_176;
              default:
                v149 = BYTE6(v142);
                goto LABEL_119;
            }

            v152 = v143 >> 32;
            switch(v141)
            {
              case 1:
                if (v139 >> 32 < v139)
                {
                  goto LABEL_270;
                }

                v176 = v139;
                v177 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v177, v178);
                v179 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v179, v180);
                v181 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v181, v182);
                v168 = sub_221BCC278();
                if (!v168)
                {
                  goto LABEL_139;
                }

                v183 = sub_221BCC2A8();
                if (__OFSUB__(v176, v183))
                {
                  goto LABEL_275;
                }

                v168 += v176 - v183;
LABEL_139:
                v133 = v140 & 0x3FFFFFFFFFFFFFFFLL;
                sub_221BCC298();
                sub_221A1C1B4(v396, v168, v143, v142);
                OUTLINED_FUNCTION_70_2();
                v184 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v184, v185);
                v186 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v186, v187);
                v188 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v188, v189);
                v134 = v385;
                v24 = v381;
                v147 = v377;
                if ((v396[0] & 1) == 0)
                {
                  goto LABEL_246;
                }

                break;
              case 2:
                v160 = *(v139 + 16);
                v161 = *(v139 + 24);
                v162 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v162, v163);
                v164 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v164, v165);
                v166 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v166, v167);
                v168 = sub_221BCC278();
                if (!v168)
                {
                  goto LABEL_129;
                }

                v169 = sub_221BCC2A8();
                if (__OFSUB__(v160, v169))
                {
                  goto LABEL_274;
                }

                v168 += v160 - v169;
LABEL_129:
                if (!__OFSUB__(v161, v160))
                {
                  goto LABEL_139;
                }

                goto LABEL_271;
              case 3:
                memset(v396, 0, 14);
                if (!v145)
                {
                  goto LABEL_141;
                }

                if (v145 == 2)
                {
                  v170 = *(v143 + 16);
                  v171 = *(v143 + 24);
                  v172 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v172, v173);
                  v133 = OUTLINED_FUNCTION_88_3(v170, v171, v142 & 0x3FFFFFFFFFFFFFFFLL, v396);
                  OUTLINED_FUNCTION_70_2();
                  v174 = OUTLINED_FUNCTION_17_6();
                  sub_2219EC040(v174, v175);
LABEL_175:
                  v134 = v385;
                  if ((v133 & 1) == 0)
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
                  if (v152 < v143)
                  {
                    goto LABEL_281;
                  }

                  v224 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v224, v225);
                  v226 = sub_221BCC278();
                  if (v226)
                  {
                    v367 = v226;
                    v227 = sub_221BCC2A8();
                    if (__OFSUB__(v143, v227))
                    {
                      goto LABEL_282;
                    }

                    v367 += v143 - v227;
                  }

                  else
                  {
                    v367 = 0;
                  }

                  v303 = v152 - v143;
                  v304 = sub_221BCC298();
                  if (v304 >= v303)
                  {
                    v305 = v303;
                  }

                  else
                  {
                    v305 = v304;
                  }

                  v206 = &v397;
                  if (!v367)
                  {
                    __break(1u);
LABEL_294:
                    __break(1u);
LABEL_295:
                    __break(1u);
LABEL_296:
                    __break(1u);
LABEL_297:
                    __break(1u);
LABEL_298:
                    __break(1u);
LABEL_299:
                    __break(1u);
LABEL_300:

                    __break(1u);
LABEL_301:
                    JUMPOUT(0);
                  }

                  v134 = v385;
                  if (v396 == v367)
                  {
                    v308 = OUTLINED_FUNCTION_17_6();
                    sub_2219EC040(v308, v309);
                  }

                  else
                  {
                    v133 = memcmp(v396, v367, v305);
                    v306 = OUTLINED_FUNCTION_17_6();
                    sub_2219EC040(v306, v307);
                    if (v133)
                    {
LABEL_246:
                      OUTLINED_FUNCTION_7_8();
                      sub_221A1C660(v370, v333);
                      sub_221A1C660(v371, v133);
                      v334 = &unk_27CFBB660;
                      v335 = &qword_221BE4610;
                      goto LABEL_252;
                    }
                  }
                }

                break;
              default:
                LOWORD(v396[0]) = v139;
                BYTE2(v396[0]) = BYTE2(v139);
                BYTE3(v396[0]) = BYTE3(v139);
                BYTE4(v396[0]) = v144;
                BYTE5(v396[0]) = BYTE5(v139);
                BYTE6(v396[0]) = BYTE6(v139);
                HIBYTE(v396[0]) = HIBYTE(v139);
                LOWORD(v396[1]) = v140;
                BYTE2(v396[1]) = BYTE2(v140);
                BYTE3(v396[1]) = BYTE3(v140);
                BYTE4(v396[1]) = BYTE4(v140);
                BYTE5(v396[1]) = BYTE5(v140);
                if (!v145)
                {
LABEL_141:
                  v393 = v143;
                  LOWORD(v394) = v142;
                  BYTE2(v394) = BYTE2(v142);
                  HIBYTE(v394) = BYTE3(v142);
                  LOBYTE(v395) = BYTE4(v142);
                  HIBYTE(v395) = BYTE5(v142);
                  v190 = memcmp(v396, &v393, BYTE6(v142));
                  v134 = v385;
                  if (v190)
                  {
                    goto LABEL_246;
                  }

                  break;
                }

                if (v145 == 1)
                {
                  if (v152 < v143)
                  {
                    goto LABEL_280;
                  }

                  v153 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v153, v154);
                  v155 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v155, v156);
                  v157 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                  v158 = v143;
                  v159 = v143 >> 32;
                }

                else
                {
                  v152 = *(v143 + 16);
                  v228 = *(v143 + 24);
                  v229 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v229, v230);
                  v231 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v231, v232);
                  v157 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                  v158 = v152;
                  v159 = v228;
                }

                v133 = OUTLINED_FUNCTION_88_3(v158, v159, v157, v396);
                v233 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v233, v234);
                v235 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v235, v236);
                OUTLINED_FUNCTION_70_2();
                if (v152)
                {
                  goto LABEL_300;
                }

                goto LABEL_175;
            }
          }

LABEL_176:
          v237 = v134;
          v238 = sub_221BCC8D8();
          sub_221A1C500();
          v239 = v371;
          v240 = v370;
          sub_221BCD338();
          OUTLINED_FUNCTION_35_4();
          v242 = v241;
          sub_221A1C660(v240, v241);
          sub_221A1C660(v239, v242);
          sub_2219A1CC8(v237, &unk_27CFBB660, &qword_221BE4610);
          v45 = v374;
          v36 = v147;
          v66 = v373;
          if ((v238 & 1) == 0)
          {
            goto LABEL_260;
          }

          goto LABEL_177;
        }

        OUTLINED_FUNCTION_49_4(v134 + v133, 1, v135);
        if (!v58)
        {
          goto LABEL_251;
        }

        sub_2219A1CC8(v134, &unk_27CFBB660, &qword_221BE4610);
        v24 = v381;
        v36 = v377;
LABEL_177:
        sub_221BCC8D8();
        sub_221A1C500();
        v243 = sub_221BCD338();
        sub_221A1C660(v17, type metadata accessor for AppIntentsProtobuf_DynamicOption);
        sub_221A1C660(v56, type metadata accessor for AppIntentsProtobuf_DynamicOption);
        if ((v243 & 1) == 0)
        {
          goto LABEL_261;
        }

        v69 = v375 + v366;
        v68 = v376 + v366;
        if (!--v66)
        {
          goto LABEL_224;
        }
      }

      if (v367 >> 60 == 15)
      {
LABEL_249:
        v337 = OUTLINED_FUNCTION_39_4();
        sub_2219EBFB4(v337, v338);
        OUTLINED_FUNCTION_71_1();
        sub_2219EBFB4(v339, v75);
        sub_2219EC02C(v78, v77);
        v340 = OUTLINED_FUNCTION_69_0();
        sub_2219EC02C(v340, v341);
LABEL_256:
        v116 = v381;
LABEL_257:
        sub_221A1C660(v116, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        v351 = OUTLINED_FUNCTION_65_2();
        sub_221A1C660(v351, v352);
        v334 = &qword_27CFB85E8;
        v335 = &unk_221BD86E0;
LABEL_258:
        v343 = v36;
        goto LABEL_259;
      }

      v373 = v66;
      v85 = v77 >> 62;
      v86 = v367;
      v66 = v367 >> 62;
      if (v367 >> 60 == 14)
      {
        v88 = 0;
        if (!v78 && v77 == 0xC000000000000000 && v367 >> 62 == 3)
        {
          v88 = 0;
          if (!v80 && v367 == 0xC000000000000000)
          {
            sub_2219EBFB4(0, 0xC000000000000000);
            sub_2219EBFB4(0, 0xC000000000000000);
            sub_2219EC02C(0, 0xC000000000000000);
LABEL_62:
            OUTLINED_FUNCTION_72_1();
            goto LABEL_63;
          }
        }
      }

      else
      {
        v88 = 0;
        switch(v85)
        {
          case 0uLL:
            v88 = BYTE6(v77);
            break;
          case 1uLL:
            LODWORD(v88) = HIDWORD(v78) - v78;
            if (__OFSUB__(HIDWORD(v78), v78))
            {
              goto LABEL_273;
            }

            v88 = v88;
            break;
          case 2uLL:
            v90 = *(v78 + 16);
            v89 = *(v78 + 24);
            v91 = __OFSUB__(v89, v90);
            v88 = v89 - v90;
            if (!v91)
            {
              break;
            }

            goto LABEL_272;
          case 3uLL:
            break;
          default:
            goto LABEL_301;
        }
      }

      v36 = HIDWORD(v80);
      v92 = BYTE6(v367);
      switch(v66)
      {
        case 1uLL:
          LODWORD(v93) = HIDWORD(v80) - v80;
          if (__OFSUB__(HIDWORD(v80), v80))
          {
            goto LABEL_267;
          }

          v93 = v93;
LABEL_52:
          if (v88 != v93)
          {
LABEL_255:
            v345 = OUTLINED_FUNCTION_39_4();
            sub_2219EBFB4(v345, v346);
            v347 = OUTLINED_FUNCTION_27_6();
            sub_2219EBFB4(v347, v348);
            v349 = OUTLINED_FUNCTION_27_6();
            sub_2219EC02C(v349, v350);
            sub_2219EC02C(v78, v77);
            OUTLINED_FUNCTION_37_0();
            goto LABEL_256;
          }

          if (v88 >= 1)
          {
            v96 = v80 >> 16;
            v97 = v80 >> 24;
            v98 = v80 >> 40;
            v99 = HIWORD(v80);
            v100 = HIBYTE(v80);
            v101 = v367 >> 8;
            v102 = v367 >> 16;
            v103 = v367 >> 24;
            v104 = v80 >> 32;
            v362 = v77;
            v361 = v78;
            switch(v85)
            {
              case 1:
                v357 = HIDWORD(v80);
                v358 = v80 >> 8;
                OUTLINED_FUNCTION_20_5(v103, v102, v101, v100, v99, v98, v97, v96);
                if (v78 >> 32 < v78)
                {
                  goto LABEL_276;
                }

                v36 = v78;
                OUTLINED_FUNCTION_36_4();
                v207 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v207, v208);
                v209 = OUTLINED_FUNCTION_65_2();
                sub_2219EBFB4(v209, v210);
                v211 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v211, v212);
                v360 = v78;
                v213 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v213, v214);
                v200 = sub_221BCC278();
                v356 = v92;
                if (!v200)
                {
                  goto LABEL_164;
                }

                v215 = sub_221BCC2A8();
                if (__OFSUB__(v78, v215))
                {
                  goto LABEL_279;
                }

                v200 += v78 - v215;
LABEL_164:
                OUTLINED_FUNCTION_71_1();
                v45 = (v78 >> 32) - v78;
                sub_221BCC298();
                OUTLINED_FUNCTION_64_2();
                if (v66 == 2)
                {
                  v282 = *(v360 + 16);
                  v283 = *(v360 + 24);
LABEL_191:
                  OUTLINED_FUNCTION_88_3(v282, v283, v92 & 0x3FFFFFFFFFFFFFFFLL, v200);
                  OUTLINED_FUNCTION_70_2();
                  if (v200)
                  {
                    goto LABEL_300;
                  }

                  v217 = v284;
                  v285 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v285, v286);
                  v287 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v287, v288);
                  v289 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v289, v290);
                  v73 = v380;
                  OUTLINED_FUNCTION_57_3();
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_72_1();
                }

                else if (v66 == 1)
                {
                  OUTLINED_FUNCTION_66_0();
                  v45 = v374;
                  v36 = v377;
                  v66 = v373;
                  if (v203 != v91)
                  {
                    goto LABEL_287;
                  }

LABEL_167:
                  OUTLINED_FUNCTION_88_3(v359, v202, v92 & 0x3FFFFFFFFFFFFFFFLL, v200);
                  OUTLINED_FUNCTION_70_2();
                  if (v200)
                  {
                    goto LABEL_300;
                  }

                  v217 = v216;
                  v218 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v218, v219);
                  v220 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v220, v221);
                  v222 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v222, v223);
                  v73 = v380;
                }

                else
                {
                  OUTLINED_FUNCTION_26_5();
                  BYTE4(v396[0]) = v357;
                  OUTLINED_FUNCTION_19_5();
                  if (!v200)
                  {
                    goto LABEL_297;
                  }

                  v292 = v200;
                  v291 = v356;
LABEL_197:
                  v293 = memcmp(v292, v396, v291);
                  v294 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v294, v295);
                  v296 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v296, v297);
                  v298 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v298, v299);
                  v217 = v293 == 0;
                  v73 = v380;
                  OUTLINED_FUNCTION_37_0();
                }

                v300 = OUTLINED_FUNCTION_69_0();
                sub_2219EC040(v300, v301);
                v302 = v361;
                v116 = v381;
                goto LABEL_222;
              case 2:
                v358 = v80 >> 8;
                OUTLINED_FUNCTION_20_5(v103, v102, v101, v100, v99, v98, v97, v96);
                v191 = *(v78 + 16);
                v357 = *(v78 + 24);
                OUTLINED_FUNCTION_36_4();
                v192 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v192, v193);
                v194 = OUTLINED_FUNCTION_65_2();
                sub_2219EBFB4(v194, v195);
                v196 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v196, v197);
                v360 = v78;
                v198 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v198, v199);
                v200 = sub_221BCC278();
                if (!v200)
                {
                  goto LABEL_146;
                }

                v201 = sub_221BCC2A8();
                if (__OFSUB__(v191, v201))
                {
                  goto LABEL_278;
                }

                v200 += v191 - v201;
LABEL_146:
                v91 = __OFSUB__(v357, v191);
                v45 = v357 - v191;
                if (v91)
                {
                  goto LABEL_277;
                }

                sub_221BCC298();
                OUTLINED_FUNCTION_64_2();
                if (v66 == 2)
                {
                  OUTLINED_FUNCTION_71_1();
                  goto LABEL_191;
                }

                v92 = v367;
                if (v66 == 1)
                {
                  OUTLINED_FUNCTION_66_0();
                  v45 = v374;
                  v36 = v377;
                  v66 = v373;
                  if (v203 != v91)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_167;
                }

                OUTLINED_FUNCTION_26_5();
                BYTE4(v396[0]) = v36;
                OUTLINED_FUNCTION_19_5();
                if (!v200)
                {
                  goto LABEL_296;
                }

                v292 = v200;
                goto LABEL_197;
              case 3:
                memset(v396, 0, 14);
                if (v66 == 2)
                {
                  v244 = *(v80 + 16);
                  v36 = *(v80 + 24);
                  OUTLINED_FUNCTION_36_4();
                  v245 = OUTLINED_FUNCTION_65_2();
                  sub_2219EBFB4(v245, v246);
                  v247 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v247, v248);
                  v249 = sub_221BCC278();
                  if (v249)
                  {
                    v250 = sub_221BCC2A8();
                    v116 = v381;
                    if (__OFSUB__(v244, v250))
                    {
                      goto LABEL_289;
                    }

                    v249 += v244 - v250;
                  }

                  else
                  {
                    v116 = v381;
                  }

                  v91 = __OFSUB__(v36, v244);
                  v45 = v36 - v244;
                  if (v91)
                  {
                    goto LABEL_286;
                  }

                  sub_221BCC298();
                  OUTLINED_FUNCTION_37_0();
                  if (!v249)
                  {
                    goto LABEL_295;
                  }

                  goto LABEL_215;
                }

                if (v66 != 1)
                {
                  OUTLINED_FUNCTION_72_1();
                  LOBYTE(v393) = v258;
                  BYTE1(v393) = v259;
                  BYTE2(v393) = v260;
                  BYTE3(v393) = v261;
                  BYTE4(v393) = v36;
                  BYTE5(v393) = v262;
                  BYTE6(v393) = v263;
                  HIBYTE(v393) = v264;
                  LOBYTE(v394) = v86;
                  BYTE1(v394) = v265;
                  BYTE2(v394) = v266;
                  HIBYTE(v394) = v267;
                  LOBYTE(v395) = v268;
                  HIBYTE(v395) = v269;
                  v270 = OUTLINED_FUNCTION_39_4();
                  sub_2219EBFB4(v270, v271);
                  v272 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v272, v273);
                  v255 = memcmp(v396, &v393, BYTE6(v86));
                  v274 = OUTLINED_FUNCTION_27_6();
                  sub_2219EC02C(v274, v275);
                  OUTLINED_FUNCTION_37_0();
                  goto LABEL_185;
                }

                v359 = v80;
                v66 = v373;
                if (v104 < v80)
                {
                  goto LABEL_284;
                }

                v105 = OUTLINED_FUNCTION_45_3();
                OUTLINED_FUNCTION_37_0();
                if (v204)
                {
                  v205 = sub_221BCC2A8();
                  if (__OFSUB__(v359, v205))
                  {
                    goto LABEL_291;
                  }

                  v105 += v359 - v205;
                }

                OUTLINED_FUNCTION_71_1();
                sub_221BCC298();
                if (!v105)
                {
                  goto LABEL_294;
                }

                goto LABEL_220;
              default:
                v396[0] = v78;
                LOWORD(v396[1]) = v77;
                BYTE2(v396[1]) = BYTE2(v77);
                BYTE3(v396[1]) = BYTE3(v77);
                BYTE4(v396[1]) = BYTE4(v77);
                BYTE5(v396[1]) = BYTE5(v77);
                if (v66)
                {
                  if (v66 == 1)
                  {
                    v359 = v80;
                    if (v104 < v80)
                    {
                      goto LABEL_283;
                    }

                    v105 = OUTLINED_FUNCTION_45_3();
                    OUTLINED_FUNCTION_37_0();
                    OUTLINED_FUNCTION_72_1();
                    if (v106)
                    {
                      v107 = sub_221BCC2A8();
                      if (__OFSUB__(v359, v107))
                      {
                        goto LABEL_292;
                      }

                      v105 += v359 - v107;
                    }

                    OUTLINED_FUNCTION_71_1();
                    sub_221BCC298();
                    if (!v105)
                    {
                      goto LABEL_299;
                    }

LABEL_220:
                    OUTLINED_FUNCTION_83_3();
                    v255 = memcmp(v396, v105, v316);
                    v317 = v360;
                    sub_2219EC02C(v360, v92);
                    sub_2219EC040(v317, v92);
                    v73 = v380;
                    v116 = v381;
                  }

                  else
                  {
                    v276 = *(v80 + 16);
                    v36 = *(v80 + 24);
                    OUTLINED_FUNCTION_36_4();
                    v277 = OUTLINED_FUNCTION_65_2();
                    sub_2219EBFB4(v277, v278);
                    v279 = OUTLINED_FUNCTION_27_6();
                    sub_2219EBFB4(v279, v280);
                    v249 = sub_221BCC278();
                    if (v249)
                    {
                      v281 = sub_221BCC2A8();
                      v116 = v381;
                      if (__OFSUB__(v276, v281))
                      {
                        goto LABEL_290;
                      }

                      v249 += v276 - v281;
                    }

                    else
                    {
                      v116 = v381;
                    }

                    v91 = __OFSUB__(v36, v276);
                    v45 = v36 - v276;
                    if (v91)
                    {
                      goto LABEL_285;
                    }

                    sub_221BCC298();
                    OUTLINED_FUNCTION_37_0();
                    if (!v249)
                    {
                      goto LABEL_298;
                    }

LABEL_215:
                    if (v310 >= v45)
                    {
                      v311 = v45;
                    }

                    else
                    {
                      v311 = v310;
                    }

                    v255 = memcmp(v396, v249, v311);
                    v312 = OUTLINED_FUNCTION_86();
                    sub_2219EC02C(v312, v313);
                    v314 = OUTLINED_FUNCTION_86();
                    sub_2219EC040(v314, v315);
                    v73 = v380;
                    OUTLINED_FUNCTION_57_3();
                    OUTLINED_FUNCTION_72_1();
                  }
                }

                else
                {
                  v393 = v80;
                  v394 = v367;
                  v395 = WORD2(v367);
                  v251 = OUTLINED_FUNCTION_39_4();
                  sub_2219EBFB4(v251, v252);
                  v253 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v253, v254);
                  v255 = memcmp(v396, &v393, BYTE6(v86));
                  v256 = OUTLINED_FUNCTION_27_6();
                  sub_2219EC02C(v256, v257);
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_72_1();
LABEL_185:
                  v116 = v381;
                }

                v217 = v255 == 0;
                v302 = v361;
LABEL_222:
                sub_2219EC02C(v302, v362);
                if (!v217)
                {
                  goto LABEL_257;
                }

                goto LABEL_64;
            }
          }

LABEL_61:
          v108 = OUTLINED_FUNCTION_39_4();
          sub_2219EBFB4(v108, v109);
          v110 = OUTLINED_FUNCTION_86();
          sub_2219EBFB4(v110, v111);
          v112 = OUTLINED_FUNCTION_86();
          sub_2219EC02C(v112, v113);
          OUTLINED_FUNCTION_37_0();
          break;
        case 2uLL:
          v95 = *(v80 + 16);
          v94 = *(v80 + 24);
          v91 = __OFSUB__(v94, v95);
          v93 = v94 - v95;
          if (!v91)
          {
            goto LABEL_52;
          }

          goto LABEL_266;
        case 3uLL:
          if (v88)
          {
            goto LABEL_255;
          }

          goto LABEL_61;
        default:
          v93 = BYTE6(v367);
          goto LABEL_52;
      }

      goto LABEL_62;
    }

LABEL_224:
    OUTLINED_FUNCTION_54_3();
    if (v320)
    {
      if (!v318)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_61_3(v319);
      v323 = v58 && v321 == v322;
      if (!v323 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    else if (v318)
    {
      goto LABEL_261;
    }

    OUTLINED_FUNCTION_54_3();
    if (v326)
    {
      if (!v324)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_61_3(v325);
      v329 = v58 && v327 == v328;
      if (!v329 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    else if (v324)
    {
      goto LABEL_261;
    }

    sub_221BCC8D8();
    sub_221A1C500();
    v330 = v384;
    v331 = v392;
    v332 = sub_221BCD338();
    sub_221A1C660(v331, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
    sub_221A1C660(v330, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
    if ((v332 & 1) == 0)
    {
      break;
    }

    v48 = v372 + 1;
  }

  while (v372 + 1 != v45);
LABEL_262:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A19610(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_75_2();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_221A19668()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for AppIntentsProtobuf_SystemProtocol(v5);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_6();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8();
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      v8 = *v2 == *v1 && v2[1] == v1[1];
      if (!v8 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      sub_221BCC8D8();
      v9 = sub_221A1C500();
      v10 = OUTLINED_FUNCTION_38_1(v9);
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
      OUTLINED_FUNCTION_86_1();
      if (v10)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
    v11 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v11, v12);
  }

LABEL_17:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A19800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 64)
    {
      sub_221A1C73C(v3, v19);
      sub_221A1C73C(i, v15);
      v5 = v19[0] == v15[0] && v19[1] == v15[1];
      if (!v5 && (sub_221BCE1B8() & 1) == 0 || v19[2] != v15[2])
      {
        break;
      }

      __swift_project_boxed_opaque_existential_0(v20, v20[3]);
      v6 = OUTLINED_FUNCTION_69_0();
      v8 = v7(v6);
      v9 = v17;
      v10 = v18;
      __swift_project_boxed_opaque_existential_0(v16, v17);
      v11 = (*(v10 + 16))(v9, v10);
      v12 = v11;
      if (v8)
      {
        if (!v11)
        {
          v12 = v8;
LABEL_20:

          break;
        }

        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        OUTLINED_FUNCTION_69_0();
        v13 = sub_221BCDC58();

        sub_221A1C798(v15);
        sub_221A1C798(v19);
        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_20;
        }

        sub_221A1C798(v15);
        sub_221A1C798(v19);
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_221A1C798(v15);
    sub_221A1C798(v19);
  }

  return 0;
}

uint64_t sub_221A199D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); *(i - 24) == *(v3 - 24); i += 32)
    {
      v5 = *(i - 2);
      v6 = *(v3 - 2);
      v7 = *v3;
      if (*i)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v8 = v5 == v6 && *(i - 1) == *(v3 - 1);
        if (!v8 && (sub_221BCE1B8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v6)
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_221A19AAC(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    if (a2 >> 62)
    {
      result = sub_221BCDDA8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v23 = 0;
      return v23 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v23 = 1;
      return v23 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_2219A1D20(0, a3, a4);
    v26 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = MEMORY[0x223DA3BF0](v17 - 4, v26);
      }

      else
      {
        if (v18 >= *(v25 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v26 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = OUTLINED_FUNCTION_63_3();
        v21 = MEMORY[0x223DA3BF0](v20);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v7 + 8 * v17);
      }

      v22 = v21;
      v23 = sub_221BCDC58();

      if (v23)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_221A19C78()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
    goto LABEL_56;
  }

  v3 = (v1 + 48);
  v4 = (v0 + 48);
  while (2)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v8 = *v4;
    v4 += 24;
    v7 = v8;
    v9 = *(v3 - 2);
    v10 = *(v3 - 1);
    v11 = *v3;
    switch(v8 >> 5)
    {
      case 1u:
        if ((v11 & 0xE0) != 0x20)
        {
          goto LABEL_53;
        }

        if (v6 != v9 || v5 != v10)
        {
          v47 = sub_221BCE1B8();
          v61 = OUTLINED_FUNCTION_27();
          v63 = OUTLINED_FUNCTION_0_27(v61, v62);
          sub_221A1C70C(v63, v64, v65);
          v66 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v66, v67, v68);
          v57 = OUTLINED_FUNCTION_4_11();
          goto LABEL_20;
        }

        v93 = OUTLINED_FUNCTION_0_27(v6, v5);
        sub_221A1C70C(v93, v94, v95);
        v96 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v96, v97, v98);
        v70 = OUTLINED_FUNCTION_12();
        v73 = v11;
        goto LABEL_50;
      case 2u:
        if ((v11 & 0xE0) != 0x40)
        {
          goto LABEL_53;
        }

        if (v6 == v9 && v5 == v10)
        {
          v74 = OUTLINED_FUNCTION_0_27(v6, v5);
          sub_221A1C70C(v74, v75, v76);
          v77 = OUTLINED_FUNCTION_12();
          v79 = OUTLINED_FUNCTION_0_27(v77, v78);
          sub_221A1C70C(v79, v80, v81);
          v82 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v82, v83, v84);
          v85 = OUTLINED_FUNCTION_12();
          sub_2219A1B7C(v85, v86, v11);
        }

        else
        {
          v19 = sub_221BCE1B8();
          v20 = OUTLINED_FUNCTION_27();
          v22 = OUTLINED_FUNCTION_0_27(v20, v21);
          sub_221A1C70C(v22, v23, v24);
          v25 = OUTLINED_FUNCTION_27();
          v27 = OUTLINED_FUNCTION_0_27(v25, v26);
          sub_221A1C70C(v27, v28, v29);
          v30 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v30, v31, v32);
          v33 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v33, v34, v35);
          if ((v19 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        v87 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v87, v88, v89);
        v90 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v90, v91, v92);
        if (((v11 ^ v7) & 0x1F) != 0)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
      case 3u:
        if ((v11 & 0xE0) == 0x60)
        {
          goto LABEL_19;
        }

        goto LABEL_53;
      case 4u:
        if ((v11 & 0xE0) == 0x80)
        {
LABEL_19:
          v36 = OUTLINED_FUNCTION_27();
          v38 = OUTLINED_FUNCTION_0_27(v36, v37);
          sub_221A1C70C(v38, v39, v40);
          v41 = OUTLINED_FUNCTION_27();
          v43 = OUTLINED_FUNCTION_0_27(v41, v42);
          sub_221A1C70C(v43, v44, v45);
          sub_221A19C78();
          v47 = v46;
          v48 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v48, v49, v50);
          v51 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v51, v52, v53);
          v54 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v54, v55, v56);
          v57 = OUTLINED_FUNCTION_1_26();
LABEL_20:
          sub_2219A1B7C(v57, v58, v59);
          if ((v47 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_51:
          v3 += 24;
          if (!--v2)
          {
            goto LABEL_56;
          }

          continue;
        }

LABEL_53:
        v99 = OUTLINED_FUNCTION_1_26();
        sub_221A1C70C(v99, v100, v101);

LABEL_54:
        v102 = OUTLINED_FUNCTION_27();
        v104 = OUTLINED_FUNCTION_0_27(v102, v103);
        sub_2219A1B7C(v104, v105, v106);
LABEL_55:
        v107 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v107, v108, v109);
        v110 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v110, v111, v112);
LABEL_56:
        OUTLINED_FUNCTION_22();
        return;
      case 5u:
        if (v5 | v6 || v7 != 160)
        {
          if ((v11 & 0xE0) != 0xA0)
          {
            goto LABEL_54;
          }

          v71 = v9 == 1 && v10 == 0;
          if (!v71 || v11 != 160)
          {
            goto LABEL_54;
          }

          sub_2219A1B7C(1, 0, 0xA0u);
          v70 = 1;
        }

        else
        {
          v69 = (v11 & 0xE0) == 0xA0 && (v10 | v9) == 0;
          if (!v69 || v11 != 160)
          {
            goto LABEL_54;
          }

          sub_2219A1B7C(0, 0, 0xA0u);
          v70 = 0;
        }

        v72 = 0;
        v73 = -96;
LABEL_50:
        sub_2219A1B7C(v70, v72, v73);
        goto LABEL_51;
      default:
        if (v11 >= 0x20)
        {
          goto LABEL_54;
        }

        v12 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v12, v13, v14);
        v15 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v15, v16, v17);
        if (v9 != v6)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
    }
  }
}

void sub_221A19F98()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 48);
    v4 = (v1 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v6)
        {
          break;
        }

        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);

        v8 = v5;

        v9 = v6;
        v10 = v8;
        v11 = sub_221BCDC58();

        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      else if (v6)
      {
        break;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_22();
}

void sub_221A1A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0) - 8;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13_6();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = *(v29 + 16);
  if (v35 == *(v27 + 16) && v35 && v29 != v27)
  {
    OUTLINED_FUNCTION_12_4();
    v37 = v29 + v36;
    v38 = v27 + v36;
    v40 = *(v39 + 72);
    do
    {
      sub_221A1C608();
      sub_221A1C608();
      v41 = OUTLINED_FUNCTION_56_3();
      v42 = v25(v41);
      v43 = OUTLINED_FUNCTION_55_3();
      sub_221A1C660(v43, v44);
      sub_221A1C660(v34, v23);
      if ((v42 & 1) == 0)
      {
        break;
      }

      v38 += v40;
      v37 += v40;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_22();
}

void sub_221A1A2AC()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(v5);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_6();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8();
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      if (*v2 != *v1)
      {
        break;
      }

      v8 = v2[1] == *(v1 + 8) && v2[2] == *(v1 + 16);
      if (!v8 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v9 = v2[3];
      v10 = *(v1 + 24);
      if (*(v1 + 32) == 1)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            if (v9 != 1)
            {
              break;
            }
          }

          else if (v9 != 2)
          {
            break;
          }
        }

        else if (v9)
        {
          break;
        }
      }

      else if (v9 != v10)
      {
        break;
      }

      sub_221BCC8D8();
      v11 = sub_221A1C500();
      v12 = OUTLINED_FUNCTION_38_1(v11);
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      OUTLINED_FUNCTION_86_1();
      if (v12)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
    v13 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v13, v14);
  }

LABEL_28:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

AppIntentsServices::AppNotificationEvent::EventType_optional __swiftcall AppNotificationEvent.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221BCE0B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221A1A52C(uint64_t a1, uint64_t a2)
{
  v2 = sub_221BCD388();
  v4 = v3;
  v5 = sub_221BCD388();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_74_2(v5);
  }

  return v8 & 1;
}

uint64_t sub_221A1A59C()
{
  v0 = Entitlement.Constants.rawValue.getter();
  v2 = v1;
  v3 = Entitlement.Constants.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_74_2(v3);
  }

  return v6 & 1;
}

uint64_t sub_221A1A68C(char a1, char a2)
{
  if (*&aCreated_1[8 * a1] == *&aCreated_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_221BCE1B8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_221A1A6F4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54797469746E655FLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x7954746E6576655FLL;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000221BEBF00;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else
  {
    v5 = 0x54797469746E655FLL;
    v6 = 0xEB00000000657079;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x7954746E6576655FLL;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000221BEBF00;
    }

    else
    {
      v2 = 0xEA00000000006570;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_221BCE1B8();
  }

  return v8 & 1;
}

uint64_t sub_221A1A7FC(unsigned __int8 a1, char a2)
{
  v2 = 0x73646F50726961;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73646F50726961;
  switch(v4)
  {
    case 1:
      v5 = 0x79616C50726163;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6565724673657965;
      break;
    case 3:
      v5 = 0x646F50656D6F68;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6578544;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69736976;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x79616C50726163;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6565724673657965;
      break;
    case 3:
      v2 = 0x646F50656D6F68;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6578544;
      break;
    case 7:
      v6 = 0xE200000000000000;
      v2 = 30324;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69736976;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_221BCE1B8();
  }

  return v8 & 1;
}

uint64_t sub_221A1AA40(uint64_t a1)
{
  Entitlement.Constants.rawValue.getter();
  sub_221BCD448();
}

uint64_t sub_221A1AB78(uint64_t a1, char a2)
{
  sub_221BCD448();
}

uint64_t sub_221A1AD70(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_52_3();
  }

  sub_221BCD448();
}

uint64_t sub_221A1ADE4(uint64_t a1, char a2)
{
  sub_221BCD448();
}

uint64_t sub_221A1AE38@<X0>(uint64_t *a1@<X8>)
{
  result = AppNotificationEvent.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

unint64_t AppNotificationEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_221BCDE68();

  v10 = 0xD000000000000015;
  v11 = 0x8000000221BED630;
  v7[0] = v1;
  v7[1] = v2;
  v8 = v3;
  v9 = v4;
  v5 = sub_221A1B008(v7);
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_221A1B008(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221BCF7F0;
  *(v5 + 32) = *&aCreated_1[8 * v3];
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  v6 = OUTLINED_FUNCTION_73_3();
  v8 = v7;

  if (v4)
  {
    v9 = sub_221BCD328();
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221BCF7F0;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = v11;
    OUTLINED_FUNCTION_73_3();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t static AppNotificationEvent.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (sub_221BCE1B8()) && (sub_221A1A68C(v2, v4))
  {
    if (v3)
    {
      if (v5)
      {
        v7 = OUTLINED_FUNCTION_0_0();
        if (sub_221A15E30(v7, v8))
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void AppNotificationEvent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_221BCD448();
  sub_221BCD448();

  if (v2)
  {
    sub_221BCE328();

    sub_2219A1098();
  }

  else
  {
    sub_221BCE328();
  }
}

uint64_t AppNotificationEvent.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCD448();

  sub_221BCE328();
  if (v1)
  {
    sub_2219A1098();
  }

  return sub_221BCE358();
}

uint64_t sub_221A1B32C(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = v1[3];
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_221BCE308();
  AppNotificationEvent.hash(into:)(v6);
  return sub_221BCE358();
}

double sub_221A1B38C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 eventType];
  if (v4 >= 3)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_27CFDEE58);
    v13 = a1;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      [v13 eventType];
      type metadata accessor for LNAppNotificationEventType(0);
      v19 = sub_221BCD3D8();
      v21 = sub_2219A6360(v19, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v13;
      v22 = v13;
      _os_log_impl(&dword_221989000, v14, v15, "Unknown EventType %s in %@", v16, 0x16u);
      sub_2219A1CC8(v17, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v23);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v24);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v25);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = v4;
    v6 = [a1 entityType];
    v7 = sub_221BCD388();
    v9 = v8;

    v10 = sub_221A1C3D8(a1);
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v5;
    *(a2 + 24) = v10;
  }

  return result;
}

uint64_t sub_221A1B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v43 = a2;
  v42 = a1;
  v6 = sub_221A1CAA4(a1, a2, a3);
  v13 = OUTLINED_FUNCTION_76_0(v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v11, v12, 47);
  v14 = v13[2];
  if (v14 >= 2)
  {

    v15 = sub_221BCE0B8();

    if (v15 <= 2)
    {
      if (v14 == 2)
      {
        v23 = 0;
      }

      else
      {
        if (v13[2] < 3uLL)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v39 = v13[9];
        v42 = v13[8];
        v43 = v39;
        result = OUTLINED_FUNCTION_76_0(result, MEMORY[0x277D837D0], v17, v18, v19, v20, v21, v22, 44);
        v23 = result;
      }

      if (v13[2] >= 2uLL)
      {
        v41 = v13[6];
        v40 = v13[7];

        *a5 = v41;
        *(a5 + 8) = v40;
        *(a5 + 24) = v23;
        *(a5 + 16) = v15;
        return result;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v24 = sub_221BCCD88();
  __swift_project_value_buffer(v24, qword_27CFDEE58);

  v25 = sub_221BCCD68();
  v26 = sub_221BCDA78();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = OUTLINED_FUNCTION_56_3();
    *(v27 + 4) = sub_2219A6360(v28, v29, v30);
    *(v27 + 12) = 2080;
    v31 = MEMORY[0x223DA33D0](v13, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_2219A6360(v31, v33, &v42);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_221989000, v25, v26, "Failed to extract eventType - input %s split into %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {
  }

  sub_2219ACB94(v35, v36, v37);
  swift_allocError();
  *v38 = 0xD00000000000001BLL;
  *(v38 + 8) = 0x8000000221BED650;
  *(v38 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_221A1B8C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22198D22C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_221A1B8F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22198D278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_221A1B928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22198D22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221A1B970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221A1B88C();
  *a1 = result;
  return result;
}

uint64_t sub_221A1B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221A1C7EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221A1B9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221A1C7EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_221A1BA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_27();
  result = sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    OUTLINED_FUNCTION_27();
    v5 = sub_221BCE1D8();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    sub_221A1B5A4(v5, v7, v8, a2);
  }

  return result;
}

uint64_t sub_221A1BADC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8608, &qword_221BD3E60);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_221A1C7EC(v5, v6, v7);
  sub_221BCE3D8();
  sub_221BCE138();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C840();
    v8 = sub_221BCE158();
    sub_221A1C8E8(v8, v9, v10);
    sub_221BCE158();
  }

  v11 = OUTLINED_FUNCTION_55_3();
  return v12(v11);
}

uint64_t sub_221A1BCB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8638, &unk_221BD3E78);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_157();
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221A1C7EC(v6, v7, v8);
  result = sub_221BCE3B8();
  if (!v2)
  {
    v10 = sub_221BCE0E8();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C93C();
    v13 = sub_221BCE108();
    sub_221A1CA50(v13, v14, v15);
    sub_221BCE108();
    v16 = OUTLINED_FUNCTION_40_2();
    result = v17(v16);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 24) = v18;
    *(a2 + 16) = v19;
  }

  return result;
}

void AppNotificationEvent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_221BCDED8();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  sub_221A1BA10(a1, &v19);
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    goto LABEL_6;
  }

  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if (swift_dynamicCast())
  {
    if ((*(v7 + 88))(v11, v5) == *MEMORY[0x277D84160])
    {

      (*(v7 + 96))(v11, v5);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85C0, &qword_221BD3BD8) + 48);
      sub_221A1BCB8(a1, &v19);
      __swift_destroy_boxed_opaque_existential_0(a1);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
      sub_221BCDEC8();
      OUTLINED_FUNCTION_2_1();
      (*(v18 + 8))(v11 + v13);

LABEL_6:
      *a2 = v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t AppNotificationEvent.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v3;
  v8 = v4;
  return sub_221A1BADC(v6, a1);
}

void sub_221A1C1B4(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_221A1C320(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_221A1C320(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_221BCC278();
  v8 = result;
  if (result)
  {
    result = sub_221BCC2A8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_221BCC298();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_221A1C3D8(void *a1)
{
  v1 = [a1 instanceIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD668();

  return v3;
}

unint64_t sub_221A1C434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB85C8;
  if (!qword_27CFB85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85C8);
  }

  return result;
}

unint64_t sub_221A1C48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB85D0;
  if (!qword_27CFB85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85D0);
  }

  return result;
}

unint64_t sub_221A1C500()
{
  result = qword_27CFB85D8;
  if (!qword_27CFB85D8)
  {
    sub_221BCC8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85D8);
  }

  return result;
}

uint64_t sub_221A1C558()
{
  OUTLINED_FUNCTION_69_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_1();
  v3 = OUTLINED_FUNCTION_0_0();
  v4(v3);
  return v0;
}

uint64_t sub_221A1C5B0()
{
  OUTLINED_FUNCTION_69_1();
  v1(0);
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  return v0;
}

uint64_t sub_221A1C608()
{
  OUTLINED_FUNCTION_69_1();
  v1(0);
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  return v0;
}

uint64_t sub_221A1C660(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_221A1C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB85F8;
  if (!qword_27CFB85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85F8);
  }

  return result;
}

uint64_t sub_221A1C70C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if ((v3 - 1) < 2 || v3 == 4 || v3 == 3)
  {
  }

  return v4;
}

unint64_t sub_221A1C7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8610;
  if (!qword_27CFB8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8610);
  }

  return result;
}

unint64_t sub_221A1C840()
{
  result = qword_27CFB8620;
  if (!qword_27CFB8620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C9E4(&qword_27CFB8628, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8620);
  }

  return result;
}

unint64_t sub_221A1C8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8630;
  if (!qword_27CFB8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8630);
  }

  return result;
}

unint64_t sub_221A1C93C()
{
  result = qword_27CFB8640;
  if (!qword_27CFB8640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C9E4(&qword_27CFB8648, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8640);
  }

  return result;
}

uint64_t sub_221A1C9E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7520, &qword_221BD0770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221A1CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8650;
  if (!qword_27CFB8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8650);
  }

  return result;
}

unint64_t sub_221A1CAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8658;
  if (!qword_27CFB8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8658);
  }

  return result;
}

uint64_t sub_221A1CAF8(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_221A1CB80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221A1CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8660;
  if (!qword_27CFB8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8660);
  }

  return result;
}

unint64_t sub_221A1CCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8668;
  if (!qword_27CFB8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8668);
  }

  return result;
}

unint64_t sub_221A1CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8670;
  if (!qword_27CFB8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8670);
  }

  return result;
}

void OUTLINED_FUNCTION_16_7(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

void OUTLINED_FUNCTION_19_5()
{
  *(v1 - 115) = *(v1 - 480);
  *(v1 - 114) = *(v1 - 472);
  *(v1 - 113) = *(v1 - 464);
  *(v1 - 112) = v0;
  *(v1 - 111) = *(v1 - 456);
  *(v1 - 110) = *(v1 - 448);
  *(v1 - 109) = *(v1 - 440);
  *(v1 - 108) = *(v1 - 432);
  *(v1 - 107) = *(v1 - 424);
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 496) = a8;
  *(v12 - 488) = a7;
  *(v12 - 480) = a6;
  *(v12 - 472) = a5;
  *(v12 - 464) = a4;
  *(v12 - 456) = a3;
  *(v12 - 448) = a2;
  *(v12 - 440) = result;
  *(v12 - 432) = v11;
  *(v12 - 424) = v10;
  *(v12 - 408) = v9;
  *(v12 - 416) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_5(char a1, uint64_t a2, size_t a3)
{
  *(v7 - 117) = a1;
  *(v7 - 116) = v6;
  *(v7 - 115) = v5;
  *(v7 - 114) = v4;
  *(v7 - 113) = v3;

  return memcmp((v7 - 112), (v7 - 126), a3);
}

void OUTLINED_FUNCTION_26_5()
{
  *(v0 - 120) = *(v0 - 400);
  *(v0 - 119) = *(v0 - 504);
  *(v0 - 118) = *(v0 - 496);
  *(v0 - 117) = *(v0 - 488);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_2219EBFB4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_45_3()
{
  v4 = v0;
  sub_2219EBFB4(v0, v2);
  sub_2219EBFB4(*(v3 - 392), v1);
  *(v3 - 400) = v4;
  sub_2219EBFB4(v4, v2);

  return sub_221BCC278();
}

void OUTLINED_FUNCTION_47_1()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_73_3()
{

  return sub_221BCD328();
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1)
{

  return sub_221BCE1B8();
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_221BCDCC8();
}

uint64_t OUTLINED_FUNCTION_85_1(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_221A1C660(v0, v1);
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_221BCC2A8();
}

char *OUTLINED_FUNCTION_88_3(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_221A1C320(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_89_2()
{

  return sub_221A1C558();
}

uint64_t AppNotificationTopic.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_221BCF7F0;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    *(v5 + 48) = v4;
    *(v5 + 56) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    v2 = sub_221BCD328();
  }

  else
  {
  }

  return v2;
}

uint64_t static AppNotificationTopic.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_221BCE1B8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_221BCE1B8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AppNotificationTopic.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_221BCD448();
  if (!v2)
  {
    return sub_221BCE328();
  }

  sub_221BCE328();

  return sub_221BCD448();
}

uint64_t AppNotificationTopic.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (v1)
  {
    sub_221BCD448();
  }

  return sub_221BCE358();
}

uint64_t sub_221A1D79C(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_221BCE308();
  AppNotificationTopic.hash(into:)(v4);
  return sub_221BCE358();
}

uint64_t static AppNotificationTopic.allEvents(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = 0;
}

uint64_t static AppNotificationTopic.entityEvents(for:entityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

unint64_t sub_221A1D848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8678;
  if (!qword_27CFB8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8678);
  }

  return result;
}

uint64_t IntentsServices.InterfaceIdiom.rawValue.getter()
{
  result = 0x73646F50726961;
  switch(*v0)
  {
    case 1:
      result = 0x79616C50726163;
      break;
    case 2:
      result = 0x6565724673657965;
      break;
    case 3:
      result = 0x646F50656D6F68;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x656E6F6870;
      break;
    case 6:
      result = 6578544;
      break;
    case 7:
      result = 30324;
      break;
    case 8:
      result = 0x6E6F69736976;
      break;
    case 9:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t IntentsServices.InterfaceIdiom.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_221BCE0B8();

  v6 = 10;
  if (v4 < 0xA)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_221A1DA18@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.InterfaceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    v4 = MobileGestalt_copy_deviceClass_obj();

    if (v4)
    {
      v5 = sub_221BCD388();
      v7 = v6;

      v8 = v5 == 0x5654656C707041 && v7 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_28(0x5654656C707041, 0xE700000000000000) & 1) != 0)
      {

        v9 = 7;
LABEL_45:
        *a1 = v9;
        return;
      }

      v10 = v5 == 0x6363416F69647541 && v7 == 0xEE0079726F737365;
      if (v10 || (OUTLINED_FUNCTION_0_28(0x6363416F69647541, 0xEE0079726F737365) & 1) != 0)
      {

        v9 = 3;
        goto LABEL_45;
      }

      v11 = v5 == 0x656E6F685069 && v7 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_0_28(0x656E6F685069, 0xE600000000000000) & 1) != 0)
      {

        v9 = 5;
        goto LABEL_45;
      }

      v12 = v5 == 1684099177 && v7 == 0xE400000000000000;
      if (v12 || (OUTLINED_FUNCTION_0_28(1684099177, 0xE400000000000000) & 1) != 0)
      {

        v9 = 6;
        goto LABEL_45;
      }

      v13 = v5 == 6512973 && v7 == 0xE300000000000000;
      if (v13 || (OUTLINED_FUNCTION_0_28(6512973, 0xE300000000000000) & 1) != 0)
      {

        v9 = 4;
        goto LABEL_45;
      }

      v14 = v5 == 0x447974696C616552 && v7 == 0xED00006563697665;
      if (v14 || (OUTLINED_FUNCTION_0_28(0x447974696C616552, 0xED00006563697665) & 1) != 0)
      {

        v9 = 8;
        goto LABEL_45;
      }

      if (v5 == 0x6863746157 && v7 == 0xE500000000000000)
      {
      }

      else
      {
        v16 = OUTLINED_FUNCTION_0_28(0x6863746157, 0xE500000000000000);

        if ((v16 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v9 = 9;
      goto LABEL_45;
    }

LABEL_44:
    v9 = 10;
    goto LABEL_45;
  }

  __break(1u);
}

unint64_t sub_221A1DC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8680;
  if (!qword_27CFB8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8680);
  }

  return result;
}

uint64_t _s14InterfaceIdiomOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14InterfaceIdiomOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1, uint64_t a2)
{

  return sub_221BCE1B8();
}

uint64_t sub_221A1DE50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *v2;
  v13 = *(v6 + 16);
  v13(v20 - v14, a1, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_2219A1D64(v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    LOBYTE(v20[0]) = v12;
    v17 = (*(v16 + 16))(v20, v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_221A1E56C(v20);
    if (v12)
    {
      v22[0] = 0x20656D6F7328;
      v22[1] = 0xE600000000000000;
      *&v20[0] = a2;
      swift_getMetatypeMetadata();
      v18 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v18);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      return v22[0];
    }

    else
    {
      (v13)(v9, a1, a2);
      return sub_221BCD3D8();
    }
  }

  return v17;
}

uint64_t sub_221A1E0A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18[-v12];
  v14 = *v2;
  (*(v15 + 16))(&v18[-v12], a1, v11);
  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {
    return 7104878;
  }

  (*(v6 + 32))(v9, v13, a2);
  v18[15] = v14;
  v16 = sub_221A1DE50(v9, a2);
  (*(v6 + 8))(v9, a2);
  return v16;
}

uint64_t IntentsServices.PayloadPrivacy.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_221A1E278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8688;
  if (!qword_27CFB8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8688);
  }

  return result;
}

uint64_t sub_221A1E2EC@<X0>(_DWORD *a1@<X8>)
{
  result = IntentsServices.PayloadPrivacy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_221A1E314(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v15 = 91;
  v16 = 0xE100000000000000;
  v14 = a2;
  v12[2] = a3;
  v12[3] = a4;
  v13 = v4;
  v5 = sub_221BCD748();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_221B8F6FC(sub_221A1E5D4, v12, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  v8 = sub_221BCD328();
  v10 = v9;

  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](93, 0xE100000000000000);
  return v15;
}

uint64_t sub_221A1E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *_s14PayloadPrivacyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221A1E56C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F80, &qword_221BD2810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221A1E5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221A1DE50(a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_221A1E61C(char *a1, void *a2)
{
  v3 = *a1;
  sub_221BCDE68();

  v4 = sub_2219C0E8C(a2, v3);
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_221A1E6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221A1E6F4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A1E6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8690[0];
  if (!qword_27CFB8690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB8690);
  }

  return result;
}

uint64_t sub_221A1E768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Value(0, v7, a3, a4);
  OUTLINED_FUNCTION_0_29();
  v9 = (*(v8 + 16))(v27, v5);
  v12 = v28;
  if (v28)
  {
    v13 = *(&v27[0] + 1);
    *&v26[0] = *&v27[0];
    MEMORY[0x28223BE20](v9);
    v24[2] = v7;
    type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison(255, v7, v14, v15);
    v16 = sub_221BCD748();
    WitnessTable = swift_getWitnessTable();
    v19 = sub_221B8F6FC(sub_221A1F2A4, v24, v16, &type metadata for PropertyQuery.Comparison, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);

    *a2 = v19;
    *(a2 + 8) = v13;
  }

  else
  {
    v26[0] = v27[0];
    v26[1] = v27[1];
    v26[2] = v27[2];
    v26[3] = v27[3];
    v21 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison(0, v7, v10, v11);
    sub_221A1C73C(v26, v25);
    result = (*(*(v21 - 8) + 8))(v26, v21);
    v22 = v25[1];
    *a2 = v25[0];
    *(a2 + 16) = v22;
    v23 = v25[3];
    *(a2 + 32) = v25[2];
    *(a2 + 48) = v23;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_221A1E948(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = objc_allocWithZone(MEMORY[0x277D23800]);
  v8 = sub_2219A0230(95, 0xE100000000000000, 95, 0xE100000000000000);
  v9 = 0;
  v10 = 95;
  v11 = 0xE100000000000000;
  v12 = xmmword_221BD0800;
  *&v6[0] = (*(v1 + 144))(v6);

  swift_getAtKeyPath();

  sub_22199D150();

  if (*(v5 + 24))
  {
    v4 = *(v5 + 16);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_221A1EAC4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v20 - v11;
  v14 = sub_221A1E948(v13);
  v16 = v15;
  (*(v10 + 16))(v12, a2, v9);
  PropertyQuery.Comparison.init<A>(propertyName:operation:value:)(v14, v16, a4, v12, v9, a3, v20);
  v17 = v20[1];
  *a5 = v20[0];
  a5[1] = v17;
  result = *&v21;
  v19 = v22;
  a5[2] = v21;
  a5[3] = v19;
  return result;
}

double static AppEntityQueryRepresentation.TypedPropertyQuery.Comparison.property<A>(_:contains:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v19 - v11;
  v13 = sub_221A1E948(a1);
  v15 = v14;
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  PropertyQuery.Comparison.init<A>(propertyName:operation:value:)(v13, v15, 6, v12, AssociatedTypeWitness, a4, v19);
  v16 = v19[1];
  *a5 = v19[0];
  a5[1] = v16;
  result = *&v20;
  v18 = v21;
  a5[2] = v20;
  a5[3] = v18;
  return result;
}

uint64_t sub_221A1ED98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_221A1E948(a1);
  a5[1] = v9;
  a5[2] = a4;
  a5[3] = a2;
  v10 = MEMORY[0x277D837D0];
  a5[4] = a3;
  a5[6] = v10;
  a5[7] = &protocol witness table for String;
}

void *static AppEntityQueryRepresentation.TypedPropertyQuery.comparison(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison(0, a2, a4, a5);
  OUTLINED_FUNCTION_0_29();
  (*(v7 + 16))(__src, a1);
  __src[64] = 0;
  return memcpy(a3, __src, 0x41uLL);
}

uint64_t static AppEntityQueryRepresentation.TypedPropertyQuery.compound(_:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 1;
}

uint64_t sub_221A1EEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1EF04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A1EF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A1EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F00C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 1)
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

uint64_t sub_221A1F04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A1F0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221A1F10C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A1F14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A1F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F1D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221A1F214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A1F264(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_221A1F308(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;

  sub_221BCDE68();

  v12 = 0xD00000000000001FLL;
  v13 = 0x8000000221BED670;
  v11 = v3;
  v10 = v4;
  v5 = sub_221BCD748();
  v6 = sub_221A1DE50(&v10, v5);
  v8 = v7;

  MEMORY[0x223DA31F0](v6, v8);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_221A1F3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_221A1F438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A1F488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F4D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A1F510(uint64_t result, int a2, int a3)
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

uint64_t static AppEntityQuerySpecification.allEntities(app:entityTypeIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_7_9(a1, a2, a3);
  *(v5 + 161) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *v5 = v7;
  *(v5 + 8) = v6;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v8 = OUTLINED_FUNCTION_16();
  sub_221998178(v8, v9);
}

uint64_t static AppEntityQuerySpecification.byProperties(app:queryTarget:propertyQuery:maximumResultCount:sortingOptions:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a1[1];
  v20 = *a1;
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  sub_2219EB67C(a3, a7 + 32);
  *(a7 + 104) = a4;
  *(a7 + 112) = a5 & 1;
  *(a7 + 120) = a6;
  *(a7 + 128) = v12;
  *(a7 + 136) = v13;
  *(a7 + 144) = v15;
  *(a7 + 152) = v14;
  *(a7 + 160) = v16;
  *(a7 + 161) = 4;
  *a7 = v20;
  *(a7 + 8) = v9;
  *(a7 + 16) = v10;
  *(a7 + 24) = v11;
  sub_2219A2B7C(v12, v13, v15, v14, v16);

  sub_221998178(v10, v11);
}

uint64_t static AppEntityQuerySpecification.bySearchableItems(app:queryTarget:items:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  v13 = *(a2 + 32);
  *(a4 + 72) = v13;
  *(a4 + 161) = 5;
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  sub_2219A2B7C(v9, v10, v11, v12, v13);

  OUTLINED_FUNCTION_1_27();
}

uint64_t static AppEntityQuerySpecification.byString(app:queryTarget:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = v13;
  *(a5 + 72) = v12;
  v14 = *(a2 + 32);
  *(a5 + 80) = v14;
  *(a5 + 161) = 3;
  *a5 = v6;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  sub_2219A2B7C(v10, v11, v13, v12, v14);

  OUTLINED_FUNCTION_1_27();
}

uint64_t sub_221A1F7D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_7_9(a1, a2, a3);
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 161) = v6;
  *v5 = v8;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v9 = OUTLINED_FUNCTION_16();
  sub_221998178(v9, v10);
}

uint64_t static AppEntityQuerySpecification.byIdentifier(app:entityIdentifiers:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_2219A28C8(a2, v15);
  v9 = v16;
  if (v16)
  {
    v10 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    OUTLINED_FUNCTION_2_22();
    v9 = v11(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_2219A6860(v15, &qword_27CFB77E0, &qword_221BD4CC0);
    v13 = 0xE000000000000000;
  }

  *(a3 + 32) = a2;
  *(a3 + 40) = v9;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = v13;
  *(a3 + 72) = 0;
  *(a3 + 161) = 1;
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;

  OUTLINED_FUNCTION_1_27();
}

id sub_221A1F924(void *a1)
{
  sub_221A20F50(v1, v58);
  if ((v59 & 1) == 0)
  {
    v55 = v58[0];
    v56[0] = v58[1];
    v56[1] = v58[2];
    v57 = v58[3];
    sub_221A207F8(a1);
    v1 = v20;
    sub_221A1C798(&v55);
    return v1;
  }

  v4 = *&v58[0];
  v54 = a1;
  if (*(&v58[0] + 1) == 1)
  {
    v21 = *(*&v58[0] + 16);
    if (v21)
    {
      v60 = MEMORY[0x277D84F90];
      result = sub_221BCDF28();
      v22 = 0;
      v23 = v4 + 32;
      v52 = v4;
      while (1)
      {
        if (v22 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        sub_221A1C73C(v23, &v55);
        v24 = [a1 parameters];
        sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
        v25 = sub_221BCD668();

        MEMORY[0x28223BE20](v26);
        v51 = &v55;
        sub_221A20A98(sub_221A20F88, v50, v25);
        v1 = v27;
        v29 = v28;

        if (v29)
        {
          break;
        }

        v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v30 = v57;
        __swift_project_boxed_opaque_existential_0(v56 + 1, v57);
        OUTLINED_FUNCTION_2_22();
        if (!v31(v30, *(&v30 + 1)))
        {
LABEL_25:

          v48 = sub_2219A1218(v45, v46, v47);
          OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v48);
          OUTLINED_FUNCTION_59_0(v49, 10);

          goto LABEL_26;
        }

        ++v22;
        sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
        OUTLINED_FUNCTION_4_12();
        sub_221A1C798(&v55);
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        result = sub_221BCDF08();
        v23 += 64;
        a1 = v54;
        v4 = v52;
        if (v21 == v22)
        {

          v32 = v60;
          goto LABEL_23;
        }
      }

LABEL_24:

      v1 = *(&v55 + 1);
      v39 = v55;
      v42 = sub_2219ACADC(v38, v40, v41);
      v43 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v42);
      *v44 = v39;
      v44[1] = v1;
      OUTLINED_FUNCTION_8_9(v43, v44);

LABEL_26:
      sub_221A1C798(&v55);

      return v1;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2219A1D20(0, &qword_27CFB8938, 0x277D237C0);
    return sub_221A20998(v32, &selRef_orComparisons_);
  }

  if (*(&v58[0] + 1))
  {

    v36 = sub_2219A1218(v33, v34, v35);
    OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v36);
    OUTLINED_FUNCTION_59_0(v37, 9);
    return v1;
  }

  v53 = v2;
  v5 = *(*&v58[0] + 16);
  if (!v5)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_21:
    sub_2219A1D20(0, &qword_27CFB8938, 0x277D237C0);
    return sub_221A20998(v19, &selRef_andComparisons_);
  }

  v60 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  v7 = 0;
  v8 = v4 + 32;
  while (v7 < *(v4 + 16))
  {
    sub_221A1C73C(v8, &v55);
    v9 = [a1 parameters];
    sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
    v10 = sub_221BCD668();

    MEMORY[0x28223BE20](v11);
    v51 = &v55;
    v12 = v53;
    sub_221A20A98(sub_221A21040, v50, v10);
    v1 = v13;
    v15 = v14;
    v53 = v12;

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v17 = v57;
    __swift_project_boxed_opaque_existential_0(v56 + 1, v57);
    OUTLINED_FUNCTION_2_22();
    if (!v18(v17, *(&v17 + 1)))
    {
      goto LABEL_25;
    }

    ++v7;
    sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
    OUTLINED_FUNCTION_4_12();
    sub_221A1C798(&v55);
    sub_221BCDEF8();
    sub_221BCDF38();
    sub_221BCDF48();
    result = sub_221BCDF08();
    v8 += 64;
    a1 = v54;
    if (v5 == v7)
    {

      v19 = v60;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static AppEntityQuerySpecification.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v17[0] = v5;
  v17[1] = v4;
  v17[2] = v6;
  v17[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v16[0] = *a2;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;

  sub_221998178(v6, v7);

  sub_221998178(v9, v10);
  LOBYTE(v6) = static AppIdentifier.== infix(_:_:)(v17, v16);

  v11 = OUTLINED_FUNCTION_1();
  sub_2219982C4(v11, v12);

  v13 = OUTLINED_FUNCTION_1();
  sub_2219982C4(v13, v14);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return sub_221A21D14((a1 + 4), (a2 + 4));
}

uint64_t PropertyQuery.Comparison.init<A>(propertyName:operation:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[2] = a3;
  a7[6] = a5;
  a7[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 3);
  result = (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a4, a5);
  *a7 = a1;
  a7[1] = a2;
  return result;
}

uint64_t static PropertyQuery.comparison(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221A1C73C(a1, a2);
  *(a2 + 64) = 0;
  return result;
}

uint64_t static PropertyQuery.compound(_:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 1;
}

uint64_t static AppEntityQuerySpecification.byIdentifier(app:entityIdentifiers:queryTarget:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a3;
  v10 = *(a3 + 8);
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  *(a4 + 32) = a2;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v12;
  *(a4 + 64) = v11;
  v13 = *(a3 + 32);
  *(a4 + 72) = v13;
  *(a4 + 161) = 1;
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  sub_2219A2B7C(v9, v10, v12, v11, v13);

  OUTLINED_FUNCTION_1_27();
}

uint64_t sub_221A200FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a4 + 32) = *a2;
  *(a4 + 40) = v9;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  v12 = *(a2 + 32);
  *(a4 + 64) = v12;
  *(a4 + 161) = a3;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  sub_2219A2B7C(v8, v9, v11, v10, v12);

  v13 = OUTLINED_FUNCTION_16();

  return sub_221998178(v13, v14);
}

unint64_t sub_221A20178(char *a1)
{
  v2 = *a1;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_221BCDE68();

  v19 = 0xD000000000000021;
  v20 = 0x8000000221BED690;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5 = OUTLINED_FUNCTION_1();
  sub_221998178(v5, v6);
  v7 = OUTLINED_FUNCTION_16();
  v9 = sub_2219987FC(v7, v8, v3, v4);
  MEMORY[0x223DA31F0](v9);

  v10 = MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v18[3] = &type metadata for QuerySpecification;
  v18[4] = sub_2219EB6D8(v10, v11, v12);
  v18[0] = swift_allocObject();
  sub_2219AC930(v1 + 32, v18[0] + 16);
  __swift_project_boxed_opaque_existential_0(v18, &type metadata for QuerySpecification);
  v17 = v2;
  v13 = sub_221A22514(&v17);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x223DA31F0](v13, v15);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v19;
}

uint64_t _s18AppIntentsServices13PropertyQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_221A20F50(a1, v10);
  sub_221A20F50(a2, v11);
  if ((v10[64] & 1) == 0)
  {
    sub_221A20F50(v10, v9);
    if ((v12 & 1) == 0)
    {
      v8[0] = v11[0];
      v8[1] = v11[1];
      v8[2] = v11[2];
      v8[3] = v11[3];
      v6 = static PropertyQuery.Comparison.== infix(_:_:)(v9, v8);
      sub_221A1C798(v8);
      sub_221A1C798(v9);
      goto LABEL_11;
    }

    sub_221A1C798(v9);
    goto LABEL_8;
  }

  sub_221A20F50(v10, v9);
  if (v12 != 1)
  {

LABEL_8:
    sub_2219A6860(v10, qword_27CFB8940, &qword_221BD56C8);
    goto LABEL_9;
  }

  v3 = v9[1];
  v4 = *(&v11[0] + 1);
  v5 = sub_221A19800(v9[0], *&v11[0]);

  if (v5)
  {
    v6 = v3 == v4;
LABEL_11:
    sub_221A2100C(v10);
    return v6 & 1;
  }

  sub_221A2100C(v10);
LABEL_9:
  v6 = 0;
  return v6 & 1;
}

uint64_t PropertyQuery.Comparison.propertyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static PropertyQuery.Comparison.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_221BCE1B8()) && a1[2] == a2[2])
  {
    __swift_project_boxed_opaque_existential_0(a1 + 3, a1[6]);
    OUTLINED_FUNCTION_2_22();
    v5 = OUTLINED_FUNCTION_1();
    v7 = v6(v5);
    __swift_project_boxed_opaque_existential_0(a2 + 3, a2[6]);
    OUTLINED_FUNCTION_2_22();
    v8 = OUTLINED_FUNCTION_1();
    v10 = v9(v8);
    v11 = v10;
    if (v7)
    {
      if (v10)
      {
        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        v12 = sub_221BCDC58();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      if (!v10)
      {
        v12 = 1;
        return v12 & 1;
      }

      v12 = 0;
      v7 = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t PropertyQuery.SortingOption.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2219980F0(v2, v3, v4);
}

__n128 PropertyQuery.SortingOption.init(order:target:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t static PropertyQuery.SortingOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a2 + 1);
  if (a1[24] == 1)
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }

    v6 = *(a1 + 2);
    v7 = v4 == v5 && v6 == *(a2 + 2);
    if (!v7 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v5)
    {
      v8 = a2[24];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static PropertyQuery.SortTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*(a1 + 16) == 1)
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = v3 == v4 && v5 == a2[1];
    if (!v6 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v4)
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PropertyQuery.SortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t static PropertyQuery.SortTarget.property(index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static PropertyQuery.SortTarget.property(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t sub_221A2078C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8();
  }
}

void sub_221A207F8(void *a1)
{
  v2 = v1;
  v3 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
  v4 = sub_221BCD668();

  v27[2] = v2;
  sub_221A20A98(sub_221A21040, v27, v4);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v13 = *v2;
    v12 = v2[1];
    v14 = sub_2219ACADC(v9, v10, v11);
    v15 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v14);
    *v16 = v13;
    v16[1] = v12;
    OUTLINED_FUNCTION_8_9(v15, v16);
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v18 = v2[6];
    v19 = v2[7];
    __swift_project_boxed_opaque_existential_0(v2 + 3, v18);
    OUTLINED_FUNCTION_2_22();
    v21 = v20(v18, v19);
    if (v21)
    {
      v24 = v21;
      sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
      sub_221A20B98(v17, v24, v2[2]);
    }

    else
    {
      v25 = sub_2219A1218(0, v22, v23);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v25);
      OUTLINED_FUNCTION_59_0(v26, 10);
    }
  }
}

id sub_221A20998(uint64_t a1, SEL *a2)
{
  sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
  v3 = sub_221BCD658();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

uint64_t sub_221A20A1C(void **a1, void *a2)
{
  v3 = sub_221A20FA8(*a1);
  if (v4)
  {
    if (v3 == *a2 && v4 == a2[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_221BCE1B8();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_221A20A98(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2219A69A0();
  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DA3BF0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v7 = *(a3 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}