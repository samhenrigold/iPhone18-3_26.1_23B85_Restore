uint64_t sub_269C1ADC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C1ADF8(uint64_t a1)
{
  sub_269C1AF2C(319, &qword_280C0BBB8, type metadata accessor for SleepStageSegment, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_269C1AF2C(319, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_269C1AF2C(319, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269C1AF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C1AFB0(uint64_t a1)
{
  result = sub_269D97010();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_269C1B04C(uint64_t a1)
{
  sub_269C41440(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269C1B0B8(uint64_t a1, unint64_t *a2, void *a3)
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

BOOL sub_269C1B134(void *a1, uint64_t *a2)
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

void *sub_269C1B200@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269C1B268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D9A630();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269C1B2B0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1B2E8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1B320()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for TimeOfDay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeOfDay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_269C1B3E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269C1B408(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_269C1B468(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for SleepStagesModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269C1B514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepStagesModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleOccurrenceEditModel.ChangeSet(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduleOccurrenceEditModel.ChangeSet(uint64_t result, int a2, int a3)
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

uint64_t sub_269C1B64C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SleepStagesModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  sub_269C3CAC8(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_269C3CAC8(0, &qword_280C0B110, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  sub_269C3CAC8(0, &qword_280C0B108, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_269C1B898(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SleepStagesModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  sub_269C3CAC8(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_269C3CAC8(0, &qword_280C0B110, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  sub_269C3CAC8(0, &qword_280C0B108, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_269C1BB18()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BB50()
{
  v1 = sub_269D98AE0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_269C1BC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_269C1BD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C1BEC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1BEF8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BF34()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C1BFCC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_269C1C030()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C06C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C0A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C1C0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98EC0();
  *a1 = result;
  return result;
}

uint64_t sub_269C1C138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98FA0();
  *a1 = result;
  return result;
}

uint64_t sub_269C1C1C0(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  sub_269D99540();
  sub_269D98D00();
  sub_269D992E0();
  sub_269D992E0();
  swift_getOpaqueTypeConformance2();
  sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1C318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 112);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C1C36C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C3BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1C3F4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C42C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C464()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C4AC()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C4EC()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C55C()
{
  sub_269C59570(255);
  sub_269C5A374();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1C5B4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C648()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C680()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C6B8(uint64_t a1, uint64_t a2)
{
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1C754(uint64_t a1, uint64_t a2)
{
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1C7F4()
{
  v1 = *(type metadata accessor for AlarmSnoozeDurationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C1C8F8(uint64_t a1, uint64_t a2)
{
  sub_269C608BC(0, &qword_28034E4C0, sub_269C60930, sub_269C3C784);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_269C1C990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_269C1C9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_269C1CA34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_269C1CA78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269C1CADC@<X0>(_BYTE *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.alarmEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269C1CB88@<X0>(_BYTE *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.allowsSnooze.getter();
  *a1 = result & 1;
  return result;
}

id sub_269C1CC34@<X0>(uint64_t *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.toneIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_269C1CC94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) weekdays];
  *a2 = result;
  return result;
}

uint64_t sub_269C1CCD8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_269C1CD90@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  result = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *a2 = *(v3 + *(result + 32));
  return result;
}

uint64_t sub_269C1CDF4()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1CE34()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1CE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97920();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269C6C388(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269C6C550(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269C1CFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269D97920();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269C6C388(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269C6C550(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269C1D108()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1D280()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D2B8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D304()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_269C1D33C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (result)
  {
    result = [result windDownTime];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_269C1D3C8()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D420()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D458()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_269C1D5D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_269C7DAE8();
}

uint64_t sub_269C1D634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269C1D68C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_269C7ECB0();
}

uint64_t sub_269C1D6E4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D71C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D7D0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D808()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D840()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D878()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D8B0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D8E8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D928()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D978()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D9B8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D9F0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1DA4C()
{
  sub_269C95034(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return swift_deallocObject();
}

uint64_t sub_269C1DAB8(uint64_t a1, uint64_t a2)
{
  sub_269C953C4(0, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C1DC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D972A0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_269C1DD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D972A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_269C1DE04()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C1DE44()
{

  return swift_deallocObject();
}

uint64_t sub_269C1DE7C(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1DF18(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1E010()
{
  v1 = *(type metadata accessor for AlarmSnoozeDurationPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C1E110()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C1E150()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

id sub_269C1E1A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

id sub_269C1E1FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

id sub_269C1E258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_269C1E2B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_269C1E2FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_269C1E340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_269C1E388(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_269C1E3CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_269C1E414(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

id sub_269C1E45C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *a1;
  }

  swift_beginAccess();
  return [*(v2 + 40) setSleepDurationGoal_];
}

id sub_269C1E4C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) windDownTime];
  *a2 = v5;
  return result;
}

id sub_269C1E51C(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return [*(v3 + 40) setWindDownTime_];
}

id sub_269C1E578@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) windDownTime];
  *a2 = v5 > 0.0;
  return result;
}

id sub_269C1E5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 48) scheduledSleepMode];
  *a2 = result;
  return result;
}

uint64_t sub_269C1E678()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E6B0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E724()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E75C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1E808()
{
  sub_269C95034(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_269C1E854()
{
  sub_269C95034(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_269C1E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269CB197C(255, a2, a3);
  sub_269CB1A4C(255, v3, v4);
  sub_269CB1E04();
  v9 = sub_269CB2C7C(&qword_28034F530, sub_269CB197C, MEMORY[0x277CDF3A0]);
  sub_269CB2B9C(v9, v5, v6);
  sub_269CB2020(255);
  sub_269CB29E8(255);
  sub_269CB2210(255);
  sub_269CB23D4(255);
  sub_269CB2570(255);
  sub_269CB26DC(255);
  sub_269CB281C(255);
  sub_269CB28E0(255);
  v7 = MEMORY[0x277CDF6F0];
  sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
  swift_getOpaqueTypeConformance2();
  sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v7);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_269C1EB70@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
  *a2 = (result & 0x4000) != 0;
  return result;
}

id sub_269C1EC3C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
  *a2 = (result & 8) != 0;
  return result;
}

uint64_t sub_269C1ECF0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1ED48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1ED80()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EDB8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EE0C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_269C1EE3C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_269C1EE74()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EEB4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EEEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1EF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1EF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1F00C(uint64_t a1, uint64_t a2)
{
  sub_269CC01F8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C1F088@<X0>(uint64_t a1@<X8>)
{
  result = sub_269D99010();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269C1F0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98F80();
  *a1 = result;
  return result;
}

uint64_t sub_269C1F154()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F2C4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F304()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F35C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1F39C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1F3E0()
{
  sub_269CCB36C(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  sub_269CCB36C(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269C9D934();
  sub_269CCB3C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1F4B4()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1F4EC()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F598()
{
  sub_269CD6F4C(255);
  sub_269CD70E4(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269CD6E7C(255);
  sub_269CD6658(255);
  v0 = sub_269CD73A4(&qword_28034FD50, sub_269CD6658, MEMORY[0x277CDE5A0]);
  sub_269C3EEE8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_269CCB3C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1F6FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C1F74C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F78C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

void sub_269C1F7C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656B617761;
  v5 = 0x65656C5365726F63;
  v6 = 0xE900000000000070;
  v7 = 0x65656C5370656564;
  v8 = 0xE900000000000070;
  if (v2 != 3)
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x7065656C536D6572;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_269C1F870(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_269D97010();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_269C1F914(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_269D97010();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269C1F9B4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_269C1FB38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269C1FCBC(uint64_t a1, uint64_t a2)
{
  sub_269C41440(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1FD28(uint64_t a1, uint64_t a2)
{
  sub_269C41440(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1FDB0(uint64_t *a1)
{
  sub_269CE6CA4();
  sub_269D98D00();
  sub_269D98A60();
  sub_269D98D00();
  sub_269CE8178(&qword_28034FF80, sub_269CE6CA4, MEMORY[0x277CE0490]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1FEB4(void *a1)
{
  sub_269D98D00();
  v1 = sub_269D992E0();
  sub_269C419C0(v1, v2, v3);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1FFC0(uint64_t *a1)
{
  sub_269C5A270(255);
  sub_269D98D00();
  sub_269D98DB0();
  sub_269CE8178(qword_28034FF88, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  sub_269D99320();
  swift_getWitnessTable();
  sub_269D98E00();
  sub_269D98D00();
  sub_269CE8178(&qword_28034E328, sub_269C5A270, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C20184(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  sub_269D99F00();

  return swift_getWitnessTable();
}

uint64_t sub_269C202A4(void *a1)
{
  sub_269D989A0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C20318(void *a1)
{
  v1 = sub_269D98D00();
  sub_269CE73C0(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_269C2037C(void *a1)
{
  sub_269D98D00();
  sub_269D992E0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C20428(uint64_t *a1)
{
  sub_269C40224(255);
  sub_269D98D00();
  sub_269CE8178(&qword_280C0B5C8, sub_269C40224, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_269D992E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_269C20564()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C205A4()
{

  return swift_deallocObject();
}

uint64_t sub_269C2061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_269C20740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C20864()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C2089C()
{

  return swift_deallocObject();
}

uint64_t sub_269C208E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C2091C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C2097C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C209B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C20A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  sub_269CF3830(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269C20AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  sub_269CF3830(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_269C20BA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C20C04(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269C20C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  return sub_269C6C0F0(v3 + v4, a2);
}

uint64_t sub_269C20CD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MultiPickerLink(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_269C20D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for MultiPickerLink(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);

  v8 = sub_269D9A040();
  (*(*(v5 - 8) + 8))(v4 + v7 + *(v8 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_269C20E48()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for ForEachWithIndexAsID(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_269C20F3C()
{

  return swift_deallocObject();
}

uint64_t sub_269C20F74(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_269D9A840();
  swift_getWitnessTable();
  sub_269D9A0A0();
  return swift_getWitnessTable();
}

uint64_t sub_269C21060()
{

  return swift_deallocObject();
}

uint64_t sub_269C21098()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C21174(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_269D058E8(255);
  v4 = v3;
  sub_269D04FA4(255);
  v10 = v1;
  v11 = v5;
  v12 = v2;
  v13 = sub_269D05084();
  Subviews = type metadata accessor for GetSubviews(255, &v10);
  v7 = sub_269D05D48(qword_2803506C8, sub_269D058E8, MEMORY[0x277CBCB30]);
  WitnessTable = swift_getWitnessTable();
  v10 = v4;
  v11 = Subviews;
  v12 = v7;
  v13 = WitnessTable;
  sub_269D98DC0();
  return swift_getWitnessTable();
}

uint64_t sub_269C2125C()
{
  v1 = sub_269D993C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_269C2134C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_269C213B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  result = swift_beginAccess();
  *a2 = *(*(v3 + v4) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
  return result;
}

uint64_t sub_269C21458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C214B8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_269C21534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 20);
  v5 = sub_269D977A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id sub_269C215B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 24));
  *a2 = v3;

  return v3;
}

id sub_269C2162C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 28));
  *a2 = v3;

  return v3;
}

void sub_269C21674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SleepScheduleComponentsViewModel.validScheduleRange.setter(v1);
}

uint64_t sub_269C216A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *a2 = *(a1 + *(result + 32));
  return result;
}

uint64_t sub_269C216DC(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 32)) = v2;
  return sub_269D0A9B8();
}

uint64_t sub_269C21714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 36);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_269C21798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 40);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_269C2181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 44);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id sub_269C218A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 48));
  *a2 = v3;

  return v3;
}

uint64_t sub_269C218EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269D977A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_269D971F0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_269C21A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_269D977A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_269D971F0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_269C21B48()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C21B80()
{

  return swift_deallocObject();
}

uint64_t sub_269C21BB8()
{

  return swift_deallocObject();
}

uint64_t sub_269C21BF0()
{

  return swift_deallocObject();
}

uint64_t sub_269C21C28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C21C70()
{

  return swift_deallocObject();
}

uint64_t sub_269C21CA8()
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_269C21E08()
{

  return swift_deallocObject();
}

uint64_t sub_269C21EA8()
{

  return swift_deallocObject();
}

uint64_t sub_269C21FC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void *sub_269C2204C(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_269C2206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D975C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_269D97010();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_269C2215C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269D975C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_269D97010();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_269C2228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 48);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_269C22364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 48) = -a2;
  }
}

uint64_t sub_269C224B4(void *a1)
{
  v1 = sub_269D98D00();
  sub_269D253E4(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_269C22518()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C22554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D25554(255, a2, a3);
  sub_269D255B0(255, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
  sub_269D25674(255, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
  v6 = sub_269D256C8(v3, v4, v5);
  sub_269C3EEE8(v6, v7, v8);
  sub_269D25720();
  sub_269C9DA98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C2272C()
{

  return swift_deallocObject();
}

uint64_t sub_269C22764()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C227D0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C22808()
{

  return swift_deallocObject();
}

uint64_t sub_269C2285C()
{

  return swift_deallocObject();
}

uint64_t sub_269C2289C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C228EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C22924()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C22984()
{

  return swift_deallocObject();
}

uint64_t sub_269C229C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269D97010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_269D977A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_269C22AE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_269D97010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_269D977A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C22C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_269D977A0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269C22C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_269D977A0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_269C22D00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C22D38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_nextOccurrencePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C22D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

void sub_269C22F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  else
  {
    sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_269C230A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_269C230E4()
{
  sub_269D45198(255);
  sub_269D465D4(255, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
  sub_269D25674(255, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
  v0 = sub_269D46638(&qword_280351168, sub_269D45198, MEMORY[0x277CDF028]);
  sub_269C3EEE8(v0, v1, v2);
  sub_269D25720();
  sub_269C9DA98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C23218(uint64_t a1, uint64_t a2)
{
  sub_269D25614(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C2327C(uint64_t a1)
{
  sub_269D25614(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C232DC()
{
  v1 = sub_269D973D0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_269C23384@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

uint64_t sub_269C233B4()
{

  return swift_deallocObject();
}

uint64_t sub_269C233EC(uint64_t *a1)
{
  sub_269D12C5C(255);
  sub_269D98D00();
  sub_269D12EFC(255, v1, v2);
  sub_269D98D00();
  sub_269D48FB0(&qword_2803511F8, sub_269D12C5C, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_269D48FB0(&qword_280351200, sub_269D12EFC, MEMORY[0x277CE07C8]);
  return swift_getWitnessTable();
}

uint64_t sub_269C234FC(uint64_t *a1)
{
  sub_269D98C60();
  sub_269D98D00();
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  sub_269D99FE0();
  return swift_getWitnessTable();
}

uint64_t sub_269C235D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C23608()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23648()
{

  return swift_deallocObject();
}

uint64_t sub_269C23688()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C236D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97AC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_269C23790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D97AC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C2384C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269D9A330();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_269D977A0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_269D97B80();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SleepScoreModel.Bedtime(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_269C239D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269D9A330();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269D977A0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_269D97B80();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SleepScoreModel.Bedtime(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_269C23B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_269D97BA0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_269C23C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_269D97BA0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_269C23DBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23E14()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C23E4C()
{

  return swift_deallocObject();
}

uint64_t sub_269C23E84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23ED4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    sub_269D5C6A4(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_269C23F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_269D5C6A4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_269C24088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98EE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269C240E0(uint64_t a1)
{
  sub_269D5D9FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C24180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D63510(0, &qword_28034F7E8, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_269C24258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D63510(0, &qword_28034F7E8, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_269C2432C(void *a1)
{
  sub_269D99FC0();
  sub_269D99F00();
  sub_269D992E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C243F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C24430()
{

  return swift_deallocObject();
}

uint64_t sub_269C24470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D977A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_269C24530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D977A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C245F4()
{

  return swift_deallocObject();
}

uint64_t sub_269C24634()
{

  return swift_deallocObject();
}

uint64_t sub_269C24678()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C246C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C24718()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24750()
{

  return swift_deallocObject();
}

uint64_t sub_269C24790()
{

  return swift_deallocObject();
}

uint64_t sub_269C247D8()
{

  return swift_deallocObject();
}

uint64_t sub_269C24818()
{

  return swift_deallocObject();
}

void sub_269C24870(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.route.setter(v1);
}

uint64_t sub_269C248A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269C2D6BC(2);
  *a1 = result;
  return result;
}

uint64_t sub_269C248F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269C2D6BC(3);
  *a1 = result;
  return result;
}

void sub_269C2496C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.provenanceSource.setter(v1);
}

void sub_269C249B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.provenancePresentation.setter(v1);
}

uint64_t sub_269C24A18@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.route.getter();
  *a1 = result;
  return result;
}

uint64_t sub_269C24A48@<X0>(char *a1@<X8>)
{
  result = sub_269D78A88();
  if (result == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = result & 1;
  }

  *a1 = v3;
  return result;
}

void sub_269C24A84(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  sub_269D78D5C(v2, 2);
}

uint64_t sub_269C24ABC@<X0>(char *a1@<X8>)
{
  result = sub_269D79F58();
  if (result == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = result & 1;
  }

  *a1 = v3;
  return result;
}

void sub_269C24AF8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  sub_269D78D5C(v2, 3);
}

uint64_t sub_269C24B30@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.provenanceSource.getter();
  *a1 = result;
  return result;
}

void *sub_269C24B88@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.provenancePresentation.getter();
  *a1 = result;
  return result;
}

void *sub_269C24BE0@<X0>(_BYTE *a1@<X8>)
{
  result = URLComponents.articleIdentifier.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_269C24C48()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24C84()
{

  return swift_deallocObject();
}

uint64_t sub_269C24CBC()
{

  return swift_deallocObject();
}

void *sub_269C24CFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_269D803D0(a2, a3, a4);
  result = sub_269D99050();
  *a1 = v6;
  return result;
}

uint64_t sub_269C24D9C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24DD4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_269C24E8C()
{

  return swift_deallocObject();
}

uint64_t sub_269C24EC4()
{

  return swift_deallocObject();
}

uint64_t sub_269C24F00()
{
  v1 = sub_269D98250();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_269C250A4(uint64_t a1, double a2)
{
  sub_269D8A598(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C25108(double a1)
{
  sub_269D8A598(255, a1);
  sub_269D8A9A4(v1);
  return swift_getOpaqueTypeConformance2();
}

void sub_269C251A0(id *a1@<X0>, void *a2@<X8>)
{
  [*a1 frame];
  sub_269D9AD20();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_269C251E4(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v2;
  type metadata accessor for GetSubviews.SubviewGetter(255, v5);
  swift_getWitnessTable();
  sub_269D98BB0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C25330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97580();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_269C253EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D97580();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C25520(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269C255A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269C255B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C25614(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269C256C8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269C25734(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_269C257D4;
}

void sub_269C257D4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ScheduleOccurrenceViewController.__allocating_init(scheduleOccurrence:isAdding:weekdaysWithExistingOccurrences:sleepScheduleProvider:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, int a2, uint64_t a3, void *a4, int a5, char *a6)
{
  v46 = a6;
  LODWORD(v41) = a5;
  v40 = a3;
  v45 = a2;
  v8 = sub_269D977A0();
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[3];
  v14 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v13);
  v15 = *(v14 + 40);
  v38 = a1;
  v44 = v15(v13, v14);
  v16 = a4[3];
  v17 = a4[4];
  v39 = a4;
  __swift_project_boxed_opaque_existential_1Tm(a4, v16);
  v18 = (*(v17 + 24))(v16, v17);
  v42 = v9;
  v19 = *(v9 + 16);
  v19(v12, v46, v8);
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v20 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();
  *(v20 + 16) = sub_269D98790();
  sub_269C2D430(0);
  swift_allocObject();
  *(v20 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v20 + 32) = sub_269D98790();
  v47[0] = 0;
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v20 + 40) = sub_269D987F0();
  *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  v21 = v38;
  [v38 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v20 + 48) = v47[5];
  *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v21;
  *(v20 + 56) = v45;
  *(v20 + 57) = 0;
  v22 = v21;
  v23 = [v22 weekdays];
  v24 = v43;
  v25 = v44;
  *(v20 + 64) = v40 & ~v23;
  *(v20 + 72) = v25;
  *(v20 + 80) = v18;
  *(v20 + 88) = v41;
  v41 = v12;
  v19((v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v12, v24);

  sub_269D987C0();
  v26 = v47[0];
  if (v47[0])
  {
    v27 = *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v28 = sub_269D976E0();
    v29 = [v26 allowableRangeForModifiedOccurrence:v27 gregorianCalendar:v28];
  }

  else
  {
    v29 = 0;
  }

  v47[0] = v29;
  sub_269D987D0();

  v30 = *(v42 + 8);
  v31 = v43;
  v30(v41, v43);
  v32 = v39;
  sub_269C2DB5C(v39, v47);
  v33 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
  sub_269C2F0A4(v20, (v45 & 1) == 0, v47);
  v35 = v34;

  v30(v46, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v35;
}

uint64_t ScheduleOccurrenceViewController.__allocating_init(scheduleOccurrence:isAdding:weekdaysWithExistingOccurrences:sleepSchedulePublisher:sleepDurationGoalPublisher:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  LODWORD(v38) = a6;
  v35 = a3;
  v12 = sub_269D977A0();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v13;
  v18 = *(v13 + 16);
  v39 = a7;
  v18(v17, a7, v12, v15);
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v19 = swift_allocObject();
  sub_269C2D3B8(0);
  swift_allocObject();
  v20 = a1;

  *(v19 + 16) = sub_269D98790();
  sub_269C2D430(0);
  swift_allocObject();
  *(v19 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v19 + 32) = sub_269D98790();
  *&v40[0] = 0;
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v19 + 40) = sub_269D987F0();
  *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v20 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v19 + 48) = v42;
  *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v20;
  v36 = a2;
  *(v19 + 56) = a2;
  *(v19 + 57) = 0;
  v21 = v20;
  v22 = [v21 weekdays];
  *(v19 + 64) = v35 & ~v22;
  *(v19 + 72) = a5;
  *(v19 + 80) = a4;
  *(v19 + 88) = v38;
  v35 = v17;
  v38 = v12;
  (v18)(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v17, v12);

  sub_269D987C0();
  v23 = *&v40[0];
  if (*&v40[0])
  {
    v24 = *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v25 = sub_269D976E0();
    v26 = [v23 allowableRangeForModifiedOccurrence:v24 gregorianCalendar:v25];
  }

  else
  {
    v26 = 0;
  }

  *&v40[0] = v26;
  sub_269D987D0();

  v27 = v38;
  v28 = *(v37 + 8);
  v28(v35, v38);
  v29 = type metadata accessor for ScheduleOccurrenceViewController();
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v30 = objc_allocWithZone(v29);
  sub_269C2F0A4(v19, (v36 & 1) == 0, v40);
  v32 = v31;

  v28(v39, v27);
  return v32;
}

id ScheduleOccurrenceViewController.__allocating_init(overrideOccurrence:allowsDeletion:isAdding:sleepScheduleProvider:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_269C2F660(a1, v11, v10, v18, v8, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v20;
}

uint64_t sub_269C261E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_269C26240()
{
  sub_269C2FAD8(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v68 = &v65 - v3;
  v69 = sub_269D9ACD0();
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v4);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = *&v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  v15 = v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_allowsDeletion];

  v16 = [v0 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  LOBYTE(v16) = sub_269D9ACF0();
  objc_allocWithZone(_s10DataSourceCMa(0));
  v18 = v0;
  v19 = sub_269C488B0(v13, v14, v15, v16 & 1, v18);

  v20 = *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource] = v19;

  v21 = type metadata accessor for ScheduleOccurrenceViewController();
  v85.receiver = v18;
  v85.super_class = v21;
  objc_msgSendSuper2(&v85, sel_viewDidLoad);
  result = [v18 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = result;
  type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = sub_269D9A5F0();
  [v22 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v24];

  result = [v18 tableView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v25 = result;
  v71 = v8;
  v65 = v7;
  [result setDelegate_];

  if (sub_269C27264())
  {
    v26 = [v18 navigationItem];
    v27 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v18 action:sel_cancelButtonPressed];
    [v26 setLeftBarButtonItem_];

    v28 = [v18 navigationItem];
    v29 = sub_269C27390(v18);
    [v28 setRightBarButtonItem_];

    v30 = [v18 navigationItem];
    v31 = [v30 rightBarButtonItem];

    if (v31)
    {
      [v31 setEnabled_];
    }
  }

  v82[0] = v14[2];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D3B8(0);
  v32 = MEMORY[0x277CBCE20];
  sub_269C2FCB0(&qword_28034EF70, sub_269C2D3B8, MEMORY[0x277CBCE20]);

  v33 = sub_269D98900();

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmConfigurationObserver] = v33;

  v82[0] = v14[4];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C2FCB0(&qword_28034D858, sub_269C2D498, v32);

  v34 = sub_269D98900();

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_snoozeDurationPickerObserver] = v34;

  v82[0] = v14[3];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D430(0);
  sub_269C2FCB0(&qword_28034EF80, sub_269C2D430, v32);

  v35 = sub_269D98900();

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelEditObserver] = v35;

  v36 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider;
  swift_beginAccess();
  sub_269C2FD08(&v18[v36], v82);
  v37 = v83;
  if (v83)
  {
    v38 = v84;
    v39 = __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    v40 = *(v37 - 8);
    v41 = MEMORY[0x28223BE20](v39, v39);
    v43 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43, v41);
    sub_269C32388(v82, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v44 = (*(v38 + 24))(v37, v38);
    (*(v40 + 8))(v43, v37);
    v81 = v44;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C2D4F8(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    sub_269C300C0();
    v37 = sub_269D98900();
  }

  else
  {
    sub_269C32388(v82, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
  }

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver] = v37;

  v82[0] = v14[9];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FDFC(0);
  sub_269C2FCB0(&qword_28034FF20, sub_269C2FDFC, MEMORY[0x277CBCE48]);

  v45 = sub_269D98900();

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepDurationGoalObserver] = v45;

  v82[0] = v14[5];
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
  sub_269C2FE88();
  v82[0] = sub_269D988B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FF08(0);
  sub_269C2FCB0(&qword_28034EFB0, sub_269C2FF08, MEMORY[0x277CBCD90]);
  v46 = sub_269D98900();

  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_validScheduleRangeObserver] = v46;

  v80 = objc_opt_self();
  v47 = [v80 defaultCenter];
  v48 = v66;
  sub_269D9ACE0();

  v70 = sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v49 = sub_269D9AC40();
  v82[0] = v49;
  v78 = sub_269D9AC30();
  v50 = *(v78 - 8);
  v77 = *(v50 + 56);
  v79 = v50 + 56;
  v51 = v68;
  v77(v68, 1, 1, v78);
  v76 = sub_269C2FCB0(&qword_280C0B4B0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v75 = sub_269C2FC08();
  v52 = v67;
  v53 = v69;
  sub_269D988E0();
  v74 = MEMORY[0x277D85248];
  sub_269C30EF8(v51, &qword_280C0AED0, MEMORY[0x277D85248]);

  v73 = *(v73 + 8);
  (v73)(v48, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = sub_269C2FCB0(&qword_280C0B178, sub_269C2FB3C, MEMORY[0x277CBCD60]);
  v54 = v65;
  v55 = sub_269D98900();

  v71 = *(v71 + 8);
  (v71)(v52, v54);
  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_significantTimeChangeObserver] = v55;

  v56 = [v80 defaultCenter];
  sub_269D9ACE0();

  v57 = sub_269D9AC40();
  v82[0] = v57;
  v77(v51, 1, 1, v78);
  sub_269D988E0();
  sub_269C30EF8(v51, &qword_280C0AED0, v74);

  (v73)(v48, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = sub_269D98900();

  (v71)(v52, v54);
  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_localeChangeObserver] = v58;

  v59 = [v80 defaultCenter];
  sub_269D9ACE0();

  v60 = sub_269D9AC40();
  v82[0] = v60;
  v77(v51, 1, 1, v78);
  sub_269D988E0();
  sub_269C30EF8(v51, &qword_280C0AED0, v74);

  (v73)(v48, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = sub_269D98900();

  (v71)(v52, v54);
  *&v18[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_willResignActiveObserver] = v61;

  sub_269C2FAD8(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_269D9EBE0;
  v63 = sub_269D983D0();
  v64 = MEMORY[0x277D74DB8];
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AC10();
  swift_unknownObjectRelease();
}

uint64_t sub_269C27264()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_269C1B0B8(0, &qword_28034DC38, 0x277D75D28);
  v4 = sub_269D9A7E0();

  if (v4 >> 62)
  {
    result = sub_269D9AF50();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D651260](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = sub_269D9ADD0();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

id sub_269C27390(char *a1)
{
  if (*(*&a1[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] + 56) != 1)
  {
    return [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:a1 action:sel_saveButtonPressed_];
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v2 = type metadata accessor for ScheduleOccurrenceViewController();
  v14[3] = v2;
  v14[0] = a1;
  v3 = a1;
  v4 = sub_269D9A5F0();

  if (v2)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm(v14, v2);
    v6 = *(v2 - 8);
    v7 = MEMORY[0x28223BE20](v5, v5);
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_269D9B260();
    (*(v6 + 8))(v9, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v10 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v13 = [v12 initWithTitle:v4 style:2 target:v10 action:{sel_saveButtonPressed_, v14[0]}];

  swift_unknownObjectRelease();
  return v13;
}

void sub_269C275D8(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C2A2B8();
    v5 = *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 tableView];
      sub_269C483D0(v2, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C27700(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C2A2B8();
    v5 = *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v5)
    {
      v6 = v5[qword_28034DF58];
      v5[qword_28034DF58] = v2;
      if (v2 == v6)
      {
      }

      else
      {
        v7 = v5;
        sub_269C48F58();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C27824(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged) = 1;
    if (*(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
    {

      sub_269D98750();
    }

    [v3 setModalInPresentation_];
    v4 = [v3 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      [v5 setEnabled_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_269C279A8(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C27A84(v2);
  }

  else
  {
  }
}

void sub_269C27A84(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_269D977A0();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D97580();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v13 = sub_269D98250();
  v88 = __swift_project_value_buffer(v13, qword_280C0B728);
  v14 = sub_269D98230();
  v15 = sub_269D9AB80();
  v16 = os_log_type_enabled(v14, v15);
  v86 = v9;
  v87 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v90[0] = v18;
    *v17 = 136446210;
    v19 = sub_269D9B4D0();
    v21 = sub_269C2EACC(v19, v20, v90);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Sleep schedule did change while editing", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D652460](v18, -1, -1);
    MEMORY[0x26D652460](v17, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged])
  {
    v88 = sub_269D98230();
    v22 = sub_269D9AB80();
    if (os_log_type_enabled(v88, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v90[0] = v24;
      *v23 = 136446210;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, v90);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_269C18000, v88, v22, "[%{public}s] Ignoring occurrence reset since the user has already edited the model.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v23, -1, -1);
    }

    else
    {
      v29 = v88;
    }

    return;
  }

  if (a1)
  {
    v28 = a1;
  }

  else
  {
    v30 = sub_269D98230();
    v31 = sub_269D9AB80();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v90[0] = v33;
      *v32 = 136446210;
      v34 = sub_269D9B4D0();
      v36 = sub_269C2EACC(v34, v35, v90);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_269C18000, v30, v31, "[%{public}s] Sleep schedule is nil - creating empty schedule.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x26D652460](v33, -1, -1);
      MEMORY[0x26D652460](v32, -1, -1);
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  v82 = ObjectType;
  v37 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider;
  swift_beginAccess();
  sub_269C2FD08(&v2[v37], v90);
  v38 = v91;
  if (v91)
  {
    v39 = v92;
    v40 = __swift_project_boxed_opaque_existential_1Tm(v90, v91);
    v41 = *(v38 - 8);
    v42 = MEMORY[0x28223BE20](v40, v40);
    v44 = &v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = a1;
    sub_269C32388(v90, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v46 = SleepScheduleProviding.sleepScheduleModel.getter(v38, v39);
    (*(v41 + 8))(v44, v38);
  }

  else
  {
    v47 = a1;
    sub_269C32388(v90, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v46 = [objc_allocWithZone(MEMORY[0x277D62500]) init];
  }

  v48 = v87;
  sub_269D97570();
  v49 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  if (*(v49 + 57) == 1)
  {
    v50 = sub_269D974B0();
    v52 = v83;
    v51 = v84;
    (*(v83 + 16))(v8, v49 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v84);
    v53 = sub_269D976E0();
    (*(v52 + 8))(v8, v51);
    v54 = [v46 overrideOccurrenceGenerationResultForCurrentDate:v50 gregorianCalendar:v53 schedule:v28];

    v55 = [v54 overrideOccurrence];
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v55, 0);

    v56 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v56)
    {
      v57 = v56;
      v58 = [v54 wasGeneratedFromTemplate];
      v60 = v85;
      v59 = v86;
      if (v58)
      {
        v61 = v57[qword_28034DF60];
        v57[qword_28034DF60] = 0;
        if ((v61 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v70 = [v54 upcomingOccurrenceWasOverride];
        v71 = v57[qword_28034DF60];
        v57[qword_28034DF60] = v70;
        if (v70 == v71)
        {
LABEL_35:

          (*(v60 + 8))(v48, v59);
          return;
        }
      }

      sub_269C48F58();
      goto LABEL_35;
    }

LABEL_44:
    __break(1u);
    return;
  }

  if (*(v49 + 56) == 1)
  {
    v62 = [v28 mutableOccurrenceTemplate];
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v62, [v28 weekdaysWithOccurrences]);

    (*(v85 + 8))(v48, v86);
    return;
  }

  swift_beginAccess();
  v63 = [v28 occurrencesOnDays_];
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  v64 = sub_269D9A7E0();

  if (v64 >> 62)
  {
    if (sub_269D9AF50())
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_28:
  if ((v64 & 0xC000000000000001) != 0)
  {
    v65 = v48;
    v66 = MEMORY[0x26D651260](0, v64);
  }

  else
  {
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v65 = v48;
    v66 = *(v64 + 32);
  }

  v67 = v66;

  v68 = [v67 weekdays];
  if (v68 == [*(v49 + 48) weekdays])
  {
    [v67 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034DC30, 0x277D62490);
    swift_dynamicCast();
    v69 = v89;
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v89, [v28 weekdaysWithOccurrences]);

    (*(v85 + 8))(v65, v86);
    return;
  }

  v48 = v65;
LABEL_39:
  v72 = sub_269D98230();
  v73 = sub_269D9AB60();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v90[0] = v75;
    *v74 = 136446210;
    v76 = sub_269D9B4D0();
    v78 = v46;
    v79 = sub_269C2EACC(v76, v77, v90);

    *(v74 + 4) = v79;
    v46 = v78;
    _os_log_impl(&dword_269C18000, v72, v73, "[%{public}s] Occurrence being edited has changed weekdays. Dismissing.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x26D652460](v75, -1, -1);
    MEMORY[0x26D652460](v74, -1, -1);
  }

  v81 = v85;
  v80 = v86;
  [v2 cancelButtonPressed];

  (*(v81 + 8))(v48, v80);
}

void sub_269C28514(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C2A4DC("[%{public}s] Sleep duration goal did change while editing");
  }

  else
  {
  }
}

void sub_269C285E8(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      [v5 setEnabled_];
    }

    sub_269C2A2B8();
  }

  else
  {
  }
}

void sub_269C28718(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a4;
    v7 = Strong;
    [Strong v6];
  }

  else
  {
  }
}

void sub_269C287F4(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C28D60();
  }

  else
  {
  }
}

void sub_269C288C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      v8 = [a1 traitCollection];
      v9 = [v8 preferredContentSizeCategory];

      LOBYTE(v8) = sub_269D9ACF0();
      v7[qword_28034DF70] = v8 & 1;
      sub_269C48F58();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C28A30(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1 & 1);
  if (sub_269C27264() & 1) != 0 || (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate])
  {
LABEL_8:
    sub_269D4B714();
    return;
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged] == 1)
  {
    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
    {

      sub_269D98750();
    }

    v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v7 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();
      (*(v5 + 8))(v2, v7, 0, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Skipping notifying delegate due to no changes", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }
}

void sub_269C28D60()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] App will resign active", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  sub_269D4B714();
}

void sub_269C28EE8(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  objc_msgSendSuper2(&v14, sel_restoreUserActivityState_, a1);
  sub_269C2D578(1);
  if (v4)
  {
    v5 = sub_269D9A5F0();

    v6 = sub_269D9A630();
    v8 = v7;
    v9 = sub_269D9A630();
    v11 = v10;

    if (v6 == v9 && v8 == v11)
    {
    }

    else
    {
      v13 = sub_269D9B280();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    ScheduleOccurrenceEditModel.alarmEnabled.setter(1);
  }
}

void sub_269C29198(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v3)
  {
    v5 = v3;
    sub_269D98380();

    if (v9)
    {
      if ((v8 != 0xD000000000000029 || 0x8000000269DAC210 != v9) && (sub_269D9B280() & 1) == 0)
      {
        if (v8 == 0xD000000000000025 && 0x8000000269DAC320 == v9)
        {
        }

        else
        {
          v7 = sub_269D9B280();

          if ((v7 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_269C29588();
        goto LABEL_7;
      }

      sub_269C292E8();
    }

LABEL_7:
    v6 = sub_269D97830();
    [a1 deselectRowAtIndexPath:v6 animated:1];

    return;
  }

  __break(1u);
}

void sub_269C292E8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [*(*&v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v2 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v3 = objc_opt_self();
  v4 = [v15 toneIdentifier];
  v5 = [v15 vibrationIdentifier];
  v6 = [v3 hksh:v4 alarmPickerWithToneIdentifier:v5 vibrationIdentifier:?];

  [v6 setDelegate_];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Presenting tone picker", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  [v1 showViewController:v6 sender:0];
}

void sub_269C29588()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] & 1) == 0)
  {
    v2 = v0;
    v3 = &v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
      swift_beginAccess();
      v7 = *(v4 + 16);
      v8 = *(v6 + 48);
      v7(v2, v8, ObjectType, v4);

      v2[v1] = 1;
      if ((sub_269C27264() & 1) == 0)
      {
        v9 = [v2 navigationController];
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_269C299F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v12 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v12)
  {
    sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_269D9EBF0;
    *(v13 + 32) = a2;
    *(v13 + 40) = 0;
    v14 = v12;
    MEMORY[0x26D64DA70](v13);
    sub_269D98380();

    (*(v7 + 8))(v10, v6);
    if (v30)
    {
      if (v29 == 0xD000000000000029 && 0x8000000269DAC210 == v30 || (sub_269D9B280() & 1) != 0)
      {
        v15 = [objc_allocWithZone(MEMORY[0x277D75B70]) init];

        return v15;
      }
    }

    v17 = *(v3 + v11);
    if (v17)
    {
      v18 = v17;
      sub_269C492FC(a2, v19);
      v21 = v20;

      if (v21)
      {
        v22 = sub_269D9A5F0();
        v23 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

        if (v23)
        {
          type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            v25 = v24;
            v26 = v23;
            v27 = sub_269D59EA0();
            v28 = sub_269D9A5F0();

            [v27 setText_];

            return v25;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

double sub_269C29F00(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  v12 = a6(a4);

  return v12;
}

void sub_269C2A010()
{

  sub_269C32388(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
  sub_269C254E8(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
}

id ScheduleOccurrenceViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_269C2A2B8()
{
  v1 = [v0 tableView];
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
  v4 = sub_269D9A7E0();

  if (v4 >> 62)
  {
    v5 = sub_269D9AF50();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 >= 1)
      {
        v6 = 0;
        v10 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x26D651260](v6, v4);
          }

          else
          {
            v9 = *(v4 + 8 * v6 + 32);
          }

          v14 = v9;
          sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
          if (swift_dynamicCast())
          {
            sub_269C25520(v12, v15);
            v8 = v16;
            v7 = v17;
            __swift_project_boxed_opaque_existential_1Tm(v15, v16);
            (*(v7 + 8))(*(v11 + v10), v8, v7);
            __swift_destroy_boxed_opaque_existential_1Tm(v15);
          }

          else
          {
            v13 = 0;
            memset(v12, 0, sizeof(v12));
            sub_269C32388(v12, &unk_28034DC20, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
          }

          ++v6;
        }

        while (v5 != v6);

        return;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }
}

void sub_269C2A4DC(const char *a1, ...)
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, a1, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C2A2B8();
}

void sub_269C2A70C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97630();
  v7 = sub_269D97640() & 1;
  (*(v3 + 8))(v6, v2);
  if (v7 != *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime))
  {
    *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime) = v7;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B728);
    v9 = sub_269D98230();
    v10 = sub_269D9AB80();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] 24 hour time changed", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D652460](v12, -1, -1);
      MEMORY[0x26D652460](v11, -1, -1);
    }

    sub_269C2A2B8();
  }
}

void sub_269C2A944()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate) & 1) == 0)
  {
    v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      (*(v3 + 24))(v0, ObjectType, v3);
      swift_unknownObjectRelease();
      *(v0 + v1) = 1;
    }
  }
}

void sub_269C2AA48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void ScheduleOccurrenceViewController.sleepScheduleComponentsEditViewEditingDidChange(_:)(uint64_t a1)
{
  v23 = a1;
  sub_269C2FAD8(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_269D97870();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v11 = (v10 + 48);
  v24 = (v10 + 8);
  v25 = (v10 + 32);
  v12 = 2;
  v13 = &off_287A9F3D8;
  do
  {
    v14 = *&v26[v9];
    if (!v14)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v15 = *v13;
    v27 = *(v13 - 1);
    v28 = v15;

    v16 = v14;
    sub_269D983B0();

    if ((*v11)(v4, 1, v5) == 1)
    {

      sub_269C30EF8(v4, &qword_28034D998, MEMORY[0x277CC9AF8]);
    }

    else
    {
      (*v25)(v8, v4, v5);
      v17 = [v26 tableView];
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = v17;

      v19 = sub_269D97830();
      v20 = [v18 cellForRowAtIndexPath_];

      if (v20)
      {
        type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_269CF5D70(v23);
        }
      }

      (*v24)(v8, v5);
    }

    v13 += 2;
    --v12;
  }

  while (v12);
  swift_arrayDestroy();
  v21 = [v26 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setEnabled_];
  }
}

uint64_t ScheduleOccurrenceViewController.sleepScheduleComponentsEditViewEditingDidEnd(_:)(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18[-1] - v9;
  v11 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v12 = v11[1];
  v17 = *v11;
  v18[0] = v12;
  *(v18 + 11) = *(v11 + 27);
  v13 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(v13 + 144));
  v14 = v11[1];
  v17 = *v11;
  v18[0] = v14;
  *(v18 + 11) = *(v11 + 27);
  sub_269D1EA14(*(v13 + 144));
  ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
  v15 = *(v3 + 8);
  v15(v6, v2);
  return (v15)(v10, v2);
}

uint64_t sub_269C2B004(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
  v3 = a1 + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) setWeekdays_];
  sub_269D987C0();
  if (v8)
  {
    v5 = *(v2 + v4);
    v6 = sub_269D976E0();
    [v8 allowableRangeForModifiedOccurrence:v5 gregorianCalendar:v6];
  }

  sub_269D987D0();
  return sub_269D98780();
}

BOOL ScheduleOccurrenceViewController.scheduleOccurrenceComponentsAccessibilityTableViewCellCanUpdateValue(_:)(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
  sub_269CF3E6C(v6);
  if (v7)
  {
    v8 = ScheduleOccurrenceEditModel.isValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v6, 3600.0, 72000.0, 300.0);
  }

  else
  {
    v8 = ScheduleOccurrenceEditModel.isValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v6, 3600.0, 72000.0, 300.0);
  }

  v9 = v8;
  (*(v3 + 8))(v6, v2);
  return v9;
}

void ScheduleOccurrenceViewController.scheduleOccurrenceComponentsAccessibilityTableViewCellDidUpdateValue(_:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_269C2FAD8(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v167 = &v160[-v7];
  sub_269C2FAD8(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v166 = &v160[-v10];
  v11 = sub_269D971F0();
  v12 = *(v11 - 8);
  v175 = v11;
  v176 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v164 = &v160[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v160[-v17];
  MEMORY[0x28223BE20](v19, v20);
  v171 = &v160[-v21];
  MEMORY[0x28223BE20](v22, v23);
  v169 = &v160[-v24];
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v160[-v27];
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v160[-v31];
  MEMORY[0x28223BE20](v33, v34);
  v163 = &v160[-v35];
  MEMORY[0x28223BE20](v36, v37);
  v170 = &v160[-v38];
  MEMORY[0x28223BE20](v39, v40);
  v168 = &v160[-v41];
  MEMORY[0x28223BE20](v42, v43);
  v172 = &v160[-v44];
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v160[-v47];
  MEMORY[0x28223BE20](v49, v50);
  v174 = &v160[-v51];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v52 = sub_269D98250();
  __swift_project_value_buffer(v52, qword_280C0B728);
  v53 = a1;
  v54 = sub_269D98230();
  v55 = sub_269D9AB80();

  v56 = os_log_type_enabled(v54, v55);
  v165 = v18;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v178 = v162;
    *v57 = 136446723;
    v58 = sub_269D9B4D0();
    v161 = v55;
    v60 = sub_269C2EACC(v58, v59, &v178);
    v173 = v2;
    v61 = v60;

    *(v57 + 4) = v61;
    *(v57 + 12) = 2082;
    v177 = *(v53 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
    v62 = sub_269D9A660();
    v64 = sub_269C2EACC(v62, v63, &v178);

    *(v57 + 14) = v64;
    *(v57 + 22) = 2081;
    v65 = v174;
    sub_269CF3E6C(v174);
    sub_269C2FCB0(&unk_28034D9B0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v66 = v28;
    v67 = v48;
    v68 = v32;
    v69 = v175;
    v70 = sub_269D9B230();
    v72 = v71;
    v73 = v69;
    v32 = v68;
    v48 = v67;
    v28 = v66;
    (*(v176 + 8))(v65, v73);
    v74 = sub_269C2EACC(v70, v72, &v178);
    v2 = v173;

    *(v57 + 24) = v74;
    _os_log_impl(&dword_269C18000, v54, v161, "[%{public}s] AX %{public}s changed to %{private}s", v57, 0x20u);
    v75 = v162;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v75, -1, -1);
    MEMORY[0x26D652460](v57, -1, -1);
  }

  v76 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
  if (*(v53 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component))
  {
    sub_269CF3E6C(v32);
    v77 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
    v78 = [*(v76 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
    sub_269D97120();

    sub_269D97150();
    v79 = v175;
    if (v80)
    {
      v81 = *(v176 + 8);
      v81(v28, v175);
      v81(v32, v79);
LABEL_47:
      sub_269C2A2B8();
      return;
    }

    sub_269D971A0();
    v84 = v83;
    v85 = *(v176 + 8);
    v85(v28, v79);
    if (v84 & 1) != 0 || (sub_269D97150(), (v86) || (sub_269D971A0(), (v87))
    {
      v88 = v32;
LABEL_14:
      v89 = v79;
LABEL_15:
      v85(v88, v89);
      goto LABEL_47;
    }

    v173 = v2;
    v99 = v169;
    (*(v176 + 16))(v169, v32, v79);
    v100 = sub_269D97150();
    v102 = v101;
    v103 = v100;
    v104 = sub_269D971A0();
    v174 = v32;
    v105 = v79;
    v107 = v106;
    v85(v99, v105);
    v108 = v103 * 60.0 * 60.0;
    if (v102)
    {
      v108 = 0.0;
    }

    v109 = v104 * 60.0;
    if (v107)
    {
      v109 = 0.0;
    }

    sub_269D225A8(round((v108 + v109) / 300.0) * 300.0, &v178);
    v110 = v179;
    v172 = v178;
    v176 = v76;
    v111 = [*(v76 + v77) bedtimeComponents];
    v112 = v171;
    sub_269D97120();

    v113 = sub_269D97150();
    if (v114)
    {
      v115 = 0;
    }

    else
    {
      v115 = v113;
    }

    v116 = sub_269D971A0();
    v118 = v117;
    v85(v112, v105);
    if (v118)
    {
      v119 = 0;
    }

    else
    {
      v119 = v116;
    }

    v120 = v110;
    v121 = v172;
    sub_269C679CC(v115, v119, v172, v120);
    if (v122 > 72000.0)
    {
      v123 = v174;
LABEL_46:
      v85(v123, v105);
      goto LABEL_47;
    }

    v146 = v174;
    if (v122 >= 3600.0)
    {
      v147 = [*(v176 + v77) bedtimeComponents];
      v148 = v165;
      sub_269D97120();

      if (v120 != 60 || !__OFADD__(v121, 1))
      {
        v149 = sub_269D977A0();
        (*(*(v149 - 8) + 56))(v166, 1, 1, v149);
        v150 = sub_269D97810();
        (*(*(v150 - 8) + 56))(v167, 1, 1, v150);
        v151 = v164;
        sub_269D971D0();
        ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
        v152 = v151;
        v153 = v175;
        v85(v152, v175);
        v154 = v148;
LABEL_57:
        v85(v154, v153);
        v88 = v146;
        v89 = v153;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_59;
    }

LABEL_53:
    v88 = v146;
    v89 = v175;
    goto LABEL_15;
  }

  sub_269CF3E6C(v48);
  sub_269D97150();
  v79 = v175;
  if (v82)
  {
    (*(v176 + 8))(v48, v175);
    goto LABEL_47;
  }

  sub_269D971A0();
  v90 = v176;
  if (v91)
  {
    (*(v176 + 8))(v48, v79);
    goto LABEL_47;
  }

  v92 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v93 = [*(v76 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
  v94 = v172;
  sub_269D97120();

  sub_269D97150();
  if (v95)
  {
    v96 = *(v90 + 8);
    v96(v94, v79);
    v96(v48, v79);
    goto LABEL_47;
  }

  sub_269D971A0();
  v98 = v97;
  v85 = *(v90 + 8);
  v85(v94, v79);
  if (v98)
  {
    v88 = v48;
    goto LABEL_14;
  }

  v172 = v48;
  v173 = v2;
  v124 = v168;
  (*(v90 + 16))(v168, v48, v79);
  v125 = sub_269D97150();
  v127 = v126;
  v128 = v125;
  v129 = sub_269D971A0();
  v105 = v79;
  v131 = v130;
  v85(v124, v105);
  v132 = v128 * 60.0 * 60.0;
  if (v127)
  {
    v132 = 0.0;
  }

  v133 = v129 * 60.0;
  if (v131)
  {
    v133 = 0.0;
  }

  sub_269D225A8(round((v132 + v133) / 300.0) * 300.0, &v178);
  v134 = v178;
  v135 = v179;
  v176 = v76;
  v136 = [*(v76 + v92) wakeUpComponents];
  v137 = v170;
  sub_269D97120();

  v138 = sub_269D97150();
  if (v139)
  {
    v140 = 0;
  }

  else
  {
    v140 = v138;
  }

  v141 = sub_269D971A0();
  v143 = v142;
  v85(v137, v105);
  if (v143)
  {
    v144 = 0;
  }

  else
  {
    v144 = v141;
  }

  sub_269C679CC(v134, v135, v140, v144);
  if (v145 > 72000.0)
  {
    v123 = v172;
    goto LABEL_46;
  }

  v146 = v172;
  if (v145 < 3600.0)
  {
    goto LABEL_53;
  }

  if (v135 != 60 || !__OFADD__(v134, 1))
  {
    v155 = sub_269D977A0();
    (*(*(v155 - 8) + 56))(v166, 1, 1, v155);
    v156 = sub_269D97810();
    (*(*(v156 - 8) + 56))(v167, 1, 1, v156);
    v157 = v163;
    sub_269D971D0();
    v158 = [*(v176 + v92) wakeUpComponents];
    v159 = v174;
    sub_269D97120();

    ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
    v153 = v175;
    v85(v159, v175);
    v154 = v157;
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.scheduleOccurrenceAlarmVolumeEditingDidEnd(_:)(UISlider *a1)
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = a1;
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    [(UISlider *)v3 value];
    v11 = sub_269D9A950();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Volume changed to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  [(UISlider *)v3 value];
  ScheduleOccurrenceEditModel.alarmVolume.setter(v14);
  sub_269D4B270();
}

void sub_269C2C218(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.switchCellValueChanged(_:value:)(HKSwitchTableViewCell_optional *_, Swift::Bool value)
{
  if (_)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {
      ScheduleOccurrenceEditModel.alarmEnabled.setter(value);
      sub_269D4B714();
    }

    else
    {
      type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
      if (swift_dynamicCastClass())
      {
        ScheduleOccurrenceEditModel.allowsSnooze.setter(value);
      }
    }
  }
}

void ScheduleOccurrenceViewController.tonePickerViewController(_:willPresent:)(int a1, id a2)
{
  if (a2)
  {
    [a2 setShowsEditButtonInNavigationBar_];

    [a2 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

id ScheduleOccurrenceViewController.tonePickerViewController(_:didDismiss:)(int a1, id a2)
{
  if (a2)
  {
    return [a2 setDelegate_];
  }

  __break(1u);
  return result;
}

uint64_t sub_269C2C808(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v12 = sub_269D9A630();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a3;
  v15 = a1;
  sub_269C30F68(v12, a4, a6, a7);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.saveButtonPressed(_:)(UIBarButtonItem_optional a1)
{
  v2 = v1;
  isa = a1.value.super.super.isa;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  if ((*(v5 + 56) & 1) != 0 || (v6 = *(v5 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence), swift_beginAccess(), ([v6 isEqual_] & 1) == 0))
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = ObjectType;
    v21 = *(v5 + 57);
    swift_retain_n();
    if ((v21 & 1) == 0 && (ScheduleOccurrenceEditModel.hasUpcomingSingleDayOverride.getter() & 1) != 0 && ScheduleOccurrenceEditModel.scheduleConflictsWithOverride.getter())
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v22 = sub_269D98250();
      __swift_project_value_buffer(v22, qword_280C0B728);
      v23 = sub_269D98230();
      v24 = sub_269D9AB80();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32[0] = v26;
        *v25 = 136446210;
        v27 = sub_269D9B4D0();
        v29 = sub_269C2EACC(v27, v28, v32);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_269C18000, v23, v24, "[%{public}s] schedule conflicts with override, presenting alert", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D652460](v26, -1, -1);
        MEMORY[0x26D652460](v25, -1, -1);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = sub_269C31178;
      *(v30 + 24) = v20;
      sub_269C1B0B8(0, &unk_28034EF40, 0x277D75110);

      v31 = static UIAlertController.overlappingOverrideOccurrenceAlert(sender:dismissHandler:)(isa, sub_269C31180, v30);
      [v2 presentViewController:v31 animated:1 completion:0];
    }

    else
    {
      sub_269C2CDCC(1, 0, v19, ObjectType);
    }
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B728);
    v8 = sub_269D98230();
    v9 = sub_269D9AB80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136446210;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, v32);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] save button pressed but no changes were made", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    v15 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
    if ((v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] & 1) == 0)
    {
      v16 = &v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
        {

          sub_269D98750();
        }

        v18 = swift_getObjectType();
        (*(v17 + 24))(v2, v18, v17);
        swift_unknownObjectRelease();
        v2[v15] = 1;
      }
    }
  }
}

void sub_269C2CDCC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280C0B728);
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136446466;
      v10 = sub_269D9B4D0();
      v12 = sub_269C2EACC(v10, v11, v26);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      v13 = sub_269D9A660();
      v15 = sub_269C2EACC(v13, v14, v26);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Saving (deleteOverride: %{public}s)", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_269C2D0E4(a2 & 1);
    }
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v18 = sub_269D98250();
    __swift_project_value_buffer(v18, qword_280C0B728);
    oslog = sub_269D98230();
    v19 = sub_269D9AB80();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136446210;
      v22 = sub_269D9B4D0();
      v24 = sub_269C2EACC(v22, v23, v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_269C18000, oslog, v19, "[%{public}s] Cancelling", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D652460](v21, -1, -1);
      MEMORY[0x26D652460](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_269C2D0E4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate) & 1) == 0)
  {
    v3 = result;
    v4 = v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v4 + 8);
      if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      v7 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();
      (*(v5 + 8))(v1, v7, v3 & 1, ObjectType, v5);

      result = swift_unknownObjectRelease();
      *(v1 + v2) = 1;
    }
  }

  return result;
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.ppt_toggleAlarmEnabled()()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v2 = [v3 isEnabled];

  ScheduleOccurrenceEditModel.alarmEnabled.setter(v2 ^ 1);
}

void sub_269C2D3B8(uint64_t a1)
{
  if (!qword_28034D810)
  {
    sub_269C1B0B8(255, &unk_2803519B0, 0x277D62400);
    v1 = sub_269D987A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034D810);
    }
  }
}

void sub_269C2D430(uint64_t a1)
{
  if (!qword_28034D820)
  {
    type metadata accessor for ScheduleOccurrenceEditModel(255);
    v1 = sub_269D987A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034D820);
    }
  }
}

void sub_269C2D498()
{
  if (!qword_2803519C0)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803519C0);
    }
  }
}

void sub_269C2D4F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269C2FD98(255, a3, a4, a5, sub_269C1B0B8);
    v6 = sub_269D987E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269C2D578(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 userInfo];
  v4 = MEMORY[0x277D84F70];
  if (v3)
  {
    v5 = v3;
    v6 = sub_269D9A490();

    *&v12[0] = sub_269D757D8(v2);
    *(&v12[0] + 1) = v7;
    sub_269D9AFA0();
    if (*(v6 + 16))
    {
      v8 = sub_269C432D0(&v11);
      if (v9)
      {
        sub_269C322D0(*(v6 + 56) + 32 * v8, v12);
        sub_269C3227C(&v11);

        goto LABEL_7;
      }
    }

    sub_269C3227C(&v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_269C326EC(0, &qword_28034DC08, v4 + 8, MEMORY[0x277D83D88]);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269C2D6BC(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 userInfo];
  v4 = MEMORY[0x277D84F70];
  if (v3)
  {
    v5 = v3;
    v6 = sub_269D9A490();

    *&v12[0] = sub_269D757D8(v2);
    *(&v12[0] + 1) = v7;
    sub_269D9AFA0();
    if (*(v6 + 16))
    {
      v8 = sub_269C432D0(v11);
      if (v9)
      {
        sub_269C322D0(*(v6 + 56) + 32 * v8, v12);
        sub_269C3227C(v11);

        goto LABEL_7;
      }
    }

    sub_269C3227C(v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_269C326EC(0, &qword_28034DC08, v4 + 8, MEMORY[0x277D83D88]);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 2;
  }
}

void *sub_269C2D814@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_269C2D840@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_269C2D8AC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D64E070](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_269C2D900(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x26D64E080](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_269C2D980(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB50, type metadata accessor for HKError, &unk_269D9F10C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_269C2D9EC(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB50, type metadata accessor for HKError, &unk_269D9F10C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_269C2DA5C(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_269C2DAD0()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269C2DB18(uint64_t a1)
{
  v2 = *v1;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v2);
  return sub_269D9B390();
}

uint64_t sub_269C2DB5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269C2DBE4(uint64_t a1, id *a2)
{
  result = sub_269D9A610();
  *a2 = 0;
  return result;
}

uint64_t sub_269C2DC5C(uint64_t a1, id *a2)
{
  v3 = sub_269D9A620();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_269C2DCDC@<X0>(uint64_t *a2@<X8>)
{
  sub_269D9A630();
  v3 = sub_269D9A5F0();

  *a2 = v3;
  return result;
}

uint64_t sub_269C2DD20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_269C2FC70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_269C2DD70(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_269C2DDDC(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_269C2DE48(void *a1, uint64_t a2)
{
  v4 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_269C2DEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_269C2DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9B350();
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t sub_269C2DFD8(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DD00, type metadata accessor for Name, &unk_269DA03DC);
  sub_269C2FCB0(&qword_28034DD08, type metadata accessor for Name, &unk_269DA037C);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E094(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DD20, type metadata accessor for HKSPSleepLaunchURLRoute, &unk_269DA014C);
  sub_269C2FCB0(&qword_28034DD28, type metadata accessor for HKSPSleepLaunchURLRoute, &unk_269DA00F4);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E150(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DD30, type metadata accessor for TextStyle, &unk_269DA0004);
  sub_269C2FCB0(&qword_28034DD38, type metadata accessor for TextStyle, &unk_269D9FFA4);

  return sub_269D9B1B0();
}

double sub_269C2E20C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_269C2E218(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DBC0, type metadata accessor for Weight, &unk_269D9F560);
  v1 = sub_269C2FCB0(&qword_28034DBC8, type metadata accessor for Weight, &unk_269D9F500);
  sub_269C32228(v1, v2, v3);
  return sub_269D9B1B0();
}

uint64_t sub_269C2E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError, &unk_269D9FCB8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_269C2E364(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DB90, type metadata accessor for HKSPProvenanceSource, &unk_269D9FAB4);
  sub_269C2FCB0(&qword_28034DB98, type metadata accessor for HKSPProvenanceSource, &unk_269D9FA5C);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E420(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DD10, type metadata accessor for HKFeatureIdentifier, &unk_269DA028C);
  sub_269C2FCB0(&qword_28034DD18, type metadata accessor for HKFeatureIdentifier, &unk_269DA0234);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E4DC(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DBB0, type metadata accessor for NSKeyValueChangeKey, &unk_269D9FBA8);
  sub_269C2FCB0(&qword_28034DBB8, type metadata accessor for NSKeyValueChangeKey, &unk_269D9F664);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E598(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DBA0, type metadata accessor for Key, &unk_269D9FB64);
  sub_269C2FCB0(&qword_28034DBA8, type metadata accessor for Key, &unk_269D9F7B0);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E654(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
  sub_269C2FCB0(&qword_28034DC00, type metadata accessor for AttributeName, &unk_269D9F1C4);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E710(uint64_t a1)
{
  sub_269C2FCB0(&unk_2803505D0, type metadata accessor for FeatureKey, &unk_269D9FC74);
  sub_269C2FCB0(&qword_28034DBF0, type metadata accessor for FeatureKey, &unk_269D9F2D8);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E7CC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_269D9A5F0();

  *a2 = v3;
  return result;
}

uint64_t sub_269C2E814(uint64_t a1)
{
  sub_269C2FCB0(&qword_28034DBD8, type metadata accessor for TraitKey, &unk_269D9FBEC);
  sub_269C2FCB0(&unk_28034DBE0, type metadata accessor for TraitKey, &unk_269D9F3EC);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E8D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26D6515D0](*&v1);
}

uint64_t sub_269C2E92C()
{
  v0 = sub_269D9A630();
  v1 = MEMORY[0x26D650990](v0);

  return v1;
}

uint64_t sub_269C2E968(uint64_t a1)
{
  sub_269D9A630();
  sub_269D9A6A0();
}

uint64_t sub_269C2E9BC(uint64_t a1)
{
  sub_269D9A630();
  sub_269D9B350();
  sub_269D9A6A0();
  v1 = sub_269D9B390();

  return v1;
}

uint64_t sub_269C2EA30(void *a1, uint64_t *a2)
{
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_269D9B280();
  }

  return v7 & 1;
}

unint64_t sub_269C2EACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269C2EB98(v11, 0, 0, 1, a1, a2);
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
    sub_269C322D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_269C2EB98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269C2ECA4(a5, a6);
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
    result = sub_269D9B040();
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

void *sub_269C2ECA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_269C2ECF0(a1, a2);
  sub_269C2EE20(&unk_287A9F200);
  return v3;
}

void *sub_269C2ECF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_269C2EF0C(v5, 0);
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

  result = sub_269D9B040();
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
        v10 = sub_269D9A730();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269C2EF0C(v10, 0);
        result = sub_269D9AFF0();
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

uint64_t sub_269C2EE20(uint64_t result)
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

  result = sub_269C2EF98(result, v11, 1, v3);
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

void *sub_269C2EF0C(uint64_t a1, uint64_t a2)
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

  sub_269C326EC(0, &qword_280C0AD88, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269C2EF98(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C326EC(0, &qword_280C0AD88, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

void sub_269C2F0A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269D97650();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmConfigurationObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_snoozeDurationPickerObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelEditObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_significantTimeChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_localeChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepDurationGoalObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_validScheduleRangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_willResignActiveObserver] = 0;
  v13 = &v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] = 0;
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource] = 0;
  v14 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime;
  sub_269D97630();
  v15 = sub_269D97640();
  (*(v9 + 8))(v12, v8);
  v4[v14] = v15 & 1;
  v16 = a3;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] = a1;
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_allowsDeletion] = a2;
  swift_beginAccess();

  sub_269C324A4(a3, v13);
  swift_endAccess();
  type metadata accessor for AlarmPreviewPlayer();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmPreviewPlayer] = AlarmPreviewPlayer.init(model:)(v17);
  if (*(a1 + 57) & 1) == 0 && (*(a1 + 56))
  {
    swift_beginAccess();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v4[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = 1;
  v18 = sub_269D9A5F0();
  v19 = type metadata accessor for SleepTableWelcomeController();
  v34.receiver = v4;
  v34.super_class = v19;
  v20 = objc_msgSendSuper2(&v34, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v18, 0, 0, 1);

  v21 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v22 = v20;
  v23 = [v21 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v22 setTableView_];

  v24 = [v22 tableView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [objc_opt_self() systemBackgroundColor];
  [v25 setBackgroundColor_];

  v27 = [v22 tableView];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  v29 = [v22 tableView];
  if (v29)
  {

    v30 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v29 setTableHeaderView_];

    v31 = v22;
    v32 = [v31 headerView];
    [v32 setTitleHyphenationFactor_];

    sub_269C32388(v16, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    return;
  }

LABEL_12:
  __break(1u);
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

id sub_269C2F660(void *a1, int a2, int a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v40) = a5;
  LODWORD(v39) = a3;
  v13 = sub_269D977A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = a8;
  v42[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a8 - 8) + 32))();
  result = [a1 isSingleDayOverride];
  if (result)
  {
    v37 = a2;
    v35 = (*(a9 + 40))(a8, a9);
    v19 = (*(a9 + 24))(a8, a9);
    v36 = v14;
    v20 = *(v14 + 16);
    v38 = a6;
    v20(v17, a6, v13);
    type metadata accessor for ScheduleOccurrenceEditModel(0);
    v21 = swift_allocObject();
    sub_269C2D3B8(0);
    swift_allocObject();
    v22 = a1;
    *(v21 + 16) = sub_269D98790();
    sub_269C2D430(0);
    swift_allocObject();
    *(v21 + 24) = sub_269D98790();
    sub_269C2D498();
    swift_allocObject();
    *(v21 + 32) = sub_269D98790();
    v41[0] = 0;
    sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
    swift_allocObject();
    *(v21 + 40) = sub_269D987F0();
    *(v21 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
    [v22 copy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
    swift_dynamicCast();
    *(v21 + 48) = v41[5];
    *(v21 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v22;
    *(v21 + 56) = v39 & 1;
    *(v21 + 57) = 1;
    v23 = v22;
    [v23 weekdays];
    v24 = v35;
    *(v21 + 64) = 0;
    *(v21 + 72) = v24;
    *(v21 + 80) = v19;
    *(v21 + 88) = v40 & 1;
    v39 = v13;
    v40 = v17;
    v20((v21 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v17, v13);

    sub_269D987C0();
    v25 = v41[0];
    if (v41[0])
    {
      v26 = *(v21 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
      v27 = sub_269D976E0();
      v28 = [v25 allowableRangeForModifiedOccurrence:v26 gregorianCalendar:v27];
    }

    else
    {
      v28 = 0;
    }

    v41[0] = v28;
    sub_269D987D0();

    v29 = *(v36 + 8);
    v30 = v39;
    v29(v40, v39);
    sub_269C2DB5C(v42, v41);
    v31 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
    sub_269C2F0A4(v21, v37 & 1, v41);
    v33 = v32;

    v29(v38, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269C2FAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C2FB3C(uint64_t a1)
{
  if (!qword_280C0B170)
  {
    sub_269D9ACD0();
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    sub_269C2FCB0(&qword_280C0B4B0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    sub_269C2FC08();
    v1 = sub_269D98710();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B170);
    }
  }
}

unint64_t sub_269C2FC08()
{
  result = qword_280C0AEC0;
  if (!qword_280C0AEC0)
  {
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AEC0);
  }

  return result;
}

uint64_t sub_269C2FC70(uint64_t a1)
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

uint64_t sub_269C2FCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C2FD08(uint64_t a1, uint64_t a2)
{
  sub_269C2FD98(0, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding, sub_269C3232C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269C2FD98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_269D9AE60();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C2FDFC(uint64_t a1)
{
  if (!qword_280C0B150)
  {
    sub_269C326EC(255, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    v1 = sub_269D987E0();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B150);
    }
  }
}

unint64_t sub_269C2FE88()
{
  result = qword_28034EFA0;
  if (!qword_28034EFA0)
  {
    sub_269C2D4F8(255, &qword_28034D830, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFA0);
  }

  return result;
}

void sub_269C2FF08(uint64_t a1)
{
  if (!qword_28034D8B0)
  {
    sub_269C2FD98(255, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510, sub_269C1B0B8);
    v1 = sub_269D98730();
    if (!v2)
    {
      atomic_store(v1, &qword_28034D8B0);
    }
  }
}

unint64_t sub_269C2FFF4()
{
  result = qword_28034D8F0;
  if (!qword_28034D8F0)
  {
    sub_269C3232C(255, &qword_28034E1E0, MEMORY[0x277D74B60]);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_28034D8F0);
  }

  return result;
}

unint64_t sub_269C30054()
{
  result = qword_28034D960;
  if (!qword_28034D960)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034D960);
  }

  return result;
}

unint64_t sub_269C300C0()
{
  result = qword_28034D970;
  if (!qword_28034D970)
  {
    sub_269C2D4F8(255, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034D970);
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

void sub_269C301BC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v2)
  {
    v3 = v2;
    sub_269D98380();

    if (v5)
    {
      if ((v4 != 0xD000000000000029 || 0x8000000269DAC210 != v5) && (sub_269D9B280() & 1) == 0 && (v4 != 0xD000000000000025 || 0x8000000269DAC320 != v5))
      {
        sub_269D9B280();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_269C302BC(void *a1)
{
  type metadata accessor for ScheduleOccurrenceDayPickerTableViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    v5 = OBJC_IVAR____TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell_picker;
    v6 = v3;
    swift_beginAccess();
    sub_269D73F54(*(v4 + 64), [*(v4 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) weekdays]);
    *(*(v6 + v5) + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_alertPresenter + 8) = &off_287AA1480;
    swift_unknownObjectWeakAssign();
    [*(v6 + v5) addTarget:v1 action:sel_scheduleDayPickerDidChange_ forControlEvents:4096];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = [*(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
    [v9 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
    swift_dynamicCast();
    v10 = v28[0];
    v11 = [v28[0] isEnabled];
LABEL_7:
    v14 = v11;

    [v8 setOn:v14 animated:1];
    [v8 setDelegate_];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v8 = v12;
    v13 = [*(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
    [v13 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
    swift_dynamicCast();
    v10 = v28[0];
    v11 = [v28[0] allowsSnooze];
    goto LABEL_7;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    type metadata accessor for AlarmSnoozeDurationModel(0);
    v18 = swift_allocObject();
    sub_269D97A20();
    *(v18 + 16) = v17;
    v19 = OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel;
LABEL_13:
    *&v16[v19] = v18;

    [v16 setNeedsUpdateConfiguration];

    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v16 = v20;
    v21 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    v18 = swift_allocObject();
    sub_269D97A20();
    *(v18 + 16) = v21;
    v19 = OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel;
    goto LABEL_13;
  }

  type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    sub_269CF55D0(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model));
    v24 = v23 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
    swift_beginAccess();
    *(v24 + 8) = &protocol witness table for ScheduleOccurrenceViewController;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v32 = a1;
    sub_269C1B0B8(0, &unk_28034DC10, 0x277D75B48);
    sub_269C3232C(0, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
    v25 = a1;
    if (swift_dynamicCast())
    {
      sub_269C25520(&v31, v28);
      v26 = v29;
      v27 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      (*(v27 + 8))(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model), v26, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }
  }
}

id sub_269C3079C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v9)
  {
    sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_269D9EBF0;
    *(v10 + 32) = a1;
    *(v10 + 40) = 0;
    v11 = v9;
    MEMORY[0x26D64DA70](v10);
    sub_269D98380();

    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      if (v14 == 0xD00000000000002BLL && 0x8000000269DAC120 == v15)
      {

        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }

      v12 = sub_269D9B280();

      if (v12)
      {
        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }
    }
  }

  return 0;
}

double sub_269C3096C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v9)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269D9EBF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  v11 = v9;
  MEMORY[0x26D64DA70](v10);
  sub_269D98380();

  (*(v5 + 8))(v8, v4);
  if (!v15)
  {
    return *MEMORY[0x277D76F30];
  }

  if (v14 == 0xD000000000000029 && 0x8000000269DAC210 == v15)
  {

    return 0.0;
  }

  v13 = sub_269D9B280();

  result = 0.0;
  if ((v13 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C30B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v9)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269D9EBF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  v11 = v9;
  MEMORY[0x26D64DA70](v10);
  sub_269D98380();

  (*(v5 + 8))(v8, v4);
  if (!v15)
  {
    return *MEMORY[0x277D76F30];
  }

  if (v14 == 0xD00000000000002BLL && 0x8000000269DAC120 == v15)
  {

    return 10.0;
  }

  v13 = sub_269D9B280();

  result = 10.0;
  if ((v13 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C30CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_269D97870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v11 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v11)
  {
    return 44.0;
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269D9EBF0;
  *(v12 + 32) = a1;
  *(v12 + 40) = 0;
  v13 = v11;
  MEMORY[0x26D64DA70](v12);
  sub_269D98380();

  (*(v6 + 8))(v9, v5);
  if (!v23)
  {
    goto LABEL_7;
  }

  if (v22 == 0xD000000000000029 && 0x8000000269DAC210 == v23)
  {

    return 1.0;
  }

  v15 = sub_269D9B280();

  result = 1.0;
  if ((v15 & 1) == 0)
  {
LABEL_7:
    v16 = *(v3 + v10);
    if (v16)
    {
      v17 = v16;
      sub_269C492FC(a1, v18);
      v20 = v19;

      if (v20)
      {

        return 45.0;
      }
    }

    return 44.0;
  }

  return result;
}

uint64_t sub_269C30EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269C2FAD8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269C30F68(uint64_t a1, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);

  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    format = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (a2)
    {

      v16 = sub_269D9A660();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_269C2EACC(v16, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_269C18000, v9, v10, format, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  return a4(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_269C316CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269C316EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_269C32144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034DB78;
  if (!qword_28034DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DB78);
  }

  return result;
}

unint64_t sub_269C32228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034DBD0;
  if (!qword_28034DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DBD0);
  }

  return result;
}

uint64_t sub_269C322D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269C3232C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_269C32388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_269C2FD98(0, a2, a3, a4, sub_269C3232C);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_269C324A4(uint64_t a1, uint64_t a2)
{
  sub_269C2FD98(0, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding, sub_269C3232C);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_269C326EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269C32BC4()
{
  sub_269D99CE0();
  v0 = sub_269D99D30();

  qword_280C0AFC8 = v0;
  return result;
}

id sub_269C32C34(double a1, uint64_t a2, uint64_t a3, double *a4)
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v7 = result;
    sub_269C44580(a3);
    sub_269D9AE40();
    v9 = v8;

    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepStagesDiagram.init(sleepDayModel:sleepStagesModel:options:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a3;
  type metadata accessor for SleepDayModel(0);
  sub_269C4264C(&unk_280C0B810, type metadata accessor for SleepDayModel, &protocol conformance descriptor for SleepDayModel);
  *a4 = sub_269D98C70();
  a4[1] = v7;
  v8 = type metadata accessor for SleepStagesDiagram(0);
  result = sub_269C422C4(a2, a4 + *(v8 + 20), type metadata accessor for SleepStagesModel);
  *(a4 + *(v8 + 24)) = v6;
  return result;
}

uint64_t SleepStagesDiagram.body.getter()
{
  sub_269C32EF0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C331D8(v0, v4);
  v5 = type metadata accessor for SleepStagesDiagram(0);
  sub_269C33E98((*(v0 + *(v5 + 24)) & 4) != 0);
  return sub_269C42558(v4, sub_269C32EF0);
}

void sub_269C32EF0(uint64_t a1)
{
  if (!qword_280C0B570)
  {
    sub_269C4232C(255, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
    v1 = sub_269D99D50();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B570);
    }
  }
}

void sub_269C32F80(uint64_t a1)
{
  if (!qword_280C0B560)
  {
    sub_269C33014(255);
    sub_269C4264C(&qword_280C0B538, sub_269C33014, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B560);
    }
  }
}

void sub_269C33014(uint64_t a1)
{
  if (!qword_280C0B530)
  {
    sub_269C41AFC(255, qword_280C0B740, type metadata accessor for Somnogram, sub_269C330BC);
    v1 = sub_269D9A1C0();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B530);
    }
  }
}

void sub_269C330BC(uint64_t a1)
{
  if (!qword_280C0B608)
  {
    sub_269C4232C(255, &qword_280C0B610, sub_269C3314C, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B608);
    }
  }
}

void sub_269C3314C(uint64_t a1)
{
  if (!qword_280C0B618)
  {
    sub_269C420D4(255, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0B618);
    }
  }
}

uint64_t sub_269C331D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269C4232C(0, &qword_280C0B5F8, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v27 - v6);
  sub_269C32F80(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4232C(0, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a1 + *(type metadata accessor for SleepStagesDiagram(0) + 20));
  v17 = sub_269CDBD9C(2u, v16);
  v18 = v17 + sub_269CDBD9C(3u, v16);
  if (v18 + sub_269CDBD9C(1u, v16) <= 0.0)
  {
    *v7 = 4;
    swift_storeEnumTagMultiPayload();
    v23 = sub_269C4264C(&qword_280C0B568, sub_269C32F80, MEMORY[0x277CE1198]);
    sub_269C3C3B0(v23, v24, v25);
    sub_269D992D0();
  }

  else
  {
    *v11 = sub_269D991A0();
    *(v11 + 1) = 0;
    v11[16] = 0;
    sub_269C42434(0, &qword_280C0B668, sub_269C33014, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    sub_269C33584(a1, &v11[*(v19 + 44)]);
    sub_269C424F0(v11, v7, sub_269C32F80);
    swift_storeEnumTagMultiPayload();
    v20 = sub_269C4264C(&qword_280C0B568, sub_269C32F80, MEMORY[0x277CE1198]);
    sub_269C3C3B0(v20, v21, v22);
    sub_269D992D0();
    sub_269C42558(v11, sub_269C32F80);
  }

  sub_269C42398(v15, a2);
}

uint64_t sub_269C33584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v87[0] = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v88 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_269D97650();
  v9 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v10);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Somnogram(0);
  MEMORY[0x28223BE20](v13, v14);
  v94 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v87 - v18;
  sub_269D9A8E0();
  v93 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for SleepStagesDiagram(0);
  sub_269C424F0(a1 + *(v20 + 20), v19, type metadata accessor for SleepStagesModel);
  v21 = *(v20 + 24);
  v87[1] = a1;
  v22 = *(a1 + v21);
  KeyPath = swift_getKeyPath();
  v90 = v22;
  *&v19[v13[5]] = v22;
  sub_269D97630();
  v23 = HKSPIsRemoveSpacesForTimeFormatEnabled();
  v24 = objc_opt_self();
  v25 = sub_269D9A5F0();
  v26 = sub_269D97610();
  v27 = [v24 dateFormatFromTemplate:v25 options:0 locale:v26];

  if (v27)
  {
    v28 = sub_269D9A630();
    v30 = v29;
  }

  else
  {
    v30 = 0xE500000000000000;
    v28 = 0x616D6D3A68;
  }

  v31 = v13[6];
  v32 = sub_269D62560(v28, v30, v12, v23);

  (*(v9 + 8))(v12, v91);
  *&v19[v31] = v32;
  v33 = v13[7];
  *&v19[v33] = swift_getKeyPath();
  sub_269C414A8(0);
  swift_storeEnumTagMultiPayload();
  v34 = v13[8];
  *&v19[v34] = swift_getKeyPath();
  sub_269C414DC(0);
  swift_storeEnumTagMultiPayload();
  v35 = v13[9];
  *&v19[v35] = swift_getKeyPath();
  sub_269C41510(0);
  swift_storeEnumTagMultiPayload();
  v36 = &v19[v13[10]];
  *v36 = KeyPath;
  v36[8] = 0;
  if ((v90 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v37 = v88;
  sub_269D16170(v88);
  v38 = sub_269D97010();
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {
    sub_269C42558(v37, sub_269C40CD0);
LABEL_9:
    sub_269C424D4(&v111);
    goto LABEL_19;
  }

  sub_269C42558(v37, sub_269C40CD0);
  *&v111 = sub_269D1750C();
  *(&v111 + 1) = v39;
  sub_269C3EEE8(v111, v39, v40);
  sub_269D9AE90();
  v91 = v41;

  if (qword_28034D7D8 != -1)
  {
    swift_once();
  }

  v42 = sub_269D996F0();
  v43 = v87[0];
  (*(*(v42 - 8) + 56))(v87[0], 1, 1, v42);
  sub_269D99730();
  sub_269C42558(v43, sub_269C424A0);
  v44 = sub_269D99920();
  v46 = v45;
  v48 = v47;

  v49 = sub_269D99930();
  v51 = v50;
  v53 = v52;
  KeyPath = v54;
  sub_269C41568(v44, v46, v48 & 1);

  if (qword_28034D7E0 != -1)
  {
    swift_once();
  }

  v90 = sub_269D998F0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_269C41568(v49, v51, v53 & 1);

  v61 = sub_269D995E0();
  if (qword_28034D5F8 != -1)
  {
    swift_once();
  }

  sub_269D98990();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  LOBYTE(v104) = v58 & 1;
  LOBYTE(v102[0]) = 0;
  v70 = sub_269D995F0();
  if (qword_28034D600 != -1)
  {
    swift_once();
  }

  sub_269D98990();
  LOBYTE(v111) = 0;
  *&v104 = v90;
  *(&v104 + 1) = v56;
  LOBYTE(v105) = v58 & 1;
  *(&v105 + 1) = v60;
  LOBYTE(v106) = v61;
  *(&v106 + 1) = v63;
  *&v107 = v65;
  *(&v107 + 1) = v67;
  *&v108 = v69;
  BYTE8(v108) = 0;
  LOBYTE(v109) = v70;
  *(&v109 + 1) = v71;
  *&v110[0] = v72;
  *(&v110[0] + 1) = v73;
  *&v110[1] = v74;
  BYTE8(v110[1]) = 0;
  *(&v110[1] + 9) = 256;
  nullsub_1();
  v115 = v108;
  v116 = v109;
  v117[0] = v110[0];
  *(v117 + 11) = *(v110 + 11);
  v111 = v104;
  v112 = v105;
  v113 = v106;
  v114 = v107;
LABEL_19:
  v75 = v94;
  sub_269C424F0(v19, v94, type metadata accessor for Somnogram);
  v99 = v115;
  v100 = v116;
  v101[0] = v117[0];
  *(v101 + 11) = *(v117 + 11);
  v95 = v111;
  v96 = v112;
  v97 = v113;
  v98 = v114;
  v76 = v92;
  sub_269C424F0(v75, v92, type metadata accessor for Somnogram);
  sub_269C41AFC(0, qword_280C0B740, type metadata accessor for Somnogram, sub_269C330BC);
  v78 = (v76 + *(v77 + 48));
  v80 = v99;
  v79 = v100;
  v102[4] = v99;
  v102[5] = v100;
  v81 = v101[0];
  v103[0] = v101[0];
  *(v103 + 11) = *(v101 + 11);
  v83 = v95;
  v82 = v96;
  v102[0] = v95;
  v102[1] = v96;
  v85 = v97;
  v84 = v98;
  v102[2] = v97;
  v102[3] = v98;
  *(v78 + 107) = *(v101 + 11);
  v78[5] = v79;
  v78[6] = v81;
  v78[3] = v84;
  v78[4] = v80;
  v78[1] = v82;
  v78[2] = v85;
  *v78 = v83;
  sub_269C424F0(v102, &v104, sub_269C330BC);
  sub_269C42558(v19, type metadata accessor for Somnogram);
  v108 = v99;
  v109 = v100;
  v110[0] = v101[0];
  *(v110 + 11) = *(v101 + 11);
  v104 = v95;
  v105 = v96;
  v106 = v97;
  v107 = v98;
  sub_269C42558(&v104, sub_269C330BC);
  sub_269C42558(v75, type metadata accessor for Somnogram);
}

uint64_t sub_269C33E98(char a1)
{
  sub_269C3C28C(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v21 - v10;
  sub_269C42240(0, &qword_280C0B600, sub_269C32EF0, sub_269C3C28C, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v21 - v14;
  if (a1)
  {
    sub_269C424F0(v1, v21 - v14, sub_269C32EF0);
    swift_storeEnumTagMultiPayload();
    sub_269C32EF0(0);
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8, MEMORY[0x277CE0FB0]);
    sub_269C3C404();
    return sub_269D992D0();
  }

  else
  {
    sub_269D9A180();
    sub_269D98DF0();
    sub_269C424F0(v1, v7, sub_269C32EF0);
    v17 = &v7[*(v4 + 36)];
    v18 = v21[5];
    *(v17 + 4) = v21[4];
    *(v17 + 5) = v18;
    *(v17 + 6) = v21[6];
    v19 = v21[1];
    *v17 = v21[0];
    *(v17 + 1) = v19;
    v20 = v21[3];
    *(v17 + 2) = v21[2];
    *(v17 + 3) = v20;
    sub_269C422C4(v7, v11, sub_269C3C28C);
    sub_269C424F0(v11, v15, sub_269C3C28C);
    swift_storeEnumTagMultiPayload();
    sub_269C32EF0(0);
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8, MEMORY[0x277CE0FB0]);
    sub_269C3C404();
    sub_269D992D0();
    return sub_269C42558(v11, sub_269C3C28C);
  }
}

uint64_t sub_269C34204(uint64_t a1)
{
  sub_269C32EF0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C331D8(v1, v6);
  sub_269C33E98((*(v1 + *(a1 + 24)) & 4) != 0);
  return sub_269C42558(v6, sub_269C32EF0);
}

uint64_t sub_269C342CC()
{
  v0 = sub_269D97510();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97520();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C42128(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B9C8 != -1)
  {
    swift_once();
  }

  v14 = *(type metadata accessor for SleepStageSegment(0) + 20);
  swift_beginAccess();
  v15 = off_280C0B9D0;
  if (*(off_280C0B9D0 + 2) && (v16 = sub_269C43380(v23 + v14), (v17 & 1) != 0))
  {
    v18 = *(v15[7] + 16 * v16);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_269CED60C(v13);
    sub_269D97500();
    sub_269D96ED0();
    (*(v1 + 8))(v4, v0);
    sub_269C4264C(&qword_280C0BB78, MEMORY[0x277CC9510], MEMORY[0x277CC9508]);
    sub_269D9AA50();
    (*(v6 + 8))(v9, v5);
    sub_269C42558(v13, sub_269C42128);
    v18 = v25;
    v19 = v26;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = off_280C0B9D0;
    off_280C0B9D0 = 0x8000000000000000;
    sub_269C4116C(v18, v19, v23 + v14, isUniquelyReferenced_nonNull_native);
    off_280C0B9D0 = v24;
    swift_endAccess();
  }

  return v18;
}

uint64_t sub_269C34610()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for Somnogram(0) + 40);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_269D9AB70();
    v8 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C41544(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_269C34768@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v244 = a1;
  v198 = a2;
  v183 = sub_269D97580();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v2);
  v181 = &v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v180 = &v177 - v6;
  sub_269C40B6C(0);
  v197 = v7;
  v196 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v179 = (&v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_269D97010();
  v14 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v15);
  v178 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40B38(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v195 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v194 = &v177 - v22;
  sub_269C3F528(0);
  v193 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v236 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for Somnogram(0);
  v233 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v26);
  v234 = v27;
  v235 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40D04(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v232 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_269D98540();
  v205 = *(v207 - 1);
  MEMORY[0x28223BE20](v207, v31);
  v202 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E85C(0);
  v203 = v33;
  v201 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34);
  v199 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E788(0);
  v206 = v36;
  v204 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v200 = &v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E684(0);
  v211 = v39;
  v209 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v40);
  v208 = &v177 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E500(0);
  v214 = v42;
  v213 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v43);
  v210 = &v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E308(0);
  v216 = v45;
  v215 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46);
  v212 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E0D8(0);
  v219 = v48;
  v218 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v49);
  v217 = &v177 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3DE38();
  v222 = v51;
  v220 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v243 = &v177 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3DB1C();
  v226 = v54;
  v223 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v55);
  v221 = &v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D7CC();
  v230 = v57;
  v229 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v58);
  v225 = &v177 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D430();
  v228 = v60;
  v227 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v61);
  v224 = &v177 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D2B8(0);
  v187 = v63;
  MEMORY[0x28223BE20](v63, v64);
  v231 = &v177 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D284(0);
  v192 = v66;
  v191 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v67);
  v190 = &v177 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v188 = &v177 - v71;
  sub_269D9A8E0();
  v189 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v184 = v13;
  v185 = v14;
  v245 = MEMORY[0x277D84F90];
  sub_269C75370(0, 4, 0);
  v72 = 0;
  v73 = v245;
  do
  {
    v74 = byte_287A9F4E0[v72 + 32];
    if (v74 >= 4)
    {

LABEL_12:
      v79 = 0;
      v78 = 0xE000000000000000;
      goto LABEL_16;
    }

    v75 = sub_269D9B280();

    if (v75)
    {
      goto LABEL_12;
    }

    if (v74 > 1)
    {
      if (v74 == 2)
      {
        v80 = 1701998435;
      }

      else
      {
        v80 = 1885693284;
      }

      v79 = v80 | 0x65656C5300000000;
      v78 = 0xE900000000000070;
    }

    else if (v74)
    {
      v78 = 0xE800000000000000;
      v79 = 0x7065656C536D6572;
    }

    else
    {
      v78 = 0xE500000000000000;
      v79 = 0x656B617761;
    }

LABEL_16:
    v245 = v73;
    v82 = *(v73 + 16);
    v81 = *(v73 + 24);
    if (v82 >= v81 >> 1)
    {
      v76 = sub_269C75370((v81 > 1), v82 + 1, 1);
      v73 = v245;
    }

    ++v72;
    *(v73 + 16) = v82 + 1;
    v83 = v73 + 16 * v82;
    *(v83 + 32) = v79;
    *(v83 + 40) = v78;
  }

  while (v72 != 4);
  MEMORY[0x28223BE20](v76, v77);
  v84 = v244;
  v241 = sub_269D51A60(sub_269C41408, (&v177 - 4), byte_287A9F4E0);
  MEMORY[0x28223BE20](v241, v85);
  v175 = v84;
  sub_269C3E930(0);
  sub_269C3E9E4(255);
  v87 = v86;
  v88 = sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4, MEMORY[0x277CBB3F0]);
  v245 = v87;
  v246 = v88;
  swift_getOpaqueTypeConformance2();
  v89 = v199;
  sub_269D985C0();
  v90 = v202;
  sub_269D983E0();
  v238 = sub_269D98690();
  v91 = *(v238 - 8);
  v237 = *(v91 + 56);
  v239 = v91 + 56;
  v92 = v232;
  v237(v232, 1, 1, v238);
  v93 = sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C, MEMORY[0x277CBB3F8]);
  v94 = MEMORY[0x277CBB398];
  v95 = v200;
  v96 = v203;
  v97 = v207;
  sub_269D999E0();
  v240 = sub_269C40D04;
  sub_269C42558(v92, sub_269C40D04);
  (*(v205 + 8))(v90, v97);
  (*(v201 + 8))(v89, v96);
  v98 = v244;
  v242 = *(v244 + *(v242 + 20));
  v245 = v96;
  v246 = v97;
  v247 = v93;
  v248 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v208;
  v101 = v206;
  sub_269D999A0();
  v102 = (*(v204 + 8))(v95, v101);
  v207 = &v177;
  MEMORY[0x28223BE20](v102, v103);
  v175 = v98;
  sub_269C3F0A4(0);
  v105 = v104;
  v245 = v101;
  v246 = OpaqueTypeConformance2;
  v106 = swift_getOpaqueTypeConformance2();
  v107 = MEMORY[0x277CBB460];
  v108 = sub_269C4264C(&qword_280C0B198, sub_269C3F0A4, MEMORY[0x277CBB460]);
  v109 = v210;
  v110 = v211;
  sub_269D99990();
  v209[1](v100, v110);
  v254 = v73;
  v237(v92, 1, 1, v238);
  v209 = MEMORY[0x277D83940];
  sub_269C41CB8(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v112 = v111;
  v245 = v110;
  v246 = v105;
  v247 = v106;
  v248 = v108;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = sub_269C3F980();
  v115 = v212;
  v116 = v214;
  v208 = v112;
  sub_269D999F0();
  sub_269C42558(v92, v240);
  (*(v213 + 8))(v109, v116);
  v245 = v116;
  v246 = v112;
  v247 = v113;
  v248 = v114;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = v217;
  v119 = v216;
  sub_269D999C0();
  v120 = (v215[1])(v115, v119);
  v215 = &v177;
  MEMORY[0x28223BE20](v120, v121);
  v175 = v244;
  sub_269C3FA14(0);
  v123 = v122;
  v245 = v119;
  v246 = v117;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = sub_269C4264C(&qword_280C0B188, sub_269C3FA14, v107);
  v126 = v219;
  sub_269D999B0();
  (*(v218 + 8))(v118, v126);
  v252 = v241;
  v253 = v73;
  v237(v92, 1, 1, v238);
  sub_269C41CB8(0, &qword_280C0B500, MEMORY[0x277CE0F78], v209);
  v128 = v127;
  v245 = v126;
  v246 = v123;
  v247 = v124;
  v248 = v125;
  v129 = swift_getOpaqueTypeConformance2();
  v130 = sub_269C3FFD8();
  v175 = v130;
  v176 = MEMORY[0x277CE0F60];
  v131 = v221;
  v132 = v222;
  v133 = v208;
  v134 = v243;
  sub_269D99A10();
  sub_269C42558(v92, v240);
  (*(v220 + 8))(v134, v132);
  v135 = v244;

  v245 = v132;
  v246 = v133;
  v247 = v128;
  v248 = v129;
  v249 = v114;
  v250 = v130;
  v251 = MEMORY[0x277CE0F60];
  v136 = swift_getOpaqueTypeConformance2();
  v137 = v225;
  v138 = v226;
  sub_269D999D0();
  (*(v223 + 8))(v131, v138);
  v139 = v235;
  sub_269C424F0(v135, v235, type metadata accessor for Somnogram);
  v140 = (*(v233 + 80) + 16) & ~*(v233 + 80);
  v141 = swift_allocObject();
  sub_269C422C4(v139, v141 + v140, type metadata accessor for Somnogram);
  sub_269C40054(0);
  v245 = v138;
  v246 = v136;
  swift_getOpaqueTypeConformance2();
  sub_269C40144();
  v142 = v224;
  v143 = v230;
  sub_269D99A00();

  v144 = v137;
  v145 = v242;
  (*(v229 + 8))(v144, v143);
  v146 = v231;
  sub_269C39BEC((v145 & 0x200) != 0, *v135, v231);
  (*(v227 + 8))(v142, v228);
  v147 = *MEMORY[0x277CDF9D8];
  v148 = sub_269D98CA0();
  v149 = v236;
  (*(*(v148 - 8) + 104))(v236, v147, v148);
  sub_269C4264C(&qword_280C0B650, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269D9A560();
  if (result)
  {
    sub_269C406EC();
    sub_269C4264C(&qword_280C0B480, sub_269C3F528, MEMORY[0x277D84470]);
    v151 = v188;
    sub_269D99AF0();
    sub_269C42558(v149, sub_269C3F528);
    sub_269C41C48(v146, sub_269C3D2B8);
    if ((v145 & 0x81) == 0x80)
    {
      v152 = type metadata accessor for SleepStagesModel(0);
      v153 = v184;
      sub_269C424F0(v135 + *(v152 + 24), v184, sub_269C40CD0);
      v154 = v185;
      v155 = v186;
      v156 = (*(v185 + 48))(v153, 1, v186);
      v157 = v194;
      if (v156 == 1)
      {
        sub_269C42558(v153, sub_269C40CD0);
        v158 = 1;
      }

      else
      {
        v159 = v178;
        (*(v154 + 32))(v178, v153, v155);
        v160 = v180;
        sub_269D96FD0();
        v161 = v181;
        sub_269D96FA0();
        v162 = sub_269D99090();
        v163 = v179;
        *v179 = v162;
        *(v163 + 8) = 0;
        *(v163 + 16) = 1;
        sub_269C42434(0, &qword_28034DE38, sub_269C40C00, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
        sub_269C3A69C(v135, v160, v161, (v163 + *(v164 + 44)));
        (*(v154 + 8))(v159, v155);
        v165 = *(v182 + 8);
        v166 = v183;
        v165(v161, v183);
        v165(v160, v166);
        sub_269C41BE0(v163, v157, sub_269C40B6C);
        v158 = 0;
      }
    }

    else
    {
      v158 = 1;
      v157 = v194;
    }

    (*(v196 + 56))(v157, v158, 1, v197);
    v167 = v191;
    v168 = *(v191 + 16);
    v169 = v190;
    v170 = v192;
    v168(v190, v151, v192);
    v171 = v195;
    sub_269C41B78(v157, v195, sub_269C40B38);
    v172 = v198;
    v168(v198, v169, v170);
    sub_269C41AFC(0, &qword_280C0AFE0, sub_269C3D284, sub_269C40B38);
    sub_269C41B78(v171, &v172[*(v173 + 48)], sub_269C40B38);
    sub_269C41C48(v157, sub_269C40B38);
    v174 = *(v167 + 8);
    v174(v151, v170);
    sub_269C41C48(v171, sub_269C40B38);
    v174(v169, v170);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269C36240@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a2 + *(type metadata accessor for Somnogram(0) + 20)) & 0x20) != 0)
  {
    v6 = sub_269D99D20();
  }

  else
  {
    sub_269CDC914(v5);
    v6 = sub_269D99CC0();
  }

  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_269C36318(uint64_t a1)
{
  sub_269C3E9E4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor, v9);
  *(&v11 - 2) = a1;
  sub_269C3EA48(0);
  sub_269C3EF3C();
  sub_269D985A0();
  sub_269C37338();
  type metadata accessor for Somnogram(0);
  sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4, MEMORY[0x277CBB3F0]);
  sub_269D98450();

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_269C3654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for Somnogram(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = *a1;
  sub_269C424F0(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Somnogram);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_269C422C4(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Somnogram);
  sub_269C3EB10(0);
  sub_269C3EB44(0);
  sub_269C4264C(&qword_280C0B508, sub_269C3EB10, MEMORY[0x277D83980]);
  sub_269C3EC88(255);
  v10 = v9;
  sub_269C3ED88(255);
  v12 = v11;
  sub_269C3EE50(255);
  v14 = v13;
  v15 = sub_269D98480();

  v16 = MEMORY[0x277D837D0];
  v25 = v15;
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277CBB2F8];
  v28 = MEMORY[0x277CBB570];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v14;
  v26 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v25 = v12;
  v26 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v22 = sub_269C3EEE8(v19, v20, v21);
  v25 = v10;
  v26 = v16;
  v27 = v19;
  v28 = v22;
  swift_getOpaqueTypeConformance2();
  sub_269C4264C(&qword_280C0B9B8, type metadata accessor for SleepStageSegment, &protocol conformance descriptor for SleepStageSegment);
  sub_269D9A070();
}

uint64_t sub_269C3688C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v94 = a1;
  v91 = a3;
  v3 = sub_269D99120();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v88 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C420D4(0, &qword_280C0B6C0, MEMORY[0x277D837D0], MEMORY[0x277CBB570], MEMORY[0x277CBB340]);
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v84 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v70[2] = v70 - v11;
  v93 = sub_269D97580();
  v12 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v13);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4232C(0, &qword_280C0B6C8, MEMORY[0x277CC9578], MEMORY[0x277CBB1E8], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v92 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v70 - v21;
  v74 = sub_269D98480();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v23);
  v71 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3EE50(0);
  v78 = v25;
  v76 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v73 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3ED88(0);
  v81 = v28;
  v77 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v75 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3EC88(0);
  v82 = *(v31 - 8);
  v83 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v80 = v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v79 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D99100();
  v70[0] = *(type metadata accessor for SleepStageSegment(0) + 20);
  v34 = v94;
  sub_269D96FD0();
  v70[1] = v22;
  v35 = v93;
  sub_269D98500();

  v36 = *(v12 + 8);
  v36(v15, v35);
  sub_269D99100();
  sub_269D96FA0();
  sub_269D98500();

  v36(v15, v35);
  sub_269D99100();
  v37 = *v34;
  if (v37 == 4)
  {
    v38 = sub_269D9B280();
    v39 = (v38 & 1) == 0;
    if (v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = 0x65656C5365726F63;
    }

    if (v39)
    {
      v41 = 0xE900000000000070;
    }

    else
    {
      v41 = 0xE000000000000000;
    }
  }

  else
  {
    v40 = sub_269CDB810(*v34);
    v41 = v42;
  }

  v43 = MEMORY[0x277CBB570];
  v97 = v40;
  v98 = v41;
  v44 = MEMORY[0x277D837D0];
  sub_269D98500();

  v45 = v71;
  sub_269D98470();
  sub_269D99100();
  if (v37 == 4)
  {
    v46 = sub_269D9B280();
    v47 = (v46 & 1) == 0;
    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = 0x65656C5365726F63;
    }

    if (v47)
    {
      v49 = 0xE900000000000070;
    }

    else
    {
      v49 = 0xE000000000000000;
    }
  }

  else
  {
    v48 = sub_269CDB810(v37);
    v49 = v50;
  }

  v97 = v48;
  v98 = v49;
  v51 = v84;
  sub_269D98500();

  v52 = MEMORY[0x277CBB2F8];
  v53 = v73;
  v54 = v74;
  sub_269D98430();
  (*(v85 + 8))(v51, v86);
  (*(v72 + 8))(v45, v54);
  type metadata accessor for Somnogram(0);
  v55 = v88;
  v57 = v89;
  v56 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277CE0118], v90);
  v97 = v54;
  v98 = v44;
  v99 = v52;
  v100 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v75;
  v60 = v78;
  sub_269D98420();
  (*(v57 + 8))(v55, v56);
  (*(v76 + 8))(v53, v60);
  v97 = v60;
  v98 = OpaqueTypeConformance2;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v80;
  v63 = v81;
  sub_269D98460();
  (*(v77 + 8))(v59, v63);
  v97 = sub_269C342CC();
  v98 = v64;
  v95 = v63;
  v96 = v61;
  v65 = swift_getOpaqueTypeConformance2();
  sub_269C3EEE8(v65, v66, v67);
  v68 = v83;
  sub_269D98440();

  (*(v82 + 8))(v62, v68);
}

uint64_t sub_269C37338()
{
  v1 = v0;
  v78 = sub_269D99180();
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v69 - v8);
  v10 = sub_269D989F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v69 - v17;
  v19 = *(v1 + *(type metadata accessor for Somnogram(0) + 20));
  v77 = v18;
  if ((v19 & 0x20) != 0)
  {
    sub_269C41CB8(0, &qword_280C0B450, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_269D9EBE0;
    v74 = sub_269D99CE0();
    v48 = *MEMORY[0x277CDF3D0];
    v73 = v5;
    v71 = v11;
    v49 = v11[13];
    v49(v18, v48, v10);
    v50 = v10;
    v51 = v9;
    sub_269C40D78(sub_269C414DC, sub_269C414DC, MEMORY[0x277CE0228], v9);
    v72 = objc_opt_self();
    v49(v14, *MEMORY[0x277CDF3C0], v10);
    LODWORD(v70) = sub_269D989E0();
    v52 = v71[1];
    v52(v14, v10);
    v53 = v73;
    v54 = v78;
    (*(v2 + 104))(v73, *MEMORY[0x277CE0220], v78);
    v55 = v51;
    LOBYTE(v51) = sub_269D989E0();
    v56 = *(v2 + 8);
    v56(v53, v54);
    [v72 somnogramBackgroundOpacityWithIsDarkMode:v70 & 1 isHighContrast:v51 & 1 isGrayScale:1];
    v56(v55, v54);
    v52(v77, v50);
    v57 = sub_269D99D30();

    *(v75 + 32) = v57;
    return MEMORY[0x26D6503A0]();
  }

  else
  {
    v20 = objc_opt_self();
    v76 = v10;
    v21 = v20;
    v22 = [v20 hk_sleepAwakeColor];
    v72 = sub_269D99CC0();
    v23 = [v21 hk_sleepAsleepREMColor];
    v75 = sub_269D99CC0();
    v24 = [v21 hk_sleepAsleepCoreColor];
    v74 = sub_269D99CC0();
    v25 = [v21 hk_sleepAsleepDeepColor];
    v73 = sub_269D99CC0();
    sub_269C40D78(sub_269C414A8, sub_269C414A8, MEMORY[0x277CDF3E0], v18);
    sub_269C40D78(sub_269C414DC, sub_269C414DC, MEMORY[0x277CE0228], v9);
    v71 = objc_opt_self();
    v26 = v76;
    (v11[13])(v14, *MEMORY[0x277CDF3C0], v76);
    v27 = sub_269D989E0();
    v28 = v14;
    v29 = v11[1];
    v29(v28, v26);
    v30 = *MEMORY[0x277CE0220];
    v31 = *(v2 + 104);
    v32 = v5;
    v70 = v1;
    v33 = v5;
    v34 = v78;
    v31(v32, v30, v78);
    v35 = sub_269D989E0();
    v36 = *(v2 + 8);
    v36(v33, v34);
    [v71 somnogramBackgroundOpacityWithIsDarkMode:v27 & 1 isHighContrast:v35 & 1 isGrayScale:0];
    v36(v9, v34);
    v29(v77, v76);
    v37 = *v70;
    v38 = sub_269CDBD9C(0, *v70);
    v39 = sub_269CDBD9C(1u, v37);
    v40 = sub_269CDBD9C(2u, v37);
    v41 = sub_269CDBD9C(3u, v37);
    v42 = v41 > 2.22507386e-308;
    v43 = sub_269CDBD9C(4u, v37);
    v79 = MEMORY[0x277D84F90];
    if (v38 <= 2.22507386e-308)
    {
      v44 = 0;
      v42 = v41 > 2.22507386e-308 && v39 > 2.22507386e-308;
    }

    else
    {
      v44 = fmax(v40, v41) > 2.22507386e-308;
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(inited + 32) = sub_269D9A130();
      *(inited + 40) = v46;
      sub_269D99D30();
      *(inited + 48) = sub_269D9A130();
      *(inited + 56) = v47;
      sub_269C49C3C(inited);
    }

    if (v39 > 2.22507386e-308 || v44 || v43 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v59 + 32) = sub_269D9A130();
      *(v59 + 40) = v60;
      sub_269D99D30();
      *(v59 + 48) = sub_269D9A130();
      *(v59 + 56) = v61;
      sub_269C49C3C(v59);
    }

    if (v40 > 2.22507386e-308 || v42 || v43 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v62 + 32) = sub_269D9A130();
      *(v62 + 40) = v63;
      sub_269D99D30();
      *(v62 + 48) = sub_269D9A130();
      *(v62 + 56) = v64;
      sub_269C49C3C(v62);
    }

    if (v41 > 2.22507386e-308 || v43 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v65 + 32) = sub_269D9A130();
      *(v65 + 40) = v66;
      sub_269D99D30();
      *(v65 + 48) = sub_269D9A130();
      *(v65 + 56) = v67;
      sub_269C49C3C(v65);
    }

    v68 = sub_269D9A140();

    return v68;
  }
}

uint64_t sub_269C37CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = sub_269D98520();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Somnogram(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C41A14(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D97780();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D984D0();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = sub_269D984A0();
  MEMORY[0x28223BE20](v19 - 8, v20);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98490();
  (*(v13 + 104))(v16, *MEMORY[0x277CC99A0], v12);
  v21 = sub_269D977A0();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_269D984B0();
  sub_269C42558(v11, sub_269C41A14);
  (*(v13 + 8))(v16, v12);
  v22 = v29;
  sub_269C424F0(v30, v29, type metadata accessor for Somnogram);
  v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v24 = swift_allocObject();
  sub_269C422C4(v22, v24 + v23, type metadata accessor for Somnogram);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_269C41A48;
  *(v25 + 24) = v24;
  sub_269D98510();
  sub_269C3FB30(0, &qword_280C0B1D8, sub_269C3F138, sub_269C3F1F0);
  sub_269C3F7A8();
  sub_269D98640();
}

uint64_t sub_269C38140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269C41AFC(0, &qword_280C0B1A0, sub_269C3F138, sub_269C3F1F0);
  v81 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v80 = v71 - v6;
  v7 = sub_269D98560();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v74 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D98590();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v73 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F224(0);
  v77 = v13;
  v76 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F1F0(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v79 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v78 = v71 - v21;
  v22 = sub_269D98630();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F16C(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F138(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v75 = v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = v71 - v38;
  v40 = sub_269D98680();
  v82 = a2;
  v71[3] = a1;
  if (v40)
  {
    v41 = sub_269D98680();
    result = sub_269D98670();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v43 = v41 == result - 1;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(v83 + *(type metadata accessor for Somnogram(0) + 20));
  if ((v44 & 0x80) != 0)
  {
    (*(v29 + 56))(v39, 1, 1, v28);
  }

  else
  {
    sub_269D98A20();
    v91 = v88;
    v92 = v89;
    v93 = v90;
    sub_269D98610();
    sub_269D985E0();
    (*(v23 + 8))(v26, v22);
    (*(v29 + 32))(v39, v32, v28);
    (*(v29 + 56))(v39, 0, 1, v28);
  }

  v45 = !v43;
  if ((v44 & 0x81) == 0x80)
  {
    v45 = 1;
  }

  if (v45)
  {
    v50 = 1;
    v47 = v82;
    v51 = v78;
    v52 = v77;
    v53 = v76;
  }

  else
  {
    v46 = sub_269D98680();
    v47 = v82;
    if (v46)
    {
      sub_269D9A220();
    }

    else
    {
      sub_269D9A210();
    }

    v71[1] = v49;
    v71[0] = v48;
    v54 = sub_269D98570();
    v71[2] = v71;
    MEMORY[0x28223BE20](v54, v55);
    sub_269D98550();
    sub_269C3F348(0, &qword_280C0AFF8, sub_269C3F428, sub_269C3F5BC);
    v57 = v56;
    sub_269C3F428(255);
    v59 = v58;
    sub_269C3F528(255);
    v61 = v60;
    v62 = sub_269C3F5BC();
    v63 = sub_269C4264C(&qword_280C0B480, sub_269C3F528, MEMORY[0x277D84470]);
    v84 = v59;
    v85 = v61;
    v86 = v62;
    v87 = v63;
    v70[2] = v57;
    v70[3] = swift_getOpaqueTypeConformance2();
    v70[0] = sub_269C41CA8;
    v70[1] = v70;
    v64 = v72;
    sub_269D984E0();
    v53 = v76;
    v51 = v78;
    v52 = v77;
    (*(v76 + 32))(v78, v64, v77);
    v50 = 0;
  }

  (*(v53 + 56))(v51, v50, 1, v52);
  v65 = v75;
  sub_269C41B78(v39, v75, sub_269C3F138);
  v66 = v79;
  sub_269C41B78(v51, v79, sub_269C3F1F0);
  sub_269C3F8A4();
  v67 = v80;
  sub_269C41B78(v65, v80, sub_269C3F138);
  sub_269C40648(&qword_280C0B1A8, sub_269C3F1F0, sub_269C3F94C, MEMORY[0x277CBB5C0]);
  v68 = v81;
  v69 = *(v81 + 48);
  sub_269C41B78(v66, v67 + v69, sub_269C3F1F0);
  sub_269C41BE0(v67, v47, sub_269C3F138);
  sub_269C41BE0(v67 + v69, v47 + *(v68 + 48), sub_269C3F1F0);
  sub_269C41C48(v51, sub_269C3F1F0);
  sub_269C41C48(v39, sub_269C3F138);
  sub_269C41C48(v66, sub_269C3F1F0);
  return sub_269C41C48(v65, sub_269C3F138);
}

uint64_t sub_269C389F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_269D984D0();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_269D98520();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Somnogram(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = sub_269D984A0();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98490();
  sub_269C424F0(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Somnogram);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_269C422C4(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for Somnogram);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_269C41790;
  *(v15 + 24) = v14;
  sub_269D98510();
  sub_269D984C0();
  sub_269C3FB30(0, &qword_280C0B1C8, sub_269C3FAA8, sub_269C3FBB0);
  sub_269C3FDC0();
  sub_269D98640();
}

void *sub_269C38CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  sub_269C41AFC(0, &qword_280C0B1F0, sub_269C3FAA8, sub_269C3FBB0);
  v100 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v99 = &v79 - v5;
  v6 = sub_269D98560();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v89 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D98590();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3FBE4(0);
  v105 = v12;
  v104 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3FBB0(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v98 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v103 = &v79 - v20;
  sub_269C41AFC(0, &qword_280C0B210, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
  v92 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v96 = &v79 - v23;
  sub_269C3FB30(0, &qword_280C0B200, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v27);
  v95 = &v79 - v28;
  v29 = sub_269D98600();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v94 = sub_269D98630();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v31);
  v102 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v79 - v35;
  v91 = sub_269D98400();
  v37 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v38);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v79 - v43;
  sub_269C3FAA8(0);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v97 = &v79 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v79 - v50;
  v90 = a1;
  if (sub_269D98680())
  {
    sub_269D98A20();
    v118 = v109;
    v119 = v110;
    v120 = v111;
    v83 = v44;
    sub_269D983F0();
    sub_269D985F0();
    sub_269D98A20();
    v115 = v112;
    v116 = v113;
    v117 = v114;
    v81 = v36;
    sub_269D98620();
    v52 = v37;
    v80 = *(v37 + 16);
    v82 = v40;
    v53 = v91;
    v80(v40, v44, v91);
    v84 = v26;
    v86 = v51;
    v85 = v25;
    v54 = v93;
    v55 = *(v93 + 16);
    v56 = v102;
    v57 = v36;
    v58 = v94;
    v55(v102, v57, v94);
    v59 = v96;
    v80(v96, v40, v53);
    v60 = v92;
    v61 = *(v92 + 48);
    v55(&v59[v61], v56, v58);
    v51 = v86;
    v62 = v95;
    (*(v52 + 32))(v95, v59, v53);
    (*(v54 + 32))(v62 + *(v60 + 48), &v59[v61], v58);
    v63 = *(v54 + 8);
    v63(v81, v58);
    v64 = *(v52 + 8);
    v64(v83, v53);
    v63(v102, v58);
    v64(v82, v53);
    sub_269C417C8(v62, v51);
    (*(v84 + 56))(v51, 0, 1, v85);
  }

  else
  {
    (*(v26 + 56))(v51, 1, 1, v25);
  }

  if ((*(v106 + *(type metadata accessor for Somnogram(0) + 20)) & 0x10) != 0)
  {
    v69 = 1;
    goto LABEL_9;
  }

  result = sub_269D98660();
  if (v108)
  {
    result = _s13SleepHealthUI0A5StageO8rawValueACSgSS_tcfC_0(v107, v108);
    if (result != 5)
    {
      MEMORY[0x28223BE20](result, v66);
      sub_269D98580();
      sub_269D98550();
      sub_269C3FC78(0);
      v78[2] = v67;
      v78[3] = sub_269C4264C(&qword_280C0B558, sub_269C3FC78, MEMORY[0x277CE1198]);
      v78[0] = sub_269C4185C;
      v78[1] = v78;
      v68 = v87;
      sub_269D984E0();
      (*(v104 + 32))(v103, v68, v105);
      v69 = 0;
LABEL_9:
      v70 = v103;
      (*(v104 + 56))(v103, v69, 1, v105);
      v71 = v97;
      sub_269C424F0(v51, v97, sub_269C3FAA8);
      v72 = v98;
      sub_269C424F0(v70, v98, sub_269C3FBB0);
      v73 = MEMORY[0x277CBB5C0];
      sub_269C40648(&qword_280C0B1E8, sub_269C3FAA8, sub_269C3FEF4, MEMORY[0x277CBB5C0]);
      v74 = v99;
      sub_269C424F0(v71, v99, sub_269C3FAA8);
      sub_269C40648(&qword_280C0B6D0, sub_269C3FBB0, sub_269C3FFA4, v73);
      v75 = v100;
      v76 = *(v100 + 48);
      sub_269C424F0(v72, v74 + v76, sub_269C3FBB0);
      v77 = v101;
      sub_269C422C4(v74, v101, sub_269C3FAA8);
      sub_269C422C4(v74 + v76, v77 + *(v75 + 48), sub_269C3FBB0);
      sub_269C42558(v70, sub_269C3FBB0);
      sub_269C42558(v51, sub_269C3FAA8);
      sub_269C42558(v72, sub_269C3FBB0);
      return sub_269C42558(v71, sub_269C3FAA8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269C398D4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_269C399A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_269C40090(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40054(0);
  v10 = v9;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98530();
  sub_269C4264C(&qword_280C0B6B8, MEMORY[0x277CBB360], MEMORY[0x277CBB358]);
  sub_269D99A20();
  if ((*(a1 + *(type metadata accessor for Somnogram(0) + 20)) & 4) != 0)
  {
    v14 = 0x4000000000000000;
  }

  else
  {
    v14 = 0x4008000000000000;
  }

  v15 = sub_269D995D0();
  (*(v5 + 32))(v13, v8, v4);
  v16 = &v13[*(v10 + 36)];
  *v16 = v15;
  *(v16 + 1) = 0;
  *(v16 + 2) = v14;
  *(v16 + 3) = 0;
  *(v16 + 4) = v14;
  v16[40] = 0;
  sub_269C41BE0(v13, v19, sub_269C40054);
}