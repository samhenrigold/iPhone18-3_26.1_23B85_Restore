uint64_t sub_29E62B164(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E62B1C8(255, a2, a3, MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E62B1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E62B22C(uint64_t a1)
{
  sub_29E62B1C8(0, &qword_2A1857558, MEMORY[0x29EDBC7D0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E62B2DC(uint64_t a1)
{
  v2 = sub_29E7539D8();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D78();
}

uint64_t sub_29E62B3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E62B3EC(uint64_t a1)
{
  if (!qword_2A1857568)
  {
    sub_29E62AD84(255, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
    sub_29E62AF38();
    v1 = sub_29E753A58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857568);
    }
  }
}

uint64_t type metadata accessor for GoalSection(uint64_t a1)
{
  result = qword_2A1857578;
  if (!qword_2A1857578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E62B520(uint64_t a1)
{
  sub_29E62BD1C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750CA8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_2A1857570))
    {

      sub_29E74F858();
      sub_29E62BD88();
      swift_dynamicCast();
      sub_29E750D48();
      v16[2] = sub_29E750C68();
      v16[3] = v11;
      v16[1] = sub_29E752268();
      v13 = v12;
      (*(v3 + 8))(v5, v2);

      if (v13)
      {
        sub_29E62BDEC(0);
        v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_29E762F30;
        (*(v7 + 16))(v15 + v14, v9, v6);
        sub_29E750D18();
      }

      else
      {
        sub_29E750C88();
        sub_29E750D28();
      }

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_29E62B81C()
{
  sub_29E750D58();

  return swift_deallocClassInstance();
}

uint64_t sub_29E62B874@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E74ED88();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v10[0] = 0x74497265746F6F46;
  v10[1] = 0xEB000000005F6D65;
  sub_29E74ED78();
  v6 = sub_29E74ED48();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x29ED96C20](v6, v8);

  a1[3] = sub_29E751628();
  a1[4] = sub_29E62BCD4(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
  sub_29E5FEBF4(a1);
  return sub_29E751618();
}

uint64_t sub_29E62BA94(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  sub_29E750E38();
  sub_29E750E18();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_29E750E58();
  v10 = sub_29E750E68();
  v9(v8, v2);
  return v10;
}

uint64_t sub_29E62BC20()
{
  sub_29E751A58();
  sub_29E7547D8();
  sub_29E7547B8();
  sub_29E7518A8();
  sub_29E7547F8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E62BCD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E62BD1C()
{
  if (!qword_2A1857590)
  {
    v0 = sub_29E752278();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857590);
    }
  }
}

unint64_t sub_29E62BD88()
{
  result = qword_2A1857598;
  if (!qword_2A1857598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1857598);
  }

  return result;
}

void sub_29E62BDEC(uint64_t a1)
{
  if (!qword_2A1856858)
  {
    sub_29E750CA8();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856858);
    }
  }
}

uint64_t sub_29E62BE44()
{
  sub_29E62D8C0(0);
  v1 = v0;
  sub_29E6103B4(v0, qword_2A1869160);
  sub_29E61037C(v1, qword_2A1869160);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  type metadata accessor for LatestSleepScoreVisualizationItem(0);
  return sub_29E754808();
}

uint64_t sub_29E62BEC8(char *a1, uint64_t a2, uint64_t a3)
{
  sub_29E62CEC0(0, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  sub_29E62D928(a3, &v11 - v6, type metadata accessor for LatestSleepScoreVisualizationItem);
  v8 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  sub_29E62D990(v7, &a1[v9]);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E62DA10(v7, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
}

uint64_t sub_29E62C038()
{
  sub_29E62D8C0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561A8 != -1)
  {
    swift_once();
  }

  v8 = sub_29E61037C(v4, qword_2A1869160);
  (*(v5 + 16))(v7, v8, v4);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E62C180(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E62DA6C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v1;
  type metadata accessor for SleepScoreRoomTileContent(0);
  sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent, &unk_29E76ABAC);
  sub_29E753218();
  sub_29E62DB2C(0);
  v16[3] = v12;
  v16[4] = sub_29E62DC18(&qword_2A18575F0, sub_29E62DB2C, MEMORY[0x29EDBC030]);
  sub_29E5FEBF4(v16);
  sub_29E751088();
  sub_29E62DC18(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
  sub_29E753208();
  (*(v9 + 8))(v11, v8);
  MEMORY[0x29ED972D0](v16);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC6AB0], v3);
  sub_29E754258();
  (*(v4 + 8))(v6, v3);
  v13 = sub_29E754198();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_29E62C494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_29E74F5F8();
  v3 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SleepScoreRoomTileContent(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v18 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  v13 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13))
  {
    v15 = type metadata accessor for SleepScoreRoomModel(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  else
  {
    sub_29E62D760(v12, v8);
  }

  sub_29E62C7A0(v5);
  v16 = 1;
  if (!v14(v12, 1, v13))
  {
    v16 = *(v12 + *(v13 + 20));
  }

  sub_29E62DC60(v8, v11);
  (*(v3 + 32))(&v11[*(v9 + 20)], v5, v19);
  v11[*(v9 + 24)] = v16;
  sub_29E62DCE0(v11, v20, type metadata accessor for SleepScoreRoomTileContent);
}

uint64_t sub_29E62C7A0@<X0>(_BYTE *a1@<X8>)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  v7 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  if ((*(*(v7 - 8) + 48))(v1 + v6, 1, v7))
  {
    v8 = type metadata accessor for SleepScoreRoomModel(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_4:
    sub_29E62DA10(v5, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    *a1 = 0;
    goto LABEL_5;
  }

  sub_29E62D760(v1 + v6, v5);
  v9 = type metadata accessor for SleepScoreRoomModel(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_29E62DA10(v5, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation) == 1)
  {
    v10 = MEMORY[0x29EDC6A98];
    goto LABEL_6;
  }

  *a1 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate);
LABEL_5:
  v10 = MEMORY[0x29EDC6A90];
LABEL_6:
  v11 = *v10;
  v12 = sub_29E74F5F8();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t sub_29E62C9E4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

void sub_29E62CDD4(uint64_t a1)
{
  sub_29E62CEC0(319, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29E62CEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_29E62CF28(uint64_t a1)
{
  sub_29E62CEC0(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29E62CFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreRoomModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v21 - v9;
  sub_29E62D7E0(0);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_29E62D760(a1, v14);
  sub_29E62D760(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_29E62DA10(v14, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
LABEL_9:
      v19 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
      v17 = *(a1 + *(v19 + 20)) ^ *(a2 + *(v19 + 20)) ^ 1;
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_29E62D760(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_29E62D860(v10, type metadata accessor for SleepScoreRoomModel);
LABEL_6:
    sub_29E62D860(v14, sub_29E62D7E0);
    goto LABEL_7;
  }

  sub_29E62DCE0(&v14[v15], v7, type metadata accessor for SleepScoreRoomModel);
  v18 = sub_29E631D28(v10, v7);
  sub_29E62D860(v7, type metadata accessor for SleepScoreRoomModel);
  sub_29E62D860(v10, type metadata accessor for SleepScoreRoomModel);
  sub_29E62DA10(v14, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

void sub_29E62D2D8(void *a1)
{
  v2 = v1;
  v4 = sub_29E74F0D8();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EE78();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754048();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v35 - v15;
  v17 = type metadata accessor for SleepScoreRoomModel(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v35 - v22;
  v24 = sub_29E754828();
  if (v24)
  {
    v25 = v24;
    v37 = v6;
    v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
    swift_beginAccess();
    v27 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
    if ((*(*(v27 - 8) + 48))(v2 + v26, 1, v27))
    {

      (*(v18 + 56))(v16, 1, 1, v17);
LABEL_6:
      sub_29E62DA10(v16, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      return;
    }

    sub_29E62D760(v2 + v26, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      goto LABEL_6;
    }

    sub_29E62DCE0(v16, v23, type metadata accessor for SleepScoreRoomModel);
    v28 = [a1 navigationController];
    if (v28)
    {
      v36 = v28;
      sub_29E62D928(v23, v21, type metadata accessor for SleepScoreRoomModel);
      v35 = v25;
      v29 = v38;
      sub_29E74F008();
      v30 = v39;
      sub_29E74F028();
      v31 = v37;
      sub_29E74F018();
      sub_29E62D928(v21, v14, type metadata accessor for SleepScoreRoomModel);
      (*(v18 + 56))(v14, 0, 1, v17);
      v32 = v35;
      v33 = sub_29E6447F4(v29, v30, v35, v31, v14);
      sub_29E62D860(v21, type metadata accessor for SleepScoreRoomModel);
      v34 = v36;
      [v36 pushViewController:v33 animated:1];

      sub_29E62D860(v23, type metadata accessor for SleepScoreRoomModel);
    }

    else
    {
      sub_29E62D860(v23, type metadata accessor for SleepScoreRoomModel);
    }
  }
}

uint64_t sub_29E62D760(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E62D7E0(uint64_t a1)
{
  if (!qword_2A18575C8)
  {
    sub_29E62CEC0(255, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18575C8);
    }
  }
}

uint64_t sub_29E62D860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E62D8C0(uint64_t a1)
{
  if (!qword_2A18575D0)
  {
    type metadata accessor for LatestSleepScoreVisualizationCell(255);
    type metadata accessor for LatestSleepScoreVisualizationItem(255);
    v1 = sub_29E754818();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18575D0);
    }
  }
}

uint64_t sub_29E62D928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E62D990(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62DA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E62CEC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E62DA6C(uint64_t a1)
{
  if (!qword_2A18575D8)
  {
    type metadata accessor for SleepScoreRoomTileContent(255);
    sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent, &unk_29E76ABAC);
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18575D8);
    }
  }
}

void sub_29E62DB2C(uint64_t a1)
{
  if (!qword_2A18575E8)
  {
    type metadata accessor for SleepScoreRoomTileContent(255);
    sub_29E751088();
    sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent, &unk_29E76ABAC);
    sub_29E62DC18(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18575E8);
    }
  }
}

uint64_t sub_29E62DC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E62DC60(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62DCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_29E62DD58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_29E74EE78();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a4 hasChartModel])
  {
    return 0;
  }

  result = [a4 chartModel];
  if (!result)
  {
    return result;
  }

  v15 = result;
  v26[1] = a2;
  v16 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29E74EE28();

  v17 = objc_allocWithZone(MEMORY[0x29EDC4668]);
  v18 = sub_29E74EE08();
  v19 = sub_29E754198();
  v20 = [v17 initWithCalendar:v18 queryIdentifier:v19];

  [a1 setSleepDataSourceProvider_];
  v21 = [a1 healthStore];
  v22 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v23 = [a3 identifier];
  if (!v23)
  {
    sub_29E7541D8();
    v23 = sub_29E754198();

    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v24 = sub_29E754A28();
LABEL_9:
  v25 = [a1 remoteInteractiveChartForTypeIdentifier:v23 model:v15 chartSummaryTrendModel:v24 displayDate:0];

  (*(v11 + 8))(v13, v10);
  return v25;
}

void *sub_29E62E020()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_29E62E090()
{
  v1 = *(v0 + 16);
  sub_29E7550C8();
  sub_29E754B98();
  sub_29E754B98();
  sub_29E7550E8();
  if (v1)
  {
    v2 = v1;
    sub_29E754B98();
  }

  return sub_29E755108();
}

void sub_29E62E120(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_29E754B98();
  sub_29E754B98();
  if (v2)
  {
    sub_29E7550E8();
    v3 = v2;
    sub_29E754B98();
  }

  else
  {
    sub_29E7550E8();
  }
}

uint64_t sub_29E62E1C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_29E7550C8();
  sub_29E754B98();
  sub_29E754B98();
  sub_29E7550E8();
  if (v2)
  {
    v3 = v2;
    sub_29E754B98();
  }

  return sub_29E755108();
}

unint64_t sub_29E62E254()
{
  v1 = [*v0 identifier];
  v2 = sub_29E7541D8();
  v4 = v3;

  MEMORY[0x29ED96C20](v2, v4);

  return 0xD000000000000011;
}

uint64_t sub_29E62E2E4(uint64_t a1)
{
  v2 = sub_29E62E3FC();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E62E350()
{
  result = qword_2A18575F8;
  if (!qword_2A18575F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18575F8);
  }

  return result;
}

unint64_t sub_29E62E3A8()
{
  result = qword_2A1857600;
  if (!qword_2A1857600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857600);
  }

  return result;
}

unint64_t sub_29E62E3FC()
{
  result = qword_2A1857608;
  if (!qword_2A1857608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857608);
  }

  return result;
}

uint64_t sub_29E62E450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  if (sub_29E754B88() & 1) != 0 && (sub_29E754B88())
  {
    if (a3)
    {
      if (a6)
      {
        sub_29E609B5C(0, &qword_2A1857610, 0x29EDC4440);
        v8 = a6;
        v9 = a3;
        v10 = sub_29E754B88();

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29E62E548()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B08], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E62E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v8 = sub_29E74F7C8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_29E62E7CC()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v4 = sub_29E74F7C8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_29E62E920()
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

uint64_t sub_29E62E9EC()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

void sub_29E62EAD4()
{
  v93 = sub_29E74F8B8();
  v0 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v2 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62F414(0);
  v3 = sub_29E750108();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v94 = *(v4 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E7655F0;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = qword_2A1A7FA18;
  v8 = sub_29E754198();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    v81 = v6;
    v10 = v6 + v5;
    v90 = v10;
    *v10 = v9;
    *(v10 + 8) = 0;
    v11 = *MEMORY[0x29EDC1608];
    v92 = *(v4 + 104);
    v92(v10, v11, v3);
    v12 = (v10 + v94);
    v86 = "SharingChartItem_";
    v91 = v7;
    sub_29E74F8A8();
    v13 = sub_29E74F7C8();
    v85 = v4 + 104;
    v15 = v14;
    v16 = v0 + 8;
    v17 = *(v0 + 8);
    v18 = v93;
    v17(v2, v93);
    v89 = v17;
    *v12 = v13;
    v12[1] = v15;
    v19 = *MEMORY[0x29EDC1610];
    v87 = v3;
    v92(v12, v19, v3);
    v20 = 2 * v94;
    v21 = v90;
    v22 = v90 + 2 * v94;
    sub_29E74F8A8();
    v83 = 0xD000000000000010;
    v23 = sub_29E74F7C8();
    v25 = v24;
    v17(v2, v18);
    *v22 = v23;
    *(v22 + 8) = v25;
    *(v22 + 16) = 0;
    v84 = *MEMORY[0x29EDC1630];
    v26 = v92;
    (v92)(v21 + v20);
    v27 = v94;
    v28 = v21 + v20 + v94;
    sub_29E74F8A8();
    v29 = sub_29E74F7C8();
    v31 = v30;
    v89(v2, v93);
    v88 = v16;
    *v28 = v29;
    *(v28 + 8) = v31;
    *(v28 + 16) = 0;
    v26(v28, v84, v87);
    v82 = 4 * v27;
    v32 = v90;
    v33 = (v90 + 4 * v27);
    sub_29E74F8A8();
    v34 = sub_29E74F7C8();
    v36 = v35;
    v37 = v93;
    v38 = v89;
    v89(v2, v93);
    *v33 = v34;
    v33[1] = v36;
    v33[2] = 0;
    LODWORD(v83) = *MEMORY[0x29EDC15D0];
    (v92)(v32 + 4 * v27);
    v39 = v94;
    v40 = v32 + v82 + v94;
    sub_29E74F8A8();
    v41 = sub_29E74F7C8();
    v43 = v42;
    v38(v2, v37);
    *v40 = v41;
    *(v40 + 8) = v43;
    *(v40 + 16) = 0;
    v44 = v87;
    v45 = v92;
    v92(v40, v84, v87);
    v46 = v90;
    v47 = (v90 + 6 * v39);
    sub_29E74F8A8();
    v48 = sub_29E74F7C8();
    v50 = v49;
    v89(v2, v93);
    *v47 = v48;
    v47[1] = v50;
    v47[2] = 0;
    v45(v47, v83, v44);
    v82 = 8 * v94;
    v51 = v46 + 7 * v94;
    sub_29E74F8A8();
    v52 = sub_29E74F7C8();
    v54 = v53;
    v55 = v93;
    v56 = v89;
    v89(v2, v93);
    *v51 = v52;
    *(v51 + 8) = v54;
    *(v51 + 16) = 0;
    v57 = v84;
    v58 = v87;
    v92(v51, v84, v87);
    v59 = v90 + v82;
    sub_29E74F8A8();
    v60 = sub_29E74F7C8();
    v62 = v61;
    v56(v2, v55);
    *v59 = v60;
    *(v59 + 8) = v62;
    *(v59 + 16) = 0;
    v92(v59, v57, v58);
    v63 = v90;
    v64 = (v90 + v82 + v94);
    sub_29E74F8A8();
    v65 = sub_29E74F7C8();
    v67 = v66;
    v68 = v89;
    v89(v2, v93);
    *v64 = v65;
    v64[1] = v67;
    v64[2] = 0;
    v69 = v92;
    v92(v64, v83, v87);
    v70 = v63 + 10 * v94;
    sub_29E74F8A8();
    v71 = sub_29E74F7C8();
    v73 = v72;
    v74 = v93;
    v68(v2, v93);
    *v70 = v71;
    *(v70 + 8) = v73;
    *(v70 + 16) = 0;
    v75 = v84;
    v76 = v87;
    v69(v70, v84, v87);
    v77 = v90 + 11 * v94;
    sub_29E74F8A8();
    v78 = sub_29E74F7C8();
    v80 = v79;
    v68(v2, v74);
    *v77 = v78;
    *(v77 + 8) = v80;
    *(v77 + 16) = 0;
    v69(v77, v75, v76);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E62F414(uint64_t a1)
{
  if (!qword_2A18572F8)
  {
    sub_29E750108();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18572F8);
    }
  }
}

unint64_t sub_29E62F480()
{
  result = qword_2A1A7CB70;
  if (!qword_2A1A7CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB70);
  }

  return result;
}

uint64_t sub_29E62F5AC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_29E74F8B8();
  v1 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750218();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v22);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E759820, &v22);
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s.%{public}s]: Creating sleep apnea promo tile configuration", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v19[2] = "SECTION3_PARAGRAPH2";
  v13 = qword_2A1A7FA18;
  sub_29E750208();
  sub_29E74F8A8();
  v14 = sub_29E74F7C8();
  v19[0] = v15;
  v19[1] = v14;
  v16 = *(v1 + 8);
  v17 = v20;
  v16(v3, v20);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v16(v3, v17);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v16(v3, v17);
  return sub_29E750368();
}

uint64_t sub_29E62FA3C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v2 = sub_29E74FF68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v54 = &v49 - v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v49 - v8;
  sub_29E6302C8(0);
  v52 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752098();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v49 - v17;
  sub_29E752068();
  v19 = sub_29E752088();
  v20 = sub_29E7546C8();
  v21 = os_log_type_enabled(v19, v20);
  v55 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v9;
    v24 = swift_slowAlloc();
    v58 = v24;
    *v22 = 136446466;
    *(v22 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v58);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_29E6B9C90(0xD000000000000029, 0x800000029E759840, &v58);
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s.%{public}s]: Creating sleep apnea promo tile action handler object", v22, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    v9 = v23;
    v13 = v55;
    MEMORY[0x29ED98410](v25, -1, -1);
    MEMORY[0x29ED98410](v22, -1, -1);
  }

  v26 = *(v14 + 8);
  v26(v18, v13);
  v27 = v14;
  sub_29E74FEA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = v56;
  v30 = v54;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v9, v12, v2);
    sub_29E752068();
    v31 = v9;
    v32 = *(v3 + 16);
    v53 = v31;
    v32(v30);
    v33 = sub_29E752088();
    v34 = v30;
    v35 = sub_29E7546A8();
    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v27;
      v50 = v37;
      v58 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v58);
      *(v36 + 12) = 2082;
      (v32)(v51, v34, v2);
      v38 = sub_29E7541F8();
      v40 = v39;
      v41 = *(v3 + 8);
      v41(v34, v2);
      v42 = sub_29E6B9C90(v38, v40, &v58);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_29E5ED000, v33, v35, "[%{public}s] Failed to get country code: %{public}s", v36, 0x16u);
      v43 = v50;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v43, -1, -1);
      MEMORY[0x29ED98410](v36, -1, -1);

      v26(v56, v55);
      v41(v53, v2);
    }

    else
    {

      v46 = *(v3 + 8);
      v46(v34, v2);
      v26(v29, v55);
      v46(v53, v2);
    }

    v45 = 1;
  }

  else
  {
    v44 = sub_29E74FFA8();
    (*(*(v44 - 8) + 32))(v57, v12, v44);
    v45 = 0;
  }

  v47 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  return (*(*(v47 - 8) + 56))(v57, v45, 1, v47);
}

uint64_t sub_29E630040(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E6303BC();

  return MEMORY[0x2A1C63508](a1, a2, v4);
}

unint64_t sub_29E6300A4()
{
  result = qword_2A1A7CB78;
  if (!qword_2A1A7CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB78);
  }

  return result;
}

uint64_t sub_29E630114()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  sub_29E63027C();
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29E6301B8(uint64_t a1)
{
  v2 = sub_29E6300A4();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29E630204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E6300A4();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

unint64_t sub_29E63027C()
{
  result = qword_2A1A7BDB8;
  if (!qword_2A1A7BDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7BDB8);
  }

  return result;
}

void sub_29E6302C8(uint64_t a1)
{
  if (!qword_2A1A7BCC8)
  {
    sub_29E74FFA8();
    sub_29E74FF68();
    sub_29E630374(&qword_2A1A7CF58, MEMORY[0x29EDC39C0], MEMORY[0x29EDC39C8]);
    v1 = sub_29E755118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BCC8);
    }
  }
}

uint64_t sub_29E630374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E6303BC()
{
  result = qword_2A1A7CB80;
  if (!qword_2A1A7CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB80);
  }

  return result;
}

uint64_t sub_29E630430(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000029E757160;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x800000029E757160;
  }

  else
  {
    v6 = 0x800000029E757180;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F70784520464450;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000064657472;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x800000029E757180;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F70784520464450;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000064657472;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E630514()
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6305CC(uint64_t a1)
{
  sub_29E7542D8();
}

uint64_t sub_29E630670(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

unint64_t sub_29E630724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E630C58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29E630754(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657472;
  v4 = 0x800000029E757160;
  v5 = 0xD00000000000001ALL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000029E757180;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F70784520464450;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_29E6307CC()
{
  result = qword_2A1857628;
  if (!qword_2A1857628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857628);
  }

  return result;
}

uint64_t sub_29E630820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6163696669746F4ELL;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7079542061746144;
    v4 = 0xEE006D6F6F522065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D6D7553;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6163696669746F4ELL;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7079542061746144;
    v8 = 0xEE006D6F6F522065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D6D7553;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E63094C()
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E630A04(uint64_t a1)
{
  sub_29E7542D8();
}

uint64_t sub_29E630AA8(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

unint64_t sub_29E630B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E630CA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29E630B8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6163696669746F4ELL;
  if (v2 != 1)
  {
    v5 = 0x7079542061746144;
    v4 = 0xEE006D6F6F522065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D6D7553;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_29E630C04()
{
  result = qword_2A1857630;
  if (!qword_2A1857630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857630);
  }

  return result;
}

unint64_t sub_29E630C58(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29E630CA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for SleepScheduleDataSource(uint64_t a1)
{
  result = qword_2A1857650;
  if (!qword_2A1857650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E630D94(void *a1, uint64_t a2)
{
  v27 = a1;
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C(0);
  v26 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63176C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v26 - v16;
  sub_29E602E20(a1, v31);
  type metadata accessor for SleepRoomScheduleSection(0);
  swift_allocObject();
  sub_29E60613C(v31);
  sub_29E7527B8();
  if ((v31[0] & BYTE2(v31[0])) & BYTE1(v31[0]))
  {
    v18 = MEMORY[0x29EDC2000];
  }

  else
  {
    v18 = MEMORY[0x29EDC1FF8];
  }

  (*(v12 + 104))(v17, *v18, v11);
  type metadata accessor for SleepScheduleDataSource(0);
  *(swift_allocObject() + qword_2A1857638) = MEMORY[0x29EDCA1A0];
  (*(v12 + 16))(v15, v17, v11);

  v19 = sub_29E750918();
  (*(v12 + 8))(v17, v11);
  v31[0] = a2;
  sub_29E602DD4();
  swift_retain_n();
  v20 = sub_29E754908();
  v30 = v20;
  v21 = sub_29E7548D8();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_29E621428();
  sub_29E6317D8(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
  sub_29E6317D8(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  sub_29E752968();
  sub_29E6214E8(v6);

  v22 = swift_allocObject();
  swift_weakInit();

  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v23[4] = v28;
  sub_29E6317D8(&qword_2A18572B8, sub_29E62133C, MEMORY[0x29EDB89E8]);

  v24 = v26;
  sub_29E7529A8();

  (*(v29 + 8))(v9, v24);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E5FECBC(v27);
  return v19;
}

uint64_t sub_29E631288()
{
  type metadata accessor for SleepScheduleDataSource(0);
  sub_29E602E20(v0 + 16, v4);
  v1 = *(v0 + 56);

  sub_29E630D94(v4, v1);
  sub_29E6317D8(&qword_2A1857660, type metadata accessor for SleepScheduleDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

uint64_t sub_29E631368(uint64_t a1, uint64_t a2)
{
  sub_29E63176C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
    sub_29E7527B8();
    if ((v9[5] & v9[7]) & v9[6])
    {
      v7 = MEMORY[0x29EDC2000];
    }

    else
    {
      v7 = MEMORY[0x29EDC1FF8];
    }

    (*(v4 + 104))(v6, *v7, v3);
    sub_29E750908();
  }
}

uint64_t sub_29E63151C(uint64_t a1, uint64_t a2)
{
  sub_29E63176C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + qword_2A1857638) = MEMORY[0x29EDCA1A0];
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_29E750918();
  (*(v5 + 8))(a2, v4);
  return v8;
}

uint64_t sub_29E631650()
{
  sub_29E750938();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6316A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29E6316F0(uint64_t result, int a2, int a3)
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

void sub_29E63176C(uint64_t a1)
{
  if (!qword_2A1857668)
  {
    type metadata accessor for SleepRoomScheduleSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857668);
    }
  }
}

uint64_t sub_29E6317D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E631834(uint64_t a1)
{
  if (!qword_2A1A7CFB0)
  {
    sub_29E74F2D8();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CFB0);
    }
  }
}

uint64_t type metadata accessor for SleepScoreRoomModel(uint64_t a1)
{
  result = qword_2A1A7CEC8;
  if (!qword_2A1A7CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6318EC(uint64_t a1)
{
  sub_29E74F048();
  if (v1 <= 0x3F)
  {
    sub_29E631834(319);
    if (v2 <= 0x3F)
    {
      sub_29E619E1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E63198C(uint64_t a1)
{
  v2 = sub_29E74F2D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74F048();
  sub_29E632154(&qword_2A1857678, MEMORY[0x29EDC6920], MEMORY[0x29EDC6928]);
  sub_29E7540B8();
  v9 = type metadata accessor for SleepScoreRoomModel(0);
  sub_29E631CC4(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_29E7550E8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_29E7550E8();
    sub_29E632154(&qword_2A1857680, MEMORY[0x29EDC69D8], MEMORY[0x29EDC69E0]);
    sub_29E7540B8();
    (*(v3 + 8))(v5, v2);
  }

  if (!*(v1 + *(v9 + 24) + 8))
  {
    return sub_29E7550E8();
  }

  sub_29E7550E8();
  return sub_29E7542D8();
}

uint64_t sub_29E631BF8()
{
  sub_29E7550C8();
  sub_29E63198C(v1);
  return sub_29E755108();
}

uint64_t sub_29E631C3C(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E63198C(v2);
  return sub_29E755108();
}

uint64_t sub_29E631CC4(uint64_t a1, uint64_t a2)
{
  sub_29E631834(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E631D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74F2D8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E632090(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((MEMORY[0x29ED91950](a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = type metadata accessor for SleepScoreRoomModel(0);
  v15 = *(v27 + 20);
  v16 = *(v12 + 48);
  sub_29E631CC4(a1 + v15, v14);
  sub_29E631CC4(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_29E631CC4(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_29E632154(&qword_2A1857690, MEMORY[0x29EDC69D8], MEMORY[0x29EDC69E8]);
      v19 = sub_29E754108();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_29E6320F4(v14, sub_29E631834);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_29E6320F4(v14, sub_29E632090);
    return 0;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_29E6320F4(v14, sub_29E631834);
LABEL_11:
  v21 = *(v27 + 24);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25 && (*v22 == *v24 && v23 == v25 || (sub_29E755028() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

void sub_29E632090(uint64_t a1)
{
  if (!qword_2A1857688)
  {
    sub_29E631834(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857688);
    }
  }
}

uint64_t sub_29E6320F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E632154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6321E4(uint64_t a1)
{
  type metadata accessor for SleepScoreCardComponentViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_29E638014(319, &qword_2A18576A8, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6322A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = type metadata accessor for StandardComponentSection(0);
  MEMORY[0x2A1C7C4A8](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E632B30(0, &qword_2A18576B0, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AXComponentSection(0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752EB8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + *(type metadata accessor for CardComponentSection(0) + 20);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_29E7546B8();
    v23 = v11;
    v19 = sub_29E753358();
    v24 = v7;
    v20 = v19;
    sub_29E751F78();

    v7 = v24;
    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v16, 0);
    (*(v12 + 8))(v14, v23);
    if (v27 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E632774(v2, v10, type metadata accessor for SleepScoreCardComponentViewModel);
    sub_29E632774(v10, v7, type metadata accessor for AXComponentSection);
    swift_storeEnumTagMultiPayload();
    sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection, &unk_29E765BF4);
    sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection, &unk_29E765BA4);
    sub_29E753118();
    v17 = type metadata accessor for AXComponentSection;
    v18 = v10;
    return sub_29E632824(v18, v17);
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E632774(v2, v4, type metadata accessor for SleepScoreCardComponentViewModel);
  sub_29E632774(v4, v7, type metadata accessor for StandardComponentSection);
  swift_storeEnumTagMultiPayload();
  sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection, &unk_29E765BF4);
  sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection, &unk_29E765BA4);
  sub_29E753118();
  v17 = type metadata accessor for StandardComponentSection;
  v18 = v4;
  return sub_29E632824(v18, v17);
}

uint64_t sub_29E632774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6327DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E632824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6328D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E632950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E6329C0(uint64_t a1)
{
  result = type metadata accessor for SleepScoreCardComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E632A34()
{
  result = qword_2A18576E8;
  if (!qword_2A18576E8)
  {
    sub_29E632B30(255, &qword_2A18576F0, MEMORY[0x29EDBC7F0]);
    sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection, &unk_29E765BF4);
    sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection, &unk_29E765BA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18576E8);
  }

  return result;
}

void sub_29E632B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AXComponentSection(255);
    v7 = type metadata accessor for StandardComponentSection(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E632BBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_29E752EF8();
  LOBYTE(v44[0]) = 0;
  sub_29E633048(a1, &v53);
  v25 = *&v54[48];
  v26 = *&v54[64];
  v21 = v53;
  v22 = *v54;
  v23 = *&v54[16];
  v24 = *&v54[32];
  v28[1] = *v54;
  v28[2] = *&v54[16];
  v27 = *&v54[80];
  v28[0] = v53;
  v28[3] = *&v54[32];
  v28[4] = *&v54[48];
  v28[5] = *&v54[64];
  v28[6] = *&v54[80];
  sub_29E632774(&v21, &v37, sub_29E6377EC);
  sub_29E632824(v28, sub_29E6377EC);
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v4 = v44[0];
  v5 = sub_29E7533C8();
  sub_29E7529C8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_29E752EF8();
  LOBYTE(v44[0]) = 0;
  sub_29E633FF0(&v53);
  v33 = *&v54[48];
  v34 = *&v54[64];
  v29 = v53;
  v30 = *v54;
  v31 = *&v54[16];
  v32 = *&v54[32];
  v36[1] = *v54;
  v36[2] = *&v54[16];
  v35 = *&v54[80];
  v36[0] = v53;
  v36[3] = *&v54[32];
  v36[4] = *&v54[48];
  v36[5] = *&v54[64];
  v36[6] = *&v54[80];
  sub_29E632774(&v29, &v37, sub_29E637980);
  sub_29E632824(v36, sub_29E637980);
  *&v19[55] = v32;
  *&v19[71] = v33;
  *&v19[87] = v34;
  *&v19[103] = v35;
  *&v19[7] = v29;
  *&v19[23] = v30;
  *&v19[39] = v31;
  v15 = v44[0];
  v37 = v3;
  v38[0] = v4;
  *&v38[49] = *&v20[48];
  *&v38[33] = *&v20[32];
  *&v38[17] = *&v20[16];
  *&v38[1] = *v20;
  *&v38[112] = *&v20[111];
  *&v38[97] = *&v20[96];
  *&v38[81] = *&v20[80];
  *&v38[65] = *&v20[64];
  v38[120] = v5;
  *&v39 = v7;
  *(&v39 + 1) = v9;
  *&v40 = v11;
  *(&v40 + 1) = v13;
  v41 = 0;
  LOBYTE(__src[11]) = 0;
  __src[9] = v39;
  __src[10] = v40;
  __src[2] = *&v38[16];
  __src[3] = *&v38[32];
  __src[0] = v3;
  __src[1] = *v38;
  __src[7] = *&v38[96];
  __src[8] = *&v38[112];
  __src[5] = *&v38[64];
  __src[6] = *&v38[80];
  __src[4] = *&v38[48];
  v42[0] = v14;
  v42[1] = 0;
  v43[0] = v44[0];
  *&v43[17] = *&v19[16];
  *&v43[1] = *v19;
  *&v43[81] = *&v19[80];
  *&v43[65] = *&v19[64];
  *&v43[97] = *&v19[96];
  *&v43[112] = *(&v35 + 1);
  *&v43[33] = *&v19[32];
  *&v43[49] = *&v19[48];
  *(&__src[17] + 8) = *&v43[80];
  *(&__src[18] + 8) = *&v43[96];
  *(&__src[16] + 8) = *&v43[64];
  *(&__src[11] + 8) = v14;
  *(&__src[15] + 8) = *&v43[48];
  *(&__src[14] + 8) = *&v43[32];
  *(&__src[13] + 8) = *&v43[16];
  *(&__src[12] + 8) = *v43;
  *(&__src[19] + 1) = *(&v35 + 1);
  memcpy(a2, __src, 0x140uLL);
  v50 = *&v19[64];
  v51 = *&v19[80];
  *v52 = *&v19[96];
  v46 = *v19;
  v47 = *&v19[16];
  v48 = *&v19[32];
  v44[0] = v14;
  v44[1] = 0;
  v45 = v15;
  *&v52[15] = *&v19[111];
  v49 = *&v19[48];
  sub_29E632774(&v37, &v53, sub_29E637774);
  sub_29E632774(v42, &v53, sub_29E6378B0);
  sub_29E632824(v44, sub_29E6378B0);
  *&v54[65] = *&v20[64];
  *&v54[81] = *&v20[80];
  *v55 = *&v20[96];
  *&v54[1] = *v20;
  *&v54[17] = *&v20[16];
  *&v54[33] = *&v20[32];
  v53 = v3;
  v54[0] = v4;
  *&v55[15] = *&v20[111];
  *&v54[49] = *&v20[48];
  v56 = v5;
  v57 = v7;
  v58 = v9;
  v59 = v11;
  v60 = v13;
  v61 = 0;
  sub_29E632824(&v53, sub_29E637774);
}

uint64_t sub_29E633048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a2;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v79 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753508();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74E998();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v81 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = sub_29E74EF98();
  sub_29E633810(v14);
  v84 = sub_29E7535F8();
  KeyPath = v15;
  v17 = v16;
  v74 = *MEMORY[0x29EDBC9C8];
  v83 = a1;
  v18 = *(v9 + 104);
  v67[2] = v9 + 104;
  v73 = v18;
  v67[0] = v8;
  v18(v11);
  v19 = v11;
  v68 = sub_29E753448();
  v20 = *(v68 - 8);
  v21 = *(v20 + 56);
  v67[1] = v20 + 56;
  v69 = v21;
  v21(v7, 1, 1, v68);
  sub_29E753498();
  v22 = v7;
  v72 = sub_29E637500;
  sub_29E632824(v7, sub_29E637500);
  v23 = *(v9 + 8);
  v70 = v9 + 8;
  v71 = v23;
  v23(v11, v8);
  v24 = v17;
  v25 = v84;
  v26 = KeyPath;
  v77 = sub_29E7535D8();
  v76 = v27;
  v29 = v28;
  v78 = v30;

  sub_29E60DB44(v25, v26, v24 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v84) = v29 & 1;
  LOBYTE(v90) = v29 & 1;
  LOBYTE(v87) = 1;
  v90 = sub_29E5FAF38();
  v91 = v31;
  sub_29E60DE10();
  v32 = sub_29E753608();
  v34 = v33;
  v36 = v35;
  v37 = v67[0];
  v73(v19, v74, v67[0]);
  v38 = v68;
  (*(v20 + 104))(v22, *MEMORY[0x29EDBC988], v68);
  v69(v22, 0, 1, v38);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v22, v72);
  v71(v19, v37);
  v39 = sub_29E7535D8();
  v41 = v40;
  v43 = v42;

  sub_29E60DB44(v32, v34, v36 & 1);

  v44 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v45 = v79;
  sub_29E632774(v83 + *(v44 + 20), v79, sub_29E631834);
  v46 = sub_29E74F2D8();
  v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
  sub_29E632824(v45, sub_29E631834);
  if (v47 == 1)
  {
    v48 = sub_29E753968();
  }

  else
  {
    v48 = sub_29E753958();
  }

  v90 = v48;
  v49 = sub_29E7535B8();
  v50 = v39;
  v51 = v49;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_29E60DB44(v50, v41, v43 & 1);

  v58 = v77;
  v59 = v76;
  *&v87 = v77;
  *(&v87 + 1) = v76;
  LOBYTE(v88) = v84;
  *(&v88 + 1) = *v99;
  DWORD1(v88) = *&v99[3];
  v60 = v78;
  v61 = KeyPath;
  *(&v88 + 1) = v78;
  *v89 = KeyPath;
  v89[16] = 1;
  *&v89[17] = 256;
  v86 = 0;
  v85 = v55 & 1;
  v62 = v82;
  *v82 = v80;
  v63 = v87;
  v64 = v88;
  v65 = *v89;
  *(v62 + 55) = *&v89[15];
  *(v62 + 5) = v65;
  *(v62 + 3) = v64;
  *(v62 + 1) = v63;
  v62[8] = 0x4020000000000000;
  *(v62 + 72) = 0;
  v62[10] = v51;
  v62[11] = v53;
  *(v62 + 96) = v55 & 1;
  v62[13] = v57;

  sub_29E632774(&v87, &v90, sub_29E6371F8);
  sub_29E62935C(v51, v53, v55 & 1);

  sub_29E60DB44(v51, v53, v55 & 1);

  v90 = v58;
  v91 = v59;
  v92 = v84;
  *v93 = *v99;
  *&v93[3] = *&v99[3];
  v94 = v60;
  v95 = v61;
  v96 = 0;
  v97 = 1;
  v98 = 256;
  sub_29E632824(&v90, sub_29E6371F8);
}

uint64_t sub_29E633810@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E753508();
  v40 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74E9F8();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6380F8(0, &qword_2A18577E8, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], MEMORY[0x29EDB9A30]);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v47 = &v36 - v8;
  v9 = sub_29E74E948();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74E938();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E754188();
  v15 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E754168();
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v20 = sub_29E5FB170();
  if (v21)
  {
    v42 = v20;
    sub_29E754158();
    sub_29E754148();
    sub_29E754158();
    sub_29E754148();
    v37 = v1;
    sub_29E74EFB8();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v17);
    v22 = *(v15 + 8);
    v23 = v50;
    v22(v17, v50);
    sub_29E754138();

    sub_29E754148();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E74E928();
    v24 = v51;
    sub_29E65B284(v17, v14);
    (*(v43 + 8))(v14, v44);
    v22(v17, v23);
    sub_29E74E968();
    KeyPath = swift_getKeyPath();
    *(&v36 - 2) = MEMORY[0x2A1C7C4A8](KeyPath);
    swift_getKeyPath();
    v26 = v47;
    sub_29E74E958();

    v27 = (*(v45 + 8))(v11, v46);
    MEMORY[0x2A1C7C4A8](v27);
    v28 = v37;
    *(&v36 - 2) = v24;
    *(&v36 - 1) = v28;
    sub_29E634B44(sub_29E637B58, (&v36 - 4));
    return (*(v48 + 8))(v26, v49);
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    sub_29E74EFB8();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v17);
    (*(v15 + 8))(v17, v50);
    sub_29E74E9E8();
    sub_29E74E9A8();
    v31 = v39;
    v30 = v40;
    v32 = v42;
    (*(v40 + 104))(v39, *MEMORY[0x29EDBC9C8], v42);
    v33 = sub_29E753448();
    v34 = v41;
    (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
    sub_29E753478();
    v35 = sub_29E753498();
    sub_29E632824(v34, sub_29E637500);
    (*(v30 + 8))(v31, v32);
    v52 = v35;
    sub_29E637B04();
    return sub_29E74E9B8();
  }
}

uint64_t sub_29E633FF0@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29E753938();
  sub_29E634168(&v11);
  v3 = v17;
  v21 = v17;
  v19 = v17;
  v4 = v12;
  v5 = v11;
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v6 = v15;
  v8 = v13;
  v7 = v14;
  v20[4] = v15;
  v20[5] = v16;
  v18[4] = v15;
  v18[5] = v16;
  *a1 = v2;
  *(a1 + 104) = v3;
  *(a1 + 88) = v16;
  *(a1 + 72) = v6;
  *(a1 + 56) = v7;
  *(a1 + 40) = v8;
  *(a1 + 24) = v4;
  *(a1 + 8) = v5;

  sub_29E632774(v18, &v10, sub_29E637A38);
  sub_29E632824(v20, sub_29E637A38);
}

__n128 sub_29E634168@<Q0>(uint64_t a1@<X8>)
{
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E753508();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.n128_u64[0] = sub_29E5FC8F8();
  v30.n128_u64[1] = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  v14 = v13;
  (*(v6 + 104))(v8, *MEMORY[0x29EDBC9C8], v5);
  v15 = sub_29E753448();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_29E753498();
  sub_29E632824(v4, sub_29E637500);
  (*(v6 + 8))(v8, v5);
  v16 = sub_29E7535D8();
  v18 = v17;
  LOBYTE(v8) = v19;
  v21 = v20;

  sub_29E60DB44(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v30.n128_u8[0] = v8 & 1;
  v33 = 1;
  v23 = sub_29E753C08();
  v25 = v24;
  sub_29E634F50(v29[1], &v30);
  v26 = v31;
  v27 = v32;
  result = v30;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 256;
  *(a1 + 56) = result;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v23;
  *(a1 + 96) = v25;
  return result;
}

uint64_t sub_29E63449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v42 = a2;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E753508();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637B74(0);
  v14 = v13;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v40 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v37 - v17;
  sub_29E7544C8();
  v43 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 == 2)
    {
      v38 = sub_29E637B74;
      sub_29E632774(a1, v18, sub_29E637B74);
      v24 = *(v14 + 48);
      (*(v10 + 104))(v12, *MEMORY[0x29EDBC9C8], v9);
      v25 = sub_29E753448();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      v26 = sub_29E753498();
      sub_29E632824(v8, sub_29E637500);
      (*(v10 + 8))(v12, v9);
      sub_29E637C08(0);
      sub_29E6327DC(&qword_2A1857830, sub_29E637C08, MEMORY[0x29EDC9C40]);
      v27 = sub_29E74E9C8();
      v45 = v26;
      sub_29E637B04();
      sub_29E74EA08();
      v27(v44, 0);
      sub_29E632824(&v18[v24], sub_29E637C08);
      v28 = v40;
      sub_29E632774(a1, v40, v38);
      v29 = type metadata accessor for SleepScoreCardComponentViewModel(0);
      v30 = v41;
      sub_29E632774(v39 + *(v29 + 20), v41, sub_29E631834);
      v31 = sub_29E74F2D8();
      LODWORD(v24) = (*(*(v31 - 8) + 48))(v30, 1, v31);
      sub_29E632824(v30, sub_29E631834);
      if (v24 == 1)
      {
        v32 = sub_29E753968();
      }

      else
      {
        v32 = sub_29E753958();
      }

      v33 = v32;
      v34 = *(v14 + 48);
      v35 = sub_29E74E9C8();
      v45 = v33;
      sub_29E637D58();
      sub_29E74EA08();
      v35(v44, 0);
      v23 = v28 + v34;
      goto LABEL_11;
    }

    if (*a1 == 1)
    {
      sub_29E632774(a1, v18, sub_29E637B74);
      v19 = *(v14 + 48);
      (*(v10 + 104))(v12, *MEMORY[0x29EDBC9C8], v9);
      v20 = sub_29E753448();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_29E753478();
      v21 = sub_29E753498();
      sub_29E632824(v8, sub_29E637500);
      (*(v10 + 8))(v12, v9);
      sub_29E637C08(0);
      sub_29E6327DC(&qword_2A1857830, sub_29E637C08, MEMORY[0x29EDC9C40]);
      v22 = sub_29E74E9C8();
      v45 = v21;
      sub_29E637B04();
      sub_29E74EA08();
      v22(v44, 0);
      v23 = &v18[v19];
LABEL_11:
      sub_29E632824(v23, sub_29E637C08);
    }
  }
}

uint64_t sub_29E634B44(void (*a1)(char *), uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  sub_29E637B74(0);
  v27 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637174(0, &qword_2A1857810, sub_29E637B74, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v26 - v7;
  v9 = MEMORY[0x29EDB9990];
  v10 = MEMORY[0x29EDB9988];
  v26 = MEMORY[0x29EDB9A30];
  sub_29E6380F8(0, &qword_2A18577E8, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], MEMORY[0x29EDB9A30]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v26 - v14;
  v16 = v10;
  v17 = MEMORY[0x29EDB9A20];
  sub_29E6380F8(0, &qword_2A1857818, v9, v16, MEMORY[0x29EDB9A20]);
  v19 = v18;
  v28 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v26 - v20;
  (*(v13 + 16))(v15, v32, v12);
  sub_29E637C9C(&qword_2A1857820, &qword_2A18577E8, v26, MEMORY[0x29EDB9A38]);
  sub_29E754398();
  sub_29E637C9C(&qword_2A1857828, &qword_2A1857818, v17, MEMORY[0x29EDB9A28]);
  v22 = v21;
  v32 = v19;
  sub_29E754BF8();
  v23 = *(v29 + 48);
  v24 = v27;
  if ((v23)(v8, 1) != 1)
  {
    while (1)
    {
      sub_29E637CF4(v8, v5);
      v30(v5);
      if (v2)
      {
        break;
      }

      sub_29E632824(v5, sub_29E637B74);
      sub_29E754BF8();
      if (v23(v8, 1, v24) == 1)
      {
        return (*(v28 + 8))(v22, v32);
      }
    }

    sub_29E632824(v5, sub_29E637B74);
  }

  return (*(v28 + 8))(v22, v32);
}

uint64_t sub_29E634F50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753508();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v39[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = sub_29E5FC098();
  v43 = v12;
  sub_29E60DE10();
  v13 = sub_29E753608();
  v15 = v14;
  v17 = v16;
  (*(v9 + 104))(v11, *MEMORY[0x29EDBC9C8], v8);
  v18 = sub_29E753448();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_29E753498();
  sub_29E632824(v7, sub_29E637500);
  (*(v9 + 8))(v11, v8);
  v19 = sub_29E7535D8();
  v21 = v20;
  v23 = v22;
  v39[0] = v24;

  sub_29E60DB44(v13, v15, v17 & 1);

  v25 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v26 = v40;
  sub_29E632774(a1 + *(v25 + 20), v40, sub_29E631834);
  v27 = sub_29E74F2D8();
  v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
  sub_29E632824(v26, sub_29E631834);
  if (v28 == 1)
  {
    v29 = sub_29E753968();
  }

  else
  {
    v29 = sub_29E753958();
  }

  v42 = v29;
  v30 = sub_29E7535B8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_29E60DB44(v19, v21, v23 & 1);

  v38 = v41;
  *v41 = v30;
  v38[1] = v32;
  *(v38 + 16) = v34 & 1;
  v38[3] = v36;
  return result;
}

void *sub_29E63534C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_29E752FF8();
  v10 = 0;
  sub_29E632BBC(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_29E632774(__dst, &v7, sub_29E6376D0);
  sub_29E632824(v12, sub_29E6376D0);
  memcpy(&v9[7], __dst, 0x140uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x147uLL);
}

uint64_t sub_29E63543C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_29E752EF8();
  LOBYTE(v73) = 0;
  sub_29E635BCC(&v81);
  v102 = v81;
  v103 = *v82;
  v104[0] = *&v82[16];
  *(v104 + 11) = *&v82[27];
  v105[0] = v81;
  v105[1] = *v82;
  v106[0] = *&v82[16];
  *(v106 + 11) = *&v82[27];
  sub_29E632774(&v102, &v63, sub_29E637140);
  sub_29E632824(v105, sub_29E637140);
  *&v101[7] = v102;
  *&v101[23] = v103;
  *&v101[39] = v104[0];
  *&v101[50] = *(v104 + 11);
  v45 = v73;
  v3 = sub_29E5FB170();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v44 = sub_29E752EF8();
    LOBYTE(v94[0]) = 0;
    sub_29E6360CC(v5, v6, a1, &v73);
    v63 = v73;
    *v64 = *v74;
    *&v64[16] = *&v74[16];
    *&v64[27] = *&v74[27];
    v81 = v73;
    *v82 = *v74;
    *&v82[16] = *&v74[16];
    *&v82[27] = *&v74[27];
    sub_29E632774(&v63, &v68, sub_29E637140);
    sub_29E632824(&v81, sub_29E637140);

    v42 = *(&v63 + 1);
    v43 = v63;
    v40 = *&v64[8];
    v41 = *v64;
    v38 = *&v64[24];
    v39 = *&v64[16];
    v34 = *&v64[40] | (v64[42] << 16);
    v36 = LOBYTE(v94[0]);
    v37 = *&v64[32];
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v34 = 0;
    v36 = 0;
  }

  v32 = sub_29E752EF8();
  LOBYTE(v73) = 0;
  sub_29E6365D8(a1, &v81);
  v49 = v81;
  v50 = *v82;
  v51[0] = *&v82[16];
  *(v51 + 11) = *&v82[27];
  v52[0] = v81;
  v52[1] = *v82;
  v53[0] = *&v82[16];
  *(v53 + 11) = *&v82[27];
  sub_29E632774(&v49, &v63, sub_29E637140);
  sub_29E632824(v52, sub_29E637140);
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51[0];
  *&v48[50] = *(v51 + 11);
  v7 = v73;
  v33 = v73;
  v29 = sub_29E7533B8();
  sub_29E7529C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v31 = sub_29E752EF8();
  sub_29E636AD0(a1, &v81);
  v16 = v81;
  v30 = *v82;
  v17 = v82[8];
  v18 = *&v82[16];
  v55 = 0;
  v54 = v82[8];
  v19 = sub_29E7533B8();
  sub_29E7529C8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v81) = 0;
  v56 = v46;
  v57[0] = v45;
  *&v57[1] = *v101;
  *&v57[33] = *&v101[32];
  *&v57[17] = *&v101[16];
  *&v57[49] = *&v101[48];
  *&v57[65] = *&v101[64];
  __src[0] = v46;
  __src[1] = *v57;
  *(&__src[4] + 15) = *&v57[63];
  __src[3] = *&v57[32];
  __src[4] = *&v57[48];
  __src[2] = *&v57[16];
  v58[0] = v44;
  v58[1] = 0;
  *&v59 = v36;
  *(&v59 + 1) = v43;
  *&v60 = v42;
  *(&v60 + 1) = v41;
  *&v61 = v40;
  *(&v61 + 1) = v39;
  *v62 = v38;
  *&v62[8] = v37;
  v62[18] = BYTE2(v34);
  *&v62[16] = v34;
  *(&__src[6] + 8) = v59;
  *(&__src[5] + 8) = v44;
  *(&__src[10] + 7) = *&v62[15];
  *(&__src[9] + 8) = *v62;
  *(&__src[8] + 8) = v61;
  *(&__src[7] + 8) = v60;
  v63 = v32;
  v64[0] = v7;
  *&v64[1] = *v48;
  *&v64[65] = *&v48[64];
  *&v64[49] = *&v48[48];
  *&v64[33] = *&v48[32];
  *&v64[17] = *&v48[16];
  v64[72] = v29;
  *&v65 = v9;
  *(&v65 + 1) = v11;
  *&v66 = v13;
  *(&v66 + 1) = v15;
  v67 = 0;
  LOBYTE(__src[19]) = 0;
  __src[17] = v65;
  __src[18] = v66;
  __src[15] = *&v64[48];
  __src[16] = *&v64[64];
  __src[13] = *&v64[16];
  __src[14] = *&v64[32];
  __src[11] = v32;
  __src[12] = *v64;
  v68 = v31;
  v69[0] = 0;
  *&v69[8] = v16;
  *&v69[24] = v30;
  LOBYTE(v70) = v17;
  *(&v70 + 1) = v18;
  LOBYTE(v71) = v19;
  *(&v71 + 1) = v20;
  *v72 = v22;
  *&v72[8] = v24;
  *&v72[16] = v26;
  v72[24] = 0;
  *(&__src[23] + 8) = v71;
  *(&__src[24] + 8) = *v72;
  *(&__src[25] + 1) = *&v72[9];
  *(&__src[19] + 8) = v31;
  *(&__src[20] + 8) = *v69;
  *(&__src[21] + 8) = *&v69[16];
  *(&__src[22] + 8) = v70;
  memcpy(a2, __src, 0x1A1uLL);
  v73 = v31;
  v74[0] = 0;
  *&v74[8] = v16;
  *&v74[24] = v30;
  v74[32] = v17;
  *&v74[40] = v18;
  v75 = v19;
  v76 = v21;
  v77 = v23;
  v78 = v25;
  v79 = v27;
  v80 = 0;
  sub_29E632774(&v56, &v81, sub_29E637104);
  sub_29E632774(v58, &v81, sub_29E637318);
  sub_29E632774(&v63, &v81, sub_29E63734C);
  sub_29E632774(&v68, &v81, sub_29E6373F4);
  sub_29E632824(&v73, sub_29E6373F4);
  *&v82[17] = *&v48[16];
  *&v82[33] = *&v48[32];
  v83 = *&v48[48];
  v81 = v32;
  v82[0] = v33;
  v84 = *&v48[64];
  *&v82[1] = *v48;
  v85 = v29;
  v86 = v9;
  v87 = v11;
  v88 = v13;
  v89 = v15;
  v90 = 0;
  sub_29E632824(&v81, sub_29E63734C);
  v91[0] = v44;
  v91[1] = 0;
  v91[2] = v36;
  v91[3] = v43;
  v91[4] = v42;
  v91[5] = v41;
  v91[6] = v40;
  v91[7] = v39;
  v91[8] = v38;
  v91[9] = v37;
  v93 = BYTE2(v34);
  v92 = v34;
  sub_29E632824(v91, sub_29E637318);
  v94[0] = v46;
  v94[1] = 0;
  v95 = v45;
  v97 = *&v101[16];
  v98 = *&v101[32];
  v99 = *&v101[48];
  v100 = *&v101[64];
  v96 = *v101;
  sub_29E632824(v94, sub_29E637104);
}

uint64_t sub_29E635BCC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E753508();
  v4 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E754188();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E754168();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  sub_29E7544C8();
  v38 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = sub_29E74EF98();
  sub_29E754158();
  sub_29E754148();
  sub_29E74EFB8();
  sub_29E754138();

  sub_29E754148();
  sub_29E754178();
  v12 = sub_29E65B0B4(v10);
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v45 = v12;
  v46 = v14;
  sub_29E60DE10();
  v15 = sub_29E753608();
  v17 = v16;
  v19 = v18;
  v20 = v37;
  (*(v4 + 104))(v6, *MEMORY[0x29EDBC9C8], v37);
  v21 = sub_29E753448();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v3, sub_29E637500);
  (*(v4 + 8))(v6, v20);
  v22 = sub_29E7535D8();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_29E60DB44(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v30 = *v41;
  *(&v43 + 1) = *v41;
  DWORD1(v43) = *&v41[3];
  *v44 = KeyPath;
  v44[16] = 1;
  *&v44[17] = 256;
  v31 = v39;
  *(v39 + 55) = *&v44[15];
  *&v42 = v22;
  *(&v42 + 1) = v24;
  LOBYTE(v43) = v26 & 1;
  *(&v43 + 1) = v28;
  *v31 = v36;
  v32 = v42;
  v33 = v43;
  *(v31 + 40) = *v44;
  *(v31 + 24) = v33;
  *(v31 + 8) = v32;
  v45 = v22;
  v46 = v24;
  v47 = v26 & 1;
  *&v48[3] = *&v41[3];
  *v48 = v30;
  v49 = v28;
  v50 = KeyPath;
  v51 = 0;
  v52 = 1;
  v53 = 256;

  sub_29E632774(&v42, v40, sub_29E6371F8);
  sub_29E632824(&v45, sub_29E6371F8);
}

uint64_t sub_29E6360CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a3;
  v49 = a4;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E753508();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v48 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = sub_29E753938();
  v54 = a1;
  v55 = a2;
  sub_29E60DE10();

  v15 = sub_29E753608();
  v17 = v16;
  v19 = v18;
  (*(v12 + 104))(v14, *MEMORY[0x29EDBC9C8], v11);
  v20 = sub_29E753448();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_29E753498();
  sub_29E632824(v10, sub_29E637500);
  (*(v12 + 8))(v14, v11);
  v21 = sub_29E7535D8();
  v23 = v22;
  v25 = v24;

  sub_29E60DB44(v15, v17, v19 & 1);

  v26 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v27 = v46;
  sub_29E632774(v45 + *(v26 + 20), v46, sub_29E631834);
  v28 = sub_29E74F2D8();
  v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
  sub_29E632824(v27, sub_29E631834);
  if (v29 == 1)
  {
    v30 = sub_29E753968();
  }

  else
  {
    v30 = sub_29E753958();
  }

  v54 = v30;
  v31 = sub_29E7535B8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_29E60DB44(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v65 = v35 & 1;
  v63 = 1;
  *&v51 = v31;
  *(&v51 + 1) = v33;
  LOBYTE(v52) = v35 & 1;
  *(&v52 + 1) = *v64;
  DWORD1(v52) = *&v64[3];
  *(&v52 + 1) = v37;
  *v53 = KeyPath;
  v53[16] = 1;
  *&v53[17] = 256;
  v39 = v49;
  *v49 = v47;
  v40 = v51;
  v41 = v52;
  v42 = *v53;
  *(v39 + 55) = *&v53[15];
  *(v39 + 5) = v42;
  *(v39 + 3) = v41;
  *(v39 + 1) = v40;
  v54 = v31;
  v55 = v33;
  v56 = v35 & 1;
  *&v57[3] = *&v64[3];
  *v57 = *v64;
  v58 = v37;
  v59 = KeyPath;
  v60 = 0;
  v61 = 1;
  v62 = 256;

  sub_29E632774(&v51, v50, sub_29E6371F8);
  sub_29E632824(&v54, sub_29E6371F8);
}

uint64_t sub_29E6365D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753508();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v44 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = sub_29E753938();
  v50 = sub_29E5FC098();
  v51 = v12;
  sub_29E60DE10();
  v13 = sub_29E753608();
  v15 = v14;
  v17 = v16;
  (*(v9 + 104))(v11, *MEMORY[0x29EDBC9C8], v8);
  v18 = sub_29E753448();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_29E753498();
  sub_29E632824(v7, sub_29E637500);
  (*(v9 + 8))(v11, v8);
  v19 = sub_29E7535D8();
  v21 = v20;
  v23 = v22;

  sub_29E60DB44(v13, v15, v17 & 1);

  v24 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v25 = v42;
  sub_29E632774(a1 + *(v24 + 20), v42, sub_29E631834);
  v26 = sub_29E74F2D8();
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  sub_29E632824(v25, sub_29E631834);
  if (v27 == 1)
  {
    v28 = sub_29E753968();
  }

  else
  {
    v28 = sub_29E753958();
  }

  v50 = v28;
  v29 = sub_29E7535B8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_29E60DB44(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v33 & 1;
  v59 = 1;
  *&v47 = v29;
  *(&v47 + 1) = v31;
  LOBYTE(v48) = v33 & 1;
  *(&v48 + 1) = *v60;
  DWORD1(v48) = *&v60[3];
  *(&v48 + 1) = v35;
  *v49 = KeyPath;
  v49[16] = 1;
  *&v49[17] = 256;
  v37 = v45;
  *v45 = v43;
  v38 = v47;
  v39 = v48;
  v40 = *v49;
  *(v37 + 55) = *&v49[15];
  *(v37 + 5) = v40;
  *(v37 + 3) = v39;
  *(v37 + 1) = v38;
  v50 = v29;
  v51 = v31;
  v52 = v33 & 1;
  *&v53[3] = *&v60[3];
  *v53 = *v60;
  v54 = v35;
  v55 = KeyPath;
  v56 = 0;
  v57 = 1;
  v58 = 256;

  sub_29E632774(&v47, v46, sub_29E6371F8);
  sub_29E632824(&v50, sub_29E6371F8);
}

uint64_t sub_29E636AD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753508();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v45 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = sub_29E753938();
  v47 = sub_29E5FAF38();
  v48 = v12;
  sub_29E60DE10();
  v13 = sub_29E753608();
  v15 = v14;
  v17 = v16;
  v41 = v18;
  (*(v9 + 104))(v11, *MEMORY[0x29EDBC9C8], v8);
  v19 = *MEMORY[0x29EDBC988];
  v20 = sub_29E753448();
  v42 = a1;
  v21 = v20;
  v22 = *(v20 - 8);
  (*(v22 + 104))(v7, v19, v20);
  (*(v22 + 56))(v7, 0, 1, v21);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v7, sub_29E637500);
  (*(v9 + 8))(v11, v8);
  v23 = sub_29E7535D8();
  v25 = v24;
  v27 = v26;

  sub_29E60DB44(v13, v15, v17 & 1);

  v28 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v29 = v44;
  sub_29E632774(v42 + *(v28 + 20), v44, sub_29E631834);
  v30 = sub_29E74F2D8();
  LODWORD(v21) = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_29E632824(v29, sub_29E631834);
  if (v21 == 1)
  {
    v31 = sub_29E753968();
  }

  else
  {
    v31 = sub_29E753958();
  }

  v47 = v31;
  v32 = sub_29E7535B8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29E60DB44(v23, v25, v27 & 1);

  v39 = v46;
  *v46 = v43;
  v39[1] = v32;
  v39[2] = v34;
  *(v39 + 24) = v36 & 1;
  v39[4] = v38;

  sub_29E62935C(v32, v34, v36 & 1);

  sub_29E60DB44(v32, v34, v36 & 1);
}

void *sub_29E636F68@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_29E752FF8();
  v10 = 0;
  sub_29E63543C(v2, __src);
  memcpy(__dst, __src, 0x1A1uLL);
  memcpy(v12, __src, 0x1A1uLL);
  sub_29E632774(__dst, &v7, sub_29E63703C);
  sub_29E632824(v12, sub_29E63703C);
  memcpy(&v9[7], __dst, 0x1A1uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1A8uLL);
}

void sub_29E637070(uint64_t a1)
{
  if (!qword_2A1857700)
  {
    sub_29E637104(255);
    sub_29E637318(255);
    sub_29E63734C(255);
    sub_29E6373F4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1857700);
    }
  }
}

void sub_29E637174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E637234(uint64_t a1)
{
  if (!qword_2A1857728)
  {
    sub_29E6372AC(255, &qword_2A1857730, &unk_2A18590D0, MEMORY[0x29EDC9BA8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857728);
    }
  }
}

void sub_29E6372AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E638014(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E7532E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E637388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E6374A0()
{
  if (!qword_2A1857768)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857768);
    }
  }
}

void sub_29E637534(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29E7539B8();
  sub_29E637F00(0);
  v6 = (a1 + *(v5 + 36));
  sub_29E637F60(0);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x29EDBCAD8];
  v10 = sub_29E7539D8();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = swift_getKeyPath();
  *a1 = v4;
  v11 = sub_29E753428();
  KeyPath = swift_getKeyPath();
  sub_29E637F94(0);
  v14 = (a1 + *(v13 + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  sub_29E638064(0);
  *(a1 + *(v15 + 36)) = v3;

  LOBYTE(v3) = sub_29E7533E8();
  sub_29E7529C8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29E637388(0, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  v25 = a1 + *(v24 + 36);
  *v25 = v3;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
}

void sub_29E637704(uint64_t a1)
{
  if (!qword_2A1857780)
  {
    sub_29E637774(255);
    sub_29E6378B0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857780);
    }
  }
}

void sub_29E637820(uint64_t a1)
{
  if (!qword_2A18577A0)
  {
    sub_29E6371F8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A18577A0);
    }
  }
}

void sub_29E6378EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6327DC(a4, a5, MEMORY[0x29EDBCC30]);
    v8 = sub_29E753A78();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6379D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E637A38(uint64_t a1)
{
  if (!qword_2A18577C8)
  {
    sub_29E637388(255, &qword_2A18577D0, sub_29E6371F8, MEMORY[0x29EDBBF28], MEMORY[0x29EDBC558]);
    sub_29E6380F8(255, &qword_2A18577D8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC600]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18577C8);
    }
  }
}

unint64_t sub_29E637B04()
{
  result = qword_2A18577F0;
  if (!qword_2A18577F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18577F0);
  }

  return result;
}

void sub_29E637B74(uint64_t a1)
{
  if (!qword_2A18577F8)
  {
    sub_29E638014(255, &unk_2A18590D0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E637C08(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18577F8);
    }
  }
}

void sub_29E637C08(uint64_t a1)
{
  if (!qword_2A1857800)
  {
    sub_29E74E978();
    sub_29E6327DC(&qword_2A1857808, MEMORY[0x29EDB9A60], MEMORY[0x29EDB9A68]);
    v1 = sub_29E7545A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857800);
    }
  }
}

uint64_t sub_29E637C9C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6380F8(255, a2, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E637CF4(uint64_t a1, uint64_t a2)
{
  sub_29E637B74(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E637D58()
{
  result = qword_2A1857838;
  if (!qword_2A1857838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857838);
  }

  return result;
}

void sub_29E637DBC(uint64_t a1)
{
  if (!qword_2A1857850)
  {
    sub_29E63703C(255);
    sub_29E6327DC(&qword_2A1857858, sub_29E63703C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857850);
    }
  }
}

void sub_29E637E50(uint64_t a1)
{
  if (!qword_2A1857868)
  {
    sub_29E6376D0(255);
    sub_29E6327DC(&qword_2A1857870, sub_29E6376D0, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857868);
    }
  }
}

void sub_29E637F00(uint64_t a1)
{
  if (!qword_2A1857878)
  {
    sub_29E637F60(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857878);
    }
  }
}

void sub_29E637F94(uint64_t a1)
{
  if (!qword_2A1857880)
  {
    sub_29E637F00(255);
    sub_29E6372AC(255, &qword_2A1857518, &qword_2A1857520, MEMORY[0x29EDBC9F0]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857880);
    }
  }
}

void sub_29E638014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E638064(uint64_t a1)
{
  if (!qword_2A1857888)
  {
    sub_29E637F94(255);
    sub_29E6380F8(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857888);
    }
  }
}

void sub_29E6380F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_29E63814C()
{
  result = qword_2A18578A0;
  if (!qword_2A18578A0)
  {
    sub_29E637388(255, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E638248(&qword_2A18578A8, sub_29E638064, sub_29E6382D4, sub_29E63843C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578A0);
  }

  return result;
}

uint64_t sub_29E638248(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E63831C()
{
  result = qword_2A18578B8;
  if (!qword_2A18578B8)
  {
    sub_29E637F00(255);
    sub_29E6327DC(&qword_2A1857548, sub_29E637F60, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578B8);
  }

  return result;
}

unint64_t sub_29E6383CC()
{
  result = qword_2A1857550;
  if (!qword_2A1857550)
  {
    sub_29E6372AC(255, &qword_2A1857518, &qword_2A1857520, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857550);
  }

  return result;
}

unint64_t sub_29E63843C()
{
  result = qword_2A18578C0;
  if (!qword_2A18578C0)
  {
    sub_29E6380F8(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578C0);
  }

  return result;
}

uint64_t sub_29E6384C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E63850C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_29E6385A0()
{
  v1 = sub_29E7513A8();
  type metadata accessor for BreathingDisturbancesChartSection(0);
  swift_allocObject();
  v2 = sub_29E6389C0(v1);

  sub_29E602E20(v0 + 8, v5);
  sub_29E638648(0);
  swift_allocObject();
  v3 = sub_29E6A4DD8(v5, v2, 1);

  return v3;
}

void sub_29E638648(uint64_t a1)
{
  if (!qword_2A1857930)
  {
    v2 = type metadata accessor for BreathingDisturbancesChartSection(255);
    v4 = type metadata accessor for FeatureOnboardedHideableDataSource(a1, v2, MEMORY[0x29EDC2280], v3);
    if (!v5)
    {
      atomic_store(v4, &qword_2A1857930);
    }
  }
}

unint64_t sub_29E6386A8()
{
  result = qword_2A1857938;
  if (!qword_2A1857938)
  {
    sub_29E638648(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857938);
  }

  return result;
}

uint64_t type metadata accessor for BreathingDisturbancesChartSection(uint64_t a1)
{
  result = qword_2A1857948;
  if (!qword_2A1857948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6387D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E638830(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E7509D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7509C8();
  v6 = sub_29E750988();
  (*(v3 + 8))(v5, v2);
  return v6;
}

unint64_t sub_29E638968()
{
  result = qword_2A1857958;
  if (!qword_2A1857958)
  {
    type metadata accessor for BreathingDisturbancesChartSection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857958);
  }

  return result;
}

uint64_t sub_29E6389C0(void *a1)
{
  v22 = sub_29E74ED88();
  v3 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E750CA8();
  v6 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A1857940) = a1;
  sub_29E621E28(0, &qword_2A185A510, sub_29E61BFEC);
  v9 = swift_allocObject();
  v20 = xmmword_29E762F30;
  *(v9 + 16) = xmmword_29E762F30;
  *(v9 + 56) = &type metadata for BreathingDisturbancesChartItem;
  *(v9 + 64) = sub_29E638D04();
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  v10[2] = a1;
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 0;
  v11 = a1;
  sub_29E750C98();
  sub_29E621E28(0, &qword_2A1856858, MEMORY[0x29EDC2240]);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  v14 = v21;
  (*(v6 + 16))(v13 + v12, v8, v21);
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v23, "MutableArray<");
  HIWORD(v23[1]) = -4864;
  sub_29E74ED78();
  v15 = sub_29E74ED48();
  v17 = v16;
  (*(v3 + 8))(v5, v22);
  MEMORY[0x29ED96C20](v15, v17);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v18 = sub_29E750D08();

  (*(v6 + 8))(v8, v14);
  return v18;
}

unint64_t sub_29E638D04()
{
  result = qword_2A1857960;
  if (!qword_2A1857960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857960);
  }

  return result;
}

uint64_t sub_29E638D58(uint64_t a1)
{
  v1 = sub_29E751FF8();
  v19 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_29E751FA8();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E751FE8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E751FC8();
  v11 = sub_29E751FD8();
  sub_29E752008();
  v18 = sub_29E754948();
  if (sub_29E754BC8())
  {

    sub_29E752038();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x29EDCA4A8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v11, v18, v15, "SleepScheduleQuery", v13, v14, 2u);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_29E639044(void *a1)
{
  v2 = sub_29E751FA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v22 - v7;
  v23 = sub_29E751FE8();
  v9 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751FC8();
  sub_29E751F98();
  v12 = sub_29E751FD8();
  v13 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v12, v13, v16, "SleepScheduleQuery", "", v15, 2u);
    v17 = v15;
    a1 = v22;
    MEMORY[0x29ED98410](v17, -1, -1);
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_29E752028();
  swift_allocObject();
  v18 = sub_29E752018();
  (*(v3 + 8))(v8, v2);
  (*(v9 + 8))(v11, v23);
  sub_29E74F478();
  v19 = a1;
  v20 = sub_29E74F468();
  sub_29E638D58(v18);

  return v20;
}

uint64_t type metadata accessor for ManageScheduleViewController(uint64_t a1)
{
  result = qword_2A1857968;
  if (!qword_2A1857968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E639394(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a1;
  v10 = sub_29E7541F8();
  v4 = MEMORY[0x29ED96C20](91, 0xE100000000000000);
  v5 = a3(v4);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x29ED96C20](v7, v8);

  MEMORY[0x29ED96C20](93, 0xE100000000000000);
  return v10;
}

void *sub_29E639450(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v29 - v8;
  sub_29E64034C(0);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74ED88();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[4] = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v18 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v18 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  v19 = a1;
  sub_29E754D78();

  strcpy(v32, "MutableArray<");
  HIWORD(v32[1]) = -4864;
  sub_29E74ED78();
  v20 = sub_29E74ED48();
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  MEMORY[0x29ED96C20](v20, v22);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v23 = sub_29E750D08();
  v24 = off_2A1C3EE88[0];
  swift_retain_n();
  v24();

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v25 = sub_29E754908();
  v32[3] = v25;
  v26 = sub_29E7548D8();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v9);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C, MEMORY[0x29EDB89E8]);

  v27 = v30;
  sub_29E7529A8();

  (*(v31 + 8))(v13, v27);

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63ADC0(&type metadata for BedtimeItemProvider, MEMORY[0x29EDC6A20], sub_29E63E9C0);

  sub_29E751758();
  return v23;
}

void *sub_29E6399F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v29 - v8;
  sub_29E64034C(0);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74ED88();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[4] = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v18 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v18 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  v19 = a1;
  sub_29E754D78();

  strcpy(v32, "MutableArray<");
  HIWORD(v32[1]) = -4864;
  sub_29E74ED78();
  v20 = sub_29E74ED48();
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  MEMORY[0x29ED96C20](v20, v22);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v23 = sub_29E750D08();
  v24 = off_2A1C3EEE8[0];
  swift_retain_n();
  v24();

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v25 = sub_29E754908();
  v32[3] = v25;
  v26 = sub_29E7548D8();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v9);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C, MEMORY[0x29EDB89E8]);

  v27 = v30;
  sub_29E7529A8();

  (*(v31 + 8))(v13, v27);

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63ADC0(&type metadata for SleepResultsItemProvider, MEMORY[0x29EDC6A18], sub_29E63EB7C);

  sub_29E751758();
  return v23;
}

void *sub_29E639FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v43 - v8;
  sub_29E64034C(0);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74ED88();
  v46 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v18 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v18 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  v19 = a1;
  sub_29E754D78();

  strcpy(v49, "MutableArray<");
  HIWORD(v49[1]) = -4864;
  sub_29E74ED78();
  v20 = sub_29E74ED48();
  v22 = v21;
  v23 = *(v15 + 8);
  v45 = v15 + 8;
  v47 = v23;
  v23(v17, v14);
  MEMORY[0x29ED96C20](v20, v22);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v24 = sub_29E750D08();
  v25 = off_2A1C3EDC8[0];
  swift_retain_n();
  v25();

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v26 = sub_29E754908();
  v50 = v26;
  v27 = sub_29E7548D8();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v9);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C, MEMORY[0x29EDB89E8]);

  v28 = v43;
  sub_29E7529A8();

  (*(v44 + 8))(v13, v28);

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E6123CC(*(v24 + *(*v24 + qword_2A1869118 + 16)));
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v36 = v24 + *(*v24 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v37 = *(v36 + 1);
  type metadata accessor for SettingsToggleItem(0);
  v38 = swift_allocObject();
  v49[3] = &type metadata for TimeInBedItemProvider;
  v49[4] = &off_2A24FDE88;
  v49[0] = v30;
  v49[1] = v32;
  v49[2] = v34;
  v39 = v38 + qword_2A1856D28;
  *(v38 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + qword_2A1856D30) = 0;
  sub_29E602E20(v49, v38 + qword_2A1856D20);
  *(v39 + 8) = v37;
  swift_unknownObjectWeakAssign();
  swift_bridgeObjectRetain_n();
  v40 = v30;
  v41 = sub_29E751008();
  sub_29E751758();
  sub_29E5FECBC(v49);
  *(inited + 32) = v41;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29E74ED78();
  sub_29E74ED48();
  v47(v17, v46);
  sub_29E750C98();
  sub_29E750D18();

  sub_29E751758();

  return v24;
}

void *sub_29E63A80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v30 - v8;
  sub_29E64034C(0);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74ED88();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  v17 = v4 + *(*v4 + qword_2A1869118 + 32);
  *(v17 + 1) = 0;
  swift_unknownObjectWeakInit();
  v18 = *(*v4 + qword_2A1869118 + 16);
  v33 = type metadata accessor for ShareAcrossDevicesSectionProvider;
  v19 = a1;
  sub_29E640480(a1, v4 + v18, type metadata accessor for ShareAcrossDevicesSectionProvider);
  *(v17 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v36, "MutableArray<");
  HIWORD(v36[1]) = -4864;
  sub_29E74ED78();
  v20 = sub_29E74ED48();
  v22 = v21;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x29ED96C20](v20, v22);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v23 = sub_29E750D08();
  v24 = off_2A1C3EE28[0];
  type metadata accessor for ShareAcrossDevicesSectionProvider(0);
  swift_retain_n();
  v24(v36);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v25 = sub_29E754908();
  v36[3] = v25;
  v26 = sub_29E7548D8();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_29E7527F8();
  sub_29E63FE6C();
  v27 = v31;
  sub_29E752968();
  sub_29E6214E8(v9);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C, MEMORY[0x29EDB89E8]);

  v28 = v34;
  sub_29E7529A8();

  (*(v35 + 8))(v27, v28);

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63B1EC();

  sub_29E751758();
  sub_29E6404F0(v19, v33);
  return v23;
}

uint64_t sub_29E63ADC0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = v3;
  v8 = sub_29E74ED88();
  v19 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + *(*v7 + qword_2A1869118 + 16));
  v20 = sub_29E639394(v11, a1, a2);
  v13 = v12;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  swift_unknownObjectWeakLoadStrong();
  type metadata accessor for SettingsToggleItem(0);
  swift_allocObject();
  v15 = v11;
  v16 = a3();
  sub_29E751758();
  *(inited + 32) = v16;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!v13)
  {
    sub_29E74ED78();
    sub_29E74ED48();
    (*(v19 + 8))(v10, v8);
  }

  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63B1EC()
{
  v1 = v0;
  v2 = sub_29E74ED88();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(*v0 + qword_2A1869118 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  v8 = v6;
  v24 = sub_29E6129A0(v7, v8);
  v10 = v9;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v12 = v1 + *(*v1 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v13 = *(v12 + 1);
  type metadata accessor for SettingsToggleItem(0);
  v14 = swift_allocObject();
  v25[3] = &type metadata for ShareAcrossDevicesItemProvider;
  v25[4] = &off_2A24FDEC8;
  v25[0] = v7;
  v25[1] = v8;
  v15 = v14 + qword_2A1856D28;
  *(v14 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + qword_2A1856D30) = 0;
  sub_29E602E20(v25, v14 + qword_2A1856D20);
  *(v15 + 8) = v13;
  swift_unknownObjectWeakAssign();
  v16 = qword_2A1A7D6F0;
  v17 = v7;
  v18 = v8;
  if (v16 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v19 = sub_29E751008();
  sub_29E5FECBC(v25);
  sub_29E751758();
  *(inited + 32) = v19;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!v10)
  {
    sub_29E74ED78();
    sub_29E74ED48();
    (*(v22 + 8))(v4, v23);
  }

  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63B718()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

char *sub_29E63B7D0()
{
  v1 = sub_29E754978();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14[-1] - v6;
  sub_29E640480(v0 + qword_2A18691C0, v14, sub_29E63DE6C);
  if (v15)
  {
    sub_29E601938(v14, v15);
    v8 = sub_29E74F5B8();
    sub_29E5FECBC(v14);
  }

  else
  {
    sub_29E6404F0(v14, sub_29E63DE6C);
    v8 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  sub_29E609B5C(0, &qword_2A1857A80, 0x29EDBAA98);
  v9 = [objc_allocWithZone(MEMORY[0x29EDB83C8]) init];
  sub_29E754988();

  (*(v2 + 16))(v5, v7, v1);
  v10 = objc_allocWithZone(type metadata accessor for AccountStatusModel(0));
  v11 = sub_29E666450(v5);
  (*(v2 + 8))(v7, v1);
  return v11;
}

void sub_29E63B9E0()
{
  v1 = v0;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v154 = &v110 - v3;
  sub_29E640560(0, &qword_2A1857270, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v150 = v4;
  v149 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v148 = &v110 - v5;
  sub_29E63FC08(0);
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v151 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FD58(0);
  v156 = *(v8 - 8);
  v157 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v155 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC2280];
  v11 = MEMORY[0x29EDC2008];
  sub_29E640298(0, &qword_2A18579A0, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v146 = v12;
  v145 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v147 = &v110 - v13;
  sub_29E63FED4(0);
  v143 = v14;
  v142 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v144 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FF4C(0);
  v137 = v16;
  v136 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v138 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640298(0, &qword_2A18579C8, sub_29E63FFC4, v10, v11);
  v134 = v18;
  v133 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v135 = &v110 - v19;
  v130 = type metadata accessor for ShareAcrossDevicesSectionProvider(0);
  MEMORY[0x2A1C7C4A8](v130);
  v132 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640000(0);
  v128 = v21;
  v127 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640298(0, &qword_2A18579E8, type metadata accessor for GoalSection, v10, v11);
  v125 = v23;
  v124 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v126 = &v110 - v24;
  sub_29E640298(0, &qword_2A18579F0, type metadata accessor for WindDownSection, v10, v11);
  v122 = v25;
  v121 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v123 = &v110 - v26;
  sub_29E640298(0, &qword_2A18579F8, type metadata accessor for AddScheduleSection, v10, v11);
  v119 = v27;
  v118 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v120 = &v110 - v28;
  sub_29E640298(0, &qword_2A1857A00, type metadata accessor for ManageScheduleSection, v10, v11);
  v117 = v29;
  v30 = *(v29 - 1);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v110 - v31;
  v33 = &v1[qword_2A18691A0];
  sub_29E602E20(&v1[qword_2A18691A0], &v165);
  v116 = *&v1[qword_2A18691B0];
  v34 = [objc_allocWithZone(sub_29E74F948()) init];
  v35 = sub_29E63B7D0();
  sub_29E640480(&v1[qword_2A18691C0], &v163, sub_29E63DE6C);
  if (v164)
  {
    sub_29E601938(&v163, v164);
    v141 = sub_29E74F5C8();
    sub_29E5FECBC(&v163);
  }

  else
  {
    sub_29E6404F0(&v163, sub_29E63DE6C);
    v36 = *MEMORY[0x29EDBA750];
    sub_29E601938(v33, *(v33 + 3));
    v37 = v36;
    v38 = sub_29E74F4F8();
    v141 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:v37 sleepStore:v38];
  }

  v131 = v1;
  v39 = *&v1[qword_2A18691A8];
  v115 = *&v1[qword_2A18691A8 + 8];
  v140 = type metadata accessor for ManageScheduleDataProvider();
  v40 = swift_allocObject();
  v40[19] = MEMORY[0x29EDCA1A0];
  v139 = v40 + 19;
  sub_29E602E20(&v165, (v40 + 2));
  v40[7] = v34;
  v40[8] = v35;
  sub_29E601938(&v165, v166);
  v161 = v34;
  v41 = v35;
  sub_29E74F4D8();
  sub_29E7527B8();

  v42 = v163;
  v43 = objc_opt_self();
  v44 = [v43 sharedBehavior];
  if (!v44)
  {
    __break(1u);
    goto LABEL_29;
  }

  v45 = v44;
  LODWORD(v160) = v42;
  v114 = v41;
  v46 = [v44 features];

  if (!v46)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v47 = [v46 sleepCloudKitSync];

  v113 = sub_29E74F928();
  v48 = [v43 sharedBehavior];
  if (!v48)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v49 = v48;
  v50 = [v48 features];

  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v159 = [v50 timeInBedTracking];

  v51 = [v43 sharedBehavior];
  if (!v51)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = v51;
  v53 = [v51 features];

  if (!v53)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v158 = v47 ^ 1;
  v112 = [v53 sleepResultsNotificationsOnWatch];

  sub_29E602E20(&v165, &v163);
  type metadata accessor for ScheduleAndFocusSection(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v54 = v116;
  v55 = sub_29E601B78(&v163, v39, v115, v54);

  v40[9] = v55;
  sub_29E602E20(&v165, &v163);
  type metadata accessor for ManageScheduleSection(0);
  swift_allocObject();
  sub_29E728B48(&v163);
  v56 = *(v30 + 104);
  v57 = *MEMORY[0x29EDC2000];
  LODWORD(v115) = *MEMORY[0x29EDC2000];
  v58 = *MEMORY[0x29EDC1FF8];
  v111 = *MEMORY[0x29EDC1FF8];
  LODWORD(v116) = v160 & 1;
  if (v160)
  {
    v59 = v57;
  }

  else
  {
    v59 = v58;
  }

  v56(v32, v59, v117);
  v60 = MEMORY[0x29EDC2280];
  v61 = MEMORY[0x29EDC2020];
  sub_29E640298(0, &qword_2A1857A08, type metadata accessor for ManageScheduleSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2020]);
  swift_allocObject();
  v40[10] = sub_29E750918();
  sub_29E601938(&v165, v166);
  v62 = sub_29E74F4E8();
  type metadata accessor for AddScheduleSection(0);
  swift_allocObject();
  sub_29E6899BC(v62);
  (*(v118 + 104))(v120, v59, v119);
  v63 = v60;
  v64 = v61;
  sub_29E640298(0, &qword_2A1857A10, type metadata accessor for AddScheduleSection, v63, v61);
  swift_allocObject();
  v40[11] = sub_29E750918();
  sub_29E601938(&v165, v166);
  v65 = sub_29E74F4E8();
  sub_29E601938(&v165, v166);
  v66 = sub_29E74F518();
  type metadata accessor for WindDownSection(0);
  v67 = swift_allocObject();
  v68 = v131;
  sub_29E63DED4(v65, v66, v68, v67);
  (*(v121 + 104))(v123, v59, v122);
  v69 = MEMORY[0x29EDC2280];
  sub_29E640298(0, &qword_2A1857A18, type metadata accessor for WindDownSection, MEMORY[0x29EDC2280], v61);
  swift_allocObject();
  v40[12] = sub_29E750918();
  sub_29E601938(&v165, v166);
  v70 = sub_29E74F508();
  type metadata accessor for GoalSection(0);
  v71 = swift_allocObject();
  v131 = v68;
  sub_29E63E590(v70, v131, v71);
  v72 = *(v124 + 104);
  v73 = v59;
  v110 = v59;
  v72(v126, v59, v125);
  v117 = v64;
  sub_29E640298(0, &qword_2A1857A20, type metadata accessor for GoalSection, v69, v64);
  swift_allocObject();
  v40[13] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579E0, &type metadata for TimeInBedSectionProvider, &off_2A1C3ED98);
  swift_allocObject();
  v74 = v54;
  sub_29E639FA0(v74, 0, 0);
  v75 = v160 ^ 1;
  v76 = v111;
  if (v159)
  {
    v77 = v73;
  }

  else
  {
    v77 = v111;
  }

  (*(v127 + 104))(v129, v77, v128);
  sub_29E6400C8(0);
  swift_allocObject();
  v40[14] = sub_29E750918();
  v78 = *(v130 + 24);
  sub_29E6116C4(0);
  v80 = v132;
  (*(*(v79 - 8) + 56))(&v132[v78], 1, 1, v79);
  v81 = v114;
  *v80 = v74;
  v80[1] = v81;
  sub_29E63FFC4(0);
  swift_allocObject();
  v160 = v81;
  v82 = v74;
  sub_29E63A80C(v80, 0, 0);
  v83 = v115;
  if ((v158 | v75))
  {
    v84 = v76;
  }

  else
  {
    v84 = v115;
  }

  (*(v133 + 104))(v135, v84, v134);
  sub_29E640298(0, &qword_2A1857A30, sub_29E63FFC4, MEMORY[0x29EDC2280], v64);
  swift_allocObject();
  v40[15] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579C0, &type metadata for BedtimeSectionProvider, &off_2A1C3EE58);
  swift_allocObject();
  v85 = v82;
  v86 = v131;
  v87 = v131;
  sub_29E639450(v85, v86, &off_2A24FEEF0);
  (*(v136 + 104))(v138, v110, v137);
  sub_29E6401A8(0);
  swift_allocObject();
  v40[16] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579B0, &type metadata for SleepResultsSectionProvider, &off_2A1C3EEB8);
  swift_allocObject();
  v88 = v85;
  v138 = v87;
  sub_29E6399F8(v88, v86, &off_2A24FEEF0);
  v89 = v112;
  if ((v112 | v75))
  {
    v90 = v76;
  }

  else
  {
    v90 = v83;
  }

  (*(v142 + 104))(v144, v90, v143);
  sub_29E640220(0);
  swift_allocObject();
  v40[17] = sub_29E750918();
  type metadata accessor for AppleWatchSection(0);
  swift_allocObject();
  sub_29E710204();
  if ((v116 & v113) != 0)
  {
    v91 = v83;
  }

  else
  {
    v91 = v76;
  }

  (*(v145 + 104))(v147, v91, v146);
  sub_29E640298(0, &qword_2A1857A48, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], v117);
  swift_allocObject();
  v40[18] = sub_29E750918();
  sub_29E601938(&v165, v166);
  v163 = sub_29E74F4D8();
  v92 = v148;
  v93 = v161;
  sub_29E74F938();
  sub_29E640140(0, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  sub_29E63FCDC();
  sub_29E62113C();
  v94 = v151;
  v95 = v150;
  sub_29E752918();
  (*(v149 + 8))(v92, v95);

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v96 = sub_29E754908();
  v163 = v96;
  v97 = sub_29E7548D8();
  v98 = v154;
  (*(*(v97 - 8) + 56))(v154, 1, 1, v97);
  sub_29E63FE24(&qword_2A1857998, sub_29E63FC08, MEMORY[0x29EDB8870]);
  sub_29E63FE6C();
  v99 = v155;
  v100 = v153;
  sub_29E752968();
  sub_29E6214E8(v98);
  (*(v152 + 8))(v94, v100);

  v101 = swift_allocObject();
  swift_weakInit();
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  v103 = v158;
  *(v102 + 24) = v159;
  *(v102 + 25) = v103;
  *(v102 + 26) = v89;
  v104 = v138;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_29E640304;
  *(v105 + 24) = v102;
  sub_29E63FE24(&qword_2A1857A50, sub_29E63FD58, MEMORY[0x29EDB89E8]);
  v106 = v157;
  sub_29E7529A8();

  (*(v156 + 8))(v99, v106);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E751758();

  sub_29E5FECBC(&v165);
  v166 = v140;
  v167 = sub_29E63FE24(&qword_2A1857A58, type metadata accessor for ManageScheduleDataProvider, &unk_29E7696EC);
  v165 = v40;
  sub_29E751A28();
  v107 = type metadata accessor for ManageScheduleViewController(0);
  v162.receiver = v104;
  v162.super_class = v107;
  objc_msgSendSuper2(&v162, sel_viewDidLoad);
  v108 = [v104 navigationItem];
  [v108 setLargeTitleDisplayMode_];

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v109 = sub_29E754198();

  [v104 setTitle_];
}

void sub_29E63D220(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E63B9E0();
}

void sub_29E63D2D8()
{
  sub_29E66F540();
  sub_29E751A08();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_29E7510A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E63D350()
{
  v1 = v0;
  v2 = [v0 userActivity];
  [v2 invalidate];

  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v5 = sub_29E754768();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v3 = sub_29E754198();

  [v5 setTitle_];

  v4 = *MEMORY[0x29EDC6818];
  sub_29E754758();
  [v5 setEligibleForSearch_];
  [v5 setEligibleForPrediction_];
  [v5 setEligibleForHandoff_];
  [v1 setUserActivity_];
}

uint64_t sub_29E63D51C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29E63D5A8()
{
  sub_29E5FECBC((v0 + qword_2A18691A0));
  sub_29E751758();

  return sub_29E6404F0(v0 + qword_2A18691C0, sub_29E63DE6C);
}

id sub_29E63D620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageScheduleViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E63D658(uint64_t a1)
{
  sub_29E5FECBC((a1 + qword_2A18691A0));
  sub_29E751758();

  return sub_29E6404F0(a1 + qword_2A18691C0, sub_29E63DE6C);
}

id sub_29E63D6E4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E640480(*v0 + qword_2A18691C0, v3, sub_29E63DE6C);
  if (v4)
  {
    sub_29E601938(v3, v4);
    v1 = sub_29E74F5B8();
    sub_29E5FECBC(v3);
  }

  else
  {
    sub_29E6404F0(v3, sub_29E63DE6C);
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  return v1;
}

void sub_29E63D818(void *a1)
{
  v2 = v1;
  v4 = sub_29E74EE78();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = &v1[qword_2A18691A0];
  sub_29E601938(&v1[qword_2A18691A0], *&v1[qword_2A18691A0 + 24]);
  v6 = sub_29E74F528();
  [a1 mutableCopy];
  sub_29E754C38();
  sub_29E751758();
  sub_29E609B5C(0, &qword_2A1857978, 0x29EDC6898);
  swift_dynamicCast();
  if (v6)
  {
    [v6 weekdaysWithOccurrences];
  }

  sub_29E602E20(v5, v12);
  sub_29E640480(&v1[qword_2A18691C0], v10, sub_29E63DE6C);
  if (v11)
  {
    sub_29E601938(v10, v11);
    sub_29E74F598();
    sub_29E5FECBC(v10);
  }

  else
  {
    sub_29E6404F0(v10, sub_29E63DE6C);
  }

  sub_29E74FA38();
  v7 = [*&v1[qword_2A18691B8] currentCalendar];
  sub_29E74EE28();

  v8 = sub_29E74FA08();
  sub_29E63FE24(&qword_2A1857980, type metadata accessor for ManageScheduleViewController, &unk_29E765FD0);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v2 presentViewController:v9 animated:1 completion:0];
}

void sub_29E63DAD0()
{
  v1 = v0;
  v2 = sub_29E74EE78();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = &v0[qword_2A18691A0];
  sub_29E601938(&v0[qword_2A18691A0], *&v0[qword_2A18691A0 + 24]);
  v4 = sub_29E74F548();
  v5 = [v4 mutableOccurrenceTemplate];
  [v4 weekdaysWithOccurrences];
  sub_29E602E20(v3, v12);
  sub_29E640480(&v0[qword_2A18691C0], v10, sub_29E63DE6C);
  if (v11)
  {
    sub_29E601938(v10, v11);
    sub_29E74F598();
    sub_29E5FECBC(v10);
  }

  else
  {
    sub_29E6404F0(v10, sub_29E63DE6C);
  }

  sub_29E74FA38();
  v6 = [*&v0[qword_2A18691B8] currentCalendar];
  sub_29E74EE28();

  v7 = v5;
  v8 = sub_29E74FA08();
  sub_29E63FE24(&qword_2A1857980, type metadata accessor for ManageScheduleViewController, &unk_29E765FD0);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_29E63DD98(char a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_29E601938((v4 + qword_2A18691A0), *(v4 + qword_2A18691A0 + 24));
  v9 = sub_29E74F548();
  v11 = v9;
  v10 = &selRef_setWindDownTime_;
  if ((a1 & 1) == 0)
  {
    v10 = &selRef_setSleepDurationGoal_;
  }

  [v9 *v10];
  sub_29E69E39C(v11, a2, a3);
}

void sub_29E63DE6C(uint64_t a1)
{
  if (!qword_2A1A7CF90)
  {
    sub_29E609CF8(255, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80]);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CF90);
    }
  }
}

uint64_t sub_29E63DED4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v48 = *a4;
  v8 = sub_29E74ED88();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E63FE24(&qword_2A1857A70, type metadata accessor for ManageScheduleViewController, &unk_29E765FA8);
  v12 = a4 + qword_2A1859CF8;
  *(a4 + qword_2A1859CF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_2A1859D10) = 0;
  *(a4 + qword_2A1859D18) = 0;
  v13 = qword_2A1859D20;
  LOBYTE(v49[0]) = 0;
  sub_29E640140(0, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  v44 = v14;
  swift_allocObject();
  v15 = sub_29E7527E8();
  v41 = v13;
  *(a4 + v13) = v15;
  *(a4 + qword_2A1859D30) = 0;
  *(a4 + qword_2A1859D38) = 0;
  v16 = a4 + qword_2A1859D40;
  *v16 = 0;
  v16[8] = 1;
  *(a4 + qword_2A1859D48) = 0;
  *(v12 + 1) = v11;
  v46 = a3;
  swift_unknownObjectWeakAssign();
  *(a4 + qword_2A1859D00) = a1;

  sub_29E7527B8();
  v49[2] = v49[0];
  v50 = v49[1];
  sub_29E602A9C(0);
  swift_allocObject();
  v17 = sub_29E7527E8();
  v18 = qword_2A1859D28;
  *(a4 + qword_2A1859D28) = v17;
  *(a4 + qword_2A1859D08) = a2;

  v47 = a2;
  sub_29E7527B8();
  v19 = v49[1];
  *v16 = v49[0];
  v16[8] = v19;
  v45 = a1;
  sub_29E7527B8();
  v20 = v49[0];
  if (v49[0])
  {
    sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v21 = *(sub_29E750CA8() - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29E762F30;
    v24 = *(a4 + v18);
    v25 = *(a4 + v41);

    sub_29E6E9CCC(v24, v25, v20, v23 + v22);
  }

  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v49, "MutableArray<");
  HIWORD(v49[1]) = -4864;
  sub_29E74ED78();
  v26 = sub_29E74ED48();
  v28 = v27;
  (*(v42 + 8))(v10, v43);
  MEMORY[0x29ED96C20](v26, v28);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v29 = sub_29E750D08();
  v49[0] = v47;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v48;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  sub_29E63FE24(&qword_2A1856878, sub_29E602A9C, MEMORY[0x29EDB8A70]);
  swift_retain_n();
  v33 = sub_29E7529A8();

  *(v29 + qword_2A1859D10) = v33;

  v49[0] = *(v29 + qword_2A1859D20);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v32;
  sub_29E63FCDC();

  v36 = sub_29E7529A8();

  *(v29 + qword_2A1859D18) = v36;

  v49[0] = *(v29 + qword_2A1859D28);
  v37 = swift_allocObject();
  swift_weakInit();

  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v32;
  v39 = sub_29E7529A8();

  *(v29 + qword_2A1859D30) = v39;

  return v29;
}

uint64_t sub_29E63E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a2;
  v18[0] = a1;
  v4 = sub_29E74F868();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED88();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = sub_29E63FE24(&qword_2A1857A70, type metadata accessor for ManageScheduleViewController, &unk_29E765FA8);
  *(a3 + qword_2A1857570) = 0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_29E74ED78();
  v12 = sub_29E74ED48();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x29ED96C20](v12, v14);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v15 = sub_29E750D08();
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC6B50], v4);
  sub_29E74F898();
  swift_allocObject();

  *(v15 + qword_2A1857570) = sub_29E74F878();

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E74F858();
  sub_29E609CF8(0, &qword_2A1857598, MEMORY[0x29EDC6B88]);
  swift_dynamicCast();
  sub_29E750D18();

  v16 = swift_unknownObjectRetain();
  sub_29E74F888();

  return v15;
}

uint64_t sub_29E63E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = &type metadata for BedtimeItemProvider;
  v12[4] = &off_2A24FDF08;
  v12[0] = a1;
  v7 = a4 + qword_2A1856D28;
  *(a4 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_2A1856D30;
  *(a4 + qword_2A1856D30) = 0;
  sub_29E602E20(v12, a4 + qword_2A1856D20);
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29E754278();

    v9 = [objc_opt_self() currentNotificationCenter];
    sub_29E74F648();
    swift_allocObject();
    *(a4 + v8) = sub_29E74F628();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v10 = sub_29E751008();
  sub_29E5FECBC(v12);
  return v10;
}

uint64_t sub_29E63EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = &type metadata for SleepResultsItemProvider;
  v12[4] = &off_2A24FDF48;
  v12[0] = a1;
  v7 = a4 + qword_2A1856D28;
  *(a4 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_2A1856D30;
  *(a4 + qword_2A1856D30) = 0;
  sub_29E602E20(v12, a4 + qword_2A1856D20);
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29E754268();

    v9 = [objc_opt_self() currentNotificationCenter];
    sub_29E74F648();
    swift_allocObject();
    *(a4 + v8) = sub_29E74F628();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v10 = sub_29E751008();
  sub_29E5FECBC(v12);
  return v10;
}

uint64_t sub_29E63ED38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
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
    sub_29E63ADC0(a2, a3, a4);
  }
}

uint64_t sub_29E63EE2C(uint64_t a1)
{
  v1 = sub_29E74ED88();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v5 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v7 = *Strong;
  v26 = v1;
  v8 = Strong;
  sub_29E6123CC(*(Strong + *(v7 + qword_2A1869118 + 16)));
  v10 = v9;
  v12 = v11;
  v25 = v4;
  v14 = v13;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v16 = v8 + *(*v8 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v24 = v5;
  v17 = *(v16 + 1);
  type metadata accessor for SettingsToggleItem(0);
  v18 = swift_allocObject();
  v27[3] = &type metadata for TimeInBedItemProvider;
  v27[4] = &off_2A24FDE88;
  v27[0] = v10;
  v27[1] = v12;
  v27[2] = v14;
  v19 = v18 + qword_2A1856D28;
  *(v18 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + qword_2A1856D30) = 0;
  sub_29E602E20(v27, v18 + qword_2A1856D20);
  *(v19 + 8) = v17;
  swift_unknownObjectWeakAssign();
  swift_bridgeObjectRetain_n();
  v20 = v10;
  v21 = sub_29E751008();
  sub_29E751758();
  sub_29E5FECBC(v27);
  *(inited + 32) = v21;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = v25;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v2 + 8))(v22, v26);
  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63F298(uint64_t a1)
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
    sub_29E63B1EC();
  }
}

void sub_29E63F364(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v46 - v12;
  sub_29E752048();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  v16 = os_log_type_enabled(v14, v15);
  v48 = ObjectType;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v49 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v50 = v7;
    v51 = v19;
    v47 = v8;
    v20 = v19;
    *v18 = 136446210;
    v21 = sub_29E755178();
    v23 = v3;
    v24 = a2;
    v25 = a1;
    v26 = sub_29E6B9C90(v21, v22, &v51);

    *(v18 + 4) = v26;
    a1 = v25;
    a2 = v24;
    v3 = v23;
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Schedule occurrence was modified", v18, 0xCu);
    sub_29E5FECBC(v20);
    v27 = v20;
    v8 = v47;
    v7 = v50;
    MEMORY[0x29ED98410](v27, -1, -1);
    v28 = v18;
    v11 = v49;
    MEMORY[0x29ED98410](v28, -1, -1);
  }

  v29 = v8[1];
  v29(v13, v7);
  sub_29E601938(&v3[qword_2A18691A0], *&v3[qword_2A18691A0 + 24]);
  v30 = sub_29E74F548();
  v31 = v30;
  if (a2)
  {
    v32 = [v30 overrideOccurrence];
    if (v32)
    {
      v33 = v32;
      sub_29E752048();
      v34 = sub_29E752088();
      v35 = sub_29E7546C8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v49 = v11;
        v37 = v36;
        v47 = swift_slowAlloc();
        v51 = v47;
        *v37 = 136446210;
        v38 = sub_29E755178();
        v48 = a1;
        v40 = sub_29E6B9C90(v38, v39, &v51);
        v50 = v7;
        v41 = v40;
        a1 = v48;

        *(v37 + 4) = v41;
        _os_log_impl(&dword_29E5ED000, v34, v35, "[%{public}s] Removing override", v37, 0xCu);
        v42 = v47;
        sub_29E5FECBC(v47);
        MEMORY[0x29ED98410](v42, -1, -1);
        MEMORY[0x29ED98410](v37, -1, -1);

        v43 = v49;
        v44 = v50;
      }

      else
      {

        v43 = v11;
        v44 = v7;
      }

      v29(v43, v44);
      [v31 removeOccurrence_];
    }
  }

  [v31 saveOccurrence_];
  sub_29E69E39C(v31, 0, 0);
  v45 = [v3 presentedViewController];
  if (v45)
  {

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_29E63F760(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] Schedule occurrence was deleted", v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    v16 = v11;
    a1 = v19;
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_29E601938(&v2[qword_2A18691A0], *&v2[qword_2A18691A0 + 24]);
  v17 = sub_29E74F548();
  [v17 removeOccurrence_];
  sub_29E69E39C(v17, 0, 0);
  v18 = [v2 presentedViewController];
  if (v18)
  {

    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_29E63F9B8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Schedule occurrence edits were cancelled", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = [v1 presentedViewController];
  if (result)
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_29E63FBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E63FC08(uint64_t a1)
{
  if (!qword_2A1857988)
  {
    v1 = MEMORY[0x29EDC9A98];
    sub_29E640140(255, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    sub_29E640560(255, &qword_2A1857270, v1, MEMORY[0x29EDB8AF0]);
    sub_29E63FCDC();
    sub_29E62113C();
    v2 = sub_29E7525F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1857988);
    }
  }
}

unint64_t sub_29E63FCDC()
{
  result = qword_2A1A7BF68;
  if (!qword_2A1A7BF68)
  {
    sub_29E640140(255, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BF68);
  }

  return result;
}

void sub_29E63FD58(uint64_t a1)
{
  if (!qword_2A1857990)
  {
    sub_29E63FC08(255);
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E63FE24(&qword_2A1857998, sub_29E63FC08, MEMORY[0x29EDB8870]);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857990);
    }
  }
}

uint64_t sub_29E63FE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E63FE6C()
{
  result = qword_2A18568B8;
  if (!qword_2A18568B8)
  {
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568B8);
  }

  return result;
}

void sub_29E63FED4(uint64_t a1)
{
  if (!qword_2A18579A8)
  {
    sub_29E640078(255, &qword_2A18579B0, &type metadata for SleepResultsSectionProvider, &off_2A1C3EEB8);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18579A8);
    }
  }
}

void sub_29E63FF4C(uint64_t a1)
{
  if (!qword_2A18579B8)
  {
    sub_29E640078(255, &qword_2A18579C0, &type metadata for BedtimeSectionProvider, &off_2A1C3EE58);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18579B8);
    }
  }
}

void sub_29E640000(uint64_t a1)
{
  if (!qword_2A18579D8)
  {
    sub_29E640078(255, &qword_2A18579E0, &type metadata for TimeInBedSectionProvider, &off_2A1C3ED98);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18579D8);
    }
  }
}

void sub_29E640078(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for SettingsToggleSection(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6400C8(uint64_t a1)
{
  if (!qword_2A1857A28)
  {
    sub_29E640078(255, &qword_2A18579E0, &type metadata for TimeInBedSectionProvider, &off_2A1C3ED98);
    v1 = sub_29E750928();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857A28);
    }
  }
}

void sub_29E640140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6401A8(uint64_t a1)
{
  if (!qword_2A1857A38)
  {
    sub_29E640078(255, &qword_2A18579C0, &type metadata for BedtimeSectionProvider, &off_2A1C3EE58);
    v1 = sub_29E750928();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857A38);
    }
  }
}

void sub_29E640220(uint64_t a1)
{
  if (!qword_2A1857A40)
  {
    sub_29E640078(255, &qword_2A18579B0, &type metadata for SleepResultsSectionProvider, &off_2A1C3EEB8);
    v1 = sub_29E750928();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857A40);
    }
  }
}

void sub_29E640298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E64034C(uint64_t a1)
{
  if (!qword_2A1857A60)
  {
    sub_29E7527F8();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857A60);
    }
  }
}

uint64_t sub_29E640480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6404F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E640560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E6405C8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857A88 = result;
  unk_2A1857A90 = v1;
  return result;
}

uint64_t sub_29E640660()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857A98 = result;
  unk_2A1857AA0 = v1;
  return result;
}

uint64_t sub_29E6406F8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857AA8 = result;
  unk_2A1857AB0 = v1;
  return result;
}

uint64_t sub_29E640790()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857AB8 = result;
  unk_2A1857AC0 = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepApneaAnalyticsContextType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepApneaAnalyticsContextType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SleepApneaAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepApneaAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29E640AD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x705520746553;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5720744920776F48;
    }

    else
    {
      v4 = 0x6974656C706D6F43;
    }

    if (v3 == 2)
    {
      v5 = 0xEC000000736B726FLL;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F5920726F46;
    }

    else
    {
      v4 = 0x705520746553;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x5720744920776F48;
  v8 = 0xEC000000736B726FLL;
  if (a2 != 2)
  {
    v7 = 0x6974656C706D6F43;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 0x756F5920726F46;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E640C30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x686372616553;
    if (a1 != 6)
    {
      v10 = 0x6E776F6E6B6E55;
      v9 = 0xE700000000000000;
    }

    v11 = 0xD000000000000010;
    v12 = 0x800000029E757230;
    if (a1 != 4)
    {
      v11 = 0xD000000000000012;
      v12 = 0x800000029E757250;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7079542061746144;
    v5 = 0xEE006D6F6F522065;
    if (a1 != 2)
    {
      v4 = 0x79726F6765746143;
      v5 = 0xE800000000000000;
    }

    v6 = 0x6F52207065656C53;
    if (a1)
    {
      v3 = 0xEA00000000006D6FLL;
    }

    else
    {
      v6 = 0x7972616D6D7553;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x686372616553)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x6E776F6E6B6E55)
        {
LABEL_47:
          v14 = sub_29E755028();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000029E757230;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000029E757250;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE006D6F6F522065;
      if (v7 != 0x7079542061746144)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x79726F6765746143)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006D6FLL;
    if (v7 != 0x6F52207065656C53)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x7972616D6D7553)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_29E640ED0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C65636E6143;
    }

    else
    {
      v4 = 0x7055746573;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 2)
    {
      v4 = 1954047310;
    }

    else if (a1 == 3)
    {
      v4 = 1801675074;
    }

    else
    {
      v4 = 1701736260;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6C65636E6143;
    }

    else
    {
      v8 = 0x7055746573;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 1801675074;
    if (a2 != 3)
    {
      v5 = 1701736260;
    }

    if (a2 == 2)
    {
      v6 = 1954047310;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE400000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = sub_29E755028();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

uint64_t sub_29E641018(uint64_t a1, unsigned __int8 a2)
{
  sub_29E7542D8();
}

uint64_t sub_29E641158(uint64_t a1, unsigned __int8 a2)
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6412B8()
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E64137C(uint64_t a1)
{
  sub_29E7542D8();
}

uint64_t sub_29E64142C(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

unint64_t sub_29E6414EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E641B1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29E64151C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7055746573;
  v5 = 1954047310;
  v6 = 1801675074;
  if (v2 != 3)
  {
    v6 = 1701736260;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6C65636E6143;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_29E6415A8()
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E641674(uint64_t a1)
{
  sub_29E7542D8();
}

uint64_t sub_29E64172C(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

unint64_t sub_29E6417F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E641B68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29E641824(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x705520746553;
  v4 = 0xEC000000736B726FLL;
  v5 = 0x5720744920776F48;
  if (*v1 != 2)
  {
    v5 = 0x6974656C706D6F43;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 0x756F5920726F46;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29E6418B0()
{
  result = qword_2A1857AC8;
  if (!qword_2A1857AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AC8);
  }

  return result;
}

unint64_t sub_29E641908()
{
  result = qword_2A1857AD0;
  if (!qword_2A1857AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AD0);
  }

  return result;
}

unint64_t sub_29E641984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E641BB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29E6419B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7553;
  v5 = 0xE600000000000000;
  v6 = 0x686372616553;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000029E757230;
  if (v2 != 4)
  {
    v7 = 0xD000000000000012;
    v8 = 0x800000029E757250;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEE006D6F6F522065;
  v10 = 0x7079542061746144;
  if (v2 != 2)
  {
    v10 = 0x79726F6765746143;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6F52207065656C53;
    v3 = 0xEA00000000006D6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_29E641AC8()
{
  result = qword_2A1857AD8;
  if (!qword_2A1857AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AD8);
  }

  return result;
}

unint64_t sub_29E641B1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29E641B68(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29E641BB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29E641C04()
{
  v43[1] = swift_getObjectType();
  v1 = sub_29E752098();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v43[2] = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v45 = v43 - v4;
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v44 = v43 - v6;
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E643E74(0, &qword_2A1857B10, MEMORY[0x29EDC2C10]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v43 - v12;
  v52 = v0;
  v51 = sub_29E642588();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A7FA18;
  v15 = sub_29E754198();
  v50 = [objc_opt_self() imageNamed:v15 inBundle:v14];

  sub_29E74F8A8();
  v16 = sub_29E74F7C8();
  v48 = v17;
  v49 = v16;
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v18(v10, v7);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v18(v10, v7);
  sub_29E751B58();
  v19 = sub_29E751B68();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = v51;
  sub_29E751B78();

  v21 = v52;
  v22 = (v52 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context);
  result = swift_beginAccess();
  v24 = v22[3];
  if (v24)
  {
    v25 = sub_29E601938(v22, v22[3]);
    v26 = *(v24 - 8);
    MEMORY[0x2A1C7C4A8](v25);
    v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = sub_29E751548();
    v31 = v30;
    (*(v26 + 8))(v28, v24);
    if (v31 >> 60 == 15)
    {
      v32 = v45;
      sub_29E752068();
      v33 = sub_29E752088();
      v34 = sub_29E7546A8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v53[0] = v36;
        *v35 = 136446210;
        v37 = sub_29E755178();
        v39 = sub_29E6B9C90(v37, v38, v53);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s] User data from context is nil, will not be able to get user's country code.", v35, 0xCu);
        sub_29E5FECBC(v36);
        MEMORY[0x29ED98410](v36, -1, -1);
        MEMORY[0x29ED98410](v35, -1, -1);
      }

      return (*(v46 + 8))(v32, v47);
    }

    else
    {
      sub_29E74E798();
      swift_allocObject();
      sub_29E74E788();
      v40 = sub_29E74FFA8();
      sub_29E643CC4(&qword_2A1857B18, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A68]);
      v41 = v44;
      sub_29E74E778();
      sub_29E643D0C(v29, v31);

      (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
      v42 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
      swift_beginAccess();
      sub_29E643D74(v41, v21 + v42);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E642588()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = sub_29E6426BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E6426BC()
{
  sub_29E751B88();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_29E751B48();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E750C18();

  sub_29E751B48();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E750C28();

  return v0;
}

void sub_29E6427D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29E642918();
  }
}

void sub_29E64282C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_29E609B5C(0, &qword_2A1857B30, 0x29EDBA088);
    v2 = sub_29E7547A8();
    if (qword_2A1A7BD90 != -1)
    {
      swift_once();
    }

    v3 = qword_2A1A7F920;
    v4 = objc_allocWithZone(sub_29E7503C8());
    v5 = v3;
    v6 = sub_29E7503B8();
    [v2 addOperation_];
  }
}

void sub_29E642918()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v70 = &v68 - v3;
  v4 = sub_29E752098();
  v75 = *(v4 - 1);
  v76 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v68 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v69 = &v68 - v10;
  v72 = sub_29E751D98();
  v71 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  sub_29E643F2C(v0 + v13, &v80, &qword_2A1857B20, sub_29E643EC8);
  v14 = v82;
  if (!v82)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_29E601938(&v80, v82);
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  v19 = sub_29E751528();
  (*(v16 + 8))(v18, v14);
  v20 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v21 = sub_29E754198();
  v22 = [v20 initWithIdentifier:v21 healthStore:v19];

  sub_29E5FECBC(&v80);
  sub_29E643F2C(v1 + v13, &v80, &qword_2A1857B20, sub_29E643EC8);
  v23 = v82;
  if (!v82)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = sub_29E601938(&v80, v82);
  v25 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27);
  v28 = sub_29E751528();
  (*(v25 + 8))(v27, v23);
  v29 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
  v30 = v22;
  v31 = [v29 initWithSleepStore:v30 healthDataSource:v28];
  v77 = v30;

  v32 = v31;
  sub_29E5FECBC(&v80);
  v33 = [v31 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v33)
  {
    v34 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v33 healthDataSource:v31 currentCountryCode:0];
    sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    sub_29E751DD8();
    v43 = sub_29E751DA8();
    (*(v71 + 8))(v12, v72);
    v44 = [v43 areAllRequirementsSatisfied];

    if (v44)
    {
      v45 = v69;
      sub_29E752068();
      v46 = sub_29E752088();
      v47 = sub_29E7546C8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v80 = v74;
        *v48 = 136446466;
        v49 = sub_29E755178();
        v51 = v32;
        v52 = sub_29E6B9C90(v49, v50, &v80);

        *(v48 + 4) = v52;
        v32 = v51;
        *(v48 + 12) = 2082;
        *(v48 + 14) = sub_29E6B9C90(0x61546E6F74747562, 0xEE00292864657070, &v80);
        _os_log_impl(&dword_29E5ED000, v46, v47, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v48, 0x16u);
        v53 = v74;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v53, -1, -1);
        MEMORY[0x29ED98410](v48, -1, -1);

        (v75)[1](v69, v76);
      }

      else
      {

        (v75)[1](v45, v76);
      }

      sub_29E643F2C(v1 + v13, &v78, &qword_2A1857B20, sub_29E643EC8);
      if (v79)
      {
        v80 = v77;
        sub_29E5FAEE4(&v78, &v81);
        sub_29E72E8D0(v1);
        sub_29E751758();

        sub_29E643FF4(&v80);
        return;
      }

      goto LABEL_21;
    }

    v76 = v34;
    v54 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
    swift_beginAccess();
    sub_29E643F2C(v1 + v54, v70, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v55 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
    v56 = [v55 initWithSleepStore:v77 healthDataSource:v32];
    sub_29E643F2C(v1 + v13, &v80, &qword_2A1857B20, sub_29E643EC8);
    v57 = v82;
    v75 = v32;
    if (v82)
    {
      v58 = sub_29E601938(&v80, v82);
      v59 = *(v57 - 8);
      MEMORY[0x2A1C7C4A8](v58);
      v61 = &v68 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v61);
      v62 = sub_29E751528();
      (*(v59 + 8))(v61, v57);
      v63 = type metadata accessor for SleepApneaOnboardingNavigationController(0);
      v64 = objc_allocWithZone(v63);
      *&v64[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
      v65 = MEMORY[0x29EDC3A58];
      v66 = v70;
      sub_29E643F2C(v70, &v64[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord], &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      *&v64[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v56;
      *&v64[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v62;
      v64[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = 1;
      v83.receiver = v64;
      v83.super_class = v63;
      v67 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
      sub_29E643F98(v66, &qword_2A1A7CF50, v65);
      sub_29E5FECBC(&v80);
      sub_29E718D68();
      sub_29E7195BC();

      [v67 setModalPresentationStyle_];
      [v1 presentViewController:v67 animated:1 completion:0];

      sub_29E751758();
      return;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  sub_29E752068();
  v35 = sub_29E752088();
  v36 = sub_29E7546A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v80 = v38;
    *v37 = 136446466;
    v39 = sub_29E755178();
    v41 = v32;
    v42 = sub_29E6B9C90(v39, v40, &v80);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_29E6B9C90(0x61546E6F74747562, 0xEE00292864657070, &v80);
    _os_log_impl(&dword_29E5ED000, v35, v36, "[%{public}s.%{public}s]: Sleep tracking is not available. Exiting", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v38, -1, -1);
    MEMORY[0x29ED98410](v37, -1, -1);
  }

  else
  {
  }

  (v75)[1](v9, v76);
}

id sub_29E6438F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaNotificationTipViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepApneaNotificationTipViewController(uint64_t a1)
{
  result = qword_2A1857AF8;
  if (!qword_2A1857AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E643A14(uint64_t a1)
{
  sub_29E643E74(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E643AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  return sub_29E643F2C(v1 + v3, a1, &qword_2A1857B20, sub_29E643EC8);
}

uint64_t sub_29E643B48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  sub_29E643DF4(a1, v1 + v3);
  swift_endAccess();
  sub_29E641C04();
  return sub_29E643F98(a1, &qword_2A1857B20, sub_29E643EC8);
}

uint64_t (*sub_29E643BD0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E643C34;
}

uint64_t sub_29E643C34(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E641C04();
  }

  return result;
}

uint64_t sub_29E643CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E643D0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E643D20(a1, a2);
  }

  return a1;
}

uint64_t sub_29E643D20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29E643D74(uint64_t a1, uint64_t a2)
{
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E643DF4(uint64_t a1, uint64_t a2)
{
  sub_29E643E74(0, &qword_2A1857B20, sub_29E643EC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E643E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_29E643EC8()
{
  result = qword_2A1857B28;
  if (!qword_2A1857B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1857B28);
  }

  return result;
}

uint64_t sub_29E643F2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E643E74(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E643F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E643E74(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for SleepScoreGalleryViewController(uint64_t a1)
{
  result = qword_2A1A7CB88;
  if (!qword_2A1A7CB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E644108(uint64_t a1)
{
  v2 = sub_29E74EE78();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752E78();
}

uint64_t sub_29E6441D0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v2(v3);
}

void sub_29E644230(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_29E660120(a2);
    [v4 hk:v5 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  }
}

void sub_29E6442B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E7505E8();
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E6459C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29E750648();
    v9 = sub_29E74ED28();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a1, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v12 = MEMORY[0x29EDCA190];
    sub_29E645788(&qword_2A1857B38, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC1CE0]);
    sub_29E6459C8(0, &qword_2A1857B40, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    sub_29E645A2C();
    sub_29E754C58();
    v11 = sub_29E750638();
    sub_29E70F5D4(v8, v11);
  }
}

uint64_t sub_29E644544(uint64_t a1)
{
  v3 = type metadata accessor for SleepScoreGalleryScreen(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_29E64586C(a1, v5, type metadata accessor for SleepScoreGalleryScreen);
  v7 = sub_29E753038();
  sub_29E64594C(a1);
  return v7;
}

uint64_t sub_29E6445F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreGalleryScreen(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_29E64586C(a2, v6, type metadata accessor for SleepScoreGalleryScreen);
  v8 = sub_29E753028();
  sub_29E64594C(a2);
  return v8;
}

id sub_29E6446B4(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29E6447A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752D48();
  *a1 = result;
  return result;
}

uint64_t sub_29E6447F4(char *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v129 = a5;
  v130 = a4;
  v127 = a3;
  v131 = a2;
  v132 = a1;
  v120 = type metadata accessor for SleepScoreGalleryScreen(0);
  v5 = MEMORY[0x2A1C7C4A8](v120);
  v122 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v121 = &v99 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v126 = &v99 - v9;
  v10 = MEMORY[0x29EDC9C68];
  sub_29E6459C8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v116 = &v99 - v12;
  sub_29E60596C(0);
  v119 = v13;
  v118 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v117 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC(0);
  v114 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v113 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v112 = &v99 - v18;
  sub_29E6457D0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v110 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v111 = &v99 - v20;
  sub_29E6459C8(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, v10);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v133 = (&v99 - v22);
  v23 = sub_29E74F0D8();
  v137 = *(v23 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v109 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = (&v99 - v26);
  v28 = sub_29E74EE78();
  v136 = v28;
  v29 = *(v28 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v108 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v99 - v32;
  v34 = sub_29E754048();
  v123 = *(v34 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v34);
  v125 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v39 = &v99 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37);
  v124 = &v99 - v41;
  MEMORY[0x2A1C7C4A8](v40);
  v43 = &v99 - v42;
  v45 = *(v44 + 16);
  v102 = v44 + 16;
  v101 = v45;
  v45(&v99 - v42, v132, v34);
  v134 = v29;
  v46 = *(v29 + 16);
  v46(v33, v131, v28);
  v47 = *(v137 + 16);
  v128 = v27;
  v135 = v23;
  v105 = v137 + 16;
  v104 = v47;
  v47(v27, v130, v23);
  v48 = v133;
  sub_29E62D760(v129, v133);
  type metadata accessor for SleepScoreGalleryModelProvider(0);
  v49 = swift_allocObject();
  v50 = v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v50 = 0;
  *(v50 + 8) = 1;
  *(v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = 0;
  v51 = (v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  *v51 = 0;
  v51[1] = 0;
  *(v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = 0;
  v103 = v127;
  sub_29E74EF38();
  *v50 = sub_29E753FF8();
  *(v50 + 8) = 0;
  v127 = v33;
  v107 = v29 + 16;
  v106 = v46;
  v46((v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar), v33, v136);
  v52 = v123;
  v115 = v49;
  v53 = v49 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel;
  v54 = v124;
  sub_29E62D760(v48, v53);
  sub_29E753FE8();
  v55 = v125;
  sub_29E753FC8();
  sub_29E753FD8();
  v56 = v52 + 8;
  v57 = *(v52 + 1);
  v57(v55, v34);
  v57(v39, v34);
  sub_29E645788(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  v125 = v34;
  result = sub_29E7540E8();
  if (result)
  {
    v59 = *(v52 + 4);
    v60 = v112;
    v61 = v125;
    v59(v112, v54, v125);
    v62 = v114;
    v63 = v60 + v114[12];
    v100 = v43;
    v101(v63, v43, v61);
    v64 = v113;
    sub_29E64586C(v60, v113, sub_29E605ADC);
    v65 = v62[12];
    v66 = v111;
    v59(v111, v64, v61);
    v57((v64 + v65), v61);
    sub_29E605CC8(v60, v64);
    v59((v66 + *(v110 + 36)), (v64 + v62[12]), v61);
    v57(v64, v61);
    v67 = v115;
    sub_29E605D2C(v66, v115 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange);
    v68 = v108;
    v106(v108, v127, v136);
    v69 = v109;
    v104(v109, v128, v135);
    type metadata accessor for SleepScoreDaySummaryProviderDataSource(0);
    swift_allocObject();
    v70 = v103;
    v114 = v70;
    v71 = sub_29E6A7D54(v70, v68, v69);

    v138 = v71;
    sub_29E605DAC(0);
    swift_allocObject();
    *(v67 + 16) = sub_29E753E08();
    v138 = sub_29E753E28();
    sub_29E602DD4();
    v72 = sub_29E754908();
    v139 = v72;
    v73 = sub_29E7548D8();
    v74 = v116;
    (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
    sub_29E605A58(0);
    v124 = v56;
    sub_29E645788(&qword_2A1856948, sub_29E605A58, MEMORY[0x29EDB8A58]);
    v123 = v57;
    sub_29E645788(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v75 = v117;
    sub_29E752968();
    sub_29E6458D4(v74, &qword_2A1856860, MEMORY[0x29EDCA298]);

    swift_allocObject();
    swift_weakInit();
    sub_29E645788(&qword_2A1856968, sub_29E60596C, MEMORY[0x29EDB89E8]);
    v76 = v119;
    v77 = sub_29E7529A8();

    (*(v118 + 8))(v75, v76);
    *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = v77;

    sub_29E67F504();
    v78 = v114;

    sub_29E6458D4(v133, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    v79 = *(v137 + 8);
    v137 += 8;
    v133 = v79;
    (v79)(v128, v135);
    v80 = *(v134 + 8);
    v134 += 8;
    v128 = v80;
    v80(v127, v136);
    (v123)(v100, v61);
    v81 = swift_allocObject();
    *(v81 + 16) = nullsub_1;
    *(v81 + 24) = 0;
    KeyPath = swift_getKeyPath();
    v83 = swift_getKeyPath();
    v84 = v126;
    *(v126 + *(v120 + 28)) = v83;
    sub_29E6459C8(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    *v84 = v67;
    *(v84 + 8) = sub_29E645944;
    *(v84 + 16) = v81;
    *(v84 + 24) = KeyPath;
    *(v84 + 32) = 0;
    v85 = v121;
    sub_29E64586C(v84, v121, type metadata accessor for SleepScoreGalleryScreen);
    v86 = objc_allocWithZone(type metadata accessor for SleepScoreGalleryViewController(0));
    sub_29E64586C(v85, v122, type metadata accessor for SleepScoreGalleryScreen);

    v87 = sub_29E753038();
    sub_29E64594C(v85);
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v78;
    swift_beginAccess();
    *(v81 + 16) = sub_29E6459A8;
    *(v81 + 24) = v89;
    v90 = v87;
    v91 = v78;
    v92 = v90;

    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v94 = (v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
    v95 = *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
    v96 = *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8);
    *v94 = sub_29E6459B0;
    v94[1] = v93;

    sub_29E6459B8(v95, v96);

    result = [objc_opt_self() appleSleepScoreType];
    if (result)
    {
      v97 = result;
      v98 = [result hk_localizedName];

      [v92 setTitle_];
      sub_29E6458D4(v129, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      (v133)(v130, v135);
      v128(v131, v136);
      (v123)(v132, v125);
      sub_29E64594C(v126);

      return v92;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E645788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6457D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E645788(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E64586C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6458D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6459C8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E64594C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreGalleryScreen(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6459B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_29E6459C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E645A2C()
{
  result = qword_2A1857B48;
  if (!qword_2A1857B48)
  {
    sub_29E6459C8(255, &qword_2A1857B40, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857B48);
  }

  return result;
}

void sub_29E645AC4(void *a1)
{
  v2 = sub_29E754828();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  v3 = v2;
  v4 = sub_29E6475B8(v2);
  v5 = [v4 integerValue];

  v6 = sub_29E645BB0(v5, v3);
  v8 = v7;
  v13 = v5;
  v14 = sub_29E647F60(v3);
  v15 = v9;
  v16 = v3;
  sub_29E6485A4(0);
  objc_allocWithZone(v10);
  v11 = v3;
  v12 = sub_29E753038();
  [a1 showViewController:v12 sender:{0, v13, v6, v8, v14, v15, v16}];
}

uint64_t sub_29E645BB0(void (*a1)(char *, uint64_t), char *a2)
{
  v158 = a2;
  v3 = sub_29E752098();
  v146 = *(v3 - 8);
  v147 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v145 = v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v124 - v6;
  v8 = sub_29E74EB48();
  v140 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_29E74EB68();
  v138 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v137 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E648654(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v153 = v124 - v13;
  sub_29E648654(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v152 = v124 - v15;
  v16 = sub_29E74E8C8();
  v148 = *(v16 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v142 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v124 - v19;
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v22 = MEMORY[0x2A1C7C4A8](v21 - 8);
  v143 = v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v149 = v124 - v25;
  MEMORY[0x2A1C7C4A8](v24);
  v27 = v124 - v26;
  v157 = sub_29E74ED28();
  v159 = *(v157 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v157);
  v144 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v150 = v124 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v34 = v124 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32);
  v37 = v124 - v36;
  MEMORY[0x2A1C7C4A8](v35);
  v156 = v124 - v38;
  v39 = sub_29E74EE78();
  v40 = MEMORY[0x2A1C7C4A8](v39);
  v43 = v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a1;
  if (!a1)
  {
    return 0xD000000000000029;
  }

  v154 = v41;
  v155 = v40;
  v141 = v20;
  v44 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  v45 = sub_29E647940(v158);
  if (!v45)
  {
    (*(v154 + 8))(v43, v155);
    return 0xD00000000000005ALL;
  }

  v131 = v10;
  v134 = v8;
  v132 = v7;
  v158 = v37;
  v136 = v16;
  v46 = v45;
  v47 = sub_29E74EE08();
  v48 = [v46 hk:v47 sleepDayStartWithCalendar:?];

  v49 = v156;
  sub_29E74ECD8();

  sub_29E74ECD8();
  v50 = sub_29E74EE08();
  sub_29E646C20(v49, v50, v27);

  v51 = v159;
  v52 = v159 + 8;
  v53 = *(v159 + 8);
  v54 = v157;
  v53(v34, v157);
  v55 = *(v51 + 48);
  if (v55(v27, 1, v54) == 1)
  {
    sub_29E617214(v27, v56, v57, v58, v59, v60);

    v53(v49, v54);
    (*(v154 + 8))(v43, v155);
    return 0xD000000000000028;
  }

  v133 = v55;
  v130 = v46;
  v128 = v53;
  v129 = v52;
  v135 = v43;
  v62 = *(v51 + 32);
  v63 = v158;
  v159 = v51 + 32;
  v127 = v62;
  v62(v158, v27, v54);
  v64 = v54;
  v65 = v152;
  v126 = *(v154 + 56);
  v126(v152, 1, 1, v155);
  v66 = sub_29E74EE88();
  v67 = *(v66 - 8);
  v68 = v153;
  v125 = *(v67 + 56);
  v124[1] = v67 + 56;
  result = v125(v153, 1, 1, v66);
  v69 = *MEMORY[0x29EDC6988];
  if ((*MEMORY[0x29EDC6988] * v151) >> 64 != (*MEMORY[0x29EDC6988] * v151) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_29E74E8B8();
  v70 = v149;
  sub_29E74EE38();
  v71 = v70;
  v72 = v133(v70, 1, v64);
  v78 = v64;
  v79 = v150;
  if (v72 == 1)
  {
    sub_29E617214(v71, v73, v74, v75, v76, v77);
    v80 = v145;
    sub_29E752068();
    v81 = sub_29E752088();
    v82 = sub_29E7546A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v160 = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v160);
      _os_log_impl(&dword_29E5ED000, v81, v82, "[%{public}s] Got nil date while adding date components.", v83, 0xCu);
      sub_29E5FECBC(v84);
      MEMORY[0x29ED98410](v84, -1, -1);
      MEMORY[0x29ED98410](v83, -1, -1);
    }

    (*(v146 + 8))(v80, v147);
    v85 = v136;
    v86 = v135;
    v87 = v156;
    v88 = v128;

    (*(v148 + 8))(v141, v85);
    v89 = v157;
    v88(v63, v157);
    v88(v87, v89);
    (*(v154 + 8))(v86, v155);
    return 0xD000000000000026;
  }

  v127(v150, v71, v78);
  v126(v65, 1, 1, v155);
  result = v125(v68, 1, 1, v66);
  if (__OFSUB__(0, v69))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v90 = v142;
  sub_29E74E8B8();
  v91 = v148;
  v92 = v148 + 8;
  v93 = *(v148 + 8);
  v94 = v141;
  v95 = v136;
  v93(v141, v136);
  (*(v91 + 32))(v94, v90, v95);
  v96 = v143;
  sub_29E74EE38();
  if (v133(v96, 1, v78) == 1)
  {
    sub_29E617214(v96, v97, v98, v99, v100, v101);
    v102 = v132;
    sub_29E752068();
    v103 = sub_29E752088();
    v104 = sub_29E7546A8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v160 = v106;
      *v105 = 136446210;
      *(v105 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v160);
      _os_log_impl(&dword_29E5ED000, v103, v104, "[%{public}s] Got nil date while adding date components.", v105, 0xCu);
      sub_29E5FECBC(v106);
      MEMORY[0x29ED98410](v106, -1, -1);
      MEMORY[0x29ED98410](v105, -1, -1);
    }

    (*(v146 + 8))(v102, v147);
    v107 = v136;
    v108 = v135;
    v109 = v156;
    v110 = v128;

    v111 = v157;
    v110(v79, v157);
    v93(v141, v107);
    v110(v158, v111);
    v110(v109, v111);
    (*(v154 + 8))(v108, v155);
    return 0xD000000000000026;
  }

  else
  {
    v127(v144, v96, v78);
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_29E754D78();

    v160 = 0x206E656577746562;
    v161 = 0xE800000000000000;
    v112 = v137;
    sub_29E74EB58();
    v159 = v92;
    v113 = v131;
    sub_29E74EB28();
    v114 = sub_29E74ECF8();
    v153 = v93;
    v116 = v115;
    v152 = *(v140 + 8);
    (v152)(v113, v134);
    v151 = *(v138 + 8);
    v117 = v139;
    (v151)(v112, v139);
    MEMORY[0x29ED96C20](v114, v116);

    MEMORY[0x29ED96C20](0x20646E6120, 0xE500000000000000);
    sub_29E74EB58();
    sub_29E74EB28();
    v118 = sub_29E74ECF8();
    v120 = v119;
    (v152)(v113, v134);
    (v151)(v112, v117);
    MEMORY[0x29ED96C20](v118, v120);

    v121 = v160;
    v122 = v157;
    v123 = v128;
    v128(v144, v157);
    v123(v79, v122);
    (v153)(v94, v136);
    v123(v158, v122);
    v123(v156, v122);
    (*(v154 + 8))(v135, v155);
    return v121;
  }
}

uint64_t sub_29E646C20@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = sub_29E752098();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v72 = &v70 - v9;
  sub_29E648654(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v75 = &v70 - v11;
  sub_29E648654(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v74 = &v70 - v13;
  v14 = sub_29E74ED28();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v77 = &v70 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v70 - v19;
  v21 = sub_29E74E8C8();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v27 = &v70 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v70 - v28;
  v30 = sub_29E74EC98();
  v31 = [a2 components:28 fromDate:v30];

  sub_29E74E8A8();
  v76 = a1;
  v32 = sub_29E74EC98();
  v33 = [a2 components:28 fromDate:v32];

  sub_29E74E8A8();
  v34 = sub_29E74E898();
  v35 = [a2 dateFromComponents_];

  if (!v35)
  {
    goto LABEL_7;
  }

  sub_29E74ECD8();

  v36 = sub_29E74E898();
  v37 = [a2 dateFromComponents_];

  if (!v37)
  {
    (*(v83 + 8))(v20, v84);
LABEL_7:
    sub_29E752068();
    v51 = sub_29E752088();
    v52 = sub_29E7546A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v85 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v85);
      _os_log_impl(&dword_29E5ED000, v51, v52, "[%{public}s] Got nil while building date from anchor/sleep day start date components.", v53, 0xCu);
      sub_29E5FECBC(v54);
      MEMORY[0x29ED98410](v54, -1, -1);
      MEMORY[0x29ED98410](v53, -1, -1);
    }

    (*(v78 + 8))(v8, v79);
    v55 = v81;
    v56 = *(v80 + 8);
    v56(v27, v81);
    v56(v29, v55);
    v57 = 1;
    v58 = v82;
    v48 = v83;
    v47 = v84;
    return (*(v48 + 56))(v58, v57, 1, v47);
  }

  v38 = v77;
  sub_29E74ECD8();

  if ((sub_29E74ECA8() & 1) == 0)
  {
    v48 = v83;
    v59 = *(v83 + 8);
    v60 = v38;
    v47 = v84;
    v59(v60, v84);
    v59(v20, v47);
    v61 = v81;
    v62 = *(v80 + 8);
    v62(v27, v81);
    v62(v29, v61);
    v50 = v82;
    (*(v48 + 16))(v82, v76, v47);
    goto LABEL_11;
  }

  v71 = v20;
  v39 = sub_29E74EE78();
  (*(*(v39 - 8) + 56))(v74, 1, 1, v39);
  v40 = sub_29E74EE88();
  (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
  sub_29E74E8B8();
  v41 = sub_29E74E898();
  v42 = v81;
  v43 = *(v80 + 8);
  v43(v24, v81);
  v44 = sub_29E74EC98();
  v45 = [a2 dateByAddingComponents:v41 toDate:v44 options:0];

  if (v45)
  {
    v46 = v73;
    sub_29E74ECD8();

    v48 = v83;
    v47 = v84;
    v49 = *(v83 + 8);
    v49(v77, v84);
    v49(v71, v47);
    v43(v27, v42);
    v43(v29, v42);
    v50 = v82;
    (*(v48 + 32))(v82, v46, v47);
LABEL_11:
    v58 = v50;
    v57 = 0;
    return (*(v48 + 56))(v58, v57, 1, v47);
  }

  v64 = v72;
  sub_29E752068();
  v65 = sub_29E752088();
  v66 = sub_29E7546A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v85 = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v85);
    _os_log_impl(&dword_29E5ED000, v65, v66, "[%{public}s] Got nil while adjustint sleep day start.", v67, 0xCu);
    sub_29E5FECBC(v68);
    MEMORY[0x29ED98410](v68, -1, -1);
    MEMORY[0x29ED98410](v67, -1, -1);
  }

  (*(v78 + 8))(v64, v79);
  v48 = v83;
  v47 = v84;
  v69 = *(v83 + 8);
  v69(v77, v84);
  v69(v71, v47);
  v43(v27, v42);
  v43(v29, v42);
  v57 = 1;
  v58 = v82;
  return (*(v48 + 56))(v58, v57, 1, v47);
}

void *sub_29E6475B8(uint64_t a1)
{
  v2 = sub_29E752098();
  MEMORY[0x2A1C7C4A8](v2);
  sub_29E648728();
  v3 = sub_29E754B68();
  v4 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:a1];
  sub_29E7541D8();
  v5 = sub_29E754798();

  if (v5)
  {

    return v5;
  }

  return v3;
}

uint64_t sub_29E647940(uint64_t a1)
{
  v52[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v49 - v7;
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v49 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA748] healthStore:a1];
  v52[0] = 0;
  v16 = [v15 featureOnboardingRecordWithError_];
  if (v16)
  {
    v17 = v16;
    v18 = v52[0];
    v19 = [v17 earliestDateOfAnyOnboardingCompletion];
    if (v19)
    {
      v20 = v19;
      sub_29E74ECD8();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v36 = sub_29E74ED28();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v12, v21, 1, v36);
    sub_29E6486A8(v12, v14);
    if ((*(v37 + 48))(v14, 1, v36) != 1)
    {
      v47 = sub_29E74EC98();

      (*(v37 + 8))(v14, v36);
      return v47;
    }

    sub_29E617214(v14, v38, v39, v40, v41, v42);
    sub_29E752068();
    v43 = sub_29E752088();
    v44 = sub_29E7546A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, v52);
      _os_log_impl(&dword_29E5ED000, v43, v44, "[%{public}s] Got nil earliest onboarding date or could not cast it to NSDate.", v45, 0xCu);
      sub_29E5FECBC(v46);
      MEMORY[0x29ED98410](v46, -1, -1);
      MEMORY[0x29ED98410](v45, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v22 = v52[0];
    v23 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v24 = v23;
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52[0] = v50;
      *v27 = 136446466;
      *(v27 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, v52);
      *(v27 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v51 = v2;
      MEMORY[0x2A1C7C4A8](ErrorValue);
      v30 = v3;
      (*(v31 + 16))(&v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = sub_29E7541F8();
      v34 = sub_29E6B9C90(v32, v33, v52);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Could not fetch featureAvailabilityStore with error: %{public}s", v27, 0x16u);
      v35 = v50;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v35, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);

      (*(v30 + 8))(v6, v51);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  return 0;
}

uint64_t sub_29E647F60(uint64_t a1)
{
  v2 = sub_29E752098();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74EB48();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EB68();
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_29E74ED28();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:a1];
  sub_29E7541D8();
  v35 = v17;
  sub_29E754788();
  v18 = v9;
  v19 = v31;

  v20 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E617214(v12, v21, v22, v23, v24, v25);

    return 0xD000000000000029;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v27 = v18;
    sub_29E74EB58();
    sub_29E74EB38();
    v28 = sub_29E74ECF8();

    (*(v30 + 8))(v6, v19);
    (*(v29 + 8))(v27, v7);
    (*(v20 + 8))(v16, v13);
    return v28;
  }
}

void sub_29E6485A4(uint64_t a1)
{
  if (!qword_2A1857B50)
  {
    sub_29E648600();
    v1 = sub_29E753048();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857B50);
    }
  }
}

unint64_t sub_29E648600()
{
  result = qword_2A1857B58;
  if (!qword_2A1857B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857B58);
  }

  return result;
}

void sub_29E648654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29E6486A8(uint64_t a1, uint64_t a2)
{
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E648728()
{
  result = qword_2A1856EC8;
  if (!qword_2A1856EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1856EC8);
  }

  return result;
}

uint64_t sub_29E648774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = sub_29E74FEB8();
  v70 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v64 = v6;
  v65 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64927C(0);
  v68 = v7;
  v67 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v66 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E649370(0);
  v72 = v9;
  v71 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v69 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6302C8(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64942C(0);
  v62 = *(v14 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v63 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v59 - v18;
  v60 = v20;
  MEMORY[0x2A1C7C4A8](v17);
  v22 = v59 - v21;
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v23 = sub_29E74FE48();
  v24 = sub_29E61037C(v23, qword_2A1A7FA00);
  v25 = *(type metadata accessor for SleepApneaNotificationTipGeneratorPipeline(0) + 20);
  v26 = *(*(v23 - 8) + 16);
  v74 = a3;
  v26(a3 + v25, v24, v23);
  sub_29E74FEA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = sub_29E74FFA8();
  v29 = *(v28 - 8);
  v30 = v29;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v29 + 56))(v22, 1, 1, v28);
    sub_29E64CA84(v13, sub_29E6302C8);
  }

  else
  {
    (*(v29 + 32))(v22, v13, v28);
    (*(v30 + 56))(v22, 0, 1, v28);
  }

  sub_29E74FE58();
  sub_29E601938(v85, v85[3]);
  v31 = sub_29E74FDD8();
  sub_29E64C9D4(v22, v19, sub_29E64942C);
  type metadata accessor for SleepApneaNotificationTipDismissalStateManager(0);
  memset(v83, 0, sizeof(v83));
  v84 = 0;
  v32 = swift_allocObject();
  v76 = v22;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    v58 = a2;
    v34 = sub_29E5FF678(MEMORY[0x29EDCA190]);
  }

  else
  {
    v33 = a2;
    v34 = MEMORY[0x29EDCA1A0];
  }

  v75 = v19;
  *(v32 + 8) = v34;
  v35 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  v36 = sub_29E751D98();
  (*(*(v36 - 8) + 56))(&v32[v35], 1, 1, v36);
  sub_29E74FFE8();
  swift_allocObject();
  v37 = v31;
  *(v32 + 2) = sub_29E74FFB8();
  sub_29E64C9D4(v83, &v78, sub_29E64A0F8);
  v77 = a1;
  if (v79)
  {
    v38 = a2;
    sub_29E5FAEE4(&v78, &v80);
  }

  else
  {
    v38 = a2;
    v39 = sub_29E72D790(a2, v37, v75);
    v81 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v82 = MEMORY[0x29EDC2EA8];
    *&v80 = v39;
    if (v79)
    {
      sub_29E64CA84(&v78, sub_29E64A0F8);
    }
  }

  sub_29E5FAEE4(&v80, (v32 + 24));
  sub_29E72C2D0();
  sub_29E601938(v32 + 3, *(v32 + 6));
  *&v80 = sub_29E751DC8();
  swift_allocObject();
  swift_weakInit();
  sub_29E64C52C(0);
  v40 = MEMORY[0x29EDB8A00];
  sub_29E64CA3C(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
  sub_29E7529A8();

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E64CA84(v83, sub_29E64A0F8);
  v61 = sub_29E64942C;
  sub_29E64CA84(v75, sub_29E64942C);

  v41 = v38;
  sub_29E5FECBC(v85);
  v75 = sub_29E72B2DC();
  v85[0] = v75;
  sub_29E649310();
  sub_29E64CA3C(&qword_2A1A7BF80, sub_29E649310, v40);
  v42 = v77;
  v85[0] = sub_29E7528C8();
  v43 = v66;
  sub_29E752998();

  v44 = v70;
  v45 = v65;
  v46 = v73;
  (*(v70 + 16))(v65, v42, v73);
  v59[1] = v32;
  v47 = v63;
  sub_29E64C9D4(v76, v63, sub_29E64942C);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v49 = (v64 + *(v62 + 80) + v48) & ~*(v62 + 80);
  v50 = (v60 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v44 + 32))(v51 + v48, v45, v46);
  sub_29E64CAE4(v47, v51 + v49, sub_29E64942C);
  *(v51 + v50) = v41;
  sub_29E609CF8(0, &qword_2A1A7D6A0, MEMORY[0x29EDC3C90]);
  sub_29E64CA3C(&qword_2A1A7C068, sub_29E64927C, MEMORY[0x29EDB88F0]);
  v52 = v41;
  v53 = v69;
  v54 = v68;
  sub_29E752928();

  (*(v67 + 8))(v43, v54);
  sub_29E64CA3C(&qword_2A1A7C008, sub_29E649370, MEMORY[0x29EDB8908]);
  v55 = v72;
  v56 = sub_29E7528E8();

  (*(v44 + 8))(v77, v46);
  (*(v71 + 8))(v53, v55);
  result = sub_29E64CA84(v76, v61);
  *v74 = v56;
  return result;
}

void sub_29E64927C(uint64_t a1)
{
  if (!qword_2A1A7C060)
  {
    sub_29E649310();
    sub_29E64CA3C(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
    v1 = sub_29E752628();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C060);
    }
  }
}

void sub_29E649310()
{
  if (!qword_2A1A7BF70)
  {
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF70);
    }
  }
}

void sub_29E649370(uint64_t a1)
{
  if (!qword_2A1A7C000)
  {
    sub_29E64927C(255);
    sub_29E609CF8(255, &qword_2A1A7D6A0, MEMORY[0x29EDC3C90]);
    sub_29E64CA3C(&qword_2A1A7C068, sub_29E64927C, MEMORY[0x29EDB88F0]);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C000);
    }
  }
}

void sub_29E64942C(uint64_t a1)
{
  if (!qword_2A1A7CF50)
  {
    sub_29E74FFA8();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CF50);
    }
  }
}

uint64_t sub_29E649484@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v35 = a3;
  sub_29E64942C(0);
  v34 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v33 = v8;
  v36 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E74FE48();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v39 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29E74FEB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v15);
  v32 = *a1;
  v17 = *(v13 + 16);
  v17(&v31[-v18], a2, v12);
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v19 = sub_29E61037C(v9, qword_2A1A7FA00);
  (*(v10 + 16))(v39, v19, v9);
  v17(v16, a2, v12);
  v20 = v36;
  sub_29E64C9D4(v35, v36, sub_29E64942C);
  v21 = (*(v13 + 80) + 17) & ~*(v13 + 80);
  v22 = (v14 + *(v34 + 80) + v21) & ~*(v34 + 80);
  v23 = (v33 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v32;
  (*(v13 + 32))(v24 + v21, v16, v12);
  sub_29E64CAE4(v20, v24 + v22, sub_29E64942C);
  v25 = v38;
  *(v24 + v23) = v38;
  v26 = sub_29E74FEE8();
  v27 = MEMORY[0x29EDC38C8];
  v28 = v37;
  v37[3] = v26;
  v28[4] = v27;
  sub_29E5FEBF4(v28);
  v29 = v25;
  return sub_29E74FEC8();
}

void sub_29E649820(char a1@<W0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    v6 = sub_29E74FDC8();
    v7 = *(*(v6 - 8) + 56);

    v7(a5, 1, 1, v6);
  }

  else
  {
    v10 = [objc_opt_self() hksp_internalUserDefaults];
    sub_29E649910(a2, a4, v10, a5);
  }
}

uint64_t sub_29E649910@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34[0] = a4;
  v34[1] = a1;
  v35 = a3;
  v6 = sub_29E752098();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E74FB98();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74FDC8();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E7C8();
  swift_allocObject();
  sub_29E74E7B8();
  sub_29E64942C(0);
  sub_29E64CBF4(&qword_2A1857B60, sub_29E64942C, sub_29E64C7A8, MEMORY[0x29EDCA150]);
  v14 = sub_29E74E7A8();
  v16 = v15;
  v17 = v34[0];
  v37 = a5;

  type metadata accessor for SleepApneaNotificationTipViewController(0);
  (*(v8 + 104))(v10, *MEMORY[0x29EDC3750], v7);
  sub_29E64C7DC(v14, v16);
  sub_29E74FE78();
  sub_29E74FC18();
  v18 = sub_29E74FF18();
  v20 = v19;
  v21 = sub_29E74FD78();
  sub_29E64A424(&v41, v18, v20);

  v21(v40, 0);
  if (MEMORY[0x29EDCA190] >> 62)
  {
    v33 = sub_29E754C98();
    v23 = v35;
    if (v33)
    {
      sub_29E5FEFC4(MEMORY[0x29EDCA190]);
    }

    v22 = v37;
  }

  else
  {
    v22 = v37;
    v23 = v35;
  }

  sub_29E74FD28();
  v24 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
  v25 = sub_29E70A79C(v23, v17);
  v26 = sub_29E70B51C();

  if ((v26 & 1) == 0)
  {
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v27 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
    v28 = sub_29E74FD08();
    sub_29E64A1A8(&v41, v27, &qword_2A1A7D490, 0x29EDBACB8, &qword_2A1A7BD38, &qword_2A1A7D488);

    v28(v40, 0);
  }

  sub_29E74FC98();
  sub_29E74FCB8();
  v29 = sub_29E7543D8();
  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (v30)
  {
    sub_29E7541D8();
  }

  sub_29E74FD68();
  sub_29E643D20(v14, v16);
  v31 = v38;
  (*(v38 + 32))(v22, v13, v39);
  return (*(v31 + 56))(v22, 0, 1, v39);
}

uint64_t sub_29E64A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for SleepApneaNotificationTipGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A7CB18;
  if (!qword_2A1A7CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E64A0F8(uint64_t a1)
{
  if (!qword_2A1A7CEE8)
  {
    sub_29E609CF8(255, &qword_2A1A7CEF0, MEMORY[0x29EDC2D90]);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CEE8);
    }
  }
}

uint64_t sub_29E64A1A8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29E754CA8();

    if (v17)
    {

      sub_29E609B5C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_29E754C98();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_29E64A8C8(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_29E64AAE0(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_29E64B290(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_29E609B5C(0, a3, a4);
    v19 = sub_29E754B78();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29E754B88();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_29E64B314(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}