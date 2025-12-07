unint64_t sub_808F4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x796C6E4F656D6974;
      break;
    case 4:
      result = 0x6E6169646972656DLL;
      break;
    case 5:
      result = 0x64656C62616E65;
      break;
    case 6:
      result = 0x7272756365527369;
      break;
    case 7:
      result = 0x417065656C537369;
      break;
    case 8:
      result = 1937334628;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x72726F6D6F547369;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0x6E6F69746361;
      break;
    case 14:
      result = 0x6341656C62616E65;
      break;
    case 15:
      result = 0x41656C6261736964;
      break;
    case 16:
      result = 0x5344496D72616C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_80B2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_808F4(*a1);
  v5 = v4;
  if (v3 == sub_808F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_107370();
  }

  return v8 & 1;
}

Swift::Int sub_80BB4()
{
  v1 = *v0;
  sub_107400();
  sub_808F4(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_80C18(uint64_t a1)
{
  sub_808F4(*v1);
  sub_106E70();
}

Swift::Int sub_80C6C(uint64_t a1)
{
  v2 = *v1;
  sub_107400();
  sub_808F4(v2);
  sub_106E70();

  return sub_107420();
}

unint64_t sub_80CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_829D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_80CFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_808F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_80D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_829D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_80D84(uint64_t a1)
{
  v2 = sub_824F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80DC0(uint64_t a1)
{
  v2 = sub_824F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80DFC()
{
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);

  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);

  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);
  return v0;
}

uint64_t sub_80EE4(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_80F68(uint64_t a1)
{
  sub_7DD24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_81034(void *a1)
{
  v3 = v1;
  v5 = sub_25E4(&qword_1395A0, &qword_109B88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1A8E0(a1, a1[3]);
  sub_824F0();
  sub_107450();
  LOBYTE(v11) = 0;
  sub_106160();
  sub_824A8(&qword_1395A8, &type metadata accessor for SpeakableString, &protocol conformance descriptor for SpeakableString);
  sub_1072F0();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);
    HIBYTE(v10) = 1;
    sub_1060A0();
    sub_824A8(&qword_1395B0, &type metadata accessor for DialogCalendar, &protocol conformance descriptor for DialogCalendar);
    sub_1072F0();
    LOBYTE(v11) = 2;
    sub_1072F0();
    LOBYTE(v11) = 3;
    sub_1072F0();
    LOBYTE(v11) = 4;
    sub_1072F0();
    LOBYTE(v11) = 5;
    sub_107310();
    LOBYTE(v11) = 6;
    sub_107310();
    LOBYTE(v11) = 7;
    sub_107310();
    v11 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days);
    HIBYTE(v10) = 8;
    sub_25E4(&qword_137888, &unk_10A130);
    sub_8261C(&qword_1395B8, &qword_1395A8, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
    sub_107330();
    LOBYTE(v11) = 9;
    sub_1072F0();
    LOBYTE(v11) = 10;
    sub_107310();
    LOBYTE(v11) = 11;
    sub_107310();
    LOBYTE(v11) = 12;
    sub_107310();
    LOBYTE(v11) = 13;
    sub_1072F0();
    LOBYTE(v11) = 14;
    sub_1072F0();
    LOBYTE(v11) = 15;
    sub_1072F0();
    LOBYTE(v11) = 16;
    sub_1072F0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_815E0(uint64_t a1)
{
  sub_7DD24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_816A8(void *a1)
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v42 = v38 - v7;
  v8 = __chkstk_darwin(v6);
  v43 = v38 - v9;
  v10 = __chkstk_darwin(v8);
  v44 = v38 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v38 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v38 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v38 - v22;
  __chkstk_darwin(v21);
  v45 = v38 - v24;
  v48 = sub_25E4(&qword_139578, &qword_109B80);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v26 = v38 - v25;
  v50 = a1;
  v51 = v1;
  *(v1 + 16) = 0;
  sub_1A8E0(a1, a1[3]);
  sub_824F0();
  v47 = v26;
  v27 = v49;
  sub_107440();
  if (v27)
  {
    v36 = v51;

    v31 = v50;
    type metadata accessor for AlarmAlarm(0);
    swift_deallocPartialClassInstance();
    v37 = v31;
  }

  else
  {
    v28 = v23;
    v49 = v20;
    v39 = v14;
    v40 = v17;
    sub_106160();
    LOBYTE(v53) = 0;
    v29 = sub_824A8(&qword_139588, &type metadata accessor for SpeakableString, &protocol conformance descriptor for SpeakableString);
    v30 = v45;
    sub_1072A0();
    v38[1] = v29;
    v33 = v51;
    sub_825AC(v30, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);
    sub_1060A0();
    v52 = 1;
    sub_824A8(&qword_139590, &type metadata accessor for DialogCalendar, &protocol conformance descriptor for DialogCalendar);
    sub_1072A0();
    *(v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time) = v53;
    LOBYTE(v53) = 2;
    v45 = 0;
    sub_1072A0();
    sub_825AC(v28, v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
    LOBYTE(v53) = 3;
    v34 = v49;
    sub_1072A0();
    sub_825AC(v34, v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
    LOBYTE(v53) = 4;
    v35 = v40;
    sub_1072A0();
    sub_825AC(v35, v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);
    LOBYTE(v53) = 5;
    *(v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled) = sub_1072C0() & 1;
    LOBYTE(v53) = 6;
    *(v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent) = sub_1072C0() & 1;
    LOBYTE(v53) = 7;
    *(v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm) = sub_1072C0() & 1;
    sub_25E4(&qword_137888, &unk_10A130);
    v52 = 8;
    sub_8261C(&qword_139598, &qword_139588, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
    sub_1072E0();
    *(v33 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days) = v53;
    LOBYTE(v53) = 9;
    sub_1072A0();
    sub_825AC(v39, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
    LOBYTE(v53) = 10;
    *(v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday) = sub_1072C0() & 1;
    LOBYTE(v53) = 11;
    *(v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow) = sub_1072C0() & 1;
    LOBYTE(v53) = 12;
    *(v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic) = sub_1072C0() & 1;
    LOBYTE(v53) = 13;
    sub_1072A0();
    sub_825AC(v44, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
    LOBYTE(v53) = 14;
    sub_1072A0();
    sub_825AC(v43, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
    LOBYTE(v53) = 15;
    sub_1072A0();
    sub_825AC(v42, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
    LOBYTE(v53) = 16;
    sub_1072A0();
    (*(v46 + 8))(v47, v48);
    v36 = v51;
    sub_825AC(v41, v51 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);
    v37 = v50;
  }

  sub_2738(v37);
  return v36;
}

void *sub_82288()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_822D0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_82398@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AlarmAlarm(0);
  v5 = swift_allocObject();
  result = sub_816A8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_824A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_824F0()
{
  result = qword_139580;
  if (!qword_139580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139580);
  }

  return result;
}

uint64_t sub_82544(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_825AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8261C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(&qword_137888, &unk_10A130);
    sub_824A8(a2, &type metadata accessor for SpeakableString, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_826B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_82728()
{
  result = qword_1395D0;
  if (!qword_1395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmAlarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmAlarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_828D0()
{
  result = qword_1395D8;
  if (!qword_1395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395D8);
  }

  return result;
}

unint64_t sub_82928()
{
  result = qword_1395E0;
  if (!qword_1395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395E0);
  }

  return result;
}

unint64_t sub_82980()
{
  result = qword_1395E8;
  if (!qword_1395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395E8);
  }

  return result;
}

unint64_t sub_829D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_107390();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_82A88(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

id *sub_82B90(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v20 = a4;
  if (a1 >> 62)
  {
    v7 = sub_107270();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    result = sub_83404(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [sub_1071C0() repeatSchedule];
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_83404((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = (v12 + 1);
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 repeatSchedule];
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_83404((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        _swiftEmptyArrayStorage[2] = (v16 + 1);
        _swiftEmptyArrayStorage[v16 + 4] = v14;
        ++v13;
        --v7;
      }

      while (v7);
    }
  }

  v18 = sub_84850(_swiftEmptyArrayStorage);

  if (*a2 != -1)
  {
    swift_once();
  }

  v19 = sub_8324C(v18, *a3);

  return (v19 & 1);
}

id *sub_82D7C(char a1)
{
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1069D0();
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    result = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_1069F0();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  sub_106A20();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  sub_106A10();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  sub_1069C0();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  sub_106A00();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x40) != 0)
  {
LABEL_27:
    sub_1069E0();
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

Swift::Int sub_83074()
{
  result = sub_848C4(&off_12F4E0);
  qword_13B898 = result;
  return result;
}

Swift::Int sub_8309C()
{
  result = sub_848C4(&off_12F528);
  qword_13B8A0 = result;
  return result;
}

uint64_t sub_830C4()
{
  if (qword_136D50 != -1)
  {
    swift_once();
  }

  v0 = qword_13B898;
  v1 = qword_136D58;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_8316C(v2, v0);
  qword_13B8A8 = result;
  return result;
}

uint64_t sub_8316C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_83950(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_8324C(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  for (i = result; v7; result = i)
  {
    v7 &= v7 - 1;
LABEL_13:
    sub_107400();
    v12 = sub_106BD0();
    sub_107410(v12);
    v13 = sub_107420();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = sub_106BD0();
      if (v17 == sub_106BD0())
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
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
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id *sub_833E4(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_83464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_83404(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_8363C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_83424(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_83740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_83444(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_8384C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_83464(id *result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_25E4(&qword_138CE0, &qword_1097E8);
  v10 = *(sub_106160() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_106160() - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *sub_8363C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_139600, &qword_109D08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_83740(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_1376D0, &unk_1080E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_8384C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_139620, &qword_109D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_83950(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_107400();
  v7 = sub_106BD0();
  sub_107410(v7);
  v8 = sub_107420();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = sub_106BD0();
      if (v12 == sub_106BD0())
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_83CC0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_83A6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_25E4(&qword_1395F0, &qword_109D00);
  result = sub_107160();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_107400();
      v18 = sub_106BD0();
      sub_107410(v18);
      result = sub_107420();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_83CC0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_83A6C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_83E2C();
      goto LABEL_12;
    }

    sub_83F6C(v7 + 1);
  }

  v9 = *v3;
  sub_107400();
  v10 = sub_106BD0();
  sub_107410(v10);
  result = sub_107420();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_106BD0();
      result = sub_106BD0();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1073B0();
  __break(1u);
  return result;
}

void *sub_83E2C()
{
  v1 = v0;
  sub_25E4(&qword_1395F0, &qword_109D00);
  v2 = *v0;
  v3 = sub_107150();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_83F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_25E4(&qword_1395F0, &qword_109D00);
  result = sub_107160();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_107400();
      v17 = sub_106BD0();
      sub_107410(v17);
      result = sub_107420();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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

id *sub_84190()
{
  sub_107220();
  sub_1069A0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_allocWithZone(ObjCClassFromMetadata);
  v2 = sub_106E10();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  [v3 setRepeatSchedule:6];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v4 = objc_allocWithZone(ObjCClassFromMetadata);
  v5 = sub_106E10();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  [v6 setRepeatSchedule:0];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v7 = objc_allocWithZone(ObjCClassFromMetadata);
  v8 = sub_106E10();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  [v9 setRepeatSchedule:1];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v10 = objc_allocWithZone(ObjCClassFromMetadata);
  v11 = sub_106E10();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  [v12 setRepeatSchedule:2];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v13 = objc_allocWithZone(ObjCClassFromMetadata);
  v14 = sub_106E10();
  v15 = [v13 initWithIdentifier:0 displayString:v14];

  [v15 setRepeatSchedule:3];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v16 = objc_allocWithZone(ObjCClassFromMetadata);
  v17 = sub_106E10();
  v18 = [v16 initWithIdentifier:0 displayString:v17];

  [v18 setRepeatSchedule:4];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  v19 = objc_allocWithZone(ObjCClassFromMetadata);
  v20 = sub_106E10();
  v21 = [v19 initWithIdentifier:0 displayString:v20];

  [v21 setRepeatSchedule:5];
  sub_107200();
  sub_107230();
  sub_107240();
  sub_107210();
  return _swiftEmptyArrayStorage;
}

void *sub_84558(uint64_t a1)
{
  v2 = sub_1047B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_25E4(&qword_139608, &qword_109D10);
    v9 = sub_107170();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_84A58(&qword_139610, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_106DE0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_84A58(&qword_139618, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_106E00();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_84850(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_84A04();
  result = sub_106F80();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_83950(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_848C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_1395F0, &qword_109D00);
    v3 = sub_107170();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      sub_107400();
      v11 = sub_106BD0();
      sub_107410(v11);
      result = sub_107420();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_106BD0();
        result = sub_106BD0();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + 8 * i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_84A04()
{
  result = qword_1395F8;
  if (!qword_1395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395F8);
  }

  return result;
}

uint64_t sub_84A58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1047B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_84A9C(void *a1, uint64_t a2)
{
  v4 = _s20HandleIntentStrategyVMa_5(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s21ConfirmIntentStrategyVMa(0);
  __chkstk_darwin(v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1068B0();
  sub_106890();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13B0E0, &qword_10BC10);
  sub_104AC0();
  sub_262C(a1, v9);
  sub_517C8(a2, &v9[*(v7 + 20)]);
  sub_84DB0(&qword_139628, _s21ConfirmIntentStrategyVMa, &unk_10AA10);
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v6);
  sub_517C8(a2, &v6[*(v4 + 20)]);
  sub_84DB0(&qword_139630, _s20HandleIntentStrategyVMa_5, &unk_10B818);
  sub_104A50();
  sub_104AB0();
  sub_1CDFC(a2);
  sub_2738(a1);
  sub_84DF8(v6, _s20HandleIntentStrategyVMa_5);
  return sub_84DF8(v9, _s21ConfirmIntentStrategyVMa);
}

BOOL sub_84D4C()
{
  sub_25E4(&qword_139638, &unk_109D20);
  v0 = sub_105150();
  sub_106880();

  v1 = sub_1068A0();
  return v1 == sub_1068A0();
}

uint64_t sub_84DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_84DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_84E68()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139640);
  sub_135C4(v0, qword_139640);
  return sub_106A80();
}

uint64_t sub_84EB4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_104D60();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_106D20();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_106300();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_106320();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_25E4(&qword_137FA8, &qword_109DD0);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = sub_104FF0();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_8514C, 0, 0);
}

uint64_t sub_8514C(uint64_t a1)
{
  sub_104FE0();
  if (qword_136D68 != -1)
  {
    swift_once();
  }

  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  v5 = v1[9];
  v6 = sub_135C4(v1[13], qword_139640);
  v1[28] = v6;
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_105200();
    v15 = [v14 unsupportedReason];

    (*(v11 + 8))(v10, v12);
    *(v13 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "CreateAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v13, 0xCu);
  }

  else
  {
    (*(v11 + 8))(v1[24], v1[22]);
  }

  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Hitting alarm RF codepath.", v18, 2u);
  }

  v20 = v1[17];
  v19 = v1[18];
  v22 = v1[15];
  v21 = v1[16];
  v23 = v1[13];
  v24 = v1[14];

  (*(v20 + 104))(v19, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v21);
  (*(v24 + 16))(v22, v6, v23);
  mach_absolute_time();
  sub_106330();
  if (qword_136E78 != -1)
  {
    swift_once();
  }

  v27 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v25 = swift_task_alloc();
  v1[29] = v25;
  *v25 = v1;
  v25[1] = sub_8548C;

  return v27(0xD00000000000002FLL, 0x800000000010D670, _swiftEmptyArrayStorage);
}

uint64_t sub_8548C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_857D4;
  }

  else
  {
    v4 = sub_855A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_855A0(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  v1[32] = v2;
  *v2 = v1;
  v2[1] = sub_85654;
  v3 = v1[27];
  v4 = v1[21];
  v5 = v1[12];
  v6 = v1[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_85654()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = v2[30];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v4 = sub_85B88;
  }

  else
  {
    v4 = sub_85AA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_857D4()
{
  v19 = v0;
  v1 = v0[31];
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v0[7] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = sub_106750();
  v0[5] = v12;
  v0[6] = &protocol witness table for ABCReport;
  v13 = sub_1A924(v0 + 2);
  *v13 = sub_1045F0();
  v14 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v15 = sub_106690();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(*(v12 - 8) + 104))(v13, enum case for ABCReport.dialog(_:), v12);
  sub_1064D0();
  sub_2738(v0 + 2);
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v16 = v0[1];

  return v16();
}

uint64_t sub_85AA0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_85B88()
{
  v19 = v0;
  v1 = v0[33];
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v0[7] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = sub_106750();
  v0[5] = v12;
  v0[6] = &protocol witness table for ABCReport;
  v13 = sub_1A924(v0 + 2);
  *v13 = sub_1045F0();
  v14 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v15 = sub_106690();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(*(v12 - 8) + 104))(v13, enum case for ABCReport.dialog(_:), v12);
  sub_1064D0();
  sub_2738(v0 + 2);
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v16 = v0[1];

  return v16();
}

uint64_t sub_85E54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_84EB4(a1, a2);
}

uint64_t sub_85F14()
{
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v1 = sub_1051F0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_85F8C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139660);
  sub_135C4(v0, qword_139660);
  return sub_106A60();
}

uint64_t sub_85FD8()
{
  v0 = sub_106200();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for AlarmBaseCATs_Async(0);
  sub_1061E0();
  result = sub_1060D0();
  qword_139678 = result;
  return result;
}

uint64_t sub_86064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = [objc_allocWithZone(SAUIConfirmationView) init];
  v9 = sub_106E10();
  [v8 setConfirmText:v9];

  v10 = sub_106E10();
  [v8 setDenyText:v10];

  sub_25E4(&qword_137DD0, &unk_108920);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_108470;
  *(v11 + 32) = a5;
  v12 = a5;
  sub_25E4(&qword_139698, qword_109E10);
  isa = sub_106ED0().super.isa;

  [v8 setConfirmCommands:isa];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_108470;
  *(v14 + 32) = a6;
  v15 = a6;
  v16 = sub_106ED0().super.isa;

  [v8 setDenyCommands:v16];

  v17 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v18 = [v8 confirmText];
  [v17 setLabel:v18];

  [v17 setType:SAUIConfirmationOptionConfirmationOptionTypeCONFIRMValue];
  v19 = [v8 confirmCommands];
  [v17 setCommands:v19];

  v20 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v21 = [v8 denyText];
  [v20 setLabel:v21];

  [v20 setType:SAUIConfirmationOptionConfirmationOptionTypeDENYValue];
  v22 = [v8 denyCommands];
  [v20 setCommands:v22];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_109DE0;
  *(v23 + 32) = v17;
  *(v23 + 40) = v20;
  sub_16F28(0, &unk_1396A0, SAUIConfirmationOption_ptr);
  v24 = v17;
  v25 = v20;
  v26 = sub_106ED0().super.isa;

  [v8 setAllConfirmationOptions:v26];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_108470;
  *(v27 + 32) = v8;

  return v27;
}

uint64_t sub_863DC(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_106440();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_104EC0();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_105030();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_105060();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_865C8, 0, 0);
}

uint64_t sub_865C8()
{
  if (qword_136D78 != -1)
  {
    swift_once();
  }

  v0[22] = qword_139678;
  v4 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_866D0;
  v2 = v0[17];

  return v4(v2, 0xD000000000000017, 0x800000000010D6A0, _swiftEmptyArrayStorage);
}

uint64_t sub_866D0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_869B0;
  }

  else
  {
    v2 = sub_867E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_867E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_105020();
  v5 = *(v3 + 8);
  v0[25] = v5;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (*(v4 + 16))
  {
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    (*(v8 + 16))(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    sub_105050();
    (*(v8 + 8))(v6, v7);
    v12 = sub_104EB0();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  v0[27] = v12;
  v0[28] = v14;
  v18 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_86A58;
  v16 = v0[16];

  return v18(v16, 0xD000000000000018, 0x800000000010D6C0, _swiftEmptyArrayStorage);
}

uint64_t sub_869B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_86A58()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_87218;
  }

  else
  {
    v2 = sub_86B6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_86B6C()
{
  v52 = v0;
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_105020();
  v1(v2, v3);
  v5 = v0[28];
  if (*(v4 + 16))
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    (*(v7 + 16))(v6, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_105050();
    (*(v7 + 8))(v6, v8);
    v12 = sub_104EB0();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
    if (v5)
    {
      v15 = v0[28];
      if (v14)
      {
        if (qword_136D70 != -1)
        {
          swift_once();
        }

        v16 = sub_106D20();
        sub_135C4(v16, qword_139660);

        v17 = sub_106D10();
        v18 = sub_106FC0();

        v50 = v15;
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v0[27];
          v20 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v20 = 136315394;

          v21 = sub_722E8(v19, v15, &v51);

          *(v20 + 4) = v21;
          *(v20 + 12) = 2080;

          v22 = sub_722E8(v12, v14, &v51);

          *(v20 + 14) = v22;
          _os_log_impl(&dword_0, v17, v18, "Building confirmation button view with text: %s, %s", v20, 0x16u);
          swift_arrayDestroy();
        }

        v23 = v0[9];
        v24 = v0[10];
        v25 = v0[7];
        v26 = v0[8];
        sub_106560();
        sub_106550();
        sub_106540();

        sub_1A8E0(v0 + 2, v0[5]);
        v27 = sub_104CD0();
        sub_2738(v0 + 2);
        v28 = *(v23 + 104);
        v28(v24, enum case for ButtonOption.yes(_:), v26);
        v29 = sub_EAD50(v25, v24);
        v30 = *(v23 + 8);
        v30(v24, v26);
        v28(v24, enum case for ButtonOption.cancel(_:), v26);
        v31 = sub_EAD50(v25, v24);
        v30(v24, v26);
        if (v27)
        {
          sub_16F28(0, &unk_139680, SASTButtonItem_ptr);
          sub_25E4(&qword_137DD0, &unk_108920);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_108470;
          *(v32 + 32) = v29;

          v49 = v29;
          v33 = sub_106FD0();
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_108470;
          *(v34 + 32) = v31;

          v35 = v31;
          v36 = sub_106FD0();
          v37 = [objc_allocWithZone(SASTItemGroup) init];
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_109DE0;
          *(v38 + 32) = v33;
          *(v38 + 40) = v36;
          v39 = v33;
          v40 = v36;
          sub_25E4(&qword_139690, &unk_109E00);
          isa = sub_106ED0().super.isa;

          [v37 setTemplateItems:isa];

          v42 = swift_allocObject();
          *(v42 + 1) = xmmword_108470;
          v42[4] = v37;
        }

        else
        {
          v42 = sub_86064(v12, v14, v0[27], v50, v29, v31);
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  if (qword_136D70 != -1)
  {
    swift_once();
  }

  v43 = sub_106D20();
  sub_135C4(v43, qword_139660);
  v44 = sub_106D10();
  v45 = sub_106FB0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "Error generating yes/not button titles for confirmation. We didn't throw, but returned nil for the text. This is an unhandled error.", v46, 2u);
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_18:

  v47 = v0[1];

  return v47(v42);
}

uint64_t sub_87218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_87330(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

id sub_873D4(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v51 - v8;
  v10 = [objc_allocWithZone(v2) init];
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v11 = sub_106D20();
  sub_135C4(v11, qword_1396B0);
  v12 = sub_106D10();
  v13 = sub_106FC0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Making CreateAlarmIntent...", v14, 2u);
  }

  sub_105940();

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A20();
    if (swift_dynamicCast())
    {

      sub_105930();

      v15 = v54[0];
      if (v54[0])
      {
        sub_105600();
      }

      v22 = sub_106260();

      if (v22)
      {
        v23 = sub_106250();

        if (v23)
        {

LABEL_30:
          swift_retain_n();
          v24 = sub_106D10();
          v25 = sub_106FC0();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v51[0] = v9;
            v27 = v26;
            v28 = swift_slowAlloc();
            v54[0] = v28;
            *v27 = 136315138;
            v29 = sub_1058F0();
            v51[1] = a1;
            v53 = v29;
            sub_25E4(&qword_1396D0, &qword_109E30);
            v30 = sub_1070C0();
            v32 = v31;

            v33 = sub_722E8(v30, v32, v54);

            *(v27 + 4) = v33;
            _os_log_impl(&dword_0, v24, v25, "TARGET=> %s", v27, 0xCu);
            sub_2738(v28);

            v9 = v51[0];
          }

          sub_AB868();
          if (v34)
          {
            v35 = sub_106E10();
          }

          else
          {
            v35 = 0;
          }

          [v10 setLabel:v35];

          if (sub_AB3EC(0) && (v36 = sub_105F30(1, 0), , v36))
          {
            v37 = [v36 startDateComponents];

            if (v37)
            {
              sub_104570();

              v38 = 0;
            }

            else
            {
              v38 = 1;
            }

            v44 = sub_1045E0();
            v45 = *(v44 - 8);
            (*(v45 + 56))(v7, v38, 1, v44);
            sub_1D68C(v7, v9);
            isa = 0;
            if ((*(v45 + 48))(v9, 1, v44) != 1)
            {
              isa = sub_104560().super.isa;
              (*(v45 + 8))(v9, v44);
            }
          }

          else
          {
            v39 = sub_1045E0();
            (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
            isa = 0;
          }

          [v10 setTime:isa];

          v46 = sub_1058D0();
          [v10 setRelativeOffsetInMinutes:v46];

          sub_ABEB8(v47);
          sub_1069A0();
          v48 = sub_106ED0().super.isa;

          [v10 setRepeatSchedule:v48];

LABEL_48:
          v49 = sub_106290();
          (*(*(v49 - 8) + 8))(v52, v49);
          sub_16F70(v56, &qword_137490, qword_108C80);
          return v10;
        }
      }

      else
      {
      }

LABEL_29:
      if (v15)
      {
        goto LABEL_30;
      }

LABEL_41:
      v41 = sub_106D10();
      v42 = sub_106FC0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "createAlarmTask has no target, should prompt for time.", v43, 2u);
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A60();
    if (swift_dynamicCast())
    {

      sub_105570();
      if (!v54[0] || (v16 = sub_1058F0(), , !v16))
      {
        sub_105570();
        if (!v54[0] || (v17 = sub_105910(), , !v17))
        {

          goto LABEL_41;
        }
      }

      sub_105570();

      v15 = v54[0];
      goto LABEL_29;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A70();
    if (swift_dynamicCast())
    {

      goto LABEL_41;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  v18 = sub_106D10();
  v19 = sub_106FB0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "NLv4TranslationParse: Dialog act is not an UsoTask_create_common_Alarm", v20, 2u);
  }

  v21 = sub_106290();
  (*(*(v21 - 8) + 8))(v52, v21);
  sub_16F70(v56, &qword_137490, qword_108C80);
  return 0;
}

uint64_t sub_87CE4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1396B0);
  sub_135C4(v0, qword_1396B0);
  return sub_106A80();
}

id sub_87D30(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = qword_136D90;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_1396B0);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Making DeleteAlarmIntent...", v9, 2u);
  }

  v10 = sub_1EED0(a1);
  [v5 setAlarmSearch:v10];

  v11 = v5;
  v12 = sub_106D10();
  v13 = sub_106FC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    _os_log_impl(&dword_0, v12, v13, "Inited DeleteAlarmIntent: %@", v14, 0xCu);
    sub_16F70(v15, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

  return v11;
}

id sub_87F34(uint64_t a1)
{
  v3 = sub_25E4(&qword_137500, &qword_107E10);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v84 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v84 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v84 - v14;
  __chkstk_darwin(v13);
  v17 = v84 - v16;
  v18 = [objc_allocWithZone(v1) init];
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v19 = sub_106D20();
  v84[2] = sub_135C4(v19, qword_1396B0);
  v20 = sub_106D10();
  v21 = sub_106FC0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Making UpdateAlarmIntent...", v22, 2u);
  }

  sub_105940();

  sub_14994(v88, v86, &qword_137490, qword_108C80);
  if (v87)
  {
    sub_105AA0();
    if (swift_dynamicCast())
    {
      v23 = v85;

      sub_105C50();
      v84[1] = v23;

      v24 = v86[0];
      [v18 setOperation:1];
      if (v24)
      {

        sub_105600();

        v25 = sub_105E90();

        if (*(v25 + 16))
        {
          sub_32658(1701667182, 0xE400000000000000);
          v27 = v26;

          if (v27)
          {
            v28 = sub_106D10();
            v29 = sub_106FC0();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&dword_0, v28, v29, "alarmTask contains name node; changing INUpdateAlarmOperation to .updateLabel.", v30, 2u);
            }

            [v18 setOperation:2];
          }
        }

        else
        {
        }

        v40 = sub_1EED0(a1);
        [v18 setAlarmSearch:v40];

        v41 = sub_AB3EC(0);

        if (v41)
        {

          v42 = sub_105F30(1, 1);

          if (v42)
          {
            v43 = [v42 endDateComponents];

            if (v43)
            {
              sub_104570();

              v44 = 0;
            }

            else
            {
              v44 = 1;
            }

            v53 = sub_1045E0();
            (*(*(v53 - 8) + 56))(v15, v44, 1, v53);
            sub_1D68C(v15, v17);
            v45 = 0;
LABEL_42:
            sub_14994(v17, v12, &qword_137500, &qword_107E10);
            v54 = sub_1045E0();
            v55 = *(v54 - 8);
            isa = 0;
            if ((*(v55 + 48))(v12, 1, v54) != 1)
            {
              isa = sub_104560().super.isa;
              (*(v55 + 8))(v12, v54);
            }

            [v18 setProposedTime:isa];

            if ((v45 & 1) != 0 || (, v57 = sub_105F80(), , !v57))
            {
              [v18 setProposedMeridiemSetByUser:0];
              if (!v24)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v58 = sub_105F00();

              sub_1F7B8();
              v59 = v18;
              v60 = sub_107080(v58 & 1).super.super.isa;
              [v59 setProposedMeridiemSetByUser:v60];

              if (!v24)
              {
LABEL_47:
                [v18 setProposedLabel:0];

LABEL_68:
                v77 = v18;
                v78 = sub_106D10();
                v79 = sub_106FC0();

                if (os_log_type_enabled(v78, v79))
                {
                  v80 = swift_slowAlloc();
                  v81 = swift_slowAlloc();
                  *v80 = 138412290;
                  *(v80 + 4) = v77;
                  *v81 = v77;
                  v82 = v77;
                  _os_log_impl(&dword_0, v78, v79, "Inited UpdateAlarmIntent: %@", v80, 0xCu);
                  sub_16F70(v81, &qword_137578, &unk_10B4E0);
                }

                sub_16F70(v17, &qword_137500, &qword_107E10);
                goto LABEL_71;
              }
            }

            sub_AB868();
            v62 = v61;

            if (v62)
            {
              v63 = sub_106E10();
            }

            else
            {
              v63 = 0;
            }

            [v18 setProposedLabel:v63];

            v65 = sub_ABEB8(v64);

            if (v65 >> 62)
            {
              if (sub_107270())
              {
                goto LABEL_54;
              }
            }

            else if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
            {
LABEL_54:
              sub_1069A0();
              v66 = sub_106ED0().super.isa;

              [v18 setProposedRecurrence:v66];

              goto LABEL_68;
            }

            goto LABEL_68;
          }

          v45 = 0;
LABEL_31:
          v46 = sub_1045E0();
          (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
          goto LABEL_42;
        }
      }

      else
      {
        v31 = sub_1EED0(a1);
        [v18 setAlarmSearch:v31];
      }

      v45 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    sub_16F70(v86, &qword_137490, qword_108C80);
  }

  sub_14994(v88, v86, &qword_137490, qword_108C80);
  if (!v87)
  {
    sub_16F70(v86, &qword_137490, qword_108C80);
    goto LABEL_22;
  }

  sub_105A60();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_105570();

  if (!v86[0])
  {
LABEL_21:

LABEL_22:
    sub_14994(v88, v86, &qword_137490, qword_108C80);
    v32 = sub_106D10();
    v33 = sub_106FB0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v85 = v35;
      *v34 = 136315138;
      sub_25E4(&qword_137490, qword_108C80);
      v36 = sub_1070C0();
      v38 = v37;
      sub_16F70(v86, &qword_137490, qword_108C80);
      v39 = sub_722E8(v36, v38, &v85);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v32, v33, "No update task found in task: %s", v34, 0xCu);
      sub_2738(v35);
    }

    else
    {

      sub_16F70(v86, &qword_137490, qword_108C80);
    }

    goto LABEL_71;
  }

  if (sub_1058F0())
  {

    goto LABEL_34;
  }

  sub_105920();
  if (!v47)
  {

    goto LABEL_21;
  }

LABEL_34:
  if (sub_AB3EC(0) && (v48 = sub_105F30(1, 1), , v48))
  {
    v49 = [v48 endDateComponents];

    if (v49)
    {
      sub_104570();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v67 = sub_1045E0();
    v68 = *(v67 - 8);
    (*(v68 + 56))(v6, v50, 1, v67);
    sub_1D68C(v6, v9);
    v52 = 0;
    if ((*(v68 + 48))(v9, 1, v67) != 1)
    {
      v52 = sub_104560().super.isa;
      (*(v68 + 8))(v9, v67);
    }
  }

  else
  {
    v51 = sub_1045E0();
    (*(*(v51 - 8) + 56))(v9, 1, 1, v51);
    v52 = 0;
  }

  [v18 setProposedTime:v52];

  sub_AB868();
  if (v69)
  {
    v70 = sub_106E10();
  }

  else
  {
    v70 = 0;
  }

  [v18 setProposedLabel:v70];

  v71 = v18;
  v72 = sub_106D10();
  v73 = sub_106FC0();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v71;
    *v75 = v71;
    v76 = v71;
    _os_log_impl(&dword_0, v72, v73, "Got alarm proposed time/label, UpdateAlarmIntent: %@", v74, 0xCu);
    sub_16F70(v75, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

LABEL_71:
  sub_16F70(v88, &qword_137490, qword_108C80);
  return v18;
}

id sub_88CB4(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = qword_136D90;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_1396B0);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Making SearchAlarmIntent...", v9, 2u);
  }

  v10 = sub_1EED0(a1);
  [v5 setAlarmSearch:v10];

  sub_105940();

  sub_14994(v40, v38, &qword_137490, qword_108C80);
  if (v39)
  {
    sub_14994(v38, v37, &qword_137490, qword_108C80);
    sub_105B80();
    if (swift_dynamicCast())
    {

      v11 = sub_106D10();
      v12 = sub_106FC0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Task is UsoTask_summarise_common_Alarm.";
LABEL_12:
        _os_log_impl(&dword_0, v11, v12, v14, v13, 2u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    sub_105D80();
    if (swift_dynamicCast())
    {

      v11 = sub_106D10();
      v12 = sub_106FC0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Task is UsoTask_checkExistence_common_Alarm.";
        goto LABEL_12;
      }

LABEL_13:

      [v5 setAlarmSearchType:1];
LABEL_14:
      sub_2738(v37);
      goto LABEL_44;
    }

    sub_105AD0();
    if (swift_dynamicCast())
    {
      v15 = sub_106D10();
      v16 = sub_106FC0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "Task is UsoTask_request_common_Alarm.", v17, 2u);
      }

      [v5 setAlarmSearchType:1];

      sub_105C40();
      if (v35)
      {
      }

      else
      {
        sub_105C30();

        if (!v36)
        {
LABEL_35:

          goto LABEL_14;
        }
      }

      v22 = sub_1058F0();

      if (v22)
      {
        v23 = 2;
      }

      else
      {

        v24 = sub_105900();

        if (!v24)
        {
LABEL_34:

          goto LABEL_35;
        }

        v23 = 3;
      }

      [v5 setAlarmSearchType:v23];
      goto LABEL_34;
    }

    sub_105990();
    if (swift_dynamicCast())
    {

      v18 = sub_106D10();
      v19 = sub_106FC0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "Task is UsoTask_read_common_Alarm.";
LABEL_26:
        _os_log_impl(&dword_0, v18, v19, v21, v20, 2u);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    sub_1059A0();
    if (swift_dynamicCast())
    {
      goto LABEL_24;
    }

    sub_105A60();
    if (swift_dynamicCast())
    {

      v11 = sub_106D10();
      v12 = sub_106FC0();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Task is UsoTask_noVerb_common_Alarm.";
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
LABEL_24:

      v18 = sub_106D10();
      v19 = sub_106FC0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "Task is UsoTask_read_uso_NoEntity.";
        goto LABEL_26;
      }

LABEL_27:

      [v5 setAlarmSearchType:4];
      goto LABEL_14;
    }

    sub_2738(v37);
  }

  v25 = sub_106D10();
  v26 = sub_106FB0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "NLv4TranslationParse: Dialog act is not a find alarm task, cannot support input", v27, 2u);
  }

  [v5 setAlarmSearchType:1];
LABEL_44:
  sub_16F70(v38, &qword_137490, qword_108C80);
  v28 = v5;
  v29 = sub_106D10();
  v30 = sub_106FC0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_0, v29, v30, "Inited SearchAlarmIntent: %@", v31, 0xCu);
    sub_16F70(v32, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

  sub_16F70(v40, &qword_137490, qword_108C80);
  return v28;
}

id sub_89448(uint64_t a1)
{
  v3 = sub_106960();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = [objc_allocWithZone(v1) init];
  v11 = qword_136D90;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_106D20();
  sub_135C4(v13, qword_1396B0);
  v14 = sub_106D10();
  v15 = sub_106FC0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Making ChangeAlarmStatusIntent...", v16, 2u);
  }

  v17 = sub_1EED0(a1);
  if (!v17)
  {
    if (qword_136D98 != -1)
    {
      swift_once();
    }

    v17 = qword_1396C8;
  }

  v18 = v17;
  [v12 setAlarmSearch:v17];

  sub_274CC(v9);
  v19 = (*(v4 + 88))(v9, v3);
  if (v19 != enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.create(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    if (v19 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
LABEL_14:
      v20 = 2;
LABEL_17:
      v21 = v12;
      [v21 setOperation:v20];
      v22 = v21;
      v23 = sub_106D10();
      v24 = sub_106FC0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        _os_log_impl(&dword_0, v23, v24, "Inited ChangeAlarmStatusIntent: %@", v25, 0xCu);
        sub_16F70(v26, &qword_137578, &unk_10B4E0);
      }

      else
      {
      }

      return v22;
    }

    if (v19 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
LABEL_16:
      v20 = 1;
      goto LABEL_17;
    }

    if (v19 != enum case for AlarmNLv4Constants.AlarmVerb.read(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.request(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.update(_:) && v19 != enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      if (v19 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
      {
        goto LABEL_14;
      }

      if (v19 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
      {
        goto LABEL_16;
      }

      if (v19 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
      {
        goto LABEL_14;
      }

      sub_107360();
      __break(1u);
    }
  }

  v27 = sub_106D10();
  v28 = sub_106FB0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    sub_274CC(v7);
    v31 = sub_106950();
    v32 = v4;
    v34 = v33;
    (*(v32 + 8))(v7, v3);
    v35 = sub_722E8(v31, v34, &v38);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_0, v27, v28, "Can NOT handle request, verb = %s", v29, 0xCu);
    sub_2738(v30);
  }

  else
  {
  }

  return 0;
}

void sub_899F4()
{
  sub_106A50();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_106E10();
  v2 = [v0 initWithIdentifier:0 displayString:v1];

  qword_1396C8 = v2;
}

id sub_89A5C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v4 = __chkstk_darwin(v3 - 8);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v56 - v7;
  __chkstk_darwin(v6);
  v60 = &v56 - v9;
  v10 = sub_106630();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v56 - v15;
  v16 = sub_106290();
  __chkstk_darwin(v16 - 8);
  v63 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_106960();
  v18 = *(v65 - 8);
  __chkstk_darwin(v65);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v21 = sub_106D20();
    v22 = sub_135C4(v21, qword_1396B0);

    v64 = v22;
    v23 = sub_106D10();
    v24 = sub_106FC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v57 = v8;
      v67 = v27;
      *v26 = 136315394;
      v28 = sub_105E50();
      v30 = sub_722E8(v28, v29, &v67);
      v56 = v14;
      v31 = v11;
      v32 = v30;

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v66 = a1;
      sub_105E60();

      v33 = sub_106E30();
      v35 = sub_722E8(v33, v34, &v67);

      *(v26 + 14) = v35;
      v11 = v31;
      v14 = v56;
      _os_log_impl(&dword_0, v23, v24, "Building SK intent with verb %s from alarmTask: %s", v26, 0x16u);
      swift_arrayDestroy();
      v8 = v57;

      v10 = v58;
    }

    sub_274CC(v20);
    v36 = *(v18 + 88);
    v18 += 88;
    v37 = v20;
    v20 = v65;
    v38 = v36(v37, v65);
    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
    {

      v39 = sub_106D10();
      v40 = sub_106FB0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v67 = v42;
        *v41 = 136315138;
        v43 = sub_105E50();
        v45 = sub_722E8(v43, v44, &v67);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_0, v39, v40, "Unexpected AlarmVerb: %s", v41, 0xCu);
        sub_2738(v42);
      }

LABEL_9:
      sub_106870();

      return sub_88CB4(v46);
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
    {
      goto LABEL_9;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
    {
LABEL_11:
      sub_106800();

      v48 = v63;
      sub_106280();
      return sub_873D4(a1, v48);
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
    {
      sub_106840();

      return sub_87D30(v49);
    }

    v50 = v62;
    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
      goto LABEL_15;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
      goto LABEL_18;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v38 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      goto LABEL_9;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
    {
      break;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
    {
      goto LABEL_9;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
    {
      sub_1068D0();

      return sub_87F34(v55);
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      goto LABEL_11;
    }

    v50 = v62;
    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      goto LABEL_15;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
      goto LABEL_18;
    }

    if (v38 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
LABEL_15:
      sub_14994(v61, v50, &qword_1374F0, &qword_1080F0);
      if ((*(v11 + 48))(v50, 1, v10) == 1)
      {
        sub_16F70(v50, &qword_1374F0, &qword_1080F0);
LABEL_18:
        sub_1067A0();

        return sub_89448(v51);
      }

      (*(v11 + 32))(v14, v50, v10);
      v52 = [objc_allocWithZone(sub_1067A0()) init];
      [v52 setOperation:2];
      goto LABEL_20;
    }

    sub_107360();
    __break(1u);
LABEL_35:
    swift_once();
  }

  v54 = v60;
  sub_14994(v61, v60, &qword_1374F0, &qword_1080F0);
  if ((*(v11 + 48))(v54, 1, v10) != 1)
  {
    v14 = v59;
    (*(v11 + 32))(v59, v54, v10);
    v52 = [objc_allocWithZone(sub_1068B0()) init];
LABEL_20:
    (*(v11 + 16))(v8, v14, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    v53 = sub_51180(v52, v8, 0);

    sub_16F70(v8, &qword_1374F0, &qword_1080F0);
    (*(v11 + 8))(v14, v10);
    return v53;
  }

  sub_16F70(v54, &qword_1374F0, &qword_1080F0);
  return [objc_allocWithZone(sub_1068B0()) init];
}

id sub_8A314(uint64_t a1, uint64_t a2)
{
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_1396B0);
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "In getSKIntentFromNLv4Intent.", v6, 2u);
  }

  swift_getObjectType();
  v7 = sub_107000();
  if (v7)
  {
    v8 = sub_89A5C(v7, a2);

    return v8;
  }

  else
  {
    v10 = sub_106D10();
    v11 = sub_106FB0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "getSKIntentFromNLv4Intent(): There's no firstUsoTask. Returning nil intent", v12, 2u);
    }

    return 0;
  }
}

id sub_8A4A8(uint64_t a1, uint64_t a2)
{
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_1396B0);
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Getting SK intent from uso parse", v6, 2u);
  }

  v7 = sub_105440();
  if (v7)
  {
    v8 = sub_89A5C(v7, a2);

    return v8;
  }

  else
  {
    v10 = sub_106D10();
    v11 = sub_106FB0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "getSKIntentFromNLv4Intent(): There's no firstUsoTask. Returning nil intent", v12, 2u);
    }

    return 0;
  }
}

uint64_t sub_8A634(uint64_t a1, uint64_t a2)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v8 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    return sub_106870();
  }

  if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    return sub_106800();
  }

  if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    return sub_106840();
  }

  if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
LABEL_12:
    v11 = sub_106630();
    if ((*(*(v11 - 8) + 48))(a2, 1, v11) != 1)
    {
      return sub_106910();
    }

    return sub_1067A0();
  }

  if (v8 != enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    if (v8 != enum case for AlarmNLv4Constants.AlarmVerb.read(_:) && v8 != enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
      {
        return sub_1068B0();
      }

      if (v8 != enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
      {
        if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
        {
          return sub_1068D0();
        }

        if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
        {
          return sub_106800();
        }

        if (v8 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
        {
          goto LABEL_12;
        }

        if (v8 != enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
        {
          if (v8 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
          {
            result = sub_107360();
            __break(1u);
            return result;
          }

          goto LABEL_12;
        }

        return sub_1067A0();
      }
    }

    return sub_106870();
  }

  return sub_1067A0();
}

uint64_t sub_8A8E4(void *a1)
{
  sub_1067A0();
  sub_1067C0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13B070, &qword_10BBC0);
  sub_104AC0();
  sub_25E4(&qword_1396D8, &unk_109E40);
  sub_8AB10();
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_8AB74();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, &v4);
  v3 = 10;
  sub_8ABC8();
  sub_104A50();
  sub_104AB0();
  sub_2738(a1);
  sub_8AC1C(&v3);
  return sub_8AC70(v5);
}

uint64_t sub_8AA84(void *a1, uint64_t a2)
{
  *a1 = sub_C07CC();
  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_8AB10()
{
  result = qword_1396E0;
  if (!qword_1396E0)
  {
    sub_14EB0(&qword_1396D8, &unk_109E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396E0);
  }

  return result;
}

unint64_t sub_8AB74()
{
  result = qword_1396E8;
  if (!qword_1396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396E8);
  }

  return result;
}

unint64_t sub_8ABC8()
{
  result = qword_1396F0;
  if (!qword_1396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396F0);
  }

  return result;
}

__n128 sub_8ACC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_8ACD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8AD20(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_8AD7C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1396F8);
  sub_135C4(v0, qword_1396F8);
  return sub_106A80();
}

uint64_t sub_8ADC8(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_106D20();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_106300();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_106320();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  sub_25E4(&qword_137DC0, &unk_10A0A0);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v7 = sub_106AE0();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v8 = sub_106370();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_104670();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v10 = sub_104D60();
  v3[51] = v10;
  v3[52] = *(v10 - 8);
  v3[53] = swift_task_alloc();
  v11 = sub_1053C0();
  v3[54] = v11;
  v3[55] = *(v11 - 8);
  v3[56] = swift_task_alloc();
  v12 = sub_104FF0();
  v3[57] = v12;
  v3[58] = *(v12 - 8);
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_8B1F8, 0, 0);
}

uint64_t sub_8B1F8()
{
  sub_25E4(&qword_139718, &unk_109F70);
  v1 = sub_105150();
  sub_1067D0();

  v2 = sub_1067F0();
  if (v2 == sub_1067F0())
  {
    if (qword_136DA0 != -1)
    {
      swift_once();
    }

    sub_135C4(*(v0 + 200), qword_1396F8);
    v3 = sub_106D10();
    v4 = sub_106FC0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "CreateAlarm.HandleIntentStrategy.makeIntentHandledResponse() returning empty output for timer reformation", v5, 2u);
    }

    sub_104DA0();
    sub_104D90();

    v6 = *(v0 + 8);
    goto LABEL_38;
  }

  if (qword_136DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 480) = sub_135C4(*(v0 + 200), qword_1396F8);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "CreateAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v9, 2u);
  }

  v10 = sub_105150();
  v11 = [v10 createdAlarm];
  *(v0 + 488) = v11;

  if (!v11)
  {
    v14 = sub_106D10();
    v15 = sub_106FB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Can NOT retrieve intentResponse.createdAlarm.", v16, 2u);
    }

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    goto LABEL_37;
  }

  v12 = sub_105150();
  v13 = [v12 successCode];

  if (v13 == &dword_0 + 3)
  {
    v82 = 0;
    v83 = 1;
  }

  else
  {
    v83 = 0;
    v82 = v13 == &dword_0 + 2;
  }

  v18 = *(v0 + 472);
  sub_25E4(&qword_137DD0, &unk_108920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_108470;
  *(inited + 32) = v11;
  v20 = v11;
  sub_BD4A4(inited, v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = [v20 identifier];
  if (v21)
  {
    v22 = v21;
    v23 = sub_106E20();
    v25 = v24;

    if (v82)
    {
      v27 = *(v0 + 440);
      v26 = *(v0 + 448);
      v81 = *(v0 + 432);
      sub_25E4(&qword_1376D0, &unk_1080E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_107FC0;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      sub_E92B8(v28, v26);

      sub_104F30();
      (*(v27 + 8))(v26, v81);
    }

    else if (v83)
    {
    }

    else
    {
      v30 = *(v0 + 440);
      v29 = *(v0 + 448);
      v31 = *(v0 + 432);
      sub_E92C4(v23, v25, v29);

      sub_104F30();
      (*(v30 + 8))(v29, v31);
    }
  }

  v32 = sub_105170();
  v33 = [v32 label];

  if (v33)
  {
  }

  v35 = *(v0 + 392);
  v34 = *(v0 + 400);
  v36 = *(v0 + 384);
  sub_104CF0();
  sub_106100();
  sub_105160();
  v37 = sub_1060F0();
  *(v0 + 496) = v37;
  sub_106210();
  v38 = sub_75DD4(0, v34, 0);
  *(v0 + 504) = v38;
  (*(v35 + 8))(v34, v36);
  if (!v38)
  {
    v51 = sub_106D10();
    v52 = sub_106FB0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "Can NOT retrieve alarm data.", v53, 2u);
    }

    v55 = *(v0 + 464);
    v54 = *(v0 + 472);
    v56 = *(v0 + 456);
    v57 = *(v0 + 416);
    v58 = *(v0 + 424);
    v59 = *(v0 + 408);

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v60 = 3;
    swift_willThrow();

    (*(v57 + 8))(v58, v59);
    (*(v55 + 8))(v54, v56);
LABEL_37:

    v6 = *(v0 + 8);
LABEL_38:

    return v6();
  }

  v40 = *(v0 + 368);
  v39 = *(v0 + 376);
  v41 = *(v0 + 360);
  if (v83)
  {
    sub_106360();
    v42 = sub_106340();
    (*(v40 + 8))(v39, v41);
    v43 = sub_106D10();
    v44 = sub_106FC0();
    v45 = os_log_type_enabled(v43, v44);
    if (v42)
    {
      if (v45)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v43, v44, "CreateAlarm flow SMART, existsAlreadyEnabled_Dialog.", v46, 2u);
      }

      if (qword_136E70 != -1)
      {
        swift_once();
      }

      v47 = "tsAlreadyEnabled";

      sub_25E4(&qword_137880, &unk_108290);
      v48 = swift_allocObject();
      *(v0 + 512) = v48;
      *(v48 + 16) = xmmword_107FC0;
      *(v48 + 32) = 0x6D72616C61;
      *(v48 + 40) = 0xE500000000000000;
      *(v48 + 72) = type metadata accessor for AlarmAlarm(0);
      *(v48 + 48) = v38;
      v84 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v49 = swift_task_alloc();
      *(v0 + 520) = v49;
      *v49 = v0;
      v49[1] = sub_8C310;
      v50 = 0xD000000000000027;
LABEL_61:
      v75 = v47 | 0x8000000000000000;
LABEL_73:

      return v84(v50, v75, v48);
    }

    if (v45)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v43, v44, "CreateAlarm flow RF1, existsAlreadyEnabled_Dialog.", v69, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v70 = "eReformedFromTimer";
    v48 = sub_74800(v38, v37, 0);
    *(v0 + 552) = v48;
    v84 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v71 = swift_task_alloc();
    *(v0 + 560) = v71;
    *v71 = v0;
    v71[1] = sub_8CDFC;
    v50 = 0xD000000000000020;
    goto LABEL_72;
  }

  v62 = **(v0 + 192);
  sub_106360();
  v63 = sub_106340();
  (*(v40 + 8))(v39, v41);
  v64 = sub_106D10();
  v65 = sub_106FC0();
  v66 = os_log_type_enabled(v64, v65);
  if (v62 != 1)
  {
    if (v63)
    {
      if (v66)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow SMART, intentHandledResponse", v72, 2u);
      }

      if (qword_136E70 != -1)
      {
        swift_once();
      }

      v47 = "followupPluginAction";

      sub_25E4(&qword_137880, &unk_108290);
      v48 = swift_allocObject();
      *(v0 + 680) = v48;
      *(v48 + 16) = xmmword_107DE0;
      *(v48 + 32) = 0x6D72616C61;
      *(v48 + 40) = 0xE500000000000000;
      v73 = type metadata accessor for AlarmAlarm(0);
      *(v48 + 48) = v38;
      *(v48 + 72) = v73;
      *(v48 + 80) = 0xD000000000000014;
      *(v48 + 88) = 0x800000000010D3A0;
      *(v48 + 96) = 0;
      *(v48 + 120) = &type metadata for Bool;
      *(v48 + 128) = 0xD000000000000015;
      *(v48 + 136) = 0x800000000010D380;
      *(v48 + 144) = v82;
      *(v48 + 168) = &type metadata for Bool;
      *(v48 + 176) = 0xD000000000000014;
      *(v48 + 184) = 0x800000000010CA10;
      *(v48 + 192) = v33 != 0;
      *(v48 + 216) = &type metadata for Bool;
      *(v48 + 224) = 0xD000000000000017;
      *(v48 + 232) = 0x800000000010D3C0;
      *(v48 + 264) = &type metadata for Bool;
      v84 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
      *(v48 + 240) = 0;

      v74 = swift_task_alloc();
      *(v0 + 688) = v74;
      *v74 = v0;
      v74[1] = sub_8E460;
      v50 = 0xD000000000000021;
      goto LABEL_61;
    }

    if (v66)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow RF1, intentHandledResponse", v78, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v79 = v33 != 0;
    v70 = "followupPluginAction";
    v48 = sub_74804(v38, v37, v82 | (v79 << 16), 0);
    *(v0 + 720) = v48;
    v84 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v80 = swift_task_alloc();
    *(v0 + 728) = v80;
    *v80 = v0;
    v80[1] = sub_8EF50;
    v50 = 0xD000000000000021;
LABEL_72:
    v75 = v70 | 0x8000000000000000;
    goto LABEL_73;
  }

  if (!v63)
  {
    if (v66)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow RF1, intentHandledResponseReformedFromTimer.", v76, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v70 = "ntHandledResponse(rchRecord:)";
    v48 = sub_75DC8(v38, v37, 0);
    *(v0 + 632) = v48;
    v84 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v77 = swift_task_alloc();
    *(v0 + 640) = v77;
    *v77 = v0;
    v77[1] = sub_8DEA8;
    v50 = 0xD000000000000032;
    goto LABEL_72;
  }

  if (v66)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow SMART, intentHandledResponseReformedFromTimer.", v67, 2u);
  }

  if (qword_136E70 != -1)
  {
    swift_once();
  }

  v68 = swift_task_alloc();
  *(v0 + 600) = v68;
  *v68 = v0;
  v68[1] = sub_8D554;

  return sub_DDA7C(v38, v37);
}

uint64_t sub_8C310(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_8C910;
  }

  else
  {

    v4 = sub_8C438;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8C438()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_16F70(v0[39], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve alarm snippet model.", v6, 2u);
    }

    v7 = v0[66];
    v8 = v0[61];
    v9 = v0[58];
    v33 = v0[57];
    v35 = v0[59];
    v10 = v0[52];
    v31 = v0[53];
    v11 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    (*(v10 + 8))(v31, v11);
    (*(v9 + 8))(v35, v33);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[44];
    v17 = v0[40];
    v16 = v0[41];
    v36 = v0[60];
    v18 = v0[29];
    v29 = v0[30];
    v30 = v0[28];
    v19 = v0[26];
    v32 = v0[27];
    v34 = v0[25];
    (*(v16 + 32))(v15, v0[39], v17);
    v20 = sub_106AF0();
    v0[20] = v20;
    v0[21] = sub_26EAC();
    v21 = sub_1A924(v0 + 17);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_107FC0;
    (*(v16 + 16))(v23 + v22, v15, v17);
    sub_106930();
    (*(*(v20 - 8) + 104))(v21, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v20);
    (*(v18 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v30);
    (*(v19 + 16))(v32, v36, v34);
    mach_absolute_time();
    sub_106330();
    v24 = swift_task_alloc();
    v0[68] = v24;
    *v24 = v0;
    v24[1] = sub_8CAC0;
    v25 = v0[59];
    v26 = v0[53];
    v27 = v0[36];
    v28 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v28, v26, v25, v0 + 17, v27, 0, 0, 0);
  }
}

uint64_t sub_8C910()
{
  v1 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_8CAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);

  (*(v3 + 8))(v2, v4);
  sub_16F70(v1 + 136, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8CC30, 0, 0);
}

uint64_t sub_8CC30()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v11 = *(v0 + 456);
  v12 = *(v0 + 472);
  v3 = *(v0 + 416);
  v10 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 352);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_8CDFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 568) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v4 = sub_8D204;
  }

  else
  {
    v4 = sub_8CF3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8CF3C()
{
  v1 = v0[60];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];

  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  (*(v7 + 16))(v5, v1, v6);
  mach_absolute_time();
  sub_106330();
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_8D084;
  v9 = v0[59];
  v10 = v0[53];
  v11 = v0[35];
  v12 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v10, v9, v11, 0);
}

uint64_t sub_8D084()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = v2[71];
  (*(v2[32] + 8))(v2[35], v2[31]);

  if (v0)
  {
    v4 = sub_8F508;
  }

  else
  {
    v4 = sub_8D3B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8D204()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8D3B4()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8D554(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {
    v4 = sub_8F6B0;
  }

  else
  {
    v4 = sub_8D694;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8D694()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_16F70(v0[38], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve alarm snippet model.", v6, 2u);
    }

    v7 = v0[76];
    v8 = v0[61];
    v9 = v0[58];
    v33 = v0[57];
    v35 = v0[59];
    v10 = v0[52];
    v31 = v0[53];
    v11 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    (*(v10 + 8))(v31, v11);
    (*(v9 + 8))(v35, v33);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[43];
    v17 = v0[40];
    v16 = v0[41];
    v36 = v0[60];
    v18 = v0[29];
    v29 = v0[30];
    v30 = v0[28];
    v19 = v0[26];
    v32 = v0[27];
    v34 = v0[25];
    (*(v16 + 32))(v15, v0[38], v17);
    v20 = sub_106AF0();
    v0[15] = v20;
    v0[16] = sub_26EAC();
    v21 = sub_1A924(v0 + 12);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_107FC0;
    (*(v16 + 16))(v23 + v22, v15, v17);
    sub_106930();
    (*(*(v20 - 8) + 104))(v21, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v20);
    (*(v18 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v30);
    (*(v19 + 16))(v32, v36, v34);
    mach_absolute_time();
    sub_106330();
    v24 = swift_task_alloc();
    v0[78] = v24;
    *v24 = v0;
    v24[1] = sub_8DB6C;
    v25 = v0[59];
    v26 = v0[53];
    v27 = v0[36];
    v28 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v28, v26, v25, v0 + 12, v27, 0, 0, 0);
  }
}

uint64_t sub_8DB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);

  (*(v3 + 8))(v2, v4);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8DCDC, 0, 0);
}

uint64_t sub_8DCDC()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v11 = *(v0 + 456);
  v12 = *(v0 + 472);
  v3 = *(v0 + 416);
  v10 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_8DEA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {
    v4 = sub_8E2B0;
  }

  else
  {
    v4 = sub_8DFE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8DFE8()
{
  v1 = v0[60];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];

  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  (*(v7 + 16))(v5, v1, v6);
  mach_absolute_time();
  sub_106330();
  v8 = swift_task_alloc();
  v0[83] = v8;
  *v8 = v0;
  v8[1] = sub_8E130;
  v9 = v0[59];
  v10 = v0[53];
  v11 = v0[34];
  v12 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v10, v9, v11, 0);
}

uint64_t sub_8E130()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = v2[81];
  (*(v2[32] + 8))(v2[34], v2[31]);

  if (v0)
  {
    v4 = sub_8F858;
  }

  else
  {
    v4 = sub_8FF64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8E2B0()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8E460(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v4 = sub_8EA60;
  }

  else
  {

    v4 = sub_8E58C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8E58C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[37];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_16F70(v0[37], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve alarm snippet model.", v6, 2u);
    }

    v7 = v0[87];
    v8 = v0[61];
    v9 = v0[58];
    v33 = v0[57];
    v35 = v0[59];
    v10 = v0[52];
    v31 = v0[53];
    v11 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    (*(v10 + 8))(v31, v11);
    (*(v9 + 8))(v35, v33);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[41];
    v16 = v0[42];
    v17 = v0[40];
    v36 = v0[60];
    v18 = v0[29];
    v29 = v0[30];
    v30 = v0[28];
    v19 = v0[26];
    v32 = v0[27];
    v34 = v0[25];
    (*(v15 + 32))(v16, v0[37], v17);
    v20 = sub_106AF0();
    v0[10] = v20;
    v0[11] = sub_26EAC();
    v21 = sub_1A924(v0 + 7);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_107FC0;
    (*(v15 + 16))(v23 + v22, v16, v17);
    sub_106930();
    (*(*(v20 - 8) + 104))(v21, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v20);
    (*(v18 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v30);
    (*(v19 + 16))(v32, v36, v34);
    mach_absolute_time();
    sub_106330();
    v24 = swift_task_alloc();
    v0[89] = v24;
    *v24 = v0;
    v24[1] = sub_8EC14;
    v25 = v0[59];
    v26 = v0[53];
    v27 = v0[36];
    v28 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v28, v26, v25, v0 + 7, v27, 0, 0, 0);
  }
}

uint64_t sub_8EA60()
{
  v1 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_8EC14()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);

  (*(v3 + 8))(v2, v4);
  sub_16F70(v1 + 56, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8ED84, 0, 0);
}

uint64_t sub_8ED84()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v11 = *(v0 + 456);
  v12 = *(v0 + 472);
  v3 = *(v0 + 416);
  v10 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_8EF50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {
    v4 = sub_8F358;
  }

  else
  {
    v4 = sub_8F090;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8F090()
{
  v1 = v0[60];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[26];

  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  (*(v7 + 16))(v5, v1, v6);
  mach_absolute_time();
  sub_106330();
  v8 = swift_task_alloc();
  v0[94] = v8;
  *v8 = v0;
  v8[1] = sub_8F1D8;
  v9 = v0[59];
  v10 = v0[53];
  v11 = v0[33];
  v12 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v12, v10, v9, v11, 0);
}

uint64_t sub_8F1D8()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = v2[92];
  (*(v2[32] + 8))(v2[33], v2[31]);

  if (v0)
  {
    v4 = sub_8FA00;
  }

  else
  {
    v4 = sub_8FF64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8F358()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8F508()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8F6B0()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8F858()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8FA00()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_8FBA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_8FC50;

  return sub_8ADC8(a1, a2);
}

uint64_t sub_8FC50()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8FD84, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_8FD84()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_8FE50(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA94;

  return sub_D55A0(a1);
}

unint64_t sub_8FF10()
{
  result = qword_139710;
  if (!qword_139710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139710);
  }

  return result;
}

id *sub_8FF78(unint64_t a1)
{
  v15 = sub_104670();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_107270();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  v9 = (v2 + 1);
  v14 = _swiftEmptyArrayStorage;
  while (v5 != v6)
  {
    if (v8)
    {
      v10 = sub_1071C0();
    }

    else
    {
      if (v6 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v7 + 8 * v6 + 32);
    }

    v2 = v10;
    a1 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_106210();
    v11 = sub_75DD4(0, v4, 0);
    (*v9)(v4, v15);

    ++v6;
    if (v11)
    {
      v2 = &v17;
      sub_106EC0();
      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      v14 = v17;
      v6 = a1;
    }
  }

  return v14;
}

id *sub_9017C(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_26:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_107270();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v3 = 0;
  v20 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1071C0();
      }

      else
      {
        if (i >= *(v21 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = [v6 undoable];
      sub_1F7B8();
      isa = sub_107090(1).super.super.isa;
      if (!v8)
      {

        goto LABEL_6;
      }

      v9 = sub_1070A0();

      if (v9)
      {
        v10 = [v7 identifier];
        if (v10)
        {
          break;
        }
      }

      isa = v7;
LABEL_6:

      if (v3 == v2)
      {
        return v20;
      }
    }

    v11 = v10;
    v12 = sub_106E20();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_AD590(0, v20[2] + 1, 1, v20);
    }

    v17 = v20[2];
    v16 = v20[3];
    if (v17 >= v16 >> 1)
    {
      v20 = sub_AD590((v16 > 1), v17 + 1, 1, v20);
    }

    v20[2] = (v17 + 1);
    v18 = &v20[2 * v17];
    v18[4] = v12;
    v18[5] = v14;
  }

  while (v3 != v2);
  return v20;
}

id *sub_90398(unint64_t a1)
{
  v2 = sub_25E4(&qword_137DC0, &unk_10A0A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_106AE0();
  v26 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v30 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = &v22 - v8;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v10 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v27 = (v26 + 48);
    v11 = (v26 + 32);
    v12 = _swiftEmptyArrayStorage;
    v23 = i;
    v24 = a1;
    while (1)
    {
      if (v29)
      {
        v13 = sub_1071C0();
      }

      else
      {
        if (v10 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a1 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v4);

      if ((*v27)(v4, 1, v5) == 1)
      {
        sub_16F70(v4, &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v16 = v5;
        v17 = *v11;
        v18 = v25;
        (*v11)(v25, v4, v16);
        v17(v30, v18, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_AD840(0, v12[2] + 1, 1, v12);
        }

        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          v12 = sub_AD840((v19 > 1), v20 + 1, 1, v12);
        }

        v12[2] = (v20 + 1);
        v17(v12 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, v30, v16);
        v5 = v16;
        i = v23;
        a1 = v24;
      }

      ++v10;
      if (v15 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_906C8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139720);
  sub_135C4(v0, qword_139720);
  return sub_106A80();
}

uint64_t sub_90714(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v3[75] = type metadata accessor for ModifyAllDisableParameters(0);
  v3[76] = swift_task_alloc();
  v3[77] = type metadata accessor for ModifyAllDisableConciseParameters(0);
  v3[78] = swift_task_alloc();
  v3[79] = type metadata accessor for ModifyAllEnableParameters(0);
  v3[80] = swift_task_alloc();
  v3[81] = type metadata accessor for ModifyAllEnableConciseParameters(0);
  v3[82] = swift_task_alloc();
  v4 = sub_106000();
  v3[83] = v4;
  v3[84] = *(v4 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  sub_25E4(&qword_137DC0, &unk_10A0A0);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v5 = sub_106AE0();
  v3[94] = v5;
  v3[95] = *(v5 - 8);
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v6 = sub_104670();
  v3[100] = v6;
  v3[101] = *(v6 - 8);
  v3[102] = swift_task_alloc();
  v7 = sub_106370();
  v3[103] = v7;
  v3[104] = *(v7 - 8);
  v3[105] = swift_task_alloc();
  v8 = sub_1053C0();
  v3[106] = v8;
  v3[107] = *(v8 - 8);
  v3[108] = swift_task_alloc();
  sub_25E4(&qword_137DB8, &unk_1085B0);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v9 = sub_104D60();
  v3[115] = v9;
  v3[116] = *(v9 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v10 = sub_106D20();
  v3[128] = v10;
  v3[129] = *(v10 - 8);
  v3[130] = swift_task_alloc();
  v11 = sub_106300();
  v3[131] = v11;
  v3[132] = *(v11 - 8);
  v3[133] = swift_task_alloc();
  v12 = sub_106320();
  v3[134] = v12;
  v3[135] = *(v12 - 8);
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v13 = sub_104FF0();
  v3[145] = v13;
  v3[146] = *(v13 - 8);
  v3[147] = swift_task_alloc();

  return _swift_task_switch(sub_90E00, 0, 0);
}

uint64_t sub_90E00()
{
  v458 = v0;
  v1 = v0;
  if (qword_136DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_135C4(v0[128], qword_139720);
  v0[148] = v2;
  v3 = sub_106D10();
  v4 = sub_106FC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "ChangeAlarmStatus.HandleIntentStrategy.makeIntentHandledResponse() called.", v5, 2u);
  }

  v6 = sub_25E4(&qword_139740, &unk_10A0B0);
  v7 = sub_105150();
  v1[149] = v7;
  sub_1F7B8();
  v8 = sub_105170();
  isa = [v8 handleSilently];

  if (!isa)
  {
    isa = sub_107080(0).super.super.isa;
  }

  v10 = sub_107080(0).super.super.isa;
  v11 = sub_1070A0();

  if ((v11 & 1) == 0)
  {
    v22 = sub_106D10();
    v23 = sub_106FC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "ChangeAlarmStatus.makeIntentHandledResponse: Handling silently; returning empty output", v24, 2u);
    }

    sub_104DA0();
    sub_104D90();

    v25 = v1[1];
    goto LABEL_24;
  }

  v12 = [v7 modifiedAlarms];
  if (!v12)
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v26 = 3;
    swift_willThrow();

LABEL_23:

    v25 = v1[1];
LABEL_24:

    return v25();
  }

  v13 = v12;
  v14 = v1[147];
  sub_106AA0();
  v15 = sub_106EE0();

  v449 = sub_105170();
  v1[150] = v449;
  sub_106100();
  sub_105160();
  v447 = sub_1060F0();
  v1[151] = v447;
  sub_BD4A4(v15, v14);
  if (!(v15 >> 62))
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_221:
    v6 = v449;
    v385 = [v449 alarms];
    if (!v385)
    {

      v401 = sub_106D10();
      v402 = sub_106FB0();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = swift_slowAlloc();
        *v403 = 0;
        _os_log_impl(&dword_0, v401, v402, "Can NOT retrieve intent.alarms", v403, 2u);
      }

      v404 = v1[147];
      v405 = v1[146];
      v406 = v1[145];

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
      *v407 = 3;
      swift_willThrow();

      (*(v405 + 8))(v404, v406);
      goto LABEL_23;
    }

    v386 = v385;
    v387 = sub_106EE0();

    if (!(v387 >> 62))
    {
      v388 = *(&dword_10 + (v387 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_224;
    }

LABEL_251:
    v388 = sub_107270();
LABEL_224:
    v389 = [v6 operation];
    if (v389 == &dword_0 + 2)
    {
      v454 = v388;

      v408 = v2;
      v409 = sub_106D10();
      v410 = sub_106FC0();
      if (os_log_type_enabled(v409, v410))
      {
        v411 = swift_slowAlloc();
        *v411 = 0;
        _os_log_impl(&dword_0, v409, v410, "Hitting RF path for ChangeAlarmStatus, alarms already disabled.", v411, 2u);
      }

      v412 = v1[133];
      v413 = v1[132];
      v414 = v1[131];
      v415 = v1[130];
      v416 = v1;
      v417 = v1[129];
      v418 = v416[128];

      (*(v413 + 104))(v412, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v414);
      (*(v417 + 16))(v415, v408, v418);
      mach_absolute_time();
      sub_106330();
      if (qword_136EB8 != -1)
      {
        swift_once();
      }

      v419 = swift_task_alloc();
      v416[157] = v419;
      *v419 = v416;
      v419[1] = sub_95C50;

      return sub_D3898(v454 > 1);
    }

    if (v389 != &dword_0 + 1)
    {
      v420 = v1[129];
      v421 = v1[128];
      v422 = v1[114];
      v423 = v1[113];
      v424 = sub_106750();
      v1[65] = v424;
      v1[66] = &protocol witness table for ABCReport;
      v425 = sub_1A924(v1 + 62);
      v426 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
      v427 = sub_106680();
      (*(*(v427 - 8) + 104))(v425, v426, v427);
      (*(*(v424 - 8) + 104))(v425, enum case for ABCReport.unhandledAbort(_:), v424);
      sub_1064D0();
      sub_2738(v1 + 62);
      (*(v420 + 16))(v422, v2, v421);
      (*(v420 + 56))(v422, 0, 1, v421);
      sub_14994(v422, v423, &qword_137DB8, &unk_1085B0);
      if ((*(v420 + 48))(v423, 1, v421) == 1)
      {
        sub_16F70(v1[113], &qword_137DB8, &unk_1085B0);
      }

      else
      {
        v428 = sub_106D10();
        v429 = sub_106FB0();
        if (os_log_type_enabled(v428, v429))
        {
          v430 = swift_slowAlloc();
          v455 = swift_slowAlloc();
          *v430 = 136315650;
          v431 = sub_1071A0();
          v433 = sub_722E8(v431, v432, &v455);

          *(v430 + 4) = v433;
          *(v430 + 12) = 2048;
          *(v430 + 14) = 74;
          *(v430 + 22) = 2080;
          *(v430 + 24) = sub_722E8(0xD000000000000039, 0x800000000010D9E0, &v455);
          _os_log_impl(&dword_0, v428, v429, "FatalError at %s:%lu - %s", v430, 0x20u);
          swift_arrayDestroy();
        }

        (*(v1[129] + 8))(v1[113], v1[128]);
      }

      goto LABEL_247;
    }

    v449 = v388;

    v390 = v2;
    v391 = sub_106D10();
    v392 = sub_106FC0();
    if (os_log_type_enabled(v391, v392))
    {
      v393 = swift_slowAlloc();
      *v393 = 0;
      _os_log_impl(&dword_0, v391, v392, "Hitting RF path for ChangeAlarmStatus, alarms already enabled.", v393, 2u);
    }

    v394 = v1[133];
    v395 = v1[132];
    v396 = v1[131];
    v397 = v1[130];
    v57 = v1;
    v398 = v1[129];
    v399 = v57[128];

    (*(v395 + 104))(v394, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v396);
    (*(v398 + 16))(v397, v390, v399);
    mach_absolute_time();
    sub_106330();
    if (qword_136EB8 == -1)
    {
LABEL_229:
      v400 = swift_task_alloc();
      v57[152] = v400;
      *v400 = v57;
      v400[1] = sub_9558C;

      return sub_D3B48(v449 > 1);
    }

LABEL_254:
    swift_once();
    goto LABEL_229;
  }

  if (!sub_107270())
  {
    goto LABEL_221;
  }

  v16 = sub_107270();
LABEL_11:
  v448 = v1;
  if (v16 != 1)
  {
    v28 = [v449 alarmSearch];
    v1[224] = v28;
    v445 = v2;
    if (v28)
    {
      v29 = v28;
      [v29 alarmReferenceType];
      v30 = sub_106970();
      v31 = sub_106970();

      v446 = v30 == v31;
      [v29 period];
      v32 = sub_106A40();
      v443 = v32 == sub_106A40();
      [v29 period];
      v33 = sub_106A40();
      v34 = 1;
      v442 = v33 == sub_106A40();
      [v29 period];
      v35 = sub_106A40();
      v440 = v35 == sub_106A40();
      [v29 period];
      v36 = sub_106A40();
      v441 = v36 == sub_106A40();
      v37 = v29;
      v38 = [v37 label];
      if (v38)
      {
        v39 = v38;
        sub_106E20();

        sub_106E50();

        v34 = 0;
      }

      v40 = v1[89];
      v41 = sub_106160();
      (*(*(v41 - 8) + 56))(v40, v34, 1, v41);

      v42 = v37;
      v43 = sub_1CE68();
    }

    else
    {
      v44 = v1[89];
      v45 = sub_106160();
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      v446 = 0;
      v443 = 0;
      v442 = 0;
      v440 = 0;
      v441 = 0;
      v43 = 0;
    }

    v444 = v43;
    v1[225] = v43;
    v46 = v1[86];
    v47 = v1;
    v48 = v1[85];
    v49 = v47[84];
    v50 = v47[83];
    v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v52 = sub_106E10();
    v53 = sub_106E10();
    v447 = [v51 initWithIdentifier:v52 displayString:v53];

    sub_105FC0();
    sub_105FB0();
    sub_105FA0();

    sub_106790();

    sub_105FF0();
    LOBYTE(v51) = sub_105FE0();
    v54 = *(v49 + 8);
    v54(v48, v50);
    v54(v46, v50);
    if (v51)
    {
      LODWORD(v55) = 1;
      v56 = _swiftEmptyArrayStorage;
      v57 = v449;
    }

    else
    {
      v57 = v449;
      if (v446 && v16 >= *v448[74])
      {
        LODWORD(v55) = 1;
        v56 = _swiftEmptyArrayStorage;
      }

      else
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v58 = sub_1071C0();
        }

        else
        {
          if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_254;
          }

          v58 = *(v15 + 32);
        }

        v59 = v58;
        v55 = [v58 sleepAlarmAttribute];

        if (v55)
        {

          if ((v15 & 0xC000000000000001) != 0)
          {
            v60 = sub_1071C0();
          }

          else
          {
            if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
LABEL_261:
              swift_once();
LABEL_87:
              v146 = v6[89];
              v147 = v6[82];
              v148 = v6[81];
              v149 = *(v148 + 44);
              v150 = sub_106160();
              (*(*(v150 - 8) + 56))(v147 + v149, 1, 1, v150);
              *v147 = 256;
              *(v147 + 2) = v440;
              *(v147 + 3) = v446;
              *(v147 + 4) = v441;
              *(v147 + 5) = v442;
              *(v147 + 6) = v443;
              v151 = *(v148 + 48);
              *(v147 + v151) = 0;
              sub_7C2E0(v146, v147 + v149);
              *(v147 + v151) = v15;
              v152 = "esponseMultipleDisabled";

              v153 = sub_20CBC();
              v6[234] = v153;
              v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
              v154 = swift_task_alloc();
              v6[235] = v154;
              *v154 = v6;
              v154[1] = sub_9ED10;
              v155 = 0xD000000000000017;
LABEL_160:
              v219 = v152 | 0x8000000000000000;
LABEL_161:
              v220 = v155;
              v221 = v153;
              goto LABEL_191;
            }

            v60 = *(v15 + 32);
          }

          v88 = v60;

          sub_A7B00(1, v15);
          v90 = v89;
          v92 = v91;
          v94 = v93;

          sub_A764C(v90, v92, v94);
          v56 = v95;
          swift_unknownObjectRelease();
          LODWORD(v55) = 0;
          v447 = v88;
        }

        else
        {
          v56 = sub_8FF78(v15);
        }
      }
    }

    v448[226] = v447;
    v96 = [v57 operation];
    if (v96 == &dword_0 + 2)
    {
      v437 = v55;
      v451 = v56;
      v102 = sub_9017C(v15)[2];

      if (v102)
      {
        v103 = v448[108];
        v104 = v448[107];
        v105 = v448[106];
        v106 = sub_9017C(v15);
        sub_E96AC(v106, v103);

        sub_104F30();
        (*(v104 + 8))(v103, v105);
      }

      v156 = v448[105];
      v157 = v448[104];
      v158 = v448[103];
      sub_106360();
      v159 = sub_106340();
      (*(v157 + 8))(v156, v158);
      if (v159)
      {

        if ((v15 & 0xC000000000000001) != 0)
        {
          v161 = sub_1071C0();
          v160 = v448;
          v1 = v444;
        }

        else
        {
          v160 = v448;
          v1 = v444;
          if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_258;
          }

          v161 = *(v15 + 32);
        }

        v162 = [v161 sleepAlarmAttribute];

        if (v162)
        {

          sub_A7B00(1, v15);
          v164 = v163;
          v166 = v165;
          v168 = v167;

          v169 = sub_A7804(v164, v166, v168);
          swift_unknownObjectRelease();
        }

        else
        {
          v169 = sub_90398(v15);
        }

        v160[246] = v169;
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v336 = v160[89];
        v337 = v160[87];
        sub_25E4(&qword_137880, &unk_108290);
        v326 = swift_allocObject();
        v160[247] = v326;
        *(v326 + 16) = xmmword_1082D0;
        *(v326 + 32) = 0xD000000000000012;
        *(v326 + 40) = 0x800000000010C5F0;
        *(v326 + 48) = v446;
        *(v326 + 72) = &type metadata for Bool;
        *(v326 + 80) = 0xD000000000000017;
        *(v326 + 88) = 0x800000000010C650;
        *(v326 + 96) = v443;
        *(v326 + 120) = &type metadata for Bool;
        *(v326 + 128) = 0xD000000000000016;
        *(v326 + 136) = 0x800000000010C630;
        *(v326 + 144) = v442;
        *(v326 + 168) = &type metadata for Bool;
        *(v326 + 176) = 0xD000000000000018;
        *(v326 + 184) = 0x800000000010C5D0;
        *(v326 + 192) = v440;
        *(v326 + 216) = &type metadata for Bool;
        *(v326 + 224) = 0xD000000000000016;
        *(v326 + 232) = 0x800000000010C610;
        *(v326 + 240) = v441;
        *(v326 + 264) = &type metadata for Bool;
        *(v326 + 272) = 0xD000000000000012;
        *(v326 + 280) = 0x800000000010C670;
        sub_14994(v336, v337, &qword_137598, &unk_107EB0);
        v338 = sub_106160();
        v339 = *(v338 - 8);
        v340 = (*(v339 + 48))(v337, 1, v338);
        v341 = v160[87];
        if (v340 == 1)
        {
          sub_16F70(v160[87], &qword_137598, &unk_107EB0);
          *(v326 + 288) = 0u;
          *(v326 + 304) = 0u;
        }

        else
        {
          *(v326 + 312) = v338;
          v342 = sub_1A924((v326 + 288));
          (*(v339 + 32))(v342, v341, v338);
        }

        *(v326 + 320) = 0xD000000000000011;
        *(v326 + 328) = 0x800000000010C690;
        v343 = 0;
        if (v1)
        {
          v343 = sub_1060A0();
        }

        else
        {
          *(v326 + 344) = 0;
          *(v326 + 352) = 0;
        }

        v160[248] = v1;
        *(v326 + 336) = v1;
        v333 = "ModifyAll#DisableConcise";
        *(v326 + 360) = v343;
        *(v326 + 368) = 0xD000000000000010;
        *(v326 + 376) = 0x800000000010C5B0;
        *(v326 + 384) = 1;
        *(v326 + 408) = &type metadata for Bool;
        strcpy((v326 + 416), "isMixedAlarms");
        *(v326 + 430) = -4864;
        *(v326 + 456) = &type metadata for Bool;
        *(v326 + 432) = 0;
        v452 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v344 = swift_task_alloc();
        v160[249] = v344;
        *v344 = v160;
        v344[1] = sub_A0334;
        v335 = 0xD000000000000037;
        goto LABEL_190;
      }

      v170 = v448[133];
      v171 = v448[132];
      v172 = v448[131];
      v173 = v448[130];
      v174 = v448[129];
      v175 = v448[128];

      (*(v171 + 104))(v170, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v172);
      (*(v174 + 16))(v173, v445, v175);
      mach_absolute_time();
      sub_106330();
      if (v437)
      {

        v176 = sub_106D10();
        v177 = sub_106FC0();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_0, v176, v177, "Hitting RF path for ChangeAlarmStatus, all alarms, large list.", v178, 2u);
        }

        if (qword_136EC0 != -1)
        {
          swift_once();
        }

        v179 = v448[89];
        v180 = v448[78];
        v181 = v448[77];
        v182 = *(v181 + 44);
        v183 = sub_106160();
        (*(*(v183 - 8) + 56))(v180 + v182, 1, 1, v183);
        *v180 = 256;
        *(v180 + 2) = v440;
        *(v180 + 3) = v446;
        *(v180 + 4) = v441;
        *(v180 + 5) = v442;
        *(v180 + 6) = v443;
        v184 = *(v181 + 48);
        *(v180 + v184) = 0;
        sub_7C2E0(v179, v180 + v182);
        *(v180 + v184) = v444;
        v152 = "dledIntentStrategy.swift";

        v153 = sub_2074C();
        v448[253] = v153;
        v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v185 = swift_task_alloc();
        v448[254] = v185;
        *v185 = v448;
        v185[1] = sub_A1124;
        v155 = 0xD000000000000018;
        goto LABEL_160;
      }

      v204 = sub_106D10();
      v205 = sub_106FC0();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&dword_0, v204, v205, "Hitting RF path for ChangeAlarmStatus, multiple alarms.", v206, 2u);
      }

      if (qword_136EC0 != -1)
      {
        swift_once();
      }

      v207 = v448[102];
      v435 = v448[101];
      v439 = v448[100];
      v208 = v448[89];
      v209 = v448[76];
      v210 = v448[75];
      v211 = sub_106160();
      v212 = *(*(v211 - 8) + 56);
      v212(v209, 1, 1, v211);
      v213 = v210[16];
      v212(v209 + v213, 1, 1, v211);
      v214 = v210[5];
      *(v209 + v214) = 0;
      *(v209 + v210[6]) = 0;
      *(v209 + v210[7]) = 0;
      *(v209 + v210[8]) = 1;
      *(v209 + v210[9]) = v440;
      *(v209 + v210[10]) = v446;
      *(v209 + v210[11]) = v441;
      *(v209 + v210[12]) = v442;
      *(v209 + v210[13]) = v443;
      *(v209 + v210[14]) = v451;
      v215 = v210[15];
      *(v209 + v215) = 0;
      v216 = v210[17];
      *(v209 + v216) = 0;
      sub_7C2E0(v208, v209 + v213);
      *(v209 + v216) = v444;

      sub_105160();
      *(v209 + v214) = sub_1060F0();
      sub_106210();
      v217 = sub_75DD4(0, v207, 0);
      (*(v435 + 8))(v207, v439);
      *(v209 + v215) = v217;
      v200 = "AlarmBase#RecurrenceLabelShort";
      v201 = sub_20734();
      v448[259] = v201;
      v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v218 = swift_task_alloc();
      v448[260] = v218;
      *v218 = v448;
      v218[1] = sub_A1E10;
      v203 = 0xD000000000000011;
    }

    else
    {
      if (v96 != &dword_0 + 1)
      {
        v107 = v448[129];
        v108 = v448[128];
        v109 = v448[110];
        v110 = v448[109];
        v111 = sub_106750();
        v448[5] = v111;
        v448[6] = &protocol witness table for ABCReport;
        v112 = sub_1A924(v448 + 2);
        v113 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
        v114 = sub_106680();
        (*(*(v114 - 8) + 104))(v112, v113, v114);
        (*(*(v111 - 8) + 104))(v112, enum case for ABCReport.unhandledAbort(_:), v111);
        sub_1064D0();
        sub_2738(v448 + 2);
        v455 = 0;
        v456 = 0xE000000000000000;
        sub_107190(65);
        v460._countAndFlagsBits = 0xD000000000000033;
        v460._object = 0x800000000010D850;
        sub_106E80(v460);
        [v57 operation];
        v448[67] = sub_1067B0();
        v461._countAndFlagsBits = sub_107340();
        sub_106E80(v461);

        v462._countAndFlagsBits = 0x6F707075736E7520;
        v462._object = 0xEC00000064657472;
        sub_106E80(v462);
        v115 = v455;
        v116 = v456;
        (*(v107 + 16))(v109, v445, v108);
        (*(v107 + 56))(v109, 0, 1, v108);
        sub_14994(v109, v110, &qword_137DB8, &unk_1085B0);
        LODWORD(v112) = (*(v107 + 48))(v110, 1, v108);

        if (v112 == 1)
        {
          sub_16F70(v448[109], &qword_137DB8, &unk_1085B0);
        }

        else
        {

          v117 = sub_106D10();
          v118 = sub_106FB0();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v457[0] = swift_slowAlloc();
            *v119 = 136315650;
            v120 = sub_1071A0();
            v122 = sub_722E8(v120, v121, v457);

            *(v119 + 4) = v122;
            *(v119 + 12) = 2048;
            *(v119 + 14) = 516;
            *(v119 + 22) = 2080;
            *(v119 + 24) = sub_722E8(v115, v116, v457);
            _os_log_impl(&dword_0, v117, v118, "FatalError at %s:%lu - %s", v119, 0x20u);
            swift_arrayDestroy();
          }

          (*(v448[129] + 8))(v448[109], v448[128]);
        }

        sub_104C90();
        return sub_107250();
      }

      v436 = v55;
      v450 = v56;
      v97 = sub_9017C(v15);
      if (v97[2])
      {
        v98 = v448;
        v99 = v448[108];
        v100 = v448[107];
        v101 = v448[106];
        sub_E92B8(v97, v99);

        sub_104F30();
        (*(v100 + 8))(v99, v101);
      }

      else
      {

        v98 = v448;
      }

      v123 = v98[105];
      v124 = v98[104];
      v125 = v98[103];
      sub_106360();
      v126 = sub_106340();
      (*(v124 + 8))(v123, v125);
      if (v126)
      {

        if ((v15 & 0xC000000000000001) != 0)
        {
          v128 = sub_1071C0();
          v127 = v448;
          v1 = v444;
          goto LABEL_81;
        }

        v127 = v448;
        v1 = v444;
        if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
        {
          v128 = *(v15 + 32);
LABEL_81:
          v129 = [v128 sleepAlarmAttribute];

          if (v129)
          {

            sub_A7B00(1, v15);
            v131 = v130;
            v133 = v132;
            v135 = v134;

            v136 = sub_A7804(v131, v133, v135);
            swift_unknownObjectRelease();
          }

          else
          {
            v136 = sub_90398(v15);
          }

          v127[227] = v136;
          if (qword_136EB0 != -1)
          {
            swift_once();
          }

          v324 = v127[89];
          v325 = v127[88];
          sub_25E4(&qword_137880, &unk_108290);
          v326 = swift_allocObject();
          v127[228] = v326;
          *(v326 + 16) = xmmword_1082D0;
          *(v326 + 32) = 0xD000000000000012;
          *(v326 + 40) = 0x800000000010C5F0;
          *(v326 + 48) = v446;
          *(v326 + 72) = &type metadata for Bool;
          *(v326 + 80) = 0xD000000000000017;
          *(v326 + 88) = 0x800000000010C650;
          *(v326 + 96) = v443;
          *(v326 + 120) = &type metadata for Bool;
          *(v326 + 128) = 0xD000000000000016;
          *(v326 + 136) = 0x800000000010C630;
          *(v326 + 144) = v442;
          *(v326 + 168) = &type metadata for Bool;
          *(v326 + 176) = 0xD000000000000018;
          *(v326 + 184) = 0x800000000010C5D0;
          *(v326 + 192) = v440;
          *(v326 + 216) = &type metadata for Bool;
          *(v326 + 224) = 0xD000000000000016;
          *(v326 + 232) = 0x800000000010C610;
          *(v326 + 240) = v441;
          *(v326 + 264) = &type metadata for Bool;
          *(v326 + 272) = 0xD000000000000012;
          *(v326 + 280) = 0x800000000010C670;
          sub_14994(v324, v325, &qword_137598, &unk_107EB0);
          v327 = sub_106160();
          v328 = *(v327 - 8);
          v329 = (*(v328 + 48))(v325, 1, v327);
          v330 = v127[88];
          if (v329 == 1)
          {
            sub_16F70(v127[88], &qword_137598, &unk_107EB0);
            *(v326 + 288) = 0u;
            *(v326 + 304) = 0u;
          }

          else
          {
            *(v326 + 312) = v327;
            v331 = sub_1A924((v326 + 288));
            (*(v328 + 32))(v331, v330, v327);
          }

          *(v326 + 320) = 0xD000000000000011;
          *(v326 + 328) = 0x800000000010C690;
          v332 = 0;
          if (v1)
          {
            v332 = sub_1060A0();
          }

          else
          {
            *(v326 + 344) = 0;
            *(v326 + 352) = 0;
          }

          v127[229] = v1;
          *(v326 + 336) = v1;
          v333 = "ModifyAll#EnableConcise";
          *(v326 + 360) = v332;
          *(v326 + 368) = 0xD000000000000010;
          *(v326 + 376) = 0x800000000010C5B0;
          *(v326 + 384) = 1;
          *(v326 + 408) = &type metadata for Bool;
          strcpy((v326 + 416), "isMixedAlarms");
          *(v326 + 430) = -4864;
          *(v326 + 456) = &type metadata for Bool;
          *(v326 + 432) = 0;
          v452 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

          v334 = swift_task_alloc();
          v127[230] = v334;
          *v334 = v127;
          v334[1] = sub_9DF20;
          v335 = 0xD000000000000036;
          goto LABEL_190;
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        swift_once();
LABEL_139:
        v270 = v1[102];
        v271 = v1[101];
        v272 = v1[100];

        sub_106210();
        v273 = sub_75DD4(0, v270, 0);
        v1[172] = v273;
        (*(v271 + 8))(v270, v272);
        v152 = "s#SuccessEnabled";
        v153 = sub_75DC8(0, v447, v273);
        v1[173] = v153;
        v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v274 = swift_task_alloc();
        v1[174] = v274;
        *v274 = v1;
        v274[1] = sub_97928;
        v155 = 0xD000000000000025;
        goto LABEL_160;
      }

      v137 = v98[133];
      v138 = v98[132];
      v139 = v98[131];
      v140 = v98[130];
      v141 = v98[129];
      v142 = v98[128];

      (*(v138 + 104))(v137, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v139);
      (*(v141 + 16))(v140, v445, v142);
      mach_absolute_time();
      sub_106330();
      if (v436)
      {

        v143 = sub_106D10();
        v144 = sub_106FC0();
        v15 = v444;
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_0, v143, v144, "Hitting RF path for ChangeAlarmStatus, all alarms, large list.", v145, 2u);
        }

        v6 = v448;
        if (qword_136EC0 == -1)
        {
          goto LABEL_87;
        }

        goto LABEL_261;
      }

      v186 = sub_106D10();
      v187 = sub_106FC0();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&dword_0, v186, v187, "Hitting RF path for ChangeAlarmStatus, multiple alarms.", v188, 2u);
      }

      if (qword_136EC0 != -1)
      {
        swift_once();
      }

      v189 = v448[102];
      v434 = v448[101];
      v438 = v448[100];
      v190 = v448[89];
      v191 = v448[80];
      v192 = v448[79];
      v193 = sub_106160();
      v194 = *(*(v193 - 8) + 56);
      v194(v191, 1, 1, v193);
      v195 = v192[16];
      v194(v191 + v195, 1, 1, v193);
      v196 = v192[5];
      *(v191 + v196) = 0;
      *(v191 + v192[6]) = 0;
      *(v191 + v192[7]) = 0;
      *(v191 + v192[8]) = 1;
      *(v191 + v192[9]) = v440;
      *(v191 + v192[10]) = v446;
      *(v191 + v192[11]) = v441;
      *(v191 + v192[12]) = v442;
      *(v191 + v192[13]) = v443;
      *(v191 + v192[14]) = v450;
      v197 = v192[15];
      *(v191 + v197) = 0;
      v198 = v192[17];
      *(v191 + v198) = 0;
      sub_7C2E0(v190, v191 + v195);
      *(v191 + v198) = v444;

      sub_105160();
      *(v191 + v196) = sub_1060F0();
      sub_106210();
      v199 = sub_75DD4(0, v189, 0);
      (*(v434 + 8))(v189, v438);
      *(v191 + v197) = v199;
      v200 = "ModifyAll#Disable";
      v201 = sub_20764();
      v448[240] = v201;
      v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v202 = swift_task_alloc();
      v448[241] = v202;
      *v202 = v448;
      v202[1] = sub_9F9FC;
      v203 = 0xD000000000000010;
    }

    v219 = v200 | 0x8000000000000000;
    v220 = v203;
    v221 = v201;
LABEL_191:

    return v452(v220, v219, v221);
  }

  v17 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      v18 = *(v15 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_251;
  }

  v18 = sub_1071C0();
LABEL_15:
  v19 = v18;
  v1[162] = v18;
  v20 = [v449 operation];
  if (v20 == &dword_0 + 2)
  {
    if (v17)
    {
      v61 = sub_1071C0();
    }

    else
    {
      v61 = *(v15 + 32);
    }

    v82 = v61;
    v83 = [v61 identifier];

    if (v83)
    {
      v84 = sub_106E20();
      v86 = v85;

      if (v17)
      {
        v87 = sub_1071C0();
      }

      else
      {
        v87 = *(v15 + 32);
      }

      v231 = v87;

      v232 = [v231 undoable];

      v233.super.super.isa = sub_107090(1).super.super.isa;
      if (!v232)
      {

        goto LABEL_141;
      }

      v234 = sub_1070A0();

      if (v234)
      {
        v235 = v1[108];
        v236 = v2;
        v237 = v1[107];
        v238 = v1[106];
        sub_25E4(&qword_1376D0, &unk_1080E0);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_107FC0;
        *(v239 + 32) = v84;
        *(v239 + 40) = v86;
        sub_E96AC(v239, v235);

        sub_104F30();
        (*(v237 + 8))(v235, v238);
        v2 = v236;
LABEL_141:
        v275 = v2;
        v276 = sub_106D10();
        v277 = sub_106FC0();
        if (os_log_type_enabled(v276, v277))
        {
          v278 = swift_slowAlloc();
          *v278 = 0;
          _os_log_impl(&dword_0, v276, v277, "Hitting RF path for ChangeAlarmStatus, disable, 1 alarm.", v278, 2u);
        }

        v279 = [v19 sleepAlarmAttribute];
        v280 = v1[105];
        v281 = v1[104];
        v282 = v1[103];
        if (v279)
        {

          sub_106360();
          v283 = sub_106340();
          (*(v281 + 8))(v280, v282);
          if (!v283)
          {
            v302 = v1[130];
            v303 = v1[129];
            v304 = v1[128];
            (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
            (*(v303 + 16))(v302, v275, v304);
            mach_absolute_time();
            sub_106330();
            if (qword_136EB8 != -1)
            {
              swift_once();
            }

            v305 = v1[102];
            v306 = v1[101];
            v307 = v1[100];

            sub_106210();
            v308 = sub_75DD4(0, v305, 0);
            v1[204] = v308;
            (*(v306 + 8))(v305, v307);
            v152 = "s#SuccessDisabled";
            v153 = sub_75DC8(0, v447, v308);
            v1[205] = v153;
            v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
            v309 = swift_task_alloc();
            v1[206] = v309;
            *v309 = v1;
            v309[1] = sub_9B7E0;
            v155 = 0xD000000000000026;
            goto LABEL_160;
          }

          v284 = v1[102];
          v285 = v1[101];
          v286 = v1[100];
          sub_106210();
          v287 = sub_75DD4(0, v284, 0);
          v1[191] = v287;
          (*(v285 + 8))(v284, v286);
          if (v287)
          {
            if (qword_136EB0 != -1)
            {
              swift_once();
            }

            v288 = swift_task_alloc();
            v1[192] = v288;
            *v288 = v1;
            v288[1] = sub_99AE8;

            return sub_B8D8C(v287);
          }

          v349 = sub_106D10();
          v350 = sub_106FB0();
          if (!os_log_type_enabled(v349, v350))
          {
            goto LABEL_208;
          }

          v351 = swift_slowAlloc();
          *v351 = 0;
          v352 = "Can NOT retrieve sleep alarm data.";
          goto LABEL_207;
        }

        sub_106360();
        v289 = sub_106340();
        (*(v281 + 8))(v280, v282);
        if (!v289)
        {
          v316 = v1[130];
          v317 = v1[129];
          v318 = v1[128];
          (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
          (*(v317 + 16))(v316, v275, v318);
          mach_absolute_time();
          sub_106330();
          if (qword_136EB8 != -1)
          {
            swift_once();
          }

          v319 = v1[102];
          v320 = v1[101];
          v321 = v1[100];
          sub_106210();
          v322 = sub_75DD4(0, v319, 0);
          v1[217] = v322;
          (*(v320 + 8))(v319, v321);
          v153 = sub_75DC8(v322, v447, 0);
          v1[218] = v153;
          v452 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

          v323 = swift_task_alloc();
          v1[219] = v323;
          *v323 = v1;
          v323[1] = sub_9D2AC;
          v155 = 0xD000000000000021;
          v219 = 0x800000000010CFF0;
          goto LABEL_161;
        }

        v290 = v1[102];
        v291 = v1[101];
        v292 = v1[100];
        sub_106210();
        v293 = sub_75DD4(0, v290, 0);
        v1[211] = v293;
        (*(v291 + 8))(v290, v292);
        if (!v293)
        {
          v349 = sub_106D10();
          v350 = sub_106FB0();
          if (!os_log_type_enabled(v349, v350))
          {
LABEL_208:

            sub_25E4(&qword_137DD8, &unk_1085D0);
            sub_26E48();
            v300 = swift_allocError();
            *v371 = 3;
            swift_willThrow();
LABEL_209:
            swift_errorRetain();
            v372 = sub_106D10();
            v373 = sub_106FB0();

            if (os_log_type_enabled(v372, v373))
            {
              v374 = swift_slowAlloc();
              v375 = swift_slowAlloc();
              v455 = v375;
              *v374 = 136315138;
              v1[70] = v300;
              swift_errorRetain();
              sub_25E4(&qword_1376C0, &unk_1080D0);
              v376 = sub_106E30();
              v378 = sub_722E8(v376, v377, &v455);

              *(v374 + 4) = v378;
              _os_log_impl(&dword_0, v372, v373, "Error in RF path: %s", v374, 0xCu);
              sub_2738(v375);
            }

            v361 = v1[162];
            v362 = v1[150];
            v363 = v1[149];
            v453 = v448[147];
            v364 = v448[146];
            v365 = v448[145];
            v379 = sub_106750();
            v448[35] = v379;
            v448[36] = &protocol witness table for ABCReport;
            v380 = sub_1A924(v448 + 32);
            *v380 = sub_1045F0();
            v381 = enum case for DialogLayerErrorSubType.dialogError(_:);
            v382 = sub_106690();
            (*(*(v382 - 8) + 104))(v380, v381, v382);
            (*(*(v379 - 8) + 104))(v380, enum case for ABCReport.dialog(_:), v379);
            sub_1064D0();
            v370 = v448 + 32;
            goto LABEL_212;
          }

          v351 = swift_slowAlloc();
          *v351 = 0;
          v352 = "Can NOT retrieve alarm data.";
LABEL_207:
          _os_log_impl(&dword_0, v349, v350, v352, v351, 2u);

          goto LABEL_208;
        }

        v294 = v1[95];
        v295 = v1[94];
        v296 = v1[90];
        sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v296);
        if ((*(v294 + 48))(v296, 1, v295) == 1)
        {
          sub_16F70(v1[90], &qword_137DC0, &unk_10A0A0);
          v297 = sub_106D10();
          v298 = sub_106FB0();
          if (os_log_type_enabled(v297, v298))
          {
            v299 = swift_slowAlloc();
            *v299 = 0;
            _os_log_impl(&dword_0, v297, v298, "Can NOT retrieve alarm snippet model.", v299, 2u);
          }

          sub_25E4(&qword_137DD8, &unk_1085D0);
          sub_26E48();
          v300 = swift_allocError();
          *v301 = 3;
          swift_willThrow();

          goto LABEL_209;
        }

        (*(v1[95] + 32))(v1[96], v1[90], v1[94]);
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v333 = "n ChangeAlarmStatusIntent";

        sub_25E4(&qword_137880, &unk_108290);
        v326 = swift_allocObject();
        v1[212] = v326;
        *(v326 + 16) = xmmword_107FC0;
        *(v326 + 32) = 0x6D72616C61;
        *(v326 + 40) = 0xE500000000000000;
        *(v326 + 72) = type metadata accessor for AlarmAlarm(0);
        *(v326 + 48) = v293;
        v452 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v384 = swift_task_alloc();
        v1[213] = v384;
        *v384 = v1;
        v384[1] = sub_9C454;
        v335 = 0xD00000000000002FLL;
LABEL_190:
        v219 = v333 | 0x8000000000000000;
        v220 = v335;
        v221 = v326;
        goto LABEL_191;
      }
    }

    goto LABEL_141;
  }

  if (v20 != &dword_0 + 1)
  {
    v62 = v1[129];
    v63 = v1[128];
    v64 = v1[112];
    v65 = v1[111];
    v66 = sub_106750();
    v1[30] = v66;
    v1[31] = &protocol witness table for ABCReport;
    v67 = sub_1A924(v1 + 27);
    v68 = enum case for UnhandledAbortSubtype.unknownChangeAlarmOperation(_:);
    v69 = sub_106680();
    (*(*(v69 - 8) + 104))(v67, v68, v69);
    (*(*(v66 - 8) + 104))(v67, enum case for ABCReport.unhandledAbort(_:), v66);
    sub_1064D0();
    sub_2738(v1 + 27);
    (*(v62 + 16))(v64, v2, v63);
    (*(v62 + 56))(v64, 0, 1, v63);
    sub_14994(v64, v65, &qword_137DB8, &unk_1085B0);
    if ((*(v62 + 48))(v65, 1, v63) == 1)
    {
      sub_16F70(v1[111], &qword_137DB8, &unk_1085B0);
    }

    else
    {
      v70 = sub_106D10();
      v71 = sub_106FB0();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v455 = swift_slowAlloc();
        *v72 = 136315650;
        v73 = sub_1071A0();
        v75 = sub_722E8(v73, v74, &v455);

        *(v72 + 4) = v75;
        *(v72 + 12) = 2048;
        *(v72 + 14) = 270;
        *(v72 + 22) = 2080;
        *(v72 + 24) = sub_722E8(0xD000000000000039, 0x800000000010D9E0, &v455);
        _os_log_impl(&dword_0, v70, v71, "FatalError at %s:%lu - %s", v72, 0x20u);
        swift_arrayDestroy();
      }

      (*(v1[129] + 8))(v1[111], v1[128]);
    }

LABEL_247:
    sub_104C90();
    return sub_107250();
  }

  if (v17)
  {
    v21 = sub_1071C0();
  }

  else
  {
    v21 = *(v15 + 32);
  }

  v76 = v21;
  v77 = [v21 identifier];

  if (!v77)
  {
    goto LABEL_121;
  }

  v78 = sub_106E20();
  v80 = v79;

  if (v17)
  {
    v81 = sub_1071C0();
  }

  else
  {
    v81 = *(v15 + 32);
  }

  v222 = v81;

  v223 = [v222 undoable];

  v224.super.super.isa = sub_107090(1).super.super.isa;
  if (!v223)
  {

    goto LABEL_122;
  }

  v225 = sub_1070A0();

  if ((v225 & 1) == 0)
  {
LABEL_121:

    goto LABEL_122;
  }

  v226 = v1[108];
  v227 = v2;
  v228 = v1[107];
  v229 = v1[106];
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_107FC0;
  *(v230 + 32) = v78;
  *(v230 + 40) = v80;
  sub_E92B8(v230, v226);

  sub_104F30();
  (*(v228 + 8))(v226, v229);
  v2 = v227;
LABEL_122:
  v240 = v2;
  v241 = sub_106D10();
  v242 = sub_106FC0();
  if (os_log_type_enabled(v241, v242))
  {
    v243 = swift_slowAlloc();
    *v243 = 0;
    _os_log_impl(&dword_0, v241, v242, "Hitting RF path for ChangeAlarmStatus, 1 alarm.", v243, 2u);
  }

  v244 = [v19 sleepAlarmAttribute];
  v245 = v1[105];
  v246 = v1[104];
  v247 = v1[103];
  if (v244)
  {

    sub_106360();
    v248 = sub_106340();
    (*(v246 + 8))(v245, v247);
    if (v248)
    {
      v249 = v1[102];
      v250 = v1[101];
      v251 = v1[100];
      sub_106210();
      v252 = sub_75DD4(0, v249, 0);
      v1[163] = v252;
      (*(v250 + 8))(v249, v251);
      if (v252)
      {
        if (qword_136EB0 != -1)
        {
          swift_once();
        }

        v253 = swift_task_alloc();
        v1[164] = v253;
        *v253 = v1;
        v253[1] = sub_96314;

        return sub_B9050(v252);
      }

      v345 = sub_106D10();
      v346 = sub_106FB0();
      if (!os_log_type_enabled(v345, v346))
      {
        goto LABEL_201;
      }

      v347 = swift_slowAlloc();
      *v347 = 0;
      v348 = "Can NOT retrieve sleep alarm data.";
      goto LABEL_200;
    }

    v267 = v1[130];
    v268 = v1[129];
    v269 = v1[128];
    (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
    (*(v268 + 16))(v267, v240, v269);
    mach_absolute_time();
    sub_106330();
    if (qword_136EB8 == -1)
    {
      goto LABEL_139;
    }

    goto LABEL_259;
  }

  sub_106360();
  v254 = sub_106340();
  (*(v246 + 8))(v245, v247);
  if (v254)
  {
    v255 = v1[102];
    v256 = v1[101];
    v257 = v1[100];
    sub_106210();
    v258 = sub_75DD4(0, v255, 0);
    v1[179] = v258;
    (*(v256 + 8))(v255, v257);
    if (!v258)
    {
      v345 = sub_106D10();
      v346 = sub_106FB0();
      if (!os_log_type_enabled(v345, v346))
      {
LABEL_201:

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        v265 = swift_allocError();
        *v353 = 3;
        swift_willThrow();
LABEL_202:
        swift_errorRetain();
        v354 = sub_106D10();
        v355 = sub_106FB0();

        if (os_log_type_enabled(v354, v355))
        {
          v356 = swift_slowAlloc();
          v357 = swift_slowAlloc();
          v455 = v357;
          *v356 = 136315138;
          v1[71] = v265;
          swift_errorRetain();
          sub_25E4(&qword_1376C0, &unk_1080D0);
          v358 = sub_106E30();
          v360 = sub_722E8(v358, v359, &v455);

          *(v356 + 4) = v360;
          _os_log_impl(&dword_0, v354, v355, "Error in RF path: %s", v356, 0xCu);
          sub_2738(v357);
        }

        v361 = v1[162];
        v362 = v1[150];
        v363 = v1[149];
        v453 = v448[147];
        v364 = v448[146];
        v365 = v448[145];
        v366 = sub_106750();
        v448[50] = v366;
        v448[51] = &protocol witness table for ABCReport;
        v367 = sub_1A924(v448 + 47);
        *v367 = sub_1045F0();
        v368 = enum case for DialogLayerErrorSubType.dialogError(_:);
        v369 = sub_106690();
        (*(*(v369 - 8) + 104))(v367, v368, v369);
        (*(*(v366 - 8) + 104))(v367, enum case for ABCReport.dialog(_:), v366);
        sub_1064D0();
        v370 = v448 + 47;
LABEL_212:
        sub_2738(v370);
        swift_willThrow();

        v1 = v448;

        (*(v364 + 8))(v453, v365);
        goto LABEL_23;
      }

      v347 = swift_slowAlloc();
      *v347 = 0;
      v348 = "Can NOT retrieve alarm data.";
LABEL_200:
      _os_log_impl(&dword_0, v345, v346, v348, v347, 2u);

      goto LABEL_201;
    }

    v259 = v1[95];
    v260 = v1[94];
    v261 = v1[92];
    sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v261);
    if ((*(v259 + 48))(v261, 1, v260) == 1)
    {
      sub_16F70(v1[92], &qword_137DC0, &unk_10A0A0);
      v262 = sub_106D10();
      v263 = sub_106FB0();
      if (os_log_type_enabled(v262, v263))
      {
        v264 = swift_slowAlloc();
        *v264 = 0;
        _os_log_impl(&dword_0, v262, v263, "Can NOT retrieve alarm snippet model.", v264, 2u);
      }

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      v265 = swift_allocError();
      *v266 = 3;
      swift_willThrow();

      goto LABEL_202;
    }

    (*(v1[95] + 32))(v1[98], v1[92], v1[94]);
    if (qword_136EB0 != -1)
    {
      swift_once();
    }

    v333 = "s#IntentHandledResponseDisabled";

    sub_25E4(&qword_137880, &unk_108290);
    v326 = swift_allocObject();
    v1[180] = v326;
    *(v326 + 16) = xmmword_107FC0;
    *(v326 + 32) = 0x6D72616C61;
    *(v326 + 40) = 0xE500000000000000;
    *(v326 + 72) = type metadata accessor for AlarmAlarm(0);
    *(v326 + 48) = v258;
    v452 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v383 = swift_task_alloc();
    v1[181] = v383;
    *v383 = v1;
    v383[1] = sub_9859C;
    v335 = 0xD00000000000002ELL;
    goto LABEL_190;
  }

  v310 = v1[130];
  v311 = v1[129];
  v312 = v1[128];
  (*(v1[132] + 104))(v1[133], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v1[131]);
  (*(v311 + 16))(v310, v240, v312);
  mach_absolute_time();
  sub_106330();
  if (qword_136EB8 != -1)
  {
    swift_once();
  }

  v313 = v1[73];
  v314 = swift_task_alloc();
  v1[185] = v314;
  *(v314 + 16) = v19;
  *(v314 + 24) = v313;
  v315 = swift_task_alloc();
  v1[186] = v315;
  *v315 = v1;
  v315[1] = sub_993F4;

  return sub_D3674(sub_A7CD4, v314);
}

uint64_t sub_9558C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1224) = a1;
  *(v3 + 1232) = v1;

  if (v1)
  {
    v4 = sub_A2748;
  }

  else
  {
    v4 = sub_956A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_956A4(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  v1[155] = v2;
  *v2 = v1;
  v2[1] = sub_95758;
  v3 = v1[147];
  v4 = v1[144];
  v5 = v1[127];
  v6 = v1[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_95758()
{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  v3 = v2[153];
  (*(v2[116] + 8))(v2[127], v2[115]);

  if (v0)
  {
    v4 = sub_A2AC8;
  }

  else
  {
    v4 = sub_958D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_958D8()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_95C50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1264) = a1;
  *(v3 + 1272) = v1;

  if (v1)
  {
    v4 = sub_A2E48;
  }

  else
  {
    v4 = sub_95D68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_95D68(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  v1[160] = v2;
  *v2 = v1;
  v2[1] = sub_95E1C;
  v3 = v1[147];
  v4 = v1[143];
  v5 = v1[126];
  v6 = v1[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_95E1C()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  v3 = v2[158];
  (*(v2[116] + 8))(v2[126], v2[115]);

  if (v0)
  {
    v4 = sub_A31C8;
  }

  else
  {
    v4 = sub_95F9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_95F9C()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_96314(uint64_t a1)
{
  v3 = *v2;
  v3[165] = a1;
  v3[166] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_A3548, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[167] = v4;
    *v4 = v3;
    v4[1] = sub_964A4;

    return sub_EEDD4();
  }
}

uint64_t sub_964A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1344) = v2;

  if (v2)
  {
    v7 = sub_96E7C;
  }

  else
  {
    *(v6 + 1352) = a2;
    *(v6 + 1360) = a1;
    v7 = sub_965DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_965DC()
{
  v49 = v0;
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  sub_769D4(v0[170], v0[169], 0, 0xE000000000000000, v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_16F70(v0[93], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve sleep alarm snippet model.", v6, 2u);
    }

    v7 = v0[165];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    v8 = swift_allocError();
    *v9 = 3;
    swift_willThrow();

    swift_errorRetain();
    v10 = sub_106D10();
    v11 = sub_106FB0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48[0] = v13;
      *v12 = 136315138;
      v0[71] = v8;
      swift_errorRetain();
      sub_25E4(&qword_1376C0, &unk_1080D0);
      v14 = sub_106E30();
      v16 = sub_722E8(v14, v15, v48);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
      sub_2738(v13);
    }

    v17 = v0[162];
    v18 = v0[150];
    v19 = v0[149];
    v20 = v0[146];
    v44 = v0[145];
    v46 = v0[147];
    v21 = sub_106750();
    v0[50] = v21;
    v0[51] = &protocol witness table for ABCReport;
    v22 = sub_1A924(v0 + 47);
    *v22 = sub_1045F0();
    v23 = enum case for DialogLayerErrorSubType.dialogError(_:);
    v24 = sub_106690();
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    (*(*(v21 - 8) + 104))(v22, enum case for ABCReport.dialog(_:), v21);
    sub_1064D0();
    sub_2738(v0 + 47);
    swift_willThrow();

    (*(v20 + 8))(v46, v44);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v47 = v0[148];
    v27 = v0[132];
    v41 = v0[133];
    v42 = v0[131];
    v28 = v0[129];
    v43 = v0[130];
    v45 = v0[128];
    v29 = v0[99];
    v30 = v0[95];
    v31 = v0[94];
    (*(v30 + 32))(v29, v0[93], v31);
    sub_104CF0();
    v32 = sub_106AF0();
    v0[60] = v32;
    v0[61] = sub_26EAC();
    v33 = sub_1A924(v0 + 57);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_107FC0;
    (*(v30 + 16))(v35 + v34, v29, v31);
    sub_106930();
    (*(*(v32 - 8) + 104))(v33, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v32);
    (*(v27 + 104))(v41, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v42);
    (*(v28 + 16))(v43, v47, v45);
    mach_absolute_time();
    sub_106330();
    v36 = swift_task_alloc();
    v0[171] = v36;
    *v36 = v0;
    v36[1] = sub_973C0;
    v37 = v0[147];
    v38 = v0[142];
    v39 = v0[125];
    v40 = v0[72];
    v52 = 2;
    v51 = 0;

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v40, v39, v37, v0 + 57, v38, 0, 0, 0);
  }
}

uint64_t sub_96E7C()
{
  v22 = v0;

  v1 = *(v0 + 1344);
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    *(v0 + 568) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = *(v0 + 1296);
  v10 = *(v0 + 1200);
  v11 = *(v0 + 1192);
  v20 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v19 = *(v0 + 1160);
  v13 = sub_106750();
  *(v0 + 400) = v13;
  *(v0 + 408) = &protocol witness table for ABCReport;
  v14 = sub_1A924((v0 + 376));
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738((v0 + 376));
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_973C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 456, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_97594, 0, 0);
}

uint64_t sub_97594()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1176);
  v5 = *(v0 + 792);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_97928(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1400) = a1;
  *(v3 + 1408) = v1;

  if (v1)
  {
    v4 = sub_97CB4;
  }

  else
  {
    v4 = sub_97A68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_97A68()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[177] = v1;
  *v1 = v0;
  v1[1] = sub_97B34;
  v2 = v0[147];
  v3 = v0[141];
  v4 = v0[124];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_97B34()
{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  v3 = v2[175];
  (*(v2[116] + 8))(v2[124], v2[115]);

  if (v0)
  {
    v4 = sub_A3A84;
  }

  else
  {
    v4 = sub_9821C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_97CB4()
{
  v25 = v0;
  v1 = v0[141];
  v2 = v0[135];
  v3 = v0[134];

  (*(v2 + 8))(v1, v3);
  v4 = v0[176];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[71] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[162];
  v13 = v0[150];
  v14 = v0[149];
  v23 = v0[147];
  v15 = v0[146];
  v22 = v0[145];
  v16 = sub_106750();
  v0[50] = v16;
  v0[51] = &protocol witness table for ABCReport;
  v17 = sub_1A924(v0 + 47);
  *v17 = sub_1045F0();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_106690();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v15 + 8))(v23, v22);

  v20 = v0[1];

  return v20();
}

uint64_t sub_9821C()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_9859C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1456) = v1;

  if (v1)
  {
    v5 = sub_98E88;
  }

  else
  {

    *(v4 + 1464) = a1;
    v5 = sub_986D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_986D8(uint64_t a1)
{
  v21 = v1[148];
  v2 = v1[132];
  v17 = v1[133];
  v18 = v1[131];
  v3 = v1[129];
  v19 = v1[130];
  v20 = v1[128];
  v4 = v1[98];
  v5 = v1[95];
  v6 = v1[94];
  sub_104CF0();
  v7 = sub_106AF0();
  v1[55] = v7;
  v1[56] = sub_26EAC();
  v8 = sub_1A924(v1 + 52);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_107FC0;
  (*(v5 + 16))(v10 + v9, v4, v6);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v2 + 104))(v17, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v18);
  (*(v3 + 16))(v19, v21, v20);
  mach_absolute_time();
  sub_106330();
  v11 = swift_task_alloc();
  v1[184] = v11;
  *v11 = v1;
  v11[1] = sub_98920;
  v12 = v1[147];
  v13 = v1[142];
  v14 = v1[125];
  v15 = v1[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v15, v14, v12, v1 + 52, v13, 0, 0, 0);
}

uint64_t sub_98920()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 416, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_98AF4, 0, 0);
}

uint64_t sub_98AF4()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1176);
  v5 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_98E88()
{
  v25 = v0;
  v1 = v0[98];
  v2 = v0[95];
  v3 = v0[94];

  (*(v2 + 8))(v1, v3);
  v4 = v0[182];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[71] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[162];
  v13 = v0[150];
  v14 = v0[149];
  v23 = v0[147];
  v15 = v0[146];
  v22 = v0[145];
  v16 = sub_106750();
  v0[50] = v16;
  v0[51] = &protocol witness table for ABCReport;
  v17 = sub_1A924(v0 + 47);
  *v17 = sub_1045F0();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_106690();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1064D0();
  sub_2738(v0 + 47);
  swift_willThrow();

  (*(v15 + 8))(v23, v22);

  v20 = v0[1];

  return v20();
}

uint64_t sub_993F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1496) = a1;
  *(v3 + 1504) = v1;

  if (v1)
  {
    v4 = sub_A3FD0;
  }

  else
  {
    v4 = sub_99534;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_99534(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  v1[189] = v2;
  *v2 = v1;
  v2[1] = sub_995E8;
  v3 = v1[147];
  v4 = v1[140];
  v5 = v1[123];
  v6 = v1[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_995E8()
{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  v3 = v2[187];
  (*(v2[116] + 8))(v2[123], v2[115]);

  if (v0)
  {
    v4 = sub_A451C;
  }

  else
  {
    v4 = sub_99768;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_99768()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_99AE8(uint64_t a1)
{
  v3 = *v2;
  v3[193] = a1;
  v3[194] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_A4A68, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[195] = v4;
    *v4 = v3;
    v4[1] = sub_99C78;

    return sub_EEDD4();
  }
}

uint64_t sub_99C78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[196] = a1;
  v4[197] = a2;
  v4[198] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_99F3C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[199] = v5;
    *v5 = v4;
    v5[1] = sub_99E04;

    return sub_EF160();
  }
}

uint64_t sub_99E04(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1600) = v2;

  if (v2)
  {
    v7 = sub_9AD2C;
  }

  else
  {
    *(v6 + 1608) = a2;
    *(v6 + 1616) = a1;
    v7 = sub_9A480;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_99F3C()
{
  v22 = v0;

  v1 = *(v0 + 1584);
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    *(v0 + 560) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = *(v0 + 1296);
  v10 = *(v0 + 1200);
  v11 = *(v0 + 1192);
  v20 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v19 = *(v0 + 1160);
  v13 = sub_106750();
  *(v0 + 280) = v13;
  *(v0 + 288) = &protocol witness table for ABCReport;
  v14 = sub_1A924((v0 + 256));
  *v14 = sub_1045F0();
  v15 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v16 = sub_106690();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.dialog(_:), v13);
  sub_1064D0();
  sub_2738((v0 + 256));
  swift_willThrow();

  (*(v12 + 8))(v20, v19);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_9A480()
{
  v49 = v0;
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[91];
  sub_769D4(v0[196], v0[197], v0[202], v0[201], v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_16F70(v0[91], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve sleep alarm snippet model.", v6, 2u);
    }

    v7 = v0[193];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    v8 = swift_allocError();
    *v9 = 3;
    swift_willThrow();

    swift_errorRetain();
    v10 = sub_106D10();
    v11 = sub_106FB0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48[0] = v13;
      *v12 = 136315138;
      v0[70] = v8;
      swift_errorRetain();
      sub_25E4(&qword_1376C0, &unk_1080D0);
      v14 = sub_106E30();
      v16 = sub_722E8(v14, v15, v48);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
      sub_2738(v13);
    }

    v17 = v0[162];
    v18 = v0[150];
    v19 = v0[149];
    v20 = v0[146];
    v44 = v0[145];
    v46 = v0[147];
    v21 = sub_106750();
    v0[35] = v21;
    v0[36] = &protocol witness table for ABCReport;
    v22 = sub_1A924(v0 + 32);
    *v22 = sub_1045F0();
    v23 = enum case for DialogLayerErrorSubType.dialogError(_:);
    v24 = sub_106690();
    (*(*(v24 - 8) + 104))(v22, v23, v24);
    (*(*(v21 - 8) + 104))(v22, enum case for ABCReport.dialog(_:), v21);
    sub_1064D0();
    sub_2738(v0 + 32);
    swift_willThrow();

    (*(v20 + 8))(v46, v44);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v47 = v0[148];
    v27 = v0[132];
    v41 = v0[133];
    v42 = v0[131];
    v28 = v0[129];
    v43 = v0[130];
    v45 = v0[128];
    v29 = v0[97];
    v30 = v0[95];
    v31 = v0[94];
    (*(v30 + 32))(v29, v0[91], v31);
    sub_104CF0();
    v32 = sub_106AF0();
    v0[45] = v32;
    v0[46] = sub_26EAC();
    v33 = sub_1A924(v0 + 42);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_107FC0;
    (*(v30 + 16))(v35 + v34, v29, v31);
    sub_106930();
    (*(*(v32 - 8) + 104))(v33, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v32);
    (*(v27 + 104))(v41, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v42);
    (*(v28 + 16))(v43, v47, v45);
    mach_absolute_time();
    sub_106330();
    v36 = swift_task_alloc();
    v0[203] = v36;
    *v36 = v0;
    v36[1] = sub_9B278;
    v37 = v0[147];
    v38 = v0[142];
    v39 = v0[125];
    v40 = v0[72];
    v52 = 2;
    v51 = 0;

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v40, v39, v37, v0 + 42, v38, 0, 0, 0);
  }
}

uint64_t sub_9AD2C()
{
  v23 = v0;
  v1 = v0[193];

  v2 = v0[200];
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136315138;
    v0[70] = v2;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, v22);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[162];
  v11 = v0[150];
  v12 = v0[149];
  v21 = v0[147];
  v13 = v0[146];
  v20 = v0[145];
  v14 = sub_106750();
  v0[35] = v14;
  v0[36] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 32);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v13 + 8))(v21, v20);

  v18 = v0[1];

  return v18();
}

uint64_t sub_9B278()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 336, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9B44C, 0, 0);
}

uint64_t sub_9B44C()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1176);
  v5 = *(v0 + 776);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_9B7E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1656) = a1;
  *(v3 + 1664) = v1;

  if (v1)
  {
    v4 = sub_9BB6C;
  }

  else
  {
    v4 = sub_9B920;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9B920()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[209] = v1;
  *v1 = v0;
  v1[1] = sub_9B9EC;
  v2 = v0[147];
  v3 = v0[139];
  v4 = v0[122];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_9B9EC()
{
  v2 = *v1;
  *(*v1 + 1680) = v0;

  v3 = v2[207];
  (*(v2[116] + 8))(v2[122], v2[115]);

  if (v0)
  {
    v4 = sub_A4FA4;
  }

  else
  {
    v4 = sub_9C0D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9BB6C()
{
  v25 = v0;
  v1 = v0[139];
  v2 = v0[135];
  v3 = v0[134];

  (*(v2 + 8))(v1, v3);
  v4 = v0[208];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[70] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[162];
  v13 = v0[150];
  v14 = v0[149];
  v23 = v0[147];
  v15 = v0[146];
  v22 = v0[145];
  v16 = sub_106750();
  v0[35] = v16;
  v0[36] = &protocol witness table for ABCReport;
  v17 = sub_1A924(v0 + 32);
  *v17 = sub_1045F0();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_106690();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v15 + 8))(v23, v22);

  v20 = v0[1];

  return v20();
}

uint64_t sub_9C0D4()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_9C454(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1712) = v1;

  if (v1)
  {
    v5 = sub_9CD40;
  }

  else
  {

    *(v4 + 1720) = a1;
    v5 = sub_9C590;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_9C590(uint64_t a1)
{
  v21 = v1[148];
  v2 = v1[132];
  v17 = v1[133];
  v18 = v1[131];
  v3 = v1[129];
  v19 = v1[130];
  v20 = v1[128];
  v4 = v1[96];
  v5 = v1[95];
  v6 = v1[94];
  sub_104CF0();
  v7 = sub_106AF0();
  v1[40] = v7;
  v1[41] = sub_26EAC();
  v8 = sub_1A924(v1 + 37);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_107FC0;
  (*(v5 + 16))(v10 + v9, v4, v6);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v2 + 104))(v17, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v18);
  (*(v3 + 16))(v19, v21, v20);
  mach_absolute_time();
  sub_106330();
  v11 = swift_task_alloc();
  v1[216] = v11;
  *v11 = v1;
  v11[1] = sub_9C7D8;
  v12 = v1[147];
  v13 = v1[142];
  v14 = v1[125];
  v15 = v1[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v15, v14, v12, v1 + 37, v13, 0, 0, 0);
}

uint64_t sub_9C7D8()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 296, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9C9AC, 0, 0);
}

uint64_t sub_9C9AC()
{
  v1 = *(v0 + 1720);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1176);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_9CD40()
{
  v25 = v0;
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];

  (*(v2 + 8))(v1, v3);
  v4 = v0[214];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[70] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[162];
  v13 = v0[150];
  v14 = v0[149];
  v23 = v0[147];
  v15 = v0[146];
  v22 = v0[145];
  v16 = sub_106750();
  v0[35] = v16;
  v0[36] = &protocol witness table for ABCReport;
  v17 = sub_1A924(v0 + 32);
  *v17 = sub_1045F0();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_106690();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v15 + 8))(v23, v22);

  v20 = v0[1];

  return v20();
}

uint64_t sub_9D2AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1760) = a1;
  *(v3 + 1768) = v1;

  if (v1)
  {
    v4 = sub_9D638;
  }

  else
  {
    v4 = sub_9D3EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9D3EC()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[222] = v1;
  *v1 = v0;
  v1[1] = sub_9D4B8;
  v2 = v0[147];
  v3 = v0[138];
  v4 = v0[121];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_9D4B8()
{
  v2 = *v1;
  *(*v1 + 1784) = v0;

  v3 = v2[220];
  (*(v2[116] + 8))(v2[121], v2[115]);

  if (v0)
  {
    v4 = sub_A54F0;
  }

  else
  {
    v4 = sub_9DBA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9D638()
{
  v25 = v0;
  v1 = v0[138];
  v2 = v0[135];
  v3 = v0[134];

  (*(v2 + 8))(v1, v3);
  v4 = v0[221];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    v0[70] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[162];
  v13 = v0[150];
  v14 = v0[149];
  v23 = v0[147];
  v15 = v0[146];
  v22 = v0[145];
  v16 = sub_106750();
  v0[35] = v16;
  v0[36] = &protocol witness table for ABCReport;
  v17 = sub_1A924(v0 + 32);
  *v17 = sub_1045F0();
  v18 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v19 = sub_106690();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, enum case for ABCReport.dialog(_:), v16);
  sub_1064D0();
  sub_2738(v0 + 32);
  swift_willThrow();

  (*(v15 + 8))(v23, v22);

  v20 = v0[1];

  return v20();
}

uint64_t sub_9DBA0()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1072);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_9DF20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1848) = v1;

  if (v1)
  {
    v5 = sub_9E798;
  }

  else
  {

    *(v4 + 1856) = a1;
    v5 = sub_9E050;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_9E050(uint64_t a1)
{
  v16 = v1[148];
  v2 = v1[133];
  v3 = v1[132];
  v4 = v1[131];
  v5 = v1[130];
  v6 = v1[129];
  v7 = v1[128];
  sub_104CF0();
  v8 = sub_106AF0();
  v1[25] = v8;
  v1[26] = sub_26EAC();
  v9 = sub_1A924(v1 + 22);
  sub_106930();
  (*(*(v8 - 8) + 104))(v9, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v8);
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  (*(v6 + 16))(v5, v16, v7);
  mach_absolute_time();
  sub_106330();
  v10 = swift_task_alloc();
  v1[233] = v10;
  *v10 = v1;
  v10[1] = sub_9E22C;
  v11 = v1[147];
  v12 = v1[142];
  v13 = v1[125];
  v14 = v1[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v14, v13, v11, v1 + 22, v12, 0, 0, 0);
}

uint64_t sub_9E22C()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 176, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_9E400, 0, 0);
}

uint64_t sub_9E400()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1192);
  v10 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 712);

  sub_16F70(v7, &qword_137598, &unk_107EB0);
  (*(v5 + 8))(v10, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_9E798()
{
  v24 = v0;

  v1 = v0[231];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    v0[69] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[150];
  v12 = v0[149];
  v22 = v0[147];
  v13 = v0[146];
  v21 = v0[145];
  v20 = v0[89];
  v14 = sub_106750();
  v0[20] = v14;
  v0[21] = &protocol witness table for ABCReport;
  v15 = sub_1A924(v0 + 17);
  *v15 = sub_1045F0();
  v16 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v17 = sub_106690();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(*(v14 - 8) + 104))(v15, enum case for ABCReport.dialog(_:), v14);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v20, &qword_137598, &unk_107EB0);
  (*(v13 + 8))(v22, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_9ED10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1888) = a1;
  *(v3 + 1896) = v1;

  if (v1)
  {
    v4 = sub_9F0A4;
  }

  else
  {
    v4 = sub_9EE50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9EE50()
{
  sub_A7C74(v0[82], type metadata accessor for ModifyAllEnableConciseParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[238] = v1;
  *v1 = v0;
  v1[1] = sub_9EF24;
  v2 = v0[147];
  v3 = v0[137];
  v4 = v0[120];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_9EF24()
{
  v2 = *v1;
  *(*v1 + 1912) = v0;

  v3 = v2[236];
  (*(v2[116] + 8))(v2[120], v2[115]);

  if (v0)
  {
    v4 = sub_A5A3C;
  }

  else
  {
    v4 = sub_9F648;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9F0A4()
{
  v27 = v0;
  v1 = v0[137];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[82], type metadata accessor for ModifyAllEnableConciseParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[237];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v0[69] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v25 = v0[147];
  v16 = v0[146];
  v24 = v0[145];
  v23 = v0[89];
  v17 = sub_106750();
  v0[20] = v17;
  v0[21] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 17);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v23, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v25, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_9F648()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1176);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);
  v10 = *(v0 + 712);

  (*(v6 + 8))(v5, v7);
  sub_16F70(v10, &qword_137598, &unk_107EB0);
  (*(v4 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_9F9FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1936) = a1;
  *(v3 + 1944) = v1;

  if (v1)
  {
    v4 = sub_9FD90;
  }

  else
  {
    v4 = sub_9FB3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9FB3C()
{
  sub_A7C74(v0[80], type metadata accessor for ModifyAllEnableParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[244] = v1;
  *v1 = v0;
  v1[1] = sub_9FC10;
  v2 = v0[147];
  v3 = v0[137];
  v4 = v0[119];
  v5 = v0[72];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_9FC10()
{
  v2 = *v1;
  *(*v1 + 1960) = v0;

  v3 = v2[242];
  (*(v2[116] + 8))(v2[119], v2[115]);

  if (v0)
  {
    v4 = sub_A5FBC;
  }

  else
  {
    v4 = sub_A7CE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9FD90()
{
  v27 = v0;
  v1 = v0[137];
  v2 = v0[135];
  v3 = v0[134];
  sub_A7C74(v0[80], type metadata accessor for ModifyAllEnableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[243];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v0[69] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[226];
  v13 = v0[224];
  v14 = v0[150];
  v15 = v0[149];
  v25 = v0[147];
  v16 = v0[146];
  v24 = v0[145];
  v23 = v0[89];
  v17 = sub_106750();
  v0[20] = v17;
  v0[21] = &protocol witness table for ABCReport;
  v18 = sub_1A924(v0 + 17);
  *v18 = sub_1045F0();
  v19 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v20 = sub_106690();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (*(*(v17 - 8) + 104))(v18, enum case for ABCReport.dialog(_:), v17);
  sub_1064D0();
  sub_2738(v0 + 17);
  swift_willThrow();

  sub_16F70(v23, &qword_137598, &unk_107EB0);
  (*(v16 + 8))(v25, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_A0334(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2000) = v1;

  if (v1)
  {
    v5 = sub_A0BAC;
  }

  else
  {

    *(v4 + 2008) = a1;
    v5 = sub_A0464;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A0464(uint64_t a1)
{
  v16 = v1[148];
  v2 = v1[133];
  v3 = v1[132];
  v4 = v1[131];
  v5 = v1[130];
  v6 = v1[129];
  v7 = v1[128];
  sub_104CF0();
  v8 = sub_106AF0();
  v1[15] = v8;
  v1[16] = sub_26EAC();
  v9 = sub_1A924(v1 + 12);
  sub_106930();
  (*(*(v8 - 8) + 104))(v9, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v8);
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  (*(v6 + 16))(v5, v16, v7);
  mach_absolute_time();
  sub_106330();
  v10 = swift_task_alloc();
  v1[252] = v10;
  *v10 = v1;
  v10[1] = sub_A0640;
  v11 = v1[147];
  v12 = v1[142];
  v13 = v1[125];
  v14 = v1[72];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v14, v13, v11, v1 + 12, v12, 0, 0, 0);
}

uint64_t sub_A0640()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1000);
  v6 = *(*v0 + 928);
  v7 = *(*v0 + 920);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_A0814, 0, 0);
}