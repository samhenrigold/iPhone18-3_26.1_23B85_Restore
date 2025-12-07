id sub_29E6F5E88(id result)
{
  if (result)
  {
    return [result restoreUserActivityState_];
  }

  return result;
}

uint64_t sub_29E6F5EBC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E6F5D58(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6F5F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6F5D58(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E6F5F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6F5FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29E6F5DBC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E6F6090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6F6128(uint64_t a1)
{
  type metadata accessor for SleepApneaEventSummaryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_29E6F6090(319, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      sub_29E6F6090(319, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E6F6240(uint64_t a1)
{
  sub_29E6F7B18(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v13[-2] = a1;
  sub_29E753388();
  sub_29E6FE8A4(0, &qword_2A1859E78, sub_29E6F7BA0, MEMORY[0x29EDBC498]);
  sub_29E6F7D58();
  v8 = sub_29E752A08();
  MEMORY[0x2A1C7C4A8](v8);
  v13[-2] = a1;
  sub_29E6F7E2C(0);
  sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18, MEMORY[0x29EDBBEA8]);
  sub_29E6F7EE0(255);
  v10 = v9;
  v11 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_29E753898();
  (*(v4 + 8))(v6, v3);
}

double sub_29E6F6520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_29E752FE8();
  *(a2 + 8) = 0x403A000000000000;
  *(a2 + 16) = 0;
  sub_29E6FE7D8(0, &qword_2A1859EF0, sub_29E6F7C34);
  sub_29E6F6654(a1, (a2 + *(v4 + 44)));
  v5 = sub_29E7533A8();

  sub_29E6FE8A4(0, &qword_2A1859E78, sub_29E6F7BA0, MEMORY[0x29EDBC498]);
  v7 = a2 + *(v6 + 36);
  *v7 = v5;
  *(v7 + 8) = xmmword_29E76B2C0;
  result = 34.0;
  *(v7 + 24) = xmmword_29E76B2D0;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_29E6F6654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v34 = type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid(0);
  MEMORY[0x2A1C7C4A8](v34);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A1859EF8, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid, MEMORY[0x29EDBC7E8]);
  v31 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v28 - v5;
  v33 = type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid(0);
  MEMORY[0x2A1C7C4A8](v33);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E752BF8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6F7CD0(0);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v28 - v17;
  sub_29E7544C8();
  v32 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FD108();
  type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v30 = sub_29E754A08();
  v20 = v19;
  type metadata accessor for SleepApneaEventSummaryView(0);
  sub_29E658B34(v12);
  v21 = sub_29E752BD8();
  (*(v10 + 8))(v12, v9);
  if (v21)
  {
    sub_29E6FD154(a1, v8, type metadata accessor for SleepApneaEventSummaryViewModel);
    sub_29E6FD154(v8, v6, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid);
    swift_storeEnumTagMultiPayload();
    sub_29E6FFF1C(&qword_2A1859F00, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid, &unk_29E76B48C);
    sub_29E6FFF1C(&qword_2A1859F08, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid, &unk_29E76B43C);
    sub_29E753118();
    v22 = type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid;
    v23 = v8;
  }

  else
  {
    v24 = v29;
    sub_29E6FD154(a1, v29, type metadata accessor for SleepApneaEventSummaryViewModel);
    sub_29E6FD154(v24, v6, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid);
    swift_storeEnumTagMultiPayload();
    sub_29E6FFF1C(&qword_2A1859F00, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid, &unk_29E76B48C);
    sub_29E6FFF1C(&qword_2A1859F08, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid, &unk_29E76B43C);
    sub_29E753118();
    v22 = type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid;
    v23 = v24;
  }

  sub_29E6FF064(v23, v22);
  sub_29E6FD154(v18, v16, sub_29E6F7CD0);
  v25 = v35;
  *v35 = v30;
  v25[1] = v20;
  sub_29E6F7C68(0);
  sub_29E6FD154(v16, v25 + *(v26 + 48), sub_29E6F7CD0);

  sub_29E6FF064(v18, sub_29E6F7CD0);
  sub_29E6FF064(v16, sub_29E6F7CD0);
}

uint64_t sub_29E6F6BE0(uint64_t a1)
{
  v2 = sub_29E753178();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E6F7EE0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_29E753168();
  MEMORY[0x2A1C7C4A8](v8);
  *(&v11 - 2) = a1;
  sub_29E6F7F88(0, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
  sub_29E6F8014();
  sub_29E752A68();
  v9 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
  MEMORY[0x29ED95AD0](v7, v4, v9);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E6F6E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v28 = sub_29E74F698();
  v2 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepApneaEventSummaryView(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF708(0, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v22 - v12;
  sub_29E7544C8();
  v24 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v14 = sub_29E74F7C8();
  v16 = v15;
  (*(v8 + 8))(v10, v7);
  v30 = v14;
  v31 = v16;
  sub_29E6FD154(v25, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaEventSummaryView);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_29E6FE83C(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SleepApneaEventSummaryView);
  sub_29E60DE10();
  sub_29E753A48();
  v19 = v28;
  (*(v2 + 104))(v4, *MEMORY[0x29EDC6AB8], v28);
  sub_29E754238();
  (*(v2 + 8))(v4, v19);
  sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC278]);
  v20 = v27;
  sub_29E753848();

  (*(v26 + 8))(v13, v20);
}

uint64_t sub_29E6F730C()
{
  v0 = sub_29E752AD8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepApneaEventSummaryView(0);
  sub_29E658B00(v3);
  sub_29E752AC8();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_29E6F745C(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v3 = *(a1 + *(v2 + 28));
  type metadata accessor for BreathingDisturbancesRoomInteractionAnalyticsEvent();
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  *(v4 + 17) = v3;
  v5 = *(a1 + *(v2 + 32));
  v8[4] = sub_29E6DE8B4;
  v8[5] = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = sub_29E5FE860;
  v8[3] = &unk_2A25027F8;
  v6 = _Block_copy(v8);

  [v5 submitEvent:v4 completion:v6];
  _Block_release(v6);
}

uint64_t sub_29E6F7564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 - 8);
  v23 = v2;
  v24 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8);
  sub_29E6F7888(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  sub_29E6F79DC(0);
  sub_29E6F7B18(255);
  v11 = v10;
  sub_29E6F7E2C(255);
  v13 = v12;
  v14 = sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18, MEMORY[0x29EDBBEA8]);
  sub_29E6F7EE0(255);
  v16 = v15;
  v17 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
  v27 = v16;
  v28 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v11;
  v28 = v13;
  v29 = v14;
  v30 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29E752B88();
  sub_29E6FD154(v23, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaEventSummaryView);
  v19 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v20 = swift_allocObject();
  sub_29E6FE83C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SleepApneaEventSummaryView);
  sub_29E6FFF1C(&qword_2A1859EE8, sub_29E6F7888, MEMORY[0x29EDBBF10]);
  sub_29E753618();

  return (*(v7 + 8))(v9, v6);
}

void sub_29E6F7888(uint64_t a1)
{
  if (!qword_2A1859E60)
  {
    sub_29E6F79DC(255);
    sub_29E6F7B18(255);
    sub_29E6F7E2C(255);
    sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18, MEMORY[0x29EDBBEA8]);
    sub_29E6F7EE0(255);
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29E752B98();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859E60);
    }
  }
}

void sub_29E6F79DC(uint64_t a1)
{
  if (!qword_2A1859E68)
  {
    sub_29E6F7B18(255);
    sub_29E6F7E2C(255);
    sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18, MEMORY[0x29EDBBEA8]);
    sub_29E6F7EE0(255);
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859E68);
    }
  }
}

void sub_29E6F7B18(uint64_t a1)
{
  if (!qword_2A1859E70)
  {
    sub_29E6FE8A4(255, &qword_2A1859E78, sub_29E6F7BA0, MEMORY[0x29EDBC498]);
    sub_29E6F7D58();
    v1 = sub_29E7529F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859E70);
    }
  }
}

void sub_29E6F7BA0(uint64_t a1)
{
  if (!qword_2A1859E80)
  {
    sub_29E6F7C34(255);
    sub_29E6FFF1C(&qword_2A1859EA0, sub_29E6F7C34, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859E80);
    }
  }
}

void sub_29E6F7C68(uint64_t a1)
{
  if (!qword_2A1859E90)
  {
    sub_29E6F7CD0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859E90);
    }
  }
}

unint64_t sub_29E6F7D58()
{
  result = qword_2A1859EA8;
  if (!qword_2A1859EA8)
  {
    sub_29E6FE8A4(255, &qword_2A1859E78, sub_29E6F7BA0, MEMORY[0x29EDBC498]);
    sub_29E6FFF1C(&qword_2A1859EB0, sub_29E6F7BA0, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859EA8);
  }

  return result;
}

void sub_29E6F7E2C(uint64_t a1)
{
  if (!qword_2A1859EB8)
  {
    sub_29E6F7EE0(255);
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0, MEMORY[0x29EDBBEC0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859EB8);
    }
  }
}

void sub_29E6F7EE0(uint64_t a1)
{
  if (!qword_2A1859EC0)
  {
    sub_29E6F7F88(255, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
    sub_29E6F8014();
    v1 = sub_29E752A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859EC0);
    }
  }
}

void sub_29E6F7F88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FF708(255, a3, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a4);
    a5(255);
    v7 = sub_29E752C28();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E6F8014()
{
  result = qword_2A1859ED0;
  if (!qword_2A1859ED0)
  {
    v1 = MEMORY[0x29EDBC270];
    sub_29E6F7F88(255, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v1, MEMORY[0x29EDBC278]);
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859ED0);
  }

  return result;
}

uint64_t sub_29E6F8164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6F8194()
{
  v1 = type metadata accessor for SleepApneaEventSummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_29E74ED28();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v7(v0 + v3 + v8[5], v6);

  v9 = *(v1 + 20);
  sub_29E6F6090(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29E752AD8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = *(v1 + 24);
  sub_29E6F6090(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E752BF8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E6F8418(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_29E6F8494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6FD480(0);
  v5 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v19 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v19 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v19 - v15;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_29E752ED8();
  v16[8] = 0;
  sub_29E6F89E4(a1, 50, MEMORY[0x29EDC6BB8], sub_29E6F8704, &v16[*(v5 + 36)]);
  *v14 = sub_29E752ED8();
  v14[8] = 0;
  sub_29E6F89E4(a1, 54, MEMORY[0x29EDC6BB0], sub_29E6F8CB0, &v14[*(v5 + 36)]);
  sub_29E6FD154(v16, v11, sub_29E6FD480);
  sub_29E6FD154(v14, v8, sub_29E6FD480);
  sub_29E6FD154(v11, a2, sub_29E6FD480);
  sub_29E6FD41C(0);
  sub_29E6FD154(v8, a2 + *(v17 + 48), sub_29E6FD480);
  sub_29E6FF064(v14, sub_29E6FD480);
  sub_29E6FF064(v16, sub_29E6FD480);
  sub_29E6FF064(v8, sub_29E6FD480);
  sub_29E6FF064(v11, sub_29E6FD480);
}

uint64_t sub_29E6F8704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF494(0, &qword_2A1859F48, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E764170;
  v26 = 0x800000029E75F7D0;
  v7 = *MEMORY[0x29EDC6AB8];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v9 = sub_29E754238();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = v26;
  *(v6 + 32) = 0xD000000000000028;
  *(v6 + 40) = v13;
  *(v6 + 48) = v9;
  *(v6 + 56) = v11;
  v26 = 0x800000029E75F800;
  v8(v5, v7, v2);
  v14 = sub_29E754238();
  v16 = v15;
  v12(v5, v2);
  *(v6 + 64) = 0xD000000000000030;
  *(v6 + 72) = v26;
  *(v6 + 80) = v14;
  *(v6 + 88) = v16;
  v8(v5, v7, v2);
  v17 = sub_29E754238();
  v19 = v18;
  v12(v5, v2);
  *(v6 + 96) = 0xD000000000000030;
  *(v6 + 104) = 0x800000029E75F840;
  *(v6 + 112) = v17;
  *(v6 + 120) = v19;
  v20 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v21 = *(v20 + 20);
  v22 = v27;
  sub_29E6FD154(v28, v27 + v21, type metadata accessor for SleepApneaEventSummaryViewModel);
  v23 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  result = (*(*(v23 - 8) + 56))(v22 + v21, 0, 1, v23);
  *v22 = v6;
  *(v22 + *(v20 + 24)) = 0;
  return result;
}

uint64_t sub_29E6F89E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v25 = a4;
  v8 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SymbolView(0);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v24 - v18;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a3;
  v21 = sub_29E74FA88();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v25(a1);
  sub_29E6FD154(v19, v17, type metadata accessor for SymbolView);
  sub_29E6FD154(v13, v11, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v17, a5, type metadata accessor for SymbolView);
  sub_29E6FE2B4(0, &qword_2A1859F78, type metadata accessor for SymbolView, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v11, a5 + *(v22 + 48), type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v13, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v19, type metadata accessor for SymbolView);
  sub_29E6FF064(v11, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v17, type metadata accessor for SymbolView);
}

uint64_t sub_29E6F8CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v24 = a1;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF494(0, &qword_2A1859F48, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F40;
  v22 = 0x800000029E75F770;
  v7 = *MEMORY[0x29EDC6AB8];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v9 = sub_29E754238();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  *(v6 + 32) = 0xD000000000000026;
  *(v6 + 40) = v22;
  *(v6 + 48) = v9;
  *(v6 + 56) = v11;
  v8(v5, v7, v2);
  v13 = sub_29E754238();
  v15 = v14;
  v12(v5, v2);
  *(v6 + 64) = 0xD00000000000002CLL;
  *(v6 + 72) = 0x800000029E75F7A0;
  *(v6 + 80) = v13;
  *(v6 + 88) = v15;
  v16 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v17 = *(v16 + 20);
  v18 = v23;
  sub_29E6FD154(v24, v23 + v17, type metadata accessor for SleepApneaEventSummaryViewModel);
  v19 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  result = (*(*(v19 - 8) + 56))(v18 + v17, 0, 1, v19);
  *v18 = v6;
  *(v18 + *(v16 + 24)) = 1;
  return result;
}

uint64_t sub_29E6F8F28@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29E753C48();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0x4014000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x403A000000000000;
  *(a2 + 40) = 0;
  sub_29E6FD37C(0);
  return sub_29E6F8494(v2, a2 + *(v5 + 44));
}

uint64_t sub_29E6F8F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v45 = &v38 - v7;
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v44 = (&v38 - v9);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v38 - v10);
  v12 = type metadata accessor for SymbolView(0);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v38 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v38 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v38 - v21;
  sub_29E7544C8();
  v46 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *MEMORY[0x29EDC6BB8];
  v24 = sub_29E74FA88();
  v25 = *(*(v24 - 8) + 104);
  v41 = v22;
  v25(v22, v23, v24);
  v39 = v11;
  v26 = v43;
  sub_29E6F8704(v43, v11);
  v25(v20, *MEMORY[0x29EDC6BB0], v24);
  v27 = v44;
  sub_29E6F8CB0(v26, v44);
  v28 = v17;
  v40 = v17;
  sub_29E6FD154(v22, v17, type metadata accessor for SymbolView);
  v29 = v45;
  sub_29E6FD154(v11, v45, type metadata accessor for SleepApneaSummaryTextAndAction);
  v30 = v42;
  sub_29E6FD154(v20, v42, type metadata accessor for SymbolView);
  v31 = v47;
  sub_29E6FD154(v27, v47, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v28, a2, type metadata accessor for SymbolView);
  sub_29E6FD2A4(0);
  v33 = v32;
  v34 = a2 + v32[12];
  *v34 = 0x4014000000000000;
  *(v34 + 8) = 0;
  sub_29E6FD154(v29, a2 + v32[16], type metadata accessor for SleepApneaSummaryTextAndAction);
  v35 = a2 + v33[20];
  *v35 = 0x403A000000000000;
  *(v35 + 8) = 0;
  sub_29E6FD154(v30, a2 + v33[24], type metadata accessor for SymbolView);
  v36 = a2 + v33[28];
  *v36 = 0x4014000000000000;
  *(v36 + 8) = 0;
  sub_29E6FD154(v31, a2 + v33[32], type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v27, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v20, type metadata accessor for SymbolView);
  sub_29E6FF064(v39, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v41, type metadata accessor for SymbolView);
  sub_29E6FF064(v31, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v30, type metadata accessor for SymbolView);
  sub_29E6FF064(v29, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v40, type metadata accessor for SymbolView);
}

uint64_t sub_29E6F93C0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29E752FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E6FE7D8(0, &qword_2A1859F30, sub_29E6FD270);
  return sub_29E6F8F80(v2, a2 + *(v4 + 44));
}

uint64_t sub_29E6F9424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E6FD6A4(0);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v21 - v10;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A7FA18;
  v13 = sub_29E7539E8();
  *v11 = sub_29E752FE8();
  *(v11 + 1) = 0x402E000000000000;
  v11[16] = 0;
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FDB38(0);
  v15 = &v11[*(v14 + 44)];
  sub_29E6F9714(a1, a2, v15);
  v16 = [objc_opt_self() labelColor];
  v17 = sub_29E7538E8();

  sub_29E6FD740(0, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
  *(v15 + *(v18 + 36)) = v17;
  sub_29E6FD154(v11, v9, sub_29E6FD6A4);
  *a3 = v13;
  *(a3 + 8) = 0x4034000000000000;
  *(a3 + 16) = 0;
  sub_29E6FD634(0);
  sub_29E6FD154(v9, a3 + *(v19 + 64), sub_29E6FD6A4);

  sub_29E6FF064(v11, sub_29E6FD6A4);
  sub_29E6FF064(v9, sub_29E6FD6A4);
}

uint64_t sub_29E6F9714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v103 = a1;
  v110 = a3;
  sub_29E64D80C(0);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v109 = &v95 - v6;
  v7 = sub_29E74F698();
  v8 = *(v7 - 8);
  v119 = v7;
  v120 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v105 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74F8B8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FD8B0(0);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v108 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v107 = &v95 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v118 = &v95 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v117 = &v95 - v21;
  sub_29E7544C8();
  v106 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v102 = qword_2A1A7FA18;
  v96 = v13;
  sub_29E74F8A8();
  v22 = sub_29E74F7C8();
  v24 = v23;
  v25 = *(v11 + 8);
  v99 = v11 + 8;
  v101 = v25;
  v25(v13, v10);
  v121 = v22;
  v122 = v24;
  v116 = sub_29E60DE10();
  v26 = sub_29E753608();
  v28 = v27;
  v100 = v10;
  v30 = v29;
  sub_29E753408();
  v31 = sub_29E7535D8();
  v33 = v32;
  v35 = v34;

  sub_29E60DB44(v26, v28, v30 & 1);

  v36 = sub_29E7535C8();
  v38 = v37;
  LOBYTE(v26) = v39;
  v41 = v40;
  v95 = v40;
  sub_29E60DB44(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v121 = v36;
  v122 = v38;
  v43 = v26 & 1;
  v123 = v26 & 1;
  v124 = v41;
  v125 = KeyPath;
  v126 = 1;
  v115 = *MEMORY[0x29EDC6AB8];
  v44 = v119;
  v45 = v120;
  v46 = *(v120 + 104);
  v113 = v120 + 104;
  v114 = v46;
  v47 = v105;
  v46(v105);
  sub_29E754238();
  v48 = v96;
  v49 = *(v45 + 8);
  v120 = v45 + 8;
  v112 = v49;
  v49(v47, v44);
  sub_29E6FD8F8(0);
  v98 = v50;
  v97 = sub_29E6FDBDC();
  sub_29E753848();

  sub_29E60DB44(v36, v38, v43);

  sub_29E74F8A8();
  v51 = sub_29E74F7C8();
  v53 = v52;
  v101(v48, v100);
  v121 = v51;
  v122 = v53;
  v54 = sub_29E753608();
  v56 = v55;
  v58 = v57;
  sub_29E753428();
  v59 = sub_29E7535D8();
  v61 = v60;
  v63 = v62;
  v65 = v64;

  sub_29E60DB44(v54, v56, v58 & 1);

  v66 = swift_getKeyPath();
  v121 = v59;
  v122 = v61;
  v67 = v63 & 1;
  v123 = v63 & 1;
  v124 = v65;
  v125 = v66;
  v126 = 1;
  v68 = v47;
  v69 = v119;
  v114(v47, v115, v119);
  sub_29E754238();
  v112(v47, v69);
  sub_29E753848();

  sub_29E60DB44(v59, v61, v67);

  v121 = v103;
  v122 = v104;

  v70 = sub_29E753608();
  v72 = v71;
  LOBYTE(v59) = v73;
  sub_29E753428();
  v74 = sub_29E7535D8();
  v76 = v75;
  LOBYTE(v47) = v77;

  sub_29E60DB44(v70, v72, v59 & 1);

  v78 = sub_29E7535C8();
  v80 = v79;
  LOBYTE(v72) = v81;
  v83 = v82;
  sub_29E60DB44(v74, v76, v47 & 1);

  v121 = v78;
  v122 = v80;
  LOBYTE(v56) = v72 & 1;
  v123 = v72 & 1;
  v124 = v83;
  v84 = v119;
  v114(v68, v115, v119);
  sub_29E754238();
  v112(v68, v84);
  v85 = v109;
  sub_29E753848();

  sub_29E60DB44(v78, v80, v56);

  v86 = v117;
  v87 = v107;
  sub_29E6FD154(v117, v107, sub_29E6FD8B0);
  v88 = v118;
  v89 = v108;
  sub_29E6FD154(v118, v108, sub_29E6FD8B0);
  v90 = v111;
  sub_29E6FD154(v85, v111, sub_29E64D80C);
  v91 = v110;
  sub_29E6FD154(v87, v110, sub_29E6FD8B0);
  sub_29E6FD83C(0);
  v93 = v92;
  sub_29E6FD154(v89, v91 + *(v92 + 48), sub_29E6FD8B0);
  sub_29E6FD154(v90, v91 + *(v93 + 64), sub_29E64D80C);
  sub_29E6FF064(v85, sub_29E64D80C);
  sub_29E6FF064(v88, sub_29E6FD8B0);
  sub_29E6FF064(v86, sub_29E6FD8B0);
  sub_29E6FF064(v90, sub_29E64D80C);
  sub_29E6FF064(v89, sub_29E6FD8B0);
  sub_29E6FF064(v87, sub_29E6FD8B0);
}

uint64_t sub_29E6FA0F0@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_29E752FE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E6FE7D8(0, &qword_2A1859F90, sub_29E6FD600);
  return sub_29E6F9424(v5, v4, a2 + *(v6 + 44));
}

uint64_t sub_29E6FA164()
{
  sub_29E74FA58();
  sub_29E753918();
  sub_29E753428();
  swift_getKeyPath();
  sub_29E753478();
  sub_29E6FF7F4(0, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
  sub_29E6FF1D0();
  sub_29E753718();
}

__n128 sub_29E6FA26C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E6FE1E4(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_29E752FF8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_29E6FE7D8(0, &qword_2A185A120, sub_29E6FE278);
  sub_29E6FA3E4(v2, &v6[*(v7 + 44)]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6FE83C(v6, a1, sub_29E6FE1E4);
  sub_29E6FE8A4(0, &qword_2A185A128, sub_29E6FE1E4, MEMORY[0x29EDBC5F8]);
  v9 = a1 + *(v8 + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_29E6FA3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v129 = a2;
  sub_29E6FE690(0);
  v102 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v103 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDBC0A8];
  v6 = MEMORY[0x29EDBC558];
  sub_29E6FF7F4(0, &qword_2A185A0F8, sub_29E6FE690, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v101 = &v96 - v8;
  v110 = sub_29E74F8B8();
  v109 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE908(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_29E74EAF8();
  v113 = *(v116 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v116);
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v111 = &v96 - v14;
  sub_29E6FE668(0);
  v128 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v117 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A130, sub_29E6FE59C, sub_29E6FE668, MEMORY[0x29EDBC7E8]);
  v125 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v127 = &v96 - v18;
  v19 = sub_29E74F698();
  v114 = *(v19 - 8);
  v115 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v112 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  MEMORY[0x2A1C7C4A8](v98);
  v99 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView, v5, v6);
  v106 = v22;
  v105 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v97 = &v96 - v23;
  sub_29E6FDCFC(0);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v96 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE59C(0);
  v121 = v30;
  MEMORY[0x2A1C7C4A8](v30);
  v104 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE554(0);
  v33 = MEMORY[0x2A1C7C4A8](v32 - 8);
  v126 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v130 = &v96 - v35;
  v36 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v36);
  sub_29E6FE330(0);
  v123 = *(v39 - 8);
  v124 = v39;
  v40 = MEMORY[0x2A1C7C4A8](v39);
  v122 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v131 = &v96 - v42;
  sub_29E7544C8();
  v120 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = *(*a1 + 16);
  v133 = 0;
  v134 = v43;
  swift_getKeyPath();
  sub_29E6FD154(a1, &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaSummaryTextAndAction);
  v44 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v45 = swift_allocObject();
  sub_29E6FE83C(&v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF708(0, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  sub_29E6FE4A8();
  sub_29E6FE9BC();
  sub_29E753B38();
  if (*(a1 + *(v36 + 24)))
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v46 = v108;
    sub_29E74F8A8();
    sub_29E74F7C8();
    v47 = *(v109 + 8);
    v48 = v110;
    v47(v46, v110);
    v49 = v107;
    sub_29E74EAE8();

    v50 = v113;
    v51 = v116;
    v52 = (*(v113 + 48))(v49, 1, v116);
    v53 = v130;
    if (v52 == 1)
    {
      sub_29E6FF064(v49, sub_29E6FE908);
      v54 = 1;
      v55 = v117;
    }

    else
    {
      v57 = v111;
      (*(v50 + 32))();
      sub_29E74F8A8();
      v58 = sub_29E74F7C8();
      v60 = v59;
      v47(v46, v48);
      v133 = v58;
      v134 = v60;
      v61 = v57;
      v53 = v130;
      (*(v50 + 16))(v100, v61, v51);
      sub_29E60DE10();
      v62 = v51;
      v63 = v103;
      sub_29E753558();
      v64 = sub_29E753428();
      KeyPath = swift_getKeyPath();
      sub_29E6F7F88(0, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
      v67 = (v63 + *(v66 + 36));
      *v67 = KeyPath;
      v67[1] = v64;
      *(v63 + *(v102 + 36)) = sub_29E753918();
      v69 = v114;
      v68 = v115;
      v70 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x29EDC6AB8], v115);
      sub_29E754238();
      (*(v69 + 8))(v70, v68);
      sub_29E6FED08();
      v71 = v101;
      sub_29E753848();

      sub_29E6FF064(v63, sub_29E6FE690);
      (*(v50 + 8))(v111, v62);
      v55 = v117;
      sub_29E6FEF34(v71, v117, &qword_2A185A0F8, sub_29E6FE690);
      v54 = 0;
    }

    (*(v118 + 56))(v55, v54, 1, v119);
    sub_29E6FD154(v55, v127, sub_29E6FE668);
    swift_storeEnumTagMultiPayload();
    v72 = MEMORY[0x29EDBCC48];
    sub_29E6FEBA4(&qword_2A185A148, sub_29E6FE59C, sub_29E6FEA80, MEMORY[0x29EDBCC48]);
    sub_29E6FEBA4(&qword_2A185A160, sub_29E6FE668, sub_29E6FEC14, v72);
    sub_29E753118();
    v73 = sub_29E6FE668;
  }

  else
  {
    sub_29E6FD154(a1 + *(v36 + 20), v26, sub_29E6FDCFC);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_29E6FF064(v26, sub_29E6FDCFC);
      v56 = 1;
      v53 = v130;
      v55 = v104;
    }

    else
    {
      v74 = v96;
      sub_29E6FE83C(v26, v96, type metadata accessor for SleepApneaEventSummaryViewModel);
      v75 = v99;
      sub_29E6FD154(v74, v99, type metadata accessor for SleepApneaEventSummaryViewModel);
      v76 = swift_getKeyPath();
      v77 = v98;
      *(v75 + *(v98 + 24)) = v76;
      sub_29E6FEFCC(0);
      swift_storeEnumTagMultiPayload();
      v78 = v75 + *(v77 + 20);
      v132 = 0;
      sub_29E7539F8();
      v79 = v134;
      *v78 = v133;
      *(v78 + 8) = v79;
      v81 = v114;
      v80 = v115;
      v82 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x29EDC6AB8], v115);
      sub_29E754238();
      (*(v81 + 8))(v82, v80);
      sub_29E6FFF1C(&qword_2A185A158, type metadata accessor for SleepApneaSummaryShareButtonView, &unk_29E76B764);
      v83 = v97;
      sub_29E753848();

      sub_29E6FF064(v75, type metadata accessor for SleepApneaSummaryShareButtonView);
      sub_29E6FF064(v74, type metadata accessor for SleepApneaEventSummaryViewModel);
      v84 = v83;
      v55 = v104;
      sub_29E6FEF34(v84, v104, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView);
      v56 = 0;
      v53 = v130;
    }

    (*(v105 + 56))(v55, v56, 1, v106);
    sub_29E6FD154(v55, v127, sub_29E6FE59C);
    swift_storeEnumTagMultiPayload();
    v85 = MEMORY[0x29EDBCC48];
    sub_29E6FEBA4(&qword_2A185A148, sub_29E6FE59C, sub_29E6FEA80, MEMORY[0x29EDBCC48]);
    sub_29E6FEBA4(&qword_2A185A160, sub_29E6FE668, sub_29E6FEC14, v85);
    sub_29E753118();
    v73 = sub_29E6FE59C;
  }

  sub_29E6FF064(v55, v73);
  v87 = v122;
  v86 = v123;
  v88 = *(v123 + 16);
  v89 = v131;
  v90 = v124;
  v88(v122, v131, v124);
  v91 = v126;
  sub_29E6FD154(v53, v126, sub_29E6FE554);
  v92 = v129;
  v88(v129, v87, v90);
  sub_29E6FE2B4(0, &qword_2A185A0A8, sub_29E6FE330, sub_29E6FE554);
  sub_29E6FD154(v91, &v92[*(v93 + 48)], sub_29E6FE554);
  sub_29E6FF064(v53, sub_29E6FE554);
  v94 = *(v86 + 8);
  v94(v89, v90);
  sub_29E6FF064(v91, sub_29E6FE554);
  v94(v87, v90);
}

uint64_t sub_29E6FB684@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  sub_29E6FF000(0, &qword_2A185A188, MEMORY[0x29EDBC7E8]);
  v86 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v80 - v6;
  sub_29E6FE40C(0);
  v9 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F8B8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64D80C(0);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v85 = &v80 - v19;
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v84 = &v80 - v21;
  v22 = *a1;
  sub_29E7544C8();
  v83 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *a2;
  v88 = v9;
  v89 = v7;
  v87 = v11;
  v91 = v23;
  if (v22)
  {
    v24 = v22;
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v23 + 16))
    {
      v25 = qword_2A1A7D6F0;
      v81 = v24;

      if (v25 == -1)
      {
LABEL_7:
        sub_29E74F8A8();
        v26 = sub_29E74F7C8();
        v28 = v27;

        (*(v13 + 8))(v15, v12);
        v92 = v26;
        v93 = v28;
        sub_29E60DE10();
        v29 = sub_29E753608();
        v31 = v30;
        v33 = v32;
        sub_29E753428();
        v34 = sub_29E7535D8();
        v15 = v35;
        v37 = v36;

        sub_29E60DB44(v29, v31, v33 & 1);

        v38 = [objc_opt_self() secondaryLabelColor];
        v13 = sub_29E7538E8();
        v92 = v13;
        v39 = sub_29E7535B8();
        v41 = v40;
        v43 = v42;
        v45 = v44;
        sub_29E60DB44(v34, v15, v37 & 1);

        v92 = v39;
        v93 = v41;
        v12 = v43 & 1;
        v94 = v43 & 1;
        v95 = v45;
        if (v81 < *(v91 + 16))
        {

          v46 = v85;
          sub_29E753848();

          sub_29E60DB44(v39, v41, v12);

          v47 = 0x4028000000000000;
LABEL_13:
          v75 = v82;
          sub_29E6FD154(v46, v82, sub_29E64D80C);
          v76 = v87;
          sub_29E6FD154(v75, v87, sub_29E64D80C);
          sub_29E6FE440(0);
          v78 = v76 + *(v77 + 48);
          *v78 = v47;
          *(v78 + 8) = 0;
          sub_29E6FF064(v75, sub_29E64D80C);
          sub_29E6FD154(v76, v89, sub_29E6FE40C);
          swift_storeEnumTagMultiPayload();
          sub_29E6FFF1C(&qword_2A185A140, sub_29E6FE40C, MEMORY[0x29EDBCC30]);
          v79 = v84;
          sub_29E753118();
          sub_29E6FF064(v76, sub_29E6FE40C);
          sub_29E6FF064(v46, sub_29E64D80C);
          sub_29E6FF0C4(v79, v90);
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      swift_once();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (*(v23 + 16))
  {
    v48 = qword_2A1A7D6F0;

    if (v48 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_11:
  sub_29E74F8A8();
  v49 = sub_29E74F7C8();
  v51 = v50;

  (*(v13 + 8))(v15, v12);
  v92 = v49;
  v93 = v51;
  sub_29E60DE10();
  v52 = sub_29E753608();
  v54 = v53;
  LOBYTE(v49) = v55;
  sub_29E753428();
  v56 = sub_29E7535D8();
  v58 = v57;
  v60 = v59;

  sub_29E60DB44(v52, v54, v49 & 1);

  sub_29E753478();
  v61 = sub_29E753598();
  v63 = v62;
  v65 = v64;
  sub_29E60DB44(v56, v58, v60 & 1);

  v66 = [objc_opt_self() labelColor];
  v92 = sub_29E7538E8();
  v67 = sub_29E7535B8();
  v69 = v68;
  LOBYTE(v58) = v70;
  v72 = v71;
  sub_29E60DB44(v61, v63, v65 & 1);

  v92 = v67;
  v93 = v69;
  v74 = v58 & 1;
  v94 = v58 & 1;
  v95 = v72;
  if (*(v91 + 16))
  {

    v46 = v85;
    sub_29E753848();

    sub_29E60DB44(v67, v69, v74);

    v47 = 0x4018000000000000;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6FBF24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752EB8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FEFCC(0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  sub_29E6FD154(v1 + *(v10 + 24), v9, sub_29E6FEFCC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E752A38();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_29E7546B8();
    v13 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E6FC120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v85 = sub_29E752A38();
  v3 = *(v85 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v85);
  v84 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v79 = &v66 - v6;
  v73 = sub_29E752FD8();
  v75 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  v10 = *(v9 - 8);
  v86 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v82 = v11;
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDBC270];
  sub_29E6FF708(0, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v67 = v14;
  v68 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v66 - v15;
  sub_29E6FF5D4(0);
  v76 = v17;
  v74 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v66 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FD740(0, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
  v20 = v19 - 8;
  MEMORY[0x2A1C7C4A8](v19);
  v69 = &v66 - v21;
  sub_29E6FF75C(0);
  v23 = v22 - 8;
  MEMORY[0x2A1C7C4A8](v22);
  v71 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  v72 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v70 = &v66 - v26;
  v83 = type metadata accessor for SleepApneaSummaryShareButtonView;
  v77 = v12;
  sub_29E6FD154(v2, v12, type metadata accessor for SleepApneaSummaryShareButtonView);
  v81 = *(v10 + 80);
  v27 = (v81 + 16) & ~v81;
  v78 = v27;
  v28 = swift_allocObject();
  v80 = type metadata accessor for SleepApneaSummaryShareButtonView;
  sub_29E6FE83C(v12, v28 + v27, type metadata accessor for SleepApneaSummaryShareButtonView);
  sub_29E753A28();
  sub_29E752FC8();
  sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v13, MEMORY[0x29EDBC278]);
  sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
  v29 = v66;
  v30 = v67;
  v31 = v73;
  sub_29E753728();
  (*(v75 + 8))(v8, v31);
  (*(v68 + 8))(v16, v30);
  v32 = v79;
  sub_29E6FBF24(v79);
  v33 = v84;
  v34 = v85;
  (*(v3 + 104))(v84, *MEMORY[0x29EDBC360], v85);
  LOBYTE(v16) = sub_29E752A28();
  v35 = *(v3 + 8);
  v35(v33, v34);
  v35(v32, v34);
  v36 = objc_opt_self();
  v37 = &selRef_systemGray4Color;
  if ((v16 & 1) == 0)
  {
    v37 = &selRef_systemGray6Color;
  }

  v38 = [v36 *v37];
  v39 = sub_29E7538E8();
  v40 = sub_29E7533A8();
  v41 = v69;
  (*(v74 + 32))(v69, v29, v76);
  v42 = v41 + *(v20 + 44);
  *v42 = v39;
  *(v42 + 8) = v40;
  sub_29E753C58();
  sub_29E752CA8();
  v43 = v71;
  sub_29E5F86B4(v41, v71);
  v44 = (v43 + *(v23 + 44));
  v45 = v95;
  v44[4] = v94;
  v44[5] = v45;
  v44[6] = v96;
  v46 = v91;
  *v44 = v90;
  v44[1] = v46;
  v47 = v93;
  v44[2] = v92;
  v44[3] = v47;
  v48 = v70;
  v49 = &v70[*(v72 + 36)];
  v50 = *(sub_29E752C98() + 20);
  v51 = *MEMORY[0x29EDBC6F8];
  v52 = sub_29E752F78();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  __asm { FMOV            V0.2D, #6.0 }

  *v49 = _Q0;
  sub_29E6FF878(0);
  *&v49[*(v58 + 36)] = 256;
  sub_29E5F8750(v43, v48);
  v59 = v2 + *(v86 + 28);
  v60 = *v59;
  v61 = *(v59 + 8);
  v88 = v60;
  v89 = v61;
  sub_29E6FF494(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  v62 = v77;
  sub_29E6FD154(v2, v77, v83);
  v63 = v78;
  v64 = swift_allocObject();
  sub_29E6FE83C(v62, v64 + v63, v80);
  sub_29E6FFB48(0);
  sub_29E6FFBDC();
  sub_29E6FFF1C(&qword_2A185A238, sub_29E6FFB48, MEMORY[0x29EDC1F78]);
  sub_29E753868();

  return sub_29E5F87B8(v48);
}

uint64_t sub_29E6FCB18(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepApneaSummaryShareButtonView(0);
  sub_29E6FF494(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A08();
}

uint64_t sub_29E6FCC10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v29 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v6 = sub_29E74F7C8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v30 = v6;
  v31 = v8;
  sub_29E60DE10();
  v9 = sub_29E753608();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_29E753428();
  v13 = sub_29E7535D8();
  v15 = v14;
  v17 = v16;

  sub_29E60DB44(v9, v11, v6 & 1);

  sub_29E753468();
  v18 = sub_29E753598();
  v20 = v19;
  LOBYTE(v6) = v21;
  sub_29E60DB44(v13, v15, v17 & 1);

  v30 = sub_29E753918();
  v22 = sub_29E7535B8();
  v24 = v23;
  LOBYTE(v15) = v25;
  v27 = v26;
  sub_29E60DB44(v18, v20, v6 & 1);

  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v27;
  return result;
}

uint64_t sub_29E6FCF00(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FD154(a1, v4, type metadata accessor for SleepApneaEventSummaryViewModel);
  type metadata accessor for SleepApneaEventPDFProvider(0);
  v5 = swift_allocObject();
  v6 = v5 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel;
  sub_29E6FD154(v4, v5 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel, type metadata accessor for SleepApneaEventSummaryViewModel);
  sub_29E751068();
  v7 = *(v6 + *(v2 + 24));
  v8 = sub_29E751048();
  sub_29E6FF064(v4, type metadata accessor for SleepApneaEventSummaryViewModel);
  *(v5 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider) = v8;
  v10[1] = v5;
  sub_29E6FFF1C(&qword_2A185A210, type metadata accessor for SleepApneaEventPDFProvider, &unk_29E762FAC);
  sub_29E750808();
}

unint64_t sub_29E6FD108()
{
  result = qword_2A1858550;
  if (!qword_2A1858550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858550);
  }

  return result;
}

uint64_t sub_29E6FD154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E6FD2A4(uint64_t a1)
{
  if (!qword_2A1859F40)
  {
    type metadata accessor for SymbolView(255);
    type metadata accessor for SleepApneaSummaryTextAndAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1859F40);
    }
  }
}

void sub_29E6FD37C(uint64_t a1)
{
  if (!qword_2A1859F50)
  {
    sub_29E6FD3E8(255);
    sub_29E6FD5AC();
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859F50);
    }
  }
}

void sub_29E6FD41C(uint64_t a1)
{
  if (!qword_2A1859F60)
  {
    sub_29E6FD480(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859F60);
    }
  }
}

void sub_29E6FD480(uint64_t a1)
{
  if (!qword_2A1859F68)
  {
    sub_29E6FD514(255);
    sub_29E6FFF1C(&qword_2A1859F80, sub_29E6FD514, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753B68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859F68);
    }
  }
}

void sub_29E6FD550(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FE2B4(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E6FD5AC()
{
  result = qword_2A1859F88;
  if (!qword_2A1859F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859F88);
  }

  return result;
}

void sub_29E6FD634(uint64_t a1)
{
  if (!qword_2A1859FA0)
  {
    sub_29E6FD6A4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1859FA0);
    }
  }
}

void sub_29E6FD6A4(uint64_t a1)
{
  if (!qword_2A1859FA8)
  {
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    sub_29E6FD97C();
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859FA8);
    }
  }
}

void sub_29E6FD740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6FF708(255, a4, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], a5);
    v8 = sub_29E752C28();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6FD83C(uint64_t a1)
{
  if (!qword_2A1859FC8)
  {
    sub_29E6FD8B0(255);
    sub_29E64D80C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1859FC8);
    }
  }
}

void sub_29E6FD8F8(uint64_t a1)
{
  if (!qword_2A1859FD8)
  {
    sub_29E6FF494(255, &qword_2A1859FE0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859FD8);
    }
  }
}

unint64_t sub_29E6FD97C()
{
  result = qword_2A1859FE8;
  if (!qword_2A1859FE8)
  {
    v1 = MEMORY[0x29EDBC8E8];
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    sub_29E6FEBA4(&qword_2A1859FF0, sub_29E6FD7D4, sub_29E6FDAAC, MEMORY[0x29EDBCAB0]);
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, v1, MEMORY[0x29EDBC8F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859FE8);
  }

  return result;
}

uint64_t sub_29E6FDAE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6FF708(255, a2, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6FDB38(uint64_t a1)
{
  if (!qword_2A185A000)
  {
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A000);
    }
  }
}

unint64_t sub_29E6FDBDC()
{
  result = qword_2A185A008;
  if (!qword_2A185A008)
  {
    sub_29E6FD8F8(255);
    sub_29E6FDC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A008);
  }

  return result;
}

unint64_t sub_29E6FDC5C()
{
  result = qword_2A185A010;
  if (!qword_2A185A010)
  {
    sub_29E6FF494(255, &qword_2A1859FE0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A010);
  }

  return result;
}

void sub_29E6FDD44(uint64_t a1)
{
  sub_29E6FF494(319, &qword_2A185A030, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9A40]);
  if (v1 <= 0x3F)
  {
    sub_29E6FDCFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6FDE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_29E6FDE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_29E6FDF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29E6FDF98(uint64_t a1)
{
  if (!qword_2A185A050)
  {
    sub_29E6FD270(255);
    sub_29E6FFF1C(&qword_2A185A058, sub_29E6FD270, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A050);
    }
  }
}

void sub_29E6FE02C(uint64_t a1)
{
  if (!qword_2A185A068)
  {
    sub_29E6FD3E8(255);
    sub_29E6FFF1C(&qword_2A185A070, sub_29E6FD3E8, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753548();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A068);
    }
  }
}

void sub_29E6FE0C0(uint64_t a1)
{
  if (!qword_2A185A080)
  {
    sub_29E6FD600(255);
    sub_29E6FFF1C(&qword_2A185A088, sub_29E6FD600, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A080);
    }
  }
}

unint64_t sub_29E6FE174()
{
  result = qword_2A185A090;
  if (!qword_2A185A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A090);
  }

  return result;
}

void sub_29E6FE1E4(uint64_t a1)
{
  if (!qword_2A185A098)
  {
    sub_29E6FE278(255);
    sub_29E6FFF1C(&qword_2A185A118, sub_29E6FE278, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A098);
    }
  }
}

void sub_29E6FE2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E6FE330(uint64_t a1)
{
  if (!qword_2A185A0B0)
  {
    sub_29E6FF708(255, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29E6FF000(255, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
    sub_29E6FE4A8();
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A0B0);
    }
  }
}

void sub_29E6FE440(uint64_t a1)
{
  if (!qword_2A185A0C8)
  {
    sub_29E64D80C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A0C8);
    }
  }
}

unint64_t sub_29E6FE4A8()
{
  result = qword_2A185A0D0;
  if (!qword_2A185A0D0)
  {
    sub_29E6FF708(255, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29E659C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A0D0);
  }

  return result;
}

void sub_29E6FE5C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FF7F4(255, a3, a4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6FE690(uint64_t a1)
{
  if (!qword_2A185A100)
  {
    sub_29E6F7F88(255, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
    sub_29E6FF708(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A100);
    }
  }
}

void sub_29E6FE75C(uint64_t a1)
{
  if (!qword_2A1857518)
  {
    sub_29E6FF494(255, &qword_2A1857520, MEMORY[0x29EDBC9F0], MEMORY[0x29EDC9C68]);
    v1 = sub_29E7532E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857518);
    }
  }
}

void sub_29E6FE7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6FE83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6FE8A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6FE93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepApneaSummaryTextAndAction(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_29E6FB684(a1, v6, a2);
}

unint64_t sub_29E6FE9BC()
{
  result = qword_2A185A138;
  if (!qword_2A185A138)
  {
    sub_29E6FF000(255, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
    sub_29E6FFF1C(&qword_2A185A140, sub_29E6FE40C, MEMORY[0x29EDBCC30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A138);
  }

  return result;
}

unint64_t sub_29E6FEA80()
{
  result = qword_2A185A150;
  if (!qword_2A185A150)
  {
    sub_29E6FF7F4(255, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E6FFF1C(&qword_2A185A158, type metadata accessor for SleepApneaSummaryShareButtonView, &unk_29E76B764);
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A150);
  }

  return result;
}

uint64_t sub_29E6FEBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E6FEC14()
{
  result = qword_2A185A168;
  if (!qword_2A185A168)
  {
    sub_29E6FF7F4(255, &qword_2A185A0F8, sub_29E6FE690, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E6FED08();
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A168);
  }

  return result;
}

unint64_t sub_29E6FED08()
{
  result = qword_2A185A170;
  if (!qword_2A185A170)
  {
    sub_29E6FE690(255);
    sub_29E6FEDC0();
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, MEMORY[0x29EDBC8E8], MEMORY[0x29EDBC8F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A170);
  }

  return result;
}

unint64_t sub_29E6FEDC0()
{
  result = qword_2A185A178;
  if (!qword_2A185A178)
  {
    v1 = MEMORY[0x29EDBC0E0];
    sub_29E6F7F88(255, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
    sub_29E6FEEDC(&qword_2A185A180, &qword_2A185A110, v1, MEMORY[0x29EDBC0E8]);
    sub_29E6FFF1C(&qword_2A1857550, sub_29E6FE75C, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A178);
  }

  return result;
}

uint64_t sub_29E6FEEDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6FF708(255, a2, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6FEF34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E6FF7F4(0, a3, a4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_29E6FF000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6FE40C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E6FF064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6FF0C4(uint64_t a1, uint64_t a2)
{
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6FF144(uint64_t a1)
{
  if (!qword_2A185A198)
  {
    sub_29E6FF708(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A198);
    }
  }
}

unint64_t sub_29E6FF1D0()
{
  result = qword_2A185A1A0;
  if (!qword_2A185A1A0)
  {
    sub_29E6FF7F4(255, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
    sub_29E6FF2C4();
    sub_29E6FFF1C(&qword_2A1857550, sub_29E6FE75C, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1A0);
  }

  return result;
}

unint64_t sub_29E6FF2C4()
{
  result = qword_2A185A1A8;
  if (!qword_2A185A1A8)
  {
    sub_29E6FF144(255);
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, MEMORY[0x29EDBC8E8], MEMORY[0x29EDBC8F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1A8);
  }

  return result;
}

void sub_29E6FF3A4(uint64_t a1)
{
  type metadata accessor for SleepApneaEventSummaryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_29E6FF494(319, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
    if (v2 <= 0x3F)
    {
      sub_29E6F6090(319, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6FF494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E6FF4E4()
{
  result = qword_2A185A1C0;
  if (!qword_2A185A1C0)
  {
    sub_29E6FE8A4(255, &qword_2A185A128, sub_29E6FE1E4, MEMORY[0x29EDBC5F8]);
    sub_29E6FFF1C(&qword_2A185A1C8, sub_29E6FE1E4, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1C0);
  }

  return result;
}

void sub_29E6FF5D4(uint64_t a1)
{
  if (!qword_2A185A1D0)
  {
    v1 = MEMORY[0x29EDBC270];
    sub_29E6FF708(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E752FD8();
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v1, MEMORY[0x29EDBC278]);
    sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A1D0);
    }
  }
}

void sub_29E6FF708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6FF75C(uint64_t a1)
{
  if (!qword_2A185A1E8)
  {
    sub_29E6FD740(255, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A1E8);
    }
  }
}

void sub_29E6FF7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6FF878(uint64_t a1)
{
  if (!qword_2A185A1F8)
  {
    sub_29E752C98();
    sub_29E6FFF1C(&qword_2A185A200, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5B8]);
    v1 = sub_29E752A88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A1F8);
    }
  }
}

uint64_t sub_29E6FF938()
{
  v1 = (type metadata accessor for SleepApneaSummaryShareButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29E74ED28();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v6(v0 + v3 + v7[5], v5);

  v8 = v1[8];
  sub_29E6FEFCC(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_29E752A38();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E6FFAD8()
{
  v1 = *(type metadata accessor for SleepApneaSummaryShareButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E6FCF00(v2);
}

void sub_29E6FFB48(uint64_t a1)
{
  if (!qword_2A185A208)
  {
    type metadata accessor for SleepApneaEventPDFProvider(255);
    sub_29E6FFF1C(&qword_2A185A210, type metadata accessor for SleepApneaEventPDFProvider, &unk_29E762FAC);
    v1 = sub_29E7507F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A208);
    }
  }
}

unint64_t sub_29E6FFBDC()
{
  result = qword_2A185A218;
  if (!qword_2A185A218)
  {
    sub_29E6FF7F4(255, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
    sub_29E6FFCD0();
    sub_29E6FFF1C(&qword_2A185A230, sub_29E6FF878, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A218);
  }

  return result;
}

unint64_t sub_29E6FFCD0()
{
  result = qword_2A185A220;
  if (!qword_2A185A220)
  {
    sub_29E6FF75C(255);
    sub_29E6FFD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A220);
  }

  return result;
}

unint64_t sub_29E6FFD50()
{
  result = qword_2A185A228;
  if (!qword_2A185A228)
  {
    v1 = MEMORY[0x29EDBC8D8];
    sub_29E6FD740(255, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
    v2 = MEMORY[0x29EDBC270];
    sub_29E6FF708(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E752FD8();
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v2, MEMORY[0x29EDBC278]);
    sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    swift_getOpaqueTypeConformance2();
    sub_29E6FDAE0(&qword_2A1859DE8, &qword_2A1859DB8, v1, MEMORY[0x29EDBC8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A228);
  }

  return result;
}

uint64_t sub_29E6FFF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepApneaEventListDataSource(uint64_t a1)
{
  result = qword_2A185A260;
  if (!qword_2A185A260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E700028(void *a1, void *a2)
{
  v3 = v2;
  v80 = *v2;
  v59 = sub_29E752098();
  v58 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v79 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6894C4(0);
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v75 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7035C8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v74 = &v58 - v10;
  v66 = sub_29E754668();
  v64 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7037C8(0);
  v67 = v12;
  v65 = *(v12 - 1);
  MEMORY[0x2A1C7C4A8](v12);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E703A08(0);
  v70 = v14;
  v69 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v68 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E703A9C(0);
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29E74ED88();
  v60 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E751D98();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x29EDCA190];
  *(v2 + qword_2A185A240) = MEMORY[0x29EDCA190];
  v25 = qword_2A185A248;
  v83[0] = v24;
  sub_29E703B68(0, &qword_2A1858FA0, sub_29E7039A0, MEMORY[0x29EDB8A60]);
  swift_allocObject();
  *(v2 + v25) = sub_29E7527E8();
  *(v2 + qword_2A185A250) = a1;
  v26 = a2[3];
  v78 = a2;
  sub_29E601938(a2, v26);
  v81 = a1;
  sub_29E751DB8();
  v27 = sub_29E751DA8();
  LOBYTE(a1) = [v27 areAllRequirementsSatisfied];

  (*(v21 + 8))(v23, v20);
  *(v3 + qword_2A185A258) = a1;
  v83[0] = 0;
  v83[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v83, "MutableArray<");
  HIWORD(v83[1]) = -4864;
  sub_29E74ED78();
  v28 = sub_29E74ED48();
  v30 = v29;
  (*(v60 + 8))(v19, v61);
  MEMORY[0x29ED96C20](v28, v30);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v31 = MEMORY[0x29EDCA190];
  v32 = sub_29E750D08();
  sub_29E6163F8();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v34 = *MEMORY[0x29EDBA4D8];
  swift_retain_n();
  *(v33 + 32) = MEMORY[0x29ED96FF0](v34);
  v35 = v62;
  sub_29E754678();

  sub_29E7526E8();
  sub_29E703934(0);
  sub_29E7038B4(0);
  sub_29E703D1C(&qword_2A185A298, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29E703D1C(&qword_2A185A290, sub_29E7038B4, MEMORY[0x29EDB8A00]);
  v36 = v63;
  v37 = v66;
  sub_29E752958();

  (*(v64 + 8))(v35, v37);
  v83[0] = v31;
  v83[1] = 0;
  sub_29E703D1C(&qword_2A185A2A8, sub_29E7037C8, MEMORY[0x29EDB89A8]);
  v38 = v68;
  v39 = v67;
  sub_29E752908();
  (*(v65 + 8))(v36, v39);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v40 = sub_29E754908();
  v83[0] = v40;
  v41 = sub_29E7548D8();
  v42 = *(v41 - 8);
  v65 = *(v42 + 56);
  v66 = v42 + 56;
  v43 = v74;
  (v65)(v74, 1, 1, v41);
  sub_29E703D1C(&qword_2A185A2B8, sub_29E703A08, MEMORY[0x29EDB88C8]);
  v79 = sub_29E63FE6C();
  v44 = v70;
  v45 = v71;
  sub_29E752968();
  v67 = MEMORY[0x29EDCA298];
  sub_29E703BE4(v43, &qword_2A1856860, MEMORY[0x29EDCA298]);

  (*(v69 + 8))(v38, v44);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_29E703C54;
  *(v47 + 24) = v46;
  v70 = MEMORY[0x29EDB89E8];
  sub_29E703D1C(&qword_2A185A2C0, sub_29E703A9C, MEMORY[0x29EDB89E8]);
  v48 = v73;
  sub_29E7529A8();

  (*(v72 + 8))(v45, v48);
  swift_beginAccess();
  sub_29E7035C8(0, &qword_2A185A2C8, MEMORY[0x29EDB8A18], MEMORY[0x29EDC9A40]);
  v73 = v49;
  v72 = sub_29E703C8C();
  sub_29E752718();
  swift_endAccess();

  v50 = v78;
  sub_29E601938(v78, v78[3]);
  v83[0] = sub_29E751DC8();
  v51 = sub_29E754908();
  v82 = v51;
  (v65)(v43, 1, 1, v41);
  sub_29E703B68(0, &qword_2A1A7BF98, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  sub_29E703740();
  v52 = v75;
  sub_29E752968();
  sub_29E703BE4(v43, &qword_2A1856860, v67);

  v53 = swift_allocObject();
  swift_weakInit();

  v54 = swift_allocObject();
  v55 = v80;
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  sub_29E703D1C(&qword_2A18585D0, sub_29E6894C4, v70);
  v56 = v77;
  sub_29E7529A8();

  (*(v76 + 8))(v52, v56);
  swift_beginAccess();
  sub_29E752718();
  swift_endAccess();

  sub_29E5FECBC(v50);
  return v32;
}

uint64_t sub_29E700FA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29E7515C8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
  *v7 = 0;
  (*(v5 + 104))(v7, *MEMORY[0x29EDC2858], v4);
  sub_29E7515E8();
  swift_allocObject();
  sub_29E7515B8();
  v8 = sub_29E7515D8();

  *a2 = v8;
  return result;
}

uint64_t sub_29E70113C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v7[2] = a3;
  v7[3] = a1;
  sub_29E607C50(sub_29E703D64, v7, "SleepHealthAppPlugin/SleepApneaEventListDataSource.swift", 56, 2u, 52);
}

uint64_t sub_29E701234(uint64_t a1, unint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E70148C(a2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_29E7527C8();
  }
}

uint64_t sub_29E701374(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_29E751DA8();
    v5 = [v4 areAllRequirementsSatisfied];

    *(v3 + qword_2A185A258) = v5;
    sub_29E750CF8();
  }
}

uint64_t sub_29E70148C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E750EE8();
  v8 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74F8B8();
  v11 = *(v10 - 1);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v7;
  v47 = a1;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
      v14 = sub_29E754C98();
      if (!v14)
      {
        v40 = v8;
        v15 = MEMORY[0x29EDCA190];
        goto LABEL_14;
      }

LABEL_3:
      v51 = MEMORY[0x29EDCA190];
      sub_29E6DBD4C(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
LABEL_30:
        v10 = sub_29E6DAD84(0, v10[2] + 1, 1, v10);
LABEL_19:
        v32 = v40;
        v34 = v10[2];
        v33 = v10[3];
        if (v34 >= v33 >> 1)
        {
          v10 = sub_29E6DAD84((v33 > 1), v34 + 1, 1, v10);
        }

        v35 = v46;
        v49 = v46;
        v50 = sub_29E703D1C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
        v36 = sub_29E5FEBF4(&v48);
        v37 = v44;
        (*(v32 + 16))(v36, v44, v35);
        v10[2] = v34 + 1;
        sub_29E5FAEE4(&v48, &v10[5 * v34 + 4]);
        (*(v32 + 8))(v37, v35);
        v15 = v10;
        goto LABEL_28;
      }

      v40 = v8;
      v41 = v5;
      v42 = v4;
      v15 = v51;
      sub_29E7544C8();
      v16 = 0;
      v43 = v2;
      v17 = *(v2 + qword_2A185A250);
      v18 = v47 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x29ED976A0](v16, v47);
        }

        else
        {
          v19 = *(v47 + 8 * v16 + 32);
        }

        v20 = v19;
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v49 = v46;
        v50 = sub_29E703D1C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
        v21 = sub_29E5FEBF4(&v48);
        sub_29E681ED0(v20, 0, v17, v21);

        v51 = v15;
        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_29E6DBD4C((v22 > 1), v23 + 1, 1);
        }

        ++v16;
        v24 = v49;
        v25 = v50;
        v26 = sub_29E613218(&v48, v49);
        MEMORY[0x2A1C7C4A8](v26);
        v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v28);
        sub_29E6CE380(v23, v28, &v51, v24, v25);
        sub_29E5FECBC(&v48);
        v15 = v51;
      }

      while (v14 != v16);
      v4 = v42;
      v5 = v41;
LABEL_14:
      v30 = v15[2];
      v14 = 0x29E762000;
      if (!v30)
      {
        goto LABEL_28;
      }

      if (v30 <= 6)
      {

        v10 = v15;
      }

      else
      {
        sub_29E703634(v15, (v15 + 4), 0, 0xDuLL);
        v10 = v31;
      }

      sub_29E701C84(v15, v44);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  sub_29E6DD09C(0, &qword_2A18568D0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  v15 = swift_allocObject();
  v14 = "DISABLED_SLEEP_SCHEDULE_DETAIL";
  *(v15 + 1) = xmmword_29E762F30;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v11 + 8))(v13, v10);
  v15[7] = sub_29E751968();
  v15[8] = sub_29E703D1C(&qword_2A185A270, MEMORY[0x29EDC2A68], MEMORY[0x29EDC2A60]);
  sub_29E5FEBF4(v15 + 4);
  sub_29E751958();
LABEL_28:
  sub_29E7035C8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = *(v14 + 3888);
  sub_29E6CC108(v15);

  v38 = v45;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v5 + 8))(v38, v4);
  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E701C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_29E751908();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v48 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750DC8();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v47 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E7035C8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v44 = v39 - v9;
  sub_29E7035C8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v7);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v41 = v39 - v11;
  v12 = sub_29E752108();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v40 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = sub_29E7520C8();
  v14 = *(v39[0] - 8);
  MEMORY[0x2A1C7C4A8](v39[0]);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E74ED88();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E752258();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683988(a1);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_29E754D78();

  v52 = 0xD000000000000017;
  v53 = 0x800000029E75FB20;
  sub_29E74ED78();
  sub_29E703D1C(&qword_2A1858FE8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
  v25 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v25);

  v26 = v20;
  v27 = v21;
  v28 = v22;
  (*(v18 + 8))(v26, v17);
  v39[1] = v53;
  v39[2] = v52;
  v54 = v27;
  v55 = MEMORY[0x29EDC7800];
  v29 = sub_29E5FEBF4(&v52);
  (*(v22 + 16))(v29, v24, v27);
  sub_29E7035C8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v30 = v39[0];
  (*(v14 + 104))(v16, *MEMORY[0x29EDC7768], v39[0]);
  v31 = sub_29E7520D8();
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  v32 = v40;
  sub_29E7520F8();
  sub_29E7520E8();
  v33 = v32;
  v34 = v44;
  (*(v42 + 8))(v33, v43);
  (*(v14 + 8))(v16, v30);
  v35 = sub_29E752178();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

  v36 = sub_29E7543D8();
  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_29E7541D8();
  }

  (*(v45 + 104))(v47, *MEMORY[0x29EDC22C8], v46);
  (*(v49 + 104))(v48, *MEMORY[0x29EDC2A38], v50);
  sub_29E750ED8();
  return (*(v28 + 8))(v24, v27);
}

void sub_29E702440(void *a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + qword_2A185A248);
  v5 = *(a2 + qword_2A185A250);
  v6 = objc_allocWithZone(type metadata accessor for SleepApneaEventAllDataViewController(0));

  v7 = sub_29E6B3D0C(v4, v5);
  [a1 showViewController:v7 sender:a1];
}

void sub_29E702554()
{
  v1 = v0;
  v34 = *v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v32 - v5;
  v7 = sub_29E74F8B8();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7035C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v32 - v11;
  v13 = sub_29E74ED28();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_2A185A258) != 1)
  {
    sub_29E752068();
    v18 = sub_29E752088();
    v19 = sub_29E7546C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = v2;
      v22 = swift_slowAlloc();
      v37 = v22;
      *v20 = 136446210;
      v23 = sub_29E755178();
      v25 = sub_29E6B9C90(v23, v24, &v37);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Feature is off, returning default string.", v20, 0xCu);
      sub_29E5FECBC(v22);
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);

      (*(v3 + 8))(v6, v21);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    goto LABEL_13;
  }

  v32[1] = v2;
  v17 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:*(v1 + qword_2A185A250)];
  sub_29E7541D8();
  v33 = v17;
  sub_29E754788();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E703BE4(v12, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();

LABEL_13:
    (*(v35 + 8))(v9, v36);
    return;
  }

  (*(v14 + 32))(v16, v12, v13);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v35 + 8))(v9, v36);
  sub_29E6DD09C(0, &qword_2A1A7D3D8, &qword_2A1A7D3D0, MEMORY[0x29EDCA100]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29E762F30;
  v27 = sub_29E74EC98();
  v28 = HKLocalizedStringForDateAndTemplate();

  if (v28)
  {
    v29 = sub_29E7541D8();
    v31 = v30;

    *(v26 + 56) = MEMORY[0x29EDC99B0];
    *(v26 + 64) = sub_29E67E9AC();
    *(v26 + 32) = v29;
    *(v26 + 40) = v31;
    sub_29E7541A8();

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E702E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_29E74ED88();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v29 = sub_29E74F8B8();
  v12 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E7541D8() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v27[1] = v3;
  v28 = v7;
  v17 = sub_29E755028();

  if (v17)
  {
LABEL_13:
    v22 = sub_29E750458();
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    (*(v12 + 8))(v14, v29);
    sub_29E7521F8();
    v23 = sub_29E750448();
    a3[3] = v22;
    result = sub_29E703D1C(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
    a3[4] = result;
    *a3 = v23;
    return result;
  }

  if (sub_29E7541D8() == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = sub_29E755028();

    if ((v20 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E703D1C(&qword_2A1856D80, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  sub_29E702554();
  v30 = 0x74497265746F6F46;
  v31 = 0xEB000000005F6D65;
  sub_29E74ED78();
  v24 = sub_29E74ED48();
  v26 = v25;
  (*(v8 + 8))(v10, v28);
  MEMORY[0x29ED96C20](v24, v26);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E703D1C(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

void sub_29E703340()
{

  v1 = *(v0 + qword_2A185A250);
}

uint64_t sub_29E703390()
{
  v0 = sub_29E750D58();

  v1 = *(v0 + qword_2A185A250);

  return swift_deallocClassInstance();
}

uint64_t sub_29E70343C()
{
  sub_29E751768();
  sub_29E7547D8();
  sub_29E751A58();
  return sub_29E7547D8();
}

uint64_t sub_29E70348C()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v10 - v5;
  sub_29E750E28();
  sub_29E750E18();
  v7 = *(v1 + 8);
  v7(v6, v0);
  sub_29E751098();
  v8 = sub_29E750E68();
  sub_29E751758();
  v7(v4, v0);
  return v8;
}

void sub_29E7035C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E703634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_29E6DD09C(0, &qword_2A18568D0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_29E703740()
{
  result = qword_2A1A7BFA0;
  if (!qword_2A1A7BFA0)
  {
    sub_29E703B68(255, &qword_2A1A7BF98, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BFA0);
  }

  return result;
}

void sub_29E7037C8(uint64_t a1)
{
  if (!qword_2A185A278)
  {
    sub_29E7038B4(255);
    sub_29E754668();
    sub_29E703D1C(&qword_2A185A290, sub_29E7038B4, MEMORY[0x29EDB8A00]);
    sub_29E703D1C(&qword_2A185A298, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
    v1 = sub_29E7526A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A278);
    }
  }
}

void sub_29E7038B4(uint64_t a1)
{
  if (!qword_2A185A280)
  {
    sub_29E703934(255);
    sub_29E609CF8(255, &qword_2A1A7BCD0, MEMORY[0x29EDC9F18]);
    v1 = sub_29E7526F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A280);
    }
  }
}

void sub_29E703934(uint64_t a1)
{
  if (!qword_2A185A288)
  {
    sub_29E7039A0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A288);
    }
  }
}

void sub_29E7039A0(uint64_t a1)
{
  if (!qword_2A1858FA8)
  {
    sub_29E609B5C(255, &qword_2A1858478, 0x29EDBAD60);
    v1 = sub_29E754448();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858FA8);
    }
  }
}

void sub_29E703A08(uint64_t a1)
{
  if (!qword_2A185A2A0)
  {
    sub_29E7037C8(255);
    sub_29E703D1C(&qword_2A185A2A8, sub_29E7037C8, MEMORY[0x29EDB89A8]);
    v1 = sub_29E752618();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A2A0);
    }
  }
}

void sub_29E703A9C(uint64_t a1)
{
  if (!qword_2A185A2B0)
  {
    sub_29E703A08(255);
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E703D1C(&qword_2A185A2B8, sub_29E703A08, MEMORY[0x29EDB88C8]);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A2B0);
    }
  }
}

void sub_29E703B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E703BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E7035C8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E703C8C()
{
  result = qword_2A185A2D0;
  if (!qword_2A185A2D0)
  {
    sub_29E7035C8(255, &qword_2A185A2C8, MEMORY[0x29EDB8A18], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A2D0);
  }

  return result;
}

uint64_t sub_29E703D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29E703D80()
{
  v1 = v0;
  v2 = sub_29E74EFE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x29EDC6908])
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v8 = objc_opt_self();
    v9 = [v8 hk_sleepScoreDurationComponentColor];
    [v7 setKeyColor_];

    v10 = [v8 hk_chartOverlayPillLightColor];
    [v7 setContextViewPrimaryTextColor_];

    v11 = [v8 hk_defaultSecondaryTextColor];
  }

  else if (v6 == *MEMORY[0x29EDC6900])
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v12 = objc_opt_self();
    v13 = [v12 hk_sleepScoreBedtimeComponentColor];
    [v7 setKeyColor_];

    v14 = [v12 hk_chartOverlayPillDarkColor];
    [v7 setContextViewPrimaryTextColor_];

    v11 = [v12 hk_defaultSecondaryTextColor];
  }

  else
  {
    if (v6 != *MEMORY[0x29EDC68F8])
    {
      v20 = [objc_opt_self() sleepColors];
      (*(v3 + 8))(v5, v2);
      return v20;
    }

    v7 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v15 = objc_opt_self();
    v16 = [v15 hk_sleepScoreInterruptionsComponentColor];
    [v7 setKeyColor_];

    v17 = [v15 hk_chartOverlayPillDarkColor];
    [v7 setContextViewPrimaryTextColor_];

    v11 = [v15 hk_defaultSecondaryTextColor];
  }

  v18 = v11;
  [v7 setContextViewSecondaryTextColor_];

  return v7;
}

id sub_29E7040F8(uint64_t a1)
{
  v1 = sub_29E7287C4(sub_29E705DB0, &v6, a1);
  v2 = sub_29E704640(v1);
  v4 = v3;

  return sub_29E70554C(v2, v4 & 1);
}

id sub_29E704170(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_maxValue] = a1;
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_increment] = a2;
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4770]) init];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredAxisStyle];
  [v8 setPreferredStyle_];

  type metadata accessor for SleepScoreComponentLabelDimension();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  [v8 setLabelDimension_];

  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithConfiguration_, v8);

  return v11;
}

void sub_29E704294(uint64_t *a2@<X8>)
{
  sub_29E6163F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E7655E0;
  sub_29E7045EC();
  sub_29E754C28();
  v3 = [objc_allocWithZone(MEMORY[0x29EDC4418]) init];
  [v3 setLabelType_];
  v4 = sub_29E74F188();
  [v3 setLocation_];

  v5 = sub_29E754198();

  [v3 setText_];

  *(v2 + 32) = v3;
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4418]) init];
  [v6 setLabelType_];
  v7 = sub_29E74F188();
  [v6 setLocation_];

  *(v2 + 40) = v6;
  *a2 = v2;
}

unint64_t sub_29E7045EC()
{
  result = qword_2A185A348;
  if (!qword_2A185A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A348);
  }

  return result;
}

uint64_t sub_29E704640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v4 = a1;

  sub_29E7046D8(&v4);
  if (v1 >> 1 < *(v4 + 2))
  {
    v2 = *&v4[8 * (v1 >> 1) + 32];

    return v2;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_29E7046D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E705088(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_29E754FC8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_29E754428();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_29E70480C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_29E70480C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_29E704F4C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_29E704D58((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29E6DAFDC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_29E6DAFDC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_29E704D58((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_29E704D58(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_29E704F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E705DF4(0, &qword_2A1859810, sub_29E6DD268, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_29E70509C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29E753F18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v50 = &v45 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v45 - v13;
  v15 = sub_29E74EFA8();
  v16 = [a2 generateLineSeriesWithColor:v15 timeScope:5];

  v17 = sub_29E74EFD8();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v17;
    v46 = v10;
    v48 = a2;
    v19 = sub_29E754598();
    v20 = sub_29E754598();
    v21 = a1;
    v22 = [objc_opt_self() valueRangeWithMinValue:v19 maxValue:v20];

    v23 = objc_allocWithZone(type metadata accessor for SleepScoreComponentYAxis());
    v24 = sub_29E704170(v18, 10);
    [v16 setYAxis_];

    v25 = objc_opt_self();
    v26 = v22;
    v47 = v22;
    v27 = v22;
    v28 = v16;
    v29 = [v25 ruleWithDefaultAxisBounds:v26 axisBoundsOverrides:0 noDataAxisBounds:v27];
    [v16 setAxisScalingRule_];

    v30 = sub_29E74EFE8();
    (*(*(v30 - 8) + 16))(v14, a3, v30);
    (*(v7 + 104))(v14, *MEMORY[0x29EDC43A0], v6);
    v49 = v7;
    v31 = v14;
    v32 = *(v7 + 16);
    v33 = v50;
    v34 = v31;
    v32(v50);
    [v28 setSeriesDataSourceContext_];
    sub_29E751758();
    v35 = [v21 displayTypeController];
    v36 = [objc_opt_self() appleSleepScoreType];
    v37 = [v35 displayTypeForObjectType_];

    v38 = [v21 chartDataCacheController];
    v45 = v37;
    v39 = [v38 interactiveChartsCacheForDisplayType:v37 timeScope:5];

    if (v39)
    {
      v40 = [objc_allocWithZone(MEMORY[0x29EDC4430]) init];
      [v40 setChartCache_];
      [v28 setDataSource_];
      (v32)(v33, v34, v6);
      v41 = objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter(0));
      (v32)(v46, v33, v6);
      v42 = sub_29E753EC8();
      v43 = *(v49 + 8);
      v43(v33, v6);
      v44 = objc_allocWithZone(MEMORY[0x29EDC4700]);
      [v44 initWithGraphSeries:v28 baseDisplayType:v48 valueFormatter:v42 dataTypeCode:341];

      v43(v34, v6);
      return;
    }
  }

  __break(1u);
}

id sub_29E70554C(uint64_t a1, char a2)
{
  v4 = sub_29E754188();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E754168();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  if (a2)
  {
    v9 = sub_29E754198();
    v10 = HKUILocalizedString();

    if (v10)
    {
      sub_29E7541D8();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    v21 = a1;
    sub_29E754128();
    sub_29E754148();
    v21 = sub_29E74EFD8();
    sub_29E754128();
    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v7);
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  v14 = [objc_allocWithZone(MEMORY[0x29EDC4680]) init];
  sub_29E74EFB8();
  v15 = sub_29E754198();

  [v14 setTitle_];

  v16 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v14 setMetricColors_];

  v17 = sub_29E703D80();
  [v14 setSelectedMetricColors_];

  if (v12)
  {
    v18 = sub_29E754198();
  }

  else
  {
    v18 = 0;
  }

  [v14 setValue_];

  [v14 setUnit_];
  return v14;
}

uint64_t sub_29E70588C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v26 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x29EDCA190];
  for (i = a2; ; a2 = i)
  {
    v6 = result <= a2;
    if (v4 > 0)
    {
      v6 = result >= a2;
    }

    if (v6)
    {
      if ((result != a2) | v29 & 1 || !(v30 & 1 | (v31 != 0x8000000000000000)))
      {
        return v5;
      }

      v29 = 1;
      v7 = result;
    }

    else
    {
      v7 = result + v4;
      if (__OFADD__(result, v4))
      {
        v30 = 0;
        v31 = 0x8000000000000000;
        v7 = v26;
      }

      else
      {
        v31 = 0;
        v30 = 1;
      }
    }

    v35[2] = result;
    sub_29E704294(v35);
    if (v3)
    {
      goto LABEL_42;
    }

    v8 = v35[0];
    v9 = v35[0] >> 62;
    if (v35[0] >> 62)
    {
      v10 = sub_29E754C98();
    }

    else
    {
      v10 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v5 >> 62;
    if (v5 >> 62)
    {
      v25 = sub_29E754C98();
      v13 = v25 + v10;
      if (__OFADD__(v25, v10))
      {
LABEL_41:
        __break(1u);
LABEL_42:

        return v5;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v11)
      {
        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_29E754C98();
      goto LABEL_24;
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_29E754D98();
    v5 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v33 = v10;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_2;
    }

LABEL_29:
    if (((v16 >> 1) - v15) < v33)
    {
      goto LABEL_45;
    }

    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_47;
      }

      sub_29E705DF4(0, &qword_2A185A358, sub_29E705BFC, MEMORY[0x29EDC9A40]);
      sub_29E705C48();
      for (j = 0; j != v17; ++j)
      {
        v19 = sub_29E6D4D28(v34, j, v8);
        v21 = *v20;
        (v19)(v34, 0);
        *(v14 + 8 * v15 + 32 + 8 * j) = v21;
      }
    }

    else
    {
      sub_29E705BFC();
      swift_arrayInitWithCopy();
    }

    result = v32;
    v4 = a3;
    if (v33 >= 1)
    {
      v22 = *(v14 + 16);
      v23 = __OFADD__(v22, v33);
      v24 = v22 + v33;
      if (v23)
      {
        goto LABEL_46;
      }

      *(v14 + 16) = v24;
    }

LABEL_3:
    ;
  }

  result = sub_29E754C98();
  v17 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_2:

  result = v32;
  if (v33 <= 0)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_29E705BFC()
{
  result = qword_2A185A350;
  if (!qword_2A185A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A350);
  }

  return result;
}

unint64_t sub_29E705C48()
{
  result = qword_2A185A360;
  if (!qword_2A185A360)
  {
    sub_29E705DF4(255, &qword_2A185A358, sub_29E705BFC, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A360);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreComponentOverlayContext(uint64_t a1)
{
  result = qword_2A185A368;
  if (!qword_2A185A368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E705D44(uint64_t a1)
{
  result = sub_29E74EFE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E705DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E753E98();
  *a1 = result;
  return result;
}

void sub_29E705DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepApneaEventPDFSectionProvider(uint64_t a1)
{
  result = qword_2A185A378;
  if (!qword_2A185A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E705ECC(uint64_t a1)
{
  result = sub_29E609CF8(319, &qword_2A185A388, MEMORY[0x29EDC2728]);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SleepApneaEventSummaryViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E705F60(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_29E70A6D4(0, &qword_2A185A390, MEMORY[0x29EDC1C50]);
  v2[26] = swift_task_alloc();
  v3 = sub_29E74ED28();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E706068, 0, 0);
}

uint64_t sub_29E706068()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_29E602E20(v0[25], (v0 + 2));
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  type metadata accessor for SleepApneaEventPDFSectionProvider(0);
  type metadata accessor for SleepApneaEventSummaryViewModel(0);
  sub_29E74EC68();
  v4 = sub_29E754A08();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v0[7] = v4;
  v0[8] = v6;
  sub_29E709F88();
  v0[30] = sub_29E750C48();
  sub_29E709FDC((v0 + 2));
  v7 = sub_29E751D08();
  v0[31] = v7;
  v8 = MEMORY[0x29EDC2C70];
  v0[12] = v7;
  v0[13] = v8;
  sub_29E5FEBF4(v0 + 9);
  sub_29E751CF8();
  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = sub_29E706228;

  return sub_29E7068A0((v0 + 14));
}

uint64_t sub_29E706228()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_29E706790;
  }

  else
  {
    v2 = sub_29E70633C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E70633C()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 9;
  *(v3 + 24) = v0 + 14;
  v4 = MEMORY[0x29EDC2C70];
  v0[22] = v1;
  v0[23] = v4;
  sub_29E5FEBF4(v0 + 19);
  sub_29E751CE8();

  v5 = sub_29E750488();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_29E706488;

  return MEMORY[0x2A1C60DE8]();
}

uint64_t sub_29E706488(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    sub_29E70A038(*(v4 + 208));
    v5 = sub_29E706810;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_29E7065B8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E7065B8()
{
  v1 = v0[31];
  v2 = v0[24];
  sub_29E70A200(0, &qword_2A1858F38, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E762F30;
  sub_29E602E20((v0 + 19), v3 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E762F30;
  v5 = MEMORY[0x29EDC2C70];
  *(v4 + 56) = v1;
  *(v4 + 64) = v5;
  sub_29E5FEBF4((v4 + 32));
  sub_29E751CF8();
  sub_29E7504C8();

  sub_29E5FECBC(v0 + 19);
  sub_29E5FECBC(v0 + 14);
  sub_29E5FECBC(v0 + 9);
  v6 = sub_29E7504D8();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_29E706790()
{

  sub_29E5FECBC((v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E706810()
{

  sub_29E5FECBC(v0 + 19);
  sub_29E5FECBC(v0 + 14);
  sub_29E5FECBC(v0 + 9);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E7068A0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_29E706938;

  return sub_29E707E2C((v2 + 2));
}

uint64_t sub_29E706938()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29E706C98, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 128) = v3;
    *v3 = v2;
    v3[1] = sub_29E706AAC;

    return sub_29E708B0C(v2 + 56);
  }
}

uint64_t sub_29E706AAC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_29E706CB0;
  }

  else
  {
    v2 = sub_29E706BC0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E706BC0()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 7;
  *(v2 + 24) = v0 + 2;
  v3 = sub_29E751D08();
  v4 = MEMORY[0x29EDC2C70];
  v1[3] = v3;
  v1[4] = v4;
  sub_29E5FEBF4(v1);
  sub_29E751CF8();

  sub_29E5FECBC(v0 + 7);
  sub_29E5FECBC(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_29E706CB0()
{
  sub_29E5FECBC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E706D14()
{
  sub_29E70A6D4(0, &qword_2A1858F58, MEMORY[0x29EDC2C48]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v14[-1] - v1;
  v3 = sub_29E751CA8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E751C88();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  sub_29E7505B8();
  sub_29E751C98();
  v6 = sub_29E751CD8();
  v7 = MEMORY[0x29EDC2C50];
  v15 = v6;
  v16 = MEMORY[0x29EDC2C50];
  sub_29E5FEBF4(v14);
  sub_29E751CC8();
  v8 = sub_29E750B38();
  sub_29E5FECBC(v14);
  v5(v2, 1, 1, v4);
  sub_29E7505B8();
  sub_29E751C98();
  v15 = v6;
  v16 = v7;
  sub_29E5FEBF4(v14);
  sub_29E751CC8();
  v9 = sub_29E750B38();
  sub_29E5FECBC(v14);
  sub_29E70A18C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E762F40;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v11 = MEMORY[0x29ED93440]();

  return v11;
}

uint64_t sub_29E706F54()
{
  v0 = sub_29E751D08();
  v1 = MEMORY[0x29EDC2C70];
  v9 = v0;
  v10 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v2 = sub_29E750B38();
  sub_29E5FECBC(v8);
  v9 = v0;
  v10 = v1;
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v3 = sub_29E750B38();
  sub_29E5FECBC(v8);
  v9 = v0;
  v10 = v1;
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v4 = sub_29E750B38();
  sub_29E5FECBC(v8);
  sub_29E70A18C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E764170;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  v6 = MEMORY[0x29ED93440]();

  return v6;
}

uint64_t sub_29E7070A0()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v21[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_29E750568();
  v5 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v6 = sub_29E754198();
  v20 = v0;
  v7 = v6;

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v8 = sub_29E754068();

  v9 = [v5 initWithString:v7 attributes:v8];

  v10 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v22 = v10;
  v23 = MEMORY[0x29EDC2CE0];
  v21[0] = v9;
  v11 = sub_29E750B38();
  sub_29E5FECBC(v21);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v4(v3, v20);
  sub_29E750588();
  v12 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v13 = sub_29E754198();

  v14 = sub_29E754068();

  v15 = [v12 initWithString:v13 attributes:v14];

  v22 = v10;
  v23 = MEMORY[0x29EDC2CE0];
  v21[0] = v15;
  v16 = sub_29E750B38();
  sub_29E5FECBC(v21);
  sub_29E70A18C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F40;
  *(v17 + 32) = v11;
  *(v17 + 40) = v16;
  v18 = MEMORY[0x29ED93440]();

  return v18;
}

uint64_t sub_29E707440()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v21[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_29E750568();
  v5 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v6 = sub_29E754198();
  v20 = v0;
  v7 = v6;

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v8 = sub_29E754068();

  v9 = [v5 initWithString:v7 attributes:v8];

  v10 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v22 = v10;
  v23 = MEMORY[0x29EDC2CE0];
  v21[0] = v9;
  v11 = sub_29E750B38();
  sub_29E5FECBC(v21);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v4(v3, v20);
  sub_29E750588();
  v12 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v13 = sub_29E754198();

  v14 = sub_29E754068();

  v15 = [v12 initWithString:v13 attributes:v14];

  v22 = v10;
  v23 = MEMORY[0x29EDC2CE0];
  v21[0] = v15;
  v16 = sub_29E750B38();
  sub_29E5FECBC(v21);
  sub_29E70A18C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F40;
  *(v17 + 32) = v11;
  *(v17 + 40) = v16;
  v18 = MEMORY[0x29ED93440]();

  return v18;
}

uint64_t sub_29E7077E0()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v1 + 8))(v3, v0);
  sub_29E750568();
  v4 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v5 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v6 = sub_29E754068();

  v7 = [v4 initWithString:v5 attributes:v6];

  v15 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v16 = MEMORY[0x29EDC2CE0];
  v14[0] = v7;
  v8 = sub_29E750B38();
  sub_29E5FECBC(v14);
  v15 = sub_29E751D08();
  v16 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v14);
  sub_29E751CF8();
  v9 = sub_29E750B38();
  sub_29E5FECBC(v14);
  sub_29E70A18C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E762F40;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v11 = MEMORY[0x29ED93440]();

  return v11;
}

void sub_29E707AAC()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v1 + 8))(v3, v0);
  sub_29E750588();
  v5 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v6 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v7 = sub_29E754068();

  v8 = [v5 initWithString:v6 attributes:v7];

  v17 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v18 = MEMORY[0x29EDC2CE0];
  v16[0] = v8;
  v9 = sub_29E750B38();
  sub_29E5FECBC(v16);
  v10 = v4;
  v11 = sub_29E754198();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (v12)
  {
    sub_29E750538();
    v17 = sub_29E751C18();
    v18 = MEMORY[0x29EDC2C28];
    sub_29E5FEBF4(v16);
    sub_29E751C08();
    v13 = sub_29E750B38();
    sub_29E5FECBC(v16);
    sub_29E70A18C(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29E762F40;
    *(v14 + 32) = v9;
    *(v14 + 40) = v13;
    MEMORY[0x29ED93440]();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E707E2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_29E74F8B8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_29E74ED28();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_29E70A278(0, &qword_2A185A3E0, &qword_2A185A3E8, 0x29EDBAD10, MEMORY[0x29EDBA238]);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E70802C, 0, 0);
}

uint64_t sub_29E70802C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v18 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = MEMORY[0x29EDBA210];
  sub_29E70A358(0, &qword_2A185A3F0, &qword_2A185A3F8, MEMORY[0x29EDBA210]);
  sub_29E70A278(0, &qword_2A185A3F8, &qword_2A185A3E8, 0x29EDBAD10, v4);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v5 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v6 = objc_opt_self();
  v7 = *(type metadata accessor for SleepApneaEventPDFSectionProvider(0) + 20);
  *(v0 + 152) = v7;
  v8 = v3 + v7;
  v19 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  sub_29E74EC68();
  v9 = sub_29E74EC98();
  (*(v2 + 8))(v1, v18);
  v10 = sub_29E74EC98();
  v11 = [v6 predicateForSamplesWithStartDate:v9 endDate:v10 options:0];

  sub_29E609B5C(0, &qword_2A185A3E8, 0x29EDBAD10);
  sub_29E753F88();

  v12 = MEMORY[0x29EDB9980];
  sub_29E70A358(0, &qword_2A185A400, &qword_2A185A408, MEMORY[0x29EDB9980]);
  sub_29E70A278(0, &qword_2A185A408, &qword_2A185A3E8, 0x29EDBAD10, v12);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED91220](KeyPath, 1);
  sub_29E753FA8();
  v14 = *(v8 + *(v19 + 24));
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_29E7083F4;
  v16 = *(v0 + 104);

  return MEMORY[0x2A1C5B578](v14, v16);
}

uint64_t sub_29E7083F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_29E708A64;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_29E70851C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

void *sub_29E70851C()
{
  v1 = sub_29E709A80(*(v0 + 144));

  if (v1 >> 62)
  {
    v2 = sub_29E754C98();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x29EDCA190];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v50 = MEMORY[0x29EDCA190];
  result = sub_29E6DBD84(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 32);
  v46 = *(v0 + 40);
  v7 = v50;
  v8 = objc_opt_self();
  v9 = 0;
  v10 = v3;
  v42 = v3 & 0xC000000000000001;
  v44 = v8;
  v11 = (v5 + 16);
  v48 = v2;
  v49 = v10;
  do
  {
    if (v42)
    {
      v12 = MEMORY[0x29ED976A0](v9);
    }

    else
    {
      v12 = *(v10 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = *(v0 + 80);
    v15 = *(v0 + 48);
    v16 = [v12 quantity];
    v17 = [v44 countUnit];
    [v16 doubleValueForUnit_];
    v19 = v18;

    v20 = [v13 endDate];
    sub_29E74ECD8();

    *(v15 + *(v6 + 20)) = v19;
    (*v11)(v15 + *(v6 + 24), v15, v14);
    v22 = *(v50 + 16);
    v21 = *(v50 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_29E6DBD84((v21 > 1), v22 + 1, 1);
    }

    v23 = *(v0 + 48);
    ++v9;
    *(v50 + 16) = v22 + 1;
    sub_29E70A3C4(v23, v50 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
    v10 = v49;
  }

  while (v48 != v9);

LABEL_14:
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 152);
  v43 = *(v0 + 112);
  v45 = *(v0 + 104);
  v47 = *(v0 + 120);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);
  v26 = *(v0 + 56);
  v27 = *(v0 + 16);
  v40 = *(v0 + 24);
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v24 + 8))(v25, v26);
  sub_29E750578();
  v28 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v29 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v30 = sub_29E754068();

  v31 = [v28 initWithString:v29 attributes:v30];

  v27[3] = &type metadata for SleepApneaEventPDFChartRenderable;
  v27[4] = sub_29E6EC3E0();
  v32 = swift_allocObject();
  *v27 = v32;
  v33 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart(0);
  v32[10] = v33;
  v32[11] = sub_29E70A42C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart, &unk_29E7695B0);
  v34 = sub_29E5FEBF4(v32 + 7);
  sub_29E5FEC58(v40 + v41, v34 + v33[5]);
  *v34 = v7;
  v35 = v34 + v33[6];
  *v35 = 0x4085680000000000;
  v35[8] = 0;
  v36 = v34 + v33[7];
  *v36 = 0x4064000000000000;
  v36[8] = 0;
  v37 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v38 = MEMORY[0x29EDC2CE0];
  v32[5] = v37;
  v32[6] = v38;
  v32[2] = v31;
  (*(v43 + 8))(v47, v45);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_29E708A64()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E708B0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepApneaEventPDFAlertsChartPoint(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_29E74F8B8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_29E74ED28();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_29E70A278(0, &qword_2A185A3A8, &qword_2A185A3B0, 0x29EDBAA60, MEMORY[0x29EDBA238]);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E708D0C, 0, 0);
}

uint64_t sub_29E708D0C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v18 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = MEMORY[0x29EDBA210];
  sub_29E70A2E0(0, &qword_2A185A3B8, &qword_2A185A3C0, MEMORY[0x29EDBA210]);
  sub_29E70A278(0, &qword_2A185A3C0, &qword_2A185A3B0, 0x29EDBAA60, v4);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v5 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v6 = objc_opt_self();
  v7 = *(type metadata accessor for SleepApneaEventPDFSectionProvider(0) + 20);
  *(v0 + 152) = v7;
  v8 = v3 + v7;
  v19 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  sub_29E74EC68();
  v9 = sub_29E74EC98();
  (*(v2 + 8))(v1, v18);
  v10 = sub_29E74EC98();
  v11 = [v6 predicateForSamplesWithStartDate:v9 endDate:v10 options:0];

  sub_29E609B5C(0, &qword_2A185A3B0, 0x29EDBAA60);
  sub_29E753F88();

  v12 = MEMORY[0x29EDB9980];
  sub_29E70A2E0(0, &qword_2A185A3C8, &qword_2A185A3D0, MEMORY[0x29EDB9980]);
  sub_29E70A278(0, &qword_2A185A3D0, &qword_2A185A3B0, 0x29EDBAA60, v12);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED91220](KeyPath, 0);
  sub_29E753FA8();
  v14 = *(v8 + *(v19 + 24));
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_29E7090D4;
  v16 = *(v0 + 104);

  return MEMORY[0x2A1C5B578](v14, v16);
}

uint64_t sub_29E7090D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_29E7096CC;
  }

  else
  {
    v4 = sub_29E7091E8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

void *sub_29E7091E8()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    v2 = sub_29E754C98();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x29EDCA190];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v42 = MEMORY[0x29EDCA190];
  result = sub_29E6DBDD4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = v42;
  v38 = *(v0 + 136) + 32;
  v40 = v1 & 0xC000000000000001;
  v8 = (*(v0 + 88) + 16);
  v41 = v2;
  do
  {
    if (v40)
    {
      v9 = MEMORY[0x29ED976A0](v4, *(v0 + 136));
    }

    else
    {
      v9 = *(v38 + 8 * v4);
    }

    v10 = v9;
    v11 = *(v0 + 80);
    v12 = *(v0 + 48);
    v13 = [v9 startDate];
    sub_29E74ECD8();

    v14 = [v10 endDate];
    sub_29E74ECD8();

    (*v8)(v12 + *(v6 + 24), v12, v11);
    v16 = *(v42 + 16);
    v15 = *(v42 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_29E6DBDD4((v15 > 1), v16 + 1, 1);
    }

    v17 = *(v0 + 48);
    ++v4;
    *(v42 + 16) = v16 + 1;
    sub_29E70A3C4(v17, v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
  }

  while (v41 != v4);

LABEL_14:
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 152);
  v36 = *(v0 + 112);
  v37 = *(v0 + 104);
  v39 = *(v0 + 120);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v20 = *(v0 + 56);
  v21 = *(v0 + 16);
  v34 = *(v0 + 24);
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v19 + 8))(v18, v20);
  sub_29E750578();
  v22 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v23 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v24 = sub_29E754068();

  v25 = [v22 initWithString:v23 attributes:v24];

  v21[3] = &type metadata for SleepApneaEventPDFChartRenderable;
  v21[4] = sub_29E6EC3E0();
  v26 = swift_allocObject();
  *v21 = v26;
  v27 = type metadata accessor for SleepApneaEventPDFAlertsChart(0);
  v26[10] = v27;
  v26[11] = sub_29E70A42C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart, &unk_29E76ECC0);
  v28 = sub_29E5FEBF4(v26 + 7);
  sub_29E5FEC58(v34 + v35, v28);
  *(v28 + v27[5]) = v7;
  v29 = v28 + v27[6];
  *v29 = 0x4085680000000000;
  v29[8] = 0;
  v30 = v28 + v27[7];
  *v30 = 0x4034000000000000;
  v30[8] = 0;
  v31 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v32 = MEMORY[0x29EDC2CE0];
  v26[5] = v31;
  v26[6] = v32;
  v26[2] = v25;
  (*(v36 + 8))(v39, v37);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_29E7096CC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E709774(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v7, v4);
  sub_29E750568();
  v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v9 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v10 = sub_29E754068();

  v11 = [v8 initWithString:v9 attributes:v10];

  v20 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v21 = MEMORY[0x29EDC2CE0];
  v19[0] = v11;
  v12 = sub_29E750B38();
  sub_29E5FECBC(v19);
  sub_29E70A200(0, &qword_2A1858F38, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  v18 = xmmword_29E762F40;
  *(v13 + 16) = xmmword_29E762F40;
  sub_29E602E20(a1, v13 + 32);
  sub_29E602E20(a2, v13 + 72);
  v20 = &type metadata for SleepApneaEventPDFChartSectionRenderable;
  v21 = sub_29E603664();
  v19[0] = v13;
  v14 = sub_29E750B38();
  sub_29E5FECBC(v19);
  sub_29E70A18C(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = MEMORY[0x29ED93440]();

  return v16;
}

id sub_29E709A80(unint64_t a1)
{
  v2 = sub_29E74EE78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v24 = v4;
    v7 = sub_29E754C98();
    v4 = v24;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x29EDCA190];
  if (!v7)
  {
    return v8;
  }

  v31 = a1 & 0xC000000000000001;
  v25 = v3;
  v26 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x29ED976A0](0, a1);
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    v33 = v8;
    v10 = [objc_opt_self() hk_gregorianCalendar];
    sub_29E74EE28();

    v11 = 0;
    v3 = &off_29F370000;
    v29 = v6;
    v30 = v7;
    v12 = v9;
    v28 = a1;
    do
    {
      if (v31)
      {
        v4 = MEMORY[0x29ED976A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_25;
        }

        v4 = *(a1 + 8 * v11 + 32);
      }

      v32 = v4;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = v12;
      result = [v12 v3[360]];
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = sub_29E74EE08();
      v19 = [v17 0x1FBD87CC3];

      v20 = v3;
      result = [v32 v3[360]];
      if (!result)
      {
        goto LABEL_31;
      }

      v21 = result;
      v22 = sub_29E74EE08();
      v23 = [v21 0x1FBD87CC3];

      if (v19 == v23)
      {
        v13 = v32;
        v12 = sub_29E70A474(v15, v32);
      }

      else
      {
        v13 = v15;
        MEMORY[0x29ED96CE0]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29E754418();
        }

        sub_29E754438();
        v12 = v32;
      }

      v3 = v20;

      ++v11;
      v6 = v29;
      a1 = v28;
    }

    while (v14 != v30);
    v3 = v12;
    MEMORY[0x29ED96CE0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_29:
  sub_29E754418();
LABEL_22:
  sub_29E754438();

  (v25[1])(v6, v26);
  return v33;
}

void sub_29E709E18(id *a1)
{
  v1 = [*a1 endDate];
  sub_29E74ECD8();
}

uint64_t sub_29E709E78(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750B38();
  v3 = sub_29E750B38();
  sub_29E70A18C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E762F40;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  v5 = MEMORY[0x29ED93440]();

  return v5;
}

uint64_t sub_29E709EF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E605728;

  return sub_29E705F60(a1);
}

unint64_t sub_29E709F88()
{
  result = qword_2A185A398;
  if (!qword_2A185A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A398);
  }

  return result;
}

uint64_t sub_29E70A038(uint64_t a1)
{
  sub_29E70A6D4(0, &qword_2A185A390, MEMORY[0x29EDC1C50]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E70A0B0()
{
  sub_29E750558();
  v0 = sub_29E750548();
  v1 = [v0 CGColor];

  v6[3] = sub_29E750DA8();
  v6[4] = MEMORY[0x29EDC2290];
  sub_29E5FEBF4(v6);
  sub_29E750D98();
  v2 = sub_29E750B38();
  sub_29E5FECBC(v6);
  sub_29E70A18C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E762F30;
  *(v3 + 32) = v2;
  v4 = MEMORY[0x29ED93440]();

  return v4;
}

void sub_29E70A18C(uint64_t a1)
{
  if (!qword_2A1858F48)
  {
    sub_29E70A200(255, &qword_2A1858F50, MEMORY[0x29EDC9A40]);
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858F48);
    }
  }
}

void sub_29E70A200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E609CF8(255, &qword_2A1858F40, MEMORY[0x29EDC1DD8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E70A278(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609B5C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E70A2E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E70A278(255, a3, &qword_2A185A3B0, 0x29EDBAA60, a4);
    v5 = sub_29E754FE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E70A358(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E70A278(255, a3, &qword_2A185A3E8, 0x29EDBAD10, a4);
    v5 = sub_29E754FE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E70A3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E70A42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_29E70A474(void *a1, void *a2)
{
  v4 = sub_29E74ED28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v27 - v9;
  v11 = [a1 endDate];
  sub_29E74ECD8();

  v12 = [a1 startDate];
  sub_29E74ECD8();

  sub_29E74EC88();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  v16 = [a2 endDate];
  sub_29E74ECD8();

  v17 = [a2 startDate];
  sub_29E74ECD8();

  sub_29E74EC88();
  v19 = v18;
  v15(v8, v4);
  v15(v10, v4);
  if (v14 == v19)
  {
    v20 = [a1 quantity];
    [v20 _value];
    v22 = v21;

    v23 = [a2 quantity];
    [v23 _value];
    v25 = v24;

    if (v25 >= v22)
    {
      return a1;
    }

    else
    {
      return a2;
    }
  }

  else if (v19 >= v14)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void sub_29E70A6D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E70A728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

char *sub_29E70A79C(void *a1, void *a2)
{
  v3 = v2;
  v59 = a2;
  v61 = a1;
  sub_29E70EB04(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v67 = &v57 - v5;
  sub_29E70E8EC(0);
  v68 = v6;
  v69 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E70E9F0(0);
  v70 = v8;
  v71 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_cancellables] = MEMORY[0x29EDCA1A0];
  v10 = *MEMORY[0x29EDC6870];
  v11 = sub_29E7541D8();
  v58 = v11;
  v13 = v12;
  v14 = *MEMORY[0x29EDC6810];
  v15 = sub_29E7541D8();
  v62 = v15;
  v17 = v16;
  sub_29E70EB04(0, &qword_2A18586C8, sub_29E68FBF4, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v19 = MEMORY[0x29EDC9A98];
  *(inited + 48) = 0;
  *(inited + 72) = v19;
  *(inited + 80) = v15;
  v60 = v17;
  *(inited + 88) = v17;
  *(inited + 120) = v19;
  *(inited + 96) = 0;
  v20 = v10;
  v64 = v14;

  sub_29E68B200(inited);
  swift_setDeallocating();
  sub_29E68FBF4();
  swift_arrayDestroy();
  v21 = sub_29E754068();

  v22 = v59;
  [v59 registerDefaults_];

  swift_beginAccess();
  LOBYTE(v72) = 0;
  sub_29E752868();
  swift_endAccess();
  v23 = v61;
  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore] = v61;
  v24 = type metadata accessor for UserDefaultsBooleanObserver();
  v25 = objc_allocWithZone(v24);
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
  v63 = MEMORY[0x29EDB8A48];
  sub_29E70EC58(0, &qword_2A1A7D4E8, MEMORY[0x29EDB8A48]);
  swift_allocObject();
  v61 = v23;
  v27 = v22;
  *&v25[v26] = sub_29E752778();
  *&v25[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
  *&v25[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v27;
  v28 = &v25[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  *v28 = v58;
  v28[1] = v13;
  v75.receiver = v25;
  v75.super_class = v24;
  v29 = v27;
  v30 = objc_msgSendSuper2(&v75, sel_init);
  v31 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
  v32 = v30;
  [v29 addObserver:v32 forKeyPath:v20 options:0 context:&v30[v31]];

  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] = v32;
  v33 = objc_allocWithZone(v24);
  v34 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
  swift_allocObject();
  v35 = v29;
  *&v33[v34] = sub_29E752778();
  *&v33[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
  *&v33[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v35;
  v36 = &v33[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  v37 = v60;
  *v36 = v62;
  v36[1] = v37;
  v74.receiver = v33;
  v74.super_class = v24;
  v38 = v35;
  v39 = objc_msgSendSuper2(&v74, sel_init);
  v40 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
  v41 = v39;
  v42 = &v39[v40];
  v43 = v64;
  [v38 addObserver:v41 forKeyPath:v64 options:0 context:v42];

  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver] = v41;
  v44 = type metadata accessor for SleepFocusPromotionStore(0);
  v73.receiver = v3;
  v73.super_class = v44;
  v45 = objc_msgSendSuper2(&v73, sel_init);
  LOBYTE(v43) = sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v76) = v43 & 1;
  v46 = v45;
  sub_29E752898();
  v47 = v61;
  [v61 addObserver_];
  v76 = *(*&v46[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange);
  sub_29E70E9AC(&qword_2A1A7D4F0, &qword_2A1A7D4E8, v63, MEMORY[0x29EDB8A58]);
  v76 = sub_29E7528E8();
  v72 = *(*&v46[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange);
  v72 = sub_29E7528E8();
  v48 = MEMORY[0x29EDB89F8];
  sub_29E70EC58(0, &qword_2A1A7BF70, MEMORY[0x29EDB89F8]);
  sub_29E70E9AC(&qword_2A1A7BF80, &qword_2A1A7BF70, v48, MEMORY[0x29EDB8A00]);
  v49 = v65;
  sub_29E752678();
  v50 = [objc_opt_self() mainRunLoop];
  v76 = v50;
  v51 = sub_29E754BB8();
  v52 = v67;
  (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
  sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
  sub_29E70EABC(&unk_2A185A4E8, sub_29E70E8EC, MEMORY[0x29EDB8948]);
  sub_29E6A0F24();
  v53 = v66;
  v54 = v68;
  sub_29E752968();
  sub_29E6D65D0(v52);

  (*(v69 + 8))(v49, v54);
  *(swift_allocObject() + 16) = v46;
  sub_29E70EABC(&qword_2A185A4F8, sub_29E70E9F0, MEMORY[0x29EDB89E8]);
  v55 = v70;
  sub_29E7529A8();

  (*(v71 + 8))(v53, v55);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v46;
}

uint64_t sub_29E70B124(uint64_t a1, void *a2)
{
  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  return sub_29E752898();
}

uint64_t sub_29E70B19C()
{
  v9[1] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore);
  if ([v1 hasSleepFocusMode])
  {
    v9[0] = 0;
    v2 = [v1 currentSleepEventRecordWithError_];
    if (v2)
    {
      v3 = v2;
      v4 = v9[0];
      v5 = [v3 isConsolidatedSleepCoachingOnboardingCompleted];

      if (v5)
      {
        return 1;
      }
    }

    else
    {
      v7 = v9[0];
      v8 = sub_29E74EA48();

      swift_willThrow();
    }
  }

  return 0;
}

uint64_t sub_29E70B294()
{
  v1 = *(*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v2 = sub_29E754198();
  [v1 setBool:0 forKey:v2];

  v3 = *(*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v4 = sub_29E754198();
  [v3 setBool:0 forKey:v4];

  sub_29E70B3A8();
  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  return sub_29E752898();
}

void sub_29E70B3A8()
{
  v9[7] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore);
  if ([v1 hasSleepFocusMode])
  {
    v9[0] = 0;
    v2 = [v1 currentSleepEventRecordWithError_];
    if (v2)
    {
      v3 = v2;
      v4 = v9[0];
      v5 = [v3 isConsolidatedSleepCoachingOnboardingCompleted];

      if (v5)
      {
        v9[4] = nullsub_1;
        v9[5] = 0;
        v9[0] = MEMORY[0x29EDCA5F8];
        v9[1] = 1107296256;
        v9[2] = sub_29E5FE860;
        v9[3] = &unk_2A2502B90;
        v6 = _Block_copy(v9);
        [v1 configureSleepFocusWithState:1 completion:v6];
        _Block_release(v6);
      }
    }

    else
    {
      v7 = v9[0];
      v8 = sub_29E74EA48();

      swift_willThrow();
    }
  }
}

uint64_t sub_29E70B51C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver) + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v2 = sub_29E754198();
  LOBYTE(v1) = [v1 BOOLForKey_];

  if (v1)
  {
    return 0;
  }

  v3 = [*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore) sleepFocusConfiguration];
  if (![v3 hasSleepFocusMode])
  {

    return 0;
  }

  if (sub_29E70B19C())
  {
    v4 = [v3 state];

    return v4 == 1;
  }

  else
  {
    v6 = *(*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver) + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
    v7 = sub_29E754198();
    LODWORD(v6) = [v6 BOOLForKey_];

    return v6 ^ 1;
  }
}

void sub_29E70B794(uint64_t a1)
{
  sub_29E70F2B0(319, &qword_2A185A450, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E70B974(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E70BAA4()
{
  type metadata accessor for SleepFocusPromotionCell();
  sub_29E70EABC(&unk_2A185A500, type metadata accessor for SleepFocusPromotionCell, &unk_29E76BB48);
  return sub_29E7547D8();
}

id sub_29E70BB14()
{
  v1 = sub_29E74F7B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_29E74EAF8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = v0[1];
  v16 = *v0;
  v17 = v9;
  v18 = v0[2];
  v19 = *(v0 + 6);
  result = HKSPSleepFocusConfigurationURL();
  if (result)
  {
    v11 = result;
    sub_29E74EAD8();

    sub_29E74F7A8();
    v12 = swift_allocObject();
    v13 = v17;
    *(v12 + 16) = v16;
    *(v12 + 32) = v13;
    *(v12 + 48) = v18;
    *(v12 + 64) = v19;
    sub_29E70F278(&v16, v15);
    sub_29E74F798();

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_29E70BD18()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_29E70BD48(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_29E70BDA0(uint64_t a1)
{
  v2 = sub_29E70F52C();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29E70BDEC(uint64_t a1, char **a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = *&(*a2)[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore];
  if (![v3 hasSleepFocusMode])
  {
    goto LABEL_6;
  }

  v13[0] = 0;
  v4 = [v3 currentSleepEventRecordWithError_];
  if (!v4)
  {
    v8 = v13[0];
    v9 = sub_29E74EA48();

    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  v6 = v13[0];
  v7 = [v5 isConsolidatedSleepCoachingOnboardingCompleted];

  if ((v7 & 1) == 0)
  {
LABEL_6:
    v10 = *(*&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
    v11 = sub_29E754198();
    [v10 setBool:1 forKey:v11];

    LOBYTE(v10) = sub_29E70B51C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v13[0]) = v10 & 1;
    v12 = v2;
    sub_29E752898();
  }
}

uint64_t sub_29E70BF7C(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E70F1EC(v1 + v3, v24, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  if (v25)
  {
    sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    if (swift_dynamicCast())
    {
      v4 = v19[0];
      v5 = v19[1];
      v6 = v19[2];
      v7 = v20;
      v8 = v21;
      v9 = v22;
      v10 = v23;
      v11 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
      v20 = &type metadata for SleepFocusPromotionItem;
      v21 = &off_2A2502B00;
      v12 = swift_allocObject();
      v19[0] = v12;
      v12[2] = v4;
      v12[3] = v5;
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v8;
      v12[7] = v9;
      v12[8] = v10;
      v13 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
      swift_beginAccess();

      v14 = v4;

      sub_29E70F3DC(v19, v11 + v13);
      swift_endAccess();
      sub_29E70E4E4(v9, v10);
    }

    v15 = MEMORY[0x29EDC1910];
    v16 = a1;
  }

  else
  {
    v17 = MEMORY[0x29EDC1910];
    sub_29E70F36C(a1, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v16 = v24;
    v15 = v17;
  }

  return sub_29E70F36C(v16, &qword_2A1856AD0, &qword_2A1858310, v15);
}

void (*sub_29E70C184(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_29E70C20C;
}

void sub_29E70C20C(void ***a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E70F1EC(v3[13] + v3[12], (v3 + 7), &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    if (v3[10])
    {
      sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      if (swift_dynamicCast())
      {
        v4 = *v3;
        v5 = v3[1];
        v6 = v3[2];
        v7 = v3[3];
        v8 = v3[4];
        v9 = v3[5];
        v10 = v3[6];
        v11 = *(v3[12] + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
        v3[3] = &type metadata for SleepFocusPromotionItem;
        v3[4] = &off_2A2502B00;
        v12 = swift_allocObject();
        *v3 = v12;
        v12[2] = v4;
        v12[3] = v5;
        v12[4] = v6;
        v12[5] = v7;
        v12[6] = v8;
        v12[7] = v9;
        v12[8] = v10;
        v13 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
        swift_beginAccess();

        v14 = v4;

        sub_29E70F3DC(v3, v11 + v13);
        swift_endAccess();
        sub_29E70E4E4(v9, v10);
      }
    }

    else
    {
      sub_29E70F36C((v3 + 7), &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    }
  }

  free(v3);
}

char *sub_29E70C3CC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView;
  type metadata accessor for SleepFocusPromotionView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SleepFocusPromotionCell();
  v11 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E764160;
  v14 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView;
  v15 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView];
  *(v13 + 32) = v15;
  v16 = v15;
  sub_29E754AE8();

  v17 = *&v11[v14];
  v18 = [v11 contentView];

  sub_29E754AF8();

  return v11;
}

void sub_29E70C690()
{
  sub_29E70F36C(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
}

id sub_29E70C700(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E70C7C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  swift_beginAccess();
  return sub_29E70F1EC(v1 + v3, a1, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
}

void (*sub_29E70C83C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E70C184(v2);
  return sub_29E688830;
}

char *sub_29E70C8DC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView] = v10;
  sub_29E609B5C(0, &qword_2A185A568, 0x29EDC7B38);
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel] = sub_29E754B48();
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 1;
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel] = sub_29E754B48();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton] = v13;
  v32.receiver = v4;
  v32.super_class = type metadata accessor for SleepFocusPromotionView();
  v14 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E76BA00;
  v16 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView];
  *(v15 + 32) = v16;
  v17 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];
  *(v15 + 40) = v17;
  v18 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];
  *(v15 + 48) = v18;
  v19 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView];
  *(v15 + 56) = v19;
  v20 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];
  *(v15 + 64) = v20;
  v21 = *&v14[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];
  *(v15 + 72) = v21;
  v22 = v14;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_29E754AE8();

  sub_29E70CDA4();
  sub_29E70D724();

  return v22;
}

uint64_t sub_29E70CBEC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, double, double, double, double))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v14 = a8(isCurrentExecutor, a1, a2, a3, a4);

  return v14;
}

void sub_29E70CDA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView);
  [v2 setContentMode_];
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A7FA18;
  v4 = sub_29E754198();
  v55 = objc_opt_self();
  v5 = [v55 imageNamed:v4 inBundle:v3];

  [v2 setImage_];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v7];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7688]) init];
  LODWORD(v9) = 1036831949;
  [v8 setHyphenationFactor_];
  sub_29E70EB04(0, &qword_2A185A540, sub_29E70F300, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  v11 = *MEMORY[0x29EDC7650];
  *(inited + 32) = *MEMORY[0x29EDC7650];
  *(inited + 64) = sub_29E609B5C(0, &unk_2A185A550, 0x29EDC7688);
  *(inited + 40) = v8;
  v12 = v11;
  v56 = v8;
  sub_29E68B430(inited);
  swift_setDeallocating();
  sub_29E68C50C(inited + 32);
  v13 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel);
  sub_29E74E9D8();
  v14 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v15 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70EABC(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v16 = sub_29E754068();
  v17 = [v14 initWithString:v15 attributes:{v16, 0xE000000000000000}];

  [v13 setAttributedText_];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v13 setTextColor_];

  sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  LOBYTE(v53) = 1;
  v20 = sub_29E754AB8();
  [v13 setFont_];

  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  LODWORD(v21) = 1132068864;
  [v13 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1132068864;
  [v13 setContentHuggingPriority:0 forAxis:v22];
  v23 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel);
  sub_29E74E9D8();
  v24 = sub_29E754198();

  [v23 setText_];

  v25 = [v18 secondaryLabelColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  v26 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView);
  v27 = [v18 separatorColor];
  [v26 setBackgroundColor_];

  sub_29E74E9D8();
  v28 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v29 = sub_29E754198();

  v30 = sub_29E754068();

  v31 = [v28 initWithString:v29 attributes:{v30, 0xE000000000000000}];

  v32 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton);
  [v32 setAttributedTitle:v31 forState:0];
  v33 = [v32 titleLabel];
  if (v33)
  {
    v34 = v33;
    LOBYTE(v54) = 1;
    v35 = sub_29E754AB8();
    [v34 setFont_];
  }

  v36 = [v32 titleLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setAdjustsFontForContentSizeCategory_];
  }

  v38 = [v32 titleLabel];
  [v38 &selRef_maxYValue];

  v39 = [v32 titleLabel];
  [v39 setLineBreakMode_];

  v40 = [v18 systemBlueColor];
  [v32 setTitleColor:v40 forState:0];

  [v32 addTarget:v1 action:sel_actionTapped forControlEvents:64];
  [v32 setContentHorizontalAlignment_];
  LOBYTE(v54) = 0;
  v41 = sub_29E754AB8();
  v42 = [objc_opt_self() configurationWithFont_];

  v43 = v42;
  v44 = sub_29E754198();
  v45 = [v55 systemImageNamed:v44 withConfiguration:v43];

  v46 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton);
  [v46 setImage:v45 forState:0];
  v47 = [v18 quaternaryLabelColor];
  [v46 setTintColor_];

  [v46 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [v46 addTarget:v1 action:sel_dismissTapped forControlEvents:64];
  v48 = [v46 imageView];
  if (v48)
  {
    v50 = v48;
    [v48 setContentMode_];
  }

  LODWORD(v49) = 1148846080;
  [v46 setContentCompressionResistancePriority:0 forAxis:v49];
  LODWORD(v51) = 1148846080;
  [v46 setContentHuggingPriority:0 forAxis:v51];
  LODWORD(v52) = 1148846080;
  [v46 setContentHuggingPriority:1 forAxis:v52];
  [v46 setContentVerticalAlignment_];
}

void sub_29E70D724()
{
  [v0 setLayoutMargins_];
  v1 = [v0 layoutMarginsGuide];
  v64 = objc_opt_self();
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E76BA10;
  v3 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView];
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant_];

  *(v2 + 32) = v5;
  v6 = [v3 topAnchor];
  v7 = [v1 &selRef_sleepCloudKitSync];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  v9 = [v3 leadingAnchor];
  v10 = [v1 &selRef_init + 1];
  v11 = [v9 &selRef_mainRunLoop + 5];

  *(v2 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];
  v13 = [v12 &selRef_sleepCloudKitSync];
  v14 = [v1 &selRef_sleepCloudKitSync];
  v15 = [v13 &selRef_mainRunLoop + 5];

  *(v2 + 56) = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v1 &selRef_initWithFeatureAvailabilityProviding_healthDataSource_currentCountryCode_ + 4];
  v18 = [v16 &selRef_mainRunLoop + 5];

  *(v2 + 64) = v18;
  v19 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];
  v20 = [v19 &selRef_sleepCloudKitSync];
  v21 = [v1 &selRef_sleepCloudKitSync];
  v22 = [v20 &selRef_mainRunLoop + 5];

  *(v2 + 72) = v22;
  v23 = [v19 leadingAnchor];
  v24 = [v3 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:11.0];

  *(v2 + 80) = v25;
  v26 = [v19 trailingAnchor];
  v27 = [v12 leadingAnchor];
  v28 = [v26 0x29F371F7ELL];

  *(v2 + 88) = v28;
  v29 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];
  v30 = [v29 topAnchor];
  v31 = [v19 bottomAnchor];
  v32 = [v30 0x29F371F7ELL];

  *(v2 + 96) = v32;
  v33 = [v29 leadingAnchor];
  v34 = [v19 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v2 + 104) = v35;
  v36 = [v29 trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v2 + 112) = v38;
  v39 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView];
  v40 = [v39 heightAnchor];
  HKUIOnePixel();
  v41 = [v40 constraintEqualToConstant_];

  *(v2 + 120) = v41;
  v42 = [v39 topAnchor];
  v43 = [v29 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:11.0];

  *(v2 + 128) = v44;
  v45 = [v39 leadingAnchor];
  v46 = [v19 leadingAnchor];
  v47 = [v45 &selRef_mainRunLoop + 5];

  *(v2 + 136) = v47;
  v48 = [v39 trailingAnchor];
  v49 = [v0 trailingAnchor];
  v50 = [v48 &selRef_mainRunLoop + 5];

  *(v2 + 144) = v50;
  v51 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];
  v52 = [v51 topAnchor];
  v53 = [v39 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:5.0];

  *(v2 + 152) = v54;
  v55 = [v51 lastBaselineAnchor];
  v56 = [v0 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-15.0];

  *(v2 + 160) = v57;
  v58 = [v51 leadingAnchor];
  v59 = [v19 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v2 + 168) = v60;
  v61 = [v51 trailingAnchor];
  v62 = [v19 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v2 + 176) = v63;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v65 = sub_29E7543D8();

  [v64 activateConstraints_];
}

uint64_t sub_29E70DFB0()
{
  v1 = sub_29E74F7B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_29E74EAF8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
  swift_beginAccess();
  sub_29E70F1EC(v0 + v9, v21, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  if (!v22)
  {
    return sub_29E70F36C(v21, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  }

  sub_29E602E20(v21, v20);
  sub_29E70F36C(v21, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  v10 = sub_29E601938(v20, v20[3]);
  v12 = *(v10 + 1);
  v11 = *(v10 + 2);
  v13 = *v10;
  v26 = v10[6];
  v24 = v12;
  v25 = v11;
  v23 = v13;
  v14 = HKSPSleepFocusConfigurationURL();
  if (v14)
  {
    v15 = v14;
    sub_29E74EAD8();

    sub_29E74F7A8();
    v16 = swift_allocObject();
    v17 = v24;
    *(v16 + 16) = v23;
    *(v16 + 32) = v17;
    *(v16 + 48) = v25;
    *(v16 + 64) = v26;
    sub_29E70F278(&v23, v19);
    sub_29E74F798();

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  return sub_29E5FECBC(v20);
}

uint64_t sub_29E70E284()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
  swift_beginAccess();
  sub_29E70F1EC(v0 + v1, v9, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  if (!v10)
  {
    return sub_29E70F36C(v9, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  }

  sub_29E602E20(v9, v8);
  sub_29E70F36C(v9, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  v2 = sub_29E601938(v8, v8[3]);
  v3 = *v2;
  v4 = *(*(*v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver) + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v5 = sub_29E754198();
  [v4 setBool:1 forKey:v5];

  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3;
  sub_29E752898();
  return sub_29E5FECBC(v8);
}

void sub_29E70E418(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E70E4E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_29E754198();
    [v3 setAccessibilityIdentifier_];

    v5 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];

    MEMORY[0x29ED96C20](0x6554656C7469542ELL, 0xEA00000000007478);
    v6 = sub_29E754198();

    [v5 setAccessibilityIdentifier_];

    v7 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];

    MEMORY[0x29ED96C20](0x78655479646F422ELL, 0xE900000000000074);
    v8 = sub_29E754198();

    [v7 setAccessibilityIdentifier_];

    v9 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];

    MEMORY[0x29ED96C20](0x426E6F697463412ELL, 0xED00006E6F747475);
    v10 = sub_29E754198();

    [v9 setAccessibilityIdentifier_];

    v11 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];

    MEMORY[0x29ED96C20](0x7373696D7369442ELL, 0xEE006E6F74747542);
    v13 = sub_29E754198();

    [v11 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton] setAccessibilityIdentifier_];
    v12 = *&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];

    [v12 setAccessibilityIdentifier_];
  }
}

void sub_29E70E8EC(uint64_t a1)
{
  if (!qword_2A185A4D0)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29E70EC58(255, &qword_2A1A7BF70, MEMORY[0x29EDB89F8]);
    sub_29E70E9AC(&qword_2A1A7BF80, &qword_2A1A7BF70, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29E752668();
    if (!v3)
    {
      atomic_store(v2, &qword_2A185A4D0);
    }
  }
}

uint64_t sub_29E70E9AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E70EC58(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E70E9F0(uint64_t a1)
{
  if (!qword_2A185A4D8)
  {
    sub_29E70E8EC(255);
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E70EABC(&unk_2A185A4E8, sub_29E70E8EC, MEMORY[0x29EDB8948]);
    sub_29E6A0F24();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A4D8);
    }
  }
}

uint64_t sub_29E70EABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E70EB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E70EB68@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a2 = v4;
  return result;
}

uint64_t sub_29E70EBE8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_29E752898();
}

void sub_29E70EC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E70ECC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609CF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E70ED30(void *a1)
{
  v2 = sub_29E74ED88();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F698();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E70EB04(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v9 = *(sub_29E750CA8() - 8);
  v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = swift_allocObject();
  v26 = xmmword_29E762F30;
  *(v27 + 16) = xmmword_29E762F30;
  sub_29E70ECC8(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = v26;
  (*(v6 + 104))(v8, *MEMORY[0x29EDC6AD0], v5);
  v11 = a1;
  v12 = sub_29E754258();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  type metadata accessor for SleepFocusPromotionCell();
  sub_29E70EABC(&unk_2A185A500, type metadata accessor for SleepFocusPromotionCell, &unk_29E76BB48);
  v15 = sub_29E7506A8();
  v17 = v16;
  v31[0] = &type metadata for SleepFocusPromotionItem;
  sub_29E70F150();
  v18 = sub_29E7541F8();
  v20 = v19;
  *(v10 + 56) = &type metadata for SleepFocusPromotionItem;
  *(v10 + 64) = sub_29E70F198();
  v21 = swift_allocObject();
  *(v10 + 32) = v21;
  v21[2] = v11;
  v21[3] = v15;
  v21[4] = v17;
  v21[5] = v18;
  v21[6] = v20;
  v21[7] = v12;
  v21[8] = v14;
  sub_29E750C98();
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  sub_29E74ED78();
  v22 = sub_29E74ED48();
  v24 = v23;
  (*(v29 + 8))(v4, v30);
  MEMORY[0x29ED96C20](v22, v24);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

unint64_t sub_29E70F150()
{
  result = qword_2A185A520;
  if (!qword_2A185A520)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A520);
  }

  return result;
}

unint64_t sub_29E70F198()
{
  result = qword_2A185A528;
  if (!qword_2A185A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A528);
  }

  return result;
}

uint64_t sub_29E70F1EC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29E70ECC8(0, a3, a4, a5, MEMORY[0x29EDC9C68]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E70F2B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E70F300(uint64_t a1)
{
  if (!qword_2A1858628)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858628);
    }
  }
}

uint64_t sub_29E70F36C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E70ECC8(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E70F3DC(uint64_t a1, uint64_t a2)
{
  sub_29E70ECC8(0, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E70F46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E70F484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29E70F4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E70F52C()
{
  result = qword_2A185A570;
  if (!qword_2A185A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A570);
  }

  return result;
}

uint64_t sub_29E70F580()
{

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

void sub_29E70F5D4(id a1, void *a2)
{
  v4 = sub_29E752098();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v69 = &v69 - v7;
  sub_29E7100C8(0, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v69 - v9;
  sub_29E7100C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v69 - v12;
  v14 = sub_29E74ED28();
  v79 = *(v14 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v71 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v69 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v69 - v20;
  v80 = sub_29E74E838();
  v22 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v78 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = [objc_opt_self() appleSleepScoreType];
  if (!v83)
  {
    __break(1u);
    return;
  }

  v24 = a2;
  v81 = v22;
  v74 = a1;
  if (!a2)
  {
    v84 = a1;
    sub_29E6E9BB0();
    sub_29E710064();
    v25 = a1;
    if (swift_dynamicCast())
    {
      sub_29E601938(&v85, *(&v86 + 1));
      v22 = v81;
      v24 = sub_29E750BA8();
      sub_29E5FECBC(&v85);
    }

    else
    {
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      sub_29E71011C(&v85, &qword_2A185A588, sub_29E710064);
      v24 = 0;
    }

    a1 = v74;
  }

  v26 = a2;
  v82 = [a1 resolvedHealthToolbox];
  v27 = sub_29E754868();
  v28 = [v83 identifier];
  if (!v28)
  {
    sub_29E7541D8();
    v28 = sub_29E754198();
  }

  v77 = v24;
  v70 = v14;
  if (!v24)
  {
    (*(v79 + 56))(v13, 1, 1, v14);
    sub_29E71011C(v13, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v36 = v80;
    (*(v22 + 56))(v10, 1, 1, v80);
    v30 = 0;
    goto LABEL_14;
  }

  v72 = v27;
  v29 = v24;
  v30 = sub_29E750618();

  v31 = v29;
  v24 = sub_29E7505C8();

  v32 = v31;
  sub_29E750628();

  v33 = v79;
  if ((*(v79 + 48))(v13, 1, v14) != 1)
  {
    (*(v33 + 32))(v21, v13, v14);
    (*(v33 + 16))(v19, v21, v14);
    v37 = v78;
    sub_29E74E818();
    (*(v33 + 8))(v21, v14);
    v36 = v80;
LABEL_17:
    v27 = v72;
    goto LABEL_18;
  }

  sub_29E71011C(v13, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v34 = v32;
  sub_29E750608();

  v36 = v80;
  v35 = v81;
  if ((*(v81 + 48))(v10, 1, v80) != 1)
  {
    v37 = v78;
    (*(v35 + 32))(v78, v10, v36);
    goto LABEL_17;
  }

  v27 = v72;
LABEL_14:
  sub_29E71011C(v10, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  sub_29E74ED18();
  v37 = v78;
  sub_29E74E818();
LABEL_18:
  v38 = [v82 chartFactory];
  v39 = sub_29E74E7D8();
  v40 = [v38 interactiveChartForTypeIdentifier:v28 preferredOverlay:v30 chartOptions:v24 displayDateInterval:v39 restorationUserActivity:v27 chartSummaryTrendModel:0];

  if (v40 && (objc_opt_self(), (v41 = swift_dynamicCastObjCClass()) != 0))
  {
    v42 = v41;
    v43 = [v41 applicationItems];
    v44 = [objc_opt_self() applicationItemsWithItems_];

    v45 = [objc_allocWithZone(MEMORY[0x29EDC4818]) init];
    [v45 setSelectedTimeScope_];
    [v44 setTimeScopeController_];
    v46 = [v42 displayDate];
    v47 = v81;
    if (v46)
    {
      v48 = v27;
      v49 = v71;
      v50 = v46;
      sub_29E74ECD8();

      v51 = sub_29E74EC98();
      v52 = v49;
      v27 = v48;
      (*(v79 + 8))(v52, v70);
    }

    else
    {
      v51 = 0;
    }

    v60 = [v42 createViewControllerForMode:3 displayDate:v51 applicationItems:v44];

    if (!v60)
    {
      v64 = v27;
      v65 = v69;
      sub_29E752048();
      v66 = sub_29E752088();
      v67 = sub_29E7546A8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_29E5ED000, v66, v67, "[presentSleepScoreChart] Received no full overlay controller", v68, 2u);
        MEMORY[0x29ED98410](v68, -1, -1);
      }

      (*(v75 + 8))(v65, v76);
      goto LABEL_32;
    }

    v61 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
    v62 = [v74 navigationController];
    if (v62)
    {
      v63 = v62;
      [v62 hk:v61 presentModalCardViewController:1 fullScreen:1 animated:0 completion:?];

LABEL_32:
      (*(v47 + 8))(v37, v80);
      return;
    }

    (*(v47 + 8))(v37, v80);
  }

  else
  {
    v53 = v27;
    v54 = v73;
    sub_29E752048();
    v55 = sub_29E752088();
    v56 = sub_29E7546A8();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v81;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_29E5ED000, v55, v56, "[presentSleepScoreChart] Received nil or non-HKOverlayRoomViewController from makeInteractiveChart", v59, 2u);
      MEMORY[0x29ED98410](v59, -1, -1);
    }

    (*(v75 + 8))(v54, v76);
    (*(v58 + 8))(v37, v36);
  }
}

unint64_t sub_29E710064()
{
  result = qword_2A185A580;
  if (!qword_2A185A580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A185A580);
  }

  return result;
}

void sub_29E7100C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E71011C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E7100C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AppleWatchSection(uint64_t a1)
{
  result = qword_2A185A590;
  if (!qword_2A185A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E710204()
{
  v0 = sub_29E74ED88();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9E90];
  sub_29E7111F4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v8 = *(sub_29E750CA8() - 8);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v9 = swift_allocObject();
  v29 = xmmword_29E762F30;
  v31 = v9;
  *(v9 + 16) = xmmword_29E762F30;
  sub_29E7111F4(0, &qword_2A185A510, sub_29E61BFEC, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v29;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v11 = sub_29E74E9D8();
  v13 = v12;
  type metadata accessor for LinkCollectionViewCell(0);
  v14 = sub_29E7506A8();
  v16 = v15;
  (*(v4 + 104))(v6, *MEMORY[0x29EDC6AC8], v3);
  v17 = sub_29E754258();
  v18 = v3;
  v19 = v17;
  v21 = v20;
  (*(v4 + 8))(v6, v18);
  *(v10 + 56) = &type metadata for AppleWatchItem;
  *(v10 + 64) = sub_29E711258();
  v22 = swift_allocObject();
  *(v10 + 32) = v22;
  v22[2] = v11;
  v22[3] = v13;
  v22[4] = v14;
  v22[5] = v16;
  v22[6] = v19;
  v22[7] = v21;
  sub_29E74ED78();
  sub_29E74ED48();
  v23 = v33;
  v24 = *(v32 + 8);
  v24(v2, v33);
  sub_29E750C98();
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v34, "MutableArray<");
  HIWORD(v34[1]) = -4864;
  sub_29E74ED78();
  v25 = sub_29E74ED48();
  v27 = v26;
  v24(v2, v23);
  MEMORY[0x29ED96C20](v25, v27);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

uint64_t sub_29E710690(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  sub_29E750E28();
  sub_29E750E18();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = sub_29E750E68();
  v9(v8, v2);
  return v10;
}

uint64_t sub_29E710808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7111F4(0, &qword_2A1856D78, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v24 - v11;
  if (sub_29E7541D8() == a1 && v13 == a2)
  {

    goto LABEL_13;
  }

  v15 = sub_29E755028();

  if (v15)
  {
LABEL_13:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    v20 = sub_29E750E98();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    a3[3] = sub_29E750EB8();
    a3[4] = sub_29E710EAC(&qword_2A1856D90, MEMORY[0x29EDC23E0], MEMORY[0x29EDC23C8]);
    sub_29E5FEBF4(a3);
    return sub_29E750EA8();
  }

  if (sub_29E7541D8() == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = sub_29E755028();

    if ((v18 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E710EAC(&qword_2A1856D80, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v24[0] = 0x74497265746F6F46;
  v24[1] = 0xEB000000005F6D65;
  sub_29E74ED78();
  v21 = sub_29E74ED48();
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x29ED96C20](v21, v23);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E710EAC(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

uint64_t sub_29E710CD4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752238();
}

uint64_t sub_29E710D88()
{
  type metadata accessor for LinkCollectionViewCell(0);
  sub_29E7547D8();
  sub_29E750E88();
  sub_29E7547F8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E710E14(uint64_t a1)
{
  v2 = sub_29E7112C0();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E710EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E710EF4()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F7B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EAF8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HKSPSleepWatchAppURL();
  if (v12)
  {
    v13 = v12;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_29E752048();
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_29E6B9C90(0xD000000000000035, 0x800000029E7602F0, &v20);
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Error trying to open Sleep Focus onboarding from Sleep Options view", v17, 0xCu);
      sub_29E5FECBC(v18);
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_29E7111F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E711258()
{
  result = qword_2A185A5A8;
  if (!qword_2A185A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A5A8);
  }

  return result;
}

unint64_t sub_29E7112C0()
{
  result = qword_2A185A5B0;
  if (!qword_2A185A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A5B0);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaPromotionDataSource(uint64_t a1)
{
  result = qword_2A185A5B8;
  if (!qword_2A185A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E7113A0()
{
  v0 = sub_29E750938();
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));

  return swift_deallocClassInstance();
}

uint64_t sub_29E711460(void *a1)
{
  v2 = sub_29E7509D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20[-v7];
  sub_29E601938(a1, a1[3]);
  v9 = sub_29E74FB58();
  v10 = sub_29E7549E8();

  sub_29E6958F0(0);
  v12 = objc_allocWithZone(v11);
  v13 = v10;
  v14 = sub_29E7517E8();
  sub_29E7509B8();
  sub_29E750998();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v16 = sub_29E7509A8();
  *v17 = 0x4034000000000000;
  v16(v20, 0);
  sub_29E711678(&qword_2A1858800, sub_29E6958F0, MEMORY[0x29EDC2988]);
  v18 = sub_29E750968();

  v15(v8, v2);
  return v18;
}

uint64_t sub_29E711678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E7116D0()
{
  v0 = sub_29E751D18();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561E8 != -1)
  {
    swift_once();
  }

  v8 = sub_29E61037C(v4, qword_2A1869238);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC2C80], v0);
  v9 = objc_allocWithZone(sub_29E7508A8());
  return sub_29E750898();
}

uint64_t sub_29E711898()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B28], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E7119D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E711A7C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E711B1C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

unint64_t *sub_29E711BE0()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v3);
  v4 = sub_29E750518();
  (*(v1 + 8))(v3, v0);
  v5 = sub_29E6D5A34(v4);

  return v5;
}

id sub_29E711CC0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29E711DB0()
{
  sub_29E62F414(0);
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E76C040;
  v30 = v4;
  v5 = v4 + v3;
  *v5 = sub_29E7116D0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *(v1 + 104);
  (v6)(v4 + v3, *MEMORY[0x29EDC15A8], v0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  v31 = v2;
  *v7 = sub_29E74E9D8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = v5 + 2 * v2;
  *v9 = sub_29E74E9D8();
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  v11 = *MEMORY[0x29EDC1630];
  v6(v9);
  v12 = v5 + 3 * v2;
  *v12 = sub_29E74E9D8();
  *(v12 + 8) = v13;
  *(v12 + 16) = 0;
  (v6)(v12, v11, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29E74E9D8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v11, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29E74E9D8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  v18 = v6;
  (v6)(v16, v11, v0);
  v19 = v5 + 6 * v31;
  *v19 = sub_29E711CC0();
  *(v19 + 8) = 1;
  (v18)(v19, *MEMORY[0x29EDC1608], v0);
  v20 = (v5 + 7 * v31);
  *v20 = sub_29E74E9D8();
  v20[1] = v21;
  v20[2] = 0;
  v29 = *MEMORY[0x29EDC15D0];
  v18(v20);
  v22 = v5 + 8 * v31;
  *v22 = sub_29E74E9D8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v18)(v22, v11, v0);
  v24 = (v5 + 9 * v31);
  *v24 = sub_29E74E9D8();
  v24[1] = v25;
  v24[2] = 0;
  (v18)(v24, v29, v0);
  v26 = v5 + 10 * v31;
  *v26 = sub_29E74E9D8();
  *(v26 + 8) = v27;
  *(v26 + 16) = 0;
  (v18)(v26, v11, v0);
  return v30;
}

id sub_29E71237C()
{
  v1 = v0;
  v2 = sub_29E750698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x29EDC1D20])
  {
    v7 = MEMORY[0x29EDC67A8];
  }

  else if (v6 == *MEMORY[0x29EDC1D18])
  {
    v7 = MEMORY[0x29EDC6788];
  }

  else if (v6 == *MEMORY[0x29EDC1D68])
  {
    v7 = MEMORY[0x29EDC6780];
  }

  else if (v6 == *MEMORY[0x29EDC1D80] || v6 == *MEMORY[0x29EDC1D60])
  {
    v7 = MEMORY[0x29EDC6790];
  }

  else
  {
    if (v6 != *MEMORY[0x29EDC1D50])
    {
      if (v6 == *MEMORY[0x29EDC1D30])
      {
        v7 = MEMORY[0x29EDC6778];
        goto LABEL_17;
      }

      if (v6 != *MEMORY[0x29EDC1D70] && v6 != *MEMORY[0x29EDC1D40] && v6 != *MEMORY[0x29EDC1D28] && v6 != *MEMORY[0x29EDC1D78] && v6 != *MEMORY[0x29EDC1D48] && v6 != *MEMORY[0x29EDC1D38] && v6 != *MEMORY[0x29EDC1D88] && v6 != *MEMORY[0x29EDC1D58])
      {
        v11 = *(v3 + 8);
        v12 = *MEMORY[0x29EDC67B0];
        v11(v5, v2);
        return v12;
      }
    }

    v7 = MEMORY[0x29EDC67B0];
  }

LABEL_17:
  v9 = *v7;

  return v9;
}

uint64_t sub_29E71262C(uint64_t a1)
{
  result = sub_29E751E38();
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

uint64_t sub_29E7126EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for FeatureOnboardedPublisher.Inner(0, a4, a5, a4);
  swift_unknownObjectRetain();
  v9 = a3;
  v11 = sub_29E713CB4(a1, a2, v9, v10);
  sub_29E751758();
  v13[3] = v8;
  v13[4] = swift_getWitnessTable();
  v13[0] = v11;
  sub_29E7526D8();
  return sub_29E5FECBC(v13);
}

uint64_t sub_29E7127F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_29E751E38();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_29E7128CC(uint64_t a1)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_29E751E38();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

id sub_29E712A28()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v5 = v0;
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x29EDCA1E8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    v12 = v5 + *((*v9 & *v5) + 0x80);
    *(v10 + 4) = sub_29E6B9C90(*v12, *(v12 + 1), &v15);
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s]: Started, getting onboarding status and beginning observation", v10, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  sub_29E712EFC();
  return [*(v5 + *((*v9 & *v5) + 0x70)) registerObserver:v5 queue:*(v5 + *((*v9 & *v5) + 0x78))];
}

id sub_29E712C3C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v6 = v1;
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x29EDCA1E8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v20);

    *(v12 + 4) = v16;
    v10 = MEMORY[0x29EDCA1E8];
    *(v12 + 12) = 2082;
    v17 = v6 + *((*v10 & *v6) + 0x80);
    *(v12 + 14) = sub_29E6B9C90(*v17, *(v17 + 1), &v20);
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s.%{public}s]: Canceled, ending observation", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    (*(v3 + 8))(v5, v19);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return [*(v6 + *((*v10 & *v6) + 0x70)) unregisterObserver_];
}

void sub_29E712E9C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29E713D08();
  sub_29E751758();
}

uint64_t sub_29E712EFC()
{
  v1 = v0;
  v40[1] = *MEMORY[0x29EDCA608];
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v3 & v2) + 0x50);
  v8 = *((v3 & v2) + 0x58);
  sub_29E751E18();
  swift_getWitnessTable();
  v9 = sub_29E755118();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v37 - v11;
  v13 = *&v1[*((v3 & v2) + 0x70)];
  v40[0] = 0;
  v14 = [v13 isCurrentOnboardingVersionCompletedWithError_];
  if (v14)
  {
    v15 = v14;
    v16 = v40[0];
    v17 = [v15 BOOLValue];

    LOBYTE(v40[0]) = v17;
    type metadata accessor for FeatureOnboardedPublisher.Inner(0, v7, v8, v18);
    swift_getWitnessTable();
    sub_29E751DE8();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v20 = MEMORY[0x29EDCA1E8];
    v37 = v4;
    v38 = v5;
    v21 = v40[0];
    v22 = sub_29E74EA48();

    swift_willThrow();
    v23 = v39;
    sub_29E752068();
    v24 = v1;
    v25 = v22;
    v26 = sub_29E752088();
    v27 = sub_29E7546A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136446466;
      v30 = &v24[*((*v20 & *v24) + 0x80)];
      *(v28 + 4) = sub_29E6B9C90(*v30, *(v30 + 1), v40);
      *(v28 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v33 + 16))(&v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = sub_29E7541F8();
      v36 = sub_29E6B9C90(v34, v35, v40);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s]: Error getting onboarding status %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v28, -1, -1);
    }

    else
    {
    }

    return (*(v38 + 8))(v23, v37);
  }
}

id sub_29E713414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeatureOnboardedPublisher.Inner(0, *((*MEMORY[0x29EDCA1E8] & *v4) + 0x50), *((*MEMORY[0x29EDCA1E8] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_29E713484(char *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  sub_29E5FECBC(&a1[*((*MEMORY[0x29EDCA1E8] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_29E751E38();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  sub_29E751758();
}

void (*sub_29E7135FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29E7129A8(v2);
  return sub_29E688830;
}

uint64_t sub_29E71369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for FeatureOnboardedPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a4);

  return a4(a1, v6, a3);
}

uint64_t sub_29E71383C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29E7542E8();

    return sub_29E754388();
  }

  return result;
}

id sub_29E7138D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v46[1] = a1;
  v47 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x29EDCA1E8];
  v7 = sub_29E74ED88();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x58);
  v12 = sub_29E751E38();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v46 - v14;
  v16 = &v4[*((v6 & v5) + 0x60)];
  v17 = sub_29E74FB88();
  swift_allocObject();
  v18 = sub_29E74FB78();
  v16[3] = v17;
  v16[4] = sub_29E713F18();
  *v16 = v18;
  v19 = v10;
  v20 = v11;
  sub_29E751E28();
  v21 = MEMORY[0x29EDCA1E8];
  (*(v13 + 32))(&v4[*((*MEMORY[0x29EDCA1E8] & *v4) + 0x68)], v15, v12);
  v22 = v21;
  v23 = v47;
  *&v4[*((*v21 & *v4) + 0x70)] = v47;
  v52 = 0;
  v53 = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_29E754D78();

  v52 = 0xD00000000000001ALL;
  v53 = 0x800000029E7604A0;
  v24 = [v23 featureIdentifier];
  v25 = sub_29E7541D8();
  v27 = v26;

  MEMORY[0x29ED96C20](v25, v27);

  MEMORY[0x29ED96C20](46, 0xE100000000000000);
  sub_29E74ED78();
  v28 = sub_29E74ED48();
  v30 = v29;
  (*(v48 + 8))(v9, v49);
  v31 = sub_29E71383C(8, v28, v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = MEMORY[0x29ED96BD0](v31, v33, v35, v37);
  v40 = v39;

  MEMORY[0x29ED96C20](v38, v40);

  v41 = v53;
  v42 = &v4[*((*v22 & *v4) + 0x80)];
  *v42 = v52;
  v42[1] = v41;
  *&v4[*((*v22 & *v4) + 0x78)] = v50;
  v44 = type metadata accessor for FeatureOnboardedPublisher.Inner(0, v19, v20, v43);
  v51.receiver = v4;
  v51.super_class = v44;
  return objc_msgSendSuper2(&v51, sel_init);
}

uint64_t sub_29E713D08()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v5 = v0;
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    v10 = v5 + *((*MEMORY[0x29EDCA1E8] & *v5) + 0x80);
    *(v8 + 4) = sub_29E6B9C90(*v10, *(v10 + 1), &v13);
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s]: Updated, getting onboarding status", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_29E712EFC();
}

unint64_t sub_29E713F18()
{
  result = qword_2A1A7CF70[0];
  if (!qword_2A1A7CF70[0])
  {
    sub_29E74FB88();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7CF70);
  }

  return result;
}

uint64_t sub_29E713F9C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_29E752FB8();
  v1 = *(v39 - 8);
  v32 = v39 - 8;
  v35 = v1;
  v37 = v1;
  MEMORY[0x2A1C7C4A8](v39 - 8);
  v38 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29E7532D8();
  v31 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E714D54(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_29E753508();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7147BC(0);
  v34 = v12;
  v36 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E752EF8();
  LOBYTE(v47[0]) = 0;
  sub_29E714574(v45);
  *&v44[7] = v45[0];
  *&v44[23] = v45[1];
  *&v44[39] = v46[0];
  *&v44[51] = *(v46 + 12);
  v15 = v47[0];
  (*(v9 + 104))(v11, *MEMORY[0x29EDBC9C8], v8);
  v16 = sub_29E753448();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_29E753478();
  v17 = sub_29E753498();
  sub_29E714C14(v7);
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  *(&v42[1] + 1) = *&v44[16];
  *(&v42[2] + 1) = *&v44[32];
  *(&v42[3] + 1) = *&v44[48];
  v41 = v30;
  LOBYTE(v42[0]) = v15;
  LODWORD(v42[4]) = *&v44[63];
  *(v42 + 1) = *v44;
  *(&v42[4] + 1) = KeyPath;
  v43 = v17;
  sub_29E7532C8();
  sub_29E714840(0);
  v20 = v19;
  v21 = sub_29E714B1C();
  sub_29E753808();
  (*(v31 + 8))(v4, v33);
  v47[4] = v42[3];
  v47[5] = v42[4];
  v48 = v43;
  v47[0] = v41;
  v47[1] = v42[0];
  v47[2] = v42[1];
  v47[3] = v42[2];
  sub_29E714CF8(v47);
  v22 = MEMORY[0x29EDBC748];
  sub_29E714D54(0, &qword_2A185A618, MEMORY[0x29EDBC748], MEMORY[0x29EDC9E90]);
  v23 = v37;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E762F40;
  sub_29E752FA8();
  sub_29E752F98();
  *&v41 = v24;
  sub_29E714BCC(&qword_2A185A620, MEMORY[0x29EDBC748], MEMORY[0x29EDBC750]);
  sub_29E714D54(0, &qword_2A185A628, v22, MEMORY[0x29EDC9A40]);
  sub_29E714DB8();
  v26 = v38;
  v25 = v39;
  sub_29E754C58();
  *&v41 = v20;
  *(&v41 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_29E753828();
  (*(v23 + 8))(v26, v25);
  return (*(v36 + 8))(v14, v27);
}

void sub_29E714574(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() appleSleepScoreType];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hk_localizedName];

    if (v4)
    {
      sub_29E7541D8();

      sub_29E60DE10();
      v5 = sub_29E753608();
      v7 = v6;
      v9 = v8;
      v10 = [objc_opt_self() hk_sleepKeyColor];
      sub_29E7538E8();
      v11 = sub_29E7535B8();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      sub_29E60DB44(v5, v7, v9 & 1);

      v18 = sub_29E7539B8();
      v19 = sub_29E7531F8();
      *a1 = v11;
      *(a1 + 8) = v13;
      *(a1 + 16) = v15 & 1;
      *(a1 + 24) = v17;
      *(a1 + 32) = 0x4020000000000000;
      *(a1 + 40) = 0;
      *(a1 + 48) = v18;
      *(a1 + 56) = v19;
      sub_29E62935C(v11, v13, v15 & 1);

      sub_29E60DB44(v11, v13, v15 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E7147BC(uint64_t a1)
{
  if (!qword_2A185A5C8)
  {
    sub_29E714840(255);
    sub_29E714B1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A5C8);
    }
  }
}

void sub_29E714840(uint64_t a1)
{
  if (!qword_2A185A5D0)
  {
    sub_29E7148D8(255);
    sub_29E714D54(255, &qword_2A1857518, sub_29E62AEE8, MEMORY[0x29EDBC938]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A5D0);
    }
  }
}

void sub_29E7148D8(uint64_t a1)
{
  if (!qword_2A185A5D8)
  {
    sub_29E714D54(255, &qword_2A185A5E0, sub_29E71496C, MEMORY[0x29EDBCC28]);
    sub_29E714A94();
    v1 = sub_29E753A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A5D8);
    }
  }
}

void sub_29E71496C(uint64_t a1)
{
  if (!qword_2A185A5E8)
  {
    sub_29E7149DC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A185A5E8);
    }
  }
}

void sub_29E7149DC(uint64_t a1)
{
  if (!qword_2A185A5F0)
  {
    sub_29E714A3C();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A5F0);
    }
  }
}

void sub_29E714A3C()
{
  if (!qword_2A185A5F8)
  {
    v0 = sub_29E753288();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A5F8);
    }
  }
}

unint64_t sub_29E714A94()
{
  result = qword_2A185A600;
  if (!qword_2A185A600)
  {
    sub_29E714D54(255, &qword_2A185A5E0, sub_29E71496C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A600);
  }

  return result;
}

unint64_t sub_29E714B1C()
{
  result = qword_2A185A608;
  if (!qword_2A185A608)
  {
    sub_29E714840(255);
    sub_29E714BCC(&qword_2A185A610, sub_29E7148D8, MEMORY[0x29EDBCB30]);
    sub_29E6383CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A608);
  }

  return result;
}

uint64_t sub_29E714BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E714C14(uint64_t a1)
{
  sub_29E714D54(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E714CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752E38();
  *a1 = result;
  return result;
}

uint64_t sub_29E714CF8(uint64_t a1)
{
  sub_29E714840(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E714D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E714DB8()
{
  result = qword_2A185A630;
  if (!qword_2A185A630)
  {
    sub_29E714D54(255, &qword_2A185A628, MEMORY[0x29EDBC748], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A630);
  }

  return result;
}

unint64_t sub_29E714E40()
{
  result = qword_2A185A638;
  if (!qword_2A185A638)
  {
    sub_29E714F20(255);
    sub_29E714840(255);
    sub_29E714B1C();
    swift_getOpaqueTypeConformance2();
    sub_29E714BCC(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A638);
  }

  return result;
}

void sub_29E714F20(uint64_t a1)
{
  if (!qword_2A185A640)
  {
    sub_29E7147BC(255);
    sub_29E7532F8();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A640);
    }
  }
}

uint64_t sub_29E714F88@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_29E750218();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E750388();
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize_];
  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v7 = sub_29E754B28();
  v8 = [v5 configurationWithHierarchicalColor_];

  v9 = [v6 configurationByApplyingConfiguration_];
  v12 = v9;
  sub_29E7501F8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E750368();
  v10 = sub_29E74FBE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    sub_29E7173E4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for SleepCoachingOnboardingTileActionHandler(0);
  sub_29E718B1C(&qword_2A1A7CB68, type metadata accessor for SleepCoachingOnboardingTileActionHandler, &unk_29E76A608);
  sub_29E74FC28();

  return (*(v13 + 8))(v4, v14);
}

uint64_t sub_29E7153C0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E7176C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E7153E8@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_29E750528();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750218();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E750388();
  v12 = *(v5 - 8);
  v13 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = "Element type\nExpected ";
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A7FA18;
  sub_29E750208();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E750368();
  v9 = sub_29E74FBE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    sub_29E7173E4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for SleepTrackingOnboardingTileActionHandler(0);
  sub_29E718B1C(&qword_2A1A7CB50, type metadata accessor for SleepTrackingOnboardingTileActionHandler, &unk_29E76EBE8);
  sub_29E74FC28();

  sub_29E693FB8(v3);
  v10 = sub_29E750518();
  (*(v14 + 8))(v3, v15);
  sub_29E6D5A34(v10);

  sub_29E74FD28();
  return (*(v12 + 8))(v7, v13);
}

BOOL sub_29E71583C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74FB98();
  v138 = *(v4 - 8);
  v139 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v141 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v142 = &v126 - v7;
  v145 = sub_29E74FF58();
  v150 = *(v145 - 8);
  MEMORY[0x2A1C7C4A8](v145);
  v137 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E718928(0);
  v143 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v144 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29E718800(0, &qword_2A1A7D6B0, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v140 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v148 = &v126 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v149 = &v126 - v17;
  sub_29E718800(0, &qword_2A1A7CF20, MEMORY[0x29EDC1A18], v11);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v126 - v21;
  v23 = sub_29E750388();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v135 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v126 - v27;
  v29 = MEMORY[0x29EDC3840];
  sub_29E718800(0, &qword_2A1A7D6C8, MEMORY[0x29EDC3840], v11);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v32 = &v126 - v31;
  v33 = sub_29E74FDC8();
  MEMORY[0x2A1C7C4A8](v33);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v38 = v37;
  v40 = v39;
  sub_29E7189BC(v36, v32, &qword_2A1A7D6C8, v29);
  if ((*(v40 + 48))(v32, 1, v38) == 1)
  {
    sub_29E718A98(v32, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
    return 0;
  }

  v146 = v40;
  v41 = *(v40 + 32);
  v134 = v38;
  v41(v35, v32, v38);
  v151 = v2;
  v42 = sub_29E74FDB8();
  v44 = v43;
  v147 = v35;
  v46 = sub_29E74FDB8();
  v47 = v45;
  if (v44 >> 60 == 15)
  {
    v48 = v24;
    if (v45 >> 60 == 15)
    {
      sub_29E643D0C(v42, v44);
      v133 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v48 = v24;
  if (v45 >> 60 == 15)
  {
LABEL_7:
    sub_29E643D0C(v42, v44);
    sub_29E643D0C(v46, v47);
    v133 = 0;
    goto LABEL_9;
  }

  sub_29E718B08(v42, v44);
  sub_29E718B08(v46, v47);
  v133 = sub_29E71727C(v42, v44, v46, v47);
  sub_29E643D0C(v46, v47);
  sub_29E643D0C(v46, v47);
  sub_29E643D0C(v42, v44);
  sub_29E643D0C(v42, v44);
LABEL_9:
  v49 = v28;
  v50 = sub_29E74FDB8();
  if (v51 >> 60 != 15)
  {
    v52 = v50;
    v53 = v51;
    v54 = sub_29E74FDB8();
    if (v55 >> 60 == 15)
    {
      sub_29E643D0C(v52, v53);
    }

    else
    {
      v56 = v55;
      v132 = v54;
      sub_29E74E798();
      swift_allocObject();
      sub_29E74E788();
      v131 = sub_29E718B1C(&qword_2A1A7CF28, MEMORY[0x29EDC1A18], MEMORY[0x29EDC1A20]);
      sub_29E74E778();
      v130 = v52;

      v129 = v48[7];
      v129(v22, 0, 1, v23);
      v57 = v48[4];
      v128 = v48 + 4;
      v127 = v57;
      v57(v49, v22, v23);
      swift_allocObject();
      sub_29E74E788();
      v58 = v136;
      v59 = v132;
      sub_29E74E778();

      v129(v58, 0, 1, v23);
      v109 = v135;
      v127(v135, v58, v23);
      v133 = MEMORY[0x29ED92C90](v49, v109);
      sub_29E643D0C(v130, v53);
      sub_29E643D0C(v59, v56);
      v110 = v48[1];
      v110(v109, v23);
      v110(v49, v23);
    }
  }

  v60 = sub_29E74FCF8();
  v62 = v61;
  v63 = v147;
  v64 = sub_29E74FCF8();
  v66 = v146;
  if (v60 == v64 && v62 == v65)
  {
  }

  else
  {
    v67 = sub_29E755028();

    if ((v67 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v68 = sub_29E74FC88();
  v70 = v69;
  v72 = v71;
  v73 = sub_29E74FC88();
  v75 = v74;
  v77 = v76;
  v78 = MEMORY[0x29ED92520](v68, v70, v72, v73, v74, v76);
  sub_29E662E08(v73, v75, v77);
  sub_29E662E08(v68, v70, v72);
  if ((v78 & v133 & 1) == 0)
  {
    goto LABEL_49;
  }

  v79 = v149;
  sub_29E74FD58();
  v80 = v148;
  sub_29E74FD58();
  v81 = v144;
  v82 = *(v143 + 48);
  v83 = MEMORY[0x29EDC3980];
  sub_29E7189BC(v79, v144, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  sub_29E7189BC(v80, v81 + v82, &qword_2A1A7D6B0, v83);
  v84 = *(v150 + 48);
  v85 = v145;
  if (v84(v81, 1, v145) == 1)
  {
    v86 = MEMORY[0x29EDC3980];
    sub_29E718A98(v80, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
    sub_29E718A98(v79, &qword_2A1A7D6B0, v86);
    v87 = v84(v81 + v82, 1, v85);
    v66 = v146;
    if (v87 == 1)
    {
      sub_29E718A98(v81, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
      goto LABEL_25;
    }

LABEL_23:
    sub_29E718A3C(v81);
    goto LABEL_49;
  }

  v88 = v140;
  sub_29E7189BC(v81, v140, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  if (v84(v81 + v82, 1, v85) == 1)
  {
    v89 = MEMORY[0x29EDC3980];
    sub_29E718A98(v148, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
    sub_29E718A98(v149, &qword_2A1A7D6B0, v89);
    (*(v150 + 8))(v88, v85);
    v66 = v146;
    goto LABEL_23;
  }

  v90 = v150;
  v91 = v81 + v82;
  v92 = v137;
  (*(v150 + 32))(v137, v91, v85);
  sub_29E718B1C(&qword_2A185A648, MEMORY[0x29EDC3980], MEMORY[0x29EDC3988]);
  v93 = sub_29E754108();
  v94 = *(v90 + 8);
  v94(v92, v85);
  v95 = MEMORY[0x29EDC3980];
  sub_29E718A98(v148, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  sub_29E718A98(v149, &qword_2A1A7D6B0, v95);
  v94(v88, v85);
  sub_29E718A98(v81, &qword_2A1A7D6B0, v95);
  v66 = v146;
  if ((v93 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_25:
  sub_29E74FC68();
  sub_29E74FC68();
  sub_29E718B1C(&qword_2A1A7D6D0, MEMORY[0x29EDC3798], MEMORY[0x29EDC37B0]);
  v96 = v139;
  sub_29E7543B8();
  sub_29E7543B8();
  if (v154 == v152 && v155 == v153)
  {
    v97 = *(v138 + 8);
    v97(v141, v96);
    v97(v142, v96);
  }

  else
  {
    v98 = sub_29E755028();
    v99 = *(v138 + 8);
    v99(v141, v96);
    v99(v142, v96);

    if ((v98 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v100 = sub_29E74FD18();
  v101 = sub_29E74FD18();
  sub_29E7168B0(v100, v101);
  v103 = v102;

  if ((v103 & 1) == 0)
  {
    goto LABEL_49;
  }

  v104 = sub_29E74FCC8();
  v106 = v105;
  v107 = sub_29E74FCC8();
  if (v106)
  {
    if (!v108)
    {
      goto LABEL_45;
    }

    if (v104 == v107 && v106 == v108)
    {
    }

    else
    {
      v111 = sub_29E755028();

      if ((v111 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v108)
  {
    goto LABEL_45;
  }

  v112 = sub_29E74FD48();
  v114 = v113;
  v115 = sub_29E74FD48();
  if (!v114)
  {
    if (!v116)
    {
      goto LABEL_47;
    }

LABEL_45:

    goto LABEL_49;
  }

  if (!v116)
  {
    goto LABEL_45;
  }

  if (v112 == v115 && v114 == v116)
  {
  }

  else
  {
    v117 = sub_29E755028();

    if ((v117 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_47:
  v118 = sub_29E74FD98();
  if (v118 != sub_29E74FD98())
  {
    goto LABEL_49;
  }

  v119 = sub_29E74FCA8();
  if ((v119 ^ sub_29E74FCA8()))
  {
    goto LABEL_49;
  }

  v121 = sub_29E74FD38();
  v122 = sub_29E74FD38();
  v123 = v122;
  if (v121 == 13)
  {
    (*(v66 + 8))(v63, v134);
    return v123 == 13;
  }

  if (v122 == 13)
  {
LABEL_49:
    (*(v66 + 8))(v63, v134);
    return 0;
  }

  v124 = sub_29E74FBA8();
  v125 = sub_29E74FBA8();
  (*(v66 + 8))(v63, v134);
  return v124 == v125;
}