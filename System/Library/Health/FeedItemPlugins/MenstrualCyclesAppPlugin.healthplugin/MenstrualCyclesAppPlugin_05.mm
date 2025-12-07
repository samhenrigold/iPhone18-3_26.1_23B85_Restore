id sub_29DF02FCC(uint64_t a1, unsigned int a2, void *a3, void *a4, int a5, uint64_t *a6)
{
  v69 = a5;
  v60 = a4;
  v62 = a3;
  v68 = a2;
  v73 = a1;
  v9 = *a6;
  v10 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29E2C31A4();
  v14 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CycleDay(0);
  v18 = v17 - 8;
  MEMORY[0x2A1C7C4A8](v17);
  v72 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CycleLogModel(0);
  v21 = (v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v70 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v59 - v24;
  v80[3] = sub_29DE9408C(0, &qword_2A1818BB0, 0x29EDC42C0);
  v80[4] = &off_2A24B8D18;
  v80[0] = a3;
  v79[3] = sub_29DE9408C(0, &unk_2A1818BB8, 0x29EDBAA50);
  v79[4] = &off_2A24B8D28;
  v79[0] = a4;
  v78[3] = v9;
  v78[4] = &off_2A24B8D38;
  v78[0] = a6;
  v71 = type metadata accessor for CycleLogModelProvider();
  v26 = objc_allocWithZone(v71);
  v63 = v26;
  v27 = sub_29DEF61C0(v78, v9);
  v28 = MEMORY[0x2A1C7C4A8](v27);
  v30 = (&v59 - v29);
  (*(v31 + 16))(&v59 - v29, v28);
  v32 = *v30;
  v76 = v9;
  v77 = &off_2A24B8D38;
  v75[0] = v32;
  *&v26[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_cancellables] = MEMORY[0x29EDCA1A0];
  v33 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  v34 = v73;
  swift_beginAccess();
  v35 = *(v14 + 16);
  v36 = v61;
  v35(v16, v34 + v33, v61);
  v37 = [*(v34 + 176) dayViewModelAtIndex_];
  v38 = v72;
  v35(v72, v16, v36);
  *(v38 + *(v18 + 28)) = v37;
  v39 = *(v14 + 8);
  v64 = v14 + 8;
  v65 = v39;
  v40 = v36;
  v39(v16, v36);
  v41 = [v60 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  sub_29DE9408C(0, &qword_2A1A5E1F0, 0x29EDBAD20);
  v42 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA878]);
  v67 = [v62 preferredUnitForType_];

  sub_29DE966D4(v75, v76);
  sub_29E00251C();
  v44 = v43;
  v45 = v37;
  LOBYTE(v37) = v68;
  v66 = sub_29E062CBC(v45, v44, v68);
  v62 = v46;

  v69 ^= 1u;
  v47 = v72;
  sub_29DF051AC(v72, &v25[v21[8]], type metadata accessor for CycleDay);
  v35(&v25[v21[9]], v16, v40);
  v48 = [objc_allocWithZone(MEMORY[0x29EDBA030]) init];
  [v48 setUnitStyle_];
  [v48 setUnitOptions_];
  v49 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v49 setMaximumFractionDigits_];
  [v49 setMinimumFractionDigits_];
  [v48 setNumberFormatter_];

  v65(v16, v40);
  v50 = v66;
  *v25 = v62;
  *(v25 + 1) = v50;
  v25[v21[10]] = v69;
  *&v25[v21[11]] = v67;
  *&v25[v21[12]] = v48;
  sub_29DF0514C(v47, type metadata accessor for CycleDay);
  sub_29DF051AC(v25, v70, type metadata accessor for CycleLogModel);
  sub_29DF04F30(0);
  swift_allocObject();
  v51 = sub_29E2C1114();
  v52 = v63;
  *&v63[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_model] = v51;
  v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_sectionStyle] = v37;
  v53 = v52;
  sub_29DE9DC34(v80, &v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider]);
  sub_29DE9DC34(v79, v53 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider);
  sub_29DE9DC34(v75, v53 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider);
  v74.receiver = v53;
  v74.super_class = v71;
  v54 = objc_msgSendSuper2(&v74, sel_init);
  v55 = *(v73 + 16);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v56 = v54;
  v57 = sub_29E2C3CF4();
  [*(v55 + 16) registerObserver:v56 queue:v57];

  sub_29E060090();
  sub_29E0600B8();
  sub_29E0604A8();

  sub_29DF0514C(v25, type metadata accessor for CycleLogModel);
  sub_29DE93B3C(v75);
  sub_29DE93B3C(v79);
  sub_29DE93B3C(v80);
  sub_29DE93B3C(v78);
  return v56;
}

uint64_t sub_29DF0384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DF0434C(&qword_2A1818B90, type metadata accessor for CycleLogDataSource, &unk_29E2D3664);
  v7 = sub_29DF0434C(&unk_2A1818B70, type metadata accessor for CycleLogDataSource, &unk_29E2D8818);
  v8 = (a3 + qword_2A181FBF0);
  *v8 = a1;
  v8[1] = v6;
  v8[2] = v7;
  v9 = MEMORY[0x29EDC2908];
  v10 = (a3 + qword_2A181FBE8);
  *v10 = a2;
  v10[1] = v9;
  v11 = MEMORY[0x29EDC2280];
  v10[2] = MEMORY[0x29EDC2280];
  sub_29DF05020(0, &qword_2A1818B80, sub_29DF04FC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CD7A0;
  *(v12 + 32) = a2;
  *(v12 + 40) = v11;
  *(v12 + 48) = a1;
  *(v12 + 56) = v7;
  *(a3 + qword_2A181FBF8) = v12;
  sub_29DF05020(0, &qword_2A1818B98, sub_29DF05074);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 64) = 2;
  *(inited + 72) = a2;
  *(inited + 80) = v9;
  *(inited + 88) = v11;

  sub_29E185C9C(inited);
  swift_setDeallocating();
  sub_29DF05074(0);
  swift_retain_n();
  swift_retain_n();
  swift_arrayDestroy();
  return sub_29E2BF514();
}

uint64_t sub_29DF03A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DF0434C(&qword_2A1818BE0, type metadata accessor for HistoricalAnalysisDataSource, &unk_29E2E2220);
  v7 = sub_29DF0434C(&qword_2A1818BE8, type metadata accessor for HistoricalAnalysisDataSource, &unk_29E2E21B0);
  v8 = (a3 + qword_2A181FBF0);
  *v8 = a1;
  v8[1] = v6;
  v8[2] = v7;
  v9 = MEMORY[0x29EDC2578];
  v10 = (a3 + qword_2A181FBE8);
  *v10 = a2;
  v10[1] = v9;
  v11 = MEMORY[0x29EDC2570];
  v10[2] = MEMORY[0x29EDC2570];
  sub_29DF05020(0, &qword_2A1818B80, sub_29DF04FC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CD7A0;
  *(v12 + 32) = a2;
  *(v12 + 40) = v11;
  *(v12 + 48) = a1;
  *(v12 + 56) = v7;
  *(a3 + qword_2A181FBF8) = v12;
  sub_29DF05020(0, &qword_2A1818B98, sub_29DF05074);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 64) = 2;
  *(inited + 72) = a2;
  *(inited + 80) = v9;
  *(inited + 88) = v11;

  sub_29E185C9C(inited);
  swift_setDeallocating();
  sub_29DF05074(0);
  swift_retain_n();
  swift_retain_n();
  swift_arrayDestroy();
  return sub_29E2BF514();
}

void *sub_29DF03C4C(void *a1, uint64_t a2, void *a3, int a4)
{
  v26 = a4;
  v27 = sub_29E2BCC24();
  v7 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29E2BCC94();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PregnancyModeTimelineDataSource(0);
  v14 = swift_allocObject();
  *(v14 + 73) = 0;
  *(v14 + 88) = 0;
  (*(v11 + 104))(v13, *MEMORY[0x29EDB9C78], v10);
  sub_29E2BCCA4();
  (*(v11 + 8))(v13, v10);
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  *(v14 + 64) = &off_2A24C0FA8;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyModeTimelineDataSource_currentDayIndex;
  v17 = sub_29E2C31A4();
  (*(*(v17 - 8) + 16))(v14 + v16, a2 + v15, v17);
  *(v14 + 80) = a3;
  *(v14 + 72) = v26;
  sub_29DF05020(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
  sub_29E2BEBB4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CAB20;
  v19 = a1;

  swift_unknownObjectRetain();
  sub_29E2BCC14();
  sub_29E2BCBD4();
  (*(v7 + 8))(v9, v27);
  sub_29E2BEBA4();
  v21 = sub_29E0018F0(v18, 1, v20);

  [a3 registerObserver:v21 isUserInitiated:1];
  v22 = *(a2 + 16);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v23 = sub_29E2C3CF4();
  [*(v22 + 16) registerObserver:v21 queue:v23];

  swift_unknownObjectRelease();

  return v21;
}

uint64_t sub_29DF04018(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (sub_29E2BF334() == 1)
  {
    type metadata accessor for InteractiveTimelineDataSource();
    swift_allocObject();

    sub_29DF17728(a2, a3 & 1, a4);
    sub_29DF0434C(&qword_2A1818AE0, type metadata accessor for InteractiveTimelineDataSource, &unk_29E2D8818);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for InteractiveTimelineDataSource();
    sub_29DF0434C(&qword_2A1818AE0, type metadata accessor for InteractiveTimelineDataSource, &unk_29E2D8818);

    sub_29E2BE4B4();
  }

  sub_29DF04290(0, v7);
  sub_29DF0434C(&qword_2A1818AF0, sub_29DF04290, MEMORY[0x29EDC22A8]);

  v8 = sub_29E2BE494();

  return v8;
}

void sub_29DF04290(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818AE8)
  {
    type metadata accessor for InteractiveTimelineDataSource();
    sub_29E2BE3B4();
    sub_29DF0434C(&qword_2A1818AE0, type metadata accessor for InteractiveTimelineDataSource, &unk_29E2D8818);
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818AE8);
    }
  }
}

uint64_t sub_29DF0434C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF04394(uint64_t a1, char a2)
{
  if (sub_29E2BF334() == 1)
  {
    type metadata accessor for CycleLogSpacerDataSource();
    *(swift_allocObject() + 48) = a2 & 1;
    sub_29DF05020(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
    sub_29E2BEBB4();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_29E2CAB20;
    sub_29E2BEBA4();
    sub_29E0018F0(v3, 0, v4);
    sub_29DF0434C(&qword_2A1818BC8, type metadata accessor for CycleLogSpacerDataSource, &unk_29E2D8818);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleLogSpacerDataSource();
    sub_29DF0434C(&qword_2A1818BC8, type metadata accessor for CycleLogSpacerDataSource, &unk_29E2D8818);

    sub_29E2BE4B4();
  }

  sub_29DF05214(0, v5);
  sub_29DF0434C(&qword_2A1818BD8, sub_29DF05214, MEMORY[0x29EDC22A8]);

  v6 = sub_29E2BE494();

  return v6;
}

uint64_t sub_29DF046C4()
{
  if (sub_29E2BF334() == 1)
  {
    sub_29E2BF2F4();
    sub_29DE966D4(v11, v11[3]);
    v0 = sub_29E2BD144();
    v1 = objc_allocWithZone(type metadata accessor for CycleLoggingHelpTileDataSource(0));
    v3 = sub_29E0B22A0(v0, 0xD00000000000001DLL, 0x800000029E2F0420, v2);

    sub_29DE93B3C(v11);
    sub_29DF0434C(&qword_2A1818AF8, type metadata accessor for CycleLoggingHelpTileDataSource, MEMORY[0x29EDC2988]);
    v4 = sub_29E2BE4C4();

    v5 = v4;
    v6 = sub_29E2BE494();

    sub_29E2BE3B4();
    v7 = v6;
    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleLoggingHelpTileDataSource(0);
    sub_29DF0434C(&qword_2A1818AF8, type metadata accessor for CycleLoggingHelpTileDataSource, MEMORY[0x29EDC2988]);

    sub_29E2BE4B4();
  }

  sub_29DF04970(0, v8);
  sub_29DF0434C(&qword_2A1818B08, sub_29DF04970, MEMORY[0x29EDC22A8]);

  v9 = sub_29E2BE494();

  return v9;
}

void sub_29DF04970(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818B00)
  {
    type metadata accessor for CycleLoggingHelpTileDataSource(255);
    sub_29E2BE3B4();
    sub_29DF0434C(&qword_2A1818AF8, type metadata accessor for CycleLoggingHelpTileDataSource, MEMORY[0x29EDC2988]);
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818B00);
    }
  }
}

uint64_t sub_29DF04A2C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (sub_29E2BF334() == 1)
  {
    v7 = sub_29E2BF314();

    swift_unknownObjectRetain();
    sub_29DF03C4C(v7, a2, a4, a3 & 1);
    type metadata accessor for PregnancyModeTimelineDataSource(0);
    sub_29DF0434C(&qword_2A1818B10, type metadata accessor for PregnancyModeTimelineDataSource, &unk_29E2D8818);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for PregnancyModeTimelineDataSource(0);
    sub_29DF0434C(&qword_2A1818B10, type metadata accessor for PregnancyModeTimelineDataSource, &unk_29E2D8818);

    sub_29E2BE4B4();
  }

  sub_29DF04CA0(0, v8);
  sub_29DF0434C(&qword_2A1818B20, sub_29DF04CA0, MEMORY[0x29EDC22A8]);

  v9 = sub_29E2BE494();

  return v9;
}

void sub_29DF04CA0(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818B18)
  {
    type metadata accessor for PregnancyModeTimelineDataSource(255);
    sub_29E2BE3B4();
    sub_29DF0434C(&qword_2A1818B10, type metadata accessor for PregnancyModeTimelineDataSource, &unk_29E2D8818);
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818B18);
    }
  }
}

void sub_29DF04D5C(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818B30)
  {
    type metadata accessor for CycleLogHeaderDataSource();
    sub_29E2BE3B4();
    sub_29DF0434C(&qword_2A1818B28, type metadata accessor for CycleLogHeaderDataSource, &unk_29E2D8818);
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818B30);
    }
  }
}

void sub_29DF04E18(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818B40)
  {
    type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(255);
    sub_29E2BE3B4();
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818B40);
    }
  }
}

void sub_29DF04E9C(uint64_t a1)
{
  if (!qword_2A1818B50)
  {
    sub_29DF04F30(255);
    sub_29DF0434C(&qword_2A1818B60, sub_29DF04F30, MEMORY[0x29EDB8A70]);
    v1 = sub_29E2C0F34();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1818B50);
    }
  }
}

void sub_29DF04F30(uint64_t a1)
{
  if (!qword_2A1818B58)
  {
    type metadata accessor for CycleLogModel(255);
    v1 = sub_29E2C1104();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1818B58);
    }
  }
}

unint64_t sub_29DF04FC0()
{
  result = qword_2A181DB40;
  if (!qword_2A181DB40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181DB40);
  }

  return result;
}

void sub_29DF05020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DF05074(uint64_t a1)
{
  if (!qword_2A1818BA0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29DF050E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818BA0);
    }
  }
}

unint64_t sub_29DF050E4()
{
  result = qword_2A1818BA8;
  if (!qword_2A1818BA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1818BA8);
  }

  return result;
}

uint64_t sub_29DF0514C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF051AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DF05214(uint64_t a1, __n128 a2)
{
  if (!qword_2A1818BD0)
  {
    type metadata accessor for CycleLogSpacerDataSource();
    sub_29E2BE3B4();
    sub_29DF0434C(&qword_2A1818BC8, type metadata accessor for CycleLogSpacerDataSource, &unk_29E2D8818);
    v2 = sub_29E2BEDE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1818BD0);
    }
  }
}

uint64_t sub_29DF05308(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DF05320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DF05374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_29DF053D0(void *result, int a2)
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

uint64_t sub_29DF05400(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v16[-v10];
  if (a2)
  {
    if (a2 == 1)
    {
      sub_29E2C3314();
      (*(v6 + 16))(v8, v11, v5);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v12 = qword_2A1A67F80;
      sub_29E2BCC74();
      a2 = sub_29E2C3414();
      (*(v6 + 8))(v11, v5);
    }

    else
    {
      sub_29E2BF404();
      sub_29E2C3314();
      (*(v6 + 16))(v8, v11, v5);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v6 + 8))(v11, v5);
      sub_29DEB19DC(0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29E2CAB20;
      *(v14 + 56) = MEMORY[0x29EDC99B0];
      *(v14 + 64) = sub_29DEB1A44();
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      a2 = sub_29E2C3404();
    }
  }

  return a2;
}

uint64_t sub_29DF05744(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_29E2C4914();
  }

  return 1;
}

uint64_t sub_29DF057A4()
{
  v1 = *(v0 + 16);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF057D4()
{
  v1 = [*(v0 + 32) hkmc_cycleFactor];

  return sub_29E08CBEC(v1);
}

uint64_t sub_29DF05828(uint64_t a1)
{
  v2 = sub_29DF08394();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF05874()
{
  v1 = v0[33];
  if (v1 == 2)
  {
    if (v0[32] & 1) != 0 || (v0[34])
    {
      LOBYTE(v1) = 2;
      return sub_29DF058C8(v1);
    }

    LOBYTE(v1) = 2;
  }

  else if (v0[34])
  {
    return sub_29DF058C8(v1);
  }

  return sub_29DF05B18(v1);
}

uint64_t sub_29DF058C8(unsigned __int8 a1)
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_29DF05B18(unsigned __int8 a1)
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_29DF05D78(uint64_t a1)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x636E616E67657270;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0x203A64697575, 0xE600000000000000);
    MEMORY[0x29ED7FCC0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x29ED7FCC0](0x707954776F72202CLL, 0xEB00000000203A65);
    sub_29E2C4664();
    MEMORY[0x29ED7FCC0](0x6E756F4E7369202CLL, 0xEA0000000000203ALL);
    if (*(v1 + 34))
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (*(v1 + 34))
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x29ED7FCC0](v4, v5);

    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2F0690);
    if (*(v1 + 32))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + 32))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x29ED7FCC0](v6, v7);

    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2F0670);
    v8 = *(v1 + 33);
    if (v8 <= 1)
    {
      if (!*(v1 + 33))
      {
LABEL_16:
        v2 = 0xE900000000000079;
        goto LABEL_30;
      }

LABEL_25:
      v3 = 0x6F6974617463616CLL;
      goto LABEL_30;
    }
  }

  else
  {
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0x203A64697575, 0xE600000000000000);
    MEMORY[0x29ED7FCC0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x29ED7FCC0](0x707954776F72202CLL, 0xEB00000000203A65);
    sub_29E2C4664();
    MEMORY[0x29ED7FCC0](0x6E756F4E7369202CLL, 0xEA0000000000203ALL);
    if (*(v1 + 34))
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (*(v1 + 34))
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x29ED7FCC0](v9, v10);

    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2F0670);
    v8 = *(v1 + 33);
    if (v8 <= 1)
    {
      if (!*(v1 + 33))
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  if (v8 == 2)
  {
    v3 = 0x65636172746E6F63;
    v11 = 1986622576;
  }

  else
  {
    v3 = 0x20666F20656E6F6ELL;
    v11 = 1936025716;
  }

  v2 = v11 | 0xED00006500000000;
LABEL_30:
  MEMORY[0x29ED7FCC0](v3, v2);

  return 0;
}

uint64_t sub_29DF060B8()
{
  v1 = *(v0 + 33);
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](v1);
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DF06160(uint64_t a1)
{
  v2 = *(v1 + 33);
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](v2);
  return sub_29E2C4A24();
}

uint64_t sub_29DF061DC(uint64_t a1)
{
  v2 = *(v1 + 33);
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](v2);
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DF06280(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_29E2C4914(), result = 0, (v12 & 1) != 0))
  {
    if (v2 == v7 && v3 == v8)
    {
      result = 0;
      if (v4 != v9)
      {
        return result;
      }

      goto LABEL_10;
    }

    v14 = sub_29E2C4914();
    result = 0;
    if ((v14 & 1) != 0 && v4 == v9)
    {
LABEL_10:
      if (v5 == v10)
      {
        return v6 ^ v11 ^ 1u;
      }
    }
  }

  return result;
}

uint64_t sub_29DF06370()
{
  v1 = *(v0 + 33);
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](v1);
  sub_29E2C4A24();
  sub_29E2C4A54();
  return sub_29E2C48D4();
}

uint64_t sub_29DF06434(uint64_t a1)
{
  v2 = sub_29DF084E4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF06480(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  result = 0;
  if (a1 > 4u)
  {
    if (a1 <= 6u && a1 != 5)
    {
      return result;
    }
  }

  else if (a1 > 2u)
  {
    if (a1 != 3)
    {
      return result;
    }
  }

  else if (a1 < 2u)
  {
    return result;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t sub_29DF0671C()
{
  sub_29E2C4A04();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](*(v0 + 1));
  sub_29E2C34B4();
  type metadata accessor for OnboardingStartDateRow(0);
  sub_29E2BCBB4();
  sub_29DF07A74(&qword_2A1818CD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E2C3254();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DF067FC(uint64_t a1, uint64_t a2)
{
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](*(v2 + 1));
  sub_29E2C34B4();
  sub_29E2BCBB4();
  sub_29DF07A74(&qword_2A1818CD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E2C3254();
  return sub_29E2C4A24();
}

uint64_t sub_29DF068BC(uint64_t a1, uint64_t a2)
{
  sub_29E2C4A04();
  sub_29E2C4A24();
  MEMORY[0x29ED811E0](*(v2 + 1));
  sub_29E2C34B4();
  sub_29E2BCBB4();
  sub_29DF07A74(&qword_2A1818CD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E2C3254();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DF069A0()
{
  v1 = *(v0 + 8);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF06A40(uint64_t a1)
{
  v2 = sub_29DF07A74(&qword_2A1818C40, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1348);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF06ABC()
{
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x29ED7FCC0](v1, v2);

  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  type metadata accessor for OnboardingEndDateRow(0);
  sub_29E2BCBB4();
  sub_29DF07A74(&qword_2A1817C98, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
  v3 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v3);

  return 0;
}

uint64_t sub_29DF06BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_29E2BCBB4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29DF06C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_29E2BCBB4();
  v6 = *(*(v5 - 8) + 24);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_29DF06CCC()
{
  v1 = *(v0 + 24);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF06D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v15[-v10];
  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  (*(v6 + 8))(v11, v5);
  return v13;
}

uint64_t sub_29DF06F14(uint64_t a1)
{
  v2 = sub_29DF07A74(&qword_2A1818C28, type metadata accessor for OnboardingEndDateRow, &unk_29E2D1318);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF06F98()
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29DF07000(uint64_t a1)
{
  sub_29E2C34B4();

  return sub_29E2C34B4();
}

uint64_t sub_29DF07050(uint64_t a1)
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29DF070D0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_29E2C4914(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29E2C4914();
    }
  }

  return result;
}

uint64_t sub_29DF07174()
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A54();
  return sub_29E2C48D4();
}

uint64_t sub_29DF071F8(uint64_t a1)
{
  v2 = sub_29DF08658();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF07244()
{
  v1 = *(v0 + 64);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF0727C()
{
  v1 = *(v0 + 40);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF072AC(uint64_t a1)
{
  v2 = sub_29DF085DC();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29DF072F8()
{
  v1 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v1);

  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x29ED7FCC0](v2, v3);

  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](*(v0 + 8), *(v0 + 16));
  v4 = *(v0 + 32);
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x800000029E2F0480;
  sub_29E2BF404();

  return 0xD000000000000012;
}

uint64_t sub_29DF07414()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DF075EC(uint64_t a1)
{
  v2 = sub_29DF086D4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF07648(uint64_t a1)
{
  v2 = sub_29DF08468();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF07694(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  v10 = a1;
  if (a1 < 2u || (v11 = 0, v10 == 2))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v11 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v11;
}

uint64_t sub_29DF078CC()
{
  v1 = 0x636E616E67657270;
  v2 = 0x65636172746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x20666F20656E6F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6F6974617463616CLL;
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

void sub_29DF079AC()
{
  if (!qword_2A1818BF8)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818BF8);
    }
  }
}

unint64_t sub_29DF07A00()
{
  result = qword_2A1818C00;
  if (!qword_2A1818C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C00);
  }

  return result;
}

uint64_t sub_29DF07A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF07ABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_29DF07B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29DF07B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DF07BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29DF07C2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_29DF07C40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DF07C88(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_29DF07D30(uint64_t a1)
{
  result = sub_29E2BCBB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_29DF07DC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DF07DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_29DF07E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29DF07EA0(uint64_t a1)
{
  result = sub_29E2BCBB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29DF07F38(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818C28, type metadata accessor for OnboardingEndDateRow, &unk_29E2D1318);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DF07F90(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818C30, type metadata accessor for OnboardingEndDateRow, &unk_29E2D12FC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF07FEC()
{
  result = qword_2A181F8B0;
  if (!qword_2A181F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F8B0);
  }

  return result;
}

unint64_t sub_29DF08044()
{
  result = qword_2A1818C38;
  if (!qword_2A1818C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C38);
  }

  return result;
}

uint64_t sub_29DF08098(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818C40, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1348);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DF080F0(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818C48, type metadata accessor for OnboardingStartDateRow, &unk_29E2D1028);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DF08190(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818C58, type metadata accessor for OnboardingStartDateRow, &unk_29E2D106C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF081EC()
{
  result = qword_2A1818C60;
  if (!qword_2A1818C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C60);
  }

  return result;
}

unint64_t sub_29DF08240(uint64_t a1)
{
  result = sub_29DF08268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08268()
{
  result = qword_2A1818C68;
  if (!qword_2A1818C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C68);
  }

  return result;
}

unint64_t sub_29DF082C0()
{
  result = qword_2A1818C70;
  if (!qword_2A1818C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C70);
  }

  return result;
}

unint64_t sub_29DF08318()
{
  result = qword_2A1818C78;
  if (!qword_2A1818C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C78);
  }

  return result;
}

unint64_t sub_29DF0836C(uint64_t a1)
{
  result = sub_29DF08394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08394()
{
  result = qword_2A1818C80;
  if (!qword_2A1818C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C80);
  }

  return result;
}

unint64_t sub_29DF083EC()
{
  result = qword_2A181F890;
  if (!qword_2A181F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F890);
  }

  return result;
}

unint64_t sub_29DF08440(uint64_t a1)
{
  result = sub_29DF08468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08468()
{
  result = qword_2A1818C88;
  if (!qword_2A1818C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C88);
  }

  return result;
}

unint64_t sub_29DF084BC(uint64_t a1)
{
  result = sub_29DF084E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF084E4()
{
  result = qword_2A1818C90;
  if (!qword_2A1818C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C90);
  }

  return result;
}

unint64_t sub_29DF08538(uint64_t a1)
{
  result = sub_29DF08560();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08560()
{
  result = qword_2A1818C98;
  if (!qword_2A1818C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818C98);
  }

  return result;
}

unint64_t sub_29DF085B4(uint64_t a1)
{
  result = sub_29DF085DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF085DC()
{
  result = qword_2A1818CA0;
  if (!qword_2A1818CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CA0);
  }

  return result;
}

unint64_t sub_29DF08630(uint64_t a1)
{
  result = sub_29DF08658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08658()
{
  result = qword_2A1818CA8;
  if (!qword_2A1818CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CA8);
  }

  return result;
}

unint64_t sub_29DF086AC(uint64_t a1)
{
  result = sub_29DF086D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF086D4()
{
  result = qword_2A1818CB0;
  if (!qword_2A1818CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CB0);
  }

  return result;
}

uint64_t sub_29DF08728(uint64_t a1)
{
  result = sub_29DF07A74(&qword_2A1818CB8, type metadata accessor for OnboardingEndDateRow, &unk_29E2D0F30);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF08814()
{
  result = qword_2A1818CC8;
  if (!qword_2A1818CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CC8);
  }

  return result;
}

unint64_t sub_29DF0886C()
{
  result = qword_2A1818CD0;
  if (!qword_2A1818CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CD0);
  }

  return result;
}

uint64_t sub_29DF088C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v4 || (sub_29E2C4914()) && (started = type metadata accessor for OnboardingStartDateRow(0), (sub_29E2BCB34()))
  {
    v6 = a1[*(started + 32)] ^ a2[*(started + 32)] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_29DF08998()
{
  result = qword_2A1818CE0;
  if (!qword_2A1818CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818CE0);
  }

  return result;
}

char *sub_29DF08A20(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = qword_2A1818CE8;
  *&a1[v10] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v15.receiver = a1;
  v15.super_class = type metadata accessor for LoggingCardHeaderView(0);
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  v12 = *((*MEMORY[0x29EDCA1E8] & *v11) + qword_2A1840A20 + 8);
  v13 = v11;
  v12();

  return v13;
}

void sub_29DF08B20(uint64_t a1)
{
  v1 = qword_2A1818CE8;
  *(a1 + v1) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29E2C4724();
  __break(1u);
}

double sub_29DF08BA8()
{
  swift_getObjectType();
  v1 = *(v0 + qword_2A1818CE8);
  v2 = [objc_opt_self() whiteColor];
  [v1 setTextColor_];

  [v1 setNumberOfLines_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v0 addSubview_];
  v3 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CDBD0;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

  *(v4 + 32) = v7;
  v8 = [v0 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v4 + 40) = v10;
  v11 = [v0 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v4 + 48) = v12;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v13 = sub_29E2C3604();

  [v3 activateConstraints_];

  (*((*MEMORY[0x29EDCA1E8] & *v0) + qword_2A1840A20 + 16))();
  sub_29DEAC750(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CAB20;
  v15 = sub_29E2C0B54();
  v16 = MEMORY[0x29EDC7870];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_29E2C4034();
  swift_unknownObjectRelease();

  return result;
}

void sub_29DF08ED0()
{
  v1 = *(v0 + qword_2A1818CE8);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

id sub_29DF08F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoggingCardHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29DF09050()
{
  v1 = v0;
  sub_29DF08BA8();
  v2 = *&v0[qword_2A1818D00];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTintColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v4 = objc_opt_self();
  sub_29DE99B54();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CE070;
  v6 = [v2 topAnchor];
  v7 = [v1 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:10.0];

  *(v5 + 32) = v8;
  v9 = [v1 bottomAnchor];
  v10 = [v2 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:10.0];

  *(v5 + 40) = v11;
  v12 = [v2 leadingAnchor];
  v13 = *&v1[qword_2A1818CE8];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:8.0];

  *(v5 + 48) = v15;
  v16 = [v2 heightAnchor];
  v17 = [v2 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:1.0];

  *(v5 + 56) = v18;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v19 = sub_29E2C3604();

  [v4 activateConstraints_];

  LODWORD(v20) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1132068864;

  return [v13 setContentHuggingPriority:0 forAxis:v23];
}

void sub_29DF0939C()
{
  v1 = v0;
  v2 = *(v0 + qword_2A1818CE8);
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 configurationWithPointSize:4 weight:3 scale:v7];
    v10 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    sub_29DE99B54();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CD3B0;
    v12 = objc_opt_self();
    v13 = [v12 labelColor];
    v14 = [v13 resolvedColorWithTraitCollection_];

    *(v11 + 32) = v14;
    v15 = [v12 quaternaryLabelColor];
    v16 = [v15 resolvedColorWithTraitCollection_];

    *(v11 + 40) = v16;
    sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
    v17 = sub_29E2C3604();

    v18 = [v8 configurationWithPaletteColors_];

    v19 = [v18 configurationByApplyingConfiguration_];
    sub_29DE9408C(0, &qword_2A1818D18, 0x29EDC7AC8);
    v20 = sub_29E2C4094();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 imageWithConfiguration_];
    }

    else
    {
      v22 = 0;
    }

    [*(v1 + qword_2A1818D00) setImage:v22 forState:0];
  }
}

id sub_29DF09718(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_2A1818D00;
  *&a1[v11] = [objc_allocWithZone(MEMORY[0x29EDC7958]) init];
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

char *sub_29DF097B8(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = qword_2A1818D00;
  v7 = objc_allocWithZone(MEMORY[0x29EDC7958]);
  v8 = a3;
  *&a1[v6] = [v7 init];
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

uint64_t type metadata accessor for DeviationsReviewCollectionViewWrapper(uint64_t a1)
{
  result = qword_2A1818D30;
  if (!qword_2A1818D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29DF099A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v30 - v11;
  *(v2 + qword_2A1818D20 + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(type metadata accessor for DeviationsCompactCalendarViewController());

  v32 = a1;
  v33 = a2;
  v14 = sub_29E228028(a1, a2);
  v34 = v2;
  *(v2 + qword_2A1818D28) = v14;
  v31 = v14;
  sub_29E2C3314();
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v17 = v16;
  v18 = sub_29E2C3414();
  v30[1] = v19;
  v30[2] = v18;
  v20 = *(v7 + 8);
  v20(v12, v6);
  sub_29E2C3314();
  v15(v9, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v20(v12, v6);
  v21 = v31;
  v22 = sub_29E2BF714();
  *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_delegate + 8] = &off_2A24B36E8;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  sub_29DF09E58();
  sub_29DF0B044(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CAB20;
  v25 = sub_29E2C0B54();
  v26 = MEMORY[0x29EDC7870];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  MEMORY[0x29ED80420](v24, sel_contentSizeDidChange);
  swift_unknownObjectRelease();

  v27 = [v23 headerView];

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v35 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000024, 0x800000029E2F0870);
  v28 = sub_29E2C33A4();

  [v27 setAccessibilityIdentifier_];

  return v23;
}

void sub_29DF09E58()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v18 - v8;
  v22 = v0;

  sub_29E2C3314();
  v21 = *(v3 + 16);
  v21(v5, v9, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = "MINDER_CANCEL_PROMPT";
  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = v10;
  sub_29E2C3414();
  v19 = *(v3 + 8);
  v19(v9, v2);
  v12 = sub_29E2C33A4();

  v13 = sub_29E2C33A4();
  v14 = v22;

  v15 = [objc_opt_self() linkButton];
  [v15 addTarget:v14 action:sel_editDataTapped forControlEvents:64];
  sub_29E2C3314();
  v21(v5, v9, v2);
  sub_29E2BCC74();
  sub_29E2C3414();
  v19(v9, v2);
  v16 = sub_29E2C33A4();

  [v15 setTitle:v16 forState:0];

  v17 = [v14 buttonTray];
  [v17 addButton_];
}

void sub_29DF0A22C(char *a1)
{
  v1 = *&a1[qword_2A1818D28];
  v2 = a1;
  v3 = [v1 collectionViewLayout];
  [v3 invalidateLayout];
}

void sub_29DF0A2A4(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_29DEE5430(6, 0);
    sub_29DEE4894();
    swift_unknownObjectRelease();
  }
}

void sub_29DF0A328()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF0B044(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v25 - v15;
  v26 = [*(*(*&v1[qword_2A1818D28] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_viewModel) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider) copyWithMinimumBufferDuration_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*(v3 + 56))(v16, 1, 1, v2);
    (*(v7 + 16))(v9, v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    v32[2] = v29;
    v32[3] = v30;
    v32[4] = v31;
    v32[0] = v27;
    v32[1] = v28;
    sub_29DEAA194(v16, v12);
    v19 = *(v3 + 48);
    if (v19(v12, 1, v2) == 1)
    {
      sub_29E2BCBA4();
      if (v19(v12, 1, v2) != 1)
      {
        sub_29DE93920(v12);
      }
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
    }

    v21 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DeviationsCalendarViewController(0));
    v22 = v26;
    v23 = sub_29DEA5220(v9, v32, v22, v5, sub_29DF0B12C, v21);

    sub_29DF0B0B0(v32);
    v24 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v24 setModalInPresentation_];
    [v24 setModalPresentationStyle_];
    [v1 presentViewController:v24 animated:1 completion:0];

    swift_unknownObjectRelease();
    sub_29DE93920(v16);
  }

  else
  {
    v20 = v26;
  }
}

void sub_29DF0A7B4(void *a1)
{
  v1 = a1;
  sub_29DF0A328();
}

uint64_t sub_29DF0A7FC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Exiting confirmation flow", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    aBlock[4] = sub_29DF0B10C;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF49BB8;
    aBlock[3] = &unk_2A24B3720;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v1 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_29DF0AA68(void *a1)
{
  v1 = a1;
  sub_29DF0A7FC();
}

void sub_29DF0AAE0()
{
  sub_29DE8EDC0(v0 + qword_2A1818D20);
  v1 = *(v0 + qword_2A1818D28);
}

void sub_29DF0AB20(uint64_t a1)
{
  sub_29DE8EDC0(a1 + qword_2A1818D20);
  v2 = *(a1 + qword_2A1818D28);
}

void sub_29DF0AB74(uint64_t a1)
{
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF0B044(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v26 - v15;
  v29 = [*(*(*&v1[qword_2A1818D28] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_viewModel) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider) copyWithMinimumBufferDuration_];
  v28 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    (*(v4 + 16))(v16, a1, v3);
    (*(v4 + 56))(v16, 0, 1, v3);
    (*(v7 + 16))(v9, v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    v35[2] = v32;
    v35[3] = v33;
    v35[4] = v34;
    v35[0] = v30;
    v35[1] = v31;
    sub_29DEAA194(v16, v12);
    v19 = *(v4 + 48);
    if (v19(v12, 1, v3) == 1)
    {
      v20 = v27;
      sub_29E2BCBA4();
      if (v19(v12, 1, v3) != 1)
      {
        sub_29DE93920(v12);
      }
    }

    else
    {
      v20 = v27;
      (*(v4 + 32))(v27, v12, v3);
    }

    v22 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DeviationsCalendarViewController(0));
    v23 = v29;
    v24 = sub_29DEA5220(v9, v35, v23, v20, sub_29DF0B0A8, v22);

    sub_29DF0B0B0(v35);
    v25 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v25 setModalInPresentation_];
    [v25 setModalPresentationStyle_];
    [v28 presentViewController:v25 animated:1 completion:0];

    swift_unknownObjectRelease();
    sub_29DE93920(v16);
  }

  else
  {
    v21 = v29;
  }
}

void sub_29DF0B044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF0B0B0(uint64_t a1)
{
  sub_29DEA6A64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF0B114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DF0B130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_29DF0B148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_29DF0B17C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_29DF0B1C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29DF0B238(uint64_t a1)
{
  if (*(*(a1 + 144) + 16))
  {
    MEMORY[0x2A1C7C4A8](a1);
    v7[3] = sub_29E2BF564();
    v7[4] = MEMORY[0x29EDC2868];
    sub_29DEBB7E8(v7);
    sub_29E2BF554();
    v1 = sub_29E2BEA14();
    sub_29DE93B3C(v7);
    sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29E2CAB20;
    *(v2 + 32) = v1;
    MEMORY[0x29ED7B1C0]();

    v3 = sub_29E2BEA04();
  }

  else
  {
    v3 = sub_29E2BEA04();
  }

  sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CAB20;
  *(v4 + 32) = v3;
  v5 = MEMORY[0x29ED7B1C0]();

  return v5;
}

uint64_t sub_29DF0B3E4(uint64_t a1)
{
  sub_29DF40170();
  v7 = sub_29E2BFB34();
  v8 = MEMORY[0x29EDC2C28];
  sub_29DEBB7E8(v6);
  sub_29E2BE1A4();
  sub_29E2BFB24();
  v1 = sub_29E2BEA14();
  sub_29DE93B3C(v6);
  v7 = sub_29E2BFC04();
  v8 = MEMORY[0x29EDC2C70];
  sub_29DEBB7E8(v6);
  sub_29E2BFBF4();
  v2 = sub_29E2BEA14();
  sub_29DE93B3C(v6);
  sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CD7A0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = MEMORY[0x29ED7B1C0]();

  return v4;
}

uint64_t sub_29DF0B550(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = a1;
  v2 = sub_29E2BE484();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v38 - v12;
  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v15 = sub_29E2C3414();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  v18 = *MEMORY[0x29EDC76E0];
  v19 = [objc_opt_self() darkTextColor];
  v20 = [objc_opt_self() systemFontOfSize:18.0 weight:v18];
  sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v21 = sub_29E2C3E84();
  v22 = sub_29DF40374(v20, v21, v19);

  (*(v3 + 104))(v5, *MEMORY[0x29EDC1F60], v2);
  v41 = sub_29E2BFA64();
  v42 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v40);
  MEMORY[0x29ED7C240](v15, v17, v5, v22);
  v23 = sub_29E2BEA14();
  sub_29DE93B3C(v40);
  v24 = sub_29E2BE564();
  v25 = MEMORY[0x29EDC1FC0];
  v41 = v24;
  v42 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v40);
  sub_29E2BE574();
  v26 = sub_29E2BEA14();
  v27 = sub_29DE93B3C(v40);
  MEMORY[0x2A1C7C4A8](v27);
  v28 = v39;
  *(&v38 - 2) = v38;
  *(&v38 - 1) = v28;
  v29 = sub_29E2BFA54();
  swift_allocObject();
  v30 = sub_29E2BFA44();
  v41 = v29;
  v42 = MEMORY[0x29EDC2BF8];
  v40[0] = v30;
  v31 = sub_29E2BEA14();
  v32 = sub_29DE93B3C(v40);
  MEMORY[0x2A1C7C4A8](v32);
  *(&v38 - 2) = v28;
  v41 = sub_29E2BEE74();
  v42 = MEMORY[0x29EDC2320];
  sub_29DEBB7E8(v40);
  sub_29E2BEE64();
  v33 = sub_29E2BEA14();
  sub_29DE93B3C(v40);
  v41 = v24;
  v42 = v25;
  sub_29DEBB7E8(v40);
  sub_29E2BE574();
  v34 = sub_29E2BEA14();
  sub_29DE93B3C(v40);
  sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2D06A0;
  *(v35 + 32) = v23;
  *(v35 + 40) = v26;
  *(v35 + 48) = v31;
  *(v35 + 56) = v33;
  *(v35 + 64) = v34;
  v36 = MEMORY[0x29ED7B1C0]();

  return v36;
}

uint64_t sub_29DF0BB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = sub_29E2BFC04();
    v5 = isUniquelyReferenced_nonNull_native;
    v6 = (a1 + 64);
    v7 = MEMORY[0x29EDCA190];
    do
    {
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v21[5] = *(v6 - 4);
      v21[6] = v8;
      v21[7] = v9;
      v21[8] = v10;
      v21[9] = v11;
      MEMORY[0x2A1C7C4A8](isUniquelyReferenced_nonNull_native);
      v21[3] = v5;
      v21[4] = MEMORY[0x29EDC2C70];
      sub_29DEBB7E8(v21);
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BFBF4();

      v12 = sub_29E2BEA14();
      sub_29DE93B3C(v21);
      sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_29E2CAB20;
      *(v13 + 32) = v12;
      v14 = MEMORY[0x29ED7B1C0]();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_29E143F08(0, v7[2] + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_29E143F08((v15 > 1), v16 + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      v7[2] = v16 + 1;
      v7[v16 + 4] = v14;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  v17 = sub_29E2BE9E4();

  sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CAB20;
  *(v18 + 32) = v17;
  v19 = MEMORY[0x29ED7B1C0]();

  return v19;
}

unint64_t sub_29DF0BDB0(void **a1)
{
  v2 = sub_29E2BE484();
  v90 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v6 = *a1;
  v7 = a1[1];
  v88 = v6;
  v87 = v7;
  v8 = *MEMORY[0x29EDC76E0];
  v9 = objc_opt_self();
  sub_29E2BF404();
  v10 = [v9 darkTextColor];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:10.0 weight:v8];
  v13 = sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v14 = sub_29E2C3E84();
  v15 = sub_29DF40374(v12, v14, v10);

  v16 = *MEMORY[0x29EDC1F60];
  v17 = v3 + 104;
  v18 = *(v3 + 104);
  v89 = v17;
  v18(v5, v16, v2);
  v19 = sub_29E2BFA64();
  v96 = v19;
  v97 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(&v94);
  MEMORY[0x29ED7C240](v88, v87, v5, v15);
  v76 = sub_29E2BEA14();
  sub_29DE93B3C(&v94);
  v80 = sub_29E2BE564();
  v96 = v80;
  v97 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(&v94);
  sub_29E2BE574();
  v75 = sub_29E2BEA14();
  sub_29DE93B3C(&v94);
  v20 = v81[3];
  v85 = v81[2];
  v21 = *MEMORY[0x29EDC76F8];
  sub_29E2BF404();
  v88 = v9;
  v22 = [v9 darkTextColor];
  v87 = v11;
  v23 = [v11 systemFontOfSize:10.0 weight:v21];
  v86 = v13;
  v24 = sub_29E2C3E84();
  v25 = sub_29DF40374(v23, v24, v22);

  v84 = v16;
  v83 = v18;
  v18(v5, v16, v90);
  v82 = v19;
  v96 = v19;
  v97 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(&v94);
  v26 = v85;
  v85 = v5;
  MEMORY[0x29ED7C240](v26, v20, v5, v25);
  v74 = sub_29E2BEA14();
  sub_29DE93B3C(&v94);
  v96 = v80;
  v97 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(&v94);
  sub_29E2BE574();
  v73 = sub_29E2BEA14();
  sub_29DE93B3C(&v94);
  v27 = v81[4];
  v28 = v27[2];
  if (v28)
  {
    v81 = *MEMORY[0x29EDC7638];
    v80 = *MEMORY[0x29EDC7640];
    v79 = *MEMORY[0x29EDC7650];
    sub_29DEA0390(0);
    v78 = v29;
    v30 = v27 + 5;
    v31 = MEMORY[0x29EDCA190];
    v77 = xmmword_29E2CAB20;
    while (1)
    {
      v33 = *(v30 - 1);
      v32 = *v30;
      sub_29E2BF404();
      v34 = [v88 darkTextColor];
      v35 = [v87 systemFontOfSize:10.0 weight:v21];
      v36 = v86;
      v37 = sub_29E2C3E84();
      v38 = v81;
      v91[0] = v81;
      v39 = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
      v91[1] = v35;
      v40 = v80;
      v91[4] = v39;
      v92[0] = v80;
      v41 = sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
      v92[1] = v34;
      v93[4] = v36;
      v42 = v79;
      v92[4] = v41;
      v93[0] = v79;
      v93[1] = v37;
      v43 = sub_29E2C47B4();
      v44 = v38;
      v45 = v40;
      v46 = v42;

      sub_29DEA7608(v91, &v94);
      v47 = v94;
      result = sub_29E187A6C();
      if (v49)
      {
        break;
      }

      v50 = v43 + 8;
      *(v43 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v43[6] + 8 * result) = v47;
      result = sub_29DEA049C(&v95, (v43[7] + 32 * result));
      v51 = v43[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_16;
      }

      v43[2] = v53;
      sub_29DEA7608(v92, &v94);
      v54 = v94;
      result = sub_29E187A6C();
      if (v55)
      {
        break;
      }

      *(v50 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v43[6] + 8 * result) = v54;
      result = sub_29DEA049C(&v95, (v43[7] + 32 * result));
      v56 = v43[2];
      v52 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v52)
      {
        goto LABEL_16;
      }

      v43[2] = v57;
      sub_29DEA7608(v93, &v94);
      v58 = v94;
      result = sub_29E187A6C();
      if (v59)
      {
        break;
      }

      *(v50 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v43[6] + 8 * result) = v58;
      result = sub_29DEA049C(&v95, (v43[7] + 32 * result));
      v60 = v43[2];
      v52 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v52)
      {
        goto LABEL_16;
      }

      v43[2] = v61;

      sub_29DEA0430(0);
      swift_arrayDestroy();
      v62 = v85;
      v83(v85, v84, v90);
      v96 = v82;
      v97 = MEMORY[0x29EDC2C00];
      sub_29DEBB7E8(&v94);
      MEMORY[0x29ED7C240](v33, v32, v62, v43);
      v63 = sub_29E2BEA14();
      sub_29DE93B3C(&v94);
      sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
      v64 = swift_allocObject();
      *(v64 + 16) = v77;
      *(v64 + 32) = v63;
      v65 = MEMORY[0x29ED7B1C0]();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_29E143F08(0, v31[2] + 1, 1, v31);
      }

      v67 = v31[2];
      v66 = v31[3];
      if (v67 >= v66 >> 1)
      {
        v31 = sub_29E143F08((v66 > 1), v67 + 1, 1, v31);
      }

      v31[2] = v67 + 1;
      v31[v67 + 4] = v65;
      v30 += 2;
      if (!--v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
    v68 = sub_29E2BE9E4();

    sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_29E2D06A0;
    v70 = v75;
    *(v69 + 32) = v76;
    *(v69 + 40) = v70;
    v71 = v73;
    *(v69 + 48) = v74;
    *(v69 + 56) = v71;
    *(v69 + 64) = v68;
    v72 = MEMORY[0x29ED7B1C0]();

    return v72;
  }

  return result;
}

uint64_t sub_29DF0C6C4()
{
  v0 = sub_29E2BE484();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v25 - v10;
  v28 = sub_29E2BE564();
  v29 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v27);
  sub_29E2BE574();
  v26 = sub_29E2BEA14();
  sub_29DE93B3C(v27);
  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  v15 = v14;
  (*(v6 + 8))(v11, v5);
  v16 = *MEMORY[0x29EDC76F8];
  v17 = sub_29E2BE1E4();
  v18 = [objc_opt_self() systemFontOfSize:8.0 weight:v16];
  sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v19 = sub_29E2C3E84();
  v20 = sub_29DF40374(v18, v19, v17);

  (*(v1 + 104))(v3, *MEMORY[0x29EDC1F60], v0);
  v28 = sub_29E2BFA64();
  v29 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v27);
  MEMORY[0x29ED7C240](v13, v15, v3, v20);
  v21 = sub_29E2BEA14();
  sub_29DE93B3C(v27);
  sub_29DF0CFA0(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CD7A0;
  *(v22 + 32) = v26;
  *(v22 + 40) = v21;
  v23 = MEMORY[0x29ED7B1C0]();

  return v23;
}

uint64_t sub_29DF0CAF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2BFC04();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v2 + 112);
  v14[6] = *(v2 + 96);
  v14[7] = v7;
  v14[8] = *(v2 + 128);
  v15 = *(v2 + 144);
  v8 = *(v2 + 48);
  v14[2] = *(v2 + 32);
  v14[3] = v8;
  v9 = *(v2 + 80);
  v14[4] = *(v2 + 64);
  v14[5] = v9;
  v10 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v10;
  v13 = v14;
  sub_29E2BFBF4();
  sub_29E2BE334();
  return (*(v4 + 8))(v6, v3);
}

double sub_29DF0CC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_29E2BFC04();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v4 + 112);
  v18[6] = *(v4 + 96);
  v18[7] = v9;
  v18[8] = *(v4 + 128);
  v19 = *(v4 + 144);
  v10 = *(v4 + 48);
  v18[2] = *(v4 + 32);
  v18[3] = v10;
  v11 = *(v4 + 80);
  v18[4] = *(v4 + 64);
  v18[5] = v11;
  v12 = *(v4 + 16);
  v18[0] = *v4;
  v18[1] = v12;
  v17 = v18;
  sub_29E2BFBF4();
  sub_29E2BE324();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  return v14;
}

uint64_t sub_29DF0CDDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29DF0CEB0();
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29DF0CE88(uint64_t a1)
{
  result = sub_29DF0CEB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29DF0CEB0()
{
  result = qword_2A1818D40;
  if (!qword_2A1818D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818D40);
  }

  return result;
}

unint64_t sub_29DF0CF08()
{
  result = qword_2A1818D48;
  if (!qword_2A1818D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818D48);
  }

  return result;
}

void sub_29DF0CFA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DF0D004()
{
  result = qword_2A18185B0;
  if (!qword_2A18185B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18185B0);
  }

  return result;
}

unint64_t sub_29DF0D08C(__n128 a1)
{
  v2 = v1;
  sub_29DEDB904(0, a1);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v168 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for CycleChartCycle(0);
  v177 = *(v178 - 8);
  MEMORY[0x2A1C7C4A8](v178);
  v172 = (&v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v6);
  v176 = &v147 - v7;
  v159 = type metadata accessor for CycleChartsModel(0);
  v156 = *(v159 - 8);
  MEMORY[0x2A1C7C4A8](v159);
  v160 = (&v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v170 = (&v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v11);
  v162 = &v147 - v12;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v154 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v155 = &v147 - v16;
  v17 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v18 = sub_29E2BCEA4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v189 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v188 = &v147 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v184 = &v147 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v183 = &v147 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v147 - v28;
  v30 = sub_29E2C31A4();
  v161 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v165 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v32);
  v151 = &v147 - v33;
  MEMORY[0x2A1C7C4A8](v34);
  v150 = &v147 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v152 = (&v147 - v37);
  MEMORY[0x2A1C7C4A8](v38);
  v163 = &v147 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v149 = &v147 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v167 = &v147 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v175 = &v147 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v187 = &v147 - v47;
  MEMORY[0x2A1C7C4A8](v48);
  v166 = &v147 - v49;
  MEMORY[0x2A1C7C4A8](v50);
  v186 = &v147 - v51;
  MEMORY[0x2A1C7C4A8](v52);
  v164 = &v147 - v53;
  MEMORY[0x2A1C7C4A8](v54);
  v185 = (&v147 - v55);
  MEMORY[0x2A1C7C4A8](v56);
  v58 = &v147 - v57;
  v60 = MEMORY[0x2A1C7C4A8](v59);
  v62 = &v147 - v61;
  v63 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_gregorianCalendar;
  v158 = v19;
  v65 = *(v19 + 16);
  v64 = v19 + 16;
  v65(v29, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_gregorianCalendar, v18, v60);
  sub_29E2BCBA4();
  sub_29E2C3144();
  v66 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles);
  v67 = v161;
  v68 = *(v161 + 16);
  v179 = v58;
  v153 = v62;
  v69 = v62;
  v70 = v66;
  v181 = v161 + 16;
  v180 = v68;
  v68(v58, v69, v30);
  (v65)(v183, v2 + v63, v18);
  v190 = v18;
  v174 = v64;
  v173 = v65;
  (v65)(v184, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_currentCalendar, v18);
  sub_29E2BF404();
  v71 = sub_29DF0F16C();
  v72 = *(v67 + 56);
  v182 = v30;
  v72(v162, 1, 1, v30);
  v73 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass);
  v157 = v2;
  v74 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_preferredMaxLayoutWidth);
  sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  *(inited + 56) = &type metadata for CycleDayHeaderRow;
  *(inited + 64) = &off_2A24BD788;
  v76 = swift_allocObject();
  *(inited + 32) = v76;
  v76[2] = 99;
  v76[3] = v73;
  v76[4] = 0;
  v76[5] = 0;
  *(inited + 96) = &type metadata for CycleDateFooterRow;
  *(inited + 104) = &off_2A24B4EB0;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  v192 = v71;
  sub_29E2BF404();
  sub_29DFCB7C8(inited);
  v77 = v192;
  v78 = sub_29E0AE308(v192);
  v80 = v79;

  v81 = v159;
  v82 = v160;
  v83 = v160 + *(v159 + 24);
  *v83 = 99;
  *(v83 + 1) = v73;
  *(v83 + 2) = v80;
  *(v83 + 3) = 0;
  v84 = v82 + *(v81 + 28);
  *v84 = v80;
  *(v84 + 1) = 0;
  v85 = *(v71 + 2);
  if (v85)
  {
    v64 = v81;
    v195 = MEMORY[0x29EDCA190];
    sub_29E18126C(0, v85, 0);
    v86 = v195;
    v77 = (v71 + 32);
    do
    {
      sub_29DE9DC34(v77, &v191);
      sub_29DE9DC34(&v191, &v192);
      v88 = v193;
      v87 = v194;
      sub_29DEF61C0(&v192, v193);
      (*(v87[1] + 32))(v88, v80);
      sub_29DE93B3C(&v191);
      v195 = v86;
      v90 = *(v86 + 16);
      v89 = *(v86 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_29E18126C((v89 > 1), v90 + 1, 1);
      }

      v91 = v193;
      v71 = v194;
      v92 = sub_29DEF61C0(&v192, v193);
      v93 = MEMORY[0x2A1C7C4A8](v92);
      v95 = &v147 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v96 + 16))(v95, v93);
      sub_29DEF3F6C(v90, v95, &v195, v91, v71);
      sub_29DE93B3C(&v192);
      v86 = v195;
      v77 += 40;
      --v85;
    }

    while (v85);
  }

  else
  {

    v86 = MEMORY[0x29EDCA190];
  }

  v97 = v160;
  *(v160 + *(v81 + 32)) = v86;
  *(v97 + *(v81 + 36)) = v78;
  *(v97 + *(v81 + 40)) = v80;
  v98 = ceil(v74 / v80);
  v99 = v161;
  v100 = v170;
  v101 = v185;
  if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_56;
  }

  if (v98 <= -9.22337204e18)
  {
    goto LABEL_57;
  }

  if (v98 >= 9.22337204e18)
  {
    goto LABEL_58;
  }

  *(v97 + *(v81 + 44)) = v98;
  sub_29DF13C0C(v162, v100, sub_29DF13BD8);
  v71 = v99[6];
  v86 = v182;
  v102 = (v71)(v100, 1, v182);
  v169 = v70 >> 62;
  if (v102 != 1)
  {
    (v99[4])(v101, v100, v86);
    goto LABEL_25;
  }

  if (v70 >> 62)
  {
    goto LABEL_63;
  }

  v103 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v103)
  {
    goto LABEL_21;
  }

LABEL_14:
  v104 = __OFSUB__(v103, 1);
  result = v103 - 1;
  if (v104)
  {
    __break(1u);
  }

  else if ((v70 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v106 = *(v70 + 8 * result + 32);
      if (!v106)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    __break(1u);
    return result;
  }

  v106 = MEMORY[0x29ED80D70](result, v70);
  if (!v106)
  {
    goto LABEL_21;
  }

LABEL_19:
  v148 = v106;
  v107 = [v106 menstruationSegment];
  [v107 days];

  v108 = v168;
  sub_29E2C3AA4();
  sub_29DEC65FC(0);
  if ((*(*(v109 - 8) + 48))(v108, 1, v109) != 1)
  {
    v131 = v149;
    v180(v149, v108, v86);
    sub_29DF13B78(v108, sub_29DEC65FC);
    v171 = v70;
    v132 = v161;
    v168 = *(v161 + 32);
    (v168)(v167, v131, v182);
    v133 = v150;
    sub_29E2C3104();
    v134 = v151;
    sub_29E2C30D4();
    v135 = v152;
    sub_29E2C3114();
    v136 = *(v132 + 8);
    v136(v134, v182);
    v136(v133, v182);
    v137 = v165;
    sub_29E2C3104();
    sub_29DF13CE0(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v138 = sub_29E2C32A4();
    v139 = (v138 & 1) == 0;
    if (v138)
    {
      v140 = v135;
    }

    else
    {
      v140 = v137;
    }

    if (v139)
    {
      v141 = v135;
    }

    else
    {
      v141 = v137;
    }

    v136(v140, v182);
    v142 = v163;
    (v168)(v163, v141, v182);
    v86 = v182;
    v101 = v185;
    sub_29E2C3104();

    v136(v142, v86);
    v136(v167, v86);
    v100 = v170;
    v99 = v161;
    v70 = v171;
    v81 = v159;
    v97 = v160;
    goto LABEL_22;
  }

  sub_29DF13B78(v108, sub_29DEDB904);
  v97 = v160;
  v99 = v161;
  v101 = v185;
LABEL_21:
  v180(v101, v179, v86);
LABEL_22:
  if ((v71)(v100, 1, v86) != 1)
  {
    sub_29DF13B78(v100, sub_29DF13BD8);
  }

LABEL_25:
  v110 = *(v81 + 20);
  v71 = (v99 + 4);
  v64 = v99[4];
  (v64)(v97 + v110, v101, v86);
  v180(v164, v97 + v110, v86);
  v77 = v169;
  if (v169)
  {
    while (1)
    {
      v101 = sub_29E2C4484();
      if (!v101)
      {
        break;
      }

LABEL_27:
      v192 = MEMORY[0x29EDCA190];
      v97 = &v192;
      sub_29E18121C(0, v101 & ~(v101 >> 63), 0);
      if (v101 < 0)
      {
        __break(1u);
LABEL_63:
        v103 = sub_29E2C4484();
        if (v103)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }

      v185 = v64;
      v64 = v192;
      v163 = (v70 & 0xFFFFFFFFFFFFFF8);
      if (v77)
      {
        v111 = sub_29E2C4484();
      }

      else
      {
        v111 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = 0;
      v169 = v70 & 0xC000000000000001;
      v165 = (v99 + 1);
      v167 = (v158 + 32);
      v100 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      v170 = (v111 & ~(v111 >> 63));
      v168 = v101;
      v171 = v70;
      while (v170 != v77)
      {
        if (v169)
        {
          v112 = MEMORY[0x29ED80D70](v77, v70);
        }

        else
        {
          if (v77 >= *(v163 + 2))
          {
            goto LABEL_55;
          }

          v112 = *(v70 + 8 * v77 + 32);
        }

        v113 = v112;
        v114 = [v112 v100[91]];
        if (v114)
        {
          v115 = v114;
          [v114 integerValue];
          v116 = v166;
          sub_29E2C30D4();

          v185(v186, v116, v86);
          v180(v187, v179, v86);
        }

        else
        {
          v117 = v180;
          v180(v186, v164, v86);
          v117(v187, v179, v86);
        }

        v118 = v190;
        v119 = v173;
        v173(v188, v183, v190);
        v119(v189, v184, v118);
        v81 = v172;
        *v172 = v77;
        *(v81 + 8) = v113;
        v97 = v113;
        v99 = v100;
        v120 = [v97 v100[91]];
        if (v120)
        {
          v121 = v120;
          [v120 integerValue];
          v122 = v175;
          sub_29E2C30D4();

          v123 = v122;
          (*v165)(v186, v86);
          v124 = v185;
        }

        else
        {
          v123 = v175;
          v124 = v185;
          v185(v175, v186, v86);
        }

        v125 = v178;
        v124(v81 + *(v178 + 24), v123, v86);
        v124(v81 + v125[7], v187, v86);
        v126 = *v167;
        v127 = v190;
        (*v167)(v81 + v125[8], v188, v190);
        v126(v81 + v125[9], v189, v127);
        v128 = v176;
        sub_29DEF6210(v81, v176, type metadata accessor for CycleChartCycle);

        v192 = v64;
        v130 = *(v64 + 16);
        v129 = *(v64 + 24);
        if (v130 >= v129 >> 1)
        {
          v97 = &v192;
          sub_29E18121C((v129 > 1), v130 + 1, 1);
          v64 = v192;
        }

        ++v77;
        *(v64 + 16) = v130 + 1;
        sub_29DEF6210(v128, v64 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v130, type metadata accessor for CycleChartCycle);
        v86 = v182;
        v70 = v171;
        v100 = v99;
        if (v168 == v77)
        {

          sub_29DF13B78(v162, sub_29DF13BD8);
          v97 = v160;
          v99 = v161;
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }
  }

  else
  {
    v101 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_27;
    }
  }

  sub_29DF13B78(v162, sub_29DF13BD8);
  v64 = MEMORY[0x29EDCA190];
LABEL_61:
  v143 = v99[1];
  (v143)(v164, v86);
  *v97 = v64;
  v144 = v155;
  sub_29DEF6210(v97, v155, type metadata accessor for CycleChartsModel);
  v145 = *(v158 + 8);
  v146 = v190;
  v145(v184, v190);
  v145(v183, v146);
  (v143)(v179, v86);
  (*(v156 + 56))(v144, 0, 1, v159);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29DF13C0C(v144, v154, sub_29DF0F138);

  sub_29E2C1224();
  sub_29DF13B78(v144, sub_29DF0F138);
  return (v143)(v153, v86);
}

double sub_29DF0E750(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return result;
}

void sub_29DF0E7C0(uint64_t a1, char a2, __n128 a3)
{
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CycleChartCycle(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v25 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v25 - v20;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if ((*(v10 + 48))(v21, 1, v9))
    {
      sub_29DF13B78(v21, sub_29DF0F0A0);
      a1 = 0;
      goto LABEL_6;
    }

    sub_29DF13C0C(v21, v12, type metadata accessor for CycleChartCycle);
    sub_29DF13B78(v21, sub_29DF0F0A0);
    a1 = *v12;
    sub_29DF13B78(v12, type metadata accessor for CycleChartCycle);
  }

  if (a1 < 0)
  {
    return;
  }

LABEL_6:
  v22 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles);
  if (!(v22 >> 62))
  {
    if (a1 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    v23 = type metadata accessor for CycleChartsModel(0);
    if ((*(*(v23 - 8) + 48))(v8, 1, v23) != 1)
    {
      v24 = *v8;
      sub_29E2BF404();
      sub_29DF13B78(v8, type metadata accessor for CycleChartsModel);
      if (a1 < *(v24 + 16))
      {
        sub_29DF13C0C(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v18, type metadata accessor for CycleChartCycle);

        (*(v10 + 56))(v18, 0, 1, v9);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_29DF13C0C(v18, v15, sub_29DF0F0A0);

        sub_29E2C1224();
        sub_29DF13B78(v18, sub_29DF0F0A0);
        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 < sub_29E2C4484())
  {
    goto LABEL_8;
  }
}

double sub_29DF0EC10(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29DF0D08C(v1);
  }

  return v1.n128_f64[0];
}

uint64_t sub_29DF0EC68()
{

  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_gregorianCalendar;
  v3 = sub_29E2BCEA4();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_currentCalendar, v3);

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider__predominantCycle;
  v6 = MEMORY[0x29EDB8B00];
  sub_29DF0F0D4(0, &qword_2A1818D80, sub_29DF0F0A0, MEMORY[0x29EDB8B00]);
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider__model;
  sub_29DF0F0D4(0, &qword_2A1818D88, sub_29DF0F138, v6);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t sub_29DF0EE34()
{
  sub_29DF0EC68();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleChartsModelProvider(uint64_t a1)
{
  result = qword_2A1818D70;
  if (!qword_2A1818D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF0EEE0(uint64_t a1)
{
  sub_29E2BCEA4();
  if (v1 <= 0x3F)
  {
    sub_29DF0F0D4(319, &qword_2A1818D80, sub_29DF0F0A0, MEMORY[0x29EDB8B00]);
    if (v2 <= 0x3F)
    {
      sub_29DF0F0D4(319, &qword_2A1818D88, sub_29DF0F138, MEMORY[0x29EDB8B00]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29DF0F0D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29DF0F16C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v79 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v73 - v8;
  v92 = v0;
  v89 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_settings);
  sub_29DFE032C();
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_71;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v77 = v9;
  v78 = v6;
  if (v12)
  {
    v6 = 0;
    v91 = v11 & 0xC000000000000001;
    v13 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v91)
      {
        v14 = MEMORY[0x29ED80D70](v6, v11);
      }

      else
      {
        if (v6 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v14 = *(v11 + 8 * v6 + 32);
      }

      v15 = v14;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v12 = sub_29E2C4484();
        goto LABEL_3;
      }

      v16 = sub_29DF0FB64(v14);

      v17 = *(v16 + 16);
      v18 = v13[2];
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= v13[3] >> 1)
      {
        if (*(v16 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v21 = v18 + v17;
        }

        else
        {
          v21 = v18;
        }

        v13 = sub_29E143C38(isUniquelyReferenced_nonNull_native, v21, 1, v13);
        if (*(v16 + 16))
        {
LABEL_20:
          if ((v13[3] >> 1) - v13[2] < v17)
          {
            goto LABEL_69;
          }

          sub_29DEF615C();
          swift_arrayInitWithCopy();

          if (v17)
          {
            v22 = v13[2];
            v23 = __OFADD__(v22, v17);
            v24 = v22 + v17;
            if (v23)
            {
              goto LABEL_70;
            }

            v13[2] = v24;
          }

          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_66;
      }

LABEL_6:
      ++v6;
      if (v9 == v12)
      {
        goto LABEL_26;
      }
    }
  }

  v13 = MEMORY[0x29EDCA190];
LABEL_26:

  v25 = HKMCSymptomSampleTypes();
  v90 = sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
  v9 = sub_29E2C3614();

  if (v9 >> 62)
  {
    sub_29DE9408C(0, &unk_2A1A61D90, 0x29EDBAD78);
    sub_29E2BF404();
    v6 = sub_29E2C4744();
    swift_bridgeObjectRelease_n();
    v9 = v6;
  }

  else
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &unk_2A1A61D90, 0x29EDBAD78);

    v6 = v9;
  }

  v11 = v84;
  v91 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    v26 = sub_29E2C4484();
  }

  else
  {
    v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v26)
  {
    v27 = 0;
    v88 = v6 & 0xC000000000000001;
    v76 = (v85 + 16);
    v75 = (v85 + 8);
    v83 = 1;
    v28 = MEMORY[0x29EDCA190];
    v29 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    v86 = v9;
    v87 = v13;
    do
    {
      v85 = v28;
      v30 = v27;
      while (1)
      {
        if (v88)
        {
          v31 = MEMORY[0x29ED80D70](v30, v9);
          v27 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v30 >= *(v91 + 16))
          {
            goto LABEL_68;
          }

          v31 = *(v9 + 8 * v30 + 32);
          v27 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_67;
          }
        }

        v32 = v31;
        v33 = [v31 v29[57]];
        v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v36 = v35;

        result = [swift_getObjCClassFromMetadata() menstrualFlowType];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v38 = result;
        v39 = [result v29[57]];

        v40 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v42 = v41;

        if (v34 == v40 && v36 == v42)
        {
          break;
        }

        v43 = sub_29E2C4914();

        if (v43)
        {
          goto LABEL_50;
        }

        v44 = *(v89 + 72);
        if (!*(v44 + 16))
        {
          goto LABEL_50;
        }

        sub_29E2BF404();
        v45 = sub_29DECF000(v34, v36);
        v47 = v46;

        if ((v47 & 1) == 0)
        {
          goto LABEL_50;
        }

        v6 = *(*(v44 + 56) + v45);

        if ((v6 & 1) == 0)
        {
          goto LABEL_51;
        }

        ++v30;
        v9 = v86;
        v13 = v87;
        v29 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
        if (v27 == v26)
        {
          v28 = v85;
          goto LABEL_62;
        }
      }

LABEL_50:

LABEL_51:
      [v32 code];
      v48 = HKMCMenstrualSymptomFromDataTypeCode();
      v82 = swift_allocObject();
      *(v82 + 16) = v48;
      v49 = v77;
      sub_29E2C3314();
      v74 = *v76;
      v74(v78, v49, v11);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v73 = qword_2A1A67F80;
      sub_29E2BCC74();
      v50 = sub_29E2C3414();
      v52 = v51;
      v53 = *v75;
      (*v75)(v49, v11);
      v54 = sub_29E229E7C(v48);
      v56 = v55;
      v94 = v50;
      v95 = v52;
      MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
      MEMORY[0x29ED7FCC0](v54, v56);

      v57 = 0;
      v58 = 0;
      v81 = v94;
      v80 = v95;
      if (v83)
      {
        v59 = v77;
        sub_29E2C3314();
        v60 = v84;
        v74(v78, v59, v84);
        v61 = v73;
        sub_29E2BCC74();
        v57 = sub_29E2C3414();
        v58 = v62;
        v53(v59, v60);
      }

      v6 = sub_29E229E7C(v48);
      v64 = v63;

      v28 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_29E14405C(0, *(v28 + 2) + 1, 1, v28);
      }

      v66 = *(v28 + 2);
      v65 = *(v28 + 3);
      if (v66 >= v65 >> 1)
      {
        v28 = sub_29E14405C((v65 > 1), v66 + 1, 1, v28);
      }

      v83 = 0;
      *(v28 + 2) = v66 + 1;
      v67 = &v28[96 * v66];
      v68 = v80;
      *(v67 + 4) = v81;
      *(v67 + 5) = v68;
      v69 = v82;
      *(v67 + 6) = sub_29DEF63E0;
      *(v67 + 7) = v69;
      *(v67 + 8) = v57;
      *(v67 + 9) = v58;
      *(v67 + 10) = v6;
      *(v67 + 11) = v64;
      v67[96] = 0;
      LODWORD(v69) = *(&v94 + 3);
      *(v67 + 97) = v94;
      *(v67 + 25) = v69;
      *(v67 + 13) = 0;
      *(v67 + 14) = 0;
      *(v67 + 15) = 0x3FF0000000000000;
      v11 = v84;
      v9 = v86;
      v13 = v87;
      v29 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    }

    while (v27 != v26);
  }

  else
  {
    v28 = MEMORY[0x29EDCA190];
  }

LABEL_62:

  v70 = sub_29E13D720(v28);

  v94 = v13;
  sub_29DFCB7C8(v70);
  KeyPath = swift_getKeyPath();
  v93 = *(v92 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_preferredMaxLayoutWidth);
  MEMORY[0x2A1C7C4A8](KeyPath);
  *(&v73 - 2) = v72;
  *(&v73 - 1) = &v93;
  sub_29DF13CAC(0);
  sub_29DF13CE0(&qword_2A1818D98, sub_29DF13CAC, MEMORY[0x29EDC9A60]);
  sub_29E2C32C4();

  return v94;
}

uint64_t sub_29DF0FB64(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v386 = &v376 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v387 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v376 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v376 - v11;
  v13 = [a1 identifier];
  v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;

  v17 = sub_29DFDF04C(v14, v16);

  if ((v17 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  v18 = [a1 code];
  if (v18 <= 96)
  {
    v56 = v6;
    if (v18 > 91)
    {
      if (v18 == 92)
      {
        sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_29E2CFE80;
        v380 = swift_allocObject();
        v380[2] = 4;
        v379 = sub_29DEC15B0(4);
        v378 = v158;
        sub_29E2C3314();
        v159 = v387;
        v160 = v387 + 16;
        v383 = *(v387 + 16);
        (v383)(v8, v12, v56);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v161 = qword_2A1A67F80;
        v162 = qword_2A1A67F80;
        sub_29E2BCC74();
        v163 = v162;
        v164 = sub_29E2C3414();
        v376 = v165;
        v166 = *(v159 + 8);
        v166(v12, v56);
        v382 = v166;
        sub_29E2C3314();
        (v383)(v8, v12, v56);
        sub_29E2BCC74();
        v167 = sub_29E2C3414();
        v387 = v159 + 8;
        v168 = v56;
        v385 = v56;
        v169 = v167;
        v381 = v160;
        v171 = v170;
        v166(v12, v168);
        *(v20 + 56) = &type metadata for CategoryRow;
        *(v20 + 64) = &off_2A24B7BB0;
        v172 = swift_allocObject();
        *(v20 + 32) = v172;
        v173 = v378;
        *(v172 + 16) = v379;
        *(v172 + 24) = v173;
        v174 = v380;
        *(v172 + 32) = sub_29DEF63F8;
        *(v172 + 40) = v174;
        v175 = v376;
        *(v172 + 48) = v164;
        *(v172 + 56) = v175;
        *(v172 + 64) = v169;
        *(v172 + 72) = v171;
        *(v172 + 80) = 0;
        *(v172 + 81) = *v389;
        *(v172 + 84) = *&v389[3];
        *(v172 + 88) = 0;
        *(v172 + 96) = 0;
        *(v172 + 104) = 0x3FF0000000000000;
        v176 = swift_allocObject();
        *(v176 + 16) = 3;
        v380 = sub_29DEC15B0(3);
        v379 = v177;
        sub_29E2C3314();
        v178 = v8;
        v384 = v8;
        v179 = v385;
        v180 = v383;
        (v383)(v178, v12, v385);
        sub_29E2BCC74();
        v377 = v161;
        v181 = sub_29E2C3414();
        v183 = v182;
        v382(v12, v179);
        *(v20 + 96) = &type metadata for CategoryRow;
        *(v20 + 104) = &off_2A24B7BB0;
        v184 = swift_allocObject();
        *(v20 + 72) = v184;
        v185 = v379;
        *(v184 + 16) = v380;
        *(v184 + 24) = v185;
        *(v184 + 32) = sub_29DEF641C;
        *(v184 + 40) = v176;
        *(v184 + 48) = 0;
        *(v184 + 56) = 0;
        *(v184 + 64) = v181;
        *(v184 + 72) = v183;
        *(v184 + 80) = 0;
        *(v184 + 81) = *v390;
        *(v184 + 84) = *&v390[3];
        *(v184 + 88) = 0;
        *(v184 + 96) = 0;
        *(v184 + 104) = 0x3FF0000000000000;
        v186 = swift_allocObject();
        *(v186 + 16) = 2;
        v380 = sub_29DEC15B0(2);
        v379 = v187;
        sub_29E2C3314();
        v188 = v384;
        (v180)(v384, v12, v179);
        sub_29E2BCC74();
        v189 = sub_29E2C3414();
        v191 = v190;
        v382(v12, v179);
        *(v20 + 136) = &type metadata for CategoryRow;
        *(v20 + 144) = &off_2A24B7BB0;
        v192 = swift_allocObject();
        *(v20 + 112) = v192;
        v193 = v379;
        *(v192 + 16) = v380;
        *(v192 + 24) = v193;
        *(v192 + 32) = sub_29DEF641C;
        *(v192 + 40) = v186;
        *(v192 + 48) = 0;
        *(v192 + 56) = 0;
        *(v192 + 64) = v189;
        *(v192 + 72) = v191;
        *(v192 + 80) = 0;
        *(v192 + 81) = v392;
        *(v192 + 84) = *(&v392 + 3);
        *(v192 + 88) = 0;
        *(v192 + 96) = 0;
        *(v192 + 104) = 0x3FF0000000000000;
        v47 = swift_allocObject();
        *(v47 + 16) = 1;
        v194 = sub_29DEC15B0(1);
        v196 = v195;
        sub_29E2C3314();
        v197 = v179;
        (v383)(v188, v12, v179);
        sub_29E2BCC74();
        v51 = sub_29E2C3414();
        v53 = v198;
        v382(v12, v197);
        *(v20 + 176) = &type metadata for CategoryRow;
        *(v20 + 184) = &off_2A24B7BB0;
        v54 = swift_allocObject();
        *(v20 + 152) = v54;
        *(v54 + 16) = v194;
        *(v54 + 24) = v196;
        v55 = sub_29DEF641C;
        goto LABEL_92;
      }

      if (v18 != 95)
      {
        if (v18 == 96)
        {
          sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_29E2CAB20;
          sub_29E2C3314();
          v237 = v387;
          (*(v387 + 16))(v8, v12, v6);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v238 = qword_2A1A67F80;
          sub_29E2BCC74();
          v239 = sub_29E2C3414();
          v241 = v240;
          (*(v237 + 8))(v12, v6);
          *(v20 + 56) = &type metadata for CategoryRow;
          *(v20 + 64) = &off_2A24B7BB0;
          v54 = swift_allocObject();
          *(v20 + 32) = v54;
          *(v54 + 16) = 0xD000000000000016;
          *(v54 + 24) = 0x800000029E2EF820;
          *(v54 + 32) = sub_29DEC10EC;
          *(v54 + 40) = 0;
          *(v54 + 48) = v239;
          *(v54 + 56) = v241;
          *(v54 + 64) = 0;
          *(v54 + 72) = 0;
          *(v54 + 80) = 1;
          goto LABEL_93;
        }

        goto LABEL_124;
      }

      sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29E2CFE80;
      sub_29E2C3314();
      v57 = v387;
      v58 = *(v387 + 16);
      v383 = (v387 + 16);
      v382 = v58;
      (v58)(v8, v12, v6);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v59 = qword_2A1A67F80;
      v60 = qword_2A1A67F80;
      v381 = v59;
      v61 = v60;
      sub_29E2BCC74();
      v380 = v61;
      v62 = sub_29E2C3414();
      v64 = v63;
      v65 = *(v57 + 8);
      v387 = v57 + 8;
      v379 = v65;
      (v65)(v12, v6);
      v66 = sub_29E29D73C(0, 2);
      v385 = v6;
      if (v67)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0;
      }

      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xE000000000000000;
      }

      *&v391[0] = v62;
      v70 = v62;
      *(&v391[0] + 1) = v64;
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
      MEMORY[0x29ED7FCC0](v68, v69);
      v71 = v391[0];
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_29E2CFE20;
      *(v20 + 56) = &type metadata for CategoryRow;
      *(v20 + 64) = &off_2A24B7BB0;
      v73 = swift_allocObject();
      *(v20 + 32) = v73;
      *(v73 + 16) = v71;
      *(v73 + 32) = sub_29DEF6410;
      *(v73 + 40) = v72;
      *(v73 + 48) = v70;
      *(v73 + 56) = v64;
      *(v73 + 64) = v68;
      *(v73 + 72) = v69;
      *(v73 + 80) = 0;
      *(v73 + 88) = 0;
      *(v73 + 96) = 0;
      *(v73 + 104) = 0x3FF0000000000000;
      sub_29E2C3314();
      v384 = v8;
      v74 = v385;
      (v382)(v8, v12, v385);
      sub_29E2BCC74();
      v380 = v380;
      v75 = sub_29E2C3414();
      v77 = v76;
      v78 = v379;
      (v379)(v12, v74);
      v79 = sub_29E29D73C(0, 3);
      if (v80)
      {
        v81 = v79;
      }

      else
      {
        v81 = 0;
      }

      if (v80)
      {
        v82 = v80;
      }

      else
      {
        v82 = 0xE000000000000000;
      }

      *&v391[0] = v75;
      *(&v391[0] + 1) = v77;
      MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
      MEMORY[0x29ED7FCC0](v81, v82);
      v83 = v391[0];
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_29E2CFE30;
      *(v20 + 96) = &type metadata for CategoryRow;
      *(v20 + 104) = &off_2A24B7BB0;
      v85 = swift_allocObject();
      *(v20 + 72) = v85;
      *(v85 + 16) = v83;
      *(v85 + 32) = sub_29DEF6410;
      *(v85 + 40) = v84;
      *(v85 + 48) = 0;
      *(v85 + 56) = 0;
      *(v85 + 64) = v81;
      *(v85 + 72) = v82;
      *(v85 + 80) = 0;
      *(v85 + 88) = 0;
      *(v85 + 96) = 0;
      *(v85 + 104) = 0x3FF0000000000000;
      sub_29E2C3314();
      v86 = v385;
      (v382)(v384, v12, v385);
      sub_29E2BCC74();
      v87 = v380;
      v88 = sub_29E2C3414();
      v90 = v89;
      (v78)(v12, v86);
      v91 = sub_29E29D73C(0, 4);
      if (v92)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0;
      }

      if (v92)
      {
        v94 = v92;
      }

      else
      {
        v94 = 0xE000000000000000;
      }

      *&v391[0] = v88;
      *(&v391[0] + 1) = v90;
      MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
      MEMORY[0x29ED7FCC0](v93, v94);
      v95 = v391[0];
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_29E2CFE40;
      *(v20 + 136) = &type metadata for CategoryRow;
      *(v20 + 144) = &off_2A24B7BB0;
      v97 = swift_allocObject();
      *(v20 + 112) = v97;
      *(v97 + 16) = v95;
      *(v97 + 32) = sub_29DEF6410;
      *(v97 + 40) = v96;
      *(v97 + 48) = 0;
      *(v97 + 56) = 0;
      *(v97 + 64) = v93;
      *(v97 + 72) = v94;
      *(v97 + 80) = 0;
      *(v97 + 88) = 0;
      *(v97 + 96) = 0;
      *(v97 + 104) = 0x3FF0000000000000;
      sub_29E2C3314();
      v98 = v385;
      (v382)(v384, v12, v385);
      sub_29E2BCC74();
      v99 = sub_29E2C3414();
      v101 = v100;
      (v78)(v12, v98);
      v102 = sub_29E29D73C(0, 5);
      if (v103)
      {
        v104 = v102;
      }

      else
      {
        v104 = 0;
      }

      if (v103)
      {
        v105 = v103;
      }

      else
      {
        v105 = 0xE000000000000000;
      }

      *&v391[0] = v99;
      *(&v391[0] + 1) = v101;
      MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
      MEMORY[0x29ED7FCC0](v104, v105);
      v106 = v391[0];
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_29E2CFE50;
      *(v20 + 176) = &type metadata for CategoryRow;
      *(v20 + 184) = &off_2A24B7BB0;
      v108 = swift_allocObject();
      *(v20 + 152) = v108;
      *(v108 + 16) = v106;
LABEL_122:
      *(v108 + 32) = sub_29DEF6410;
      *(v108 + 40) = v107;
      *(v108 + 48) = 0;
      *(v108 + 56) = 0;
      *(v108 + 64) = v104;
      *(v108 + 72) = v105;
      *(v108 + 80) = 0;
      *(v108 + 88) = 0;
      *(v108 + 96) = 0;
      *(v108 + 104) = 0x3FF0000000000000;
      return v20;
    }

    if (v18 != 90)
    {
      if (v18 != 91)
      {
        goto LABEL_124;
      }

      sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29E2D06A0;
      v379 = swift_allocObject();
      *(v379 + 2) = 5;
      v378 = sub_29DEC1A00(5);
      v377 = v242;
      sub_29E2C3314();
      v243 = v387;
      v244 = v387 + 16;
      v383 = *(v387 + 16);
      (v383)(v8, v12, v56);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v245 = qword_2A1A67F80;
      v246 = qword_2A1A67F80;
      sub_29E2BCC74();
      v247 = v246;
      v248 = sub_29E2C3414();
      v376 = v249;
      v250 = *(v243 + 8);
      v250(v12, v56);
      v382 = v250;
      sub_29E2C3314();
      (v383)(v8, v12, v56);
      sub_29E2BCC74();
      v251 = sub_29E2C3414();
      v387 = v243 + 8;
      v252 = v56;
      v385 = v56;
      v253 = v251;
      v381 = v244;
      v255 = v254;
      v250(v12, v252);
      *(v20 + 56) = &type metadata for CategoryRow;
      *(v20 + 64) = &off_2A24B7BB0;
      v256 = swift_allocObject();
      *(v20 + 32) = v256;
      v257 = v377;
      *(v256 + 16) = v378;
      *(v256 + 24) = v257;
      v258 = v379;
      *(v256 + 32) = sub_29DEF63F0;
      *(v256 + 40) = v258;
      v259 = v376;
      *(v256 + 48) = v248;
      *(v256 + 56) = v259;
      *(v256 + 64) = v253;
      *(v256 + 72) = v255;
      *(v256 + 80) = 0;
      *(v256 + 81) = *v388;
      *(v256 + 84) = *&v388[3];
      *(v256 + 88) = 0;
      *(v256 + 96) = 0;
      *(v256 + 104) = 0x3FF0000000000000;
      v260 = swift_allocObject();
      *(v260 + 16) = 4;
      v379 = sub_29DEC1A00(4);
      v378 = v261;
      sub_29E2C3314();
      v262 = v385;
      (v383)(v8, v12, v385);
      sub_29E2BCC74();
      v380 = v245;
      v263 = sub_29E2C3414();
      v265 = v264;
      v382(v12, v262);
      *(v20 + 96) = &type metadata for CategoryRow;
      *(v20 + 104) = &off_2A24B7BB0;
      v266 = swift_allocObject();
      *(v20 + 72) = v266;
      v267 = v378;
      *(v266 + 16) = v379;
      *(v266 + 24) = v267;
      *(v266 + 32) = sub_29DEF6418;
      *(v266 + 40) = v260;
      *(v266 + 48) = 0;
      *(v266 + 56) = 0;
      *(v266 + 64) = v263;
      *(v266 + 72) = v265;
      *(v266 + 80) = 0;
      *(v266 + 81) = *v389;
      *(v266 + 84) = *&v389[3];
      *(v266 + 88) = 0;
      *(v266 + 96) = 0;
      *(v266 + 104) = 0x3FF0000000000000;
      v268 = swift_allocObject();
      *(v268 + 16) = 2;
      v379 = sub_29DEC1A00(2);
      v378 = v269;
      sub_29E2C3314();
      v270 = v262;
      v271 = v262;
      v272 = v383;
      (v383)(v8, v12, v271);
      sub_29E2BCC74();
      v273 = sub_29E2C3414();
      v275 = v274;
      v276 = v270;
      v277 = v382;
      v382(v12, v276);
      *(v20 + 136) = &type metadata for CategoryRow;
      *(v20 + 144) = &off_2A24B7BB0;
      v278 = swift_allocObject();
      *(v20 + 112) = v278;
      v279 = v378;
      *(v278 + 16) = v379;
      *(v278 + 24) = v279;
      *(v278 + 32) = sub_29DEF6418;
      *(v278 + 40) = v268;
      *(v278 + 48) = 0;
      *(v278 + 56) = 0;
      *(v278 + 64) = v273;
      *(v278 + 72) = v275;
      *(v278 + 80) = 0;
      *(v278 + 81) = *v390;
      *(v278 + 84) = *&v390[3];
      *(v278 + 88) = 0;
      *(v278 + 96) = 0;
      *(v278 + 104) = 0x3FF0000000000000;
      v280 = swift_allocObject();
      *(v280 + 16) = 3;
      v379 = sub_29DEC1A00(3);
      v378 = v281;
      sub_29E2C3314();
      v282 = v385;
      (v272)(v8, v12, v385);
      sub_29E2BCC74();
      v283 = sub_29E2C3414();
      v285 = v284;
      v277(v12, v282);
      *(v20 + 176) = &type metadata for CategoryRow;
      *(v20 + 184) = &off_2A24B7BB0;
      v286 = swift_allocObject();
      *(v20 + 152) = v286;
      v287 = v378;
      *(v286 + 16) = v379;
      *(v286 + 24) = v287;
      *(v286 + 32) = sub_29DEF6418;
      *(v286 + 40) = v280;
      *(v286 + 48) = 0;
      *(v286 + 56) = 0;
      *(v286 + 64) = v283;
      *(v286 + 72) = v285;
      *(v286 + 80) = 0;
      *(v286 + 81) = v392;
      *(v286 + 84) = *(&v392 + 3);
      *(v286 + 88) = 0;
      *(v286 + 96) = 0;
      *(v286 + 104) = 0x3FF0000000000000;
      v221 = swift_allocObject();
      *(v221 + 16) = 1;
      v288 = sub_29DEC1A00(1);
      v290 = v289;
      sub_29E2C3314();
      v291 = v385;
      (v383)(v8, v12, v385);
      sub_29E2BCC74();
      v225 = sub_29E2C3414();
      v227 = v292;
      v382(v12, v291);
      *(v20 + 216) = &type metadata for CategoryRow;
      *(v20 + 224) = &off_2A24B7BB0;
      v228 = swift_allocObject();
      *(v20 + 192) = v228;
      *(v228 + 16) = v288;
      *(v228 + 24) = v290;
      v229 = sub_29DEF6418;
      goto LABEL_87;
    }

    sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CAB20;
    v157 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 16);
    v392 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange);
    v393 = v157;
    v394 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 32);
    sub_29DEDD5BC(&v392, v391);
    sub_29E1730A0(&v392, v391);
    sub_29DEC70B0(&v392);
    goto LABEL_78;
  }

  v19 = v6;
  if (v18 > 255)
  {
    if (v18 != 256)
    {
      v384 = v8;
      v385 = v6;
      if (v18 == 313)
      {
        sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_29E2CFE80;
        v383 = "rt";
        sub_29E2C3314();
        v109 = v387;
        v110 = *(v387 + 16);
        v382 = (v387 + 16);
        v381 = v110;
        v110(v8, v12, v6);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v111 = qword_2A1A67F80;
        v112 = qword_2A1A67F80;
        v380 = v111;
        v113 = v112;
        sub_29E2BCC74();
        v377 = v113;
        v114 = sub_29E2C3414();
        v376 = v114;
        v116 = v115;
        v118 = *(v109 + 8);
        v117 = v109 + 8;
        v378 = v118;
        v118(v12, v6);
        v119 = sub_29E29D73C(1, 2);
        if (v120)
        {
          v121 = v119;
        }

        else
        {
          v121 = 0;
        }

        if (v120)
        {
          v122 = v120;
        }

        else
        {
          v122 = 0xE000000000000000;
        }

        *&v391[0] = v114;
        *(&v391[0] + 1) = v116;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v121, v122);
        v387 = v117;
        v379 = "EDING_ALERT_MESSAGE";
        v123 = v391[0];
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_29E2CFEA0;
        *(v20 + 56) = &type metadata for CategoryRow;
        *(v20 + 64) = &off_2A24B7BB0;
        v125 = swift_allocObject();
        *(v20 + 32) = v125;
        *(v125 + 16) = v123;
        *(v125 + 32) = sub_29DEF6410;
        *(v125 + 40) = v124;
        *(v125 + 48) = v376;
        *(v125 + 56) = v116;
        *(v125 + 64) = v121;
        *(v125 + 72) = v122;
        *(v125 + 80) = 0;
        *(v125 + 88) = 0;
        *(v125 + 96) = 0;
        *(v125 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        v126 = v385;
        (v381)(v384, v12, v385);
        sub_29E2BCC74();
        v377 = v377;
        v127 = sub_29E2C3414();
        v129 = v128;
        v130 = v126;
        v131 = v378;
        v378(v12, v126);
        v132 = sub_29E29D73C(1, 3);
        if (v133)
        {
          v134 = v132;
        }

        else
        {
          v134 = 0;
        }

        if (v133)
        {
          v135 = v133;
        }

        else
        {
          v135 = 0xE000000000000000;
        }

        *&v391[0] = v127;
        *(&v391[0] + 1) = v129;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v134, v135);
        v136 = v391[0];
        v137 = swift_allocObject();
        *(v137 + 16) = xmmword_29E2CFEB0;
        *(v20 + 96) = &type metadata for CategoryRow;
        *(v20 + 104) = &off_2A24B7BB0;
        v138 = swift_allocObject();
        *(v20 + 72) = v138;
        *(v138 + 16) = v136;
        *(v138 + 32) = sub_29DEF6410;
        *(v138 + 40) = v137;
        *(v138 + 48) = 0;
        *(v138 + 56) = 0;
        *(v138 + 64) = v134;
        *(v138 + 72) = v135;
        *(v138 + 80) = 0;
        *(v138 + 88) = 0;
        *(v138 + 96) = 0;
        *(v138 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        v139 = v384;
        (v381)(v384, v12, v130);
        sub_29E2BCC74();
        v140 = v377;
        v141 = sub_29E2C3414();
        v143 = v142;
        v131(v12, v130);
        v144 = sub_29E29D73C(1, 4);
        if (v145)
        {
          v146 = v144;
        }

        else
        {
          v146 = 0;
        }

        if (v145)
        {
          v147 = v145;
        }

        else
        {
          v147 = 0xE000000000000000;
        }

        *&v391[0] = v141;
        *(&v391[0] + 1) = v143;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v146, v147);
        v148 = v391[0];
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_29E2CFEC0;
        *(v20 + 136) = &type metadata for CategoryRow;
        *(v20 + 144) = &off_2A24B7BB0;
        v150 = swift_allocObject();
        *(v20 + 112) = v150;
        *(v150 + 16) = v148;
        *(v150 + 32) = sub_29DEF6410;
        *(v150 + 40) = v149;
        *(v150 + 48) = 0;
        *(v150 + 56) = 0;
        *(v150 + 64) = v146;
        *(v150 + 72) = v147;
        *(v150 + 80) = 0;
        *(v150 + 88) = 0;
        *(v150 + 96) = 0;
        *(v150 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        (v381)(v139, v12, v130);
        sub_29E2BCC74();
        v151 = sub_29E2C3414();
        v153 = v152;
        v378(v12, v130);
        v154 = sub_29E29D73C(1, 5);
        if (v155)
        {
          v104 = v154;
        }

        else
        {
          v104 = 0;
        }

        if (v155)
        {
          v105 = v155;
        }

        else
        {
          v105 = 0xE000000000000000;
        }

        *&v391[0] = v151;
        *(&v391[0] + 1) = v153;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v104, v105);
        v156 = v391[0];
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_29E2CFED0;
        *(v20 + 176) = &type metadata for CategoryRow;
        *(v20 + 184) = &off_2A24B7BB0;
        v108 = swift_allocObject();
        *(v20 + 152) = v108;
        *(v108 + 16) = v156;
      }

      else
      {
        if (v18 != 314)
        {
          goto LABEL_124;
        }

        sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_29E2CFE80;
        v383 = "NANCY_CHART_TITLE";
        sub_29E2C3314();
        v323 = v387;
        v324 = *(v387 + 16);
        v382 = (v387 + 16);
        v381 = v324;
        v324(v8, v12, v6);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v325 = qword_2A1A67F80;
        v326 = qword_2A1A67F80;
        v380 = v325;
        v327 = v326;
        sub_29E2BCC74();
        v377 = v327;
        v328 = sub_29E2C3414();
        v376 = v328;
        v330 = v329;
        v332 = *(v323 + 8);
        v331 = v323 + 8;
        v378 = v332;
        v332(v12, v6);
        v333 = sub_29E29D73C(2, 2);
        if (v334)
        {
          v335 = v333;
        }

        else
        {
          v335 = 0;
        }

        if (v334)
        {
          v336 = v334;
        }

        else
        {
          v336 = 0xE000000000000000;
        }

        *&v391[0] = v328;
        *(&v391[0] + 1) = v330;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v335, v336);
        v387 = v331;
        v379 = "EDING_ALERT_MESSAGE";
        v337 = v391[0];
        v338 = swift_allocObject();
        v338[1] = vdupq_n_s64(2uLL);
        *(v20 + 56) = &type metadata for CategoryRow;
        *(v20 + 64) = &off_2A24B7BB0;
        v339 = swift_allocObject();
        *(v20 + 32) = v339;
        *(v339 + 16) = v337;
        *(v339 + 32) = sub_29DEF63D8;
        *(v339 + 40) = v338;
        *(v339 + 48) = v376;
        *(v339 + 56) = v330;
        *(v339 + 64) = v335;
        *(v339 + 72) = v336;
        *(v339 + 80) = 0;
        *(v339 + 88) = 0;
        *(v339 + 96) = 0;
        *(v339 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        v340 = v385;
        (v381)(v384, v12, v385);
        sub_29E2BCC74();
        v377 = v377;
        v341 = sub_29E2C3414();
        v343 = v342;
        v344 = v340;
        v345 = v378;
        v378(v12, v340);
        v346 = sub_29E29D73C(2, 3);
        if (v347)
        {
          v348 = v346;
        }

        else
        {
          v348 = 0;
        }

        if (v347)
        {
          v349 = v347;
        }

        else
        {
          v349 = 0xE000000000000000;
        }

        *&v391[0] = v341;
        *(&v391[0] + 1) = v343;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v348, v349);
        v350 = v391[0];
        v351 = swift_allocObject();
        *(v351 + 16) = xmmword_29E2CFEE0;
        *(v20 + 96) = &type metadata for CategoryRow;
        *(v20 + 104) = &off_2A24B7BB0;
        v352 = swift_allocObject();
        *(v20 + 72) = v352;
        *(v352 + 16) = v350;
        *(v352 + 32) = sub_29DEF6410;
        *(v352 + 40) = v351;
        *(v352 + 48) = 0;
        *(v352 + 56) = 0;
        *(v352 + 64) = v348;
        *(v352 + 72) = v349;
        *(v352 + 80) = 0;
        *(v352 + 88) = 0;
        *(v352 + 96) = 0;
        *(v352 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        v353 = v384;
        (v381)(v384, v12, v344);
        sub_29E2BCC74();
        v354 = v377;
        v355 = sub_29E2C3414();
        v357 = v356;
        v345(v12, v344);
        v358 = sub_29E29D73C(2, 4);
        if (v359)
        {
          v360 = v358;
        }

        else
        {
          v360 = 0;
        }

        if (v359)
        {
          v361 = v359;
        }

        else
        {
          v361 = 0xE000000000000000;
        }

        *&v391[0] = v355;
        *(&v391[0] + 1) = v357;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v360, v361);
        v362 = v391[0];
        v363 = swift_allocObject();
        *(v363 + 16) = xmmword_29E2CFEF0;
        *(v20 + 136) = &type metadata for CategoryRow;
        *(v20 + 144) = &off_2A24B7BB0;
        v364 = swift_allocObject();
        *(v20 + 112) = v364;
        *(v364 + 16) = v362;
        *(v364 + 32) = sub_29DEF6410;
        *(v364 + 40) = v363;
        *(v364 + 48) = 0;
        *(v364 + 56) = 0;
        *(v364 + 64) = v360;
        *(v364 + 72) = v361;
        *(v364 + 80) = 0;
        *(v364 + 88) = 0;
        *(v364 + 96) = 0;
        *(v364 + 104) = 0x3FF0000000000000;
        sub_29E2C3314();
        (v381)(v353, v12, v344);
        sub_29E2BCC74();
        v365 = sub_29E2C3414();
        v367 = v366;
        v378(v12, v344);
        v368 = sub_29E29D73C(2, 5);
        if (v369)
        {
          v104 = v368;
        }

        else
        {
          v104 = 0;
        }

        if (v369)
        {
          v105 = v369;
        }

        else
        {
          v105 = 0xE000000000000000;
        }

        *&v391[0] = v365;
        *(&v391[0] + 1) = v367;
        MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
        MEMORY[0x29ED7FCC0](v104, v105);
        v370 = v391[0];
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_29E2CFF00;
        *(v20 + 176) = &type metadata for CategoryRow;
        *(v20 + 184) = &off_2A24B7BB0;
        v108 = swift_allocObject();
        *(v20 + 152) = v108;
        *(v108 + 16) = v370;
      }

      goto LABEL_122;
    }

    sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CAB20;
    v230 = *(v2 + 48);
    v392 = *(v2 + 32);
    v393 = v230;
    v394 = *(v2 + 64);
    sub_29E172E50(&v392, v391);
LABEL_78:
    *(v20 + 56) = &type metadata for QuantityRow;
    *(v20 + 64) = &off_2A24B1540;
    v231 = swift_allocObject();
    *(v20 + 32) = v231;
    v232 = v391[5];
    v233 = v391[6];
    v231[5] = v391[4];
    v231[6] = v232;
    v234 = v391[7];
    v231[7] = v233;
    v231[8] = v234;
    v235 = v391[1];
    v231[1] = v391[0];
    v231[2] = v235;
    v236 = v391[3];
    v231[3] = v391[2];
    v231[4] = v236;
    return v20;
  }

  if (v18 == 97)
  {
    sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CE0D0;
    v380 = swift_allocObject();
    v380[2] = 2;
    v379 = sub_29DEC1380(2);
    v378 = v199;
    sub_29E2C3314();
    v200 = v387;
    v201 = *(v387 + 16);
    v201(v8, v12, v6);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v202 = qword_2A1A67F80;
    v203 = qword_2A1A67F80;
    sub_29E2BCC74();
    v204 = v203;
    v383 = v202;
    v377 = sub_29E2C3414();
    v376 = v205;
    v206 = *(v200 + 8);
    v206(v12, v6);
    v382 = v206;
    sub_29E2C3314();
    v201(v8, v12, v6);
    sub_29E2BCC74();
    v207 = sub_29E2C3414();
    v381 = v201;
    v209 = v208;
    v206(v12, v6);
    *(v20 + 56) = &type metadata for CategoryRow;
    *(v20 + 64) = &off_2A24B7BB0;
    v210 = swift_allocObject();
    *(v20 + 32) = v210;
    v211 = v378;
    *(v210 + 16) = v379;
    *(v210 + 24) = v211;
    v212 = v380;
    *(v210 + 32) = sub_29DEF63E8;
    *(v210 + 40) = v212;
    v213 = v376;
    *(v210 + 48) = v377;
    *(v210 + 56) = v213;
    *(v210 + 64) = v207;
    *(v210 + 72) = v209;
    *(v210 + 80) = 0;
    *(v210 + 81) = *v390;
    *(v210 + 84) = *&v390[3];
    *(v210 + 88) = 0;
    *(v210 + 96) = 0;
    *(v210 + 104) = 0x3FF0000000000000;
    v214 = swift_allocObject();
    *(v214 + 16) = 1;
    v380 = sub_29DEC1380(1);
    v379 = v215;
    sub_29E2C3314();
    (v381)(v8, v12, v6);
    sub_29E2BCC74();
    v216 = sub_29E2C3414();
    v387 = v200 + 8;
    v218 = v217;
    v382(v12, v6);
    *(v20 + 96) = &type metadata for CategoryRow;
    *(v20 + 104) = &off_2A24B7BB0;
    v219 = swift_allocObject();
    *(v20 + 72) = v219;
    v220 = v379;
    *(v219 + 16) = v380;
    *(v219 + 24) = v220;
    *(v219 + 32) = sub_29DEF6414;
    *(v219 + 40) = v214;
    *(v219 + 48) = 0;
    *(v219 + 56) = 0;
    *(v219 + 64) = v216;
    *(v219 + 72) = v218;
    *(v219 + 80) = 0;
    *(v219 + 81) = v392;
    *(v219 + 84) = *(&v392 + 3);
    *(v219 + 88) = 0;
    *(v219 + 96) = 0;
    *(v219 + 104) = 0x3FF0000000000000;
    v221 = swift_allocObject();
    *(v221 + 16) = 3;
    v222 = sub_29DEC1380(3);
    v224 = v223;
    sub_29E2C3314();
    (v381)(v8, v12, v6);
    sub_29E2BCC74();
    v225 = sub_29E2C3414();
    v227 = v226;
    v382(v12, v6);
    *(v20 + 136) = &type metadata for CategoryRow;
    *(v20 + 144) = &off_2A24B7BB0;
    v228 = swift_allocObject();
    *(v20 + 112) = v228;
    *(v228 + 16) = v222;
    *(v228 + 24) = v224;
    v229 = sub_29DEF6414;
LABEL_87:
    *(v228 + 32) = v229;
    *(v228 + 40) = v221;
    *(v228 + 48) = 0;
    *(v228 + 56) = 0;
    *(v228 + 64) = v225;
    *(v228 + 72) = v227;
    *(v228 + 80) = 0;
    *(v228 + 81) = v391[0];
    *(v228 + 84) = *(v391 + 3);
    *(v228 + 88) = 0;
    *(v228 + 96) = 0;
    *(v228 + 104) = 0x3FF0000000000000;
    return v20;
  }

  v385 = v6;
  if (v18 == 243)
  {
    sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CE0D0;
    v381 = swift_allocObject();
    *(v381 + 16) = 3;
    v380 = sub_29DEC17D8(3);
    v379 = v21;
    sub_29E2C3314();
    v22 = v387;
    v23 = (v387 + 16);
    v383 = *(v387 + 16);
    (v383)(v8, v12, v19);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v24 = qword_2A1A67F80;
    v25 = qword_2A1A67F80;
    sub_29E2BCC74();
    v26 = v25;
    v27 = sub_29E2C3414();
    v377 = v28;
    v29 = *(v22 + 8);
    v29(v12, v19);
    sub_29E2C3314();
    (v383)(v8, v12, v19);
    sub_29E2BCC74();
    v378 = v24;
    v30 = sub_29E2C3414();
    v387 = v22 + 8;
    v31 = v19;
    v32 = v30;
    v382 = v23;
    v34 = v33;
    v29(v12, v31);
    *(v20 + 56) = &type metadata for CategoryRow;
    *(v20 + 64) = &off_2A24B7BB0;
    v35 = swift_allocObject();
    *(v20 + 32) = v35;
    v36 = v379;
    *(v35 + 16) = v380;
    *(v35 + 24) = v36;
    v37 = v381;
    *(v35 + 32) = sub_29DEF6408;
    *(v35 + 40) = v37;
    v38 = v377;
    *(v35 + 48) = v27;
    *(v35 + 56) = v38;
    *(v35 + 64) = v32;
    *(v35 + 72) = v34;
    *(v35 + 80) = 0;
    *(v35 + 81) = *v390;
    *(v35 + 84) = *&v390[3];
    *(v35 + 88) = 0;
    *(v35 + 96) = 0;
    *(v35 + 104) = 0x3FF0000000000000;
    v39 = swift_allocObject();
    *(v39 + 16) = 2;
    v381 = sub_29DEC17D8(2);
    v380 = v40;
    sub_29E2C3314();
    v41 = v385;
    (v383)(v8, v12, v385);
    sub_29E2BCC74();
    v42 = sub_29E2C3414();
    v44 = v43;
    v29(v12, v41);
    *(v20 + 96) = &type metadata for CategoryRow;
    *(v20 + 104) = &off_2A24B7BB0;
    v45 = swift_allocObject();
    *(v20 + 72) = v45;
    v46 = v380;
    *(v45 + 16) = v381;
    *(v45 + 24) = v46;
    *(v45 + 32) = sub_29DEF6424;
    *(v45 + 40) = v39;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = v42;
    *(v45 + 72) = v44;
    *(v45 + 80) = 0;
    *(v45 + 81) = v392;
    *(v45 + 84) = *(&v392 + 3);
    *(v45 + 88) = 0;
    *(v45 + 96) = 0;
    *(v45 + 104) = 0x3FF0000000000000;
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    v48 = sub_29DEC17D8(1);
    v50 = v49;
    sub_29E2C3314();
    (v383)(v8, v12, v41);
    sub_29E2BCC74();
    v51 = sub_29E2C3414();
    v53 = v52;
    v29(v12, v41);
    *(v20 + 136) = &type metadata for CategoryRow;
    *(v20 + 144) = &off_2A24B7BB0;
    v54 = swift_allocObject();
    *(v20 + 112) = v54;
    *(v54 + 16) = v48;
    *(v54 + 24) = v50;
    v55 = sub_29DEF6424;
LABEL_92:
    *(v54 + 32) = v55;
    *(v54 + 40) = v47;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = v51;
    *(v54 + 72) = v53;
    *(v54 + 80) = 0;
LABEL_93:
    *(v54 + 81) = v391[0];
    *(v54 + 84) = *(v391 + 3);
    *(v54 + 88) = 0;
    *(v54 + 96) = 0;
    *(v54 + 104) = 0x3FF0000000000000;
    return v20;
  }

  if (v18 == 244)
  {
    sub_29DF0F0D4(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CE0D0;
    v381 = swift_allocObject();
    *(v381 + 16) = 3;
    v380 = sub_29DEC1C28(3);
    v379 = v293;
    sub_29E2C3314();
    v294 = v387;
    v295 = (v387 + 16);
    v383 = *(v387 + 16);
    (v383)(v8, v12, v19);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v296 = qword_2A1A67F80;
    v297 = qword_2A1A67F80;
    sub_29E2BCC74();
    v298 = v297;
    v299 = sub_29E2C3414();
    v377 = v300;
    v301 = *(v294 + 8);
    v301(v12, v19);
    sub_29E2C3314();
    (v383)(v8, v12, v19);
    sub_29E2BCC74();
    v378 = v296;
    v302 = sub_29E2C3414();
    v387 = v294 + 8;
    v303 = v19;
    v304 = v302;
    v382 = v295;
    v306 = v305;
    v301(v12, v303);
    *(v20 + 56) = &type metadata for CategoryRow;
    *(v20 + 64) = &off_2A24B7BB0;
    v307 = swift_allocObject();
    *(v20 + 32) = v307;
    v308 = v379;
    *(v307 + 16) = v380;
    *(v307 + 24) = v308;
    v309 = v381;
    *(v307 + 32) = sub_29DEF6400;
    *(v307 + 40) = v309;
    v310 = v377;
    *(v307 + 48) = v299;
    *(v307 + 56) = v310;
    *(v307 + 64) = v304;
    *(v307 + 72) = v306;
    *(v307 + 80) = 0;
    *(v307 + 81) = *v390;
    *(v307 + 84) = *&v390[3];
    *(v307 + 88) = 0;
    *(v307 + 96) = 0;
    *(v307 + 104) = 0x3FF0000000000000;
    v311 = swift_allocObject();
    *(v311 + 16) = 2;
    v381 = sub_29DEC1C28(2);
    v380 = v312;
    sub_29E2C3314();
    v313 = v385;
    (v383)(v8, v12, v385);
    sub_29E2BCC74();
    v314 = sub_29E2C3414();
    v316 = v315;
    v301(v12, v313);
    *(v20 + 96) = &type metadata for CategoryRow;
    *(v20 + 104) = &off_2A24B7BB0;
    v317 = swift_allocObject();
    *(v20 + 72) = v317;
    v318 = v380;
    *(v317 + 16) = v381;
    *(v317 + 24) = v318;
    *(v317 + 32) = sub_29DEF6420;
    *(v317 + 40) = v311;
    *(v317 + 48) = 0;
    *(v317 + 56) = 0;
    *(v317 + 64) = v314;
    *(v317 + 72) = v316;
    *(v317 + 80) = 0;
    *(v317 + 81) = v392;
    *(v317 + 84) = *(&v392 + 3);
    *(v317 + 88) = 0;
    *(v317 + 96) = 0;
    *(v317 + 104) = 0x3FF0000000000000;
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    v319 = sub_29DEC1C28(1);
    v321 = v320;
    sub_29E2C3314();
    (v383)(v8, v12, v313);
    sub_29E2BCC74();
    v51 = sub_29E2C3414();
    v53 = v322;
    v301(v12, v313);
    *(v20 + 136) = &type metadata for CategoryRow;
    *(v20 + 144) = &off_2A24B7BB0;
    v54 = swift_allocObject();
    *(v20 + 112) = v54;
    *(v54 + 16) = v319;
    *(v54 + 24) = v321;
    v55 = sub_29DEF6420;
    goto LABEL_92;
  }

LABEL_124:
  *&v391[0] = 0;
  *(&v391[0] + 1) = 0xE000000000000000;
  sub_29E2C4584();

  *&v391[0] = 0xD000000000000024;
  *(&v391[0] + 1) = 0x800000029E2F0B10;
  v372 = [a1 identifier];
  v373 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v375 = v374;

  MEMORY[0x29ED7FCC0](v373, v375);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29DF13618(uint64_t a1)
{
  v2 = type metadata accessor for CycleChartCycle(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_29DF13B78(v8, sub_29DF0F0A0);
    if (!a1)
    {
      return;
    }
  }

  else
  {
    sub_29DF13C0C(v8, v5, type metadata accessor for CycleChartCycle);
    sub_29DF13B78(v8, sub_29DF0F0A0);
    v10 = *v5;
    sub_29DF13B78(v5, type metadata accessor for CycleChartCycle);
    if (v10 == a1)
    {
      return;
    }
  }

  sub_29DF0E7C0(a1, 0, v9);
}

unint64_t sub_29DF13808()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C2B84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  *v7 = sub_29E2C3CF4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDCA278], v4);
  v8 = sub_29E2C2BA4();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_29E2C04B4();
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Received significant time change notification", v12, 0xCu);
      sub_29DE93B3C(v13);
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    v17.n128_f64[0] = (*(v1 + 8))(v3, v0);
    return sub_29DF0D08C(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DF13B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF13C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF13CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DF13D28(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v106 = a6;
  v107 = a4;
  v111 = a5;
  v103 = a3;
  v99[0] = a2;
  v104 = *v7;
  v105 = a1;
  v10 = sub_29E2BCEA4();
  v109 = *(v10 - 8);
  v110 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  *&v108 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDB8B00];
  sub_29DF0F0D4(0, &qword_2A1818D88, sub_29DF0F138, MEMORY[0x29EDB8B00]);
  v102 = v13;
  v101 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v100 = v99 - v14;
  sub_29DF0F138(0);
  v99[1] = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v99 - v19;
  sub_29DF0F0D4(0, &qword_2A1818D80, sub_29DF0F0A0, v12);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = v99 - v24;
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v26);
  v28 = v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v31 = v99 - v30;
  v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider__predominantCycle;
  v33 = type metadata accessor for CycleChartCycle(0);
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  sub_29DF13C0C(v31, v28, sub_29DF0F0A0);
  sub_29E2C11D4();
  sub_29DF13B78(v31, sub_29DF0F0A0);
  (*(v23 + 32))(v8 + v32, v25, v22);
  v34 = v103;
  v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider__model;
  v36 = type metadata accessor for CycleChartsModel(0);
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  sub_29DF13C0C(v20, v17, sub_29DF0F138);
  v37 = v100;
  sub_29E2C11D4();
  sub_29DF13B78(v20, sub_29DF0F138);
  (*(v101 + 32))(v8 + v35, v37, v102);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_subscriptions) = MEMORY[0x29EDCA1A0];
  v38 = [v34 healthStore];
  *&v113[0] = v104;
  swift_getMetatypeMetadata();
  sub_29E2C3424();
  v8[9] = sub_29E1F4994(v38);
  v8[10] = v39;
  v40 = v105;
  *(v8 + 88) = v41 & 1;
  if (v40)
  {
    v42 = v40;
    v43 = [v40 cycles];
    if (v43)
    {
      v44 = v43;
      sub_29DE9408C(0, &qword_2A1A5E0A0, 0x29EDC3370);
      v45 = sub_29E2C3614();

      v46 = sub_29E2A01E4(v45);
      goto LABEL_6;
    }
  }

  else
  {
    v42 = 0;
  }

  v46 = MEMORY[0x29EDCA190];
LABEL_6:
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles) = v46;
  v8[2] = v34;
  v47 = v109;
  v48 = v110;
  v49 = *(v109 + 16);
  v50 = v111;
  v49(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_gregorianCalendar, v111, v110);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_horizontalSizeClass) = v106;
  v51 = v34;
  v52 = v108;
  sub_29E2BCE44();
  (*(v47 + 32))(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_currentCalendar, v52, v48);
  v53 = v107;
  v54 = [v51 healthStore];
  v49(v52, v50, v48);
  type metadata accessor for CycleChartDayProvider();
  swift_allocObject();
  v56 = sub_29E1AFC3C(v53, v54, v52, v55);

  v8[3] = v56;
  v57 = [v42 recentBasalBodyTemperature];
  v58 = v8[9];
  if (v57)
  {
    v59 = v57;
    v60 = v58;
    v61 = v59;
    v62 = sub_29E24F420();
    v64 = v63;
    [v62 doubleValueForUnit_];
    *&v66 = floor(v65);
    v108 = v66;
    [v64 doubleValueForUnit_];
    v68 = v67;

    v69 = *&v108;
    v70 = ceil(v68);
    if (*&v108 > v70)
    {
      __break(1u);
      return;
    }

    *&v71 = v108;
    *(&v71 + 1) = v70;
    goto LABEL_14;
  }

  v72 = objc_opt_self();
  v73 = v58;
  v74 = [v72 degreeCelsiusUnit];
  sub_29DE9408C(0, &qword_2A18188B8, 0x29EDBAE50);
  v75 = sub_29E2C40D4();

  if (v75)
  {
    v71 = xmmword_29E2CFF10;
    v70 = 37.0;
    *&v76 = 35.0;
LABEL_13:
    v69 = *&v76;
LABEL_14:
    v79 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    v80 = 0;
    v81 = v70 - v69 > 1.0;
    v82 = 0.5;
    if (v81)
    {
      v82 = 1.0;
    }

    goto LABEL_17;
  }

  v77 = [v72 degreeFahrenheitUnit];
  v78 = sub_29E2C40D4();

  if (v78)
  {
    v71 = xmmword_29E2CFF20;
    v70 = 99.0;
    *&v76 = 96.0;
    goto LABEL_13;
  }

  v71 = 0uLL;
  v80 = 1;
  v82 = 1.0;
  v79 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
LABEL_17:
  v83 = (v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange);
  *v83 = v71;
  *(v83 + 16) = v80;
  v83[3] = v82;
  *(v83 + 4) = v58;
  v84 = v8[10];
  sub_29E24FC70(v84, v113);
  v85 = v113[1];
  *(v8 + 2) = v113[0];
  *(v8 + 3) = v85;
  v8[8] = v114;
  v86 = objc_opt_self();
  v87 = [v51 v79[60]];
  v88 = [v86 hkmc:v87 cycleChartsHiddenRowsDomainWithHealthStore:?];

  LOBYTE(v87) = *(v8 + 88);
  type metadata accessor for CycleChartsSettings();
  swift_allocObject();
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_settings) = sub_29DFDDFD8(v88, v87);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_preferredMaxLayoutWidth) = a7;
  sub_29DF0D08C(v89);
  v91 = v99[0];
  if (v99[0])
  {
    v92 = *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles);
    sub_29E2BF404();
    v91 = v91;
    v93 = sub_29E21873C(v91, v92);
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 1;
  }

  sub_29DF0E7C0(v93, v95 & 1, v90);
  [v51 registerObserver_];
  v96 = [objc_opt_self() defaultCenter];
  [v96 addObserver:v8 selector:sel_significantTimeChangeDidOccur name:*MEMORY[0x29EDC8028] object:0];

  v112 = *(*(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_settings) + 32);
  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  *(v98 + 16) = sub_29DF14824;
  *(v98 + 24) = v97;
  sub_29DF1482C();
  sub_29DF13CE0(&qword_2A1818DA8, sub_29DF1482C, MEMORY[0x29EDB8A58]);

  sub_29E2C1384();

  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  (*(v109 + 8))(v111, v110);
}

void sub_29DF1482C()
{
  if (!qword_2A1818DA0)
  {
    v0 = sub_29E2C10B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818DA0);
    }
  }
}

void sub_29DF14890(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_29E2C04B4();
  v13 = a1;
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v67 = v17;
    *v16 = 136446466;
    v18 = sub_29E2C4AE4();
    v20 = sub_29DFAA104(v18, v19, &v67);
    v65 = v4;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v66 = v13;
    sub_29DE9408C(0, &qword_2A1A61DC0, 0x29EDC3358);
    v22 = v13;
    v23 = sub_29E2C3464();
    v25 = sub_29DFAA104(v23, v24, &v67);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Received updated analysis: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v16, -1, -1);

    (*(v5 + 8))(v7, v65);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = [v13 recentBasalBodyTemperature];
  v27 = *(v2 + 72);
  if (v26)
  {
    v28 = v26;
    v29 = v27;
    v30 = v28;
    v31 = sub_29E24F420();
    v33 = v32;
    [v31 doubleValueForUnit_];
    v35 = floor(v34);
    [v33 doubleValueForUnit_];
    v37 = v36;

    v38 = ceil(v37);
    if (v35 <= v38)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v39 = objc_opt_self();
  v40 = v27;
  v41 = [v39 degreeCelsiusUnit];
  sub_29DE9408C(0, &qword_2A18188B8, 0x29EDBAE50);
  v42 = sub_29E2C40D4();

  if (v42)
  {
    v38 = 37.0;
    *&v43 = 35.0;
  }

  else
  {
    v44 = [v39 degreeFahrenheitUnit];
    v45 = sub_29E2C40D4();

    if ((v45 & 1) == 0)
    {
      v46 = 1;
      v35 = 0.0;
      v47 = 1.0;
      v38 = 0.0;
      goto LABEL_15;
    }

    v38 = 99.0;
    *&v43 = 96.0;
  }

  v35 = *&v43;
LABEL_13:
  v46 = 0;
  v47 = 0.5;
  if (v38 - v35 > 1.0)
  {
    v47 = 1.0;
  }

LABEL_15:
  v48 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange;
  v50 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange);
  v49 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 8);
  v51 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 16);
  v52 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 24);
  v53 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_basalBodyTemperatureRange + 32);
  *v48 = v35;
  *(v48 + 8) = v38;
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  *(v48 + 32) = v27;
  if (v51)
  {
    if (v52 != v47)
    {
      v46 = 0;
    }

    if (v46 != 1)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_29DE9408C(0, &qword_2A1A619F0, 0x29EDC9738);
    v54 = v27;
    if (sub_29E2C40D4())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ((v46 & 1) == 0 && v50 == v35 && v49 == v38 && v52 == v47)
  {
    goto LABEL_24;
  }

LABEL_26:
  v56 = v27;
LABEL_27:
  sub_29DF0D08C(v55);
LABEL_28:

  v57 = [v13 cycles];
  if (v57)
  {
    v58 = v57;
    sub_29DE9408C(0, &qword_2A1A5E0A0, 0x29EDC3370);
    v59 = sub_29E2C3614();

    v60 = sub_29E2A01E4(v59);
  }

  else
  {
    v60 = MEMORY[0x29EDCA190];
  }

  v61 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleChartsModelProvider_cycles) = v60;
  sub_29E2BF404();
  v62 = sub_29E142D94(v61, v60);

  if ((v62 & 1) == 0)
  {
    sub_29DF0D08C(v63);
  }
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingTileActionHandler(uint64_t a1)
{
  result = qword_2A1A61180;
  if (!qword_2A1A61180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF14F3C(uint64_t a1)
{
  v3 = sub_29E2BF504();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v15 - v8;
  v10 = objc_allocWithZone(v1);
  v11 = *(v4 + 16);
  v11(v9, a1, v3);
  *&v10[qword_2A1A612C0] = 0;
  *&v10[qword_2A1A612C8] = 1;
  v11(v6, v9, v3);
  v12 = sub_29E2BF7B4();
  v13 = *(v4 + 8);
  v13(a1, v3);
  v13(v9, v3);
  return v12;
}

id sub_29DF150AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DF150EC()
{
  v52[5] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v1 = sub_29E2BCBB4();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BF504();
  v45 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v43 - v10;
  sub_29E2C04B4();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  v14 = os_log_type_enabled(v12, v13);
  v49 = v7;
  v50 = v6;
  v43 = ObjectType;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52[0] = v16;
    *v15 = 136446210;
    v17 = sub_29E2C4AE4();
    v19 = sub_29DFAA104(v17, v18, v52);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Handling dismissal", v15, 0xCu);
    sub_29DE93B3C(v16);
    MEMORY[0x29ED82140](v16, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    v20 = *(v49 + 8);
    v20(v11, v50);
  }

  else
  {

    v20 = *(v7 + 8);
    v20(v11, v6);
  }

  v21 = *MEMORY[0x29EDC32A0];
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  (*(v45 + 8))(v5, v3);
  sub_29DE966D4(v52, v52[3]);
  v22 = sub_29E2BF484();
  v23 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v24 = [v23 initWithCategory:4 domainName:v21 healthStore:{v22, v43}];

  sub_29DE93B3C(v52);
  v25 = v46;
  sub_29E2BCB54();
  v26 = sub_29E2BCB04();
  (*(v47 + 8))(v25, v48);
  v52[0] = 0;
  LODWORD(v25) = [v24 hkmc:v26 setOnboardingTileLastDismissedDate:v52 error:?];

  if (v25)
  {
    v27 = v52[0];
  }

  else
  {
    v28 = v52[0];
    v29 = sub_29E2BC7E4();

    swift_willThrow();
    v30 = v44;
    sub_29E2C04B4();
    v31 = v29;
    v32 = sub_29E2C0504();
    v33 = sub_29E2C3A14();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v34 = 136446466;
      v36 = sub_29E2C4AE4();
      v38 = sub_29DFAA104(v36, v37, v52);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v51 = v29;
      v39 = v29;
      sub_29DE96670();
      v40 = sub_29E2C3424();
      v42 = sub_29DFAA104(v40, v41, v52);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_29DE74000, v32, v33, "[%{public}s] Error setting dismissal date: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    else
    {
    }

    v20(v30, v50);
  }
}

uint64_t type metadata accessor for CycleChartPDFPregnancyFactor(uint64_t a1)
{
  result = qword_2A1818DB0;
  if (!qword_2A1818DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF15730(uint64_t a1)
{
  sub_29E2BCBB4();
  if (v1 <= 0x3F)
  {
    sub_29DEB3B00(319);
    if (v2 <= 0x3F)
    {
      sub_29DE9408C(319, &qword_2A1A61D50, 0x29EDBAA60);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29DF157E4()
{
  v20 = sub_29E2BC954();
  v1 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BC984();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CycleChartPDFPregnancyFactor(0);
  sub_29DEAA194(v0 + *(v15 + 24), v14);
  v16 = (*(v9 + 48))(v14, 1, v8);
  result = 0;
  if (v16 != 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_29E2BC974();
    sub_29E2BC944();
    v18 = sub_29E2BCB74();
    (*(v1 + 8))(v3, v20);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    return v18;
  }

  return result;
}

uint64_t sub_29DF15AB8()
{
  v0 = sub_29E2BCBB4();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v27 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v30 = &v25 - v7;
  v35 = sub_29E2BC954();
  v8 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BC984();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  sub_29DF157E4();
  if (v16)
  {
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E2BC974();
    sub_29E2BC944();
    sub_29E2BCB74();
    (*(v8 + 8))(v10, v35);
    (*(v12 + 8))(v14, v11);
    sub_29E2C3334();

    sub_29E2C3344();
  }

  else
  {
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E2BC974();
    sub_29E2BC944();
    sub_29E2BCB74();
    v26 = *(v8 + 8);
    v26(v10, v35);
    v17 = *(v12 + 8);
    v17(v14, v11);
    sub_29E2C3334();

    sub_29E2C3344();
    sub_29DE9408C(0, &qword_2A1817D48, 0x29EDBAC28);
    type metadata accessor for CycleChartPDFPregnancyFactor(0);
    v18 = v27;
    sub_29E2C3ED4();
    sub_29E2BC974();
    sub_29E2BC944();
    sub_29E2BCB74();
    v26(v10, v35);
    v17(v14, v11);
    (*(v28 + 8))(v18, v29);
  }

  sub_29E2C3334();

  sub_29E2C3344();
  v19 = v30;
  sub_29E2C3374();
  v20 = v32;
  v21 = v33;
  (*(v32 + 16))(v31, v19, v33);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v22 = qword_2A1A67F80;
  sub_29E2BCC74();
  v23 = sub_29E2C3414();
  (*(v20 + 8))(v19, v21);
  return v23;
}

uint64_t sub_29DF160F4(uint64_t a1)
{
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF16D74(&qword_2A1818CD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E2C3254();
  v9 = type metadata accessor for CycleChartPDFPregnancyFactor(0);
  sub_29E2C34B4();
  sub_29DEAA194(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_29E2C4A24();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_29E2C4A24();
    sub_29E2C3254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_29E2C40E4();
}

uint64_t sub_29DF16310()
{
  sub_29E2C4A04();
  sub_29DF160F4(v1);
  return sub_29E2C4A54();
}

uint64_t sub_29DF16354(uint64_t a1)
{
  sub_29E2C4A04();
  sub_29DF160F4(v2);
  return sub_29E2C4A54();
}

uint64_t sub_29DF163DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_29E2BCBB4();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v42 - v7;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCF04();
  v42 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CycleChartPDFPregnancyFactor(0);
  v46 = *(v14 - 1);
  *&v15 = MEMORY[0x2A1C7C4A8](v14).n128_u64[0];
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 categoryType];
  sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
  v19 = [swift_getObjCClassFromMetadata() pregnancyType];
  v20 = v19;
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_6;
    }

LABEL_9:

LABEL_10:
    v28 = v47;
    v29 = *(v46 + 56);

    return v29(v28, 1, 1, v14);
  }

  if (!v19)
  {
    v20 = v18;
    goto LABEL_9;
  }

  v21 = sub_29E2C40D4();

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  *&v17[v14[7]] = a1;
  v22 = a1;
  v23 = [v22 startDate];
  sub_29E2BCB44();

  v24 = [v22 _timeZoneName];
  if (v24)
  {
    v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v27 = v26;
  }

  else
  {
    sub_29E2BCEF4();
    v25 = sub_29E2BCED4();
    v27 = v31;
    (*(v42 + 8))(v13, v11);
  }

  v32 = &v17[v14[5]];
  *v32 = v25;
  v32[1] = v27;
  v33 = [v22 endDate];
  sub_29E2BCB44();

  sub_29E2BCA84();
  LOBYTE(v33) = sub_29E2BCB24();
  v34 = v44;
  v35 = *(v44 + 8);
  v36 = v5;
  v37 = v45;
  v35(v36, v45);
  v35(v8, v37);
  if (v33)
  {
    v38 = [v22 endDate];

    v39 = v43;
    sub_29E2BCB44();
    v40 = 0;
    v22 = v38;
  }

  else
  {
    v40 = 1;
    v39 = v43;
  }

  (*(v34 + 56))(v39, v40, 1, v37);
  sub_29DF168CC(v39, &v17[v14[6]], sub_29DEB3B00);
  v41 = v47;
  sub_29DF168CC(v17, v47, type metadata accessor for CycleChartPDFPregnancyFactor);
  return (*(v46 + 56))(v41, 0, 1, v14);
}

uint64_t sub_29DF168CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF16934(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF16CB0(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29E2BCB34() & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = type metadata accessor for CycleChartPDFPregnancyFactor(0);
  v16 = *(v15 + 20);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_29E2C4914() & 1) == 0)
  {
    goto LABEL_13;
  }

  v28[1] = v15;
  v21 = *(v15 + 24);
  v22 = *(v12 + 48);
  sub_29DEAA194(a1 + v21, v14);
  sub_29DEAA194(a2 + v21, &v14[v22]);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_29DF16D14(v14, sub_29DEB3B00);
LABEL_16:
      sub_29DE9408C(0, &qword_2A1A619F0, 0x29EDC9738);
      v24 = sub_29E2C40D4();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  sub_29DEAA194(v14, v10);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_29DF16D14(v14, sub_29DF16CB0);
    goto LABEL_13;
  }

  (*(v5 + 32))(v7, &v14[v22], v4);
  sub_29DF16D74(&qword_2A181D9C0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v26 = sub_29E2C3304();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_29DF16D14(v14, sub_29DEB3B00);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

void sub_29DF16CB0(uint64_t a1)
{
  if (!qword_2A181DE90)
  {
    sub_29DEB3B00(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DE90);
    }
  }
}

uint64_t sub_29DF16D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF16D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF16DBC(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = *v1;
  v4 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v50 = &v40 - v7;
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C02D4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v48 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v47 = &v40 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v49 = &v40 - v18;
  v19 = sub_29E2C0514();
  v45 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v43 = v3;
    sub_29E2C04B4();
    v22 = sub_29E2C0504();
    v42 = sub_29E2C3A04();
    v44 = v22;
    if (os_log_type_enabled(v22, v42))
    {
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52[0] = v41;
      *v23 = 136315138;
      v24 = sub_29E2C4AE4();
      v26 = sub_29DFAA104(v24, v25, v52);
      v43 = v19;
      v27 = v26;

      *(v23 + 4) = v27;
      v28 = v44;
      v29 = v23;
      _os_log_impl(&dword_29DE74000, v44, v42, "[%s] Updating current day", v23, 0xCu);
      v30 = v41;
      sub_29DE93B3C(v41);
      MEMORY[0x29ED82140](v30, -1, -1);
      MEMORY[0x29ED82140](v29, -1, -1);

      (*(v45 + 8))(v21, v43);
    }

    else
    {

      (*(v45 + 8))(v21, v19);
    }
  }

  (*(v9 + 16))(v11, v46, v8);
  v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel;
  swift_beginAccess();
  v32 = *(v13 + 16);
  v33 = v47;
  v32(v47, &v2[v31], v12);
  v46 = sub_29E2C02A4();
  v34 = v2;
  v35 = v13;
  v36 = *(v13 + 8);
  v36(v33, v12);
  v37 = v48;
  v32(v48, &v34[v31], v12);
  sub_29E2C02B4();
  v36(v37, v12);
  sub_29E2BCBA4();
  v38 = v49;
  sub_29E2C0264();
  swift_beginAccess();
  (*(v35 + 40))(&v34[v31], v38, v12);
  return swift_endAccess();
}

uint64_t sub_29DF172A4()
{
  sub_29DEF6CC0(v0 + 16);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeTimelineItem_viewModel;
  v2 = sub_29E2C02D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyModeTimelineItem(uint64_t a1)
{
  result = qword_2A1818DC8;
  if (!qword_2A1818DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF173AC(uint64_t a1)
{
  result = sub_29E2C02D4();
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

uint64_t sub_29DF17454()
{
  type metadata accessor for PregnancyModeTimelineCell();
  sub_29DF175DC(&unk_2A181DE80, type metadata accessor for PregnancyModeTimelineCell, &unk_29E2E1154);
  return sub_29E2BE2B4();
}

uint64_t sub_29DF174BC()
{
  v1 = *(*v0 + 32);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF174F0(uint64_t a1)
{
  v2 = sub_29DF175DC(&qword_2A1818DD8, type metadata accessor for PregnancyModeTimelineItem, &unk_29E2D1B20);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DF175DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF17624(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[3];
    ObjectType = swift_getObjectType();
    v8[3] = v3;
    v8[4] = sub_29DF175DC(&qword_2A181DEA0, type metadata accessor for PregnancyModeTimelineItem, &unk_29E2D1AF0);
    v8[0] = v1;
    v7 = *(v5 + 8);

    v7(v8, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v8);
  }

  return result;
}

void *sub_29DF17728(uint64_t a1, char a2, uint64_t a3)
{
  v3[6] = MEMORY[0x29EDCA1A0];
  v3[8] = a3;

  sub_29E00251C();
  v7 = v6;
  v8 = type metadata accessor for InteractiveTimelineItem();
  v9 = swift_allocObject();
  type metadata accessor for InteractiveTimelineItemCell();
  sub_29DF18838(&qword_2A1818DF0, 255, type metadata accessor for InteractiveTimelineItemCell, &unk_29E2D397C);

  v9[3] = sub_29E2BE2B4();
  v9[4] = v10;
  v9[5] = 0xD000000000000017;
  v9[6] = 0x800000029E2F0C70;
  v11 = [objc_opt_self() weakObjectsHashTable];
  v9[7] = v7;
  v9[8] = v11;
  v9[2] = a1;
  v3[7] = v9;
  sub_29DEA7DD8(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
  sub_29E2BEBB4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CAB20;
  sub_29DEA7DD8(0, &unk_2A181B3C0, sub_29DEA7E2C);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  *(v13 + 56) = v8;
  *(v13 + 64) = sub_29DF18838(&qword_2A1818DF8, 255, type metadata accessor for InteractiveTimelineItem, &unk_29E2DFE78);
  *(v13 + 32) = v9;

  sub_29E2BEBA4();
  v15 = sub_29E0018F0(v12, (a2 & 1) == 0, v14);

  sub_29DF179F0();

  return v15;
}

double sub_29DF179F0()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_29DF18830;
  *(v4 + 24) = v3;
  sub_29DF1482C();
  sub_29DF18838(&qword_2A1818DA8, 255, sub_29DF1482C, MEMORY[0x29EDB8A58]);

  sub_29E2C1384();

  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return result;
}

double sub_29DF17B8C()
{

  return result;
}

uint64_t sub_29DF17BC4()
{

  return swift_deallocClassInstance();
}

double sub_29DF17CD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Received feature settings change notification", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 56);

    sub_29E00251C();
    *(v15 + 56) = v16;

    sub_29E107D68();
  }

  return result;
}

uint64_t sub_29DF17ED8(__n128 a1, uint64_t a2, char a3)
{
  v4 = sub_29E2C2B84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  *v7 = sub_29E2C3CF4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDCA278], v4);
  v8 = sub_29E2C2BA4();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return sub_29E001D60((a3 & 1) == 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF18010()
{
  type metadata accessor for InteractiveTimelineItemCell();
  sub_29DF18838(&qword_2A1818DF0, 255, type metadata accessor for InteractiveTimelineItemCell, &unk_29E2D397C);
  return sub_29E2C3B74();
}

id sub_29DF180CC(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v5 = v4;
  if (v3 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_29E2C4914();

  if (v8)
  {
LABEL_6:

LABEL_15:
    v19 = 0x406CC00000000000;
LABEL_16:
    v20 = *&v19;
    goto LABEL_17;
  }

  v9 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v11 = v10;
  if (v9 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v11 == v12)
  {
    goto LABEL_14;
  }

  v14 = sub_29E2C4914();

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v17 = v16;
  if (v15 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v17 == v18)
  {
    goto LABEL_14;
  }

  v31 = sub_29E2C4914();

  if (v31)
  {
    goto LABEL_6;
  }

  v32 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v34 = v33;
  if (v32 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v34 == v35)
  {
LABEL_14:

    goto LABEL_15;
  }

  v36 = sub_29E2C4914();

  if (v36)
  {
    goto LABEL_6;
  }

  v37 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v39 = v38;
  if (v37 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v39 == v40)
  {
    goto LABEL_24;
  }

  v41 = sub_29E2C4914();

  if (v41)
  {
LABEL_26:

    goto LABEL_27;
  }

  v42 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v44 = v43;
  if (v42 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v44 == v45)
  {
    goto LABEL_24;
  }

  v46 = sub_29E2C4914();

  if (v46)
  {
    goto LABEL_26;
  }

  v47 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v49 = v48;
  if (v47 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v49 == v50)
  {
LABEL_24:

LABEL_27:
    v19 = 0x4070400000000000;
    goto LABEL_16;
  }

  v51 = sub_29E2C4914();

  if (v51)
  {
    goto LABEL_26;
  }

  v52 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v54 = v53;
  if (v52 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v54 == v55)
  {
    goto LABEL_36;
  }

  v56 = sub_29E2C4914();

  if (v56)
  {
LABEL_38:

    goto LABEL_39;
  }

  v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v59 = v58;
  if (v57 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v59 == v60)
  {
    goto LABEL_36;
  }

  v61 = sub_29E2C4914();

  if (v61)
  {
    goto LABEL_38;
  }

  v62 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v64 = v63;
  if (v62 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v64 == v65)
  {
LABEL_36:

LABEL_39:
    v19 = 0x4073600000000000;
    goto LABEL_16;
  }

  v66 = sub_29E2C4914();

  if (v66)
  {
    goto LABEL_38;
  }

  v67 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v69 = v68;
  if (v67 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v69 == v70)
  {

LABEL_51:
    v19 = 0x4076800000000000;
    goto LABEL_16;
  }

  v71 = sub_29E2C4914();

  if (v71)
  {

    goto LABEL_51;
  }

  v72 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v74 = v73;
  if (v72 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v74 == v75)
  {

    v19 = 0x4078600000000000;
    goto LABEL_16;
  }

  v76 = sub_29E2C4914();

  if (v76)
  {
    v20 = 390.0;
  }

  else
  {
    v20 = 230.0;
  }

LABEL_17:
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension_];
  v23 = [v21 estimatedDimension_];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  v25 = objc_opt_self();
  sub_29DE99B54();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29E2CE220;
  *(v26 + 32) = [objc_opt_self() itemWithLayoutSize_];
  sub_29DE9408C(0, &qword_2A1818DE8, 0x29EDC0BA0);
  v27 = sub_29E2C3604();

  v28 = [v25 verticalGroupWithLayoutSize:v24 subitems:v27];

  v29 = [objc_opt_self() sectionWithGroup_];
  [v29 setContentInsetsReference_];

  return v29;
}

uint64_t sub_29DF18838(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A5F250;
  if (!qword_2A1A5F250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF188F4(uint64_t a1)
{
  result = sub_29E2BD624();
  if (v2 <= 0x3F)
  {
    result = sub_29E2BD594();
    if (v3 <= 0x3F)
    {
      result = sub_29DE9408C(319, &qword_2A1A5E110, 0x29EDBAA00);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MenstrualCyclesAnalysisChangeDetector(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for MenstrualCyclesOnboardingChangeDetector(319);
          if (v6 <= 0x3F)
          {
            result = sub_29E2BCEA4();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29DF18A80()
{
  if (!qword_2A1A5E670)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E670);
    }
  }
}

void sub_29DF18B28(uint64_t a1)
{
  if (!qword_2A1A5E440)
  {
    sub_29DF18BBC(255);
    sub_29DF1E46C(&qword_2A1A61E70, sub_29DF18BBC, MEMORY[0x29EDB8AB8]);
    v1 = sub_29E2C11C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E440);
    }
  }
}

uint64_t sub_29DF18C24(__n128 a1)
{
  sub_29DF1E12C(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0], a1);
  v53 = v2;
  v56 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v48 = v42 - v3;
  sub_29DEBAF74(0);
  v58 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E41C(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v42 - v9;
  sub_29DEBB070(0);
  v43 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174(0);
  v51 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v42[1] = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E1B0(0);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  MEMORY[0x2A1C7C4A8](v17);
  v46 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E2EC(0);
  v52 = v20;
  v55 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v44 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E380(0);
  v54 = v22;
  v57 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v45 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0);
  swift_beginAccess();
  sub_29DF1E41C(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  sub_29E2C1304();
  (*(v8 + 8))(v10, v7);
  sub_29DF1DD4C(0, &qword_2A1A5E270, &qword_2A1A61DC0, 0x29EDC3358, MEMORY[0x29EDC9C68]);
  sub_29DF1E46C(&qword_2A1A5E810, sub_29DEBB070, MEMORY[0x29EDB8968]);
  v25 = v43;
  sub_29E2C12A4();
  (*(v12 + 8))(v14, v25);
  swift_beginAccess();
  sub_29DF1E12C(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00], v26);
  v27 = v48;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  v28 = v53;
  sub_29E2C1284();
  (*(v56 + 8))(v27, v28);
  v29 = *(v1 + *(updated + 36));
  v30 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v32 = sub_29DEB233C(v30, v31, v29);

  v59 = v32;
  sub_29DEB53AC(0);
  v33 = MEMORY[0x29EDB8908];
  sub_29DF1E46C(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
  sub_29DF1E46C(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
  sub_29DF1E46C(&unk_2A1A5E600, sub_29DEB53AC, MEMORY[0x29EDB8A00]);
  v34 = v46;
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v35 = v44;
  v36 = v49;
  sub_29E2C0E64();
  (*(v50 + 8))(v34, v36);
  sub_29DF1E46C(&qword_2A1A5E898, sub_29DF1E2EC, MEMORY[0x29EDB8958]);
  v37 = v45;
  v38 = v52;
  sub_29E2C12A4();
  (*(v55 + 8))(v35, v38);
  sub_29DF1E46C(&qword_2A1A5EA48, sub_29DF1E380, v33);
  v39 = v54;
  v40 = sub_29E2C1274();
  (*(v57 + 8))(v37, v39);
  return v40;
}

id sub_29DF19488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return v2;
}

uint64_t sub_29DF194AC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD4C4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF19734(a1, v6, a3, a4 & 1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29DF1DF3C(v10, sub_29DF1D934);
    sub_29E2BD5A4();
    sub_29DE966D4(v22, v22[3]);
    v15 = sub_29E2BD4E4();
    v16 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

    sub_29DE93B3C(v22);
    [v16 setUnconfirmedDeviationSubmissionDay_];

    return MEMORY[0x29EDCA190];
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v14, v10, v11);
    sub_29DF1A2E4();
    sub_29DF1E0C8(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CAB20;
    v18((v20 + v19), v14, v11);
    return v20;
  }
}

void sub_29DF19734(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v81 = a3;
  v83 = a4;
  v86 = a5;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v80 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v80 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v80 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v80 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v80 - v24;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v80 - v27;
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    sub_29E2C04B4();
    v40 = sub_29E2C0504();
    v41 = sub_29E2C3A34();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v87[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, v87);
      _os_log_impl(&dword_29DE74000, v40, v41, "[%{public}s] Cycle Tracking not onboarded", v42, 0xCu);
      sub_29DE93B3C(v43);
      MEMORY[0x29ED82140](v43, -1, -1);
      MEMORY[0x29ED82140](v42, -1, -1);
    }

    (*(v85 + 8))(v10, v84);
    goto LABEL_38;
  }

  if (!a1)
  {
    sub_29E2C04B4();
    v44 = sub_29E2C0504();
    v45 = sub_29E2C3A14();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v87[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, v87);
      _os_log_impl(&dword_29DE74000, v44, v45, "[%{public}s] Not submitting deviations update tile due to nil analysis", v46, 0xCu);
      sub_29DE93B3C(v47);
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v46, -1, -1);
    }

    (*(v85 + 8))(v13, v84);
    goto LABEL_38;
  }

  v32 = a1;
  if ([v32 isPeriodLogLate])
  {
    sub_29E2C04B4();
    v33 = sub_29E2C0504();
    v34 = sub_29E2C3A34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v88 = v36;
      *v35 = 136446466;
      *(v35 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, &v88);
      *(v35 + 12) = 2080;
      strcpy(v87, "log being late");
      HIBYTE(v87[1]) = -18;
      v37 = sub_29E2C3464();
      v39 = sub_29DFAA104(v37, v38, &v88);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_29DE74000, v33, v34, "[%{public}s] Not submitting deviations update tile due to %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v36, -1, -1);
      MEMORY[0x29ED82140](v35, -1, -1);
    }

    (*(v85 + 8))(v16, v84);
LABEL_38:
    v79 = sub_29E2BD4C4();
    (*(*(v79 - 8) + 56))(v86, 1, 1, v79);
    return;
  }

  v48 = [v32 deviations];
  if (!v48)
  {
LABEL_35:
    sub_29E2C04B4();
    v72 = sub_29E2C0504();
    v73 = sub_29E2C3A34();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v88 = v75;
      *v74 = 136446466;
      *(v74 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, &v88);
      *(v74 + 12) = 2080;
      v87[0] = 0xD000000000000019;
      v87[1] = 0x800000029E2F0C90;
      v76 = sub_29E2C3464();
      v78 = sub_29DFAA104(v76, v77, &v88);

      *(v74 + 14) = v78;
      _os_log_impl(&dword_29DE74000, v72, v73, "[%{public}s] Not submitting deviation update: %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v75, -1, -1);
      MEMORY[0x29ED82140](v74, -1, -1);
    }

    (*(v85 + 8))(v19, v84);
    goto LABEL_38;
  }

  v49 = v48;
  sub_29DE9408C(0, &qword_2A1A5E118, 0x29EDC33F8);
  v50 = sub_29E2C3614();

  if (!(v50 >> 62))
  {
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  if (!sub_29E2C4484())
  {
LABEL_34:

    goto LABEL_35;
  }

LABEL_16:
  sub_29DEE752C(v50, v31);
  v51 = sub_29E2C31A4();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v31, 1, v51) == 1)
  {

    sub_29DF1DF3C(v31, sub_29DF13BD8);
LABEL_27:
    sub_29E2C04B4();
    v61 = sub_29E2C0504();
    v62 = sub_29E2C3A34();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v87[0] = v64;
      *v63 = 136446210;
      *(v63 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, v87);
      _os_log_impl(&dword_29DE74000, v61, v62, "[%{public}s] Not submitting deviation update: it has been dismissed from the room", v63, 0xCu);
      sub_29DE93B3C(v64);
      MEMORY[0x29ED82140](v64, -1, -1);
      MEMORY[0x29ED82140](v63, -1, -1);
    }

    (*(v85 + 8))(v22, v84);
    goto LABEL_38;
  }

  v80 = v32;
  v53 = v82;
  v54 = sub_29E2C3164();
  (*(v52 + 8))(v31, v51);
  if (v83)
  {
    v55 = v54 <= 0;
  }

  else
  {
    v55 = v54 <= v81;
  }

  if (v55)
  {

    v32 = v80;
    goto LABEL_27;
  }

  if ((sub_29DF1A9C8(v50) & 1) == 0)
  {
    sub_29E2C04B4();
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A34();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v88 = v68;
      *v67 = 136446466;
      *(v67 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, &v88);
      *(v67 + 12) = 2080;
      v87[0] = 0xD00000000000001DLL;
      v87[1] = 0x800000029E2F0CB0;
      v69 = sub_29E2C3464();
      v71 = sub_29DFAA104(v69, v70, &v88);

      *(v67 + 14) = v71;
      _os_log_impl(&dword_29DE74000, v65, v66, "[%{public}s] Not submitting deviation update: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v68, -1, -1);
      MEMORY[0x29ED82140](v67, -1, -1);
    }

    (*(v85 + 8))(v25, v84);
    sub_29DF1A580(1, v50);

    goto LABEL_38;
  }

  v56 = sub_29DF1ACC4(v53, 0xD000000000000018, 0x800000029E2F0CD0, v80);
  sub_29E2C04B4();
  v57 = sub_29E2C0504();
  v58 = sub_29E2C3A34();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v87[0] = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, v87);
    _os_log_impl(&dword_29DE74000, v57, v58, "[%{public}s] Submit deviation update tile", v59, 0xCu);
    sub_29DE93B3C(v60);
    MEMORY[0x29ED82140](v60, -1, -1);
    MEMORY[0x29ED82140](v59, -1, -1);
  }

  (*(v85 + 8))(v28, v84);
  sub_29DF1B900(v50);
  sub_29DF1B9F0(v50, v56 & 1, v86);
}

void sub_29DF1A2E4()
{
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCEA4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0;
  sub_29E2BD5A4();
  sub_29DE966D4(v17, v17[3]);
  v10 = sub_29E2BD4E4();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  sub_29DE93B3C(v17);
  v12 = [v11 unconfirmedDeviationSubmissionDay];
  if (v12)
  {
    v13 = v11;
    v11 = v12;
  }

  else
  {
    updated = type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0);
    (*(v3 + 16))(v5, v16 + *(updated + 40), v2);
    sub_29E2BCBA4();
    sub_29E2C3144();
    v15 = sub_29E2C3164();
    (*(v7 + 8))(v9, v6);
    v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    [v11 setUnconfirmedDeviationSubmissionDay_];
  }
}

void sub_29DF1A580(char a1, uint64_t a2)
{
  v3 = v2;
  updated = type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0);
  v26 = *(updated - 8);
  v7 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](updated - 8);
  sub_29DF1DF08(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v25 - v12;
  v14 = sub_29E2BE2A4();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_29DF1DEA0(v13, v10, sub_29DF1DF08);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_29DF1DF3C(v10, sub_29DF1DF08);
    v16 = 0;
  }

  else
  {
    v16 = sub_29E253904();
    (*(v15 + 8))(v10, v14);
  }

  type metadata accessor for CycleDeviationAnalyticsEvent();
  v17 = swift_allocObject();
  *(v17 + 16) = 0xD00000000000002BLL;
  *(v17 + 24) = 0x800000029E2EEF20;
  *(v17 + 40) = 7;
  sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
  *(v17 + 64) = sub_29E2C40B4();
  *(v17 + 72) = sub_29E2C40B4();
  *(v17 + 80) = sub_29E2C40B4();
  v18 = sub_29E2C40B4();
  sub_29DF1DF3C(v13, sub_29DF1DF08);
  *(v17 + 88) = v18;
  *(v17 + 32) = a1;
  v19 = *(v17 + 40);
  *(v17 + 40) = 7;
  sub_29DEE8B58(v19);
  *(v17 + 56) = v16;
  *(v17 + 48) = a2;
  *(v17 + 57) = 0;
  sub_29E2BF404();
  sub_29E2BD5A4();
  sub_29DE966D4(aBlock, v28);
  v20 = sub_29E2BD4E4();
  v21 = [objc_allocWithZone(MEMORY[0x29EDBAB40]) initWithHealthStore_];

  sub_29DE93B3C(aBlock);
  sub_29DF1DEA0(v3, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline);
  v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v23 = swift_allocObject();
  sub_29DF1DF9C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline);
  *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v29 = sub_29DF1E004;
  v30 = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DEE7478;
  v28 = &unk_2A24B3E38;
  v24 = _Block_copy(aBlock);

  [v21 numberOfDeviceContextsPerDeviceType_];
  _Block_release(v24);
}

uint64_t sub_29DF1A9C8(unint64_t a1)
{
  v23 = a1;
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v22 - v15;
  updated = type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0);
  (*(v7 + 16))(v9, v1 + *(updated + 40), v6);
  sub_29E2BCBA4();
  sub_29E2C3144();
  v18 = sub_29DEE752C(v23, v4);
  if ((*(v11 + 48))(v4, 1, v10, v18) == 1)
  {
    (*(v11 + 8))(v16, v10);
    sub_29DF1DF3C(v4, sub_29DF13BD8);
  }

  else
  {
    (*(v11 + 32))(v13, v4, v10);
    v19 = sub_29E2C3184();
    v20 = *(v11 + 8);
    v20(v13, v10);
    v20(v16, v10);
    if (v19 < 90)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29DF1ACC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v95 = a4;
  sub_29DF1DDB4(0);
  v89 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1DE18(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v93 = &v80 - v11;
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v91 = &v80 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v92 = &v80 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v80 - v19;
  v21 = sub_29E2C31A4();
  v96 = *(v21 - 8);
  v97 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v83 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v94 = &v80 - v24;
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BD4C4();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v98 = &v80 - v33;
  MEMORY[0x2A1C7C4A8](v34);
  v36 = &v80 - v35;
  sub_29E2BD5A4();
  sub_29DE966D4(v99, v99[3]);
  sub_29E2BD514();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_29DF1DF3C(v27, sub_29DF1D934);
    sub_29DE93B3C(v99);
    v37 = MEMORY[0x29EDCA190];
  }

  else
  {
    v38 = *(v29 + 32);
    v38(v36, v27, v28);
    sub_29DE93B3C(v99);
    sub_29DF1E0C8(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v39 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_29E2CAB20;
    v38((v37 + v39), v36, v28);
  }

  v40 = v98;
  if (!*(v37 + 16))
  {

    goto LABEL_29;
  }

  (*(v29 + 16))(v31, v37 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v28);

  (*(v29 + 32))(v40, v31, v28);
  v41 = sub_29E2BD414();
  if (v42 >> 60 == 15)
  {
    (*(v29 + 8))(v40, v28);
LABEL_29:
    v78 = 0;
    return v78 & 1;
  }

  v43 = v41;
  v44 = v42;
  v45 = [v95 deviations];
  if (!v45)
  {
    (*(v29 + 8))(v40, v28);
    sub_29DF1DD38(v43, v44);
    goto LABEL_29;
  }

  v46 = v45;
  v95 = v43;
  sub_29DE9408C(0, &qword_2A1A5E118, 0x29EDC33F8);
  v47 = sub_29E2C3614();

  sub_29DEE752C(v47, v20);

  v49 = v96;
  v48 = v97;
  v50 = *(v96 + 48);
  if (v50(v20, 1, v97) == 1)
  {
    (*(v29 + 8))(v40, v28);
    sub_29DF1DD38(v95, v44);
    sub_29DF1DF3C(v20, sub_29DF13BD8);
    goto LABEL_29;
  }

  v51 = *(v49 + 32);
  v82 = v49 + 32;
  v81 = v51;
  v51(v94, v20, v48);
  sub_29E2BC2B4();
  swift_allocObject();
  v52 = v95;
  sub_29DF1DE4C(v95, v44);
  sub_29E2BC2A4();
  sub_29DF1E46C(&qword_2A1818E28, type metadata accessor for MenstrualCyclesDeviationUserData, &unk_29E2DD2EC);
  v53 = v85;
  v54 = v87;
  sub_29E2BC294();

  sub_29DF1DD38(v52, v44);
  v55 = v93;
  sub_29DF1DF9C(v53, v93, type metadata accessor for MenstrualCyclesDeviationUserData);
  v56 = v90;
  v57 = v88;
  v58 = v86;
  (*(v86 + 56))(v55, 0, 1, v54, v59);
  sub_29DF1DEA0(v55, v57, sub_29DF1DE18);
  if ((*(v58 + 48))(v57, 1, v54) == 1)
  {
    sub_29DF1DF3C(v57, sub_29DF1DE18);
    v61 = v96;
    v60 = v97;
    v62 = v92;
    (*(v96 + 56))(v92, 1, 1, v97);
  }

  else
  {
    sub_29DF1DD4C(0, &qword_2A1818E30, &qword_2A1A5E118, 0x29EDC33F8, MEMORY[0x29EDBA1F8]);
    v63 = sub_29E2C2EE4();
    sub_29DF1DF3C(v57, type metadata accessor for MenstrualCyclesDeviationUserData);
    v62 = v92;
    sub_29DEE752C(v63, v92);

    v61 = v96;
    v60 = v97;
  }

  v64 = v91;
  (*(v61 + 16))(v91, v94, v60);
  (*(v61 + 56))(v64, 0, 1, v60);
  v65 = *(v89 + 48);
  sub_29DF1DEA0(v62, v56, sub_29DF13BD8);
  v66 = v97;
  sub_29DF1DEA0(v64, v56 + v65, sub_29DF13BD8);
  if (v50(v56, 1, v66) == 1)
  {
    v67 = v66;
    sub_29DF1DF3C(v64, sub_29DF13BD8);
    v68 = v50((v56 + v65), 1, v66);
    if (v68 == 1)
    {
      v69 = sub_29DF13BD8;
    }

    else
    {
      v69 = sub_29DF1DDB4;
    }

    if (v68 == 1)
    {
      v70 = -1;
    }

    else
    {
      v70 = 0;
    }

    v71 = v92;
    v72 = v96;
    v73 = v98;
  }

  else
  {
    v74 = v84;
    sub_29DF1DEA0(v56, v84, sub_29DF13BD8);
    v75 = v50((v56 + v65), 1, v66);
    v73 = v98;
    if (v75 == 1)
    {
      sub_29DF1DF3C(v91, sub_29DF13BD8);
      v72 = v96;
      (*(v96 + 8))(v74, v66);
      v67 = v66;
      v70 = 0;
      v69 = sub_29DF1DDB4;
    }

    else
    {
      v76 = v83;
      v81(v83, v56 + v65, v66);
      sub_29DF1E46C(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
      v67 = v66;
      LODWORD(v89) = sub_29E2C3304();
      v72 = v96;
      v77 = *(v96 + 8);
      v77(v76, v67);
      sub_29DF1DF3C(v91, sub_29DF13BD8);
      v77(v84, v67);
      v70 = v89;
      v56 = v90;
      v69 = sub_29DF13BD8;
    }

    v71 = v92;
  }

  sub_29DF1DF3C(v56, v69);
  v78 = sub_29E2BD334();
  sub_29DF1DD38(v95, v44);
  sub_29DF1DF3C(v71, sub_29DF13BD8);
  sub_29DF1DF3C(v93, sub_29DF1DE18);
  (*(v72 + 8))(v94, v67);
  (*(v29 + 8))(v73, v28);
  if (v78 == 2 || (v70 & 1) == 0)
  {
    goto LABEL_29;
  }

  return v78 & 1;
}

void sub_29DF1B900(uint64_t a1)
{
  sub_29E2BD5A4();
  sub_29DE966D4(v6, v6[3]);
  v2 = sub_29E2BD4E4();
  v3 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  sub_29DE93B3C(v6);
  sub_29DE9408C(0, &qword_2A1A5E118, 0x29EDC33F8);
  v4 = sub_29E2C3604();
  v5 = [v3 setDeviationDetectedIfNeededForDeviations_];

  if (v5)
  {
    sub_29DF1A580(0, a1);
  }
}

uint64_t sub_29DF1B9F0@<X0>(unint64_t a1@<X0>, int a2@<W2>, char *a3@<X8>)
{
  v96 = a2;
  v123 = a3;
  v99 = sub_29E2C0514();
  v98 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29DF1E0C8(0, &qword_2A1A62688, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v94 = &v83 - v7;
  v93 = sub_29E2BD6E4();
  v91 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E2BD794();
  v90 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v88 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29E2BE194();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v85 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD2E4();
  v119 = *(v11 - 8);
  v120 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v117 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_29E2BD234();
  v118 = *(v126 - 1);
  MEMORY[0x2A1C7C4A8](v126);
  v116 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v112 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E0C8(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], v5);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v111 = &v83 - v17;
  v109 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v109);
  v108 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E0C8(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v5);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v107 = &v83 - v20;
  sub_29DF1E0C8(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v5);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v83 - v22;
  v24 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v25 = sub_29E2C3384();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v83 - v30;
  v115 = sub_29E2BE8C4();
  v113 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v125 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v33 - 8);
  v114 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E2BD4C4();
  v121 = *(v35 - 8);
  v122 = v35;
  MEMORY[0x2A1C7C4A8](v35);
  v84 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  MEMORY[0x2A1C7C4A8](v110);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A5E118, 0x29EDC33F8);
  sub_29E2BF404();
  v127 = v38;
  v95 = a1;
  sub_29E2C2F04();
  sub_29E2C3314();
  v39 = v25;
  *&v106 = *(v26 + 16);
  (v106)(v28, v31, v25);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v40 = qword_2A1A67F80;
  v41 = qword_2A1A67F80;
  v104 = v40;
  v42 = v41;
  sub_29E2BCC74();
  v105 = v42;
  v124 = "MINDER_CANCEL_PROMPT";
  v102 = sub_29E2C3414();
  v101 = v43;
  v44 = *(v26 + 8);
  v100 = v26 + 8;
  v103 = v44;
  v44(v31, v39);
  v45 = sub_29E2BE974();
  (*(*(v45 - 8) + 56))(v23, 1, 1, v45);
  v46 = sub_29E2BDE24();
  (*(*(v46 - 8) + 56))(v107, 1, 1, v46);
  v128 = MEMORY[0x29EDCA190];
  sub_29DF1E46C(&unk_2A181A7D0, MEMORY[0x29EDC2550], MEMORY[0x29EDC2558]);
  sub_29DF1DC70(0);
  sub_29DF1E46C(&qword_2A181A7E0, sub_29DF1DC70, MEMORY[0x29EDC9A70]);
  sub_29E2C43F4();
  sub_29E2BEF64();
  swift_allocObject();
  v109 = sub_29E2BEF54();
  sub_29E2C3314();
  v47 = v106;
  (v106)(v28, v31, v39);
  sub_29E2BCC74();
  v108 = sub_29E2C3414();
  v107 = v48;
  v49 = v103;
  v103(v31, v39);
  sub_29E2C3314();
  v47(v28, v31, v39);
  sub_29E2BCC74();
  v102 = sub_29E2C3414();
  v101 = v50;
  v49(v31, v39);
  sub_29E2C3314();
  v47(v28, v31, v39);
  sub_29E2BCC74();
  sub_29E2C3414();
  v49(v31, v39);
  v51 = v111;
  sub_29E2BDE34();
  v52 = sub_29E2BDE44();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  sub_29E2BE894();
  sub_29DF1E0C8(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v53 = sub_29E2BE2A4();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  v106 = xmmword_29E2CAB20;
  *(v56 + 16) = xmmword_29E2CAB20;
  (*(v54 + 104))(v56 + v55, *MEMORY[0x29EDC1D60], v53);
  sub_29E2BE884();
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  sub_29DF1E46C(&qword_2A1818E00, type metadata accessor for MenstrualCyclesDeviationUserData, &unk_29E2DD2C4);
  v57 = sub_29E2BC2C4();
  v124 = v58;

  v59 = v119;
  v60 = v120;
  v61 = v126;
  v112 = v57;
  v62 = v118;
  sub_29DF1DCA4(0);
  v63 = v116;
  (*(v62 + 104))(v116, *MEMORY[0x29EDC3758], v61);
  v64 = sub_29E2BD274();
  v65 = v117;
  (*(v59 + 104))(v117, *MEMORY[0x29EDC1B28], v60);
  sub_29DF1E46C(&qword_2A1818E18, sub_29DF1DCA4, MEMORY[0x29EDC2120]);
  v66 = v114;
  v67 = v125;
  v68 = v112;
  sub_29E2BD2D4();

  v69 = sub_29DF1DD38(v68, v124);
  (*(v59 + 8))(v65, v60, v69);
  (*(v62 + 8))(v63, v126);
  (*(v113 + 8))(v67, v115);
  v70 = v121;
  v71 = v122;
  v126 = *(v121 + 56);
  (v126)(v66, 0, 1, v122);
  v72 = *(v70 + 32);
  v73 = v84;
  v72(v84, v66, v71);
  sub_29DF1E41C(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = v106;
  *(inited + 32) = sub_29E2BD664();
  *(inited + 40) = v75;
  v76 = sub_29E2BD494();
  sub_29DECE164(inited);
  swift_setDeallocating();
  sub_29DECE1D4(inited + 32);
  v76(&v128, 0);
  v77 = v85;
  sub_29E110B7C(v85);
  v78 = sub_29E2BE184();
  (*(v86 + 8))(v77, v87);
  sub_29E14ED1C(v78);

  sub_29E2BD3A4();
  (*(v91 + 104))(v89, *MEMORY[0x29EDC3908], v93);
  v79 = v88;
  sub_29E2BD7A4();
  v80 = v92;
  sub_29E2BD314();
  (*(v90 + 8))(v79, v80);
  sub_29DF1CF54(v95, v94);
  sub_29E2BD404();
  sub_29E2BD344();
  sub_29DF1DF3C(v127, type metadata accessor for MenstrualCyclesDeviationUserData);
  v81 = v123;
  v72(v123, v73, v71);
  return (v126)(v81, 0, 1, v71);
}

uint64_t sub_29DF1CF54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1E0C8(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v54 = &v49 - v7;
  sub_29DEC6594(0);
  v53 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v49 - v12;
  sub_29DEFCC2C(0);
  v52 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2C31A4();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v23);
  v25 = (&v49 - v24);
  v26 = sub_29DEE752C(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19, v26) == 1)
  {
    sub_29DF1DF3C(v18, sub_29DF13BD8);
    v27 = v55;
    sub_29E2C04B4();
    sub_29E2BF404();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A14();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61 = v31;
      *v30 = 136446722;
      *(v30 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, &v61);
      *(v30 + 12) = 2080;
      v59 = 0xD00000000000003FLL;
      v60 = 0x800000029E2F0DD0;
      v32 = sub_29E2C3464();
      v34 = sub_29DFAA104(v32, v33, &v61);

      *(v30 + 14) = v34;
      *(v30 + 22) = 2080;
      v59 = a1;
      sub_29DF1DD4C(0, &qword_2A18187B8, &qword_2A1A5E118, 0x29EDC33F8, MEMORY[0x29EDC9A40]);
      sub_29E2BF404();
      v35 = sub_29E2C3464();
      v37 = sub_29DFAA104(v35, v36, &v61);

      *(v30 + 24) = v37;
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] %s %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    v57[1](v27, v56);
    v38 = sub_29E2BD824();
    return (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  }

  else
  {
    v40 = *(v20 + 32);
    v40(v25, v18, v19);
    sub_29E2C3174();
    sub_29DF1E46C(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    result = sub_29E2C32B4();
    if (result)
    {
      v41 = *(v20 + 16);
      v41(v13, v25, v19);
      v57 = v25;
      v42 = v51;
      v43 = v22;
      v50 = v22;
      v44 = v53;
      v41(&v13[*(v53 + 48)], v43, v19);
      sub_29DF1DEA0(v13, v10, sub_29DEC6594);
      v45 = *(v44 + 48);
      v40(v42, v10, v19);
      v46 = *(v20 + 8);
      v46(&v10[v45], v19);
      sub_29DF1DF9C(v13, v10, sub_29DEC6594);
      v40((v42 + *(v52 + 36)), &v10[*(v44 + 48)], v19);
      v46(v10, v19);
      type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0);
      v47 = v54;
      sub_29E2C32D4();
      v48 = sub_29E2BC3A4();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      sub_29E2BD814();
      sub_29DF1DF3C(v42, sub_29DEFCC2C);
      v46(v50, v19);
      return (v46)(v57, v19);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29DF1D6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BD624();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29DF1D760@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_29DF18C24(a2);
  *a1 = result;
  return result;
}

uint64_t sub_29DF1D788(uint64_t a1, uint64_t a2)
{
  v4 = sub_29DF1E46C(&qword_2A1A5F268, type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline, &unk_29E2D1CE4);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29DF1D854(uint64_t a1)
{
  v2 = sub_29DF1E46C(&qword_2A1A5F270, type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline, &unk_29E2D1C7C);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29DF1D8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_29DF1D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + *(type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0) + 24));
  v7[4] = sub_29DF1DA30;
  v7[5] = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = sub_29DFE9648;
  v7[3] = &unk_2A24B3E60;
  v6 = _Block_copy(v7);
  [v5 submitEvent:a4 completion:v6];
  _Block_release(v6);
}

void sub_29DF1DA30(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04E4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2D1C30, &v18);
      *(v11 + 12) = 2082;
      v17 = a2;
      v13 = a2;
      sub_29DF1E0C8(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v14 = sub_29E2C3434();
      v16 = sub_29DFAA104(v14, v15, &v18);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_29DF1DCA4(uint64_t a1)
{
  if (!qword_2A1818E08)
  {
    type metadata accessor for CycleDeviationsTileActionHandler(255);
    sub_29DF1E46C(&qword_2A1818E10, type metadata accessor for CycleDeviationsTileActionHandler, &unk_29E2D64D0);
    v1 = sub_29E2BE994();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1818E08);
    }
  }
}

double sub_29DF1DD38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29DEB5BF8(a1, a2);
  }

  return result;
}

void sub_29DF1DD4C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DE9408C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29DF1DDB4(uint64_t a1)
{
  if (!qword_2A1818E20)
  {
    sub_29DF13BD8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818E20);
    }
  }
}

uint64_t sub_29DF1DE4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29DF1DEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF1DF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF1DF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29DF1E004(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29DF1D968(a1, a2, v2 + v6, v7);
}

uint64_t sub_29DF1E0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF1E0C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF1E12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_29DF1E41C(255, &qword_2A1A5E2F8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DF1E1B0(uint64_t a1)
{
  if (!qword_2A1A5EC00)
  {
    sub_29DEBB174(255);
    sub_29DEBAF74(255);
    sub_29DEB53AC(255);
    sub_29DF1E46C(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
    sub_29DF1E46C(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
    sub_29DF1E46C(&unk_2A1A5E600, sub_29DEB53AC, MEMORY[0x29EDB8A00]);
    v1 = sub_29E2C0E74();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EC00);
    }
  }
}

void sub_29DF1E2EC(uint64_t a1)
{
  if (!qword_2A1A5E890)
  {
    sub_29DF1E1B0(255);
    sub_29DF1E46C(&qword_2A1A5EC08, sub_29DF1E1B0, MEMORY[0x29EDB8878]);
    v1 = sub_29E2C0F64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E890);
    }
  }
}

void sub_29DF1E380(uint64_t a1)
{
  if (!qword_2A1A5EA40)
  {
    sub_29DF1E2EC(255);
    sub_29DF1E46C(&qword_2A1A5E898, sub_29DF1E2EC, MEMORY[0x29EDB8958]);
    v1 = sub_29E2C0F24();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EA40);
    }
  }
}

void sub_29DF1E41C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29DF1E46C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_29DF1E4B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29DF1E4C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29DF1E524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_29DF1E6F0()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label];
  [v2 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 contentView];
  [v4 setPreservesSuperviewLayoutMargins_];

  [v3 setNumberOfLines_];
  v24 = objc_opt_self();
  sub_29DE99B54();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CE070;
  v6 = [v3 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 leadingAnchor];
  v10 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v10;
  v11 = [v3 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:10.0];
  *(v5 + 40) = v14;
  v15 = [v1 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v3 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  *(v5 + 48) = v18;
  v19 = [v1 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v3 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v5 + 56) = v23;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v25 = sub_29E2C3604();

  [v24 activateConstraints_];
}

id sub_29DF1EA70(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29DF1EADC(uint64_t a1)
{
  v2 = v1;
  sub_29DF22C40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + 16);
  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
  v9 = *(v8 + 16);
  if (v9 < v7)
  {
    if (v9 > v7 >> 3)
    {
      sub_29E2BF404();
      sub_29E2BF404();
      v10 = sub_29DF20EE0(v8, a1);

      if (*(v10 + 16))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v18 = a1;
    sub_29E2BF404();
    sub_29E2BF404();
    sub_29E06F48C(v8);

LABEL_12:
    v10 = v18;
    if (*(v18 + 16))
    {
      goto LABEL_13;
    }

LABEL_7:

    return;
  }

  if (v7 <= v9 >> 3)
  {
    v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
    sub_29E2BF404();
    sub_29E06F48C(a1);
    goto LABEL_12;
  }

  sub_29E2BF404();
  v10 = sub_29DF20EE0(a1, v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

LABEL_13:
  v11 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
  sub_29DF465C0(v10, v6);
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {

    v14 = sub_29E2BCF24();
    (*(v13 + 8))(v6, v12);
    v15 = [v11 cellForRowAtIndexPath_];

    if (v15)
    {
      type metadata accessor for DataTypeLoggingCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        *(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = v9 >= v7;
        v15 = v15;
        sub_29E02D998();
      }
    }
  }
}

double sub_29DF1EDA8()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  type metadata accessor for DataTypeLoggingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_29E2C33A4();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setDelegate_];
  [v2 setDataSource_];
  v5 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource];
  if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v5 + 1), ObjectType = swift_getObjectType(), (*(v6 + 48))(v1, ObjectType, v6), v9 = v8, swift_unknownObjectRelease(), !v9))
  {
    v23 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
    [v2 setTableHeaderView_];

    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(type metadata accessor for HeaderView()) initWithReuseIdentifier_];
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader;
  v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = v10;

  v13 = *&v1[v11];
  if (!v13)
  {

    v16 = *&v1[v11];
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label);
  v15 = sub_29E2C33A4();

  [v14 setText_];

  v16 = *&v1[v11];
  if (v16)
  {
LABEL_5:
    v17 = *(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label);
    v18 = objc_opt_self();
    v19 = *MEMORY[0x29EDC80E0];
    v20 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 40];
    v21 = v17;
    v22 = [v18 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v21 setFont_];
  }

LABEL_6:
  sub_29DF1F0F4();
LABEL_8:
  [v2 setAllowsMultipleSelection_];
  sub_29DF22C40(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CAB20;
  v25 = sub_29E2C0B54();
  v26 = MEMORY[0x29EDC7870];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  MEMORY[0x29ED80420](v24, sel_respondToSizeCategoryChanges);
  swift_unknownObjectRelease();

  return result;
}

void sub_29DF1F0F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
    v3 = v1;
    [v2 setTableHeaderView_];
    v10 = v3;
    [v2 layoutMargins];
    [v10 setLayoutMargins_];
    v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
    [v2 layoutMargins];
    v6 = v4 - v5;
    [v2 layoutMargins];
    v8 = v6 - v7;
    LODWORD(v9) = 1148846080;
    LODWORD(v7) = 1112014848;
    [v10 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:*(MEMORY[0x29EDC81E0] + 8) verticalFittingPriority:{v9, v7}];
    [v10 frame];
    [v10 setFrame_];
    [v2 setTableHeaderView_];
  }
}

void *sub_29DF1F330(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2C33A4();
  v7 = sub_29E2BCF24();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  type metadata accessor for DataTypeLoggingCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 32))(v3, a2, ObjectType, v12);
      v15 = v14;
      v52 = v16;
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v52 = 0;
      v18 = 0;
    }

    v21 = v8;
    v22 = [v10 textLabel];
    if (v22)
    {
      v23 = v22;
      if (v15)
      {
        sub_29E2BF404();
        v24 = sub_29E2C33A4();
      }

      else
      {
        v24 = 0;
      }

      [v23 setText_];
    }

    *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection) = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_editableDaySummarySection);
    v25 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
    v26 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
    v62[4] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
    v62[5] = v26;
    v63 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
    v27 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
    v62[0] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
    v62[1] = v27;
    v28 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
    v62[2] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
    v62[3] = v28;
    v60 = &type metadata for LoggingCardCarouselConfiguration;
    v61 = &off_2A24BA1A8;
    v29 = swift_allocObject();
    v58 = v29;
    v30 = *(v25 + 80);
    *(v29 + 80) = *(v25 + 64);
    *(v29 + 96) = v30;
    *(v29 + 112) = *(v25 + 96);
    v31 = *(v25 + 16);
    *(v29 + 16) = *v25;
    *(v29 + 32) = v31;
    v32 = *(v25 + 48);
    *(v29 + 48) = *(v25 + 32);
    *(v29 + 64) = v32;
    sub_29DE9DC34(&v58, &v56);
    v33 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
    swift_beginAccess();
    sub_29DE9DC98(v62, v53);
    sub_29DE9DC98(v62, v53);
    sub_29DE9DCF4(&v56, v10 + v33);
    v34 = swift_endAccess();
    (*((*MEMORY[0x29EDCA1E8] & *v10) + 0x118))(v34);
    sub_29DE9DE14(v62);
    sub_29DE93B3C(&v58);
    v35 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
    sub_29E2BF404();
    v36 = sub_29E092098(a2, v35);

    *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = v36 & 1;
    sub_29E02D998();
    *&v53[0] = sub_29E1035F0(*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_displayType));
    *(&v53[0] + 1) = v37;
    v58 = 32;
    v59 = 0xE100000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    v38 = sub_29DE9DE68();
    v39 = MEMORY[0x29EDC99B0];
    v50 = v38;
    v51 = v38;
    v48 = MEMORY[0x29EDC99B0];
    v49 = v38;
    v40 = sub_29E2C4374();
    v42 = v41;

    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v53[0] = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x6E45646F69726550, 0xEC0000002E797274);
    MEMORY[0x29ED7FCC0](v40, v42);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v43 = 0xE000000000000000;
    if (v15)
    {

      v58 = v52;
      v59 = v18;
      v56 = 32;
      v57 = 0xE100000000000000;
      v54 = 0;
      v55 = 0xE000000000000000;
      v50 = v38;
      v51 = v38;
      v48 = v39;
      v49 = v38;
      v44 = sub_29E2C4374();
      v43 = v45;
    }

    else
    {
      v44 = 0;
    }

    MEMORY[0x29ED7FCC0](v44, v43);

    v46 = v21;
    v47 = sub_29E2C33A4();

    [v10 setAccessibilityIdentifier_];

    return v10;
  }

  else
  {

    v19 = objc_allocWithZone(MEMORY[0x29EDC7D10]);

    return [v19 init];
  }
}

uint64_t sub_29DF1FAE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v51 - v10;
  sub_29DF22C40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_29E2BCF24();
  [a1 deselectRowAtIndexPath:v15 animated:1];

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths;
  v17 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
  sub_29E2BF404();
  v18 = sub_29E092098(a2, v17);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    if (!Strong)
    {
LABEL_8:
      v57 = *(v3 + v16);
      sub_29E2BF404();
      sub_29E061BC8(a2, v14);
      sub_29DF2192C(v14);
      goto LABEL_23;
    }

    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v22 = v21;
    result = sub_29E2BCFA4();
    if (!__OFADD__(result, 1))
    {
      if (((*(v22 + 24))(v3, result + 1, ObjectType, v22) & 1) != 0 && !sub_29E2BCF64())
      {
        v48 = *(v3 + v16);
        MEMORY[0x2A1C7C4A8](0);
        *(&v51 - 2) = a2;
        sub_29E2BF404();
        v49 = sub_29DF2254C(sub_29DF22CB4, (&v51 - 4), v48);
        v57 = *(v3 + v16);
        sub_29E2BF404();
        sub_29E06F48C(v49);

        v50 = *(v3 + v16);
        *(v3 + v16) = v57;
        sub_29DF1EADC(v50);
        swift_unknownObjectRelease();

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (Strong)
  {
    v24 = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = v25;
    v27 = sub_29E2BCFA4();
    v52 = *(v26 + 16);
    v53 = v26 + 16;
    v28 = v52(v3, v27, v24, v26);
    v54 = v24;
    if (v28)
    {
      v51 = &v51;
      v29 = *(v3 + v16);
      MEMORY[0x2A1C7C4A8](v28);
      *(&v51 - 2) = a2;
      sub_29E2BF404();
      v30 = sub_29DF2254C(sub_29DF228E4, (&v51 - 4), v29);
      v31 = *(v3 + v16);
      *(v3 + v16) = v30;
      sub_29DF1EADC(v31);

      result = sub_29E2BCFA4();
      if (__OFADD__(result, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v24 = v54;
      if ((*(v26 + 24))(v3, result + 1, v54, v26))
      {
        v32 = sub_29E2BCF64();
        if (v32)
        {
          v51 = &v51;
          v33 = *(v3 + v16);
          MEMORY[0x2A1C7C4A8](v32);
          *(&v51 - 2) = a2;
          sub_29E2BF404();
          v34 = sub_29DF2254C(sub_29DF22930, (&v51 - 4), v33);
          v57 = *(v3 + v16);
          sub_29E2BF404();
          sub_29E06F48C(v34);

          v35 = *(v3 + v16);
          *(v3 + v16) = v57;
          sub_29DF1EADC(v35);
          v24 = v54;
        }
      }
    }

    v36 = sub_29E2BCFA4();
    if (((*(v26 + 24))(v3, v36, v24, v26) & 1) == 0)
    {
      goto LABEL_21;
    }

    result = sub_29E2BCFA4();
    if (__OFSUB__(result, 1))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    MEMORY[0x29ED79720](0, result - 1);
    v57 = *(v3 + v16);
    sub_29E2BF404();
    sub_29E1467F4(v11, v8);
    (*(v55 + 8))(v11, v56);
    v37 = *(v3 + v16);
    *(v3 + v16) = v57;
    sub_29DF1EADC(v37);

    result = sub_29E2BCFA4();
    if (__OFSUB__(result, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v38 = v52(v3, result - 1, v54, v26);
    if (v38)
    {
      v39 = *(v3 + v16);
      MEMORY[0x2A1C7C4A8](v38);
      *(&v51 - 2) = a2;
      sub_29E2BF404();
      v40 = sub_29DF2254C(sub_29DF2252C, (&v51 - 4), v39);
      v57 = *(v3 + v16);
      sub_29E2BF404();
      sub_29E06F48C(v40);

      v41 = *(v3 + v16);
      *(v3 + v16) = v57;
      sub_29DF1EADC(v41);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_21:
      swift_unknownObjectRelease();
    }
  }

  v43 = v55;
  v42 = v56;
  (*(v55 + 16))(v8, a2, v56);
  v57 = *(v3 + v16);
  sub_29E2BF404();
  sub_29E1467F4(v11, v8);
  (*(v43 + 8))(v11, v42);
LABEL_23:
  v44 = *(v3 + v16);
  *(v3 + v16) = v57;
  sub_29DF1EADC(v44);

  v45 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    (*(v46 + 40))(v3, v47, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}