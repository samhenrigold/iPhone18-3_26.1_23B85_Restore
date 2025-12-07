uint64_t sub_2441AC570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_2441AC6F4;
  }

  else
  {
    v4 = sub_2441AC690;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2441AC690()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2441AC6F4(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2441AC8E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441AC988;

  return sub_2441AC3E8();
}

uint64_t sub_2441AC988()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_2441D88AC();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

id ContextualEngineInternalClient.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ContextualEngineInternalClient.init()()
{
  swift_defaultActor_initialize();
  v0[14] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineInternalClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ContextualEngineInternalClient.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.fetchAllSnapshots()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2441ACDC0;

  return v5();
}

uint64_t sub_2441ACDC0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.fetchSnapshotOverride()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2441AD95C;

  return v5();
}

uint64_t dispatch thunk of ContextualEngineInternalClient.override(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A50;

  return v7(a1);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.update()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_244198A54;

  return v5();
}

uint64_t sub_2441AD240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441AC8E0(v2, v3);
}

uint64_t sub_2441AD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2441A991C(a3, v23 - v10);
  v12 = sub_2441D8D9C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2441979F8(v11, &unk_27EDD5F30, &qword_2441DAEC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2441D8D8C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2441D8D7C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2441D8C8C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);

    return v21;
  }

LABEL_8:
  sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2441AD5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A50;

  return sub_2441AC184(v2, v3, v4);
}

uint64_t sub_2441AD68C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441AB9EC(v2, v3);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2441AD778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return sub_2441AB2A4(v2, v3);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2441AD8C8()
{
  result = qword_27EDD7070[0];
  if (!qword_27EDD7070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7070);
  }

  return result;
}

uint64_t sub_2441AD964(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2441D91CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2441ADA14()
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](0);
  return sub_2441D926C();
}

uint64_t sub_2441ADA74(uint64_t a1)
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](0);
  return sub_2441D926C();
}

uint64_t sub_2441ADAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2441D91CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2441ADB50(uint64_t a1)
{
  v2 = sub_2441AE1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441ADB8C(uint64_t a1)
{
  v2 = sub_2441AE1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualSuggestion.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier);

  return v1;
}

id ContextualSuggestion.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ContextualSuggestion.init(coder:)(void *a1)
{
  sub_244197164();
  v2 = sub_2441D8EBC();
  if (v2)
  {
    v3 = v2;
    sub_2441D8C5C();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextualSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2441ADF4C()
{
  result = qword_27EDD5CF0;
  if (!qword_27EDD5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5CF0);
  }

  return result;
}

unint64_t sub_2441ADFA4()
{
  result = qword_27EDD5CF8;
  if (!qword_27EDD5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5CF8);
  }

  return result;
}

unint64_t sub_2441ADFFC()
{
  result = qword_27EDD5D00;
  if (!qword_27EDD5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualSuggestion.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContextualSuggestion.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_2441AE1B8()
{
  result = qword_27EDD5D10;
  if (!qword_27EDD5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D10);
  }

  return result;
}

uint64_t sub_2441AE228()
{
  v1 = sub_2441BD434();
  v2 = *v1;
  v0[2] = *v1;
  v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[3] = *(*v2 + 240);
  v0[4] = v3;

  return MEMORY[0x2822009F8](sub_2441AE2BC, v2, 0);
}

uint64_t sub_2441AE2BC()
{
  v1 = (*(v0 + 24))();
  *(v0 + 40) = 0;
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2441AE388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2441AE560(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_2441AE5C8, 0, 0);
}

uint64_t sub_2441AE5C8()
{
  v1 = sub_2441BD434();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[4] = *(*v2 + 240);
  v0[5] = v3;

  return MEMORY[0x2822009F8](sub_2441AE65C, v2, 0);
}

uint64_t sub_2441AE65C()
{
  v1 = (*(v0 + 32))();
  *(v0 + 48) = 0;
  v2 = v1;
  v3 = *(v0 + 16);

  if (v3)
  {
    if (v2)
    {
      sub_244194FC8(0, qword_280F94B20, off_278E089E0);
      v4 = sub_2441D8CFC();
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v0 + 16);
    (v5)[2](v5, v4, 0);
    _Block_release(v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2441AE790()
{
  v1 = v0[2];

  v2 = v0[6];
  if (v1)
  {
    v3 = v0[2];
    v4 = sub_2441D88AC();

    (v3)[2](v3, 0, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

ATXAmbientConfigurationReader __swiftcall ATXAmbientConfigurationReader.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2441AE904()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_244198A50;

  return sub_2441AE560(v2);
}

uint64_t sub_2441AE9B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A54;

  return sub_244197B10(a1, v4);
}

uint64_t sub_2441AEA90()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2441AEAC0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2441AEAF0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2441AEB20()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall CarPlayWidgetConfigurationMetricsEvent.init(extensionBundleId:kind:configurationIntentType:intentHash:wasSuggested:widgetPositionInStack:positionOfStack:numberOfStacksSupported:)(ContextualSuggestionClient::CarPlayWidgetConfigurationMetricsEvent *__return_ptr retstr, Swift::String extensionBundleId, Swift::String kind, Swift::String_optional configurationIntentType, Swift::String_optional intentHash, Swift::Bool wasSuggested, Swift::Int widgetPositionInStack, Swift::Int positionOfStack, Swift::Int numberOfStacksSupported)
{
  retstr->extensionBundleId = extensionBundleId;
  retstr->kind = kind;
  retstr->configurationIntentType = configurationIntentType;
  retstr->intentHash = intentHash;
  retstr->wasSuggested = wasSuggested;
  *&retstr->widgetPositionInStack = *&widgetPositionInStack;
  retstr->numberOfStacksSupported = numberOfStacksSupported;
}

unint64_t sub_2441AEBB0()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6E6F697469736F70;
  if (v1 != 6)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0x6567677553736177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6148746E65746E69;
  if (v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2441AECC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441AF434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441AECF8(uint64_t a1)
{
  v2 = sub_2441AF000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441AED34(uint64_t a1)
{
  v2 = sub_2441AF000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayWidgetConfigurationMetricsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D20, &qword_2441DB460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v8 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v8;
  v9 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v9;
  v14 = *(v1 + 64);
  v10 = *(v1 + 72);
  v13[2] = *(v1 + 80);
  v13[3] = v10;
  v13[1] = *(v1 + 88);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441AF000();
  sub_2441D92BC();
  v29 = 0;
  v11 = v21;
  sub_2441D916C();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v28 = 1;
  sub_2441D916C();
  v27 = 2;
  sub_2441D915C();
  v26 = 3;
  sub_2441D915C();
  v25 = 4;
  sub_2441D917C();
  v24 = 5;
  sub_2441D919C();
  v23 = 6;
  sub_2441D919C();
  v22 = 7;
  sub_2441D919C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441AF000()
{
  result = qword_27EDD7390[0];
  if (!qword_27EDD7390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7390);
  }

  return result;
}

unint64_t sub_2441AF074(uint64_t a1)
{
  result = sub_2441AF09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441AF09C()
{
  result = qword_27EDD5D28;
  if (!qword_27EDD5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D28);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2441AF124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2441AF16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CarPlayWidgetOutcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CarPlayWidgetOutcome(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2441AF330()
{
  result = qword_27EDD75A0[0];
  if (!qword_27EDD75A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD75A0);
  }

  return result;
}

unint64_t sub_2441AF388()
{
  result = qword_27EDD76B0;
  if (!qword_27EDD76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD76B0);
  }

  return result;
}

unint64_t sub_2441AF3E0()
{
  result = qword_27EDD76B8[0];
  if (!qword_27EDD76B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD76B8);
  }

  return result;
}

uint64_t sub_2441AF434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000002441DF010 == a2;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF030 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148746E65746E69 && a2 == 0xEA00000000006873 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567677553736177 && a2 == 0xEC00000064657473 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002441DF050 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEF6B63617453664FLL || (sub_2441D91CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF070 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2441D91CC();

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

uint64_t sub_2441AF6E4()
{
  v7 = sub_2441D8E3C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2441AF92C();
  sub_2441D8BCC();
  v8 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_2441D8E6C();
}

unint64_t sub_2441AF92C()
{
  result = qword_27EDD5DE0;
  if (!qword_27EDD5DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDD5DE0);
  }

  return result;
}

id sub_2441AF978()
{
  sub_2441D8C6C();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2441D8C4C();

  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t CarPlayWidgetEngagementStream.identifier.getter()
{
  v1 = [*(v0 + 8) identifier];
  v2 = sub_2441D8C6C();

  return v2;
}

double CarPlayWidgetEngagementStream.init()@<D0>(uint64_t a1@<X8>)
{
  CarPlayWidgetEngagementStream.init(config:)(0, &v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void CarPlayWidgetEngagementStream.init(config:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v20 = sub_2441D8E3C();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v6 - 8);
  v19[1] = sub_2441AF92C();
  sub_2441D8BCC();
  v23 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v20);
  v7 = v21;
  v8 = sub_2441D8E6C();
  sub_2441D8C6C();
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_2441D8C4C();

  v11 = [v9 initWithSuiteName_];

  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = [objc_opt_self() atx:2419200.0 storeConfigWithMaxAge:?];
  }

  type metadata accessor for CarPlayWidgetEngagementEvent();
  v13 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v14 = v7;
  v15 = v12;
  v16 = sub_2441D8C4C();
  v17 = [v13 initWithPrivateStreamIdentifier:v16 storeConfig:v15 eventDataClass:swift_getObjCClassFromMetadata()];

  v18 = v22;
  *v22 = v8;
  v18[1] = v17;
  v18[2] = v11;
}

void CarPlayWidgetEngagementStream.sendEvent(_:)(uint64_t a1)
{
  v3 = [*(v1 + 8) source];
  [v3 sendEvent_];
}

id CarPlayWidgetEngagementStream.source()()
{
  v1 = [*(v0 + 8) source];

  return v1;
}

Swift::Void __swiftcall CarPlayWidgetEngagementStream.logViewDidAppear()()
{
  v1 = sub_2441D8BAC();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2441D8BEC();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = *(v0 + 16);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  aBlock[4] = sub_2441B0180;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v7;
  v13 = v8;
  sub_2441D8BDC();
  v17 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v6, v3, v11);
  _Block_release(v11);
  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

void sub_2441B0180()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = sub_2441D8D6C();
    sub_2441C27EC();

    v2 = sub_2441D8C4C();

    [v1 setValue:v3 forKey:v2];
  }
}

double sub_2441B02B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = sub_2441D8BAC();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2441D8BEC();
  v27 = *(v13 - 8);
  v28 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v6;
  v16 = *(v6 + 8);
  v18 = *(v6 + 16);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = v17;
  v19[6] = v16;
  v19[7] = v18;
  aBlock[4] = v25;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = a1;

  v17;
  v23 = v16;
  sub_2441D8BDC();
  v30 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v15, v12, v20);
  _Block_release(v20);
  (*(v29 + 8))(v12, v10);
  (*(v27 + 8))(v15, v28);

  return result;
}

uint64_t sub_2441B05E8(void *a1, void *a2, uint64_t a3, void *a4, int a5, const char *a6, const char *a7, ...)
{
  v63 = a7;
  v62 = a6;
  LODWORD(v72) = a5;
  v66 = a4;
  v73 = a2;
  v78 = sub_2441D8B8C();
  v74 = *(v78 - 8);
  v9 = MEMORY[0x28223BE20](v78);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - v11;
  v12 = sub_2441D892C();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = [a1 chsWidget];
  v22 = [v21 extensionIdentity];

  v23 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  v75 = v16;
  v24 = *(v16 + 16);
  v65 = v16 + 16;
  v64 = v24;
  v24(v20, &v22[v23], v15);

  v25 = [a1 chsWidget];
  v26 = [v25 kind];

  v27 = sub_2441D8C6C();
  v29 = v28;

  type metadata accessor for CarPlayWidgetEngagementEvent();

  v30 = [a1 identifier];
  v31 = sub_2441D8C6C();
  v33 = v32;

  v76 = v20;
  v77 = v15;
  v34 = sub_2441D89BC();
  v36 = v35;

  sub_2441D890C();
  sub_2441D88EC();
  v38 = v37;
  (*(v70 + 8))(v14, v71);
  LOBYTE(v79[0]) = v72;
  v39 = CarPlayWidgetEngagementEvent.__allocating_init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(v73, a3, v31, v33, v34, v36, v27, v29, v38, v79);
  v72 = v27;
  v40 = [v66 source];
  v73 = v39;
  [v40 sendEvent_];

  v41 = sub_2441957AC();
  v42 = v74;
  v43 = v78;
  (*(v74 + 16))(v69, v41, v78);
  v44 = v67;
  v46 = v76;
  v45 = v77;
  v64(v67, v76, v77);
  v47 = v29;

  v48 = sub_2441D8B7C();
  v49 = sub_2441D8E1C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    v51 = v79[0];
    *v50 = 136315394;
    v52 = sub_2441D89BC();
    v54 = v53;
    v55 = v44;
    v56 = *(v75 + 8);
    v56(v55, v45);
    v57 = sub_244195848(v52, v54, v79);

    *(v50 + 4) = v57;
    *(v50 + 12) = 2080;
    v58 = sub_244195848(v72, v47, v79);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_244192000, v48, v49, v62, v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v51, -1, -1);
    MEMORY[0x245D5B3C0](v50, -1, -1);

    (*(v42 + 8))(v69, v78);
    return (v56)(v76, v77);
  }

  else
  {

    v60 = *(v75 + 8);
    v60(v44, v45);
    (*(v42 + 8))(v69, v43);
    return (v60)(v46, v45);
  }
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v10 = sub_2441D8BAC();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2441D8BEC();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v17 = *(v5 + 8);
  v18 = *(v5 + 16);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v16;
  v19[4] = v17;
  v19[5] = v18;
  v20 = v28;
  v19[6] = a3;
  v19[7] = v20;
  v19[8] = a5;
  v19[9] = a1;
  aBlock[4] = sub_2441B1C84;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  v23 = a2;
  v16;
  v24 = v17;
  v25 = v18;

  sub_2441D8BDC();
  v32 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v15, v12, v21);
  _Block_release(v21);
  (*(v31 + 8))(v12, v10);
  (*(v29 + 8))(v15, v30);

  return result;
}

uint64_t sub_2441B10F0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v107 = a7;
  v111 = a5;
  v112 = a6;
  v102 = a3;
  v106 = a2;
  v9 = sub_2441D8B8C();
  v10 = *(v9 - 8);
  v116 = v9;
  v117 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v98 - v15;
  v16 = sub_2441D892C();
  v109 = *(v16 - 8);
  v110 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v101 = &v98 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v98 - v25;
  v27 = [a1 chsWidget];
  v28 = [v27 extensionIdentity];

  v29 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  v113 = v20;
  v30 = *(v20 + 16);
  v31 = &v28[v29];
  v32 = v19;
  v118 = v26;
  v105 = v20 + 16;
  v104 = v30;
  v30(v26, v31, v19);

  v33 = [a1 chsWidget];
  v34 = [v33 kind];

  v115 = sub_2441D8C6C();
  v119 = v35;

  switch(a4)
  {
    case 1:
      v36 = 5;
      break;
    case 2:
      if ([a1 isSuggestedWidget])
      {
        v37 = v102;
        if (v102)
        {
          v38 = sub_2441D8D6C();
          sub_2441C283C();

          v39 = sub_2441D8C4C();

          [v37 setValue:v38 forKey:v39];
        }

        v36 = 3;
      }

      else
      {
        v40 = v102;
        if (v102)
        {
          v41 = sub_2441D8D6C();
          sub_2441C2814();

          v42 = sub_2441D8C4C();

          [v40 setValue:v41 forKey:v42];
        }

        v36 = 6;
      }

      break;
    case 3:
      v36 = 4;
      break;
    default:
      v36 = 0;
      break;
  }

  type metadata accessor for CarPlayWidgetEngagementEvent();
  v43 = v112;

  v44 = [a1 identifier];
  v45 = sub_2441D8C6C();
  v47 = v46;

  v114 = v32;
  v48 = sub_2441D89BC();
  v50 = v49;
  v51 = v119;

  sub_2441D890C();
  sub_2441D88EC();
  v53 = v52;
  (*(v109 + 8))(v18, v110);
  LOBYTE(v120[0]) = v36;
  v54 = CarPlayWidgetEngagementEvent.__allocating_init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(v111, v43, v45, v47, v48, v50, v115, v51, v53, v120);
  v55 = [v106 source];
  [v55 sendEvent_];

  v57 = v116;
  v56 = v117;
  if (v107)
  {
    v112 = v54;
    v58 = [v107 identifier];
    v111 = sub_2441D8C6C();
    v60 = v59;

    v61 = sub_2441957AC();
    v62 = v103;
    (*(v56 + 16))(v103, v61, v57);
    v63 = v101;
    v64 = v118;
    v65 = v114;
    v104(v101, v118, v114);

    v66 = sub_2441D8B7C();
    v67 = sub_2441D8E1C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v119;
      v70 = v68;
      v110 = swift_slowAlloc();
      v120[0] = v110;
      *v70 = 136315650;
      v71 = sub_2441D89BC();
      v73 = v72;
      v74 = *(v113 + 8);
      v74(v63, v65);
      v75 = sub_244195848(v71, v73, v120);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = sub_244195848(v115, v69, v120);

      *(v70 + 14) = v76;
      *(v70 + 22) = 2080;
      v77 = sub_244195848(v111, v60, v120);

      *(v70 + 24) = v77;
      _os_log_impl(&dword_244192000, v66, v67, "Successfully sent logStackDidChange feedback event for widget %s of kind %s in stack with identifier %s", v70, 0x20u);
      v78 = v110;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v78, -1, -1);
      MEMORY[0x245D5B3C0](v70, -1, -1);

      (*(v117 + 8))(v103, v116);
      return (v74)(v118, v65);
    }

    v97 = *(v113 + 8);
    v97(v63, v65);
    (*(v117 + 8))(v62, v116);
  }

  else
  {
    v80 = sub_2441957AC();
    v81 = v100;
    (*(v56 + 16))(v100, v80, v57);
    v82 = v99;
    v64 = v118;
    v65 = v114;
    v104(v99, v118, v114);

    v83 = sub_2441D8B7C();
    v84 = sub_2441D8E1C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v117;
      v88 = v86;
      v120[0] = v86;
      *v85 = 136315394;
      v89 = sub_2441D89BC();
      v91 = v90;
      v112 = v54;
      v92 = v119;
      v93 = v82;
      v94 = *(v113 + 8);
      v94(v93, v65);
      v95 = sub_244195848(v89, v91, v120);

      *(v85 + 4) = v95;
      *(v85 + 12) = 2080;
      v96 = sub_244195848(v115, v92, v120);

      *(v85 + 14) = v96;
      _os_log_impl(&dword_244192000, v83, v84, "Successfully sent logStackDidChange feedback event for widget %s of kind %s in unknown stack", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v88, -1, -1);
      MEMORY[0x245D5B3C0](v85, -1, -1);

      (*(v87 + 8))(v100, v116);
      return (v94)(v118, v114);
    }

    v97 = *(v113 + 8);
    v97(v82, v65);
    (*(v117 + 8))(v81, v57);
  }

  return (v97)(v64, v65);
}

uint64_t CarPlayWidgetEngagementStream.getEngagementLogs(lastN:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v12 = *v1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = CarPlayWidgetEngagementStream.publisher(lastN:)(v5);

  v15 = sub_2441B20B4;
  v16 = 0;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2441B2EB4;
  v14 = &block_descriptor_30;
  v7 = _Block_copy(&v12);
  v15 = sub_2441B20B8;
  v16 = v4;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2441B2EB4;
  v14 = &block_descriptor_33;
  v8 = _Block_copy(&v12);

  v9 = [v6 sinkWithCompletion:v7 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();
  v10 = *(v4 + 16);

  return v10;
}

id CarPlayWidgetEngagementStream.publisher(lastN:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *(v1 + 8);
  v10 = sub_2441D892C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 1, 1, v10);
  v12(v6, 1, 1, v10);
  v13 = [a1 integerValue];
  v14 = *(v11 + 48);
  v15 = 0;
  if (v14(v8, 1, v10) != 1)
  {
    v15 = sub_2441D88FC();
    (*(v11 + 8))(v8, v10);
  }

  if (v14(v6, 1, v10) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_2441D88FC();
    (*(v11 + 8))(v6, v10);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v15 endDate:v16 maxEvents:0 lastN:v13 reversed:0];

  v18 = [v9 publisherWithOptions_];
  return v18;
}

uint64_t CarPlayWidgetEngagementStream.getEngagementLogs(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock - v5;
  v7 = *(v2 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = sub_2441D892C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a2, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_2441D88FC();
  v12 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    v12 = sub_2441D88FC();
    (*(v10 + 8))(v6, v9);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v11 endDate:v12 maxEvents:0 lastN:0 reversed:0];

  v14 = [v7 publisherWithOptions_];
  v24 = sub_2441B2E8C;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2441B2EB4;
  v23 = &block_descriptor_37;
  v15 = _Block_copy(&aBlock);
  v24 = sub_2441B29A4;
  v25 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2441B29C4;
  v23 = &block_descriptor_40;
  v16 = _Block_copy(&aBlock);

  v17 = [v14 sinkWithCompletion:v15 shouldContinue:v16];
  _Block_release(v16);
  _Block_release(v15);

  swift_beginAccess();
  v18 = *(v8 + 16);

  return v18;
}

id CarPlayWidgetEngagementStream.publisher(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(v2 + 8);
  v8 = sub_2441D892C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_2441D88FC();
  v11 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v11 = sub_2441D88FC();
    (*(v9 + 8))(v6, v8);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v10 endDate:v11 maxEvents:0 lastN:0 reversed:0];

  v13 = [v7 publisherWithOptions_];
  return v13;
}

id sub_2441B25C8(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    v8 = sub_2441957AC();
    (*(v3 + 16))(v5, v8, v2);
    v9 = v7;
    v10 = sub_2441D8B7C();
    v11 = sub_2441D8E0C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_244192000, v10, v11, "Could not retrieve events from engagement stream: %@", v12, 0xCu);
      sub_2441B2E00(v13);
      MEMORY[0x245D5B3C0](v13, -1, -1);
      MEMORY[0x245D5B3C0](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_2441B27AC(void *a1, uint64_t a2)
{
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    v10 = v9;
    MEMORY[0x245D5A4E0]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2441D8D2C();
    }

    sub_2441D8D4C();
    swift_endAccess();
  }

  else
  {
    v11 = sub_2441957AC();
    (*(v5 + 16))(v7, v11, v4);
    v12 = sub_2441D8B7C();
    v13 = sub_2441D8E0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_244192000, v12, v13, "Failed to get eventBody from event.", v14, 2u);
      MEMORY[0x245D5B3C0](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2441B29C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

Swift::Void __swiftcall CarPlayWidgetEngagementStream.clearAllData()()
{
  v1 = sub_2441D8B8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  aBlock[4] = sub_2441AD9E4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441B2C28;
  aBlock[3] = &block_descriptor_43;
  v6 = _Block_copy(aBlock);

  [v5 pruneWithPredicateBlock_];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = sub_2441957AC();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2441D8B7C();
    v9 = sub_2441D8DFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_244192000, v8, v9, "CarPlayWidgetFeedback stream cleared.", v10, 2u);
      MEMORY[0x245D5B3C0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_2441B2C28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

void sub_2441B2C84(uint64_t a1)
{
  v3 = [*(v1 + 8) source];
  [v3 sendEvent_];
}

void *sub_2441B2CF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2441B2D18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2441B2D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ATXWidgetStackChangeReason()
{
  if (!qword_27EDD5D38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDD5D38);
    }
  }
}

uint64_t sub_2441B2E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2441B2ED4(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [v2 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v4 = sub_2441D8D0C();

  v48 = v1;
  v47 = v2;
  if (v4 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_49:

    return;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D5A7F0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v5 = sub_2441D8F5C();
      if (!v5)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    if ([v7 isSuggestedWidget])
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_49;
    }
  }

  v10 = a1;
  if (a1 >> 62)
  {
    v4 = a1;
    v45 = sub_2441D8F5C();
    v10 = a1;
    v11 = v45;
    if (!v45)
    {
      goto LABEL_51;
    }

LABEL_14:
    v12 = 0;
    v50 = v10 & 0xFFFFFFFFFFFFFF8;
    v51 = v10 & 0xC000000000000001;
    v49 = v11;
    while (1)
    {
      if (v51)
      {
        v13 = MEMORY[0x245D5A7F0](v12);
      }

      else
      {
        if (v12 >= *(v50 + 16))
        {
          goto LABEL_47;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v4 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_46;
      }

      v15 = *&v13[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
      v16 = *&v13[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8];
      v17 = [v8 chsWidget];
      v18 = [v17 extensionIdentity];

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
      v19 = sub_2441D89BC();
      v21 = v20;
      swift_endAccess();

      if (v15 == v19 && v16 == v21)
      {
      }

      else
      {
        v23 = sub_2441D91CC();

        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v24 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
      v25 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8);
      v26 = [v8 chsWidget];
      v27 = [v26 kind];

      v28 = sub_2441D8C6C();
      v30 = v29;

      if (v24 == v28 && v25 == v30)
      {
      }

      else
      {
        v31 = sub_2441D91CC();

        if ((v31 & 1) == 0)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      v32 = [v8 chsWidget];
      v33 = [v32 intentReference];

      if (!v33 || (v34 = [v33 intent], v33, !v34))
      {
        v34 = v4;
LABEL_40:

LABEL_41:
        v37 = [v47 identifier];
        if (!v37)
        {
          sub_2441D8C6C();
          v37 = sub_2441D8C4C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2441DB770;
        *(inited + 32) = v8;
        v39 = v8;
        sub_2441B7AA4(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v40 = objc_allocWithZone(ATXWidgetStackSuggestion);
        sub_244195E64();
        v41 = v39;
        v42 = sub_2441D8DAC();

        v43 = [v40 initWithStackIdentifier:v37 topWidget:v41 suggestedWidgets:v42];

        v44 = *(v48 + 32);
        *(v48 + 32) = v43;

        return;
      }

      v35 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
      if (!v35)
      {

        goto LABEL_40;
      }

      v36 = [objc_opt_self() intent:v34 isEqualToIntent:v35];

      if (v36)
      {
        goto LABEL_41;
      }

LABEL_16:
      ++v12;
      v10 = a1;
      if (v14 == v49)
      {
        goto LABEL_51;
      }
    }
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_51:
  sub_2441B6614();
  swift_allocError();
  *v46 = 4;
  swift_willThrow();
}

void *sub_2441B3474(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2441D8F5C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D5A7F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2441B3588(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_2441D8F5C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D5A7F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_2441B36AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (![v2 allowsSmartRotate])
  {
    sub_2441B7D94();
    swift_allocError();
    v33 = 0;
LABEL_41:
    *v32 = v33;
    swift_willThrow();
    return;
  }

  v3 = [v2 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v4 = sub_2441D8D0C();

  v43 = v1;
  v42 = v2;
  if (v4 >> 62)
  {
LABEL_39:
    v5 = sub_2441D8F5C();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_40:

    sub_2441B7D94();
    swift_allocError();
    v33 = 1;
    goto LABEL_41;
  }

LABEL_4:
  v6 = 0;
  v48 = (a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  v45 = (a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  v44 = OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent;
  v47 = v5;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D5A7F0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v10 = *v48;
    v11 = v48[1];
    v12 = [v7 chsWidget];
    v13 = [v12 extensionIdentity];

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
    v14 = sub_2441D89BC();
    v16 = v15;
    swift_endAccess();

    if (v10 == v14 && v11 == v16)
    {
    }

    else
    {
      v18 = sub_2441D91CC();

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *v45;
    v20 = v45[1];
    v21 = [v8 chsWidget];
    v22 = [v21 kind];

    v23 = sub_2441D8C6C();
    v25 = v24;

    if (v19 == v23 && v20 == v25)
    {
    }

    else
    {
      v26 = sub_2441D91CC();

      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v27 = [v8 chsWidget];
    v28 = [v27 intentReference];

    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = [v28 intent];

    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = *(a1 + v44);
    if (!v30)
    {
      break;
    }

    v31 = [objc_opt_self() intent:v29 isEqualToIntent:v30];

    if (v31)
    {
      goto LABEL_29;
    }

LABEL_5:

    ++v6;
    if (v9 == v47)
    {
      goto LABEL_40;
    }
  }

LABEL_29:

  v34 = [v42 identifier];
  if (!v34)
  {
    sub_2441D8C6C();
    v34 = sub_2441D8C4C();
  }

  v35 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (v35)
  {
    v36 = [v35 clientModelId];
    if (!v36)
    {
      sub_2441D8C6C();
      v36 = sub_2441D8C4C();
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = [v8 copyWithSource_];

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_2441D8F5C())
    {
      sub_2441B7AA4(MEMORY[0x277D84F90]);
    }
  }

  v38 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244195E64();
  v39 = sub_2441D8DAC();

  v40 = [v38 initWithStackIdentifier:v34 topWidget:v37 suggestedWidgets:v39];

  v41 = *(v43 + 32);
  *(v43 + 32) = v40;
}

void sub_2441B3C1C(uint64_t a1, void *a2)
{
  v80 = a2;
  v5 = sub_2441D895C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v69 - v13;
  v14 = *(v2 + 16);
  if (![v14 allowsNewWidget])
  {
    sub_2441B6614();
    swift_allocError();
    *v23 = 0;
    goto LABEL_14;
  }

  v71 = v11;
  v72 = v8;
  v73 = v6;
  v78 = a1;
  v15 = [v14 widgets];
  v16 = sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v17 = sub_2441D8D0C();

  v75 = v16;
  v76 = v3;
  v77 = v14;
  v74 = v5;
  if (v17 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2441D8F5C())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x245D5A7F0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v20 isSuggestedWidget])
      {

        sub_2441B6614();
        swift_allocError();
        *v24 = 3;
        swift_willThrow();

        return;
      }

      ++v19;
      if (v22 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v70 = v2;

  type metadata accessor for WidgetPersonality();
  v26 = *(v78 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  v25 = *(v78 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8);
  v28 = *(v78 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  v27 = *(v78 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8);

  v29 = sub_2441C38C4(v26, v25, v28, v27);
  v30 = [v80 descriptorForPersonality_];
  v31 = v77;
  if (!v30)
  {
    type metadata accessor for SpecialWidgetDescriptor();
    v32 = v29;
    v33 = sub_2441C9FD8(v32);
    if (v33)
    {
      v30 = v33;
      goto LABEL_22;
    }

    sub_2441B6614();
    swift_allocError();
    *v42 = v32;
LABEL_14:
    swift_willThrow();
    return;
  }

LABEL_22:
  [v31 family];
  v34 = CHSWidgetFamilyMaskFromWidgetFamily();
  if ((v34 & ~[v30 supportedFamilies]) != 0)
  {
    sub_2441B6614();
    swift_allocError();
    v37 = 2;
LABEL_31:
    *v36 = v37;
    swift_willThrow();

    return;
  }

  if (*(v70 + 24))
  {
    if (*(v70 + 24) == 1)
    {
      v35 = sub_2441C9FA0();
    }

    else
    {
      v35 = sub_2441C9FC4();
    }
  }

  else
  {
    v35 = sub_2441C9FB8();
  }

  if ((v34 & ~[v30 disfavoredFamiliesForLocation_]) == 0)
  {
    sub_2441B6614();
    swift_allocError();
    v37 = 5;
    goto LABEL_31;
  }

  sub_2441D89AC();
  v38 = v78;
  v39 = *(v78 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8);
  v69 = v29;
  v80 = v30;
  if (v39)
  {

    v40 = v71;
    sub_2441D89AC();
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v71;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
  (*(*(v43 - 8) + 56))(v40, v41, 1, v43);
  sub_2441D8E9C();
  v44 = sub_2441D8E8C();
  v45 = [v31 &selRef_clientModelTypeFromClientModelId_];
  v46 = *(v38 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  v47 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v48 = v38;
  v49 = sub_2441D8C4C();
  v50 = [v47 initWithExtensionIdentity:v44 kind:v49 family:v45 intent:v46 activityIdentifier:0];

  v51 = v72;
  sub_2441D894C();
  sub_2441D893C();
  (*(v73 + 8))(v51, v74);
  v52 = *(v48 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (v52)
  {
    v53 = [v52 clientModelId];
    sub_2441D8C6C();
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v56 = v70;
  v57 = v50;
  v58 = sub_2441D8C4C();

  if (v55)
  {
    v59 = sub_2441D8C4C();
  }

  else
  {
    v59 = 0;
  }

  v60 = [objc_allocWithZone(ATXWidget) initWithIdentifier:v58 chsWidget:v57 suggestedWidget:1 source:v59];

  v61 = [v31 identifier];
  if (!v61)
  {
    sub_2441D8C6C();
    v61 = sub_2441D8C4C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2441DB770;
  *(inited + 32) = v60;
  v63 = v60;
  sub_2441B7AA4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244195E64();
  v65 = v63;
  v66 = sub_2441D8DAC();

  v67 = [v64 initWithStackIdentifier:v61 topWidget:v65 suggestedWidgets:v66];

  v68 = *(v56 + 32);
  *(v56 + 32) = v67;
}

uint64_t sub_2441B4458()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_2441B4498()
{
  v0 = objc_allocWithZone(ATXWidgetLocationAuthorizationTracker);

  return [v0 init];
}

uint64_t sub_2441B4508(unsigned __int8 a1)
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](a1);
  return sub_2441D926C();
}

uint64_t sub_2441B4558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetStackSuggestionGenerator(0) + 40);
  v4 = sub_2441D8B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetStackSuggestionGenerator(uint64_t a1)
{
  result = qword_27EDD7AC0;
  if (!qword_27EDD7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2441B4620@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 40) = [objc_allocWithZone(ATXWidgetLocationAuthorizationTracker) init];
  *(a6 + 48) = a1;
  if (a2 >> 62)
  {
    v12 = sub_2441D8F5C();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = sub_2441D904C();
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      v16 = MEMORY[0x245D5A7F0]();
      type metadata accessor for WidgetStackSuggestionGenerator.StackState();
      v17 = swift_allocObject();
      *(v17 + 32) = 0;
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      sub_2441D902C();
      sub_2441D905C();
      sub_2441D906C();
      sub_2441D903C();
      v14 = v15;
    }

    while (v12 != v15);
  }

  else
  {
    v26 = a5;
    type metadata accessor for WidgetStackSuggestionGenerator.StackState();
    v18 = 32;
    do
    {
      v19 = *(a2 + v18);
      v20 = swift_allocObject();
      *(v20 + 32) = 0;
      *(v20 + 16) = v19;
      *(v20 + 24) = a1;
      v21 = v19;
      sub_2441D902C();
      sub_2441D905C();
      sub_2441D906C();
      sub_2441D903C();
      v18 += 8;
      --v12;
    }

    while (v12);

    a5 = v26;
  }

  a4 = v27;
  v22 = v28;
LABEL_14:
  *a6 = v22;
  *(a6 + 8) = a3;
  *(a6 + 32) = a4;
  v23 = *(type metadata accessor for WidgetStackSuggestionGenerator(0) + 40);
  v24 = sub_2441D8B8C();
  v25 = *(*(v24 - 8) + 32);

  return v25(a6 + v23, a5, v24);
}

unint64_t sub_2441B4894()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1)
  {
    v3 = v0[2];
    goto LABEL_114;
  }

  v83 = v0[3];
  sub_244199AF4();
  v5 = v0[1];
  v90[0] = MEMORY[0x277D84F90];
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_132:
    v76 = v4;
    v7 = sub_2441D8F5C();
    v4 = v76;
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = v0;
  v82 = v4;
  if (v7)
  {
    v8 = 0;
    v0 = MEMORY[0x277D84F90];
    while (2)
    {
      v9 = v8;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x245D5A7F0](v9, v5);
        }

        else
        {
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_117;
          }

          v4 = *(v5 + 8 * v9 + 32);
        }

        v10 = v4;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        type metadata accessor for ContextualActionSuggestion();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v9;
        if (v8 == v7)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x245D5A4E0]();
      if (*((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2441D8D2C();
      }

      v4 = sub_2441D8D4C();
      v0 = v90[0];
      if (v8 != v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

LABEL_21:
  v92 = v0;
  v91 = sub_2441B7DE8(MEMORY[0x277D84F90]);
  v11 = v85;
  v12 = *v85;
  if (!(*v85 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_112:

    goto LABEL_113;
  }

  v13 = sub_2441D8F5C();
  if (!v13)
  {
    goto LABEL_112;
  }

LABEL_23:
  v6 = 0;
  v14 = v12 & 0xC000000000000001;
  v77 = v12 + 32;
  v78 = v12 & 0xFFFFFFFFFFFFFF8;
  v15 = &unk_278E09000;
  v16 = &unk_278E09000;
  v80 = v13;
  v81 = v12;
  v79 = v12 & 0xC000000000000001;
  while (1)
  {
    if (v14)
    {
      v4 = MEMORY[0x245D5A7F0](v6, v12);
      v0 = v4;
      v17 = __OFADD__(v6++, 1);
      if (v17)
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v6 >= *(v78 + 16))
      {
        __break(1u);
LABEL_136:
        result = sub_2441D91EC();
        __break(1u);
        return result;
      }

      v0 = *(v77 + 8 * v6);

      v17 = __OFADD__(v6++, 1);
      if (v17)
      {
        goto LABEL_127;
      }
    }

    v5 = [v0[2] v15[247]];
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    v18 = sub_2441D8D0C();

    v87 = v18;
    if (!(v18 >> 62))
    {
      v4 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        break;
      }

      goto LABEL_108;
    }

    v4 = sub_2441D8F5C();
    if (v4)
    {
      break;
    }

LABEL_108:

LABEL_25:

    if (v6 == v13)
    {
      goto LABEL_112;
    }
  }

  v84 = v6;
  v19 = v18;
  v88 = v4;
  v89 = v18 & 0xC000000000000001;
  v86 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = 4;
  while (1)
  {
    v0 = (v20 - 4);
    if (v89)
    {
      v4 = MEMORY[0x245D5A7F0](v20 - 4, v19);
    }

    else
    {
      if (v0 >= *(v86 + 16))
      {
        goto LABEL_118;
      }

      v4 = *(v19 + 8 * v20);
    }

    v23 = v4;
    v5 = v20 - 3;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    v24 = [v4 v16[192]];
    v25 = [v24 extensionIdentity];

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
    v26 = sub_2441D89BC();
    v28 = v27;
    swift_endAccess();

    if (v26 == sub_2441D8C6C() && v28 == v29)
    {
    }

    else
    {
      v6 = sub_2441D91CC();

      if ((v6 & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    v31 = [v23 v16[192]];
    v32 = [v31 kind];

    v33 = sub_2441D8C6C();
    v35 = v34;

    v36 = ATXSpecialWidgetKindSiriSuggestions();
    v37 = sub_2441D8C6C();
    v39 = v38;

    if (v33 == v37 && v35 == v39)
    {
    }

    else
    {
      v6 = sub_2441D91CC();

      if ((v6 & 1) == 0)
      {

        v19 = v87;
        goto LABEL_37;
      }
    }

    v6 = v92;
    v40 = v92 >> 62;
    if (v92 >> 62)
    {
      break;
    }

    if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_109;
    }

LABEL_56:
    v41 = [v23 identifier];
    v42 = sub_2441D8C6C();
    v44 = v43;

    if (*(v91 + 16))
    {
      sub_244198F90(v42, v44);
      v46 = v45;

      if (v46)
      {
        v47 = [v23 identifier];
        v48 = sub_2441D8C6C();
        v50 = v49;

        v0 = &v91;
        v4 = sub_2441B5DF4(v90, v48, v50);
        v52 = v4;
        if (!*v51)
        {
          (v4)(v90, 0);

          v16 = &unk_278E09000;
          v19 = v87;
          goto LABEL_37;
        }

        v53 = v51;
        if (v40)
        {
          if (v6 < 0)
          {
            v0 = v6;
          }

          else
          {
            v0 = (v6 & 0xFFFFFFFFFFFFFF8);
          }

          v4 = sub_2441D8F5C();
          if (!v4)
          {
            goto LABEL_129;
          }

          v4 = sub_2441D8F5C();
          if (!v4)
          {
            goto LABEL_130;
          }
        }

        else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245D5A7F0](0, v6);
          if (!v40)
          {
LABEL_85:
            v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_103:
            v19 = v87;
            if (!v4)
            {
              goto LABEL_131;
            }

            v70 = sub_2441B7FEC(0, 1);
            MEMORY[0x245D5A4E0](v70);
            if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2441D8D2C();
              v19 = v87;
            }

            sub_2441D8D4C();
            v52(v90, 0);

            goto LABEL_36;
          }
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v59 = *(v6 + 32);
          if (!v40)
          {
            goto LABEL_85;
          }
        }

        v4 = sub_2441D8F5C();
        goto LABEL_103;
      }
    }

    else
    {
    }

    v0 = [v23 identifier];
    v54 = sub_2441D8C6C();
    v56 = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    v4 = swift_allocObject();
    v57 = v4;
    *(v4 + 16) = xmmword_2441DB770;
    if (v40)
    {
      if (v6 < 0)
      {
        v0 = v6;
      }

      else
      {
        v0 = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      v4 = sub_2441D8F5C();
      if (!v4)
      {
        goto LABEL_121;
      }

      v4 = sub_2441D8F5C();
      if (!v4)
      {
        goto LABEL_123;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_122;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x245D5A7F0](0, v6);
      if (!v40)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v58 = *(v6 + 32);
      if (!v40)
      {
LABEL_75:
        v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_90;
      }
    }

    v4 = sub_2441D8F5C();
LABEL_90:
    v19 = v87;
    if (!v4)
    {
      goto LABEL_124;
    }

    sub_2441B7FEC(0, 1);
    *(v57 + 32) = v58;
    v0 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v0;
    v4 = sub_244198F90(v54, v56);
    v62 = v0[2];
    v63 = (v61 & 1) == 0;
    v17 = __OFADD__(v62, v63);
    v64 = v62 + v63;
    if (v17)
    {
      goto LABEL_120;
    }

    v6 = v61;
    if (v0[3] < v64)
    {
      sub_2441B7420(v64, isUniquelyReferenced_nonNull_native);
      v4 = sub_244198F90(v54, v56);
      if ((v6 & 1) != (v65 & 1))
      {
        goto LABEL_136;
      }

LABEL_96:
      if ((v6 & 1) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_96;
    }

    v69 = v4;
    sub_2441B7878();
    v4 = v69;
    v19 = v87;
    if ((v6 & 1) == 0)
    {
LABEL_97:
      v0 = v90[0];
      v90[0][(v4 >> 6) + 8] |= 1 << v4;
      v66 = (v0[6] + 16 * v4);
      *v66 = v54;
      v66[1] = v56;
      *(v0[7] + 8 * v4) = v57;

      v67 = v0[2];
      v17 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v17)
      {
        goto LABEL_125;
      }

      v0[2] = v68;
      v91 = v0;
      goto LABEL_36;
    }

LABEL_35:
    v21 = v4;

    v22 = v90[0];
    *(v90[0][7] + 8 * v21) = v57;

    v91 = v22;
LABEL_36:
    v16 = &unk_278E09000;
LABEL_37:
    ++v20;
    if (v5 == v88)
    {

      v11 = v85;
      v13 = v80;
      v12 = v81;
      v6 = v84;
      v14 = v79;
      v15 = &unk_278E09000;
      goto LABEL_25;
    }
  }

  if (sub_2441D8F5C())
  {
    goto LABEL_56;
  }

LABEL_109:

  type metadata accessor for WidgetStackSuggestionGenerator(0);
  v11 = v85;
  v71 = sub_2441D8B7C();
  v72 = sub_2441D8E0C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_244192000, v71, v72, "Ran out of action suggestions while assigning suggestions widgets", v73, 2u);
    MEMORY[0x245D5B3C0](v73, -1, -1);
  }

LABEL_113:
  v74 = v91;
  v3 = v82;
  v11[2] = v82;
  v11[3] = v74;

  v1 = 0;
  v2 = v83;
LABEL_114:
  sub_2441B531C(v1, v2);
  return v3;
}

uint64_t sub_2441B531C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2441B5360()
{
  result = qword_27EDD5D40;
  if (!qword_27EDD5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D40);
  }

  return result;
}

unint64_t sub_2441B53B8()
{
  result = qword_27EDD5D48;
  if (!qword_27EDD5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D48);
  }

  return result;
}

double sub_2441B540C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2441D8B8C();
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  if (!*(v1 + 48))
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (!v11)
    {
LABEL_13:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v20 = v11;
    sub_2441C13C4();

    v12 = sub_2441D8C4C();

    v13 = [v20 dataForKey_];

    if (v13)
    {
      v14 = sub_2441D88DC();
      v16 = v15;

      sub_2441D882C();
      swift_allocObject();
      sub_2441D881C();
      *(a1 + 24) = &type metadata for AmbientDebugRotation;
      *(a1 + 32) = sub_2441B85FC();
      *a1 = swift_allocObject();
      sub_2441B86A0();
      sub_2441D880C();

      v17 = v14;
      v18 = v16;
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_13;
  }

  if (*(v1 + 48) == 1)
  {
    goto LABEL_13;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v5)
  {
    goto LABEL_13;
  }

  v20 = v5;
  sub_2441C288C();

  v6 = sub_2441D8C4C();

  v7 = [v20 dataForKey_];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = sub_2441D88DC();
  v10 = v9;

  sub_2441D882C();
  swift_allocObject();
  sub_2441D881C();
  *(a1 + 24) = &type metadata for CarPlayDebugRotation;
  *(a1 + 32) = sub_2441B84B0();
  *a1 = swift_allocObject();
  sub_2441B8504();
  sub_2441D880C();

  v17 = v8;
  v18 = v10;
LABEL_10:
  sub_2441B85A8(v17, v18);

  return result;
}

uint64_t sub_2441B5A64(void *a1)
{
  v3 = *v1;
  v27 = a1;
  v4 = sub_2441B3588(sub_2441B8150, v26, v3);
  if (!v4)
  {
    type metadata accessor for WidgetStackSuggestionGenerator(0);
    v9 = sub_2441D8B7C();
    v20 = sub_2441D8E0C();
    if (os_log_type_enabled(v9, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_244192000, v9, v20, "Debug rotation didn't refer to an existing stack", v21, 2u);
      MEMORY[0x245D5B3C0](v21, -1, -1);
    }

    goto LABEL_12;
  }

  v5 = *(v4 + 16);
  v6 = [v5 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v7 = sub_2441D8D0C();

  MEMORY[0x28223BE20](v8);
  v25[2] = a1;
  v9 = sub_2441B3474(sub_2441B8230, v25, v7);

  if (!v9)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v10);
    if (((*(v11 + 72))(v10, v11) & 1) == 0)
    {
      type metadata accessor for WidgetStackSuggestionGenerator(0);
      v9 = sub_2441D8B7C();
      v22 = sub_2441D8E0C();
      if (os_log_type_enabled(v9, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_244192000, v9, v22, "Debug rotation didn't refer to an existing widget, and debug rotation doesn't allow for new widget suggestions", v23, 2u);
        MEMORY[0x245D5B3C0](v23, -1, -1);
      }

LABEL_12:
      v19 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }
  }

  v12 = sub_2441B6668(v9, v1, v5, a1);
  type metadata accessor for WidgetStackSuggestionGenerator(0);
  v13 = v12;
  v14 = sub_2441D8B7C();
  v15 = sub_2441D8E1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_244192000, v14, v15, "Applying debug rotation suggestion: %@", v16, 0xCu);
    sub_2441979F8(v17, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v17, -1, -1);
    MEMORY[0x245D5B3C0](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2441DB770;
  *(v19 + 32) = v13;

LABEL_13:
  return v19;
}

uint64_t (*sub_2441B5DF4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2441B7044(v6, a2, a3);
  return sub_2441B5E7C;
}

void sub_2441B5E7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2441B5EC8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2441B5F78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (!v2)
  {
    sub_2441B53B8();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 1;
LABEL_8:
    swift_willThrow();
    return;
  }

  v3 = [v2 clientModelId];
  if (!v3)
  {
    sub_2441D8C6C();
    v3 = sub_2441D8C4C();
  }

  v4 = sub_2441D8C6C();
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  if (v8)
  {
    v9 = v8;
    if ([v9 suggestedConfidenceCategory] <= 2)
    {

      sub_2441B53B8();
      swift_allocError();
      *v10 = 2;
      *(v10 + 8) = 1;
      swift_willThrow();

      return;
    }
  }

  v17 = v5;
  v18 = v7;
  MEMORY[0x28223BE20](v4);
  v16[2] = &v17;
  v12 = sub_2441B5EC8(sub_2441B8458, v16, &unk_28578EED0);

  if (v12)
  {

    return;
  }

  v13 = [objc_opt_self() clientModelTypeFromClientModelId_];

  if (v13 > 0x14 || ((1 << v13) & 0x1C1114) == 0)
  {
    sub_2441B53B8();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = 0;
    goto LABEL_8;
  }
}

void sub_2441B61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2441B6344(319, &qword_27EDD5D58, a3, type metadata accessor for WidgetStackSuggestionGenerator.StackState);
  if (v3 <= 0x3F)
  {
    sub_2441B6344(319, &qword_27EDD5D60, 255, type metadata accessor for ContextualSuggestion);
    if (v4 <= 0x3F)
    {
      sub_2441B65C4(319, &qword_27EDD5D68, &type metadata for WidgetStackSuggestionGenerator.Result, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        sub_244194FC8(319, &qword_27EDD5D70, 0x277CFA380);
        if (v6 <= 0x3F)
        {
          sub_244194FC8(319, &qword_27EDD5D78, off_278E089D8);
          if (v7 <= 0x3F)
          {
            sub_2441D8B8C();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2441B6344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_2441D8D5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2441B6398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2441B63E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WidgetStackSuggestionGenerator.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetStackSuggestionGenerator.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2441B65C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2441B6614()
{
  result = qword_27EDD7AD0;
  if (!qword_27EDD7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD7AD0);
  }

  return result;
}

id sub_2441B6668(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2441D895C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    sub_2441D894C();
    sub_2441D893C();
    (*(v12 + 8))(v14, v11);
    v32 = a4[3];
    v33 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v32);
    (*(v33 + 40))(v32, v33);
    sub_2441D89AC();
    v34 = a4[3];
    v35 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v34);
    (*(v35 + 48))(v34, v35);
    if (v36)
    {
      sub_2441D89AC();
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
    (*(*(v48 - 8) + 56))(v9, v37, 1, v48);
    sub_2441D8E9C();
    v49 = sub_2441D8E8C();
    v50 = a4[3];
    v51 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v50);
    (*(v51 + 56))(v50, v51);
    v52 = *sub_2441C9F60();
    v53 = objc_allocWithZone(MEMORY[0x277CFA358]);
    v54 = sub_2441D8C4C();

    v55 = [v53 initWithExtensionIdentity:v49 kind:v54 family:v52 intent:0 activityIdentifier:0];

    v56 = objc_allocWithZone(ATXWidget);
    v57 = sub_2441D8C4C();

    v58 = sub_2441D8C4C();
    v59 = [v56 initWithIdentifier:v57 chsWidget:v55 suggestedWidget:1 source:v58];

    type metadata accessor for WidgetStackSuggestionGenerator(0);
    v60 = v59;
    v61 = sub_2441D8B7C();
    v62 = sub_2441D8E1C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = v60;
      v65 = v60;
      _os_log_impl(&dword_244192000, v61, v62, "Creating new debug suggested widget: %@", v63, 0xCu);
      sub_2441979F8(v64, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v64, -1, -1);
      MEMORY[0x245D5B3C0](v63, -1, -1);
    }

    v66 = [a3 identifier];
    if (!v66)
    {
      sub_2441D8C6C();
      v66 = sub_2441D8C4C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2441DB770;
    *(inited + 32) = v60;
    v68 = v60;
    sub_2441B7AA4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v69 = objc_allocWithZone(ATXWidgetStackSuggestion);
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    sub_244195E64();
    v70 = v68;
    v30 = sub_2441D8DAC();

    v31 = [v69 initWithStackIdentifier:v66 topWidget:v70 suggestedWidgets:v30];

    goto LABEL_22;
  }

  v15 = a1;
  v16 = [v15 isSuggestedWidget];
  type metadata accessor for WidgetStackSuggestionGenerator(0);
  v17 = v15;
  v18 = sub_2441D8B7C();
  v19 = sub_2441D8E1C();

  v20 = os_log_type_enabled(v18, v19);
  if (v16)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = a1;
      v23 = v17;
      _os_log_impl(&dword_244192000, v18, v19, "Debug widget already suggested, retaining: %@", v21, 0xCu);
      sub_2441979F8(v22, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v22, -1, -1);
      MEMORY[0x245D5B3C0](v21, -1, -1);
    }

    v24 = [a3 identifier];
    if (!v24)
    {
      sub_2441D8C6C();
      v24 = sub_2441D8C4C();
    }

    v25 = sub_2441D8C4C();
    v26 = [v17 copyWithSource_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_2441DB770;
    *(v27 + 32) = v17;
    v28 = v17;
    sub_2441B7AA4(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    v29 = objc_allocWithZone(ATXWidgetStackSuggestion);
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    sub_244195E64();
    v30 = sub_2441D8DAC();

    v31 = [v29 initWithStackIdentifier:v24 topWidget:v26 suggestedWidgets:v30];

LABEL_22:
    return v31;
  }

  if (v20)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v17;
    *v39 = a1;
    v40 = v17;
    _os_log_impl(&dword_244192000, v18, v19, "Debug widget already in stack, rotating: %@", v38, 0xCu);
    sub_2441979F8(v39, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v39, -1, -1);
    MEMORY[0x245D5B3C0](v38, -1, -1);
  }

  v41 = [a3 identifier];
  if (!v41)
  {
    sub_2441D8C6C();
    v41 = sub_2441D8C4C();
  }

  v42 = sub_2441D8C4C();
  v43 = [v17 copyWithSource_];

  if (MEMORY[0x277D84F90] >> 62 && sub_2441D8F5C())
  {
    sub_2441B7AA4(MEMORY[0x277D84F90]);
  }

  v44 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  v45 = sub_2441D8DAC();

  v46 = [v44 initWithStackIdentifier:v41 topWidget:v43 suggestedWidgets:v45];

  return v46;
}

void (*sub_2441B7044(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2441B73EC(v7);
  v7[9] = sub_2441B7150(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2441B70F0;
}

void sub_2441B70F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2441B7150(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_244198F90(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2441B7878();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2441B7420(v18, a4 & 1);
    v13 = sub_244198F90(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2441D91EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2441B72A8;
}

void sub_2441B72A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_2441B80C4(*(v13 + 48) + 16 * v12);
      sub_2441B76C8(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_2441B73EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2441B7414;
}

void sub_2441B7420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
  v35 = v4;
  v6 = sub_2441D90BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_2441D924C();
      sub_2441D8C9C();
      v25 = sub_2441D926C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_2441B76C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2441D8F4C() + 1) & ~v5;
    do
    {
      sub_2441D924C();

      sub_2441D8C9C();
      v9 = sub_2441D926C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2441B7878()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
  v2 = *v0;
  v3 = sub_2441D90AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

unint64_t sub_2441B79E8(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_2441D8F5C();
    }

    result = sub_2441D900C();
    *v2 = result;
  }

  return result;
}

void sub_2441B7AA4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2441D8F5C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DA8, "jq");
      v3 = sub_2441D8FCC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2441D8F5C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x245D5A7F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2441D8EEC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2441D8EFC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_2441D8EEC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2441D8EFC();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2441B7D94()
{
  result = qword_27EDD7AD8[0];
  if (!qword_27EDD7AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7AD8);
  }

  return result;
}

unint64_t sub_2441B7DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_244198F90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_2441B7EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ContextualActionSuggestion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2441D8F5C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2441D8F5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2441B7FEC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2441D8F5C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2441D8F5C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2441B79E8(result, 1);

  return sub_2441B7EEC(v5, v3, 0);
}

id sub_2441B8118(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

void sub_2441B8128(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t sub_2441B8138(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2441B8150(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_2441D8C6C();
  v6 = v5;

  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v7);
  if (v4 == (*(v8 + 64))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2441D91CC();
  }

  return v11 & 1;
}

uint64_t sub_2441B8230(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = [*a1 chsWidget];
  v5 = [v4 extensionIdentity];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v6 = sub_2441D89BC();
  v8 = v7;
  swift_endAccess();

  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v9);
  if (v6 == (*(v10 + 40))(v9, v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_2441D91CC();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = [v3 chsWidget];
  v16 = [v15 kind];

  v17 = sub_2441D8C6C();
  v19 = v18;

  v20 = v2[3];
  v21 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v20);
  if (v17 == (*(v21 + 56))(v20, v21) && v19 == v22)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2441D91CC();
  }

  return v14 & 1;
}

uint64_t sub_2441B8458(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2441D91CC() & 1;
  }
}

unint64_t sub_2441B84B0()
{
  result = qword_27EDD5DC0;
  if (!qword_27EDD5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DC0);
  }

  return result;
}

unint64_t sub_2441B8504()
{
  result = qword_27EDD5DC8;
  if (!qword_27EDD5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DC8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D5B3C0);
  }

  return result;
}

double sub_2441B85A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_2441B85FC()
{
  result = qword_27EDD5DD0;
  if (!qword_27EDD5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DD0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_2441B86A0()
{
  result = qword_27EDD5DD8;
  if (!qword_27EDD5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26ContextualSuggestionClient011WidgetStackB9GeneratorV0E5State33_35986E1DE76D164CD57B0DD1BAA3E32CLLC03NewdB7FailureO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2441B8728(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441B8780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_2441B87D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2441B880C()
{
  result = qword_27EDD7BE0[0];
  if (!qword_27EDD7BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7BE0);
  }

  return result;
}

uint64_t sub_2441B88B8()
{
  type metadata accessor for ContextualSuggestionService();
  v0 = swift_allocObject();
  result = sub_2441BAD24();
  qword_27EDDB118 = v0;
  return result;
}

uint64_t sub_2441B88F4()
{
  v0 = swift_allocObject();
  sub_2441BAD24();
  return v0;
}

uint64_t *sub_2441B892C()
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB118;
}

uint64_t sub_2441B897C()
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double sub_2441B89F4(uint64_t a1)
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EDDB118 = a1;

  return result;
}

uint64_t (*sub_2441B8A74(uint64_t a1))(uint64_t a1)
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2441B8AFC()
{
  v7 = sub_2441D8E3C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2441AF92C();
  sub_2441D8BDC();
  v8 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_2441D8E6C();
}

void *sub_2441B8D44()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2441B8D88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2441B8E7C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_2441B8EF8(int a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2441B8F88(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E00, qword_2441DBC08);
  sub_2441D8E4C();
  return v3;
}

double sub_2441B9004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_2441D8BAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2441D8BEC();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = v4[2];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a1;
  v16[6] = v8;
  aBlock[4] = sub_2441BC02C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_2441D8BDC();
  v21 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);

  return result;
}

void sub_2441B930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = sub_2441D8B8C();
  v9 = *(v40 - 8);
  v10 = MEMORY[0x28223BE20](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*a1 + 168);
  v14 = *(v13(v10) + 16);

  v16 = v13(v15);
  v17 = *(v16 + 16);
  v42 = a2;
  v43 = a4;
  v41 = a3;
  if (!v17 || (v18 = sub_244198F90(a2, a3), (v19 & 1) == 0))
  {

    v30 = [objc_opt_self() weakObjectsHashTable];
    [v30 addObject_];
    v31 = *(*a1 + 184);
    v32 = v14;
    v33 = v12;

    v34 = v30;
    v35 = v31(v45);
    v37 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v37;
    *v37 = 0x8000000000000000;
    sub_2441BB2CC(v34, a2, a3, isUniquelyReferenced_nonNull_native);

    *v37 = v44;
    v35(v45, 0);
    v12 = v33;

    if (!v32)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*a1 + 296))(v43, v42, v41);
    return;
  }

  v20 = *(*(v16 + 56) + 8 * v18);

  [v20 addObject_];

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  v21 = sub_2441994FC();
  v22 = v40;
  (*(v9 + 16))(v12, v21, v40);
  v23 = sub_2441D8B7C();
  v24 = sub_2441D8E1C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45[0] = v26;
    *v25 = 136315394;
    v27 = sub_2441D92EC();
    v29 = sub_244195848(v27, v28, v45);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_244195848(0xD000000000000017, 0x80000002441DF3E0, v45);
    _os_log_impl(&dword_244192000, v23, v24, "%s: %s: first observer, start listening for server startup", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v26, -1, -1);
    MEMORY[0x245D5B3C0](v25, -1, -1);
  }

  (*(v9 + 8))(v12, v22);
  sub_2441BA3D4();
  sub_2441B9E34();
}

double sub_2441B96F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = sub_2441D8BAC();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2441D8BEC();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4[2];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = v14;
  v15[6] = v7;
  aBlock[4] = sub_2441BC09C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  sub_2441D8BDC();
  v21 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);

  return result;
}

uint64_t sub_2441B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v8 = sub_2441D8B8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*a1 + 168);
  v14 = v13(v10);
  if (*(v14 + 16) && (v15 = sub_244198F90(a2, a3), (v16 & 1) != 0))
  {
    v38 = v9;
    v17 = *(*(v14 + 56) + 8 * v15);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [v17 removeObject_];
      swift_unknownObjectRelease();
    }

    v19 = [v17 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E20, &qword_2441DBC28);
    v20 = sub_2441D8D0C();

    if (v20 >> 62)
    {
      v21 = sub_2441D8F5C();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v21)
    {
      v22 = (*(*a1 + 184))(v40);

      v22(v40, 0);
    }

    v9 = v38;
  }

  else
  {
  }

  v24 = *(v13(v23) + 16);

  if (!v24)
  {
    v26 = sub_2441994FC();
    (*(v9 + 16))(v12, v26, v8);
    v27 = sub_2441D8B7C();
    v28 = sub_2441D8E1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v9;
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v29 = 136315394;
      v32 = sub_2441D92EC();
      v34 = sub_244195848(v32, v33, v40);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_244195848(0xD000000000000019, 0x80000002441DF3C0, v40);
      _os_log_impl(&dword_244192000, v27, v28, "%s: %s: no more observers, stop listening for server startup", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v31, -1, -1);
      MEMORY[0x245D5B3C0](v29, -1, -1);

      v35 = (*(v30 + 8))(v12, v8);
    }

    else
    {

      v35 = (*(v9 + 8))(v12, v8);
    }

    v36 = (*(*a1 + 192))(v35);
    return notify_cancel(v36);
  }

  return result;
}

double sub_2441B9E34()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2441BC1AC;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2441A5EE0;
  v8[3] = &block_descriptor_38;
  v3 = _Block_copy(v8);

  v4 = sub_2441D8C8C();
  v5 = (*(*v0 + 208))(v8);
  notify_register_dispatch((v4 + 32), v6, v1, v3);
  _Block_release(v3);
  v5(v8, 0);

  return result;
}

double sub_2441B9F7C(uint64_t a1)
{
  v1 = sub_2441D8B8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441994FC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_2441D8B7C();
  v7 = sub_2441D8E1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_244192000, v6, v7, "ContextualSuggestionService: received server startup notification, fetching latest snapshots", v8, 2u);
    MEMORY[0x245D5B3C0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2441BA3D4();
  }

  return result;
}

void sub_2441BA10C()
{
  v1 = (*(*v0 + 120))();
  if (v1)
  {
  }

  else
  {
    sub_2441D7EB8();
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v3 = sub_2441D8C4C();

    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = contextualSuggestionServerInterface.getter();
    [v4 setRemoteObjectInterface_];

    [v4 setExportedObject_];
    v6 = contextualSuggestionServiceInterface.getter();
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v17 = sub_2441BC1CC;
    v18 = v7;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2441988C4;
    v16 = &block_descriptor_30_0;
    v8 = _Block_copy(&v13);

    [v4 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v17 = sub_2441BC0F8;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2441988C4;
    v16 = &block_descriptor_34;
    v10 = _Block_copy(&v13);

    [v4 setInvalidationHandler_];
    _Block_release(v10);
    [v4 resume];
    v11 = *(*v0 + 128);
    v12 = v4;
    v11(v4);
  }
}

void sub_2441BA3D4()
{
  v1 = *(*v0 + 168);
  v2 = *(v1() + 16);

  if (v2)
  {
    sub_2441BA10C();
    v3 = v1();
    sub_2441BA630(v3);
    v4 = (*(*v0 + 120))();
    if (v4 && (v5 = v4, v15 = sub_2441BA74C, v16 = 0, v11 = MEMORY[0x277D85DD0], v12 = 1107296256, v13 = sub_2441AAC44, v14 = &block_descriptor_21, v6 = _Block_copy(&v11), v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v6), v5, sub_2441D8F2C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E90, &qword_2441DBCA8), (swift_dynamicCast() & 1) != 0))
    {
      v8 = v11;
      v9 = sub_2441D8DAC();

      v15 = sub_2441BC0F0;
      v16 = v0;
      v11 = MEMORY[0x277D85DD0];
      v12 = 1107296256;
      v13 = sub_2441BAB00;
      v14 = &block_descriptor_24_0;
      v10 = _Block_copy(&v11);

      [v8 requestSnapshotsForEndpoints:v9 completion:v10];
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2441BA630(uint64_t a1)
{
  result = MEMORY[0x245D5A5E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2441BB5B0(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2441BA74C()
{
  v0 = sub_2441D8B8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2441994FC();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_244192000, v5, v6, "ContextualSuggestionService: error grabbing remote object proxy while fetching latest snapshots from server", v7, 2u);
    MEMORY[0x245D5B3C0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2441BA89C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    v12 = sub_2441994FC();
    (*(v7 + 16))(v10, v12, v6);
    v13 = a2;
    v14 = sub_2441D8B7C();
    v15 = sub_2441D8E0C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_244192000, v14, v15, "ContextualSuggestionService: error requesting snapshots: %@", v16, 0xCu);
      sub_2441979F8(v17, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v17, -1, -1);
      MEMORY[0x245D5B3C0](v16, -1, -1);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v6);
  }

  if (a1)
  {
    v20 = *(*a3 + 152);

    v22 = v20(v21);
    return (*(*a3 + 288))(v22);
  }

  return result;
}

uint64_t sub_2441BAB00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    v4 = sub_2441D8C0C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_2441BABA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 144))();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_244198F90(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      [a1 serviceDidUpdateWithSnapshot_];
    }

    else
    {
    }
  }
}

uint64_t sub_2441BAC9C()
{

  return v0;
}

uint64_t sub_2441BACD4()
{

  return MEMORY[0x2821FE8D8](v0, 52, 7);
}

uint64_t sub_2441BAD24()
{
  v10 = sub_2441D8E3C();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2441AF92C();
  v9[0] = "ive.ContextualEngine.startup";
  v9[1] = v6;
  sub_2441D8BDC();
  v11 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  v7 = sub_2441D8E6C();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v7;
  *(v0 + 40) = sub_2441BBE74(MEMORY[0x277D84F90]);
  *(v0 + 48) = 0;
  return v0;
}

uint64_t sub_2441BAF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_244198F90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2441BB444();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2441B76C8(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_2441BB028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
  v36 = v4;
  v6 = sub_2441D90BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2441D924C();
      sub_2441D8C9C();
      v26 = sub_2441D926C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_2441BB2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_244198F90(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2441BB028(v16, a4 & 1);
      v11 = sub_244198F90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2441D91EC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2441BB444();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_2441BB444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
  v2 = *v0;
  v3 = sub_2441D90AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

uint64_t sub_2441BB5B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2441D924C();
  sub_2441D8C9C();
  v8 = sub_2441D926C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2441D91CC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2441BB960(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_2441BB700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  v4 = sub_2441D8FBC();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2441D924C();
      sub_2441D8C9C();
      v21 = sub_2441D926C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2441BB960(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2441BB700(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2441BBAE0();
      goto LABEL_16;
    }

    sub_2441BBC3C(v8 + 1);
  }

  v10 = *v4;
  sub_2441D924C();
  sub_2441D8C9C();
  v11 = sub_2441D926C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2441D91CC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2441D91DC();
  __break(1u);
}

void sub_2441BBAE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  v2 = *v0;
  v3 = sub_2441D8FAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_2441BBC3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  v4 = sub_2441D8FBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2441D924C();

      sub_2441D8C9C();
      v20 = sub_2441D926C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

unint64_t sub_2441BBE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_244198F90(v5, v6);
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

uint64_t sub_2441BBF78@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = (*(**(v1 + 16) + 144))();
  if (!result)
  {
    goto LABEL_6;
  }

  v6 = result;
  if (!*(result + 16) || (v7 = sub_244198F90(v3, v4), (v8 & 1) == 0))
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

LABEL_7:
  *a1 = v9;
  return result;
}

uint64_t objectdestroyTm_1(void (*a1)(void))
{

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

double sub_2441BC0FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*(*Strong + 120))(Strong);
    [v3 invalidate];

    (*(*v2 + 128))(0);
  }

  return result;
}

id sub_2441BC244()
{
  if (qword_280F95160 != -1)
  {
    swift_once();
  }

  v0 = qword_280F95168;

  return v0;
}

uint64_t sub_2441BC2A0()
{
  sub_244194FC8(0, &qword_280F94CE8, 0x277D86200);
  sub_2441D0DB8();

  result = sub_2441D8F0C();
  qword_280F95168 = result;
  return result;
}

uint64_t sub_2441BC368()
{
  v0 = sub_2441D8B8C();
  __swift_allocate_value_buffer(v0, qword_280F94E88);
  __swift_project_value_buffer(v0, qword_280F94E88);
  v1 = [objc_opt_self() log];
  return sub_2441D8B9C();
}

uint64_t sub_2441BC3D8()
{
  if (qword_280F94E80 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_280F94E88);
}

Swift::Void __swiftcall CoreAnalyticsEvent.send()()
{
  v2 = v1;
  v3 = v0;
  CoreAnalyticsEvent.createPayload()(v0);
  (*(v2 + 16))(v3, v2);
  v4 = sub_2441D8C4C();

  sub_2441BC94C();
  v5 = sub_2441D8BFC();

  AnalyticsSendEvent();
}

void *CoreAnalyticsEvent.createPayload()(uint64_t a1)
{
  v3 = sub_2441D929C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2441BCDA8(MEMORY[0x277D84F90]);
  *(&v45 + 1) = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_2441D927C();
  sub_2441D928C();
  sub_2441D907C();

  sub_2441D90DC();
  if (!v46)
  {
LABEL_23:
    (*(v4 + 8))(v6, v3);

    return v7;
  }

  while (1)
  {
    v42 = v44;
    sub_244194FB8(&v45, &v43);
    sub_2441BCF10(&v42, &v39);
    v9 = v40;
    if (v40)
    {
      break;
    }

    sub_2441BCF80(&v42);
    __swift_destroy_boxed_opaque_existential_0(v41);
LABEL_4:
    sub_2441D90DC();
    if (!v46)
    {
      goto LABEL_23;
    }
  }

  v37 = v6;
  v10 = v39;
  __swift_destroy_boxed_opaque_existential_0(v41);
  sub_2441BCF10(&v42, &v39);

  sub_2441BC94C();
  if (!swift_dynamicCast())
  {
    v21 = sub_244198F90(v10, v9);
    v23 = v22;

    if (v23)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v7;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2441BCC3C();
        v7 = v38;
      }

      sub_2441B76C8(v21, v7);
    }

    goto LABEL_19;
  }

  v36 = v4;
  v11 = v3;
  v34 = v38;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v7;
  v35 = v10;
  v13 = sub_244198F90(v10, v9);
  v15 = v7[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (!v17)
  {
    v19 = v14;
    if (v7[3] >= v18)
    {
      if ((v12 & 1) == 0)
      {
        v31 = v13;
        sub_2441BCC3C();
        v13 = v31;
      }
    }

    else
    {
      sub_2441BC998(v18, v12);
      v13 = sub_244198F90(v35, v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_26;
      }
    }

    v3 = v11;
    v4 = v36;
    if ((v19 & 1) == 0)
    {
      v7 = v38;
      v38[(v13 >> 6) + 8] |= 1 << v13;
      v28 = (v7[6] + 16 * v13);
      *v28 = v35;
      v28[1] = v9;
      *(v7[7] + 8 * v13) = v34;
      sub_2441BCF80(&v42);
      v29 = v7[2];
      v17 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v17)
      {
        goto LABEL_25;
      }

      v7[2] = v30;
      goto LABEL_22;
    }

    v25 = v13;

    v7 = v38;
    v26 = v38[7];
    v27 = *(v26 + 8 * v25);
    *(v26 + 8 * v25) = v34;

LABEL_19:
    sub_2441BCF80(&v42);
LABEL_22:
    v6 = v37;
    goto LABEL_4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2441D91EC();
  __break(1u);
  return result;
}

unint64_t sub_2441BC94C()
{
  result = qword_280F94CF0;
  if (!qword_280F94CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F94CF0);
  }

  return result;
}

void sub_2441BC998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
  v36 = v4;
  v6 = sub_2441D90BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2441D924C();
      sub_2441D8C9C();
      v26 = sub_2441D926C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2441BCC3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
  v2 = *v0;
  v3 = sub_2441D90AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

unint64_t sub_2441BCDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_244198F90(v5, v6);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2441BCF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F20, "Hp");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2441BCF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F20, "Hp");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ATXIntentComparator __swiftcall ATXIntentComparator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2441BD0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2441BD160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441BD19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2441BD1EC(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_2441BD270(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

unint64_t AmbientConfigurationManager.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2441D8FEC();

  MEMORY[0x245D5A4A0](v1, v2);
  return 0xD000000000000010;
}

unint64_t sub_2441BD37C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2441D8FEC();

  MEMORY[0x245D5A4A0](v1, v2);
  return 0xD000000000000010;
}

void *sub_2441BD3F8()
{
  type metadata accessor for AmbientConfigurationManager();
  v0 = swift_allocObject();
  result = sub_2441BD74C();
  qword_280F94F48 = v0;
  return result;
}

uint64_t *sub_2441BD434()
{
  if (qword_280F94F40 != -1)
  {
    swift_once();
  }

  return &qword_280F94F48;
}

uint64_t static AmbientConfigurationManager.shared.getter()
{
  if (qword_280F94F40 != -1)
  {
    swift_once();
  }
}

id sub_2441BD4E0()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_2441BD520()
{
  v0 = objc_opt_self();
  v1 = sub_2441D8C4C();
  v2 = [v0 appPredictionDirectoryFile_];

  if (!v2)
  {
    sub_2441D8C6C();
    v2 = sub_2441D8C4C();
  }

  v3 = [objc_opt_self() log];
  v4 = objc_allocWithZone(MEMORY[0x277CEBC68]);
  v5 = sub_2441D8C4C();
  v6 = [v4 initWithCacheFilePath:v2 loggingHandle:v3 debugName:v5];

  return v6;
}

id sub_2441BD630()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t sub_2441BD670()
{
  v0 = sub_2441D895C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2441D894C();
  v4 = sub_2441D893C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_2441BD74C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D895C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = [objc_opt_self() weakObjectsHashTable];
  v1[16] = 0;
  v7 = objc_opt_self();
  v8 = sub_2441D8C4C();
  v9 = [v7 appPredictionDirectoryFile_];

  if (!v9)
  {
    sub_2441D8C6C();
    v9 = sub_2441D8C4C();
  }

  v10 = [objc_opt_self() log];
  v11 = objc_allocWithZone(MEMORY[0x277CEBC68]);
  v12 = sub_2441D8C4C();
  v13 = [v11 initWithCacheFilePath:v9 loggingHandle:v10 debugName:v12];

  v1[17] = v13;
  v1[18] = [objc_opt_self() defaultCenter];
  sub_2441D894C();
  v14 = sub_2441D893C();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v1[19] = v14;
  v1[20] = v16;
  v17 = v1[18];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v2;
  aBlock[4] = sub_2441C09D8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441BE574;
  aBlock[3] = &block_descriptor_51_0;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  v22 = [v21 addObserverForName:@"com.apple.proactive.contextualengine.AmbientConfigurationManager.cacheDidUpdate" object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  return v1;
}

double sub_2441BDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v51 - v5;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v51 - v15;
  sub_2441D884C();
  if (!v54[3])
  {
    sub_2441979F8(v54, &unk_27EDD5B50, &unk_2441DAF40);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v22 = sub_2441BC3D8();
    (*(v8 + 16))(v11, v22, v7);
    v23 = sub_2441D8B7C();
    v24 = sub_2441D8E0C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54[0] = v26;
      *v25 = 136315138;
      v27 = sub_2441D92EC();
      v29 = sub_244195848(v27, v28, v54);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_244192000, v23, v24, "%s: ambientConfigDidUpdateNotification had no sender identifier", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245D5B3C0](v26, -1, -1);
      MEMORY[0x245D5B3C0](v25, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return result;
  }

  v18 = v53[0];
  v17 = v53[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51[1] = a3;
    v52 = v7;
    v21 = *(Strong + 152);
    v20 = *(Strong + 160);

    if (v18 == v21 && v17 == v20)
    {

      v7 = v52;
LABEL_14:
      v32 = sub_2441BC3D8();
      (*(v8 + 16))(v14, v32, v7);
      v33 = sub_2441D8B7C();
      v34 = sub_2441D8E1C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v53[0] = v36;
        *v35 = 136315138;
        v37 = sub_2441D92EC();
        v39 = sub_244195848(v37, v38, v53);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_244192000, v33, v34, "%s: ignoring ambientConfigDidUpdateNotification from self", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x245D5B3C0](v36, -1, -1);
        MEMORY[0x245D5B3C0](v35, -1, -1);
      }

      (*(v8 + 8))(v14, v7);
      return result;
    }

    v31 = sub_2441D91CC();

    v7 = v52;
    if (v31)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v40 = sub_2441BC3D8();
  (*(v8 + 16))(v16, v40, v7);
  v41 = sub_2441D8B7C();
  v42 = sub_2441D8E1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53[0] = v44;
    *v43 = 136315138;
    v45 = sub_2441D92EC();
    v52 = v7;
    v47 = sub_244195848(v45, v46, v53);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_244192000, v41, v42, "%s: received ambient config did update notification", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245D5B3C0](v44, -1, -1);
    MEMORY[0x245D5B3C0](v43, -1, -1);

    (*(v8 + 8))(v16, v52);
  }

  else
  {

    (*(v8 + 8))(v16, v7);
  }

  v48 = sub_2441D8D9C();
  (*(*(v48 - 8) + 56))(v6, 1, 1, v48);
  v49 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v49;
  sub_2441BE270(0, 0, v6, &unk_2441DC1D0, v50);

  return result;
}

uint64_t sub_2441BE0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2441BE114, 0, 0);
}

uint64_t sub_2441BE114()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2441BE1D8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2441BE1D8()
{
  sub_2441BE668();

  return MEMORY[0x2822009F8](sub_2441BE248, 0, 0);
}

uint64_t sub_2441BE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2441A991C(a3, v25 - v10);
  v12 = sub_2441D8D9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2441979F8(v11, &unk_27EDD5F30, &qword_2441DAEC0);
  }

  else
  {
    sub_2441D8D8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2441D8D7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2441D8C8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F98, &qword_2441DC1E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F98, &qword_2441DC1E8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2441BE574(uint64_t a1, uint64_t a2)
{
  v3 = sub_2441D885C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2441D883C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double sub_2441BE668()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  sub_2441BF334();
  v16 = v0[16];
  if (v14)
  {
    if (v16)
    {
      v44 = v2;
      v17 = v6;
      v18 = v14;

      v20 = sub_2441C05C8(v19, v16);

      if (v20)
      {

        v6 = v17;
LABEL_6:
        v21 = sub_2441BC3D8();
        (*(v7 + 16))(v11, v21, v6);
        v22 = sub_2441D8B7C();
        v23 = sub_2441D8E1C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v45[0] = v25;
          *v24 = 136315394;
          v26 = sub_2441D92EC();
          v28 = sub_244195848(v26, v27, v45);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_244195848(0xD000000000000010, 0x80000002441DF700, v45);
          _os_log_impl(&dword_244192000, v22, v23, "%s: %s: stacks from cache unchanged, not notifying observers", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D5B3C0](v25, -1, -1);
          MEMORY[0x245D5B3C0](v24, -1, -1);
        }

        (*(v7 + 8))(v11, v6);
        return result;
      }

      v14 = v18;
      v6 = v17;
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  v0[16] = v14;

  v29 = sub_2441BC3D8();
  (*(v7 + 16))(v13, v29, v6);
  v30 = sub_2441D8B7C();
  v31 = sub_2441D8E1C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45[0] = v33;
    *v32 = 136315394;
    v34 = sub_2441D92EC();
    v36 = sub_244195848(v34, v35, v45);
    v44 = v6;
    v37 = v36;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_244195848(0xD000000000000010, 0x80000002441DF700, v45);
    _os_log_impl(&dword_244192000, v30, v31, "%s: %s: read new stacks from cache, notifying observers", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v33, -1, -1);
    MEMORY[0x245D5B3C0](v32, -1, -1);

    (*(v7 + 8))(v13, v44);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  v38 = sub_2441D8D9C();
  v39 = (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
  v41 = sub_2441BFD20(v39, v40);
  v42 = swift_allocObject();
  v42[2] = v1;
  v42[3] = v41;
  v42[4] = v1;
  swift_retain_n();
  sub_2441A5C20(0, 0, v5, &unk_2441DC160, v42);

  return result;
}

double sub_2441BECEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2441D8D9C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  swift_unknownObjectRetain();
  sub_2441A5C20(0, 0, v5, &unk_2441DBF98, v7);

  return result;
}

uint64_t sub_2441BEE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2441BEE20, a4, 0);
}

uint64_t sub_2441BEE20()
{
  [*(v0[2] + 120) addObject_];
  v1 = v0[1];

  return v1();
}

uint64_t sub_2441BEE8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441BEE00(v4, v5, v6, v2, v3);
}

unint64_t sub_2441BEF24()
{
  result = *(v1 + 128);
  if (result)
  {
    v0 = *(v1 + 128);
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2441BF334();
    if (v2)
    {
      return v0;
    }

    v0 = v11;
    *(v1 + 128) = v11;

    if (!v0)
    {
      return v0;
    }

    result = 0;
    if (!(v0 >> 62))
    {
LABEL_3:
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_20:
      swift_bridgeObjectRetain_n();
LABEL_21:

      return v0;
    }
  }

  v12 = result;
  v4 = sub_2441D8F5C();
  result = v12;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v4 >= 1)
  {
    swift_bridgeObjectRetain_n();
    for (i = 0; i != v4; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D5A7F0](i, v0);
      }

      else
      {
        v8 = *(v0 + 8 * i + 32);
      }

      v7 = v8;
      v9 = [v8 topWidgetIdentifier];
      if (v9)
      {
        v6 = v7;
        v7 = v9;
      }

      else
      {
        sub_2441BF718(v7);
        if (v10)
        {
          v6 = sub_2441D8C4C();
        }

        else
        {
          v6 = 0;
        }

        [v7 setTopWidgetIdentifier_];
      }
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_2441BF0D4(unint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  if (!v1[16] || (v6 = , v7 = sub_2441C05C8(v6, a1), , (v7 & 1) == 0))
  {
    v1[16] = a1;

    v8 = v1[17];
    sub_244194FC8(0, qword_280F94B20, off_278E089E0);
    v9 = sub_2441D8CFC();
    v20[0] = 0;
    LODWORD(v8) = [v8 storeSecureCodedObject:v9 error:v20];

    v10 = v20[0];
    if (v8)
    {
      v11 = sub_2441D8D9C();
      v12 = (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v14 = sub_2441BFD20(v12, v13);
      v15 = swift_allocObject();
      v15[2] = v1;
      v15[3] = v14;
      v15[4] = v1;
      swift_retain_n();
      v16 = v10;
      sub_2441A5C20(0, 0, v5, &unk_2441DBFA8, v15);

      v17 = v1[18];
      v18 = sub_2441D8C4C();
      [v17 postNotificationName:@"com.apple.proactive.contextualengine.AmbientConfigurationManager.cacheDidUpdate" object:v18 userInfo:0 options:0];
    }

    else
    {
      v19 = v20[0];
      sub_2441D88BC();

      swift_willThrow();
    }
  }
}

void sub_2441BF334()
{
  sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441DAF20;
  v1 = sub_244194FC8(0, &qword_280F94B00, 0x277CBEA60);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F80, qword_2441DC180);
  *(v0 + 32) = v1;
  v2 = sub_244194FC8(0, qword_280F94B20, off_278E089E0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6210, &unk_2441DD010);
  *(v0 + 64) = v2;
  MEMORY[0x245D5A6A0](v0);
  sub_2441D8DBC();
  __break(1u);
}

void sub_2441BF5D0()
{
  v1 = [*(*(v0 + 16) + 120) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F50, &unk_2441DC170);
  v2 = sub_2441D8D0C();

  if (v2 >> 62)
  {
    v3 = sub_2441D8F5C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D5A7F0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 ambientConfigurationManagerCacheDidUpdate];
    swift_unknownObjectRelease();
  }

LABEL_10:

  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_2441BF718(void *a1)
{
  v44 = *v1;
  v45 = a1;
  v2 = sub_2441D898C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D899C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_2441D892C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = &v40 - v18;
  sub_2441D897C();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9968], v2);
  sub_2441D891C();
  sub_2441D896C();
  v41 = *(v14 + 8);
  v42 = v14 + 8;
  v41(v17, v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v19 = v13;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2441979F8(v12, &qword_27EDD5D30, qword_2441DB670);
    return 0;
  }

  else
  {
    v21 = *(v14 + 32);
    v22 = v43;
    v40 = v19;
    v21(v43, v12, v19);
    v23 = swift_allocObject();
    *(v23 + 24) = 0;
    *(v23 + 16) = 0;
    v24 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    v25 = sub_2441D88FC();
    v26 = [v24 initWithStartDate:0 endDate:v25 maxEvents:0 lastN:0 reversed:1];

    v27 = [BiomeLibrary() SpringBoard];
    swift_unknownObjectRelease();
    v28 = [v27 Domino];
    swift_unknownObjectRelease();
    v29 = [v28 StackRotation];
    swift_unknownObjectRelease();
    v30 = [v29 publisherWithOptions_];

    v31 = swift_allocObject();
    v32 = v44;
    *(v31 + 16) = v44;
    v50 = sub_2441C09C4;
    v51 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2441B2EB4;
    v49 = &block_descriptor_3;
    v33 = _Block_copy(&aBlock);

    v34 = swift_allocObject();
    v35 = v45;
    v34[2] = v45;
    v34[3] = v23;
    v34[4] = v32;
    v50 = sub_2441C09CC;
    v51 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2441B29C4;
    v49 = &block_descriptor_32;
    v36 = _Block_copy(&aBlock);
    v37 = v35;

    v38 = [v30 sinkWithCompletion:v33 shouldContinue:v36];
    _Block_release(v36);
    _Block_release(v33);

    v41(v22, v40);
    swift_beginAccess();
    v20 = *(v23 + 16);
  }

  return v20;
}

unint64_t sub_2441BFD20(uint64_t a1, uint64_t a2)
{
  result = qword_27EDD5F40;
  if (!qword_27EDD5F40)
  {
    type metadata accessor for AmbientConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5F40);
  }

  return result;
}

uint64_t sub_2441BFD98()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_244198A50;

  return sub_2441BF5B0(v3, v4, v5, v2);
}

id sub_2441BFE2C(void *a1, uint64_t a2)
{
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    v9 = sub_2441BC3D8();
    (*(v4 + 16))(v6, v9, v3);
    v10 = v8;
    v11 = sub_2441D8B7C();
    v12 = sub_2441D8E0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315650;
      v15 = sub_2441D92EC();
      v17 = sub_244195848(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_244195848(0xD000000000000031, 0x80000002441DF730, &v22);
      *(v13 + 22) = 2112;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v19;
      *v14 = v19;
      _os_log_impl(&dword_244192000, v11, v12, "%s.%s: error reading stack rotation stream: %@", v13, 0x20u);
      sub_2441979F8(v14, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v14, -1, -1);
      v20 = v21;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v20, -1, -1);
      MEMORY[0x245D5B3C0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2441C00C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 eventBody];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  v13 = [v11 stackId];
  if (!v13)
  {
LABEL_9:

    return 1;
  }

  v45 = v8;
  v14 = v13;
  v15 = sub_2441D8C6C();
  v17 = v16;

  v18 = [a2 identifier];
  v19 = sub_2441D8C6C();
  v21 = v20;

  if (v15 == v19 && v17 == v21)
  {
  }

  else
  {
    v23 = sub_2441D91CC();

    if ((v23 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v25 = [v12 widget];
  if (v25 && (v26 = v25, v27 = [v25 uniqueId], v26, v27))
  {
    v28 = sub_2441D8C6C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  swift_beginAccess();
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;

  if (v30)
  {
  }

  else
  {
    v31 = sub_2441BC3D8();
    v32 = v45;
    (*(v45 + 16))(v10, v31, v7);

    v33 = sub_2441D8B7C();
    v34 = sub_2441D8E0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v43 = v34;
      v36 = v35;
      v44 = swift_slowAlloc();
      v46 = v44;
      *v36 = 136315650;
      v37 = sub_2441D92EC();
      v39 = sub_244195848(v37, v38, &v46);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_244195848(0xD000000000000031, 0x80000002441DF730, &v46);
      *(v36 + 22) = 2080;
      v40 = sub_244195848(v15, v17, &v46);

      *(v36 + 24) = v40;
      _os_log_impl(&dword_244192000, v33, v43, "%s.%s: no topWidgetIdentifier found in stack rotation event with id: %s", v36, 0x20u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v41, -1, -1);
      MEMORY[0x245D5B3C0](v36, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v10, v7);
  }

  return 0;
}

id *AmbientConfigurationManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AmbientConfigurationManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2441C0534()
{
  if (qword_280F94F40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2441C0590(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbientConfigurationManager();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_2441C05C8(unint64_t a1, unint64_t a2)
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

    v4 = sub_244194FC8(0, qword_280F94B20, off_278E089E0);
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
          v15 = MEMORY[0x245D5A7F0](v12 - 4, v3);
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

        v16 = MEMORY[0x245D5A7F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2441D8EFC();

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
      v18 = sub_2441D8EFC();

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
    v5 = sub_2441D8F5C();
  }

  result = sub_2441D8F5C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_2441C081C()
{
  result = qword_27EDD5F48;
  if (!qword_27EDD5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5F48);
  }

  return result;
}

uint64_t sub_2441C0930()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_244198A54;

  return sub_2441BF5B0(v3, v4, v5, v2);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2441C0A20(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_244198A50;

  return sub_2441BE0F4(a1, v5, v6, v4);
}

uint64_t sub_2441C0AC0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2441C0BB4;

  return v5(v2 + 32);
}

uint64_t sub_2441C0BB4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2441C0CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A50;

  return sub_2441C0AC0(a1, v4);
}

uint64_t sub_2441C0D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A54;

  return sub_2441C0AC0(a1, v4);
}

id sub_2441C0E9C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  sub_244194FC8(0, a4, a5);

  v5 = sub_2441D8CFC();

  return v5;
}

id ATXSpotlightSuggestions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___ATXSpotlightSuggestions_scores) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___ATXSpotlightSuggestions_topics) = v1;
  *(v0 + OBJC_IVAR___ATXSpotlightSuggestions_sections) = v1;
  v3.super_class = ATXSpotlightSuggestions;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2441C1108()
{
  sub_2441C1350();
  sub_2441D0DB8();

  result = sub_2441D8F0C();
  qword_27EDDB120 = result;
  return result;
}

uint64_t *sub_2441C1170()
{
  if (qword_27EDD7F98 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB120;
}

id sub_2441C11C0()
{
  if (qword_27EDD7F98 != -1)
  {
    swift_once();
  }

  v0 = qword_27EDDB120;

  return v0;
}

uint64_t sub_2441C121C()
{
  v0 = sub_2441D8B8C();
  __swift_allocate_value_buffer(v0, qword_27EDD7FA8);
  __swift_project_value_buffer(v0, qword_27EDD7FA8);
  if (qword_27EDD7F98 != -1)
  {
    swift_once();
  }

  v1 = qword_27EDDB120;
  return sub_2441D8B9C();
}

uint64_t static Logger.carPlay.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EDD7FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2441D8B8C();
  v3 = __swift_project_value_buffer(v2, qword_27EDD7FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2441C1350()
{
  result = qword_280F94CE8;
  if (!qword_280F94CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F94CE8);
  }

  return result;
}

uint64_t AmbientDebugRotation.extensionBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AmbientDebugRotation.containerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AmbientDebugRotation.containerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AmbientDebugRotation.kind.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AmbientDebugRotation.stackIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall AmbientDebugRotation.init(extensionBundleIdentifier:containerBundleIdentifier:kind:stackIdentifier:allowsNewWidget:)(ContextualSuggestionClient::AmbientDebugRotation *__return_ptr retstr, Swift::String extensionBundleIdentifier, Swift::String_optional containerBundleIdentifier, Swift::String kind, Swift::String stackIdentifier, Swift::Bool allowsNewWidget)
{
  retstr->extensionBundleIdentifier = extensionBundleIdentifier;
  retstr->containerBundleIdentifier = containerBundleIdentifier;
  retstr->kind = kind;
  retstr->stackIdentifier = stackIdentifier;
  retstr->allowsNewWidget = allowsNewWidget;
}

uint64_t sub_2441C1550()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6564496B63617473;
  if (v1 != 3)
  {
    v3 = 0x654E73776F6C6C61;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2441C1604@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2441C2204(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2441C1638(uint64_t a1)
{
  v2 = sub_2441C18D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441C1674(uint64_t a1)
{
  v2 = sub_2441C18D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AmbientDebugRotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5FD0, &qword_2441DC200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  v9 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = v9;
  v12[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441C18D0();
  sub_2441D92BC();
  v24 = 0;
  v10 = v19;
  sub_2441D916C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v23 = 1;
  sub_2441D915C();
  v22 = 2;
  sub_2441D916C();
  v21 = 3;
  sub_2441D916C();
  v20 = 4;
  sub_2441D917C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2441C18D0()
{
  result = qword_27EDD7FC0[0];
  if (!qword_27EDD7FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7FC0);
  }

  return result;
}

uint64_t AmbientDebugRotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5FD8, &qword_2441DC208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441C18D0();
  sub_2441D92AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_2441D910C();
  v11 = v10;
  LOBYTE(v34[0]) = 1;
  v25 = sub_2441D90FC();
  v28 = v12;
  LOBYTE(v34[0]) = 2;
  v24 = sub_2441D910C();
  v27 = v13;
  LOBYTE(v34[0]) = 3;
  v23 = sub_2441D910C();
  v26 = v14;
  v36 = 4;
  v15 = sub_2441D911C();
  (*(v6 + 8))(v8, v5);
  *&v29 = v9;
  *(&v29 + 1) = v11;
  v17 = v27;
  v16 = v28;
  *&v30 = v25;
  *(&v30 + 1) = v28;
  *&v31 = v24;
  *(&v31 + 1) = v27;
  v18 = v26;
  *&v32 = v23;
  *(&v32 + 1) = v26;
  v15 &= 1u;
  v33 = v15;
  *(a2 + 64) = v15;
  v19 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v19;
  v20 = v30;
  *a2 = v29;
  *(a2 + 16) = v20;
  sub_2441C1CBC(&v29, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v9;
  v34[1] = v11;
  v34[2] = v25;
  v34[3] = v16;
  v34[4] = v24;
  v34[5] = v17;
  v34[6] = v23;
  v34[7] = v18;
  v35 = v15;
  return sub_2441C1CF4(v34);
}