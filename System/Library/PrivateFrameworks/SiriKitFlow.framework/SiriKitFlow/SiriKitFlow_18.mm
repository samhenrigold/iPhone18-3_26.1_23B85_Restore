void sub_1DCCD9F48(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v2, v3, &protocol conformance descriptor for CurrentTCUProvider);
  sub_1DD0DCF8C();
}

void CurrentTCUProvider.__allocating_init(operationQueue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  CurrentTCUProvider.init(operationQueue:)(a1, a2);
}

void CurrentTCUProvider.init(operationQueue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_5_35(v2 + 24, v6);
  ObjectType = swift_getObjectType();
  v5 = swift_unknownObjectRetain();
  sub_1DCCDADF4(v5, ObjectType, a2);
}

void sub_1DCCDA0FC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  sub_1DCCD9F48(v3, v2);
}

void sub_1DCCDA138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1, &protocol conformance descriptor for CurrentTCUProvider);
  sub_1DD0DCEDC();
}

void sub_1DCCDA1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4270, qword_1DD0EB4D0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCCDA314(v5);
}

void sub_1DCCDA314(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4270, qword_1DD0EB4D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6 - 8];
  OUTLINED_FUNCTION_156(v1 + 24, v9);
  (*(v4 + 16))(v7, a1, v3);
  sub_1DD0DCF8C();
}

uint64_t CurrentTCUProvider.deinit()
{

  return v0;
}

uint64_t CurrentTCUProvider.__deallocating_deinit()
{
  CurrentTCUProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCCDA4FC()
{
  type metadata accessor for CurrentTCUProvider();

    ;
  }
}

void sub_1DCCDA548()
{
  type metadata accessor for CurrentTCUProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCDA598@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CurrentTCUProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void sub_1DCCDA5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "DefaultFlowOperationQueue used for submitting Unsafe Flow Operations. Immediately executing, since we should already be running after endpoint.", v11, 2u);
    MEMORY[0x1E12A8390](v11, -1, -1);
  }

  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCDA7D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB3FF64;

  return v7();
}

uint64_t sub_1DCCDA8DC()
{
  OUTLINED_FUNCTION_156(*(v0 + 64) + 112, v0 + 16);
  v1 = *(v0 + 64);
  v4 = *(v1 + 112);
  v3 = v1 + 112;
  v2 = v4;
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_5_35(v3, v0 + 40);
    *(v0 + 72) = *(v2 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCDAA34()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1DCCDACB0;
  }

  else
  {
    v4 = sub_1DCCDAB60;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DCCDAB60()
{

  v1 = *(v0 + 64);
  v4 = *(v1 + 112);
  v3 = v1 + 112;
  v2 = v4;
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_5_35(v3, v0 + 40);
    *(v0 + 72) = *(v2 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCDACB0()
{

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCCDAD10()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DCCDAD68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCDB148;

  return sub_1DCCDA8BC();
}

void sub_1DCCDADF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCCDAF84(uint64_t a1)
{
  result = sub_1DCCDAFDC(&qword_1ECCA4260, type metadata accessor for DefaultFlowOperationQueue, &unk_1DD0EB468);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCDAFDC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCCDB020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4268, &qword_1DD0EB4B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCDB088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCB3FF64;

  return sub_1DCCDA7D4(a1, v4, v5, v6);
}

uint64_t DecoratingFlow.action.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 16))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t ActingFlow.unwrap.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = *(v7 + 16);
  v9(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4278, &qword_1DD0EB508);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(&v16, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v11 + 16))(&v16, v10, v11);
    v12 = *(&v17 + 1);
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    ActingFlow.unwrap.getter(v12, v13, a3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1DCCDB398(&v16);
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    return (v9)(boxed_opaque_existential_1Tm, v3, a1);
  }
}

uint64_t sub_1DCCDB398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4280, &qword_1DD0EB510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCDB414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DecoratingFlow.action.getter(a1, WitnessTable);
}

uint64_t sub_1DCCDB478()
{
  OUTLINED_FUNCTION_42();
  v0[17] = v1;
  v2 = sub_1DD0DB04C();
  v0[18] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[19] = v3;
  v0[20] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  v0[21] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v0[22] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCCDB544()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCCDCF64(v1);
}

uint64_t sub_1DCCDB668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;
  *(v3 + 200) = v0;

  sub_1DCB0E9D8(v3 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCCDB944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCDBA40()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCDBABC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCCDBB24()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCDBBA0()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_20_0(v2);
  v0[3] = OUTLINED_FUNCTION_38();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  OUTLINED_FUNCTION_20_0(v3);
  v0[4] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DB6EC();
  v0[5] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v6);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCDBCD4()
{
  v1 = v0[9];
  v2 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = static SystemDialogActHelper.systemAskedUserToRepeat()();
  v5 = v0[4];
  v4 = v0[5];
  if (!v3)
  {
    __swift_storeEnumTagSinglePayload(v0[4], 1, 1, v0[5]);
    goto LABEL_6;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()(v5);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
LABEL_6:
    sub_1DCB0E9D8(v0[4], &qword_1ECCAC000, &unk_1DD0E0F60);
    goto LABEL_7;
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = *(v0[6] + 32);
  v8(v0[7], v0[4], v0[5]);
  NLContextUpdate.init()(v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v2);
  sub_1DCCDD420(v7, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v2))
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  else
  {
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DD0E07C0;
    v8(v16 + v15, v12, v14);
    *(v11 + 216) = v16;
  }

LABEL_7:
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1DCCDBEEC;

  return sub_1DCC6338C();
}

uint64_t sub_1DCCDBEEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCCDBFEC()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  if (qword_1EDE4A0D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2[0] = qword_1EDE4A0E0;
  v2[1] = unk_1EDE4A0E8;

  sub_1DCE1D0EC(v2, v1);
}

uint64_t sub_1DCCDC108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCDC204()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  sub_1DCB6970C(v2);
  sub_1DCB0E9D8(v1, &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCDC2C8()
{
  sub_1DCB0E9D8(*(v0 + 72), &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCDC37C()
{
  v1 = *(v0 + 24);

  sub_1DCB6970C(v1);
  sub_1DCB0E9D8(*(v0 + 72), &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCDC444()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = sub_1DD0DB04C();
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  v0[6] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v0[7] = OUTLINED_FUNCTION_38();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DCCDC540;

  return sub_1DCD01534();
}

uint64_t sub_1DCCDC540()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCCDC83C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCDC938()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCDC9B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v2();
}

void *sub_1DCCDCA30()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1EDE57D38 = result;
  return result;
}

uint64_t sub_1DCCDCA70()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = sub_1DD0DB04C();
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  v0[6] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v0[7] = OUTLINED_FUNCTION_38();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DCCDCB6C;

  return sub_1DCF65754();
}

uint64_t sub_1DCCDCB6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCCDCE68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCDD3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCDD420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of DetailedDisambiguationFlowProvider.makeAllItemsFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCCDD5EC;

  return v7(a1, a2);
}

uint64_t sub_1DCCDD5EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DetailedDisambiguationFlowProvider.makeWindowingConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DetailedResultFlowProvider.makeSingleWindowFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCCDD5EC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DetailedResultFlowProvider.makeWindowingFlowProvider()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2, a3);
}

void sub_1DCCDDA94()
{
  type metadata accessor for DeviceEnvironmentHelper();
  swift_allocObject();
  sub_1DCCDDB0C();
}

id sub_1DCCDDAD0()
{
  result = [objc_opt_self() sharedPreferences];
  qword_1EDE4DCE0 = result;
  return result;
}

void sub_1DCCDDB0C()
{
  v1 = sub_1DD0DE80C();
  MEMORY[0x1EEE9AC00](v1, v0);
  sub_1DD0DCEFC();
}

void sub_1DCCDE058()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  static DeviceEnvironmentHelper.update(deviceState:peerInfo:)(v2, v0);
}

uint64_t sub_1DCCDE0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCCDE19C();
  result = sub_1DD0DDE9C();
  qword_1EDE4DCF8 = result;
  return result;
}

uint64_t DeviceEnvironmentHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1DCCDE19C()
{
  result = qword_1EDE4D720;
  if (!qword_1EDE4D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D720);
  }

  return result;
}

void sub_1DCCDEBE8()
{
  type metadata accessor for RefreshableDeviceState();
  swift_allocObject();
  sub_1DCCDFA98();
}

void static Device.internalDeviceState.getter()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DD0DCF8C();
}

void static Device.setCurrentDeviceStateForTesting(_:)()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  RefreshableDeviceState.setUnderlyingDeviceState(_:)();
}

uint64_t sub_1DCCDEE10@<X0>(unsigned int *a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  a2(0);
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 104);

  return v7(a3, v4, v5);
}

void DeviceState.restrictedCommands.getter()
{
    ;
  }
}

uint64_t sub_1DCCDF470(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8))() & 1) != 0 && MGGetSInt32Answer() != 7)
  {
    return (*(a2 + 264))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCDF4F4()
{
  v0 = sub_1DD0DE75C();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DD0DE74C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v10 = sub_1DD0DDDFC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  OUTLINED_FUNCTION_16();
  sub_1DCCDFED4();
  sub_1DD0DDDCC();
  sub_1DCCDFF18(&qword_1EDE461B8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DCCDFF60();
  sub_1DD0DEABC();
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8090], v0);
  result = sub_1DD0DE79C();
  qword_1EDE49028 = result;
  return result;
}

uint64_t sub_1DCCDF704()
{
  qword_1EDE48288 = 0;
  qword_1EDE48290 = 0;
}

uint64_t RefreshableDeviceState.sessionHandOffContinuityID.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t RefreshableDeviceState.personalDomainsAuthenticationMode.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t RefreshableDeviceState.bargeInContext.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t RefreshableDeviceState.peerDeviceName.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t RefreshableDeviceState.restrictions.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t RefreshableDeviceState.authenticationState.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t RefreshableDeviceState.isDeviceShowingLockScreen.getter()
{
  sub_1DCB4E718(v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.deinit()
{

  return v0;
}

uint64_t RefreshableDeviceState.__deallocating_deinit()
{
  RefreshableDeviceState.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCCDFA98()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B8, &qword_1DD0EB738);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  sub_1DCB099BC(v2, v1 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 16) = v1;
  if (qword_1EDE4DD00 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_1EDE4DD08;
  sub_1DD0DCF8C();
}

_BYTE *storeEnumTagSinglePayload for Device(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCCDFED4()
{
  result = qword_1EDE461B0;
  if (!qword_1EDE461B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461B0);
  }

  return result;
}

uint64_t sub_1DCCDFF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DCCDFF60()
{
  result = qword_1EDE46270;
  if (!qword_1EDE46270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA42B0, &qword_1DD0EB730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46270);
  }

  return result;
}

uint64_t assignWithCopy for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_1DCB42788(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  sub_1DCB42C24(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  sub_1DCB42C24(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogEngineOutput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 73))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for DialogEngineOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCE01AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

void sub_1DCCE01D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, NSObject *a22, unsigned __int8 a23)
{
  OUTLINED_FUNCTION_50();
  v39 = v23;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v38 = v27;
  v33[8] = v28;
  v37 = a23;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v33[6] = v30;
  v33[7] = v29;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33[5] = v33 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

void sub_1DCCE2204(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CC0];
  v5 = sub_1DCB08B14(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12A72C0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x1E12A6920]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }
  }
}

uint64_t sub_1DCCE2358(char a1, char a2, char a3, char a4, char a5, uint64_t a6, char *a7)
{
  v14 = *a7;
  v15 = [v7 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v16 = sub_1DD0DE2EC();

  v20[16] = a1;
  v20[17] = a2;
  v20[18] = a3;
  v20[19] = a4;
  v20[20] = a5;
  v21 = a6;
  v22 = v14;
  v23 = v7;
  sub_1DCCE2204(sub_1DCCE2518, v20, v16);
  v18 = v17;

  return v18;
}

void sub_1DCCE2454(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  HIBYTE(v22[0]) = a7 & 1;
  v14 = sub_1DCCE255C();
  v16 = v15;
  LOBYTE(v17) = AFDeviceSupportsSystemAssistantExperience();
  sub_1DCCE01D8(a1, a2, a3, 0, a4, a5, a6, v22 + 7, v14, v16, v17, v18, a8, v20, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v23);
}

uint64_t sub_1DCCE255C()
{
  v1 = [v0 meta];
  v2 = sub_1DD0DDE6C();

  v3 = sub_1DCB6B180(0x79726F6765746163, 0xE800000000000000, v2);

  return v3;
}

void sub_1DCCE29B4()
{
  v1 = [v0 fullPrint];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_3_44();
  if (!v2)
  {
    v3 = [v0 supportingPrint];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_45_8();

    OUTLINED_FUNCTION_3_44();
    if (v4)
    {
      v5 = [v0 supportingPrint];
      if (!v5)
      {
        sub_1DD0DDFBC();
        v5 = sub_1DD0DDF8C();
      }

      [v0 setFullPrint_];

      v6 = [v0 redactedSupportingPrint];
      if (!v6)
      {
        sub_1DD0DDFBC();
        v6 = sub_1DD0DDF8C();
      }

      [v0 setRedactedFullPrint_];
    }
  }

  v7 = [v0 supportingPrint];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_3_44();
  if (!v8)
  {
    v9 = [v0 fullPrint];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_45_8();

    OUTLINED_FUNCTION_3_44();
    if (v10)
    {
      v11 = [v0 fullPrint];
      if (!v11)
      {
        sub_1DD0DDFBC();
        v11 = sub_1DD0DDF8C();
      }

      [v0 setSupportingPrint_];

      v12 = [v0 redactedFullPrint];
      if (!v12)
      {
        sub_1DD0DDFBC();
        v13 = sub_1DD0DDF8C();

        v12 = v13;
      }

      v14 = v12;
      [v0 setRedactedSupportingPrint_];
    }
  }
}

void sub_1DCCE3044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  sub_1DD0DCC3C();
}

id sub_1DCCE3230()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriResponseShouldAlwaysPrint];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v1;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_80();
  }

  return v1;
}

void sub_1DCCE3810()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  v10 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v10, sel_setFullPrint_);

  v11 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v11, sel_setFullSpeak_);

  v12 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v12, sel_setRedactedFullPrint_);

  v13 = OUTLINED_FUNCTION_26_10();
  [v1 setRedactedFullSpeak_];
}

void sub_1DCCE3938(char a1)
{
  [v1 setSpokenOnly_];
  [v1 setSpokenOnlyDefined_];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = [v3 spokenOnly];
    *(v5 + 8) = 1024;
    *(v5 + 10) = [v3 spokenOnlyDefined];

    _os_log_impl(&dword_1DCAFC000, oslog, v4, "#modes Set spokenOnly = %{BOOL}d and spokenOnlyDefined = %{BOOL}d", v5, 0xEu);
    OUTLINED_FUNCTION_62();
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

void sub_1DCCE3A8C()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  v10 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v10, sel_setSupportingPrint_);

  v11 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v11, sel_setSupportingSpeak_);

  v12 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v12, sel_setRedactedSupportingPrint_);

  v13 = OUTLINED_FUNCTION_26_10();
  [v1 setRedactedSupportingSpeak_];
}

uint64_t sub_1DCCE3BB4()
{
  v1 = AFDeviceSupportsSystemAssistantExperience();
  if (v1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v5);
      v6 = "#modes shouldUseAlwaysDisplay: SAE is true -> return false";
LABEL_10:
      _os_log_impl(&dword_1DCAFC000, v3, v4, v6, v0, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v8);
      v6 = "#modes shouldUseAlwaysDisplay: return true";
      goto LABEL_10;
    }
  }

  return v1 ^ 1u;
}

id sub_1DCCE3CC4()
{
  result = [v0 spokenOnlyDefined];
  if (result)
  {
    return [v0 spokenOnly];
  }

  return result;
}

uint64_t sub_1DCCE3E4C(const char *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, a1, v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 1;
}

uint64_t sub_1DCCE3EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42C0, &qword_1DD0EB7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCE3F80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCE4064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for AceOutput(0);
  v8[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCCE40FC, 0, 0);
}

void sub_1DCCE40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v23 = v20[7];
  v24 = v20[4];
  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57DA0);
  sub_1DCB6FF74(v24, v23);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCE440C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void *sub_1DCCE4508()
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v2)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57DA0);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v18, v19, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v3 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v0 id];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  v5 = OUTLINED_FUNCTION_16_18();
  sub_1DCB6F6EC(v5, v6, v3);
  [v3 setIsApprovedForGrading_];
  if (OUTLINED_FUNCTION_44_10())
  {
    v7 = [v0 fullSpeak];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_19_1();

    OUTLINED_FUNCTION_4_39();
    if (v8 || (v9 = [v0 fullPrint], sub_1DD0DDFBC(), OUTLINED_FUNCTION_19_1(), , OUTLINED_FUNCTION_4_39(), v10))
    {
      if (([v0 printOnly] & 1) == 0)
      {
        v11 = [v0 redactedFullSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v12 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v12, v13);
        OUTLINED_FUNCTION_18_18();

        if (v1)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v14 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v11 = 0;
        }

        OUTLINED_FUNCTION_46_10(v14, sel_setSpokenDialog_);
      }

      if (([v0 spokenOnly] & 1) == 0)
      {
        v20 = [v0 redactedFullPrint];
LABEL_17:
        v21 = v20;
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_18_18();

        v22 = OUTLINED_FUNCTION_131();
        v16 = sub_1DCB6F750(v22, v23);
        v25 = v24;

        if (v25)
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v16 = 0;
        }

        OUTLINED_FUNCTION_25(v26, sel_setDisplayedDialog_);
LABEL_21:
      }
    }

    else
    {
      if (([v0 printOnly] & 1) == 0)
      {
        v28 = [v0 redactedSupportingSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v29 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v29, v30);
        OUTLINED_FUNCTION_18_18();

        if (v1)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v31 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v28 = 0;
        }

        OUTLINED_FUNCTION_46_10(v31, sel_setSpokenDialog_);
      }

      if (([v0 spokenOnly] & 1) == 0)
      {
        v20 = [v0 redactedSupportingPrint];
        goto LABEL_17;
      }
    }
  }

  return v3;
}

void *sub_1DCCE4830()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[80];
  v6 = *(v0 + 20);
  v28 = *(v0 + 21);
  v29 = *(v0 + 22);
  v7 = *(v0 + 24);
  v24 = *(v0 + 23);
  v25 = *(v0 + 25);
  v26 = *(v0 + 19);
  v27 = *(v0 + 26);
  v8 = v0[216];
  v9 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v9)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57DA0);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v16))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v17, v18, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v10 = 0;
    goto LABEL_33;
  }

  v10 = v9;
  sub_1DCCE4B34(v2, v1, v9);
  v11 = [v10 setIsApprovedForGrading_];
  if (v8)
  {
    v12 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v12 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if ((v5 & 1) == 0)
      {
        if (v6 && (v11 = sub_1DCB6F750(v26, v6), v13))
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v0 = 0;
        }

        OUTLINED_FUNCTION_25(v11, sel_setDisplayedDialog_);
      }

      v15 = 0;
      if (!v6)
      {
        goto LABEL_32;
      }

      v20 = v29;
      if (!v29)
      {
        goto LABEL_32;
      }

      v21 = v28;
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        if (v7 && (v11 = sub_1DCB6F750(v24, v7), v19))
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v0 = 0;
        }

        OUTLINED_FUNCTION_25(v11, sel_setDisplayedDialog_);
      }

      v15 = 0;
      if (!v7)
      {
        goto LABEL_32;
      }

      v20 = v27;
      if (!v27)
      {
        goto LABEL_32;
      }

      v21 = v25;
    }

    v11 = sub_1DCB6F750(v21, v20);
    if (v22)
    {
      sub_1DD0DDF8C();
      OUTLINED_FUNCTION_48_1();
    }

    else
    {
      v15 = 0;
    }

LABEL_32:
    OUTLINED_FUNCTION_25(v11, sel_setSpokenDialog_);
LABEL_33:
  }

  return v10;
}

void sub_1DCCE4B34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogId_];
}

uint64_t sub_1DCCE4B8C()
{
  OUTLINED_FUNCTION_230();
  v1 = type metadata accessor for AceOutput(0);
  OUTLINED_FUNCTION_99(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_117();

  return sub_1DCCE4064(v3, v4, v5, v6, v7, v8, v9, v10);
}

void static DialogHelper.globals.getter()
{
  sub_1DD0DB0FC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  v4 = v3 - v2;
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE46630;
  sub_1DCB4E718(v7);
  v6 = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  RefreshableDeviceState.siriLocale.getter(v6);
  sub_1DCCE56A8(v5, v4, 0);
}

void static DialogHelper.makeGlobals(deviceState:locale:options:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  sub_1DCCE5F64(v7, a2, a3, v5, v6);
}

SiriKitFlow::DialogGlobalsOptions sub_1DCCE4EA8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DialogGlobalsOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCCE4EE8@<X0>(uint64_t *a1@<X8>)
{
  result = DialogGlobalsOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void static DialogHelper.makeGlobals(deviceState:)(void *a1)
{
  sub_1DD0DB0FC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_8_34();
  v5(v4);
  OUTLINED_FUNCTION_14_27();
}

void static DialogHelper.makeGlobals(deviceState:options:)(void *a1, uint64_t a2)
{
  sub_1DD0DB0FC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_8_34();
  v6(v5);
  OUTLINED_FUNCTION_14_27();
}

uint64_t sub_1DCCE50DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  __src[10] = *MEMORY[0x1E69E9840];
  sub_1DCC6DDEC(*a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  sub_1DCCE6BD4();
  v4 = sub_1DD0DAADC();
  if (!v2)
  {
    v9 = v4;
    v10 = v5;
    sub_1DCCE6C28(__src);
    v11 = objc_opt_self();
    v12 = sub_1DD0DAEFC();
    v18[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v18];

    if (v13)
    {
      v14 = v18[0];
      sub_1DD0DEA6C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      if (swift_dynamicCast())
      {
        result = sub_1DCB21A14(v9, v10);
        v7 = 0;
        v8 = v17;
        goto LABEL_11;
      }

      sub_1DCC6D7A0();
      v8 = swift_allocError();
      *v16 = 0xD00000000000002ALL;
      v16[1] = 0x80000001DD115E40;
      result = sub_1DCB21A14(v9, v10);
    }

    else
    {
      v15 = v18[0];
      v8 = sub_1DD0DAE0C();

      swift_willThrow();
      result = sub_1DCB21A14(v9, v10);
    }

    v7 = 1;
    goto LABEL_11;
  }

  result = sub_1DCCE6C28(__src);
  v7 = 1;
  v8 = v2;
LABEL_11:
  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

unint64_t sub_1DCCE6900()
{
  result = qword_1ECCA42D8;
  if (!qword_1ECCA42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42D8);
  }

  return result;
}

unint64_t sub_1DCCE6958()
{
  result = qword_1ECCA42E0;
  if (!qword_1ECCA42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42E0);
  }

  return result;
}

unint64_t sub_1DCCE69B0()
{
  result = qword_1ECCA42E8;
  if (!qword_1ECCA42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42E8);
  }

  return result;
}

unint64_t sub_1DCCE6A08()
{
  result = qword_1ECCA42F0;
  if (!qword_1ECCA42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexibleExecutionSupportOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexibleExecutionSupportOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCE6B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42F8, &qword_1DD0EBAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCCE6BC8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1DCCE6BD4()
{
  result = qword_1ECCA4300;
  if (!qword_1ECCA4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4300);
  }

  return result;
}

char *sub_1DCCE6C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_28(a1, a2, a3);
  sub_1DD0DDF2C();
  v4 = &v9;
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_13_25();
  do
  {
    OUTLINED_FUNCTION_12_27();
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_15_26();
    v7 = v7 && v6 == v3;
  }

  while (!v7 && (sub_1DD0DF0AC() & 1) == 0);
  return v4;
}

char *sub_1DCCE6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_28(a1, a2, a3);
  sub_1DD0DDF2C();
  v4 = &v9;
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_13_25();
  do
  {
    OUTLINED_FUNCTION_12_27();
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_15_26();
    v7 = v7 && v6 == v3;
  }

  while (!v7 && (sub_1DD0DF0AC() & 1) == 0);
  return v4;
}

void sub_1DCCE6DBC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "Provided DialogPhase text is nil", v16, 2u);
    v17 = v16;
    goto LABEL_17;
  }

  v6 = sub_1DD0DE04C();
  v8 = v7;
  if (v6 != 0x656C776F6E6B6361 || v7 != 0xEF746E656D656764)
  {
    v10 = v6;
    OUTLINED_FUNCTION_2_48();
    if ((sub_1DD0DF0AC() & 1) == 0)
    {
      v18 = v10 == 0x64656C65636E6163 && v8 == 0xE800000000000000;
      if (v18 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EB90 != -1)
        {
          OUTLINED_FUNCTION_5_39(&qword_1EDE4EB90);
        }

        v11 = &qword_1EDE4EB98;
        goto LABEL_10;
      }

      v19 = v10 == 0x6369666972616C63 && v8 == 0xED00006E6F697461;
      if (v19 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC10 != -1)
        {
          OUTLINED_FUNCTION_4_40(&qword_1EDE4EC10);
        }

        v11 = &xmmword_1EDE4EC18;
        goto LABEL_10;
      }

      v20 = v10 == 0x6974656C706D6F63 && v8 == 0xEA00000000006E6FLL;
      if (v20 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC68 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EDE4EC70;
        goto LABEL_10;
      }

      v21 = v10 == 0x616D7269666E6F63 && v8 == 0xEC0000006E6F6974;
      if (v21 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC30 != -1)
        {
          OUTLINED_FUNCTION_3_46(&qword_1EDE4EC30);
        }

        v11 = &qword_1EDE4EC38;
        goto LABEL_10;
      }

      v22 = v10 == 0x656D7269666E6F63 && v8 == 0xE900000000000064;
      if (v22 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4A0D8 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EDE4A0E0;
        goto LABEL_10;
      }

      v23 = v10 == 0x726F727265 && v8 == 0xE500000000000000;
      if (v23 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EBE0 != -1)
        {
          OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
        }

        v11 = &qword_1EDE4EBE8;
        goto LABEL_10;
      }

      v24 = v10 == 0x697463656C666572 && v8 == 0xEA00000000006E6FLL;
      if (v24 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC50 != -1)
        {
          OUTLINED_FUNCTION_9_28(&qword_1EDE4EC50);
        }

        v11 = &qword_1EDE4EC58;
        goto LABEL_10;
      }

      v25 = v10 == 0x737574617473 && v8 == 0xE600000000000000;
      if (v25 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EBC8 != -1)
        {
          OUTLINED_FUNCTION_8_35(&qword_1EDE4EBC8);
        }

        v11 = &qword_1EDE4EBD0;
        goto LABEL_10;
      }

      if (v10 == 0x7972616D6D7573 && v8 == 0xE700000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_2_48();
        v27 = sub_1DD0DF0AC();

        if ((v27 & 1) == 0)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v28 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v28, qword_1EDE57E00);

          v14 = sub_1DD0DD8EC();
          v29 = sub_1DD0DE6EC();

          if (!os_log_type_enabled(v14, v29))
          {
            goto LABEL_18;
          }

          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1DCB10E9C(a1, a2, &v32);
          _os_log_impl(&dword_1DCAFC000, v14, v29, "Cannot convert text '%s' into a valid DialogPhase", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x1E12A8390](v31, -1, -1);
          v17 = v30;
LABEL_17:
          MEMORY[0x1E12A8390](v17, -1, -1);
LABEL_18:

          *a3 = 0;
          a3[1] = 0;
          return;
        }
      }

      if (qword_1EDE4EBA8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EDE4EBB0;
      goto LABEL_10;
    }
  }

  if (qword_1EDE4EBF8 != -1)
  {
    OUTLINED_FUNCTION_7_32(&qword_1EDE4EBF8);
  }

  v11 = &qword_1EDE4EC00;
LABEL_10:
  v12 = v11[1];
  *a3 = *v11;
  a3[1] = v12;
}

uint64_t sub_1DCCE744C()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EC00 = result;
  *algn_1EDE4EC08 = v1;
  return result;
}

uint64_t sub_1DCCE749C()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EC58 = result;
  unk_1EDE4EC60 = v1;
  return result;
}

uint64_t sub_1DCCE74EC()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EBD0 = result;
  *algn_1EDE4EBD8 = v1;
  return result;
}

uint64_t sub_1DCCE753C()
{
  result = sub_1DD0DDFBC();
  *&xmmword_1EDE4EC18 = result;
  *(&xmmword_1EDE4EC18 + 1) = v1;
  return result;
}

uint64_t sub_1DCCE756C()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EBB0 = result;
  unk_1EDE4EBB8 = v1;
  return result;
}

uint64_t sub_1DCCE75BC()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EC38 = result;
  unk_1EDE4EC40 = v1;
  return result;
}

uint64_t sub_1DCCE75EC()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EC70 = result;
  *algn_1EDE4EC78 = v1;
  return result;
}

uint64_t sub_1DCCE761C()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EBE8 = result;
  unk_1EDE4EBF0 = v1;
  return result;
}

uint64_t sub_1DCCE766C()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4A0E0 = result;
  unk_1EDE4A0E8 = v1;
  return result;
}

uint64_t sub_1DCCE76BC()
{
  result = sub_1DD0DDFBC();
  qword_1EDE4EB98 = result;
  unk_1EDE4EBA0 = v1;
  return result;
}

uint64_t sub_1DCCE770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4310, &unk_1DD0EBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EBAB0;
  if (qword_1EDE4EBF8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDE4EC08;
  *(inited + 32) = qword_1EDE4EC00;
  *(inited + 40) = v1;
  v2 = qword_1EDE4EC50;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDE4EC60;
  *(inited + 48) = qword_1EDE4EC58;
  *(inited + 56) = v3;
  v4 = qword_1EDE4EBC8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EDE4EBD8;
  *(inited + 64) = qword_1EDE4EBD0;
  *(inited + 72) = v5;
  v6 = qword_1EDE4EC10;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(&xmmword_1EDE4EC18 + 1);
  *(inited + 80) = xmmword_1EDE4EC18;
  *(inited + 88) = v7;
  v8 = qword_1EDE4EBA8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_1EDE4EBB8;
  *(inited + 96) = qword_1EDE4EBB0;
  *(inited + 104) = v9;
  v10 = qword_1EDE4EC30;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDE4EC40;
  *(inited + 112) = qword_1EDE4EC38;
  *(inited + 120) = v11;
  v12 = qword_1EDE4EC68;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EDE4EC78;
  *(inited + 128) = qword_1EDE4EC70;
  *(inited + 136) = v13;
  v14 = qword_1EDE4EBE0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDE4EBF0;
  *(inited + 144) = qword_1EDE4EBE8;
  *(inited + 152) = v15;
  v16 = qword_1EDE4A0D8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = unk_1EDE4A0E8;
  *(inited + 160) = qword_1EDE4A0E0;
  *(inited + 168) = v17;
  v18 = qword_1EDE4EB90;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_1EDE4EBA0;
  *(inited + 176) = qword_1EDE4EB98;
  *(inited + 184) = v19;
  v27 = MEMORY[0x1E69E7CC0];

  sub_1DCB38954();
  for (i = 0; i != 160; i += 16)
  {
    v22 = *(inited + i + 32);
    v21 = *(inited + i + 40);
    v24 = *(v27 + 16);
    v23 = *(v27 + 24);

    if (v24 >= v23 >> 1)
    {
      sub_1DCB38954();
    }

    *(v27 + 16) = v24 + 1;
    v25 = v27 + 16 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
  }

  swift_setDeallocating();
  sub_1DCC657A8();
  result = sub_1DCDA58AC(v27);
  qword_1EDE4A100 = result;
  return result;
}

uint64_t DialogPhase.aceValue.getter()
{
  v1 = *v0;

  return v1;
}

SiriKitFlow::DialogPhase_optional __swiftcall DialogPhase.init(aceValue:)(SiriKitFlow::DialogPhase_optional aceValue)
{
  v2 = v1;
  if (aceValue.value.aceValue._object)
  {
    object = aceValue.value.aceValue._object;
    countAndFlagsBits = aceValue.value.aceValue._countAndFlagsBits;
    if (qword_1EDE4A0F8 != -1)
    {
      swift_once();
    }

    aceValue.value.aceValue._countAndFlagsBits = sub_1DCCE6C7C(countAndFlagsBits, object, qword_1EDE4A100);
    if (aceValue.value.aceValue._countAndFlagsBits)
    {
      *v2 = countAndFlagsBits;
      v2[1] = object;
      return aceValue;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  return aceValue;
}

uint64_t sub_1DCCE7B8C()
{
  v1 = *(v0 + 8);
  if (qword_1EDE4EBF8 != -1)
  {
    OUTLINED_FUNCTION_7_32(&qword_1EDE4EBF8);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC00);
  v3 = v3 && v2 == v1;
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC50 != -1)
  {
    OUTLINED_FUNCTION_9_28(&qword_1EDE4EC50);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC58);
  if (v3 && v4 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EBC8 != -1)
  {
    OUTLINED_FUNCTION_8_35(&qword_1EDE4EBC8);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EBD0);
  if (v3 && v6 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC10 != -1)
  {
    OUTLINED_FUNCTION_4_40(&qword_1EDE4EC10);
  }

  OUTLINED_FUNCTION_11_29(&xmmword_1EDE4EC18);
  if (v3 && v8 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC30 != -1)
  {
    OUTLINED_FUNCTION_3_46(&qword_1EDE4EC30);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC38);
  if (v3 && v10 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EBE8);
  if (v3 && v12 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EB90 != -1)
  {
    OUTLINED_FUNCTION_5_39(&qword_1EDE4EB90);
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EB98);
  if (v3 && v14 == v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();

  return sub_1DD0DF0AC();
}

uint64_t static DialogPhase.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t DialogPhase.hashValue.getter()
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCCE7E10(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

unint64_t sub_1DCCE7E5C()
{
  result = qword_1ECCA4308;
  if (!qword_1ECCA4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4308);
  }

  return result;
}

uint64_t sub_1DCCE7EB4(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(result + 16);
  v9 = (result + 32);
  if (v8)
  {
    while (1)
    {
      memcpy(__dst, v9, 0xD9uLL);
      memcpy(__src, v9, 0xD9uLL);
      sub_1DCCE4A84(__dst, v10);
      sub_1DCCE84A8(__src, a2, a3, a4);
      if (v4)
      {
        break;
      }

      memcpy(v10, __src, 0xD9uLL);
      result = sub_1DCCE4AE0(v10);
      v9 += 224;
      if (!--v8)
      {
        return result;
      }
    }

    memcpy(v10, __src, 0xD9uLL);
    return sub_1DCCE4AE0(v10);
  }

  return result;
}

Swift::Bool __swiftcall TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(Swift::Bool defaultBehavior)
{
  v2 = *(v1 + 56);
  if (v2 != 2)
  {
    return v2 != 1;
  }

  return defaultBehavior;
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_16_20(a1, a2, a3, a4, a5, a6, a8);

  v15 = sub_1DCB73048(a1, a2, a6, a4, a3);

  *(a8 + 16) = v15;
  *(a8 + 24) = a7;
  return result;
}

uint64_t TemplatingResult.behaviorAfterSpeaking.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DCB40994(v2, v3);
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_13_26();
  v12 = v11;
  OUTLINED_FUNCTION_16_20(v13, v14, v15, v16, v17, v18, v11);

  v19 = sub_1DCB73048(v8, v7, a6, a4, v6);

  v21 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = v19;
  *(v12 + 24) = v21;
  return result;
}

double TemplatingResult.init(templateIdentifier:speak:print:meta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = OUTLINED_FUNCTION_22_15(a1, a2, a3, a4);

  v13 = sub_1DCB73048(a1, a2, v12, a4, a3);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v13;
  *(a6 + 24) = a5;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  result = 0.0;
  *(a6 + 48) = xmmword_1DD0E1E40;
  *(a6 + 64) = v12;
  return result;
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v9 = v8;
  v11 = *v10;
  v12 = v10[1];
  v17 = OUTLINED_FUNCTION_22_15(v13, v14, v15, v16);

  v18 = sub_1DCB73048(v6, v5, v17, a4, v4);

  *v9 = v6;
  v9[1] = v5;
  v20 = MEMORY[0x1E69E7CC8];
  v9[2] = v18;
  v9[3] = v20;
  v9[4] = v4;
  v9[5] = a4;
  v9[6] = v11;
  v9[7] = v12;
  v9[8] = v17;
  return result;
}

uint64_t TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  OUTLINED_FUNCTION_18_20(a1, a2, a3, a4);
  v9 = MEMORY[0x1E69E7CC8];
  v5[2] = v10;
  v5[3] = v9;

  sub_1DCCE834C(v4);
  result = OUTLINED_FUNCTION_26_11();
  v5[8] = v6;
  v5[4] = v8;
  v5[5] = v7;
  return result;
}

uint64_t sub_1DCCE834C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CC0];
  sub_1DCCE7EB4(a1, &v4, &v3, &v2);
  return v4;
}

uint64_t TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:meta:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  OUTLINED_FUNCTION_18_20(a1, a2, a3, a4);
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  sub_1DCCE834C(v4);
  result = OUTLINED_FUNCTION_26_11();
  v5[8] = v6;
  v5[4] = v8;
  v5[5] = v7;
  return result;
}

SiriKitFlow::TemplatingText __swiftcall TemplatingText.init(text:speakableTextOverride:)(Swift::String text, Swift::String_optional speakableTextOverride)
{
  v2->value = text;
  v2[1] = speakableTextOverride;
  result.speakableTextOverride = speakableTextOverride;
  result.text = text;
  return result;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly)
{
  v5 = *content.text._countAndFlagsBits;
  v6 = *(content.text._countAndFlagsBits + 8);
  v7 = *(content.text._object + 2);
  v8 = *(content.text._object + 3);
  retstr->id = id;
  retstr->content.text._countAndFlagsBits = v5;
  retstr->content.text._object = v6;
  retstr->caption.value.speakableTextOverride.value._countAndFlagsBits = v7;
  retstr->caption.value.speakableTextOverride.value._object = v8;
  retstr->spokenOnly = content.speakableTextOverride.value._countAndFlagsBits;
  retstr->unfilteredContent.value.text._countAndFlagsBits = v5;
  retstr->unfilteredContent.value.text._object = v6;
  v9 = *(content.text._countAndFlagsBits + 16);
  retstr->unfilteredContent.value.speakableTextOverride = v9;
  v11 = *content.text._object;
  v10 = *content.text._object;
  retstr->content.speakableTextOverride = v9;
  retstr->caption.value.text = v10;
  retstr->unfilteredCaption.value.text = v10;
  retstr->unfilteredCaption.value.speakableTextOverride.value._countAndFlagsBits = v7;
  retstr->unfilteredCaption.value.speakableTextOverride.value._object = v8;
  retstr->isApprovedForGrading = 0;
  retstr->redactedCaption.value.speakableTextOverride = 0u;
  retstr->redactedCaption.value.text = 0u;
  retstr->redactedContent.value.speakableTextOverride = 0u;
  retstr->redactedContent.value.text = 0u;

  sub_1DCB40A04(v11, *(&v11 + 1), v7, v8);
}

uint64_t sub_1DCCE84A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  v10 = a1[5];
  v24 = a1[4];
  v11 = a1[7];
  v25 = a1[6];
  v26 = a1[2];

  sub_1DCD4B7BC();
  v12 = *(*a2 + 16);
  sub_1DCBBF6CC(v12);
  v13 = *a2;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  if (!v11)
  {

    v15 = v26;
    v16 = v26;
    v11 = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  v16 = v25;
  v15 = v26;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = v24;
  v9 = v10;
LABEL_6:

  sub_1DCD4B7BC();
  v17 = *(*a3 + 16);
  sub_1DCBBF6CC(v17);
  v18 = *a3;
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = v16;
  *(v19 + 40) = v11;
  sub_1DCD4B7BC();
  v20 = *(*a4 + 16);
  result = sub_1DCBBF6CC(v20);
  v22 = *a4;
  *(v22 + 16) = v20 + 1;
  v23 = v22 + 16 * v20;
  *(v23 + 32) = v15;
  *(v23 + 40) = v9;
  return result;
}

double TemplatingSection.content.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:unfilteredContent:unfilteredCaption:redactedContent:redactedCaption:isApprovedForGrading:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly, SiriKitFlow::TemplatingText_optional unfilteredContent, SiriKitFlow::TemplatingText_optional unfilteredCaption, SiriKitFlow::TemplatingText_optional redactedContent, SiriKitFlow::TemplatingText_optional redactedCaption, Swift::Bool isApprovedForGrading)
{
  OUTLINED_FUNCTION_10_28(content.text._countAndFlagsBits, content.text._object, content.speakableTextOverride.value._object, caption.value.text._countAndFlagsBits, retstr);
  *(v10 + 136) = v11;
  v13 = v12[1];
  *(v10 + 152) = *v12;
  *(v10 + 168) = v13;
  v15 = v14[1];
  *(v10 + 184) = *v14;
  v17 = *v16;
  v18 = v16[1];
  *v10 = v19;
  *(v10 + 8) = v20;
  *(v10 + 16) = v17;
  *(v10 + 24) = v18;
  *(v10 + 80) = v21;
  *(v10 + 200) = v15;
  *(v10 + 216) = caption.value.speakableTextOverride.value._object;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:unfilteredContent:unfilteredCaption:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly, SiriKitFlow::TemplatingText_optional unfilteredContent, SiriKitFlow::TemplatingText_optional unfilteredCaption)
{
  OUTLINED_FUNCTION_10_28(content.text._countAndFlagsBits, content.text._object, content.speakableTextOverride.value._object, caption.value.text._countAndFlagsBits, retstr);
  v8 = *v7;
  v9 = v7[1];
  *v12 = v10;
  *(v12 + 8) = v11;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 80) = v13;
  *(v12 + 136) = v14;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:unfilteredContent:unfilteredCaption:isApprovedForGrading:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly, SiriKitFlow::TemplatingText_optional unfilteredContent, SiriKitFlow::TemplatingText_optional unfilteredCaption, Swift::Bool isApprovedForGrading)
{
  OUTLINED_FUNCTION_10_28(content.text._countAndFlagsBits, content.text._object, content.speakableTextOverride.value._object, caption.value.text._countAndFlagsBits, retstr);
  v9 = *v8;
  v10 = v8[1];
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 80) = v14;
  *(v13 + 136) = v15;
  *(v13 + 200) = 0u;
  *(v13 + 184) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 216) = v16;
}

uint64_t TemplatingSection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v10 = *(v0 + 80);
  v11 = *(v0 + 216);
  sub_1DCB40A04(v0[6], v0[7], v0[8], v0[9]);
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1, v2);
  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780](0xD00000000000001DLL);
  v3 = TemplatingText.description.getter();
  MEMORY[0x1E12A6780](v3);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780](0xD00000000000001DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4318, &qword_1DD0EBB50);
  v4 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v4);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  if (v10)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v10)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v5, v6);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  if (v11)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v11)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v7, v8);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCCE8974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E4F6E656B6F7073 && a2 == 0xEA0000000000796CLL;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD119420 == a2;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD119440 == a2;
            if (v10 || (sub_1DD0DF0AC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6465746361646572 && a2 == 0xEF746E65746E6F43;
              if (v11 || (sub_1DD0DF0AC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465746361646572 && a2 == 0xEF6E6F6974706143;
                if (v12 || (sub_1DD0DF0AC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000014 && 0x80000001DD119460 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD0DF0AC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1DCCE8C68(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x6E6F6974706163;
      break;
    case 3:
      result = 0x6E4F6E656B6F7073;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 7:
      result = 0x6465746361646572;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCCE8D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE8974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCE8D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCE8C60();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCE8DC4(uint64_t a1)
{
  v2 = sub_1DCCEA108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCE8E00(uint64_t a1)
{
  v2 = sub_1DCCEA108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatingSection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v92 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4320, &qword_1DD0EBB58);
  OUTLINED_FUNCTION_9();
  v28 = v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v68 - v31;
  v33 = *(v23 + 24);
  v89 = *(v23 + 16);
  v90 = v33;
  v34 = *(v23 + 32);
  v91 = *(v23 + 40);
  v35 = *(v23 + 56);
  v87 = *(v23 + 48);
  v88 = v34;
  v36 = *(v23 + 64);
  v85 = *(v23 + 72);
  v86 = v35;
  v37 = *(v23 + 96);
  v80 = *(v23 + 88);
  v81 = v37;
  v38 = *(v23 + 112);
  v83 = *(v23 + 104);
  v84 = v36;
  v82 = v38;
  v39 = *(v23 + 128);
  v76 = *(v23 + 120);
  v77 = v39;
  v40 = *(v23 + 136);
  v78 = *(v23 + 144);
  v79 = v40;
  v41 = *(v23 + 160);
  v72 = *(v23 + 152);
  v73 = v41;
  v42 = *(v23 + 176);
  v75 = *(v23 + 168);
  v74 = v42;
  v43 = *(v23 + 192);
  v68 = *(v23 + 184);
  v69 = v43;
  v44 = *(v23 + 208);
  v71 = *(v23 + 200);
  v70 = v44;
  v45 = *(v23 + 216);
  v46 = v26[3];
  v47 = v26;
  v49 = v48;
  __swift_project_boxed_opaque_existential_1(v47, v46);
  sub_1DCCEA108();
  sub_1DD0DF24C();
  LOBYTE(v93) = 0;
  v50 = v92;
  sub_1DD0DEFBC();
  if (!v50)
  {
    v52 = v86;
    v51 = v87;
    LODWORD(v92) = v45;
    v93 = v89;
    v94 = v90;
    v95 = v88;
    v96 = v91;
    sub_1DCCEA15C();

    sub_1DD0DEFFC();

    v93 = v51;
    v94 = v52;
    v95 = v84;
    v96 = v85;
    sub_1DCB40A04(v51, v52, v84, v85);
    OUTLINED_FUNCTION_6_35(v53, v54, v55, &type metadata for TemplatingText);
    OUTLINED_FUNCTION_21_12();
    LOBYTE(v93) = 3;
    sub_1DD0DEFCC();
    v93 = v80;
    v94 = v81;
    v95 = v83;
    v96 = v82;
    sub_1DCB40A04(v80, v81, v83, v82);
    OUTLINED_FUNCTION_6_35(v56, v57, v58, &type metadata for TemplatingText);
    OUTLINED_FUNCTION_21_12();
    v93 = v76;
    v94 = v77;
    v95 = v79;
    v96 = v78;
    sub_1DCB40A04(v76, v77, v79, v78);
    OUTLINED_FUNCTION_6_35(v59, v60, v61, &type metadata for TemplatingText);
    OUTLINED_FUNCTION_21_12();
    v93 = v72;
    v94 = v73;
    v95 = v75;
    v96 = v74;
    sub_1DCB40A04(v72, v73, v75, v74);
    OUTLINED_FUNCTION_6_35(v62, v63, v64, &type metadata for TemplatingText);
    OUTLINED_FUNCTION_21_12();
    v93 = v68;
    v94 = v69;
    v95 = v71;
    v96 = v70;
    sub_1DCB40A04(v68, v69, v71, v70);
    OUTLINED_FUNCTION_6_35(v65, v66, v67, &type metadata for TemplatingText);
    OUTLINED_FUNCTION_21_12();
    LOBYTE(v93) = 8;
    sub_1DD0DEFCC();
  }

  (*(v28 + 8))(v32, v49);
  OUTLINED_FUNCTION_19_19();
}

void TemplatingSection.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4338, &qword_1DD0EBB60);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCCEA108();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v40) = 0;
    OUTLINED_FUNCTION_14_29();
    v7 = sub_1DD0DEF0C();
    v37 = v8;
    sub_1DCCEA1F4();
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEF4C();
    v15 = v7;
    v9 = v40;
    v35 = v41;
    v36 = v43;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v14 = v42;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    LOBYTE(v40) = 3;
    OUTLINED_FUNCTION_14_29();
    LOBYTE(v7) = sub_1DD0DEF1C();
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v23 = v40;
    v24 = v41;
    v25 = v42;
    v26 = v43;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v21 = v40;
    v22 = v41;
    v20 = v42;
    v13 = v43;
    LOBYTE(v39[0]) = 7;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v18 = v41;
    v19 = v40;
    v16 = v43;
    v17 = v42;
    OUTLINED_FUNCTION_14_29();
    v10 = sub_1DD0DEF1C();
    v11 = OUTLINED_FUNCTION_4_41();
    v12(v11);
    v39[0] = v15;
    v39[1] = v37;
    v39[2] = v9;
    v39[3] = v35;
    v39[4] = v14;
    v39[5] = v36;
    v39[6] = v31;
    v39[7] = v32;
    v39[8] = v33;
    v39[9] = v34;
    LOBYTE(v39[10]) = v7 & 1;
    v39[11] = v27;
    v39[12] = v28;
    v39[13] = v29;
    v39[14] = v30;
    v39[15] = v23;
    v39[16] = v24;
    v39[17] = v25;
    v39[18] = v26;
    v39[19] = v21;
    v39[20] = v22;
    v39[21] = v20;
    v39[22] = v13;
    v39[23] = v19;
    v39[24] = v18;
    v39[25] = v17;
    v39[26] = v16;
    LOBYTE(v39[27]) = v10 & 1;
    memcpy(v4, v39, 0xD9uLL);
    sub_1DCCE4A84(v39, &v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v40 = v15;
    v41 = v37;
    v42 = v9;
    v43 = v35;
    v44 = v14;
    v45 = v36;
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v49 = v34;
    v50 = v7 & 1;
    v51 = v27;
    v52 = v28;
    v53 = v29;
    v54 = v30;
    v55 = v23;
    v56 = v24;
    v57 = v25;
    v58 = v26;
    v59 = v21;
    v60 = v22;
    v61 = v20;
    v62 = v13;
    v63 = v19;
    v64 = v18;
    v65 = v17;
    v66 = v16;
    v67 = v10 & 1;
    sub_1DCCE4AE0(&v40);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t TemplatingText.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD1193B0);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD1193D0);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7104878;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1E12A6780](v5, v6);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCCE9948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DD119480 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCCE9A18(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1DCCE9A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE9948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCE9A7C(uint64_t a1)
{
  v2 = sub_1DCCEA248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCE9AB8(uint64_t a1)
{
  v2 = sub_1DCCEA248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatingText.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4348, &qword_1DD0EBB68);
  OUTLINED_FUNCTION_9();
  v35 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v34 - v31;
  v33 = *(v23 + 16);
  v34[1] = *(v23 + 24);
  v34[2] = v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DCCEA248();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v24)
  {
    sub_1DD0DEF8C();
  }

  (*(v35 + 8))(v32, v27);
  OUTLINED_FUNCTION_19_19();
}

void TemplatingText.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4358, &qword_1DD0EBB70);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_15_3();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DCCEA248();
  sub_1DD0DF23C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v34 = sub_1DD0DEF0C();
    v36 = v35;
    v37 = sub_1DD0DEEDC();
    v39 = v38;
    v40 = v37;
    (*(v31 + 8))(v24, v29);
    *v28 = v34;
    v28[1] = v36;
    v28[2] = v40;
    v28[3] = v39;

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCCE9E28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E657473696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001DD1194A0 == a2;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x42746C7561666564 && a2 == 0xEF726F6976616865;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4C646E41676E6964 && a2 == 0xED00006E65747369)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DCCE9F9C(char a1)
{
  result = 0x6E657473696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x42746C7561666564;
      break;
    case 3:
      result = 0x4C646E41676E6964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCCEA044(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449646E756F73 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

unint64_t sub_1DCCEA108()
{
  result = qword_1ECCA4328;
  if (!qword_1ECCA4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4328);
  }

  return result;
}

unint64_t sub_1DCCEA15C()
{
  result = qword_1ECCA4330;
  if (!qword_1ECCA4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4330);
  }

  return result;
}

uint64_t sub_1DCCEA1B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DCCEA1F4()
{
  result = qword_1ECCA4340;
  if (!qword_1ECCA4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4340);
  }

  return result;
}

unint64_t sub_1DCCEA248()
{
  result = qword_1ECCA4350;
  if (!qword_1ECCA4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4350);
  }

  return result;
}

uint64_t sub_1DCCEA2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE9E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCEA2CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCE9F94();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCEA2F4(uint64_t a1)
{
  v2 = sub_1DCCEA9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA330(uint64_t a1)
{
  v2 = sub_1DCCEA9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA38C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_15();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DCCEA3B8(uint64_t a1)
{
  v2 = sub_1DCCEAAD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA3F4(uint64_t a1)
{
  v2 = sub_1DCCEAAD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA430(uint64_t a1)
{
  v2 = sub_1DCCEAA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA46C(uint64_t a1)
{
  v2 = sub_1DCCEAA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCEA044(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCCEA4DC(uint64_t a1)
{
  v2 = sub_1DCCEAA28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA518(uint64_t a1)
{
  v2 = sub_1DCCEAA28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA554(uint64_t a1)
{
  v2 = sub_1DCCEAB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA590(uint64_t a1)
{
  v2 = sub_1DCCEAB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BehaviorAfterSpeaking.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v27;
  a24 = v28;
  v74 = v25;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4360, &qword_1DD0EBB78);
  OUTLINED_FUNCTION_9();
  v70 = v32;
  v71 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_34_0();
  v69 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4368, &qword_1DD0EBB80);
  OUTLINED_FUNCTION_9();
  v67 = v37;
  v68 = v36;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_34_0();
  v66 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4370, &qword_1DD0EBB88);
  OUTLINED_FUNCTION_9();
  v64 = v42;
  v65 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v62 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4378, &qword_1DD0EBB90);
  OUTLINED_FUNCTION_9();
  v63 = v48;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4380, &qword_1DD0EBB98);
  OUTLINED_FUNCTION_9();
  v72 = v52;
  v73 = v51;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = v62 - v55;
  v57 = v24[1];
  v62[1] = *v24;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_1DCCEA9D4();
  sub_1DD0DF24C();
  if (v57)
  {
    if (v57 == 1)
    {
      a12 = 1;
      sub_1DCCEAAD0();
      OUTLINED_FUNCTION_11_12(&type metadata for BehaviorAfterSpeaking.ContinueWithoutListeningCodingKeys, &a12);
      (*(v64 + 8))(v46, v65);
    }

    else
    {
      if (v57 != 2)
      {
        a14 = 3;
        sub_1DCCEAA28();
        v59 = v69;
        v60 = v73;
        sub_1DD0DEF7C();
        v61 = v71;
        sub_1DD0DEFBC();
        (*(v70 + 8))(v59, v61);
        (*(v72 + 8))(v56, v60);
        goto LABEL_9;
      }

      a13 = 2;
      sub_1DCCEAA7C();
      v58 = v66;
      OUTLINED_FUNCTION_11_12(&type metadata for BehaviorAfterSpeaking.DefaultBehaviorCodingKeys, &a13);
      (*(v67 + 8))(v58, v68);
    }
  }

  else
  {
    a11 = 0;
    sub_1DCCEAB24();
    OUTLINED_FUNCTION_11_12(&type metadata for BehaviorAfterSpeaking.ListenCodingKeys, &a11);
    (*(v63 + 8))(v26, v47);
  }

  (*(v72 + 8))(v56, v57);
LABEL_9:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCCEA9D4()
{
  result = qword_1ECCA4388;
  if (!qword_1ECCA4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4388);
  }

  return result;
}

unint64_t sub_1DCCEAA28()
{
  result = qword_1ECCA4390;
  if (!qword_1ECCA4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4390);
  }

  return result;
}

unint64_t sub_1DCCEAA7C()
{
  result = qword_1ECCA4398;
  if (!qword_1ECCA4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4398);
  }

  return result;
}

unint64_t sub_1DCCEAAD0()
{
  result = qword_1ECCA43A0;
  if (!qword_1ECCA43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43A0);
  }

  return result;
}

unint64_t sub_1DCCEAB24()
{
  result = qword_1ECCA43A8;
  if (!qword_1ECCA43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43A8);
  }

  return result;
}

void BehaviorAfterSpeaking.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v26;
  a24 = v27;
  v104 = v24;
  v29 = v28;
  v100 = v30;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43B0, &qword_1DD0EBBA0);
  OUTLINED_FUNCTION_9();
  v98 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  v103 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43B8, &qword_1DD0EBBA8);
  OUTLINED_FUNCTION_9();
  v96 = v36;
  v97 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_34_0();
  v99 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43C0, &qword_1DD0EBBB0);
  OUTLINED_FUNCTION_9();
  v94 = v41;
  v95 = v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v89 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43C8, &qword_1DD0EBBB8);
  OUTLINED_FUNCTION_9();
  v93 = v47;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v89 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D0, &unk_1DD0EBBC0);
  OUTLINED_FUNCTION_9();
  v101 = v53;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_15_3();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1DCCEA9D4();
  v56 = v104;
  sub_1DD0DF23C();
  if (v56)
  {
    goto LABEL_8;
  }

  v90 = v46;
  v91 = v51;
  v92 = v45;
  v104 = v29;
  v57 = sub_1DD0DEF5C();
  sub_1DCB52BCC(v57, 0);
  if (v60 == v61 >> 1)
  {
LABEL_7:
    v72 = sub_1DD0DECAC();
    swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v74 = &type metadata for BehaviorAfterSpeaking;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x1E69E6AF8], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = OUTLINED_FUNCTION_3_47();
    v76(v75);
    v29 = v104;
LABEL_8:
    v77 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v60 < (v61 >> 1))
  {
    v89 = *(v59 + v60);
    sub_1DCB52B50(v60 + 1, v61 >> 1, v58, v59, v60, v61);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      v66 = v100;
      switch(v89)
      {
        case 1:
          a12 = 1;
          sub_1DCCEAAD0();
          v81 = v92;
          OUTLINED_FUNCTION_9_29(&type metadata for BehaviorAfterSpeaking.ContinueWithoutListeningCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v94 + 8))(v81, v95);
          v84 = OUTLINED_FUNCTION_3_47();
          v85(v84);
          v70 = 0;
          v71 = 1;
          break;
        case 2:
          a13 = 2;
          sub_1DCCEAA7C();
          v78 = v99;
          OUTLINED_FUNCTION_9_29(&type metadata for BehaviorAfterSpeaking.DefaultBehaviorCodingKeys, &a13);
          swift_unknownObjectRelease();
          (*(v96 + 8))(v78, v97);
          v79 = OUTLINED_FUNCTION_3_47();
          v80(v79);
          v70 = 0;
          v71 = 2;
          break;
        case 3:
          a14 = 3;
          sub_1DCCEAA28();
          OUTLINED_FUNCTION_9_29(&type metadata for BehaviorAfterSpeaking.DingAndListenCodingKeys, &a14);
          v82 = sub_1DD0DEF0C();
          v83 = v101;
          v70 = v82;
          v71 = v86;
          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_24_16();
          v88(v87);
          (*(v83 + 8))(v25, v52);
          break;
        default:
          a11 = 0;
          sub_1DCCEAB24();
          v67 = v91;
          OUTLINED_FUNCTION_9_29(&type metadata for BehaviorAfterSpeaking.ListenCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v93 + 8))(v67, v90);
          v68 = OUTLINED_FUNCTION_3_47();
          v69(v68);
          v70 = 0;
          v71 = 0;
          break;
      }

      *v66 = v70;
      v66[1] = v71;
      v77 = v104;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t DialogTemplating.makeSuggestAppDialog(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v7 = 0;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = 0;
  return (a3)(v4, a2);
}

void *assignWithCopy for TemplatingResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  v4 = a2[7];
  if (a1[7] >= 3uLL)
  {
    if (v4 >= 3)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];

      goto LABEL_8;
    }

    sub_1DCCEB41C((a1 + 6));
    goto LABEL_6;
  }

  if (v4 < 3)
  {
LABEL_6:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_8;
  }

  a1[6] = a2[6];
  a1[7] = a2[7];

LABEL_8:
  a1[8] = a2[8];

  return a1;
}

uint64_t sub_1DCCEB41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43E0, &unk_1DD0EBD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *assignWithTake for TemplatingResult(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  if (a1[7] >= 3uLL)
  {
    v5 = a2[7];
    if (v5 >= 3)
    {
      a1[6] = a2[6];
      a1[7] = v5;

      goto LABEL_6;
    }

    sub_1DCCEB41C((a1 + 6));
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_6:
  a1[8] = a2[8];

  return a1;
}

uint64_t getEnumTagSinglePayload for TemplatingResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for TemplatingResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TemplatingSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 48);
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
  }

  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v7)
    {
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 88);
      v8 = *(a2 + 104);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v9 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if (v10)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);

      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 120);
      v11 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v11;
    }
  }

  else if (v10)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
  }

  else
  {
    v12 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v12;
  }

  v13 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (v13)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);

      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 152);
      v14 = *(a2 + 168);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = v14;
    }
  }

  else if (v13)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v15 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v15;
  }

  v16 = *(a2 + 192);
  if (*(a1 + 192))
  {
    if (v16)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);

      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 184);
      v17 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v17;
    }
  }

  else if (v16)
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
  }

  else
  {
    v18 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v18;
  }

  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t assignWithTake for TemplatingSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  if (*(a1 + 56))
  {
    v7 = *(a2 + 56);
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;

      v8 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v8;

      goto LABEL_6;
    }

    sub_1DCCEB9D4(a1 + 48);
  }

  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    v10 = *(a2 + 96);
    if (v10)
    {
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v10;

      v11 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v11;

      goto LABEL_11;
    }

    sub_1DCCEB9D4(a1 + 88);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_11:
  if (*(a1 + 128))
  {
    v12 = *(a2 + 128);
    if (v12)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v12;

      v13 = *(a2 + 144);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = v13;

      goto LABEL_16;
    }

    sub_1DCCEB9D4(a1 + 120);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
LABEL_16:
  if (*(a1 + 160))
  {
    v14 = *(a2 + 160);
    if (v14)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = v14;

      v15 = *(a2 + 176);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = v15;

      goto LABEL_21;
    }

    sub_1DCCEB9D4(a1 + 152);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_21:
  if (!*(a1 + 192))
  {
LABEL_25:
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    goto LABEL_26;
  }

  v16 = *(a2 + 192);
  if (!v16)
  {
    sub_1DCCEB9D4(a1 + 184);
    goto LABEL_25;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v16;

  v17 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v17;

LABEL_26:
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemplatingSection(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
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

uint64_t storeEnumTagSinglePayload for TemplatingSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeWithCopy for TemplatingText(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TemplatingText(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for TemplatingText(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t storeEnumTagSinglePayload for TemplatingText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t destroy for BehaviorAfterSpeaking(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t sub_1DCCEBDE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = *a2;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
  }

  return a1;
}

void *assignWithCopy for BehaviorAfterSpeaking(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithTake for BehaviorAfterSpeaking(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorAfterSpeaking(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BehaviorAfterSpeaking(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DCCEBFE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DCCEBFF8(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for SiriKitConfirmationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BehaviorAfterSpeaking.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BehaviorAfterSpeaking.DingAndListenCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TemplatingText.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TemplatingSection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemplatingSection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCCEC7F8()
{
  result = qword_1ECCA43E8;
  if (!qword_1ECCA43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43E8);
  }

  return result;
}

unint64_t sub_1DCCEC850()
{
  result = qword_1ECCA43F0;
  if (!qword_1ECCA43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43F0);
  }

  return result;
}

unint64_t sub_1DCCEC8A8()
{
  result = qword_1ECCA43F8;
  if (!qword_1ECCA43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43F8);
  }

  return result;
}

unint64_t sub_1DCCEC900()
{
  result = qword_1ECCA4400;
  if (!qword_1ECCA4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4400);
  }

  return result;
}

unint64_t sub_1DCCEC958()
{
  result = qword_1ECCA4408;
  if (!qword_1ECCA4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4408);
  }

  return result;
}

unint64_t sub_1DCCEC9B0()
{
  result = qword_1ECCA4410;
  if (!qword_1ECCA4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4410);
  }

  return result;
}

unint64_t sub_1DCCECA08()
{
  result = qword_1ECCA4418;
  if (!qword_1ECCA4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4418);
  }

  return result;
}

unint64_t sub_1DCCECA60()
{
  result = qword_1ECCA4420;
  if (!qword_1ECCA4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4420);
  }

  return result;
}

unint64_t sub_1DCCECAB8()
{
  result = qword_1ECCA4428;
  if (!qword_1ECCA4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4428);
  }

  return result;
}

unint64_t sub_1DCCECB10()
{
  result = qword_1ECCA4430;
  if (!qword_1ECCA4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4430);
  }

  return result;
}

unint64_t sub_1DCCECB68()
{
  result = qword_1ECCA4438;
  if (!qword_1ECCA4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4438);
  }

  return result;
}

unint64_t sub_1DCCECBC0()
{
  result = qword_1ECCA4440;
  if (!qword_1ECCA4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4440);
  }

  return result;
}

unint64_t sub_1DCCECC18()
{
  result = qword_1ECCA4448;
  if (!qword_1ECCA4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4448);
  }

  return result;
}

unint64_t sub_1DCCECC70()
{
  result = qword_1ECCA4450;
  if (!qword_1ECCA4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4450);
  }

  return result;
}

unint64_t sub_1DCCECCC8()
{
  result = qword_1ECCA4458;
  if (!qword_1ECCA4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4458);
  }

  return result;
}

unint64_t sub_1DCCECD20()
{
  result = qword_1ECCA4460;
  if (!qword_1ECCA4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4460);
  }

  return result;
}

unint64_t sub_1DCCECD78()
{
  result = qword_1ECCA4468;
  if (!qword_1ECCA4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4468);
  }

  return result;
}

unint64_t sub_1DCCECDD0()
{
  result = qword_1ECCA4470;
  if (!qword_1ECCA4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4470);
  }

  return result;
}

double DialogSection.content.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

void DialogSection.caption.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1DCB40A04(v2, v3, v4, v5);
}

void __swiftcall DialogSection.init(id:content:caption:spokenOnly:)(SiriKitFlow::DialogSection *__return_ptr retstr, Swift::String id, SiriKitFlow::DialogText content, SiriKitFlow::DialogText_optional caption, Swift::Bool spokenOnly)
{
  v5 = *content.text._object;
  v6 = *(content.text._object + 1);
  retstr->content.speakableTextOverride = *(content.text._countAndFlagsBits + 16);
  retstr->caption.value.text = v5;
  v7 = *content.text._countAndFlagsBits;
  v8 = *(content.text._countAndFlagsBits + 8);
  retstr->id = id;
  retstr->content.text._countAndFlagsBits = v7;
  retstr->content.text._object = v8;
  retstr->caption.value.speakableTextOverride = v6;
  retstr->spokenOnly = content.speakableTextOverride.value._countAndFlagsBits;
}

uint64_t VisualResult.data.getter()
{
  v0 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E80(v0, v1);
  return OUTLINED_FUNCTION_33_1();
}

double DialogVisualResult.dialog.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DCCECFA8(v2, v3, v4, v5);
}

double sub_1DCCECFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void DialogVisualResult.visual.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1DCCED00C(v2, v3, v4, v5);
}

void sub_1DCCED00C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1DCC91E80(a3, a4);
  }
}

__n128 DialogVisualResult.init(dialog:visual:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  result = *a2;
  v5 = *(a2 + 16);
  a3[2] = *a2;
  a3[3] = v5;
  return result;
}

uint64_t destroy for DialogResult()
{
}

void *initializeWithCopy for DialogResult(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for DialogResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for DialogResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for DialogSection(uint64_t a1)
{

  result = *(a1 + 56);
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for DialogSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);

  if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v8 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v8;
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for DialogSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCED420(a1 + 48);
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for DialogSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 56);
  if (!v7)
  {
    sub_1DCCED420(a1 + 48);
LABEL_5:
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    goto LABEL_6;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;

LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogSection(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for DialogSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for VisualResult(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return sub_1DCB21A14(v2, v3);
}

void *initializeWithCopy for VisualResult(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  v5 = a2[3];

  sub_1DCC91E80(v4, v5);
  a1[2] = v4;
  a1[3] = v5;
  return a1;
}

void *assignWithCopy for VisualResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v5 = a2[2];
  v4 = a2[3];
  sub_1DCC91E80(v5, v4);
  v6 = a1[2];
  v7 = a1[3];
  a1[2] = v5;
  a1[3] = v4;
  sub_1DCB21A14(v6, v7);
  return a1;
}

void *assignWithTake for VisualResult(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  v5 = a1[2];
  v6 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  sub_1DCB21A14(v5, v6);
  return a1;
}

uint64_t destroy for DialogVisualResult(void *a1)
{
  if (a1[1])
  {
  }

  result = a1[5];
  if (result)
  {

    v3 = a1[6];
    v4 = a1[7];

    return sub_1DCB21A14(v3, v4);
  }

  return result;
}

void *initializeWithCopy for DialogVisualResult(void *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    *a1 = *a2;
    a1[1] = v4;
    v5 = a2[3];
    a1[2] = a2[2];
    a1[3] = v5;
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
  }

  v7 = a2[5];
  if (v7)
  {
    a1[4] = a2[4];
    a1[5] = v7;
    v9 = a2[6];
    v8 = a2[7];

    sub_1DCC91E80(v9, v8);
    a1[6] = v9;
    a1[7] = v8;
  }

  else
  {
    v10 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v10;
  }

  return a1;
}

void *assignWithCopy for DialogVisualResult(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      a1[2] = a2[2];

      a1[3] = a2[3];
    }

    else
    {
      sub_1DCCED974(a1);
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
  }

  v7 = a2[5];
  if (a1[5])
  {
    if (v7)
    {
      a1[4] = a2[4];
      a1[5] = a2[5];

      v9 = a2[6];
      v8 = a2[7];
      sub_1DCC91E80(v9, v8);
      v10 = a1[6];
      v11 = a1[7];
      a1[6] = v9;
      a1[7] = v8;
      sub_1DCB21A14(v10, v11);
    }

    else
    {
      sub_1DCCED9A4((a1 + 4));
      v14 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v14;
    }
  }

  else if (v7)
  {
    a1[4] = a2[4];
    a1[5] = a2[5];
    v13 = a2[6];
    v12 = a2[7];

    sub_1DCC91E80(v13, v12);
    a1[6] = v13;
    a1[7] = v12;
  }

  else
  {
    v15 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v15;
  }

  return a1;
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

uint64_t assignWithTake for DialogVisualResult(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = v4;

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    sub_1DCCED974(a1);
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
LABEL_6:
  if (!*(a1 + 40))
  {
LABEL_10:
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    return a1;
  }

  v6 = *(a2 + 40);
  if (!v6)
  {
    sub_1DCCED9A4(a1 + 32);
    goto LABEL_10;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  sub_1DCB21A14(v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogVisualResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogVisualResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCCEDB74(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCEDB94, 0, 0);
}

uint64_t sub_1DCCEDB94()
{
  v16 = v0;
  v1 = v0[6];
  type metadata accessor for ParameterWrapper();
  *(swift_initStackObject() + 16) = v1;

  OUTLINED_FUNCTION_0_41();
  sub_1DD0B3E1C();
  v3 = v2;
  v5 = v4;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DCB10E9C(v3, v5, &v15);
    _os_log_impl(&dword_1DCAFC000, v7, v8, "Sending direct invocation %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  v11 = v0[5];
  v12 = sub_1DCC6A1F8(0x6174614472657375, 0xE800000000000000);

  *v11 = v3;
  *(v11 + 8) = v5;
  *(v11 + 16) = v12;
  *(v11 + 40) = 0;
  v13 = v0[1];

  return v13();
}

uint64_t sub_1DCCEDDC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCCEDB74(a1, a2);
}

uint64_t sub_1DCCEDE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  swift_storeEnumTagMultiPayload();
  v11 = qword_1EDE4F518;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1DCD3B154();
  sub_1DCB284D8(v10, type metadata accessor for Parse);
  result = 0;
  if (v12)
  {
    result = type metadata accessor for AnyFlow();
    v14 = &protocol witness table for AnyFlow;
  }

  else
  {
    v14 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v12;
  a4[3] = result;
  a4[4] = v14;
  return result;
}

uint64_t sub_1DCCEDFD0()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[19] = type metadata accessor for Parse(0);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for Input(0);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCCEE090, 0, 0);
}

uint64_t sub_1DCCEE090()
{
  v1 = v0[18];
  if (*(v1 + 96) == 1)
  {
    sub_1DCCEDE68(*(v1 + 32), *(v1 + 40), *(v1 + 48), v0 + 7);
    if (!v0[10])
    {
      sub_1DCCEEB48((v0 + 7));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v18 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v18, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v3 = v0[21];
    v2 = v0[22];
    v4 = v0[20];
    sub_1DCB18FF0((v0 + 7), (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = *(v1 + 32);
    v0[23] = v7;
    v8 = *(v1 + 40);
    v0[24] = v8;
    v9 = *(v1 + 48);
    *v4 = v7;
    v4[1] = v8;
    v4[2] = v9;
    swift_storeEnumTagMultiPayload();
    v10 = v2 + v3[7];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    sub_1DCB29E58(v4, v2 + v3[5]);
    *(v2 + v3[6]) = MEMORY[0x1E69E7CC0];

    sub_1DD0DB03C();
    sub_1DCB284D8(v4, type metadata accessor for Parse);
    *(v2 + v3[8]) = 0;
    v20 = (*(v6 + 24) + **(v6 + 24));
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_1DCCEE4FC;
    v12 = v0[22];

    return v20(v12, v5, v6);
  }

  else
  {
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
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Invocation sent exiting as complete.", v17, 2u);
      MEMORY[0x1E12A8390](v17, -1, -1);
    }

    static ExecuteResponse.complete()();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1DCCEE4FC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 176);
  *(*v0 + 208) = v2;

  sub_1DCB284D8(v1, type metadata accessor for Input);

  return MEMORY[0x1EEE6DFA0](sub_1DCCEE62C, 0, 0);
}

void sub_1DCCEE62C()
{
  v4 = v0;
  if (*(v0 + 208) == 1)
  {
    *(*(v0 + 144) + 96) = 0;
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    sub_1DCC05848(v1, v2, (v0 + 96));
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCCEE894(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1DCCEE8D4(&v2);
}

void sub_1DCCEE8D4(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Child flow returned with an exitValue.", v8, 2u);
    OUTLINED_FUNCTION_37();
  }

  v9 = *(v2 + 16);
  *(v2 + 16) = v3;
  v10 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1DCC5F868(v3, v4);

  sub_1DCC5F884(v9, v10);
}

uint64_t sub_1DCCEE9D8()
{
  sub_1DCC5F884(*(v0 + 16), *(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCCEEA1C()
{
  sub_1DCCEE9D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCEEA98()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBFA404;

  return sub_1DCCEDFD0();
}

void sub_1DCCEEB30(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  *a1 = v3;
  v4 = *(v2 + 24);
  *(a1 + 8) = v4;
  sub_1DCC5F868(v3, v4);
}

uint64_t sub_1DCCEEB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4478, &unk_1DD0EC670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationExecutingFlow.DirectInvocationFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCCEEC9C()
{
  result = qword_1ECCA4480[0];
  if (!qword_1ECCA4480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA4480);
  }

  return result;
}

void *sub_1DCCEECF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Input(0);
  sub_1DCB29E58(a1 + *(v8 + 20), v7);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = *v7;
    v9 = v7[1];
    v80 = v7[2];
    v81 = v9;
    v11 = a2 + 64;
    v12 = 1 << *(a2 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a2 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v84 = 0;
    *&v17 = 136315138;
    v70 = v17;
    *&v17 = 136315394;
    v77 = v17;
    *&v17 = 136315650;
    v78 = v17;
    v82 = v10;
    v73 = v15;
    v72 = a2;
    v71 = a2 + 64;
LABEL_5:
    while (v14)
    {
      v18 = v14;
      v19 = v16;
LABEL_10:
      v75 = (v18 - 1) & v18;
      v74 = v19;
      v20 = __clz(__rbit64(v18)) | (v19 << 6);
      v21 = *(a2 + 56);
      v22 = (*(a2 + 48) + 16 * v20);
      v23 = v22[1];
      v79 = *v22;
      v24 = *(v21 + 8 * v20);
      v87 = type metadata accessor for ParameterWrapper();
      inited = swift_initStackObject();
      *(inited + 16) = v24;

      v76 = inited;
      v26 = sub_1DCC6A478(0x697461636F766E69, 0xEB00000000736E6FLL, MEMORY[0x1E69E7CC0]);
      v27 = v26;
      v86 = *(v26 + 16);
      if (v86)
      {
        v28 = 0;
        v29 = &off_1EDE4F000;
        v30 = v84;
        v83 = v23;
        v85 = v26;
        while (v28 < *(v27 + 16))
        {
          v31 = *(v27 + 8 * v28 + 32);
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          swift_bridgeObjectRetain_n();
          v33 = sub_1DCD14914(1);
          if (v30)
          {
            if (v29[288] != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v35 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v35, qword_1EDE57E00);

            v36 = sub_1DD0DD8EC();
            v37 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v88[0] = swift_slowAlloc();
              *v38 = v78;
              *(v38 + 4) = sub_1DCB10E9C(v79, v23, v88);
              *(v38 + 12) = 2080;
              *(v38 + 14) = sub_1DCB10E9C(0x696669746E656469, 0xEA00000000007265, v88);
              *(v38 + 22) = 2080;
              v39 = sub_1DD0DDE7C();
              v41 = v40;

              v42 = sub_1DCB10E9C(v39, v41, v88);
              v10 = v82;

              *(v38 + 24) = v42;
              v23 = v83;
              _os_log_impl(&dword_1DCAFC000, v36, v37, "Configuration for eventId '%s' is invalid. Parameter %s is required: %s", v38, 0x20u);
              swift_arrayDestroy();
              v29 = &off_1EDE4F000;
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            v30 = 0;
          }

          else
          {
            v43 = v33;
            v44 = v34;

            v45 = v81;
            v46 = v43 == v10 && v44 == v81;
            if (v46 || (sub_1DD0DF0AC() & 1) != 0)
            {

              swift_setDeallocating();

              v66 = swift_allocObject();
              v66[2] = v10;
              v66[3] = v45;
              v67 = v79;
              v66[4] = v80;
              v66[5] = v67;
              v66[6] = v83;
              v66[7] = v32;
              return &unk_1DD0EC7D8;
            }

            v84 = 0;
            if (v29[288] != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v47 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v47, qword_1EDE57E00);

            v48 = sub_1DD0DD8EC();
            v49 = sub_1DD0DE6DC();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v88[0] = swift_slowAlloc();
              *v50 = v77;

              v51 = sub_1DCB10E9C(v10, v45, v88);

              *(v50 + 4) = v51;
              v10 = v82;
              *(v50 + 12) = 2080;
              v52 = sub_1DCB10E9C(v43, v44, v88);

              *(v50 + 14) = v52;
              _os_log_impl(&dword_1DCAFC000, v48, v49, "Input DI identifier '%s' is not a match for desired identifier '%s'. Continuing", v50, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            v29 = &off_1EDE4F000;
            v23 = v83;
            v30 = v84;
          }

          ++v28;
          v27 = v85;
          if (v86 == v28)
          {
            v84 = v30;
            swift_setDeallocating();

            v16 = v74;
            a2 = v72;
            v11 = v71;
            v15 = v73;
            v14 = v75;
            goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v53 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v53, qword_1EDE57E00);

      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6EC();

      v56 = os_log_type_enabled(v54, v55);
      v15 = v73;
      if (v56)
      {
        v57 = v23;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v88[0] = v59;
        *v58 = v70;
        v60 = sub_1DCB10E9C(v79, v57, v88);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_1DCAFC000, v54, v55, "No invocation configurations provided for eventId: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
        swift_setDeallocating();
      }

      else
      {

        swift_setDeallocating();
      }

      v16 = v74;
      v14 = v75;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v69 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v69, qword_1EDE57E00);
        v62 = sub_1DD0DD8EC();
        v63 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          v65 = "Could not match DirectInvocation to any provided configuration. Will not process";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v18 = *(v11 + 8 * v19);
      ++v16;
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

  else
  {
    sub_1DCB29EBC(v7);
    if (qword_1EDE4F900 == -1)
    {
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_40:
  v61 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v61, qword_1EDE57E00);
  v62 = sub_1DD0DD8EC();
  v63 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "Provided input is not a direct invocation with identifier. Will not process.";
LABEL_47:
    _os_log_impl(&dword_1DCAFC000, v62, v63, v65, v64, 2u);
    OUTLINED_FUNCTION_80();
  }

LABEL_48:

  return 0;
}

uint64_t sub_1DCCEF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCEF6A0, 0, 0);
}

uint64_t sub_1DCCEF6A0()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);

  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1DCB10E9C(v7, v6, &v15);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DCB10E9C(v5, v4, &v15);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Matched invocation identifier: %s to eventId: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v9 = v0[7];
  v10 = v0[6];
  v11 = v0[2];
  v12 = sub_1DCC6A52C(0x6174614472657375, 0xE800000000000000, MEMORY[0x1E69E7CC8]);
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1DCCEF8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DCB193FC;

  return sub_1DCCEF674(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t BasicDisambiguationItemContainer.__allocating_init(_:_:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = a2;
  return result;
}

uint64_t BasicDisambiguationItemContainer.init(_:_:)(uint64_t a1, char a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t BasicDisambiguationItemContainer.__deallocating_deinit()
{
  BasicDisambiguationItemContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCEFBC4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v51 = a1;
  v52 = a2;
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v53 = v15 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v55 = v16;
  OUTLINED_FUNCTION_10();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_16();
  v49 = v24 - v23;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v43 = v26;
  v44 = v25;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v40 - v29;
  v31 = sub_1DD0DE5DC();
  if (!v31)
  {
    return sub_1DD0DE37C();
  }

  v54 = v31;
  v58 = sub_1DD0DED4C();
  v45 = sub_1DD0DED5C();
  sub_1DD0DECFC();
  result = sub_1DD0DE5CC();
  if ((v54 & 0x8000000000000000) == 0)
  {
    v40 = v11;
    v41 = a5;
    v33 = 0;
    v46 = (v55 + 16);
    v47 = v55 + 8;
    v48 = v8;
    while (!__OFADD__(v33, 1))
    {
      v55 = v33 + 1;
      v34 = sub_1DD0DE66C();
      (*v46)(v21);
      v34(v57, 0);
      v35 = v56;
      v51(v21, v53);
      if (v35)
      {
        v38 = OUTLINED_FUNCTION_31_13();
        v39(v38);
        (*(v43 + 8))(v30, v44);

        return (*(v40 + 32))(v42, v53, v41);
      }

      v56 = 0;
      v36 = OUTLINED_FUNCTION_31_13();
      v37(v36);
      sub_1DD0DED3C();
      result = sub_1DD0DE62C();
      ++v33;
      if (v55 == v54)
      {
        (*(v43 + 8))(v30, v44);
        return v58;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCCEFF90@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v4 = v3;
  v6 = *(v5 + 160);
  v7 = swift_beginAccess();
  OUTLINED_FUNCTION_27_16(v4[5], v4[6], v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_2();
  return (*(v19 + 16))(a1, v1 + v6);
}

uint64_t sub_1DCCF0044(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2();
  v4 = v3;
  v6 = *(v5 + 160);
  v7 = swift_beginAccess();
  OUTLINED_FUNCTION_27_16(v4[5], v4[6], v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_2();
  (*(v19 + 40))(v1 + v6, a1);
  return swift_endAccess();
}

uint64_t DisambiguationPrompt.__allocating_init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = swift_allocObject();
  DisambiguationPrompt.init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)();
  return v6;
}

void DisambiguationPrompt.init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v70 = v3;
  v71 = v2;
  v5 = v4;
  v7 = v6;
  v66 = v8;
  v10 = v9;
  v11 = *v0;
  v12 = *(v11 + 88);
  v73 = *(v11 + 96);
  v13 = v73;
  v14 = OUTLINED_FUNCTION_25_0();
  v16 = type metadata accessor for USOKeyPath(v14, v15, v73, *(&v73 + 1));
  OUTLINED_FUNCTION_9();
  v72 = v17;
  OUTLINED_FUNCTION_10();
  v64 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v58 - v21;
  v67 = v10;
  v81 = v10;
  v23 = *(v11 + 80);
  v74[2] = v23;
  v74[3] = v12;
  v75 = v73;
  v62 = v7;
  v76 = v7;
  v77 = v5;
  v63 = v5;
  OUTLINED_FUNCTION_24_17();
  v24 = sub_1DD0DE40C();
  v68 = v23;
  *&v78 = v23;
  *(&v78 + 1) = v12;
  v25 = OUTLINED_FUNCTION_32_12();
  v27 = type metadata accessor for DisambiguationPrompt.Choice(v25, v26);
  WitnessTable = swift_getWitnessTable();
  v61 = v24;
  v60 = WitnessTable;
  v1[2] = sub_1DCCEFBC4(sub_1DCCF0888, v74, v24, v27, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
  v32 = type metadata accessor for InputResolverAdapter(0, v13, v30, v31);
  v59 = *(v72 + 16);
  v59(v22, v66, v16);
  v33 = OUTLINED_FUNCTION_25_0();
  *(&v79 + 1) = type metadata accessor for PromptInputResolver(v33, v34, v13, *(&v13 + 1));
  v80 = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v78);
  v65 = v22;
  sub_1DCE9748C(v22, v12, v13, *(&v13 + 1), boxed_opaque_existential_1Tm);
  v36 = v16;
  v37 = sub_1DCCF09BC(&v78);
  v1[18] = v32;
  v38 = swift_getWitnessTable();
  v1[15] = v37;
  v1[19] = v38;
  sub_1DCB17D04(v71, (v1 + 3));
  v58[1] = v1 + 8;
  v39 = sub_1DCB17D04(v70, (v1 + 8));
  v81 = v67;
  MEMORY[0x1EEE9AC00](v39, v40);
  v58[-6] = v68;
  v58[-5] = v12;
  v69 = v12;
  *&v58[-4] = v73;
  v41 = v63;
  v58[-2] = v62;
  v58[-1] = v41;
  v43 = sub_1DCCEFBC4(sub_1DCCF0A00, &v58[-8], v61, v13, MEMORY[0x1E69E73E0], v60, MEMORY[0x1E69E7410], v42);

  v44 = v65;
  v45 = v66;
  v59(v65, v66, v36);
  v46 = v72;
  v47 = (*(v72 + 80) + 56) & ~*(v72 + 80);
  v48 = swift_allocObject();
  v49 = v68;
  v50 = v69;
  *(v48 + 16) = v68;
  *(v48 + 24) = v50;
  *(v48 + 32) = v73;
  *(v48 + 48) = v43;
  (*(v46 + 32))(v48 + v47, v44, v36);
  v1[13] = sub_1DCCF0D6C;
  v1[14] = v48;
  if (*(v45 + 24))
  {
    v51 = *(v45 + 16);
    v52 = *(v45 + 24);
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  v54 = v70;
  v53 = v71;

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  (*(v72 + 8))(v45, v36);
  v1[20] = v51;
  v1[21] = v52;
  v55 = *(*v1 + 160);
  *&v56 = v49;
  *(&v56 + 1) = v69;
  v78 = v56;
  v79 = v73;
  type metadata accessor for DisambiguationPrompt.Response(255, &v78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_24_17();
  v57 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v1 + v55, 1, 1, v57);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF0724@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v23 = a7;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  (*(v19 + 16))(&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  a2(a1);
  return sub_1DCCF08F8(v16, a4, a5, a6, v23, x8_0);
}

uint64_t sub_1DCCF08F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_112();
  (*(v12 + 32))(a6);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for DisambiguationPrompt.Choice(0, v15);
  return (*(*(a4 - 8) + 32))(a6 + *(v13 + 52), a1, a4);
}

uint64_t sub_1DCCF09BC(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DCAFF9E8(a1, v2 + 16);
  return v2;
}

uint64_t sub_1DCCF0A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v33 = a2;
  v38 = a6;
  v10 = sub_1DD0DE97C();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v32 = &v29 - v12;
  v13 = sub_1DD0DBAAC();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v29 = a5;
  v30 = &v29 - v15;
  v16 = type metadata accessor for USOKeyPath(0, a3, a4, a5);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29 - v19;
  v21 = type metadata accessor for SystemGaveOptionsDialogActGenerator(0, a3, a4, a5);
  v31 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v29 - v23;
  (*(v17 + 16))(v20, v33, v16);
  sub_1DD0051A8(a1, v20, a3, a4, v29, v24);
  v25 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, a4);

  v26 = v21;
  v27 = v30;
  USOKeyPath.createTask(with:)();
  (*(v34 + 8))(v25, v35);
  sub_1DD005258(v27, v26, a3, v38);
  (*(v36 + 8))(v27, v37);
  return (*(v31 + 8))(v24, v26);
}

uint64_t sub_1DCCF0D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = OUTLINED_FUNCTION_25_0();
  v8 = type metadata accessor for USOKeyPath(v6, v7, v4, v5);
  OUTLINED_FUNCTION_20_0(v8);
  return sub_1DCCF0A30(v1[6], v1 + ((*(v9 + 80) + 56) & ~*(v9 + 80)), v3, v4, v5, a1);
}

void sub_1DCCF0E20()
{
  OUTLINED_FUNCTION_50();
  v26[5] = v1;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_18_21();
  type metadata accessor for DisambiguationPrompt.Response(255, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  v26[4] = v5;
  v6 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  OUTLINED_FUNCTION_18_21();
  v14 = type metadata accessor for DisambiguationPrompt.State(0, v13);
  OUTLINED_FUNCTION_20_0(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v26 - v17;
  sub_1DCCEFF90(v26 - v17);
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    v26[1] = v3;
    sub_1DCB17D04(v0 + 24, &v27);
    sub_1DCB17D04(v0 + 64, &v28);
    sub_1DD0DCF8C();
  }

  (*(v8 + 32))(v12, v18, v6);
  v19 = OUTLINED_FUNCTION_25_0();
  v23 = type metadata accessor for Conclude(v19, v20, v21, v22);
  v24 = OUTLINED_FUNCTION_37_17(v23, &protocol witness table for Conclude<A>);
  OUTLINED_FUNCTION_18_21();
  type metadata accessor for DisambiguationPrompt(0, v25);
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v12, v24);
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF1560(uint64_t a1, uint64_t a2)
{
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 104);
  v39 = *(*a2 + 80);
  v4 = v39;
  v40 = v5;
  v41 = v6;
  v42 = v7;
  v8 = type metadata accessor for DisambiguationPrompt.State(0, &v39);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v38 = &v35 - v10;
  v39 = v4;
  v40 = v5;
  v41 = v6;
  v42 = v7;
  type metadata accessor for DisambiguationPrompt.Response(255, &v39);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DF22C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v35 - v18;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);
  v21 = *(v12 + 16);
  v21(v19, a1, v11);
  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a1;
    v27 = v26;
    v39 = v26;
    *v25 = 136315138;
    v21(v16, v19, v11);
    v28 = sub_1DD0DE02C();
    v35 = v21;
    v30 = v29;
    (*(v12 + 8))(v19, v11);
    v31 = sub_1DCB10E9C(v28, v30, &v39);
    v21 = v35;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1DCAFC000, v22, v23, "[DisambiguationPrompt] received response %s)", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v32 = v27;
    a1 = v36;
    MEMORY[0x1E12A8390](v32, -1, -1);
    MEMORY[0x1E12A8390](v25, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v19, v11);
  }

  v33 = v38;
  v21(v38, a1, v11);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v11);
  return sub_1DCCF0044(v33);
}

uint64_t sub_1DCCF190C(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v7 = type metadata accessor for DisambiguationPrompt.State(0, &v26);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v24 - v9);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  v12 = a1;
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "[DisambiguationPrompt] received unexpected failure %@", v16, 0xCu);
    sub_1DCB0E9D8(v17, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v17, -1, -1);
    v20 = v16;
    v3 = v25;
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  *v10 = a1;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  type metadata accessor for DisambiguationPrompt.Response(255, &v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v21 = sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v21);
  v22 = a1;
  return sub_1DCCF0044(v10);
}

uint64_t sub_1DCCF1BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  *v10 = 56;
  *(v10 + 8) = a1;
  *(v10 + 16) = a2;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  v12 = *(a3 + 160);
  v11 = *(a3 + 168);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  type metadata accessor for SiriKitEvent(0);
  *(v10 + 136) = v12;
  *(v10 + 144) = v11;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 29;
  swift_storeEnumTagMultiPayload();

  return SiriKitEvent.__allocating_init(_:builder:)(v10, 0);
}

uint64_t sub_1DCCF1CE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v111 = a3;
  v109 = a2;
  v107 = a1;
  v5 = *a4;
  v6 = (*a4 + 88);
  v7 = (*a4 + 104);
  v8 = *(*a4 + 96);
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v99 = &v97 - v9;
  v110 = type metadata accessor for SiriKitEventPayload(0);
  v11 = MEMORY[0x1EEE9AC00](v110, v10);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v97 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v97 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v103 = &v97 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v104 = &v97 - v27;
  v108 = a4;
  v97 = *(*(v5 + 80) - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v102 = &v97 - v29;
  v98 = v30;
  *&v31 = v30;
  *(&v31 + 1) = *v6;
  v101 = v8;
  *&v32 = v8;
  *(&v32 + 1) = *v7;
  v105 = v32;
  v106 = v31;
  v113 = v32;
  v112 = v31;
  v33 = type metadata accessor for DisambiguationPrompt.Response(0, &v112);
  v34 = *(v33 - 8);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v97 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v42 = sub_1DD0DF22C();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = (&v97 - v44);
  (*(v46 + 16))(&v97 - v44, v111, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v112 = *v45;
    v47 = v112;
    v48 = v112;
    if (swift_dynamicCast())
    {
      *v17 = 5;
      v49 = v108;
      v50 = v109;
      *(v17 + 1) = v107;
      *(v17 + 2) = v50;
      *(v17 + 24) = 0u;
      *(v17 + 40) = 0u;
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0u;
      *(v17 + 88) = 0u;
      *(v17 + 104) = 0u;
      *(v17 + 120) = 0u;
      v52 = v49[20];
      v51 = v49[21];
      v53 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v53 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v53)
      {
      }

      else
      {
        v52 = 0;
        v51 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      *(v17 + 17) = v52;
      *(v17 + 18) = v51;
      *(v17 + 152) = 0u;
      *(v17 + 168) = 0u;
      v17[184] = 87;
      swift_storeEnumTagMultiPayload();

      v88 = v17;
    }

    else
    {
      *v13 = 6;
      v67 = v108;
      v68 = v109;
      *(v13 + 1) = v107;
      *(v13 + 2) = v68;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0u;
      v70 = v67[20];
      v69 = v67[21];
      v71 = HIBYTE(v69) & 0xF;
      if ((v69 & 0x2000000000000000) == 0)
      {
        v71 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
      }

      else
      {
        v70 = 0;
        v69 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      *(v13 + 17) = v70;
      *(v13 + 18) = v69;
      *(v13 + 19) = 0;
      *(v13 + 20) = 0;
      swift_getErrorValue();

      *(v13 + 21) = sub_1DD0DF18C();
      *(v13 + 22) = v89;
      v13[184] = 91;
      swift_storeEnumTagMultiPayload();
      v88 = v13;
    }

    v90 = SiriKitEvent.__allocating_init(_:builder:)(v88, 0);
  }

  else
  {
    (*(v34 + 32))(v41, v45, v33);
    (*(v34 + 16))(v38, v41, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v33;
    v56 = v41;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v57 = v100;
        v58 = v99;
        v59 = v101;
        (*(v100 + 32))(v99, v38, v101);
        v60 = v103;
        *v103 = 57;
        v61 = v109;
        *(v60 + 1) = v107;
        *(v60 + 2) = v61;
        *(v60 + 4) = 0;
        *(v60 + 5) = 0;
        *(v60 + 3) = 0;
        *(v60 + 9) = v59;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v60 + 6);
        (*(v57 + 16))(boxed_opaque_existential_1Tm, v58, v59);
        v63 = v108;

        v113 = v105;
        v112 = v106;
        type metadata accessor for DisambiguationPrompt.Choice(0, &v112);
        *(v60 + 10) = sub_1DD0DEDAC();
        *(v60 + 88) = 0u;
        *(v60 + 104) = 0u;
        *(v60 + 120) = 0u;
        v65 = v63[20];
        v64 = v63[21];
        v66 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v66 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {
        }

        else
        {
          v65 = 0;
          v64 = 0;
        }

        type metadata accessor for SiriKitEvent(0);
        v91 = v103;
        *(v103 + 17) = v65;
        *(v91 + 144) = v64;
        *(v91 + 152) = 0;
        *(v91 + 160) = 0;
        *&v112 = 0;
        *(v91 + 168) = sub_1DD0DF03C();
        *(v91 + 176) = v92;
        *(v91 + 184) = 125;
        swift_storeEnumTagMultiPayload();
        v90 = SiriKitEvent.__allocating_init(_:builder:)(v91, 0);
        (*(v57 + 8))(v58, v59);
      }

      else
      {
        *v21 = 57;
        v83 = v108;
        v84 = v109;
        *(v21 + 1) = v107;
        *(v21 + 2) = v84;
        *(v21 + 24) = 0u;
        *(v21 + 40) = 0u;
        *(v21 + 56) = 0u;
        *(v21 + 9) = 0;

        v113 = v105;
        v112 = v106;
        type metadata accessor for DisambiguationPrompt.Choice(0, &v112);
        *(v21 + 10) = sub_1DD0DEDAC();
        *(v21 + 88) = 0u;
        *(v21 + 104) = 0u;
        *(v21 + 120) = 0u;
        v86 = v83[20];
        v85 = v83[21];
        v87 = HIBYTE(v85) & 0xF;
        if ((v85 & 0x2000000000000000) == 0)
        {
          v87 = v86 & 0xFFFFFFFFFFFFLL;
        }

        if (v87)
        {
        }

        else
        {
          v86 = 0;
          v85 = 0;
        }

        type metadata accessor for SiriKitEvent(0);
        *(v21 + 17) = v86;
        *(v21 + 18) = v85;
        *(v21 + 19) = 0;
        *(v21 + 20) = 0;
        *&v112 = 0;
        *(v21 + 21) = sub_1DD0DF03C();
        *(v21 + 22) = v95;
        v21[184] = 125;
        swift_storeEnumTagMultiPayload();
        v90 = SiriKitEvent.__allocating_init(_:builder:)(v21, 0);
      }
    }

    else
    {
      v72 = v98;
      v73 = *&v38[*(swift_getTupleTypeMetadata2() + 48)];
      v74 = v97;
      v75 = v102;
      (*(v97 + 32))(v102, v38, v72);
      v76 = v104;
      *v104 = 57;
      v77 = v109;
      *(v76 + 1) = v107;
      *(v76 + 2) = v77;
      *(v76 + 4) = 0;
      *(v76 + 5) = 0;
      *(v76 + 3) = 0;
      *(v76 + 9) = v72;
      v78 = __swift_allocate_boxed_opaque_existential_1Tm(v76 + 6);
      (*(v74 + 16))(v78, v75, v72);
      v79 = v108;

      v113 = v105;
      v112 = v106;
      type metadata accessor for DisambiguationPrompt.Choice(0, &v112);
      *(v76 + 10) = sub_1DD0DEDAC();
      *(v76 + 88) = 0u;
      *(v76 + 104) = 0u;
      *(v76 + 120) = 0u;
      v81 = v79[20];
      v80 = v79[21];
      v82 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v82 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
      }

      else
      {
        v81 = 0;
        v80 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      v93 = v104;
      *(v104 + 17) = v81;
      *(v93 + 144) = v80;
      *(v93 + 152) = 0;
      *(v93 + 160) = 0;
      *&v112 = v73;
      *(v93 + 168) = sub_1DD0DF03C();
      *(v93 + 176) = v94;
      *(v93 + 184) = 125;
      swift_storeEnumTagMultiPayload();
      v90 = SiriKitEvent.__allocating_init(_:builder:)(v93, 0);
      (*(v74 + 8))(v102, v72);
    }

    (*(v34 + 8))(v56, v55);
  }

  return v90;
}

uint64_t sub_1DCCF2730(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v39 = a1;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v37 - v13;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57DA0);

  v16 = a3;
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  v19 = os_log_type_enabled(v17, v18);
  v38 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v7;
    v22 = v21;
    v40 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_1DCB10E9C(v39, a2, &v40);
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_1DD0DF18C();
    v25 = a4;
    v26 = sub_1DCB10E9C(v23, v24, &v40);

    *(v20 + 14) = v26;
    a4 = v25;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "[DisambiguationPrompt#instrumentOnFailure(%s)]: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v22, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  v40 = a3;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    type metadata accessor for SiriKitEvent(0);
    *v14 = 5;
    v28 = v38;
    *(v14 + 1) = v39;
    *(v14 + 2) = v28;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0u;
    *(v14 + 120) = 0u;
    v29 = *(a4 + 168);
    *(v14 + 17) = *(a4 + 160);
    *(v14 + 18) = v29;
    *(v14 + 152) = 0u;
    *(v14 + 168) = 0u;
    v14[184] = 87;
    swift_storeEnumTagMultiPayload();

    v30 = v14;
  }

  else
  {
    *v11 = 6;
    v31 = v38;
    *(v11 + 1) = v39;
    *(v11 + 2) = v31;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 120) = 0u;
    v33 = *(a4 + 160);
    v32 = *(a4 + 168);
    v34 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v34 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    type metadata accessor for SiriKitEvent(0);
    *(v11 + 17) = v33;
    *(v11 + 18) = v32;
    *(v11 + 19) = 0;
    *(v11 + 20) = 0;
    swift_getErrorValue();

    *(v11 + 21) = sub_1DD0DF18C();
    *(v11 + 22) = v35;
    v11[184] = 91;
    swift_storeEnumTagMultiPayload();
    v30 = v11;
  }

  return SiriKitEvent.__allocating_init(_:builder:)(v30, 0);
}

void DisambiguationPrompt.Response.description.getter()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_10_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v32 - v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v8, v26, v1);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD119620);
      MEMORY[0x1E12A6780](0x69746E457761722ELL, 0xEB00000000287974);
      sub_1DD0DF07C();
      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      (*(v3 + 8))(v8, v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v29 = *(v26 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v12 + 32))(v21, v26, v10);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v33 = 0xD000000000000032;
    v34 = 0x80000001DD119670;
    (*(v12 + 16))(v17, v21, v10);
    v30 = sub_1DD0DE02C();
    MEMORY[0x1E12A6780](v30);

    MEMORY[0x1E12A6780](0x65646E6920746120, 0xEA00000000002078);
    v32[1] = v29;
    v31 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v31);

    (*(v12 + 8))(v21, v10);
  }

  OUTLINED_FUNCTION_49();
}

__n128 **DisambiguationPrompt.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  v3 = (*v0)[10].n128_u64[0];
  OUTLINED_FUNCTION_27_16(v1[5], v1[6], v2, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_2();
  (*(v15 + 8))(v0 + v3);
  return v0;
}

uint64_t DisambiguationPrompt.__deallocating_deinit()
{
  DisambiguationPrompt.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCF2FE4(uint64_t a1)
{
  v5 = MEMORY[0x1E69E5CE8] + 64;
  v6 = "(";
  v7 = "(";
  v8 = MEMORY[0x1E69E7CB8] + 64;
  v9 = "(";
  v10 = &unk_1DD0EC950;
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = type metadata accessor for DisambiguationPrompt.State(319, v4);
  if (v3 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCCF3104(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v4[5] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_1DCCF31E8(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  if (v9 + 1 > 0x18 || ((*(v8 + 80) | *(v5 + 80)) & 0x1000F8) != 0)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v11 = __src[v9];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__src;
        goto LABEL_18;
      case 2:
        v14 = *__src;
        goto LABEL_18;
      case 3:
        v14 = *__src | (__src[2] << 16);
        goto LABEL_18;
      case 4:
        v14 = *__src;
LABEL_18:
        v15 = (v14 | (v12 << (8 * v9))) + 2;
        v11 = v14 + 2;
        if (v9 < 4)
        {
          v11 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    (*(v8 + 16))(__dst, __src, v7);
    *(__dst + v9) = 1;
    return __dst;
  }

  if (!v11)
  {
    (*(v5 + 16))(__dst, __src);
    *((__dst + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(__dst + v9) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

unsigned __int8 *sub_1DCCF341C(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(*(*(a2 + 32) - 8) + 64);
  if (v3 <= ((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = result[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *result;
        goto LABEL_12;
      case 2:
        v7 = *result;
        goto LABEL_12;
      case 3:
        v7 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *result;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        v4 = v7 + 2;
        if (v3 < 4)
        {
          v4 = v8;
        }

        break;
      default:
        break;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    v2 = *(*(a2 + 32) - 8);
  }

  return (*(v2 + 8))();
}

_BYTE *sub_1DCCF3564(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  v8 = __src[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_13;
      case 2:
        v11 = *__src;
        goto LABEL_13;
      case 3:
        v11 = *__src | (__src[2] << 16);
        goto LABEL_13;
      case 4:
        v11 = *__src;
LABEL_13:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __dst[v7] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
    *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v7] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

unsigned __int8 *sub_1DCCF3750(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __dst[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *__dst;
        goto LABEL_14;
      case 2:
        v15 = *__dst;
        goto LABEL_14;
      case 3:
        v15 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v15 = *__dst;
LABEL_14:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_21;
    }

    v17 = *(*(a3 + 32) - 8);
    v18 = *(a3 + 32);
  }

  else
  {
    v17 = *(*(a3 + 16) - 8);
    v18 = *(a3 + 16);
  }

  (*(v17 + 8))(__dst, v18);
LABEL_21:
  v19 = __src[v10];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v10 <= 3)
    {
      v21 = v10;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *__src;
        goto LABEL_30;
      case 2:
        v22 = *__src;
        goto LABEL_30;
      case 3:
        v22 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v22 = *__src;
LABEL_30:
        v23 = (v22 | (v20 << v12)) + 2;
        v19 = v22 + 2;
        if (v10 < 4)
        {
          v19 = v23;
        }

        break;
      default:
        break;
    }
  }

  if (v19 == 1)
  {
    (*(v9 + 16))(__dst, __src, v8);
    __dst[v10] = 1;
    return __dst;
  }

  if (!v19)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v10] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

_BYTE *sub_1DCCF3A10(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  v8 = __src[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_13;
      case 2:
        v11 = *__src;
        goto LABEL_13;
      case 3:
        v11 = *__src | (__src[2] << 16);
        goto LABEL_13;
      case 4:
        v11 = *__src;
LABEL_13:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    __dst[v7] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst, __src);
    *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v7] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

unsigned __int8 *sub_1DCCF3BFC(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __dst[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *__dst;
        goto LABEL_14;
      case 2:
        v15 = *__dst;
        goto LABEL_14;
      case 3:
        v15 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v15 = *__dst;
LABEL_14:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_21;
    }

    v17 = *(*(a3 + 32) - 8);
    v18 = *(a3 + 32);
  }

  else
  {
    v17 = *(*(a3 + 16) - 8);
    v18 = *(a3 + 16);
  }

  (*(v17 + 8))(__dst, v18);
LABEL_21:
  v19 = __src[v10];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v10 <= 3)
    {
      v21 = v10;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *__src;
        goto LABEL_30;
      case 2:
        v22 = *__src;
        goto LABEL_30;
      case 3:
        v22 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v22 = *__src;
LABEL_30:
        v23 = (v22 | (v20 << v12)) + 2;
        v19 = v22 + 2;
        if (v10 < 4)
        {
          v19 = v23;
        }

        break;
      default:
        break;
    }
  }

  if (v19 == 1)
  {
    (*(v9 + 32))(__dst, __src, v8);
    __dst[v10] = 1;
    return __dst;
  }

  if (!v19)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v10] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

uint64_t sub_1DCCF3EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 32) - 8) + 64);
  if (v3 <= ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1DCCF4000(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a4 + 32) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 32) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCCF41E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 32) - 8) + 64);
  if (v2 <= ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        LODWORD(v3) = v6 + 2;
        if (v2 >= 4)
        {
          v3 = v3;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        return v3;
    }
  }

  return v3;
}

void sub_1DCCF42A8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 32) - 8) + 64) <= ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v4 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v4 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

void sub_1DCCF43E8()
{
  OUTLINED_FUNCTION_50();
  v97 = v0;
  v2 = v1;
  v100 = v3;
  v4 = v1[1].f64[1];
  OUTLINED_FUNCTION_25_0();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v88 = v6;
  v89 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v91 = &v84 - v9;
  OUTLINED_FUNCTION_0_1();
  v87 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v86 = v14 - v13;
  v15 = v2[1].f64[0];
  v16 = v2[2];
  *v101 = v15;
  v96 = v16.f64[0];
  v101[1] = *&v16.f64[0];
  *&v101[2] = v4;
  v98 = v17;
  v99 = v16;
  v101[3] = *&v16.f64[1];
  v18 = type metadata accessor for DisambiguationPrompt.Choice(255, v101);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_11();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v92 = v21;
  v93 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  OUTLINED_FUNCTION_10_2();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v84 - v28;
  v95 = v18;
  OUTLINED_FUNCTION_8_2();
  v94 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_10_2();
  v90 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v84 - v37;
  type metadata accessor for Input(0);
  sub_1DCE2FF24();
  if (v39)
  {
    sub_1DCC9FB70();
    v40 = swift_allocError();
    v41 = v100;
    *v100 = v40;
    v102.val[1] = v99;
    v102.val[0].f64[0] = v15;
    v102.val[0].f64[1] = v4;
    v42 = v101;
    vst2q_f64(v42, v102);
    v43 = type metadata accessor for DisambiguationPrompt.Response(255, v101);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_19_20();
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v44 = v41;
LABEL_10:
    v63 = 0;
    v62 = v43;
    goto LABEL_11;
  }

  v85 = *&v4;
  OUTLINED_FUNCTION_17_16();
  sub_1DCCF4A64(v45, v46);
  OUTLINED_FUNCTION_38_2(v29);
  if (!v47)
  {
    v64 = *&v29[*(TupleTypeMetadata2 + 48)];
    v65 = v94;
    v66 = v95;
    v67 = (*(v94 + 32))(v38, v29, v95);
    v69 = *(OUTLINED_FUNCTION_38_11(v67, v68, MEMORY[0x1E69E6530]) + 48);
    OUTLINED_FUNCTION_112();
    v71 = v100;
    (*(v70 + 16))(v100, v38, COERCE_FLOAT64_T(*&v15));
    (*(v65 + 8))(v38, v66);
    *(v71 + v69) = v64;
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    v43 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    v44 = v71;
    goto LABEL_10;
  }

  v48 = v93;
  v49 = *(v92 + 8);
  v49(v29, v93);
  v50 = OUTLINED_FUNCTION_17_16();
  sub_1DCCF4F4C(v50, v51, v52);
  OUTLINED_FUNCTION_38_2(v25);
  if (!v47)
  {
    v72 = *(v25 + *(TupleTypeMetadata2 + 48));
    v73 = v94;
    v74 = v90;
    v75 = v25;
    v76 = v95;
    v77 = (*(v94 + 32))(v90, v75, v95);
    v79 = *(OUTLINED_FUNCTION_38_11(v77, v78, MEMORY[0x1E69E6530]) + 48);
    OUTLINED_FUNCTION_112();
    v81 = v100;
    (*(v80 + 16))(v100, v74, COERCE_FLOAT64_T(*&v15));
    (*(v73 + 8))(v74, v76);
    *(v81 + v79) = v72;
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    v43 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    v44 = v81;
    goto LABEL_10;
  }

  v49(v25, v48);
  v53 = v91;
  v54 = OUTLINED_FUNCTION_17_16();
  sub_1DCCF54CC(v54, v55, v58, v56, v57);
  v59 = v85;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v85);
  v41 = v100;
  if (EnumTagSinglePayload != 1)
  {
    v82 = v86;
    v43 = *(v87 + 32);
    v43(v86, v53, v59);
    v43(v41, v82, v59);
    OUTLINED_FUNCTION_34_17();
    type metadata accessor for DisambiguationPrompt.Response(0, v83);
    OUTLINED_FUNCTION_19_20();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_19_20();
    goto LABEL_3;
  }

  (*(v88 + 8))(v53, v89);
  OUTLINED_FUNCTION_34_17();
  type metadata accessor for DisambiguationPrompt.Response(255, v61);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  v62 = sub_1DD0DF22C();
  v44 = v41;
  v63 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v44, v63, 1, v62);
  OUTLINED_FUNCTION_49();
}