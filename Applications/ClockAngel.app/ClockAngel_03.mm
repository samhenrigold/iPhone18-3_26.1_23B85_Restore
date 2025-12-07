uint64_t storeEnumTagSinglePayload for AlarmButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10005B394(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocationAccuracy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005B474(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationAccuracy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005B518(uint64_t a1)
{
  result = sub_10002BB3C(319, &unk_1001164A0, CLLocation_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationAccuracy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005B64C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005B6D8(uint64_t a1)
{
  sub_100059BFC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_10005B734()
{
  result = qword_100116578;
  if (!qword_100116578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116578);
  }

  return result;
}

uint64_t sub_10005B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationAccuracy(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_100116590, &qword_1000D3B50);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10005C118(a1, &v20 - v13, type metadata accessor for LocationAccuracy);
  sub_10005C118(a2, &v14[v15], type metadata accessor for LocationAccuracy);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10005C118(v14, v10, type metadata accessor for LocationAccuracy);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
      v17 = static Measurement.== infix<A, B>(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_10005BE04(v14, type metadata accessor for LocationAccuracy);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10002D02C(v14, &qword_100116590, &qword_1000D3B50);
    v17 = 0;
    return v17 & 1;
  }

  sub_10005BE04(v14, type metadata accessor for LocationAccuracy);
  v17 = 1;
  return v17 & 1;
}

BOOL sub_10005BA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1000032D4(&qword_100116580, &qword_1000D3B48);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_10002CFC4(a1, &v22 - v13, &qword_100116398, &unk_1000D3A00);
  sub_10002CFC4(a2, &v14[v15], &qword_100116398, &unk_1000D3A00);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_10002D02C(v14, &qword_100116398, &unk_1000D3A00);
LABEL_4:
      v17 = type metadata accessor for CurrentLocationResult(0);
      return *(a1 + *(v17 + 20)) == *(a2 + *(v17 + 20));
    }

    goto LABEL_7;
  }

  sub_10002CFC4(v14, v10, &qword_100116398, &unk_1000D3A00);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_10005BE04(v10, type metadata accessor for CurrentLocation);
LABEL_7:
    v19 = &qword_100116580;
    v20 = &qword_1000D3B48;
LABEL_8:
    sub_10002D02C(v14, v19, v20);
    return 0;
  }

  sub_10005C180(&v14[v15], v7, type metadata accessor for CurrentLocation);
  sub_10002BB3C(0, &qword_100116588, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_10005BE04(v7, type metadata accessor for CurrentLocation);
    sub_10005BE04(v10, type metadata accessor for CurrentLocation);
    v19 = &qword_100116398;
    v20 = &unk_1000D3A00;
    goto LABEL_8;
  }

  v21 = sub_10005B788(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  sub_10005BE04(v7, type metadata accessor for CurrentLocation);
  sub_10005BE04(v10, type metadata accessor for CurrentLocation);
  sub_10002D02C(v14, &qword_100116398, &unk_1000D3A00);
  if (v21)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_10005BE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10005BE64(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10005BE74(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10005BE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = objc_opt_self();
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v19 = 0xD000000000000021;
    v20 = 0x80000001000DA1C0;
    v18[1] = a1;
    swift_errorRetain();
    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    v15._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    [v14 logInfo:v16];

    v17 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_100059FA0(v6);
    return sub_10002D02C(v6, &unk_100116598, &unk_1000D3B58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005C118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005C180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005C1F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10005C230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10005C248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10005C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *v12 = v13;
  v12[1] = v15;
  v16 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  v18 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v19 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = (v17 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *&v4[v16] = v17;
  v21 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v23 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v24 = type metadata accessor for TimerCompressedController(0);
  v42.receiver = v4;
  v42.super_class = v24;
  v25 = objc_msgSendSuper2(&v42, "init");
  v26 = &v25[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v26 = a1;
  *(v26 + 1) = a2;
  v27 = v25;

  v28 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  swift_beginAccess();
  sub_10005EFE0(a3, &v27[v28]);
  swift_endAccess();
  sub_10005CEDC();
  v29 = objc_opt_self();
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v30 = [v27 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v40 = v31;
  v41 = v33;
  v34._object = 0x80000001000DA500;
  v34._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v34);
  v39[1] = a1;
  v39[2] = a2;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v35._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37 = String._bridgeToObjectiveC()();

  [v29 logInfo:v37];

  sub_10005D2D0();
  sub_10002D02C(a3, &qword_100115E38, &qword_1000D3280);
  return v27;
}

char *sub_10005C638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *v10 = v11;
  v10[1] = v13;
  v14 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  v16 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v17 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  v18 = (v15 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *&v3[v14] = v15;
  v19 = &v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v21 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  *&v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v22 = type metadata accessor for TimerCompressedController(0);
  v39.receiver = v3;
  v39.super_class = v22;
  v23 = objc_msgSendSuper2(&v39, "init");
  v24 = &v23[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v24 = a1;
  *(v24 + 1) = a2;
  v25 = v23;

  sub_10005CEDC();
  v26 = objc_opt_self();
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v27 = [v25 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v37 = v28;
  v38 = v30;
  v31._object = 0x80000001000DA500;
  v31._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v31);
  v36[0] = a1;
  v36[1] = a2;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v32._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34 = String._bridgeToObjectiveC()();

  [v26 logInfo:v34];

  sub_10005D2D0();
  return v25;
}

id sub_10005C998(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v12 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  v14 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v15 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = (v13 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *&v2[v12] = v13;
  v17 = &v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v19 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v20 = type metadata accessor for TimerCompressedController(0);
  v23.receiver = v2;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

id sub_10005CC08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v18 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  v19 = (v16 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *&v4[v15] = v16;
  v20 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v22 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v22 - 8) + 56))(&v4[v21], 1, 1, v22);
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  if (a2)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for TimerCompressedController(0);
  v27.receiver = v4;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v23, a3);

  return v25;
}

void sub_10005CEDC()
{
  if (*(v0 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8))
  {
    v2[3] = &type metadata for ClockFeatureFlags;
    v2[4] = sub_10004DECC();
    LOBYTE(v2[0]) = 0;

    v1 = isFeatureEnabled(_:)();
    sub_100017D28(v2);
    if (v1)
    {
      if (qword_100113608 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_1001135F8 == -1)
    {
LABEL_6:
      sub_10005EF98(&qword_1001166A8, type metadata accessor for TimerCompressedController, &unk_1000D3CA0);
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.registerObserver(_:for:)();
      sub_10004E3D4(v2);
      return;
    }

    swift_once();
    goto LABEL_6;
  }
}

id sub_10005D048()
{
  if (*&v0[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8])
  {
    v5[3] = &type metadata for ClockFeatureFlags;
    v5[4] = sub_10004DECC();
    LOBYTE(v5[0]) = 0;

    v1 = isFeatureEnabled(_:)();
    sub_100017D28(v5);
    if (v1)
    {
      if (qword_100113608 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_1001135F8 == -1)
    {
LABEL_6:
      sub_10005EF98(&qword_1001166A8, type metadata accessor for TimerCompressedController, &unk_1000D3CA0);
      v2 = v0;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();

      sub_10004E3D4(v5);
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  v3 = type metadata accessor for TimerCompressedController(0);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t type metadata accessor for TimerCompressedController(uint64_t a1)
{
  result = qword_100116690;
  if (!qword_100116690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D2D0()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v56 - v6;
  v8 = type metadata accessor for OpaqueAlarm(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation];
  v13 = sub_1000BE460(1u);
  if (v13)
  {
    v57 = v11;
    v58 = v12;
    v60 = v9;
    v14 = v13;
    [v14 setAccessibilityIgnoresInvertColors:1];
    v15 = objc_opt_self();
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v16 = [v1 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v61 = v17;
    v62 = v19;
    v20._object = 0x80000001000DA4B0;
    v20._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    [v15 logInfo:v21];

    v22 = [v1 view];
    if (v22)
    {
      v23 = v22;
      v59 = v8;
      v56 = v5;
      [v22 addSubview:v14];

      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000D24B0;
      v25 = [v14 topAnchor];
      v26 = [v1 view];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 topAnchor];

        v29 = [v25 constraintEqualToAnchor:v28 constant:4.0];
        *(v24 + 32) = v29;
        v30 = [v14 widthAnchor];
        v31 = [v30 constraintEqualToConstant:32.0];

        *(v24 + 40) = v31;
        v32 = [v14 heightAnchor];
        v33 = [v14 widthAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v24 + 48) = v34;
        v35 = [v14 centerXAnchor];

        v36 = [v1 view];
        if (v36)
        {
          v37 = v36;
          v38 = objc_opt_self();
          v39 = [v37 centerXAnchor];

          v40 = [v35 constraintEqualToAnchor:v39];
          *(v24 + 56) = v40;
          sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v38 activateConstraints:isa];

          sub_10005DAC4(v7);
          v42 = v59;
          v43 = v60;
          if (v60[6](v7, 1, v59) == 1)
          {
            sub_10002D02C(v7, &qword_100114D70, &unk_1000D20E0);
          }

          else
          {
            v51 = v57;
            sub_10004DF2C(v7, v57);
            v52 = v51;
            v53 = v56;
            sub_10004DF2C(v52, v56);
            (v43[7])(v53, 0, 1, v42);
            v54 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
            v55 = v58;
            swift_beginAccess();
            sub_10002B138(v53, v55 + v54);
            swift_endAccess();
          }

          return;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v44 = objc_opt_self();
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v45 = [v1 description];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v61 = v46;
  v62 = v48;
  v49._countAndFlagsBits = 0xD00000000000002CLL;
  v49._object = 0x80000001000DA480;
  String.append(_:)(v49);
  v60 = String._bridgeToObjectiveC()();

  [v44 logInfo:v60];
  v50 = v60;
}

uint64_t sub_10005DAC4@<X0>(char *a1@<X8>)
{
  v3 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for AlarmPresentationState();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8);
  if (!v16)
  {
    goto LABEL_12;
  }

  v33 = a1;
  v35 = *(v1 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId);
  v17 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  swift_beginAccess();
  sub_10005EF28(v1 + v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    v18 = &qword_100115E38;
    v19 = &qword_1000D3280;
    v20 = v11;
  }

  else
  {
    v32 = *(v13 + 32);
    v32(v15, v11, v12);
    v21 = qword_100113608;

    if (v21 != -1)
    {
      swift_once();
    }

    v36 = v35;
    v37 = v16;

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v38);
    v22 = v34;
    if ((*(v34 + 48))(v5, 1, v6) != 1)
    {

      v28 = *(v22 + 32);
      v28(v8, v5, v6);
      v29 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
      v30 = v33;
      v28(v33, v8, v6);
      v32(&v30[v29], v15, v12);
      v23 = type metadata accessor for OpaqueAlarm(0);
      swift_storeEnumTagMultiPayload();
      v24 = *(*(v23 - 8) + 56);
      v25 = v30;
      return v24(v25, 0, 1, v23);
    }

    (*(v13 + 8))(v15, v12);
    v18 = &unk_100115DA0;
    v19 = &unk_1000D3220;
    v20 = v5;
  }

  sub_10002D02C(v20, v18, v19);
  a1 = v33;
  if (qword_1001135F8 != -1)
  {
    swift_once();
  }

  v36 = v35;
  v37 = v16;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(v38);
  if (!v39)
  {
LABEL_12:
    v26 = type metadata accessor for OpaqueAlarm(0);
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }

  *a1 = v39;
  v23 = type metadata accessor for OpaqueAlarm(0);
  swift_storeEnumTagMultiPayload();
  v24 = *(*(v23 - 8) + 56);
  v25 = a1;
  return v24(v25, 0, 1, v23);
}

void sub_10005DFEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for OpaqueAlarm(0);
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
  if (!swift_dynamicCast())
  {
    v37 = objc_opt_self();
    aBlock = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v38 = [v2 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    aBlock = v39;
    v73 = v41;
    v42._countAndFlagsBits = 0xD000000000000027;
    v42._object = 0x80000001000DA3D0;
    String.append(_:)(v42);
    v43 = [v2 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v36 = String._bridgeToObjectiveC()();

    [v37 logInfo:v36];
    goto LABEL_5;
  }

  v63 = v17;
  v64 = v8;
  v65 = v5;
  v66 = v4;

  v18 = objc_opt_self();
  aBlock = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19 = [v2 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000033;
  v24._object = 0x80000001000DA400;
  String.append(_:)(v24);
  v25 = [v2 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30 = String._bridgeToObjectiveC()();

  v67 = v18;
  [v18 logInfo:v30];

  sub_10005DAC4(v11);
  if ((*(v71 + 48))(v11, 1, v12) == 1)
  {
    sub_10002D02C(v11, &qword_100114D70, &unk_1000D20E0);
    aBlock = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v31 = [v2 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    aBlock = v32;
    v73 = v34;
    v35._countAndFlagsBits = 0xD000000000000011;
    v35._object = 0x80000001000DA440;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    [v67 logInfo:v36];
LABEL_5:

    return;
  }

  v48 = v63;
  sub_10004DF2C(v11, v63);
  aBlock = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v49 = [v2 description];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  aBlock = v50;
  v73 = v52;
  v53._object = 0x80000001000DA460;
  v53._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v53);
  v54 = String._bridgeToObjectiveC()();

  [v67 logInfo:v54];

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v55 = static OS_dispatch_queue.main.getter();
  sub_10005EC7C(v48, v15);
  v56 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v2;
  sub_10004DF2C(v15, v57 + v56);
  v76 = sub_10005EE50;
  v77 = v57;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10004B270;
  v75 = &unk_1001015A8;
  v58 = _Block_copy(&aBlock);
  v59 = v2;

  v60 = v64;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10005EF98(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_100057240();
  v61 = v69;
  v62 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v58);

  (*(v65 + 8))(v61, v62);
  (*(v68 + 8))(v60, v70);
  sub_10005EECC(v48);
}

void sub_10005E7D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = objc_opt_self();
  v8 = [v1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v32 = v9;
  v33 = v11;
  v12._countAndFlagsBits = 0x4C65746164707520;
  v12._object = 0xED000074756F7961;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v7 logInfo:v13];

  v14 = *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation];
  sub_10005EC7C(a1, v6);
  v15 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002B138(v6, v14 + v16);
  swift_endAccess();
  if (sub_10008A09C())
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v17 = [v2 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._object = 0x80000001000DA390;
    v22._countAndFlagsBits = 0xD000000000000033;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v7 logInfo:v23];

    sub_1000BF040();
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v24 = [v2 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0xD000000000000034;
    v29._object = 0x80000001000DA350;
    String.append(_:)(v29);
    v30 = String._bridgeToObjectiveC()();

    [v7 logInfo:v30];

    sub_1000BE9EC();
  }
}

void sub_10005EB2C(uint64_t a1)
{
  sub_10004A5CC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10005EBF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId);

  return v1;
}

uint64_t sub_10005EC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005ECE0()
{
  v1 = *(type metadata accessor for OpaqueAlarm(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10005EEB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10005EECC(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005EF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005EFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_10005F050(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem] = 0;
  v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] = 0;
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_xmarkSize] = a5;
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_arrowSize] = a6;
  v13 = objc_opt_self();
  v14 = [v13 configurationWithPointSize:5 weight:a5];
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 systemImageNamed:v15 withConfiguration:v14];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] = v18;
  v19 = [v13 configurationWithPointSize:5 weight:a6];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v16 systemImageNamed:v20 withConfiguration:v19];

  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] = v22;
  v23 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer] = v23;
  v24 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer] = v24;
  v25 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer] = v25;
  v39.receiver = v6;
  v39.super_class = type metadata accessor for SpinnyResetView();
  v26 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  [v26 setUserInteractionEnabled:0];
  sub_10005F4FC();
  v27 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v28 = String._bridgeToObjectiveC()();
  [v27 setName:v28];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:isa forKey:kCAFilterInputRadius];

  v30 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:v30 forKey:kCAFilterInputNormalizeEdges];

  v31 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:v31 forKey:kCAFilterInputHardEdges];

  v32 = String._bridgeToObjectiveC()();
  [v27 setValue:v32 forKey:kCAFilterInputQuality];

  v33 = String._bridgeToObjectiveC()();
  [v27 setValue:v33 forKey:kCAFilterInputIntermediateBitDepth];

  v34 = [v26 layer];
  sub_1000032D4(&qword_100114138, &unk_1000D1420);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000D08B0;
  *(v35 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
  *(v35 + 32) = v27;
  v36 = v27;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v34 setFilters:v37];

  return v26;
}

id sub_10005F4FC()
{
  v1 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] setContentMode:4];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor:v5];

  v6 = *&v0[v1];
  v7 = *&CGAffineTransformIdentity.c;
  *&v16.a = *&CGAffineTransformIdentity.a;
  *&v16.c = v7;
  *&v16.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v15, &v16, -1.57079633);
  v16 = v15;
  CGAffineTransformScale(&v15, &v16, -1.0, 1.0);
  v16 = v15;
  [v6 setTransform:&v16];
  v8 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer] addSubview:*&v0[v1]];
  v9 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer] addSubview:*&v0[v8]];
  v10 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer] addSubview:*&v0[v9]];
  [v0 addSubview:*&v0[v10]];
  v11 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] setAlpha:0.0];
  [*&v0[v11] setContentMode:4];
  v12 = *&v0[v11];
  v13 = [v3 whiteColor];
  [v12 setTintColor:v13];

  return [v0 addSubview:*&v0[v11]];
}

void sub_10005F6F4(uint64_t a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SpinnyResetView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView;
  [*&v1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] sizeToFit];
  v3 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
  v4 = *&v1[v2];
  v5 = *&v1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer];
  [v4 bounds];
  [v5 setBounds:?];

  v6 = *&v1[v2];
  v7 = *&v1[v3];
  [v6 bounds];
  CGRectGetWidth(v20);
  [*&v1[v2] bounds];
  CGRectGetHeight(v21);
  Frame.timestamp.getter();
  [v7 setCenter:?];

  v8 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  v9 = *&v1[v2];
  v10 = *&v1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer];
  [v9 bounds];
  [v10 setBounds:?];

  v11 = *&v1[v2];
  v12 = *&v1[v8];
  [v11 bounds];
  CGRectGetWidth(v22);
  [*&v1[v2] bounds];
  CGRectGetHeight(v23);
  Frame.timestamp.getter();
  [v12 setCenter:?];

  v13 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer;
  v14 = *&v1[v2];
  v15 = *&v1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer];
  [v14 bounds];
  [v15 setBounds:?];

  v16 = *&v1[v13];
  [v1 bounds];
  CGRectGetWidth(v24);
  [v1 bounds];
  CGRectGetHeight(v25);
  [*&v1[v2] bounds];
  CGRectGetHeight(v26);
  Frame.timestamp.getter();
  [v16 setCenter:?];

  v17 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
  [*&v1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] sizeToFit];
  v18 = *&v1[v17];
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  Frame.timestamp.getter();
  [v18 setCenter:?];
}

uint64_t sub_10005F9D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v23 - v16;
  v18 = v2[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode];
  if (v18 != (a1 & 1))
  {
    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = *(v11 + 8);
    v25(v14, v10);
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = v18;
    aBlock[4] = sub_100060C7C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004B270;
    aBlock[3] = &unk_100101688;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100060CA0();
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v20);

    (*(v28 + 8))(v6, v4);
    (*(v26 + 8))(v9, v27);
    return (v25)(v17, v10);
  }

  return result;
}

uint64_t sub_10005FD74(_BYTE *a1, char a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  result = __chkstk_darwin(v11);
  v13 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode;
  if (a1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] == (a2 & 1))
  {
    v49 = v5;
    v50 = v4;
    v14 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem;
    v15 = *&a1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem];
    v48 = v10;
    if (v15)
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *&a1[v14] = 0;

    v16 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
    if (a1[v13])
    {
      v17 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
    }

    else
    {
      v17 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
    }

    v18 = *&a1[v17];
    if (a1[v13])
    {
      v16 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
    }

    v47 = v14;
    v19 = *&a1[v16];
    v20 = v18;
    v46 = v20;
    v21 = v19;
    CGAffineTransformMakeScale(&v56, 0.75, 0.75);
    tx = v56.tx;
    ty = v56.ty;
    v45 = *&v56.a;
    v44 = *&v56.c;
    CGAffineTransformMakeScale(&v56, 0.65, 0.65);
    v53 = v44;
    aBlock = v45;
    v54 = tx;
    v55 = ty;
    [v20 setTransform:&aBlock];
    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = v21;
    v26 = *&v56.c;
    *(v25 + 32) = *&v56.a;
    *(v25 + 48) = v26;
    *(v25 + 64) = *&v56.tx;
    v54 = COERCE_DOUBLE(sub_100060D38);
    v55 = *&v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_10004B270;
    *(&v53 + 1) = &unk_1001016D8;
    v27 = _Block_copy(&aBlock);
    *&v45 = a1;
    v28 = v21;

    v54 = COERCE_DOUBLE(Frame.timestamp.getter);
    v55 = 0.0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_1000C1688;
    *(&v53 + 1) = &unk_100101700;
    v29 = _Block_copy(&aBlock);
    [v24 _animateUsingSpringWithDampingRatio:0 response:v27 tracking:v29 dampingRatioSmoothing:1.0 responseSmoothing:0.2 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    _Block_release(v29);
    _Block_release(v27);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v54 = COERCE_DOUBLE(sub_100060D7C);
    v55 = *&v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_10004B270;
    *(&v53 + 1) = &unk_100101750;
    v31 = _Block_copy(&aBlock);
    *&v44 = v28;

    v54 = COERCE_DOUBLE(Frame.timestamp.getter);
    v55 = 0.0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_1000C1688;
    *(&v53 + 1) = &unk_100101778;
    v32 = _Block_copy(&aBlock);
    [v24 _animateUsingSpringWithDampingRatio:0 response:v31 tracking:v32 dampingRatioSmoothing:1.0 responseSmoothing:0.14 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    _Block_release(v32);
    _Block_release(v31);
    v33 = swift_allocObject();
    v34 = v45;
    v35 = v46;
    *(v33 + 16) = v45;
    *(v33 + 24) = v35;
    v54 = COERCE_DOUBLE(sub_100060DD0);
    v55 = *&v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_10004B270;
    *(&v53 + 1) = &unk_1001017C8;
    _Block_copy(&aBlock);
    v51 = &_swiftEmptyArrayStorage;
    sub_100060CA0();
    v36 = v34;
    v37 = v35;
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v38 = DispatchWorkItem.init(flags:block:)();

    *&a1[v47] = v38;

    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v40 = v48;
    + infix(_:_:)();
    v41 = *(v49 + 8);
    v42 = v8;
    v43 = v50;
    v41(v42, v50);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v41)(v40, v43);
  }

  return result;
}

id sub_1000603F8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = [a1 layer];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKeyPath:v9];

  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v5;
  v14 = v6;
  return [a2 setTransform:v12];
}

void sub_1000604C8(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v21 = sub_100060DD8;
  v22 = v5;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101818;
  v6 = _Block_copy(&v17);
  v7 = a1;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_100101840;
  v8 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v6 tracking:v8 dampingRatioSmoothing:1.0 responseSmoothing:0.36 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v8);
  _Block_release(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v21 = sub_100060DE0;
  v22 = v9;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101890;
  v10 = _Block_copy(&v17);
  v11 = a2;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_1001018B8;
  v12 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v10 tracking:v12 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v21 = sub_100060DF4;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101908;
  v14 = _Block_copy(&v17);
  v15 = v11;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_100101930;
  v16 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v14 tracking:v16 dampingRatioSmoothing:0.58 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_100060880(void *a1)
{
  v1 = [a1 layer];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKeyPath:v3];
}

id sub_10006091C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  v3 = *(a1 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer);
  [v3 transform];
  CGAffineTransformRotate(&v8, &v9, 2.0943951);
  v9 = v8;
  [v3 setTransform:&v9];

  v4 = *(a1 + v2);
  [v4 transform];
  CGAffineTransformRotate(&v8, &v9, 2.0943951);
  v9 = v8;
  [v4 setTransform:&v9];

  v5 = *(a1 + v2);
  v6 = *&CGAffineTransformIdentity.c;
  *&v9.a = *&CGAffineTransformIdentity.a;
  *&v9.c = v6;
  *&v9.tx = *&CGAffineTransformIdentity.tx;
  return [v5 setTransform:&v9];
}

id sub_100060AF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpinnyResetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100060BF0()
{
  result = qword_100116720;
  if (!qword_100116720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116720);
  }

  return result;
}

uint64_t sub_100060C44()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_100060C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100060CA0()
{
  result = qword_100116260;
  if (!qword_100116260)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116260);
  }

  return result;
}

uint64_t sub_100060CF8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100060D44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060D90()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100060DF4()
{
  v1 = *(v0 + 16);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

uint64_t sub_100060EF0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100060F5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060FD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100061044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

double sub_1000610F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100061164()
{
  v1 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTime;
  v2 = sub_1000032D4(&qword_100116B40, &qword_1000D4560);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTimeWithoutMs, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTime, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTimeWithoutMs, v2);
  v4 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__lap;
  v5 = sub_1000032D4(&qword_100116B48, &qword_1000D4568);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__state;
  v7 = sub_1000032D4(&qword_100116B50, &qword_1000D4570);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__startingDate;
  v9 = sub_1000032D4(&qword_100116B58, &qword_1000D4578);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__offset;
  v11 = sub_1000032D4(&qword_100116B60, &qword_1000D4580);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTimeInterval, v11);
  v12(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTimeInterval, v11);
  v13 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel_autoFormatter;
  v14 = type metadata accessor for StopwatchAutoFormatter();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t sub_1000613E4()
{
  sub_100061164();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ObservableStopwatchModel(uint64_t a1)
{
  result = qword_1001167A0;
  if (!qword_1001167A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061490(uint64_t a1)
{
  sub_100061718(319, &qword_1001167B0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100061718(319, &qword_1001167B8, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1000616C4(319, &qword_1001167C0, type metadata accessor for MTStopwatchState);
      if (v3 <= 0x3F)
      {
        sub_1000616C4(319, &qword_1001167C8, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_100061718(319, &unk_1001167D0, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            type metadata accessor for StopwatchAutoFormatter();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1000616C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100061718(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100061764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000617AC(uint64_t result, int a2, int a3)
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

uint64_t sub_1000617FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100061844(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10006189C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000618C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_100061908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006196C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000619CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableStopwatchModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100061A0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_1000627F4(v2, a2 + 24);
}

uint64_t sub_100061A48()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100061B90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22[0] = a2;
  v3 = sub_1000032D4(&qword_100116AF0, &qword_1000D4320);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1000032D4(&qword_100116AF8, &qword_1000D4328);
  v7 = __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v22 - v11;
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  *v5 = static HorizontalAlignment.trailing.getter();
  *(v5 + 1) = 0xC000000000000000;
  v5[16] = 0;
  v15 = sub_1000032D4(&qword_100116B00, &qword_1000D4330);
  sub_100061E20(a1, &v5[*(v15 + 44)]);
  v16 = static Animation.default.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = 0;
  if (v22[1] >= 2)
  {
    v17 = sub_100061A48() ^ 1;
  }

  sub_10002C7C4(v5, v12, &qword_100116AF0, &qword_1000D4320);
  v18 = &v12[*(v6 + 36)];
  *v18 = v16;
  v18[8] = v17 & 1;
  sub_10002C7C4(v12, v14, &qword_100116AF8, &qword_1000D4328);
  sub_10002CFC4(v14, v9, &qword_100116AF8, &qword_1000D4328);
  v19 = v22[0];
  *v22[0] = 0;
  *(v19 + 8) = 1;
  v20 = sub_1000032D4(&qword_100116B08, &qword_1000D4338);
  sub_10002CFC4(v9, v19 + *(v20 + 48), &qword_100116AF8, &qword_1000D4328);
  sub_10002D02C(v14, &qword_100116AF8, &qword_1000D4328);
  return sub_10002D02C(v9, &qword_100116AF8, &qword_1000D4328);
}

uint64_t sub_100061E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for RunningCountupView(0);
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000032D4(&qword_100116B10, &qword_1000D4340);
  __chkstk_darwin(v43);
  v7 = &v42 - v6;
  v46 = sub_1000032D4(&qword_100116B18, &qword_1000D4348);
  v8 = __chkstk_darwin(v46);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - v11;
  __chkstk_darwin(v10);
  v44 = &v42 - v13;
  v14 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = a1;
  if (v58 < 2 || (sub_100061A48() & 1) != 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
  }

  else
  {
    sub_10002B00C(a1 + 24, v50);
    type metadata accessor for ObservableStopwatchModel(0);
    sub_10006548C();

    *&v49 = ObservedObject.init(wrappedValue:)();
    *(&v49 + 1) = v15;
    v16 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    BYTE8(v51) = v16;
    *&v52 = v17;
    *(&v52 + 1) = v18;
    *&v53 = v19;
    *(&v53 + 1) = v20;
    LOBYTE(v54) = 0;
    v21 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    BYTE8(v54) = v21;
    *&v55 = v22;
    *(&v55 + 1) = v23;
    *&v56 = v24;
    *(&v56 + 1) = v25;
    v57 = 0;
    v67 = 0;
    v60 = v50[1];
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v58 = v49;
    v59 = v50[0];
    v64 = v54;
    v65 = v55;
    v66 = v56;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (qword_100113658 != -1)
  {
    swift_once();
  }

  v26 = qword_10011F690;
  v27 = [objc_opt_self() mtOrange];
  v28 = Color.init(uiColor:)();
  v5[v3[5]] = 0;
  *&v5[v3[6]] = 0x4044000000000000;
  *&v5[v3[7]] = v26;
  *&v5[v3[8]] = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49 < 2 || (v29 = 1.0, (sub_100061A48() & 1) != 0))
  {
    v29 = 1.2;
  }

  static UnitPoint.trailing.getter();
  v31 = v30;
  v33 = v32;
  sub_100065428(v5, v7);
  v34 = &v7[*(v43 + 36)];
  *v34 = v29;
  v34[1] = v29;
  *(v34 + 2) = v31;
  *(v34 + 3) = v33;
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();
  v35 = static ObservableObject.environmentStore.getter();
  sub_10002C7C4(v7, v12, &qword_100116B10, &qword_1000D4340);
  v36 = &v12[*(v46 + 36)];
  *v36 = v35;
  v36[1] = v14;
  v37 = v44;
  sub_10002C7C4(v12, v44, &qword_100116B18, &qword_1000D4348);
  sub_10002CFC4(&v58, &v49, &qword_100116B28, &qword_1000D4398);
  v38 = v47;
  sub_10002CFC4(v37, v47, &qword_100116B18, &qword_1000D4348);
  v39 = v48;
  sub_10002CFC4(&v49, v48, &qword_100116B28, &qword_1000D4398);
  v40 = sub_1000032D4(&qword_100116B30, &qword_1000D43A0);
  sub_10002CFC4(v38, v39 + *(v40 + 48), &qword_100116B18, &qword_1000D4348);

  sub_10002D02C(v37, &qword_100116B18, &qword_1000D4348);
  sub_10002D02C(&v58, &qword_100116B28, &qword_1000D4398);
  sub_10002D02C(v38, &qword_100116B18, &qword_1000D4348);
  return sub_10002D02C(&v49, &qword_100116B28, &qword_1000D4398);
}

double sub_100062398@<D0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1000032D4(&qword_100116AE0, &qword_1000D4310);
  sub_100061B90(v2, (a2 + *(v4 + 44)));
  v5 = static Edge.Set.horizontal.getter();
  v6 = a2 + *(sub_1000032D4(&qword_100116AE8, &qword_1000D4318) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_10006242C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 542130508;
  v4._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = Text.monospacedDigit()();
  v13 = v12;
  v15 = v14;
  sub_100025B0C(v6, v8, v10 & 1);

  v16 = v2[5];
  v17 = v2[6];
  sub_100025B1C(v2 + 2, v16);
  (*(v17 + 24))(v16, v17);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_100025B0C(v11, v13, v15 & 1);

  v23 = v2[5];
  v24 = v2[6];
  sub_100025B1C(v2 + 2, v23);
  (*(v24 + 40))(v23, v24);
  Color.opacity(_:)();

  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  LOBYTE(v24) = v28;
  v30 = v29;

  sub_100025B0C(v18, v20, v22 & 1);

  *a1 = v25;
  a1[1] = v27;
  *(a1 + 16) = v24 & 1;
  a1[3] = v30;
  return result;
}

uint64_t sub_1000626F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  sub_100025B1C(a1 + 2, v4);
  v6 = (*(v5 + 48))(v4, v5);
  v9[0] = static VerticalAlignment.center.getter();
  *&v9[1] = v6;
  v10 = 0;
  sub_1000627F4(a1, &v11);
  sub_10002CFC4(v9, v8, &qword_100116B38, &qword_1000D43A8);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_10002CFC4(v8, a2 + 16, &qword_100116B38, &qword_1000D43A8);
  sub_10002D02C(v9, &qword_100116B38, &qword_1000D43A8);
  return sub_10002D02C(v8, &qword_100116B38, &qword_1000D43A8);
}

uint64_t sub_1000627F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B00C(a1 + 16, &v12);
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();
  swift_retain_n();
  v11[0] = ObservedObject.init(wrappedValue:)();
  v11[1] = v4;
  sub_10002B00C(a1 + 16, &v10);
  v9[0] = ObservedObject.init(wrappedValue:)();
  v9[1] = v5;
  sub_10006554C(v11, v8);
  sub_100065584(v9, v7);
  sub_10006554C(v8, a2);
  sub_100065584(v7, a2 + 56);
  sub_1000655BC(v9);
  sub_1000655EC(v11);
  sub_1000655BC(v7);
  return sub_1000655EC(v8);
}

uint64_t sub_1000628E8@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_1000626F8(v2, a2 + 24);
}

uint64_t sub_100062940@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v32 = type metadata accessor for Font._StylisticAlternative();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(v34, 1);
  countAndFlagsBits = 12336;
  if (v5.value._object)
  {
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  object = 0xE200000000000000;
  if (v5.value._object)
  {
    object = v5.value._object;
  }

  v34 = *&countAndFlagsBits;
  v35 = object;
  sub_100025FB4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v31[1] = v13;
  v15 = v1[5];
  v14 = v1[6];
  sub_100025B1C(v1 + 2, v15);
  (*(v14 + 24))(v15, v14);
  Font.monospacedDigit()();

  v16 = v32;
  (*(v2 + 104))(v4, enum case for Font._StylisticAlternative.three(_:), v32);
  Font._stylisticAlternative(_:)();

  (*(v2 + 8))(v4, v16);
  v17 = Text.font(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;

  sub_100025B0C(v8, v10, v12 & 1);

  v21 = v1[5];
  v22 = v1[6];
  sub_100025B1C(v1 + 2, v21);
  (*(v22 + 40))(v21, v22);
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  LOBYTE(v22) = v26;
  v28 = v27;

  sub_100025B0C(v17, v19, v16 & 1);

  v30 = v33;
  *v33 = v23;
  v30[1] = v25;
  *(v30 + 16) = v22 & 1;
  v30[3] = v28;
  return result;
}

uint64_t sub_100062C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100025FB4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v29[1] = v12;
  v14 = *(v1 + 40);
  v13 = *(v1 + 48);
  sub_100025B1C((v2 + 16), *(v2 + 40));
  (*(v13 + 16))(v14, v13);
  Font.monospacedDigit()();

  v15 = v31;
  (*(v4 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v31);
  Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v6, v15);
  v16 = Text.font(_:)();
  v30 = v17;
  v31 = v16;
  LOBYTE(v13) = v18;
  v20 = v19;

  sub_100025B0C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  LOBYTE(v6) = v13 & 1;
  LOBYTE(v32) = v13 & 1;
  v33 = 0;
  v23 = *(v1 + 40);
  v24 = *(v1 + 48);
  sub_100025B1C((v2 + 16), *(v2 + 40));
  v25 = (*(v24 + 32))(v23, v24);
  v26 = swift_getKeyPath();
  result = swift_getKeyPath();
  v28 = v30;
  *a1 = v31;
  *(a1 + 8) = v28;
  *(a1 + 16) = v6;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v22;
  *(a1 + 64) = 0x3FE3333333333333;
  *(a1 + 72) = v26;
  *(a1 + 80) = v25;
  *(a1 + 88) = result;
  *(a1 + 96) = 0x3FE3333333333333;
  return result;
}

uint64_t sub_100062EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B00C(a1 + 16, &v7);
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();

  v6[0] = ObservedObject.init(wrappedValue:)();
  v6[1] = v3;
  sub_1000654E4(v6, v5);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1000654E4(v5, a2 + 16);
  sub_10006551C(v6);
  return sub_10006551C(v5);
}

uint64_t sub_100062F98@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_100062EF4(v2, a2 + 24);
}

uint64_t sub_100063048(double a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v5 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  a4(v6);
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  return v10;
}

double sub_1000631DC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100063250(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_1000032D4(&qword_100116AA8, &qword_1000D41A0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v16 >= 3600.0)
  {
    sub_1000637DC(&v16);
    v14 = v17;
    v15 = v18;
    *v8 = v16;
    v8[16] = v14;
    *(v8 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8, &protocol conformance descriptor for HStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v12 = sub_1000032D4(&qword_100116AC0, &qword_1000D41F8);
    sub_1000634F8(&v11[*(v12 + 44)], a3, a4);
    sub_100064BDC(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100064C4C(v11);
  }
}

uint64_t sub_1000634F8@<X0>(uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v28 = a2;
  v27 = sub_1000032D4(&qword_100116AC8, &qword_1000D4200);
  v6 = *(v27 - 8);
  v7 = __chkstk_darwin(v27);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1000637DC(&v38);
  v30 = v39;
  v31 = v38;
  v29 = v40;
  v32 = v41;
  sub_100063B20(&v38);
  v11 = v38;
  v12 = v39;
  v13 = v40;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v14 = objc_opt_self();
  v15 = [v14 systemFontOfSize:a3 weight:UIFontWeightMedium];
  [v15 capHeight];

  v16 = [v14 systemFontOfSize:a4 weight:UIFontWeightBold];
  [v16 capHeight];

  v26 = v10;
  View.baselineOffset(_:)();
  sub_100025B0C(v11, v12, v13);

  v17 = *(v6 + 16);
  v18 = v33;
  v19 = v27;
  v17(v33, v10, v27);
  v21 = v30;
  v20 = v31;
  v22 = v28;
  *v28 = v31;
  v22[1] = v21;
  LOBYTE(v10) = v29;
  *(v22 + 16) = v29;
  v22[3] = v32;
  v23 = sub_1000032D4(&qword_100116AD0, &unk_1000D4208);
  v17(v22 + *(v23 + 48), v18, v19);
  sub_100025AFC(v20, v21, v10);
  v24 = *(v6 + 8);

  v24(v26, v19);
  v24(v18, v19);
  sub_100025B0C(v20, v21, v10);
}

uint64_t sub_1000637DC@<X0>(uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(v34, 0);
  countAndFlagsBits = 12336;
  if (v10.value._object)
  {
    countAndFlagsBits = v10.value._countAndFlagsBits;
  }

  object = 0xE200000000000000;
  if (v10.value._object)
  {
    object = v10.value._object;
  }

  v34 = *&countAndFlagsBits;
  v35 = object;
  sub_100025FB4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.medium.getter();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v9, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v4 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v3);
  Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v6, v3);
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100025B0C(v13, v15, v17 & 1);

  static Color.orange.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_100025B0C(v19, v21, v23 & 1);

  v31 = v33;
  *v33 = v24;
  v31[1] = v26;
  *(v31 + 16) = v15 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_100063B20@<X0>(uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000652AC(2, v34, v35);

  v10 = static String._fromSubstring(_:)();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_100025FB4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.bold.getter();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v9, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v4 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v3);
  Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v6, v3);
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100025B0C(v13, v15, v17 & 1);

  static Color.orange.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_100025B0C(v19, v21, v23 & 1);

  v31 = v33;
  *v33 = v24;
  v31[1] = v26;
  *(v31 + 16) = v15 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_100063E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34[1] = a1;
  v40 = type metadata accessor for Font._StylisticAlternative();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - v7;
  v41 = Image.init(systemName:)();
  static Font.Weight.regular.getter();
  v9 = type metadata accessor for Font.Design();
  v34[0] = *(*(v9 - 8) + 56);
  (v34[0])(v8, 1, 1, v9);
  v39 = static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  KeyPath = swift_getKeyPath();
  v36 = static Color.orange.getter();
  v35 = swift_getKeyPath();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.Weight.regular.getter();
  (v34[0])(v8, 1, 1, v9);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  v17 = v38;
  v18 = v40;
  (*(v38 + 104))(v4, enum case for Font._StylisticAlternative.three(_:), v40);
  Font._stylisticAlternative(_:)();

  (*(v17 + 8))(v4, v18);
  v19 = Text.font(_:)();
  v21 = v20;
  LOBYTE(v17) = v22;

  sub_100025B0C(v12, v14, v16 & 1);

  static Color.gray.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_100025B0C(v19, v21, v17 & 1);

  LOBYTE(v42) = v27 & 1;
  v31 = v36;
  v30 = KeyPath;
  *a2 = v41;
  *(a2 + 8) = v30;
  v32 = v35;
  *(a2 + 16) = v39;
  *(a2 + 24) = v32;
  *(a2 + 32) = v31;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27 & 1;
  *(a2 + 64) = v29;

  sub_100025AFC(v23, v25, v27 & 1);

  sub_100025B0C(v23, v25, v27 & 1);
}

double sub_10006439C@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = static VerticalAlignment.center.getter();
  v17 = 1;
  sub_100063E90(v4, &v11);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v18 = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v24 = v15;
  v23[0] = v11;
  sub_10002CFC4(&v18, v10, &qword_100116AD8, &qword_1000D4260);
  sub_10002D02C(v23, &qword_100116AD8, &qword_1000D4260);
  *&v16[7] = v18;
  *&v16[71] = v22;
  *&v16[55] = v21;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v6 = *v16;
  *(a2 + 33) = *&v16[16];
  v7 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v7;
  result = *&v16[63];
  *(a2 + 80) = *&v16[63];
  v9 = v17;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  return result;
}

uint64_t sub_1000644E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_1000032D4(&qword_100116C20, &qword_1000D4918);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_1000032D4(&qword_100116C28, &qword_1000D4920) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  v7 = swift_getKeyPath();
  result = sub_1000032D4(&qword_100116C30, &qword_1000D4928);
  v9 = (a2 + *(result + 36));
  *v9 = v7;
  v9[1] = 0x3FE3333333333333;
  return result;
}

void sub_10006461C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10006469C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100064710(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100064790(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100064804()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100064880(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

void sub_100064A2C(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_100064ABC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064C4C(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100064D18@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100064DA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064E20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100064E78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100064ED0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - v6;
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  Date.init()();
  type metadata accessor for ObservableStopwatchModel(0);
  v10 = swift_allocObject();
  v17 = 0;
  Published.init(initialValue:)();
  v17 = 0;
  Published.init(initialValue:)();
  v17 = 0;
  Published.init(initialValue:)();
  StopwatchAutoFormatter.init()();
  *(v10 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel_msThreshold) = 0x40AC200000000000;
  swift_beginAccess();
  v15 = 206967550000;
  v16 = 0xE500000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v15 = 12336;
  v16 = 0xE200000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v15 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v15 = 3;
  type metadata accessor for MTStopwatchState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v11 = *(v1 + 16);
  v11(v7, v9, v0);
  swift_beginAccess();
  v11(v4, v7, v0);
  Published.init(initialValue:)();
  v12 = *(v1 + 8);
  v12(v7, v0);
  swift_endAccess();
  swift_beginAccess();
  v15 = 206967550000;
  v16 = 0xE500000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v15 = 12336;
  v16 = 0xE200000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  v12(v9, v0);
  return v10;
}

uint64_t sub_1000652AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_100065368@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000653C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100065428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningCountupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006548C()
{
  result = qword_100116B20;
  if (!qword_100116B20)
  {
    type metadata accessor for ObservableStopwatchModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B20);
  }

  return result;
}

uint64_t sub_100065814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10006585C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000658BC()
{
  result = qword_100116B68;
  if (!qword_100116B68)
  {
    sub_10001C820(&qword_100116B70, &qword_1000D4670);
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B68);
  }

  return result;
}

unint64_t sub_1000659BC()
{
  result = qword_100116B88;
  if (!qword_100116B88)
  {
    sub_10001C820(&qword_100116AE8, &qword_1000D4318);
    sub_10002DAD8(&qword_100116B90, &qword_100116B98, &qword_1000D4680, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B88);
  }

  return result;
}

unint64_t sub_100065BD4()
{
  result = qword_100116BC8;
  if (!qword_100116BC8)
  {
    sub_10001C820(&qword_100116BD0, &qword_1000D4888);
    sub_100065C8C();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BC8);
  }

  return result;
}

unint64_t sub_100065C8C()
{
  result = qword_100116BD8;
  if (!qword_100116BD8)
  {
    sub_10001C820(&qword_100116BE0, &unk_1000D4890);
    sub_100065D44();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BD8);
  }

  return result;
}

unint64_t sub_100065D44()
{
  result = qword_100116BE8;
  if (!qword_100116BE8)
  {
    sub_10001C820(&qword_100116BF0, &unk_1000D6E40);
    sub_100065DFC();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE8);
  }

  return result;
}

unint64_t sub_100065DFC()
{
  result = qword_100116BF8;
  if (!qword_100116BF8)
  {
    sub_10001C820(&qword_100116C00, &unk_1000D48A0);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF8);
  }

  return result;
}

unint64_t sub_100065EB8()
{
  result = qword_100116C08;
  if (!qword_100116C08)
  {
    sub_10001C820(&qword_100116C10, &qword_1000D48C0);
    sub_100065F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C08);
  }

  return result;
}

unint64_t sub_100065F44()
{
  result = qword_100116C18;
  if (!qword_100116C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C18);
  }

  return result;
}

unint64_t sub_100065FB8()
{
  result = qword_100116C38;
  if (!qword_100116C38)
  {
    sub_10001C820(&qword_100116C30, &qword_1000D4928);
    sub_100066070();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C38);
  }

  return result;
}

unint64_t sub_100066070()
{
  result = qword_100116C40;
  if (!qword_100116C40)
  {
    sub_10001C820(&qword_100116C28, &qword_1000D4920);
    sub_10002DAD8(&qword_100116C48, &qword_100116C20, &qword_1000D4918, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C40);
  }

  return result;
}

uint64_t sub_100066160(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116FA8, &unk_1000D4B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10002D02C(a1, &qword_100116FA8, &unk_1000D4B10);
    sub_100068274(&qword_1001165B8, &qword_1000D4B00, &qword_100116F98, &qword_1000D4B08, v7, a2);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10002D02C(v7, &qword_100116FA8, &unk_1000D4B10);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000698AC(v11, a2, isUniquelyReferenced_nonNull_native, &qword_1001165B8, &qword_1000D4B00, &qword_100116F98, &qword_1000D4B08);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1000663D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10002D02C(a1, &qword_100116F28, &qword_1000D4AB0);
    sub_1000680B0(v7, a2);
    v12 = type metadata accessor for CombineIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10002D02C(v7, &qword_100116F28, &qword_1000D4AB0);
  }

  else
  {
    sub_10006AAB8(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000696B8(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for CombineIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1000665E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116FB8, &qword_1000D4B28);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10002D02C(a1, &qword_100116FB8, &qword_1000D4B28);
    sub_100068274(&qword_100116600, &unk_1000D4E80, &qword_100116FB0, &qword_1000D4B20, v7, a2);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10002D02C(v7, &qword_100116FB8, &qword_1000D4B28);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000698AC(v11, a2, isUniquelyReferenced_nonNull_native, &qword_100116600, &unk_1000D4E80, &qword_100116FB0, &qword_1000D4B20);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_10006685C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + 16);
    swift_beginAccess();
    v9 = *(*(v1 + 24) + 16);
    result = [*(v8 + 32) isPaused];
    if ((v9 == 0) != result)
    {
      return [*(v8 + 32) setPaused:v9 == 0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000669CC(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100066A3C(a2, a3);
  }
}

uint64_t sub_100066A3C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    swift_beginAccess();
    v16 = *(v3 + 24);
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v19; result = sub_10002D02C(v9, &qword_100116F30, &qword_1000D4AB8))
    {
      v22 = i;
LABEL_10:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      sub_10002CFC4(*(v16 + 56) + *(v7 + 72) * (v23 | (v22 << 6)), v9, &qword_100116F30, &qword_1000D4AB8);
      *&v24[1] = a1;
      *&v24[2] = a2;
      dispatch thunk of AnySubscriberBase.receive(_:)();
    }

    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
      }

      v19 = *(v16 + 64 + 8 * v22);
      ++i;
      if (v19)
      {
        i = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100066CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v94 = a3;
  v89 = type metadata accessor for CombineIdentifier();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v4;
  v90 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  v6 = __chkstk_darwin(v5 - 8);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v77 - v9;
  v95 = a2;
  v92 = *(a2 - 8);
  v11 = *(v92 + 64);
  v12 = __chkstk_darwin(v8);
  v78 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v81 = &v77 - v14;
  v15 = __chkstk_darwin(v13);
  v80 = &v77 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = &v77 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v77 - v20;
  __chkstk_darwin(v19);
  v23 = &v77 - v22;
  v24 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v79 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v91 = (&v77 - v29);
  __chkstk_darwin(v28);
  v85 = &v77 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v34 = static OS_dispatch_queue.main.getter();
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v35 = _dispatchPreconditionTest(_:)();
  result = (*(v32 + 8))(v34, v31);
  if (v35)
  {
    v37 = *(v92 + 16);
    v38 = v95;
    v37(v23, v93, v95);
    v37(v21, v23, v38);
    v39 = swift_dynamicCast();
    v40 = *(v25 + 56);
    v41 = v24;
    v83 = v25 + 56;
    v82 = v40;
    if (v39)
    {
      v40(v10, 0, 1, v24);
      v42 = v79;
      sub_10006AAB8(v10, v79);
      v43 = v91;
      sub_10006AAB8(v42, v91);
      v44 = v92;
    }

    else
    {
      v40(v10, 1, 1, v24);
      sub_10002D02C(v10, &qword_100116F28, &qword_1000D4AB0);
      v45 = v95;
      v46 = v91;
      dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
      type metadata accessor for AnySubscriberBox();
      v37(v84, v23, v45);
      *v46 = AnySubscriberBox.__allocating_init(_:)();
      v37(v80, v23, v45);
      v79 = sub_1000032D4(&qword_100116F38, &qword_1000D4AC0);
      v47 = swift_dynamicCast();
      v80 = v23;
      if (v47)
      {
        sub_10004E5BC(&v96, &v99);
        sub_10004E5BC(&v99, &v96);
        v48 = swift_allocObject();
        sub_10004E5BC(&v96, v48 + 16);
        v49 = sub_10006AD64;
      }

      else
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        sub_10002D02C(&v96, &qword_100116F40, &qword_1000D4AC8);
        swift_getDynamicType();
        v50 = _typeName(_:qualified:)();
        v52 = v51;
        v48 = swift_allocObject();
        *(v48 + 16) = v50;
        *(v48 + 24) = v52;
        v46 = v91;
        v23 = v80;
        v49 = sub_10006A6BC;
      }

      v44 = v92;
      v46[1] = v49;
      v46[2] = v48;
      v53 = v84;
      v54 = v95;
      v37(v84, v23, v95);
      v55 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v56 = swift_allocObject();
      v57 = v94;
      *(v56 + 16) = v54;
      *(v56 + 24) = v57;
      v58 = v56 + v55;
      v43 = v91;
      v23 = v80;
      (*(v44 + 32))(v58, v53, v54);
      v43[3] = sub_10006AA54;
      v43[4] = v56;
      v37(v81, v23, v54);
      sub_1000032D4(&qword_100116F48, &qword_1000D4AD0);
      if (swift_dynamicCast())
      {
        sub_10004E5BC(&v96, &v99);
        sub_10004E5BC(&v99, &v96);
        v59 = swift_allocObject();
        sub_10004E5BC(&v96, v59 + 16);
        v60 = sub_10006AD18;
      }

      else
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        sub_10002D02C(&v96, &qword_100116F50, &qword_1000D4AD8);
        v37(v78, v23, v95);
        if (!swift_dynamicCast())
        {
          v98 = 0;
          v96 = 0u;
          v97 = 0u;
          sub_10002D02C(&v96, &qword_100116F40, &qword_1000D4AC8);
          swift_getDynamicType();
          v61 = _typeName(_:qualified:)();
          v63 = v62;
          v64 = swift_allocObject();
          *(v64 + 16) = v61;
          *(v64 + 24) = v63;
          v43[5] = sub_10006AAA0;
          v43[6] = v64;
          goto LABEL_13;
        }

        sub_10004E5BC(&v96, &v99);
        sub_10004E5BC(&v99, &v96);
        v59 = swift_allocObject();
        sub_10004E5BC(&v96, v59 + 16);
        v60 = sub_10006ACC0;
      }

      v43[5] = v60;
      v43[6] = v59;
    }

LABEL_13:
    v65 = v85;
    sub_10006AAB8(v43, v85);
    (*(v44 + 8))(v23, v95);
    v66 = *(v41 + 56);
    v91 = v66;
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = v87;
    v69 = *(v87 + 16);
    v92 = v41;
    v70 = v89;
    v71 = v90;
    v69(v90, v65 + v66, v89);
    v72 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v67;
    (*(v68 + 32))(v73 + v72, v71, v70);
    v74 = type metadata accessor for DisplayLink.Subscription();
    v75 = swift_allocObject();
    *(v75 + 16) = sub_10006AC24;
    *(v75 + 24) = v73;
    v69(v71, v91 + v65, v70);
    v76 = v88;
    sub_10002CFC4(v65, v88, &qword_100116F30, &qword_1000D4AB8);
    v82(v76, 0, 1, v92);
    swift_beginAccess();
    sub_1000663D4(v76, v71);
    swift_endAccess();
    sub_10006685C();
    v100 = v74;
    v101 = sub_10006AE18(&qword_100116F58, type metadata accessor for DisplayLink.Subscription, &unk_1000D4A38);
    *&v99 = v75;
    dispatch thunk of Subscriber.receive(subscription:)();
    sub_10002D02C(v65, &qword_100116F30, &qword_1000D4AB8);
    return sub_100017D28(&v99);
  }

  __break(1u);
  return result;
}

void sub_100067800(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100068040();
    *v9 = static OS_dispatch_queue.main.getter();
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v10 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if (v10)
    {
      swift_beginAccess();
      sub_1000680B0(v5, a2);
      sub_10002D02C(v5, &qword_100116F28, &qword_1000D4AB0);
      swift_endAccess();
      sub_10006685C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000679E8()
{

  return swift_deallocClassInstance();
}

void sub_100067A4C()
{
  type metadata accessor for PlatformDisplayLink();
  swift_allocObject();
  v0 = sub_100067B5C();
  type metadata accessor for DisplayLink();
  swift_allocObject();
  v1 = sub_10006B16C(v0);

  qword_10011F4F0 = v1;
}

uint64_t sub_100067AB8()
{

  return swift_deallocClassInstance();
}

double sub_100067AF0()
{
  v1 = *(*v0 + 16);

  v1(v2);

  return result;
}

void *sub_100067B5C()
{
  type metadata accessor for PlatformDisplayLink.DisplayLinkTarget();
  v0[2] = 0;
  v0[3] = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() displayLinkWithTarget:v1 selector:"frame:"];
  v0[4] = v2;
  [v2 setPaused:1];
  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainRunLoop];
  [v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];

  v7 = v0[5];
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = sub_10006B33C;
  *(v7 + 24) = v8;
  sub_10004EB88(v10, v9);

  return v0;
}

void sub_100067CAC(uint64_t a1, double a2, double a3)
{
  v5 = swift_unownedRetainStrong();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_10006B344(v6, v7);

  if (v6)
  {
    v6(v8, a2, a3);

    sub_10004EB88(v6, v7);
  }
}

uint64_t sub_100067D40()
{
  [*(v0 + 32) invalidate];
  sub_10004EB88(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100067E74()
{
  sub_10004EB88(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_100068040()
{
  result = qword_100115D80;
  if (!qword_100115D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100115D80);
  }

  return result;
}

uint64_t sub_1000680B0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_10006859C(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006A01C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CombineIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
    v20 = *(v13 - 8);
    sub_10006AAB8(v12 + *(v20 + 72) * v7, a1);
    sub_100069024(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100068274@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X0>)
{
  v11 = v6;
  v13 = sub_1000684C8(a6);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006A338(a1, a2, a3, a4);
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = sub_1000032D4(a1, a2);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    sub_100069374(v20, v17, a1, a2);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = sub_1000032D4(a1, a2);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

unint64_t sub_100068450(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100069CC0(a1, a2, v4);
}

unint64_t sub_1000684C8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100069D78(a1, v2, &type metadata accessor for UUID, &qword_100116FA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10006859C(uint64_t a1)
{
  type metadata accessor for CombineIdentifier();
  sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier, &protocol conformance descriptor for CombineIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100069D78(a1, v2, &type metadata accessor for CombineIdentifier, &qword_100116F70, &type metadata accessor for CombineIdentifier, &protocol conformance descriptor for CombineIdentifier);
}

unint64_t sub_100068670(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100069F18(a1, v2);
}

void sub_100068704(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - v6;
  v7 = type metadata accessor for CombineIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10006AAB8(v27 + v28 * v24, v48);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10002CFC4(v29 + v28 * v24, v48, &qword_100116F30, &qword_1000D4AB8);
      }

      sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier, &protocol conformance descriptor for CombineIdentifier);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_10006AAB8(v48, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_100068B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v58 = sub_1000032D4(a3, a4);
  v11 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v46 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  sub_1000032D4(a5, a6);
  v53 = v10;
  v17 = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = v17;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v49 = (v23 + 16);
    v50 = v23;
    v47 = v6;
    v48 = v11 + 16;
    v51 = v16;
    v52 = v11;
    v54 = (v11 + 32);
    v55 = (v23 + 32);
    v26 = v17 + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v56 = *(v23 + 72);
      v33 = v32 + v56 * v31;
      if (v53)
      {
        (*v55)(v59, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 32))(v57, v34 + v35 * v31, v58);
      }

      else
      {
        (*v49)(v59, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 16))(v57, v36 + v35 * v31, v58);
      }

      sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v18 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v55)((*(v18 + 48) + v56 * v27), v59, v13);
      (*v54)(*(v18 + 56) + v35 * v27, v57, v58);
      ++*(v18 + 16);
      v23 = v50;
      v16 = v51;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v16 + 32);
    v9 = v47;
    if (v45 >= 64)
    {
      bzero(v20, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v45;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
}

unint64_t sub_100069024(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier, &protocol conformance descriptor for CombineIdentifier);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1000032D4(&qword_100116F30, &qword_1000D4AB8) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100069374(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(sub_1000032D4(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000696B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CombineIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10006859C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10006A01C();
      goto LABEL_7;
    }

    sub_100068704(v17, a3 & 1);
    v24 = sub_10006859C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100069AD0(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(sub_1000032D4(&qword_100116F30, &qword_1000D4AB8) - 8) + 72) * v14;

  return sub_10006ADA8(a1, v22);
}

uint64_t sub_1000698AC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1000684C8(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_10006A338(v36, v37, v34, v35);
      goto LABEL_7;
    }

    sub_100068B80(v21, a3 & 1, v36, v37, v34, v35);
    v32 = sub_1000684C8(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_100069BB8(v18, v15, a1, v24, v36, v37);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = sub_1000032D4(v36, v37);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

uint64_t sub_100069AD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CombineIdentifier();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  result = sub_10006AAB8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100069BB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = sub_1000032D4(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_100069CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100069D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10006AE18(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100069F18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_10006A01C()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - v3;
  v34 = type metadata accessor for CombineIdentifier();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10002CFC4(*(v5 + 56) + v26, v35, &qword_100116F30, &qword_1000D4AB8);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_10006AAB8(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_10006A338(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = sub_1000032D4(a1, a2);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - v8;
  v45 = type metadata accessor for UUID();
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(a3, a4);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }
}

uint64_t sub_10006A684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A6BC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10006A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = type metadata accessor for Mirror.AncestorRepresentation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100116F78, &qword_1000D4AE8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v21 - v11;
  v13 = *(a2 - 8);
  v14 = __chkstk_darwin(v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = *(v13 + 16);
  v17(v21 - v18, a1, a2);
  sub_1000032D4(&qword_100116F80, &qword_1000D4AF0);
  if (swift_dynamicCast())
  {
    sub_10004E5BC(v22, v24);
    sub_100025B1C(v24, v24[3]);
    dispatch thunk of CustomReflectable.customMirror.getter();
    return sub_100017D28(v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_10002D02C(v22, &qword_100116F88, &qword_1000D4AF8);
    v17(v16, a1, a2);
    v20 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    (*(v6 + 104))(v8, enum case for Mirror.AncestorRepresentation.generated(_:), v5);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t sub_10006A9D4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006AAA0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = &type metadata for String;
  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10006AAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AB28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AB60()
{
  v1 = type metadata accessor for CombineIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10006AC24()
{
  v1 = *(type metadata accessor for CombineIdentifier() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100067800(v2, v3);
}

uint64_t sub_10006AC88()
{
  sub_100017D28((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006ACC0@<X0>(uint64_t *a1@<X8>)
{
  sub_100025B1C((v1 + 16), *(v1 + 40));
  result = dispatch thunk of CustomStringConvertible.description.getter();
  a1[3] = &type metadata for String;
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10006ADA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10006AE60(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100116FC0, &qword_1000D4B30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002CFC4(v9, v5, &qword_100116FC0, &qword_1000D4B30);
      result = sub_10006859C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CombineIdentifier();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
      result = sub_10006AAB8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032D4(&qword_100116FC8, &qword_1000D4B38);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100068670(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10006B16C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + 24) = sub_10006AE60(&_swiftEmptyArrayStorage);
  sub_100068040();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(v2 + 16) = a1;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    *(a1 + 16) = sub_10006B2FC;
    *(a1 + 24) = v10;

    sub_10004EB88(v11, v12);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B304()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10006B344(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10006B360()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);

  return v1;
}

uint64_t sub_10006B41C()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);

  return v1;
}

double sub_10006B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a1;
  v4 = sub_1000032D4(&qword_1001165B0, &unk_1000D3B70);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CurrentLocationResult(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v32 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - v18;
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_10002CFC4(a2 + v22, v12, &qword_1001165C8, &unk_1000D4DE0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v31 = v6;
    v24 = v36;
    sub_10002D02C(v12, &qword_1001165C8, &unk_1000D4DE0);
    sub_10002CFC4(v33, v10, &qword_1001165C8, &unk_1000D4DE0);
    if (v23(v10, 1, v13) == 1)
    {
      sub_10002D02C(v10, &qword_1001165C8, &unk_1000D4DE0);
    }

    else
    {
      v27 = v32;
      sub_100074F2C(v10, v32);
      sub_100075424(v27, v19);
      sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
      v28 = v31;
      AsyncStream.Continuation.yield(_:)();
      (*(v34 + 8))(v28, v35);
      sub_100057598(v27);
      sub_100074F90(v27, type metadata accessor for CurrentLocationResult);
    }

    v26 = v24;
  }

  else
  {
    sub_100074F2C(v12, v21);
    sub_100075424(v21, v19);
    sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
    v25 = v36;
    AsyncStream.Continuation.yield(_:)();
    (*(v34 + 8))(v6, v35);
    sub_100074F90(v21, type metadata accessor for CurrentLocationResult);
    v26 = v25;
  }

  return sub_10006BCBC(v26);
}

double sub_10006B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = sub_1000032D4(&qword_1001165F8, &unk_1000D3BB0);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  v22 = *(*a2 + 96);
  swift_beginAccess();
  sub_10002CFC4(a2 + v22, v12, &qword_100116628, &qword_1000D3BE0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v34 = v6;
    v24 = v39;
    sub_10002D02C(v12, &qword_100116628, &qword_1000D3BE0);
    sub_10002CFC4(v36, v10, &qword_100116628, &qword_1000D3BE0);
    if (v23(v10, 1, v13) == 1)
    {
      v25 = &qword_100116628;
      v26 = &qword_1000D3BE0;
      v27 = v10;
    }

    else
    {
      v30 = v35;
      sub_10002C7C4(v10, v35, &qword_100116610, &qword_1000D3BC8);
      sub_10002CFC4(v30, v19, &qword_100116610, &qword_1000D3BC8);
      sub_1000032D4(&qword_100116600, &unk_1000D4E80);
      v31 = v34;
      AsyncStream.Continuation.yield(_:)();
      (*(v37 + 8))(v31, v38);
      sub_100057DA0(v30);
      v27 = v30;
      v25 = &qword_100116610;
      v26 = &qword_1000D3BC8;
    }

    sub_10002D02C(v27, v25, v26);
    v29 = v24;
  }

  else
  {
    sub_10002C7C4(v12, v21, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v21, v19, &qword_100116610, &qword_1000D3BC8);
    sub_1000032D4(&qword_100116600, &unk_1000D4E80);
    v28 = v39;
    AsyncStream.Continuation.yield(_:)();
    (*(v37 + 8))(v6, v38);
    sub_10002D02C(v21, &qword_100116610, &qword_1000D3BC8);
    v29 = v28;
  }

  return sub_10006BFAC(v29);
}

double sub_10006BCBC(uint64_t a1)
{
  v19 = a1;
  v1 = sub_1000032D4(&qword_100116FA8, &unk_1000D4B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  UUID.init()();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_100066160(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);

  AsyncStream.Continuation.onTermination.setter();
  (*(v5 + 8))(v10, v4);

  return result;
}

double sub_10006BFAC(uint64_t a1)
{
  v19 = a1;
  v1 = sub_1000032D4(&qword_100116FB8, &qword_1000D4B28);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  UUID.init()();
  v18 = *(v5 + 16);
  v18(v8, v10, v4);
  v11 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v19, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  swift_beginAccess();
  sub_1000665E8(v3, v8);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v18(v8, v10, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v5 + 32))(v15 + v14, v8, v4);

  AsyncStream.Continuation.onTermination.setter();
  (*(v5 + 8))(v10, v4);

  return result;
}

double sub_10006C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10006C330(a3, a4, a5, a6, a7);
  }

  return result;
}

double sub_10006C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v24[1] = a2;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.background(_:), v13);
  v24[0] = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v10);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v11 + 32))(v19 + v18, v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = v27;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = v28;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100075748(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00, &protocol conformance descriptor for [A]);
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24[0];
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v32 + 8))(v6, v21);
  (*(v30 + 8))(v9, v31);

  return result;
}

double sub_10006C7C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v9 = sub_1000032D4(a3, a4);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(*Strong + 104);
    v15 = *(Strong + v14);
    v16 = Strong;
    swift_beginAccess();
    os_unfair_lock_lock(v15 + 4);
    swift_endAccess();
    swift_beginAccess();
    a5(a2);
    sub_10002D02C(v11, a3, a4);
    swift_endAccess();
    v17 = *(v16 + v14);
    swift_beginAccess();
    os_unfair_lock_unlock(v17 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10006C93C()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

double sub_10006C9DC()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10006CA80@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);

  return result;
}

double sub_10006CB2C(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;

  return result;
}

double sub_10006CCC8()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10006CD6C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);

  return result;
}

double sub_10006CE18(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10006CF4C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

void sub_10006D01C(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10006D12C()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);

  return v1;
}

id sub_10006D1DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_10006D294(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  sub_10002BB3C(0, &qword_100117118, NSMeasurementFormatter_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 56);
    *(v2 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D400()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v0[12];
  v2 = v0[13];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 == v0[8] && v2 == v0[9])
  {
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v1[8];
    v7 = v1[9];

    return sub_10006D628(v6, v7);
  }

  return result;
}

uint64_t sub_10006D578()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_10006D628(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_10006D834(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;

    return sub_10006D400();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10006D998()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + 88);
  if (!v2)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v4)
  {

    goto LABEL_12;
  }

  if (v3 == *(v0 + 80) && v2 == v4)
  {

    return;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v1 + 80);
    v8 = *(v1 + 88);

    sub_10006DBE8(v7, v8);
  }
}

uint64_t sub_10006DB38()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_10006DBE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v6 = *(v2 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10006DD64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

void sub_10006DE10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  sub_10006D998();
}

uint64_t sub_10006DF84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_10006E030(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10006D628(v1, v2);
}

uint64_t sub_10006E070(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v35 = &v33[-v7];
  v8 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v9 = __chkstk_darwin(v8 - 8);
  v39 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v33[-v11];
  v13 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v33[-v15];
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider___observationRegistrar;
  v42 = v2;
  v37 = sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  v38 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  v19 = *(v14 + 56);
  sub_10002CFC4(v2 + v18, v16, &qword_100116610, &qword_1000D3BC8);
  sub_10002CFC4(v40, &v16[v19], &qword_100116610, &qword_1000D3BC8);
  v40 = v4;
  v20 = *(v4 + 48);
  if (v20(v16, 1, v3) == 1)
  {
    if (v20(&v16[v19], 1, v3) == 1)
    {
      return sub_10002D02C(v16, &qword_100116610, &qword_1000D3BC8);
    }
  }

  else
  {
    sub_10002CFC4(v16, v12, &qword_100116610, &qword_1000D3BC8);
    if (v20(&v16[v19], 1, v3) != 1)
    {
      v30 = v40;
      v31 = v35;
      (*(v40 + 32))(v35, &v16[v19], v3);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0, &protocol conformance descriptor for Measurement<A>);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, v3);
      v32(v12, v3);
      result = sub_10002D02C(v16, &qword_100116610, &qword_1000D3BC8);
      if (v34)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v40 + 8))(v12, v3);
  }

  sub_10002D02C(v16, &qword_100116618, &qword_1000D3BD0);
LABEL_7:
  swift_getKeyPath();
  v41 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v39;
  sub_10002CFC4(v2 + v18, v39, &qword_100116610, &qword_1000D3BC8);
  if (v20(v22, 1, v3) == 1)
  {
    return sub_10002D02C(v22, &qword_100116610, &qword_1000D3BC8);
  }

  v23 = v40;
  v24 = v36;
  (*(v40 + 32))(v36, v22, v3);
  swift_getKeyPath();
  v41 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + 56);
  sub_10002BB3C(0, &qword_100117110, NSUnitTemperature_ptr);
  v26 = v25;
  v27 = NSMeasurementFormatter.string<A>(from:)();
  v29 = v28;

  sub_10006D834(v27, v29);
  return (*(v23 + 8))(v24, v3);
}

uint64_t sub_10006E5D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  return sub_10002CFC4(v5 + v3, a1, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006E6B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  return sub_10002CFC4(v3 + v4, a2, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006E788(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10002CFC4(a1, &v6 - v3, &qword_100116610, &qword_1000D3BC8);
  return sub_10006E834(v4);
}

uint64_t sub_10006E834(uint64_t a1)
{
  v3 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  sub_10002CFC4(v1 + v9, v8, &qword_100116610, &qword_1000D3BC8);
  v10 = sub_100074858(v8, a1);
  sub_10002D02C(v8, &qword_100116610, &qword_1000D3BC8);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10002CFC4(a1, v8, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v1 + v9, v6, &qword_100116610, &qword_1000D3BC8);
    swift_beginAccess();
    sub_100074B7C(v8, v1 + v9);
    swift_endAccess();
    sub_10006E070(v6);
    sub_10002D02C(v6, &qword_100116610, &qword_1000D3BC8);
    sub_10002D02C(v8, &qword_100116610, &qword_1000D3BC8);
  }

  return sub_10002D02C(a1, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006EA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_10002CFC4(a2, &v12[-v8], &qword_100116610, &qword_1000D3BC8);
  v10 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  sub_10002CFC4(a1 + v10, v7, &qword_100116610, &qword_1000D3BC8);
  swift_beginAccess();
  sub_100074B7C(v9, a1 + v10);
  swift_endAccess();
  sub_10006E070(v7);
  sub_10002D02C(v7, &qword_100116610, &qword_1000D3BC8);
  return sub_10002D02C(v9, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006EBEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  a2[1] = v4;
}

uint64_t sub_10006ECA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10006DBE8(v1, v2);
}

uint64_t sub_10006ECE4()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  type metadata accessor for WeatherService();
  *(v0 + 16) = WeatherService.__allocating_init()();
  sub_1000032D4(&qword_1001170F8, &qword_1000D4C98);
  v5 = swift_allocObject();
  v6 = *(*v5 + 96);
  v7 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = *(*v5 + 104);
  type metadata accessor for CPUnfairLock();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v5 + v8) = v9;
  *(v5 + *(*v5 + 112)) = &_swiftEmptyDictionarySingleton;
  *(v5 + *(*v5 + 120)) = 0;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v1 + 40) = NWPathMonitor.init()();
  *(v1 + 48) = 1;
  v10 = [objc_allocWithZone(NSMeasurementFormatter) init];
  [v10 setUnitOptions:1];
  [v10 setUnitStyle:2];
  v11 = [objc_allocWithZone(NSNumberFormatter) init];
  [v11 setNumberStyle:1];
  [v11 setMaximumFractionDigits:0];
  [v10 setNumberFormatter:v11];

  *(v1 + 56) = v10;
  *(v1 + 64) = 11565;
  *(v1 + 72) = 0xE200000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 11565;
  *(v1 + 104) = 0xE200000000000000;
  v12 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  v13 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  *v14 = 0;
  v14[1] = 0;
  ObservationRegistrar.init()();
  sub_10006F120();
  if (qword_100113610 != -1)
  {
    swift_once();
  }

  v15 = sub_10005926C();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 isAuthorizedForWidgetUpdates];

    if (v17)
    {
      swift_getKeyPath();
      v21[1] = v1;
      sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 48) == 1)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v1;

        sub_100075B64(0, 0, v4, &unk_1000D4CD0, v19);
      }
    }
  }

  return v1;
}

void sub_10006F120()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v1 - 8);
  v9 = v1;
  __chkstk_darwin(v1);
  v7 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  swift_getKeyPath();
  v10 = v0;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = swift_allocObject();
  swift_weakInit();

  sub_10006B344(sub_100075740, v5);
  NWPathMonitor.pathUpdateHandler.setter();

  swift_getKeyPath();
  v10 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  v10 = &_swiftEmptyArrayStorage;
  sub_100075748(&qword_1001176E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_10002DAD8(&qword_1001176F0, &unk_1001165E0, &qword_1000D3BA0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();
}

uint64_t sub_10006F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v4[13] = swift_task_alloc();
  v7 = sub_1000032D4(&qword_100117100, &qword_1000D4CE0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_1000032D4(&qword_100117108, &qword_1000D4CE8);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006F6F4, 0, 0);
}

uint64_t sub_10006F6F4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_10006FCD4(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10006F7EC;
  v5 = v0[17];
  v6 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_10006F7EC()
{

  return _swift_task_switch(sub_10006F8E8, 0, 0);
}

uint64_t sub_10006F8E8()
{
  v1 = v0[13];
  v2 = v0[8];
  if ((*(v2 + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[10];
    v8 = v0[6];
    v9 = type metadata accessor for TaskPriority();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v6, 1, 1, v9);
    sub_10002C7C4(v1, v7, &qword_100116610, &qword_1000D3BC8);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v8;
    sub_10002C7C4(v7, v13 + v12, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v6, v5, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v5) = (*(v10 + 48))(v5, 1, v9);

    v14 = v0[11];
    if (v5 == 1)
    {
      sub_10002D02C(v0[11], &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v10 + 8))(v14, v9);
    }

    v15 = v13[2];
    swift_unknownObjectRetain();

    if (v15)
    {
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_10002D02C(v0[12], &unk_100115E10, &qword_1000D27F0);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_1000D4CF8;
    *(v19 + 24) = v13;
    if (v18 | v16)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v16;
      v0[5] = v18;
    }

    swift_task_create();

    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_10006F7EC;
    v21 = v0[17];
    v22 = v0[13];

    return AsyncStream.Iterator.next(isolation:)(v22, 0, 0, v21);
  }
}

void sub_10006FCD4(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v51 = sub_1000032D4(&qword_100117120, &qword_1000D4DB0);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v43 - v3;
  v4 = sub_1000032D4(&qword_100117128, &qword_1000D4DB8);
  v5 = __chkstk_darwin(v4 - 8);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v43 - v8;
  __chkstk_darwin(v7);
  v50 = &v43 - v9;
  v10 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = *(v1 + 24);
  v20 = *(*v19 + 104);
  v21 = *(v19 + v20);
  swift_beginAccess();

  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  v22 = *(*v19 + 120);
  v23 = *(v19 + v22);
  if ((v23 & 1) == 0)
  {
    *(v19 + v22) = 1;
  }

  v24 = v20;
  v25 = *(v19 + v20);
  swift_beginAccess();
  os_unfair_lock_unlock(v25 + 4);
  swift_endAccess();
  v26 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v27 = *(*(v26 - 8) + 56);
  v27(v18, 1, 1, v26);
  if ((v23 & 1) == 0)
  {
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v29;
    sub_100075E54(0, 0, v12, &unk_1000D4DC8, v30);

    v31 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    v27(v16, 0, 1, v26);
    sub_100074EBC(v16, v18);
  }

  v53 = v2;
  v32 = sub_1000032D4(&qword_100117100, &qword_1000D4CE0);
  v33 = *(v32 - 8);
  v34 = v33;
  v45 = *(v33 + 56);
  v46 = v33 + 56;
  v35 = v18;
  v36 = v50;
  v45(v50, 1, 1, v32);
  v37 = v24;
  v38 = *(v19 + v24);
  swift_beginAccess();
  os_unfair_lock_lock(v38 + 4);
  v39 = swift_endAccess();
  __chkstk_darwin(v39);
  *(&v43 - 2) = v19;
  *(&v43 - 1) = v35;
  v43 = v35;
  (*(v49 + 104))(v48, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v51);
  v40 = v47;
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_10002D02C(v36, &qword_100117128, &qword_1000D4DB8);
  v45(v40, 0, 1, v32);
  sub_10002C7C4(v40, v36, &qword_100117128, &qword_1000D4DB8);
  v41 = *(v19 + v37);
  swift_beginAccess();
  os_unfair_lock_unlock(v41 + 4);
  swift_endAccess();
  v42 = v52;
  sub_10002CFC4(v36, v52, &qword_100117128, &qword_1000D4DB8);
  if ((*(v34 + 48))(v42, 1, v32) == 1)
  {

    __break(1u);
  }

  else
  {
    sub_10002D02C(v36, &qword_100117128, &qword_1000D4DB8);
    (*(v34 + 32))(v44, v42, v32);
    sub_10002D02C(v43, &qword_100116628, &qword_1000D3BE0);
  }
}

uint64_t sub_100070368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070438, v7, v6);
}

uint64_t sub_100070438()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_10002CFC4(v2, v1, &qword_100116610, &qword_1000D3BC8);
  sub_10006E834(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000704D0()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider___observationRegistrar;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32))
  {

    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    Task.cancel()();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  NWPathMonitor.cancel()();

  sub_10002D02C(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature, &qword_100116610, &qword_1000D3BC8);

  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000706BC()
{
  sub_1000704D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WeatherDataProvider(uint64_t a1)
{
  result = qword_100117010;
  if (!qword_100117010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100070768(uint64_t a1)
{
  sub_10007087C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007087C(uint64_t a1)
{
  if (!qword_100117020)
  {
    sub_10001C820(&qword_100116608, &qword_1000D3BC0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100117020);
    }
  }
}

void sub_100070940()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_1000709C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10006F4D4(a1, v4, v5, v6);
}

uint64_t sub_100070A78()
{
  v1 = *(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100070BAC(uint64_t a1)
{
  v4 = *(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100070368(a1, v6, v7, v8, v1 + v5);
}

double sub_100070CB0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for NWPath.Status();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  NWPath.status.getter();
  (*(v3 + 104))(v6, enum case for NWPath.Status.satisfied(_:), v2);
  v9 = static NWPath.Status.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return result;
    }

    if ((*(Strong + 48) & 1) == 0)
    {
      *(Strong + 48) = 0;
      goto LABEL_11;
    }

    v14 = Strong;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v18[-16] = v14;
    v18[-8] = 0;
    v19 = v14;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
LABEL_9:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (!v11)
  {
    return result;
  }

  if (*(v11 + 48) != 1)
  {
    v16 = v11;
    v17 = swift_getKeyPath();
    __chkstk_darwin(v17);
    *&v18[-16] = v16;
    v18[-8] = 1;
    v19 = v16;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    goto LABEL_9;
  }

  *(v11 + 48) = 1;
LABEL_11:

  return result;
}

uint64_t sub_100070FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v4[20] = swift_task_alloc();
  sub_1000032D4(&qword_100117130, &unk_1000D4DD0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v4[23] = swift_task_alloc();
  v5 = type metadata accessor for CurrentLocationResult(0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v4[27] = swift_task_alloc();
  v6 = sub_1000032D4(&qword_100116648, &qword_1000D3BF8);
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v7 = sub_1000032D4(&qword_100117138, &qword_1000D4DF0);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100071290, 0, 0);
}

uint64_t sub_100071290()
{
  if (qword_100113610 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_1000589D0(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[34] = 0;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1000713D8;
  v5 = v0[31];
  v6 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1000713D8()
{

  return _swift_task_switch(sub_1000714D4, 0, 0);
}

uint64_t sub_1000714D4()
{
  v1 = v0[27];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    goto LABEL_8;
  }

  sub_100074F2C(v1, v0[26]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_100074F90(v0[26], type metadata accessor for CurrentLocationResult);
LABEL_8:
    (*(v0[32] + 8))(v0[33], v0[31]);

    v9 = v0[1];
    goto LABEL_9;
  }

  v3 = Strong;
  swift_getKeyPath();
  v0[15] = v3;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 32))
  {

    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    Task.cancel()();
  }

  v4 = v0[34];
  static Task<>.checkCancellation()();
  if (v4)
  {
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[31];
    v8 = v0[26];

    sub_100074F90(v8, type metadata accessor for CurrentLocationResult);
    (*(v5 + 8))(v6, v7);

    v9 = v0[1];
LABEL_9:

    return v9();
  }

  v11 = v0[23];
  sub_10002CFC4(v0[26], v11, &qword_100116398, &unk_1000D3A00);
  v12 = type metadata accessor for CurrentLocation(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  v14 = v0[23];
  if (v13 == 1)
  {
    v16 = v0[21];
    v15 = v0[22];
    sub_10002D02C(v0[23], &qword_100116398, &unk_1000D3A00);
    v17 = type metadata accessor for CurrentWeather();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v15, 1, 1, v17);
    v19 = *(v3 + 24);
    sub_10002CFC4(v15, v16, &qword_100117130, &unk_1000D4DD0);
    v20 = (*(v18 + 48))(v16, 1, v17);
    v21 = v0[21];
    if (v20 == 1)
    {
      sub_10002D02C(v0[21], &qword_100117130, &unk_1000D4DD0);
      v22 = 1;
    }

    else
    {
      CurrentWeather.temperature.getter();
      (*(v18 + 8))(v21, v17);
      v22 = 0;
    }

    v32 = v0[26];
    v33 = v0[22];
    v34 = v0[20];
    v35 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
    (*(*(v35 - 8) + 56))(v34, v22, 1, v35);
    v36 = *(*v19 + 104);
    v37 = *(v19 + v36);
    swift_beginAccess();
    os_unfair_lock_lock(v37 + 4);
    swift_endAccess();
    sub_100057DA0(v34);
    v38 = *(v19 + v36);
    swift_beginAccess();
    os_unfair_lock_unlock(v38 + 4);
    swift_endAccess();
    sub_10002D02C(v34, &qword_100116610, &qword_1000D3BC8);
    sub_10002D02C(v33, &qword_100117130, &unk_1000D4DD0);
    sub_100074F90(v32, type metadata accessor for CurrentLocationResult);
  }

  else
  {
    v23 = v3;
    v24 = v0[18];
    v25 = v0[19];
    v26 = *v14;
    sub_100074F90(v14, type metadata accessor for CurrentLocation);
    v27 = type metadata accessor for TaskPriority();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v25, 1, 1, v27);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v29;
    v30[5] = v26;
    v30[6] = v23;
    sub_10002CFC4(v25, v24, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v25) = (*(v28 + 48))(v24, 1, v27);
    v51 = v26;

    v31 = v0[18];
    if (v25 == 1)
    {
      sub_10002D02C(v0[18], &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v28 + 8))(v31, v27);
    }

    v39 = v30[2];
    swift_unknownObjectRetain();

    if (v39)
    {
      swift_getObjectType();
      v40 = dispatch thunk of Actor.unownedExecutor.getter();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    sub_10002D02C(v0[19], &unk_100115E10, &qword_1000D27F0);
    if (v42 | v40)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v40;
      v0[5] = v42;
    }

    v43 = swift_task_create();
    if (!*(v23 + 32) || (, sub_1000032D4(&qword_100115EF0, &unk_1000D33C0), v44 = static Task.== infix(_:_:)(), , (v44 & 1) == 0))
    {
      v46 = v0[26];
      swift_getKeyPath();
      v47 = swift_task_alloc();
      *(v47 + 16) = v23;
      *(v47 + 24) = v43;
      v0[16] = v23;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_100074F90(v46, type metadata accessor for CurrentLocationResult);

      goto LABEL_30;
    }

    v45 = v0[26];

    sub_100074F90(v45, type metadata accessor for CurrentLocationResult);
    *(v23 + 32) = v43;
  }

LABEL_30:
  v0[34] = 0;
  v48 = swift_task_alloc();
  v0[35] = v48;
  *v48 = v0;
  v48[1] = sub_1000713D8;
  v49 = v0[31];
  v50 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v50, 0, 0, v49);
}

uint64_t sub_100071E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[25] = a4;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v9 = type metadata accessor for CurrentWeather();
  v6[37] = v9;
  v10 = *(v9 - 8);
  v6[38] = v10;
  v6[39] = *(v10 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v11 = sub_1000032D4(&qword_100117140, &qword_1000D4E08);
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();
  sub_1000032D4(&qword_100117130, &unk_1000D4DD0);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_1000720DC, 0, 0);
}

uint64_t sub_1000720DC()
{
  v1 = *(v0 + 304);
  swift_beginAccess();
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v0 + 376);
  v4 = *(v0 + 296);
  v5 = (*(v0 + 304) + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  *(v0 + 384) = v2;
  *(v0 + 392) = v5;
  v2(v3, 1, 1, v4);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 400) = *(Strong + 16);

    static WeatherQuery.current.getter();
    v7 = swift_task_alloc();
    *(v0 + 408) = v7;
    *v7 = v0;
    v7[1] = sub_100072860;
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 296);
    v11 = *(v0 + 208);

    return WeatherService.weather<A>(for:including:)(v8, v11, v9, v10);
  }

  else
  {
    v12 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = *(v0 + 376);
    v15 = *(v0 + 296);
    sub_10002D02C(v14, &qword_100117130, &unk_1000D4DD0);
    v12(v13, 1, 1, v15);
    sub_10002C7C4(v13, v14, &qword_100117130, &unk_1000D4DD0);
    v16 = *(v0 + 360);
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);
    sub_10002CFC4(*(v0 + 376), v16, &qword_100117130, &unk_1000D4DD0);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    }

    else
    {
      v19 = *(*(v0 + 304) + 32);
      v19(*(v0 + 328), *(v0 + 360), *(v0 + 296));
      v20 = swift_weakLoadStrong();
      v21 = *(v0 + 328);
      if (v20)
      {
        v22 = *(v0 + 320);
        v24 = *(v0 + 296);
        v23 = *(v0 + 304);
        v25 = *(v0 + 288);
        v54 = v25;
        v55 = *(v0 + 280);
        v53 = *(v0 + 216);
        v26 = type metadata accessor for TaskPriority();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v25, 1, 1, v26);
        (*(v23 + 16))(v22, v21, v24);
        type metadata accessor for MainActor();

        v28 = static MainActor.shared.getter();
        v29 = (*(v23 + 80) + 40) & ~*(v23 + 80);
        v30 = swift_allocObject();
        *(v30 + 2) = v28;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v53;
        v19(&v30[v29], v22, v24);
        sub_10002CFC4(v54, v55, &unk_100115E10, &qword_1000D27F0);
        v31 = (*(v27 + 48))(v55, 1, v26);

        v32 = *(v0 + 280);
        if (v31 == 1)
        {
          sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v27 + 8))(v32, v26);
        }

        v33 = *(v30 + 2);
        swift_unknownObjectRetain();

        if (v33)
        {
          swift_getObjectType();
          v34 = dispatch thunk of Actor.unownedExecutor.getter();
          v36 = v35;
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
        v37 = swift_allocObject();
        *(v37 + 16) = &unk_1000D4E18;
        *(v37 + 24) = v30;
        if (v36 | v34)
        {
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v34;
          *(v0 + 40) = v36;
        }

        v38 = *(v0 + 328);
        v40 = *(v0 + 296);
        v39 = *(v0 + 304);
        swift_task_create();

        (*(v39 + 8))(v38, v40);
      }

      else
      {
        (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
      }
    }

    static Task<>.checkCancellation()();
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    v43 = *(v0 + 224);
    v44 = static Duration.seconds(_:)();
    v46 = v45;
    static Clock<>.continuous.getter();
    *(v0 + 176) = v44;
    *(v0 + 184) = v46;
    *(v0 + 128) = 0;
    *(v0 + 120) = 0;
    *(v0 + 136) = 1;
    v47 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v48 = *(v42 + 8);
    *(v0 + 424) = v48;
    *(v0 + 432) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v41, v43);
    v49 = swift_task_alloc();
    *(v0 + 440) = v49;
    *v49 = v0;
    v49[1] = sub_100073048;
    v51 = *(v0 + 248);
    v50 = *(v0 + 256);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v51, v0 + 120, v50, v47);
  }
}

uint64_t sub_100072860()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[43] + 8))(v2[44], v2[42]);

  if (v0)
  {
    v3 = sub_100073AC8;
  }

  else
  {
    v3 = sub_1000729E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000729E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 296);
  sub_10002D02C(v4, &qword_100117130, &unk_1000D4DD0);
  v2(v3, 0, 1, v5);
  sub_10002C7C4(v3, v4, &qword_100117130, &unk_1000D4DD0);
  v6 = *(v0 + 360);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v6, &qword_100117130, &unk_1000D4DD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    static Task<>.checkCancellation()();
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(*(v0 + 304) + 32);
    v9(*(v0 + 328), *(v0 + 360), *(v0 + 296));
    Strong = swift_weakLoadStrong();
    v11 = *(v0 + 328);
    if (Strong)
    {
      v46 = v1;
      v12 = *(v0 + 320);
      v13 = *(v0 + 296);
      v14 = *(v0 + 304);
      v15 = *(v0 + 288);
      v44 = v15;
      v45 = *(v0 + 280);
      v43 = *(v0 + 216);
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v15, 1, 1, v16);
      (*(v14 + 16))(v12, v11, v13);
      type metadata accessor for MainActor();

      v18 = static MainActor.shared.getter();
      v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v20 = swift_allocObject();
      *(v20 + 2) = v18;
      *(v20 + 3) = &protocol witness table for MainActor;
      *(v20 + 4) = v43;
      v9(&v20[v19], v12, v13);
      sub_10002CFC4(v44, v45, &unk_100115E10, &qword_1000D27F0);
      LODWORD(v13) = (*(v17 + 48))(v45, 1, v16);

      v21 = *(v0 + 280);
      if (v13 == 1)
      {
        sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v21, v16);
      }

      v33 = *(v20 + 2);
      swift_unknownObjectRetain();

      if (v33)
      {
        swift_getObjectType();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
      v37 = swift_allocObject();
      *(v37 + 16) = &unk_1000D4E18;
      *(v37 + 24) = v20;
      if (v36 | v34)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v34;
        *(v0 + 40) = v36;
      }

      v38 = *(v0 + 328);
      v39 = *(v0 + 296);
      v40 = *(v0 + 304);
      swift_task_create();

      (*(v40 + 8))(v38, v39);
      static Task<>.checkCancellation()();
      if (!v46)
      {
        goto LABEL_8;
      }
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
      static Task<>.checkCancellation()();
      if (!v1)
      {
LABEL_8:
        v23 = *(v0 + 232);
        v22 = *(v0 + 240);
        v24 = *(v0 + 224);
        v25 = static Duration.seconds(_:)();
        v27 = v26;
        static Clock<>.continuous.getter();
        *(v0 + 176) = v25;
        *(v0 + 184) = v27;
        *(v0 + 128) = 0;
        *(v0 + 120) = 0;
        *(v0 + 136) = 1;
        v28 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
        dispatch thunk of Clock.now.getter();
        sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        dispatch thunk of InstantProtocol.advanced(by:)();
        v29 = *(v23 + 8);
        *(v0 + 424) = v29;
        *(v0 + 432) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29(v22, v24);
        v30 = swift_task_alloc();
        *(v0 + 440) = v30;
        *v30 = v0;
        v30[1] = sub_100073048;
        v32 = *(v0 + 248);
        v31 = *(v0 + 256);

        return dispatch thunk of Clock.sleep(until:tolerance:)(v32, v0 + 120, v31, v28);
      }
    }
  }

  sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100073048()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    (*(v2 + 424))(*(v2 + 248), *(v2 + 224));
    v3 = sub_1000739A0;
  }

  else
  {
    v5 = *(v2 + 264);
    v4 = *(v2 + 272);
    v6 = *(v2 + 256);
    (*(v2 + 424))(*(v2 + 248), *(v2 + 224));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1000731A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000731A0()
{
  sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);
LABEL_3:

    return v1();
  }

  v3 = *(v0 + 448);
  v4 = *(v0 + 376);
  v5 = *(v0 + 384);
  v6 = *(v0 + 296);
  *(v0 + 392) = (*(v0 + 304) + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v4, 1, 1, v6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 400) = *(Strong + 16);

    static WeatherQuery.current.getter();
    v8 = swift_task_alloc();
    *(v0 + 408) = v8;
    *v8 = v0;
    v8[1] = sub_100072860;
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 296);
    v12 = *(v0 + 208);

    return WeatherService.weather<A>(for:including:)(v9, v12, v10, v11);
  }

  v13 = *(v0 + 384);
  v14 = *(v0 + 368);
  v15 = *(v0 + 376);
  v16 = *(v0 + 296);
  sub_10002D02C(v15, &qword_100117130, &unk_1000D4DD0);
  v13(v14, 1, 1, v16);
  sub_10002C7C4(v14, v15, &qword_100117130, &unk_1000D4DD0);
  v17 = *(v0 + 360);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v17, &qword_100117130, &unk_1000D4DD0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    static Task<>.checkCancellation()();
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_27:
    sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);

    v1 = *(v0 + 8);
    goto LABEL_3;
  }

  v20 = *(*(v0 + 304) + 32);
  v20(*(v0 + 328), *(v0 + 360), *(v0 + 296));
  v21 = swift_weakLoadStrong();
  v22 = *(v0 + 328);
  if (v21)
  {
    v55 = v3;
    v23 = *(v0 + 320);
    v24 = *(v0 + 296);
    v25 = *(v0 + 304);
    v26 = *(v0 + 288);
    v53 = v26;
    v54 = *(v0 + 280);
    v52 = *(v0 + 216);
    v27 = type metadata accessor for TaskPriority();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v26, 1, 1, v27);
    (*(v25 + 16))(v23, v22, v24);
    type metadata accessor for MainActor();

    v29 = static MainActor.shared.getter();
    v30 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = v29;
    *(v31 + 3) = &protocol witness table for MainActor;
    *(v31 + 4) = v52;
    v20(&v31[v30], v23, v24);
    sub_10002CFC4(v53, v54, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v24) = (*(v28 + 48))(v54, 1, v27);

    v32 = *(v0 + 280);
    if (v24 == 1)
    {
      sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v28 + 8))(v32, v27);
    }

    v44 = *(v31 + 2);
    swift_unknownObjectRetain();

    if (v44)
    {
      swift_getObjectType();
      v45 = dispatch thunk of Actor.unownedExecutor.getter();
      v47 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_1000D4E18;
    *(v48 + 24) = v31;
    if (v47 | v45)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v45;
      *(v0 + 40) = v47;
    }

    v49 = *(v0 + 328);
    v50 = *(v0 + 296);
    v51 = *(v0 + 304);
    swift_task_create();

    (*(v51 + 8))(v49, v50);
    static Task<>.checkCancellation()();
    if (!v55)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
  static Task<>.checkCancellation()();
  if (v3)
  {
    goto LABEL_27;
  }

LABEL_17:
  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v35 = *(v0 + 224);
  v36 = static Duration.seconds(_:)();
  v38 = v37;
  static Clock<>.continuous.getter();
  *(v0 + 176) = v36;
  *(v0 + 184) = v38;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 1;
  v39 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v40 = *(v34 + 8);
  *(v0 + 424) = v40;
  *(v0 + 432) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v33, v35);
  v41 = swift_task_alloc();
  *(v0 + 440) = v41;
  *v41 = v0;
  v41[1] = sub_100073048;
  v43 = *(v0 + 248);
  v42 = *(v0 + 256);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v43, v0 + 120, v42, v39);
}

uint64_t sub_1000739A0()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  sub_10002D02C(v0[47], &qword_100117130, &unk_1000D4DD0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100073AC8()
{
  v1 = objc_opt_self();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  *(v0 + 144) = 0xD00000000000001CLL;
  *(v0 + 152) = 0x80000001000DAB30;
  swift_getErrorValue();
  v2._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v2);

  v3 = String._bridgeToObjectiveC()();

  [v1 logInfo:v3];

  v4 = *(v0 + 360);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v4, &qword_100117130, &unk_1000D4DD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
  }

  else
  {
    v7 = *(*(v0 + 304) + 32);
    v7(*(v0 + 328), *(v0 + 360), *(v0 + 296));
    Strong = swift_weakLoadStrong();
    v9 = *(v0 + 328);
    if (Strong)
    {
      v42 = v7;
      v10 = *(v0 + 320);
      v12 = *(v0 + 296);
      v11 = *(v0 + 304);
      v13 = *(v0 + 288);
      v41 = v13;
      v43 = *(v0 + 280);
      v40 = *(v0 + 216);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v13, 1, 1, v14);
      (*(v11 + 16))(v10, v9, v12);
      type metadata accessor for MainActor();

      v16 = static MainActor.shared.getter();
      v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
      v18 = swift_allocObject();
      *(v18 + 2) = v16;
      *(v18 + 3) = &protocol witness table for MainActor;
      *(v18 + 4) = v40;
      v42(&v18[v17], v10, v12);
      sub_10002CFC4(v41, v43, &unk_100115E10, &qword_1000D27F0);
      LODWORD(v10) = (*(v15 + 48))(v43, 1, v14);

      v19 = *(v0 + 280);
      if (v10 == 1)
      {
        sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v19, v14);
      }

      v20 = *(v18 + 2);
      swift_unknownObjectRetain();

      if (v20)
      {
        swift_getObjectType();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1000D4E18;
      *(v24 + 24) = v18;
      if (v23 | v21)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      v25 = *(v0 + 328);
      v26 = *(v0 + 296);
      v27 = *(v0 + 304);
      swift_task_create();

      (*(v27 + 8))(v25, v26);
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
    }
  }

  static Task<>.checkCancellation()();
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = static Duration.seconds(_:)();
  v33 = v32;
  static Clock<>.continuous.getter();
  *(v0 + 176) = v31;
  *(v0 + 184) = v33;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 1;
  v34 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v35 = *(v29 + 8);
  *(v0 + 424) = v35;
  *(v0 + 432) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v28, v30);
  v36 = swift_task_alloc();
  *(v0 + 440) = v36;
  *v36 = v0;
  v36[1] = sub_100073048;
  v38 = *(v0 + 248);
  v37 = *(v0 + 256);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v38, v0 + 120, v37, v34);
}

uint64_t sub_100074198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000742A4, v8, v7);
}

uint64_t sub_1000742A4()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v1 + 56);
  CurrentWeather.temperature.getter();
  v2 = Measurement.unit.getter();
  v3 = sub_1000744D4();
  sub_10002BB3C(0, &qword_100117110, NSUnitTemperature_ptr);
  LOBYTE(v1) = static NSObject.== infix(_:_:)();

  if (v1)
  {
    (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
  }

  else
  {
    v4 = sub_1000744D4();
    Measurement<>.converted(to:)();
  }

  v5 = v0[7];
  v6 = v0[5];
  v7 = *(v0[6] + 8);
  v7(v0[8], v6);
  v8 = NSMeasurementFormatter.string<A>(from:)();
  v10 = v9;

  v7(v5, v6);
  sub_10006D834(v8, v10);
  v11 = CurrentWeather.symbolName.getter();
  sub_10006DE10(v11, v12);

  v13 = v0[1];

  return v13();
}

id sub_1000744D4()
{
  v0 = type metadata accessor for Locale.MeasurementSystem();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() _preferredTemperatureUnit];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

LABEL_9:

      v19 = [objc_opt_self() celsius];
      goto LABEL_18;
    }

    v28 = v1;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_9;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v28;
    if (v13 == v20 && v15 == v21)
    {

LABEL_14:
      v19 = [objc_opt_self() fahrenheit];
      goto LABEL_18;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_14;
    }
  }

  static Locale.current.getter();
  Locale.measurementSystem.getter();
  (*(v8 + 8))(v10, v7);
  static Locale.MeasurementSystem.us.getter();
  v23 = static Locale.MeasurementSystem.== infix(_:_:)();
  v24 = *(v1 + 8);
  v24(v4, v0);
  v24(v6, v0);
  v25 = objc_opt_self();
  if (v23)
  {
    v19 = [v25 fahrenheit];
  }

  else
  {
    v19 = [v25 celsius];
  }

LABEL_18:

  return v19;
}

uint64_t sub_100074820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10002CFC4(a1, &v21 - v13, &qword_100116610, &qword_1000D3BC8);
  sub_10002CFC4(a2, &v14[v15], &qword_100116610, &qword_1000D3BC8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10002CFC4(v14, v10, &qword_100116610, &qword_1000D3BC8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0, &protocol conformance descriptor for Measurement<A>);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10002D02C(v14, &qword_100116610, &qword_1000D3BC8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10002D02C(v14, &qword_100116618, &qword_1000D3BD0);
    v17 = 1;
    return v17 & 1;
  }

  sub_10002D02C(v14, &qword_100116610, &qword_1000D3BC8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100074B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074C5C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;

  return sub_10006D400();
}

uint64_t sub_100074CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100074D10()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

void sub_100074D50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

uint64_t sub_100074D90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074DC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D4C;

  return sub_100070FD0(a1, v4, v5, v6);
}

uint64_t sub_100074EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100074FF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100075040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100071E44(a1, v4, v5, v6, v7, v8);
}

void sub_100075108()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_100075144()
{
  v1 = type metadata accessor for CurrentWeather();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075210(uint64_t a1)
{
  v4 = *(type metadata accessor for CurrentWeather() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_100074198(a1, v6, v7, v8, v1 + v5);
}

void sub_100075324()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;

  sub_10006D998();
}

uint64_t sub_100075390(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000753D8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100075424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1000754E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000755C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100075938(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100075990@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for Alarm();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100075B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10007E254(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002D02C(v11, &unk_100115E10, &qword_1000D27F0);
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

      sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);

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

  sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);
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

uint64_t sub_100075E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10007E254(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002D02C(v10, &unk_100115E10, &qword_1000D27F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100076124()
{
  [objc_allocWithZone(MTAlarmManager) init];
  type metadata accessor for AlarmsViewModel();
  swift_allocObject();
  *(v0 + 16) = AlarmsViewModel.init(manager:delegate:)();
  sub_10007E734(&qword_100117458, v1, type metadata accessor for AlarmCoordinator, &unk_1000D4FB8);

  dispatch thunk of AlarmsViewModel.updateDelegate(_:)();

  v2 = objc_opt_self();
  _StringGuts.grow(_:)(19);
  v3._countAndFlagsBits = 0x696C616974696E49;
  v3._object = 0xED000020676E697ALL;
  String.append(_:)(v3);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 774778400;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();

  [v2 logInfo:v5];

  return v0;
}

uint64_t sub_1000762C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_10007637C;

  return sub_1000765F0(a5, a6);
}

uint64_t sub_10007637C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10007647C, 0, 0);
}

uint64_t sub_10007647C()
{
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(39);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v4;
    type metadata accessor for AlarmCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAFB0;
    v6._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = String._bridgeToObjectiveC()();

    [v5 logInfo:v8];

    sub_10007E92C(v1, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0, sub_10004F52C);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000765F0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100076614, 0, 0);
}

uint64_t sub_100076614()
{
  v0[8] = *(v0[7] + 16);
  v5 = (&async function pointer to dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:) + async function pointer to dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:));

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1000766DC;
  v3 = v0[5];
  v2 = v0[6];

  return v5(v3, v2, 1);
}

uint64_t sub_1000766DC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100076968;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_100076830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100076830()
{
  v1 = v0[10];
  if (!v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v3;
    type metadata accessor for AlarmCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DB040;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = String._bridgeToObjectiveC()();

    [v5 logError:v8];
  }

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_100076968()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(34);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000DB040;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v1;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 logError:v7];

  v8 = v0[1];

  return v8(0);
}

double sub_100076AA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v17 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DB010;
  v10._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D5168, v14);

  return result;
}

uint64_t sub_100076C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100076CA4, 0, 0);
}

uint64_t sub_100076CA4()
{
  v0[5] = *(v0[2] + 16);
  v5 = (&async function pointer to dispatch thunk of AlarmsViewModel.dismissAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.dismissAlarm(_:));

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100076D68;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_100076D68()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007F0A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

double sub_100076EA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v17 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAFE0;
  v10._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D5158, v14);

  return result;
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000770A8, 0, 0);
}

uint64_t sub_1000770A8()
{
  v0[5] = *(v0[2] + 16);
  v5 = (&async function pointer to dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:));

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10007716C;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_10007716C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000772A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000772A8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10007730C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v17 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAF80;
  v10._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D5138, v14);

  return result;
}

uint64_t sub_1000774EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007758C, 0, 0);
}

uint64_t sub_10007758C()
{
  v0[6] = *(v0[2] + 16);
  v5 = (&async function pointer to dispatch thunk of AlarmsViewModel.snoozeAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.snoozeAlarm(_:));

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100077650;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_100077650()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100077888;
  }

  else
  {

    v2 = sub_10007776C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007776C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D3290, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100077888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000778F4()
{

  return swift_deallocClassInstance();
}

double sub_100077950(unint64_t a1)
{
  v2 = v1;
  v17 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
LABEL_3:
      v16 = v2;
      v5 = 0;
      v2 = a1 & 0xC000000000000001;
      do
      {
        if (v2)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v6 isSnoozed] & 1) != 0 || (objc_msgSend(v7, "isFiring"))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v5;
      }

      while (v8 != v4);
      v9 = v17;
      v2 = v16;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_20:
    if ((v9 & 0x4000000000000000) == 0)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  while (1)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      break;
    }

LABEL_22:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = v12;
      sub_100077B54(&v17, v2);

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

LABEL_33:

  return result;
}

uint64_t sub_100077B54(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(29);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x80000001000DAC90;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  v5 = [v2 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = [v2 debugDescription];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v3 logDebug:v16];

  return sub_10007E92C(v2, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0, sub_10004F52C);
}

uint64_t sub_100077D10(void *a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(26);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x80000001000DAC70;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  v4 = [a1 alarmIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8236;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = [a1 debugDescription];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v2 logDebug:v15];

  return sub_10007E92C(a1, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0, sub_10004F52C);
}

uint64_t sub_100077F04(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(a1);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_100077F54()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  type metadata accessor for TimerViewModel();
  swift_allocObject();
  *(v0 + 16) = TimerViewModel.init()();
  v5 = objc_allocWithZone(MTTimerManager);

  v6 = [v5 init];
  dispatch thunk of TimerViewModel.setupManager(_:)();

  v7 = objc_opt_self();
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v8._countAndFlagsBits = 0x696C616974696E49;
  v8._object = 0xED000020676E697ALL;
  String.append(_:)(v8);
  v15 = v0;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 774778400;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v7 logInfo:v10];

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_100075B64(0, 0, v4, &unk_1000D5010, v12);

  return v1;
}

uint64_t sub_1000781A8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100078274;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100078274()
{

  return _swift_task_switch(sub_100078370, 0, 0);
}

uint64_t sub_100078384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_100078438;

  return sub_1000786AC(a5, a6);
}

uint64_t sub_100078438(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100078538, 0, 0);
}

uint64_t sub_100078538()
{
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(41);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v4;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAEA0;
    v6._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = String._bridgeToObjectiveC()();

    [v5 logInfo:v8];

    sub_10007E92C(v1, &AlarmPresentationState.init(_:), &qword_1001135F8, &qword_10011F3A8, sub_10004F028);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000786AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1000786D0, 0, 0);
}

uint64_t sub_1000786D0()
{
  v0[8] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100078780;
  v3 = v0[5];
  v2 = v0[6];

  return TimerViewModel.getTimer(_:)(v3, v2);
}

uint64_t sub_100078780(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100078A0C;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1000788D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000788D4()
{
  v1 = v0[10];
  if (!v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v3;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAF60;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = String._bridgeToObjectiveC()();

    [v5 logError:v8];
  }

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_100078A0C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(34);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000DAF60;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v1;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 logError:v7];

  v8 = v0[1];

  return v8(0);
}

double sub_100078B44(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v17 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAF30;
  v10._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D5120, v14);

  return result;
}

uint64_t sub_100078D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_100078DC4, 0, 0);
}

uint64_t sub_100078DC4()
{
  v0[6] = *(v0[2] + 16);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100078E74;
  v3 = v0[3];
  v2 = v0[4];

  return TimerViewModel.pauseResumeTimer(_:)(v3, v2);
}

uint64_t sub_100078E74()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10007F054;
  }

  else
  {

    v2 = sub_100078F90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100078F90()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D5128, v6);

  v7 = v0[1];

  return v7();
}

double sub_1000790AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v17 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAF00;
  v10._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D5108, v14);

  return result;
}