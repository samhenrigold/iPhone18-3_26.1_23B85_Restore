uint64_t sub_269271E40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269271E80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271F24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271F64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269271FA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272018()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26927206C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2692721E4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_2692722C8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26927237C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_2692C7430();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_2692725A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2692C7430();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[14];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2692727D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_269272890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269272940(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_2692C7430();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_269272AC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_2692C7430();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_269272C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_269272D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269272DE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272E1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272E54()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269272EA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269272EE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272F40()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269272F8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269272FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26927309C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269273130()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26927318C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2692731CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269273214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2692C7310();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_26927339C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2692734A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

uint64_t sub_2692734F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_26927365C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

uint64_t sub_2692736AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273758@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relativeOffsetInMinutes];
  *a2 = result;
  return result;
}

id sub_2692737C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMeridianInferred];
  *a2 = result;
  return result;
}

id sub_269273810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 createdAlarm];
  *a2 = result;
  return result;
}

id sub_269273860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 successCode];
  *a2 = result;
  return result;
}

uint64_t sub_2692738A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_26927395C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_2692739EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operation];
  *a2 = result;
  return result;
}

id sub_269273A34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 handleSilently];
  *a2 = result;
  return result;
}

uint64_t sub_269273AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_269273BC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarm];
  *a2 = result;
  return result;
}

id sub_269273C10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operation];
  *a2 = result;
  return result;
}

id sub_269273C68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proposedMeridiemSetByUser];
  *a2 = result;
  return result;
}

id sub_269273CC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updatedAlarm];
  *a2 = result;
  return result;
}

uint64_t sub_269273D10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273D68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273DBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

uint64_t sub_269273E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273E6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269273EC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearch];
  *a2 = result;
  return result;
}

id sub_269273F10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearchType];
  *a2 = result;
  return result;
}

uint64_t sub_269273F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269273FB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269274014@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

id sub_269274064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 firing];
  *a2 = result;
  return result;
}

id sub_2692740BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sleepAlarmAttribute];
  *a2 = result;
  return result;
}

id sub_269274114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 undoable];
  *a2 = result;
  return result;
}

id sub_269274164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 override];
  *a2 = result;
  return result;
}

id sub_2692741C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmSearchStatus];
  *a2 = result;
  return result;
}

id sub_26927420C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 includeSleepAlarm];
  *a2 = result;
  return result;
}

id sub_26927425C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 period];
  *a2 = result;
  return result;
}

id sub_2692742A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isMeridianInferred];
  *a2 = result;
  return result;
}

id sub_2692742F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmReferenceType];
  *a2 = result;
  return result;
}

id sub_26927434C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeRange];
  *a2 = result;
  return result;
}

id sub_26927439C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 repeatSchedule];
  *a2 = result;
  return result;
}

uint64_t sub_2692743E4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_269274440(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_26927444C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302AA8);
  v1 = __swift_project_value_buffer(v0, qword_280302AA8);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SearchAlarmIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26927594C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id SearchAlarmIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_269275850(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id SearchAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v12);
  v0 = type metadata accessor for SiriAlarmManagerImpl(0);
  v1 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v2 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v3 = swift_allocObject();
  *(v1 + v2) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v5 = qword_280303380;
  *(v1 + v4) = qword_280303380;
  sub_269275A30(&v12, v1 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v6 = type metadata accessor for SearchAlarmIntentHandler();
  v7 = objc_allocWithZone(v6);
  v13 = v0;
  v14 = &protocol witness table for SiriAlarmManagerImpl;
  *&v12 = v1;
  *&v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject] = v5;
  sub_269275A6C(&v12, &v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_2692748B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2692C77A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2692C7A20();
  sub_2692C7790();
  sub_2692C7780();
  (*(v8 + 8))(v11, v7);
  v12 = [a1 alarmSearch];
  if (!v12)
  {
    if ([a1 alarmSearchType] == 2 || objc_msgSend(a1, sel_alarmSearchType) == 3)
    {
      v13 = v3;
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_2692C77C0();
      __swift_project_value_buffer(v14, qword_280302AA8);
      v15 = sub_2692C77B0();
      v16 = sub_2692C7A00();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_269270000, v15, v16, ".whenIs or .howLongUntil request, alarmSearch is nil. Will default to searching for the next active alarm.", v17, 2u);
        MEMORY[0x26D6368E0](v17, -1, -1);
      }

      type metadata accessor for AlarmSearch();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = sub_2692C7820();
      v12 = [v18 initWithIdentifier:0 displayString:v19];

      [v12 setAlarmReferenceType_];
      v3 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  sub_269275A6C(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager, v27);
  v20 = v28;
  v21 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = a2;
  v22[4] = a3;
  v23 = *(v21 + 56);
  v24 = v3;

  v23(v12, sub_269275B14, v22, v20, v21);

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_269274BE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (v10 == 12)
    {
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_2692C77C0();
      __swift_project_value_buffer(v12, qword_280302AA8);
      v13 = sub_2692C77B0();
      v14 = sub_2692C7A00();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_269270000, v13, v14, "No alarm exists on device.", v15, 2u);
        MEMORY[0x26D6368E0](v15, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2692C9430;
      type metadata accessor for SearchAlarmAlarmsResolutionResult();
      v17 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302AA0 != -1)
      {
        swift_once();
      }

      v31 = sub_2692C77C0();
      __swift_project_value_buffer(v31, qword_280302AA8);
      v32 = sub_2692C77B0();
      v33 = sub_2692C7A00();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_269270000, v32, v33, "No alarm found that user specified.", v34, 2u);
        MEMORY[0x26D6368E0](v34, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2692C9430;
      type metadata accessor for SearchAlarmAlarmsResolutionResult();
      v17 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_31;
  }

  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v18 = sub_2692C77C0();
  __swift_project_value_buffer(v18, qword_280302AA8);

  v19 = sub_2692C77B0();
  v20 = sub_2692C7A00();
  sub_2692743E4(v10, 0);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v23 = type metadata accessor for SiriAlarm();
    v24 = MEMORY[0x26D635E70](v10, v23);
    v26 = sub_26927C4DC(v24, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_269270000, v19, v20, "Alarm search get a list of alarms %s.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D6368E0](v22, -1, -1);
    MEMORY[0x26D6368E0](v21, -1, -1);
  }

  if (!(v10 >> 62))
  {
    v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      v38 = MEMORY[0x277D84F90];
      sub_2692C7C10();
      goto LABEL_15;
    }

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2692C9430;
    type metadata accessor for SearchAlarmAlarmsResolutionResult();
    v17 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_31:
    *(v16 + 32) = v17;
    goto LABEL_32;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_30;
  }

  v35 = sub_2692C7C60();
  v16 = MEMORY[0x277D84F90];
  if (!v35)
  {
    goto LABEL_32;
  }

  v38 = MEMORY[0x277D84F90];
  v27 = v35;
  sub_2692C7C10();
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_15:
  type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v28 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D6360D0](v28, v10);
    }

    else
    {
      v29 = *(v10 + 8 * v28 + 32);
    }

    v30 = v29;
    ++v28;
    sub_2692C42D8(v29);

    sub_2692C7BF0();
    sub_2692C7C20();
    sub_2692C7C30();
    sub_2692C7C00();
  }

  while (v27 != v28);
  v16 = v38;
LABEL_32:
  a3(v16);
}

void sub_26927525C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

void sub_2692752C8(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v4 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_26927541C(uint64_t a1, void (*a2)(char *))
{
  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_2692C77C0();
  __swift_project_value_buffer(v3, qword_280302AA8);
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_269270000, v4, v5, "SearchAlarmIntentHandler handle intent.", v6, 2u);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  v7 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v8 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  a2(v7);
}

id SearchAlarmIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchAlarmIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_2692756C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2692756F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26927571C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_269275800@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269275810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26927603C(a1);

  *a2 = v3;
  return result;
}

id sub_269275850(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for SearchAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26927594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for SearchAlarmIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_269275850(v9, v10, a3, a4);
}

uint64_t sub_269275A30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269275A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_269275C20(uint64_t a1)
{
  if (qword_280302AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280302AA8);
  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_269270000, v3, v4, "SearchAlarmIntentHandler handle intent.", v5, 2u);
    MEMORY[0x26D6368E0](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v7 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 4;
  [v6 setUserActivity_];
  (*(a1 + 16))(a1, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void type metadata accessor for MTAlarmRepeatSchedule()
{
  if (!qword_280302B78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280302B78);
    }
  }
}

uint64_t sub_269275FF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTAlarmRepeatSchedule();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26927603C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL sub_26927607C()
{
  v0 = sub_2692C7290();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_2692C72B0();
  if (v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = sub_2692C7290();
  if (v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_2692C72B0();
  if (v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = sub_2692C7290();
  if (v13)
  {
    return 0;
  }

  v15 = v12;
  v16 = sub_2692C72B0();
  if (v17)
  {
    if (v15 == v8)
    {
      v16 = 0;
      return v11 >= v16;
    }

    if (v15 == v2)
    {
      v16 = 0;
      return v16 >= v5;
    }
  }

  else
  {
    if (v15 == v8)
    {
      return v11 >= v16;
    }

    if (v15 == v2)
    {
      return v16 >= v5;
    }
  }

  if (v8 >= v2)
  {
    return v15 < v8 && v2 < v15;
  }

  else
  {
    return v2 < v15 || v15 < v8;
  }
}

uint64_t sub_26927617C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302C00);
  v1 = __swift_project_value_buffer(v0, qword_280302C00);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id UpdateAlarmIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26927CB80(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id UpdateAlarmIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_26927CA84(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id UpdateAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpdateAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v12);
  v0 = type metadata accessor for SiriAlarmManagerImpl(0);
  v1 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v2 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v3 = swift_allocObject();
  *(v1 + v2) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v5 = qword_280303380;
  *(v1 + v4) = qword_280303380;
  sub_269275A30(&v12, v1 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  updated = type metadata accessor for UpdateAlarmIntentHandler();
  v7 = objc_allocWithZone(updated);
  v13 = v0;
  v14 = &protocol witness table for SiriAlarmManagerImpl;
  *&v12 = v1;
  *&v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject] = v5;
  sub_269275A6C(&v12, &v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
  v11.receiver = v7;
  v11.super_class = updated;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_269276594(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280302C00);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = v12;
    v17 = a3;
    v18 = a2;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "UpdateAlarmIntentHandler resolving alarm.", v16, 2u);
    v20 = v19;
    a2 = v18;
    a3 = v17;
    v4 = v3;
    v12 = v45;
    MEMORY[0x26D6368E0](v20, -1, -1);
  }

  v21 = [a1 alarm];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2692C77B0();
    v24 = sub_2692C7A00();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      v27 = [v22 identifier];
      if (v27)
      {
        v28 = a2;
        v29 = v27;
        v30 = sub_2692C7830();
        v32 = v31;

        a2 = v28;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v47[0] = v30;
      v47[1] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v40 = sub_2692C7840();
      v42 = sub_26927C4DC(v40, v41, &v46);

      *(v25 + 4) = v42;
      _os_log_impl(&dword_269270000, v23, v24, "UpdateAlarmIntentHandler: Using alarm with ID %s on intent for resolution", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6368E0](v26, -1, -1);
      MEMORY[0x26D6368E0](v25, -1, -1);
    }

    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    v43 = sub_2692C42D8(v22);
    a2();
  }

  else
  {
    v33 = [a1 alarmSearch];
    v34 = [a1 operation];
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v12, v8);
    sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager, v47);
    v35 = v48;
    v36 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v37 = swift_allocObject();
    v37[2] = v4;
    v37[3] = a2;
    v37[4] = a3;
    v37[5] = v34;
    v38 = *(v36 + 56);
    v39 = v4;

    v38(v33, sub_26927CC88, v37, v35, v36);

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }
}

void sub_269276A18(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    if (v13 == 12)
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v15 = sub_2692C77C0();
      __swift_project_value_buffer(v15, qword_280302C00);
      v16 = sub_2692C77B0();
      v17 = sub_2692C7A00();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_269270000, v16, v17, "No alarm exists on device.", v18, 2u);
        MEMORY[0x26D6368E0](v18, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v28 = sub_2692C77C0();
      __swift_project_value_buffer(v28, qword_280302C00);
      v29 = sub_2692C77B0();
      v30 = sub_2692C7A00();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_269270000, v29, v30, "No alarm found that user specified.", v31, 2u);
        MEMORY[0x26D6368E0](v31, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_37;
  }

  if (!(v13 >> 62))
  {
    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 == 1)
    {
      goto LABEL_10;
    }

LABEL_34:
    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    if (v20)
    {
      v38 = sub_2692C433C(v13);
LABEL_38:
      v13 = v38;
      a3();
      goto LABEL_39;
    }

    v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_37:
    v38 = v19;
    goto LABEL_38;
  }

  if (sub_2692C7C60() != 1 || !sub_2692C7C60())
  {
    v20 = sub_2692C7C60();
    goto LABEL_34;
  }

LABEL_10:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D6360D0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v21 = *(v13 + 32);
  }

  v13 = v21;
  v22 = [v21 sleepAlarmAttribute];
  if (v22)
  {

    if (a5 != 2)
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v33 = sub_2692C77C0();
      __swift_project_value_buffer(v33, qword_280302C00);
      v34 = sub_2692C77B0();
      v35 = sub_2692C7A00();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_269270000, v34, v35, "User want to change time for sleep alarm. Success.", v36, 2u);
        MEMORY[0x26D6368E0](v36, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v27 = sub_2692C42D8(v13);
      goto LABEL_30;
    }

    if (qword_280302AC0 == -1)
    {
LABEL_16:
      v23 = sub_2692C77C0();
      __swift_project_value_buffer(v23, qword_280302C00);
      v24 = sub_2692C77B0();
      v25 = sub_2692C7A00();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_269270000, v24, v25, "User want to change label for sleep alarm. Unsupported.", v26, 2u);
        MEMORY[0x26D6368E0](v26, -1, -1);
      }

      type metadata accessor for UpdateAlarmAlarmResolutionResult();
      v27 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_30:
      v37 = v27;
      a3();

      goto LABEL_39;
    }

LABEL_42:
    swift_once();
    goto LABEL_16;
  }

  type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v32 = sub_2692C42D8(v13);
  a3();

  v13 = v32;
LABEL_39:
}

void sub_269276FD0(void *a1, void (*a2)(void))
{
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302C00);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Resolving proposedLabel.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  if ([a1 operation] == 2)
  {
    v8 = [a1 proposedLabel];
    if (v8)
    {
      v9 = v8;
      v12 = [objc_opt_self() successWithResolvedString_];

      v10 = v12;
      goto LABEL_11;
    }

    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v11 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else
  {
    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v11 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v10 = v11;
LABEL_11:
  v13 = v10;
  a2();
}

void sub_2692771C8(void *a1, void (*a2)(id))
{
  v4 = sub_2692C7310();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280302C00);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "Resolving proposedTime.", v16, 2u);
    MEMORY[0x26D6368E0](v16, -1, -1);
  }

  v17 = [a1 operation];
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = [a1 proposedTime];
      if (v18)
      {
        v19 = v18;
        sub_2692C7280();

        sub_2692C7290();
        if ((v20 & 1) == 0)
        {
          v29 = objc_opt_self();
          v30 = sub_2692C7270();
          v31 = [v29 successWithResolvedDateComponents_];

          a2(v31);
          (*(v5 + 8))(v12, v4);
          return;
        }

        (*(v5 + 8))(v12, v4);
      }

      v21 = [a1 proposedRecurrence];
      if (v21)
      {
LABEL_11:

        sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
        v22 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
        v35 = v22;
        (a2)();

        return;
      }

LABEL_26:
      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v22 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_27;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
  }

  else
  {
    v23 = [a1 proposedLabel];
    if (!v23)
    {
      v26 = [a1 proposedTime];
      if (v26)
      {
        v27 = v26;
        sub_2692C7280();

        sub_2692C7290();
        if ((v28 & 1) == 0)
        {
          v32 = objc_opt_self();
          v33 = sub_2692C7270();
          v34 = [v32 successWithResolvedDateComponents_];

          a2(v34);
          (*(v5 + 8))(v9, v4);
          return;
        }

        (*(v5 + 8))(v9, v4);
      }

      v21 = [a1 proposedRecurrence];
      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v37 = v24;
  (a2)();
  v25 = v37;
}

void sub_2692776D8(void *a1, void (*a2)(void))
{
  v3 = [a1 proposedMeridiemSetByUser];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedValue_];
    a2();
  }

  else
  {
    sub_26927CC94(0, &qword_280302C40, 0x277CD3AB0);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    a2();
  }
}

void sub_2692777DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_26927786C(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
  v4 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_2692779C0(void (*a1)(char *, uint64_t), void (*a2)(char *), uint64_t a3)
{
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v72 - v12;
  v14 = sub_2692C7360();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v72 - v21;
  v78 = a1;
  v23 = [a1 alarm];
  if (v23)
  {
    v80 = v23;
    v24 = [v23 sleepAlarmAttribute];
    if (v24)
    {
      v77 = v3;

      sub_26927826C(v13);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_26927CEA8(v13, &qword_280302C50, &unk_2692C96A0);
        if (qword_280302AC0 != -1)
        {
          swift_once();
        }

        v25 = sub_2692C77C0();
        __swift_project_value_buffer(v25, qword_280302C00);
        v26 = v80;
        v27 = sub_2692C77B0();
        v28 = sub_2692C79F0();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = a2;
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v81[0] = v31;
          *v30 = 136315138;
          v32 = v26;
          v33 = [v32 description];
          v34 = sub_2692C7830();
          v36 = v35;

          v37 = sub_26927C4DC(v34, v36, v81);

          *(v30 + 4) = v37;
          _os_log_impl(&dword_269270000, v27, v28, "Updating sleep alarm, but it had a malformed alarmId: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x26D6368E0](v31, -1, -1);
          v38 = v30;
          a2 = v29;
          MEMORY[0x26D6368E0](v38, -1, -1);
        }
      }

      else
      {
        v76 = a2;
        (*(v15 + 32))(v22, v13, v14);
        if (qword_280302AC0 != -1)
        {
          swift_once();
        }

        v51 = sub_2692C77C0();
        __swift_project_value_buffer(v51, qword_280302C00);
        (*(v15 + 16))(v19, v22, v14);
        v52 = v80;
        v53 = sub_2692C77B0();
        v54 = sub_2692C7A00();

        if (os_log_type_enabled(v53, v54))
        {
          v74 = v54;
          v75 = v53;
          v55 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v81[0] = v73;
          *v55 = 136315394;
          sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v56 = sub_2692C7D30();
          v58 = v57;
          v59 = v19;
          v60 = *(v15 + 8);
          v60(v59, v14);
          v61 = sub_26927C4DC(v56, v58, v81);

          *(v55 + 4) = v61;
          *(v55 + 12) = 2080;
          v62 = [v52 dateTime];
          if (v62)
          {
            v63 = v62;
            sub_2692C7280();

            v64 = 0;
          }

          else
          {
            v64 = 1;
          }

          v66 = sub_2692C7310();
          (*(*(v66 - 8) + 56))(v9, v64, 1, v66);
          v67 = sub_2692C7840();
          v69 = sub_26927C4DC(v67, v68, v81);

          *(v55 + 14) = v69;
          v70 = v75;
          _os_log_impl(&dword_269270000, v75, v74, "[UpdateAlarmIntentHandler] Sleep alarm being updated. Existing sleepAlarmId = %s, dateTime = %s", v55, 0x16u);
          v71 = v73;
          swift_arrayDestroy();
          MEMORY[0x26D6368E0](v71, -1, -1);
          MEMORY[0x26D6368E0](v55, -1, -1);

          v60(v22, v14);
          a2 = v76;
        }

        else
        {

          v65 = *(v15 + 8);
          v65(v19, v14);
          v65(v22, v14);
          a2 = v76;
        }
      }

      sub_26927A3C0(v78, a2, v79);
    }

    else
    {
      sub_2692792F8(v78, v80, a2, v79);
      v50 = v80;
    }
  }

  else
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v39 = a2;
    v40 = sub_2692C77C0();
    __swift_project_value_buffer(v40, qword_280302C00);
    v41 = sub_2692C77B0();
    v42 = sub_2692C79F0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_269270000, v41, v42, "Please check resolveAlarm(), alarm slot was NOT resolved.", v43, 2u);
      MEMORY[0x26D6368E0](v43, -1, -1);
    }

    v44 = sub_2692C7760();
    v81[3] = v44;
    v81[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CC920;
    v46 = *MEMORY[0x277D61878];
    v47 = sub_2692C7710();
    (*(*(v47 - 8) + 104))(boxed_opaque_existential_1, v46, v47);
    (*(*(v44 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v44);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    v48 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v49 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v48[v49] = 5;
    [v48 setUserActivity_];
    v39(v48);
  }
}

uint64_t sub_26927826C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2692C71D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2692C7830();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(v11, v13);
  v16 = v15;

  if (v16)
  {
    v52 = v14;
    v53 = v16;
    sub_2692C71C0();
    sub_2692807B8();
    v17 = sub_2692C7AA0();
    v19 = v18;
    (*(v5 + 8))(v8, v4);

    if (v19)
    {
      v52 = 0xD000000000000014;
      v53 = 0x80000002692CC780;
      MEMORY[0x26D635DF0](v17, v19);

      sub_2692C7350();
    }

    else
    {
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v32 = sub_2692C77C0();
      __swift_project_value_buffer(v32, qword_280302C00);
      v33 = v2;
      v34 = sub_2692C77B0();
      v35 = sub_2692C79F0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 136315138;
        v38 = [v33 identifier];
        if (v38)
        {
          v39 = v38;
          v40 = sub_2692C7830();
          v42 = v41;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        v52 = v40;
        v53 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
        v46 = sub_2692C7840();
        v48 = sub_26927C4DC(v46, v47, &v51);

        *(v36 + 4) = v48;
        _os_log_impl(&dword_269270000, v34, v35, "Bad alarm identifier when parsing ID: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x26D6368E0](v37, -1, -1);
        MEMORY[0x26D6368E0](v36, -1, -1);
      }

      v49 = sub_2692C7360();
      return (*(*(v49 - 8) + 56))(a1, 1, 1, v49);
    }
  }

  else
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v21 = sub_2692C77C0();
    __swift_project_value_buffer(v21, qword_280302C00);
    v22 = v2;
    v23 = sub_2692C77B0();
    v24 = sub_2692C79F0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136315138;
      v27 = [v22 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_2692C7830();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xE000000000000000;
      }

      v43 = sub_26927C4DC(v29, v31, &v52);

      *(v25 + 4) = v43;
      _os_log_impl(&dword_269270000, v23, v24, "UpdateAlarmIntentHandler Bad alarm identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6368E0](v26, -1, -1);
      MEMORY[0x26D6368E0](v25, -1, -1);
    }

    v44 = sub_2692C7360();
    v45 = *(*(v44 - 8) + 56);

    return v45(a1, 1, 1, v44);
  }
}

void sub_2692787A8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_26927883C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v99 = a2;
  v103 = a4;
  v5 = sub_2692C74F0();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v102 = &v91 - v13;
  v14 = sub_2692C7310();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2692C73E0();
  v106 = *(v101 - 8);
  v20 = MEMORY[0x28223BE20](v101, v19);
  v94 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v91 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v97 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v91 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v91 - v34;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v36 = sub_2692C77C0();
  v37 = __swift_project_value_buffer(v36, qword_280302C00);
  v98 = a1;
  sub_26927CE40(a1, v35, &qword_280302C48, &qword_2692C9780);
  v107 = v37;
  v38 = sub_2692C77B0();
  v39 = sub_2692C7A00();
  v40 = os_log_type_enabled(v38, v39);
  v104 = v15;
  v96 = v24;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v91 = v14;
    v43 = v42;
    v108 = v42;
    *v41 = 136315138;
    sub_26927CE40(v35, v32, &qword_280302C48, &qword_2692C9780);
    v44 = sub_2692C7840();
    v46 = v45;
    sub_26927CEA8(v35, &qword_280302C48, &qword_2692C9780);
    v47 = sub_26927C4DC(v44, v46, &v108);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_269270000, v38, v39, "inferredAdjustedComponents: proposedTime: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v48 = v43;
    v14 = v91;
    MEMORY[0x26D6368E0](v48, -1, -1);
    MEMORY[0x26D6368E0](v41, -1, -1);
  }

  else
  {

    sub_26927CEA8(v35, &qword_280302C48, &qword_2692C9780);
  }

  v49 = sub_2692C77B0();
  v50 = sub_2692C7A00();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v101;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v108 = v54;
    *v53 = 136315138;
    if (v99)
    {
      v55 = 1702195828;
    }

    else
    {
      v55 = 0x65736C6166;
    }

    if (v99)
    {
      v56 = 0xE400000000000000;
    }

    else
    {
      v56 = 0xE500000000000000;
    }

    v57 = sub_26927C4DC(v55, v56, &v108);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_269270000, v49, v50, "inferredAdjustedComponents: meridiemSetByUser: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x26D6368E0](v54, -1, -1);
    MEMORY[0x26D6368E0](v53, -1, -1);
  }

  v58 = v106;
  v59 = v96;
  (*(v106 + 16))(v96, v105, v52);
  v60 = sub_2692C77B0();
  v61 = sub_2692C7A00();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v108 = v63;
    *v62 = 136315138;
    sub_2692806BC(&qword_280302C70, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v64 = sub_2692C7D30();
    v65 = v59;
    v67 = v66;
    v68 = *(v58 + 8);
    v68(v65, v52);
    v69 = sub_26927C4DC(v64, v67, &v108);

    *(v62 + 4) = v69;
    _os_log_impl(&dword_269270000, v60, v61, "inferredAdjustedComponents: anchorDate: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x26D6368E0](v63, -1, -1);
    MEMORY[0x26D6368E0](v62, -1, -1);
  }

  else
  {

    v68 = *(v58 + 8);
    v68(v59, v52);
  }

  v70 = v104;
  v71 = v102;
  v72 = v18;
  v73 = v100;
  v74 = v97;
  sub_26927CE40(v98, v97, &qword_280302C48, &qword_2692C9780);
  if ((*(v70 + 48))(v74, 1, v14) == 1)
  {
    v75 = &qword_280302C48;
    v76 = &qword_2692C9780;
    v77 = v74;
  }

  else
  {
    (*(v70 + 32))(v18, v74, v14);
    sub_2692C7630();
    sub_26927CE40(v71, v73, &qword_280302C60, &qword_2692C96E0);
    v78 = v106;
    if ((*(v106 + 48))(v73, 1, v52) != 1)
    {
      (*(v78 + 32))(v94, v73, v52);
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v80 = sub_2692C74E0();
      v81 = *(v80 - 8);
      v82 = v81;
      v107 = v72;
      v83 = *(v81 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_2692C9680;
      v86 = v85 + v84;
      v87 = *(v82 + 104);
      v87(v86, *MEMORY[0x277CC9988], v80);
      v87(v86 + v83, *MEMORY[0x277CC9998], v80);
      v87(v86 + 2 * v83, *MEMORY[0x277CC9968], v80);
      v87(v86 + 3 * v83, *MEMORY[0x277CC9980], v80);
      v87(v86 + 4 * v83, *MEMORY[0x277CC99A0], v80);
      v87(v86 + 5 * v83, *MEMORY[0x277CC99A8], v80);
      sub_2692A5EEC(v85);
      swift_setDeallocating();
      v70 = v104;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v88 = v94;
      v89 = v95;
      sub_2692C7460();

      (*(v92 + 8))(v89, v93);
      v68(v88, v101);
      sub_26927CEA8(v102, &qword_280302C60, &qword_2692C96E0);
      (*(v70 + 8))(v107, v14);
      v79 = 0;
      return (*(v70 + 56))(v103, v79, 1, v14);
    }

    sub_26927CEA8(v71, &qword_280302C60, &qword_2692C96E0);
    (*(v70 + 8))(v72, v14);
    v77 = v73;
    v75 = &qword_280302C60;
    v76 = &qword_2692C96E0;
  }

  sub_26927CEA8(v77, v75, v76);
  v79 = 1;
  return (*(v70 + 56))(v103, v79, 1, v14);
}

void sub_2692792F8(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v135 = a4;
  v7 = sub_2692C77A0();
  v129 = *(v7 - 8);
  v130 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v128 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2692C74F0();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v10);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v124 = &v112 - v14;
  v15 = sub_2692C73E0();
  v126 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v122 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v112 - v20;
  v22 = sub_2692C7310();
  v136 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v127 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v134 = &v112 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v112 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v112 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v112 - v43;
  MEMORY[0x28223BE20](v42, v45);
  v138 = a2;
  v139 = &v112 - v46;
  v47 = [a2 identifier];
  if (v47)
  {
    v119 = a3;
    v48 = v47;
    v115 = sub_2692C7830();
    v118 = v49;

    v50 = [a1 proposedLabel];
    if (v50)
    {
      v51 = v50;
      v125 = sub_2692C7830();
      v133 = v52;
    }

    else
    {
      v125 = 0;
      v133 = 0;
    }

    v59 = v136;
    v137 = a1;
    v60 = [a1 proposedTime];
    if (v60)
    {
      v61 = v60;
      sub_2692C7280();

      v62 = *(v59 + 56);
      v62(v44, 0, 1, v22);
    }

    else
    {
      v62 = *(v59 + 56);
      v62(v44, 1, 1, v22);
    }

    v63 = [v138 dateTime];
    if (v63)
    {
      v64 = v63;
      sub_2692C7280();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v62(v40, v65, 1, v22);
    v66 = [v137 proposedMeridiemSetByUser];
    v132 = v22;
    v116 = v29;
    if (v66)
    {
      v67 = v66;
      v68 = v15;
      v117 = [v66 BOOLValue];
    }

    else
    {
      v68 = v15;
      v117 = 0;
    }

    sub_2692C7610();
    sub_26927883C(v40, 1, v21, v36);
    v69 = v126;
    v70 = *(v126 + 8);
    v70(v21, v68);
    v71 = *(v59 + 48);
    v72 = v132;
    v114 = v59 + 48;
    v113 = v71;
    if (v71(v36, 1, v132) == 1)
    {
      sub_26927CEA8(v36, &qword_280302C48, &qword_2692C9780);
      sub_2692C7610();
      sub_26927883C(v44, v117, v21, v139);
      v70(v21, v68);
    }

    else
    {
      (*(v59 + 32))(v127, v36, v72);
      v73 = v120;
      sub_2692C74B0();
      v74 = v124;
      sub_2692C7480();
      (*(v121 + 8))(v73, v123);
      v75 = *(v69 + 48);
      if (v75(v74, 1, v68) == 1)
      {
        v76 = v122;
        sub_2692C7610();
        if (v75(v74, 1, v68) != 1)
        {
          sub_26927CEA8(v74, &qword_280302C60, &qword_2692C96E0);
        }
      }

      else
      {
        v76 = v122;
        (*(v69 + 32))(v122, v74, v68);
      }

      sub_26927883C(v44, v117, v76, v139);
      v70(v76, v68);
      (*(v136 + 8))(v127, v132);
    }

    sub_26927CEA8(v40, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v44, &qword_280302C48, &qword_2692C9780);
    v77 = v137;
    v78 = v134;
    v79 = v118;
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v80 = sub_2692C77C0();
    __swift_project_value_buffer(v80, qword_280302C00);
    sub_26927CE40(v139, v78, &qword_280302C48, &qword_2692C9780);
    v81 = v133;

    v82 = sub_2692C77B0();
    v83 = sub_2692C7A00();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v140[0] = v127;
      *v84 = 136315650;
      v85 = sub_26927C4DC(v115, v79, v140);

      *(v84 + 4) = v85;
      *(v84 + 12) = 2080;
      if (v81)
      {
        v86 = v125;
      }

      else
      {
        v86 = 0;
      }

      if (v81)
      {
        v87 = v81;
      }

      else
      {
        v87 = 0xE000000000000000;
      }

      v88 = sub_26927C4DC(v86, v87, v140);

      *(v84 + 14) = v88;
      *(v84 + 22) = 2080;
      v89 = v116;
      sub_26927CE40(v78, v116, &qword_280302C48, &qword_2692C9780);
      v90 = v132;
      if (v113(v89, 1, v132) == 1)
      {
        sub_26927CEA8(v89, &qword_280302C48, &qword_2692C9780);
        v91 = 0;
        v92 = 0xE000000000000000;
      }

      else
      {
        v91 = MEMORY[0x26D635790]();
        v92 = v95;
        (*(v136 + 8))(v89, v90);
      }

      v93 = v119;
      v94 = v131;
      sub_26927CEA8(v134, &qword_280302C48, &qword_2692C9780);
      v96 = sub_26927C4DC(v91, v92, v140);

      *(v84 + 24) = v96;
      _os_log_impl(&dword_269270000, v82, v83, "UpdateAlarmIntentHandler alarmId=%s, newLabel=%s, newTime=%s", v84, 0x20u);
      v97 = v127;
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v97, -1, -1);
      MEMORY[0x26D6368E0](v84, -1, -1);

      v77 = v137;
    }

    else
    {

      sub_26927CEA8(v78, &qword_280302C48, &qword_2692C9780);
      v93 = v119;
      v94 = v131;
    }

    sub_2692C7A20();
    v98 = v128;
    sub_2692C7790();
    sub_2692C7780();
    (*(v129 + 8))(v98, v130);
    sub_269275A6C(v94 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager, v140);
    v99 = v141;
    v100 = v142;
    __swift_project_boxed_opaque_existential_1(v140, v141);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_2692C9430;
    v102 = v138;
    *(v101 + 32) = v138;
    v103 = v102;
    v104 = [v77 proposedRecurrence];
    if (v104)
    {
      v105 = v104;
      type metadata accessor for AlarmRepeatSchedule();
      v106 = sub_2692C7930();
    }

    else
    {
      v106 = 0;
    }

    v107 = swift_allocObject();
    v107[2] = v94;
    v107[3] = v93;
    v107[4] = v135;
    v108 = *(v100 + 32);
    v109 = v94;

    v111 = v100;
    v110 = v139;
    v108(v101, v125, v133, v139, v106, sub_2692808C0, v107, v99, v111);

    sub_26927CEA8(v110, &qword_280302C48, &qword_2692C9780);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
  }

  else
  {
    v53 = sub_2692C7760();
    v141 = v53;
    v142 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v140);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CCA40;
    v55 = *MEMORY[0x277D61878];
    v56 = sub_2692C7710();
    (*(*(v56 - 8) + 104))(boxed_opaque_existential_1, v55, v56);
    (*(*(v53 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v53);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v57 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v58 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v57[v58] = 5;
    [v57 setUserActivity_];
    a3(v57);
  }
}

void sub_26927A06C(unint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v12 = sub_2692C7760();
    v24[3] = v12;
    v24[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    sub_269280704();
    v14 = swift_allocError();
    *v15 = v10;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v16 = *MEMORY[0x277D61838];
    v17 = sub_2692C76A0();
    (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v12);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    v18 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 5;
    [v18 setUserActivity_];
LABEL_12:
    a3(v18);

    return;
  }

  v18 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
  v20 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v18[v20] = 4;
  [v18 setUserActivity_];
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D6360D0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v10 + 32);
LABEL_8:
    v22 = v21;
LABEL_11:
    [v18 setUpdatedAlarm_];

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26927A3C0(void (*a1)(char *, uint64_t), void (*a2)(char *), uint64_t a3)
{
  v165 = a3;
  v164 = a2;
  v156 = sub_2692C77A0();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v4);
  v154 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v170 = &v150 - v8;
  v168 = sub_2692C74F0();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v9);
  v166 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v159 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v179 = &v150 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v173 = &v150 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v161 = &v150 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v150 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v150 - v29;
  v31 = sub_2692C7310();
  v178 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v160 = &v150 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v162 = &v150 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v169 = &v150 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v180 = &v150 - v46;
  v47 = sub_2692C73E0();
  v174 = *(v47 - 8);
  v175 = v47;
  v49 = MEMORY[0x28223BE20](v47, v48);
  v151 = &v150 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v150 - v52;
  updated = type metadata accessor for UpdateAlarmIntentResponse();
  v54 = [objc_allocWithZone(updated) init];
  v55 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v54[v55] = 4;
  v163 = v54;
  [v54 setUserActivity_];
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v56 = sub_2692C77C0();
  v172 = __swift_project_value_buffer(v56, qword_280302C00);
  v57 = sub_2692C77B0();
  v58 = sub_2692C7A00();
  v59 = os_log_type_enabled(v57, v58);
  v177 = v31;
  v171 = a1;
  v153 = v35;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v181[0] = v61;
    *v60 = 136315138;
    sub_2692C7610();
    v62 = sub_2692C7370();
    v64 = v63;
    (*(v174 + 8))(v53, v175);
    v65 = sub_26927C4DC(v62, v64, v181);
    v31 = v177;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_269270000, v57, v58, "[UpdateAlarmIntentHandler.updateSleepAlarm] Using default anchor date: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v66 = v61;
    a1 = v171;
    MEMORY[0x26D6368E0](v66, -1, -1);
    MEMORY[0x26D6368E0](v60, -1, -1);
  }

  v67 = [a1 alarm];
  v68 = v178;
  v69 = v30;
  if (v67)
  {
    v70 = v67;
    v71 = [v67 dateTime];

    v72 = v170;
    if (v71)
    {
      sub_2692C7280();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v158 = v68[7];
    v158(v27, v73, 1, v31);
    sub_269280640(v27, v69);
    v176 = v68[6];
    if (v176(v69, 1, v31) != 1)
    {
      (v68[4])(v180, v69, v31);
      goto LABEL_15;
    }
  }

  else
  {
    v158 = v178[7];
    v158(v30, 1, 1, v31);
  }

  v74 = v69;
  v75 = v166;
  sub_2692C74B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v76 = sub_2692C74E0();
  v77 = *(v76 - 8);
  v78 = *(v77 + 72);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2692C9680;
  v81 = *(v77 + 104);
  v81(v80 + v79, *MEMORY[0x277CC9988], v76);
  v81(v80 + v79 + v78, *MEMORY[0x277CC9998], v76);
  v81(v80 + v79 + 2 * v78, *MEMORY[0x277CC9968], v76);
  v81(v80 + v79 + 3 * v78, *MEMORY[0x277CC9980], v76);
  v81(v80 + v79 + 4 * v78, *MEMORY[0x277CC99A0], v76);
  v81(v80 + v79 + 5 * v78, *MEMORY[0x277CC99A8], v76);
  sub_2692A5EEC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7610();
  sub_2692C7460();

  (*(v174 + 8))(v53, v175);
  (*(v167 + 8))(v75, v168);
  v31 = v177;
  v68 = v178;
  v176 = v178[6];
  if (v176(v74, 1, v177) != 1)
  {
    sub_26927CEA8(v74, &qword_280302C48, &qword_2692C9780);
  }

  v72 = v170;
  a1 = v171;
LABEL_15:
  v82 = v169;
  v83 = v169;
  v169 = v68[2];
  v170 = (v68 + 2);
  (v169)(v83, v180, v31);
  v84 = sub_2692C77B0();
  v85 = sub_2692C7A00();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v181[0] = v87;
    *v86 = 136315138;
    v88 = MEMORY[0x26D635790]();
    v90 = v89;
    v91 = v82;
    v92 = v178[1];
    v92(v91, v31);
    v93 = sub_26927C4DC(v88, v90, v181);
    v68 = v178;

    *(v86 + 4) = v93;
    _os_log_impl(&dword_269270000, v84, v85, "[UpdateAlarmIntentHandler.updateSleepAlarm] Inferring proposed time using anchor: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    v94 = v87;
    a1 = v171;
    MEMORY[0x26D6368E0](v94, -1, -1);
    MEMORY[0x26D6368E0](v86, -1, -1);
  }

  else
  {

    v95 = v82;
    v92 = v68[1];
    v92(v95, v31);
  }

  v96 = v173;
  v97 = [a1 proposedTime];
  v98 = v175;
  if (v97)
  {
    v99 = v97;
    sub_2692C7280();

    v100 = 0;
  }

  else
  {
    v100 = 1;
  }

  v101 = v158;
  v158(v96, v100, 1, v31);
  v102 = v179;
  (v169)(v179, v180, v31);
  v101(v102, 0, 1, v31);
  v103 = [a1 proposedMeridiemSetByUser];
  v171 = v92;
  if (v103)
  {
    v104 = v103;
    LODWORD(v158) = [v103 BOOLValue];
  }

  else
  {
    LODWORD(v158) = 0;
  }

  sub_2692C7610();
  v105 = v159;
  sub_26927883C(v179, 1, v53, v159);
  v106 = v174;
  v107 = *(v174 + 8);
  v107(v53, v98);
  if (v176(v105, 1, v31) == 1)
  {
    sub_26927CEA8(v105, &qword_280302C48, &qword_2692C9780);
    sub_2692C7610();
    v108 = v98;
    v109 = v31;
    v110 = v161;
    v111 = v173;
    sub_26927883C(v173, v158, v53, v161);
    v107(v53, v108);
    v112 = v171;
  }

  else
  {
    (v68[4])(v160, v105, v31);
    v113 = v166;
    sub_2692C74B0();
    sub_2692C7480();
    (*(v167 + 8))(v113, v168);
    v114 = *(v106 + 48);
    if (v114(v72, 1, v98) == 1)
    {
      v115 = v151;
      sub_2692C7610();
      v116 = v115;
      if (v114(v72, 1, v98) != 1)
      {
        sub_26927CEA8(v72, &qword_280302C60, &qword_2692C96E0);
      }
    }

    else
    {
      v116 = v151;
      (*(v106 + 32))(v151, v72, v98);
    }

    v110 = v161;
    v111 = v173;
    sub_26927883C(v173, v158, v116, v161);
    v107(v116, v98);
    v109 = v177;
    v112 = v171;
    v171(v160, v177);
  }

  sub_26927CEA8(v179, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v111, &qword_280302C48, &qword_2692C9780);
  if (v176(v110, 1, v109) == 1)
  {
    sub_26927CEA8(v110, &qword_280302C48, &qword_2692C9780);
    v117 = sub_2692C77B0();
    v118 = sub_2692C79F0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_269270000, v117, v118, "[UpdateAlarmIntentHandler.updateSleepAlarm] Failed to infer proposed new time!", v119, 2u);
      MEMORY[0x26D6368E0](v119, -1, -1);
    }

    v120 = sub_2692C7760();
    v182 = v120;
    v183 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v181);
    *boxed_opaque_existential_1 = 0xD00000000000001BLL;
    boxed_opaque_existential_1[1] = 0x80000002692CC980;
    v122 = *MEMORY[0x277D61878];
    v123 = sub_2692C7710();
    (*(*(v123 - 8) + 104))(boxed_opaque_existential_1, v122, v123);
    (*(*(v120 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v120);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v181);
    v124 = [objc_allocWithZone(updated) init];
    v125 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v124[v125] = 5;
    [v124 setUserActivity_];
    v164(v124);

    return (v112)(v180, v177);
  }

  else
  {
    v127 = v162;
    (v68[4])(v162, v110, v109);
    v128 = v153;
    (v169)(v153, v127, v109);
    v129 = sub_2692C77B0();
    v130 = sub_2692C7A00();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v181[0] = v132;
      *v131 = 136315138;
      sub_2692806BC(&qword_280302C78, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v133 = sub_2692C7D30();
      v135 = v134;
      v112(v128, v109);
      v136 = sub_26927C4DC(v133, v135, v181);

      *(v131 + 4) = v136;
      _os_log_impl(&dword_269270000, v129, v130, "[UpdateAlarmIntentHandler.updateSleepAlarm] Proposed new time: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x26D6368E0](v132, -1, -1);
      MEMORY[0x26D6368E0](v131, -1, -1);
    }

    else
    {

      v112(v128, v109);
    }

    sub_2692C7A20();
    v137 = v157;
    v138 = v154;
    sub_2692C7790();
    sub_2692C7780();
    (*(v155 + 8))(v138, v156);
    sub_269275A6C(v137 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager, v181);
    v139 = v182;
    v140 = v183;
    __swift_project_boxed_opaque_existential_1(v181, v182);
    v141 = swift_allocObject();
    v142 = v164;
    v141[2] = v137;
    v141[3] = v142;
    v143 = v163;
    v141[4] = v165;
    v141[5] = v143;
    v144 = *(v140 + 96);
    v145 = v137;

    v146 = v143;
    v147 = v162;
    v144(v162, sub_2692808BC, v141, v139, v140);

    v148 = v177;
    v149 = v171;
    v171(v147, v177);
    v149(v180, v148);
    return __swift_destroy_boxed_opaque_existential_1Tm(v181);
  }
}

void sub_26927B718(char *a1, char *a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v33 = a3;
  v34 = a4;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (v14)
  {
    v16 = sub_2692C7760();
    v36 = v16;
    v37 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    sub_269280704();
    v18 = swift_allocError();
    *v19 = v13;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v20 = *MEMORY[0x277D61838];
    v21 = sub_2692C76A0();
    (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, v20, v21);
    (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v16);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);

    v22 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v23 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v22[v23] = 5;
    [v22 setUserActivity_];
    v33(v22);
  }

  else
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v15(v12, v8);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v35);
    v24 = v36;
    v25 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v26 = swift_allocObject();
    v27 = v33;
    v28 = v34;
    v26[2] = a2;
    v26[3] = v27;
    v26[4] = v28;
    v26[5] = a5;
    v29 = *(v25 + 64);
    v30 = a2;

    v31 = a5;
    v29(sub_269280758, v26, v24, v25);

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }
}

void sub_26927BA98(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, char *a5)
{
  v82 = a5;
  v83 = a4;
  v84 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v78 - v8;
  v10 = sub_2692C7360();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v80 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v81 = &v78 - v16;
  v17 = sub_2692C77A0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v18 + 8))(v21, v17);
  if (v23 == 1)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v24 = sub_2692C77C0();
    __swift_project_value_buffer(v24, qword_280302C00);
    v25 = sub_2692C77B0();
    v26 = sub_2692C79F0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_269270000, v25, v26, "Search sleep alarm failed.", v27, 2u);
      MEMORY[0x26D6368E0](v27, -1, -1);
    }

    v28 = sub_2692C7760();
    v86 = v28;
    v87 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    sub_269280704();
    v30 = swift_allocError();
    *v31 = v22;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v32 = *MEMORY[0x277D61838];
    v33 = sub_2692C76A0();
    (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, v32, v33);
    (*(*(v28 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v28);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v85);

LABEL_19:
    v60 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v61 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v60[v61] = 5;
    [v60 setUserActivity_];
    v84(v60);

    return;
  }

  if (!v22)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v52 = sub_2692C77C0();
    __swift_project_value_buffer(v52, qword_280302C00);
    v53 = sub_2692C77B0();
    v54 = sub_2692C79F0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_269270000, v53, v54, "After changing sleep alarm time, search result got no sleep alarm.", v55, 2u);
      MEMORY[0x26D6368E0](v55, -1, -1);
    }

    v56 = sub_2692C7760();
    v86 = v56;
    v87 = MEMORY[0x277D61908];
    v57 = __swift_allocate_boxed_opaque_existential_1(v85);
    *v57 = 0xD000000000000012;
    v57[1] = 0x80000002692CCA20;
    v58 = *MEMORY[0x277D61878];
    v59 = sub_2692C7710();
    (*(*(v59 - 8) + 104))(v57, v58, v59);
    (*(*(v56 - 8) + 104))(v57, *MEMORY[0x277D618D8], v56);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    goto LABEL_19;
  }

  v34 = v22;
  v35 = v22;
  sub_26927826C(v9);
  v36 = v11;
  v37 = *(v11 + 48);
  v38 = v10;
  if (v37(v9, 1, v10) == 1)
  {
    sub_26927CEA8(v9, &qword_280302C50, &unk_2692C96A0);
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v39 = sub_2692C77C0();
    __swift_project_value_buffer(v39, qword_280302C00);
    v40 = v35;
    v41 = sub_2692C77B0();
    v42 = sub_2692C79F0();
    sub_269274440(v34, 0);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v35;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v85[0] = v45;
      *v44 = 136315138;
      v46 = [v40 description];
      v47 = sub_2692C7830();
      v49 = v48;

      sub_269274440(v34, 0);
      v50 = sub_26927C4DC(v47, v49, v85);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_269270000, v41, v42, "Handled changed sleep alarm, but didn't receive an alarm ID!: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x26D6368E0](v45, -1, -1);
      v51 = v44;
      v35 = v43;
      MEMORY[0x26D6368E0](v51, -1, -1);
    }
  }

  else
  {
    v62 = v81;
    (*(v36 + 32))(v81, v9, v38);
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v63 = sub_2692C77C0();
    __swift_project_value_buffer(v63, qword_280302C00);
    v64 = v80;
    (*(v36 + 16))(v80, v62, v38);
    v65 = sub_2692C77B0();
    v66 = sub_2692C7A00();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85[0] = v79;
      *v67 = 136315138;
      sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v68 = sub_2692C7D30();
      v69 = v38;
      v78 = v38;
      v70 = v36;
      v72 = v71;
      v73 = *(v70 + 8);
      v73(v64, v69);
      v74 = sub_26927C4DC(v68, v72, v85);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_269270000, v65, v66, "Handled changed sleep alarm: %s", v67, 0xCu);
      v75 = v79;
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x26D6368E0](v75, -1, -1);
      MEMORY[0x26D6368E0](v67, -1, -1);

      v73(v81, v78);
    }

    else
    {

      v76 = *(v36 + 8);
      v76(v64, v38);
      v76(v62, v38);
    }
  }

  v77 = v82;
  [v82 setUpdatedAlarm_];
  v84(v77);
  sub_269274440(v34, 0);
}

id UpdateAlarmIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UpdateAlarmIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26927C4DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26927C5A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269280858(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26927C5A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26927C6B4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2692C7BE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26927C6B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26927C700(a1, a2);
  sub_26927C830(&unk_2879E2610);
  return v3;
}

void *sub_26927C700(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26927C91C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2692C7BE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2692C78D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26927C91C(v10, 0);
        result = sub_2692C7B70();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26927C830(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26927C990(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26927C91C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C90, &qword_2692C96E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26927C990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C90, &qword_2692C96E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_26927CA84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for UpdateAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26927CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for UpdateAlarmIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_26927CA84(v9, v10, a3, a4);
}

uint64_t sub_26927CC94(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26927CE40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26927CEA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26927CF08(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v12 = sub_2692C77C0();
  __swift_project_value_buffer(v12, qword_280302C00);
  v13 = sub_2692C77B0();
  v14 = sub_2692C7A00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v47 = v10;
    v16 = a1;
    v17 = a3;
    v18 = v6;
    v19 = v7;
    v20 = a2;
    v21 = v11;
    v22 = v15;
    *v15 = 0;
    _os_log_impl(&dword_269270000, v13, v14, "UpdateAlarmIntentHandler resolving alarm.", v15, 2u);
    v23 = v22;
    v11 = v21;
    a2 = v20;
    v7 = v19;
    v6 = v18;
    a3 = v17;
    a1 = v16;
    v10 = v47;
    MEMORY[0x26D6368E0](v23, -1, -1);
  }

  v24 = [a1 alarm];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2692C77B0();
    v27 = sub_2692C7A00();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      v30 = [v25 identifier];
      if (v30)
      {
        v31 = v30;
        v32 = sub_2692C7830();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v49[0] = v32;
      v49[1] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v42 = sub_2692C7840();
      v44 = sub_26927C4DC(v42, v43, &v48);

      *(v28 + 4) = v44;
      _os_log_impl(&dword_269270000, v26, v27, "UpdateAlarmIntentHandler: Using alarm with ID %s on intent for resolution", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D6368E0](v29, -1, -1);
      MEMORY[0x26D6368E0](v28, -1, -1);
    }

    type metadata accessor for UpdateAlarmAlarmResolutionResult();
    v45 = sub_2692C42D8(v25);
    (a3)[2](a3, v45);
  }

  else
  {
    v35 = [a1 alarmSearch];
    v36 = [a1 operation];
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v10, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v49);
    v37 = v50;
    v38 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v39 = swift_allocObject();
    v39[2] = a2;
    v39[3] = sub_2692808C4;
    v39[4] = v11;
    v39[5] = v36;
    v40 = *(v38 + 56);
    v41 = a2;

    v40(v35, sub_2692808B8, v39, v37, v38);

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }
}

void sub_26927D3B4(void *a1, uint64_t a2)
{
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302C00);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Resolving proposedLabel.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  if ([a1 operation] == 2)
  {
    v8 = [a1 proposedLabel];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() successWithResolvedString_];
    }

    else
    {
      sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
      v10 = [swift_getObjCClassFromMetadata() needsValue];
    }

    (*(a2 + 16))(a2, v10);
  }

  else
  {
    sub_26927CC94(0, &qword_280302C30, 0x277CD4210);
    v10 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2);
  }
}

void sub_26927D5BC(void *a1, uint64_t a2)
{
  v4 = sub_2692C7310();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280302C00);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "Resolving proposedTime.", v16, 2u);
    MEMORY[0x26D6368E0](v16, -1, -1);
  }

  v17 = [a1 operation];
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = [a1 proposedTime];
      if (v18)
      {
        v19 = v18;
        sub_2692C7280();

        sub_2692C7290();
        if ((v20 & 1) == 0)
        {
          v29 = objc_opt_self();
          v30 = sub_2692C7270();
          v31 = [v29 successWithResolvedDateComponents_];

          (*(a2 + 16))(a2, v31);
          (*(v5 + 8))(v12, v4);
          return;
        }

        (*(v5 + 8))(v12, v4);
      }

      v21 = [a1 proposedRecurrence];
      if (v21)
      {
LABEL_11:

        sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
        v22 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
        v35 = v22;
        (*(a2 + 16))(a2, v35);

        return;
      }

LABEL_26:
      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v22 = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_27;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
  }

  else
  {
    v23 = [a1 proposedLabel];
    if (!v23)
    {
      v26 = [a1 proposedTime];
      if (v26)
      {
        v27 = v26;
        sub_2692C7280();

        sub_2692C7290();
        if ((v28 & 1) == 0)
        {
          v32 = objc_opt_self();
          v33 = sub_2692C7270();
          v34 = [v32 successWithResolvedDateComponents_];

          (*(a2 + 16))(a2, v34);
          (*(v5 + 8))(v9, v4);
          return;
        }

        (*(v5 + 8))(v9, v4);
      }

      v21 = [a1 proposedRecurrence];
      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v37 = v24;
  (*(a2 + 16))(a2, v37);
  v25 = v37;
}

void sub_26927DAC8(void *a1, uint64_t a2)
{
  v3 = [a1 proposedMeridiemSetByUser];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedValue_];
    (*(a2 + 16))(a2);
  }

  else
  {
    sub_26927CC94(0, &qword_280302C40, 0x277CD3AB0);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2);
  }
}

void sub_26927DBC8(void *a1, void *a2, char *a3, void (**a4)(void, void))
{
  v136 = a3;
  v7 = sub_2692C77A0();
  v134 = *(v7 - 8);
  v135 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v133 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2692C74F0();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v10);
  v123 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v127 = v117 - v14;
  v15 = sub_2692C73E0();
  v131 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v126 = v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v117 - v20;
  v140 = sub_2692C7310();
  v22 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v23);
  v132 = v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v128 = v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v138 = v117 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = v117 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = v117 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = v117 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v141 = v117 - v45;
  v46 = swift_allocObject();
  *(v46 + 16) = a4;
  _Block_copy(a4);
  v139 = a2;
  v47 = [a2 identifier];
  if (v47)
  {
    v48 = v47;
    v118 = sub_2692C7830();
    v121 = v49;

    v50 = [a1 proposedLabel];
    if (v50)
    {
      v51 = v50;
      v129 = sub_2692C7830();
      v137 = v52;
    }

    else
    {
      v129 = 0;
      v137 = 0;
    }

    v59 = v140;
    v122 = v46;
    v60 = [a1 proposedTime];
    if (v60)
    {
      v61 = v60;
      sub_2692C7280();

      v62 = *(v22 + 56);
      v62(v43, 0, 1, v59);
    }

    else
    {
      v62 = *(v22 + 56);
      v62(v43, 1, 1, v59);
    }

    v63 = [v139 dateTime];
    if (v63)
    {
      v64 = v63;
      sub_2692C7280();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v62(v39, v65, 1, v59);
    v130 = a1;
    v66 = [a1 proposedMeridiemSetByUser];
    if (v66)
    {
      v67 = v66;
      v68 = v15;
      v120 = [v66 BOOLValue];
    }

    else
    {
      v68 = v15;
      v120 = 0;
    }

    sub_2692C7610();
    sub_26927883C(v39, 1, v21, v35);
    v69 = v131;
    v70 = *(v131 + 8);
    v70(v21, v68);
    v71 = *(v22 + 48);
    v72 = v140;
    v117[1] = v22 + 48;
    v117[0] = v71;
    v73 = v71(v35, 1, v140);
    v119 = v22;
    if (v73 == 1)
    {
      sub_26927CEA8(v35, &qword_280302C48, &qword_2692C9780);
      sub_2692C7610();
      sub_26927883C(v43, v120, v21, v141);
      v70(v21, v68);
      v74 = v137;
    }

    else
    {
      (*(v22 + 32))(v132, v35, v72);
      v75 = v123;
      sub_2692C74B0();
      v76 = v127;
      sub_2692C7480();
      (*(v124 + 8))(v75, v125);
      v77 = *(v69 + 48);
      if (v77(v76, 1, v68) == 1)
      {
        v78 = v126;
        sub_2692C7610();
        v79 = v77(v76, 1, v68);
        v80 = v78;
        v74 = v137;
        if (v79 != 1)
        {
          sub_26927CEA8(v76, &qword_280302C60, &qword_2692C96E0);
        }
      }

      else
      {
        v80 = v126;
        (*(v69 + 32))(v126, v76, v68);
        v74 = v137;
      }

      sub_26927883C(v43, v120, v80, v141);
      v70(v80, v68);
      (*(v119 + 8))(v132, v140);
    }

    sub_26927CEA8(v39, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v43, &qword_280302C48, &qword_2692C9780);
    v81 = v130;
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v82 = sub_2692C77C0();
    __swift_project_value_buffer(v82, qword_280302C00);
    v83 = v138;
    sub_26927CE40(v141, v138, &qword_280302C48, &qword_2692C9780);

    v84 = v121;

    v85 = sub_2692C77B0();
    v86 = sub_2692C7A00();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v142[0] = v88;
      *v87 = 136315650;
      v89 = sub_26927C4DC(v118, v84, v142);

      *(v87 + 4) = v89;
      *(v87 + 12) = 2080;
      if (v74)
      {
        v90 = v129;
      }

      else
      {
        v90 = 0;
      }

      if (v74)
      {
        v91 = v74;
      }

      else
      {
        v91 = 0xE000000000000000;
      }

      v92 = sub_26927C4DC(v90, v91, v142);

      *(v87 + 14) = v92;
      *(v87 + 22) = 2080;
      v93 = v138;
      v94 = v128;
      sub_26927CE40(v138, v128, &qword_280302C48, &qword_2692C9780);
      v95 = v140;
      if ((v117[0])(v94, 1, v140) == 1)
      {
        sub_26927CEA8(v94, &qword_280302C48, &qword_2692C9780);
        v96 = 0;
        v97 = 0xE000000000000000;
      }

      else
      {
        v99 = MEMORY[0x26D635790]();
        v100 = v95;
        v96 = v99;
        v97 = v101;
        (*(v119 + 8))(v94, v100);
      }

      v98 = v136;
      sub_26927CEA8(v93, &qword_280302C48, &qword_2692C9780);
      v102 = sub_26927C4DC(v96, v97, v142);

      *(v87 + 24) = v102;
      _os_log_impl(&dword_269270000, v85, v86, "UpdateAlarmIntentHandler alarmId=%s, newLabel=%s, newTime=%s", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v88, -1, -1);
      MEMORY[0x26D6368E0](v87, -1, -1);

      v81 = v130;
    }

    else
    {

      sub_26927CEA8(v83, &qword_280302C48, &qword_2692C9780);
      v98 = v136;
    }

    sub_2692C7A20();
    v103 = v133;
    sub_2692C7790();
    sub_2692C7780();
    (*(v134 + 8))(v103, v135);
    sub_269275A6C(&v98[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], v142);
    v104 = v143;
    v105 = v144;
    __swift_project_boxed_opaque_existential_1(v142, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_2692C9430;
    v107 = v139;
    *(v106 + 32) = v139;
    v108 = v107;
    v109 = [v81 proposedRecurrence];
    if (v109)
    {
      v110 = v109;
      type metadata accessor for AlarmRepeatSchedule();
      v111 = sub_2692C7930();
    }

    else
    {
      v111 = 0;
    }

    v112 = swift_allocObject();
    v112[2] = v98;
    v112[3] = sub_2692808C4;
    v112[4] = v122;
    v113 = *(v105 + 32);
    v114 = v98;

    v116 = v105;
    v115 = v141;
    v113(v106, v129, v137, v141, v111, sub_269280764, v112, v104, v116);

    sub_26927CEA8(v115, &qword_280302C48, &qword_2692C9780);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
  }

  else
  {
    v53 = sub_2692C7760();
    v143 = v53;
    v144 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CCA40;
    v55 = *MEMORY[0x277D61878];
    v56 = sub_2692C7710();
    (*(*(v56 - 8) + 104))(boxed_opaque_existential_1, v55, v56);
    (*(*(v53 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v53);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    v57 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v58 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v57[v58] = 5;
    [v57 setUserActivity_];
    (a4)[2](a4, v57);
  }
}

uint64_t sub_26927E984(void *a1, char *a2, void (**a3)(const void *, char *))
{
  v161 = a2;
  v181 = a1;
  v160 = sub_2692C77A0();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v4);
  v158 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v154 = &v152 - v8;
  v9 = sub_2692C74F0();
  v171 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v170 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v163 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v182 = &v152 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v178 = &v152 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v166 = &v152 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v152 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v173 = &v152 - v30;
  v31 = sub_2692C7310();
  v183 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v164 = &v152 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v167 = &v152 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v175 = &v152 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v184 = &v152 - v46;
  v47 = sub_2692C73E0();
  v179 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47, v48);
  v153 = &v152 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v152 - v52;
  v169 = swift_allocObject();
  *(v169 + 16) = a3;
  updated = type metadata accessor for UpdateAlarmIntentResponse();
  v54 = objc_allocWithZone(updated);
  v157 = a3;
  _Block_copy(a3);
  v55 = [v54 init];
  v56 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v55[v56] = 4;
  v168 = v55;
  [v55 setUserActivity_];
  if (qword_280302AC0 != -1)
  {
    swift_once();
  }

  v57 = sub_2692C77C0();
  v177 = __swift_project_value_buffer(v57, qword_280302C00);
  v58 = sub_2692C77B0();
  v59 = sub_2692C7A00();
  v60 = os_log_type_enabled(v58, v59);
  v156 = v35;
  v165 = v9;
  v174 = v47;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v185 = v62;
    *v61 = 136315138;
    sub_2692C7610();
    v63 = sub_2692C7370();
    v64 = v47;
    v66 = v65;
    (*(v179 + 8))(v53, v64);
    v67 = sub_26927C4DC(v63, v66, &v185);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_269270000, v58, v59, "[UpdateAlarmIntentHandler.updateSleepAlarm] Using default anchor date: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x26D6368E0](v62, -1, -1);
    MEMORY[0x26D6368E0](v61, -1, -1);
  }

  v68 = [v181 alarm];
  v69 = v183;
  v70 = v175;
  v71 = v173;
  if (v68)
  {
    v72 = v68;
    v73 = [v68 dateTime];

    if (v73)
    {
      sub_2692C7280();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v162 = v69[7];
    v162(v28, v74, 1, v31);
    sub_269280640(v28, v71);
    v180 = v69[6];
    if (v180(v71, 1, v31) != 1)
    {
      (v69[4])(v184, v71, v31);
      v82 = v165;
      goto LABEL_15;
    }
  }

  else
  {
    v162 = v183[7];
    v162(v173, 1, 1, v31);
  }

  v75 = v170;
  sub_2692C74B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v76 = sub_2692C74E0();
  v77 = *(v76 - 8);
  v78 = *(v77 + 72);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2692C9680;
  v81 = *(v77 + 104);
  v81(v80 + v79, *MEMORY[0x277CC9988], v76);
  v81(v80 + v79 + v78, *MEMORY[0x277CC9998], v76);
  v81(v80 + v79 + 2 * v78, *MEMORY[0x277CC9968], v76);
  v81(v80 + v79 + 3 * v78, *MEMORY[0x277CC9980], v76);
  v81(v80 + v79 + 4 * v78, *MEMORY[0x277CC99A0], v76);
  v81(v80 + v79 + 5 * v78, *MEMORY[0x277CC99A8], v76);
  sub_2692A5EEC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7610();
  sub_2692C7460();

  (*(v179 + 8))(v53, v174);
  v82 = v165;
  (*(v171 + 8))(v75, v165);
  v69 = v183;
  v83 = v173;
  v180 = v183[6];
  if (v180(v173, 1, v31) != 1)
  {
    sub_26927CEA8(v83, &qword_280302C48, &qword_2692C9780);
  }

  v70 = v175;
LABEL_15:
  v172 = v69[2];
  v173 = (v69 + 2);
  v172(v70, v184, v31);
  v84 = sub_2692C77B0();
  v85 = sub_2692C7A00();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v185 = v87;
    *v86 = 136315138;
    v88 = MEMORY[0x26D635790]();
    v90 = v89;
    v175 = v183[1];
    (v175)(v70, v31);
    v91 = sub_26927C4DC(v88, v90, &v185);
    v69 = v183;

    *(v86 + 4) = v91;
    _os_log_impl(&dword_269270000, v84, v85, "[UpdateAlarmIntentHandler.updateSleepAlarm] Inferring proposed time using anchor: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    MEMORY[0x26D6368E0](v87, -1, -1);
    MEMORY[0x26D6368E0](v86, -1, -1);
  }

  else
  {

    v175 = v69[1];
    (v175)(v70, v31);
  }

  v92 = [v181 proposedTime];
  v93 = v178;
  if (v92)
  {
    v94 = v92;
    sub_2692C7280();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = v162;
  v162(v93, v95, 1, v31);
  v97 = v182;
  v172(v182, v184, v31);
  v96(v97, 0, 1, v31);
  v98 = [v181 proposedMeridiemSetByUser];
  v176 = v31;
  if (v98)
  {
    v99 = v98;
    LODWORD(v181) = [v98 BOOLValue];
  }

  else
  {
    LODWORD(v181) = 0;
  }

  sub_2692C7610();
  v100 = v163;
  sub_26927883C(v182, 1, v53, v163);
  v101 = v179;
  v102 = *(v179 + 8);
  v103 = v174;
  v102(v53, v174);
  v104 = v176;
  if (v180(v100, 1, v176) == 1)
  {
    sub_26927CEA8(v100, &qword_280302C48, &qword_2692C9780);
    sub_2692C7610();
    v105 = v166;
    v106 = v178;
    sub_26927883C(v178, v181, v53, v166);
    v107 = v53;
    v108 = v105;
    v102(v107, v103);
    v109 = v175;
  }

  else
  {
    (v69[4])(v164, v100, v104);
    v110 = v170;
    sub_2692C74B0();
    v111 = v154;
    sub_2692C7480();
    (*(v171 + 8))(v110, v82);
    v112 = *(v101 + 48);
    v113 = v103;
    if (v112(v111, 1, v103) == 1)
    {
      v114 = v153;
      sub_2692C7610();
      v115 = v112(v111, 1, v113) == 1;
      v116 = v111;
      v108 = v166;
      if (!v115)
      {
        sub_26927CEA8(v116, &qword_280302C60, &qword_2692C96E0);
      }
    }

    else
    {
      v114 = v153;
      (*(v101 + 32))(v153, v111, v113);
      v108 = v166;
    }

    v106 = v178;
    sub_26927883C(v178, v181, v114, v108);
    v102(v114, v113);
    v69 = v183;
    v109 = v175;
    v104 = v176;
    (v175)(v164, v176);
  }

  sub_26927CEA8(v182, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v106, &qword_280302C48, &qword_2692C9780);
  if (v180(v108, 1, v104) == 1)
  {
    sub_26927CEA8(v108, &qword_280302C48, &qword_2692C9780);
    v117 = sub_2692C77B0();
    v118 = sub_2692C79F0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_269270000, v117, v118, "[UpdateAlarmIntentHandler.updateSleepAlarm] Failed to infer proposed new time!", v119, 2u);
      MEMORY[0x26D6368E0](v119, -1, -1);
    }

    v120 = sub_2692C7760();
    v186 = v120;
    v187 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
    *boxed_opaque_existential_1 = 0xD00000000000001BLL;
    boxed_opaque_existential_1[1] = 0x80000002692CC980;
    v122 = *MEMORY[0x277D61878];
    v123 = sub_2692C7710();
    (*(*(v123 - 8) + 104))(boxed_opaque_existential_1, v122, v123);
    (*(*(v120 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v120);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v185);
    v124 = [objc_allocWithZone(updated) init];
    v125 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v124[v125] = 5;
    [v124 setUserActivity_];
    v157[2](v157, v124);

    v109(v184, v104);
  }

  else
  {
    v126 = v167;
    (v69[4])(v167, v108, v104);
    v127 = v156;
    v172(v156, v126, v104);
    v128 = sub_2692C77B0();
    v129 = sub_2692C7A00();
    v130 = os_log_type_enabled(v128, v129);
    v175 = v109;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v132 = v109;
      v133 = swift_slowAlloc();
      v185 = v133;
      *v131 = 136315138;
      sub_2692806BC(&qword_280302C78, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v134 = sub_2692C7D30();
      v136 = v135;
      v132(v127, v104);
      v137 = sub_26927C4DC(v134, v136, &v185);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_269270000, v128, v129, "[UpdateAlarmIntentHandler.updateSleepAlarm] Proposed new time: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x26D6368E0](v133, -1, -1);
      MEMORY[0x26D6368E0](v131, -1, -1);
    }

    else
    {

      v109(v127, v104);
    }

    sub_2692C7A20();
    v138 = v161;
    v139 = v158;
    sub_2692C7790();
    sub_2692C7780();
    (*(v159 + 8))(v139, v160);
    sub_269275A6C(&v138[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager], &v185);
    v140 = v186;
    v141 = v187;
    __swift_project_boxed_opaque_existential_1(&v185, v186);
    v142 = swift_allocObject();
    v142[2] = v138;
    v142[3] = sub_26928062C;
    v143 = v168;
    v142[4] = v169;
    v142[5] = v143;
    v144 = *(v141 + 96);
    v145 = v138;

    v146 = v143;
    v147 = v167;
    v144(v167, sub_2692806B0, v142, v140, v141);

    v148 = v147;
    v149 = v175;
    v150 = v176;
    (v175)(v148, v176);
    v149(v184, v150);
    __swift_destroy_boxed_opaque_existential_1Tm(&v185);
  }
}

void sub_26927FD48(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v67 - v12;
  v14 = sub_2692C7360();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v67 - v21;
  _Block_copy(a3);
  _Block_copy(a3);
  v75 = a1;
  v23 = [a1 alarm];
  if (!v23)
  {
    if (qword_280302AC0 != -1)
    {
      swift_once();
    }

    v38 = sub_2692C77C0();
    __swift_project_value_buffer(v38, qword_280302C00);
    v39 = sub_2692C77B0();
    v40 = sub_2692C79F0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_269270000, v39, v40, "Please check resolveAlarm(), alarm slot was NOT resolved.", v41, 2u);
      MEMORY[0x26D6368E0](v41, -1, -1);
    }

    v42 = sub_2692C7760();
    v76[3] = v42;
    v76[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CC920;
    v44 = *MEMORY[0x277D61878];
    v45 = sub_2692C7710();
    (*(*(v45 - 8) + 104))(boxed_opaque_existential_1, v44, v45);
    (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v42);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v46 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
    v47 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v46[v47] = 5;
    [v46 setUserActivity_];
    (a3)[2](a3, v46);

    goto LABEL_26;
  }

  v24 = v23;
  v25 = [v23 sleepAlarmAttribute];
  if (v25)
  {
    v74 = a2;

    sub_26927826C(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_26927CEA8(v13, &qword_280302C50, &unk_2692C96A0);
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v26 = sub_2692C77C0();
      __swift_project_value_buffer(v26, qword_280302C00);
      v27 = v24;
      v28 = sub_2692C77B0();
      v29 = sub_2692C79F0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v76[0] = v31;
        *v30 = 136315138;
        v32 = v27;
        v33 = [v32 description];
        v34 = sub_2692C7830();
        v36 = v35;

        v37 = sub_26927C4DC(v34, v36, v76);

        *(v30 + 4) = v37;
        _os_log_impl(&dword_269270000, v28, v29, "Updating sleep alarm, but it had a malformed alarmId: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x26D6368E0](v31, -1, -1);
        MEMORY[0x26D6368E0](v30, -1, -1);
      }
    }

    else
    {
      v72 = v6;
      (*(v15 + 32))(v22, v13, v14);
      if (qword_280302AC0 != -1)
      {
        swift_once();
      }

      v48 = sub_2692C77C0();
      __swift_project_value_buffer(v48, qword_280302C00);
      (*(v15 + 16))(v19, v22, v14);
      v49 = v24;
      v50 = sub_2692C77B0();
      v51 = sub_2692C7A00();
      v73 = v49;

      if (os_log_type_enabled(v50, v51))
      {
        v70 = v51;
        v71 = v50;
        v52 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v76[0] = v69;
        *v52 = 136315394;
        sub_2692806BC(&qword_280302C58, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v53 = sub_2692C7D30();
        v55 = v54;
        v68 = *(v15 + 8);
        v68(v19, v14);
        v56 = sub_26927C4DC(v53, v55, v76);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = [v73 dateTime];
        if (v57)
        {
          v58 = v57;
          sub_2692C7280();

          v59 = 0;
        }

        else
        {
          v59 = 1;
        }

        v61 = sub_2692C7310();
        (*(*(v61 - 8) + 56))(v9, v59, 1, v61);
        v62 = sub_2692C7840();
        v64 = sub_26927C4DC(v62, v63, v76);

        *(v52 + 14) = v64;
        v65 = v71;
        _os_log_impl(&dword_269270000, v71, v70, "[UpdateAlarmIntentHandler] Sleep alarm being updated. Existing sleepAlarmId = %s, dateTime = %s", v52, 0x16u);
        v66 = v69;
        swift_arrayDestroy();
        MEMORY[0x26D6368E0](v66, -1, -1);
        MEMORY[0x26D6368E0](v52, -1, -1);

        v68(v22, v14);
      }

      else
      {

        v60 = *(v15 + 8);
        v60(v19, v14);
        v60(v22, v14);
      }
    }

    _Block_copy(a3);
    sub_26927E984(v75, v74, a3);
    _Block_release(a3);

LABEL_26:
    _Block_release(a3);
    _Block_release(a3);
    return;
  }

  _Block_copy(a3);
  sub_26927DBC8(v75, v24, a2, a3);
  _Block_release(a3);

  _Block_release(a3);

  _Block_release(a3);
}

uint64_t sub_269280640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692806BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269280704()
{
  result = qword_280302C80;
  if (!qword_280302C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C80);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2692807B8()
{
  result = qword_280302C88;
  if (!qword_280302C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C88);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_269280858(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2692809C0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302C98);
  v1 = __swift_project_value_buffer(v0, qword_280302C98);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269280A88@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(v5, v7);
  v9 = v8;

  if (v9)
  {
    sub_2692C73F0();
  }

  else
  {
    if (qword_280302AC8 != -1)
    {
      swift_once();
    }

    v11 = sub_2692C77C0();
    __swift_project_value_buffer(v11, qword_280302C98);
    v12 = v1;
    v13 = sub_2692C77B0();
    v14 = sub_2692C79F0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = [v12 identifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_2692C7830();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_26927C4DC(v19, v21, &v25);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_269270000, v13, v14, "SiriAlarm+Additions.alarmID.getter Bad alarm identifier: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6368E0](v16, -1, -1);
      MEMORY[0x26D6368E0](v15, -1, -1);
    }

    v23 = sub_2692C7420();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_269280D00(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CE8, "ZH");
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = sub_2692C7420();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(a1, a2);
  if (!v14)
  {
    if (qword_280302AC8 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280302C98);

    v18 = sub_2692C77B0();
    v19 = sub_2692C79F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      if (a2)
      {
        v22 = a2;
      }

      else
      {
        a1 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_26927C4DC(a1, v22, &v29);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_269270000, v18, v19, "SiriAlarm+Additions.doesIdMatch Bad alarm identifier: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6368E0](v21, -1, -1);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    goto LABEL_12;
  }

  v15 = v13;
  v16 = v14;
  sub_269280A88(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_26927CEA8(v7, &qword_280302CE8, "ZH");
LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  if (sub_2692C7400() == v15 && v16 == v25)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_2692C7D60();
  }

  (*(v9 + 8))(v12, v8);
  return v24 & 1;
}

uint64_t SiriAlarm.matches(alarmSearch:searchStatusOverride:)(void *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), int a3)
{
  LODWORD(v222) = a3;
  v223 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v210 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v208 = &v197 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v197 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v215 = &v197 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v216 = &v197 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v207 = &v197 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v212 = &v197 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v206 = &v197 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v209 = &v197 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v213 = &v197 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v217 = &v197 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v197 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v221 = &v197 - v49;
  v50 = sub_2692C7310();
  v51 = *(v50 - 8);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v219 = &v197 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v220 = &v197 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v211 = &v197 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v214 = &v197 - v63;
  MEMORY[0x28223BE20](v62, v64);
  v218 = &v197 - v65;
  v66 = sub_2692C71D0();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v68);
  v70 = &v197 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = [a1 alarmReferenceType];
  if (v71 < 3)
  {
    v72 = [a1 identifier];
    if (v72)
    {
      v76 = v72;
      v73 = sub_2692C7830();
      v75 = v74;

      LOBYTE(v76) = sub_269280D00(v73, v75);

      return v76 & 1;
    }

    v202 = v15;
    v203 = v19;
    v204 = v51;
    v205 = v3;
    v77 = [a1 includeSleepAlarm];
    v78 = sub_2692822D8();
    v79 = sub_2692C7A50();
    v80 = v79;
    if (v77)
    {
      v81 = sub_2692C7A70();

      if (v81)
      {
        v82 = [v205 sleepAlarmAttribute];
        if (v82)
        {

LABEL_92:
          LOBYTE(v76) = 1;
          return v76 & 1;
        }

LABEL_95:
        LOBYTE(v76) = 0;
        return v76 & 1;
      }
    }

    else
    {
    }

    v88 = [a1 label];
    v200 = v78;
    if (v88)
    {
      v201 = v50;
      v89 = v88;
      v90 = sub_2692C7830();
      v92 = v91;

      v224 = v90;
      v225 = v92;
      sub_2692C71B0();
      sub_2692807B8();
      sub_2692C7A90();
      v93 = *(v67 + 8);
      v93(v70, v66);

      v94 = sub_2692C7850();
      v96 = v95;

      v97 = [v205 label];
      if (!v97)
      {

        LOBYTE(v76) = 0;
        return v76 & 1;
      }

      v198 = v94;
      v98 = v97;
      v99 = sub_2692C7830();
      v199 = v96;
      v100 = v99;
      v102 = v101;

      v224 = v100;
      v225 = v102;
      sub_2692C71B0();
      sub_2692C7A90();
      v93(v70, v66);

      v103 = sub_2692C7850();
      v105 = v104;
      v106 = v199;

      if (v198 == v103 && v106 == v105)
      {

        v50 = v201;
      }

      else
      {
        v107 = sub_2692C7D60();

        v50 = v201;
        if ((v107 & 1) == 0)
        {
          goto LABEL_95;
        }
      }
    }

    v108 = v223;
    if (v222)
    {
      v108 = [a1 alarmSearchStatus];
    }

    v109 = v205;
    v110 = v204;
    if (v108 <= 1)
    {
      v114 = v221;
      if (!v108)
      {
        goto LABEL_39;
      }

      if (v108 == 1)
      {
        v115 = [v205 enabled];
        if (!v115)
        {
          goto LABEL_95;
        }

        v116 = v115;
        v117 = [v115 BOOLValue];

        if ((v117 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (v108 == 2)
      {
        v118 = [v205 enabled];
        v114 = v221;
        if (v118)
        {
          v119 = v118;
          v120 = [v118 BOOLValue];

          if (v120)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_39;
      }

      if (v108 == 3)
      {
        v111 = [v205 firing];
        if (!v111)
        {
          goto LABEL_95;
        }

        v112 = v111;
        v113 = [v111 BOOLValue];

        v114 = v221;
        if ((v113 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_39:
        v121 = [a1 repeatSchedule];
        if (!v121)
        {
          goto LABEL_47;
        }

        v122 = v121;
        type metadata accessor for AlarmRepeatSchedule();
        v123 = sub_2692C7930();

        v124 = [v109 repeatSchedule];
        if (v124)
        {
          v125 = v124;
          v126 = sub_2692C7930();

          v127 = sub_2692A86A0(v126);

          if (v123 >> 62)
          {
            if (sub_2692C7C60())
            {
LABEL_43:
              v128 = sub_2692A87CC(v127, v123);

              if ((v128 & 1) == 0)
              {
                goto LABEL_95;
              }

LABEL_47:
              v129 = [a1 timeRange];
              if (!v129)
              {
                v133 = *(v110 + 56);
                v133(v114, 1, 1, v50);
                goto LABEL_61;
              }

              v130 = v129;
              v131 = [v129 startDateComponents];

              if (v131)
              {
                sub_2692C7280();

                v132 = 0;
              }

              else
              {
                v132 = 1;
              }

              v223 = *(v110 + 56);
              v223(v47, v132, 1, v50);
              sub_269280640(v47, v114);
              v134 = v110;
              v135 = *(v110 + 48);
              if (v135(v114, 1, v50) != 1)
              {
                v222 = v135;
                v136 = v114;
                v137 = *(v110 + 32);
                v138 = v218;
                v137(v218, v136, v50);
                v139 = [a1 timeRange];
                if (!v139)
                {
                  (*(v134 + 8))(v138, v50);
                  v114 = v217;
                  v133 = v223;
                  v223(v217, 1, 1, v50);
                  v110 = v134;
                  goto LABEL_61;
                }

                v201 = v50;
                v140 = v139;
                v141 = [v139 endDateComponents];

                if (v141)
                {
                  v142 = v213;
                  sub_2692C7280();

                  v143 = 0;
                }

                else
                {
                  v143 = 1;
                  v142 = v213;
                }

                v144 = 1;
                v145 = v201;
                v146 = v222;
                v223(v142, v143, 1, v201);
                v147 = v142;
                v148 = v217;
                sub_269280640(v147, v217);
                if (v146(v148, 1, v145) != 1)
                {
                  v137(v214, v148, v145);
                  v168 = sub_2692C74F0();
                  (*(*(v168 - 8) + 56))(v208, 1, 1, v168);
                  v169 = sub_2692C7500();
                  (*(*(v169 - 8) + 56))(v210, 1, 1, v169);
                  v170 = v211;
                  sub_2692C72F0();
                  v171 = [v109 dateTime];
                  v172 = v206;
                  if (v171)
                  {
                    v173 = v171;
                    sub_2692C7280();

                    v144 = 0;
                  }

                  v174 = v223;
                  v175 = v201;
                  v223(v172, v144, 1, v201);
                  v176 = v209;
                  sub_269280640(v172, v209);
                  if (!v222(v176, 1, v175))
                  {
                    sub_2692C7290();
                  }

                  sub_26927CEA8(v176, &qword_280302C48, &qword_2692C9780);
                  sub_2692C72A0();
                  v177 = [v205 dateTime];
                  if (v177)
                  {
                    v178 = v207;
                    v179 = v177;
                    sub_2692C7280();

                    v180 = 0;
                  }

                  else
                  {
                    v180 = 1;
                    v178 = v207;
                  }

                  v174(v178, v180, 1, v175);
                  v181 = v212;
                  sub_269280640(v178, v212);
                  if (!v222(v181, 1, v175))
                  {
                    sub_2692C72B0();
                  }

                  v182 = v204;
                  v183 = v218;
                  sub_26927CEA8(v181, &qword_280302C48, &qword_2692C9780);
                  sub_2692C72C0();
                  v184 = v214;
                  LOBYTE(v76) = sub_26927607C();
                  v185 = *(v182 + 8);
                  v185(v170, v175);
                  v185(v184, v175);
                  v185(v183, v175);
                  return v76 & 1;
                }

                v110 = v204;
                (*(v204 + 8))(v218, v145);
                v50 = v145;
                v114 = v148;
              }

              v133 = v223;
LABEL_61:
              sub_26927CEA8(v114, &qword_280302C48, &qword_2692C9780);
              v149 = [a1 time];
              v150 = v220;
              if (!v149)
              {
                goto LABEL_92;
              }

              v151 = v219;
              v152 = v149;
              sub_2692C7280();

              (*(v110 + 32))(v150, v151, v50);
              v153 = sub_2692C7290();
              if (v154)
              {
                goto LABEL_85;
              }

              v155 = v153;
              v156 = [v205 dateTime];
              if (v156)
              {
                v157 = v215;
                v158 = v156;
                sub_2692C7280();

                v159 = 0;
              }

              else
              {
                v159 = 1;
                v157 = v215;
              }

              v133(v157, v159, 1, v50);
              v160 = v216;
              sub_269280640(v157, v216);
              if ((*(v110 + 48))(v160, 1, v50))
              {
                sub_26927CEA8(v160, &qword_280302C48, &qword_2692C9780);
LABEL_85:
                v186 = sub_2692C72B0();
                if (v187)
                {
                  (*(v110 + 8))(v150, v50);
                  goto LABEL_92;
                }

                v188 = v186;
                v189 = [v205 dateTime];
                if (v189)
                {
                  v190 = v202;
                  v191 = v189;
                  sub_2692C7280();

                  v192 = 0;
                }

                else
                {
                  v192 = 1;
                  v190 = v202;
                }

                v133(v190, v192, 1, v50);
                v193 = v203;
                sub_269280640(v190, v203);
                if ((*(v110 + 48))(v193, 1, v50))
                {
                  (*(v110 + 8))(v150, v50);
                  sub_26927CEA8(v193, &qword_280302C48, &qword_2692C9780);
                  goto LABEL_92;
                }

                v194 = sub_2692C72B0();
                v196 = v195;
                (*(v110 + 8))(v150, v50);
                sub_26927CEA8(v193, &qword_280302C48, &qword_2692C9780);
                if ((v196 & 1) != 0 || v188 == v194)
                {
                  goto LABEL_92;
                }

                goto LABEL_95;
              }

              v161 = sub_2692C7290();
              v163 = v162;
              sub_26927CEA8(v160, &qword_280302C48, &qword_2692C9780);
              if (v163)
              {
                goto LABEL_85;
              }

              v164 = [a1 isMeridianInferred];
              v165 = sub_2692C7A50();
              v166 = v165;
              if (v164)
              {
                v167 = sub_2692C7A70();

                if (v167)
                {
                  if (v155 % 12 == v161 % 12)
                  {
                    goto LABEL_85;
                  }

LABEL_72:
                  (*(v110 + 8))(v150, v50);
                  LOBYTE(v76) = 0;
                  return v76 & 1;
                }
              }

              else
              {
              }

              if (v155 == v161)
              {
                goto LABEL_85;
              }

              goto LABEL_72;
            }
          }

          else if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }
        }

        goto LABEL_47;
      }

      v114 = v221;
      if (v108 == 4)
      {
        goto LABEL_39;
      }
    }

    while (1)
    {
      v224 = v108;
LABEL_97:
      v108 = sub_2692C7D80();
      __break(1u);
    }
  }

  if (v71 != 3)
  {
    v224 = v71;
    goto LABEL_97;
  }

  v83 = [v3 sleepAlarmAttribute];
  if (!v83)
  {
    goto LABEL_92;
  }

  v76 = [a1 includeSleepAlarm];
  sub_2692822D8();
  v84 = sub_2692C7A50();
  v85 = v84;
  if (v76)
  {
    v86 = sub_2692C7A70();

    return v86 & 1;
  }

  return v76 & 1;
}

unint64_t sub_2692822D8()
{
  result = qword_280302CC0;
  if (!qword_280302CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280302CC0);
  }

  return result;
}

uint64_t SiriAlarm.isEqual(_:)(uint64_t a1)
{
  v3 = sub_2692C7310();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CC8, &qword_2692C9728);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v142 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v142 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v142 - v22;
  sub_26927CE40(a1, &v152, &qword_280302CD0, &unk_2692CAE00);
  if (!v154)
  {
    sub_26927CEA8(&v152, &qword_280302CD0, &unk_2692CAE00);
    return 0;
  }

  type metadata accessor for SiriAlarm();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v146 = v8;
  v147 = v20;
  v144 = v7;
  v145 = v16;
  v24 = v151;
  if (qword_280302AC8 != -1)
  {
    swift_once();
  }

  v25 = sub_2692C77C0();
  v26 = __swift_project_value_buffer(v25, qword_280302C98);
  v27 = v1;
  v28 = sub_2692C77B0();
  v29 = sub_2692C7A00();

  v30 = os_log_type_enabled(v28, v29);
  v148 = v23;
  v149 = v4;
  v150 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v152 = v142;
    *v31 = 136315138;
    v32 = v27;
    v33 = [v32 description];
    v34 = v26;
    v35 = sub_2692C7830();
    v143 = v11;
    v36 = v3;
    v37 = v24;
    v39 = v38;

    v40 = v35;
    v26 = v34;
    v41 = sub_26927C4DC(v40, v39, &v152);
    v24 = v37;
    v3 = v36;
    v11 = v143;

    *(v31 + 4) = v41;
    v27 = v150;
    _os_log_impl(&dword_269270000, v28, v29, "testing equality for SiriAlarm: %s", v31, 0xCu);
    v42 = v142;
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    MEMORY[0x26D6368E0](v42, -1, -1);
    MEMORY[0x26D6368E0](v31, -1, -1);
  }

  v43 = [v27 label];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2692C7830();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = [v24 label];
  if (!v48)
  {
    if (!v47)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v49 = v48;
  v50 = sub_2692C7830();
  v52 = v51;

  if (!v47)
  {
    if (!v52)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (!v52)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v45 == v50 && v47 == v52)
  {

    goto LABEL_25;
  }

  v63 = sub_2692C7D60();

  if ((v63 & 1) == 0)
  {
LABEL_21:
    v53 = v24;
    v54 = sub_2692C77B0();
    v55 = sub_2692C7A00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v151 = v57;
      *v56 = 136315138;
      v58 = [v53 label];
      if (v58)
      {
        v59 = v58;
        v60 = sub_2692C7830();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v152 = v60;
      v153 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v73 = sub_2692C7840();
      v75 = sub_26927C4DC(v73, v74, &v151);

      *(v56 + 4) = v75;
      v76 = "label doesn't match against: %s";
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_25:
  v64 = v26;
  v65 = [v150 enabled];
  v66 = [v24 enabled];
  v67 = v66;
  if (!v65)
  {
    if (!v66)
    {
      goto LABEL_30;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!v66)
  {
    v67 = v65;
    goto LABEL_37;
  }

  sub_2692822D8();
  v68 = sub_2692C7A70();

  if ((v68 & 1) == 0)
  {
LABEL_38:
    v53 = v24;
    v54 = sub_2692C77B0();
    v55 = sub_2692C7A00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v152 = v57;
      *v56 = 136315138;
      v151 = [v53 enabled];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD8, &unk_2692C9730);
      v77 = sub_2692C7840();
      v79 = sub_26927C4DC(v77, v78, &v152);

      *(v56 + 4) = v79;
      v76 = "enabled doesn't match against: %s";
LABEL_47:
      _os_log_impl(&dword_269270000, v54, v55, v76, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x26D6368E0](v57, -1, -1);
      MEMORY[0x26D6368E0](v56, -1, -1);

      return 0;
    }

    goto LABEL_92;
  }

LABEL_30:
  v69 = [v150 firing];
  v70 = [v24 firing];
  v71 = v70;
  if (!v69)
  {
    if (!v70)
    {
      goto LABEL_41;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!v70)
  {
    v71 = v69;
    goto LABEL_44;
  }

  sub_2692822D8();
  v72 = sub_2692C7A70();

  if ((v72 & 1) == 0)
  {
LABEL_45:
    v53 = v24;
    v54 = sub_2692C77B0();
    v55 = sub_2692C7A00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v152 = v57;
      *v56 = 136315138;
      v151 = [v53 firing];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD8, &unk_2692C9730);
      v83 = sub_2692C7840();
      v85 = sub_26927C4DC(v83, v84, &v152);

      *(v56 + 4) = v85;
      v76 = "firing doesn't match against: %s";
      goto LABEL_47;
    }

LABEL_92:

    return 0;
  }

LABEL_41:
  v80 = [v150 repeatSchedule];
  if (v80)
  {
    v81 = v80;
    type metadata accessor for AlarmRepeatSchedule();
    v82 = sub_2692C7930();
  }

  else
  {
    v82 = 0;
  }

  v86 = [v24 repeatSchedule];
  v87 = v150;
  if (!v86)
  {
    if (!v82)
    {
      goto LABEL_66;
    }

    goto LABEL_55;
  }

  v88 = v86;
  v89 = type metadata accessor for AlarmRepeatSchedule();
  v90 = sub_2692C7930();

  if (v82)
  {
    if (v90)
    {
      v91 = sub_2692834F0(v82, v90);

      if (v91)
      {
LABEL_53:

        goto LABEL_66;
      }

      goto LABEL_63;
    }

LABEL_55:
    if (v82 >> 62)
    {
      v92 = sub_2692C7C60();
    }

    else
    {
      v92 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v92)
    {
      v93 = sub_2692C77B0();
      v94 = sub_2692C7A00();
      if (!os_log_type_enabled(v93, v94))
      {
LABEL_79:

        return 0;
      }

      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_269270000, v93, v94, "repeatSchedule doesn't match against: nil", v95, 2u);
LABEL_65:
      MEMORY[0x26D6368E0](v95, -1, -1);
      goto LABEL_79;
    }

    goto LABEL_66;
  }

  if (v90)
  {
    if (v90 >> 62)
    {
      if (!sub_2692C7C60())
      {
        goto LABEL_53;
      }
    }

    else if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_63:

    v93 = sub_2692C77B0();
    v96 = sub_2692C7A00();

    if (!os_log_type_enabled(v93, v96))
    {

      goto LABEL_79;
    }

    v97 = v89;
    v95 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v152 = v98;
    *v95 = 136315138;
    v99 = MEMORY[0x26D635E70](v90, v97);
    v101 = v100;

    v102 = sub_26927C4DC(v99, v101, &v152);

    *(v95 + 4) = v102;
    _os_log_impl(&dword_269270000, v93, v96, "repeatSchedule doesn't match against: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x26D6368E0](v98, -1, -1);
    goto LABEL_65;
  }

LABEL_66:
  v103 = [v87 sleepAlarmAttribute];
  v104 = [v24 sleepAlarmAttribute];
  v105 = v104;
  if (!v103)
  {
    if (!v104)
    {
      goto LABEL_71;
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!v104)
  {
    v105 = v103;
    goto LABEL_74;
  }

  type metadata accessor for SleepAlarmAttribute();
  v106 = sub_2692C7A70();

  if ((v106 & 1) == 0)
  {
LABEL_75:
    v53 = v24;
    v54 = sub_2692C77B0();
    v55 = sub_2692C7A00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v151 = v57;
      *v56 = 136315138;
      v111 = [v53 label];
      if (v111)
      {
        v112 = v111;
        v113 = sub_2692C7830();
        v115 = v114;
      }

      else
      {
        v113 = 0;
        v115 = 0;
      }

      v152 = v113;
      v153 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v132 = sub_2692C7840();
      v134 = sub_26927C4DC(v132, v133, &v151);

      *(v56 + 4) = v134;
      v76 = "sleepAlarmAttribute doesn't match against: %s";
      goto LABEL_47;
    }

    goto LABEL_92;
  }

LABEL_71:
  v143 = v64;
  v107 = [v87 dateTime];
  if (v107)
  {
    v108 = v148;
    v109 = v107;
    sub_2692C7280();

    v110 = 0;
  }

  else
  {
    v110 = 1;
    v108 = v148;
  }

  v116 = *(v149 + 56);
  v117 = 1;
  v116(v108, v110, 1, v3);
  v118 = [v24 dateTime];
  v119 = v147;
  if (v118)
  {
    v120 = v118;
    sub_2692C7280();

    v117 = 0;
  }

  v116(v119, v117, 1, v3);
  v121 = *(v146 + 48);
  v122 = v148;
  sub_26927CE40(v148, v11, &qword_280302C48, &qword_2692C9780);
  v150 = v121;
  sub_26927CE40(v119, &v121[v11], &qword_280302C48, &qword_2692C9780);
  v123 = *(v149 + 48);
  if (v123(v11, 1, v3) != 1)
  {
    v124 = v145;
    sub_26927CE40(v11, v145, &qword_280302C48, &qword_2692C9780);
    v125 = v150;
    if (v123(&v150[v11], 1, v3) != 1)
    {
      v135 = v149;
      v136 = v144;
      (*(v149 + 32))(v144, &v125[v11], v3);
      sub_269283730();
      v137 = sub_2692C7810();
      v138 = *(v135 + 8);
      v138(v136, v3);
      sub_26927CEA8(v147, &qword_280302C48, &qword_2692C9780);
      sub_26927CEA8(v148, &qword_280302C48, &qword_2692C9780);
      v138(v124, v3);
      sub_26927CEA8(v11, &qword_280302C48, &qword_2692C9780);
      if (v137)
      {
        goto LABEL_97;
      }

LABEL_89:
      v53 = v24;
      v54 = sub_2692C77B0();
      v55 = sub_2692C7A00();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v151 = v57;
        *v56 = 136315138;
        v126 = [v53 label];
        if (v126)
        {
          v127 = v126;
          v128 = sub_2692C7830();
          v130 = v129;
        }

        else
        {
          v128 = 0;
          v130 = 0;
        }

        v152 = v128;
        v153 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
        v139 = sub_2692C7840();
        v141 = sub_26927C4DC(v139, v140, &v151);

        *(v56 + 4) = v141;
        v76 = "dateTime doesn't match against: %s";
        goto LABEL_47;
      }

      goto LABEL_92;
    }

    sub_26927CEA8(v147, &qword_280302C48, &qword_2692C9780);
    sub_26927CEA8(v148, &qword_280302C48, &qword_2692C9780);
    (*(v149 + 8))(v124, v3);
LABEL_88:
    sub_26927CEA8(v11, &qword_280302CC8, &qword_2692C9728);
    goto LABEL_89;
  }

  sub_26927CEA8(v119, &qword_280302C48, &qword_2692C9780);
  sub_26927CEA8(v122, &qword_280302C48, &qword_2692C9780);
  if (v123(&v150[v11], 1, v3) != 1)
  {
    goto LABEL_88;
  }

  sub_26927CEA8(v11, &qword_280302C48, &qword_2692C9780);
LABEL_97:

  return 1;
}

unint64_t sub_269283398(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_22:
  result = sub_2692C7C60();
  v3 = result;
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](0, v1);
LABEL_6:
    v5 = v4;
    if (v2)
    {
      if (sub_2692C7C60() != 1)
      {
LABEL_8:
        v6 = 0;
        while (1)
        {
          v7 = v3 == v6;
          if (v3 == v6)
          {
            goto LABEL_19;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x26D6360D0](v6, v1);
          }

          else
          {
            if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v8 = *(v1 + 8 * v6 + 32);
          }

          v9 = v8;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          type metadata accessor for SiriAlarm();
          v2 = sub_2692C7A70();

          ++v6;
          if ((v2 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_8;
    }

    v7 = 1;
LABEL_19:

    return v7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692834F0(unint64_t a1, unint64_t a2)
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

    v4 = type metadata accessor for AlarmRepeatSchedule();
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
          v15 = MEMORY[0x26D6360D0](v12 - 4, v3);
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

        v16 = MEMORY[0x26D6360D0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2692C7A70();

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
      v18 = sub_2692C7A70();

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
    v5 = sub_2692C7C60();
  }

  result = sub_2692C7C60();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_269283730()
{
  result = qword_280302CE0;
  if (!qword_280302CE0)
  {
    sub_2692C7310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302CE0);
  }

  return result;
}

uint64_t sub_26928378C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302CF0);
  v1 = __swift_project_value_buffer(v0, qword_280302CF0);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269283854(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_2692C78B0();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_269283904(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2692C7D20() & 1;
  }
}

uint64_t _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CE8, "ZH");
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v131 - v6);
  v8 = sub_2692C7200();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  *&v138 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v131 - v14;
  MEMORY[0x28223BE20](v16 - 8, v17);
  *&v137 = &v131 - v18;
  v19 = sub_2692C7250();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  MEMORY[0x28223BE20](v22, v23);
  v26 = &v131 - v25;
  if (!a2)
  {
    if (qword_280302AD0 != -1)
    {
      swift_once();
    }

    v59 = sub_2692C77C0();
    __swift_project_value_buffer(v59, qword_280302CF0);
    v60 = sub_2692C77B0();
    v61 = sub_2692C7A00();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_269270000, v60, v61, "AlarmID.alarmUUID input identifier was nil!", v62, 2u);
      MEMORY[0x26D6368E0](v62, -1, -1);
    }

    return 0;
  }

  v132 = v15;
  v133 = v24;
  v135 = v7;
  v136 = v9;
  if (qword_280302AD0 != -1)
  {
    swift_once();
  }

  v27 = sub_2692C77C0();
  v28 = __swift_project_value_buffer(v27, qword_280302CF0);

  v29 = sub_2692C77B0();
  v30 = sub_2692C7A00();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v134 = v20;
    v33 = v19;
    v34 = v8;
    v35 = v28;
    v36 = v32;
    *&v139 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_26927C4DC(a1, a2, &v139);
    _os_log_impl(&dword_269270000, v29, v30, "AlarmID.alarmUUID parsing identifier from potential alarm URL: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v37 = v36;
    v28 = v35;
    v8 = v34;
    v19 = v33;
    v20 = v134;
    MEMORY[0x26D6368E0](v37, -1, -1);
    MEMORY[0x26D6368E0](v31, -1, -1);
  }

  v38 = sub_2692C78E0();

  if (v38)
  {
    v39 = sub_2692C78A0();
    v40 = sub_269283854(v39, a1, a2);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    a1 = MEMORY[0x26D635DA0](v40, v42, v44, v46);
    a2 = v47;
  }

  *&v139 = a1;
  *(&v139 + 1) = a2;
  v142[0] = 0xD000000000000014;
  v142[1] = 0x80000002692CC780;
  v48 = sub_2692807B8();
  v49 = sub_2692C7AB0();

  if ((v49 & 1) == 0)
  {
LABEL_18:
    v63 = v137;
    sub_2692C7240();
    if ((*(v20 + 48))(v63, 1, v19) == 1)
    {
LABEL_30:
      *&v139 = a1;
      *(&v139 + 1) = a2;
      strcpy(v142, "x-apple-clock");
      HIWORD(v142[1]) = -4864;
      if (sub_2692C7AB0())
      {

        v80 = sub_2692C77B0();
        v81 = sub_2692C79F0();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v139 = v83;
          *v82 = 136315394;
          *(v82 + 4) = sub_26927C4DC(0x2D656C7070612D78, 0xED00006B636F6C63, &v139);
          *(v82 + 12) = 2080;
          *(v82 + 14) = sub_26927C4DC(a1, a2, &v139);
          _os_log_impl(&dword_269270000, v80, v81, "AlarmID.alarmUUID identifier is in an unexpected format, attempting detection of ID in %s in %s", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6368E0](v83, -1, -1);
          MEMORY[0x26D6368E0](v82, -1, -1);
        }

        *&v139 = a1;
        *(&v139 + 1) = a2;

        v84 = MEMORY[0x26D635FF0](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v48);

        v85 = *(v84 + 16);
        if (v85)
        {
          v86 = v84 + 32 * v85;
          v138 = *v86;
          v87 = *(v86 + 16);
          v88 = *(v86 + 24);

          v139 = v138;
          v140 = v87;
          v141 = v88;
          *&v138 = sub_269284A80();
          v89 = MEMORY[0x26D635FF0](63, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40]);

          v90 = v89[2];
          if (v90)
          {
            if (sub_269283904(v89[4], v89[5], v89[6], v89[7], 0x6D72616C61, 0xE500000000000000))
            {
              v91 = &v89[4 * v90];
              v137 = *v91;
              v92 = v91[2];
              v93 = v91[3];

              v139 = v137;
              v140 = v92;
              v141 = v93;
              v94 = MEMORY[0x26D635FF0](38, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v138);

              *&v137 = *(v94 + 16);
              if (v137)
              {
                v135 = v28;
                v136 = v48;
                v95 = 0;
                v96 = (v94 + 56);
                while (1)
                {
                  if (v95 >= *(v94 + 16))
                  {
                    __break(1u);
                    goto LABEL_71;
                  }

                  v97 = a1;
                  v98 = *(v96 - 3);
                  v99 = *(v96 - 2);
                  v100 = *(v96 - 1);
                  v101 = *v96;
                  *&v139 = v98;
                  *(&v139 + 1) = v99;
                  v140 = v100;
                  v141 = v101;
                  v142[0] = 4023401;
                  v142[1] = 0xE300000000000000;

                  if (sub_2692C7AB0())
                  {
                    break;
                  }

                  ++v95;
                  v96 += 4;
                  a1 = v97;
                  if (v137 == v95)
                  {
                    goto LABEL_63;
                  }
                }

                *&v139 = v98;
                *(&v139 + 1) = v99;
                v140 = v100;
                v141 = v101;
                v117 = MEMORY[0x26D635FF0](61, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v138);

                v118 = *(v117 + 16);
                if (!v118)
                {
                  a1 = v97;
                  goto LABEL_63;
                }

                if (v118 > *(v117 + 16))
                {
                  goto LABEL_73;
                }

                v119 = (v117 + 32 * v118);
                v120 = *v119;
                v121 = v119[1];
                v122 = v119[2];
                v123 = v119[3];

                a1 = MEMORY[0x26D635DA0](v120, v121, v122, v123);

                return a1;
              }
            }
          }
        }

LABEL_63:
      }

      else
      {
        v102 = v135;
        sub_2692C73F0();
        v103 = sub_2692C7420();
        v104 = (*(*(v103 - 8) + 48))(v102, 1, v103);
        sub_26927CEA8(v102, &qword_280302CE8, "ZH");
        if (v104 != 1)
        {

          v105 = sub_2692C77B0();
          v106 = sub_2692C79D0();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *&v139 = v108;
            *v107 = 136315138;

            v109 = sub_26927C4DC(a1, a2, &v139);

            *(v107 + 4) = v109;
            _os_log_impl(&dword_269270000, v105, v106, "AlarmID.alarmUUID received raw UUID string for alarm identifier: %s", v107, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            MEMORY[0x26D6368E0](v108, -1, -1);
            MEMORY[0x26D6368E0](v107, -1, -1);
          }

          return a1;
        }
      }

      v126 = sub_2692C77B0();
      v127 = sub_2692C79F0();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *&v139 = v129;
        *v128 = 136315138;
        v130 = sub_26927C4DC(a1, a2, &v139);

        *(v128 + 4) = v130;
        _os_log_impl(&dword_269270000, v126, v127, "AlarmID.alarmUUID identifier was in an unexpected format that we cannot parse: %s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x26D6368E0](v129, -1, -1);
        MEMORY[0x26D6368E0](v128, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    (*(v20 + 32))(v26, v63, v19);
    v64 = sub_2692C7230();
    if (!v65)
    {
      (*(v20 + 8))(v26, v19);
      goto LABEL_30;
    }

    *&v137 = v26;
    *&v139 = v64;
    *(&v139 + 1) = v65;
    strcpy(v142, "x-apple-clock");
    HIWORD(v142[1]) = -4864;
    v66 = sub_2692C7AB0();

    if (v66)
    {
      if (sub_2692C7220() == 0x6D72616C61 && v67 == 0xE500000000000000)
      {

LABEL_27:

        v69 = v133;
        v70 = v137;
        (*(v20 + 16))(v133, v137, v19);
        v71 = sub_2692C77B0();
        v72 = sub_2692C7A00();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v139 = v74;
          *v73 = 136315138;
          sub_269284AD4();
          v75 = sub_2692C7D30();
          v77 = v76;
          v135 = *(v20 + 8);
          v135(v69, v19);
          v78 = sub_26927C4DC(v75, v77, &v139);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_269270000, v71, v72, "AlarmID.alarmUUID identifier successfully converts to URL: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          v79 = v74;
          v70 = v137;
          MEMORY[0x26D6368E0](v79, -1, -1);
          MEMORY[0x26D6368E0](v73, -1, -1);
        }

        else
        {

          v135 = *(v20 + 8);
          v135(v69, v19);
        }

        result = sub_2692C7210();
        v110 = result;
        if (!result)
        {
          v135(v70, v19);
          return 0;
        }

        v133 = v19;
        v134 = v20;
        v111 = *(result + 16);
        v112 = v136;
        if (v111)
        {
          v113 = 0;
          v114 = (v136 + 8);
          while (v113 < *(v110 + 16))
          {
            (*(v112 + 16))(v138, v110 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v113, v8);
            if (sub_2692C71E0() == 25705 && v115 == 0xE200000000000000)
            {

LABEL_61:

              v124 = v136 + 32;
              v125 = v132;
              (*(v136 + 32))(v132, v138, v8);
              a1 = sub_2692C71F0();
              (*(v124 - 24))(v125, v8);
              v135(v137, v133);
              return a1;
            }

            v116 = sub_2692C7D60();

            if (v116)
            {
              goto LABEL_61;
            }

            ++v113;
            result = (*v114)(v138, v8);
            v112 = v136;
            if (v111 == v113)
            {
              goto LABEL_55;
            }
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_55:
        v135(v137, v133);

        return 0;
      }

      v68 = sub_2692C7D60();

      if (v68)
      {
        goto LABEL_27;
      }
    }

    (*(v20 + 8))(v137, v19);
    goto LABEL_30;
  }

  *&v139 = a1;
  *(&v139 + 1) = a2;

  v50 = MEMORY[0x26D635FF0](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v48);

  v51 = a1;
  v52 = *(v50 + 16);
  if (!v52)
  {

    a1 = v51;
    goto LABEL_18;
  }

  if (v52 <= *(v50 + 16))
  {
    v54 = (v50 + 32 * v52);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[2];
    v58 = v54[3];

    a1 = MEMORY[0x26D635DA0](v55, v56, v57, v58);

    return a1;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AlarmID(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlarmID(_WORD *result, int a2, int a3)
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

unint64_t sub_269284A80()
{
  result = qword_280302D10;
  if (!qword_280302D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302D10);
  }

  return result;
}

unint64_t sub_269284AD4()
{
  result = qword_280302D18;
  if (!qword_280302D18)
  {
    sub_2692C7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302D18);
  }

  return result;
}

uint64_t sub_269284B2C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2692C7B00();
    v5 = v4;
    v6 = sub_2692C7B50();
    v8 = v7;
    v9 = MEMORY[0x26D636040](v3, v5, v6, v7);
    sub_269284F04(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_269284F04(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2692C7AF0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_269284F10(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_269284F04(v3, v5, v2 != 0);
  return v12;
}

void sub_269284C78(uint64_t (*a1)(void))
{
  v2 = sub_2692C7360();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(a1(0)) init];
  v8 = sub_2692C76E0();
  v9 = sub_269284B2C(v8);

  if (v9)
  {
    v10 = [v9 alarmURL];

    if (!v10)
    {
      __break(1u);
      return;
    }

    sub_2692C7340();

    sub_2692C7330();
    (*(v3 + 8))(v6, v2);
    v9 = sub_2692C7820();
  }

  [v7 setAlarmId_];

  sub_2692C7700();
  v11 = sub_2692C76C0();
  if (v11)
  {
    v12 = v11;
    v13 = sub_2692C7770();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = sub_2692C7820();

      [v7 setRemoteDeviceId_];
    }

    else
    {
    }
  }

  sub_2692C76F0();
  if (v18)
  {
    v19 = sub_2692C7820();
  }

  else
  {
    v19 = 0;
  }

  [v7 setRemoteExecutionId_];

  sub_2692C76D0();
  v20 = sub_2692C7980();
  [v7 setSkipConfirmation_];
}

uint64_t sub_269284F04(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_269284F10(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D636070](a1, a2, v7);
      sub_269285110();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269285110();
    if (sub_2692C7B20() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2692C7B30();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2692C7A60();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2692C7A70();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_269285110()
{
  result = qword_280302D20;
  if (!qword_280302D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280302D20);
  }

  return result;
}

uint64_t sub_26928515C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_269285208()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D28);
  v1 = __swift_project_value_buffer(v0, qword_280302D28);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ChangeAlarmStatusIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_26928A8F0(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id ChangeAlarmStatusIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_26928A7F4(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id ChangeAlarmStatusIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeAlarmStatusIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v12);
  v0 = type metadata accessor for SiriAlarmManagerImpl(0);
  v1 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v2 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v3 = swift_allocObject();
  *(v1 + v2) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v5 = qword_280303380;
  *(v1 + v4) = qword_280303380;
  sub_269275A30(&v12, v1 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v6 = type metadata accessor for ChangeAlarmStatusIntentHandler();
  v7 = objc_allocWithZone(v6);
  v13 = v0;
  v14 = &protocol witness table for SiriAlarmManagerImpl;
  *&v12 = v1;
  *&v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject] = v5;
  sub_269275A6C(&v12, &v7[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_269285620(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v65 = a2;
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &off_279C54000;
  v12 = [a1 operation];
  v13 = [a1 alarms];
  if (!v13)
  {
LABEL_25:
    if (v12 == 2)
    {
      sub_269275A6C(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v67);
      v25 = v68;
      v26 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v27 = swift_allocObject();
      v27[2] = v65;
      v27[3] = a3;
      v27[4] = a1;
      v27[5] = 2;
      v28 = *(v26 + 56);

      v29 = a1;
      v28(0, sub_26928AA10, v27, v25, v26);

      return __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

    v30 = [a1 alarmSearch];
    if (!v30)
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v52 = sub_2692C77C0();
      __swift_project_value_buffer(v52, qword_280302D28);
      v53 = a1;
      v54 = sub_2692C77B0();
      v55 = sub_2692C79F0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v53;
        v58 = v53;
        _os_log_impl(&dword_269270000, v54, v55, "No alarmSearch found for intent: %@", v56, 0xCu);
        sub_26927CEA8(v57, &qword_280302D50, &qword_2692CAB70);
        MEMORY[0x26D6368E0](v57, -1, -1);
        MEMORY[0x26D6368E0](v56, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2692C9430;
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      *(v59 + 32) = sub_2692BE64C(1);
      v65(v59);
      goto LABEL_38;
    }

    v62 = v30;
    v64 = v3;
    if (qword_280302AD8 == -1)
    {
LABEL_29:
      v63 = a3;
      v31 = sub_2692C77C0();
      __swift_project_value_buffer(v31, qword_280302D28);
      v32 = a1;
      v33 = sub_2692C77B0();
      v34 = sub_2692C7A00();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v67[0] = v61;
        *v35 = 136315138;
        v66 = [v32 v11[233]];
        v36 = sub_2692C7840();
        v38 = v11;
        v39 = sub_26927C4DC(v36, v37, v67);

        *(v35 + 4) = v39;
        v11 = v38;
        _os_log_impl(&dword_269270000, v33, v34, "This is not dismiss request, try to do %s", v35, 0xCu);
        v40 = v61;
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x26D6368E0](v40, -1, -1);
        MEMORY[0x26D6368E0](v35, -1, -1);
      }

      v41 = v64;
      v42 = [v32 v11[233]];
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v10, v6);
      sub_269275A6C(v41 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v67);
      v43 = v68;
      v44 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v45 = swift_allocObject();
      v46 = v62;
      v45[2] = v41;
      v45[3] = v46;
      v47 = v65;
      v45[4] = v42;
      v45[5] = v47;
      v45[6] = v63;
      v48 = *(v44 + 56);

      v49 = v41;
      v50 = v46;
      v48(v46, sub_26928A9F8, v45, v43, v44);

      return __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

LABEL_42:
    swift_once();
    goto LABEL_29;
  }

  v14 = v13;
  type metadata accessor for SiriAlarm();
  v15 = sub_2692C7930();

  v11 = (v15 >> 62);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  if (!sub_2692C7C60())
  {
LABEL_24:

    v11 = &off_279C54000;
    goto LABEL_25;
  }

LABEL_4:
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_2692C77C0();
  __swift_project_value_buffer(v16, qword_280302D28);

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();
  if (os_log_type_enabled(v17, v18))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v11)
    {
      v19 = sub_2692C7C60();
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v19;

    _os_log_impl(&dword_269270000, v17, v18, "ChangeAlarmStatusIntentHandler: Using %ld alarms on intent for resolution", v10, 0xCu);
    MEMORY[0x26D6368E0](v10, -1, -1);

    v20 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
LABEL_20:
      v6 = *(v20 + 16);
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {

    v20 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v6 = sub_2692C7C60();
  if (v6)
  {
LABEL_11:
    v67[0] = MEMORY[0x277D84F90];
    sub_2692C7C10();
    if ((v6 & 0x8000000000000000) == 0)
    {
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      v21 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D6360D0](v21, v15);
        }

        else
        {
          v22 = *(v15 + 8 * v21 + 32);
        }

        v23 = v22;
        ++v21;
        sub_2692C42D8(v22);

        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v6 != v21);

      v24 = v67[0];
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_21:

  v24 = MEMORY[0x277D84F90];
LABEL_22:
  v65(v24);
LABEL_38:
}

void sub_269285E40(uint64_t a1, void (*a2)(uint64_t), unint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v37 = *a1;
  v38 = v10;
  v11 = _s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(&v37);
  v12 = v11;
  if (v11 >> 62)
  {
    if (sub_2692C7C60())
    {
      v18 = sub_2692C7C60();
      if (!v18)
      {

        v17 = MEMORY[0x277D84F90];
LABEL_10:
        a2(v17);

        return;
      }

      v13 = v18;
      v37 = MEMORY[0x277D84F90];
      a4 = &v37;
      sub_2692C7C10();
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_4:
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v14 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x26D6360D0](v14, v12);
          }

          else
          {
            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          sub_2692C42D8(v15);

          sub_2692C7BF0();
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        while (v13 != v14);

        v17 = v37;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      v37 = MEMORY[0x277D84F90];
      sub_2692C7C10();
      goto LABEL_4;
    }
  }

  v19 = [a4 alarmSearch];
  if (!v19)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v31 = sub_2692C77C0();
    __swift_project_value_buffer(v31, qword_280302D28);
    v32 = sub_2692C77B0();
    v33 = sub_2692C79F0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_269270000, v32, v33, "No firing alarms found, but alarmSearch was also nil!", v34, 2u);
      MEMORY[0x26D6368E0](v34, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    *(v17 + 32) = sub_2692BE64C(1);
    goto LABEL_10;
  }

  v20 = v19;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v21 = sub_2692C77C0();
  __swift_project_value_buffer(v21, qword_280302D28);
  v22 = a4;
  v23 = sub_2692C77B0();
  v24 = sub_2692C7A00();

  if (os_log_type_enabled(v23, v24))
  {
    v36 = a3;
    v25 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v25 = 136315138;
    [v22 operation];
    v26 = sub_2692C7840();
    v28 = a2;
    v29 = sub_26927C4DC(v26, v27, &v37);

    *(v25 + 4) = v29;
    a2 = v28;
    _os_log_impl(&dword_269270000, v23, v24, "No firing alarms, try to do %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x26D6368E0](v35, -1, -1);
    v30 = v25;
    a3 = v36;
    MEMORY[0x26D6368E0](v30, -1, -1);
  }

  v37 = v9;
  v38 = v10;
  sub_26928B2EC(&v37, v20, a5, a2, a3);
}

void sub_2692862C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

void sub_26928632C(void *a1, void (*a2)(void))
{
  v3 = [a1 handleSilently];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() successWithResolvedValue_];
  a2();
}

uint64_t sub_2692864B4(uint64_t *a1, uint64_t a2, NSObject *a3, _DWORD *a4, void (*a5)(uint64_t), unint64_t a6)
{
  v19 = a6;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v11 + 8))(v14, v10);
  v20 = v15;
  v21 = v16;
  return sub_26928B2EC(&v20, a3, a4, a5, v19);
}

void sub_26928660C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v11 = sub_2692C77A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v39[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v12 + 8))(v15, v11);
    sub_269275A6C(v5 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v39);
    v22 = v40;
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v24 = swift_allocObject();
    v24[2] = v5;
    v24[3] = a2;
    v24[4] = a3;
    v24[5] = a4;
    v24[6] = a5;
    v25 = *(v23 + 80);
    v26 = v5;
    v27 = a2;

    v25(sub_26928E8B4, v24, v22, v23);
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v12 + 8))(v15, v11);
    sub_269275A6C(v5 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v39);
    v16 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    v18[6] = a5;
    v19 = *(v17 + 88);
    v20 = v5;
    v21 = a2;

    v19(sub_26928E8B8, v18, v16, v17);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return;
  }

  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v28 = sub_2692C77C0();
  __swift_project_value_buffer(v28, qword_280302D28);
  v29 = sub_2692C77B0();
  v30 = sub_2692C79F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_269270000, v29, v30, "Only support .enable, .disable here.", v31, 2u);
    MEMORY[0x26D6368E0](v31, -1, -1);
  }

  v32 = sub_2692C7760();
  v40 = v32;
  v41 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v34 = *MEMORY[0x277D61890];
  v35 = sub_2692C7710();
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, v34, v35);
  (*(*(v32 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v32);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v36 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v37 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v36[v37] = 5;
  [v36 setUserActivity_];
  a4(v36);
}

void sub_269286ACC(unsigned __int8 *a1, char *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v50 = a4;
  v52 = a3;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v15 = a1[1];
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  v16 = *(v11 + 8);
  v16(v14, v10);
  if (v15)
  {
    v17 = v52;
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280302D28);
    v19 = v17;
    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136315138;
      v24 = [v19 identifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_2692C7830();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v54[0] = v26;
      v54[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v38 = sub_2692C7840();
      v40 = sub_26927C4DC(v38, v39, &v53);

      *(v22 + 4) = v40;
      _os_log_impl(&dword_269270000, v20, v21, "Failed to disable sleep alarm: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6368E0](v23, -1, -1);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    v41 = sub_2692C7760();
    v55 = v41;
    v56 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    sub_269280704();
    v43 = swift_allocError();
    *v44 = v51;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v45 = *MEMORY[0x277D61838];
    v46 = sub_2692C76A0();
    (*(*(v46 - 8) + 104))(boxed_opaque_existential_1, v45, v46);
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v41);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);

    v47 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v48 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v47[v48] = 5;
    [v47 setUserActivity_];
    a5(v47);
  }

  else
  {
    v29 = swift_allocObject();
    *(v29 + 16) = a5;
    *(v29 + 24) = a6;

    v30 = v52;
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v16(v14, v10);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v54);
    v31 = v55;
    v32 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = sub_26928E618;
    v34 = v50;
    v33[4] = v29;
    v33[5] = v34;
    v33[6] = v30;
    v35 = *(v32 + 64);
    v36 = v30;
    v37 = a2;

    v35(sub_26928E63C, v33, v31, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }
}

void sub_26928702C(unsigned __int8 *a1, char *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v50 = a4;
  v52 = a3;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v15 = a1[1];
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  v16 = *(v11 + 8);
  v16(v14, v10);
  if (v15)
  {
    v17 = v52;
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280302D28);
    v19 = v17;
    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136315138;
      v24 = [v19 identifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_2692C7830();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v54[0] = v26;
      v54[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v38 = sub_2692C7840();
      v40 = sub_26927C4DC(v38, v39, &v53);

      *(v22 + 4) = v40;
      _os_log_impl(&dword_269270000, v20, v21, "Failed to enable sleep alarm: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6368E0](v23, -1, -1);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    v41 = sub_2692C7760();
    v55 = v41;
    v56 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    sub_269280704();
    v43 = swift_allocError();
    *v44 = v51;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v45 = *MEMORY[0x277D61838];
    v46 = sub_2692C76A0();
    (*(*(v46 - 8) + 104))(boxed_opaque_existential_1, v45, v46);
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v41);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);

    v47 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v48 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v47[v48] = 5;
    [v47 setUserActivity_];
    a5(v47);
  }

  else
  {
    v29 = swift_allocObject();
    *(v29 + 16) = a5;
    *(v29 + 24) = a6;

    v30 = v52;
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v16(v14, v10);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v54);
    v31 = v55;
    v32 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = sub_26928E6C8;
    v34 = v50;
    v33[4] = v29;
    v33[5] = v34;
    v33[6] = v30;
    v35 = *(v32 + 64);
    v36 = v30;
    v37 = a2;

    v35(sub_26928E8AC, v33, v31, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }
}

void sub_26928758C(unint64_t a1, void (*a2)(char *), uint64_t a3, const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v35 - v11;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280302D28);

  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();

  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_17;
  }

  v40 = v8;
  v16 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v43[0] = v37;
  v38 = v16;
  *v16 = 136315138;
  v41 = v14;
  if (a1 >> 62)
  {
    v17 = sub_2692C7C60();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v15;
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_16:
    v26 = MEMORY[0x26D635E70](v18, v40);
    v28 = v27;

    v29 = sub_26927C4DC(v26, v28, v43);

    v30 = v38;
    *(v38 + 1) = v29;
    v14 = v41;
    _os_log_impl(&dword_269270000, v41, v39, a4, v30, 0xCu);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x26D6368E0](v31, -1, -1);
    MEMORY[0x26D6368E0](v30, -1, -1);
LABEL_17:

    v32 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v33 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v32[v33] = 4;
    [v32 setUserActivity_];
    type metadata accessor for SiriAlarm();
    v34 = sub_2692C7910();
    [v32 setModifiedAlarms_];

    a2(v32);
    return;
  }

  v42 = MEMORY[0x277D84F90];
  sub_2692A0AAC(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v35[0] = a4;
    v35[1] = a3;
    v36 = a2;
    v19 = 0;
    v18 = v42;
    v20 = a1 & 0xC000000000000001;
    v21 = a1;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x26D6360D0](v19, a1);
      }

      else
      {
        v22 = *(a1 + 8 * v19 + 32);
      }

      v23 = v22;
      sub_26927826C(v12);

      v42 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2692A0AAC((v24 > 1), v25 + 1, 1);
        v18 = v42;
      }

      ++v19;
      *(v18 + 16) = v25 + 1;
      sub_26928E660(v12, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, &qword_280302C50, &unk_2692C96A0);
      a1 = v21;
    }

    while (v17 != v19);
    a2 = v36;
    a4 = v35[0];
    goto LABEL_16;
  }

  __break(1u);
}

void sub_26928796C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v24 = a3;
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280302D28);
    v17 = sub_2692C77B0();
    v18 = sub_2692C79F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_269270000, v17, v18, "Failed to retrieve new sleep alarm when constructModifiedAlarms().", v19, 2u);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }
  }

  else if (v14)
  {
    v20 = v14;
    v21 = [a6 undoable];
    [v20 setUndoable_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2692C9430;
    *(v22 + 32) = v20;
    v25 = v22;
    sub_26928E654(v14, 0);

    sub_2692B46CC(v23);
    v24(v25);

    sub_269274440(v14, 0);
    return;
  }

  v24(a5);
}

void sub_269287C30(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v4 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 4;
  [v3 setUserActivity_];
  a2(v3);
}

void sub_269287D94(id a1, void (*a2)(char *), void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v154 - v14;
  v16 = sub_2692C77A0();
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 alarms];
  if (!v21)
  {
    goto LABEL_92;
  }

  v22 = v21;
  v162 = v20;
  v163 = v17;
  v164 = v16;
  v165 = a1;
  type metadata accessor for SiriAlarm();
  v23 = sub_2692C7930();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_91:

    a1 = v165;
LABEL_92:
    v92 = [a1 alarmSearch];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 time];

      if (v94)
      {
        sub_2692C7280();

        v95 = sub_2692C7310();
        (*(*(v95 - 8) + 56))(v12, 0, 1, v95);
      }

      else
      {
        v95 = sub_2692C7310();
        (*(*(v95 - 8) + 56))(v12, 1, 1, v95);
      }

      sub_26928E660(v12, v15, &qword_280302C48, &qword_2692C9780);
      sub_2692C7310();
      if ((*(*(v95 - 8) + 48))(v15, 1, v95) != 1)
      {
        sub_26927CEA8(v15, &qword_280302C48, &qword_2692C9780);
        v98 = sub_269290E5C();
        if (v98)
        {
          v99 = v98;
          sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v167);
          AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
          v101 = objc_allocWithZone(AlarmIntentHandler);
          v102 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
          if (qword_280302B50 != -1)
          {
            swift_once();
          }

          v103 = qword_280303380;
          *&v101[v102] = qword_280303380;
          sub_269275A6C(v167, &v101[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
          v166.receiver = v101;
          v166.super_class = AlarmIntentHandler;
          v104 = v103;
          v105 = objc_msgSendSuper2(&v166, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(v167);

          sub_2692A665C(v99, v105, a2, a3);

          return;
        }

        goto LABEL_99;
      }
    }

    else
    {
      v96 = sub_2692C7310();
      (*(*(v96 - 8) + 56))(v15, 1, 1, v96);
    }

    sub_26927CEA8(v15, &qword_280302C48, &qword_2692C9780);
LABEL_99:
    v90 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v97 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v90[v97] = 5;
    [v90 setUserActivity_];
    a2(v90);
LABEL_100:

    return;
  }

  while (1)
  {
    v24 = sub_2692C7C60();
    if (!v24)
    {
      goto LABEL_91;
    }

LABEL_4:
    v159 = type metadata accessor for ChangeAlarmStatusIntentResponse();
    v25 = [objc_allocWithZone(v159) init];
    v26 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v25[v26] = 4;
    v161 = v25;
    [v25 setUserActivity_];
    if (ChangeAlarmStatusIntent.isDismissRequest(alarms:)(v23))
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v27 = sub_2692C77C0();
      __swift_project_value_buffer(v27, qword_280302D28);
      v28 = sub_2692C77B0();
      v29 = sub_2692C7A00();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v163;
      v31 = v164;
      v33 = v162;
      if (v30)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_269270000, v28, v29, "Intent is dismiss firing alarm intent, trying to handle().", v34, 2u);
        MEMORY[0x26D6368E0](v34, -1, -1);
      }

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      (*(v32 + 8))(v33, v31);
      sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v167);
      v35 = v168;
      v36 = v169;
      __swift_project_boxed_opaque_existential_1(v167, v168);
      v37 = swift_allocObject();
      v38 = v161;
      v37[2] = v4;
      v37[3] = v38;
      v37[4] = a2;
      v37[5] = a3;
      v39 = *(v36 + 40);
      v40 = v4;
      v41 = v38;

      v39(v23, sub_26928E410, v37, v35, v36);

      __swift_destroy_boxed_opaque_existential_1Tm(v167);
      return;
    }

    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v42 = sub_2692C77C0();
    v158 = __swift_project_value_buffer(v42, qword_280302D28);
    v43 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v43, v15))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_269270000, v43, v15, "Intent is enable/disable alarm intent(not dismiss), trying to handle().", v44, 2u);
      MEMORY[0x26D6368E0](v44, -1, -1);
    }

    v160 = swift_allocObject();
    *(v160 + 16) = MEMORY[0x277D84F90];
    v45 = [v165 operation];
    v156 = a2;
    v157 = a3;
    v154 = v4;
    if (v45 == 1)
    {
      a2 = 0;
      a3 = (v23 & 0xC000000000000001);
      v4 = (v23 & 0xFFFFFFFFFFFFFF8);
      v155 = MEMORY[0x277D84F90];
      while (1)
      {
        v59 = a2;
        while (1)
        {
          if (a3)
          {
            v61 = MEMORY[0x26D6360D0](v59, v23);
          }

          else
          {
            if (v59 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v61 = *(v23 + 8 * v59 + 32);
          }

          v62 = v61;
          a2 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_86;
          }

          v12 = [v61 enabled];
          v15 = sub_2692822D8();
          v63 = sub_2692C7A50();
          v64 = v63;
          if (v12)
          {
            v15 = sub_2692C7A70();

            if (v15)
            {
              goto LABEL_38;
            }
          }

          else
          {
          }

          v60 = [v62 identifier];
          if (v60)
          {
            break;
          }

LABEL_38:

          ++v59;
          if (a2 == v24)
          {
            goto LABEL_52;
          }
        }

        v65 = v60;
        v66 = sub_2692C7830();
        v15 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_26928A5E0(0, *(v155 + 16) + 1, 1, v155);
        }

        v69 = *(v155 + 16);
        v68 = *(v155 + 24);
        if (v69 >= v68 >> 1)
        {
          v155 = sub_26928A5E0((v68 > 1), v69 + 1, 1, v155);
        }

        v70 = v155;
        *(v155 + 16) = v69 + 1;
        v71 = v70 + 16 * v69;
        *(v71 + 32) = v66;
        *(v71 + 40) = v15;
        if (a2 == v24)
        {
LABEL_52:
          *(v160 + 16) = v155;

          goto LABEL_56;
        }
      }
    }

    if (v45 == 2)
    {
      a3 = (v23 & 0xC000000000000001);
      v4 = (v23 & 0xFFFFFFFFFFFFFF8);
      v155 = MEMORY[0x277D84F90];
      v46 = 0;
      if ((v23 & 0xC000000000000001) != 0)
      {
LABEL_33:
        v47 = MEMORY[0x26D6360D0](v46, v23);
        goto LABEL_23;
      }

      while (1)
      {
        while (1)
        {
          if (v46 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v47 = *(v23 + 8 * v46 + 32);
LABEL_23:
          v48 = v47;
          a2 = (v46 + 1);
          if (__OFADD__(v46, 1))
          {
            goto LABEL_87;
          }

          v49 = [v47 enabled];
          v15 = sub_2692822D8();
          v50 = sub_2692C7A50();
          v12 = v50;
          if (v49)
          {
            break;
          }

LABEL_19:
          ++v46;
          if (a2 == v24)
          {
            goto LABEL_52;
          }

          if (a3)
          {
            goto LABEL_33;
          }
        }

        v15 = sub_2692C7A70();

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }

        v51 = [v48 identifier];
        if (!v51)
        {
          goto LABEL_19;
        }

        v52 = v51;
        v15 = sub_2692C7830();
        v54 = v53;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_26928A5E0(0, *(v155 + 16) + 1, 1, v155);
        }

        v56 = *(v155 + 16);
        v55 = *(v155 + 24);
        if (v56 >= v55 >> 1)
        {
          v155 = sub_26928A5E0((v55 > 1), v56 + 1, 1, v155);
        }

        v57 = v155;
        *(v155 + 16) = v56 + 1;
        v58 = v57 + 16 * v56;
        *(v58 + 32) = v15;
        *(v58 + 40) = v54;
        if (a2 == v24)
        {
          goto LABEL_52;
        }

        v46 = a2;
        if (a3)
        {
          goto LABEL_33;
        }
      }
    }

    v72 = sub_2692C77B0();
    v15 = sub_2692C79F0();
    if (os_log_type_enabled(v72, v15))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_269270000, v72, v15, "Unsupported operation when getting undoable alarms in .handle(), expected enable/disable.", v73, 2u);
      MEMORY[0x26D6368E0](v73, -1, -1);
    }

LABEL_56:
    v74 = 0;
    v167[0] = MEMORY[0x277D84F90];
    a3 = (v23 & 0xC000000000000001);
    a2 = (v23 & 0xFFFFFFFFFFFFFF8);
    v4 = &off_279C54000;
LABEL_59:
    if (a3)
    {
      v75 = MEMORY[0x26D6360D0](v74, v23);
    }

    else
    {
      if (v74 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v75 = *(v23 + 8 * v74 + 32);
    }

    v76 = v75;
    v12 = (v74 + 1);
    if (!__OFADD__(v74, 1))
    {
      break;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  v77 = [v75 sleepAlarmAttribute];
  if (v77)
  {

    v15 = v167;
    sub_2692C7BF0();
    sub_2692C7C20();
    sub_2692C7C30();
    sub_2692C7C00();
  }

  else
  {
  }

  ++v74;
  if (v12 != v24)
  {
    goto LABEL_59;
  }

  v78 = 0;
  v155 = v167[0];
  v167[0] = MEMORY[0x277D84F90];
  do
  {
    if (a3)
    {
      v79 = MEMORY[0x26D6360D0](v78, v23);
    }

    else
    {
      if (v78 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v79 = *(v23 + 8 * v78 + 32);
    }

    v80 = v79;
    v81 = (v78 + 1);
    if (__OFADD__(v78, 1))
    {
      goto LABEL_84;
    }

    v82 = [v79 sleepAlarmAttribute];
    if (v82)
    {
      v15 = v82;
    }

    else
    {
      v15 = v167;
      sub_2692C7BF0();
      v12 = *(v167[0] + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    ++v78;
  }

  while (v81 != v24);

  v83 = v167[0];
  v84 = v155;
  if ((v155 & 0x8000000000000000) != 0 || (v155 & 0x4000000000000000) != 0)
  {
    v106 = sub_2692C7C60();
    v86 = v157;
    if (v106 <= 1)
    {
      v85 = sub_2692C7C60();
      goto LABEL_107;
    }

LABEL_79:

    v87 = sub_2692C77B0();
    v88 = sub_2692C79F0();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_269270000, v87, v88, "Can NOT enable multiple sleep alarms, should only handle upcoming one.\nCheck the resolveAlarms method and make sure it returns at most 1 sleep alarm.", v89, 2u);
      MEMORY[0x26D6368E0](v89, -1, -1);
    }

    v90 = [objc_allocWithZone(v159) init];
    v91 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v90[v91] = 5;
    [v90 setUserActivity_];
    v156(v90);

    goto LABEL_100;
  }

  v85 = *(v155 + 16);
  v86 = v157;
  if (v85 > 1)
  {
    goto LABEL_79;
  }

LABEL_107:
  if (!v85)
  {

    a3 = 0;
    goto LABEL_119;
  }

  if ((v84 & 0xC000000000000001) != 0)
  {
    v107 = MEMORY[0x26D6360D0](0, v84);
    goto LABEL_111;
  }

  if (!*(v84 + 16))
  {
    __break(1u);
LABEL_129:
    if (!sub_2692C7C60())
    {
      goto LABEL_130;
    }

LABEL_117:

LABEL_119:
    v117 = [v165 operation];
    if (v117 == 2)
    {
      sub_2692C7A20();
      v130 = v154;
      v131 = v162;
      sub_2692C7790();
      sub_2692C7780();
      (*(v163 + 8))(v131, v164);
      sub_269275A6C(v130 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v167);
      v132 = v168;
      v133 = v169;
      v165 = __swift_project_boxed_opaque_existential_1(v167, v168);
      v134 = swift_allocObject();
      v135 = v160;
      v136 = v161;
      v134[2] = v130;
      v134[3] = v135;
      v137 = v156;
      v134[4] = a3;
      v134[5] = v137;
      v134[6] = v86;
      v134[7] = v136;
      v138 = a3;
      v139 = *(v133 + 24);
      v164 = v138;
      v140 = v130;
      v129 = v136;

      v139(v83, sub_26928E3C4, v134, v132, v133);
    }

    else
    {
      if (v117 != 1)
      {

        v141 = sub_2692C77B0();
        v142 = sub_2692C79F0();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_269270000, v141, v142, "Operation is empty: don't know what to do with the alarm, return failure response.", v143, 2u);
          MEMORY[0x26D6368E0](v143, -1, -1);
        }

        v144 = sub_2692C7760();
        v168 = v144;
        v169 = MEMORY[0x277D61908];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v167);
        v146 = *MEMORY[0x277D61890];
        v147 = sub_2692C7710();
        (*(*(v147 - 8) + 104))(boxed_opaque_existential_1, v146, v147);
        (*(*(v144 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v144);
        sub_2692C76B0();
        __swift_destroy_boxed_opaque_existential_1Tm(v167);
        v148 = [objc_allocWithZone(v159) init];
        v149 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
        swift_beginAccess();
        *&v148[v149] = 5;
        [v148 setUserActivity_];
        v156(v148);

        return;
      }

      sub_2692C7A20();
      v118 = v154;
      v119 = v162;
      sub_2692C7790();
      sub_2692C7780();
      (*(v163 + 8))(v119, v164);
      sub_269275A6C(v118 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v167);
      v120 = v168;
      v121 = v169;
      v165 = __swift_project_boxed_opaque_existential_1(v167, v168);
      v122 = swift_allocObject();
      v123 = v160;
      v124 = v161;
      v122[2] = v118;
      v122[3] = v123;
      v125 = v156;
      v122[4] = a3;
      v122[5] = v125;
      v122[6] = v86;
      v122[7] = v124;
      v126 = a3;
      v127 = *(v121 + 16);
      v164 = v126;
      v128 = v118;
      v129 = v124;

      v127(v83, sub_26928E3DC, v122, v120, v121);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v167);

    return;
  }

  v107 = *(v84 + 32);
LABEL_111:
  a3 = v107;

  v81 = a3;
  v108 = [v81 identifier];
  if (v108)
  {
    v109 = v108;
    v110 = sub_2692C7830();
    v112 = v111;

    v113 = *(v160 + 16);
    v167[0] = v110;
    v167[1] = v112;
    MEMORY[0x28223BE20](v114, v115);
    *(&v154 - 2) = v167;

    LOBYTE(v110) = sub_26928515C(sub_26928E3F4, (&v154 - 4), v113);

    if (v110)
    {
      v116 = sub_2692C7980();
      [v81 setUndoable_];
    }
  }

  if (v83 < 0 || (v83 & 0x4000000000000000) != 0)
  {
    goto LABEL_129;
  }

  if (*(v83 + 16))
  {
    goto LABEL_117;
  }

LABEL_130:

  v150 = sub_2692C77B0();
  v151 = sub_2692C7A00();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&dword_269270000, v150, v151, "Only found sleep alarm.", v152, 2u);
    MEMORY[0x26D6368E0](v152, -1, -1);
  }

  v153 = [v165 operation];
  sub_26928660C(v153, v81, MEMORY[0x277D84F90], v156, v86);
}