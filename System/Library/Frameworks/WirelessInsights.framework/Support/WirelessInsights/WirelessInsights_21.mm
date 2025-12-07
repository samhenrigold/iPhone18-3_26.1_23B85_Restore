uint64_t sub_1001BC61C(uint64_t a1, int a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v12);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a1;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received navigation state change: %lu, %d", v15, 0x12u);
  }

  result = (*(v10 + 8))(v12, v9);
  if (!a1)
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;

    sub_100176B80(0, 0, v8, &unk_10024C6B0, v18);
  }

  return result;
}

uint64_t sub_1001BC8AC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001BC920(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1001BC97C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001BBB08(v3, v4, v5, v2);
}

uint64_t sub_1001BCA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BCA78()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001BBA14(v4, v5, v6, v2, v3);
}

uint64_t sub_1001BCB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BCB78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BCBC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BCC20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1001BCC88()
{
  v1 = 7104878;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(143);
  v22 = 0;
  v23 = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  v2._object = 0x800000010025DC50;
  String.append(_:)(v2);
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&qword_1002D7BB8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B410);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x800000010025DC90;
  v4._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v4);
  v5 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  sub_10001A718(v0 + v5[5], v20, &qword_1002D71D0, &qword_10024AE20);
  if (v21)
  {
    sub_100014E1C(v20, v21);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    sub_100164B98(v20);
  }

  else
  {
    sub_1000157F0(v20, &qword_1002D71D0, &qword_10024AE20);
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x800000010025DCB0;
  String.append(_:)(v10);
  v11 = (v0 + v5[6]);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x800000010025DCD0;
  String.append(_:)(v15);
  v16 = (v0 + v5[7]);
  if (v16[1])
  {
    v1 = *v16;
    v17 = v16[1];
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  v18._countAndFlagsBits = v1;
  v18._object = v17;
  String.append(_:)(v18);

  return v22;
}

__n128 sub_1001BCEFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1001DC56C(a1, a7, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  v13 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v14 = a7 + v13[5];
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(a2 + 32);
  v17 = (a7 + v13[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v13[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_1001BCF94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3E8);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1001BD020()
{
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BD0AC(uint64_t a1)
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001BD134(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BD474(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x676E696D616F72;
  v3 = 0x646574696D696CLL;
  if (a1 != 3)
  {
    v3 = 7565167;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1701670760;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001BD500()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E696D616F72;
  v4 = 0x646574696D696CLL;
  if (v1 != 3)
  {
    v4 = 7565167;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001BD58C()
{
  v1 = 0x6976726573206E69;
  if (*v0 != 1)
  {
    v1 = 0x7320666F2074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001BD5F8()
{
  v1 = 1801545079;
  if (*v0 != 1)
  {
    v1 = 0x676E6F727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001BD648()
{
  _StringGuts.grow(_:)(45);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x20636E6D202CLL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x20746172202CLL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 0x20646E6162202CLL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x657571657266202CLL;
  v7._object = 0xEC0000002079636ELL;
  String.append(_:)(v7);
  sub_100164A3C(&qword_1002D7BC8, &qword_10024C700);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  return 543384429;
}

uint64_t sub_1001BD808(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  Date.timeIntervalSince(_:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  *(v2 + 72) = v10 + *(v2 + 72);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001BD980(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  Date.timeIntervalSince(_:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  *(v2 + 80) = v10 + *(v2 + 80);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001BDAF8(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
  v11 = (v10 + 16);
  v12 = (v10 + 8);
  v13 = (v10 + 24);
  if (a1)
  {
    swift_beginAccess();
    (*v11)(v8, v3 + v9, v6);
    Date.timeIntervalSince(_:)();
    v15 = v14;
    (*v12)(v8, v6);
    swift_beginAccess();
    if (a1 == 1)
    {
      v3[4] = v15 + v3[4];
    }

    else
    {
      v3[3] = v15 + v3[3];
    }
  }

  else
  {
    swift_beginAccess();
    (*v11)(v8, v3 + v9, v6);
    Date.timeIntervalSince(_:)();
    v17 = v16;
    (*v12)(v8, v6);
    swift_beginAccess();
    v3[2] = v17 + v3[2];
  }

  swift_beginAccess();
  (*v13)(v3 + v9, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1001BDD78()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v1 + v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v2 + v0[4];
  if (v4 != 0.0)
  {
    v5 = round(v1 / v4 * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BDE54()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v1 + v2 + v0[4];
  if (v4 != 0.0)
  {
    v5 = round(v2 / v4 * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BDF30()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v1 + v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v0[4];
  if (v2 + v4 != 0.0)
  {
    v5 = round(v4 / (v2 + v4) * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BE00C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = 0;
  v3 = v1 + *(v0 + 80);
  if (v3 != 0.0)
  {
    v4 = round(v1 / v3 * 100.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BE0CC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = 0;
  v3 = *(v0 + 80);
  if (v1 + v3 != 0.0)
  {
    v4 = round(v3 / (v1 + v3) * 100.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_1001BE18C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastResetTime;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 24);
  v5(&v1[v3], a1, v4);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
  swift_beginAccess();
  v5(&v1[v6], a1, v4);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
  swift_beginAccess();
  v5(&v1[v7], a1, v4);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  v5(&v1[v8], a1, v4);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
  swift_beginAccess();
  v5(&v1[v9], a1, v4);
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 2) = 0;
  swift_beginAccess();
  *(v1 + 3) = 0;
  swift_beginAccess();
  *(v1 + 4) = 0;
  swift_beginAccess();
  *(v1 + 9) = 0;
  swift_beginAccess();
  *(v1 + 10) = 0;
}

uint64_t sub_1001BE390()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastResetTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BE4C8(uint64_t a1)
{
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  Date.init()();
  Date.init()();
  Date.init()();
  Date.init()();
  Date.init()();
  return v1;
}

uint64_t sub_1001BE550(uint64_t a1)
{
  v3 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001A718(a1, v8, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
    return sub_1000157F0(v8, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v6, v12, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v14 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
    swift_beginAccess();
    sub_10019B228(v6, v1 + v14);
    swift_endAccess();
    type metadata accessor for RegistrationTimeCounter(0);
    v15 = swift_allocObject();
    sub_1001BE4C8(v15);
    swift_beginAccess();
    *(v1 + 32) = v15;

    swift_beginAccess();
    if (*(v1 + 32))
    {
      swift_endAccess();

      sub_1001BE18C(v12);

      sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
      (*(v10 + 8))(v12, v9);
      return swift_endAccess();
    }
  }
}

void sub_1001BE878(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v77 - v10;
  v11 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v12 = __chkstk_darwin(v11 - 8);
  v84 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v77 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v77 - v21;
  __chkstk_darwin(v20);
  v24 = &v77 - v23;
  swift_beginAccess();
  *(v3 + 41) = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v25 = v7;
      v83 = v7[2];
      v84 = v7 + 2;
      v83(v24, a2, v6);
      v26 = v7[7];
      v26(v24, 0, 1, v6);
      v27 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v27);
      swift_endAccess();
      v26(v24, 1, 1, v6);
      v28 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v28);
      swift_endAccess();
      v29 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      if (*(v3 + v29) == 1)
      {
        swift_beginAccess();
        v30 = *(v3 + 24);

        Date.init()();
        v31 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
        swift_beginAccess();
        v32 = v85;
        v83(v85, v30 + v31, v6);
        Date.timeIntervalSince(_:)();
        v34 = v33;
        v82 = v19;
        v35 = v25[1];
        v35(v32, v6);
        swift_beginAccess();
        *(v30 + 32) = v34 + *(v30 + 32);
        swift_beginAccess();
        v36 = v30 + v31;
        v37 = v86;
        v78 = v25[3];
        v79 = v25 + 3;
        v78(v36, v86, v6);
        swift_endAccess();

        v80 = v35;
        v81 = v25 + 1;
        v35(v37, v6);
        v38 = v82;
        v39 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v39, v22, &unk_1002D7BD0, &unk_10024A800);
        v40 = v25[6];
        LODWORD(v39) = v40(v22, 1, v6);
        sub_1000157F0(v22, &unk_1002D7BD0, &unk_10024A800);
        if (v39 != 1)
        {
          v41 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          sub_10001A718(v3 + v41, v38, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v41) = v40(v38, 1, v6);
          sub_1000157F0(v38, &unk_1002D7BD0, &unk_10024A800);
          if (v41 == 1)
          {
            swift_beginAccess();
            v42 = *(v3 + 32);
            if (v42)
            {

              v43 = v86;
              Date.init()();
              v44 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
              swift_beginAccess();
              v45 = v85;
              v83(v85, v42 + v44, v6);
              Date.timeIntervalSince(_:)();
              v47 = v46;
              v48 = v6;
              v49 = v6;
              v50 = v80;
              v80(v45, v48);
              swift_beginAccess();
              *(v42 + 32) = v47 + *(v42 + 32);
              swift_beginAccess();
              v78(v42 + v44, v43, v49);
              swift_endAccess();

              v50(v43, v49);
            }
          }
        }
      }
    }

    else
    {
      v51 = v7;
      v53 = v7[2];
      v52 = (v7 + 2);
      v83 = v53;
      v53(v24, a2, v6);
      v54 = v51[7];
      v54(v24, 0, 1, v6);
      v55 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v55);
      swift_endAccess();
      v54(v24, 1, 1, v6);
      v56 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v56);
      swift_endAccess();
      v57 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      if (*(v3 + v57) == 1)
      {
        swift_beginAccess();
        v58 = *(v3 + 24);

        Date.init()();
        v59 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
        swift_beginAccess();
        v60 = v85;
        v83(v85, v58 + v59, v6);
        Date.timeIntervalSince(_:)();
        v62 = v61;
        v82 = v52;
        v63 = v51[1];
        v63(v60, v6);
        swift_beginAccess();
        *(v58 + 24) = v62 + *(v58 + 24);
        swift_beginAccess();
        v64 = v58 + v59;
        v65 = v86;
        v78 = v51[3];
        v79 = v51 + 3;
        v78(v64, v86, v6);
        swift_endAccess();

        v80 = v63;
        v81 = v51 + 1;
        v63(v65, v6);
        v66 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v66, v16, &unk_1002D7BD0, &unk_10024A800);
        v67 = v51[6];
        LODWORD(v66) = v67(v16, 1, v6);
        sub_1000157F0(v16, &unk_1002D7BD0, &unk_10024A800);
        if (v66 != 1)
        {
          v68 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          v69 = v84;
          sub_10001A718(v3 + v68, v84, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v68) = v67(v69, 1, v6);
          sub_1000157F0(v69, &unk_1002D7BD0, &unk_10024A800);
          if (v68 == 1)
          {
            swift_beginAccess();
            v70 = *(v3 + 32);
            if (v70)
            {

              v71 = v86;
              Date.init()();
              v72 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
              swift_beginAccess();
              v73 = v85;
              v83(v85, v70 + v72, v6);
              Date.timeIntervalSince(_:)();
              v75 = v74;
              v76 = v80;
              v80(v73, v6);
              swift_beginAccess();
              *(v70 + 24) = v75 + *(v70 + 24);
              swift_beginAccess();
              v78(v70 + v72, v71, v6);
              swift_endAccess();

              v76(v71, v6);
            }
          }
        }
      }
    }
  }
}

void sub_1001BF264(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v77 - v10;
  v11 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v12 = __chkstk_darwin(v11 - 8);
  v84 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v77 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v77 - v21;
  __chkstk_darwin(v20);
  v24 = &v77 - v23;
  swift_beginAccess();
  *(v3 + 42) = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v25 = v7;
      v27 = v7[2];
      v26 = (v7 + 2);
      v83 = v27;
      v27(v24, a2, v6);
      v28 = v25[7];
      v28(v24, 0, 1, v6);
      v29 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v29);
      swift_endAccess();
      v28(v24, 1, 1, v6);
      v30 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v30);
      swift_endAccess();
      v31 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      if (*(v3 + v31) == 1)
      {
        swift_beginAccess();
        v32 = *(v3 + 24);

        Date.init()();
        v33 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
        swift_beginAccess();
        v34 = v85;
        v83(v85, v32 + v33, v6);
        Date.timeIntervalSince(_:)();
        v36 = v35;
        v82 = v26;
        v37 = v25[1];
        v37(v34, v6);
        swift_beginAccess();
        *(v32 + 48) = v36 + *(v32 + 48);
        swift_beginAccess();
        v38 = v32 + v33;
        v39 = v86;
        v78 = v25[3];
        v79 = v25 + 3;
        v78(v38, v86, v6);
        swift_endAccess();

        v80 = v37;
        v81 = v25 + 1;
        v37(v39, v6);
        v40 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v40, v16, &unk_1002D7BD0, &unk_10024A800);
        v41 = v25[6];
        LODWORD(v40) = v41(v16, 1, v6);
        sub_1000157F0(v16, &unk_1002D7BD0, &unk_10024A800);
        if (v40 != 1)
        {
          v42 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          v43 = v84;
          sub_10001A718(v3 + v42, v84, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v42) = v41(v43, 1, v6);
          sub_1000157F0(v43, &unk_1002D7BD0, &unk_10024A800);
          if (v42 == 1)
          {
            swift_beginAccess();
            v44 = *(v3 + 32);
            if (v44)
            {

              v45 = v86;
              Date.init()();
              v46 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
              swift_beginAccess();
              v47 = v85;
              v83(v85, v44 + v46, v6);
              Date.timeIntervalSince(_:)();
              v49 = v48;
              v50 = v80;
              v80(v47, v6);
              swift_beginAccess();
              *(v44 + 48) = v49 + *(v44 + 48);
              swift_beginAccess();
              v78(v44 + v46, v45, v6);
              swift_endAccess();

              v50(v45, v6);
            }
          }
        }
      }
    }

    else
    {
      v51 = v7;
      v83 = v7[2];
      v84 = v7 + 2;
      v83(v24, a2, v6);
      v52 = v7[7];
      v52(v24, 0, 1, v6);
      v53 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v53);
      swift_endAccess();
      v52(v24, 1, 1, v6);
      v54 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v24, v3 + v54);
      swift_endAccess();
      v55 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      if (*(v3 + v55) == 1)
      {
        swift_beginAccess();
        v56 = *(v3 + 24);

        Date.init()();
        v57 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
        swift_beginAccess();
        v58 = v85;
        v83(v85, v56 + v57, v6);
        Date.timeIntervalSince(_:)();
        v60 = v59;
        v82 = v19;
        v61 = v51[1];
        v61(v58, v6);
        swift_beginAccess();
        *(v56 + 40) = v60 + *(v56 + 40);
        swift_beginAccess();
        v62 = v56 + v57;
        v63 = v86;
        v78 = v51[3];
        v79 = v51 + 3;
        v78(v62, v86, v6);
        swift_endAccess();

        v80 = v61;
        v81 = v51 + 1;
        v61(v63, v6);
        v64 = v82;
        v65 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v65, v22, &unk_1002D7BD0, &unk_10024A800);
        v66 = v51[6];
        LODWORD(v65) = v66(v22, 1, v6);
        sub_1000157F0(v22, &unk_1002D7BD0, &unk_10024A800);
        if (v65 != 1)
        {
          v67 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          sub_10001A718(v3 + v67, v64, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v67) = v66(v64, 1, v6);
          sub_1000157F0(v64, &unk_1002D7BD0, &unk_10024A800);
          if (v67 == 1)
          {
            swift_beginAccess();
            v68 = *(v3 + 32);
            if (v68)
            {

              v69 = v86;
              Date.init()();
              v70 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
              swift_beginAccess();
              v71 = v85;
              v83(v85, v68 + v70, v6);
              Date.timeIntervalSince(_:)();
              v73 = v72;
              v74 = v6;
              v75 = v6;
              v76 = v80;
              v80(v71, v74);
              swift_beginAccess();
              *(v68 + 40) = v73 + *(v68 + 40);
              swift_beginAccess();
              v78(v68 + v70, v69, v75);
              swift_endAccess();

              v76(v69, v75);
            }
          }
        }
      }
    }
  }
}

void sub_1001BFC50(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v67 - v10;
  v11 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v12 = __chkstk_darwin(v11 - 8);
  v72 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v17 = __chkstk_darwin(v14);
  v71 = (&v67 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  swift_beginAccess();
  *(v3 + 40) = a1;
  v73 = *(v7 + 16);
  v74 = v7 + 16;
  v73(v23, a2, v6);
  (*(v7 + 56))(v23, 0, 1, v6);
  v24 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime;
  swift_beginAccess();
  sub_10019B228(v23, v3 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  swift_beginAccess();
  if (*(v3 + v25) == 1)
  {
    v26 = v6;
    v70 = v7 + 8;
    if (a1)
    {
      swift_beginAccess();
      v27 = *(v3 + 24);

      v28 = v76;
      Date.init()();
      v29 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v30 = v75;
      v31 = v26;
      v73(v75, v27 + v29, v26);
      Date.timeIntervalSince(_:)();
      v33 = v32;
      v34 = *(v7 + 8);
      v34(v30, v31);
      swift_beginAccess();
      *(v27 + 80) = v33 + *(v27 + 80);
      swift_beginAccess();
      v68 = *(v7 + 24);
      v69 = v7 + 24;
      v68(v27 + v29, v28, v31);
      swift_endAccess();

      v72 = v34;
      v34(v28, v31);
      v35 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v35, v21, &unk_1002D7BD0, &unk_10024A800);
      v36 = *(v7 + 48);
      LODWORD(v35) = v36(v21, 1, v31);
      sub_1000157F0(v21, &unk_1002D7BD0, &unk_10024A800);
      if (v35 != 1)
      {
        v37 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v38 = v71;
        sub_10001A718(v3 + v37, v71, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v37) = v36(v38, 1, v31);
        sub_1000157F0(v38, &unk_1002D7BD0, &unk_10024A800);
        if (v37 == 1)
        {
          swift_beginAccess();
          v39 = *(v3 + 32);
          if (v39)
          {

            v40 = v76;
            Date.init()();
            v41 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
            swift_beginAccess();
            v42 = v75;
            v73(v75, v39 + v41, v31);
            Date.timeIntervalSince(_:)();
            v44 = v43;
            v45 = v42;
            v46 = v72;
            v72(v45, v31);
            swift_beginAccess();
            *(v39 + 80) = v44 + *(v39 + 80);
            swift_beginAccess();
            v68(v39 + v41, v40, v31);
            swift_endAccess();

            v46(v40, v31);
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v47 = *(v3 + 24);

      v48 = v76;
      Date.init()();
      v49 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v50 = v75;
      v51 = v26;
      v73(v75, v47 + v49, v26);
      Date.timeIntervalSince(_:)();
      v53 = v52;
      v54 = *(v7 + 8);
      v54(v50, v51);
      swift_beginAccess();
      *(v47 + 72) = v53 + *(v47 + 72);
      swift_beginAccess();
      v68 = *(v7 + 24);
      v69 = v7 + 24;
      v68(v47 + v49, v48, v51);
      swift_endAccess();

      v71 = v54;
      v54(v48, v51);
      v55 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v55, v16, &unk_1002D7BD0, &unk_10024A800);
      v56 = *(v7 + 48);
      LODWORD(v55) = v56(v16, 1, v51);
      sub_1000157F0(v16, &unk_1002D7BD0, &unk_10024A800);
      if (v55 != 1)
      {
        v57 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v58 = v72;
        sub_10001A718(v3 + v57, v72, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v57) = v56(v58, 1, v51);
        sub_1000157F0(v58, &unk_1002D7BD0, &unk_10024A800);
        if (v57 == 1)
        {
          swift_beginAccess();
          v59 = *(v3 + 32);
          if (v59)
          {

            v60 = v76;
            Date.init()();
            v61 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
            swift_beginAccess();
            v62 = v75;
            v73(v75, v59 + v61, v51);
            Date.timeIntervalSince(_:)();
            v64 = v63;
            v65 = v62;
            v66 = v71;
            v71(v65, v51);
            swift_beginAccess();
            *(v59 + 72) = v64 + *(v59 + 72);
            swift_beginAccess();
            v68(v59 + v61, v60, v51);
            swift_endAccess();

            v66(v60, v51);
          }
        }
      }
    }
  }
}

void sub_1001C04E0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = __chkstk_darwin(v9 - 8);
  v64 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v59 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v59 - v19;
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  swift_beginAccess();
  *(v3 + 43) = a1;
  v23 = *(v7 + 16);
  v68 = a2;
  v65 = v23;
  v66 = v7 + 16;
  v23(v22, a2, v6);
  (*(v7 + 56))(v22, 0, 1, v6);
  v24 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime;
  swift_beginAccess();
  sub_10019B228(v22, v3 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  swift_beginAccess();
  if (*(v3 + v25) == 1)
  {
    v63 = v7 + 8;
    if (a1)
    {
      swift_beginAccess();
      v26 = *(v3 + 24);
      v27 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v28 = v67;
      v65(v67, v26 + v27, v6);

      v29 = v68;
      Date.timeIntervalSince(_:)();
      v31 = v30;
      v64 = *(v7 + 8);
      v64(v28, v6);
      swift_beginAccess();
      *(v26 + 64) = v31 + *(v26 + 64);
      swift_beginAccess();
      v61 = *(v7 + 24);
      v62 = (v7 + 24);
      v61(v26 + v27, v29, v6);
      swift_endAccess();

      v32 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v32, v20, &unk_1002D7BD0, &unk_10024A800);
      v33 = *(v7 + 48);
      LODWORD(v32) = v33(v20, 1, v6);
      sub_1000157F0(v20, &unk_1002D7BD0, &unk_10024A800);
      if (v32 != 1)
      {
        v34 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v34, v17, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v34) = v33(v17, 1, v6);
        sub_1000157F0(v17, &unk_1002D7BD0, &unk_10024A800);
        if (v34 == 1)
        {
          swift_beginAccess();
          v35 = *(v3 + 32);
          if (v35)
          {
            v36 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v37 = v67;
            v65(v67, v35 + v36, v6);

            v38 = v68;
            Date.timeIntervalSince(_:)();
            v40 = v39;
            v64(v37, v6);
            swift_beginAccess();
            *(v35 + 64) = v40 + *(v35 + 64);
            swift_beginAccess();
            v61(v35 + v36, v38, v6);
LABEL_11:
            swift_endAccess();
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v41 = *(v3 + 24);
      v42 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v43 = v67;
      v65(v67, v41 + v42, v6);

      v44 = v68;
      Date.timeIntervalSince(_:)();
      v46 = v45;
      v62 = *(v7 + 8);
      v62(v43, v6);
      swift_beginAccess();
      *(v41 + 56) = v46 + *(v41 + 56);
      swift_beginAccess();
      v60 = *(v7 + 24);
      v61 = (v7 + 24);
      v60(v41 + v42, v44, v6);
      swift_endAccess();

      v47 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v47, v14, &unk_1002D7BD0, &unk_10024A800);
      v48 = *(v7 + 48);
      LODWORD(v42) = v48(v14, 1, v6);
      sub_1000157F0(v14, &unk_1002D7BD0, &unk_10024A800);
      if (v42 != 1)
      {
        v49 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v50 = v3 + v49;
        v51 = v64;
        sub_10001A718(v50, v64, &unk_1002D7BD0, &unk_10024A800);
        v52 = v48(v51, 1, v6);
        sub_1000157F0(v51, &unk_1002D7BD0, &unk_10024A800);
        if (v52 == 1)
        {
          swift_beginAccess();
          v53 = *(v3 + 32);
          if (v53)
          {
            v54 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v55 = v67;
            v65(v67, v53 + v54, v6);

            v56 = v68;
            Date.timeIntervalSince(_:)();
            v58 = v57;
            v62(v55, v6);
            swift_beginAccess();
            *(v53 + 56) = v58 + *(v53 + 56);
            swift_beginAccess();
            v60(v53 + v54, v56, v6);
            goto LABEL_11;
          }
        }
      }
    }
  }
}

void sub_1001C0CA0(int a1, uint64_t a2)
{
  v3 = v2;
  v227 = a2;
  v5 = type metadata accessor for Date();
  v225 = *(v5 - 8);
  __chkstk_darwin(v5);
  v226 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v221 = &v201 - v12;
  v13 = __chkstk_darwin(v11);
  v214 = &v201 - v14;
  v15 = __chkstk_darwin(v13);
  v220 = &v201 - v16;
  v17 = __chkstk_darwin(v15);
  v213 = &v201 - v18;
  v19 = __chkstk_darwin(v17);
  v219 = (&v201 - v20);
  v21 = __chkstk_darwin(v19);
  v212 = &v201 - v22;
  v23 = __chkstk_darwin(v21);
  v218 = (&v201 - v24);
  v25 = __chkstk_darwin(v23);
  v211 = &v201 - v26;
  v27 = __chkstk_darwin(v25);
  v217 = &v201 - v28;
  v29 = __chkstk_darwin(v27);
  v223 = &v201 - v30;
  v31 = __chkstk_darwin(v29);
  v210 = &v201 - v32;
  v33 = __chkstk_darwin(v31);
  v216 = &v201 - v34;
  v35 = __chkstk_darwin(v33);
  v222 = &v201 - v36;
  v37 = __chkstk_darwin(v35);
  v209 = &v201 - v38;
  v39 = __chkstk_darwin(v37);
  v215 = &v201 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v201 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v201 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v201 - v48;
  __chkstk_darwin(v47);
  v51 = &v201 - v50;
  v52 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  swift_beginAccess();
  if (*(v3 + v52) == 1)
  {
    v207 = v10;
    v208 = a1;
    *(v3 + v52) = 2;
    v53 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
    swift_beginAccess();
    sub_10001A718(v3 + v53, v51, &unk_1002D7BD0, &unk_10024A800);
    v228 = *(v225 + 48);
    v229 = v225 + 48;
    LODWORD(v53) = v228(v51, 1, v5);
    sub_1000157F0(v51, &unk_1002D7BD0, &unk_10024A800);
    v224 = v5;
    if (v53 != 1)
    {
      swift_beginAccess();
      v54 = *(v3 + 24);
      v55 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
      swift_beginAccess();
      v56 = v225;
      v57 = v226;
      v205 = *(v225 + 16);
      v206 = (v225 + 16);
      v205(v226, v54 + v55, v224);

      v58 = v227;
      Date.timeIntervalSince(_:)();
      v60 = v59;
      v203 = *(v56 + 8);
      v204 = (v56 + 8);
      v203(v57, v224);
      swift_beginAccess();
      *(v54 + 32) = v60 + *(v54 + 32);
      swift_beginAccess();
      v61 = v56;
      v5 = v224;
      v202 = *(v61 + 24);
      v202(v54 + v55, v58, v224);
      swift_endAccess();

      v62 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v62, v49, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v62) = v228(v49, 1, v5);
      sub_1000157F0(v49, &unk_1002D7BD0, &unk_10024A800);
      if (v62 != 1)
      {
        v63 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v63, v46, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v63) = v228(v46, 1, v5);
        sub_1000157F0(v46, &unk_1002D7BD0, &unk_10024A800);
        if (v63 == 1)
        {
          swift_beginAccess();
          v64 = *(v3 + 32);
          if (v64)
          {
            v65 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
            swift_beginAccess();
            v66 = v226;
            v205(v226, v64 + v65, v5);

            v67 = v227;
            Date.timeIntervalSince(_:)();
            v69 = v68;
            v203(v66, v5);
            swift_beginAccess();
            *(v64 + 32) = v69 + *(v64 + 32);
            swift_beginAccess();
            v202(v64 + v65, v67, v5);
            swift_endAccess();
          }
        }
      }
    }

    v70 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
    swift_beginAccess();
    sub_10001A718(v3 + v70, v43, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v70) = v228(v43, 1, v5);
    sub_1000157F0(v43, &unk_1002D7BD0, &unk_10024A800);
    if (v70 != 1)
    {
      swift_beginAccess();
      v71 = *(v3 + 24);
      v72 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
      swift_beginAccess();
      v73 = v225;
      v74 = v226;
      v206 = *(v225 + 16);
      v206(v226, v71 + v72, v224);

      v75 = v227;
      Date.timeIntervalSince(_:)();
      v77 = v76;
      v205 = *(v73 + 8);
      (v205)(v74, v224);
      swift_beginAccess();
      *(v71 + 24) = v77 + *(v71 + 24);
      swift_beginAccess();
      v78 = v73;
      v5 = v224;
      v204 = *(v78 + 24);
      v204(v71 + v72, v75, v224);
      swift_endAccess();

      v79 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v80 = v215;
      sub_10001A718(v3 + v79, v215, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v79) = v228(v80, 1, v5);
      sub_1000157F0(v80, &unk_1002D7BD0, &unk_10024A800);
      if (v79 != 1)
      {
        v81 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v82 = v209;
        sub_10001A718(v3 + v81, v209, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v81) = v228(v82, 1, v5);
        sub_1000157F0(v82, &unk_1002D7BD0, &unk_10024A800);
        if (v81 == 1)
        {
          swift_beginAccess();
          v83 = *(v3 + 32);
          if (v83)
          {
            v84 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
            swift_beginAccess();
            v85 = v226;
            v206(v226, v83 + v84, v5);

            v86 = v227;
            Date.timeIntervalSince(_:)();
            v88 = v87;
            (v205)(v85, v5);
            swift_beginAccess();
            *(v83 + 24) = v88 + *(v83 + 24);
            swift_beginAccess();
            v204(v83 + v84, v86, v5);
            swift_endAccess();
          }
        }
      }
    }

    v89 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
    swift_beginAccess();
    v90 = v222;
    sub_10001A718(v3 + v89, v222, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v89) = v228(v90, 1, v5);
    sub_1000157F0(v90, &unk_1002D7BD0, &unk_10024A800);
    if (v89 != 1)
    {
      swift_beginAccess();
      v91 = *(v3 + 24);
      v92 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
      swift_beginAccess();
      v94 = v225;
      v93 = v226;
      v222 = *(v225 + 16);
      (v222)(v226, v91 + v92, v5);

      v95 = v227;
      Date.timeIntervalSince(_:)();
      v97 = v96;
      v215 = *(v94 + 8);
      (v215)(v93, v5);
      swift_beginAccess();
      *(v91 + 40) = v97 + *(v91 + 40);
      swift_beginAccess();
      v209 = *(v94 + 24);
      (v209)(v91 + v92, v95, v5);
      swift_endAccess();

      v98 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v99 = v216;
      sub_10001A718(v3 + v98, v216, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v98) = v228(v99, 1, v5);
      sub_1000157F0(v99, &unk_1002D7BD0, &unk_10024A800);
      if (v98 != 1)
      {
        v100 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v101 = v210;
        sub_10001A718(v3 + v100, v210, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v100) = v228(v101, 1, v5);
        sub_1000157F0(v101, &unk_1002D7BD0, &unk_10024A800);
        if (v100 == 1)
        {
          swift_beginAccess();
          v102 = *(v3 + 32);
          if (v102)
          {
            v103 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
            swift_beginAccess();
            v104 = v226;
            (v222)(v226, v102 + v103, v5);

            v105 = v227;
            Date.timeIntervalSince(_:)();
            v107 = v106;
            (v215)(v104, v5);
            swift_beginAccess();
            *(v102 + 40) = v107 + *(v102 + 40);
            swift_beginAccess();
            (v209)(v102 + v103, v105, v5);
            swift_endAccess();
          }
        }
      }
    }

    v108 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
    swift_beginAccess();
    v109 = v223;
    sub_10001A718(v3 + v108, v223, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v108) = v228(v109, 1, v5);
    sub_1000157F0(v109, &unk_1002D7BD0, &unk_10024A800);
    if (v108 != 1)
    {
      swift_beginAccess();
      v110 = *(v3 + 24);
      v111 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
      swift_beginAccess();
      v113 = v225;
      v112 = v226;
      v223 = *(v225 + 16);
      (v223)(v226, v110 + v111, v5);

      v114 = v227;
      Date.timeIntervalSince(_:)();
      v116 = v115;
      v222 = *(v113 + 8);
      (v222)(v112, v5);
      swift_beginAccess();
      *(v110 + 48) = v116 + *(v110 + 48);
      swift_beginAccess();
      v216 = *(v113 + 24);
      (v216)(v110 + v111, v114, v5);
      swift_endAccess();

      v117 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v118 = v217;
      sub_10001A718(v3 + v117, v217, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v117) = v228(v118, 1, v5);
      sub_1000157F0(v118, &unk_1002D7BD0, &unk_10024A800);
      if (v117 != 1)
      {
        v119 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v120 = v211;
        sub_10001A718(v3 + v119, v211, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v119) = v228(v120, 1, v5);
        sub_1000157F0(v120, &unk_1002D7BD0, &unk_10024A800);
        if (v119 == 1)
        {
          swift_beginAccess();
          v121 = *(v3 + 32);
          if (v121)
          {
            v122 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
            swift_beginAccess();
            v123 = v226;
            (v223)(v226, v121 + v122, v5);

            v124 = v227;
            Date.timeIntervalSince(_:)();
            v126 = v125;
            (v222)(v123, v5);
            swift_beginAccess();
            *(v121 + 48) = v126 + *(v121 + 48);
            swift_beginAccess();
            (v216)(v121 + v122, v124, v5);
            swift_endAccess();
          }
        }
      }
    }

    swift_beginAccess();
    v127 = *(v3 + 43);
    v128 = v225;
    v215 = (v225 + 16);
    v216 = (v225 + 8);
    if (v127 == 1)
    {
      swift_beginAccess();
      v129 = *(v3 + 24);
      v130 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v131 = v226;
      v132 = v224;
      v223 = v128[2];
      (v223)(v226, v129 + v130, v224);

      v133 = v227;
      Date.timeIntervalSince(_:)();
      v135 = v134;
      v222 = v128[1];
      (v222)(v131, v132);
      swift_beginAccess();
      *(v129 + 56) = v135 + *(v129 + 56);
      swift_beginAccess();
      v217 = v128[3];
      v219 = v128 + 3;
      (v217)(v129 + v130, v133, v132);
      swift_endAccess();

      v136 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v137 = v218;
      sub_10001A718(v3 + v136, v218, &unk_1002D7BD0, &unk_10024A800);
      v138 = v228;
      LODWORD(v136) = v228(v137, 1, v132);
      sub_1000157F0(v137, &unk_1002D7BD0, &unk_10024A800);
      if (v136 != 1)
      {
        v139 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v140 = v212;
        sub_10001A718(v3 + v139, v212, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v139) = v138(v140, 1, v132);
        sub_1000157F0(v140, &unk_1002D7BD0, &unk_10024A800);
        if (v139 == 1)
        {
          swift_beginAccess();
          v141 = *(v3 + 32);
          if (v141)
          {
            v142 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v143 = v226;
            v144 = v224;
            (v223)(v226, v141 + v142, v224);

            v145 = v227;
            Date.timeIntervalSince(_:)();
            v147 = v146;
            (v222)(v143, v144);
            swift_beginAccess();
            *(v141 + 56) = v147 + *(v141 + 56);
            swift_beginAccess();
            (v217)(v141 + v142, v145, v144);
LABEL_31:
            swift_endAccess();
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v148 = *(v3 + 24);
      v149 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v150 = v226;
      v151 = v224;
      v223 = v128[2];
      (v223)(v226, v148 + v149, v224);

      v152 = v227;
      Date.timeIntervalSince(_:)();
      v154 = v153;
      v222 = v128[1];
      (v222)(v150, v151);
      swift_beginAccess();
      *(v148 + 64) = v154 + *(v148 + 64);
      swift_beginAccess();
      v217 = v128[3];
      v218 = v128 + 3;
      (v217)(v148 + v149, v152, v151);
      swift_endAccess();

      v155 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v156 = v219;
      sub_10001A718(v3 + v155, v219, &unk_1002D7BD0, &unk_10024A800);
      v157 = v228;
      LODWORD(v155) = v228(v156, 1, v151);
      sub_1000157F0(v156, &unk_1002D7BD0, &unk_10024A800);
      if (v155 != 1)
      {
        v158 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v159 = v213;
        sub_10001A718(v3 + v158, v213, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v158) = v157(v159, 1, v151);
        sub_1000157F0(v159, &unk_1002D7BD0, &unk_10024A800);
        if (v158 == 1)
        {
          swift_beginAccess();
          v160 = *(v3 + 32);
          if (v160)
          {
            v161 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v162 = v226;
            v163 = v224;
            (v223)(v226, v160 + v161, v224);

            v164 = v227;
            Date.timeIntervalSince(_:)();
            v166 = v165;
            (v222)(v162, v163);
            swift_beginAccess();
            *(v160 + 64) = v166 + *(v160 + 64);
            swift_beginAccess();
            (v217)(v160 + v161, v164, v163);
            goto LABEL_31;
          }
        }
      }
    }

    swift_beginAccess();
    if (*(v3 + 40) == 1)
    {
      swift_beginAccess();
      v167 = *(v3 + 24);
      v168 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v169 = v226;
      v170 = v224;
      (v223)(v226, v167 + v168, v224);

      v171 = v227;
      Date.timeIntervalSince(_:)();
      v173 = v172;
      (v222)(v169, v170);
      swift_beginAccess();
      *(v167 + 72) = v173 + *(v167 + 72);
      swift_beginAccess();
      v174 = v170;
      (v217)(v167 + v168, v171, v170);
      swift_endAccess();

      v175 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v176 = v220;
      sub_10001A718(v3 + v175, v220, &unk_1002D7BD0, &unk_10024A800);
      v177 = v228;
      LODWORD(v175) = v228(v176, 1, v174);
      sub_1000157F0(v176, &unk_1002D7BD0, &unk_10024A800);
      if (v175 == 1)
      {
        goto LABEL_42;
      }

      v178 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
      swift_beginAccess();
      v179 = v214;
      sub_10001A718(v3 + v178, v214, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v178) = v177(v179, 1, v174);
      sub_1000157F0(v179, &unk_1002D7BD0, &unk_10024A800);
      if (v178 != 1)
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v180 = *(v3 + 32);
      if (!v180)
      {
        goto LABEL_42;
      }

      v181 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v182 = v226;
      (v223)(v226, v180 + v181, v174);

      v183 = v227;
      Date.timeIntervalSince(_:)();
      v185 = v184;
      (v222)(v182, v174);
      swift_beginAccess();
      *(v180 + 72) = v185 + *(v180 + 72);
    }

    else
    {
      swift_beginAccess();
      v186 = *(v3 + 24);
      v187 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v188 = v226;
      v189 = v224;
      (v223)(v226, v186 + v187, v224);

      v190 = v227;
      Date.timeIntervalSince(_:)();
      v192 = v191;
      (v222)(v188, v189);
      swift_beginAccess();
      *(v186 + 80) = v192 + *(v186 + 80);
      swift_beginAccess();
      v174 = v189;
      (v217)(v186 + v187, v190, v189);
      swift_endAccess();

      v193 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v194 = v221;
      sub_10001A718(v3 + v193, v221, &unk_1002D7BD0, &unk_10024A800);
      v195 = v228;
      LODWORD(v193) = v228(v194, 1, v174);
      sub_1000157F0(v194, &unk_1002D7BD0, &unk_10024A800);
      if (v193 == 1)
      {
        goto LABEL_42;
      }

      v196 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
      swift_beginAccess();
      v197 = v207;
      sub_10001A718(v3 + v196, v207, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v196) = v195(v197, 1, v174);
      sub_1000157F0(v197, &unk_1002D7BD0, &unk_10024A800);
      if (v196 != 1)
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v180 = *(v3 + 32);
      if (!v180)
      {
        goto LABEL_42;
      }

      v181 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v198 = v226;
      (v223)(v226, v180 + v181, v174);

      v183 = v227;
      Date.timeIntervalSince(_:)();
      v200 = v199;
      (v222)(v198, v174);
      swift_beginAccess();
      *(v180 + 80) = v200 + *(v180 + 80);
    }

    swift_beginAccess();
    (v217)(v180 + v181, v183, v174);
    swift_endAccess();

LABEL_42:
    swift_beginAccess();
    if (*(v3 + 44) == 3)
    {
      *(v3 + 44) = v208;
    }
  }
}

uint64_t sub_1001C28F8()
{

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation, &unk_1002D7BD0, &unk_10024A800);
  return v0;
}

uint64_t sub_1001C2A20()
{
  sub_1001C28F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001C2A90(void (*a1)(void))
{
  v2 = swift_allocObject();
  a1();
  return v2;
}

uint64_t sub_1001C2AD0()
{
  v1 = v0;
  *(v0 + 16) = 0x4072C00000000000;
  type metadata accessor for RegistrationTimeCounter(0);
  v2 = swift_allocObject();
  sub_1001BE4C8(v2);
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 44) = 3;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v3 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation) = 0;
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation) = 0;
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state) = 0;
  return v1;
}

uint64_t sub_1001C2CB4()
{
  v1 = 0x6574616C756D6973;
  if (*v0 != 1)
  {
    v1 = 0x64656E69626D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1818322290;
  }
}

unint64_t sub_1001C2D0C()
{
  v1 = 0x76614E207370614DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1001C2D8C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_1001C2DD4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_1001C2E1C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrivateServicePrediction.predictedStartTime.getter();
  v6 = static Date.< infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void *sub_1001C2F00(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for PrivateServicePrediction();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D5FA0(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1001D5FA0((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

void *sub_1001C31D0()
{
  v1 = v0;
  v39 = type metadata accessor for PrivateServicePrediction();
  v45 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InternalServicePrediction(0);
  v44 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v42 = &v37 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  result = (*((swift_isaMask & *v0) + 0x148))(v8);
  v12 = result[2];
  v13 = _swiftEmptyArrayStorage;
  v40 = v0;
  v41 = v12;
  if (v12)
  {
    v14 = 0;
    while (v14 < result[2])
    {
      v15 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v16 = result;
      v17 = *(v44 + 72);
      sub_1001DC504(result + v15 + v17 * v14, v10, type metadata accessor for InternalServicePrediction);
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      (*((swift_isaMask & *v1) + 0x238))(v47, isCurrentExecutor);
      v19 = sub_100162F14(v47);

      if (v19)
      {
        sub_1001DC56C(v10, v42, type metadata accessor for InternalServicePrediction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BBCAC(0, v13[2] + 1, 1);
          v13 = v46;
        }

        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          sub_1001BBCAC((v21 > 1), v22 + 1, 1);
          v13 = v46;
        }

        v13[2] = v22 + 1;
        sub_1001DC56C(v42, v13 + v15 + v22 * v17, type metadata accessor for InternalServicePrediction);
        v1 = v40;
      }

      else
      {
        sub_1001DE088(v10, type metadata accessor for InternalServicePrediction);
      }

      ++v14;
      result = v16;
      if (v41 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v23 = v13[2];
    if (v23)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_1001D5FA0(0, v23, 0);
      v24 = v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v44 = *(v44 + 72);
      v25 = v46;
      v26 = (v45 + 16);
      v42 = v45 + 32;
      v28 = v38;
      v27 = v39;
      do
      {
        v29 = v43;
        sub_1001DC504(v24, v43, type metadata accessor for InternalServicePrediction);
        (*v26)(v28, v29, v27);
        sub_1001DE088(v29, type metadata accessor for InternalServicePrediction);
        v46 = v25;
        v31 = v25[2];
        v30 = v25[3];
        if (v31 >= v30 >> 1)
        {
          sub_1001D5FA0((v30 > 1), v31 + 1, 1);
          v27 = v39;
          v25 = v46;
        }

        v25[2] = v31 + 1;
        (*(v45 + 32))(v25 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31, v28, v27);
        v24 += v44;
        --v23;
      }

      while (v23);
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v46 = v25;
    v33 = v40;
    v34 = *((swift_isaMask & *v40) + 0x158);
    if ((v34)(v32) == 1)
    {

      return (*((swift_isaMask & *v33) + 0x170))(v35);
    }

    else if (v34() == 2)
    {
      v36 = (*((swift_isaMask & *v33) + 0x170))();
      sub_1000046B8(v36, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction, &type metadata accessor for PrivateServicePrediction);
      return v46;
    }

    return v25;
  }

  return result;
}

void *sub_1001C37EC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for PrivateServicePrediction();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_1001D5FA0(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for WIS.SimulatedPredictionItem() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_1001D5FA0((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3AEC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 200) = a1;
}

void *sub_1001C3B84(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x170))();
  v5[2] = a1;
  return sub_1001C2F00(sub_1001DFBD0, v5, v3);
}

uint64_t sub_1001C3C50(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;
}

void *sub_1001C3FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t sub_1001C408C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;
}

id sub_1001C420C()
{
  v0 = [objc_allocWithZone(type metadata accessor for ServicePredictionRegistrationAdaptor()) init];
  [*&v0[OBJC_IVAR____TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor_relayAdaptor] setDelegate:v0];
  v1 = v0;
  v2 = sub_100167E18();
  sub_1001654A8(v2, v6);
  XPCEventPublisher.Token.rawValue.getter();
  type metadata accessor for ServicePredictionController();
  v3 = swift_allocObject();
  v4 = sub_1001DC800(v1, sub_1001C42E0, 0, v6, v3);

  return v4;
}

id sub_1001C42E0()
{
  v0 = [objc_opt_self() getSharedInstance];
  v1 = [v0 locationController];

  return v1;
}

uint64_t sub_1001C4340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a2, a3, a4, a5, a6, v7, ObjectType);

  return v16;
}

uint64_t sub_1001C43CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1001C43F0, 0, 0);
}

uint64_t sub_1001C43F0()
{
  v1 = *(v0 + 32);
  [(*(v0 + 16))() addDelegate:v1];
  swift_unknownObjectRelease();
  v2 = *(v1 + 136);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = ((swift_isaMask & *v2) + 248) & 0xFFFFFFFFFFFFLL | 0x5958000000000000;
    *(v0 + 56) = *((swift_isaMask & *v2) + 0xF8);
    *(v0 + 64) = v3;
    v4 = sub_1001C44F0;
  }

  else
  {
    v2 = *(*(v0 + 32) + 144);
    *(v0 + 72) = v2;
    v5 = *v2 + 608;
    *(v0 + 80) = *v5;
    *(v0 + 88) = v5 & 0xFFFFFFFFFFFFLL | 0x92C4000000000000;
    v4 = sub_1001C45B0;
  }

  return _swift_task_switch(v4, v2, 0);
}

uint64_t sub_1001C44F0()
{
  (*(v0 + 56))(*(v0 + 32), &off_1002B7A80);

  return _swift_task_switch(sub_1001C4568, 0, 0);
}

uint64_t sub_1001C4568()
{
  v1 = *(v0[4] + 144);
  v0[9] = v1;
  v2 = *v1 + 608;
  v0[10] = *v2;
  v0[11] = v2 & 0xFFFFFFFFFFFFLL | 0x92C4000000000000;
  return _swift_task_switch(sub_1001C45B0, v1, 0);
}

uint64_t sub_1001C45B0()
{
  v1 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 32), &off_1002B7A50);
  v2 = *v1 + 704;
  *(v0 + 96) = *v2;
  *(v0 + 104) = v2 & 0xFFFFFFFFFFFFLL | 0xB38D000000000000;

  return _swift_task_switch(sub_1001C464C, v1, 0);
}

uint64_t sub_1001C464C()
{
  (*(v0 + 96))();

  return _swift_task_switch(sub_1001C46B8, 0, 0);
}

uint64_t sub_1001C46B8()
{
  v1 = *(v0 + 32);
  [*(v0 + 40) triggerAirplaneModeActiveFetch];
  v2 = ((swift_isaMask & *v1) + 616) & 0xFFFFFFFFFFFFLL | 0x9CE0000000000000;
  *(v0 + 112) = *((swift_isaMask & *v1) + 0x268);
  *(v0 + 120) = v2;

  return _swift_task_switch(sub_1001C475C, v1, 0);
}

uint64_t sub_1001C475C()
{
  (*(v0 + 112))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001A718(a3, v25 - v10, &qword_1002D7180, &qword_10024ABF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100164A3C(&qword_1002D8230, &qword_10024D510);
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

      sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

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

  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100164A3C(&qword_1002D8230, &qword_10024D510);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001C4AD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = (*((swift_isaMask & *v0) + 0x278))(v3);
  v7 = (*((swift_isaMask & *v0) + 0x150))(v6);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = ObjectType;
  sub_100176B80(0, 0, v5, &unk_10024C710, v9);
}

uint64_t sub_1001C4C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PrivateServicePrediction();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for ServicePrediction();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for WIS.XPC.ServicePredictionUpdate();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate();
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C4E98, 0, 0);
}

uint64_t sub_1001C4E98()
{
  sub_100003E50(&off_1002B7A38, v0[18]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[2];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "sending predictions %ld", v5, 0xCu);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v6 = sub_1000CE644();
  v0[19] = v6;
  if (v6)
  {

    WIS.XPC.PrivateServicePredictionUpdate.init(predictions:)();
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_1001C529C;
    v8 = v0[15];

    return sub_100168EA8(v8);
  }

  else
  {
    v10 = sub_1000CE644();
    v0[21] = v10;
    if (v10)
    {
      v11 = v0[2];
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v0[8];
        v14 = v0[5];
        sub_1001D5FE4(0, v12, 0);
        v15 = *(v14 + 16);
        v14 += 16;
        v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v28 = *(v14 + 56);
        v29 = v15;
        v17 = (v14 - 8);
        do
        {
          v18 = v0[9];
          v19 = v0[6];
          v20 = v0[4];
          v29(v19, v16, v20);
          sub_1001C5880(v18);
          (*v17)(v19, v20);
          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            sub_1001D5FE4((v21 > 1), v22 + 1, 1);
          }

          v23 = v0[9];
          v24 = v0[7];
          _swiftEmptyArrayStorage[2] = v22 + 1;
          (*(v13 + 32))(_swiftEmptyArrayStorage + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v23, v24);
          v16 += v28;
          --v12;
        }

        while (v12);
      }

      WIS.XPC.ServicePredictionUpdate.init(predictions:)();
      v25 = swift_task_alloc();
      v0[22] = v25;
      *v25 = v0;
      v25[1] = sub_1001C5690;
      v26 = v0[12];

      return sub_100168C64(v26);
    }

    else
    {

      v27 = v0[1];

      return v27();
    }
  }
}

uint64_t sub_1001C529C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1001C540C, 0, 0);
}

uint64_t sub_1001C540C()
{
  v1 = sub_1000CE644();
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[2];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[8];
      v5 = v0[5];
      sub_1001D5FE4(0, v3, 0);
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v20 = *(v5 + 56);
      v21 = v6;
      v8 = (v5 - 8);
      do
      {
        v9 = v0[9];
        v10 = v0[6];
        v11 = v0[4];
        v21(v10, v7, v11);
        sub_1001C5880(v9);
        (*v8)(v10, v11);
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001D5FE4((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[9];
        v15 = v0[7];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
        v7 += v20;
        --v3;
      }

      while (v3);
    }

    WIS.XPC.ServicePredictionUpdate.init(predictions:)();
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_1001C5690;
    v17 = v0[12];

    return sub_100168C64(v17);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1001C5690()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1001C5880@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2 - 8);
  v88 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ServicePrediction.ConfidenceScore();
  v87 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v86 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v74 - v6;
  v78 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ServicePrediction.Confidence();
  v84 = *(v79 - 8);
  v9 = __chkstk_darwin(v79);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v81 = &v74 - v12;
  v13 = __chkstk_darwin(v11);
  v80 = &v74 - v14;
  v15 = __chkstk_darwin(v13);
  v94 = &v74 - v16;
  v17 = __chkstk_darwin(v15);
  v96 = &v74 - v18;
  __chkstk_darwin(v17);
  v95 = &v74 - v19;
  v20 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ServicePrediction.Impact();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v76 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v74 - v28;
  v30 = enum case for ServicePrediction.Impact.high(_:);
  v74 = *(v25 + 104);
  v74(&v74 - v28, enum case for ServicePrediction.Impact.high(_:), v24);
  v93 = v1;
  PrivateServicePrediction.type.getter();
  v31 = (*(v21 + 88))(v23, v20);
  v91 = v25;
  if (v31 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    v75 = *(v25 + 8);
    v75(v29, v24);
    v32 = v24;
  }

  else
  {
    if (v31 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
    {
      v32 = v24;
      v75 = *(v91 + 8);
      v75(v29, v24);
      v33 = &enum case for ServicePrediction.Impact.medium(_:);
    }

    else
    {
      if (v31 != enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v32 = v24;
      v75 = *(v91 + 8);
      v75(v29, v24);
      v33 = &enum case for ServicePrediction.Impact.low(_:);
    }

    v30 = *v33;
  }

  v92 = v29;
  v74(v29, v30, v32);
  static ServicePrediction.QuantizedInterval.minimal.getter();
  PrivateServicePrediction.predictedDuration.getter();
  v35 = v34;
  static ServicePrediction.QuantizedInterval.medium.getter();
  v82 = v32;
  if (v36 * 1.3 >= v35)
  {
    PrivateServicePrediction.predictedDuration.getter();
    v42 = v41;
    static ServicePrediction.QuantizedInterval.short.getter();
    v37 = v84;
    v38 = v78;
    v39 = v79;
    v40 = v77;
    if (v43 >= v42)
    {
      PrivateServicePrediction.predictedDuration.getter();
      v45 = v44;
      static ServicePrediction.QuantizedInterval.minimal.getter();
      if (v46 < v45)
      {
        static ServicePrediction.QuantizedInterval.short.getter();
      }
    }

    else
    {
      static ServicePrediction.QuantizedInterval.medium.getter();
    }
  }

  else
  {
    static ServicePrediction.QuantizedInterval.long.getter();
    v37 = v84;
    v38 = v78;
    v39 = v79;
    v40 = v77;
  }

  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
  v48 = v47;
  v49 = *(v40 + 8);
  v49(v8, v38);
  if (v48 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
    v52 = v51;
    v49(v8, v38);
    v50 = v37[13];
    if (v52 <= 0.3)
    {
      v53 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v53 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v50(v95, *v53, v39);
  }

  else
  {
    v50 = v37[13];
    v50(v95, enum case for ServicePrediction.Confidence.high(_:), v39);
  }

  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.startTimeConfidence.getter();
  v55 = v54;
  v49(v8, v38);
  if (v55 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.startTimeConfidence.getter();
    v58 = v57;
    v49(v8, v38);
    if (v58 <= 0.3)
    {
      v59 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v59 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v56 = *v59;
  }

  else
  {
    v56 = enum case for ServicePrediction.Confidence.high(_:);
  }

  v50(v96, v56, v39);
  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.durationConfidence.getter();
  v61 = v60;
  v49(v8, v38);
  if (v61 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.durationConfidence.getter();
    v64 = v63;
    v49(v8, v38);
    if (v64 <= 0.3)
    {
      v65 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v65 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v62 = *v65;
  }

  else
  {
    v62 = enum case for ServicePrediction.Confidence.high(_:);
  }

  v66 = v94;
  v50(v94, v62, v39);
  v67 = v37[2];
  v67(v80, v95, v39);
  v67(v81, v96, v39);
  v67(v83, v66, v39);
  v68 = v85;
  ServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
  v69 = v82;
  (*(v91 + 16))(v76, v92, v82);
  PrivateServicePrediction.predictedStartTime.getter();
  v70 = v87;
  v71 = v89;
  (*(v87 + 16))(v86, v68, v89);
  ServicePrediction.init(impact:predictedStartTime:predictedInterval:confidenceScore:)();
  (*(v70 + 8))(v68, v71);
  v72 = v37[1];
  v72(v94, v39);
  v72(v96, v39);
  v72(v95, v39);
  return (v75)(v92, v69);
}

void *sub_1001C6270(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[36];
  v8 = v1[37];
  sub_100014E1C(v1 + 33, v7);
  (*(v8 + 8))(v7, v8);
  v12 = v6;

  v9 = sub_1000043BC(sub_1001DD494, v11, a1);
  (*(v4 + 8))(v6, v3);
  return v9;
}

BOOL sub_1001C63AC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  PrivateServicePrediction.predictedStartTime.getter();
  PrivateServicePrediction.predictedDuration.getter();
  Date.addingTimeInterval(_:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = static Date.< infix(_:_:)();
  v9(v8, v2);
  return (v10 & 1) == 0;
}

uint64_t sub_1001C64D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  if ((*((swift_isaMask & *v0) + 0x190))(v3))
  {
  }

  else
  {
    static TaskPriority.background.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v9[5] = ObjectType;
    sub_1001C6A50(0, 0, v5, &unk_10024C720, v9);
    sub_1000157F0(v5, &qword_1002D7180, &qword_10024ABF0);
    v10 = *((swift_isaMask & *v0) + 0x198);

    v10(v11);
  }
}

uint64_t sub_1001C66F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C67BC, 0, 0);
}

uint64_t sub_1001C67BC()
{
  swift_beginAccess();
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v0[11] = Strong) == 0))
  {
LABEL_7:

    v9 = v0[1];

    return v9();
  }

  v2 = Strong;
  sleep(0x3Cu);
  if (static Task<>.isCancelled.getter())
  {
    sub_100003E50(&off_1002B7A38, v0[10]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "expired prediction remover cancelled", v5, 2u);
    }

    v6 = v0[10];
    v7 = v0[7];
    v8 = v0[8];

    (*(v8 + 8))(v6, v7);
    goto LABEL_7;
  }

  sub_100003E50(&off_1002B7A38, v0[9]);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Check for expired", v13, 2u);
  }

  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  (*(v15 + 8))(v14, v16);
  v17 = ((swift_isaMask & *v2) + 624) & 0xFFFFFFFFFFFFLL | 0x585F000000000000;
  v0[12] = *((swift_isaMask & *v2) + 0x270);
  v0[13] = v17;

  return _swift_task_switch(sub_100003F50, v2, 0);
}

uint64_t sub_1001C6A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001A718(a3, v25 - v10, &qword_1002D7180, &qword_10024ABF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001C6D10(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v2[51] = *(type metadata accessor for InternalServicePrediction(0) - 8);
  v2[52] = swift_task_alloc();
  sub_100164A3C(&qword_1002D7BE0, &qword_10024C730);
  v2[53] = swift_task_alloc();
  v3 = type metadata accessor for PrivateServicePrediction();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v4 = swift_isaMask & *v1;
  v2[60] = *(v4 + 0x238);
  v2[61] = (v4 + 568) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;

  return _swift_task_switch(sub_1001C6EC8, v1, 0);
}

uint64_t sub_1001C6EC8()
{
  (*(v0 + 480))();

  return _swift_task_switch(sub_1001C6F38, 0, 0);
}

uint64_t sub_1001C6F38()
{
  v47 = v0;
  v1 = (v0 + 2);
  v2 = v0[49];
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    v6 = v0[55];
    v43 = v2 & 0xFFFFFFFFFFFFFF8;
    v45 = v2 & 0xC000000000000001;
    v40 = v0[49] + 32;
    v42 = (v6 + 48);
    v37 = v6;
    v38 = v1;
    v7 = (v6 + 32);
    do
    {
      if (v45)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v40 + 8 * v5);
        swift_unknownObjectRetain();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v9 = v4;
      v11 = v0[53];
      v10 = v0[54];
      v46 = v8;
      sub_1001C74C0(&v46, v1, v11);
      swift_unknownObjectRelease();
      if ((*v42)(v11, 1, v10) == 1)
      {
        sub_1000157F0(v0[53], &qword_1002D7BE0, &qword_10024C730);
        v4 = v9;
      }

      else
      {
        v13 = v0[58];
        v12 = v0[59];
        v14 = v0[54];
        v15 = *v7;
        (*v7)(v12, v0[53], v14);
        v15(v13, v12, v14);
        v4 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100005380(0, v9[2] + 1, 1, v9, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
        }

        v17 = v4[2];
        v16 = v4[3];
        if (v17 >= v16 >> 1)
        {
          v4 = sub_100005380((v16 > 1), v17 + 1, 1, v4, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
        }

        v18 = v0[58];
        v19 = v0[54];
        v4[2] = v17 + 1;
        v15(v4 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v17, v18, v19);
        v1 = v38;
      }

      ++v5;
    }

    while (v2 != v3);
  }

  v20 = v4[2];
  if (v20)
  {
    v21 = v0[55];
    v44 = v0[51];
    v46 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v20, 0);
    v22 = v46;
    v23 = *(v21 + 16);
    v21 += 16;
    v24 = v4 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v41 = *(v21 + 56);
    v39 = (v21 - 8);
    v25 = v23;
    do
    {
      v27 = v0[56];
      v26 = v0[57];
      v28 = v0[54];
      v29 = v0[52];
      v25(v26, v24, v28);
      v25(v27, v26, v28);
      v30 = static xpc_event_publisher_action_t.add.getter();
      sub_100162DE0(v27, 0, 0, 0, 0, 1, 0, 1, v29, 0, 1, 0, 0, v30 & 1);
      (*v39)(v26, v28);
      v46 = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001BBCAC((v31 > 1), v32 + 1, 1);
        v22 = v46;
      }

      v33 = v0[52];
      v22[2] = v32 + 1;
      sub_1001DC56C(v33, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32, type metadata accessor for InternalServicePrediction);
      v24 += v41;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v0[62] = v22;
  v34 = v0[50];
  v35 = ((swift_isaMask & *v34) + 648) & 0xFFFFFFFFFFFFLL | 0xF9F1000000000000;
  v0[63] = *((swift_isaMask & *v34) + 0x288);
  v0[64] = v35;

  return _swift_task_switch(sub_1001C73F4, v34, 0);
}

uint64_t sub_1001C73F4()
{
  (*(v0 + 504))(*(v0 + 496), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C74C0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v6 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  __chkstk_darwin(v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v55 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v53 - v12;
  v13 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = [swift_unknownObjectRetain() numPrevPredictions];
    v24 = *(a2 + 24);
    if ((v24 & 0x8000000000000000) != 0 || v24 < v23)
    {
      [v20 confidenceAnomaly];
      if (*(a2 + 32) < v25)
      {
        [v20 confidenceTimeUntilAnomaly];
        if (*(a2 + 40) < v26)
        {
          [v20 confidenceDuration];
          if (*(a2 + 48) < v27)
          {
            (*(v17 + 104))(v19, enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:), v16);
            (*(v54 + 104))(v15, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v13);
            v28 = [v22 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v22 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v55 + 8))(v11, v8);
            [v22 predictedDuration];
            [v22 confidenceAnomaly];
            [v22 confidenceTimeUntilAnomaly];
            [v22 confidenceDuration];
LABEL_23:
            PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
            v46 = v58;
            PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
            swift_unknownObjectRelease();
            v47 = type metadata accessor for PrivateServicePrediction();
            return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
          }
        }
      }
    }

    goto LABEL_24;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = [swift_unknownObjectRetain() numPrevPredictions];
    v32 = *(a2 + 64);
    if ((v32 & 0x8000000000000000) != 0 || v32 < v31)
    {
      [v20 confidenceAnomaly];
      if (*(a2 + 72) < v33)
      {
        [v20 confidenceTimeUntilAnomaly];
        if (*(a2 + 80) < v34)
        {
          [v20 confidenceDuration];
          if (*(a2 + 88) < v35)
          {
            (*(v17 + 104))(v19, enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:), v16);
            (*(v54 + 104))(v15, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v13);
            v36 = v30;
            v37 = [v30 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v36 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v55 + 8))(v11, v8);
            [v36 predictedDuration];
            [v36 confidenceAnomaly];
LABEL_22:
            [v36 confidenceTimeUntilAnomaly];
            [v36 confidenceDuration];
            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_24;
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v40 = [swift_unknownObjectRetain() numPrevPredictions];
    v41 = *(a2 + 104);
    if ((v41 & 0x8000000000000000) != 0 || v41 < v40)
    {
      [v20 confidenceAnomaly];
      if (*(a2 + 112) < v42)
      {
        [v20 confidenceTimeUntilAnomaly];
        if (*(a2 + 120) < v43)
        {
          [v20 confidenceDuration];
          if (*(a2 + 128) < v44)
          {
            (*(v17 + 104))(v19, enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:), v16);
            (*(v54 + 104))(v15, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v13);
            v36 = v39;
            v45 = [v39 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v36 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v55 + 8))(v11, v8);
            [v36 predictedDuration];
            [v36 confidenceAnomaly];
            goto LABEL_22;
          }
        }
      }
    }

LABEL_24:
    swift_unknownObjectRelease();
  }

  v49 = type metadata accessor for PrivateServicePrediction();
  v50 = *(*(v49 - 8) + 56);
  v51 = v49;
  v52 = v58;

  return v50(v52, 1, 1, v51);
}

uint64_t sub_1001C7CB0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v9);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v12 = 136315394;
    v49 = v4;
    v48 = v6;
    if (v4)
    {
      if (v4 == 1)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v13 = 0x76614E207370614DLL;
      }

      if (v4 == 1)
      {
        v14 = 0x800000010025DCF0;
      }

      else
      {
        v14 = 0xEF6E6F6974616769;
      }
    }

    else
    {
      v14 = 0x800000010025DD10;
      v13 = 0xD000000000000014;
    }

    v16 = sub_10017A8A8(v13, v14, v51);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    type metadata accessor for InternalServicePrediction(0);
    v17 = Array.description.getter();
    v4 = sub_10017A8A8(v17, v18, v51);

    *(v12 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received %s predictions %s", v12, 0x16u);
    swift_arrayDestroy();

    v15 = (*(v7 + 8))(v9, v48);
    LOBYTE(v4) = v49;
  }

  else
  {

    v15 = (*(v7 + 8))(v9, v6);
  }

  if (!v4)
  {
    v27 = *((swift_isaMask & *v3) + 0xF8);
    v28 = v27(v15);
    sub_1001DD55C(0, v28, a1, v51);

    v30 = v27(v29);
    v31 = sub_1001DDD40(v30);

    v33 = sub_1001DDD40(v32);

    if (*(v33 + 16) <= v31[2] >> 3)
    {
      v50[0] = v31;
      sub_1001D69EC(v33);

      v26 = v50[0];
    }

    else
    {
      v26 = sub_1001D6BF4(v33, v31);
    }

    v39 = (*((swift_isaMask & *v3) + 0x260))(a1);
    (*((swift_isaMask & *v3) + 0x100))(v39);
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    v19 = *((swift_isaMask & *v3) + 0x110);
    v20 = v19(v15);
    sub_1001DD55C(1, v20, a1, v51);

    v22 = v19(v21);
    v23 = sub_1001DDD40(v22);

    v25 = sub_1001DDD40(v24);

    if (*(v25 + 16) <= v23[2] >> 3)
    {
      v50[0] = v23;
      sub_1001D69EC(v25);

      v26 = v50[0];
    }

    else
    {
      v26 = sub_1001D6BF4(v25, v23);
    }

    v38 = (*((swift_isaMask & *v3) + 0x260))(a1);
    (*((swift_isaMask & *v3) + 0x118))(v38);
LABEL_24:
    v40 = v3[22];
    v41 = v3[23];
    sub_100014E1C(v3 + 19, v40);
    v50[3] = &_s31ServicePredictionDidUpdateEventVN;
    v50[4] = &off_1002B7AF0;
    v42 = swift_allocObject();
    v50[0] = v42;
    v43 = v51[1];
    *(v42 + 16) = v51[0];
    *(v42 + 32) = v43;
    *(v42 + 48) = v51[2];
    *(v42 + 64) = v52;
    (*(v41 + 8))(0xD000000000000033, 0x800000010025DB90, v50, v40, v41);
    v44 = sub_100164B98(v50);
    goto LABEL_27;
  }

  v34 = (*((swift_isaMask & *v3) + 0x128))(v15);
  v35 = sub_1001DDD40(v34);

  v37 = sub_1001DDD40(v36);

  if (*(v37 + 16) <= v35[2] >> 3)
  {
    *&v51[0] = v35;
    sub_1001D69EC(v37);

    v26 = *&v51[0];
  }

  else
  {
    v26 = sub_1001D6BF4(v37, v35);
  }

  v45 = (*((swift_isaMask & *v3) + 0x260))(a1);
  v44 = (*((swift_isaMask & *v3) + 0x130))(v45);
LABEL_27:
  (*((swift_isaMask & *v3) + 0x2B0))(v44);
  (*((swift_isaMask & *v3) + 0x2C0))(v26);

  return (*((swift_isaMask & *v3) + 0x258))(v46);
}

uint64_t sub_1001C8488(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C84A8, v1, 0);
}

uint64_t sub_1001C84A8()
{
  (*((swift_isaMask & **(v0 + 24)) + 0x288))(*(v0 + 16), 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C8544(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C8564, v1, 0);
}

uint64_t sub_1001C8564()
{
  v1 = *(v0[3] + 304);
  v0[4] = v1;

  v0[5] = sub_1001DDED4(v2);

  v3 = *v1 + 552;
  v0[6] = *v3;
  v0[7] = v3 & 0xFFFFFFFFFFFFLL | 0x67F6000000000000;

  return _swift_task_switch(sub_1001C860C, v1, 0);
}

uint64_t sub_1001C860C()
{
  (*(v0 + 48))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C867C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C869C, v1, 0);
}

uint64_t sub_1001C869C()
{
  (*((swift_isaMask & **(v0 + 24)) + 0x288))(*(v0 + 16), 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C8738(int *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v208 = *(v4 - 8);
  v209 = v4;
  __chkstk_darwin(v4);
  v207 = &v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v205 = *(v6 - 8);
  __chkstk_darwin(v6);
  v220 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s30ServicePredictionEventAccuracyVMa(0);
  __chkstk_darwin(v8);
  v10 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v12 = __chkstk_darwin(v11 - 8);
  v191 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v216 = &v185 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v214 = v15;
  v215 = v16;
  v17 = __chkstk_darwin(v15);
  v190 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v210 = &v185 - v20;
  v21 = __chkstk_darwin(v19);
  v193 = &v185 - v22;
  __chkstk_darwin(v21);
  v24 = &v185 - v23;
  v25 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v223 = *(v25 - 8);
  v224 = v25;
  v26 = __chkstk_darwin(v25);
  v219 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v185 - v29;
  __chkstk_darwin(v28);
  v32 = &v185 - v31;
  swift_beginAccess();
  v225 = a2;
  v33 = *(a2 + 24);
  v222 = sub_1001BDE54();
  v204 = sub_1001BDF30();
  swift_beginAccess();
  v34 = v33[5];
  swift_beginAccess();
  v35 = 0;
  v218 = 0;
  v36 = v33[6];
  v37 = v34 + v36;
  if (v34 + v36 != 0.0)
  {
    v38 = round(v34 / v37 * 100.0);
    if (v38 <= -9.22337204e18)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v38 >= 9.22337204e18)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v39 = round(v36 / v37 * 100.0);
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_139;
    }

    if (v39 <= -9.22337204e18)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v39 >= 9.22337204e18)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v218 = v38;
    v35 = v39;
  }

  v203 = v35;
  swift_beginAccess();
  v40 = v33[7];
  swift_beginAccess();
  v41 = 0;
  v42 = v40 + v33[8];
  if (v42 != 0.0)
  {
    v43 = round(v40 / v42 * 100.0);
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v43 <= -9.22337204e18)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (v43 >= 9.22337204e18)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v41 = v43;
  }

  v221 = v41;
  swift_beginAccess();
  v44 = v33[9];
  swift_beginAccess();
  v45 = 0;
  v46 = v44 + v33[10];
  if (v46 != 0.0)
  {
    v47 = round(v44 / v46 * 100.0);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v47 <= -9.22337204e18)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v47 >= 9.22337204e18)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v45 = v47;
  }

  v201 = v45;
  PrivateServicePrediction.type.getter();
  v48 = (*(v223 + 88))(v32, v224);
  v202 = v6;
  if (v48 != enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    v50 = v225;
    if (v48 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
    {
      if (v221 > 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      if (__OFSUB__(100, v221))
      {
        goto LABEL_154;
      }

      v226 = v52;
      v200 = 100 - v221;
      swift_beginAccess();
      v53 = *(v50 + 32);
      if (v53)
      {
        swift_beginAccess();
        v54 = *(v53 + 56);
        swift_beginAccess();
        v55 = 0;
        v56 = v54 + *(v53 + 64);
        v30 = v216;
        if (v56 != 0.0)
        {
          v57 = round(v54 / v56 * 100.0);
          if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          if (v57 <= -9.22337204e18)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          if (v57 >= 9.22337204e18)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v55 = v57;
        }

        v58 = __OFSUB__(100, v55);
        v59 = 100 - v55;
        if (v58)
        {
          goto LABEL_167;
        }

        v199 = v59;
        v198 = 0;
        goto LABEL_58;
      }

      v199 = 0;
      v198 = 1;
LABEL_57:
      v30 = v216;
      goto LABEL_58;
    }

    if (v48 != enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
    {
LABEL_175:
      v231[0] = 0;
      v231[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v183._object = 0x800000010025DD90;
      v183._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v183);
      PrivateServicePrediction.type.getter();
      v184 = v224;
      _print_unlocked<A, B>(_:_:)();
      (*(v223 + 8))(v30, v184);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (v218 > 1)
    {
      v60 = 1;
    }

    else
    {
      v60 = 2;
    }

    if (__OFSUB__(100, v218))
    {
      goto LABEL_155;
    }

    v226 = v60;
    v200 = 100 - v218;
    swift_beginAccess();
    v61 = *(v50 + 32);
    if (v61)
    {
      swift_beginAccess();
      v62 = *(v61 + 40);
      swift_beginAccess();
      v63 = 0;
      v64 = v62 + *(v61 + 48);
      v30 = v216;
      if (v64 != 0.0)
      {
        v65 = round(v62 / v64 * 100.0);
        if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (v65 <= -9.22337204e18)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (v65 >= 9.22337204e18)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v63 = v65;
      }

      v58 = __OFSUB__(100, v63);
      v66 = 100 - v63;
      if (v58)
      {
        goto LABEL_168;
      }

      v199 = v66;
      v198 = 0;
      v221 = v218;
      goto LABEL_58;
    }

    v199 = 0;
    v198 = 1;
    v67 = v218;
LABEL_56:
    v221 = v67;
    goto LABEL_57;
  }

  if (v222 > 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = v225;
  if (__OFSUB__(100, v222))
  {
    goto LABEL_132;
  }

  v226 = v49;
  v200 = 100 - v222;
  swift_beginAccess();
  if (!*(v50 + 32))
  {
    v199 = 0;
    v198 = 1;
    v67 = v222;
    goto LABEL_56;
  }

  v51 = sub_1001BDE54();
  v30 = v216;
  if (__OFSUB__(100, v51))
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v199 = 100 - v51;
  v198 = 0;
  v221 = v222;
LABEL_58:
  v68 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  swift_beginAccess();
  v206 = v68;
  v197 = *(v50 + v68);
  v69 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
  v70 = swift_beginAccess();
  if (*(v50 + v69))
  {
LABEL_61:
    v72 = 1;
    goto LABEL_62;
  }

  v71 = (*((swift_isaMask & *v227) + 0x208))(v70);
  if (v71)
  {

    goto LABEL_61;
  }

  v72 = 2;
LABEL_62:
  v196 = v72;
  v73 = type metadata accessor for InternalServicePrediction(0);
  v74 = (a1 + *(v73 + 24));
  v75 = *(v74 + 16);
  v76 = 0.0;
  v213 = a1;
  v217 = v73;
  if (v75)
  {
    v211 = 0;
    v194 = 0;
    v195 = 0;
    v77 = 1;
    v212 = 1;
  }

  else
  {
    v192 = v24;
    v78 = *(v50 + v69);
    v80 = *v74;
    v79 = v74[1];
    v212 = v78 == 0;
    if (v78)
    {
      v81 = objc_allocWithZone(CLLocation);
      v82 = v78;
      v83 = [v81 initWithLatitude:v80 longitude:v79];
      [v83 distanceFromLocation:v82];
      v85 = v84;
      v86 = v84;

      if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v85 <= -9.22337204e18)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v85 >= 9.22337204e18)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v211 = v85;
      (*((swift_isaMask & *v227) + 0x238))(v229);

      if (v85 < *&v229[1])
      {
        v87 = 1;
      }

      else
      {
        v87 = 2;
      }

      v195 = v87;
      v50 = v225;
    }

    else
    {
      v211 = 0;
      v195 = 0;
    }

    v88 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
    swift_beginAccess();
    v89 = *(v50 + v88);
    if (v89)
    {
      v90 = objc_allocWithZone(CLLocation);
      v91 = v89;
      v92 = [v90 initWithLatitude:v80 longitude:v79];
      [v92 distanceFromLocation:v91];
      v94 = v93;
      v95 = v93;

      if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (v94 <= -9.22337204e18)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v94 >= 9.22337204e18)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v211 = v94;
      (*((swift_isaMask & *v227) + 0x238))(v230);
      if (v94 < *&v230[1])
      {
        v96 = 1;
      }

      else
      {
        v96 = 2;
      }

      v194 = v96;
      v97 = v192;
      PrivateServicePrediction.predictedStartTime.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v99 = v98;
      v100 = v214;
      v101 = *(v215 + 8);
      v101(v97, v214);
      v102 = [v91 timestamp];
      v103 = v193;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v105 = v104;

      v106 = v100;
      v30 = v216;
      v101(v103, v106);
      a1 = v213;
      v77 = 0;
      v212 = 0;
      v76 = v99 - v105;
      v50 = v225;
    }

    else
    {
      v194 = 0;
      v77 = 1;
      a1 = v213;
    }

    v73 = v217;
  }

  v107 = (a1 + *(v73 + 28));
  v108 = *(v107 + 8);
  LODWORD(v216) = v77;
  LODWORD(v193) = v108;
  if (v108)
  {
    v192 = 0;
    v109 = v215;
  }

  else
  {
    v110 = *v107 * 100.0;
    v109 = v215;
    if (COERCE__INT64(fabs(v110)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v110 <= -9.22337204e18)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (v110 >= 9.22337204e18)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v192 = v110;
  }

  v111 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
  swift_beginAccess();
  sub_10001A718(v50 + v111, v30, &unk_1002D7BD0, &unk_10024A800);
  v112 = *(v109 + 48);
  v113 = v30;
  v114 = v30;
  v30 = v214;
  if (v112(v113, 1, v214) == 1)
  {
    v115 = sub_1000157F0(v114, &unk_1002D7BD0, &unk_10024A800);
    v116 = 0;
    v117 = 1;
    v118 = v227;
    v30 = v226;
  }

  else
  {
    v215 = *(v109 + 32);
    (v215)(v210, v114, v30);
    v119 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
    swift_beginAccess();
    v120 = v50 + v119;
    v121 = v191;
    sub_10001A718(v120, v191, &unk_1002D7BD0, &unk_10024A800);
    if (v112(v121, 1, v30) == 1)
    {
      (*(v109 + 8))(v210, v30);
      v115 = sub_1000157F0(v121, &unk_1002D7BD0, &unk_10024A800);
      v116 = 0;
      v117 = 1;
      v118 = v227;
      a1 = v213;
    }

    else
    {
      v122 = v190;
      (v215)(v190, v121, v30);
      v123 = v210;
      Date.timeIntervalSince(_:)();
      v125 = v124;
      a1 = v213;
      PrivateServicePrediction.predictedDuration.getter();
      v127 = v126;
      v128 = *(v109 + 8);
      v128(v122, v30);
      v115 = (v128)(v123, v30);
      v129 = v125 / v127 * 100.0;
      v118 = v227;
      if (COERCE__INT64(fabs(v129)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      if (v129 <= -9.22337204e18)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v129 >= 9.22337204e18)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v117 = 0;
      v116 = v129;
    }

    v30 = v226;
    v50 = v225;
  }

  (*((swift_isaMask & *v118) + 0x238))(v231, v115);
  LODWORD(v214) = sub_100162F14(v231);
  v225 = v130;
  v215 = v131;
  LODWORD(v210) = *(v50 + v206);
  swift_beginAccess();
  LODWORD(v206) = *(v50 + 44);
  swift_beginAccess();
  v191 = *(v50 + 48);
  LODWORD(v190) = *(v50 + 56);
  PrivateServicePrediction.source.getter();
  PrivateServicePrediction.type.getter();
  PrivateServicePrediction.predictedDuration.getter();
  v133 = v132;
  if ((*&v132 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_127;
  }

  if (v132 <= -9.22337204e18)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v132 >= 9.22337204e18)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v189 = v117;
  v134 = v207;
  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
  v136 = v135;
  (*(v208 + 8))(v134, v209);
  v137 = v136 * 100.0;
  if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v137 <= -9.22337204e18)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v137 >= 9.22337204e18)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v138 = (a1 + v217[5]);
  v139 = *v138;
  v140 = v138[1];
  v141 = v217[9];
  v142 = a1 + v217[8];
  v208 = *v142;
  v209 = v139;
  LODWORD(v207) = v142[8];
  v143 = a1 + v141;
  v144 = *(a1 + v141);
  v145 = *(v143 + 1);
  v217 = v144;
  swift_beginAccess();
  v146 = *(v50 + 32);
  v188 = v116;
  v213 = v145;
  if (v146)
  {
    swift_beginAccess();
    v147 = v146[9];
    swift_beginAccess();
    v148 = 0;
    v149 = v147 + v146[10];
    if (v149 == 0.0)
    {
LABEL_110:
      v226 = v30;
      v30 = sub_1001BDE54();
      v187 = sub_1001BDF30();
      swift_beginAccess();
      v151 = v146[5];
      swift_beginAccess();
      v152 = v146[6];
      v153 = v151 + v152;
      if (v151 + v152 == 0.0)
      {
        v154 = v140;
        v185 = 0;
        v186 = 0;
LABEL_120:
        v156 = v197;
        v155 = v30;
        LOBYTE(v30) = v226;
        goto LABEL_121;
      }

      v157 = round(v151 / v153 * 100.0);
      if (v157 > -9.22337204e18)
      {
        if (v157 < 9.22337204e18)
        {
          v158 = round(v152 / v153 * 100.0);
          if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v158 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v158 > -9.22337204e18)
            {
              if (v158 < 9.22337204e18)
              {
                v154 = v140;
                v185 = v157;
                v186 = v158;
                goto LABEL_120;
              }

              goto LABEL_166;
            }

LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      goto LABEL_161;
    }

    v150 = round(v147 / v149 * 100.0);
    if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v150 > -9.22337204e18)
      {
        if (v150 >= 9.22337204e18)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v148 = v150;
        goto LABEL_110;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v154 = v140;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v155 = 0;
  v148 = 0;
  v156 = v197;
LABEL_121:
  v159 = v146 == 0;
  if (v156)
  {
    v160 = v30;
  }

  else
  {
    v160 = 3;
  }

  *v10 = v210;
  v10[1] = v206;
  *(v10 + 1) = v191;
  v10[16] = v190;
  (*(v205 + 32))(&v10[v8[7]], v220, v202);
  (*(v223 + 32))(&v10[v8[8]], v219, v224);
  *&v10[v8[9]] = v133;
  v10[v8[10]] = v214 & 1;
  v161 = &v10[v8[11]];
  v162 = v215;
  *v161 = v225;
  v161[1] = v162;
  *&v10[v8[12]] = v137;
  v10[v8[13]] = v160;
  *&v10[v8[14]] = v201;
  *&v10[v8[15]] = v222;
  *&v10[v8[16]] = v204;
  *&v10[v8[17]] = v218;
  *&v10[v8[18]] = v203;
  *&v10[v8[19]] = v200;
  *&v10[v8[20]] = v221;
  LOBYTE(v162) = v195;
  v10[v8[21]] = v196;
  v10[v8[22]] = v162;
  v10[v8[23]] = v194;
  v163 = &v10[v8[24]];
  *v163 = v211;
  v163[8] = v212;
  v164 = &v10[v8[25]];
  v164[8] = v216;
  *v164 = v76;
  v165 = &v10[v8[26]];
  *v165 = v209;
  *(v165 + 1) = v154;
  v166 = &v10[v8[27]];
  *v166 = v192;
  v166[8] = v193;
  v167 = &v10[v8[28]];
  *v167 = v208;
  v167[8] = v207;
  v168 = &v10[v8[29]];
  v169 = v213;
  *v168 = v217;
  v168[1] = v169;
  v170 = &v10[v8[30]];
  *v170 = v148;
  v170[8] = v159;
  v171 = &v10[v8[31]];
  *v171 = v155;
  v171[8] = v159;
  v172 = &v10[v8[32]];
  *v172 = v187;
  v172[8] = v159;
  v173 = &v10[v8[33]];
  v174 = v186;
  *v173 = v185;
  v173[8] = v159;
  v175 = &v10[v8[34]];
  *v175 = v174;
  v175[8] = v159;
  v176 = &v10[v8[35]];
  *v176 = v199;
  v176[8] = v198;
  v177 = &v10[v8[36]];
  *v177 = v188;
  v177[8] = v189;
  v178 = v227[22];
  v179 = v227[23];
  sub_100014E1C(v227 + 19, v178);
  v228[3] = v8;
  v228[4] = &off_1002B7B00;
  v180 = sub_1001B8BDC(v228);
  sub_1001DC504(v10, v180, _s30ServicePredictionEventAccuracyVMa);
  v181 = *(v179 + 8);

  v181(0xD000000000000032, 0x800000010025DBD0, v228, v178, v179);
  sub_1001DE088(v10, _s30ServicePredictionEventAccuracyVMa);
  return sub_100164B98(v228);
}

uint64_t sub_1001C9E8C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for InternalServicePrediction(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*((*((swift_isaMask & *a2) + 0x220))(isCurrentExecutor) + 16))
  {
    sub_1001D6204(a1);
    v13 = v12;

    if (v13)
    {
      return result;
    }
  }

  else
  {
  }

  v31 = v7;
  sub_100003E50(&off_1002B7A38, v10);
  sub_1001DC504(a1, v6, type metadata accessor for InternalServicePrediction);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33[0] = v19;
    *v18 = 136315138;
    sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1001DE088(v6, type metadata accessor for InternalServicePrediction);
    v23 = sub_10017A8A8(v20, v22, v33);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating accuracy tracker for prediction %s", v18, 0xCu);
    sub_100164B98(v19);

    a1 = v30;
  }

  else
  {

    sub_1001DE088(v6, type metadata accessor for InternalServicePrediction);
  }

  (*(v8 + 8))(v10, v31);
  type metadata accessor for ServicePredictionAccuracyCounter(0);
  v24 = swift_allocObject();
  sub_1001C2AD0();
  v25 = (*((swift_isaMask & *a2) + 0x230))(v33);
  v27 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v27;
  *v27 = 0x8000000000000000;
  sub_1001DA2F0(v24, a1, isUniquelyReferenced_nonNull_native);
  *v27 = v32;
  return v25(v33, 0);
}

uint64_t sub_1001CA2B4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v23 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = a3;

  v14 = 0;
  while (v11)
  {
    v26 = v4;
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = v25;
    v19 = *(v25 + 48);
    v20 = type metadata accessor for InternalServicePrediction(0);
    sub_1001DC504(v19 + *(*(v20 - 8) + 72) * v17, v7, type metadata accessor for InternalServicePrediction);
    *&v7[*(v23 + 48)] = *(*(v18 + 56) + 8 * v17);

    v21 = v26;
    v24(v7);
    v4 = v21;
    result = sub_1000157F0(v7, &qword_1002D7BE8, &qword_10024C750);
    if (v21)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v26 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA484(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v263 = a6;
  v264 = a5;
  v269 = a3;
  v270 = a2;
  v265 = a1;
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v8 = __chkstk_darwin(v7 - 8);
  v253 = &v233[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v257 = &v233[-v11];
  v12 = __chkstk_darwin(v10);
  v244 = &v233[-v13];
  v14 = __chkstk_darwin(v12);
  v250 = &v233[-v15];
  v16 = __chkstk_darwin(v14);
  v251 = &v233[-v17];
  __chkstk_darwin(v16);
  v252 = &v233[-v18];
  v260 = type metadata accessor for InternalServicePrediction(0);
  v19 = __chkstk_darwin(v260);
  v256 = &v233[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v248 = &v233[-v22];
  v23 = __chkstk_darwin(v21);
  v242 = &v233[-v24];
  v25 = __chkstk_darwin(v23);
  v240 = &v233[-v26];
  v27 = __chkstk_darwin(v25);
  v241 = &v233[-v28];
  v29 = __chkstk_darwin(v27);
  v246 = &v233[-v30];
  v31 = __chkstk_darwin(v29);
  v245 = &v233[-v32];
  __chkstk_darwin(v31);
  v34 = &v233[-v33];
  v35 = type metadata accessor for Logger();
  v261 = *(v35 - 8);
  v262 = v35;
  v36 = __chkstk_darwin(v35);
  v249 = &v233[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v259 = &v233[-v39];
  v40 = __chkstk_darwin(v38);
  v247 = &v233[-v41];
  v42 = __chkstk_darwin(v40);
  v254 = &v233[-v43];
  v44 = __chkstk_darwin(v42);
  v239 = &v233[-v45];
  v46 = __chkstk_darwin(v44);
  v243 = &v233[-v47];
  v48 = __chkstk_darwin(v46);
  v50 = &v233[-v49];
  v51 = __chkstk_darwin(v48);
  v258 = &v233[-v52];
  __chkstk_darwin(v51);
  v54 = &v233[-v53];
  v55 = type metadata accessor for Date();
  v268 = *(v55 - 8);
  v56 = __chkstk_darwin(v55);
  v267 = &v233[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __chkstk_darwin(v56);
  v60 = &v233[-v59];
  __chkstk_darwin(v58);
  v62 = &v233[-v61];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v255 = a4;
  v63 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  v64 = v270;
  swift_beginAccess();
  v65 = *(v64 + v63);
  v266 = v55;
  if (v65 || (PrivateServicePrediction.predictedStartTime.getter(), sub_1001BCC20(&qword_1002D71E0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date), v66 = dispatch thunk of static Comparable.<= infix(_:_:)(), v237 = *(v268 + 8), v237(v62, v55), (v66 & 1) == 0))
  {
    v76 = v270;
    v77 = v267;
    v78 = v264;
    v79 = v265;
    if (!v264)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100003E50(&off_1002B7A38, v54);
    sub_1001DC504(v265, v34, type metadata accessor for InternalServicePrediction);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    v69 = os_log_type_enabled(v67, v68);
    v238 = v50;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v235 = v70;
      v236 = swift_slowAlloc();
      v273 = v236;
      *v70 = 136315138;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
      v234 = v68;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      sub_1001DE088(v34, type metadata accessor for InternalServicePrediction);
      v74 = sub_10017A8A8(v71, v73, &v273);

      v75 = v235;
      *(v235 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v234, "Starting accuracy tracker for %s", v75, 0xCu);
      sub_100164B98(v236);
    }

    else
    {

      sub_1001DE088(v34, type metadata accessor for InternalServicePrediction);
    }

    v236 = *(v261 + 8);
    (v236)(v54, v262);
    started = PrivateServicePrediction.predictedStartTime.getter();
    v96 = v255;
    v97 = (*((swift_isaMask & *v255) + 0x1D8))(started);
    v98 = (*((swift_isaMask & *v96) + 0x1F0))();
    v99 = (*((swift_isaMask & *v96) + 0x1A8))();
    v100 = (*((swift_isaMask & *v96) + 0x1C0))();
    v76 = v270;
    if (*(v270 + v63))
    {
      v55 = v266;
      v237(v60, v266);
    }

    else
    {
      v101 = v100;
      Date.init()();
      sub_1001BE878(v99, v62);
      v55 = v266;
      LODWORD(v235) = v97;
      v102 = v237;
      v237(v62, v266);
      Date.init()();
      v103 = v101;
      v76 = v270;
      sub_1001BF264(v103, v62);
      v102(v62, v55);
      *(v76 + v63) = 1;
      swift_beginAccess();

      sub_1001BE18C(v60);

      v102(v60, v55);
      swift_beginAccess();
      *(v76 + 40) = v235 & 1;
      swift_beginAccess();
      *(v76 + 43) = v98 & 1;
    }

    v50 = v238;
    v77 = v267;
    v78 = v264;
    v79 = v265;
    v104 = v258;
    if (!v264)
    {
      goto LABEL_23;
    }

    v237 = v264;
    sub_100003E50(&off_1002B7A38, v104);
    v105 = v245;
    sub_1001DC504(v79, v245, type metadata accessor for InternalServicePrediction);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v273 = v235;
      *v108 = 136315138;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
      v109 = v107;
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v50;
      v113 = v112;
      sub_1001DE088(v105, type metadata accessor for InternalServicePrediction);
      v114 = sub_10017A8A8(v110, v113, &v273);
      v50 = v111;
      v78 = v264;

      *(v108 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v106, v109, "Setting start time location for accuracy tracker for %s", v108, 0xCu);
      sub_100164B98(v235);
      v76 = v270;

      v79 = v265;
    }

    else
    {

      sub_1001DE088(v105, type metadata accessor for InternalServicePrediction);
    }

    (v236)(v258, v262);
    v162 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
    swift_beginAccess();
    v163 = *(v76 + v162);
    *(v76 + v162) = v78;
    v164 = v237;

    v165 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
    swift_beginAccess();
    v166 = *(v76 + v165);
    *(v76 + v165) = v78;

    v55 = v266;
    v77 = v267;
  }

  if (*(v76 + v63) == 1)
  {
    v80 = v50;
    v81 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
    swift_beginAccess();
    if (*(v76 + v81))
    {
      v82 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
      swift_beginAccess();
      if (!*(v76 + v82))
      {
        *(v76 + v82) = v78;
        v83 = v78;
      }
    }

    else
    {
      v84 = v78;
      sub_100003E50(&off_1002B7A38, v80);
      v85 = v246;
      sub_1001DC504(v79, v246, type metadata accessor for InternalServicePrediction);
      v238 = v80;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v265 = v88;
        v89 = swift_slowAlloc();
        v273 = v89;
        *v88 = 136315138;
        sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_1001DE088(v85, type metadata accessor for InternalServicePrediction);
        v93 = sub_10017A8A8(v90, v92, &v273);
        v76 = v270;

        v94 = v265;
        *(v265 + 1) = v93;
        _os_log_impl(&_mh_execute_header, v86, v87, "Updating start time location for accuracy tracker for %s", v94, 0xCu);
        sub_100164B98(v89);
        v77 = v267;
      }

      else
      {

        sub_1001DE088(v85, type metadata accessor for InternalServicePrediction);
      }

      (*(v261 + 8))(v238, v262);
      v55 = v266;
      v115 = *(v76 + v81);
      v78 = v264;
      *(v76 + v81) = v264;
    }
  }

LABEL_23:
  PrivateServicePrediction.predictedStartTime.getter();
  PrivateServicePrediction.predictedDuration.getter();
  static Date.+ infix(_:_:)();
  v116 = v79;
  v117 = (v268 + 8);
  v118 = *(v268 + 8);
  (v118)(v62, v55);
  PrivateServicePrediction.predictedStartTime.getter();
  sub_1001BCC20(&qword_1002D71E0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v119 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v265 = v118;
  (v118)(v62, v55);
  v120 = v116;
  if (v119)
  {
    if (v78)
    {
      v121 = (v116 + *(v260 + 24));
      if ((v121[2] & 1) == 0)
      {
        v258 = v117;
        v123 = *v121;
        v122 = v121[1];
        v124 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        v125 = v78;
        v126 = v76 + v124;
        v127 = v252;
        sub_10001A718(v126, v252, &unk_1002D7BD0, &unk_10024A800);
        v128 = *(v268 + 48);
        v129 = v128(v127, 1, v55);
        v246 = v125;
        sub_1000157F0(v127, &unk_1002D7BD0, &unk_10024A800);
        if (v129 == 1 && (v130 = [objc_allocWithZone(CLLocation) initWithLatitude:v123 longitude:v122], objc_msgSend(v246, "distanceFromLocation:", v130), v132 = v131, v130, (*((swift_isaMask & *v255) + 0x238))(v272), v132 < *&v272[1]))
        {
          v133 = v243;
          sub_100003E50(&off_1002B7A38, v243);
          v134 = v241;
          sub_1001DC504(v120, v241, type metadata accessor for InternalServicePrediction);
          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.debug.getter();
          v137 = os_log_type_enabled(v135, v136);
          v138 = v254;
          if (v137)
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v273 = v140;
            *v139 = 136315138;
            sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
            v141 = dispatch thunk of CustomStringConvertible.description.getter();
            v143 = v142;
            sub_1001DE088(v134, type metadata accessor for InternalServicePrediction);
            v144 = sub_10017A8A8(v141, v143, &v273);

            *(v139 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v135, v136, "Entered location for accuracy tracker for %s", v139, 0xCu);
            sub_100164B98(v140);

            (*(v261 + 8))(v243, v262);
          }

          else
          {

            sub_1001DE088(v134, type metadata accessor for InternalServicePrediction);
            (*(v261 + 8))(v133, v262);
          }

          v76 = v270;
          v167 = v268;
          v168 = v251;
          v169 = v266;
          (*(v268 + 16))(v251, v269, v266);
          (*(v167 + 56))(v168, 0, 1, v169);
          sub_1001BE550(v168);
        }

        else
        {
          v145 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          v76 = v270;
          swift_beginAccess();
          v252 = v145;
          v146 = v250;
          sub_10001A718(&v145[v76], v250, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v145) = v128(v146, 1, v266);
          sub_1000157F0(v146, &unk_1002D7BD0, &unk_10024A800);
          v138 = v254;
          if (v145 == 1)
          {
            v147 = v76 + v124;
            v148 = v244;
            sub_10001A718(v147, v244, &unk_1002D7BD0, &unk_10024A800);
            v149 = v128(v148, 1, v266);
            sub_1000157F0(v148, &unk_1002D7BD0, &unk_10024A800);
            if (v149 != 1)
            {
              v150 = [objc_allocWithZone(CLLocation) initWithLatitude:v123 longitude:v122];
              [v246 distanceFromLocation:v150];
              v152 = v151;

              (*((swift_isaMask & *v255) + 0x238))(&v273);
              if (v274 + v274 < v152)
              {
                v153 = v239;
                sub_100003E50(&off_1002B7A38, v239);
                v154 = v240;
                sub_1001DC504(v120, v240, type metadata accessor for InternalServicePrediction);
                v155 = Logger.logObject.getter();
                v156 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v155, v156))
                {
                  v157 = swift_slowAlloc();
                  v255 = swift_slowAlloc();
                  v271[0] = v255;
                  *v157 = 136315138;
                  sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
                  v158 = dispatch thunk of CustomStringConvertible.description.getter();
                  v160 = v159;
                  sub_1001DE088(v154, type metadata accessor for InternalServicePrediction);
                  v161 = sub_10017A8A8(v158, v160, v271);

                  *(v157 + 4) = v161;
                  _os_log_impl(&_mh_execute_header, v155, v156, "Left location for accuracy tracker for %s", v157, 0xCu);
                  sub_100164B98(v255);
                }

                else
                {

                  sub_1001DE088(v154, type metadata accessor for InternalServicePrediction);
                }

                (*(v261 + 8))(v153, v262);
                v76 = v270;
                v170 = v268;
                v171 = v251;
                v172 = v266;
                (*(v268 + 16))(v251, v269, v266);
                (*(v170 + 56))(v171, 0, 1, v172);
                v173 = v252;
                swift_beginAccess();
                sub_10019B228(v171, &v173[v76]);
                swift_endAccess();
              }
            }
          }
        }

        v174 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
        swift_beginAccess();
        v175 = *(v76 + v174);
        v117 = v258;
        if (v175)
        {
          v176 = objc_allocWithZone(CLLocation);
          v177 = v175;
          v178 = [v176 initWithLatitude:v123 longitude:v122];
          [v246 distanceFromLocation:v178];
          v180 = v179;

          v181 = [objc_allocWithZone(CLLocation) initWithLatitude:v123 longitude:v122];
          [v177 distanceFromLocation:v181];
          v183 = v182;

          if (v180 < v183)
          {
            sub_100003E50(&off_1002B7A38, v138);
            v184 = v242;
            sub_1001DC504(v120, v242, type metadata accessor for InternalServicePrediction);
            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v185, v186))
            {
              v187 = v184;
              v188 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              v271[0] = v255;
              *v188 = 136315138;
              sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
              v189 = dispatch thunk of CustomStringConvertible.description.getter();
              v191 = v190;
              sub_1001DE088(v187, type metadata accessor for InternalServicePrediction);
              v192 = sub_10017A8A8(v189, v191, v271);
              v76 = v270;

              *(v188 + 4) = v192;
              _os_log_impl(&_mh_execute_header, v185, v186, "Updated closest location for %s", v188, 0xCu);
              sub_100164B98(v255);

              (*(v261 + 8))(v254, v262);
            }

            else
            {

              sub_1001DE088(v184, type metadata accessor for InternalServicePrediction);
              (*(v261 + 8))(v138, v262);
            }

            v117 = v258;
LABEL_52:
            v246 = *(v76 + v174);
            *(v76 + v174) = v264;
            goto LABEL_53;
          }

          v117 = v258;
          if (*(v76 + v174))
          {
LABEL_53:

            v55 = v266;
            v77 = v267;
            goto LABEL_54;
          }
        }

        v193 = v247;
        sub_100003E50(&off_1002B7A38, v247);
        v194 = v248;
        sub_1001DC504(v120, v248, type metadata accessor for InternalServicePrediction);
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v271[0] = v198;
          *v197 = 136315138;
          sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
          v199 = dispatch thunk of CustomStringConvertible.description.getter();
          v200 = v194;
          v202 = v201;
          sub_1001DE088(v200, type metadata accessor for InternalServicePrediction);
          v203 = sub_10017A8A8(v199, v202, v271);

          *(v197 + 4) = v203;
          _os_log_impl(&_mh_execute_header, v195, v196, "Setting closest location for %s", v197, 0xCu);
          sub_100164B98(v198);
          v76 = v270;

          v117 = v258;
        }

        else
        {

          sub_1001DE088(v194, type metadata accessor for InternalServicePrediction);
        }

        (*(v261 + 8))(v193, v262);
        goto LABEL_52;
      }
    }
  }

LABEL_54:
  v204 = static Date.< infix(_:_:)();
  v205 = v259;
  if ((v204 & 1) == 0)
  {
    return (v265)(v77, v55);
  }

  v258 = v117;
  sub_100003E50(&off_1002B7A38, v259);
  v206 = v256;
  sub_1001DC504(v120, v256, type metadata accessor for InternalServicePrediction);
  v207 = Logger.logObject.getter();
  v208 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v271[0] = v210;
    *v209 = 136315138;
    sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
    v211 = dispatch thunk of CustomStringConvertible.description.getter();
    v213 = v212;
    sub_1001DE088(v206, type metadata accessor for InternalServicePrediction);
    v214 = sub_10017A8A8(v211, v213, v271);

    *(v209 + 4) = v214;
    _os_log_impl(&_mh_execute_header, v207, v208, "Stopping accuracy tracker for %s", v209, 0xCu);
    sub_100164B98(v210);
  }

  else
  {

    sub_1001DE088(v206, type metadata accessor for InternalServicePrediction);
  }

  v216 = *(v261 + 8);
  v216(v205, v262);
  v217 = v257;
  v218 = v267;
  sub_1001C0CA0(2, v267);
  v219 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
  swift_beginAccess();
  sub_10001A718(v76 + v219, v217, &unk_1002D7BD0, &unk_10024A800);
  v220 = *(v268 + 48);
  v221 = v266;
  if (v220(v217, 1, v266) == 1)
  {
    (v265)(v218, v221);
    v222 = v217;
    return sub_1000157F0(v222, &unk_1002D7BD0, &unk_10024A800);
  }

  sub_1000157F0(v217, &unk_1002D7BD0, &unk_10024A800);
  v223 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
  swift_beginAccess();
  v224 = v253;
  v225 = v266;
  sub_10001A718(v76 + v223, v253, &unk_1002D7BD0, &unk_10024A800);
  if (v220(v224, 1, v225) != 1)
  {
    (v265)(v267, v225);
    v222 = v224;
    return sub_1000157F0(v222, &unk_1002D7BD0, &unk_10024A800);
  }

  sub_1000157F0(v224, &unk_1002D7BD0, &unk_10024A800);
  v226 = v249;
  sub_100003E50(&off_1002B7A38, v249);
  v227 = Logger.logObject.getter();
  v228 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    *v229 = 0;
    _os_log_impl(&_mh_execute_header, v227, v228, "Setting timeLeftLocation", v229, 2u);
  }

  v216(v226, v262);
  v230 = v268;
  v231 = v251;
  v232 = v266;
  (*(v268 + 32))(v251, v267, v266);
  (*(v230 + 56))(v231, 0, 1, v232);
  swift_beginAccess();
  sub_10019B228(v231, v76 + v223);
  return swift_endAccess();
}

uint64_t sub_1001CC384()
{
  v1 = v0;
  v50[1] = swift_getObjectType();
  v62 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v2 = __chkstk_darwin(v62);
  v61 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v60 = v50 - v5;
  __chkstk_darwin(v4);
  v59 = v50 - v6;
  v7 = type metadata accessor for InternalServicePrediction(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = __chkstk_darwin(v10);
  v51 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((swift_isaMask & *v0) + 0x220))(v11);
  v14 = sub_1001DA930(v13);

  v15 = *(v14 + 16);
  if (v15)
  {
    v50[0] = v0;
    v65 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v15, 0);
    v16 = v65;
    v17 = v14 + 64;
    result = _HashTable.startBucket.getter();
    v19 = result;
    v20 = 0;
    v54 = v14 + 72;
    v55 = v15;
    v56 = v14 + 64;
    v57 = v8;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_27;
      }

      v23 = *(v14 + 36);
      v63 = v20;
      v64 = v23;
      v24 = *(v8 + 72);
      v25 = v59;
      sub_1001DC504(*(v14 + 48) + v24 * v19, v59, type metadata accessor for InternalServicePrediction);
      v26 = *(*(v14 + 56) + 8 * v19);
      v27 = v14;
      v28 = v25;
      v29 = v60;
      sub_1001DC56C(v28, v60, type metadata accessor for InternalServicePrediction);
      *(v29 + *(v62 + 48)) = v26;
      v30 = v29;
      v31 = v16;
      v32 = v61;
      sub_1001DE0E8(v30, v61);

      v33 = v32;
      v16 = v31;
      v34 = v58;
      sub_1001DC56C(v33, v58, type metadata accessor for InternalServicePrediction);
      v65 = v16;
      v36 = v16[2];
      v35 = v16[3];
      if (v36 >= v35 >> 1)
      {
        sub_1001BBCAC((v35 > 1), v36 + 1, 1);
        v16 = v65;
      }

      v16[2] = v36 + 1;
      v37 = v57;
      result = sub_1001DC56C(v34, v16 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v36 * v24, type metadata accessor for InternalServicePrediction);
      v21 = 1 << *(v27 + 32);
      if (v19 >= v21)
      {
        goto LABEL_28;
      }

      v17 = v56;
      v38 = *(v56 + 8 * v22);
      if ((v38 & (1 << v19)) == 0)
      {
        goto LABEL_29;
      }

      v8 = v37;
      v14 = v27;
      if (v64 != *(v27 + 36))
      {
        goto LABEL_30;
      }

      v39 = v38 & (-2 << (v19 & 0x3F));
      if (v39)
      {
        v21 = __clz(__rbit64(v39)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v22 << 6;
        v41 = v22 + 1;
        v42 = (v54 + 8 * v22);
        while (v41 < (v21 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_1001DE158(v19, v64, 0);
            v21 = __clz(__rbit64(v43)) + v40;
            goto LABEL_19;
          }
        }

        result = sub_1001DE158(v19, v64, 0);
LABEL_19:
        v14 = v27;
      }

      v20 = v63 + 1;
      v19 = v21;
      if (v63 + 1 == v55)
      {

        v1 = v50[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_22:
    v45 = v51;
    sub_100003E50(&off_1002B7A38, v51);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v16[2];

      _os_log_impl(&_mh_execute_header, v46, v47, "Submitting metrics for %ld stopped predictions", v48, 0xCu);
    }

    else
    {
    }

    (*(v52 + 8))(v45, v53);
    (*((swift_isaMask & *v1) + 0x2C8))(v16);

    return (*((swift_isaMask & *v1) + 0x270))(v49);
  }

  return result;
}

void sub_1001CC9FC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v89 = type metadata accessor for Logger();
  v93 = *(v89 - 8);
  v3 = __chkstk_darwin(v89);
  v76 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v71[-v5];
  v80 = type metadata accessor for InternalServicePrediction(0);
  v87 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v9 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v86 = &v71[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v71[-v13];
  __chkstk_darwin(v12);
  v85 = &v71[-v15];
  v84 = type metadata accessor for Date();
  v16 = *(v84 - 8);
  v17 = __chkstk_darwin(v84);
  v78 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v71[-v19];
  v21 = v1[36];
  v22 = v1[37];
  v91 = v1;
  sub_100014E1C(v1 + 33, v21);
  v23 = *(v22 + 8);
  v83 = v20;
  v24 = v21;
  v25 = v6;
  v26 = a1;
  v23(v24, v22);
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v88 = (v93 + 8);
  v82 = (v16 + 8);
  v93 = v26;

  v32 = 0;
  *&v33 = 136315138;
  v79 = v33;
  *&v33 = 136315394;
  v75 = v33;
  v81 = v25;
  v77 = v9;
  v92 = v14;
  if (v30)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        v35 = v85;
        sub_1001DC504(*(v93 + 48) + *(v87 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v85, type metadata accessor for InternalServicePrediction);
        sub_1001DC56C(v35, v14, type metadata accessor for InternalServicePrediction);
        sub_100003E50(&off_1002B7A38, v25);
        v36 = v86;
        sub_1001DC504(v14, v86, type metadata accessor for InternalServicePrediction);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v94[0] = v40;
          *v39 = v79;
          sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v36;
          v44 = v43;
          sub_1001DE088(v42, type metadata accessor for InternalServicePrediction);
          v45 = sub_10017A8A8(v41, v44, v94);

          *(v39 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v37, v38, "Removed prediction %s", v39, 0xCu);
          sub_100164B98(v40);
          v25 = v81;
        }

        else
        {

          sub_1001DE088(v36, type metadata accessor for InternalServicePrediction);
        }

        v46 = *v88;
        v47 = (*v88)(v25, v89);
        v30 &= v30 - 1;
        v48 = (*((swift_isaMask & *v91) + 0x220))(v47);
        v14 = v92;
        if (*(v48 + 16))
        {
          v49 = sub_1001D6204(v92);
          if (v50)
          {
            break;
          }
        }

LABEL_6:
        sub_1001DE088(v14, type metadata accessor for InternalServicePrediction);
        if (!v30)
        {
          goto LABEL_7;
        }
      }

      v51 = *(*(v48 + 56) + 8 * v49);

      v52 = v78;
      PrivateServicePrediction.predictedStartTime.getter();
      Date.timeIntervalSince(_:)();
      v54 = v53;
      (*v82)(v52, v84);
      v55 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      if (*(v51 + v55))
      {
        goto LABEL_27;
      }

      if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_30;
      }

      if (v54 <= -9.22337204e18)
      {
        goto LABEL_31;
      }

      if (v54 >= 9.22337204e18)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      *(v51 + 48) = v54;
      *(v51 + 56) = 0;
      swift_beginAccess();
      if (*(v51 + 16) < v54)
      {
        break;
      }

      v14 = v92;
      sub_1001DE088(v92, type metadata accessor for InternalServicePrediction);
      swift_beginAccess();
      *(v51 + 44) = 1;

      if (!v30)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    *(v51 + 44) = 0;
    v56 = v76;
    sub_100003E50(&off_1002B7A38, v76);
    sub_1001DC504(v92, v77, type metadata accessor for InternalServicePrediction);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v73 = v57;
      v60 = v59;
      v74 = swift_slowAlloc();
      v94[0] = v74;
      *v60 = v75;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
      v72 = v58;
      v61 = v77;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      sub_1001DE088(v61, type metadata accessor for InternalServicePrediction);
      v65 = sub_10017A8A8(v62, v64, v94);
      v25 = v81;

      *(v60 + 4) = v65;
      *(v60 + 12) = 2048;
      *(v60 + 14) = v54;
      v66 = v60;
      v67 = v73;
      _os_log_impl(&_mh_execute_header, v73, v72, "Submitting accuracy because the prediction %s disappeared %f seconds before the predicted start time", v66, 0x16u);
      sub_100164B98(v74);

      v68 = v76;
    }

    else
    {

      sub_1001DE088(v77, type metadata accessor for InternalServicePrediction);
      v68 = v56;
    }

    v46(v68, v89);
    v69 = v91;
    v14 = v92;
    (*((swift_isaMask & *v91) + 0x2A8))(v92, v51);
    v70 = (*((swift_isaMask & *v69) + 0x230))(v94);
    sub_1001CD4F8(v14);

    v70(v94, 0);
LABEL_27:

    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      (*v82)(v83, v84);

      return;
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1001CD4F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001D6204(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001DA548();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for InternalServicePrediction(0);
  sub_1001DE088(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for InternalServicePrediction);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1001D9E90(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1001CD5BC(uint64_t a1)
{
  v2 = v1;
  v63 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v50 - v10;
  v51 = type metadata accessor for InternalServicePrediction(0);
  v11 = __chkstk_darwin(v51);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v17 = &v50 - v15;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *((swift_isaMask & *v63) + 0x220);
    v56 = (swift_isaMask & *v63) + 544;
    v57 = v19;
    v20 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v55 = *(v14 + 72);
    v62 = (v6 + 8);
    *&v16 = 136315138;
    v52 = v16;
    v53 = v5;
    v54 = ObjectType;
    v61 = v9;
    v58 = &v50 - v15;
    do
    {
      sub_1001DC504(v20, v17, type metadata accessor for InternalServicePrediction);
      v21 = v17;
      v22 = v60;
      sub_100003E50(&off_1002B7A38, v60);
      v23 = v21;
      v24 = v59;
      sub_1001DC504(v23, v59, type metadata accessor for InternalServicePrediction);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v65[0] = v28;
        *v27 = v52;
        sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction, &unk_1002496E0);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        sub_1001DE088(v24, type metadata accessor for InternalServicePrediction);
        v32 = sub_10017A8A8(v29, v31, v65);
        v5 = v53;

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Finished prediction %s", v27, 0xCu);
        sub_100164B98(v28);
      }

      else
      {

        sub_1001DE088(v24, type metadata accessor for InternalServicePrediction);
      }

      v33 = *v62;
      v34 = (*v62)(v22, v5);
      v35 = v57(v34);
      v36 = v61;
      v17 = v58;
      if (*(v35 + 16) && (v37 = sub_1001D6204(v58), (v38 & 1) != 0))
      {
        v39 = *(*(v35 + 56) + 8 * v37);

        sub_100003E50(&off_1002B7A38, v36);

        v40 = Logger.logObject.getter();
        v41 = v36;
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v42))
        {
          v43 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v64 = v39;
          v65[0] = v50;
          *v43 = v52;
          type metadata accessor for ServicePredictionAccuracyCounter(0);

          v44 = String.init<A>(describing:)();
          v46 = sub_10017A8A8(v44, v45, v65);
          v5 = v53;

          *(v43 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v40, v42, "Submitting accuracy %s", v43, 0xCu);
          sub_100164B98(v50);

          v47 = v61;
        }

        else
        {

          v47 = v41;
        }

        v33(v47, v5);
        v48 = v63;
        (*((swift_isaMask & *v63) + 0x2A8))(v17, v39);
        v49 = (*((swift_isaMask & *v48) + 0x230))(v65);
        sub_1001CD4F8(v17);

        v49(v65, 0);
      }

      else
      {
      }

      result = sub_1001DE088(v17, type metadata accessor for InternalServicePrediction);
      v20 += v55;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_1001CDC10(void *a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  [a1 latitude];
  v7 = v6;
  [a1 longitude];
  v9 = [objc_allocWithZone(CLLocation) initWithLatitude:v7 longitude:v8];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v9;

  sub_100176B80(0, 0, v5, &unk_10024C770, v11);
}

uint64_t sub_1001CDD70(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  if ((a1 & 1) == 0)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;

    sub_100176B80(0, 0, v6, &unk_10024C780, v8);
  }

  return result;
}

uint64_t sub_1001CDE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = ((swift_isaMask & *a4) + 720) & 0xFFFFFFFFFFFFLL | 0x8714000000000000;
  v4[3] = *((swift_isaMask & *a4) + 0x2D0);
  v4[4] = v5;
  return _swift_task_switch(sub_1001CDED4, a4, 0);
}

uint64_t sub_1001CDED4()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CE058(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  result = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v10;
    v30 = v5;
    v13 = v2[36];
    v14 = v2[37];
    sub_100014E1C(v2 + 33, v13);
    v15 = (*(v14 + 8))(v13, v14);
    __chkstk_darwin(v15);
    *(&v27 - 2) = v12;
    v16 = sub_1001C37EC(sub_1001DE218, (&v27 - 4), a1);
    (*((swift_isaMask & *v2) + 0x178))(v16);
    sub_100003E50(&off_1002B7A38, v7);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v19 = 136315138;
      (*((swift_isaMask & *v2) + 0x170))();
      type metadata accessor for PrivateServicePrediction();
      v20 = Array.description.getter();
      v27 = v4;
      v21 = v20;
      v22 = v8;
      v24 = v23;

      v25 = sub_10017A8A8(v21, v24, &v31);
      v8 = v22;

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating simulated predictions to %s", v19, 0xCu);
      sub_100164B98(v28);

      v26 = (*(v30 + 8))(v7, v27);
    }

    else
    {

      v26 = (*(v30 + 8))(v7, v4);
    }

    (*((swift_isaMask & *v2) + 0x258))(v26);
    return (*(v29 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1001CE46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WIS.SimulatedPredictionItem();
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return sub_1001637B8(v12, v9, a3);
}

uint64_t sub_1001CE5E4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((swift_isaMask & *v1) + 0x158))(v6);
  if (result != a1)
  {
    sub_100003E50(&off_1002B7A38, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v12 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v13 = 0x6574616C756D6973;
        }

        else
        {
          v13 = 0x64656E69626D6F63;
        }

        if (a1 == 1)
        {
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = 0xE800000000000000;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        v13 = 1818322290;
      }

      v15 = sub_10017A8A8(v13, v14, &v18);

      *(v12 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Updating simulation mode to %s", v12, 0xCu);
      sub_100164B98(v17);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v16 = (*((swift_isaMask & *v2) + 0x160))(a1);
    return (*((swift_isaMask & *v2) + 0x258))(v16);
  }

  return result;
}

uint64_t sub_1001CE8EC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v29 = type metadata accessor for Date();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((swift_isaMask & *v1) + 0x1A8))(v9) != a1)
  {
    v27 = v6;
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v28 = v4;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v15 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v16 = 0x6976726573206E69;
        }

        else
        {
          v16 = 0x7320666F2074756FLL;
        }

        if (a1 == 1)
        {
          v17 = 0xEA00000000006563;
        }

        else
        {
          v17 = 0xEE00656369767265;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
      }

      v18 = sub_10017A8A8(v16, v17, &v30);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Registration state updated to %s", v15, 0xCu);
      sub_100164B98(v26);
    }

    (*(v8 + 8))(v11, v7);
    (*((swift_isaMask & *v2) + 0x1B0))(a1);
    v19 = v2[36];
    v20 = v2[37];
    sub_100014E1C(v2 + 33, v19);
    v21 = v27;
    v22 = (*(v20 + 8))(v19, v20);
    v23 = (*((swift_isaMask & *v2) + 0x220))(v22);
    __chkstk_darwin(v23);
    *(&v26 - 16) = a1;
    *(&v26 - 1) = v21;
    sub_1001CA2B4(sub_1001DE244, (&v26 - 4), v23);

    (*(v28 + 8))(v21, v29);
  }

  v24 = (*(*v2[18] + 728))(a1);
  return (*((swift_isaMask & *v2) + 0x2B8))(v24);
}

uint64_t sub_1001CEDCC(unsigned int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((swift_isaMask & *v1) + 0x1C0))(v9);
  if (v12 != a1)
  {
    v30 = a1;
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v13, v14);
    v28 = v5;
    v29 = v4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      if (v30)
      {
        if (v30 == 1)
        {
          v18 = 1801545079;
        }

        else
        {
          v18 = 0x676E6F727473;
        }

        if (v30 == 1)
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
      }

      v20 = sub_10017A8A8(v18, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Signal strength updated to %s", v16, 0xCu);
      sub_100164B98(v17);
    }

    (*(v8 + 8))(v11, v7);
    v21 = v30;
    (*((swift_isaMask & *v2) + 0x1C8))(v30);
    v22 = v2[36];
    v23 = v2[37];
    sub_100014E1C(v2 + 33, v22);
    v24 = v31;
    v25 = (*(v23 + 8))(v22, v23);
    v26 = (*((swift_isaMask & *v2) + 0x220))(v25);
    __chkstk_darwin(v26);
    *(&v28 - 16) = v21;
    *(&v28 - 1) = v24;
    sub_1001CA2B4(sub_1001DE270, (&v28 - 4), v26);

    v12 = (*(v28 + 8))(v24, v29);
  }

  return (*((swift_isaMask & *v2) + 0x2B8))(v12);
}

uint64_t sub_1001CF258(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((swift_isaMask & *v1) + 0x1D8))(v10);
  v26 = v4;
  if ((v13 & 1) != v4)
  {
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v14, v15, "Airplane mode updated to %{BOOL}d", v16, 8u);
    }

    (*(v9 + 8))(v12, v8);
    v17 = a1 & 1;
    (*((swift_isaMask & *v2) + 0x1E0))(v17);
    v18 = v2[36];
    v19 = v2[37];
    sub_100014E1C(v2 + 33, v18);
    v20 = (*(v19 + 8))(v18, v19);
    v21 = (*((swift_isaMask & *v2) + 0x220))(v20);
    __chkstk_darwin(v21);
    *(&v24 - 16) = v17;
    *(&v24 - 1) = v7;
    sub_1001CA2B4(sub_1001DE30C, (&v24 - 4), v21);

    (*(v24 + 8))(v7, v25);
  }

  v22 = (*(*v2[18] + 736))(v26);
  return (*((swift_isaMask & *v2) + 0x2B8))(v22);
}

uint64_t sub_1001CF690(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((swift_isaMask & *v1) + 0x1F0))(v10);
  if ((v13 & 1) != v4)
  {
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v14, v15, "Congestion state changed to %{BOOL}d", v16, 8u);
    }

    (*(v9 + 8))(v12, v8);
    v17 = a1 & 1;
    (*((swift_isaMask & *v2) + 0x1F8))(v17);
    v18 = v2[36];
    v19 = v2[37];
    sub_100014E1C(v2 + 33, v18);
    v20 = (*(v19 + 8))(v18, v19);
    v21 = (*((swift_isaMask & *v2) + 0x220))(v20);
    __chkstk_darwin(v21);
    *(&v23 - 16) = v17;
    *(&v23 - 1) = v7;
    sub_1001CA2B4(sub_1001DE338, (&v23 - 4), v21);

    v13 = (*(v24 + 8))(v7, v25);
  }

  return (*((swift_isaMask & *v2) + 0x2B8))(v13);
}

uint64_t sub_1001CFA84(const void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = sub_10016601C();
    v18 = sub_10017A8A8(v16, v17, &v32);
    v30 = v7;
    v19 = v6;
    v20 = a1;
    v21 = v18;

    *(v14 + 4) = v21;
    a1 = v20;
    v6 = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating configuration to %s", v14, 0xCu);
    sub_100164B98(v15);

    (*(v31 + 8))(v10, v30);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*((swift_isaMask & *v1) + 0x240))(a1);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v24 = sub_1001BCC20(&qword_1002D7BF8, v23, type metadata accessor for ServicePredictionController, &unk_10024CD20);
  v25 = swift_allocObject();
  v26 = a1;
  v27 = v25;
  v25[2] = v2;
  v25[3] = v24;
  v25[4] = v2;
  memcpy(v25 + 5, v26, 0x178uLL);
  swift_retain_n();
  sub_100176B80(0, 0, v6, &unk_10024C790, v27);
}

uint64_t sub_1001CFDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001CFE10, a4, 0);
}

uint64_t sub_1001CFE10()
{
  v1 = *(v0[2] + 144);
  v0[4] = v1;
  v2 = *v1 + 680;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0xD404000000000000;
  return _swift_task_switch(sub_1001CFE58, v1, 0);
}

uint64_t sub_1001CFE58()
{
  v1 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24));

  return _swift_task_switch(sub_1001CFEC8, v1, 0);
}

uint64_t sub_1001CFEC8()
{
  v1 = *(*(v0 + 16) + 136);
  *(v0 + 56) = v1;
  if (!v1)
  {
    return (*(v0 + 8))();
  }

  v2 = ((swift_isaMask & *v1) + 240) & 0xFFFFFFFFFFFFLL | 0x1206000000000000;
  *(v0 + 64) = *((swift_isaMask & *v1) + 0xF0);
  *(v0 + 72) = v2;
  return _swift_task_switch(sub_1001CFF30, v1, 0);
}

uint64_t sub_1001CFF30()
{
  (*(v0 + 64))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001CFF98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = ((swift_isaMask & *v1) + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;
  v2[4] = *((swift_isaMask & *v1) + 0x150);
  v2[5] = v3;
  return _swift_task_switch(sub_1001CFFEC, v1, 0);
}

uint64_t sub_1001CFFEC()
{
  *(v0 + 48) = (*(v0 + 32))();

  return _swift_task_switch(sub_1001D005C, 0, 0);
}

uint64_t sub_1001D005C()
{
  WIS.XPC.ServicePredictionFetchResponse.init(predictions:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D00C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_isaMask & *v1;
  v2[8] = *(v4 + 0x150);
  v2[9] = (v4 + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;

  return _swift_task_switch(sub_1001D01D0, v1, 0);
}

uint64_t sub_1001D01D0()
{
  *(v0 + 80) = (*(v0 + 64))();

  return _swift_task_switch(sub_1001D0240, 0, 0);
}

uint64_t sub_1001D0240()
{
  v17 = v0;
  sub_100003E50(&off_1002B7A38, v0[7]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    type metadata accessor for PrivateServicePrediction();
    v8 = Array.description.getter();
    v10 = sub_10017A8A8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sending predictions %s", v6, 0xCu);
    sub_100164B98(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
  }

  type metadata accessor for PrivateServicePrediction();
  sub_1001BCC20(&qword_1002D7C00, 255, &type metadata accessor for PrivateServicePrediction, &protocol conformance descriptor for PrivateServicePrediction);
  sub_1001BCC20(&qword_1002D7C08, 255, &type metadata accessor for PrivateServicePrediction, &protocol conformance descriptor for PrivateServicePrediction);
  sub_1001BCC20(&qword_1002D7C10, 255, &type metadata accessor for PrivateServicePrediction, &protocol conformance descriptor for PrivateServicePrediction);
  WIS.XPC.ServicePredictionSubscribeResponse.init(predictions:)();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001D04D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for PrivateServicePrediction();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ServicePrediction();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = swift_isaMask & *v1;
  v2[14] = *(v6 + 0x150);
  v2[15] = (v6 + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;

  return _swift_task_switch(sub_1001D06A0, v1, 0);
}

uint64_t sub_1001D06A0()
{
  *(v0 + 128) = (*(v0 + 112))();

  return _swift_task_switch(sub_1001D0710, 0, 0);
}

uint64_t sub_1001D0710()
{
  v34 = v0;
  sub_100003E50(&off_1002B7A38, v0[13]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_10017A8A8(v8, v9, &v33);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sending predictions %s", v6, 0xCu);
    sub_100164B98(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[16];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v0[9];
    v17 = v0[6];
    v33 = _swiftEmptyArrayStorage;
    sub_1001D5FE4(0, v15, 0);
    v18 = v33;
    v19 = *(v17 + 16);
    v17 += 16;
    v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v31 = *(v17 + 56);
    v32 = v19;
    v21 = (v17 - 8);
    do
    {
      v22 = v0[10];
      v23 = v0[7];
      v24 = v0[5];
      v32(v23, v20, v24);
      sub_1001C5880(v22);
      (*v21)(v23, v24);
      v33 = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_1001D5FE4((v25 > 1), v26 + 1, 1);
        v18 = v33;
      }

      v27 = v0[10];
      v28 = v0[8];
      v18[2] = v26 + 1;
      (*(v16 + 32))(v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v27, v28);
      v20 += v31;
      --v15;
    }

    while (v15);
  }

  sub_1001BCC20(&qword_1002D7C18, 255, &type metadata accessor for ServicePrediction, &protocol conformance descriptor for ServicePrediction);
  sub_1001BCC20(&qword_1002D7C20, 255, &type metadata accessor for ServicePrediction, &protocol conformance descriptor for ServicePrediction);
  sub_1001BCC20(&qword_1002D7C28, 255, &type metadata accessor for ServicePrediction, &protocol conformance descriptor for ServicePrediction);
  WIS.XPC.ServicePredictionSubscribeResponse.init(predictions:)();

  v29 = v0[1];

  return v29();
}

uint64_t sub_1001D0AF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D0B14, 0, 0);
}

uint64_t sub_1001D0B14()
{
  v1 = v0[4];
  v0[5] = WIS.XPC.ServicePredictionSimulateRequest.simulatedPredictions.getter();
  v2 = swift_isaMask & *v1;
  v0[6] = *(v2 + 0x2F8);
  v0[7] = (v2 + 760) & 0xFFFFFFFFFFFFLL | 0xD770000000000000;

  return _swift_task_switch(sub_1001D0BC4, v1, 0);
}

uint64_t sub_1001D0BC4()
{
  (*(v0 + 48))(*(v0 + 40));

  return _swift_task_switch(sub_1001D0C3C, 0, 0);
}

uint64_t sub_1001D0C3C()
{
  WIS.XPC.ServicePredictionSimulateResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D0C9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode();
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0D30, 0, 0);
}

uint64_t sub_1001D0D30()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  WIS.XPC.ServicePredictionSetSimulationModeRequest.simulationMode.getter();
  *(v0 + 64) = sub_1001DC2EC(v1);
  v3 = swift_isaMask & *v2;
  *(v0 + 48) = *(v3 + 0x300);
  *(v0 + 56) = (v3 + 768) & 0xFFFFFFFFFFFFLL | 0xBAC1000000000000;

  return _swift_task_switch(sub_1001D0DF8, v2, 0);
}

uint64_t sub_1001D0DF8()
{
  (*(v0 + 48))(*(v0 + 64));

  return _swift_task_switch(sub_1001D0E68, 0, 0);
}

uint64_t sub_1001D0E68()
{
  WIS.XPC.ServicePredictionSetSimulationModeResponse.init()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D0ED4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = ((swift_isaMask & *v1) + 344) & 0xFFFFFFFFFFFFLL | 0x4DB7000000000000;
  v2[4] = *((swift_isaMask & *v1) + 0x158);
  v2[5] = v3;
  return _swift_task_switch(sub_1001D0F28, v1, 0);
}

uint64_t sub_1001D0F28()
{
  *(v0 + 48) = (*(v0 + 32))();

  return _swift_task_switch(sub_1001D0F98, 0, 0);
}

uint64_t sub_1001D0F98()
{
  WIS.XPC.ServicePredictionGetSimulationModeResponse.init(simulationMode:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D104C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for InternalServicePrediction(0) - 8);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for PrivateServicePrediction();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001D1164, 0, 0);
}

uint64_t sub_1001D1164()
{
  v1 = *(*(v0 + 24) + 144);
  v2 = static xpc_event_publisher_action_t.add.getter();
  v5 = (*(*v1 + 720) + **(*v1 + 720));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1001D129C;

  return v5(v2 & 1);
}

uint64_t sub_1001D129C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1001D139C, 0, 0);
}

uint64_t sub_1001D139C()
{
  if (v0[10])
  {
    v1 = v0[10];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    sub_1001D5FA0(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      v6 = v0[8];
      v8 = v0[5];
      v7 = v0[6];
      sub_1001DC504(v5, v8, type metadata accessor for InternalServicePrediction);
      (*(v3 + 16))(v6, v8, v7);
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001D5FA0((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[8];
      v12 = v0[6];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v15;
      --v2;
    }

    while (v2);
  }

  WIS.XPC.MapsSuggestionsPredictionFetchResponse.init(predictions:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001D1594(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D15B8, 0, 0);
}

uint64_t sub_1001D15B8()
{
  v1 = *(v0[4] + 144);
  v0[5] = v1;
  WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdRequest.threshold.getter();
  v0[6] = v2;
  v3 = *v1;
  v0[7] = *(*v1 + 616);
  v0[8] = (v3 + 616) & 0xFFFFFFFFFFFFLL | 0xF358000000000000;

  return _swift_task_switch(sub_1001D1660, v1, 0);
}

uint64_t sub_1001D1660()
{
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D16D0, 0, 0);
}

uint64_t sub_1001D16D0()
{
  WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D1730(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1754, 0, 0);
}

uint64_t sub_1001D1754()
{
  v1 = *(v0[4] + 144);
  v0[5] = v1;
  WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalRequest.updateInterval.getter();
  v0[6] = v2;
  v3 = *v1;
  v0[7] = *(*v1 + 624);
  v0[8] = (v3 + 624) & 0xFFFFFFFFFFFFLL | 0xCEF9000000000000;

  return _swift_task_switch(sub_1001D17FC, v1, 0);
}

uint64_t sub_1001D17FC()
{
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D186C, 0, 0);
}

uint64_t sub_1001D186C()
{
  WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D18CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D18F0, 0, 0);
}

uint64_t sub_1001D18F0()
{
  v1 = *(v0[4] + 144);
  v0[5] = v1;
  v0[6] = WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdRequest.threshold.getter();
  v2 = *v1;
  v0[7] = *(*v1 + 632);
  v0[8] = (v2 + 632) & 0xFFFFFFFFFFFFLL | 0x30E5000000000000;

  return _swift_task_switch(sub_1001D1998, v1, 0);
}

uint64_t sub_1001D1998()
{
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D1A04, 0, 0);
}

uint64_t sub_1001D1A04()
{
  WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D1A64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1A88, 0, 0);
}

uint64_t sub_1001D1A88()
{
  v1 = *(v0[4] + 136);
  v0[5] = v1;
  if (v1)
  {
    WIS.XPC.MapsNavigationPredicionSetLookAheadTimeRequest.lookAhead.getter();
    v0[6] = v2;
    v3 = swift_isaMask & *v1;
    v0[7] = *(v3 + 0x110);
    v0[8] = (v3 + 272) & 0xFFFFFFFFFFFFLL | 0xC682000000000000;

    return _swift_task_switch(sub_1001D1B80, v1, 0);
  }

  else
  {
    WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse.init()();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001D1B80()
{
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D1BF0, 0, 0);
}

uint64_t sub_1001D1BF0()
{
  WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D1C50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1C74, 0, 0);
}

uint64_t sub_1001D1C74()
{
  v1 = *(v0[4] + 144);
  v0[5] = v1;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.departureLatitude.getter();
  v0[6] = v2;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.departureLongitude.getter();
  v0[7] = v3;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.arrivalLatitude.getter();
  v0[8] = v4;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.arrivalLongitude.getter();
  v0[9] = v5;
  v6 = *v1;
  v0[10] = *(*v1 + 640);
  v0[11] = (v6 + 640) & 0xFFFFFFFFFFFFLL | 0x2779000000000000;

  return _swift_task_switch(sub_1001D1D34, v1, 0);
}

uint64_t sub_1001D1D34()
{
  (*(v0 + 80))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_task_switch(sub_1001D1DA8, 0, 0);
}

uint64_t sub_1001D1DA8()
{
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D1E28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 776) & 0xFFFFFFFFFFFFLL | 0xA805000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x308);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001DFBCC, a4, 0);
}

uint64_t sub_1001D1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_1001D1EC4, 0, 0);
}

uint64_t sub_1001D1EC4()
{
  v1 = *(v0[2] + 304);
  v0[3] = v1;
  v2 = *v1 + 568;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x883E000000000000;
  return _swift_task_switch(sub_1001D1F0C, v1, 0);
}

uint64_t sub_1001D1F0C()
{
  (*(v0 + 32))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D1F94(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v3;
  *(v10 + 40) = a1;

  sub_100176B80(0, 0, v8, a3, v10);
}

uint64_t sub_1001D20A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 784) & 0xFFFFFFFFFFFFLL | 0xBEB6000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x310);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001B59C4, a4, 0);
}

uint64_t sub_1001D20F8(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = a1;

  sub_100176B80(0, 0, v5, &unk_10024C830, v7);
}

uint64_t sub_1001D2208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 792) & 0xFFFFFFFFFFFFLL | 0x2A0F000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x318);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001D2260, a4, 0);
}

uint64_t sub_1001D2260()
{
  (*(v0 + 24))(*(v0 + 64));

  return _swift_task_switch(sub_1001D22D0, 0, 0);
}

uint64_t sub_1001D22D0()
{
  v1 = *(v0[2] + 304);
  v0[5] = v1;
  v2 = *v1 + 560;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x6A5B000000000000;
  return _swift_task_switch(sub_1001D2318, v1, 0);
}

uint64_t sub_1001D2318()
{
  (*(v0 + 48))(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D2380(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4 - 8];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  v8 = *(a1 + 16);
  *(v7 + 40) = *a1;
  *(v7 + 56) = v8;
  *(v7 + 72) = *(a1 + 32);
  *(v7 + 88) = *(a1 + 48);

  sub_10001A718(a1, v11, &qword_1002D7C30, &qword_10024AE28);
  sub_100176B80(0, 0, v5, &unk_10024C840, v7);
}

uint64_t sub_1001D24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001D24E8, 0, 0);
}

uint64_t sub_1001D24E8()
{
  v1 = *(v0[2] + 304);
  v0[4] = v1;
  v2 = *v1 + 576;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0xAC2000000000000;
  return _swift_task_switch(sub_100015548, v1, 0);
}

uint64_t sub_1001D2530(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  sub_100176B80(0, 0, v5, &unk_10024C858, v7);
}

uint64_t sub_1001D263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001D265C, 0, 0);
}

uint64_t sub_1001D265C()
{
  v1 = *(v0[2] + 304);
  v0[4] = v1;
  v2 = *v1 + 584;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0x78E8000000000000;
  return _swift_task_switch(sub_1001DFBF0, v1, 0);
}

uint64_t sub_1001D26D8()
{

  sub_100164B98((v0 + 152));

  swift_unknownObjectRelease();

  sub_100164B98((v0 + 264));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001D2768()
{
  sub_1001D26D8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001D2794@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ServicePredictionController();

  return sub_100003E50(a2, a3);
}

uint64_t sub_1001D27DC(uint64_t a1)
{
  v6 = (*((swift_isaMask & *v1) + 0x290) + **((swift_isaMask & *v1) + 0x290));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002A5C;

  return v6(a1);
}

uint64_t sub_1001D2914(uint64_t a1)
{
  v6 = (*((swift_isaMask & *v1) + 0x298) + **((swift_isaMask & *v1) + 0x298));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002A5C;

  return v6(a1);
}

uint64_t sub_1001D2B04(uint64_t a1)
{
  v6 = (*((swift_isaMask & *v1) + 0x2A0) + **((swift_isaMask & *v1) + 0x2A0));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10017F434;

  return v6(a1);
}

uint64_t sub_1001D2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001D2C5C, 0, 0);
}

uint64_t sub_1001D2C5C()
{
  v1 = sub_1000CE644();
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    *(v0 + 40) = v3;

    v4 = ((swift_isaMask & *v3) + 808) & 0xFFFFFFFFFFFFLL | 0xF62A000000000000;
    *(v0 + 48) = *((swift_isaMask & *v3) + 0x328);
    *(v0 + 56) = v4;

    return _swift_task_switch(sub_1001D2D54, v3, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1001D2D54()
{
  (*(v0 + 48))(*(v0 + 24));

  return _swift_task_switch(sub_1001D2DCC, 0, 0);
}

uint64_t sub_1001D2F58()
{
  v1 = sub_1000CE644();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    v0[3] = v3;

    v8 = (*((swift_isaMask & *v3) + 0x280) + **((swift_isaMask & *v3) + 0x280));
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1001D30F8;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001D30F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001D3390(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  sub_100164A3C(&unk_1002D8220, &qword_10024D4D8);
  *(v2 + 24) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_1001D3424, 0, 0);
}

uint64_t sub_1001D3424()
{
  v1 = sub_1000CE644();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    v0[4] = v3;

    v9 = (*((swift_isaMask & *v3) + 0x280) + **((swift_isaMask & *v3) + 0x280));
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1001D35E4;
    v5 = v0[3];

    return v9(v5);
  }

  else
  {
    v7 = v0[2];

    v7[2](v7);
    _Block_release(v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001D35E4()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 16);

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001D3744(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1001D3768, 0, 0);
}

uint64_t sub_1001D3768()
{
  v1 = sub_1000CE644();
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    *(v0 + 32) = v3;

    v4 = ((swift_isaMask & *v3) + 800) & 0xFFFFFFFFFFFFLL | 0xF38000000000000;
    *(v0 + 40) = *((swift_isaMask & *v3) + 0x320);
    *(v0 + 48) = v4;

    return _swift_task_switch(sub_1001D3860, v3, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1001D3860()
{
  (*(v0 + 40))(*(v0 + 56));

  return _swift_task_switch(sub_1001D38D8, 0, 0);
}

NSString sub_1001D39F4()
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1001D3AAC()
{
  v1 = 0x6C62616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001D3B20()
{
  v1 = 0x61636F4C74417369;
  if (*v0 != 1)
  {
    v1 = 0x4C7441746F4E7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_1001D3B9C()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024C6E0;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  v2 = *v0;
  *(inited + 72) = &type metadata for ServicePredictionController.PredictionSource;
  *(inited + 80) = &off_1002B7A28;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000010025DE30;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  v3 = *(v0 + 2);
  *(inited + 104) = *(v0 + 1);
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000010025DE50;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  *(inited + 160) = v3;
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x800000010025D140;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  v4 = *(v0 + 4);
  *(inited + 216) = *(v0 + 3);
  *(inited + 256) = 0xD00000000000001FLL;
  *(inited + 264) = 0x800000010025D160;
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  *(inited + 272) = v4;
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x800000010025DE70;
  v5 = *(v0 + 5);
  *(inited + 352) = &type metadata for Int;
  *(inited + 360) = &off_1002B54E0;
  *(inited + 328) = v5;
  *(inited + 368) = 0xD000000000000014;
  *(inited + 376) = 0x800000010025D180;
  v6 = v0[48];
  *(inited + 408) = &type metadata for Bool;
  *(inited + 416) = &off_1002B54D0;
  *(inited + 384) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_1001D3D60()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10024C6F0;
  *(v2 + 32) = 0x656372756F73;
  *(v2 + 40) = 0xE600000000000000;
  v3 = _s30ServicePredictionEventAccuracyVMa(0);
  v4 = v3[7];
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  *(v2 + 72) = v5;
  *(v2 + 80) = &off_1002B7B88;
  v6 = sub_1001B8BDC((v2 + 48));
  (*(*(v5 - 8) + 16))(v6, &v1[v4], v5);
  strcpy((v2 + 88), "accuracyState");
  *(v2 + 102) = -4864;
  v7 = *v1;
  *(v2 + 128) = &type metadata for ServicePredictionAccuracyCounter.State;
  *(v2 + 136) = &off_1002B7B38;
  *(v2 + 104) = v7;
  *(v2 + 144) = 1701869940;
  *(v2 + 152) = 0xE400000000000000;
  v8 = v3[8];
  v9 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  *(v2 + 184) = v9;
  *(v2 + 192) = &off_1002B7188;
  v10 = sub_1001B8BDC((v2 + 160));
  (*(*(v9 - 8) + 16))(v10, &v1[v8], v9);
  *(v2 + 200) = 0xD000000000000010;
  *(v2 + 208) = 0x800000010025DE90;
  v11 = v1[v3[10]];
  *(v2 + 240) = &type metadata for Bool;
  *(v2 + 248) = &off_1002B54D0;
  *(v2 + 216) = v11;
  v136 = 0xD00000000000001BLL;
  *(v2 + 256) = 0xD00000000000001BLL;
  *(v2 + 264) = 0x800000010025DEB0;
  v12 = *&v1[v3[12]];
  *(v2 + 296) = &type metadata for Int;
  *(v2 + 304) = &off_1002B54E0;
  *(v2 + 272) = v12;
  strcpy((v2 + 312), "didEventOccur");
  *(v2 + 326) = -4864;
  LOBYTE(v12) = v1[v3[13]];
  *(v2 + 352) = &_s23ServicePredictionMetricV15EventOccurrenceON;
  *(v2 + 360) = &off_1002B7A90;
  *(v2 + 328) = v12;
  *(v2 + 368) = 0xD000000000000016;
  *(v2 + 376) = 0x800000010025DED0;
  v13 = *&v1[v3[14]];
  *(v2 + 408) = &type metadata for Int;
  *(v2 + 416) = &off_1002B54E0;
  *(v2 + 384) = v13;
  *(v2 + 424) = 0xD000000000000016;
  *(v2 + 432) = 0x800000010025D1C0;
  v14 = *&v1[v3[15]];
  *(v2 + 464) = &type metadata for Int;
  *(v2 + 472) = &off_1002B54E0;
  *(v2 + 440) = v14;
  v135 = 0xD000000000000013;
  *(v2 + 480) = 0xD000000000000013;
  *(v2 + 488) = 0x800000010025D1E0;
  v15 = *&v1[v3[16]];
  *(v2 + 520) = &type metadata for Int;
  *(v2 + 528) = &off_1002B54E0;
  *(v2 + 496) = v15;
  *(v2 + 536) = 0xD000000000000014;
  *(v2 + 544) = 0x800000010025DEF0;
  v16 = *&v1[v3[17]];
  *(v2 + 576) = &type metadata for Int;
  *(v2 + 584) = &off_1002B54E0;
  *(v2 + 552) = v16;
  v134 = 0xD000000000000016;
  *(v2 + 592) = 0xD000000000000016;
  *(v2 + 600) = 0x800000010025DF10;
  v17 = *&v1[v3[18]];
  *(v2 + 632) = &type metadata for Int;
  *(v2 + 640) = &off_1002B54E0;
  *(v2 + 608) = v17;
  *(v2 + 648) = 0x61746E6563726570;
  *(v2 + 656) = 0xEF726F7272456567;
  v18 = *&v1[v3[19]];
  *(v2 + 688) = &type metadata for Int;
  *(v2 + 696) = &off_1002B54E0;
  *(v2 + 664) = v18;
  *(v2 + 704) = 0xD000000000000011;
  *(v2 + 712) = 0x800000010025DF30;
  v19 = *&v1[v3[20]];
  *(v2 + 744) = &type metadata for Int;
  *(v2 + 752) = &off_1002B54E0;
  *(v2 + 720) = v19;
  strcpy((v2 + 760), "haveLocation");
  *(v2 + 773) = 0;
  *(v2 + 774) = -5120;
  LOBYTE(v19) = v1[v3[21]];
  *(v2 + 800) = &_s23ServicePredictionMetricV8LocationON;
  *(v2 + 808) = &off_1002B7AB8;
  *(v2 + 776) = v19;
  strcpy((v2 + 816), "atDestination");
  *(v2 + 830) = -4864;
  LOBYTE(v19) = v1[v3[23]];
  *(v2 + 856) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(v2 + 864) = &off_1002B7AE0;
  *(v2 + 832) = v19;
  *(v2 + 872) = 0xD000000000000014;
  *(v2 + 880) = 0x800000010025DF50;
  LOBYTE(v19) = v1[v3[22]];
  *(v2 + 912) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(v2 + 920) = &off_1002B7AE0;
  *(v2 + 888) = v19;
  *(v2 + 928) = 0x6E6F697461727564;
  *(v2 + 936) = 0xE800000000000000;
  v20 = *&v1[v3[9]];
  *(v2 + 968) = &type metadata for Int;
  *(v2 + 976) = &off_1002B54E0;
  *(v2 + 944) = v20;
  v21 = sub_1001B8A88(v2);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v143 = v21;
  v23 = &v1[v3[24]];
  if ((v23[1] & 1) == 0)
  {
    v24 = *v23;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v24;
    sub_10001A700(&v140, v138);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v26 = sub_1001DE80C(v138, v139);
    sub_1001DB604(*v26, 0x65636E6174736964, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v137);
    result = sub_100164B98(v138);
    v21 = v137;
    v143 = v137;
  }

  v27 = &v1[v3[25]];
  if (v27[8])
  {
    goto LABEL_8;
  }

  v28 = *v27;
  if ((~*&v28 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v141 = &type metadata for Int;
  v142 = &off_1002B54E0;
  *&v140 = v28;
  sub_10001A700(&v140, v138);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v137 = v21;
  v30 = sub_1001DE80C(v138, v139);
  sub_1001DB604(*v30, 0xD000000000000014, 0x800000010025E140, v29, &v137);
  sub_100164B98(v138);
  v21 = v137;
  v143 = v137;
LABEL_8:
  v31 = &v1[v3[26]];
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v141 = &type metadata for String;
    v142 = &off_1002B54C0;
    *&v140 = v33;
    *(&v140 + 1) = v32;
    sub_10001A700(&v140, v138);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v35 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v35);
    v37 = (&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    sub_1001DB76C(*v37, v37[1], 0x6372756F53627573, 0xED00006570795465, v34, &v137);
    sub_100164B98(v138);
    v21 = v137;
    v143 = v137;
  }

  v39 = &v1[v3[27]];
  if ((v39[1] & 1) == 0)
  {
    v40 = *v39;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v40;
    sub_10001A700(&v140, v138);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v42 = sub_1001DE80C(v138, v139);
    sub_1001DB604(*v42, 0xD000000000000019, 0x800000010025E120, v41, &v137);
    sub_100164B98(v138);
    v21 = v137;
    v143 = v137;
  }

  v43 = &v1[v3[28]];
  if ((v43[1] & 1) == 0)
  {
    v44 = *v43;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v44;
    sub_10001A700(&v140, v138);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v46 = sub_1001DE80C(v138, v139);
    sub_1001DB604(*v46, 0xD000000000000019, 0x800000010025E100, v45, &v137);
    sub_100164B98(v138);
    v21 = v137;
    v143 = v137;
  }

  v47 = &v1[v3[29]];
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    v141 = &type metadata for String;
    v142 = &off_1002B54C0;
    *&v140 = v49;
    *(&v140 + 1) = v48;
    sub_10001A700(&v140, v138);

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v51 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v51);
    v53 = (&v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    sub_1001DB76C(*v53, v53[1], 0xD000000000000011, 0x800000010025E0E0, v50, &v137);
    sub_100164B98(v138);
    v21 = v137;
    v143 = v137;
  }

  v55 = v1[1];
  if (v55 == 3)
  {
    sub_1001D9A2C(0x73616552706F7473, 0xEA00000000006E6FLL, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v141 = &type metadata for ServicePredictionAccuracyCounter.RemovalReason;
    v142 = &off_1002B7B60;
    LOBYTE(v140) = v55;
    sub_10001A700(&v140, v138);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v21;
    v57 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v57);
    v59 = &v133 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    sub_1001DB95C(v59, 0x73616552706F7473, 0xEA00000000006E6FLL, v56, &v137, &type metadata for ServicePredictionAccuracyCounter.RemovalReason, &off_1002B7B60);
    sub_100164B98(v138);
    v143 = v137;
  }

  if (v1[16])
  {
    sub_1001D9A2C(v135, 0x800000010025DF70, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v61 = *(v1 + 1);
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v61;
    sub_10001A700(&v140, v138);
    v62 = v143;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v62;
    v64 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v64);
    v66 = &v133 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v67 + 16))(v66);
    sub_1001DB95C(v66, v135, 0x800000010025DF70, v63, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v68 = &v1[v3[11]];
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;
    v141 = &type metadata for String;
    v142 = &off_1002B54C0;
    *&v140 = v70;
    *(&v140 + 1) = v69;
    sub_10001A700(&v140, v138);

    v71 = v143;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v71;
    v73 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v73);
    v75 = &v133 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75);
    sub_1001DB95C(v75, v134, 0x800000010025DF90, v72, &v137, &type metadata for String, &off_1002B54C0);
    sub_100164B98(v138);
    v143 = v137;
  }

  else
  {
    sub_1001D9A2C(v134, 0x800000010025DF90, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  v77 = &v1[v3[30]];
  if (v77[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025DFB0, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v78 = *v77;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v78;
    sub_10001A700(&v140, v138);
    v79 = v143;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v79;
    v81 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v81);
    v83 = &v133 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v83);
    sub_1001DB95C(v83, 0xD000000000000023, 0x800000010025DFB0, v80, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v85 = &v1[v3[31]];
  if (v85[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025DFE0, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v86 = *v85;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v86;
    sub_10001A700(&v140, v138);
    v87 = v143;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v87;
    v89 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v89);
    v91 = &v133 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v92 + 16))(v91);
    sub_1001DB95C(v91, 0xD000000000000023, 0x800000010025DFE0, v88, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v93 = &v1[v3[32]];
  if (v93[1])
  {
    sub_1001D9A2C(0xD000000000000020, 0x800000010025E010, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v94 = *v93;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v94;
    sub_10001A700(&v140, v138);
    v95 = v143;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v95;
    v97 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v97);
    v99 = &v133 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v100 + 16))(v99);
    sub_1001DB95C(v99, 0xD000000000000020, 0x800000010025E010, v96, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v101 = &v1[v3[33]];
  if (v101[1])
  {
    sub_1001D9A2C(0xD000000000000021, 0x800000010025E040, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v102 = *v101;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v102;
    sub_10001A700(&v140, v138);
    v103 = v143;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v103;
    v105 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v105);
    v107 = &v133 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v108 + 16))(v107);
    sub_1001DB95C(v107, 0xD000000000000021, 0x800000010025E040, v104, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v109 = &v1[v3[34]];
  if (v109[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025E070, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v110 = *v109;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v110;
    sub_10001A700(&v140, v138);
    v111 = v143;
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v111;
    v113 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v113);
    v115 = &v133 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v116 + 16))(v115);
    sub_1001DB95C(v115, 0xD000000000000023, 0x800000010025E070, v112, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v117 = &v1[v3[35]];
  if (v117[1])
  {
    sub_1001D9A2C(0xD00000000000001CLL, 0x800000010025E0A0, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v118 = *v117;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v118;
    sub_10001A700(&v140, v138);
    v119 = v143;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v119;
    v121 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v121);
    v123 = &v133 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v124 + 16))(v123);
    sub_1001DB95C(v123, 0xD00000000000001CLL, 0x800000010025E0A0, v120, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    v143 = v137;
  }

  v125 = &v1[v3[36]];
  if (v125[1])
  {
    sub_1001D9A2C(v136, 0x800000010025E0C0, &v140);
    sub_1000157F0(&v140, &qword_1002D7C38, &qword_10024C878);
    return v143;
  }

  else
  {
    v126 = *v125;
    v141 = &type metadata for Int;
    v142 = &off_1002B54E0;
    *&v140 = v126;
    sub_10001A700(&v140, v138);
    v127 = v143;
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v127;
    v129 = sub_1001DE80C(v138, v139);
    __chkstk_darwin(v129);
    v131 = &v133 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v132 + 16))(v131);
    sub_1001DB95C(v131, v136, 0x800000010025E0C0, v128, &v137, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v138);
    return v137;
  }
}

unint64_t sub_1001D53F4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002497B0;
  *(inited + 32) = 0x6469656C646E7562;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &off_1002B54C0;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_1000157F0(inited + 32, &qword_1002D71F0, &qword_10024B160);
  return v4;
}

uint64_t sub_1001D54C0()
{
  v1 = 0x64657472617473;
  if (*v0 != 1)
  {
    v1 = 0x646570706F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

unint64_t sub_1001D5530()
{
  v1 = 0x64657269707865;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6552656372756F73;
  }
}

uint64_t sub_1001D55A8()
{
  v1 = v0;
  v2 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:))
  {
    return 0x6563697665446E6FLL;
  }

  if (v6 == enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:))
  {
    v8 = 0x736567677573;
  }

  else
  {
    if (v6 != enum case for PrivateServicePrediction.ServicePredictionSource.navigation(_:))
    {
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      v9._object = 0x800000010025E180;
      v9._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v9);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v8 = 0x61676976616ELL;
  }

  return v8 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
}

uint64_t sub_1001D57C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateServicePrediction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1001BCC20(&qword_1002D7C10, 255, &type metadata accessor for PrivateServicePrediction, &protocol conformance descriptor for PrivateServicePrediction);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D59DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100002A5C;

  return v6();
}

uint64_t sub_1001D5AC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002A5C;

  return v7();
}

uint64_t sub_1001D5BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10001A718(a3, v23 - v10, &qword_1002D7180, &qword_10024ABF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
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

    sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

    return v21;
  }

LABEL_8:
  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
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

uint64_t sub_1001D5EA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002A58;

  return v6(a1);
}

void *sub_1001D5FA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D6028(a1, a2, a3, *v3, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
  *v3 = result;
  return result;
}

void *sub_1001D5FE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D6028(a1, a2, a3, *v3, &qword_1002D8238, &qword_10024D520, &type metadata accessor for ServicePrediction);
  *v3 = result;
  return result;
}

void *sub_1001D6028(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1001D6204(uint64_t a1)
{
  type metadata accessor for InternalServicePrediction(0);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001D62A0(a1, v2);
}

unint64_t sub_1001D62A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalServicePrediction(0);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_1001DC504(*(v2 + 48) + v11 * v9, v7, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1001D6458(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for InternalServicePrediction(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v8 + 48) + v13 * v11, v7, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DE088(a2, type metadata accessor for InternalServicePrediction);
    sub_1001DC504(*(v8 + 48) + v13 * v11, v21, type metadata accessor for InternalServicePrediction);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001DC504(a2, v7, type metadata accessor for InternalServicePrediction);
    v22 = *v15;
    sub_1001D94A4(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_1001DC56C(a2, v17, type metadata accessor for InternalServicePrediction);
    return 1;
  }
}

uint64_t sub_1001D6718(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v8 + 48) + v13 * v11, v7, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3E8);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v7, type metadata accessor for InternalUpcomingFlightPrediction);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DE088(a2, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1001DC504(*(v8 + 48) + v13 * v11, v21, type metadata accessor for InternalUpcomingFlightPrediction);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001DC504(a2, v7, type metadata accessor for InternalUpcomingFlightPrediction);
    v22 = *v15;
    sub_1001D9758(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_1001DC56C(a2, v17, type metadata accessor for InternalUpcomingFlightPrediction);
    return 1;
  }
}

void sub_1001D69EC(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for InternalServicePrediction(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1001DC504(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for InternalServicePrediction);
      sub_1001D762C(v5);
      sub_1001DE088(v9, type metadata accessor for InternalServicePrediction);
      sub_1000157F0(v5, &qword_1002D8260, &qword_10024D538);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1001D6BF4(uint64_t a1, void *a2)
{
  v5 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v11 = type metadata accessor for InternalServicePrediction(0);
  v12 = __chkstk_darwin(v11);
  v81 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v64 - v15;
  __chkstk_darwin(v14);
  v77 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v64 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v76 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v80 = v22 & v19;
  v69 = (63 - v21) >> 6;
  v75 = (v17 + 56);
  v65 = v17;
  v74 = (v17 + 48);
  v79 = a2 + 7;

  v24 = 0;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v80;
    v26 = v24;
    if (v80)
    {
LABEL_15:
      v2 = (v25 - 1) & v25;
      v30 = v64;
      sub_1001DC504(*(a1 + 48) + v65[9] * (__clz(__rbit64(v25)) | (v26 << 6)), v64, type metadata accessor for InternalServicePrediction);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v69 <= (v24 + 1) ? v24 + 1 : v69;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v69)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v64;
    }

    v71 = *v75;
    v71(v30, v31, 1, v11);
    v82 = a1;
    v83 = v20;
    v84 = v76;
    v85 = v28;
    v86 = v2;
    v70 = *v74;
    if (v70(v30, 1, v11) == 1)
    {
      sub_1000157F0(v30, &qword_1002D8260, &qword_10024D538);
      v58 = a1;
      goto LABEL_52;
    }

    sub_1001DC56C(v30, v77, type metadata accessor for InternalServicePrediction);
    v68 = sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v79[v24 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1001DE088(v77, type metadata accessor for InternalServicePrediction);
    v24 = v28;
    v80 = v2;
  }

  v73 = ~v33;
  v34 = a2[6];
  v80 = v65[9];
  sub_1001DC504(v34 + v80 * v24, v16, type metadata accessor for InternalServicePrediction);
  v78 = sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
  while (1)
  {
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
    if (v35)
    {
      break;
    }

    v24 = (v24 + 1) & v73;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v79[v24 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    sub_1001DC504(a2[6] + v80 * v24, v16, type metadata accessor for InternalServicePrediction);
  }

  v36 = sub_1001DE088(v77, type metadata accessor for InternalServicePrediction);
  v37 = *(a2 + 32);
  v64 = ((1 << v37) + 63) >> 6;
  v23 = 8 * v64;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v36);
    v39 = &v64 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v79, v38);
    v40 = *&v39[8 * v26] & ~v20;
    v41 = a2[2];
    v77 = v39;
    *&v39[8 * v26] = v40;
    v42 = v41 - 1;
    v24 = v67;
    v43 = i;
    v44 = v69;
    v66 = a1;
LABEL_25:
    v73 = v42;
    while (v2)
    {
      v45 = v28;
LABEL_37:
      v48 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      sub_1001DC504(*(a1 + 48) + (v48 | (v45 << 6)) * v80, v24, type metadata accessor for InternalServicePrediction);
      v49 = 0;
LABEL_38:
      v71(v24, v49, 1, v11);
      v82 = a1;
      v83 = v43;
      v84 = v76;
      v85 = v28;
      v86 = v2;
      if (v70(v24, 1, v11) == 1)
      {
        sub_1000157F0(v24, &qword_1002D8260, &qword_10024D538);
        a2 = sub_1001D8480(v77, v64, v73, a2);
        goto LABEL_51;
      }

      sub_1001DC56C(v24, v81, type metadata accessor for InternalServicePrediction);
      v50 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v51 = a2;
      v52 = -1 << *(a2 + 32);
      v53 = v50 & ~v52;
      v26 = v53 >> 6;
      v20 = 1 << v53;
      if (((1 << v53) & v79[v53 >> 6]) != 0)
      {
        sub_1001DC504(v51[6] + v53 * v80, v16, type metadata accessor for InternalServicePrediction);
        v54 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
        if ((v54 & 1) == 0)
        {
          v55 = ~v52;
          do
          {
            v53 = (v53 + 1) & v55;
            v26 = v53 >> 6;
            v20 = 1 << v53;
            if (((1 << v53) & v79[v53 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_1001DC504(v51[6] + v53 * v80, v16, type metadata accessor for InternalServicePrediction);
            v56 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
          }

          while ((v56 & 1) == 0);
        }

        sub_1001DE088(v81, type metadata accessor for InternalServicePrediction);
        v57 = v77[v26];
        v77[v26] = v57 & ~v20;
        a2 = v51;
        a1 = v66;
        v24 = v67;
        v43 = i;
        v44 = v69;
        if ((v57 & v20) != 0)
        {
          v42 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_1001DE088(v81, type metadata accessor for InternalServicePrediction);
        a2 = v51;
        a1 = v66;
        v24 = v67;
        v43 = i;
        v44 = v69;
      }
    }

    if (v44 <= (v28 + 1))
    {
      v46 = v28 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v2 = 0;
        v49 = 1;
        v28 = v47;
        goto LABEL_38;
      }

      v2 = *(v43 + 8 * v45);
      ++v28;
      if (v2)
      {
        v28 = v45;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v77 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v77;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v79, v61);
  a2 = sub_1001D7F68(v63, v64, v77, v24, &v82);

LABEL_51:
  v58 = v82;
LABEL_52:
  sub_10017F9D4(v58);
  return a2;
}

uint64_t sub_1001D762C@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InternalServicePrediction(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v20 = v2;
    v21 = v5;
    v22 = a2;
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v8 + 48) + v13 * v11, v7, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v15 = 1;
        a2 = v22;
        goto LABEL_10;
      }
    }

    v16 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    v23 = *v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001D8780();
      v18 = v23;
    }

    a2 = v22;
    sub_1001DC56C(*(v18 + 48) + v13 * v11, v22, type metadata accessor for InternalServicePrediction);
    sub_1001D91CC(v11);
    v15 = 0;
    *v16 = v23;
LABEL_10:
    v5 = v21;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_1001D78D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InternalServicePrediction(0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1001DC56C(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1001DC56C(v5, *(v8 + 48) + v16 * v20, type metadata accessor for InternalServicePrediction);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

Swift::Int sub_1001D7C10(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_1001DC56C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for InternalUpcomingFlightPrediction);
      Hasher.init(_seed:)();
      type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
      sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1001DC56C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for InternalUpcomingFlightPrediction);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}