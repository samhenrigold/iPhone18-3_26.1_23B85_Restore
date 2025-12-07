uint64_t sub_26814154C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268141818()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268141AD4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268141D90()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

void sub_26814203C()
{
  (*(v0[60] + 8))(v0[61], v0[59]);
  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_268142190(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268142230);
}

uint64_t sub_268142230()
{
  v1 = *(v0 + 64);
  if (*(v0 + 144))
  {
    v2 = sub_2681DF64C(v1);
    *(v0 + 88) = v2;
    v3 = [v2 title];
    sub_2683CFEA8();

    sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_2681423F0;

    return sub_26818351C();
  }

  else
  {
    *(v0 + 112) = sub_2681DF614(v1);
    v10 = sub_268360738();
    *(v0 + 120) = v10;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_268142588;

    return sub_268183294(v10);
  }
}

uint64_t sub_2681423F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 104) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    v10 = sub_268142700;
  }

  else
  {
    v10 = sub_268142524;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_268142524()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_268142588()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[17] = v0;

  if (v0)
  {
    v8 = sub_268142764;
  }

  else
  {

    v8 = sub_268142698;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_268142698()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_268142700()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268142764()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681427DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813F7B0();
}

uint64_t sub_2681428A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26813F058;

  return MEMORY[0x2821B9E10](a1, a2, a3, a4);
}

uint64_t sub_268142960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681405A0();
}

uint64_t sub_268142A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_268142B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_268142BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_268142C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_268142D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2681342AC;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268142E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2681342AC;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268142F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_268142FF8()
{
  result = qword_28024D580;
  if (!qword_28024D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D580);
  }

  return result;
}

uint64_t sub_268143054(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2681430AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26814311C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v0 + 16);
  v9 = v0 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_26839BC00(v8, v0 + v7, v9);
}

uint64_t sub_26814320C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268143270()
{
  result = qword_28024E7B0;
  if (!qword_28024E7B0)
  {
    type metadata accessor for Snippet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E7B0);
  }

  return result;
}

uint64_t sub_2681432C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26814332C(uint64_t a1)
{
  v2 = type metadata accessor for Snippet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681433DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_268143430()
{
  result = qword_28024D5B8;
  if (!qword_28024D5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D5B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  result = v0[41];
  v3 = v0[37];
  *(v1 - 104) = v0[38];
  *(v1 - 96) = v3;
  v4 = v0[35];
  *(v1 - 88) = v0[36];
  *(v1 - 80) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_2681433DC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_50()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return sub_26814304C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2681433DC(a9, a2, a3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Snippet.Reminder.identifier.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103();
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 20));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.title.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103();
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.title.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.title.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.subtitle.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_103();
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.subtitle.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = (v1 + *(type metadata accessor for Snippet.Reminder(v3) + 28));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Snippet.Reminder.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.list.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 32);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  memcpy(v0, (v1 + v3), 0x61uLL);
  return sub_26812DA38(__dst, &v5, &qword_28024D5C0, &unk_2683D2C80);
}

void *Snippet.Reminder.list.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 32);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  sub_26812D9E0(__dst, &qword_28024D5C0, &unk_2683D2C80);
  return memcpy((v1 + v3), v0, 0x61uLL);
}

uint64_t Snippet.Reminder.list.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.isComplete.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105(v0);
  return v2;
}

uint64_t Snippet.Reminder.isComplete.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Snippet.Reminder(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

uint64_t (*Snippet.Reminder.isComplete.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268143C94;
}

uint64_t Snippet.Reminder.isCompletable.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105(v0);
  return v2;
}

uint64_t Snippet.Reminder.isCompletable.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Snippet.Reminder(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

uint64_t (*Snippet.Reminder.isCompletable.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

uint64_t Snippet.Reminder.isFlagged.getter()
{
  type metadata accessor for Snippet.Reminder(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105(v0);
  return v2;
}

uint64_t Snippet.Reminder.isFlagged.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Snippet.Reminder(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

uint64_t (*Snippet.Reminder.isFlagged.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

uint64_t Snippet.Reminder.locationTrigger.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26812DA38(v1 + *(v3 + 48), v0, &qword_28024D5C8, &unk_2683D2C90);
}

uint64_t Snippet.Reminder.locationTrigger.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26814441C(v0, v1 + *(v3 + 48), &qword_28024D5C8, &unk_2683D2C90);
}

uint64_t Snippet.Reminder.locationTrigger.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.temporalTrigger.getter()
{
  v0 = OUTLINED_FUNCTION_70();
  type metadata accessor for Snippet.Reminder(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  return sub_2683CB858();
}

uint64_t sub_268143FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26812DA38(a1, &v5 - v3, &qword_28024D5D0, &unk_2683D2CA0);
  return Snippet.Reminder.temporalTrigger.setter();
}

uint64_t Snippet.Reminder.temporalTrigger.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_4();
  v4 = OUTLINED_FUNCTION_78();
  sub_26812DA38(v4, v5, &qword_28024D5D0, &unk_2683D2CA0);
  type metadata accessor for Snippet.Reminder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB868();
  v6 = OUTLINED_FUNCTION_55_0();
  return sub_26812D9E0(v6, v7, &unk_2683D2CA0);
}

uint64_t (*Snippet.Reminder.temporalTrigger.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

void Snippet.Reminder.messagingTrigger.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = (v1 + *(type metadata accessor for Snippet.Reminder(v2) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  sub_2681441DC(v4, v5, v6, v7);
}

void sub_2681441DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 Snippet.Reminder.messagingTrigger.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = (v1 + *(type metadata accessor for Snippet.Reminder(v2) + 56));
  sub_268144260(*v3, v3[1], v3[2], v3[3]);
  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v5;
  return result;
}

void sub_268144260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t Snippet.Reminder.messagingTrigger.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.attachedLinks.getter()
{
  type metadata accessor for Snippet.Reminder(0);
}

uint64_t Snippet.Reminder.attachedLinks.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 60);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.Reminder.attachedLinks.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.appLink.getter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26812DA38(v1 + *(v3 + 64), v0, &qword_28024D5D8, &qword_2683D4260);
}

uint64_t Snippet.Reminder.appLink.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = type metadata accessor for Snippet.Reminder(v2);
  return sub_26814441C(v0, v1 + *(v3 + 64), &qword_28024D5D8, &qword_2683D4260);
}

uint64_t sub_26814441C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v4;
}

uint64_t Snippet.Reminder.appLink.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.subtasks.getter()
{
  type metadata accessor for Snippet.Reminder(0);
}

uint64_t Snippet.Reminder.subtasks.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = *(type metadata accessor for Snippet.Reminder(v2) + 68);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.Reminder.subtasks.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder(v0);
  return OUTLINED_FUNCTION_44_1();
}

void Snippet.Reminder.init(id:identifier:title:subtitle:list:isComplete:isCompletable:isFlagged:locationTrigger:temporalTrigger:messagingTrigger:attachedLinks:appLink:subtasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, __int128 *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_30_0();
  v30 = v29;
  v90 = v31;
  v89 = v32;
  v88 = v33;
  v87 = v34;
  v86 = v35;
  v85 = v36;
  v101 = v37;
  v39 = v38;
  v100 = a29;
  v99 = a28;
  v97 = a25;
  v96 = a24;
  v93 = a23;
  v92 = a22;
  v91 = a21;
  v98 = a27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_19_3();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v75 - v44;
  memcpy(v103, v30, sizeof(v103));
  sub_2683CB588();
  v46 = type metadata accessor for Snippet.Reminder(0);
  v76 = (v39 + v46[5]);
  v47 = v46[8];
  v77 = (v39 + v46[7]);
  v48 = (v39 + v47);
  *v48 = 0u;
  v48[1] = 0u;
  v48[2] = 0u;
  v48[3] = 0u;
  v48[4] = 0u;
  v48[5] = 0u;
  *(v48 + 96) = 0;
  v49 = v46[10];
  OUTLINED_FUNCTION_117();
  sub_2683CB838();
  v81 = v46[12];
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v50 = a26[1];
  v95 = *a26;
  v94 = v50;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v80 = v46[13];
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v82 = v42;
  OUTLINED_FUNCTION_128(v45, v42);
  OUTLINED_FUNCTION_89();
  sub_2683CB838();
  sub_26812D9E0(v45, &qword_28024D5D0, &unk_2683D2CA0);
  v59 = (v39 + v46[14]);
  *v59 = 0u;
  *(v59 + 1) = 0u;
  v83 = v46[16];
  type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v78 = sub_2683CB598();
  v79 = *(v78 - 8);
  (*(v79 + 24))(v39, v101, v78);
  v64 = v76;
  v65 = v86;
  *v76 = v85;
  v64[1] = v65;
  v66 = (v39 + v46[6]);
  v67 = v88;
  *v66 = v87;
  v66[1] = v67;
  v68 = v77;
  v69 = v90;
  *v77 = v89;
  v68[1] = v69;
  memcpy(v104, v48, 0x61uLL);
  sub_26812D9E0(v104, &qword_28024D5C0, &unk_2683D2C80);
  memcpy(v48, v103, 0x61uLL);
  OUTLINED_FUNCTION_93();
  sub_2683CB838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_1();
  (*(v70 + 8))(v39 + v49);
  v102 = v92;
  sub_2683CB838();
  OUTLINED_FUNCTION_93();
  sub_2683CB838();
  v71 = v96;
  sub_268144B2C(v96, v39 + v81);
  v72 = v97;
  OUTLINED_FUNCTION_128(v97, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  OUTLINED_FUNCTION_1();
  (*(v73 + 8))(v39 + v80);
  OUTLINED_FUNCTION_128(v45, v82);
  sub_2683CB838();
  sub_26812D9E0(v72, &qword_28024D5D0, &unk_2683D2CA0);
  sub_26812D9E0(v71, &qword_28024D5C8, &unk_2683D2C90);
  (*(v79 + 8))(v101, v78);
  sub_26812D9E0(v45, &qword_28024D5D0, &unk_2683D2CA0);
  sub_268144260(*v59, v59[1], v59[2], v59[3]);
  v74 = v94;
  *v59 = v95;
  *(v59 + 1) = v74;
  *(v39 + v46[15]) = v98;
  sub_26814441C(v99, v39 + v83, &qword_28024D5D8, &qword_2683D4260);
  *(v39 + v46[17]) = v100;
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268144B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.Reminder.LocationTrigger.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.spatialEvent.getter()
{
  v0 = OUTLINED_FUNCTION_70();
  type metadata accessor for Snippet.Reminder.LocationTrigger(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  return sub_2683CB858();
}

uint64_t sub_268144C70@<X0>(_BYTE *a1@<X8>)
{
  result = Snippet.Reminder.LocationTrigger.spatialEvent.getter();
  *a1 = v3;
  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.spatialEvent.setter(char *a1)
{
  v12 = *a1;
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], v12);
}

uint64_t (*Snippet.Reminder.LocationTrigger.spatialEvent.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder.LocationTrigger(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

uint64_t Snippet.Reminder.LocationTrigger.isCar.getter()
{
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105(v0);
  return v2;
}

uint64_t Snippet.Reminder.LocationTrigger.isCar.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Snippet.Reminder.LocationTrigger(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

uint64_t (*Snippet.Reminder.LocationTrigger.isCar.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder.LocationTrigger(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

uint64_t Snippet.Reminder.LocationTrigger.init(label:spatialEvent:isCar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  sub_2683CB838();
  return sub_2683CB838();
}

uint64_t static Snippet.Reminder.LocationTrigger.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  sub_268144FE8();
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  return sub_2683CB878();
}

unint64_t sub_268144FE8()
{
  result = qword_28024D5E0;
  if (!qword_28024D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D5E0);
  }

  return result;
}

uint64_t sub_26814503C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x456C616974617073 && a2 == 0xEC000000746E6576;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7261437369 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_268145150(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 0x456C616974617073;
  }

  return 0x7261437369;
}

uint64_t sub_2681451B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26814503C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681451F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268145148();
  *a1 = result;
  return result;
}

uint64_t sub_268145220(uint64_t a1)
{
  v2 = sub_268145460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814525C(uint64_t a1)
{
  v2 = sub_268145460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.LocationTrigger.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5E8, &qword_2683D2CB8);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_268145460();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  OUTLINED_FUNCTION_25_3();
  sub_2683D0518();
  if (!v1)
  {
    type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    OUTLINED_FUNCTION_118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_1_6();
    sub_268145CC0(v8);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v9);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_268145460()
{
  result = qword_28024D5F0;
  if (!qword_28024D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D5F0);
  }

  return result;
}

unint64_t sub_2681454B4()
{
  result = qword_28024D600;
  if (!qword_28024D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D600);
  }

  return result;
}

unint64_t sub_268145508()
{
  result = qword_28024D608;
  if (!qword_28024D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D608);
  }

  return result;
}

void Snippet.Reminder.LocationTrigger.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_130();
  sub_2683CFB48();
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_10_3();
  sub_26814FBBC(v1);
  sub_2683CFA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_60();
  sub_2683CFA08();
  OUTLINED_FUNCTION_131();
}

unint64_t sub_268145624()
{
  result = qword_28024D620;
  if (!qword_28024D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D620);
  }

  return result;
}

unint64_t sub_268145678()
{
  result = qword_28024D628;
  if (!qword_28024D628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A0, &unk_2683D2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D628);
  }

  return result;
}

uint64_t Snippet.Reminder.LocationTrigger.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_2683CFB48();
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_10_3();
  v2 = sub_26814FBBC(v1);
  OUTLINED_FUNCTION_87(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21);
  sub_2683CFA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  v10 = sub_268145678();
  OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22);
  sub_2683CFA08();
  return sub_2683D06D8();
}

void Snippet.Reminder.LocationTrigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  v28 = v27;
  v45 = v29;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_3();
  v44 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v46 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_0_3();
  v48 = v34;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_28_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D630, &qword_2683D2CC0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_4();
  v37 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_57_0(v28, v28[3]);
  sub_268145460();
  OUTLINED_FUNCTION_67_0();
  sub_2683D06F8();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    *v24 = sub_2683D0478();
    v24[1] = v39;
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_2_4();
    sub_268145CC0(v40);
    sub_2683D04A8();
    (*(v48 + 32))(v24 + *(v37 + 20), v26, v33);
    OUTLINED_FUNCTION_2_4();
    sub_268145D30(v41);
    sub_2683D04A8();
    v42 = OUTLINED_FUNCTION_115();
    v43(v42);
    (*(v44 + 32))(v24 + *(v37 + 24), v46, v47);
    sub_26814F07C(v24, v45);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_13_6();
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_268145BD4(uint64_t a1)
{
  sub_2683D0698();
  sub_2683CFB48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  sub_26814FBBC(&unk_28024D618);
  sub_2683CFA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  sub_2683CFA08();
  return sub_2683D06D8();
}

unint64_t sub_268145CC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28024E7A0, &qword_2683D2CB0);
    sub_2681454B4();
    sub_268145508();
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_268145D30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A0, &unk_2683D2C30);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_268145DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697669727261 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69747261706564 && a2 == 0xE900000000000067)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268145E9C(char a1)
{
  if (a1)
  {
    return 0x6E69747261706564;
  }

  else
  {
    return 0x676E697669727261;
  }
}

uint64_t sub_268145EDC(uint64_t a1)
{
  v2 = sub_26814639C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268145F18(uint64_t a1)
{
  v2 = sub_26814639C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268145F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268145DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268145F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268145E94();
  *a1 = result;
  return result;
}

uint64_t sub_268145FAC(uint64_t a1)
{
  v2 = sub_2681462F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268145FE8(uint64_t a1)
{
  v2 = sub_2681462F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268146024(uint64_t a1)
{
  v2 = sub_268146348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268146060(uint64_t a1)
{
  v2 = sub_268146348();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.SpatialEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D648, &qword_2683D2CC8);
  OUTLINED_FUNCTION_0_3();
  v46 = v28;
  v47 = v27;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v45 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D650, &qword_2683D2CD0);
  OUTLINED_FUNCTION_0_3();
  v43 = v32;
  v44 = v31;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_84();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D658, &qword_2683D2CD8);
  OUTLINED_FUNCTION_0_3();
  v36 = v35;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v43 - v38;
  v40 = *v23;
  OUTLINED_FUNCTION_57_0(v26, v26[3]);
  sub_2681462F4();
  sub_2683D0718();
  v41 = (v36 + 8);
  if (v40)
  {
    sub_268146348();
    v42 = v45;
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    (*(v46 + 8))(v42, v47);
  }

  else
  {
    sub_26814639C();
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    (*(v43 + 8))(v24, v44);
  }

  (*v41)(v39, v34);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_2681462F4()
{
  result = qword_28024D660;
  if (!qword_28024D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D660);
  }

  return result;
}

unint64_t sub_268146348()
{
  result = qword_28024D668;
  if (!qword_28024D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D668);
  }

  return result;
}

unint64_t sub_26814639C()
{
  result = qword_28024D670;
  if (!qword_28024D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D670);
  }

  return result;
}

uint64_t Snippet.Reminder.SpatialEvent.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  v1 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

void Snippet.Reminder.SpatialEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v28 = v27;
  v57 = v29;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D678, &qword_2683D2CE0);
  OUTLINED_FUNCTION_0_3();
  v56 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_116();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D680, &qword_2683D2CE8);
  OUTLINED_FUNCTION_0_3();
  v55 = v33;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_49_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D688, &unk_2683D2CF0);
  OUTLINED_FUNCTION_0_3();
  v58 = v36;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_57_0(v28, v28[3]);
  sub_2681462F4();
  sub_2683D06F8();
  if (v24)
  {
    goto LABEL_8;
  }

  v60 = v28;
  v38 = sub_2683D04B8();
  sub_26814E170(v38, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v51 = sub_2683D01D8();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v53 = &type metadata for Snippet.Reminder.SpatialEvent;
    v54 = sub_2683D0428();
    OUTLINED_FUNCTION_122(v54);
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v25, v35);
    v28 = v60;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_9:
    OUTLINED_FUNCTION_62();
    return;
  }

  if (v41 < (v42 >> 1))
  {
    v43 = *(v40 + v41);
    sub_268151AA0(v41 + 1, v42 >> 1, v39, v40, v41, v42);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      if (v43)
      {
        sub_268146348();
        v48 = v23;
        OUTLINED_FUNCTION_97(&_s14descr2878F8F29V8ReminderV12SpatialEventO19DepartingCodingKeysON);
        v49 = v57;
        v50 = v58;
        swift_unknownObjectRelease();
        (*(v56 + 8))(v48, v59);
      }

      else
      {
        sub_26814639C();
        OUTLINED_FUNCTION_97(&_s14descr2878F8F29V8ReminderV12SpatialEventO18ArrivingCodingKeysON);
        v49 = v57;
        v50 = v58;
        swift_unknownObjectRelease();
        (*(v55 + 8))(v26, v32);
      }

      (*(v50 + 8))(v25, v45);
      *v49 = v43;
      __swift_destroy_boxed_opaque_existential_0(v60);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Snippet.Reminder.TemporalTrigger.date.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);

  return sub_2683CB858();
}

uint64_t sub_268146914(uint64_t a1)
{
  v2 = sub_2683CB528();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Snippet.Reminder.TemporalTrigger.date.setter();
}

uint64_t Snippet.Reminder.TemporalTrigger.date.setter()
{
  OUTLINED_FUNCTION_24_4();
  v2 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  (*(v4 + 16))(v1, v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_2683CB868();
  v6 = OUTLINED_FUNCTION_55_0();
  return v7(v6);
}

uint64_t (*Snippet.Reminder.TemporalTrigger.date.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  v2[4] = sub_2683CB848();
  return sub_268151B78;
}

uint64_t Snippet.Reminder.TemporalTrigger.isAllDay.getter()
{
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_105(v0);
  return v2;
}

uint64_t Snippet.Reminder.TemporalTrigger.isAllDay.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Snippet.Reminder.TemporalTrigger(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  return OUTLINED_FUNCTION_50_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

uint64_t (*Snippet.Reminder.TemporalTrigger.isAllDay.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Snippet.Reminder.TemporalTrigger(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  *(v0 + 32) = OUTLINED_FUNCTION_43_1(v4);
  return sub_268151B78;
}

void sub_268146C38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Snippet.Reminder.TemporalTrigger.init(date:isAllDay:)()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = *(v6 + 16);
  (v11)(&v15[-v9], v3, v4);
  v12 = OUTLINED_FUNCTION_19_2();
  v11(v12);
  sub_2683CB838();
  v13 = *(v6 + 8);
  (v13)(v10, v4);
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  v15[15] = v1;
  sub_2683CB838();
  v14 = OUTLINED_FUNCTION_9_0();
  v13(v14);
  OUTLINED_FUNCTION_29_0();
}

uint64_t static Snippet.Reminder.TemporalTrigger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  sub_2683CB528();
  OUTLINED_FUNCTION_14_5();
  sub_26814EEB8(v2);
  OUTLINED_FUNCTION_41_0();
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);

  return sub_2683CB878();
}

uint64_t sub_268146E8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268146F54(char a1)
{
  if (a1)
  {
    return 0x7961446C6C417369;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_268146F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268146E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268146FB4(uint64_t a1)
{
  v2 = sub_26814EE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268146FF0(uint64_t a1)
{
  v2 = sub_26814EE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.TemporalTrigger.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6A8, &qword_2683D2D08);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_26814EE64();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_1_6();
  sub_26814EFB0(v8);
  OUTLINED_FUNCTION_16_5();
  sub_2683D0548();
  if (!v1)
  {
    type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    OUTLINED_FUNCTION_118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v9);
    OUTLINED_FUNCTION_16_5();
    sub_2683D0548();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Snippet.Reminder.TemporalTrigger.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_26814EEFC();
  OUTLINED_FUNCTION_55_0();
  sub_2683CFA08();
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_55_0();
  return sub_2683CFA08();
}

uint64_t Snippet.Reminder.TemporalTrigger.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  v1 = sub_26814EEFC();
  OUTLINED_FUNCTION_87(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20);
  sub_2683CFA08();
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  v9 = sub_268145678();
  OUTLINED_FUNCTION_87(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
  sub_2683CFA08();
  return sub_2683D06D8();
}

void Snippet.Reminder.TemporalTrigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63_0();
  v26 = v25;
  v45 = v27;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_3();
  v44 = v28;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_83();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_0_3();
  v46 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v48 = v32;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6E0, &qword_2683D2D10);
  OUTLINED_FUNCTION_0_3();
  v49 = v33;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_28_2();
  v35 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_3();
  v39 = v38 - v37;
  v40 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_57_0(v40, v41);
  sub_26814EE64();
  sub_2683D06F8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    sub_26814EFB0(v42);
    sub_2683D04A8();
    (*(v46 + 32))(v39, v48, v50);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_2_4();
    sub_268145D30(v43);
    sub_2683D04A8();
    (*(v49 + 8))(v23, v51);
    (*(v44 + 32))(v39 + *(v35 + 20), v24, v47);
    sub_26814F07C(v39, v45);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2681476A8(uint64_t a1)
{
  sub_2683D0698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  sub_26814EEFC();
  sub_2683CFA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  sub_2683CFA08();
  return sub_2683D06D8();
}

uint64_t Snippet.Reminder.MessagingTrigger.contact.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Snippet.Reminder.MessagingTrigger.contact.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

__n128 Snippet.Reminder.MessagingTrigger.init(contact:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  return result;
}

BOOL static Snippet.Reminder.MessagingTrigger.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_2683D0598() & 1) != 0)
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_9_0();
    if (sub_2683D0598())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2681478A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268147938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681478A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268147964(uint64_t a1)
{
  v2 = sub_26814F128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681479A0(uint64_t a1)
{
  v2 = sub_26814F128();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.MessagingTrigger.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D6F0, &qword_2683D2D18);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_57_0(v2, v2[3]);
  sub_26814F128();

  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  sub_26814F17C();
  sub_2683D0548();

  v4 = OUTLINED_FUNCTION_19_2();
  v5(v4);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.Reminder.MessagingTrigger.hash(into:)(uint64_t a1)
{
  sub_2683CFB48();
  OUTLINED_FUNCTION_55_0();

  return sub_2683CFB48();
}

uint64_t Snippet.Reminder.MessagingTrigger.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.Reminder.MessagingTrigger.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D708, &qword_2683D2D20);
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  sub_26814F128();
  OUTLINED_FUNCTION_108();
  sub_2683D06F8();
  if (!v1)
  {
    sub_26814F1D0();
    OUTLINED_FUNCTION_66();
    sub_2683D04A8();
    (*(v9 + 8))(v2, v7);
    *v6 = v11;
    *(v6 + 16) = v12;
    *(v6 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_268147D5C(uint64_t a1)
{
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void static Snippet.Reminder.AppLink.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v33 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D718, &qword_2683D2D28);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_116();
  v19 = v0 + *(v18 + 56);
  sub_26814F07C(v5, v0);
  sub_26814F07C(v3, v19);
  OUTLINED_FUNCTION_60();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_4();
    sub_26814F07C(v0, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = OUTLINED_FUNCTION_61_0();
      MEMORY[0x26D611F40](v20);
      v21 = OUTLINED_FUNCTION_19_2();
      sub_268143054(v21, v22);
      v23 = OUTLINED_FUNCTION_61_0();
      sub_268143054(v23, v24);
LABEL_9:
      OUTLINED_FUNCTION_11_6();
      sub_26814F0D4();
      goto LABEL_10;
    }

    v27 = OUTLINED_FUNCTION_61_0();
    sub_268143054(v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    v25 = OUTLINED_FUNCTION_78();
    sub_26814F07C(v25, v26);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v33;
      (*(v7 + 32))(v1, v19, v33);
      sub_2683CB3D8();
      v30 = *(v7 + 8);
      v31 = OUTLINED_FUNCTION_114();
      v30(v31);
      (v30)(v15, v29);
      goto LABEL_9;
    }

    (*(v7 + 8))(v15, v33);
  }

  sub_26812D9E0(v0, &qword_28024D718, &qword_2683D2D28);
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268148080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6173726576696E75 && a2 == 0xED00006B6E694C6CLL;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEC00000079746976)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268148154(char a1)
{
  if (a1)
  {
    return 0x6974634172657375;
  }

  else
  {
    return 0x6173726576696E75;
  }
}

uint64_t sub_2681481AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268148224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268148080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26814824C(uint64_t a1)
{
  v2 = sub_26814F224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268148288(uint64_t a1)
{
  v2 = sub_26814F224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681482C8(uint64_t a1)
{
  v2 = sub_26814F320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268148304(uint64_t a1)
{
  v2 = sub_26814F320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268148340(uint64_t a1)
{
  v2 = sub_26814F278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814837C(uint64_t a1)
{
  v2 = sub_26814F278();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.AppLink.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v32 = v2;
  v6 = v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D720, &qword_2683D2D30);
  OUTLINED_FUNCTION_0_3();
  v29 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v25 = v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D728, &qword_2683D2D38);
  OUTLINED_FUNCTION_0_3();
  v28 = v10;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_83();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v26 = v13;
  v27 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_116();
  type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_3();
  v17 = v16 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D730, &qword_2683D2D40);
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_57_0(v6, v6[3]);
  sub_26814F224();
  OUTLINED_FUNCTION_108();
  sub_2683D0718();
  OUTLINED_FUNCTION_6_4();
  sub_26814F07C(v32, v17);
  OUTLINED_FUNCTION_19_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26814F278();
    OUTLINED_FUNCTION_86();
    sub_2683D04C8();
    sub_26814F2CC();
    sub_2683D0548();
    (*(v29 + 8))(v25, v31);
    (*(v19 + 8))(v3, v33);
    v21 = OUTLINED_FUNCTION_78();
    sub_268143054(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_74();
    v23();
    sub_26814F320();
    OUTLINED_FUNCTION_66();
    sub_2683D04C8();
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v24);
    sub_2683D0548();
    (*(v28 + 8))(v4, v30);
    (*(v26 + 8))(v1, v27);
    (*(v19 + 8))(v3, v33);
  }

  OUTLINED_FUNCTION_62();
}

void Snippet.Reminder.AppLink.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_47_0();
  v2 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_6_4();
  v7 = OUTLINED_FUNCTION_89();
  sub_26814F07C(v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x26D617190](1);
    OUTLINED_FUNCTION_41_0();
    sub_2683CB478();
    v9 = OUTLINED_FUNCTION_55_0();
    sub_268143054(v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_113();
    v12(v11);
    MEMORY[0x26D617190](0);
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v13);
    OUTLINED_FUNCTION_88();
    sub_2683CFA08();
    (*(v4 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_131();
}

void Snippet.Reminder.AppLink.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v64 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D768, &qword_2683D2D48);
  OUTLINED_FUNCTION_0_3();
  v70 = v6;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v69 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D770, &qword_2683D2D50);
  OUTLINED_FUNCTION_0_3();
  v66 = v10;
  v67 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D778, &qword_2683D2D58);
  OUTLINED_FUNCTION_0_3();
  v71 = v14;
  v72 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_4();
  v16 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_3();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v58[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v58[-v25];
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  sub_26814F224();
  OUTLINED_FUNCTION_67_0();
  sub_2683D06F8();
  if (v1)
  {
    goto LABEL_8;
  }

  v61 = v24;
  v62 = v20;
  v60 = v26;
  v63 = v16;
  v27 = v72;
  v28 = sub_2683D04B8();
  sub_26814E170(v28, 0);
  v33 = v2;
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v39 = v63;
    v40 = sub_2683D01D8();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v42 = v39;
    v43 = sub_2683D0428();
    OUTLINED_FUNCTION_122(v43);
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_46_1();
    v45(v44, v27);
LABEL_8:
    v46 = v4;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_62();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v59 = *(v30 + v31);
    sub_268151AA0(v31 + 1, v32 >> 1, v29, v30, v31, v32);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v38 = v62;
    if (v35 == v37 >> 1)
    {
      if (v59)
      {
        LOBYTE(v73) = 1;
        sub_26814F278();
        OUTLINED_FUNCTION_86();
        sub_2683D0418();
        sub_26814F374();
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v50 = OUTLINED_FUNCTION_60();
        v51(v50);
        v52 = OUTLINED_FUNCTION_46_1();
        v53(v52, v27);
        *v38 = v73;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_4();
        v54 = v38;
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_26814F320();
        OUTLINED_FUNCTION_86();
        sub_2683D0418();
        sub_2683CB438();
        OUTLINED_FUNCTION_0_10();
        sub_26814EEB8(v47);
        v48 = v61;
        sub_2683D04A8();
        v49 = v71;
        swift_unknownObjectRelease();
        v55 = OUTLINED_FUNCTION_60();
        v56(v55);
        (*(v49 + 8))(v33, v27);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_4();
        v54 = v48;
      }

      v57 = v60;
      sub_26814F6E8(v54, v60);
      OUTLINED_FUNCTION_4_4();
      sub_26814F6E8(v57, v64);
      v46 = v4;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Snippet.Reminder.UserActivityStorage.data.getter()
{
  v0 = OUTLINED_FUNCTION_9_0();
  sub_26814F3C8(v0, v1);
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.UserActivityStorage.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void Snippet.Reminder.UserActivityStorage.userActivity.getter()
{
  sub_26814F420();
  v0 = sub_268149058(0x2073656873617263, 0xEF74756F68746977);
  OUTLINED_FUNCTION_55_0();
  v1 = sub_2683CB448();
  v2 = [v0 _initWithUserActivityData_];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_268149058(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2683CFA68();

  v4 = [v2 initWithActivityType_];

  return v4;
}

uint64_t sub_2681490CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268149144(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268149194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681490CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2681491C0(uint64_t a1)
{
  v2 = sub_26814F464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681491FC(uint64_t a1)
{
  v2 = sub_26814F464();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.UserActivityStorage.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D798, &qword_2683D2D60);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_4();
  v9 = *v1;
  v10 = v1[1];
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  v11 = OUTLINED_FUNCTION_44();
  sub_26814F3C8(v11, v12);
  sub_26814F464();
  OUTLINED_FUNCTION_67_0();
  sub_2683D0718();
  sub_26814F4B8();
  sub_2683D0548();
  sub_268143054(v9, v10);
  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.Reminder.UserActivityStorage.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_2683CB478();
  return sub_2683D06D8();
}

void Snippet.Reminder.UserActivityStorage.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7B0, &qword_2683D2D68);
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_57_0(v4, v4[3]);
  sub_26814F464();
  OUTLINED_FUNCTION_108();
  sub_2683D06F8();
  if (!v1)
  {
    sub_26814F50C();
    OUTLINED_FUNCTION_66();
    sub_2683D04A8();
    (*(v9 + 8))(v2, v7);
    *v6 = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2681494F8(uint64_t a1)
{
  sub_2683D0698();
  sub_2683CB478();
  return sub_2683D06D8();
}

uint64_t sub_26814958C()
{
  v0 = OUTLINED_FUNCTION_70();
  v1(v0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_9_0();

  return v3(v2);
}

uint64_t sub_268149604()
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1(v0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_41_0();

  return v3(v2);
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.getter()
{
  OUTLINED_FUNCTION_56_0();
  v0 = OUTLINED_FUNCTION_9_0();
  sub_26814F5B8(v0, v1);
  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.setter()
{
  v3 = OUTLINED_FUNCTION_53_0();
  v4 = v1 + *(type metadata accessor for Snippet.Reminder.URLAttachment(v3) + 20);
  result = sub_26814F5CC(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Snippet.Reminder.URLAttachment.encodedMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_24_4();
  type metadata accessor for Snippet.Reminder.URLAttachment(v0);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.Reminder.URLAttachment.init(url:encodedMetadata:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_56_0();
  v7 = a3 + v6;
  *(a3 + v6) = xmmword_2683D2C70;
  sub_2683CB438();
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_69();
  v9(v8);
  result = sub_26814F5CC(*v7, *(v7 + 8));
  *v7 = a1;
  *(v7 + 8) = a2;
  return result;
}

BOOL static Snippet.Reminder.URLAttachment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2683CB3D8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_0();
  v5 = *(a2 + v4 + 8);
  if (*(a1 + v4 + 8) >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v13 = OUTLINED_FUNCTION_32_2();
      v14 = MEMORY[0x26D611F40](v13);
      v15 = OUTLINED_FUNCTION_69();
      sub_26814F5CC(v15, v16);
      v17 = OUTLINED_FUNCTION_41_0();
      sub_26814F5CC(v17, v18);
      return (v14 & 1) != 0;
    }

LABEL_6:
    v8 = OUTLINED_FUNCTION_32_2();
    sub_26814F5CC(v8, v9);
    v10 = OUTLINED_FUNCTION_69();
    sub_26814F5CC(v10, v11);
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_6;
  }

  v6 = OUTLINED_FUNCTION_32_2();
  sub_26814F5CC(v6, v7);
  return 1;
}

uint64_t sub_268149884(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D6465646F636E65 && a2 == 0xEF61746164617465)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268149954(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_79(a1);
  MEMORY[0x26D617190](v1 & 1);
  return sub_2683D06D8();
}

uint64_t sub_268149994(char a1)
{
  if (a1)
  {
    return 0x4D6465646F636E65;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_2681499D0(uint64_t a1)
{
  sub_2683D0698();
  v1 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t sub_268149A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268149884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268149A40(uint64_t a1)
{
  v2 = sub_26814F5E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268149A7C(uint64_t a1)
{
  v2 = sub_26814F5E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Reminder.URLAttachment.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7C0, &qword_2683D2D70);
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_57_0(a1, a1[3]);
  sub_26814F5E0();
  sub_2683D0718();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  sub_26814EEB8(v10);
  sub_2683D0548();
  if (!v2)
  {
    v11 = (v4 + *(type metadata accessor for Snippet.Reminder.URLAttachment(0) + 20));
    v13 = *v11;
    v14 = v11[1];
    sub_26814F5B8(*v11, v14);
    sub_26814F4B8();
    sub_2683D0508();
    sub_26814F5CC(v13, v14);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Snippet.Reminder.URLAttachment.hash(into:)()
{
  OUTLINED_FUNCTION_24_4();
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  sub_26814EEB8(v1);
  OUTLINED_FUNCTION_55_0();
  sub_2683CFA08();
  OUTLINED_FUNCTION_56_0();
  if (*(v0 + v2 + 8) >> 60 == 15)
  {
    return OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_60();

  return sub_2683CB478();
}

uint64_t Snippet.Reminder.URLAttachment.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_2683CB438();
  OUTLINED_FUNCTION_0_10();
  v3 = sub_26814EEB8(v2);
  OUTLINED_FUNCTION_87(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  sub_2683CFA08();
  OUTLINED_FUNCTION_56_0();
  if (*(v1 + v11 + 8) >> 60 == 15)
  {
    sub_2683D06B8();
  }

  else
  {
    sub_2683D06B8();
    sub_2683CB478();
  }

  return sub_2683D06D8();
}

void Snippet.Reminder.URLAttachment.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v25 = v24;
  v45 = v26;
  v47 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v46 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7D0, &qword_2683D2D78);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_84();
  v33 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v34 = OUTLINED_FUNCTION_23(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_3();
  v37 = v36 - v35;
  v39 = v36 - v35 + *(v38 + 28);
  *v39 = xmmword_2683D2C70;
  v40 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_57_0(v40, v41);
  sub_26814F5E0();
  sub_2683D06F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_26814F5CC(*v39, *(v39 + 8));
  }

  else
  {
    LOBYTE(v48) = 0;
    OUTLINED_FUNCTION_0_10();
    sub_26814EEB8(v42);
    sub_2683D04A8();
    (*(v46 + 32))(v37, v31, v47);
    sub_26814F50C();
    sub_2683D0468();
    v43 = OUTLINED_FUNCTION_51_1();
    v44(v43);
    sub_26814F5CC(*v39, *(v39 + 8));
    *v39 = v48;
    *(v39 + 8) = v49;
    sub_26814F07C(v37, v45);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26814A114(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  sub_2683CB438();
  sub_26814EEB8(&unk_28024D760);
  sub_2683CFA08();
  if (*(v2 + *(a2 + 20) + 8) >> 60 == 15)
  {
    sub_2683D06B8();
  }

  else
  {
    sub_2683D06B8();
    sub_2683CB478();
  }

  return sub_2683D06D8();
}

void static Snippet.Reminder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v6 = v5;
  v167 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v168 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7D8, &qword_2683D2D80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_84();
  v16 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48_1();
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D7E0, &qword_2683D2D88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v158 - v21;
  if ((sub_2683CB568() & 1) == 0)
  {
    goto LABEL_87;
  }

  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_111();
  if (!v23)
  {
    if (v24)
    {
      goto LABEL_87;
    }

LABEL_11:
    v30 = *(v27 + 24);
    v31 = *(v6 + v30);
    v32 = *(v6 + v30 + 8);
    v33 = (v4 + v30);
    v34 = v33[1];
    if (v31 != *v33 || v32 != v34)
    {
      OUTLINED_FUNCTION_64_0(v31, v32, *v33, v34);
      OUTLINED_FUNCTION_58_0();
      if ((v36 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    OUTLINED_FUNCTION_111();
    if (v37)
    {
      if (!v38)
      {
        goto LABEL_87;
      }

      v165 = v6;
      v42 = v4;
      if (*v39 != *v40 || v37 != v38)
      {
        v44 = v41;
        v45 = sub_2683D0598();
        v41 = v44;
        if ((v45 & 1) == 0)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v165 = v6;
      v42 = v4;
      if (v38)
      {
        goto LABEL_87;
      }
    }

    v161 = v10;
    v162 = v2;
    v46 = (v165 + *(v41 + 32));
    v47 = v41;
    memcpy(v183, v46, 0x61uLL);
    v163 = v42;
    v164 = v47;
    v48 = (v42 + *(v47 + 32));
    memcpy(v184, v48, 0x61uLL);
    v181 = *v46;
    v182 = v46[2];
    v49 = v183[3];
    memcpy(v180, v46 + 4, sizeof(v180));
    *&v179[7] = *v48;
    *&v179[23] = v48[2];
    v50 = v184[3];
    memcpy(v178, v48 + 4, sizeof(v178));
    if (v183[3])
    {
      OUTLINED_FUNCTION_109();
      *&v174[24] = v49;
      OUTLINED_FUNCTION_123();
      memcpy(v173, v174, 0x61uLL);
      v51 = v50;
      if (v50)
      {
        *v172 = *v48;
        *&v172[16] = v48[2];
        memcpy(&v172[32], v48 + 4, 0x41uLL);
        *&v172[24] = v50;
        OUTLINED_FUNCTION_99(v183);
        OUTLINED_FUNCTION_99(v184);
        OUTLINED_FUNCTION_99(v174);
        v52 = static Snippet.ReminderList.== infix(_:_:)(v173, v172);
        memcpy(v170, v172, 0x61uLL);
        sub_26814F740(v170);
        memcpy(v171, v173, 0x61uLL);
        sub_26814F740(v171);
        *v172 = v181;
        *&v172[16] = v182;
        *&v172[24] = v49;
        memcpy(&v172[32], v180, 0x41uLL);
        sub_26812D9E0(v172, &qword_28024D5C0, &unk_2683D2C80);
        if (!v52)
        {
          goto LABEL_87;
        }

LABEL_35:
        v58 = v164;
        v57 = v165;
        v59 = v163;
        if ((sub_2683CB878() & 1) == 0 || (sub_2683CB878() & 1) == 0 || (sub_2683CB878() & 1) == 0)
        {
          goto LABEL_87;
        }

        v166 = v1;
        v60 = *(v58 + 48);
        v61 = *(v169 + 48);
        sub_26812DA38(v57 + v60, v22, &qword_28024D5C8, &unk_2683D2C90);
        v62 = v59 + v60;
        v63 = v61;
        sub_26812DA38(v62, &v22[v61], &qword_28024D5C8, &unk_2683D2C90);
        OUTLINED_FUNCTION_72(v22, 1, v16);
        if (v28)
        {
          OUTLINED_FUNCTION_72(&v22[v61], 1, v16);
          if (v28)
          {
            sub_26812D9E0(v22, &qword_28024D5C8, &unk_2683D2C90);
            goto LABEL_43;
          }
        }

        else
        {
          v94 = v166;
          sub_26812DA38(v22, v166, &qword_28024D5C8, &unk_2683D2C90);
          OUTLINED_FUNCTION_72(&v22[v63], 1, v16);
          if (!v95)
          {
            OUTLINED_FUNCTION_42_1();
            sub_26814F6E8(&v22[v63], v0);
            v96 = *v94 == *v0 && v94[1] == v0[1];
            if (v96 || (sub_2683D0598() & 1) != 0)
            {
              sub_268144FE8();
              if (sub_2683CB878())
              {
                v97 = sub_2683CB878();
                sub_26814F0D4();
                OUTLINED_FUNCTION_19_2();
                sub_26814F0D4();
                sub_26812D9E0(v22, &qword_28024D5C8, &unk_2683D2C90);
                if ((v97 & 1) == 0)
                {
                  goto LABEL_87;
                }

LABEL_43:
                v64 = v164;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
                sub_26814F634();
                if ((sub_2683CB878() & 1) == 0)
                {
                  goto LABEL_87;
                }

                v166 = v14;
                v65 = *(v64 + 56);
                v66 = *(v57 + v65);
                v67 = *(v57 + v65 + 8);
                v68 = *(v57 + v65 + 16);
                v69 = *(v57 + v65 + 24);
                v70 = (v59 + v65);
                v72 = *v70;
                v71 = v70[1];
                v73 = v70[2];
                v74 = v70[3];
                v169 = v68;
                if (v67)
                {
                  if (v71)
                  {
                    v75 = v66 == v72 && v67 == v71;
                    v160 = v66;
                    if (!v75)
                    {
                      OUTLINED_FUNCTION_44();
                      v76 = sub_2683D0598();
                      v68 = v169;
                      if ((v76 & 1) == 0)
                      {
                        v142 = OUTLINED_FUNCTION_44();
                        v144 = v143;
                        OUTLINED_FUNCTION_129(v142, v145);
                        v146 = OUTLINED_FUNCTION_17_2();
                        sub_2681441DC(v146, v147, v148, v74);
                        v149 = OUTLINED_FUNCTION_44();
                        sub_2681441DC(v149, v150, v144, v69);
                        v151 = OUTLINED_FUNCTION_17_2();
                        sub_268144260(v151, v152, v153, v74);
LABEL_85:

                        OUTLINED_FUNCTION_27_0();
                        goto LABEL_86;
                      }
                    }

                    if (v68 == v73 && v69 == v74)
                    {
                      v115 = OUTLINED_FUNCTION_44();
                      v117 = v116;
                      OUTLINED_FUNCTION_129(v115, v118);
                      v119 = OUTLINED_FUNCTION_17_2();
                      sub_2681441DC(v119, v120, v121, v69);
                      v122 = OUTLINED_FUNCTION_44();
                      sub_2681441DC(v122, v123, v117, v69);
                      v124 = OUTLINED_FUNCTION_17_2();
                      sub_268144260(v124, v125, v126, v69);
                    }

                    else
                    {
                      v78 = sub_2683D0598();
                      v158 = v74;
                      HIDWORD(v159) = v78;
                      OUTLINED_FUNCTION_27_0();
                      sub_2681441DC(v79, v80, v81, v82);
                      v83 = OUTLINED_FUNCTION_17_2();
                      v84 = v158;
                      sub_2681441DC(v83, v85, v86, v158);
                      OUTLINED_FUNCTION_27_0();
                      sub_2681441DC(v87, v88, v89, v90);
                      v91 = OUTLINED_FUNCTION_17_2();
                      sub_268144260(v91, v92, v93, v84);
                      if ((v159 & 0x100000000) == 0)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_78;
                  }

                  v101 = OUTLINED_FUNCTION_44();
                  v103 = v102;
                  OUTLINED_FUNCTION_129(v101, v104);
                  OUTLINED_FUNCTION_124();
                  v105 = OUTLINED_FUNCTION_44();
                  sub_2681441DC(v105, v106, v103, v69);
                }

                else
                {
                  OUTLINED_FUNCTION_129(v66, 0);
                  if (!v71)
                  {
                    OUTLINED_FUNCTION_124();
LABEL_78:
                    OUTLINED_FUNCTION_27_0();
                    sub_268144260(v127, v128, v129, v130);
                    v131 = v164;
                    if ((sub_26814AD6C(*(v57 + *(v164 + 60)), *(v59 + *(v164 + 60))) & 1) == 0)
                    {
                      goto LABEL_87;
                    }

                    v132 = *(v131 + 64);
                    v133 = *(v166 + 48);
                    v134 = v162;
                    sub_26812DA38(v57 + v132, v162, &qword_28024D5D8, &qword_2683D4260);
                    sub_26812DA38(v59 + v132, v134 + v133, &qword_28024D5D8, &qword_2683D4260);
                    v135 = v167;
                    OUTLINED_FUNCTION_72(v134, 1, v167);
                    if (v28)
                    {
                      OUTLINED_FUNCTION_72(v134 + v133, 1, v135);
                      if (v28)
                      {
                        sub_26812D9E0(v162, &qword_28024D5D8, &qword_2683D4260);
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      sub_26812DA38(v134, v168, &qword_28024D5D8, &qword_2683D4260);
                      OUTLINED_FUNCTION_72(v134 + v133, 1, v135);
                      if (!v154)
                      {
                        OUTLINED_FUNCTION_4_4();
                        v155 = v162;
                        sub_26814F6E8(&v162[v133], v161);
                        static Snippet.Reminder.AppLink.== infix(_:_:)();
                        v157 = v156;
                        sub_26814F0D4();
                        sub_26814F0D4();
                        sub_26812D9E0(v155, &qword_28024D5D8, &qword_2683D4260);
                        if ((v157 & 1) == 0)
                        {
                          goto LABEL_87;
                        }

LABEL_93:
                        sub_26814B760(*(v57 + *(v164 + 68)), *(v59 + *(v164 + 68)), v136, v137, v138, v139, v140, v141, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
                        goto LABEL_87;
                      }

                      OUTLINED_FUNCTION_11_6();
                      sub_26814F0D4();
                    }

                    v54 = &qword_28024D7D8;
                    v55 = &qword_2683D2D80;
                    v56 = v162;
LABEL_33:
                    sub_26812D9E0(v56, v54, v55);
                    goto LABEL_87;
                  }

                  v98 = OUTLINED_FUNCTION_17_2();
                  sub_2681441DC(v98, v99, v100, v74);
                }

                OUTLINED_FUNCTION_27_0();
                sub_268144260(v107, v108, v109, v110);
                v111 = OUTLINED_FUNCTION_17_2();
                v114 = v74;
LABEL_86:
                sub_268144260(v111, v112, v113, v114);
                goto LABEL_87;
              }
            }

            sub_26814F0D4();
            sub_26814F0D4();
            v54 = &qword_28024D5C8;
            v55 = &unk_2683D2C90;
LABEL_70:
            v56 = v22;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_13_6();
          sub_26814F0D4();
        }

        v54 = &qword_28024D7E0;
        v55 = &qword_2683D2D88;
        goto LABEL_70;
      }

      v53 = v49;
      memcpy(v172, v174, sizeof(v172));
      OUTLINED_FUNCTION_98(v183);
      OUTLINED_FUNCTION_98(v184);
      OUTLINED_FUNCTION_98(v174);
      sub_26814F740(v172);
    }

    else
    {
      if (!v184[3])
      {
        OUTLINED_FUNCTION_109();
        *&v174[24] = 0;
        OUTLINED_FUNCTION_123();
        sub_26812DA38(v183, v173, &qword_28024D5C0, &unk_2683D2C80);
        sub_26812DA38(v184, v173, &qword_28024D5C0, &unk_2683D2C80);
        sub_26812D9E0(v174, &qword_28024D5C0, &unk_2683D2C80);
        goto LABEL_35;
      }

      v53 = 0;
      sub_26812DA38(v183, v174, &qword_28024D5C0, &unk_2683D2C80);
      sub_26812DA38(v184, v174, &qword_28024D5C0, &unk_2683D2C80);
      v51 = v50;
    }

    *v174 = v181;
    *&v174[16] = v182;
    *&v174[24] = v53;
    memcpy(&v174[32], v180, 0x41uLL);
    *v175 = *v179;
    *&v175[15] = *&v179[15];
    v176 = v51;
    memcpy(v177, v178, sizeof(v177));
    v54 = &qword_28024D7E8;
    v55 = &qword_2683D2D90;
    v56 = v174;
    goto LABEL_33;
  }

  if (v24)
  {
    v28 = *v25 == *v26 && v23 == v24;
    if (v28)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_64_0(*v25, v23, *v26, v24);
    OUTLINED_FUNCTION_58_0();
    if (v29)
    {
      goto LABEL_11;
    }
  }

LABEL_87:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26814AD6C(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v78 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v4 = MEMORY[0x28223BE20](v78);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v71 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v75 = 0;
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v77 = *(v7 + 72);
  while (1)
  {
    sub_26814F07C(v12, v9);
    sub_26814F07C(v13, v6);
    if ((sub_2683CB3D8() & 1) == 0)
    {
      goto LABEL_104;
    }

    v14 = *(v78 + 20);
    v15 = *&v9[v14];
    v16 = *&v9[v14 + 8];
    v17 = &v6[v14];
    v18 = *v17;
    v19 = v17[1];
    if (v16 >> 60 == 15)
    {
      if (v19 >> 60 != 15)
      {
        break;
      }

      sub_26814F5B8(v15, v16);
      sub_26814F5B8(v18, v19);
LABEL_47:
      v25 = v15;
      v26 = v16;
      goto LABEL_48;
    }

    if (v19 >> 60 == 15)
    {
      break;
    }

    v20 = v16 >> 62;
    v21 = HIDWORD(v15);
    v22 = v19 >> 62;
    if (v19 >> 60 == 14)
    {
      if (v15)
      {
        v23 = 0;
      }

      else
      {
        v23 = v16 == 0xC000000000000000;
      }

      v27 = 0;
      v24 = v23 && v19 >> 62 == 3;
      if (v24 && !v18 && v19 == 0xC000000000000000)
      {
        sub_26814F5B8(0, 0xC000000000000000);
        sub_26814F5B8(0, 0xC000000000000000);
        sub_26814F5CC(0, 0xC000000000000000);
        v25 = 0;
        v26 = 0xC000000000000000;
LABEL_48:
        sub_26814F5CC(v25, v26);
        sub_26814F0D4();
        sub_26814F0D4();
        goto LABEL_49;
      }
    }

    else
    {
      v27 = 0;
      switch(v20)
      {
        case 0uLL:
          v27 = BYTE6(v16);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_109;
          }

          v27 = HIDWORD(v15) - v15;
          break;
        case 2uLL:
          v29 = *(v15 + 16);
          v28 = *(v15 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (!v30)
          {
            break;
          }

          goto LABEL_108;
        case 3uLL:
          break;
        default:
          goto LABEL_126;
      }
    }

    switch(v22)
    {
      case 1uLL:
        LODWORD(v31) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
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
LABEL_121:
          __break(1u);
        }

        v31 = v31;
LABEL_37:
        if (v27 != v31)
        {
LABEL_102:
          sub_26814F5B8(v15, v16);
          sub_26814F5B8(v18, v19);
          sub_26814F5CC(v18, v19);
          v69 = v15;
          v70 = v16;
          goto LABEL_103;
        }

        if (v27 < 1)
        {
LABEL_46:
          sub_26814F5B8(v15, v16);
          sub_26814F5B8(v18, v19);
          sub_26814F5CC(v18, v19);
          goto LABEL_47;
        }

        v76 = v15;
        v34 = v18 >> 32;
        switch(v20)
        {
          case 1:
            v45 = v76;
            v74 = v76 >> 32;
            if (v45 >> 32 < v45)
            {
              goto LABEL_110;
            }

            v73 = v76;
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v45, v16);
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v18, v19);
            v46 = sub_2683CAF58();
            if (v46)
            {
              v47 = v46;
              v48 = sub_2683CAF78();
              if (__OFSUB__(v73, v48))
              {
                goto LABEL_113;
              }

              v72 = (v73 - v48 + v47);
            }

            else
            {
              v72 = 0;
            }

LABEL_70:
            sub_2683CAF68();
            v50 = v75;
            sub_26814DF4C(__s1, v72, v18, v19);
            sub_26814F5CC(v18, v19);
            sub_26814F5CC(v18, v19);
            sub_268143054(v18, v19);
            v75 = v50;
            if (v50)
            {
              goto LABEL_125;
            }

            v51 = __s1[0];
            sub_268143054(v18, v19);
            goto LABEL_98;
          case 2:
            v37 = v76;
            v38 = *(v76 + 16);
            v73 = *(v76 + 24);
            v74 = v38;
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v37, v16);
            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v18, v19);
            v39 = sub_2683CAF58();
            if (v39)
            {
              v40 = v39;
              v41 = sub_2683CAF78();
              v42 = v74;
              if (__OFSUB__(v74, v41))
              {
                goto LABEL_112;
              }

              v72 = (v74 - v41 + v40);
            }

            else
            {
              v72 = 0;
              v42 = v74;
            }

            if (!__OFSUB__(v73, v42))
            {
              goto LABEL_70;
            }

            goto LABEL_111;
          case 3:
            memset(__s1, 0, 14);
            if (v22 == 2)
            {
              v52 = *(v18 + 16);
              v73 = *(v18 + 24);
              v74 = v52;
              sub_26814F5B8(v18, v19);
              sub_26814F5B8(v76, v16);
              sub_26814F5B8(v18, v19);
              v53 = sub_2683CAF58();
              if (v53)
              {
                v54 = v53;
                v55 = sub_2683CAF78();
                v56 = v74;
                if (__OFSUB__(v74, v55))
                {
                  goto LABEL_119;
                }

                v72 = (v74 - v55 + v54);
              }

              else
              {
                v72 = 0;
                v56 = v74;
              }

              v63 = v73 - v56;
              if (__OFSUB__(v73, v56))
              {
                goto LABEL_116;
              }

              v64 = sub_2683CAF68();
              v65 = v72;
              if (!v72)
              {
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
                JUMPOUT(0);
              }

              goto LABEL_85;
            }

            if (v22 != 1)
            {
LABEL_64:
              __s2 = v18;
              v80 = v19;
              v81 = BYTE2(v19);
              v82 = BYTE3(v19);
              v83 = BYTE4(v19);
              v84 = BYTE5(v19);
              sub_26814F5B8(v76, v16);
              sub_26814F5B8(v18, v19);
              v49 = memcmp(__s1, &__s2, BYTE6(v19));
              sub_26814F5CC(v18, v19);
              goto LABEL_97;
            }

            v74 = v18;
            if (v34 < v18)
            {
              goto LABEL_115;
            }

            sub_26814F5B8(v18, v19);
            sub_26814F5B8(v76, v16);
            sub_26814F5B8(v18, v19);
            v43 = sub_2683CAF58();
            if (v43)
            {
              v73 = v43;
              v44 = sub_2683CAF78();
              if (__OFSUB__(v74, v44))
              {
                goto LABEL_120;
              }

              v73 += v74 - v44;
            }

            else
            {
              v73 = 0;
            }

            v67 = sub_2683CAF68();
            v65 = v73;
            if (!v73)
            {
              goto LABEL_124;
            }

            goto LABEL_93;
          default:
            LODWORD(__s1[0]) = v76;
            BYTE4(__s1[0]) = v21;
            *(__s1 + 5) = *(&v76 + 5);
            HIBYTE(__s1[0]) = HIBYTE(v76);
            LOWORD(__s1[1]) = v16;
            BYTE2(__s1[1]) = BYTE2(v16);
            BYTE3(__s1[1]) = BYTE3(v16);
            BYTE4(__s1[1]) = BYTE4(v16);
            BYTE5(__s1[1]) = BYTE5(v16);
            if (!v22)
            {
              goto LABEL_64;
            }

            if (v22 == 1)
            {
              v74 = v18;
              if (v34 < v18)
              {
                goto LABEL_114;
              }

              sub_26814F5B8(v18, v19);
              sub_26814F5B8(v76, v16);
              sub_26814F5B8(v18, v19);
              v35 = sub_2683CAF58();
              if (v35)
              {
                v73 = v35;
                v36 = sub_2683CAF78();
                if (__OFSUB__(v74, v36))
                {
                  goto LABEL_121;
                }

                v73 += v74 - v36;
              }

              else
              {
                v73 = 0;
              }

              v67 = sub_2683CAF68();
              v65 = v73;
              if (!v73)
              {
                goto LABEL_123;
              }

LABEL_93:
              if (v67 >= v34 - v74)
              {
                v66 = v34 - v74;
              }

              else
              {
                v66 = v67;
              }
            }

            else
            {
              v57 = *(v18 + 16);
              v73 = *(v18 + 24);
              v74 = v57;
              sub_26814F5B8(v18, v19);
              sub_26814F5B8(v76, v16);
              sub_26814F5B8(v18, v19);
              v58 = sub_2683CAF58();
              if (v58)
              {
                v59 = v58;
                v60 = sub_2683CAF78();
                v61 = v74;
                if (__OFSUB__(v74, v60))
                {
                  goto LABEL_118;
                }

                v62 = v74 - v60 + v59;
              }

              else
              {
                v62 = 0;
                v61 = v74;
              }

              v74 = v62;
              v63 = v73 - v61;
              if (__OFSUB__(v73, v61))
              {
                goto LABEL_117;
              }

              v64 = sub_2683CAF68();
              v65 = v74;
              if (!v74)
              {
                goto LABEL_122;
              }

LABEL_85:
              if (v64 >= v63)
              {
                v66 = v63;
              }

              else
              {
                v66 = v64;
              }
            }

            v49 = memcmp(__s1, v65, v66);
            sub_26814F5CC(v18, v19);
            sub_268143054(v18, v19);
LABEL_97:
            v51 = v49 == 0;
LABEL_98:
            sub_26814F5CC(v76, v16);
            sub_26814F0D4();
            sub_26814F0D4();
            if ((v51 & 1) == 0)
            {
              return 0;
            }

            break;
        }

        break;
      case 2uLL:
        v33 = *(v18 + 16);
        v32 = *(v18 + 24);
        v30 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (!v30)
        {
          goto LABEL_37;
        }

        goto LABEL_107;
      case 3uLL:
        if (v27)
        {
          goto LABEL_102;
        }

        goto LABEL_46;
      default:
        v31 = BYTE6(v19);
        goto LABEL_37;
    }

LABEL_49:
    v13 += v77;
    v12 += v77;
    if (!--v10)
    {
      return 1;
    }
  }

  sub_26814F5B8(v15, v16);
  sub_26814F5B8(v18, v19);
  sub_26814F5CC(v15, v16);
  v69 = v18;
  v70 = v19;
LABEL_103:
  sub_26814F5CC(v69, v70);
LABEL_104:
  sub_26814F0D4();
  sub_26814F0D4();
  return 0;
}

void sub_26814B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_130();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for Snippet.Reminder(0) - 8;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v31 = &a9 - v30;
  v32 = *(v24 + 16);
  if (v32 == *(v22 + 16) && v32 && v24 != v22)
  {
    v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v34 = v24 + v33;
    v35 = v22 + v33;
    v36 = *(v29 + 72);
    do
    {
      sub_26814F07C(v34, v31);
      sub_26814F07C(v35, v28);
      OUTLINED_FUNCTION_41_0();
      static Snippet.Reminder.== infix(_:_:)();
      OUTLINED_FUNCTION_38_1();
      sub_26814F0D4();
      sub_26814F0D4();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v35 += v36;
      v34 += v36;
      --v32;
    }

    while (v32);
  }

  OUTLINED_FUNCTION_131();
}

void sub_26814B8FC()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_24_4();
  v7 = type metadata accessor for Snippet.Reminder(v6);
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v72 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_3();
  v71 = v10 - v11;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB00, &qword_2683D4180);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_1();
  v68 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v21 = MEMORY[0x28223BE20](v68);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v26 = &v57 - v25;
  v27 = *(v0 + 16);
  if (v27 == *(v5 + 16) && v27 && v0 != v5)
  {
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v63 = v19;
    v64 = v5 + v28;
    v29 = 0;
    v65 = *(v24 + 72);
    v66 = v0 + v28;
    v69 = v27;
    v70 = &v57 - v25;
    while (1)
    {
      v30 = v65 * v29;
      OUTLINED_FUNCTION_35_1();
      sub_26814F07C(v31 + v30, v26);
      if (v29 == v69)
      {
        break;
      }

      sub_26814F07C(v64 + v30, v23);
      v32 = *(v19 + 48);
      sub_26812DA38(v26, v3, &qword_28024DAF8, &qword_2683E3440);
      sub_26812DA38(v23, v3 + v32, &qword_28024DAF8, &qword_2683E3440);
      OUTLINED_FUNCTION_72(v3, 1, v15);
      v67 = v29;
      if (v36)
      {
        OUTLINED_FUNCTION_72(v3 + v32, 1, v15);
        if (!v36)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_74();
        sub_26812D9E0(v33, v34, v35);
      }

      else
      {
        sub_26812DA38(v3, v2, &qword_28024DAF8, &qword_2683E3440);
        OUTLINED_FUNCTION_72(v3 + v32, 1, v15);
        if (v36)
        {
          OUTLINED_FUNCTION_33_2();
          sub_26814F0D4();
LABEL_33:
          sub_26812D9E0(v3, &qword_28024DB00, &qword_2683D4180);
LABEL_34:
          OUTLINED_FUNCTION_12_3();
          sub_26814F0D4();
          sub_26814F0D4();
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_34_2();
        sub_26814F6E8(v3 + v32, v1);
        v37 = OUTLINED_FUNCTION_69();
        v39 = static Snippet.SectionHeading.== infix(_:_:)(v37, v38);
        sub_26814F0D4();
        sub_26814F0D4();
        OUTLINED_FUNCTION_74();
        sub_26812D9E0(v40, v41, v42);
        if ((v39 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v43 = *(v68 + 20);
      v44 = *&v70[v43];
      v45 = v70[v43 + 8];
      v46 = &v23[v43];
      v47 = *v46;
      v48 = v46[8];
      if (v45)
      {
        if ((v48 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_26814B8FC();
        v50 = v49;

        OUTLINED_FUNCTION_12_3();
        sub_26814F0D4();
        v26 = v70;
        sub_26814F0D4();
        if ((v50 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v48)
        {
          goto LABEL_34;
        }

        v51 = *(v44 + 16);
        if (v51 != *(v47 + 16))
        {
          goto LABEL_34;
        }

        if (v51 && v44 != v47)
        {
          v61 = v15;
          v62 = v23;
          v58 = v3;
          v59 = v2;
          v60 = v1;
          v52 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v53 = v44 + v52;
          v54 = v47 + v52;

          v55 = 0;
          while (v55 < *(v44 + 16))
          {
            v56 = *(v72 + 72) * v55;
            OUTLINED_FUNCTION_5_4();
            sub_26814F07C(v53 + v56, v14);
            if (v55 >= *(v47 + 16))
            {
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_5_4();
            sub_26814F07C(v54 + v56, v71);
            static Snippet.Reminder.== infix(_:_:)();
            OUTLINED_FUNCTION_38_1();
            sub_26814F0D4();
            sub_26814F0D4();
            if ((v56 & 1) == 0)
            {

              goto LABEL_34;
            }

            if (v51 == ++v55)
            {

              v1 = v60;
              v15 = v61;
              v3 = v58;
              v2 = v59;
              v23 = v62;
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

LABEL_27:
        OUTLINED_FUNCTION_12_3();
        sub_26814F0D4();
        v26 = v70;
        sub_26814F0D4();
      }

      v29 = v67 + 1;
      v19 = v63;
      if (v67 + 1 == v69)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_26814BEB4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2683D0598() & 1) == 0)
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

uint64_t sub_26814BF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = a2 + 32; ; i += 104)
    {
      memcpy(__dst, v3, 0x61uLL);
      memcpy(v15, v3, 0x61uLL);
      OUTLINED_FUNCTION_121();
      memcpy(v5, v6, v7);
      OUTLINED_FUNCTION_121();
      memcpy(v8, v9, v10);
      sub_26814FB60(__dst, v13);
      sub_26814FB60(v17, v13);
      v11 = static Snippet.ReminderList.== infix(_:_:)(v15, __src);
      memcpy(v18, __src, 0x61uLL);
      sub_26814F740(v18);
      memcpy(v19, v15, 0x61uLL);
      sub_26814F740(v19);
      if (!v11)
      {
        break;
      }

      v3 += 104;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_26814C048(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_130();
  v4 = *(v2 + 16);
  if (v4 == *(v3 + 16) && v4 && v2 != v3)
  {
    v5 = (v2 + 56);
    v6 = (v3 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v5 - 3) == *(v6 - 3) && *(v5 - 2) == *(v6 - 2);
      if (!v11 && (sub_2683D0598() & 1) == 0)
      {
        break;
      }

      if (v7 != v9 || v8 != v10)
      {
        OUTLINED_FUNCTION_9_0();
        if ((sub_2683D0598() & 1) == 0)
        {
          break;
        }
      }

      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_26814C108(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1953720684 && a2 == 0xE400000000000000;
          if (v9 || (sub_2683D0598() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574;
            if (v10 || (sub_2683D0598() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C706D6F437369 && a2 == 0xED0000656C626174;
              if (v11 || (sub_2683D0598() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656767616C467369 && a2 == 0xE900000000000064;
                if (v12 || (sub_2683D0598() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF72656767697254;
                  if (v13 || (sub_2683D0598() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C61726F706D6574 && a2 == 0xEF72656767697254;
                    if (v14 || (sub_2683D0598() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002683FD320 == a2;
                      if (v15 || (sub_2683D0598() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6465686361747461 && a2 == 0xED0000736B6E694CLL;
                        if (v16 || (sub_2683D0598() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6B6E694C707061 && a2 == 0xE700000000000000;
                          if (v17 || (sub_2683D0598() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x736B736174627573 && a2 == 0xE800000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2683D0598();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_26814C558(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_79(a1);
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t sub_26814C598(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      v3 = 0x746974627573;
      goto LABEL_13;
    case 4:
      result = 1953720684;
      break;
    case 5:
      result = 0x656C706D6F437369;
      break;
    case 6:
      v3 = 0x706D6F437369;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 7:
      result = 0x656767616C467369;
      break;
    case 8:
      result = 0x6E6F697461636F6CLL;
      break;
    case 9:
      result = 0x6C61726F706D6574;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6465686361747461;
      break;
    case 12:
      result = 0x6B6E694C707061;
      break;
    case 13:
      result = 0x736B736174627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26814C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26814C108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26814C754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26814C550();
  *a1 = result;
  return result;
}

uint64_t sub_26814C77C(uint64_t a1)
{
  v2 = sub_26814F794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26814C7B8(uint64_t a1)
{
  v2 = sub_26814F794();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Reminder.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  v26 = v24;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D800, &qword_2683D2D98);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_57_0(v28, v28[3]);
  sub_26814F794();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_108();
  sub_2683D0718();
  v47[0] = 0;
  sub_2683CB598();
  OUTLINED_FUNCTION_9_4();
  sub_26814EEB8(v30);
  OUTLINED_FUNCTION_15_5();
  sub_2683D0548();
  if (!v25)
  {
    v31 = type metadata accessor for Snippet.Reminder(0);
    OUTLINED_FUNCTION_120(v31[5]);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_25_3();
    sub_2683D04D8();
    OUTLINED_FUNCTION_120(v31[6]);
    v47[0] = 2;
    OUTLINED_FUNCTION_25_3();
    sub_2683D0518();
    OUTLINED_FUNCTION_120(v31[7]);
    OUTLINED_FUNCTION_25_3();
    sub_2683D04D8();
    v32 = v31[8];
    memcpy(v47, (v26 + v32), 0x61uLL);
    memcpy(v46, (v26 + v32), sizeof(v46));
    sub_26812DA38(v47, v45, &qword_28024D5C0, &unk_2683D2C80);
    sub_26814F7E8();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0508();
    memcpy(v45, v46, 0x61uLL);
    sub_26812D9E0(v45, &qword_28024D5C0, &unk_2683D2C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_1_6();
    sub_268145D30(v33);
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0548();
    type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    OUTLINED_FUNCTION_40_1();
    sub_26814EEB8(v34);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0508();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    OUTLINED_FUNCTION_1_6();
    sub_26814FD3C(v35);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
    v41 = OUTLINED_FUNCTION_120(v31[14]);
    v42 = v37;
    v43 = *(v36 + 16);
    v44 = *(v36 + 24);
    sub_2681441DC(v41, v37, v43, v44);
    sub_26814F9A4();
    OUTLINED_FUNCTION_25_3();
    sub_2683D0508();
    sub_268144260(v41, v42, v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814F9F8();
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
    type metadata accessor for Snippet.Reminder.AppLink(0);
    OUTLINED_FUNCTION_39_1();
    sub_26814EEB8(v38);
    OUTLINED_FUNCTION_15_5();
    sub_2683D0508();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814FAAC();
    OUTLINED_FUNCTION_15_5();
    sub_2683D0548();
  }

  v39 = OUTLINED_FUNCTION_89();
  v40(v39);
  OUTLINED_FUNCTION_62();
}

void Snippet.Reminder.hash(into:)()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0;
  v4 = v3;
  v25 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v24 = v11;
  v26 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48_1();
  sub_2683CB598();
  OUTLINED_FUNCTION_9_4();
  sub_26814EEB8(v18);
  sub_2683CFA08();
  v19 = type metadata accessor for Snippet.Reminder(0);
  if (*(v0 + v19[5] + 8))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  sub_2683CFB48();
  if (*(v0 + v19[7] + 8))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  v20 = (v0 + v19[8]);
  v34 = *v20;
  v21 = *(v20 + 3);
  v35 = *(v20 + 2);
  memcpy(v33, v20 + 2, sizeof(v33));
  if (v21)
  {
    v27[0] = *v20;
    *&v27[1] = *(v20 + 2);
    memcpy(&v27[2], v20 + 2, 0x41uLL);
    *(&v27[1] + 1) = v21;
    OUTLINED_FUNCTION_104();
    v28 = v34;
    v29 = v35;
    v30 = v21;
    memcpy(v31, v33, sizeof(v31));
    sub_26814FB60(&v28, v32);
    Snippet.ReminderList.hash(into:)(v4);
    memcpy(v32, v27, 0x61uLL);
    sub_26814F740(v32);
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  sub_268145678();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_75();
  sub_26812DA38(v2 + v19[12], v1, &qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_72(v1, 1, v26);
  if (v22)
  {
    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    sub_26814F6E8(v1, v15);
    sub_2683D06B8();
    sub_2683CFB48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_10_3();
    sub_26814FBBC(v23);
    sub_2683CFA08();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_13_6();
    sub_26814F0D4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_26814FBBC(&unk_28024D898);
  sub_2683CFA08();
  if (*(v2 + v19[14] + 8))
  {
    OUTLINED_FUNCTION_104();
    sub_2683CFB48();
    OUTLINED_FUNCTION_114();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_100();
  }

  sub_26814E238(v4, *(v2 + v19[15]));
  sub_26812DA38(v2 + v19[16], v24, &qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_72(v24, 1, v25);
  if (v22)
  {
    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    sub_26814F6E8(v24, v8);
    OUTLINED_FUNCTION_104();
    Snippet.Reminder.AppLink.hash(into:)(v4);
    OUTLINED_FUNCTION_11_6();
    sub_26814F0D4();
  }

  sub_26814E1A8();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26814D238(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_79(a1);
  a1(v3);
  return sub_2683D06D8();
}

void Snippet.Reminder.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v145 = v23;
  v151 = v24;
  v127 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  OUTLINED_FUNCTION_23(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_0();
  v128 = v28;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  OUTLINED_FUNCTION_0_3();
  v140 = v29;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  v129 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  OUTLINED_FUNCTION_23(v32);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_0();
  v131 = v34;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_3();
  v146 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19_3();
  *&v132 = v37 - v38;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v39);
  *&v133 = v126 - v40;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v41);
  v134 = v126 - v42;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v148 = v44;
  v149 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_3();
  v137 = v46 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D8B0, &qword_2683D2DB0);
  OUTLINED_FUNCTION_0_3();
  v135 = v48;
  v136 = v47;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_0();
  v150 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19_3();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = v126 - v56;
  v58 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_3();
  v62 = (v61 - v60);
  sub_2683CB588();
  v63 = &v62[v58[8]];
  v63[96] = 0;
  *(v63 + 4) = 0u;
  *(v63 + 5) = 0u;
  *(v63 + 2) = 0u;
  *(v63 + 3) = 0u;
  *v63 = 0u;
  *(v63 + 1) = 0u;
  v147 = v63;
  OUTLINED_FUNCTION_117();
  v144 = v64;
  sub_2683CB838();
  v65 = v58[12];
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  v141 = v65;
  OUTLINED_FUNCTION_4_0();
  v130 = v66;
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  v70 = v58[13];
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  sub_26812DA38(v57, v54, &qword_28024D5D0, &unk_2683D2CA0);
  v139 = v70;
  sub_2683CB838();
  OUTLINED_FUNCTION_74();
  sub_26812D9E0(v75, v76, v77);
  v78 = &v62[v58[14]];
  *v78 = 0u;
  *(v78 + 1) = 0u;
  v152 = v58;
  v79 = v58[16];
  v80 = type metadata accessor for Snippet.Reminder.AppLink(0);
  v138 = v79;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
  v84 = v151[4];
  OUTLINED_FUNCTION_57_0(v151, v151[3]);
  sub_26814F794();
  v85 = v145;
  sub_2683D06F8();
  if (v85)
  {
    v145 = v85;
    OUTLINED_FUNCTION_23_4();
    v86 = v142;
    __swift_destroy_boxed_opaque_existential_0(v151);
    (*(v148 + 8))(v62, v149);

    memcpy(v156, v147, 0x61uLL);
    sub_26812D9E0(v156, &qword_28024D5C0, &unk_2683D2C80);
    if (v80)
    {
      v92 = *(v146 + 8);
      v92(&v62[v152[9]], v86);
    }

    else
    {
      v92 = *(v146 + 8);
    }

    v92(&v62[v144], v86);
    if (v84)
    {
      v92(&v62[v152[11]], v86);
    }

    sub_26812D9E0(&v62[v141], &qword_28024D5C8, &unk_2683D2C90);
    (*(v140 + 8))(&v62[v139], v143);
    sub_268144260(*v78, v78[1], v78[2], v78[3]);
    if (v79)
    {
    }

    sub_26812D9E0(&v62[v138], &qword_28024D5D8, &qword_2683D4260);
  }

  else
  {
    v87 = v134;
    v126[2] = v80;
    v156[0] = 0;
    OUTLINED_FUNCTION_9_4();
    sub_26814EEB8(v88);
    v89 = v149;
    sub_2683D04A8();
    v90 = v142;
    (*(v148 + 40))(v62, v137, v89);
    OUTLINED_FUNCTION_117();
    v91 = sub_2683D0438();
    v93 = v152;
    v94 = &v62[v152[5]];
    *v94 = v91;
    v94[1] = v95;
    v126[1] = v95;
    v156[0] = 2;
    v96 = sub_2683D0478();
    v97 = &v62[v93[6]];
    *v97 = v96;
    v97[1] = v98;
    v156[0] = 3;
    v99 = sub_2683D0438();
    v100 = &v62[v93[7]];
    *v100 = v99;
    v100[1] = v101;
    v137 = v101;
    sub_26814FCE8();
    sub_2683D0468();
    memcpy(v154, v156, sizeof(v154));
    v102 = v147;
    OUTLINED_FUNCTION_121();
    memcpy(v103, v104, v105);
    sub_26812D9E0(&v155, &qword_28024D5C0, &unk_2683D2C80);
    memcpy(v102, v154, 0x61uLL);
    LOBYTE(v153[0]) = 5;
    OUTLINED_FUNCTION_2_4();
    v145 = sub_268145D30(v106);
    sub_2683D04A8();
    v107 = v93[9];
    v108 = v146 + 32;
    v134 = *(v146 + 32);
    v109 = (v134)(&v62[v107], v87, v90);
    LOBYTE(v153[0]) = 6;
    OUTLINED_FUNCTION_73(v109, v153);
    v126[0] = v108;
    OUTLINED_FUNCTION_74();
    v111 = v110();
    LOBYTE(v153[0]) = 7;
    OUTLINED_FUNCTION_73(v111, v153);
    v145 = 0;
    OUTLINED_FUNCTION_74();
    (v134)();
    LOBYTE(v153[0]) = 8;
    OUTLINED_FUNCTION_40_1();
    sub_26814EEB8(v112);
    v113 = v131;
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v145 = 0;
    v134 = v62;
    sub_26814441C(v113, &v62[v141], &qword_28024D5C8, &unk_2683D2C90);
    LOBYTE(v153[0]) = 9;
    OUTLINED_FUNCTION_2_4();
    sub_26814FD3C(v114);
    OUTLINED_FUNCTION_54_0();
    sub_2683D04A8();
    v145 = 0;
    (*(v140 + 40))(&v134[v139], v129, v143);
    sub_26814FDAC();
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v145 = 0;
    v115 = *v78;
    v116 = v78[1];
    v117 = v78[2];
    v118 = v78[3];
    v132 = v153[1];
    v133 = v153[0];
    sub_268144260(v115, v116, v117, v118);
    v119 = v132;
    *v78 = v133;
    *(v78 + 1) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D858, &unk_2683D2DA0);
    v120 = sub_26814FE00();
    OUTLINED_FUNCTION_71(v120);
    v145 = 0;
    *&v134[v152[15]] = *&v153[0];
    LOBYTE(v153[0]) = 12;
    OUTLINED_FUNCTION_39_1();
    sub_26814EEB8(v121);
    OUTLINED_FUNCTION_54_0();
    sub_2683D0468();
    v145 = 0;
    sub_26814441C(v128, &v134[v138], &qword_28024D5D8, &qword_2683D4260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    v122 = sub_26814FEB4();
    OUTLINED_FUNCTION_71(v122);
    v145 = 0;
    v123 = OUTLINED_FUNCTION_20_4();
    v124(v123);
    v125 = v134;
    *&v134[v152[17]] = *&v153[0];
    OUTLINED_FUNCTION_5_4();
    sub_26814F07C(v125, v127);
    __swift_destroy_boxed_opaque_existential_0(v151);
    OUTLINED_FUNCTION_36_1();
    sub_26814F0D4();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26814DF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2683D0698();
  a4(v6);
  return sub_2683D06D8();
}

void sub_26814DF4C(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
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
      v8 = sub_26814E0B8(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
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

char *sub_26814E0B8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2683CAF58();
  v8 = result;
  if (result)
  {
    result = sub_2683CAF78();
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

  result = sub_2683CAF68();
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

void sub_26814E170(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_65_0();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_26814E1A8()
{
  OUTLINED_FUNCTION_102();
  if (v0)
  {
    v2 = type metadata accessor for Snippet.Reminder(0);
    OUTLINED_FUNCTION_3_1(v2);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v5 + 72);
    do
    {
      Snippet.Reminder.hash(into:)();
      v4 += v6;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_26814E238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x26D617190](v7);
  if (v7)
  {
    v9 = &v6[*(v3 + 20)];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_26814F07C(v10, v6);
      sub_2683CB438();
      sub_26814EEB8(&unk_28024D760);
      sub_2683CFA08();
      if (*(v9 + 1) >> 60 == 15)
      {
        sub_2683D06B8();
      }

      else
      {
        sub_2683D06B8();
        sub_2683CB478();
      }

      result = sub_26814F0D4();
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_26814E408()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_24_4();
  v5 = type metadata accessor for Snippet.Reminder(v4);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v48 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_0();
  v47 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v46 = v11 - v10;
  v12 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  v49 = (v14 - v15);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  v54 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_83();
  v20 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  OUTLINED_FUNCTION_0_3();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  v26 = v25 - v24;
  v27 = *(v3 + 16);
  MEMORY[0x26D617190](v27);
  v53 = v27;
  if (v27)
  {
    v28 = 0;
    v52 = v26 + *(v20 + 20);
    v51 = v3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v50 = *(v22 + 72);
    v44 = (v45 + 4);
    ++v45;
    do
    {
      OUTLINED_FUNCTION_35_1();
      sub_26814F07C(v29, v26);
      sub_26812DA38(v26, v1, &qword_28024DAF8, &qword_2683E3440);
      OUTLINED_FUNCTION_72(v1, 1, v12);
      if (v30)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_34_2();
        v31 = v54;
        sub_26814F6E8(v1, v54);
        OUTLINED_FUNCTION_96();
        sub_26814F07C(v31, v49);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            memcpy(v56, v49, 0x61uLL);
            MEMORY[0x26D617190](3);
            memcpy(v55, v56, sizeof(v55));
            Snippet.ReminderList.hash(into:)(v0);
            sub_26814F740(v56);
            break;
          case 2:
            v36 = 4;
            goto LABEL_14;
          case 3:
            v36 = 10;
LABEL_14:
            MEMORY[0x26D617190](v36);
            sub_2683CFB48();

            break;
          case 4:
            v35 = 0;
            goto LABEL_22;
          case 5:
            v35 = 2;
            goto LABEL_22;
          case 6:
            v35 = 5;
            goto LABEL_22;
          case 7:
            v35 = 6;
            goto LABEL_22;
          case 8:
            v35 = 7;
            goto LABEL_22;
          case 9:
            v35 = 8;
            goto LABEL_22;
          case 10:
            v35 = 9;
            goto LABEL_22;
          case 11:
            v35 = 11;
            goto LABEL_22;
          case 12:
            v35 = 12;
            goto LABEL_22;
          case 13:
            v35 = 13;
LABEL_22:
            MEMORY[0x26D617190](v35);
            break;
          default:
            v33 = v46;
            v34 = v47;
            (*v44)(v46, v49, v47);
            MEMORY[0x26D617190](1);
            OUTLINED_FUNCTION_14_5();
            sub_26814EEB8(&unk_28024D6D8);
            sub_2683CFA08();
            (*v45)(v33, v34);
            break;
        }

        OUTLINED_FUNCTION_33_2();
        sub_26814F0D4();
      }

      v37 = v12;
      v38 = *v52;
      if (*(v52 + 8))
      {
        MEMORY[0x26D617190](1);
        OUTLINED_FUNCTION_55_0();
        sub_26814E408();
      }

      else
      {
        MEMORY[0x26D617190](0);
        MEMORY[0x26D617190](*(v38 + 16));
        v39 = *(v38 + 16);
        if (v39)
        {
          v40 = v38 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
          v41 = *(v48 + 72);
          do
          {
            OUTLINED_FUNCTION_5_4();
            v42 = OUTLINED_FUNCTION_113();
            sub_26814F07C(v42, v43);
            Snippet.Reminder.hash(into:)();
            OUTLINED_FUNCTION_36_1();
            sub_26814F0D4();
            v40 += v41;
            --v39;
          }

          while (v39);
        }
      }

      ++v28;
      sub_26814F0D4();
      v12 = v37;
    }

    while (v28 != v53);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_26814E9C0()
{
  OUTLINED_FUNCTION_126();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_61_0();
      sub_2683CFB48();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_26814EA24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_126();
  if (v2)
  {
    v4 = v3 + 56;
    do
    {

      OUTLINED_FUNCTION_61_0();
      sub_2683CFB48();
      sub_2683CFB48();

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_131();
}

void sub_26814EAAC()
{
  OUTLINED_FUNCTION_102();
  if (v0)
  {
    v2 = v1 + 64;
    do
    {
      v8 = v0;
      v3 = *(v2 + 8);
      v7 = *(v2 + 40);
      v4 = *(v2 + 64);
      if (*(v2 - 24))
      {
        OUTLINED_FUNCTION_96();

        OUTLINED_FUNCTION_125();
        sub_2683CFB48();
      }

      else
      {
        OUTLINED_FUNCTION_95();

        OUTLINED_FUNCTION_125();
      }

      sub_2683CFB48();
      if (v3)
      {
        OUTLINED_FUNCTION_96();
        sub_2683CFB48();
      }

      else
      {
        OUTLINED_FUNCTION_95();
      }

      if (v7 == 3)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_96();
        Snippet.Color.hash(into:)();
      }

      if (v4 == 255)
      {
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_96();
        MEMORY[0x26D617190]((v4 & 1) != 0);
        OUTLINED_FUNCTION_78();
        sub_2683CFB48();
      }

      v2 += 104;

      v5 = OUTLINED_FUNCTION_89();
      sub_268151B3C(v5, v6, v4);
      v0 = v8 - 1;
    }

    while (v8 != 1);
  }
}

uint64_t sub_26814EC64(uint64_t a1)
{
  if (!v1[3])
  {
    return OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_121();
  memcpy(v2, v3, v4);
  OUTLINED_FUNCTION_96();
  memcpy(__dst, v1, 0x61uLL);
  sub_26814FB60(__dst, v9);
  v5 = OUTLINED_FUNCTION_119();
  Snippet.ReminderList.hash(into:)(v5);
  memcpy(v9, __src, 0x61uLL);
  return sub_26814F740(v9);
}

void sub_26814ECF4(uint64_t a1)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_47_0();
  v3 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_28_2();
  v9 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_128(v9, v10);
  OUTLINED_FUNCTION_72(v2, 1, v3);
  if (v11)
  {
    sub_2683D06B8();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_113();
    v13(v12);
    sub_2683D06B8();
    OUTLINED_FUNCTION_14_5();
    sub_26814EEB8(v14);
    OUTLINED_FUNCTION_88();
    sub_2683CFA08();
    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_131();
}

unint64_t sub_26814EE64()
{
  result = qword_28024D6B0;
  if (!qword_28024D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6B0);
  }

  return result;
}

unint64_t sub_26814EEB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814EEFC()
{
  result = qword_28024D6D0;
  if (!qword_28024D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D698, &qword_2683D2D00);
    sub_26814EEB8(&unk_28024D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6D0);
  }

  return result;
}

unint64_t sub_26814EFB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D698, &qword_2683D2D00);
    sub_26814EEB8(&unk_28024D6C0);
    sub_26814EEB8(&unk_28024D6C8);
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26814F07C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0();
  v4(v3);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return a2;
}

uint64_t sub_26814F0D4()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v2(v1);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_26814F128()
{
  result = qword_28024D6F8;
  if (!qword_28024D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D6F8);
  }

  return result;
}

unint64_t sub_26814F17C()
{
  result = qword_28024D700;
  if (!qword_28024D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D700);
  }

  return result;
}

unint64_t sub_26814F1D0()
{
  result = qword_28024D710;
  if (!qword_28024D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D710);
  }

  return result;
}

unint64_t sub_26814F224()
{
  result = qword_28024D738;
  if (!qword_28024D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D738);
  }

  return result;
}

unint64_t sub_26814F278()
{
  result = qword_28024D740;
  if (!qword_28024D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D740);
  }

  return result;
}

unint64_t sub_26814F2CC()
{
  result = qword_28024D748;
  if (!qword_28024D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D748);
  }

  return result;
}

unint64_t sub_26814F320()
{
  result = qword_28024D750;
  if (!qword_28024D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D750);
  }

  return result;
}

unint64_t sub_26814F374()
{
  result = qword_28024D780;
  if (!qword_28024D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D780);
  }

  return result;
}

uint64_t sub_26814F3C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_26814F420()
{
  result = qword_28024D790;
  if (!qword_28024D790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D790);
  }

  return result;
}

unint64_t sub_26814F464()
{
  result = qword_28024D7A0;
  if (!qword_28024D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7A0);
  }

  return result;
}

unint64_t sub_26814F4B8()
{
  result = qword_28024D7A8;
  if (!qword_28024D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7A8);
  }

  return result;
}

unint64_t sub_26814F50C()
{
  result = qword_28024D7B8;
  if (!qword_28024D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7B8);
  }

  return result;
}

uint64_t sub_26814F580(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26814F5B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26814F3C8(result, a2);
  }

  return result;
}

uint64_t sub_26814F5CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268143054(result, a2);
  }

  return result;
}

unint64_t sub_26814F5E0()
{
  result = qword_28024D7C8;
  if (!qword_28024D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7C8);
  }

  return result;
}

unint64_t sub_26814F634()
{
  result = qword_28024D7F0;
  if (!qword_28024D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D7F0);
  }

  return result;
}

uint64_t sub_26814F6E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0();
  v4(v3);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return a2;
}

unint64_t sub_26814F794()
{
  result = qword_28024D808;
  if (!qword_28024D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D808);
  }

  return result;
}

unint64_t sub_26814F7E8()
{
  result = qword_28024D818;
  if (!qword_28024D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D818);
  }

  return result;
}

unint64_t sub_26814F83C()
{
  result = qword_28024D830;
  if (!qword_28024D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D830);
  }

  return result;
}

unint64_t sub_26814F8F0()
{
  result = qword_28024D840;
  if (!qword_28024D840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D840);
  }

  return result;
}

unint64_t sub_26814F9A4()
{
  result = qword_28024D850;
  if (!qword_28024D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D850);
  }

  return result;
}

unint64_t sub_26814F9F8()
{
  result = qword_28024D860;
  if (!qword_28024D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814EEB8(&unk_28024D868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D860);
  }

  return result;
}

unint64_t sub_26814FAAC()
{
  result = qword_28024D880;
  if (!qword_28024D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814EEB8(&unk_28024D888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D880);
  }

  return result;
}

unint64_t sub_26814FBBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814FC34()
{
  result = qword_28024D8A0;
  if (!qword_28024D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    sub_26814EEB8(&unk_28024D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8A0);
  }

  return result;
}

unint64_t sub_26814FCE8()
{
  result = qword_28024D8C0;
  if (!qword_28024D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8C0);
  }

  return result;
}

unint64_t sub_26814FD3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5A8, &unk_2683D2C40);
    sub_26814F83C();
    sub_26814F8F0();
    OUTLINED_FUNCTION_61_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26814FDAC()
{
  result = qword_28024D8D8;
  if (!qword_28024D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8D8);
  }

  return result;
}

unint64_t sub_26814FE00()
{
  result = qword_28024D8E0;
  if (!qword_28024D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D858, &unk_2683D2DA0);
    sub_26814EEB8(&unk_28024D8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8E0);
  }

  return result;
}

unint64_t sub_26814FEB4()
{
  result = qword_28024D8F8;
  if (!qword_28024D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26814EEB8(&unk_28024D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D8F8);
  }

  return result;
}

unint64_t sub_268150000()
{
  result = qword_28024D910;
  if (!qword_28024D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D910);
  }

  return result;
}

unint64_t sub_2681500A0()
{
  result = qword_28024D920;
  if (!qword_28024D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D920);
  }

  return result;
}

void sub_2681501F4(uint64_t a1)
{
  sub_2683CB598();
  if (v1 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D948, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_268150A0C(319, &qword_28024D950, &type metadata for Snippet.ReminderList, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
        if (v4 <= 0x3F)
        {
          sub_268150500(319, &qword_28024D960, type metadata accessor for Snippet.Reminder.LocationTrigger, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26815049C(319);
            if (v6 <= 0x3F)
            {
              sub_268150A0C(319, &qword_28024D970, &type metadata for Snippet.Reminder.MessagingTrigger, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_268150500(319, &qword_28024D978, type metadata accessor for Snippet.Reminder.URLAttachment, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_268150500(319, &qword_28024D980, type metadata accessor for Snippet.Reminder.AppLink, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_268150500(319, &qword_28024D988, type metadata accessor for Snippet.Reminder, MEMORY[0x277D83940]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26815049C(uint64_t a1)
{
  if (!qword_28024D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D5D0, &unk_2683D2CA0);
    v1 = sub_2683CB888();
    if (!v2)
    {
      atomic_store(v1, &qword_28024D968);
    }
  }
}

void sub_268150500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26815058C(uint64_t a1)
{
  sub_268150A0C(319, &qword_28024D9A0, &type metadata for Snippet.Reminder.SpatialEvent, MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2681506A0(uint64_t a1)
{
  sub_268150500(319, &qword_28024D9B8, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D958, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_268150778(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2681507B8(uint64_t result, int a2, int a3)
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

uint64_t sub_268150810(uint64_t a1)
{
  result = sub_2683CB438();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_268150894(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2681508E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_268150964(uint64_t a1)
{
  sub_2683CB438();
  if (v1 <= 0x3F)
  {
    sub_268150A0C(319, &qword_28024D9E0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268150A0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s14descr2878F8F29V8ReminderV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V8ReminderV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268150C10(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_945(a1);
}

_BYTE *sub_268150C5C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_268150D18(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14descr2878F8F29V8ReminderV15LocationTriggerV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268150EF4()
{
  result = qword_28024D9E8;
  if (!qword_28024D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9E8);
  }

  return result;
}

unint64_t sub_268150F4C()
{
  result = qword_28024D9F0;
  if (!qword_28024D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9F0);
  }

  return result;
}

unint64_t sub_268150FA4()
{
  result = qword_28024D9F8;
  if (!qword_28024D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D9F8);
  }

  return result;
}

unint64_t sub_268150FFC()
{
  result = qword_28024DA00;
  if (!qword_28024DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA00);
  }

  return result;
}

unint64_t sub_268151054()
{
  result = qword_28024DA08;
  if (!qword_28024DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA08);
  }

  return result;
}

unint64_t sub_2681510AC()
{
  result = qword_28024DA10;
  if (!qword_28024DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA10);
  }

  return result;
}

unint64_t sub_268151104()
{
  result = qword_28024DA18;
  if (!qword_28024DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA18);
  }

  return result;
}

unint64_t sub_26815115C()
{
  result = qword_28024DA20;
  if (!qword_28024DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA20);
  }

  return result;
}

unint64_t sub_2681511B4()
{
  result = qword_28024DA28;
  if (!qword_28024DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA28);
  }

  return result;
}

unint64_t sub_26815120C()
{
  result = qword_28024DA30;
  if (!qword_28024DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA30);
  }

  return result;
}

unint64_t sub_268151264()
{
  result = qword_28024DA38;
  if (!qword_28024DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA38);
  }

  return result;
}

unint64_t sub_2681512BC()
{
  result = qword_28024DA40;
  if (!qword_28024DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA40);
  }

  return result;
}

unint64_t sub_268151314()
{
  result = qword_28024DA48;
  if (!qword_28024DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA48);
  }

  return result;
}

unint64_t sub_26815136C()
{
  result = qword_28024DA50;
  if (!qword_28024DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA50);
  }

  return result;
}

unint64_t sub_2681513C4()
{
  result = qword_28024DA58;
  if (!qword_28024DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA58);
  }

  return result;
}

unint64_t sub_26815141C()
{
  result = qword_28024DA60;
  if (!qword_28024DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA60);
  }

  return result;
}

unint64_t sub_268151474()
{
  result = qword_28024DA68;
  if (!qword_28024DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA68);
  }

  return result;
}

unint64_t sub_2681514CC()
{
  result = qword_28024DA70;
  if (!qword_28024DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA70);
  }

  return result;
}

unint64_t sub_268151524()
{
  result = qword_28024DA78;
  if (!qword_28024DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA78);
  }

  return result;
}

unint64_t sub_26815157C()
{
  result = qword_28024DA80;
  if (!qword_28024DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA80);
  }

  return result;
}

unint64_t sub_2681515D4()
{
  result = qword_28024DA88;
  if (!qword_28024DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA88);
  }

  return result;
}

unint64_t sub_26815162C()
{
  result = qword_28024DA90;
  if (!qword_28024DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA90);
  }

  return result;
}

unint64_t sub_268151684()
{
  result = qword_28024DA98;
  if (!qword_28024DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DA98);
  }

  return result;
}

unint64_t sub_2681516DC()
{
  result = qword_28024DAA0;
  if (!qword_28024DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAA0);
  }

  return result;
}

unint64_t sub_268151734()
{
  result = qword_28024DAA8;
  if (!qword_28024DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAA8);
  }

  return result;
}

unint64_t sub_26815178C()
{
  result = qword_28024DAB0;
  if (!qword_28024DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAB0);
  }

  return result;
}

unint64_t sub_2681517E4()
{
  result = qword_28024DAB8;
  if (!qword_28024DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAB8);
  }

  return result;
}

unint64_t sub_26815183C()
{
  result = qword_28024DAC0;
  if (!qword_28024DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAC0);
  }

  return result;
}

unint64_t sub_268151894()
{
  result = qword_28024DAC8;
  if (!qword_28024DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAC8);
  }

  return result;
}

unint64_t sub_2681518EC()
{
  result = qword_28024DAD0;
  if (!qword_28024DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAD0);
  }

  return result;
}

unint64_t sub_268151944()
{
  result = qword_28024DAD8;
  if (!qword_28024DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAD8);
  }

  return result;
}

unint64_t sub_26815199C()
{
  result = qword_28024DAE0;
  if (!qword_28024DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAE0);
  }

  return result;
}

unint64_t sub_2681519F4()
{
  result = qword_28024DAE8;
  if (!qword_28024DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAE8);
  }

  return result;
}

unint64_t sub_268151A4C()
{
  result = qword_28024DAF0;
  if (!qword_28024DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DAF0);
  }

  return result;
}

uint64_t sub_268151AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_268151B1C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_268151B34(result, a2);
  }

  return result;
}

uint64_t sub_268151B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26814304C(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  sub_26814F5B8(v1, v0);
  sub_26814F5B8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return sub_2683CB848();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_2683CB868();
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = v5;

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2)
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_2683CFA08();
}

void *OUTLINED_FUNCTION_79(uint64_t a1, ...)
{

  return sub_2683D0698();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{

  return sub_26812DA38(a1, v1 + 200, v2, v3);
}

uint64_t OUTLINED_FUNCTION_99(uint64_t a1)
{

  return sub_26812DA38(a1, v1 + 200, v2, v3);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_2683D06B8();
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x26D617190);
}

uint64_t OUTLINED_FUNCTION_103()
{
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_2683D06B8();
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1)
{

  return sub_2683CB858();
}

uint64_t OUTLINED_FUNCTION_107@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

__n128 OUTLINED_FUNCTION_109()
{
  result = *v1;
  v0[32] = *v1;
  v0[33].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1)
{

  return sub_2683D01C8();
}

void *OUTLINED_FUNCTION_123()
{

  return memcpy((v0 + 544), (v1 + 32), 0x41uLL);
}

void OUTLINED_FUNCTION_124()
{

  sub_2681441DC(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_125()
{

  return sub_268151B1C(v1, v2, v0);
}

void OUTLINED_FUNCTION_126()
{

  JUMPOUT(0x26D617190);
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2)
{

  return sub_26812DA38(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2)
{

  sub_2681441DC(a1, a2, v2, v3);
}

uint64_t sub_268152518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2683CF278();
  if ((sub_2683CF268() & 1) == 0)
  {
    return 0;
  }

  v14 = a2 == a6 && a3 == a7;
  if (!v14 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  return sub_268152604(a4, a8);
}

uint64_t sub_268152604(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_2683D0698();

      sub_2683CFB48();
      v15 = sub_2683D06D8();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_2683D0598();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681527AC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = sub_2683CC288();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = OUTLINED_FUNCTION_28_3();
  sub_268390620(v14, v15, v16);
  v13 = v26;
  for (i = (a3 + 40); ; i += 2)
  {
    v18 = *i;
    v25[0] = *(i - 1);
    v25[1] = v18;

    a1(v25);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v26 = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_268390620(v19 > 1, v20 + 1, 1);
      v13 = v26;
    }

    *(v13 + 16) = v20 + 1;
    OUTLINED_FUNCTION_11_7();
    (*(v7 + 32))(v13 + v21 + *(v7 + 72) * v20, v11, v23);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152950(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = sub_2683CC168();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = OUTLINED_FUNCTION_28_3();
  sub_268390678(v14, v15, v16);
  v13 = v28;
  v17 = sub_2683CC288();
  OUTLINED_FUNCTION_3_1(v17);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v20 + 72);
  while (1)
  {
    a1(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = *(v28 + 16);
    v21 = *(v28 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_268390678(v21 > 1, v22 + 1, 1);
    }

    *(v28 + 16) = v22 + 1;
    OUTLINED_FUNCTION_11_7();
    (*(v7 + 32))(v28 + v23 + *(v7 + 72) * v22, v11, v26);
    v19 += v25;
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152B24(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258) - 8;
  MEMORY[0x28223BE20](v6);
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v16 = MEMORY[0x277D84F90];
  sub_2683907C8(0, v7, 0);
  v8 = v16;
  v9 = *(type metadata accessor for Snippet.Reminder(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  while (1)
  {
    a1(v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = *(v16 + 16);
    v11 = *(v16 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2683907C8(v11 > 1, v12 + 1, 1);
    }

    *(v16 + 16) = v12 + 1;
    sub_26815ECA4();
    v10 += v14;
    if (!--v7)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268152D24(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_268390828(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 104)
  {
    memcpy(__dst, i, 0x61uLL);
    memcpy(__src, i, 0x61uLL);
    sub_26814FB60(__dst, v14);
    a1(v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v13, __src, 0x61uLL);
    sub_26814F740(v13);
    memcpy(v14, v16, sizeof(v14));
    v18 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_268390828((v10 > 1), v11 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v11 + 1;
    memcpy((v6 + 112 * v11 + 32), v14, 0x70uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, 0x61uLL);
  sub_26814F740(v14);

  __break(1u);
  return result;
}

uint64_t sub_268152EA8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2683D0228();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268152FB0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2683D00A8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_2683D0228();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D616C90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_268153124(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2683ABE58();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D616C90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 parentReminderID];
    v13 = sub_2682E186C();
    v14 = v2[2];
    v15 = (v8 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v17 = v8;
    if (v2[3] < v16)
    {
      sub_2682C0F5C(v16, 1, v9, v10, v11, v12);
      v2 = v26;
      v18 = sub_2682E186C();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

      v13 = v18;
    }

    if (v17)
    {

      v20 = (v2[7] + 8 * v13);
      MEMORY[0x26D616770]();
      if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2683D2250;
      *(v21 + 32) = v6;
      v2[(v13 >> 6) + 8] |= 1 << v13;
      *(v2[6] + 8 * v13) = v7;
      *(v2[7] + 8 * v13) = v21;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void sub_268153360()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = type metadata accessor for Snippet.Reminder(0);
  v3 = OUTLINED_FUNCTION_3_1(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v8 = sub_2683CC818();
  sub_268185828();
  v10 = v9;

  v11 = sub_268229348();
  if (!v11)
  {

    (*(*(v7 - 8) + 8))(v1, v7);
LABEL_12:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v12 = v11;
  v19 = MEMORY[0x277D84F90];
  sub_268390728(0, v11 & ~(v11 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v18 = v1;
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26D616C90](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      sub_26834A288(v14, v6);
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = OUTLINED_FUNCTION_22_2(v15);
        sub_268390728(v17, v16 + 1, 1);
      }

      ++v13;
      *(v19 + 16) = v16 + 1;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
    }

    while (v12 != v13);
    (*(*(v7 - 8) + 8))(v18, v7);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_26815357C(void *a1, void *a2)
{
  v3 = v2;
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35[-v7];
  v9 = sub_2683CB598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    return 0;
  }

  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_26812D9E0(v8, &qword_28024DB50, &qword_2683D4250);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  v13 = objc_opt_self();
  v14 = sub_2683CB558();
  v15 = [v13 objectIDWithUUID_];

  (*(v10 + 8))(v12, v9);
  if (!v15)
  {
    return 0;
  }

  v16 = *v3;
  v36[0] = 0;
  v17 = [v16 fetchReminderWithObjectID:v15 error:v36];
  v18 = v36[0];
  if (!v17)
  {
    v19 = v18;
    v20 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C988);
    v22 = v20;

    v23 = sub_2683CF7C8();
    v24 = sub_2683CFE78();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315394;
      v36[0] = v20;
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v28 = sub_2683CFAD8();
      v30 = sub_2681610A0(v28, v29, v37);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v36[0] = a1;
      v36[1] = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
      v31 = sub_2683CFAD8();
      v33 = sub_2681610A0(v31, v32, v37);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_2680EB000, v23, v24, "Failed fetching reminder with error: %s. Id: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v26, -1, -1);
      MEMORY[0x26D617A40](v25, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v17;
}

void sub_2681539A8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v5 = type metadata accessor for Snippet.Reminder.URLAttachment(0);
  v85 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v87 = sub_2683CB438();
  v80 = *(v87 - 8);
  v8 = MEMORY[0x28223BE20](v87);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v77 - v13;
  v15 = type metadata accessor for Snippet.Reminder(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  if (!a2)
  {
    if (qword_28024C8F0 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  sub_26815E3F0(a1, &v77 - v22);
  v81 = a2;
  v24 = [v81 contactHandles];
  v84 = v7;
  v82 = v23;
  v78 = v5;
  if (v24 && (v25 = *__swift_project_boxed_opaque_existential_1(v79 + 1, *(v79 + 4)), v26 = [v24 phones], v27 = sub_2683CFCA8(), v26, v28 = objc_msgSend(v24, sel_emails), v29 = sub_2683CFCA8(), v28, sub_2683AF4A8(v27, v29, v25, &v88), v24, , , (v24 = v89) != 0))
  {
    v31 = v90;
    v30 = v91;
    v32 = v88;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
  }

  v33 = v82;
  v34 = &v82[v15[14]];
  sub_268144260(*v34, v34[1], v34[2], v34[3]);
  *v34 = v32;
  v34[1] = v24;
  v34[2] = v31;
  v34[3] = v30;
  v35 = v81;
  v36 = sub_26815E30C(v81, &selRef_notesAsString);
  v38 = v37;
  v39 = &v33[v15[7]];

  *v39 = v36;
  v39[1] = v38;
  v40 = [v35 userActivity];
  sub_268154BFC();
  sub_26815E4B0(v14, &v33[v15[16]]);
  v41 = [v35 attachmentContext];
  if (v41)
  {
    v42 = v41;
    v79 = v15;
    v43 = [v41 urlAttachments];

    sub_268129504(0, &qword_28024DB68, 0x277D448E8);
    v18 = sub_2683CFCA8();

    v88 = MEMORY[0x277D84FA0];
    v92 = MEMORY[0x277D84F90];
    v21 = sub_2683ABE58();
    v44 = 0;
    a1 = v18 & 0xC000000000000001;
    v45 = (v80 + 8);
    while (1)
    {
      if (v21 == v44)
      {

        v50 = v92;

        v51 = sub_268229348();
        if (v51)
        {
          v52 = v51;
          v88 = MEMORY[0x277D84F90];
          sub_268390770(0, v51 & ~(v51 >> 63), 0);
          if (v52 < 0)
          {
            __break(1u);
            return;
          }

          v53 = 0;
          v54 = v88;
          v87 = xmmword_2683D2C70;
          v55 = v78;
          v56 = v84;
          do
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v57 = MEMORY[0x26D616C90](v53, v50);
            }

            else
            {
              v57 = *(v50 + 8 * v53 + 32);
            }

            v58 = v57;
            v59 = [v57 url];
            sub_2683CB3E8();

            v60 = sub_26815E2B0(v58, &selRef_metadata);
            v62 = v61;

            v63 = &v56[*(v55 + 20)];
            *v63 = v87;
            sub_26814F5CC(0, 0xF000000000000000);
            *v63 = v60;
            *(v63 + 1) = v62;
            v88 = v54;
            v65 = *(v54 + 16);
            v64 = *(v54 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_268390770(v64 > 1, v65 + 1, 1);
              v54 = v88;
            }

            ++v53;
            *(v54 + 16) = v65 + 1;
            sub_26815E568();
          }

          while (v52 != v53);
        }

        else
        {

          v54 = MEMORY[0x277D84F90];
        }

        v75 = v79[15];
        v76 = v82;

        *&v76[v75] = v54;
        goto LABEL_36;
      }

      if (a1)
      {
        v46 = MEMORY[0x26D616C90](v44, v18);
      }

      else
      {
        if (v44 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v46 = *(v18 + 8 * v44 + 32);
      }

      v47 = v46;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v48 = [v46 url];
      v49 = v86;
      sub_2683CB3E8();

      LOBYTE(v48) = sub_268158E54(v11, v49);
      (*v45)(v11, v87);
      if (v48)
      {
        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }

      ++v44;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
LABEL_29:
    v66 = sub_2683CF7E8();
    __swift_project_value_buffer(v66, qword_28027C988);
    sub_26815E3F0(a1, v21);
    v67 = sub_2683CF7C8();
    v68 = sub_2683CFE78();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v88 = v70;
      *v69 = 136315138;
      sub_26815E3F0(v21, v18);
      v71 = sub_2683CFAD8();
      v73 = v72;
      sub_26815E454(v21);
      v74 = sub_2681610A0(v71, v73, &v88);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_2680EB000, v67, v68, "[ReminderKitExtensionProvider] Could not load REMReminder for %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x26D617A40](v70, -1, -1);
      MEMORY[0x26D617A40](v69, -1, -1);
    }

    else
    {

      sub_26815E454(v21);
    }

    sub_26815E3F0(a1, v83);
  }

  else
  {

LABEL_36:
    sub_26815E568();
  }
}

void sub_268154220()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = type metadata accessor for Snippet.Reminder(0);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v56 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v58 = v8 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258);
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_3();
  v57 = v12 - v13;
  OUTLINED_FUNCTION_8_0();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v51 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_5();
  MEMORY[0x28223BE20](v18);
  v20 = v51 - v19;
  v53 = v0;
  v61 = v0;
  v21 = sub_268152B24(sub_26815E3D0, &v60, v3);
  v64 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  v51[1] = v10;
  v52 = v21;
  if (v22)
  {
    OUTLINED_FUNCTION_11_7();
    v25 = v23 + v24;
    v55 = *(v10 + 72);
    v54 = MEMORY[0x277D84F90];
    do
    {
      sub_26815ED48();
      sub_26815ED48();
      v26 = *(v59 + 48);
      v27 = *(v1 + v26);
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
      *&v17[v26] = v27;
      v28 = v27;
      sub_26812D9E0(v17, &qword_28024DB58, &qword_2683D4258);
      v29 = sub_26812D9E0(v20, &qword_28024DB58, &qword_2683D4258);
      if (v27)
      {
        MEMORY[0x26D616770](v29);
        v30 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v30);
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v54 = v64;
      }

      v25 += v55;
      --v22;
    }

    while (v22);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v31 = sub_2681548E8(v54);

  v32 = v52;
  v33 = *(v52 + 16);
  if (!v33)
  {
LABEL_28:

    OUTLINED_FUNCTION_29_0();
    return;
  }

  v64 = MEMORY[0x277D84F90];
  sub_268390728(0, v33, 0);
  v34 = 0;
  v35 = v64;
  OUTLINED_FUNCTION_11_7();
  v36 = v31 & 0xFFFFFFFFFFFFFF8;
  v51[0] = v31;
  if (v31 < 0)
  {
    v36 = v31;
  }

  v54 = v36;
  v55 = v31 & 0xC000000000000001;
  while (v34 < *(v32 + 16))
  {
    v37 = v57;
    sub_26815ED48();
    v38 = *(v37 + *(v59 + 48));
    if (v38)
    {
      if (v55)
      {
        v39 = v38;
        v40 = sub_2683D0358();
        if (v40)
        {
          v62 = v40;
          sub_268129504(0, &qword_28024DB60, 0x277D44750);
          OUTLINED_FUNCTION_33_3();
          v41 = v63;
LABEL_24:
          v37 = v57;
          sub_2681539A8(v57, v41, v58);

          v32 = v52;
          goto LABEL_25;
        }
      }

      else
      {
        v42 = v51[0];
        v43 = *(v51[0] + 16);
        v44 = v38;
        if (v43)
        {
          v45 = sub_2682E186C();
          if (v46)
          {
            v41 = *(*(v42 + 56) + 8 * v45);
            v47 = v41;
            goto LABEL_24;
          }
        }
      }

      v41 = 0;
      goto LABEL_24;
    }

    sub_26815E3F0(v37, v58);
LABEL_25:
    sub_26812D9E0(v37, &qword_28024DB58, &qword_2683D4258);
    v64 = v35;
    v49 = *(v35 + 16);
    v48 = *(v35 + 24);
    if (v49 >= v48 >> 1)
    {
      v50 = OUTLINED_FUNCTION_22_2(v48);
      sub_268390728(v50, v49 + 1, 1);
      v35 = v64;
    }

    ++v34;
    *(v35 + 16) = v49 + 1;
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_2_5();
    sub_26815E568();
    if (v33 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_2681546E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_2683CB598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26815E3F0(a1, a2);
  if (*(a1 + *(type metadata accessor for Snippet.Reminder(0) + 20) + 8))
  {
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v12 = objc_opt_self();
      v13 = sub_2683CB558();
      v11 = [v12 objectIDWithUUID_];

      (*(v8 + 8))(v10, v7);
      goto LABEL_6;
    }

    sub_26812D9E0(v6, &qword_28024DB50, &qword_2683D4250);
  }

  v11 = 0;
LABEL_6:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB58, &qword_2683D4258);
  *(a2 + *(result + 48)) = v11;
  return result;
}

uint64_t sub_2681548E8(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v5 = sub_2683CFC98();
  v26[0] = 0;
  v6 = [v3 fetchRemindersWithObjectIDs:v5 error:v26];

  v7 = v26[0];
  if (v6)
  {
    sub_268129504(0, &qword_28024DB60, 0x277D44750);
    sub_26815E368();
    v8 = sub_2683CF9C8();
    v9 = v7;
  }

  else
  {
    v10 = v26[0];
    v11 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C988);
    v13 = v11;

    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315394;
      v18 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v19 = sub_2683CFAD8();
      v21 = sub_2681610A0(v19, v20, v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = MEMORY[0x26D6167A0](a1, v4);
      v24 = sub_2681610A0(v22, v23, v26);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2680EB000, v14, v15, "Failed batch fetching reminders with error: %s. Ids: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v17, -1, -1);
      MEMORY[0x26D617A40](v16, -1, -1);
    }

    sub_268129504(0, &qword_28024DB60, 0x277D44750);
    sub_26815E368();
    v8 = sub_2683CF9D8();
  }

  return v8;
}

void sub_268154BFC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  v10 = OUTLINED_FUNCTION_23(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_23_5();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  if (!v2)
  {
    goto LABEL_17;
  }

  v16 = v2;
  v17 = [v16 type];
  if (v17 != 2)
  {
    if (v17 != 1)
    {
      if (qword_28024C8F0 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
      }

      v26 = sub_2683CF7E8();
      __swift_project_value_buffer(v26, qword_28027C988);
      v27 = v16;
      v28 = sub_2683CF7C8();
      v29 = sub_2683CFE78();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_49();
        v31 = OUTLINED_FUNCTION_53();
        v37 = v31;
        *v30 = 136315138;
        v36 = [v27 type];
        type metadata accessor for REMUserActivityType(0);
        v32 = sub_2683CFAD8();
        v34 = sub_2681610A0(v32, v33, &v37);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_2680EB000, v28, v29, "Unsupported REMUserActivity type: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_17;
    }

    v18 = [v16 universalLink];
    if (v18)
    {
      v19 = v18;
      sub_2683CB3E8();

      v20 = sub_2683CB438();
      v21 = 0;
    }

    else
    {
      v20 = sub_2683CB438();
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v21, 1, v20);
    sub_2681589F4(v8);

    if (__swift_getEnumTagSinglePayload(v13, 1, v14))
    {
      v25 = v13;
      goto LABEL_16;
    }

LABEL_19:
    sub_26815E568();
    sub_26815E568();
    v35 = 0;
    goto LABEL_18;
  }

  v22 = sub_26815E2B0(v16, &selRef_userActivityData);
  v24 = v23;

  sub_268158B9C(v22, v24);
  if (!__swift_getEnumTagSinglePayload(v0, 1, v14))
  {
    goto LABEL_19;
  }

  v25 = v0;
LABEL_16:
  sub_26812D9E0(v25, &qword_28024D5D8, &qword_2683D4260);
LABEL_17:
  v35 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v4, v35, 1, v14);
  OUTLINED_FUNCTION_29_0();
}

void sub_268154F90()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_23_5();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27[-1] - v9;
  v11 = sub_26815357C(*(v1 + *(v8 + 20)), *(v1 + *(v8 + 20) + 8));
  if (v11)
  {
    v12 = v11;
    sub_2681551C8([v11 list], v27);
    v13 = v12;
    sub_2681539A8(v1, v12, v5);

    memcpy(v3, v27, 0x61uLL);
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    }

    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C988);
    v15 = OUTLINED_FUNCTION_38_2();
    sub_26815E3F0(v15, v10);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_49();
      v19 = OUTLINED_FUNCTION_53();
      v27[0] = v19;
      *v18 = 136315138;
      v20 = OUTLINED_FUNCTION_32_3();
      sub_26815E3F0(v20, v21);
      v22 = sub_2683CFAD8();
      v24 = v23;
      sub_26815E454(v10);
      v25 = sub_2681610A0(v22, v24, v27);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2680EB000, v16, v17, "[ReminderKitExtensionProvider] Could not load REMReminder for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26815E454(v10);
    }

    sub_26815E3F0(v1, v5);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_50_1();
    v3[10] = 0;
    v3[11] = 0;
    *(v3 + 96) = v16;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_2681551C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  v9 = [a1 objectID];
  v10 = [v9 uuid];

  sub_2683CB578();
  v11 = sub_2683CB548();
  v13 = v12;
  (*(v7 + 8))(v2, v5);
  v14 = [a1 displayName];
  v15 = sub_2683CFA78();
  v17 = v16;

  OUTLINED_FUNCTION_50_1();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  OUTLINED_FUNCTION_30_1();
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v14;
  v18 = a1;
  sub_268158448(a1);
}

void sub_268155334()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v38[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7 + 32;
  v9 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  if (v2)
  {
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_26812D9E0(v8, &qword_28024DB50, &qword_2683D4250);
    }

    else
    {
      (*(v11 + 32))(v0, v8, v9);
      v13 = objc_opt_self();
      v14 = sub_2683CB558();
      v15 = [v13 objectIDWithUUID_];

      (*(v11 + 8))(v0, v9);
      if (v15)
      {
        v16 = *v0;
        v38[0] = 0;
        v17 = [v16 fetchListWithObjectID:v15 error:v38];
        v18 = v38[0];
        if (v17)
        {
        }

        else
        {
          v19 = v18;
          v20 = sub_2683CB388();

          swift_willThrow();
          if (qword_28024C8F0 != -1)
          {
            OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
          }

          v21 = sub_2683CF7E8();
          __swift_project_value_buffer(v21, qword_28027C988);
          v22 = OUTLINED_FUNCTION_39_2();

          v23 = sub_2683CF7C8();
          v24 = sub_2683CFE78();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = OUTLINED_FUNCTION_53();
            v26 = swift_slowAlloc();
            v38[1] = v2;
            v38[2] = v26;
            *v25 = 136315650;
            v38[0] = v4;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
            v27 = sub_2683CFAD8();
            v29 = OUTLINED_FUNCTION_34_3(v27, v28);

            *(v25 + 4) = v29;
            *(v25 + 12) = 2080;
            v38[0] = v20;
            v30 = v20;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
            v31 = sub_2683CFAD8();
            v33 = OUTLINED_FUNCTION_34_3(v31, v32);

            *(v25 + 14) = v33;
            *(v25 + 22) = 2080;
            swift_getErrorValue();
            v34 = sub_2683D0638();
            v36 = OUTLINED_FUNCTION_34_3(v34, v35);

            *(v25 + 24) = v36;
            _os_log_impl(&dword_2680EB000, v23, v24, "[ReminderKitExtensionProvider] Could not load REMList for id %s with error: %s - %s", v25, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          else
          {
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268155728(uint64_t a1)
{
  result = sub_268152D24(sub_2681589D4, v73, a1);
  v5 = result;
  v65 = 0;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  *&__dst[0] = MEMORY[0x277D84F90];
  v8 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 112 * v6 + 136;
  while (1)
  {
    if (v8 == v6)
    {
      v13 = sub_268155F88(v9);

      v14 = *(v5 + 16);
      if (!v14)
      {

        return MEMORY[0x277D84F90];
      }

      v83 = v7;
      result = sub_268390808(0, v14, 0);
      v15 = 0;
      v16 = v83;
      v66 = v13;
      v67 = v13 & 0xC000000000000001;
      v70 = v14 - 1;
      v71 = v5;
      v17 = (v5 + 105);
      while (1)
      {
        if (v15 >= *(v5 + 16))
        {
          goto LABEL_48;
        }

        memcpy(__dst, v17 - 73, sizeof(__dst));
        v18 = *(&__dst[6] + 1);
        v72 = v17;
        if (!*(&__dst[6] + 1))
        {
          v22 = *(v17 - 57);
          v79 = *(v17 - 73);
          v80 = v22;
          OUTLINED_FUNCTION_42_2();
          v78[0] = *v17;
          *(v78 + 3) = *(v17 + 3);
          v23 = *(&__dst[5] + 1);
          v24 = *&__dst[5];
          v25 = __dst[6];
          v26 = OUTLINED_FUNCTION_20_5();
          result = sub_26814FB60(v26, v27);
          goto LABEL_40;
        }

        if (v67)
        {
          break;
        }

        v21 = *(v66 + 16);
        v28 = *(&__dst[6] + 1);
        if (v21)
        {
          OUTLINED_FUNCTION_20_5();
          sub_26815ED48();
          v29 = sub_2682E186C();
          if (v30)
          {
            v21 = *(*(v66 + 56) + 8 * v29);
            v31 = v21;
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_20_5();
        sub_26815ED48();
LABEL_22:
        v79 = __dst[0];
        v80 = __dst[1];
        OUTLINED_FUNCTION_42_2();
        v78[0] = *(&__dst[4] + 9);
        *(v78 + 3) = HIDWORD(__dst[4]);
        v32 = *(&__dst[5] + 1);
        v24 = *&__dst[5];
        v33 = __dst[6];
        if (!v21)
        {
          v43 = OUTLINED_FUNCTION_20_5();
          sub_26814FB60(v43, v44);

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
          v23 = v32;
          v25 = v33;
          goto LABEL_40;
        }

        v68 = __dst[6];
        v69 = *(&__dst[5] + 1);
        v34 = v21;
        v35 = OUTLINED_FUNCTION_20_5();
        sub_26814FB60(v35, v36);
        v37 = [v34 appearanceContext];
        v38 = [v37 badge];

        if (v38)
        {
          v39 = v24;
          v40 = sub_26815E30C(v38, &selRef_emoji);
          v42 = v41;
          if (v41)
          {
            v24 = v40;

            v23 = v42;
LABEL_29:
            v48 = v42 == 0;
            goto LABEL_35;
          }

          v45 = [v38 emblem];
          if (v45)
          {
            v46 = v45;
            v24 = sub_2683CFA78();
            v23 = v47;

            goto LABEL_29;
          }
        }

        v39 = v24;
        v49 = [v34 badgeEmblem];
        if (v49)
        {
          v50 = v49;
          v24 = sub_2683CFA78();
          v23 = v51;
        }

        else
        {
          v24 = sub_2683CFA78();
          v23 = v52;
        }

        v48 = 1;
LABEL_35:
        LOBYTE(v75) = v48;
        v25 = v48;
        sub_268151B3C(v39, v69, v68);
        v53 = [v34 color];
        if (v53)
        {
          v54 = v53;
          [v53 red];
          v1 = v55;
          [v54 green];
          v2 = v56;
          [v54 blue];
          v3 = v57;
          sub_268158738([v54 colorRGBSpace], &v75);

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
          LOBYTE(v8) = v75;
        }

        else
        {
          if (qword_28024C880 != -1)
          {
            OUTLINED_FUNCTION_4_5();
            swift_once();
          }

          v2 = *(&xmmword_28024DB10 + 1);
          v1 = xmmword_28024DB10;
          v3 = qword_28024DB20;
          LOBYTE(v8) = byte_28024DB28;

          result = sub_26812D9E0(__dst, &qword_28024DB30, &unk_2683D4240);
        }

LABEL_40:
        v76 = v80;
        v77 = v81;
        v75 = v79;
        LODWORD(v74) = v78[0];
        *(&v74 + 3) = *(v78 + 3);
        v83 = v16;
        v59 = *(v16 + 16);
        v58 = *(v16 + 24);
        if (v59 >= v58 >> 1)
        {
          v64 = OUTLINED_FUNCTION_22_2(v58);
          result = sub_268390808(v64, v59 + 1, 1);
          v16 = v83;
        }

        *(v16 + 16) = v59 + 1;
        v60 = v16 + 104 * v59;
        v61 = v75;
        v62 = v77;
        *(v60 + 48) = v76;
        *(v60 + 64) = v62;
        *(v60 + 32) = v61;
        *(v60 + 80) = v1;
        *(v60 + 88) = v2;
        *(v60 + 96) = v3;
        *(v60 + 104) = v8;
        v63 = *(&v74 + 3);
        *(v60 + 105) = v74;
        *(v60 + 108) = v63;
        *(v60 + 112) = v24;
        *(v60 + 120) = v23;
        *(v60 + 128) = v25;
        if (v70 == v15)
        {

          return v16;
        }

        v5 = v71;
        v17 = v72 + 28;
        ++v15;
      }

      v19 = *(&__dst[6] + 1);
      OUTLINED_FUNCTION_20_5();
      sub_26815ED48();
      v20 = sub_2683D0358();
      if (v20)
      {
        v74 = v20;
        sub_268129504(0, &qword_28024DB38, 0x277D44660);
        OUTLINED_FUNCTION_33_3();
        v21 = v75;
        goto LABEL_22;
      }

LABEL_20:
      v21 = 0;
      goto LABEL_22;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v11 = *(v5 + v10);
    v10 += 112;
    ++v6;
    if (v11)
    {
      MEMORY[0x26D616770](v11);
      v12 = *((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v12);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v9 = *&__dst[0];
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_268155D68@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_2683CB598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a1, 0x61uLL);
  memcpy(a2, a1, 0x61uLL);
  if (__dst[1])
  {
    sub_26814FB60(__dst, v15);
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = objc_opt_self();
      v14 = sub_2683CB558();
      v12 = [v13 objectIDWithUUID_];

      result = (*(v8 + 8))(v10, v7);
      goto LABEL_7;
    }

    result = sub_26812D9E0(v6, &qword_28024DB50, &qword_2683D4250);
  }

  else
  {
    result = sub_26814FB60(__dst, v15);
  }

  v12 = 0;
LABEL_7:
  a2[13] = v12;
  return result;
}

uint64_t sub_268155F88(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v5 = sub_2683CFC98();
  v29[0] = 0;
  v6 = [v3 fetchListsWithObjectIDs:v5 error:v29];

  v7 = v29[0];
  if (v6)
  {
    sub_268129504(0, &qword_28024DB38, 0x277D44660);
    sub_26815E368();
    v8 = sub_2683CF9C8();
    v9 = v7;
  }

  else
  {
    v10 = v29[0];
    v11 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C988);
    v13 = v11;

    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136315650;
      v18 = MEMORY[0x26D6167A0](a1, v4);
      v20 = sub_2681610A0(v18, v19, v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v22 = sub_2683CFAD8();
      v24 = sub_2681610A0(v22, v23, v29);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2080;
      swift_getErrorValue();
      v25 = sub_2683D0638();
      v27 = sub_2681610A0(v25, v26, v29);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_2680EB000, v14, v15, "[ReminderKitExtensionProvider] Could not load REMList for ids %s with error: %s - %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v17, -1, -1);
      MEMORY[0x26D617A40](v16, -1, -1);
    }

    sub_268129504(0, &qword_28024DB38, 0x277D44660);
    sub_26815E368();
    v8 = sub_2683CF9D8();
  }

  return v8;
}

id sub_2681562D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2683CB598();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_2683CB538();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      v11 = objc_opt_self();
      v12 = sub_2683CB558();
      v10 = [v11 objectIDWithUUID_];

      (*(v7 + 8))(v9, v6);
      return v10;
    }

    sub_26812D9E0(v5, &qword_28024DB50, &qword_2683D4250);
  }

  return 0;
}

void sub_268156498()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v148 = type metadata accessor for Snippet.Reminder(0);
  v5 = OUTLINED_FUNCTION_3_1(v148);
  v149 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v135[2] = v7 - v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v138 = v135 - v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v135[1] = v135 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  OUTLINED_FUNCTION_23(v139);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v150 = (v135 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v16 = OUTLINED_FUNCTION_23(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_3();
  v143 = v17 - v18;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  v147 = v135 - v20;
  v152 = v0;
  v21 = sub_26836F9E0(sub_26815E65C, &v151, v4);
  v22 = sub_2682E35A0(v21);

  v23 = sub_268157538(v22);

  v25 = sub_268157068(v24);
  v140 = v0;
  sub_2681548E8(v25);
  OUTLINED_FUNCTION_39_2();

  v155[0] = MEMORY[0x277D84F90];
  v142 = v2;
  v146 = 0;
  if ((v0 & 0xC000000000000001) != 0)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = sub_2683D02D8() | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    v27 = ~v31;
    v26 = v0 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(v30 << v32);
    }

    else
    {
      v33 = v30;
    }

    v28 = v33 & *(v0 + 64);
    v29 = v0;
  }

  v141 = v0;

  v34 = 0;
  v144 = v27;
  v145 = v23;
  v35 = (v27 + 64) >> 6;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v36 = v34;
    v37 = v34;
    if (!v28)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_6_5();
    v40 = v39 & v38;
    v42 = *(*(v29 + 56) + ((v37 << 9) | (8 * v41)));
    if (!v42)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v45 = [v42 parentReminder];
      if (v45)
      {

        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
      }

      else
      {
      }

      v34 = v37;
      v28 = v40;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2683D0368())
      {
        v44 = v43;
        swift_unknownObjectRelease();
        v153 = v44;
        sub_268129504(0, &qword_28024DB60, 0x277D44750);
        OUTLINED_FUNCTION_33_3();
        v42 = v154[0];
        v37 = v34;
        v40 = v28;
        if (v154[0])
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_82;
    }

    if (v37 >= v35)
    {
      break;
    }

    ++v36;
    if (*(v26 + 8 * v37))
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  v46 = OUTLINED_FUNCTION_49_2();
  sub_2681281A4(v46);
  v47 = v146;
  v48 = sub_268153124(v155[0]);
  MEMORY[0x28223BE20](v48);
  v49 = v145;
  v50 = v140;
  v135[-2] = v145;
  v135[-1] = v50;
  v51 = sub_26815CCC8(sub_26815E678, &v135[-4], v48);
  v144 = v47;

  v155[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_16_6();
  v53 = v52 >> 6;

  v37 = 0;
  v54 = v148;
  while (v26)
  {
LABEL_27:
    v56 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v57 = *(v49 + 16);
    v58 = *(v51[6] + ((v37 << 9) | (8 * v56)));
    if (v57 && (v59 = sub_2682E186C(), (v60 & 1) != 0))
    {
      v61 = v147;
      sub_26815E3F0(*(v49 + 56) + *(v149 + 72) * v59, v147);

      v62 = OUTLINED_FUNCTION_25_4();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v54);
      sub_26812D9E0(v61, &qword_28024DBC8, &qword_2683E3D30);
    }

    else
    {
      v65 = v147;
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v54);
      sub_26812D9E0(v65, &qword_28024DBC8, &qword_2683E3D30);
      sub_2683D01F8();
      sub_2683D0238();
      v49 = v145;
      sub_2683D0248();
      sub_2683D0208();
    }
  }

  while (1)
  {
    v55 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v55 >= v53)
    {
      break;
    }

    v26 = v51[v55 + 8];
    ++v37;
    if (v26)
    {
      v37 = v55;
      goto LABEL_27;
    }
  }

  sub_2682B4404(v155[0]);
  v70 = v69;
  v71 = v135;
  MEMORY[0x28223BE20](v142);
  v72 = v140;
  v135[-2] = v140;

  OUTLINED_FUNCTION_37_1();
  v37 = v144;
  v76 = sub_26836F9E0(v73, v74, v75);

  v77 = sub_2682E35A0(v76);

  v78 = sub_268157538(v77);

  v79 = sub_26815CE7C(v78, v70);

  v81 = sub_268157068(v80);
  sub_2681548E8(v81);
  OUTLINED_FUNCTION_39_2();

  v155[0] = v141;
  sub_26815D124(v72, sub_26815EC04, 0, v155);
  if (v37)
  {
    goto LABEL_83;
  }

  v82 = v155[0];
  v83 = sub_268157270(v79, v49) + 64;
  OUTLINED_FUNCTION_16_6();
  v86 = v85 >> 6;
  v144 = v82;
  v145 = v82 & 0xC000000000000001;
  v87 = v82 & 0xFFFFFFFFFFFFFF8;
  if (v82 < 0)
  {
    v87 = v82;
  }

  v141 = v87;
  v147 = v84;

  v88 = 0;
  v136 = MEMORY[0x277D84F90];
  v89 = v139;
  v146 = v51;
  while (v71)
  {
    v37 = v88;
LABEL_40:
    v90 = __clz(__rbit64(v71)) | (v37 << 6);
    v91 = *(v147 + 56);
    v92 = *(*(v147 + 48) + 8 * v90);
    v93 = v150;
    v142 = *(v149 + 72);
    v94 = *(v89 + 48);
    sub_26815E3F0(v91 + v142 * v90, v150 + v94);
    *v93 = v92;
    if (v145)
    {
      v95 = v92;
      v96 = sub_2683D0358();

      if (v96)
      {
        v154[0] = v96;
        sub_268129504(0, &qword_28024DB60, 0x277D44750);
        OUTLINED_FUNCTION_33_3();
        v97 = v155[0];
        if (v155[0])
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v98 = *(v144 + 16);
      v99 = v92;
      if (v98)
      {
        v100 = sub_2682E186C();
        if (v101)
        {
          v97 = *(*(v144 + 56) + 8 * v100);
          if (v97)
          {
LABEL_47:
            v102 = [v97 parentReminder];
            if (v102)
            {
              v137 = v102;
              v103 = [v137 objectID];
              v104 = v103;
              if (v145)
              {
                v105 = v103;
                v106 = sub_2683D0358();

                if (v106)
                {
                  v154[0] = v106;
                  sub_268129504(0, &qword_28024DB60, 0x277D44750);
                  OUTLINED_FUNCTION_33_3();
                  v107 = v155[0];
                  goto LABEL_56;
                }

LABEL_58:
                v113 = 0;
                v107 = v137;
LABEL_59:
              }

              else
              {
                v114 = v144;
                if (!*(v144 + 16))
                {
                  goto LABEL_58;
                }

                v115 = sub_2682E186C();
                if ((v116 & 1) == 0)
                {
                  goto LABEL_58;
                }

                v107 = *(*(v114 + 56) + 8 * v115);
LABEL_56:

                if (v107)
                {
                  v113 = 1;
                  v104 = v137;
                  goto LABEL_59;
                }

                v113 = 0;
                v107 = v137;
              }
            }

            else
            {
              v113 = 0;
            }

            v117 = [v97 parentReminder];
            if (v117 && (v117, v113))
            {
              v108 = v143;
              OUTLINED_FUNCTION_4_0();
              v118 = v148;
              __swift_storeEnumTagSinglePayload(v119, v120, v121, v148);

              v109 = v118;
            }

            else
            {
              v122 = v97;
              sub_2681539A8(v150 + v94, v97, v138);

              v123 = [v122 objectID];
              v124 = v146;
              if (v146[2])
              {
                v125 = sub_2682E186C();
                v109 = v148;
                if (v126)
                {
                  v127 = *(v124[7] + 8 * v125);
                }

                else
                {
                  v127 = MEMORY[0x277D84F90];
                }
              }

              else
              {
                v127 = MEMORY[0x277D84F90];
                v109 = v148;
              }

              v128 = *(v109 + 68);
              v129 = v138;

              *(v129 + v128) = v127;
              sub_2681551C8([v122 list], v154);

              v130 = *(v109 + 32);
              memcpy(v155, (v129 + v130), 0x61uLL);
              sub_26812D9E0(v155, &qword_28024D5C0, &unk_2683D2C80);
              memcpy((v129 + v130), v154, 0x61uLL);
              v108 = v143;
              sub_26815E3F0(v129, v143);
              __swift_storeEnumTagSinglePayload(v108, 0, 1, v109);
              sub_26815E454(v129);
            }

            v89 = v139;
            goto LABEL_71;
          }
        }
      }
    }

    v108 = v143;
    OUTLINED_FUNCTION_4_0();
    v109 = v148;
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v148);
LABEL_71:
    v71 &= v71 - 1;
    sub_26812D9E0(v150, &qword_28024DBC0, &unk_2683D4320);
    if (__swift_getEnumTagSinglePayload(v108, 1, v109) == 1)
    {
      sub_26812D9E0(v108, &qword_28024DBC8, &qword_2683E3D30);
      v88 = v37;
    }

    else
    {
      sub_26815E568();
      sub_26815E568();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4B38();
        v136 = v133;
      }

      v132 = *(v136 + 16);
      v131 = *(v136 + 24);
      if (v132 >= v131 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v131);
        sub_2682E4B38();
        v136 = v134;
      }

      *(v136 + 16) = v132 + 1;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_2_5();
      sub_26815E568();
      v88 = v37;
    }
  }

  while (1)
  {
    v37 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v37 >= v86)
    {

      OUTLINED_FUNCTION_29_0();
      return;
    }

    v71 = *(v83 + 8 * v37);
    ++v88;
    if (v71)
    {
      goto LABEL_40;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  __break(1u);
}