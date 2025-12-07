void sub_100094DA0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer])
  {
    v7 = objc_opt_self();
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    aBlock[4] = sub_100096578;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100082B6C;
    aBlock[3] = &unk_100102CE8;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    v12 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
    _Block_release(v10);
    v13 = *&v1[v6];
    *&v1[v6] = v12;
  }
}

uint64_t sub_100094F94(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
  if (v7)
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    sub_10008BEF0(v9);
    v10 = String._bridgeToObjectiveC()();

    [v7 setAccessibilityLabel:v10];
  }

  [objc_msgSend(a2 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

void sub_1000950EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v10, 0, 1, v11);
    v50 = v6;
    v51 = v17;
    v48 = *(v12 + 32);
    v48(v17, v10, v11);
    v47 = objc_opt_self();
    aBlock = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v20 = v2;
    v21 = [v2 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v4;
    v23 = v22;
    v25 = v24;

    aBlock = v23;
    v57 = v25;
    v26._object = 0x80000001000DB820;
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v26);
    v27 = v51;
    v28._countAndFlagsBits = AlarmPresentationState.id.getter();
    String.append(_:)(v28);

    v29 = String._bridgeToObjectiveC()();

    [v47 logInfo:v29];

    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    (*(v12 + 16))(v15, v27, v11);
    v31 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    v48((v32 + v31), v15, v11);
    AssociatedConformanceWitness = sub_1000963D8;
    v61 = v32;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10004B270;
    AssociatedTypeWitness = &unk_100102C70;
    v33 = _Block_copy(&aBlock);
    v34 = v20;

    v35 = v53;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100025228(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    v36 = v55;
    v37 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v52 + 8))(v36, v37);
    (*(v54 + 8))(v35, v50);
    (*(v12 + 8))(v51, v11);
  }

  else
  {
    v19(v10, 1, 1, v11);
    sub_10002D02C(v10, &unk_100115DA0, &unk_1000D3220);
    v38 = objc_opt_self();
    aBlock = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v62 = aBlock;
    v63 = v57;
    v39 = [v2 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0xD00000000000002FLL;
    v44._object = 0x80000001000DB7F0;
    String.append(_:)(v44);
    sub_100025B1C(a1, a1[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10005712C(&aBlock);
    dispatch thunk of Identifiable.id.getter();
    sub_1000032D4(&unk_1001180D0, &qword_1000D3990);
    _print_unlocked<A, B>(_:_:)();
    sub_100017D28(&aBlock);
    v45 = String._bridgeToObjectiveC()();

    [v38 logError:v45];
  }
}

void sub_100095828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlarmPresentationState();
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel))
  {
    (*(v9 + 16))(v11, a2);

    sub_100095C28(v11);
  }

  AlarmPresentationState.mode.getter();
  v12 = AlarmPresentationState.Mode.isAlerting.getter();
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_10008FAEC(v12 & 1);
  AlarmPresentationState.mode.getter();
  v14 = AlarmPresentationState.Mode.isAlerting.getter();
  v13(v7, v4);
  if (v14)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(a2);
  }
}

uint64_t sub_100095A28()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId);

  return v1;
}

uint64_t sub_100095A68()
{
  v1 = [v0 systemApertureElementContext];
  v4[4] = Frame.timestamp.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10004B270;
  v4[3] = &unk_100102C98;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_100095B30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v4 = type metadata accessor for AlarmPresentationState();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100095C28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_100025228(&qword_1001180E0, &type metadata accessor for AlarmPresentationState, &protocol conformance descriptor for AlarmPresentationState);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100095EC8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100095F64()
{
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);
}

double sub_10009600C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100096118()
{
  v1 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  v2 = type metadata accessor for AlarmPresentationState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
  v4 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_100096268(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000963D8()
{
  v1 = *(type metadata accessor for AlarmPresentationState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100095828(v2, v3);
}

double sub_10009643C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000964AC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100096578(uint64_t a1)
{
  type metadata accessor for Date();
  v3 = *(v1 + 16);

  return sub_100094F94(a1, v3);
}

id sub_10009669C(void *a1, void *a2, char a3)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  v10 = [result layer];

  [v10 setAllowsHitTesting:a3 & 1];
  [v3 addChildViewController:a1];
  if (!a2)
  {
LABEL_6:
    [a1 didMoveToParentViewController:v3];
    return a1;
  }

  result = [a1 view];
  if (result)
  {
    v11 = result;
    [a2 addSubview:result];

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1000967CC()
{
  result = qword_100118130;
  if (!qword_100118130)
  {
    sub_10002BB3C(255, &qword_100118128, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118130);
  }

  return result;
}

uint64_t sub_10009683C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000968C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10009694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_100096A04()
{
  result = qword_100117A70;
  if (!qword_100117A70)
  {
    sub_10001C820(&qword_100117A78, &qword_1000D5658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A70);
  }

  return result;
}

uint64_t sub_100096A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for TimersTimelineSchedule.TimePeriodEntries(0) + 20);
  sub_1000987DC(v2 + v10, v9);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_10004F91C(v9);
    return (*(v12 + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v12 + 32))(a1, v9, v11);
    Date.addingTimeInterval(_:)();
    v14 = *(v12 + 56);
    v14(v7, 0, 1, v11);
    sub_100088408(v7, v2 + v10);
    return (v14)(a1, 0, 1, v11);
  }
}

uint64_t sub_100096C60()
{
  sub_1000872AC(v0);
  v2 = v1;
  sub_10009884C(v0, type metadata accessor for TimersTimelineSchedule.TimePeriodEntries);
  return v2;
}

uint64_t sub_100096CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a3;
  v64 = a1;
  v4 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Calendar.SearchDirection();
  v47 = *(v57 - 8);
  __chkstk_darwin(v57);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.MatchingPolicy();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v9 - 8);
  v56 = &v42 - v10;
  v59 = type metadata accessor for Calendar();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateComponents();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v44 = (v18 + 56);
  v43 = v19;
  v19(a3, 1, 1, v17);
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v20 = type metadata accessor for Calendar.Component();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000D08B0;
  (*(v21 + 104))(v23 + v22, enum case for Calendar.Component.second(_:), v20);
  sub_10008B828(v23);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  v24 = v63;
  swift_deallocClassInstance();
  v25 = v62;
  Calendar.dateComponents(_:from:)();

  v26 = *(v11 + 8);
  v27 = v59;
  v26(v13, v59);
  v28 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0);
  (*(v60 + 16))(v24 + *(v28 + 24), v16, v61);
  v29 = *(v28 + 20);
  v51 = v18;
  v52 = v17;
  (*(v18 + 16))(v24 + v29, v25, v17);
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  v58 = v16;
  LOBYTE(v28) = Calendar.date(_:matchesComponents:)();
  v45 = v11 + 8;
  v26(v13, v27);
  if (v28)
  {
    v31 = v51;
    v30 = v52;
    (*(v51 + 8))(v62, v52);
    (*(v60 + 8))(v58, v61);
    v32 = v63;
    sub_10004F91C(v63);
    (*(v31 + 32))(v32, v64, v30);
    return v43(v32, 0, 1, v30);
  }

  else
  {
    static Calendar.current.getter();
    (*(v54 + 104))(v53, enum case for Calendar.MatchingPolicy.nextTime(_:), v55);
    v35 = v46;
    v34 = v47;
    (*(v47 + 104))(v46, enum case for Calendar.SearchDirection.backward(_:), v57);
    v37 = v48;
    v36 = v49;
    v38 = v50;
    (*(v49 + 104))(v48, enum case for Calendar.RepeatedTimePolicy.first(_:), v50);
    v39 = v64;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    v44 = v26;
    v40 = v52;
    v41 = *(v51 + 8);
    v41(v62, v52);
    v41(v39, v40);
    (*(v36 + 8))(v37, v38);
    (*(v34 + 8))(v35, v57);
    (*(v54 + 8))(v53, v55);
    v44(v13, v59);
    (*(v60 + 8))(v58, v61);
    return sub_100088408(v56, v63);
  }
}

uint64_t sub_1000973E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar.SearchDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar.MatchingPolicy();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v15 = __chkstk_darwin(v14 - 8);
  v62 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v67 = &v51 - v18;
  v19 = __chkstk_darwin(v17);
  v68 = &v51 - v20;
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v60 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v51 - v27;
  v73 = v2;
  sub_1000987DC(v2, v22);
  v61 = *(v24 + 48);
  if (v61(v22, 1, v23) == 1)
  {
    sub_10004F91C(v22);
    return (*(v24 + 56))(a1, 1, 1, v23);
  }

  else
  {
    v57 = v5;
    v58 = v4;
    v59 = a1;
    v30 = *(v24 + 32);
    v30(v28, v22, v23);
    v31 = *(type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0) + 28);
    sub_100098794(&qword_100117BE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v55 = v31;
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v53 = v30;
      v54 = v24 + 32;
      v56 = v13;
      static Calendar.current.getter();
      v32 = *(v69 + 104);
      v51 = v10;
      v32(v10, enum case for Calendar.MatchingPolicy.nextTime(_:), v70);
      v33 = v65;
      (*(v65 + 104))(v71, enum case for Calendar.RepeatedTimePolicy.first(_:), v72);
      v35 = v57;
      v34 = v58;
      v36 = v66;
      (*(v57 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v58);
      v37 = v67;
      v52 = v28;
      v38 = v51;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v35 + 8))(v36, v34);
      (*(v33 + 8))(v71, v72);
      (*(v69 + 8))(v38, v70);
      (*(v63 + 8))(v56, v64);
      v39 = v62;
      sub_1000987DC(v37, v62);
      if (v61(v39, 1, v23) == 1)
      {
        sub_10004F91C(v37);
        sub_10004F91C(v39);
        v40 = v73;
        sub_10004F91C(v73);
        v41 = *(v24 + 56);
        v41(v40, 1, 1, v23);
        v42 = v59;
        v53(v59, v52, v23);
      }

      else
      {
        v46 = v60;
        v47 = v53;
        v53(v60, v39, v23);
        v48 = v55;
        if (static Date.> infix(_:_:)())
        {
          (*(v24 + 8))(v46, v23);
          sub_10004F91C(v37);
          v49 = v73;
          sub_10004F91C(v73);
          (*(v24 + 16))(v49, v49 + v48, v23);
          v41 = *(v24 + 56);
          v41(v49, 0, 1, v23);
        }

        else
        {
          v50 = v68;
          Date.addingTimeInterval(_:)();
          (*(v24 + 8))(v46, v23);
          sub_10004F91C(v37);
          v41 = *(v24 + 56);
          v41(v50, 0, 1, v23);
          sub_100088408(v50, v73);
        }

        v42 = v59;
        v47(v59, v52, v23);
      }

      return (v41)(v42, 0, 1, v23);
    }

    else
    {
      v43 = v68;
      Date.addingTimeInterval(_:)();
      v44 = *(v24 + 56);
      v44(v43, 0, 1, v23);
      sub_100088408(v43, v73);
      v45 = v59;
      v30(v59, v28, v23);
      return v44(v45, 0, 1, v23);
    }
  }
}

uint64_t sub_100097C24()
{
  sub_1000877B0(v0);
  v2 = v1;
  sub_10009884C(v0, type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry);
  return v2;
}

void *sub_100097C74(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v2 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TimersTimelineSchedule.TimePeriodEntries(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimelineScheduleMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for TimelineScheduleMode.normal(_:), v14);
  v18 = static TimelineScheduleMode.== infix(_:_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v19 = *v33;
    (*(v5 + 16))(v10, v32, v4);
    v20 = *(v11 + 20);
    v21 = *(v5 + 56);
    v21(&v13[v20], 1, 1, v4);
    sub_10004F91C(&v13[v20]);
    (*(v5 + 32))(&v13[v20], v10, v4);
    v21(&v13[v20], 0, 1, v4);
    *v13 = v19;
    sub_1000032D4(&qword_1001181E8, &qword_1000D5C48);
    v22 = swift_allocObject();
    v23 = type metadata accessor for TimersTimelineSchedule.TimePeriodEntries;
    v24 = v22 + *(*v22 + class metadata base offset for _SequenceBox + 16);
    v25 = v13;
  }

  else
  {
    v26 = *(v5 + 16);
    v26(v10, v32, v4);
    v27 = type metadata accessor for TimersTimelineSchedule(0);
    v26(v8, v33 + *(v27 + 20), v4);
    v28 = v31;
    sub_100096CB0(v10, v8, v31);
    sub_1000032D4(&qword_1001181E0, &unk_1000D5C38);
    v22 = swift_allocObject();
    v23 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry;
    v24 = v22 + *(*v22 + class metadata base offset for _SequenceBox + 16);
    v25 = v28;
  }

  sub_10009810C(v25, v24, v23);
  return v22;
}

void *sub_1000980A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100097C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009810C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100098188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100098220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000982C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100098340(uint64_t a1)
{
  if (!qword_100117B00)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100117B00);
    }
  }
}

uint64_t sub_1000983AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DateComponents();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10009850C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DateComponents();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100098664(uint64_t a1)
{
  sub_100098340(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DateComponents();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100098794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000987DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009884C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1000988AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v83 = a3;
  v84 = a4;
  v86 = a1;
  v87 = a2;
  v14 = type metadata accessor for UIButton.Configuration.Size();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UIButton.Configuration();
  v89 = *(v22 - 8);
  v90 = v22;
  v23 = __chkstk_darwin(v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v78 - v26;
  v28 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  *&v9[v28] = [objc_allocWithZone(UILabel) init];
  static UIButton.Configuration.tinted()();
  (*(v19 + 104))(v21, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v18);
  UIButton.Configuration.cornerStyle.setter();
  v29 = objc_opt_self();
  v30 = [v29 mtOrange];
  v31 = [v30 colorWithAlphaComponent:0.35];

  UIButton.Configuration.baseBackgroundColor.setter();
  v85 = v29;
  v32 = [v29 mtOrange];
  UIButton.Configuration.baseForegroundColor.setter();
  v33 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:19.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v15 + 104))(v17, enum case for UIButton.Configuration.Size.large(_:), v14);
  UIButton.Configuration.buttonSize.setter();
  v34 = [objc_allocWithZone(UIControl) init];
  v82 = sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  v35 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v34 addAction:v35 forControlEvents:64];

  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.001];

  [v37 setBackgroundColor:v39];
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v40 = *(v89 + 16);
  v88 = v27;
  v40(v25, v27, v90);
  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton] = UIButton.init(configuration:primaryAction:)();
  v41 = String._bridgeToObjectiveC()();
  v80 = objc_opt_self();
  v42 = [v80 systemImageNamed:v41];

  if (v42)
  {
    v43 = [v42 imageWithRenderingMode:2];
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_allocWithZone(UIImageView) initWithImage:v43];

  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView] = v44;
  v45 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton] = UIButton.init(configuration:primaryAction:)();
  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl] = v37;
  v46 = &v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_entryId];
  v47 = v83;
  v48 = v84;
  *v46 = v83;
  v46[1] = v48;
  v49 = type metadata accessor for TimerAlertView();
  v91.receiver = v9;
  v91.super_class = v49;
  v81 = v37;

  v50 = objc_msgSendSuper2(&v91, "initWithFrame:", a5, a6, a7, a8);
  v51 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton;
  v52 = *&v50[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton];
  v53 = v50;
  v54 = v52;
  v55 = v85;
  v56 = [v85 mtOrange];
  v57 = [v56 colorWithAlphaComponent:0.35];

  [v54 setBackgroundColor:v57];
  v79 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView;
  v58 = *&v53[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView];
  v59 = [v55 mtOrange];
  [v58 setTintColor:v59];

  v60 = swift_allocObject();
  *(v60 + 16) = v47;
  *(v60 + 24) = v48;

  v78 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [*&v50[v51] addAction:v78 forControlEvents:64];
  v61 = swift_allocObject();
  *(v61 + 16) = v47;
  *(v61 + 24) = v48;
  v62 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v63 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton;
  [*&v53[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton] addAction:v62 forControlEvents:64];
  v64 = *&v53[v63];
  v65 = String._bridgeToObjectiveC()();
  v66 = [v80 systemImageNamed:v65];

  [v64 setImage:v66 forState:0];
  v67 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  v68 = *&v53[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel];
  v69 = objc_opt_self();
  v70 = v68;
  v71 = [v69 systemFontOfSize:28.0 weight:UIFontWeightMedium];
  [v70 setFont:v71];

  v72 = *&v53[v67];
  v73 = [v55 mtOrange];
  [v72 setTextColor:v73];

  v74 = *&v53[v67];
  v75 = String._bridgeToObjectiveC()();

  [v74 setText:v75];

  [*&v53[v67] setTextAlignment:2];
  [v53 addSubview:*&v50[v51]];
  [*&v50[v51] addSubview:*&v53[v79]];
  [v53 addSubview:*&v53[v63]];
  v76 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl;
  [v53 addSubview:*&v53[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl]];
  [*&v53[v76] addSubview:*&v53[v67]];

  (*(v89 + 8))(v88, v90);
  return v53;
}

uint64_t sub_100099264()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() mtURLForSection:4];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  }

  else
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_100057520(v2);
}

uint64_t sub_100099394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100113628 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

id sub_100099418(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TimerAlertView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton];
  Frame.timestamp.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 setBounds:?];
  [v1 bounds];
  CGRectGetHeight(v19);
  Frame.timestamp.getter();
  [v2 setCenter:?];
  v11 = [v2 layer];
  [v11 setCornerRadius:25.0];

  v12 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView];
  v13 = [objc_opt_self() configurationWithPointSize:5 weight:27.5];
  [v12 setPreferredSymbolConfiguration:v13];

  [v2 bounds];
  CGRectGetWidth(v20);
  [v12 intrinsicContentSize];
  [v2 bounds];
  CGRectGetHeight(v21);
  [v12 intrinsicContentSize];
  [v12 intrinsicContentSize];
  [v12 intrinsicContentSize];
  Frame.timestamp.getter();
  [v12 setFrame:?];
  v14 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton];
  [v14 setBounds:{v4, v6, v8, v10}];
  [v2 center];
  [v1 bounds];
  CGRectGetHeight(v22);
  Frame.timestamp.getter();
  [v14 setCenter:?];
  v15 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl];
  [v14 frame];
  CGRectGetMaxX(v23);
  [v1 bounds];
  CGRectGetWidth(v24);
  [v14 frame];
  CGRectGetMaxX(v25);
  [v1 bounds];
  CGRectGetHeight(v26);
  Frame.timestamp.getter();
  [v15 setFrame:?];
  v16 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel];
  [v15 bounds];
  CGRectGetHeight(v27);
  [v16 intrinsicContentSize];
  [v15 bounds];
  CGRectGetWidth(v28);
  [v16 intrinsicContentSize];
  Frame.timestamp.getter();
  return [v16 setFrame:?];
}

void sub_1000997F4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TimerAlertView();
  objc_msgSendSuper2(&v10, "didMoveToWindow");
  v2 = [v1 window];
  if (v2)
  {

    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    v8 = *&v1[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_entryId];

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v9);
    v3 = v8;
    if (v8)
    {
      if ([v8 isFiring] && (v4 = objc_msgSend(v1, "window")) != 0 && (v5 = v4, v6 = objc_msgSend(v4, "windowScene"), v5, v6))
      {
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          v7 = v6;
          dispatch thunk of ActivityScene.idleTimerDisabled.setter();

          v3 = v7;
        }
      }

      else
      {
        v6 = v8;
      }
    }
  }
}

id sub_100099A78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimerAlertView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100099B60()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100099BFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000032D4(&qword_100118FC8, &qword_1000D7070);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_100037A00();
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1000A98D8(&v26[8], v24);
    sub_1000A98D8(v24, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v13;
    sub_1000A98D8(v26, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100099EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100118C78, &qword_1000D6DD0);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = sub_1000032D4(&qword_100118C80, &qword_1000D6DD8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = sub_1000032D4(&qword_100118C88, &qword_1000D6DE0);
  sub_10009A170(v2, &v9[*(v14 + 44)]);
  v15 = static Edge.Set.leading.getter();
  v16 = &v9[*(v7 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  static AccessibilityChildBehavior.contain.getter();
  v17 = sub_1000A7C2C();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);
  sub_10002D02C(v9, &qword_100118C78, &qword_1000D6DD0);
  v18 = [*v2 timerIDString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20[2] = v7;
  v20[3] = v17;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10009A170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_1000032D4(&qword_100118CA8, &qword_1000D6DF0);
  v3 = *(v33 - 8);
  v4 = __chkstk_darwin(v33);
  v34 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v32 = &v28[-v6];
  v7 = *a1;
  sub_10002B00C(a1 + 8, &v50);
  sub_10002B00C(a1 + 48, v51);
  v49 = v7;
  v8 = v7;
  LOBYTE(v7) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v51[40] = v7;
  v52 = v9;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = 0;
  v13 = static VerticalAlignment.center.getter();
  v46 = 0;
  v14 = *(a1 + 88);
  v30 = v13;
  v31 = v14;
  v15 = v8;
  sub_10002B128(sub_1000A9C68, 0);
  v16 = v15;
  sub_10002B130(sub_1000A9C68, 0);

  v45 = 0;
  v44 = 0;
  v29 = v46;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v47[55] = v60;
  *&v47[71] = v61;
  *&v47[87] = v62;
  *&v47[103] = v63;
  *&v47[7] = v57;
  *&v47[23] = v58;
  *&v47[39] = v59;
  v17 = static Edge.Set.trailing.getter();
  v48 = 1;
  static Color.black.getter();
  v18 = Color.opacity(_:)();

  v19 = static Edge.Set.all.getter();
  *(&v40[4] + 9) = *&v47[64];
  *(&v40[5] + 9) = *&v47[80];
  *(&v40[6] + 9) = *&v47[96];
  *(v40 + 9) = *v47;
  *(&v40[1] + 9) = *&v47[16];
  *(&v40[2] + 9) = *&v47[32];
  v36 = v30;
  LOBYTE(v37) = v29;
  *(&v37 + 1) = v31;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = sub_1000A9C68;
  *&v39 = 0;
  BYTE8(v39) = 0;
  *&v40[0] = v16;
  BYTE8(v40[0]) = 1;
  *(&v40[7] + 1) = *&v47[111];
  *(&v40[3] + 9) = *&v47[48];
  LOBYTE(v41[0]) = v17;
  *(v41 + 8) = 0u;
  *(&v41[1] + 8) = 0u;
  WORD4(v41[2]) = 1;
  *&v41[3] = v18;
  BYTE8(v41[3]) = v19;
  sub_1000032D4(&qword_100118CB0, &qword_1000D6DF8);
  sub_1000A7CE4();
  v20 = v32;
  View.onTapGesture(count:perform:)();
  v42[12] = v41[0];
  v42[13] = v41[1];
  v43[0] = v41[2];
  *(v43 + 9) = *(&v41[2] + 9);
  v42[8] = v40[4];
  v42[9] = v40[5];
  v42[10] = v40[6];
  v42[11] = v40[7];
  v42[4] = v40[0];
  v42[5] = v40[1];
  v42[6] = v40[2];
  v42[7] = v40[3];
  v42[0] = v36;
  v42[1] = v37;
  v42[2] = v38;
  v42[3] = v39;
  sub_10002D02C(v42, &qword_100118CB0, &qword_1000D6DF8);
  sub_10002CFC4(&v49, &v36, &qword_100118D00, &qword_1000D6E20);
  v21 = *(v3 + 16);
  v22 = v33;
  v23 = v34;
  v21(v34, v20, v33);
  v24 = v35;
  sub_10002CFC4(&v36, v35, &qword_100118D00, &qword_1000D6E20);
  v25 = sub_1000032D4(&qword_100118D08, &qword_1000D6E28);
  v21((v24 + *(v25 + 48)), v23, v22);
  v26 = *(v3 + 8);
  v26(v20, v22);
  sub_10002D02C(&v49, &qword_100118D00, &qword_1000D6E20);
  v26(v23, v22);
  return sub_10002D02C(&v36, &qword_100118D00, &qword_1000D6E20);
}

uint64_t sub_10009A5EC()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() mtURLForSection:4];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  }

  else
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_10002D02C(v2, &unk_100119A20, &qword_1000D1DC0);
}

double sub_10009A730@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmKitCountdownLabelView(0);
  AlarmPresentationState.mode.getter();
  v8 = AlarmPresentationState.Mode.isAlerting.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = AlarmPresentationState.bundleID.getter();
    if (!v11)
    {
      goto LABEL_8;
    }

    if (v10 == 0xD000000000000015 && v11 == 0x80000001000D7F20)
    {

      goto LABEL_19;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_8:
      v14 = AlarmPresentationState.localizedAppName.getter();
      if (v15)
      {
        *&v75 = v14;
        *(&v75 + 1) = v15;
        sub_100025FB4();

        v16 = Text.init<A>(_:)();
        v18 = v17;
        v20 = v19;
        if (qword_100113660 != -1)
        {
          swift_once();
        }

        v61 = Text.font(_:)();
        v22 = v21;
        v24 = v23;
        v26 = v25;
        sub_100025B0C(v16, v18, v20 & 1);

        KeyPath = swift_getKeyPath();
        v28 = swift_getKeyPath();
        LOBYTE(v75) = v24 & 1;
        LOBYTE(v62) = 0;
        v29 = v24 & 1;
        sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
        v30 = AlarmAttributes.tintColor.getter();
        v31 = swift_getKeyPath();

        v32 = v61;
        v33 = 0x3FEB333333333333;
        v34 = 1;
        goto LABEL_20;
      }
    }

LABEL_19:
    v32 = 0;
    v22 = 0;
    v26 = 0;
    KeyPath = 0;
    v34 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
LABEL_20:
    v74 = 0;
    v62 = v32;
    v63 = v22;
    v64 = v29;
    v65 = v26;
    v66 = KeyPath;
    v67 = v34;
    v68 = 0;
    v69 = v28;
    v70 = v33;
    v71 = v31;
    v72 = v30;
    v73 = 0;
    goto LABEL_21;
  }

  v35 = AlarmPresentationState.alarmLabel.getter();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    AlarmPresentationState.mode.getter();
    v38 = sub_10000AAEC(v7);
    v37 = v39;
    v9(v7, v4);
    v35 = v38;
  }

  v61 = v2;
  *&v75 = v35;
  *(&v75 + 1) = v37;
  sub_100025FB4();

  v40 = Text.init<A>(_:)();
  v42 = v41;
  v44 = v43;
  if (qword_100113660 != -1)
  {
    swift_once();
  }

  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_100025B0C(v40, v42, v44 & 1);

  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v49 &= 1u;
  LOBYTE(v75) = v49;
  LOBYTE(v62) = 0;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v54 = AlarmAttributes.tintColor.getter();
  v55 = swift_getKeyPath();

  v74 = 1;
  v62 = v45;
  v63 = v47;
  LOBYTE(v64) = v49;
  v65 = v51;
  v66 = v52;
  v67 = 1;
  LOBYTE(v68) = 0;
  v69 = v53;
  v70 = 0x3FEB333333333333;
  v71 = v55;
  v72 = v54;
  v73 = 1;
LABEL_21:
  sub_1000032D4(&qword_100118D10, &unk_1000D6E30);
  sub_1000032D4(&qword_100116BE0, &unk_1000D4890);
  sub_1000A7F98();
  sub_100065C8C();
  _ConditionalContent<>.init(storage:)();
  v56 = v78;
  v57 = v79[0];
  v58 = v76;
  a1[2] = v77;
  a1[3] = v56;
  a1[4] = v57;
  *(a1 + 73) = *(v79 + 9);
  result = *&v75;
  *a1 = v75;
  a1[1] = v58;
  return result;
}

uint64_t sub_10009AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v134 = sub_1000032D4(&qword_100118B40, &qword_1000D6CB0);
  __chkstk_darwin(v134);
  v135 = (&v117 - v3);
  v153 = sub_1000032D4(&qword_100118B48, &unk_1000D6CB8);
  __chkstk_darwin(v153);
  v136 = &v117 - v4;
  v5 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v5 - 8);
  v121 = &v117 - v6;
  v132 = type metadata accessor for AlarmPresentationState();
  v123 = *(v132 - 8);
  __chkstk_darwin(v132);
  v122 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v120 = *(v155 - 8);
  __chkstk_darwin(v155);
  v137 = &v117 - v8;
  v133 = type metadata accessor for AlarmKitAlertLabelView(0);
  v9 = __chkstk_darwin(v133);
  v119 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v117 - v11;
  v130 = type metadata accessor for Date();
  v129 = *(v130 - 8);
  v12 = __chkstk_darwin(v130);
  v128 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v117 - v14;
  v148 = type metadata accessor for RunningCountdownView(0);
  v15 = __chkstk_darwin(v148);
  v127 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v131 = &v117 - v17;
  v150 = sub_1000032D4(&qword_100118B50, &qword_1000D6CC8);
  __chkstk_darwin(v150);
  v152 = &v117 - v18;
  v145 = sub_1000032D4(&qword_100118630, &qword_1000D6378);
  __chkstk_darwin(v145);
  v146 = (&v117 - v19);
  v151 = sub_1000032D4(&qword_100118638, &qword_1000D6380);
  __chkstk_darwin(v151);
  v147 = &v117 - v20;
  v21 = type metadata accessor for Locale();
  v143 = *(v21 - 8);
  v144 = v21;
  __chkstk_darwin(v21);
  v142 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v141 = *(v125 - 8);
  __chkstk_darwin(v125);
  v140 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AlarmPresentationState.Mode();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v118 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v117 - v29;
  __chkstk_darwin(v28);
  v32 = &v117 - v31;
  v33 = type metadata accessor for AlarmPresentationState.Mode.Paused();
  v138 = *(v33 - 8);
  v139 = v33;
  __chkstk_darwin(v33);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for AlarmKitCountdownView(0);
  v36 = *(v149 + 24);
  v37 = a1;
  AlarmPresentationState.mode.getter();
  v38 = v24;
  v39 = *(v25 + 88);
  if (v39(v32, v24) == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    (*(v25 + 96))(v32, v24);
    v41 = v138;
    v40 = v139;
    (*(v138 + 32))(v35, v32, v139);
    AlarmPresentationState.Mode.Paused.totalCountdownDuration.getter();
    v43 = v42;
    AlarmPresentationState.Mode.Paused.previouslyElapsedDuration.getter();
    v45 = sub_10002551C(v43 - v44);
    if (v45 > 1.0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 1.0;
    }

    v47 = v142;
    static Locale.autoupdatingCurrent.getter();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v49 = (*(v143 + 8))(v47, v144);
    *v49.i64 = v46;
    v50 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v49);

    if (v50)
    {
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xE000000000000000;
    }

    v85 = *(v37 + *(v149 + 28));
    if (sub_1000899F0(v85))
    {
      v86 = 48.0;
    }

    else
    {
      v86 = 47.0;
    }

    if (sub_1000899F0(v85))
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v87 = &qword_10011F690;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v87 = &qword_10011F6B0;
    }

    v88 = *v87;
    v89 = AlarmAttributes.tintColor.getter();
    v90 = v146;
    *v146 = v51;
    *(v90 + 1) = v53;
    v90[2] = v86;
    *(v90 + 3) = v88;
    *(v90 + 4) = v89;
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);

    v91 = v147;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v91, v152, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    sub_1000A7314();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v91, &qword_100118638, &qword_1000D6380);
    return (*(v41 + 8))(v35, v40);
  }

  else
  {
    v54 = *(v25 + 8);
    v54(v32, v24);
    v55 = v37;
    v56 = v24;
    AlarmPresentationState.mode.getter();
    v57 = v55;
    if (v39(v30, v38) == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      (*(v25 + 96))(v30, v38);
      v58 = v30;
      v59 = v125;
      (*(v141 + 32))(v140, v58, v125);
      v60 = v126;
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      v61 = v129;
      v62 = v128;
      v63 = v130;
      (*(v129 + 16))(v128, v60, v130);
      v64 = *(v57 + *(v149 + 28));
      if (sub_1000899F0(v64))
      {
        v65 = 48.0;
      }

      else
      {
        v65 = 47.0;
      }

      if (sub_1000899F0(v64))
      {
        if (qword_100113658 != -1)
        {
          swift_once();
        }

        v66 = &qword_10011F690;
      }

      else
      {
        if (qword_100113678 != -1)
        {
          swift_once();
        }

        v66 = &qword_10011F6B0;
      }

      v93 = *v66;
      v94 = AlarmAttributes.tintColor.getter();
      v95 = sub_1000899F0(v64);
      (*(v61 + 8))(v60, v63);
      v96 = v127;
      (*(v61 + 32))(v127, v62, v63);
      v97 = v148;
      *(v96 + *(v148 + 20)) = 0;
      *(v96 + v97[6]) = v65;
      *(v96 + v97[7]) = v93;
      *(v96 + v97[8]) = v94;
      *(v96 + v97[9]) = (v95 & 1) == 0;
      *(v96 + v97[10]) = 0;
      v98 = v131;
      sub_1000A73D0(v96, v131, type metadata accessor for RunningCountdownView);
      sub_1000A7438(v98, v146, type metadata accessor for RunningCountdownView);
      swift_storeEnumTagMultiPayload();
      sub_1000A4D0C();
      sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);
      v99 = v147;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v99, v152, &qword_100118638, &qword_1000D6380);
      swift_storeEnumTagMultiPayload();
      sub_1000A4C50();
      sub_1000A7314();
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v99, &qword_100118638, &qword_1000D6380);
      sub_1000A74A0(v98, type metadata accessor for RunningCountdownView);
      return (*(v141 + 8))(v140, v59);
    }

    else
    {
      v54(v30, v38);
      v67 = v149;
      v68 = *(v149 + 28);
      v69 = v55;
      v70 = *(v55 + v68);
      if (sub_1000899F0(*(v57 + v68)))
      {
        v71 = v120;
        (*(v120 + 16))(v137, v57 + *(v67 + 20), v155);
        v72 = v123;
        v73 = v122;
        (*(v123 + 16))(v122, v69 + v36, v132);
        v74 = AlarmPresentationState.alarmLabel.getter();
        if (!v75)
        {
          v76 = v118;
          AlarmPresentationState.mode.getter();
          v77 = sub_10000AAEC(v76);
          v79 = v78;
          v54(v76, v56);
          v75 = v79;
          v74 = v77;
        }

        v80 = v119;
        *(v119 + 1) = v74;
        *(v80 + 16) = v75;
        *v80 = 0;
        *(v80 + 32) = AlarmAttributes.tintColor.getter();
        v81 = v121;
        AlarmAttributes.metadata.getter();
        v82 = type metadata accessor for MTAlarmCustomContent();
        v83 = *(v82 - 8);
        if ((*(v83 + 48))(v81, 1, v82) == 1)
        {
          sub_10002D02C(v81, &unk_100118100, &qword_1000D1250);
          v84 = 1;
        }

        else
        {
          MTAlarmCustomContent.type.getter();
          (*(v83 + 8))(v81, v82);
          v107 = AlarmType.rawValue.getter();
          v84 = v107 != AlarmType.rawValue.getter();
        }

        *(v80 + 24) = v84;
        v108 = v133;
        (*(v71 + 32))(v80 + *(v133 + 32), v137, v155);
        (*(v72 + 32))(v80 + *(v108 + 36), v73, v132);
        v109 = v124;
        sub_1000A73D0(v80, v124, type metadata accessor for AlarmKitAlertLabelView);
        sub_1000A7438(v109, v135, type metadata accessor for AlarmKitAlertLabelView);
        swift_storeEnumTagMultiPayload();
        sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
        sub_1000A4D0C();
        v110 = v136;
        _ConditionalContent<>.init(storage:)();
        sub_10002CFC4(v110, v152, &qword_100118B48, &unk_1000D6CB8);
        swift_storeEnumTagMultiPayload();
        sub_1000A4C50();
        sub_1000A7314();
        _ConditionalContent<>.init(storage:)();
        sub_10002D02C(v110, &qword_100118B48, &unk_1000D6CB8);
        return sub_1000A74A0(v109, type metadata accessor for AlarmKitAlertLabelView);
      }

      else
      {
        v100 = v142;
        static Locale.autoupdatingCurrent.getter();
        v101 = Locale._bridgeToObjectiveC()().super.isa;
        v102 = (*(v143 + 8))(v100, v144);
        v102.i64[0] = 0;
        v103 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, v101, v102);

        if (v103)
        {
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0xE000000000000000;
        }

        if (sub_1000899F0(v70))
        {
          v111 = 48.0;
        }

        else
        {
          v111 = 47.0;
        }

        if (sub_1000899F0(v70))
        {
          if (qword_100113658 != -1)
          {
            swift_once();
          }

          v112 = &qword_10011F690;
        }

        else
        {
          if (qword_100113678 != -1)
          {
            swift_once();
          }

          v112 = &qword_10011F6B0;
        }

        v113 = *v112;
        v114 = AlarmAttributes.tintColor.getter();
        v115 = v135;
        *v135 = v104;
        *(v115 + 1) = v106;
        v115[2] = v111;
        *(v115 + 3) = v113;
        *(v115 + 4) = v114;
        swift_storeEnumTagMultiPayload();
        sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
        sub_1000A4D0C();

        v116 = v136;
        _ConditionalContent<>.init(storage:)();
        sub_10002CFC4(v116, v152, &qword_100118B48, &unk_1000D6CB8);
        swift_storeEnumTagMultiPayload();
        sub_1000A4C50();
        sub_1000A7314();
        _ConditionalContent<>.init(storage:)();

        return sub_10002D02C(v116, &qword_100118B48, &unk_1000D6CB8);
      }
    }
  }
}

double sub_10009C088@<D0>(uint64_t a1@<X8>)
{
  sub_10009AC80(v1, a1);
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
  v3 = StateObject.wrappedValue.getter();
  v4 = static ObservableObject.environmentStore.getter();
  v5 = (a1 + *(sub_1000032D4(&qword_100118B30, &qword_1000D6CA0) + 36));
  *v5 = v4;
  v5[1] = v3;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a1 + *(sub_1000032D4(&qword_100118B38, &qword_1000D6CA8) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_10009C1B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for UUID();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100118BD0, &qword_1000D6D40);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_1000032D4(&qword_100118BD8, &qword_1000D6D48);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v16 = sub_1000032D4(&qword_100118BE0, &qword_1000D6D50);
  sub_10009C508(v2, &v11[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  v18 = &v11[*(v9 + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  static AccessibilityChildBehavior.contain.getter();
  v19 = sub_1000A77B4();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v21);
  sub_10002D02C(v11, &qword_100118BD0, &qword_1000D6D40);
  type metadata accessor for CountdownPlatter(0);
  AlarmPresentationState.alarmID.getter();
  UUID.uuidString.getter();
  (*(v22 + 8))(v5, v23);
  v25 = v9;
  v26 = v19;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10009C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for CountdownPlatter(0);
  v4 = (v3 - 8);
  v75 = *(v3 - 8);
  v74 = *(v75 + 64);
  __chkstk_darwin(v3);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100118C00, &qword_1000D6D60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  v12 = sub_1000032D4(&qword_100118C08, &qword_1000D6D68);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_1000032D4(&qword_100118C10, &qword_1000D6D70);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v63 = &v62 - v17;
  v66 = sub_1000032D4(&qword_100118C18, &qword_1000D6D78) - 8;
  __chkstk_darwin(v66);
  v64 = &v62 - v18;
  v67 = sub_1000032D4(&qword_100118C20, &qword_1000D6D80);
  __chkstk_darwin(v67);
  v65 = &v62 - v19;
  v20 = sub_1000032D4(&qword_100118C28, &qword_1000D6D88);
  v71 = *(v20 - 8);
  v72 = v20;
  v21 = __chkstk_darwin(v20);
  v70 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v68 = &v62 - v23;
  v24 = type metadata accessor for AlarmKitPlatterControls(0);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v69 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v62 - v28;
  v30 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v30 - 8) + 16))(v29, a1, v30);
  v31 = v4[7];
  v32 = *(v25 + 28);
  v33 = type metadata accessor for AlarmPresentationState();
  (*(*(v33 - 8) + 16))(&v29[v32], a1 + v31, v33);
  v34 = a1;
  v29[*(v25 + 32)] = *(a1 + v4[10]);
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v35 = &v14[*(sub_1000032D4(&qword_100118C30, &qword_1000D6D90) + 44)];
  v36 = *(v34 + v4[9]);
  *v11 = static VerticalAlignment.firstTextBaseline.getter();
  *(v11 + 1) = 0x4014000000000000;
  v11[16] = 0;
  v37 = sub_1000032D4(&qword_100118C38, &qword_1000D6D98);
  sub_10009CD38(v34, &v11[*(v37 + 44)]);
  sub_10002CFC4(v11, v9, &qword_100118C00, &qword_1000D6D60);
  *v35 = v36;
  v35[8] = 0;
  v38 = sub_1000032D4(&qword_100118C40, &unk_1000D6DA0);
  sub_10002CFC4(v9, &v35[*(v38 + 48)], &qword_100118C00, &qword_1000D6D60);
  sub_10002D02C(v11, &qword_100118C00, &qword_1000D6D60);
  sub_10002D02C(v9, &qword_100118C00, &qword_1000D6D60);
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v63;
  sub_10002C7C4(v14, v63, &qword_100118C08, &qword_1000D6D68);
  v40 = (v39 + *(v16 + 44));
  v41 = v82;
  v40[4] = v81;
  v40[5] = v41;
  v40[6] = v83;
  v42 = v78;
  *v40 = v77;
  v40[1] = v42;
  v43 = v80;
  v40[2] = v79;
  v40[3] = v43;
  v44 = v39;
  v45 = v64;
  sub_10002C7C4(v44, v64, &qword_100118C10, &qword_1000D6D70);
  *(v45 + *(v66 + 44)) = 0;
  static Color.black.getter();
  v46 = Color.opacity(_:)();

  LOBYTE(v36) = static Edge.Set.all.getter();
  v47 = v65;
  sub_10002C7C4(v45, v65, &qword_100118C18, &qword_1000D6D78);
  v48 = v47 + *(v67 + 36);
  *v48 = v46;
  *(v48 + 8) = v36;
  v49 = v73;
  sub_1000A7438(v34, v73, type metadata accessor for CountdownPlatter);
  v50 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v51 = swift_allocObject();
  sub_1000A73D0(v49, v51 + v50, type metadata accessor for CountdownPlatter);
  sub_1000A7A04();
  v52 = v68;
  View.onTapGesture(count:perform:)();

  sub_10002D02C(v47, &qword_100118C20, &qword_1000D6D80);
  v53 = v69;
  sub_1000A7438(v29, v69, type metadata accessor for AlarmKitPlatterControls);
  v54 = v70;
  v55 = v71;
  v56 = *(v71 + 16);
  v57 = v72;
  v56(v70, v52, v72);
  v58 = v76;
  sub_1000A7438(v53, v76, type metadata accessor for AlarmKitPlatterControls);
  v59 = sub_1000032D4(&qword_100118C68, &unk_1000D6DB8);
  v56((v58 + *(v59 + 48)), v54, v57);
  v60 = *(v55 + 8);
  v60(v52, v57);
  sub_1000A74A0(v29, type metadata accessor for AlarmKitPlatterControls);
  v60(v54, v57);
  return sub_1000A74A0(v53, type metadata accessor for AlarmKitPlatterControls);
}

uint64_t sub_10009CD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for AlarmKitCountdownView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  v9 = type metadata accessor for AlarmKitCountdownLabelView(0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v29 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v16 = *(v15 - 8);
  v27[0] = *(v16 + 16);
  v27[1] = v16 + 16;
  (v27[0])(v14, a1, v15);
  v28 = type metadata accessor for CountdownPlatter(0);
  v17 = *(v28 + 20);
  v18 = *(v10 + 28);
  v19 = type metadata accessor for AlarmPresentationState();
  v20 = *(*(v19 - 8) + 16);
  v20(&v14[v18], a1 + v17, v19);
  (v27[0])(&v8[v4[7]], a1, v15);
  v20(&v8[v4[8]], a1 + v17, v19);
  v21 = *(a1 + *(v28 + 32));
  *v8 = sub_1000A9C68;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v8[v4[9]] = v21;
  v22 = v29;
  sub_1000A7438(v14, v29, type metadata accessor for AlarmKitCountdownLabelView);
  v23 = v30;
  sub_1000A7438(v8, v30, type metadata accessor for AlarmKitCountdownView);
  v24 = v31;
  sub_1000A7438(v22, v31, type metadata accessor for AlarmKitCountdownLabelView);
  v25 = sub_1000032D4(&qword_100118C70, &qword_1000D6DC8);
  sub_1000A7438(v23, v24 + *(v25 + 48), type metadata accessor for AlarmKitCountdownView);
  sub_1000A74A0(v8, type metadata accessor for AlarmKitCountdownView);
  sub_1000A74A0(v14, type metadata accessor for AlarmKitCountdownLabelView);
  sub_1000A74A0(v23, type metadata accessor for AlarmKitCountdownView);
  return sub_1000A74A0(v22, type metadata accessor for AlarmKitCountdownLabelView);
}

uint64_t sub_10009D04C()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v6 = type metadata accessor for MTAlarmCustomContent();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = &unk_100118100;
    v9 = &qword_1000D1250;
    v10 = v5;
  }

  else
  {
    v11 = MTAlarmCustomContent.type.getter();
    if (v11 == 1)
    {
      v13 = 4;
    }

    else
    {
      if (v11)
      {
        return (*(v7 + 8))(v5, v6);
      }

      v12 = MTAlarmCustomContent.isSleepAlarm.getter();
      if (v12 == 2 || (v12 & 1) == 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    (*(v7 + 8))(v5, v6);
    v15 = [objc_opt_self() mtURLForSection:v13];
    if (v15)
    {
      v16 = v15;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v2, v17, 1, v18);
    type metadata accessor for MTSUtilities();
    dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
    v8 = &unk_100119A20;
    v9 = &qword_1000D1DC0;
    v10 = v2;
  }

  return sub_10002D02C(v10, v8, v9);
}

uint64_t sub_10009D2F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10009D364()
{
  v1 = OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate__resizeDelegate;
  v2 = sub_1000032D4(&qword_100118670, &qword_1000D63E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10009D448(uint64_t a1)
{
  sub_10009D4EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10009D4EC(uint64_t a1)
{
  if (!qword_1001183C0)
  {
    sub_10001C820(&qword_100114130, &qword_1000D1418);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1001183C0);
    }
  }
}

__n128 sub_10009D57C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009D5D8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_10009D62C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009D688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009D6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10009D728(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10009D78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009D860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10009D93C(uint64_t a1)
{
  sub_1000A8738(319, &qword_100114E80, &type metadata accessor for StateObject);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10009DA00()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
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

uint64_t sub_10009DB48@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100117870, &qword_1000D5390);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TimelineCountdownView(0);
  sub_10002CFC4(v1 + *(v10 + 20), v9, &qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10009DD50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnvironmentDelegate(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10009DD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = sub_1000032D4(&qword_100118FB0, &unk_1000D7050);
  __chkstk_darwin(v57);
  v6 = &v41 - v5;
  v50 = type metadata accessor for _ContentTransitionModifier();
  __chkstk_darwin(v50);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContentTransition();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000032D4(&qword_100118FA0, &unk_1000D7030);
  v11 = __chkstk_darwin(v55);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v41 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v59 = a1;
  TimelineView.Context.date.getter();
  sub_10009E344(v18);
  v20 = v19;
  v22 = v21;
  v23 = *(v16 + 8);
  v56 = v15;
  v52 = v16 + 8;
  v23(v18, v15);
  v24 = *(a2 + *(type metadata accessor for TimelineCountdownView(0) + 36));
  if (v24)
  {
    v53 = v23;
    if (*(v24 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize))
    {
      v45 = v20;
      v60 = v20;
      v61 = v22;
      sub_100025FB4();

      v25 = Text.init<A>(_:)();
      v42 = v26;
      v43 = v25;
      v28 = v27;
      v44 = v29;
      v30 = v47;
      static ContentTransition.numericText(countsDown:)();
      v31 = static Animation.easeInOut(duration:)();
      v46 = a2;
      v32 = v31;
      v33 = static ContentTransition.Options.animatesDifferentContent.getter();
      (*(v48 + 32))(v8, v30, v49);
      v34 = v50;
      *&v8[*(v50 + 20)] = v32;
      *&v8[*(v34 + 24)] = v33;
      sub_1000A7438(v8, &v13[*(v55 + 36)], &type metadata accessor for _ContentTransitionModifier);
      v35 = v42;
      *v13 = v43;
      *(v13 + 1) = v35;
      v13[16] = v28 & 1;
      *(v13 + 3) = v44;
      *(v13 + 16) = 256;
      sub_1000A74A0(v8, &type metadata accessor for _ContentTransitionModifier);
      v36 = v51;
      sub_10002C7C4(v13, v51, &qword_100118FA0, &unk_1000D7030);
      sub_10002CFC4(v36, v6, &qword_100118FA0, &unk_1000D7030);
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000A984C();
      sub_100086F90();
      v20 = v45;
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v36, &qword_100118FA0, &unk_1000D7030);
    }

    else
    {
      v60 = v20;
      v61 = v22;
      sub_100025FB4();

      *v6 = Text.init<A>(_:)();
      *(v6 + 1) = v37;
      v6[16] = v38 & 1;
      *(v6 + 3) = v39;
      *(v6 + 16) = 256;
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000A984C();
      sub_100086F90();
      _ConditionalContent<>.init(storage:)();
    }

    sub_10009E4D8(v20, v22);

    TimelineView.Context.date.getter();
    sub_10009E7FC(v18);
    return v53(v18, v56);
  }

  else
  {
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10009E344(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TimelineCountdownView(0);
  sub_10009DB48(v5);
  v7 = sub_10009DA00();
  v8 = *(v1 + *(v6 + 28));
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v12.i64[0] = v10;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  v19 = v8;
  isa = v11.super.isa;
  if (v7)
  {
    v21 = sub_100002848(0, 0, 1, 1, 0, 0, v8, v11.super.isa, v12);

    if (v21)
    {
LABEL_5:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v5, v2);
      return;
    }

    __break(1u);
  }

  v21 = sub_1000022A8(v13, v14, v15, v16, v17, v18, v19, isa, v12);

  if (v21)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10009E4D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TimelineCountdownView(0);
  v6 = *(v2 + *(v5 + 36));
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue + 8);
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v8 = *(v6 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue) & 0xFFFFFFFFFFFFLL;
    }

    if (v8 && *(v6 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) == 1)
    {
      v9 = v5;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v22)
      {
        ObjectType = swift_getObjectType();
        v11 = [objc_opt_self() systemFontOfSize:*(v2 + *(v9 + 32))];
        sub_1000032D4(&qword_100118FB8, &qword_1000D7060);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000D08B0;
        *(inited + 32) = NSFontAttributeName;
        *(inited + 40) = v11;
        v13 = NSFontAttributeName;
        v14 = v11;
        v15 = sub_10006B074(inited);
        swift_setDeallocating();
        sub_10002D02C(inited + 32, &qword_100118FC0, &qword_1000D7068);
        v16 = String._bridgeToObjectiveC()();
        sub_100099BFC(v15);

        type metadata accessor for Key(0);
        sub_1000A4894(&qword_100113900, type metadata accessor for Key, &unk_1000D0800);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v16 sizeWithAttributes:isa];
        v19 = v18;

        (*(v23 + 8))(ObjectType, v23, v19);
        swift_unknownObjectRelease();
      }
    }

    v20 = (v6 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
    *v20 = a1;
    v20[1] = a2;
  }

  else
  {
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10009E7FC(uint64_t a1)
{
  v57 = a1;
  v56 = type metadata accessor for Calendar.Component();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v58 = type metadata accessor for Date();
  v9 = *(v58 - 8);
  v10 = __chkstk_darwin(v58);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for TimelineCountdownView(0);
  v16 = *(v1 + *(v15 + 36));
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v15;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v52 = v16;

  if (!v60)
  {
    return;
  }

  v47 = v12;
  v54 = v14;
  swift_unknownObjectRelease();
  sub_10009E344(v57);
  v46 = v18;
  v53 = v19;
  v20 = *(v17 + 40);
  v21 = v59;
  v22 = *(v59 + 104);
  v51 = enum case for Calendar.Component.second(_:);
  v23 = v56;
  v50 = v22;
  v22(v3);
  v24 = *(v1 + *(v17 + 44));
  v48 = v20;
  v49 = v1;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v25 = *(v21 + 8);
  v59 = v21 + 8;
  v25(v3, v23);
  v26 = *(v9 + 48);
  v27 = v58;
  if (v26(v8, 1, v58) == 1)
  {

    sub_10002D02C(v8, &qword_100115E40, &unk_1000D1280);
    return;
  }

  v45 = v9;
  v44 = *(v9 + 32);
  v44(v54, v8, v27);
  v50(v3, v51, v23);
  if (__OFSUB__(0, v24))
  {
    __break(1u);
LABEL_17:
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v28 = v26;
  v29 = v55;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v30 = v58;
  v25(v3, v23);
  if (v28(v29, 1, v30) == 1)
  {
    (*(v45 + 8))(v54, v30);

    sub_10002D02C(v29, &qword_100115E40, &unk_1000D1280);
    return;
  }

  v31 = v47;
  v44(v47, v29, v30);
  v32 = v54;
  sub_10009E344(v54);
  sub_10009E344(v31);
  v33 = v52;

  v34 = String.count.getter();
  v35 = String.count.getter();

  if (v34 != v35)
  {

    v39 = v45;
LABEL_13:
    v42 = *(v39 + 8);

    v43 = v58;
    v42(v31, v58);
    v42(v32, v43);
    *(v33 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 1;
    goto LABEL_14;
  }

  v36 = String.count.getter();

  v37 = String.count.getter();

  v38 = v36 == v37;
  v39 = v45;
  if (!v38)
  {
    goto LABEL_13;
  }

  v40 = *(v45 + 8);

  v41 = v58;
  v40(v31, v58);
  v40(v32, v41);
  *(v33 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
LABEL_14:
}

uint64_t sub_10009EE04(uint64_t a1)
{
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimersTimelineSchedule(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  v13 = *(v2 + 32);
  v14 = *(v10 + 20);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v12[v14], v1 + v13, v15);
  *v12 = 0x3FA999999999999ALL;
  sub_1000A7438(v1, v5, type metadata accessor for TimelineCountdownView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_1000A73D0(v5, v17 + v16, type metadata accessor for TimelineCountdownView);
  sub_1000A7438(v12, v9, type metadata accessor for TimersTimelineSchedule);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000A9700;
  *(v18 + 24) = v17;
  sub_1000032D4(&qword_100118F80, &qword_1000D7028);
  sub_1000A4894(&qword_100118F88, type metadata accessor for TimersTimelineSchedule, &unk_1000D5C00);
  sub_1000A97C0();
  TimelineView<>.init(_:content:)();
  return sub_1000A74A0(v12, type metadata accessor for TimersTimelineSchedule);
}

uint64_t sub_10009F0CC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_1000032D4(&qword_100118A90, &qword_1000D6BB8);
  __chkstk_darwin(v36);
  v3 = &v32 - v2;
  v4 = type metadata accessor for ContentTransition();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000032D4(&qword_100118A98, &qword_1000D6BC0);
  v7 = __chkstk_darwin(v35);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000032D4(&qword_100118AA0, &qword_1000D6BC8);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_1000032D4(&qword_100118AA8, &qword_1000D6BD0);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  v21 = type metadata accessor for RunningCountdownView(0);
  if (*(v1 + *(v21 + 36)) == 1)
  {
    sub_10009F508(0, v11);
    static ContentTransition.numericText(countsDown:)();
    v22 = static Animation.easeInOut(duration:)();
    v23 = static ContentTransition.Options.animatesDifferentContent.getter();
    v24 = &v14[*(v12 + 36)];
    (*(v33 + 32))(v24, v6, v34);
    v25 = type metadata accessor for _ContentTransitionModifier();
    *&v24[*(v25 + 20)] = v22;
    *&v24[*(v25 + 24)] = v23;
    sub_10002C7C4(v11, v14, &qword_100118A98, &qword_1000D6BC0);
    KeyPath = swift_getKeyPath();
    v27 = &v18[*(v15 + 36)];
    sub_1000032D4(&qword_100118B28, &qword_1000D6C00);
    static ContentTransition.Style.sessionWidget.getter();
    *v27 = KeyPath;
    sub_10002C7C4(v14, v18, &qword_100118AA0, &qword_1000D6BC8);
    v28 = &qword_100118AA8;
    v29 = &qword_1000D6BD0;
    sub_10002C7C4(v18, v20, &qword_100118AA8, &qword_1000D6BD0);
    sub_10002CFC4(v20, v3, &qword_100118AA8, &qword_1000D6BD0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6C5C();
    sub_1000A6DA0();
    _ConditionalContent<>.init(storage:)();
    v30 = v20;
  }

  else
  {
    sub_10009F508(*(v1 + *(v21 + 20)), v9);
    v28 = &qword_100118A98;
    v29 = &qword_1000D6BC0;
    sub_10002CFC4(v9, v3, &qword_100118A98, &qword_1000D6BC0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6C5C();
    sub_1000A6DA0();
    _ConditionalContent<>.init(storage:)();
    v30 = v9;
  }

  return sub_10002D02C(v30, v28, v29);
}

uint64_t sub_10009F508@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100118AE0, &qword_1000D6BE0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v38 = sub_1000032D4(&qword_100118AD0, &qword_1000D6BD8);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  v13 = type metadata accessor for TimelineCountdownView(0);
  v14 = v13[6];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v10[v14], v2, v15);
  v36 = type metadata accessor for RunningCountdownView(0);
  v16 = *(v2 + *(v36 + 24));
  KeyPath = swift_getKeyPath();
  *&v10[v13[5]] = swift_getKeyPath();
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
  v18 = EnvironmentObject.init()();
  *v10 = KeyPath;
  v10[8] = 0;
  v19 = v37;
  v10[v13[7]] = v37;
  *&v10[v13[8]] = v16;
  v20 = &v10[v13[9]];
  *v20 = v18;
  v20[1] = v21;
  static Calendar.current.getter();
  *&v10[v13[11]] = 1;
  sub_10009F98C();
  Font.monospacedDigit()();

  (*(v4 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v3);
  v22 = Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v6, v3);
  v23 = swift_getKeyPath();
  v24 = &v10[*(sub_1000032D4(&qword_100118B10, &qword_1000D6BF8) + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = *(v2 + *(v36 + 32));
  v26 = swift_getKeyPath();
  v27 = &v10[*(sub_1000032D4(&qword_100118B00, &qword_1000D6BF0) + 36)];
  *v27 = v26;
  v27[1] = v25;
  v28 = swift_getKeyPath();
  v29 = &v10[*(sub_1000032D4(&qword_100118AF0, &qword_1000D6BE8) + 36)];
  *v29 = v28;
  v29[8] = 1;
  v30 = swift_getKeyPath();
  v31 = &v10[*(v8 + 44)];
  *v31 = v30;
  *(v31 + 1) = 1;
  v31[16] = 0;
  if (v19)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.4;
  }

  v33 = swift_getKeyPath();
  sub_10002C7C4(v10, v12, &qword_100118AE0, &qword_1000D6BE0);
  v34 = &v12[*(v38 + 36)];
  *v34 = v33;
  *(v34 + 1) = v32;
  sub_1000A6E5C();

  View.accessibilityIdentifier(_:)();
  return sub_10002D02C(v12, &qword_100118AD0, &qword_1000D6BD8);
}

uint64_t sub_10009F98C()
{
  v1 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for RunningCountdownView(0);
  if (*(v0 + *(v4 + 40)) == 1)
  {
    static Font.Weight.semibold.getter();
    static Font.Weight.== infix(_:_:)();
    v8 = String._bridgeToObjectiveC()();
    CTFontCreateWithNameAndOptions(v8, *(v0 + *(v4 + 24)), 0, 0x20000uLL);

    return Font.init(_:)();
  }

  else
  {
    v5 = type metadata accessor for Font.Design();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = static Font.system(size:weight:design:)();
    sub_10002D02C(v3, &qword_100113E08, &qword_1000D10F0);
    return v6;
  }
}

uint64_t sub_10009FB48@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for Font._StylisticAlternative();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = v1[1];
  *&v37[0] = *v1;
  *(&v37[0] + 1) = v9;
  sub_100025FB4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v3 + 104))(v5, enum case for Font._StylisticAlternative.three(_:), v2);
  Font._stylisticAlternative(_:)();

  (*(v3 + 8))(v5, v2);
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v5) = v19;

  sub_100025B0C(v10, v12, v14 & 1);

  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  sub_100025B0C(v16, v18, v5 & 1);

  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  LOBYTE(v37[0]) = v10 & 1;
  LOBYTE(v31) = 0;
  v28 = swift_getKeyPath();
  *&v31 = v20;
  *(&v31 + 1) = v22;
  LOBYTE(v32) = v10 & 1;
  *(&v32 + 1) = v25;
  *&v33 = KeyPath;
  BYTE8(v33) = 1;
  *&v34 = v27;
  *(&v34 + 1) = 1;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = v28;
  v36 = 0x3FD999999999999ALL;
  sub_1000032D4(&qword_100118A60, &qword_1000D6B98);
  sub_1000A6A34();
  View.accessibilityIdentifier(_:)();
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = v35;
  v38 = v36;
  v37[0] = v31;
  v37[1] = v32;
  return sub_10002D02C(v37, &qword_100118A60, &qword_1000D6B98);
}

double sub_10009FF44@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayTitle];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v16 = v4;
  *(&v16 + 1) = v6;
  sub_100025FB4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (qword_100113698 != -1)
  {
    swift_once();
  }

  v14 = qword_10011F6D0;

  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 120) = v21;
  *(a2 + 136) = v22;
  result = *&v16;
  *(a2 + 40) = v16;
  *(a2 + 56) = v17;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_1000A00A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v27[6] = v28;
  *&v27[22] = v29;
  *&v27[38] = v30;
  v6 = v5 * 0.5;
  v7 = (a2 + *(sub_1000032D4(&qword_100118A18, &qword_1000D6A80) + 36));
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = v6;
  v7[1] = v6;
  *(v7 + *(sub_1000032D4(&qword_100118A38, &qword_1000D6A98) + 36)) = 256;
  *a2 = v4;
  *(a2 + 8) = 256;
  v11 = *&v27[16];
  *(a2 + 10) = *v27;
  *(a2 + 26) = v11;
  *(a2 + 42) = *&v27[32];
  *(a2 + 56) = *&v27[46];

  v12 = static Alignment.center.getter();
  v14 = v13;

  v15 = Image.init(systemName:)();
  v16 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v18 = *(a1 + 48);
  v19 = swift_getKeyPath();
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  *&v31 = v15;
  *(&v31 + 1) = KeyPath;
  *&v32 = v16;
  *(&v32 + 1) = v19;
  *&v33 = v18;
  *(&v33 + 1) = v20;
  *&v34 = v21;
  *(&v34 + 1) = v12;
  v35 = v14;
  v22 = a2 + *(sub_1000032D4(&qword_100118A00, &qword_1000D6A78) + 36);
  v23 = v34;
  *(v22 + 32) = v33;
  *(v22 + 48) = v23;
  *(v22 + 64) = v35;
  v24 = v32;
  *v22 = v31;
  *(v22 + 16) = v24;
  v36[0] = v15;
  v36[1] = KeyPath;
  v36[2] = v16;
  v36[3] = v19;
  v36[4] = v18;
  v36[5] = v20;
  v36[6] = v21;
  v36[7] = v12;
  v36[8] = v14;

  sub_10002CFC4(&v31, &v26, &qword_100118A48, &qword_1000D6AA0);
  return sub_10002D02C(v36, &qword_100118A48, &qword_1000D6AA0);
}

uint64_t sub_1000A02FC()
{
  v1 = sub_1000032D4(&qword_1001189F8, &qword_1000D6A70);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = *(v0 + 64);
  v11[3] = *(v0 + 48);
  v12 = v5;
  v6 = *(v0 + 32);
  v11[1] = *(v0 + 16);
  v11[2] = v6;
  v13 = *(v0 + 80);
  v11[0] = *v0;
  v9 = v11;

  sub_1000032D4(&qword_100118A00, &qword_1000D6A78);
  sub_1000A6740();
  Button.init(action:label:)();
  v10 = v12;
  sub_10002DAD8(&qword_100118A50, &qword_1001189F8, &qword_1000D6A70, &protocol conformance descriptor for Button<A>);
  sub_1000A6968();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000A04C0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MediumActionButton(0) + 24);
  v5 = type metadata accessor for Material();
  (*(*(v5 - 8) + 16))(a2, &a1[v4], v5);
  *(a2 + *(sub_1000032D4(&qword_100119000, &qword_1000D7090) + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_1000032D4(&qword_100118FF0, &qword_1000D7088) + 36));
  *v6 = v13;
  v6[1] = v14;
  v6[2] = v15;
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (a2 + *(sub_1000032D4(&qword_100118FD8, &qword_1000D7080) + 36));
  sub_1000A0608(a1, v10);
  result = sub_1000032D4(&qword_100119010, &qword_1000D7098);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  return result;
}

uint64_t sub_1000A0608@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{

  v4 = Image.init(systemName:)();
  if (qword_1001136F0 != -1)
  {
    swift_once();
  }

  v5 = qword_10011F728;
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + 2);
  v8 = swift_getKeyPath();
  sub_1000032D4(&qword_100119020, &qword_1000D70A0);
  v9 = type metadata accessor for MediumActionButton(0);

  View._colorMatrix(_:)();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v5;
  a2[3] = v8;
  a2[4] = v7;
  v10 = *(v9 + 32);
  v11 = *(sub_1000032D4(&qword_100119028, &qword_1000D70A8) + 36);
  v12 = type metadata accessor for BlendMode();
  v13 = *(*(v12 - 8) + 16);

  return v13(a2 + v11, &a1[v10], v12);
}

uint64_t sub_1000A07AC(uint64_t a1)
{
  v3 = sub_1000032D4(&qword_100118FD0, &qword_1000D7078);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = v1;

  sub_1000032D4(&qword_100118FD8, &qword_1000D7080);
  sub_1000A98F0();
  Button.init(action:label:)();
  v10 = *(v1 + *(a1 + 36));
  sub_10002DAD8(&qword_100119018, &qword_100118FD0, &qword_1000D7078, &protocol conformance descriptor for Button<A>);
  sub_1000A6968();
  View.buttonStyle<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000A095C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v52 = type metadata accessor for Capsule();
  __chkstk_darwin(v52);
  v51 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Glass();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v40 - v6;
  v44 = type metadata accessor for BorderedProminentButtonStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000032D4(&qword_100118B60, &qword_1000D6CD0);
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v40 - v9;
  v11 = sub_1000032D4(&qword_100118B68, &qword_1000D6CD8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v54 = sub_1000032D4(&qword_100118B70, &qword_1000D6CE0);
  __chkstk_darwin(v54);
  v16 = &v40 - v15;
  v43 = sub_1000032D4(&qword_100118B78, &qword_1000D6CE8);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v55 = &v40 - v17;
  v18 = type metadata accessor for LargeActionButton(0);
  v56 = v1;

  sub_1000032D4(&qword_100118B80, &unk_1000D6CF0);
  sub_1000A7508();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v8 + 32))(v14, v10, v41);
  v19 = &v14[*(v12 + 44)];
  v20 = v62;
  *v19 = v61;
  *(v19 + 1) = v20;
  *(v19 + 2) = v63;
  v21 = *(v1 + *(v18 + 24));
  KeyPath = swift_getKeyPath();
  v57 = v21;

  v23 = AnyShapeStyle.init<A>(_:)();
  sub_10002C7C4(v14, v16, &qword_100118B68, &qword_1000D6CD8);
  v24 = &v16[*(v54 + 36)];
  *v24 = KeyPath;
  v24[1] = v23;
  v25 = v42;
  BorderedProminentButtonStyle.init()();
  v26 = sub_1000A7644();
  v27 = sub_1000A4894(&qword_100118BC8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v28 = v44;
  View.buttonStyle<A>(_:)();
  v29 = v28;
  (*(v45 + 8))(v25, v28);
  sub_10002D02C(v16, &qword_100118B70, &qword_1000D6CE0);
  v30 = v48;
  static Glass.regular.getter();
  v31 = v47;
  Glass.flexible(_:)();
  v32 = v50;
  v33 = *(v49 + 8);
  v33(v30, v50);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  v36 = v51;
  (*(*(v35 - 8) + 104))(v51, v34, v35);
  v57 = v54;
  v58 = v29;
  v59 = v26;
  v60 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1000A4894(&qword_100115720, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  v37 = v43;
  v38 = v55;
  View.glassEffect<A>(_:in:)();
  sub_1000A74A0(v36, &type metadata accessor for Capsule);
  v33(v31, v32);
  return (*(v46 + 8))(v38, v37);
}

uint64_t sub_1000A1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(a2, v8, v9);
  v10 = static Color.clear.getter();
  v11 = sub_1000032D4(&qword_100115760, &qword_1000D2CA0);
  *(a2 + *(v11 + 52)) = v10;
  v12 = *(v11 + 56);
  v42 = a2;
  *(a2 + v12) = 256;
  v13 = static Alignment.center.getter();
  v39 = v14;
  v40 = v13;
  (*(v5 + 16))(v7, a1, v4);
  v15 = Text.init(_:)();
  v17 = v16;
  v19 = v18;
  v20 = type metadata accessor for LargeActionButton(0);
  v21 = *(v20 + 28);
  v41 = a1;
  if (*(a1 + v21) == 1)
  {
    if (qword_1001136A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1001136C8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_100025B0C(v15, v17, v19 & 1);

  v43 = *(v41 + *(v20 + 20));

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100025B0C(v22, v24, v26 & 1);

  result = sub_1000032D4(&qword_100118B80, &unk_1000D6CF0);
  v35 = v42 + *(result + 36);
  *v35 = v27;
  *(v35 + 8) = v29;
  *(v35 + 16) = v31 & 1;
  v36 = v39;
  v37 = v40;
  *(v35 + 24) = v33;
  *(v35 + 32) = v37;
  *(v35 + 40) = v36;
  return result;
}

uint64_t sub_1000A1350@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v38 = a2;
  v35 = sub_1000032D4(&qword_100118F30, &qword_1000D7000);
  __chkstk_darwin(v35);
  v36 = &v32[-v2];
  v37 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v37 - 8);
  v4 = __chkstk_darwin(v37);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v32[-v7];
  v9 = sub_1000032D4(&qword_100118F38, &qword_1000D7008);
  __chkstk_darwin(v9);
  v11 = &v32[-v10];
  v12 = sub_1000032D4(&qword_100118F40, &qword_1000D7010);
  __chkstk_darwin(v12);
  v14 = &v32[-v13];
  v34 = sub_1000032D4(&qword_100118F48, &qword_1000D7018);
  v15 = __chkstk_darwin(v34);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v32[-v18];
  if (v33)
  {
    ButtonStyleConfiguration.label.getter();
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v20 = 0.65;
    }

    else
    {
      v20 = 1.0;
    }

    (*(v3 + 32))(v11, v8, v37);
    *&v11[*(v9 + 36)] = v20;
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v21 = 0.9;
    }

    else
    {
      v21 = 1.0;
    }

    static UnitPoint.center.getter();
    v23 = v22;
    v25 = v24;
    sub_10002C7C4(v11, v14, &qword_100118F38, &qword_1000D7008);
    v26 = &v14[*(v12 + 36)];
    *v26 = v21;
    v26[1] = v21;
    *(v26 + 2) = v23;
    *(v26 + 3) = v25;
    ButtonStyleConfiguration.isPressed.getter();
    ButtonStyleConfiguration.isPressed.getter();
    v27 = static Animation.spring(response:dampingFraction:blendDuration:)();
    v28 = ButtonStyleConfiguration.isPressed.getter();
    sub_10002C7C4(v14, v17, &qword_100118F40, &qword_1000D7010);
    v29 = &v17[*(v34 + 36)];
    *v29 = v27;
    v29[8] = v28 & 1;
    sub_10002C7C4(v17, v19, &qword_100118F48, &qword_1000D7018);
    sub_10002CFC4(v19, v36, &qword_100118F48, &qword_1000D7018);
    swift_storeEnumTagMultiPayload();
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v19, &qword_100118F48, &qword_1000D7018);
  }

  else
  {
    ButtonStyleConfiguration.label.getter();
    v31 = v37;
    (*(v3 + 16))(v36, v6, v37);
    swift_storeEnumTagMultiPayload();
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    _ConditionalContent<>.init(storage:)();
    return (*(v3 + 8))(v6, v31);
  }
}

void sub_1000A1848(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;

  v8 = Image.init(_internalSystemName:)();
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

  v11 = static Font.system(size:weight:design:)();
  sub_10002D02C(v7, &qword_100113E08, &qword_1000D10F0);
  v12 = swift_getKeyPath();
  v13[1] = v8;
  v13[2] = KeyPath;
  v13[3] = a3;
  v13[4] = v12;
  v13[5] = v11;
  sub_1000032D4(&qword_100118D28, &qword_1000D6E58);
  sub_1000A801C();
  View.accessibilityHidden(_:)();
}

void sub_1000A1A04(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 2);
  v7 = v2[3];
  *a2 = static Alignment.center.getter();
  a2[1] = v8;
  sub_1000032D4(&qword_100118D20, &qword_1000D6E50);
  sub_1000A1848(v4, v5, v7, v6);
}

uint64_t sub_1000A1A78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentDelegate(0);
  v2 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v3 = (v2 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return v2;
}

uint64_t sub_1000A1B68()
{
  v1 = sub_1000032D4(&qword_100113FD8, &qword_1000D63D0);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(v3, v0 + v5, v6);
  if (qword_100113668 != -1)
  {
    swift_once();
  }

  v7 = qword_10011F6A0;
  v8 = *(v0 + *(v4 + 24));
  v9 = type metadata accessor for RunningCountdownView(0);
  v3[v9[5]] = 1;
  *&v3[v9[6]] = 0x402F000000000000;
  *&v3[v9[7]] = v7;
  *&v3[v9[8]] = v8;
  v3[v9[9]] = 0;
  v3[v9[10]] = 0;
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);

  v10 = StateObject.wrappedValue.getter();
  v11 = static ObservableObject.environmentStore.getter();
  v12 = &v3[*(v1 + 36)];
  *v12 = v11;
  v12[1] = v10;
  sub_1000A4F08();
  View.accessibilityHidden(_:)();
  return sub_10002D02C(v3, &qword_100113FD8, &qword_1000D63D0);
}

uint64_t sub_1000A1DB4()
{
  sub_10008C790(*(v0 + 8), *(v0 + 16), *v0);
  if (qword_100113668 != -1)
  {
    swift_once();
  }

  sub_1000A4D0C();

  View.accessibilityHidden(_:)();
}

uint64_t sub_1000A1EB0()
{
  v1 = sub_1000032D4(&qword_100118570, &qword_1000D62D0);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_1000032D4(&qword_100118578, &qword_1000D62D8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_1000032D4(&qword_100118580, &qword_1000D62E0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = [*v0 isFiring];
  v11 = static VerticalAlignment.center.getter();
  if (v10)
  {
    *v9 = v11;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v12 = sub_1000032D4(&qword_1001185A0, &qword_1000D62F0);
    sub_1000A2C94(&v9[*(v12 + 44)]);
    sub_10002CFC4(v9, v6, &qword_100118580, &qword_1000D62E0);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    v13 = v9;
    v14 = &qword_100118580;
    v15 = &qword_1000D62E0;
  }

  else
  {
    *v3 = v11;
    *(v3 + 1) = 0;
    v3[16] = 0;
    v16 = sub_1000032D4(&qword_100118588, &qword_1000D62E8);
    sub_1000A21C8(v0, &v3[*(v16 + 44)]);
    sub_10002CFC4(v3, v6, &qword_100118570, &qword_1000D62D0);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    v13 = v3;
    v14 = &qword_100118570;
    v15 = &qword_1000D62D0;
  }

  return sub_10002D02C(v13, v14, v15);
}

uint64_t sub_1000A21C8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_1000032D4(&qword_1001185A8, &qword_1000D62F8);
  v3 = __chkstk_darwin(v29);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v28 = sub_1000032D4(&qword_1001185D0, &qword_1000D6330);
  __chkstk_darwin(v28);
  v8 = &v28 - v7;
  v9 = sub_1000032D4(&qword_1001185B0, &qword_1000D6300);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_1000032D4(&qword_1001185D8, &qword_1000D6338);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  if ([*a1 state] == 2)
  {
    sub_1000A256C(v11);
  }

  else
  {
    sub_1000A28E8(v11);
  }

  sub_10002CFC4(v11, v8, &qword_1001185B0, &qword_1000D6300);
  swift_storeEnumTagMultiPayload();
  sub_1000A4720();
  _ConditionalContent<>.init(storage:)();
  sub_10002D02C(v11, &qword_1001185B0, &qword_1000D6300);
  sub_1000A32E8(&unk_100103078, sub_1000A490C, 0x6C65636E6143, 0xE600000000000000, v6);
  v18 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v19 = &v6[*(v29 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_10002CFC4(v17, v15, &qword_1001185D8, &qword_1000D6338);
  v24 = v30;
  sub_10002CFC4(v6, v30, &qword_1001185A8, &qword_1000D62F8);
  v25 = v31;
  sub_10002CFC4(v15, v31, &qword_1001185D8, &qword_1000D6338);
  v26 = sub_1000032D4(&qword_1001185F8, &qword_1000D6340);
  sub_10002CFC4(v24, v25 + *(v26 + 48), &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v6, &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v17, &qword_1001185D8, &qword_1000D6338);
  sub_10002D02C(v24, &qword_1001185A8, &qword_1000D62F8);
  return sub_10002D02C(v15, &qword_1001185D8, &qword_1000D6338);
}

uint64_t sub_1000A256C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  static Font.Weight.medium.getter();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  sub_10002D02C(v6, &qword_100113E08, &qword_1000D10F0);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v14 = (*(v13 + 8))(v12, v13);
  v16 = *(v1 + 72);
  v15 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v17 = (*(v15 + 32))(v16, v15);
  sub_1000A4684(v2, &v30);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 48) = v32;
  *(v18 + 64) = v19;
  *(v18 + 80) = v34;
  *(v18 + 96) = v35;
  v20 = v31;
  *(v18 + 16) = v30;
  *(v18 + 32) = v20;
  *&v23 = 0x4049000000000000;
  *(&v23 + 1) = v11;
  *&v24 = 0x6C69662E79616C70;
  *(&v24 + 1) = 0xE90000000000006CLL;
  v25 = CGSizeZero;
  *&v26 = v14;
  *(&v26 + 1) = v17;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = *v29;
  DWORD1(v27) = *&v29[3];
  *(&v27 + 1) = sub_1000A48DC;
  v28 = v18;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v30 = v23;
  v31 = v24;
  sub_100025D8C(&v30);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v9, &qword_100114018, &qword_1000D12B0);
  v21 = (a1 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  sub_1000032D4(&qword_1001185C8, &unk_1000D6320);
  result = static ContentShapeKinds.accessibility.getter();
  *v21 = 0;
  return result;
}

uint64_t sub_1000A28E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  static Font.Weight.medium.getter();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  sub_10002D02C(v6, &qword_100113E08, &qword_1000D10F0);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v14 = (*(v13 + 8))(v12, v13);
  v16 = *(v1 + 72);
  v15 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v17 = (*(v15 + 32))(v16, v15);
  sub_1000A4684(v2, &v30);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 48) = v32;
  *(v18 + 64) = v19;
  *(v18 + 80) = v34;
  *(v18 + 96) = v35;
  v20 = v31;
  *(v18 + 16) = v30;
  *(v18 + 32) = v20;
  *&v23 = 0x4049000000000000;
  *(&v23 + 1) = v11;
  *&v24 = 0x69662E6573756170;
  *(&v24 + 1) = 0xEA00000000006C6CLL;
  v25 = CGSizeZero;
  *&v26 = v14;
  *(&v26 + 1) = v17;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = *v29;
  DWORD1(v27) = *&v29[3];
  *(&v27 + 1) = sub_1000A493C;
  v28 = v18;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v30 = v23;
  v31 = v24;
  sub_100025D8C(&v30);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v9, &qword_100114018, &qword_1000D12B0);
  v21 = (a1 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  sub_1000032D4(&qword_1001185C8, &unk_1000D6320);
  result = static ContentShapeKinds.accessibility.getter();
  *v21 = 0;
  return result;
}

uint64_t sub_1000A2C94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_1001185A8, &qword_1000D62F8);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_1000032D4(&qword_1001185B0, &qword_1000D6300);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  sub_1000A2EE4(&v23 - v13);
  sub_1000A32E8(&unk_100103000, sub_1000A46C0, 0x7373696D736944, 0xE700000000000000, v8);
  v15 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v16 = &v8[*(v3 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_10002CFC4(v14, v12, &qword_1001185B0, &qword_1000D6300);
  sub_10002CFC4(v8, v6, &qword_1001185A8, &qword_1000D62F8);
  sub_10002CFC4(v12, a1, &qword_1001185B0, &qword_1000D6300);
  v21 = sub_1000032D4(&qword_1001185B8, &qword_1000D6308);
  sub_10002CFC4(v6, a1 + *(v21 + 48), &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v8, &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v14, &qword_1001185B0, &qword_1000D6300);
  sub_10002D02C(v6, &qword_1001185A8, &qword_1000D62F8);
  return sub_10002D02C(v12, &qword_1001185B0, &qword_1000D6300);
}

uint64_t sub_1000A2EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  static Font.Weight.semibold.getter();
  v9 = enum case for Font.Design.rounded(_:);
  v10 = type metadata accessor for Font.Design();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v12 = static Font.system(size:weight:design:)();
  sub_10002D02C(v5, &qword_100113E08, &qword_1000D10F0);
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v15 = (*(v14 + 8))(v13, v14);
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v18 = (*(v17 + 32))(v16, v17);
  sub_1000A4684(v2, &v34);
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 48) = v36;
  *(v19 + 64) = v20;
  *(v19 + 80) = v38;
  *(v19 + 96) = v39;
  v21 = v35;
  *(v19 + 16) = v34;
  *(v19 + 32) = v21;
  *&v27 = 0x4049000000000000;
  *(&v27 + 1) = v12;
  *&v28 = 0x6C632E776F727261;
  *(&v28 + 1) = 0xEF657369776B636FLL;
  v29 = xmmword_1000D5DE0;
  *&v30 = v15;
  *(&v30 + 1) = v18;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = *v33;
  DWORD1(v31) = *&v33[3];
  *(&v31 + 1) = sub_1000A46F0;
  v32 = v19;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v34 = v27;
  v35 = v28;
  sub_100025D8C(&v34);
  v22 = v26;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v8, &qword_100114018, &qword_1000D12B0);
  v23 = (v22 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  sub_1000032D4(&qword_1001185C8, &unk_1000D6320);
  result = static ContentShapeKinds.accessibility.getter();
  *v23 = 0;
  return result;
}

uint64_t sub_1000A32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v6 = v5;
  v40 = a5;
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1000032D4(&qword_100114010, &qword_1000D6310);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  static Font.Weight.medium.getter();
  v16 = enum case for Font.Design.rounded(_:);
  v17 = type metadata accessor for Font.Design();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v9, v16, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  v19 = static Font.system(size:weight:design:)();
  sub_10002D02C(v9, &qword_100113E08, &qword_1000D10F0);
  v20 = v6[9];
  v21 = v6[10];
  sub_100025B1C(v6 + 6, v20);
  v22 = (*(v21 + 56))(v20, v21);
  v23 = v6[9];
  v24 = v6[10];
  sub_100025B1C(v6 + 6, v23);
  v25 = (*(v24 + 80))(v23, v24);
  sub_1000A4684(v6, v41);
  v26 = swift_allocObject();
  v27 = v41[3];
  *(v26 + 48) = v41[2];
  *(v26 + 64) = v27;
  *(v26 + 80) = v41[4];
  *(v26 + 96) = v42;
  v28 = v41[1];
  *(v26 + 16) = v41[0];
  *(v26 + 32) = v28;
  height = CGSizeZero.height;
  v30 = *(v10 + 36);
  v31 = enum case for BlendMode.plusLighter(_:);
  v32 = type metadata accessor for BlendMode();
  (*(*(v32 - 8) + 104))(&v12[v30], v31, v32);
  *v12 = 0x4049000000000000;
  *(v12 + 1) = v19;
  *(v12 + 2) = 0x6B72616D78;
  *(v12 + 3) = 0xE500000000000000;
  *(v12 + 4) = *&CGSizeZero.width;
  *(v12 + 5) = height;
  *(v12 + 6) = v22;
  *(v12 + 7) = v25;
  v12[64] = 1;
  *(v12 + 65) = v41[0];
  *(v12 + 17) = *(v41 + 3);
  *(v12 + 9) = v37;
  *(v12 + 10) = v26;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v12, &qword_100113FF0, &qword_1000D1298);
  v33 = v40;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v15, &qword_100114010, &qword_1000D6310);
  v34 = (v33 + *(sub_1000032D4(&qword_1001185C0, &qword_1000D6318) + 36));
  sub_1000032D4(&qword_1001185C8, &unk_1000D6320);
  result = static ContentShapeKinds.accessibility.getter();
  *v34 = 0;
  return result;
}

uint64_t sub_1000A3720(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  sub_100025B1C((a1 + 8), *(a1 + 32));
  v4 = [*a1 timerIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  a2(v5, v7);
}

uint64_t sub_1000A37BC()
{
  type metadata accessor for EnvironmentDelegate(0);
  v0 = swift_allocObject();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v1 = (v0 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  return v0;
}

uint64_t sub_1000A384C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100118618, &qword_1000D6360);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  if (*(a1 + 32))
  {
    v10 = [*(a1 + 24) displayTitle];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v25[0] = v11;
    v25[1] = v13;
    sub_100025FB4();
    v14 = Text.init<A>(_:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (qword_100113660 != -1)
    {
      swift_once();
    }

    v21 = qword_10011F698;
    v22 = v18 & 1;
    swift_retain_n();
    sub_100025AFC(v14, v16, v18 & 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
  }

  sub_1000A3AB0(a1, v9);
  sub_10002CFC4(v9, v7, &qword_100118618, &qword_1000D6360);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v21;
  v23 = sub_1000032D4(&qword_100118620, &qword_1000D6368);
  sub_10002CFC4(v7, a2 + *(v23 + 48), &qword_100118618, &qword_1000D6360);
  sub_1000A496C(v14, v16, v22, v20, v21);
  sub_1000A49BC(v14, v16, v22, v20, v21);
  sub_10002D02C(v9, &qword_100118618, &qword_1000D6360);
  sub_10002D02C(v7, &qword_100118618, &qword_1000D6360);
  return sub_1000A49BC(v14, v16, v22, v20, v21);
}

void sub_1000A3AB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for Locale();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for RunningCountdownView(0);
  v9 = __chkstk_darwin(v57);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v51 - v12;
  v59 = sub_1000032D4(&qword_100118628, &qword_1000D6370);
  __chkstk_darwin(v59);
  v14 = (&v51 - v13);
  v56 = sub_1000032D4(&qword_100118630, &qword_1000D6378);
  __chkstk_darwin(v56);
  v16 = (&v51 - v15);
  v58 = sub_1000032D4(&qword_100118638, &qword_1000D6380);
  __chkstk_darwin(v58);
  v18 = &v51 - v17;
  v19 = *(a1 + 24);
  if ([v19 state] == 2)
  {
    sub_10004F3B0();
    v21 = v20;
    v23 = v22;
    if (*(a1 + 32))
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v24 = &qword_10011F690;
      v25 = 0x4048000000000000;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v24 = &qword_10011F6B0;
      v25 = 0x4047800000000000;
    }

    v29 = v25;
    v30 = *v24;
    v31 = [objc_opt_self() mtOrange];
    v32 = Color.init(uiColor:)();
    *v16 = v21;
    v16[1] = v23;
    v16[2] = v29;
    v16[3] = v30;
    v16[4] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);

    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v18, v14, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v18, &qword_100118638, &qword_1000D6380);
  }

  else if ([v19 state] == 3)
  {
    sub_10004F058(v8);
    v26 = *(a1 + 32);
    if (v26)
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v27 = &qword_10011F690;
      v28 = 0x4048000000000000;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v27 = &qword_10011F6B0;
      v28 = 0x4047800000000000;
    }

    v41 = v28;
    v42 = *v27;
    v43 = [objc_opt_self() mtOrange];
    v44 = Color.init(uiColor:)();
    (*(v53 + 32))(v11, v8, v54);
    v45 = v57;
    v11[*(v57 + 20)] = 0;
    *&v11[v45[6]] = v41;
    *&v11[v45[7]] = v42;
    *&v11[v45[8]] = v44;
    v11[v45[9]] = (v26 & 1) == 0;
    v11[v45[10]] = 0;
    v46 = v55;
    sub_1000A73D0(v11, v55, type metadata accessor for RunningCountdownView);
    sub_1000A7438(v46, v16, type metadata accessor for RunningCountdownView);
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v18, v14, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v18, &qword_100118638, &qword_1000D6380);
    sub_1000A74A0(v46, type metadata accessor for RunningCountdownView);
  }

  else
  {
    static Locale.autoupdatingCurrent.getter();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v34 = (*(v52 + 8))(v5, v3);
    v34.i64[0] = 0;
    v35 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v34);

    if (v35)
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (*(a1 + 32))
      {
        if (qword_100113658 != -1)
        {
          swift_once();
        }

        v39 = &qword_10011F690;
        v40 = 0x4048000000000000;
      }

      else
      {
        if (qword_100113678 != -1)
        {
          swift_once();
        }

        v39 = &qword_10011F6B0;
        v40 = 0x4047800000000000;
      }

      v47 = v40;
      v48 = *v39;
      v49 = [objc_opt_self() mtOrange];
      v50 = Color.init(uiColor:)();
      *v14 = v36;
      v14[1] = v38;
      v14[2] = v47;
      v14[3] = v48;
      v14[4] = v50;
      swift_storeEnumTagMultiPayload();
      sub_1000A4C50();
      sub_1000A4D0C();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000A4328@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v4;
  v15 = *(v2 + 32);
  *a2 = static VerticalAlignment.firstTextBaseline.getter();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v5 = sub_1000032D4(&qword_100118600, &qword_1000D6348);
  sub_1000A384C(v14, (a2 + *(v5 + 44)));
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_1000032D4(&qword_100118608, &qword_1000D6350) + 36));
  *v6 = v11;
  v6[1] = v12;
  v6[2] = v13;
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
  v7 = StateObject.wrappedValue.getter();
  v8 = static ObservableObject.environmentStore.getter();
  result = sub_1000032D4(&qword_100118610, &qword_1000D6358);
  v10 = (a2 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_1000A4490@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = objc_opt_self();
  sub_100025AFC(v3, v4, v5);

  v9 = [v8 mtOrange];
  result = Color.init(uiColor:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  return result;
}

double sub_1000A459C@<D0>(uint64_t a1@<X8>)
{
  v3 = Text.font(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = *(v1 + 40);
  v15 = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = 0x3FEB333333333333;
  *(a1 + 72) = v15;
  *(a1 + 80) = v14;

  return result;
}

unint64_t sub_1000A4720()
{
  result = qword_1001185E0;
  if (!qword_1001185E0)
  {
    sub_10001C820(&qword_1001185B0, &qword_1000D6300);
    sub_1000A47D8();
    sub_10002DAD8(&qword_1001185F0, &qword_1001185C8, &unk_1000D6320, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185E0);
  }

  return result;
}

unint64_t sub_1000A47D8()
{
  result = qword_1001185E8;
  if (!qword_1001185E8)
  {
    sub_10001C820(&qword_100114018, &qword_1000D12B0);
    sub_100025C54();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185E8);
  }

  return result;
}

uint64_t sub_1000A4894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000A496C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100025AFC(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A49BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100025B0C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_1000A4B4C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000A4BCC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return static Published.subscript.setter();
}

unint64_t sub_1000A4C50()
{
  result = qword_100118640;
  if (!qword_100118640)
  {
    sub_10001C820(&qword_100118638, &qword_1000D6380);
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118640);
  }

  return result;
}

unint64_t sub_1000A4D0C()
{
  result = qword_100118648;
  if (!qword_100118648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118648);
  }

  return result;
}

uint64_t sub_1000A4D60(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_1000032D4(&qword_100118FA8, &qword_1000D7048);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A4EA8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A4F08()
{
  result = qword_100118658;
  if (!qword_100118658)
  {
    sub_10001C820(&qword_100113FD8, &qword_1000D63D0);
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView, &unk_1000D6980);
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118658);
  }

  return result;
}

uint64_t sub_1000A5014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A5144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000A527C(uint64_t a1)
{
  sub_10001C78C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v2 <= 0x3F)
    {
      sub_1000A5330();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000A5330()
{
  result = qword_100113DC0;
  if (!qword_100113DC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100113DC0);
  }

  return result;
}

__n128 sub_1000A5394(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A53B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000A53F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000A5480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A54C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmPresentationState();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A5644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmPresentationState();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A5780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
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
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A58BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
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
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A5A08(uint64_t a1)
{
  sub_1000A8738(319, &qword_100114E80, &type metadata accessor for StateObject);
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AlarmPresentationState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000A5AC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000A5AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A5B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A5C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A5D38(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A5DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
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

uint64_t sub_1000A5EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
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

void sub_1000A5F94(uint64_t a1)
{
  type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    sub_100024508();
    if (v2 <= 0x3F)
    {
      sub_1000A868C(319, &qword_100113A70, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000A6060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000A60A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A6110()
{
  result = qword_100118988;
  if (!qword_100118988)
  {
    sub_10001C820(&qword_100118990, &qword_1000D66F8);
    sub_1000A619C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118988);
  }

  return result;
}

unint64_t sub_1000A619C()
{
  result = qword_100118998;
  if (!qword_100118998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118998);
  }

  return result;
}

unint64_t sub_1000A61F4()
{
  result = qword_1001189A0;
  if (!qword_1001189A0)
  {
    sub_10001C820(&qword_1001189A8, &qword_1000D6700);
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189A0);
  }

  return result;
}

unint64_t sub_1000A62D8()
{
  result = qword_1001189B0;
  if (!qword_1001189B0)
  {
    sub_10001C820(&qword_100118610, &qword_1000D6358);
    sub_1000A6390();
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B0);
  }

  return result;
}

unint64_t sub_1000A6390()
{
  result = qword_1001189B8;
  if (!qword_1001189B8)
  {
    sub_10001C820(&qword_100118608, &qword_1000D6350);
    sub_10002DAD8(&qword_1001189C0, &qword_1001189C8, &qword_1000D6708, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B8);
  }

  return result;
}

unint64_t sub_1000A644C()
{
  result = qword_1001189D0;
  if (!qword_1001189D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D0);
  }

  return result;
}

unint64_t sub_1000A64A4()
{
  result = qword_1001189D8;
  if (!qword_1001189D8)
  {
    sub_10001C820(&qword_1001189E0, &qword_1000D6710);
    sub_1000A4D0C();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D8);
  }

  return result;
}

unint64_t sub_1000A6564()
{
  result = qword_1001189E8;
  if (!qword_1001189E8)
  {
    sub_10001C820(&qword_1001189F0, &qword_1000D6718);
    sub_1000A4F08();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189E8);
  }

  return result;
}

unint64_t sub_1000A6740()
{
  result = qword_100118A08;
  if (!qword_100118A08)
  {
    sub_10001C820(&qword_100118A00, &qword_1000D6A78);
    sub_1000A67F8();
    sub_10002DAD8(&qword_100118A40, &qword_100118A48, &qword_1000D6AA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A08);
  }

  return result;
}

unint64_t sub_1000A67F8()
{
  result = qword_100118A10;
  if (!qword_100118A10)
  {
    sub_10001C820(&qword_100118A18, &qword_1000D6A80);
    sub_1000A68B0();
    sub_10002DAD8(&qword_100118A30, &qword_100118A38, &qword_1000D6A98, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A10);
  }

  return result;
}

unint64_t sub_1000A68B0()
{
  result = qword_100118A20;
  if (!qword_100118A20)
  {
    sub_10001C820(&qword_100118A28, &qword_1000D6A88);
    sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A20);
  }

  return result;
}

unint64_t sub_1000A6968()
{
  result = qword_100118A58;
  if (!qword_100118A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A58);
  }

  return result;
}

uint64_t sub_1000A69CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A6A34()
{
  result = qword_100118A68;
  if (!qword_100118A68)
  {
    sub_10001C820(&qword_100118A60, &qword_1000D6B98);
    sub_1000A6AEC();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A68);
  }

  return result;
}

unint64_t sub_1000A6AEC()
{
  result = qword_100118A70;
  if (!qword_100118A70)
  {
    sub_10001C820(&qword_100118A78, &qword_1000D6BA0);
    sub_1000A6BA4();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A70);
  }

  return result;
}

unint64_t sub_1000A6BA4()
{
  result = qword_100118A80;
  if (!qword_100118A80)
  {
    sub_10001C820(&qword_100118A88, &unk_1000D6BA8);
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A80);
  }

  return result;
}

unint64_t sub_1000A6C5C()
{
  result = qword_100118AB0;
  if (!qword_100118AB0)
  {
    sub_10001C820(&qword_100118AA8, &qword_1000D6BD0);
    sub_1000A6D14();
    sub_10002DAD8(&qword_100118B20, &qword_100118B28, &qword_1000D6C00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AB0);
  }

  return result;
}

unint64_t sub_1000A6D14()
{
  result = qword_100118AB8;
  if (!qword_100118AB8)
  {
    sub_10001C820(&qword_100118AA0, &qword_1000D6BC8);
    sub_1000A6DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AB8);
  }

  return result;
}

unint64_t sub_1000A6DA0()
{
  result = qword_100118AC0;
  if (!qword_100118AC0)
  {
    sub_10001C820(&qword_100118A98, &qword_1000D6BC0);
    sub_1000A6E5C();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AC0);
  }

  return result;
}

unint64_t sub_1000A6E5C()
{
  result = qword_100118AC8;
  if (!qword_100118AC8)
  {
    sub_10001C820(&qword_100118AD0, &qword_1000D6BD8);
    sub_1000A6F14();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AC8);
  }

  return result;
}

unint64_t sub_1000A6F14()
{
  result = qword_100118AD8;
  if (!qword_100118AD8)
  {
    sub_10001C820(&qword_100118AE0, &qword_1000D6BE0);
    sub_1000A6FCC();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AD8);
  }

  return result;
}

unint64_t sub_1000A6FCC()
{
  result = qword_100118AE8;
  if (!qword_100118AE8)
  {
    sub_10001C820(&qword_100118AF0, &qword_1000D6BE8);
    sub_1000A7084();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AE8);
  }

  return result;
}

unint64_t sub_1000A7084()
{
  result = qword_100118AF8;
  if (!qword_100118AF8)
  {
    sub_10001C820(&qword_100118B00, &qword_1000D6BF0);
    sub_1000A713C();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AF8);
  }

  return result;
}

unint64_t sub_1000A713C()
{
  result = qword_100118B08;
  if (!qword_100118B08)
  {
    sub_10001C820(&qword_100118B10, &qword_1000D6BF8);
    sub_1000A4894(&qword_100118B18, type metadata accessor for TimelineCountdownView, &unk_1000D6F78);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B08);
  }

  return result;
}

unint64_t sub_1000A7314()
{
  result = qword_100118B58;
  if (!qword_100118B58)
  {
    sub_10001C820(&qword_100118B48, &unk_1000D6CB8);
    sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
    sub_1000A4D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B58);
  }

  return result;
}

uint64_t sub_1000A73D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A7438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A74A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000A7508()
{
  result = qword_100118B88;
  if (!qword_100118B88)
  {
    sub_10001C820(&qword_100118B80, &unk_1000D6CF0);
    sub_10002DAD8(&qword_1001158D0, &qword_100115760, &qword_1000D2CA0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10002DAD8(&qword_100118B90, &qword_100118B98, &qword_1000D6D00, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B88);
  }

  return result;
}

uint64_t sub_1000A75EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000A7644()
{
  result = qword_100118BA0;
  if (!qword_100118BA0)
  {
    sub_10001C820(&qword_100118B70, &qword_1000D6CE0);
    sub_1000A76FC();
    sub_10002DAD8(&qword_100118BB8, &qword_100118BC0, &qword_1000D6D38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BA0);
  }

  return result;
}

unint64_t sub_1000A76FC()
{
  result = qword_100118BA8;
  if (!qword_100118BA8)
  {
    sub_10001C820(&qword_100118B68, &qword_1000D6CD8);
    sub_10002DAD8(&qword_100118BB0, &qword_100118B60, &qword_1000D6CD0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BA8);
  }

  return result;
}

unint64_t sub_1000A77B4()
{
  result = qword_100118BE8;
  if (!qword_100118BE8)
  {
    sub_10001C820(&qword_100118BD0, &qword_1000D6D40);
    sub_10002DAD8(&qword_100118BF0, &qword_100118BF8, &qword_1000D6D58, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BE8);
  }

  return result;
}

uint64_t sub_1000A786C()
{
  v1 = (type metadata accessor for CountdownPlatter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for AlarmPresentationState();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_100017D28((v0 + v3 + v1[8]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A79A4()
{
  type metadata accessor for CountdownPlatter(0);

  return sub_10009D04C();
}

unint64_t sub_1000A7A04()
{
  result = qword_100118C48;
  if (!qword_100118C48)
  {
    sub_10001C820(&qword_100118C20, &qword_1000D6D80);
    sub_1000A7ABC();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C48);
  }

  return result;
}

unint64_t sub_1000A7ABC()
{
  result = qword_100118C50;
  if (!qword_100118C50)
  {
    sub_10001C820(&qword_100118C18, &qword_1000D6D78);
    sub_1000A7B74();
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C50);
  }

  return result;
}

unint64_t sub_1000A7B74()
{
  result = qword_100118C58;
  if (!qword_100118C58)
  {
    sub_10001C820(&qword_100118C10, &qword_1000D6D70);
    sub_10002DAD8(&qword_100118C60, &qword_100118C08, &qword_1000D6D68, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C58);
  }

  return result;
}

unint64_t sub_1000A7C2C()
{
  result = qword_100118C90;
  if (!qword_100118C90)
  {
    sub_10001C820(&qword_100118C78, &qword_1000D6DD0);
    sub_10002DAD8(&qword_100118C98, &qword_100118CA0, &qword_1000D6DE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C90);
  }

  return result;
}

unint64_t sub_1000A7CE4()
{
  result = qword_100118CB8;
  if (!qword_100118CB8)
  {
    sub_10001C820(&qword_100118CB0, &qword_1000D6DF8);
    sub_1000A7D9C();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CB8);
  }

  return result;
}

unint64_t sub_1000A7D9C()
{
  result = qword_100118CC0;
  if (!qword_100118CC0)
  {
    sub_10001C820(&qword_100118CC8, &qword_1000D6E00);
    sub_1000A7E54();
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CC0);
  }

  return result;
}

unint64_t sub_1000A7E54()
{
  result = qword_100118CD0;
  if (!qword_100118CD0)
  {
    sub_10001C820(&qword_100118CD8, &qword_1000D6E08);
    sub_1000A7EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CD0);
  }

  return result;
}

unint64_t sub_1000A7EE0()
{
  result = qword_100118CE0;
  if (!qword_100118CE0)
  {
    sub_10001C820(&qword_100118CE8, &qword_1000D6E10);
    sub_10002DAD8(&qword_100118CF0, &qword_100118CF8, &qword_1000D6E18, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CE0);
  }

  return result;
}

unint64_t sub_1000A7F98()
{
  result = qword_100118D18;
  if (!qword_100118D18)
  {
    sub_10001C820(&qword_100118D10, &unk_1000D6E30);
    sub_100065C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D18);
  }

  return result;
}

unint64_t sub_1000A801C()
{
  result = qword_100118D30;
  if (!qword_100118D30)
  {
    sub_10001C820(&qword_100118D28, &qword_1000D6E58);
    sub_1000A80D4();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D30);
  }

  return result;
}

unint64_t sub_1000A80D4()
{
  result = qword_100118D38;
  if (!qword_100118D38)
  {
    sub_10001C820(&qword_100118D40, &qword_1000D6E60);
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionButtonHighlightEffectStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A8250(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Calendar();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A83EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v14 = type metadata accessor for Calendar();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_1000A8568(uint64_t a1)
{
  sub_1000A868C(319, &qword_100114488, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000A86E0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1000A8738(319, &unk_100118DB0, &type metadata accessor for EnvironmentObject);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Calendar();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000A868C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000A86E0(uint64_t a1)
{
  if (!qword_100117930)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100117930);
    }
  }
}

void sub_1000A8738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for EnvironmentDelegate(255);
    v7 = sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000A87E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Material();
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
      v13 = type metadata accessor for BlendMode();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A8920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Material();
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
      v13 = type metadata accessor for BlendMode();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_1000A8A64(uint64_t a1)
{
  result = type metadata accessor for Material();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BlendMode();
    if (v3 <= 0x3F)
    {
      result = sub_100024508();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000A8B48()
{
  result = qword_100118EA0;
  if (!qword_100118EA0)
  {
    sub_10001C820(&qword_100118EA8, &qword_1000D6EE8);
    sub_1000A6A34();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EA0);
  }

  return result;
}

unint64_t sub_1000A8C08()
{
  result = qword_100118EB0;
  if (!qword_100118EB0)
  {
    sub_10001C820(&qword_100118EB8, &qword_1000D6EF0);
    sub_1000A6C5C();
    sub_1000A6DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EB0);
  }

  return result;
}

unint64_t sub_1000A8C98()
{
  result = qword_100118EC0;
  if (!qword_100118EC0)
  {
    sub_10001C820(&qword_100118B38, &qword_1000D6CA8);
    sub_1000A8D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EC0);
  }

  return result;
}

unint64_t sub_1000A8D24()
{
  result = qword_100118EC8;
  if (!qword_100118EC8)
  {
    sub_10001C820(&qword_100118B30, &qword_1000D6CA0);
    sub_1000A8DDC();
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EC8);
  }

  return result;
}

unint64_t sub_1000A8DDC()
{
  result = qword_100118ED0;
  if (!qword_100118ED0)
  {
    sub_10001C820(&qword_100118ED8, &qword_1000D6EF8);
    sub_1000A8E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118ED0);
  }

  return result;
}

unint64_t sub_1000A8E60()
{
  result = qword_100118EE0;
  if (!qword_100118EE0)
  {
    sub_10001C820(&qword_100118EE8, &qword_1000D6F00);
    sub_1000A4C50();
    sub_1000A7314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EE0);
  }

  return result;
}

uint64_t sub_1000A8EEC()
{
  sub_10001C820(&qword_100118B78, &qword_1000D6CE8);
  type metadata accessor for Capsule();
  sub_10001C820(&qword_100118B70, &qword_1000D6CE0);
  type metadata accessor for BorderedProminentButtonStyle();
  sub_1000A7644();
  sub_1000A4894(&qword_100118BC8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1000A4894(&qword_100115720, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000A9030()
{
  result = qword_100118EF0;
  if (!qword_100118EF0)
  {
    sub_10001C820(&qword_100118EF8, &qword_1000D6F08);
    sub_10001C820(&qword_100118BD0, &qword_1000D6D40);
    sub_1000A77B4();
    swift_getOpaqueTypeConformance2();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EF0);
  }

  return result;
}

unint64_t sub_1000A912C()
{
  result = qword_100118F00;
  if (!qword_100118F00)
  {
    sub_10001C820(&qword_100118F08, &qword_1000D6F10);
    sub_10001C820(&qword_100118C78, &qword_1000D6DD0);
    sub_1000A7C2C();
    swift_getOpaqueTypeConformance2();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F00);
  }

  return result;
}

unint64_t sub_1000A9228()
{
  result = qword_100118F10;
  if (!qword_100118F10)
  {
    sub_10001C820(&qword_100118F18, &qword_1000D6F18);
    sub_1000A7F98();
    sub_100065C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F10);
  }

  return result;
}

unint64_t sub_1000A9350()
{
  result = qword_100118F50;
  if (!qword_100118F50)
  {
    sub_10001C820(&qword_100118F48, &qword_1000D7018);
    sub_1000A9408();
    sub_10002DAD8(&qword_100118F70, &qword_100118F78, &qword_1000D7020, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F50);
  }

  return result;
}

unint64_t sub_1000A9408()
{
  result = qword_100118F58;
  if (!qword_100118F58)
  {
    sub_10001C820(&qword_100118F40, &qword_1000D7010);
    sub_1000A9494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F58);
  }

  return result;
}

unint64_t sub_1000A9494()
{
  result = qword_100118F60;
  if (!qword_100118F60)
  {
    sub_10001C820(&qword_100118F38, &qword_1000D7008);
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F60);
  }

  return result;
}

uint64_t sub_1000A9550()
{
  v1 = type metadata accessor for TimelineCountdownView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1000295C4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = v1[10];
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000A9700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimelineCountdownView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009DD90(a1, v6, a2);
}

uint64_t sub_1000A9780()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000A97C0()
{
  result = qword_100118F90;
  if (!qword_100118F90)
  {
    sub_10001C820(&qword_100118F80, &qword_1000D7028);
    sub_1000A984C();
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F90);
  }

  return result;
}

unint64_t sub_1000A984C()
{
  result = qword_100118F98;
  if (!qword_100118F98)
  {
    sub_10001C820(&qword_100118FA0, &unk_1000D7030);
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F98);
  }

  return result;
}

_OWORD *sub_1000A98D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000A98F0()
{
  result = qword_100118FE0;
  if (!qword_100118FE0)
  {
    sub_10001C820(&qword_100118FD8, &qword_1000D7080);
    sub_1000A99A8();
    sub_10002DAD8(&qword_100119008, &qword_100119010, &qword_1000D7098, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FE0);
  }

  return result;
}

unint64_t sub_1000A99A8()
{
  result = qword_100118FE8;
  if (!qword_100118FE8)
  {
    sub_10001C820(&qword_100118FF0, &qword_1000D7088);
    sub_10002DAD8(&qword_100118FF8, &qword_100119000, &qword_1000D7090, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FE8);
  }

  return result;
}

unint64_t sub_1000A9A64()
{
  result = qword_100119030;
  if (!qword_100119030)
  {
    sub_10001C820(&qword_100119038, &qword_1000D70B0);
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119030);
  }

  return result;
}

unint64_t sub_1000A9B24()
{
  result = qword_100119040;
  if (!qword_100119040)
  {
    sub_10001C820(&qword_100119048, &qword_1000D70B8);
    sub_1000A97C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119040);
  }

  return result;
}

uint64_t sub_1000A9BC4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_10001C820(a2, a3);
  sub_10002DAD8(a4, a2, a3, &protocol conformance descriptor for Button<A>);
  sub_1000A6968();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000A9C90()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIControl) init];
  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v2 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_1000AA4F8, 0}];

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v4;
  v6 = v2;
  [v5 addSubview:v6];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView;
  v8 = *&v1[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView];
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  v75[6] = &type metadata for LockscreenConfig;
  v75[7] = &off_100101E80;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();

  v11 = v9;
  v75[0] = ObservedObject.init(wrappedValue:)();
  v75[1] = v12;
  v75[2] = v9;
  v75[8] = KeyPath;
  v76 = 0;
  v13 = objc_allocWithZone(sub_1000032D4(&unk_100119090, &unk_1000D7140));
  *&v13[*((swift_isaMask & *v13) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000AA938(v75, v74);
  v14 = UIHostingController.init(rootView:)();
  sub_1000AA994(v75);
  v15 = v14;
  v16 = [v15 view];
  if (!v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [v15 view];
  if (!v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v18;
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  v21 = [v15 view];
  if (!v21)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v22 = v21;
  [v21 setUserInteractionEnabled:0];

  [v1 addChildViewController:v15];
  v23 = [v15 view];

  if (!v23)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v6 addSubview:v23];

  [v15 didMoveToParentViewController:v1];
  v24 = *&v1[v7];
  *&v1[v7] = v15;

  v8 = *&v1[v7];
  if (v8)
  {
LABEL_8:
    v25 = [v8 view];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 leadingAnchor];

      sub_100031224();
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000D70C0;
      v29 = *&v1[v7];
      if (v29)
      {
        v30 = [v29 view];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 leadingAnchor];

          v33 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
          v34 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
          if (v34)
          {
            v35 = [v34 trailingAnchor];
            v36 = [v32 constraintEqualToAnchor:v35 constant:25.0];

            *(v28 + 32) = v36;
            v37 = *&v1[v7];
            if (v37)
            {
              v38 = [v37 view];
              if (v38)
              {
                v39 = v38;
                v40 = [v38 trailingAnchor];

                v41 = [v1 view];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 trailingAnchor];

                  v44 = [v40 constraintEqualToAnchor:v43];
                  *(v28 + 40) = v44;
                  v45 = *&v1[v7];
                  if (v45)
                  {
                    v46 = [v45 view];
                    if (v46)
                    {
                      v47 = v46;
                      v48 = [v46 centerYAnchor];

                      v49 = [v1 view];
                      if (v49)
                      {
                        v50 = v49;
                        v51 = [v49 centerYAnchor];

                        v52 = [v48 constraintEqualToAnchor:v51];
                        *(v28 + 48) = v52;
                        v53 = [v6 leadingAnchor];

                        v54 = *&v1[v33];
                        if (v54)
                        {
                          v55 = [v54 trailingAnchor];
                          v56 = [v53 constraintEqualToAnchor:v55 constant:10.0];

                          *(v28 + 56) = v56;
                          v57 = [v6 trailingAnchor];

                          v58 = [v1 view];
                          if (v58)
                          {
                            v59 = v58;
                            v60 = [v58 trailingAnchor];

                            v61 = [v57 constraintEqualToAnchor:v60];
                            *(v28 + 64) = v61;
                            v62 = [v6 topAnchor];

                            v63 = [v1 view];
                            if (v63)
                            {
                              v64 = v63;
                              v65 = [v63 topAnchor];

                              v66 = [v62 constraintEqualToAnchor:v65];
                              *(v28 + 72) = v66;
                              v67 = [v6 bottomAnchor];

                              v68 = [v1 view];
                              if (v68)
                              {
                                v69 = v68;
                                v70 = objc_opt_self();
                                v71 = [v69 bottomAnchor];

                                v72 = [v67 constraintEqualToAnchor:v71];
                                *(v28 + 80) = v72;
                                sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                isa = Array._bridgeToObjectiveC()().super.isa;

                                [v70 activateConstraints:isa];

                                return;
                              }

                              goto LABEL_37;
                            }

LABEL_36:
                            __break(1u);
LABEL_37:
                            __break(1u);
                            goto LABEL_38;
                          }

LABEL_35:
                          __break(1u);
                          goto LABEL_36;
                        }

LABEL_34:
                        __break(1u);
                        goto LABEL_35;
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1000AA4F8()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() mtURLForSection:3];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  }

  else
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_100057520(v2);
}

id sub_1000AA820(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StopwatchLockscreenController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000AA888@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AA8B8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000AAB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LinearTimerTimelineCountdown(uint64_t a1)
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AACC4(uint64_t a1)
{
  type metadata accessor for OpaqueAlarm(319);
  if (v1 <= 0x3F)
  {
    sub_100027F54(319, &qword_100113DC0, &protocol descriptor for SessionUiConfig);
    if (v2 <= 0x3F)
    {
      sub_100027F54(319, &unk_100119118, &protocol descriptor for TimerActionDelegate);
      if (v3 <= 0x3F)
      {
        sub_1000AAE00(319);
        if (v4 <= 0x3F)
        {
          sub_1000AAE58(319, &unk_100113A78, &type metadata for CGFloat);
          if (v5 <= 0x3F)
          {
            sub_1000AAE58(319, &qword_100113A70, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000AAE00(uint64_t a1)
{
  if (!qword_100113A60)
  {
    type metadata accessor for Font.Context();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100113A60);
    }
  }
}

void sub_1000AAE58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000AAEC0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_10002CFC4(v1 + *(v10 + 28), v9, &qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1000AB0C8()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for AlarmPresentationState.Mode();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OpaqueAlarm(0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (&v29 - v16);
  sub_1000B42E0(v0, &v29 - v16, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v17, type metadata accessor for OpaqueAlarm);
      goto LABEL_8;
    }

    v23 = *v17;
    v24 = [*v17 state];

    if (v24 != 3)
    {
LABEL_8:
      sub_1000B42E0(v1, v15, type metadata accessor for OpaqueAlarm);
      v25 = swift_getEnumCaseMultiPayload();
      if (v25)
      {
        if (v25 == 1)
        {
          sub_1000B4390(v15, type metadata accessor for OpaqueAlarm);
        }

        else
        {
          v28 = *v15;
          [*v15 remainingTime];
        }
      }

      else
      {
        v26 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
        (*(v9 + 32))(v11, v15, v8);
        AlarmPresentationState.mode.getter();
        AlarmPresentationState.Mode.remainingTime.getter();
        (*(v31 + 8))(v7, v32);
        (*(v9 + 8))(v11, v8);
        v27 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
        (*(*(v27 - 8) + 8))(v15 + v26, v27);
      }

      return;
    }
  }

  else
  {
    v30 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v9 + 32))(v11, v17, v8);
    AlarmPresentationState.mode.getter();
    v19 = AlarmPresentationState.Mode.isCountingDown.getter();
    (*(v31 + 8))(v7, v32);
    (*(v9 + 8))(v11, v8);
    v20 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v20 - 8) + 8))(v17 + v30, v20);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_100089408(v4);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    sub_10002D02C(v4, &qword_100115E40, &unk_1000D1280);
    sub_1000AB604();
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    (*(v22 + 8))(v4, v21);
  }
}

double sub_1000AB604()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B42E0(v0, v11, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v11, type metadata accessor for OpaqueAlarm);
      return 0.0;
    }

    else
    {
      v17 = *v11;
      [*v11 remainingTime];
      v13 = v18;
    }
  }

  else
  {
    v14 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.remainingTime.getter();
    v13 = v15;
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v16 - 8) + 8))(v11 + v14, v16);
  }

  return v13;
}

uint64_t sub_1000AB8CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000032D4(&qword_100119180, &qword_1000D7200);
  __chkstk_darwin(v3);
  v5 = (&v49 - v4);
  v6 = sub_1000032D4(&qword_100119188, &qword_1000D7208);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_1000032D4(&qword_100119190, &qword_1000D7210);
  __chkstk_darwin(v9);
  v11 = (&v49 - v10);
  GeometryProxy.size.getter();
  v13 = v12;
  if (sub_100088B60())
  {
    *v11 = static Alignment.center.getter();
    v11[1] = v14;
    v15 = v11 + *(sub_1000032D4(&qword_1001191E0, &qword_1000D7240) + 44);
    *v15 = static HorizontalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v16 = sub_1000032D4(&qword_1001191E8, &qword_1000D7248);
    sub_1000ABCD0(a2, &v15[*(v16 + 44)]);
    v17 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v15[*(sub_1000032D4(&qword_1001191F0, &qword_1000D7250) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v15[*(sub_1000032D4(&qword_1001191F8, &qword_1000D7258) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Color.black.getter();
    v38 = static Edge.Set.all.getter();
    v39 = v11 + *(sub_1000032D4(&qword_1001191B0, &qword_1000D7220) + 36);
    *v39 = v37;
    v39[8] = v38;
    *(v11 + *(v9 + 36)) = static Edge.Set.vertical.getter();
    sub_10002CFC4(v11, v8, &qword_100119190, &qword_1000D7210);
    swift_storeEnumTagMultiPayload();
    sub_1000B33D4();
    sub_1000B3544();
    _ConditionalContent<>.init(storage:)();
    v40 = v11;
    v41 = &qword_100119190;
    v42 = &qword_1000D7210;
  }

  else
  {
    GeometryProxy.safeAreaInsets.getter();
    if (v43 == 0.0)
    {
      v44 = 38.0;
    }

    else
    {
      GeometryProxy.safeAreaInsets.getter();
      v44 = v45;
    }

    *v5 = static Alignment.bottom.getter();
    v5[1] = v46;
    v47 = sub_1000032D4(&qword_100119198, &qword_1000D7218);
    sub_1000AEE70(a2, v5 + *(v47 + 44), v13, v44);
    *(v5 + *(v3 + 36)) = static Edge.Set.all.getter();
    sub_10002CFC4(v5, v8, &qword_100119180, &qword_1000D7200);
    swift_storeEnumTagMultiPayload();
    sub_1000B33D4();
    sub_1000B3544();
    _ConditionalContent<>.init(storage:)();
    v40 = v5;
    v41 = &qword_100119180;
    v42 = &qword_1000D7200;
  }

  return sub_10002D02C(v40, v41, v42);
}

uint64_t sub_1000ABCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1000032D4(&qword_100119200, &qword_1000D7260);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = sub_1000032D4(&qword_100119208, &qword_1000D7268);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  *v18 = static VerticalAlignment.top.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = sub_1000032D4(&qword_100119210, &qword_1000D7270);
  sub_1000ABF50(a1, &v18[*(v19 + 44)]);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = sub_1000032D4(&qword_100119218, &qword_1000D7278);
  sub_1000ADC20(a1, &v12[*(v20 + 44)]);
  sub_10002CFC4(v18, v16, &qword_100119208, &qword_1000D7268);
  sub_10002CFC4(v12, v10, &qword_100119200, &qword_1000D7260);
  sub_10002CFC4(v16, a2, &qword_100119208, &qword_1000D7268);
  v21 = sub_1000032D4(&qword_100119220, &unk_1000D7280);
  v22 = a2 + *(v21 + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10002CFC4(v10, a2 + *(v21 + 64), &qword_100119200, &qword_1000D7260);
  sub_10002D02C(v12, &qword_100119200, &qword_1000D7260);
  sub_10002D02C(v18, &qword_100119208, &qword_1000D7268);
  sub_10002D02C(v10, &qword_100119200, &qword_1000D7260);
  return sub_10002D02C(v16, &qword_100119208, &qword_1000D7268);
}

uint64_t sub_1000ABF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  v5 = type metadata accessor for Color.RGBColorSpace();
  v196 = *(v5 - 8);
  v197 = v5;
  __chkstk_darwin(v5);
  v195 = &v147[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v180 = type metadata accessor for DynamicTypeSize();
  v175 = *(v180 - 8);
  __chkstk_darwin(v180);
  v169 = &v147[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Font._StylisticAlternative();
  v163 = *(v8 - 8);
  v164 = v8;
  __chkstk_darwin(v8);
  v162 = &v147[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v172 = *(v177 - 8);
  __chkstk_darwin(v177);
  v168 = &v147[-v10];
  v167 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  __chkstk_darwin(v167);
  v173 = &v147[-v11];
  v171 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  __chkstk_darwin(v171);
  v188 = &v147[-v12];
  v182 = sub_1000032D4(&qword_100119230, &qword_1000D72A8);
  __chkstk_darwin(v182);
  v190 = &v147[-v13];
  v186 = sub_1000032D4(&qword_100119238, &qword_1000D72B0);
  __chkstk_darwin(v186);
  v189 = &v147[-v14];
  v185 = sub_1000032D4(&qword_100119240, &qword_1000D72B8);
  __chkstk_darwin(v185);
  v187 = &v147[-v15];
  v16 = type metadata accessor for Date();
  v165 = *(v16 - 8);
  v166 = v16;
  __chkstk_darwin(v16);
  v202 = &v147[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = sub_1000032D4(&qword_100119248, &qword_1000D72C0);
  __chkstk_darwin(v170);
  v178 = &v147[-v18];
  v174 = sub_1000032D4(&qword_100119250, &qword_1000D72C8);
  __chkstk_darwin(v174);
  v184 = &v147[-v19];
  v181 = sub_1000032D4(&qword_100119258, &qword_1000D72D0);
  __chkstk_darwin(v181);
  v179 = &v147[-v20];
  v176 = sub_1000032D4(&qword_100119260, &qword_1000D72D8);
  __chkstk_darwin(v176);
  v192 = &v147[-v21];
  v191 = sub_1000032D4(&qword_100119268, &qword_1000D72E0);
  v22 = __chkstk_darwin(v191);
  v194 = &v147[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v183 = &v147[-v25];
  __chkstk_darwin(v24);
  v193 = &v147[-v26];
  v201 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v157 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = v27;
  v203 = &v147[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for Font.Context();
  v149 = *(v28 - 8);
  v150 = v28;
  __chkstk_darwin(v28);
  v148 = &v147[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_1000032D4(&qword_100119270, &qword_1000D72E8);
  v30 = *(v159 - 8);
  __chkstk_darwin(v159);
  v32 = &v147[-v31];
  v151 = sub_1000032D4(&qword_100119278, &qword_1000D72F0);
  __chkstk_darwin(v151);
  v34 = &v147[-v33];
  v158 = sub_1000032D4(&qword_100119280, &qword_1000D72F8);
  __chkstk_darwin(v158);
  v36 = &v147[-v35];
  v152 = sub_1000032D4(&qword_100119288, &qword_1000D7300);
  __chkstk_darwin(v152);
  v38 = &v147[-v37];
  v160 = sub_1000032D4(&qword_100119290, &qword_1000D7308);
  __chkstk_darwin(v160);
  v156 = &v147[-v39];
  v155 = sub_1000032D4(&qword_100119298, &qword_1000D7310);
  __chkstk_darwin(v155);
  v153 = &v147[-v40];
  v154 = sub_1000032D4(&qword_1001192A0, &qword_1000D7318);
  __chkstk_darwin(v154);
  v42 = &v147[-v41];
  v43 = sub_1000032D4(&qword_1001192A8, &qword_1000D7320);
  v44 = __chkstk_darwin(v43 - 8);
  v161 = &v147[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v44);
  v200 = &v147[-v46];
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  v47 = Color.init(uiColor:)();
  v48 = a1;
  sub_1000AD59C(a1, v47);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v30 + 32))(v34, v32, v159);
  v49 = &v34[*(v151 + 36)];
  v50 = v212;
  v49[4] = v211;
  v49[5] = v50;
  v49[6] = v213;
  v51 = v208;
  *v49 = v207;
  v49[1] = v51;
  v52 = v210;
  v49[2] = v209;
  v49[3] = v52;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10002C7C4(v34, v36, &qword_100119278, &qword_1000D72F0);
  v53 = &v36[*(v158 + 36)];
  v54 = v215;
  *v53 = v214;
  v53[1] = v54;
  v53[2] = v216;
  v55 = v201;
  v56 = v48;
  v57 = (v48 + *(v201 + 40));
  v58 = *v57;
  v59 = *(v57 + 1);
  LODWORD(v159) = v58;
  LOBYTE(v217) = v58;
  v158 = v59;
  *(&v217 + 1) = v59;
  v60 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v205)
  {
    if (qword_1001136B8 != -1)
    {
      swift_once();
    }

    v61 = v148;
    sub_1000AAEC0(v148);
    v62 = Font.platformFont(in:)();
    (*(v149 + 8))(v61, v150);
    CapHeight = CTFontGetCapHeight(v62);
  }

  else
  {
    CapHeight = 50.0;
  }

  sub_10002C7C4(v36, v38, &qword_100119280, &qword_1000D72F8);
  v64 = &v38[*(v152 + 36)];
  *v64 = 0.0;
  v64[1] = CapHeight;
  v65 = v56 + *(v55 + 60);
  v66 = *v65;
  v67 = *(v65 + 8);
  LOBYTE(v217) = v66;
  *(&v217 + 1) = v67;
  State.wrappedValue.getter();
  if (v205)
  {
    v68 = 1.0;
  }

  else
  {
    v68 = 0.0;
  }

  v69 = v156;
  sub_10002C7C4(v38, v156, &qword_100119288, &qword_1000D7300);
  *&v69[*(v160 + 36)] = v68;
  v70 = v203;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v160 = v60;
  v71 = qword_10011F788;
  v72 = v153;
  sub_10002C7C4(v69, v153, &qword_100119290, &qword_1000D7308);
  *&v72[*(v155 + 36)] = v71;
  sub_1000B42E0(v56, v70, type metadata accessor for LinearTimerTimelineCountdown);
  v73 = *(v157 + 80);
  v74 = (v73 + 16) & ~v73;
  v155 = v74 + v199;
  v156 = v73;
  v75 = swift_allocObject();
  v157 = v74;
  sub_1000B3678(v70, v75 + v74, type metadata accessor for LinearTimerTimelineCountdown);
  sub_10002C7C4(v72, v42, &qword_100119298, &qword_1000D7310);
  v76 = &v42[*(v154 + 36)];
  *v76 = sub_1000B380C;
  v76[1] = v75;
  v76[2] = 0;
  v76[3] = 0;
  v199 = v71;

  LocalizedStringKey.init(stringLiteral:)();
  sub_1000B3824();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v42, &qword_1001192A0, &qword_1000D7318);
  v77 = v202;
  static Date.now.getter();
  if (qword_1001136C0 != -1)
  {
    swift_once();
  }

  v153 = static Color.white.getter();
  sub_1000B20F0(v56, v77);
  *&v217 = v78;
  *(&v217 + 1) = v79;
  sub_100025FB4();
  v80 = Text.init<A>(_:)();
  v82 = v81;
  v84 = v83;
  Font.monospacedDigit()();
  v86 = v162;
  v85 = v163;
  v87 = v164;
  (*(v163 + 104))(v162, enum case for Font._StylisticAlternative.three(_:), v164);
  Font._stylisticAlternative(_:)();
  v154 = v56;

  (*(v85 + 8))(v86, v87);
  v88 = Text.font(_:)();
  v90 = v89;
  LOBYTE(v87) = v91;
  v93 = v92;

  sub_100025B0C(v80, v82, v84 & 1);

  *&v217 = v88;
  *(&v217 + 1) = v90;
  LOBYTE(v87) = v87 & 1;
  LOBYTE(v218) = v87;
  *(&v218 + 1) = v93;
  v94 = v175;
  v95 = v169;
  v96 = v180;
  (*(v175 + 104))(v169, enum case for DynamicTypeSize.large(_:), v180);
  v97 = v168;
  View.dynamicTypeSize(_:)();
  (*(v94 + 8))(v95, v96);
  sub_100025B0C(v88, v90, v87);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v98 = v173;
  (*(v172 + 32))(v173, v97, v177);
  v99 = &v98[*(v167 + 36)];
  v100 = v222;
  v99[4] = v221;
  v99[5] = v100;
  v99[6] = v223;
  v101 = v218;
  *v99 = v217;
  v99[1] = v101;
  v102 = v220;
  v99[2] = v219;
  v99[3] = v102;
  KeyPath = swift_getKeyPath();
  v104 = v98;
  v105 = v188;
  sub_10002C7C4(v104, v188, &qword_100114AF0, &qword_1000D1E58);
  v106 = &v105[*(v171 + 36)];
  v107 = v153;
  *v106 = KeyPath;
  v106[1] = v107;
  (*(v196 + 104))(v195, enum case for Color.RGBColorSpace.sRGBLinear(_:), v197);
  v108 = 0.0;
  v109 = Color.init(_:white:opacity:)();
  (*(v165 + 8))(v202, v166);
  v110 = v105;
  v111 = v190;
  sub_10002C7C4(v110, v190, &qword_100114AF8, &qword_1000D1E60);
  v112 = &v111[*(v182 + 36)];
  *v112 = v109;
  v112[1] = 0x3FF0000000000000;
  v112[2] = 0;
  v112[3] = 0;
  v113 = swift_getKeyPath();
  v114 = v111;
  v115 = v189;
  sub_10002C7C4(v114, v189, &qword_100119230, &qword_1000D72A8);
  v116 = &v115[*(v186 + 36)];
  *v116 = v113;
  *(v116 + 1) = 1;
  v116[16] = 0;
  v117 = swift_getKeyPath();
  v118 = v115;
  v119 = v187;
  sub_10002C7C4(v118, v187, &qword_100119238, &qword_1000D72B0);
  v120 = &v119[*(v185 + 36)];
  *v120 = v117;
  v120[8] = 1;
  v121 = swift_getKeyPath();
  v122 = v119;
  v123 = v178;
  sub_10002C7C4(v122, v178, &qword_100119240, &qword_1000D72B8);
  v124 = &v123[*(v170 + 36)];
  *v124 = v121;
  v124[1] = 0x3FE6666666666666;
  v205 = v159;
  v206 = v158;
  State.wrappedValue.getter();
  if (v204)
  {
    v125 = 0.0;
  }

  else
  {
    v125 = 50.0;
  }

  v126 = v123;
  v127 = v184;
  sub_10002C7C4(v126, v184, &qword_100119248, &qword_1000D72C0);
  v128 = &v127[*(v174 + 36)];
  *v128 = 0.0;
  v128[1] = v125;
  v129 = v154;
  v130 = v154 + *(v201 + 56);
  v131 = *v130;
  v132 = *(v130 + 8);
  v205 = v131;
  v206 = v132;
  State.wrappedValue.getter();
  if (v204)
  {
    v108 = 1.0;
  }

  v133 = v179;
  sub_10002C7C4(v127, v179, &qword_100119250, &qword_1000D72C8);
  *&v133[*(v181 + 36)] = v108;
  v134 = v192;
  sub_10002C7C4(v133, v192, &qword_100119258, &qword_1000D72D0);
  *&v134[*(v176 + 36)] = v199;
  v135 = v203;
  sub_1000B42E0(v129, v203, type metadata accessor for LinearTimerTimelineCountdown);
  v136 = swift_allocObject();
  sub_1000B3678(v135, v136 + v157, type metadata accessor for LinearTimerTimelineCountdown);
  v137 = v183;
  sub_10002C7C4(v134, v183, &qword_100119260, &qword_1000D72D8);
  v138 = &v137[*(v191 + 36)];
  *v138 = sub_1000B3E6C;
  v138[1] = v136;
  v138[2] = 0;
  v138[3] = 0;
  v139 = v193;
  sub_10002C7C4(v137, v193, &qword_100119268, &qword_1000D72E0);
  v140 = v200;
  v141 = v161;
  sub_10002CFC4(v200, v161, &qword_1001192A8, &qword_1000D7320);
  v142 = v194;
  sub_10002CFC4(v139, v194, &qword_100119268, &qword_1000D72E0);
  v143 = v198;
  sub_10002CFC4(v141, v198, &qword_1001192A8, &qword_1000D7320);
  v144 = sub_1000032D4(&qword_100119320, &unk_1000D7420);
  v145 = v143 + *(v144 + 48);
  *v145 = 0;
  *(v145 + 8) = 1;
  sub_10002CFC4(v142, v143 + *(v144 + 64), &qword_100119268, &qword_1000D72E0);

  sub_10002D02C(v139, &qword_100119268, &qword_1000D72E0);
  sub_10002D02C(v140, &qword_1001192A8, &qword_1000D7320);
  sub_10002D02C(v142, &qword_100119268, &qword_1000D72E0);
  return sub_10002D02C(v141, &qword_1001192A8, &qword_1000D7320);
}

uint64_t sub_1000AD59C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B2488(&v19);
  v6 = v19;
  v7 = v20;
  v8 = *(&v20 + 1);
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v9 = qword_10011F6F0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = v7;
  v11 = swift_getKeyPath();
  v18 = 0;
  v14 = v6;
  LOBYTE(v15) = v7;
  *(&v15 + 1) = v8;
  LOWORD(v16) = 256;
  *(&v16 + 1) = KeyPath;
  *v17 = v9;
  *&v17[8] = v11;
  *&v17[16] = 2;
  v17[24] = 0;
  (*(v3 + 104))(v5, enum case for DynamicTypeSize.large(_:), v2);

  sub_1000032D4(&qword_1001192E0, &qword_1000D7328);
  sub_1000B3BD4();
  View.dynamicTypeSize(_:)();
  (*(v3 + 8))(v5, v2);
  v22[0] = *v17;
  *(v22 + 9) = *&v17[9];
  v20 = v15;
  v21 = v16;
  v19 = v14;
  return sub_10002D02C(&v19, &qword_1001192E0, &qword_1000D7328);
}

uint64_t sub_1000AD7C8(uint64_t a1)
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

double sub_1000AD8FC(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

double sub_1000AD978(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_1000AD9F4(uint64_t a1)
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

double sub_1000ADB28(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

double sub_1000ADBA4(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_1000ADC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v144 = type metadata accessor for SlideTransition();
  v143 = *(v144 - 8);
  v3 = __chkstk_darwin(v144);
  v142 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v141 = &v129 - v5;
  v6 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v162 = v9;
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LargeActionButton(0);
  v12 = (v11 - 8);
  v13 = __chkstk_darwin(v11);
  v145 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v129 - v15;
  v157 = sub_1000032D4(&qword_1001150C0, &qword_1000D22C8) - 8;
  v17 = __chkstk_darwin(v157);
  v148 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v136 = &v129 - v19;
  v159 = sub_1000032D4(&qword_1001150C8, &qword_1000D22D0) - 8;
  v20 = __chkstk_darwin(v159);
  v147 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v137 = &v129 - v22;
  v158 = sub_1000032D4(&qword_1001150D0, &qword_1000D22D8) - 8;
  v23 = __chkstk_darwin(v158);
  v146 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v139 = &v129 - v25;
  v160 = sub_1000032D4(&qword_1001150D8, &qword_1000D22E0);
  v26 = __chkstk_darwin(v160);
  v150 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v140 = &v129 - v28;
  v161 = sub_1000032D4(&qword_1001150E0, &qword_1000D22E8);
  v29 = __chkstk_darwin(v161);
  v153 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v152 = &v129 - v32;
  v33 = __chkstk_darwin(v31);
  v149 = &v129 - v34;
  v35 = __chkstk_darwin(v33);
  v151 = &v129 - v36;
  v37 = __chkstk_darwin(v35);
  v138 = &v129 - v38;
  __chkstk_darwin(v37);
  v156 = &v129 - v39;
  LocalizedStringResource.init(stringLiteral:)();
  v40 = static Color.white.getter();
  v41 = 1.0;
  [objc_allocWithZone(UIColor) initWithRed:0.17254902 green:0.17254902 blue:0.17254902 alpha:1.0];
  v42 = Color.init(uiColor:)();
  v132 = type metadata accessor for LinearTimerTimelineCountdown;
  v155 = v10;
  sub_1000B42E0(a1, v10, type metadata accessor for LinearTimerTimelineCountdown);
  v131 = *(v8 + 80);
  v43 = (v131 + 16) & ~v131;
  v44 = swift_allocObject();
  v130 = type metadata accessor for LinearTimerTimelineCountdown;
  sub_1000B3678(v10, v44 + v43, type metadata accessor for LinearTimerTimelineCountdown);
  *&v16[v12[7]] = v40;
  *&v16[v12[8]] = v42;
  v16[v12[9]] = 0;
  v45 = &v16[v12[10]];
  *v45 = sub_1000B35FC;
  v45[1] = v44;
  v46 = &v16[v12[11]];
  v163 = 0;
  State.init(wrappedValue:)();
  v47 = v165;
  *v46 = v164;
  *(v46 + 1) = v47;
  v134 = v7;
  v48 = (a1 + *(v7 + 56));
  v49 = a1;
  v50 = *v48;
  v51 = *(v48 + 1);
  v164 = *v48;
  v165 = v51;
  v52 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v163)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 150.0;
  }

  v135 = type metadata accessor for LargeActionButton;
  v54 = v16;
  v55 = v136;
  sub_1000B3678(v54, v136, type metadata accessor for LargeActionButton);
  v56 = v55 + *(v157 + 44);
  *v56 = 0;
  *(v56 + 8) = v53;
  v57 = v49 + *(v7 + 76);
  v58 = *v57;
  v59 = *(v57 + 8);
  v164 = v58;
  v165 = v59;
  v133 = v52;
  State.wrappedValue.getter();
  if (v163)
  {
    v60 = 1.0;
  }

  else
  {
    v60 = 0.0;
  }

  v61 = v55;
  v62 = v137;
  sub_10002C7C4(v61, v137, &qword_1001150C0, &qword_1000D22C8);
  *(v62 + *(v159 + 44)) = v60;
  v164 = v50;
  v165 = v51;
  State.wrappedValue.getter();
  if (v163)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.8;
  }

  static UnitPoint.center.getter();
  v65 = v64;
  v67 = v66;
  v68 = v155;
  v69 = v139;
  sub_10002C7C4(v62, v139, &qword_1001150C8, &qword_1000D22D0);
  v70 = v69 + *(v158 + 44);
  *v70 = v63;
  *(v70 + 8) = v63;
  *(v70 + 16) = v65;
  *(v70 + 24) = v67;
  v71 = v141;
  SlideTransition.init()();
  v72 = v143;
  v73 = v144;
  (*(v143 + 16))(v142, v71, v144);
  sub_1000B4348(&qword_1001142F0, &type metadata accessor for SlideTransition, &protocol conformance descriptor for SlideTransition);
  v74 = v73;
  v75 = AnyTransition.init<A>(_:)();
  (*(v72 + 8))(v71, v74);
  v76 = v140;
  sub_10002C7C4(v69, v140, &qword_1001150D0, &qword_1000D22D8);
  *(v76 + *(v160 + 36)) = v75;
  v77 = v132;
  sub_1000B42E0(v49, v68, v132);
  v129 = v43;
  v78 = swift_allocObject();
  v79 = v78 + v43;
  v80 = v130;
  sub_1000B3678(v68, v79, v130);
  v81 = v76;
  v82 = v138;
  sub_10002C7C4(v81, v138, &qword_1001150D8, &qword_1000D22E0);
  v83 = (v82 + *(v161 + 36));
  *v83 = sub_1000B36E0;
  v83[1] = v78;
  v83[2] = 0;
  v83[3] = 0;
  sub_10002C7C4(v82, v156, &qword_1001150E0, &qword_1000D22E8);
  v84 = v145;
  LocalizedStringResource.init(stringLiteral:)();
  v85 = static Color.black.getter();
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  v86 = Color.init(uiColor:)();
  v87 = v49;
  sub_1000B42E0(v49, v68, v77);
  v88 = v129;
  v89 = swift_allocObject();
  sub_1000B3678(v68, v89 + v88, v80);
  *&v84[v12[7]] = v85;
  *&v84[v12[8]] = v86;
  v84[v12[9]] = 0;
  v90 = &v84[v12[10]];
  *v90 = sub_1000B376C;
  v90[1] = v89;
  v91 = v87;
  v92 = &v84[v12[11]];
  v163 = 0;
  State.init(wrappedValue:)();
  v93 = v165;
  *v92 = v164;
  *(v92 + 1) = v93;
  v94 = v134;
  v95 = v91 + *(v134 + 60);
  v96 = *v95;
  v97 = *(v95 + 8);
  v164 = *v95;
  v165 = v97;
  State.wrappedValue.getter();
  if (v163)
  {
    v98 = 0.0;
  }

  else
  {
    v98 = 150.0;
  }

  v99 = v84;
  v100 = v148;
  sub_1000B3678(v99, v148, v135);
  v101 = v100 + *(v157 + 44);
  *v101 = 0;
  *(v101 + 8) = v98;
  v102 = v91 + *(v94 + 80);
  v103 = *v102;
  v104 = *(v102 + 8);
  v164 = v103;
  v165 = v104;
  State.wrappedValue.getter();
  if (v163)
  {
    v105 = 1.0;
  }

  else
  {
    v105 = 0.0;
  }

  v106 = v100;
  v107 = v147;
  sub_10002C7C4(v106, v147, &qword_1001150C0, &qword_1000D22C8);
  *(v107 + *(v159 + 44)) = v105;
  v164 = v96;
  v165 = v97;
  State.wrappedValue.getter();
  v108 = v146;
  if (!v163)
  {
    v41 = 0.8;
  }

  static UnitPoint.center.getter();
  v110 = v109;
  v112 = v111;
  sub_10002C7C4(v107, v108, &qword_1001150C8, &qword_1000D22D0);
  v113 = v108 + *(v158 + 44);
  *v113 = v41;
  *(v113 + 8) = v41;
  *(v113 + 16) = v110;
  *(v113 + 24) = v112;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v114 = qword_10011F788;
  v115 = v150;
  sub_10002C7C4(v108, v150, &qword_1001150D0, &qword_1000D22D8);
  *(v115 + *(v160 + 36)) = v114;
  v116 = v91;
  v117 = v155;
  sub_1000B42E0(v116, v155, type metadata accessor for LinearTimerTimelineCountdown);
  v118 = swift_allocObject();
  sub_1000B3678(v117, v118 + v88, type metadata accessor for LinearTimerTimelineCountdown);
  v119 = v149;
  sub_10002C7C4(v115, v149, &qword_1001150D8, &qword_1000D22E0);
  v120 = (v119 + *(v161 + 36));
  *v120 = sub_1000B3784;
  v120[1] = v118;
  v120[2] = 0;
  v120[3] = 0;
  v121 = v151;
  sub_10002C7C4(v119, v151, &qword_1001150E0, &qword_1000D22E8);
  v122 = v156;
  v123 = v152;
  sub_10002CFC4(v156, v152, &qword_1001150E0, &qword_1000D22E8);
  v124 = v153;
  sub_10002CFC4(v121, v153, &qword_1001150E0, &qword_1000D22E8);
  v125 = v154;
  sub_10002CFC4(v123, v154, &qword_1001150E0, &qword_1000D22E8);
  v126 = sub_1000032D4(&qword_100119228, &unk_1000D7298);
  v127 = v125 + *(v126 + 48);
  *v127 = 0x4038000000000000;
  *(v127 + 8) = 0;
  sub_10002CFC4(v124, v125 + *(v126 + 64), &qword_1001150E0, &qword_1000D22E8);

  sub_10002D02C(v121, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v122, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v124, &qword_1001150E0, &qword_1000D22E8);
  return sub_10002D02C(v123, &qword_1001150E0, &qword_1000D22E8);
}

uint64_t sub_1000AEA18(uint64_t a1)
{
  if (qword_100113728 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F760);
  withAnimation<A>(_:_:)();
  if (qword_100113730 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F768);
  return withAnimation<A>(_:_:)();
}

double sub_1000AEB4C(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

double sub_1000AEBC8(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_1000AEC44(uint64_t a1)
{
  if (qword_100113738 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F770);
  withAnimation<A>(_:_:)();
  if (qword_100113740 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F778);
  return withAnimation<A>(_:_:)();
}

double sub_1000AED78(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

double sub_1000AEDF4(uint64_t a1)
{
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_1000AEE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>)
{
  v481 = a1;
  v435 = a2;
  v6 = sub_1000032D4(&qword_100119328, &qword_1000D7460);
  __chkstk_darwin(v6 - 8);
  v426 = (&v375 - v7);
  v425 = sub_1000032D4(&qword_100119330, &qword_1000D7468);
  __chkstk_darwin(v425);
  v427 = &v375 - v8;
  v429 = sub_1000032D4(&qword_100119338, &qword_1000D7470);
  __chkstk_darwin(v429);
  v430 = (&v375 - v9);
  v10 = sub_1000032D4(&qword_100119340, &qword_1000D7478);
  v433 = *(v10 - 8);
  v434 = v10;
  v11 = __chkstk_darwin(v10);
  v432 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v431 = &v375 - v13;
  v417 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v419 = *(v417 - 8);
  __chkstk_darwin(v417);
  v420 = v14;
  v421 = &v375 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = sub_1000032D4(&qword_100119348, &qword_1000D7480);
  __chkstk_darwin(v418);
  v422 = &v375 - v15;
  v424 = sub_1000032D4(&qword_100119350, &qword_1000D7488);
  v16 = __chkstk_darwin(v424);
  v428 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v423 = &v375 - v19;
  __chkstk_darwin(v18);
  v470 = &v375 - v20;
  v468 = type metadata accessor for Color.RGBColorSpace();
  v477 = *(v468 - 8);
  __chkstk_darwin(v468);
  v467 = &v375 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = type metadata accessor for DynamicTypeSize();
  v483 = *(v480 - 8);
  __chkstk_darwin(v480);
  v479 = &v375 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = type metadata accessor for Font._StylisticAlternative();
  v473 = *(v450 - 8);
  __chkstk_darwin(v450);
  v448 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v475 = *(v462 - 8);
  v24 = __chkstk_darwin(v462);
  v411 = &v375 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v393 = &v375 - v26;
  v456 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  v27 = __chkstk_darwin(v456);
  v413 = &v375 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v395 = &v375 - v29;
  v458 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  v30 = __chkstk_darwin(v458);
  v415 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  *&v398 = &v375 - v32;
  v460 = sub_1000032D4(&qword_100119230, &qword_1000D72A8);
  v33 = __chkstk_darwin(v460);
  v414 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v397 = &v375 - v35;
  v459 = sub_1000032D4(&qword_100119238, &qword_1000D72B0);
  v36 = __chkstk_darwin(v459);
  v410 = &v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v396 = &v375 - v38;
  v457 = sub_1000032D4(&qword_100119240, &qword_1000D72B8);
  v39 = __chkstk_darwin(v457);
  v408 = &v375 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v391 = &v375 - v41;
  v454 = sub_1000032D4(&qword_100119248, &qword_1000D72C0);
  v42 = __chkstk_darwin(v454);
  v409 = &v375 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v392 = &v375 - v44;
  v455 = sub_1000032D4(&qword_100119358, &qword_1000D7490);
  v45 = __chkstk_darwin(v455);
  v407 = &v375 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v390 = &v375 - v47;
  v453 = sub_1000032D4(&qword_100119360, &qword_1000D7498);
  v48 = __chkstk_darwin(v453);
  v406 = &v375 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v412 = &v375 - v51;
  v52 = __chkstk_darwin(v50);
  v461 = &v375 - v53;
  v54 = __chkstk_darwin(v52);
  v386 = &v375 - v55;
  __chkstk_darwin(v54);
  v394 = &v375 - v56;
  v441 = sub_1000032D4(&qword_100119270, &qword_1000D72E8);
  v472 = *(v441 - 8);
  v57 = __chkstk_darwin(v441);
  v402 = &v375 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v375 - v59;
  v439 = sub_1000032D4(&qword_100119278, &qword_1000D72F0);
  v61 = __chkstk_darwin(v439);
  v403 = &v375 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v64 = &v375 - v63;
  v440 = sub_1000032D4(&qword_100119368, &qword_1000D74A0);
  v65 = __chkstk_darwin(v440);
  v401 = &v375 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v446 = &v375 - v68;
  v69 = __chkstk_darwin(v67);
  v447 = &v375 - v70;
  v71 = __chkstk_darwin(v69);
  v73 = &v375 - v72;
  __chkstk_darwin(v71);
  v436 = &v375 - v74;
  v75 = sub_1000032D4(&qword_100119370, &qword_1000D74A8);
  v76 = __chkstk_darwin(v75 - 8);
  v474 = (&v375 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v76);
  v471 = (&v375 - v78);
  v449 = sub_1000032D4(&qword_100119378, &qword_1000D74B0);
  v79 = __chkstk_darwin(v449);
  v404 = &v375 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v405 = &v375 - v82;
  v83 = __chkstk_darwin(v81);
  v452 = &v375 - v84;
  v85 = __chkstk_darwin(v83);
  v385 = &v375 - v86;
  __chkstk_darwin(v85);
  v389 = &v375 - v87;
  v451 = sub_1000032D4(&qword_100119380, &qword_1000D74B8);
  v88 = __chkstk_darwin(v451);
  v465 = (&v375 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = __chkstk_darwin(v88);
  v463 = &v375 - v91;
  __chkstk_darwin(v90);
  v93 = &v375 - v92;
  v466 = type metadata accessor for Date();
  v476 = *(v466 - 8);
  v94 = __chkstk_darwin(v466);
  v96 = &v375 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v98 = &v375 - v97;
  v99 = sub_1000032D4(&qword_100119388, &qword_1000D74C0);
  v100 = __chkstk_darwin(v99 - 8);
  v469 = &v375 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __chkstk_darwin(v100);
  v416 = &v375 - v103;
  v104 = __chkstk_darwin(v102);
  v399 = &v375 - v105;
  __chkstk_darwin(v104);
  v478 = &v375 - v106;
  v438 = v98;
  static Date.now.getter();
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  v107 = Color.init(uiColor:)();
  [objc_allocWithZone(UIColor) initWithRed:0.831372549 green:0.431372549 blue:0.0 alpha:1.0];
  v108 = Color.init(uiColor:)();
  v437 = static Color.black.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v523[0] = v107;
  v109 = qword_100113750;
  v387 = v107;

  if (v109 != -1)
  {
    swift_once();
  }

  v464 = v96;
  v482 = qword_10011F790;
  *v93 = qword_10011F790;
  *(v93 + 1) = 0;
  v400 = v93;
  v93[16] = 1;
  v110 = v481;
  sub_1000AB0C8();
  v112 = v111;
  v113 = static HorizontalAlignment.trailing.getter();
  v114 = v471;
  *v471 = v113;
  v114[1] = 0xC034000000000000;
  *(v114 + 16) = 0;
  v379 = v108;
  sub_1000AD59C(v110, v108);
  static Alignment.trailing.getter();
  v388 = a3 * 0.5 - a4;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v115 = *(v472 + 32);
  v472 += 32;
  v384 = v115;
  v115(v64, v60, v441);
  v116 = &v64[*(v439 + 36)];
  v117 = v530;
  *(v116 + 4) = v529;
  *(v116 + 5) = v117;
  *(v116 + 6) = v531;
  v118 = v526;
  *v116 = v525;
  *(v116 + 1) = v118;
  v119 = v528;
  *(v116 + 2) = v527;
  *(v116 + 3) = v119;
  KeyPath = swift_getKeyPath();
  sub_10002C7C4(v64, v73, &qword_100119278, &qword_1000D72F0);
  v121 = &v73[*(v440 + 36)];
  *v121 = KeyPath;
  v121[8] = 2;
  sub_10002C7C4(v73, v436, &qword_100119368, &qword_1000D74A0);
  v375 = sub_1000B3F50(v112);

  sub_1000B20F0(v110, v438);
  *&v515 = v122;
  *(&v515 + 1) = v123;
  v383 = sub_100025FB4();
  v124 = Text.init<A>(_:)();
  v126 = v125;
  v128 = v127;
  Font.monospacedDigit()();
  v129 = v473;
  v130 = *(v473 + 104);
  v131 = v448;
  v381 = enum case for Font._StylisticAlternative.three(_:);
  v132 = v450;
  v382 = v473 + 104;
  v380 = v130;
  v130(v448);
  Font._stylisticAlternative(_:)();

  v133 = *(v129 + 8);
  v473 = v129 + 8;
  v378 = v133;
  v133(v131, v132);
  v134 = Text.font(_:)();
  v136 = v135;
  LOBYTE(v131) = v137;
  v139 = v138;

  sub_100025B0C(v124, v126, v128 & 1);

  *&v515 = v134;
  *(&v515 + 1) = v136;
  LOBYTE(KeyPath) = v131 & 1;
  LOBYTE(v516) = v131 & 1;
  *(&v516 + 1) = v139;
  v140 = v483;
  v141 = *(v483 + 104);
  v142 = v479;
  v444 = enum case for DynamicTypeSize.large(_:);
  v143 = v480;
  v445 = v483 + 104;
  v443 = v141;
  v141(v479);
  v144 = v393;
  View.dynamicTypeSize(_:)();
  v145 = *(v140 + 8);
  v483 = v140 + 8;
  v442 = v145;
  v145(v142, v143);
  sub_100025B0C(v134, v136, KeyPath);

  static Alignment.bottomTrailing.getter();
  v377 = sub_1000032D4(&qword_100119390, &qword_1000D74F8);
  v146 = v471 + *(v377 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v147 = *(v475 + 32);
  v148 = v395;
  v475 += 32;
  v393 = v147;
  (v147)(v395, v144, v462);
  v149 = &v148[*(v456 + 36)];
  v150 = v535;
  v151 = v537;
  *(v149 + 4) = v536;
  *(v149 + 5) = v151;
  *(v149 + 6) = v538;
  v152 = v533;
  *v149 = v532;
  *(v149 + 1) = v152;
  *(v149 + 2) = v534;
  *(v149 + 3) = v150;
  v153 = swift_getKeyPath();
  v154 = v148;
  v155 = v398;
  sub_10002C7C4(v154, *&v398, &qword_100114AF0, &qword_1000D1E58);
  v156 = (*&v155 + *(v458 + 36));
  v157 = v437;
  *v156 = v153;
  v156[1] = v157;
  v158 = *(v477 + 104);
  LODWORD(v395) = enum case for Color.RGBColorSpace.sRGBLinear(_:);
  v477 += 104;
  v376 = v158;
  v158(v467);

  v159 = Color.init(_:white:opacity:)();

  v160 = *&v155;
  v161 = v397;
  sub_10002C7C4(v160, v397, &qword_100114AF8, &qword_1000D1E60);
  v162 = (v161 + *(v460 + 36));
  *v162 = v159;
  v162[1] = 0x3FF0000000000000;
  v162[2] = 0;
  v162[3] = 0;
  v163 = swift_getKeyPath();
  v164 = v161;
  v165 = v396;
  sub_10002C7C4(v164, v396, &qword_100119230, &qword_1000D72A8);
  v166 = v165 + *(v459 + 36);
  *v166 = v163;
  *(v166 + 8) = 1;
  *(v166 + 16) = 0;
  v167 = swift_getKeyPath();
  v168 = v165;
  v169 = v391;
  sub_10002C7C4(v168, v391, &qword_100119238, &qword_1000D72B0);
  v170 = v169 + *(v457 + 36);
  *v170 = v167;
  *(v170 + 8) = 1;
  v171 = swift_getKeyPath();
  v172 = v169;
  v173 = v392;
  sub_10002C7C4(v172, v392, &qword_100119240, &qword_1000D72B8);
  v174 = (v173 + *(v454 + 36));
  *v174 = v171;
  v174[1] = 0x3FE6666666666666;
  static Alignment.center.getter();
  v398 = a3 * 0.5;
  _FrameLayout.init(width:height:alignment:)();
  v175 = v390;
  sub_10002C7C4(v173, v390, &qword_100119248, &qword_1000D72C0);
  v176 = (v175 + *(v455 + 36));
  v177 = v540;
  *v176 = v539;
  v176[1] = v177;
  v176[2] = v541;
  v178 = v175;
  v179 = v386;
  sub_10002C7C4(v178, v386, &qword_100119358, &qword_1000D7490);
  v180 = (v179 + *(v453 + 36));
  *v180 = v482;
  v180[1] = sub_1000B20C8;
  v180[2] = 0;
  v181 = v394;
  sub_10002C7C4(v179, v394, &qword_100119360, &qword_1000D7498);
  v182 = v436;
  v183 = v447;
  sub_10002CFC4(v436, v447, &qword_100119368, &qword_1000D74A0);
  v184 = v461;
  sub_10002CFC4(v181, v461, &qword_100119360, &qword_1000D7498);
  sub_10002CFC4(v183, v146, &qword_100119368, &qword_1000D74A0);
  v397 = sub_1000032D4(&qword_100119398, &qword_1000D7500);
  sub_10002CFC4(v184, v146 + *(v397 + 48), &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v181, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v182, &qword_100119368, &qword_1000D74A0);
  sub_10002D02C(v184, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v183, &qword_100119368, &qword_1000D74A0);
  LOBYTE(v182) = static Edge.Set.bottom.getter();
  v185 = v482;
  v186 = v471;
  v436 = sub_1000032D4(&qword_1001193A0, &qword_1000D7508);
  v187 = v400;
  v188 = &v400[*(v436 + 44)];
  EdgeInsets.init(_all:)();
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v196 = v195;
  v197 = v385;
  sub_10002C7C4(v186, v385, &qword_100119370, &qword_1000D74A8);
  v198 = v197 + *(v449 + 36);
  *v198 = v182;
  *(v198 + 8) = v190;
  *(v198 + 16) = v192;
  *(v198 + 24) = v194;
  *(v198 + 32) = v196;
  *(v198 + 40) = 0;
  v199 = v389;
  sub_10002C7C4(v197, v389, &qword_100119378, &qword_1000D74B0);
  v200 = v452;
  sub_10002CFC4(v199, v452, &qword_100119378, &qword_1000D74B0);
  *v188 = 0;
  v188[8] = 1;
  v396 = sub_1000032D4(&qword_1001193A8, &qword_1000D7510);
  sub_10002CFC4(v200, &v188[*(v396 + 48)], &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v199, &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v200, &qword_100119378, &qword_1000D74B0);
  LOBYTE(v182) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v201 = v187 + *(v451 + 36);
  *v201 = v182;
  *(v201 + 8) = v202;
  *(v201 + 16) = v203;
  *(v201 + 24) = v204;
  *(v201 + 32) = v205;
  *(v201 + 40) = 0;
  v509 = v523[4];
  v510 = v523[5];
  v511 = v523[6];
  v512 = v524;
  v505 = v523[0];
  v506 = v523[1];
  v507 = v523[2];
  v508 = v523[3];
  v206 = v463;
  sub_10002CFC4(v187, v463, &qword_100119380, &qword_1000D74B8);
  v207 = v509;
  v208 = v510;
  v513[4] = v509;
  v513[5] = v510;
  v209 = v511;
  v513[6] = v511;
  v514 = v512;
  v210 = v505;
  v211 = v506;
  v513[0] = v505;
  v513[1] = v506;
  v212 = v507;
  v213 = v508;
  v513[2] = v507;
  v513[3] = v508;
  v214 = v399;
  *(v399 + 14) = v512;
  v214[5] = v208;
  v214[6] = v209;
  v214[3] = v213;
  v214[4] = v207;
  v214[1] = v211;
  v214[2] = v212;
  *v214 = v210;
  v394 = sub_1000032D4(&qword_1001193B0, &qword_1000D7518);
  sub_10002CFC4(v206, v214 + *(v394 + 48), &qword_100119380, &qword_1000D74B8);
  sub_10002CFC4(v523, &v515, &qword_1001193B8, &qword_1000D7520);
  sub_10002CFC4(v513, &v515, &qword_1001193B8, &qword_1000D7520);

  sub_10002D02C(v523, &qword_1001193B8, &qword_1000D7520);
  sub_10002D02C(v187, &qword_100119380, &qword_1000D74B8);
  sub_10002D02C(v206, &qword_100119380, &qword_1000D74B8);
  v519 = v509;
  v520 = v510;
  v521 = v511;
  v522 = v512;
  v515 = v505;
  v516 = v506;
  v517 = v507;
  v518 = v508;
  sub_10002D02C(&v515, &qword_1001193B8, &qword_1000D7520);
  v215 = *(v476 + 8);
  v216 = v438;
  v476 += 8;
  v438 = v215;
  v215(v216, v466);
  sub_10002C7C4(v214, v478, &qword_100119388, &qword_1000D74C0);
  v217 = v464;
  static Date.now.getter();
  v218 = static Color.black.getter();
  v219 = static Color.secondary.getter();
  v471 = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v503[0] = v218;
  v220 = v465;
  *v465 = v185;
  v220[1] = 0;
  *(v220 + 16) = 1;
  v437 = v218;

  v221 = v481;
  sub_1000AB0C8();
  v223 = v222;
  v224 = static HorizontalAlignment.trailing.getter();
  v225 = v474;
  *v474 = v224;
  v225[1] = 0xC034000000000000;
  *(v225 + 16) = 0;
  v226 = v402;
  v400 = v219;
  sub_1000AD59C(v221, v219);
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v227 = v403;
  v384(v403, v226, v441);
  v228 = &v227[*(v439 + 36)];
  v229 = v545;
  v230 = v547;
  *(v228 + 4) = v546;
  *(v228 + 5) = v230;
  *(v228 + 6) = v548;
  v231 = v543;
  *v228 = v542;
  *(v228 + 1) = v231;
  *(v228 + 2) = v544;
  *(v228 + 3) = v229;
  v232 = swift_getKeyPath();
  v233 = v227;
  v234 = v401;
  sub_10002C7C4(v233, v401, &qword_100119278, &qword_1000D72F0);
  v235 = v234 + *(v440 + 36);
  *v235 = v232;
  *(v235 + 8) = 2;
  sub_10002C7C4(v234, v446, &qword_100119368, &qword_1000D74A0);
  v472 = sub_1000B3F50(v223);

  sub_1000B20F0(v221, v217);
  *&v495 = v236;
  *(&v495 + 1) = v237;
  v238 = Text.init<A>(_:)();
  v240 = v239;
  LOBYTE(v234) = v241;
  Font.monospacedDigit()();
  v242 = v448;
  v243 = v450;
  v380(v448, v381, v450);
  Font._stylisticAlternative(_:)();

  v378(v242, v243);
  v244 = Text.font(_:)();
  v246 = v245;
  LOBYTE(v226) = v247;
  v249 = v248;

  sub_100025B0C(v238, v240, v234 & 1);

  *&v495 = v244;
  *(&v495 + 1) = v246;
  LOBYTE(v234) = v226 & 1;
  LOBYTE(v496) = v226 & 1;
  *(&v496 + 1) = v249;
  v250 = v479;
  v251 = v480;
  v443(v479, v444, v480);
  v252 = v411;
  View.dynamicTypeSize(_:)();
  v442(v250, v251);
  sub_100025B0C(v244, v246, v234);

  static Alignment.bottomTrailing.getter();
  v253 = v474 + *(v377 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v254 = v413;
  (v393)(v413, v252, v462);
  v255 = &v254[*(v456 + 36)];
  v256 = v552;
  v257 = v554;
  *(v255 + 4) = v553;
  *(v255 + 5) = v257;
  *(v255 + 6) = v555;
  v258 = v550;
  *v255 = v549;
  *(v255 + 1) = v258;
  *(v255 + 2) = v551;
  *(v255 + 3) = v256;
  v259 = swift_getKeyPath();
  v260 = v254;
  v261 = v415;
  sub_10002C7C4(v260, v415, &qword_100114AF0, &qword_1000D1E58);
  v262 = (v261 + *(v458 + 36));
  v263 = v471;
  *v262 = v259;
  v262[1] = v263;
  v376(v467, v395, v468);

  v264 = Color.init(_:white:opacity:)();

  v265 = v261;
  v266 = v414;
  sub_10002C7C4(v265, v414, &qword_100114AF8, &qword_1000D1E60);
  v267 = (v266 + *(v460 + 36));
  *v267 = v264;
  v267[1] = 0x3FF0000000000000;
  v267[2] = 0;
  v267[3] = 0;
  v268 = swift_getKeyPath();
  v269 = v266;
  v270 = v410;
  sub_10002C7C4(v269, v410, &qword_100119230, &qword_1000D72A8);
  v271 = v270 + *(v459 + 36);
  *v271 = v268;
  *(v271 + 8) = 1;
  *(v271 + 16) = 0;
  v272 = swift_getKeyPath();
  v273 = v270;
  v274 = v408;
  sub_10002C7C4(v273, v408, &qword_100119238, &qword_1000D72B0);
  v275 = v274 + *(v457 + 36);
  *v275 = v272;
  *(v275 + 8) = 1;
  v276 = swift_getKeyPath();
  v277 = v274;
  v278 = v409;
  sub_10002C7C4(v277, v409, &qword_100119240, &qword_1000D72B8);
  v279 = (v278 + *(v454 + 36));
  *v279 = v276;
  v279[1] = 0x3FE6666666666666;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v280 = v407;
  sub_10002C7C4(v278, v407, &qword_100119248, &qword_1000D72C0);
  v281 = (v280 + *(v455 + 36));
  v282 = v557;
  *v281 = v556;
  v281[1] = v282;
  v281[2] = v558;
  v283 = v406;
  sub_10002C7C4(v280, v406, &qword_100119358, &qword_1000D7490);
  v284 = (v283 + *(v453 + 36));
  *v284 = v482;
  v284[1] = sub_1000B20C8;
  v284[2] = 0;
  v285 = v412;
  sub_10002C7C4(v283, v412, &qword_100119360, &qword_1000D7498);
  v286 = v446;
  v287 = v447;
  sub_10002CFC4(v446, v447, &qword_100119368, &qword_1000D74A0);
  v288 = v461;
  sub_10002CFC4(v285, v461, &qword_100119360, &qword_1000D7498);
  sub_10002CFC4(v287, v253, &qword_100119368, &qword_1000D74A0);
  sub_10002CFC4(v288, v253 + *(v397 + 48), &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v285, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v286, &qword_100119368, &qword_1000D74A0);
  sub_10002D02C(v288, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v287, &qword_100119368, &qword_1000D74A0);
  LOBYTE(v253) = static Edge.Set.bottom.getter();
  v289 = v474;
  v290 = v465;
  v291 = v465 + *(v436 + 44);
  EdgeInsets.init(_all:)();
  v293 = v292;
  v295 = v294;
  v297 = v296;
  v299 = v298;
  v300 = v404;
  sub_10002C7C4(v289, v404, &qword_100119370, &qword_1000D74A8);
  v301 = v300 + *(v449 + 36);
  *v301 = v253;
  *(v301 + 8) = v293;
  *(v301 + 16) = v295;
  *(v301 + 24) = v297;
  *(v301 + 32) = v299;
  *(v301 + 40) = 0;
  v302 = v300;
  v303 = v405;
  sub_10002C7C4(v302, v405, &qword_100119378, &qword_1000D74B0);
  v304 = v452;
  sub_10002CFC4(v303, v452, &qword_100119378, &qword_1000D74B0);
  *v291 = 0;
  v291[8] = 1;
  sub_10002CFC4(v304, &v291[*(v396 + 48)], &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v303, &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v304, &qword_100119378, &qword_1000D74B0);
  LOBYTE(v253) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v305 = v290 + *(v451 + 36);
  *v305 = v253;
  *(v305 + 8) = v306;
  *(v305 + 16) = v307;
  *(v305 + 24) = v308;
  *(v305 + 32) = v309;
  *(v305 + 40) = 0;
  v489 = v503[4];
  v490 = v503[5];
  v491 = v503[6];
  v492 = v504;
  v485 = v503[0];
  v486 = v503[1];
  v487 = v503[2];
  v488 = v503[3];
  v310 = v463;
  sub_10002CFC4(v290, v463, &qword_100119380, &qword_1000D74B8);
  v311 = v489;
  v312 = v490;
  v493[4] = v489;
  v493[5] = v490;
  v313 = v491;
  v493[6] = v491;
  v494 = v492;
  v314 = v485;
  v315 = v486;
  v493[0] = v485;
  v493[1] = v486;
  v316 = v487;
  v317 = v488;
  v493[2] = v487;
  v493[3] = v488;
  v318 = v416;
  *(v416 + 14) = v492;
  v318[5] = v312;
  v318[6] = v313;
  v318[3] = v317;
  v318[4] = v311;
  v318[1] = v315;
  v318[2] = v316;
  *v318 = v314;
  sub_10002CFC4(v310, v318 + *(v394 + 48), &qword_100119380, &qword_1000D74B8);
  sub_10002CFC4(v503, &v495, &qword_1001193B8, &qword_1000D7520);
  sub_10002CFC4(v493, &v495, &qword_1001193B8, &qword_1000D7520);

  sub_10002D02C(v503, &qword_1001193B8, &qword_1000D7520);
  sub_10002D02C(v290, &qword_100119380, &qword_1000D74B8);
  sub_10002D02C(v310, &qword_100119380, &qword_1000D74B8);
  v499 = v489;
  v500 = v490;
  v501 = v491;
  v502 = v492;
  v495 = v485;
  v496 = v486;
  v497 = v487;
  v498 = v488;
  sub_10002D02C(&v495, &qword_1001193B8, &qword_1000D7520);
  v438(v464, v466);
  v319 = v481;
  v320 = (v481 + *(v417 + 32));
  v321 = *v320;
  v322 = v320[1];
  *&v559 = v321;
  *(&v559 + 1) = v322;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  v323 = v484 * a3;
  v324 = v422;
  sub_10002C7C4(v318, v422, &qword_100119388, &qword_1000D74C0);
  v325 = v324 + *(v418 + 36);
  *v325 = v323;
  *(v325 + 8) = 0;
  *(v325 + 16) = 256;
  v326 = v421;
  sub_1000B42E0(v319, v421, type metadata accessor for LinearTimerTimelineCountdown);
  v327 = (*(v419 + 80) + 16) & ~*(v419 + 80);
  v328 = swift_allocObject();
  sub_1000B3678(v326, v328 + v327, type metadata accessor for LinearTimerTimelineCountdown);
  if (qword_100113618 != -1)
  {
    swift_once();
  }

  *&v559 = qword_10011F4F0;
  type metadata accessor for DisplayLink();
  sub_1000B4348(&qword_1001193C0, type metadata accessor for DisplayLink, &unk_1000D4A70);
  v329 = Publisher.eraseToAnyPublisher()();
  v330 = v423;
  sub_10002C7C4(v324, v423, &qword_100119348, &qword_1000D7480);
  v331 = swift_allocObject();
  *(v331 + 16) = sub_1000B40A8;
  *(v331 + 24) = v328;
  v332 = v424;
  *(v330 + *(v424 + 52)) = v329;
  v333 = (v330 + *(v332 + 56));
  *v333 = sub_1000B4158;
  v333[1] = v331;
  v334 = v470;
  sub_10002C7C4(v330, v470, &qword_100119350, &qword_1000D7488);
  v335 = v430;
  v336 = v482;
  *v430 = v482;
  *(v335 + 8) = 0;
  *(v335 + 16) = 1;
  v337 = static VerticalAlignment.center.getter();
  v338 = v426;
  *v426 = v337;
  v338[1] = 0x4034000000000000;
  *(v338 + 16) = 0;
  v339 = sub_1000032D4(&qword_1001193C8, &qword_1000D7528);
  sub_1000B2760(v319, v338 + *(v339 + 44));
  static Alignment.bottomLeading.getter();
  v340 = v335 + *(sub_1000032D4(&qword_1001193D0, &qword_1000D7530) + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v341 = v338;
  v342 = v427;
  sub_10002C7C4(v341, v427, &qword_100119328, &qword_1000D7460);
  v343 = (v342 + *(v425 + 36));
  v344 = v562;
  v345 = v564;
  v343[4] = v563;
  v343[5] = v345;
  v343[6] = v565;
  v346 = v560;
  *v343 = v559;
  v343[1] = v346;
  v343[2] = v561;
  v343[3] = v344;
  sub_10002C7C4(v342, v340, &qword_100119330, &qword_1000D7468);
  v347 = (v340 + *(sub_1000032D4(&qword_1001193D8, &qword_1000D7538) + 36));
  *v347 = v336;
  v347[1] = sub_1000B2024;
  v347[2] = 0;
  LOBYTE(v340) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v349 = v348;
  v351 = v350;
  v353 = v352;
  v355 = v354;
  v356 = v335 + *(sub_1000032D4(&qword_1001193E0, &qword_1000D7540) + 36);
  *v356 = v340;
  *(v356 + 8) = v349;
  *(v356 + 16) = v351;
  *(v356 + 24) = v353;
  *(v356 + 32) = v355;
  *(v356 + 40) = 0;
  LOBYTE(v340) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v357 = v335 + *(v429 + 36);
  *v357 = v340;
  *(v357 + 8) = v358;
  *(v357 + 16) = v359;
  *(v357 + 24) = v360;
  *(v357 + 32) = v361;
  *(v357 + 40) = 0;
  v362 = v479;
  v363 = v480;
  v443(v479, v444, v480);
  sub_1000B4184();
  v364 = v431;
  View.dynamicTypeSize(_:)();
  v442(v362, v363);
  sub_10002D02C(v335, &qword_100119338, &qword_1000D7470);
  v365 = v469;
  sub_10002CFC4(v478, v469, &qword_100119388, &qword_1000D74C0);
  v366 = v428;
  sub_10002CFC4(v334, v428, &qword_100119350, &qword_1000D7488);
  v368 = v432;
  v367 = v433;
  v369 = *(v433 + 16);
  v370 = v434;
  v369(v432, v364, v434);
  v371 = v435;
  sub_10002CFC4(v365, v435, &qword_100119388, &qword_1000D74C0);
  v372 = sub_1000032D4(&qword_100119408, &qword_1000D7550);
  sub_10002CFC4(v366, v371 + *(v372 + 48), &qword_100119350, &qword_1000D7488);
  v369((v371 + *(v372 + 64)), v368, v370);
  v373 = *(v367 + 8);
  v373(v364, v370);
  sub_10002D02C(v470, &qword_100119350, &qword_1000D7488);
  sub_10002D02C(v478, &qword_100119388, &qword_1000D74C0);
  v373(v368, v370);
  sub_10002D02C(v366, &qword_100119350, &qword_1000D7488);
  return sub_10002D02C(v469, &qword_100119388, &qword_1000D74C0);
}

void sub_1000B1B3C(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for AlarmPresentationState.Mode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlarmPresentationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OpaqueAlarm(0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v39 - v17);
  sub_1000B42E0(a1, &v39 - v17, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v18, type metadata accessor for OpaqueAlarm);
      return;
    }

    v42 = v6;
    v23 = *v18;
    v24 = [*v18 state];

    if (v24 != 3)
    {
      return;
    }
  }

  else
  {
    v40 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v41 = a1;
    (*(v10 + 32))(v12, v18, v9);
    v20 = v6;
    AlarmPresentationState.mode.getter();
    v21 = AlarmPresentationState.Mode.isCountingDown.getter();
    v42 = v20;
    (*(v20 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    v22 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    a1 = v41;
    (*(*(v22 - 8) + 8))(v18 + v40, v22);
    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  sub_1000B42E0(a1, v16, type metadata accessor for OpaqueAlarm);
  v25 = swift_getEnumCaseMultiPayload();
  if (!v25)
  {
    v26 = a1;
    v27 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v10 + 32))(v12, v16, v9);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v29 = v28;
    (*(v42 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    v30 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v31 = v16 + v27;
    a1 = v26;
    (*(*(v30 - 8) + 8))(v31, v30);
    if (v29 == 0.0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v25 == 1)
  {
    sub_1000B4390(v16, type metadata accessor for OpaqueAlarm);
    return;
  }

  v36 = *v16;
  [*v16 duration];
  v38 = v37;

  if (v38 != 0.0)
  {
LABEL_11:
    v32 = a3 / sub_10008AEC0();
    v33 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown(0) + 32));
    v35 = v33[1];
    v46 = *v33;
    v34 = v46;
    v47 = v35;

    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    v43 = v32 + v48;
    v44 = v34;
    v45 = v35;
    State.wrappedValue.setter();
  }
}

void sub_1000B204C(uint64_t a1)
{
  sub_10008AB30();
  type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.setter();
}

void sub_1000B20F0(uint64_t a1, uint64_t a2)
{
  v26[1] = a2;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10008B160() & 1) != 0 || (sub_100088B60())
  {
    sub_100089408(v11);
    v16 = *(v13 + 48);
    if (v16(v11, 1, v12) == 1)
    {
      static Date.now.getter();
      if (v16(v11, 1, v12) != 1)
      {
        sub_10002D02C(v11, &qword_100115E40, &unk_1000D1280);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
    }

    static Locale.current.getter();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v20.i64[0] = v18;
    v21 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v20);

    if (v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v8, v2);
      (*(v13 + 8))(v15, v12);
      return;
    }

    __break(1u);
  }

  else
  {
    v22 = sub_1000AB604();
    static Locale.current.getter();
    v23 = Locale._bridgeToObjectiveC()().super.isa;
    *v24.i64 = v22;
    v25 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, v23, v24);

    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v6, v2);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000B2488@<X0>(uint64_t *a2@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  if (sub_100088B60())
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
    if (qword_1001136F8 != -1)
    {
      swift_once();
    }

    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Color.secondary.getter();
  v10 = Text.foregroundColor(_:)();
  v32 = v11;
  v31 = v12;

  sub_100025B0C(v5, v7, v9 & 1);

  sub_1000890A8();
  sub_100025FB4();
  StringProtocol.localizedUppercase.getter();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;
  sub_100025B0C(v13, v15, v17 & 1);

  v23 = static Text.+ infix(_:_:)();
  v25 = v24;
  v27 = v26;
  v30 = v28;
  sub_100025B0C(v18, v20, v22 & 1);

  sub_100025B0C(v10, v32, v31 & 1);

  *a2 = v23;
  a2[1] = v25;
  *(a2 + 16) = v27 & 1;
  a2[3] = v30;
  return result;
}

uint64_t sub_1000B2760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = sub_1000032D4(&qword_100119410, &qword_1000D7558);
  __chkstk_darwin(v56);
  v4 = &v54 - v3;
  v5 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for MediumActionButton(0);
  v8 = __chkstk_darwin(v7);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_1000032D4(&qword_100119418, &qword_1000D7560);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v59 = a1;
  if (sub_10008B160())
  {
    v54 = static Color.white.getter();
    if (qword_100113758 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Material();
    v19 = sub_10002D08C(v18, qword_10011F798);
    (*(*(v18 - 8) + 16))(&v11[v7[6]], v19, v18);
    if (qword_100113768 != -1)
    {
      swift_once();
    }

    v62 = xmmword_10011F7F0;
    v63 = unk_10011F800;
    v64 = xmmword_10011F810;
    v60 = xmmword_10011F7D0;
    v61 = unk_10011F7E0;
    v20 = v7[8];
    v21 = enum case for BlendMode.screen(_:);
    v22 = type metadata accessor for BlendMode();
    (*(*(v22 - 8) + 104))(&v11[v20], v21, v22);
    sub_1000B42E0(v59, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
    v23 = *(v55 + 80);
    v24 = swift_allocObject();
    sub_1000B3678(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + ((v23 + 16) & ~v23), type metadata accessor for LinearTimerTimelineCountdown);
    *v11 = 0x69662E6573756170;
    *(v11 + 1) = 0xEA00000000006C6CLL;
    *(v11 + 2) = v54;
    v25 = &v11[v7[7]];
    v26 = v64;
    v25[3] = v63;
    v25[4] = v26;
    v27 = v62;
    v25[1] = v61;
    v25[2] = v27;
    *v25 = v60;
    v11[v7[9]] = 0;
    v28 = &v11[v7[10]];
    *v28 = sub_1000B46B8;
    v28[1] = v24;
    sub_1000B42E0(v11, v4, type metadata accessor for MediumActionButton);
    swift_storeEnumTagMultiPayload();
    sub_1000B4348(&qword_100115260, type metadata accessor for MediumActionButton, &unk_1000D6F28);
    _ConditionalContent<>.init(storage:)();
    sub_1000B4390(v11, type metadata accessor for MediumActionButton);
  }

  else
  {
    v54 = static Color.white.getter();
    if (qword_100113758 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Material();
    v30 = sub_10002D08C(v29, qword_10011F798);
    (*(*(v29 - 8) + 16))(&v11[v7[6]], v30, v29);
    if (qword_100113768 != -1)
    {
      swift_once();
    }

    v62 = xmmword_10011F7F0;
    v63 = unk_10011F800;
    v64 = xmmword_10011F810;
    v60 = xmmword_10011F7D0;
    v61 = unk_10011F7E0;
    v31 = v7[8];
    v32 = enum case for BlendMode.screen(_:);
    v33 = type metadata accessor for BlendMode();
    (*(*(v33 - 8) + 104))(&v11[v31], v32, v33);
    sub_1000B42E0(v59, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
    v23 = *(v55 + 80);
    v34 = swift_allocObject();
    sub_1000B3678(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + ((v23 + 16) & ~v23), type metadata accessor for LinearTimerTimelineCountdown);
    *v11 = 0x6C69662E79616C70;
    *(v11 + 1) = 0xE90000000000006CLL;
    *(v11 + 2) = v54;
    v35 = &v11[v7[7]];
    v36 = v64;
    v35[3] = v63;
    v35[4] = v36;
    v37 = v62;
    v35[1] = v61;
    v35[2] = v37;
    *v35 = v60;
    v11[v7[9]] = 0;
    v38 = &v11[v7[10]];
    *v38 = sub_1000B42C8;
    v38[1] = v34;
    sub_1000B42E0(v11, v4, type metadata accessor for MediumActionButton);
    swift_storeEnumTagMultiPayload();
    sub_1000B4348(&qword_100115260, type metadata accessor for MediumActionButton, &unk_1000D6F28);
    _ConditionalContent<>.init(storage:)();
    sub_1000B4390(v11, type metadata accessor for MediumActionButton);
  }

  v39 = static Color.white.getter();
  if (qword_100113760 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Material();
  v41 = sub_10002D08C(v40, qword_10011F7B0);
  (*(*(v40 - 8) + 16))(&v11[v7[6]], v41, v40);
  if (qword_100113770 != -1)
  {
    swift_once();
  }

  v62 = xmmword_10011F840;
  v63 = unk_10011F850;
  v64 = xmmword_10011F860;
  v60 = xmmword_10011F820;
  v61 = *algn_10011F830;
  v42 = v7[8];
  v43 = enum case for BlendMode.sourceAtop(_:);
  v44 = type metadata accessor for BlendMode();
  (*(*(v44 - 8) + 104))(&v11[v42], v43, v44);
  sub_1000B42E0(v59, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinearTimerTimelineCountdown);
  v45 = swift_allocObject();
  sub_1000B3678(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + ((v23 + 16) & ~v23), type metadata accessor for LinearTimerTimelineCountdown);
  *v11 = 0x6B72616D78;
  *(v11 + 1) = 0xE500000000000000;
  *(v11 + 2) = v39;
  v46 = &v11[v7[7]];
  v47 = v64;
  v46[3] = v63;
  v46[4] = v47;
  v48 = v62;
  v46[1] = v61;
  v46[2] = v48;
  *v46 = v60;
  v11[v7[9]] = 1;
  v49 = &v11[v7[10]];
  *v49 = sub_1000B43F0;
  v49[1] = v45;
  sub_10002CFC4(v17, v15, &qword_100119418, &qword_1000D7560);
  v50 = v57;
  sub_1000B42E0(v11, v57, type metadata accessor for MediumActionButton);
  v51 = v58;
  sub_10002CFC4(v15, v58, &qword_100119418, &qword_1000D7560);
  v52 = sub_1000032D4(&qword_100119420, &qword_1000D7568);
  sub_1000B42E0(v50, v51 + *(v52 + 48), type metadata accessor for MediumActionButton);
  sub_1000B4390(v11, type metadata accessor for MediumActionButton);
  sub_10002D02C(v17, &qword_100119418, &qword_1000D7560);
  sub_1000B4390(v50, type metadata accessor for MediumActionButton);
  return sub_10002D02C(v15, &qword_100119418, &qword_1000D7560);
}

uint64_t sub_1000B3140(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for LinearTimerTimelineCountdown(0);
  sub_100025B1C((a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 24));
  v5 = sub_100088DE4();
  a2(v5);
}

uint64_t sub_1000B31B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B42E0(v3, v7, type metadata accessor for LinearTimerTimelineCountdown);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000B3678(v7, v9 + v8, type metadata accessor for LinearTimerTimelineCountdown);
  sub_1000B42E0(v3, v7, type metadata accessor for LinearTimerTimelineCountdown);
  v10 = swift_allocObject();
  result = sub_1000B3678(v7, v10 + v8, type metadata accessor for LinearTimerTimelineCountdown);
  *a2 = sub_1000B333C;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_1000B33BC;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_1000B333C(uint64_t a1)
{
  v3 = *(type metadata accessor for LinearTimerTimelineCountdown(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000AB8CC(a1, v4);
}

unint64_t sub_1000B33D4()
{
  result = qword_1001191A0;
  if (!qword_1001191A0)
  {
    sub_10001C820(&qword_100119190, &qword_1000D7210);
    sub_1000B3460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191A0);
  }

  return result;
}

unint64_t sub_1000B3460()
{
  result = qword_1001191A8;
  if (!qword_1001191A8)
  {
    sub_10001C820(&qword_1001191B0, &qword_1000D7220);
    sub_10002DAD8(&qword_1001191B8, &qword_1001191C0, &unk_1000D7228, &protocol conformance descriptor for ZStack<A>);
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191A8);
  }

  return result;
}

unint64_t sub_1000B3544()
{
  result = qword_1001191C8;
  if (!qword_1001191C8)
  {
    sub_10001C820(&qword_100119180, &qword_1000D7200);
    sub_10002DAD8(&qword_1001191D0, &qword_1001191D8, &qword_1000D7238, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191C8);
  }

  return result;
}

uint64_t sub_1000B3678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B36F8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LinearTimerTimelineCountdown(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000B3824()
{
  result = qword_1001192B0;
  if (!qword_1001192B0)
  {
    sub_10001C820(&qword_1001192A0, &qword_1000D7318);
    sub_1000B38B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B0);
  }

  return result;
}

unint64_t sub_1000B38B0()
{
  result = qword_1001192B8;
  if (!qword_1001192B8)
  {
    sub_10001C820(&qword_100119298, &qword_1000D7310);
    sub_1000B3968();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192B8);
  }

  return result;
}