unint64_t sub_1000B3968()
{
  result = qword_1001192C0;
  if (!qword_1001192C0)
  {
    sub_10001C820(&qword_100119290, &qword_1000D7308);
    sub_1000B39F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192C0);
  }

  return result;
}

unint64_t sub_1000B39F4()
{
  result = qword_1001192C8;
  if (!qword_1001192C8)
  {
    sub_10001C820(&qword_100119288, &qword_1000D7300);
    sub_1000B3A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192C8);
  }

  return result;
}

unint64_t sub_1000B3A80()
{
  result = qword_1001192D0;
  if (!qword_1001192D0)
  {
    sub_10001C820(&qword_100119280, &qword_1000D72F8);
    sub_1000B3B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192D0);
  }

  return result;
}

unint64_t sub_1000B3B0C()
{
  result = qword_1001192D8;
  if (!qword_1001192D8)
  {
    sub_10001C820(&qword_100119278, &qword_1000D72F0);
    sub_10001C820(&qword_1001192E0, &qword_1000D7328);
    sub_1000B3BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192D8);
  }

  return result;
}

unint64_t sub_1000B3BD4()
{
  result = qword_1001192E8;
  if (!qword_1001192E8)
  {
    sub_10001C820(&qword_1001192E0, &qword_1000D7328);
    sub_1000B3C8C();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192E8);
  }

  return result;
}

unint64_t sub_1000B3C8C()
{
  result = qword_1001192F0;
  if (!qword_1001192F0)
  {
    sub_10001C820(&qword_1001192F8, &qword_1000D7330);
    sub_1000B3D44();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001192F0);
  }

  return result;
}

unint64_t sub_1000B3D44()
{
  result = qword_100119300;
  if (!qword_100119300)
  {
    sub_10001C820(&qword_100119308, &qword_1000D7338);
    sub_1000B3DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119300);
  }

  return result;
}

unint64_t sub_1000B3DD0()
{
  result = qword_100119310;
  if (!qword_100119310)
  {
    sub_10001C820(&qword_100119318, &unk_1000D7340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119310);
  }

  return result;
}

uint64_t sub_1000B3EFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B3F50(double a1)
{
  if (a1 >= 0.0 && a1 < 600.0)
  {
    if (qword_1001136E8 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F720;
  }

  else if (a1 >= 600.0 && a1 < 3600.0)
  {
    if (qword_1001136E0 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F718;
  }

  else if (a1 < 3600.0 || a1 >= 36000.0)
  {
    if (qword_1001136D0 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F708;
  }

  else
  {
    if (qword_1001136D8 != -1)
    {
      swift_once();
    }

    v3 = &qword_10011F710;
  }

  return *v3;
}

void sub_1000B40A8(double a1, double a2)
{
  v5 = *(type metadata accessor for LinearTimerTimelineCountdown(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1000B1B3C(v6, a1, a2);
}

uint64_t sub_1000B4120()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000B4184()
{
  result = qword_1001193E8;
  if (!qword_1001193E8)
  {
    sub_10001C820(&qword_100119338, &qword_1000D7470);
    sub_1000B4210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193E8);
  }

  return result;
}

unint64_t sub_1000B4210()
{
  result = qword_1001193F0;
  if (!qword_1001193F0)
  {
    sub_10001C820(&qword_1001193E0, &qword_1000D7540);
    sub_10002DAD8(&qword_1001193F8, &qword_100119400, &qword_1000D7548, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193F0);
  }

  return result;
}

uint64_t sub_1000B42E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B4348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B4390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B4408()
{
  v1 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  type metadata accessor for OpaqueAlarm(0);
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

  sub_100017D28((v5 + v1[5]));
  sub_100017D28((v5 + v1[6]));
  v10 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000B46D4()
{
  result = qword_100119428;
  if (!qword_100119428)
  {
    sub_10001C820(&qword_100119430, &qword_1000D7570);
    sub_1000B4760();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119428);
  }

  return result;
}

unint64_t sub_1000B4760()
{
  result = qword_100119438;
  if (!qword_100119438)
  {
    sub_10001C820(&qword_100119440, &qword_1000D7578);
    sub_10002DAD8(&qword_100119448, &unk_100119450, &qword_1000D7580, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119438);
  }

  return result;
}

void sub_1000B4E30()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v12, "viewDidLoad");
  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v2 = qword_1001135F8;

    if (v2 != -1)
    {
      swift_once();
    }

    sub_1000BFDFC(&unk_100119820, type metadata accessor for TimerApertureElementController, &unk_1000D76A0);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(&v10);
  }

  v3 = objc_opt_self();
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v10 = v5;
  v11 = v7;
  v8._object = 0x80000001000DB920;
  v8._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  [v3 logInfo:v9];

  sub_1000B6878();
  sub_1000B8D68();
}

char *sub_1000B5050(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v58 = a3;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v57[-v8];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *v14 = v15;
  v14[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v19 = [objc_opt_self() mtURLForSection:4];
  v59 = a1;
  v60 = a2;
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  sub_1000573D0(v9, &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v23 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v23 = 0xD000000000000015;
  *(v23 + 1) = 0x80000001000D7F20;
  v24 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v24 = 0xD00000000000001ELL;
  *(v24 + 1) = 0x80000001000D7580;
  v25 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v26 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_allocWithZone(ObjCClassFromMetadata);
  v29 = v25;
  *&v4[v26] = [v28 init];
  v30 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v4[v30] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v31 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v4[v31] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v4[v32] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v33 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  v35 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v36 = type metadata accessor for OpaqueAlarm(0);
  v37 = *(*(v36 - 8) + 56);
  v37(v34 + v35, 1, 1, v36);
  v38 = (v34 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  *&v4[v33] = v34;
  v39 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v40 = swift_allocObject();
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  v37(v40 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v36);
  v41 = (v40 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  *&v4[v39] = v40;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  v42 = type metadata accessor for TimerApertureElementController(0);
  v65.receiver = v4;
  v65.super_class = v42;
  v43 = objc_msgSendSuper2(&v65, "init");
  v44 = &v43[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v46 = v59;
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  v47 = v43;

  if (v58)
  {
    *&v47[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 2;
  }

  v48 = objc_opt_self();
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v49 = [v47 description];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53._countAndFlagsBits = v50;
  v53._object = v52;
  String.append(_:)(v53);

  v54._object = 0x80000001000DA500;
  v54._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v54);
  v61 = v46;
  v62 = v45;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v55 = String._bridgeToObjectiveC()();

  [v48 logInfo:v55];

  return v47;
}

id sub_1000B56FC(void *a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *v10 = v11;
  v10[1] = v13;
  v14 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v15 = [objc_opt_self() mtURLForSection:4];
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
  (*(*(v18 - 8) + 56))(v5, v17, 1, v18);
  sub_1000573D0(v5, &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v19 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v19 = 0xD000000000000015;
  *(v19 + 1) = 0x80000001000D7F20;
  v20 = &v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v20 = 0xD00000000000001ELL;
  *(v20 + 1) = 0x80000001000D7580;
  v21 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v22 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_allocWithZone(ObjCClassFromMetadata);
  v25 = v21;
  *&v2[v22] = [v24 init];
  v26 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v2[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v2[v27] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v28 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v2[v28] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v29 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v30 = swift_allocObject();
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  v31 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v32 = type metadata accessor for OpaqueAlarm(0);
  v33 = *(*(v32 - 8) + 56);
  v33(v30 + v31, 1, 1, v32);
  v34 = (v30 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  *&v2[v29] = v30;
  v35 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v36 = swift_allocObject();
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  v33(v36 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v32);
  v37 = (v36 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  *&v2[v35] = v36;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  v38 = type metadata accessor for TimerApertureElementController(0);
  v44.receiver = v2;
  v44.super_class = v38;
  v39 = v43;
  v40 = objc_msgSendSuper2(&v44, "initWithCoder:", v43);

  if (v40)
  {
  }

  return v40;
}

id sub_1000B5C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v48 = a3;
  v46[1] = a1;
  v6 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v6 - 8);
  v8 = v46 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  *v13 = v14;
  v13[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_maximumLayoutMode] = 4;
  v18 = [objc_opt_self() mtURLForSection:4];
  v47 = a2;
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v8, v20, 1, v21);
  sub_1000573D0(v8, &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL]);
  v22 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier];
  *v22 = 0xD000000000000015;
  *(v22 + 1) = 0x80000001000D7F20;
  v23 = &v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_timerObserverIdentifier];
  *v23 = 0xD00000000000001ELL;
  *(v23 + 1) = 0x80000001000D7580;
  v24 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v25 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_allocWithZone(ObjCClassFromMetadata);
  v28 = v24;
  *&v4[v25] = [v27 init];
  v29 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView;
  *&v4[v29] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v30 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView;
  *&v4[v30] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v31 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_keyColor;
  *&v4[v31] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingOffset] = 0x401C000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_interButtonPadding] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelBottomPadding] = 0x4035000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_labelToCountdownPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButtonToLabelPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer] = 0;
  v32 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation;
  type metadata accessor for TimerAnimationCountdown(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  v34 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v35 = type metadata accessor for OpaqueAlarm(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v33 + v34, 1, 1, v35);
  v37 = (v33 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  *&v4[v32] = v33;
  v38 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation;
  v39 = swift_allocObject();
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  v36(v39 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v35);
  v40 = (v39 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  *&v4[v38] = v39;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = 0;
  if (v47)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v42 = type metadata accessor for TimerApertureElementController(0);
  v49.receiver = v4;
  v49.super_class = v42;
  v43 = v48;
  v44 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", v41, v48);

  return v44;
}

id sub_1000B62A0()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v13[0] = v4;
  v13[1] = v6;
  v7._object = 0x80000001000DC2D0;
  v7._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v9 = qword_1001135F8;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_1000BFDFC(&unk_100119820, type metadata accessor for TimerApertureElementController, &unk_1000D76A0);
    v10 = v1;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();

    sub_10004E3D4(v13);
  }

  v11 = type metadata accessor for TimerApertureElementController(0);
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "dealloc");
}

void sub_1000B6674(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(18);
  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v13[0] = v6;
  v13[1] = v8;
  v9._object = 0x80000001000DC2B0;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v11 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v12 = qword_1001135F8;

    if (v12 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v13);
    if (v11)
    {
      sub_1000B6F8C(v11);
    }
  }
}

void sub_1000B6878()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v52 - v3);
  v5 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
  if (!v5)
  {
    return;
  }

  type metadata accessor for TimerApertureElementController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v5 setAccessibilityLabel:v10];

  v54 = v5;
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview:v54];

  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  v14 = sub_1000BE460(2u);
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v17 = [v1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v57 = v18;
    v58 = v20;
    v21._object = 0x80000001000DA4B0;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v16 logInfo:v22];

    v23 = v15;
    [v54 addSubview:v23];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000D24B0;
    v26 = [v23 leadingAnchor];
    v27 = [v54 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-2.0];

    *(v25 + 32) = v28;
    v29 = [v23 trailingAnchor];

    v30 = [v54 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v25 + 40) = v31;
    v32 = [v23 topAnchor];

    v33 = [v54 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v25 + 48) = v34;
    v35 = [v23 bottomAnchor];

    v36 = [v54 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v25 + 56) = v37;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    v39 = &v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v40 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v40)
    {
      v41 = *v39;
      v42 = qword_1001135F8;

      if (v42 != -1)
      {
        swift_once();
      }

      v55 = v41;
      v56 = v40;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();

      sub_10004E3D4(&v57);
      if (v55)
      {
        *v4 = v55;
        v43 = type metadata accessor for OpaqueAlarm(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v43 - 8) + 56))(v4, 0, 1, v43);
        v44 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
        swift_beginAccess();
        sub_10004EC60(v4, v13 + v44, &qword_100114D70, &unk_1000D20E0);
        swift_endAccess();
      }

      return;
    }

    v51 = v54;
  }

  else
  {
    v45 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v46 = [v1 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v57 = v47;
    v58 = v49;
    v50._countAndFlagsBits = 0xD00000000000002CLL;
    v50._object = 0x80000001000DC1F0;
    String.append(_:)(v50);
    v53 = String._bridgeToObjectiveC()();

    [v45 logInfo:v53];

    v51 = v53;
  }
}

void sub_1000B6F8C(void *a1)
{
  v2 = v1;
  v4 = [a1 isFiring];
  v5 = 9;
  if (v4)
  {
    v5 = 2;
  }

  v6 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors];
  *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors] = v5;
  if (v6 != v5)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(49);
  v8 = [v1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._object = 0x80000001000DC1D0;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v13);
  v14 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost;
  sub_1000032D4(&qword_100119808, &qword_1000D7730);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0x646573756170202CLL;
  v15._object = 0xEF203A74736F6820;
  String.append(_:)(v15);
  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost;
  sub_1000032D4(&unk_100119810, qword_1000D7738);
  _print_unlocked<A, B>(_:_:)();
  v17 = String._bridgeToObjectiveC()();

  [v7 logInfo:v17];

  if ([a1 state] == 2)
  {
    v18 = *&v2[v14];
    v19 = v18;
    sub_1000BBA84(v18);

    sub_1000B8524(a1);
    sub_1000B72C4(a1);
  }

  else if ([a1 state] == 3)
  {
    v20 = *&v2[v16];
    v21 = v20;
    sub_1000BBA84(v20);

    sub_1000B7B24(a1);
    sub_1000B76F4(a1);
  }

  else if ([a1 isFiring])
  {
    v22 = *&v2[v16];
    v23 = v22;
    sub_1000BBA84(v22);

    v24 = *&v2[v14];
    v25 = v24;
    sub_1000BBA84(v24);
  }

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode] == 4)
  {
    if ([a1 isFiring])
    {
      sub_1000BBDA8();
      sub_1000BAD90(a1);
    }

    else
    {
      sub_1000BBC60();
      sub_1000BA4C8(a1);
    }
  }
}

void sub_1000B72C4(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v41 - v5);
  v7 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  *(&v41 - v5) = a1;
  v8 = type metadata accessor for OpaqueAlarm(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v11 = a1;
  v41 = v7;
  sub_10004EC60(v6, v7 + v10, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v12 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  *v6 = v11;
  swift_storeEnumTagMultiPayload();
  v9(v6, 0, 1, v8);
  v13 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v14 = v11;
  sub_10004EC60(v6, v12 + v13, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v15 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v16 = objc_opt_self();
  if (v15 == 3)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v23 = [v2 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v42 = v24;
    v43 = v26;
    v27._object = 0x80000001000DC170;
    v27._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v16 logInfo:v28];

    sub_1000BF040();
  }

  else if (v15 == 2)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v17 = [v2 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v21._object = 0x80000001000DC1A0;
    v21._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v16 logInfo:v22];

    sub_1000BF040();
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v29 = [v2 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0xD000000000000036;
    v34._object = 0x80000001000DC130;
    String.append(_:)(v34);
    v35 = String._bridgeToObjectiveC()();

    [v16 logInfo:v35];

    v36 = v41;
    v37 = *(v41 + 40);
    if (v37)
    {
      [v37 invalidate];
      v38 = *(v36 + 40);
      *(v36 + 40) = 0;
    }

    v39 = *(v12 + 40);
    if (v39)
    {
      [v39 invalidate];
      v40 = *(v12 + 40);
      *(v12 + 40) = 0;
    }
  }
}

void sub_1000B76F4(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v41 - v5);
  v7 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  *(&v41 - v5) = a1;
  v8 = type metadata accessor for OpaqueAlarm(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v11 = a1;
  v41 = v7;
  sub_10004EC60(v6, v7 + v10, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v12 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  *v6 = v11;
  swift_storeEnumTagMultiPayload();
  v9(v6, 0, 1, v8);
  v13 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  v14 = v11;
  sub_10004EC60(v6, v12 + v13, &qword_100114D70, &unk_1000D20E0);
  swift_endAccess();
  v15 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v16 = objc_opt_self();
  if (v15 == 3)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v23 = [v2 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v42 = v24;
    v43 = v26;
    v27._object = 0x80000001000DC0D0;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v16 logInfo:v28];

    sub_1000BE9EC();
  }

  else if (v15 == 2)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v17 = [v2 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v21._object = 0x80000001000DC100;
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v16 logInfo:v22];

    sub_1000BE9EC();
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v29 = [v2 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0xD000000000000038;
    v34._object = 0x80000001000DC090;
    String.append(_:)(v34);
    v35 = String._bridgeToObjectiveC()();

    [v16 logInfo:v35];

    v36 = v41;
    v37 = *(v41 + 40);
    if (v37)
    {
      [v37 invalidate];
      v38 = *(v36 + 40);
      *(v36 + 40) = 0;
    }

    v39 = *(v12 + 40);
    if (v39)
    {
      [v39 invalidate];
      v40 = *(v12 + 40);
      *(v12 + 40) = 0;
    }
  }
}

void sub_1000B7B24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v92 - v9;
  v11 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v92 - v15;
  v17 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost;
  v18 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedRunningHost];
  if (v18)
  {
    v19 = [v18 parentViewController];
    if (v19)
    {

      return;
    }
  }

  v93 = v10;
  v94 = v8;
  v95 = v5;
  v96 = v4;
  v20 = objc_opt_self();
  v97 = a1;
  v98 = 0;
  v21 = v20;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v22 = [v2 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v98 = v23;
  v99 = v25;
  v26._object = 0x80000001000DC070;
  v26._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = v21;
  v29 = v97;
  [v28 logInfo:v27];

  sub_10004F058(&v16[*(v11 + 20)]);
  v30 = [objc_opt_self() mtOrange];
  *&v16[*(v11 + 24)] = Color.init(uiColor:)();
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = &off_100103958;
  *v16 = sub_10002555C;
  *(v16 + 1) = v31;
  v16[16] = 0;
  v32 = objc_allocWithZone(sub_1000032D4(&qword_100119800, &qword_1000D3978));
  *&v32[*((swift_isaMask & *v32) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000C02AC(v16, v14, type metadata accessor for TimerRunningCompressedTrailingView);
  v33 = v2;
  v34 = UIHostingController.init(rootView:)();
  sub_1000C0314(v16, type metadata accessor for TimerRunningCompressedTrailingView);
  v35 = *&v2[v17];
  *&v2[v17] = v34;
  v36 = v34;

  v37 = [v36 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v2[v17])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v33 addChildViewController:?];
  v38 = *&v2[v17];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v38 didMoveToParentViewController:v33];
  v39 = *&v33[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (v39)
  {
    v40 = *&v2[v17];
    if (v40)
    {
      v41 = [v40 view];
      if (v41)
      {
        v42 = v41;
        [v39 addSubview:v41];

        v43 = v93;
        sub_10004F058(v93);
        v44 = v94;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v46 = v45;
        v47 = v96;
        v48 = *(v95 + 8);
        v48(v44, v96);
        v48(v43, v47);
        sub_10008BEF0(v46);
        v49 = String._bridgeToObjectiveC()();

        [v39 setAccessibilityLabel:v49];

        v50 = v39;
        v51 = [v33 view];
        if (v51)
        {
          v52 = v51;
          [v51 addSubview:v50];

          [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
          v53 = *&v2[v17];
          if (v53)
          {
            v54 = [v53 view];
            if (v54)
            {
              v55 = v54;
              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v56 = swift_allocObject();
              *(v56 + 16) = xmmword_1000D24C0;
              v57 = [v55 leadingAnchor];
              v58 = [v50 leadingAnchor];
              v59 = [v57 constraintEqualToAnchor:v58];

              *(v56 + 32) = v59;
              v60 = [v55 trailingAnchor];
              v61 = [v50 trailingAnchor];
              v62 = [v60 constraintEqualToAnchor:v61];

              *(v56 + 40) = v62;
              v63 = [v55 topAnchor];
              v64 = [v50 topAnchor];
              v65 = [v63 constraintEqualToAnchor:v64];

              *(v56 + 48) = v65;
              v66 = [v55 bottomAnchor];
              v67 = [v50 bottomAnchor];
              v68 = [v66 constraintEqualToAnchor:v67];

              *(v56 + 56) = v68;
              v69 = [v50 trailingAnchor];
              v70 = [v33 view];
              if (v70)
              {
                v71 = v70;
                v72 = [v70 trailingAnchor];

                v73 = [v69 constraintEqualToAnchor:v72];
                *(v56 + 64) = v73;
                v74 = [v50 topAnchor];
                v75 = [v33 view];
                if (v75)
                {
                  v76 = v75;
                  v77 = [v75 topAnchor];

                  v78 = [v74 constraintEqualToAnchor:v77];
                  *(v56 + 72) = v78;
                  v79 = [v50 leadingAnchor];
                  v80 = [v33 view];
                  if (v80)
                  {
                    v81 = v80;
                    v82 = [v80 SBUISA_systemApertureObstructedAreaLayoutGuide];

                    v83 = [v82 trailingAnchor];
                    v84 = [v79 constraintEqualToAnchor:v83];

                    *(v56 + 80) = v84;
                    v85 = [v50 bottomAnchor];
                    v86 = [v33 view];
                    if (v86)
                    {
                      v87 = v86;
                      v88 = objc_opt_self();
                      v89 = [v87 bottomAnchor];

                      v90 = [v85 constraintEqualToAnchor:v89];
                      *(v56 + 88) = v90;
                      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v88 activateConstraints:isa];

                      v29 = v97;
                      goto LABEL_20;
                    }

LABEL_36:
                    __break(1u);
                    return;
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

LABEL_20:
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v33 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    sub_1000BD5A0(v29);
  }
}

void sub_1000B8524(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost;
  v5 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compressedPausedHost];
  if (v5)
  {
    v6 = [v5 parentViewController];
    if (v6)
    {

      return;
    }
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v8 = [v1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._object = 0x80000001000DC050;
  v12._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v7 logInfo:{v13, v9, v11}];

  [a1 remainingTime];
  v15 = v14;
  sub_10004F3B0();
  v17 = v16;
  v19 = v18;
  v20 = [objc_opt_self() mtOrange];
  v21 = Color.init(uiColor:)();
  v22 = objc_allocWithZone(sub_1000032D4(&qword_1001197F8, &unk_1000D7720));
  v78 = v17;
  v79 = v19;
  *(v22 + *((swift_isaMask & *v22) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v23 = UIHostingController.init(rootView:)();
  v24 = *&v2[v4];
  *&v2[v4] = v23;
  v25 = v23;

  v26 = [v25 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_27;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v2[v4])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v2 addChildViewController:?];
  v27 = *&v2[v4];
  if (!v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v27 didMoveToParentViewController:v2];
  v28 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = *&v2[v4];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  [v28 addSubview:v30];

  sub_10004F3B0();
  v32 = String._bridgeToObjectiveC()();

  [v28 setAccessibilityLabel:v32];

  v33 = v28;
  v34 = [v2 view];
  if (!v34)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = v34;
  [v34 addSubview:v33];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = *&v2[v4];
  if (!v36)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = v37;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000D24C0;
  v40 = [v38 leadingAnchor];
  v41 = [v33 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [v38 trailingAnchor];
  v44 = [v33 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v39 + 40) = v45;
  v46 = [v38 topAnchor];
  v47 = [v33 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v39 + 48) = v48;
  v49 = [v38 bottomAnchor];
  v50 = [v33 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v39 + 56) = v51;
  v52 = [v33 trailingAnchor];
  v53 = [v2 view];
  if (!v53)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v39 + 64) = v56;
  v57 = [v33 topAnchor];
  v58 = [v2 view];
  if (!v58)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v59 = v58;
  v60 = [v58 topAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v39 + 72) = v61;
  v62 = [v33 leadingAnchor];
  v63 = [v2 view];
  if (!v63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v64 = v63;
  v65 = [v63 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v66 = [v65 trailingAnchor];
  v67 = [v62 constraintEqualToAnchor:v66];

  *(v39 + 80) = v67;
  v68 = [v33 bottomAnchor];
  v69 = [v2 view];
  if (!v69)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = objc_opt_self();
  v72 = [v70 bottomAnchor];

  v73 = [v68 constraintEqualToAnchor:v72];
  *(v39 + 88) = v73;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v71 activateConstraints:isa];

LABEL_20:
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v75 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer;
    v76 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer];
    if (v76)
    {
      [v76 invalidate];
      v77 = *&v2[v75];
      *&v2[v75] = 0;
    }
  }
}

void sub_1000B8D68()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v52 - v3);
  v5 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
  if (!v5)
  {
    return;
  }

  type metadata accessor for TimerApertureElementController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v5 setAccessibilityLabel:v10];

  v54 = v5;
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview:v54];

  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  v14 = sub_1000BE460(0);
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v17 = [v1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v57 = v18;
    v58 = v20;
    v21._object = 0x80000001000DA4B0;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v16 logInfo:v22];

    v23 = v15;
    [v54 addSubview:v23];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000D24B0;
    v26 = [v23 leadingAnchor];
    v27 = [v54 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v25 + 32) = v28;
    v29 = [v23 trailingAnchor];

    v30 = [v54 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v25 + 40) = v31;
    v32 = [v23 topAnchor];

    v33 = [v54 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v25 + 48) = v34;
    v35 = [v23 bottomAnchor];

    v36 = [v54 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v25 + 56) = v37;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    v39 = &v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v40 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v40)
    {
      v41 = *v39;
      v42 = qword_1001135F8;

      if (v42 != -1)
      {
        swift_once();
      }

      v55 = v41;
      v56 = v40;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();

      sub_10004E3D4(&v57);
      if (v55)
      {
        *v4 = v55;
        v43 = type metadata accessor for OpaqueAlarm(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v43 - 8) + 56))(v4, 0, 1, v43);
        v44 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
        swift_beginAccess();
        sub_10004EC60(v4, v13 + v44, &qword_100114D70, &unk_1000D20E0);
        swift_endAccess();
      }

      return;
    }

    v51 = v54;
  }

  else
  {
    v45 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v46 = [v1 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v57 = v47;
    v58 = v49;
    v50._countAndFlagsBits = 0xD00000000000002CLL;
    v50._object = 0x80000001000DA480;
    String.append(_:)(v50);
    v53 = String._bridgeToObjectiveC()();

    [v45 logInfo:v53];

    v51 = v53;
  }
}

void sub_1000B9474(void *a1)
{
  v3 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton])
  {
    sub_1000B9E20();
    sub_1000B9B44();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000D3860;
    v5 = *&v1[v3];
    if (v5)
    {
      v6 = [v5 leadingAnchor];
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 leadingAnchor];

        v10 = [v6 constraintEqualToAnchor:v9 constant:16.0];
        *(v4 + 32) = v10;
        v11 = *&v1[v3];
        if (v11)
        {
          v12 = [v11 trailingAnchor];
          v13 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
          v14 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
          if (v14)
          {
            v15 = [v14 leadingAnchor];
            v16 = [v12 constraintEqualToAnchor:v15 constant:-10.0];

            *(v4 + 40) = v16;
            v17 = *&v1[v3];
            if (v17)
            {
              v18 = [v17 widthAnchor];
              v19 = *&v1[v3];
              if (v19)
              {
                v20 = [v19 heightAnchor];
                v21 = [v18 constraintEqualToAnchor:v20];

                *(v4 + 48) = v21;
                v22 = *&v1[v3];
                if (v22)
                {
                  v23 = [v22 widthAnchor];
                  v24 = *&v1[v13];
                  if (v24)
                  {
                    v25 = [v24 widthAnchor];
                    v26 = [v23 constraintEqualToAnchor:v25];

                    *(v4 + 56) = v26;
                    v27 = *&v1[v3];
                    if (v27)
                    {
                      v28 = [v27 widthAnchor];
                      v29 = *&v1[v13];
                      if (v29)
                      {
                        v30 = [v29 heightAnchor];
                        v31 = [v28 constraintEqualToAnchor:v30];

                        *(v4 + 64) = v31;
                        v32 = *&v1[v13];
                        if (v32)
                        {
                          v33 = [v32 trailingAnchor];
                          v34 = [v1 view];
                          if (v34)
                          {
                            v35 = v34;
                            v36 = [v34 SBUISA_systemApertureObstructedAreaLayoutGuide];

                            v37 = [v36 leadingAnchor];
                            v38 = [v33 constraintLessThanOrEqualToAnchor:v37];

                            *(v4 + 72) = v38;
                            v39 = *&v1[v3];
                            if (v39)
                            {
                              v40 = [v39 topAnchor];
                              v41 = [v1 view];
                              if (v41)
                              {
                                v42 = v41;
                                v43 = [v41 topAnchor];

                                v44 = [v40 constraintEqualToAnchor:v43 constant:17.0];
                                *(v4 + 80) = v44;
                                v45 = *&v1[v3];
                                if (v45)
                                {
                                  v46 = [v45 bottomAnchor];
                                  v47 = [v1 view];
                                  if (v47)
                                  {
                                    v48 = v47;
                                    v49 = [v47 bottomAnchor];

                                    v50 = [v46 constraintEqualToAnchor:v49 constant:-17.0];
                                    *(v4 + 88) = v50;
                                    v51 = *&v1[v13];
                                    if (v51)
                                    {
                                      v52 = [v51 topAnchor];
                                      v53 = [v1 view];
                                      if (v53)
                                      {
                                        v54 = v53;
                                        v55 = [v53 topAnchor];

                                        v56 = [v52 constraintEqualToAnchor:v55 constant:17.0];
                                        *(v4 + 96) = v56;
                                        v57 = *&v1[v13];
                                        if (v57)
                                        {
                                          v58 = [v57 bottomAnchor];
                                          v59 = [v1 view];
                                          if (v59)
                                          {
                                            v60 = v59;
                                            v61 = objc_opt_self();
                                            v62 = [v60 bottomAnchor];

                                            v63 = [v58 constraintEqualToAnchor:v62 constant:-17.0];
                                            *(v4 + 104) = v63;
                                            sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                            isa = Array._bridgeToObjectiveC()().super.isa;

                                            [v61 activateConstraints:isa];

                                            goto LABEL_23;
                                          }

LABEL_47:
                                          __break(1u);
                                          return;
                                        }

LABEL_46:
                                        __break(1u);
                                        goto LABEL_47;
                                      }

LABEL_45:
                                      __break(1u);
                                      goto LABEL_46;
                                    }

LABEL_44:
                                    __break(1u);
                                    goto LABEL_45;
                                  }

LABEL_43:
                                  __break(1u);
                                  goto LABEL_44;
                                }

LABEL_42:
                                __break(1u);
                                goto LABEL_43;
                              }

LABEL_41:
                              __break(1u);
                              goto LABEL_42;
                            }

LABEL_40:
                            __break(1u);
                            goto LABEL_41;
                          }

LABEL_39:
                          __break(1u);
                          goto LABEL_40;
                        }

LABEL_38:
                        __break(1u);
                        goto LABEL_39;
                      }

LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

LABEL_36:
                    __break(1u);
                    goto LABEL_37;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  v65 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
  if (v65)
  {
    v66 = v65;
    [a1 state];
    v67 = String._bridgeToObjectiveC()();

    [v66 setState:v67];
  }
}

void sub_1000B9B44()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v3 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = UIButton.init(configuration:primaryAction:)();
  v5 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
  v6 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton] = v4;
  v7 = v4;

  v8 = [v7 layer];
  [v8 setCornerRadius:25.0];

  v9 = *&v1[v5];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = *&v1[v5];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*&v1[v5])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  [v12 addSubview:?];

  v14 = [objc_opt_self() sbui_systemApertureControlConfiguration];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16)
  {
    if (qword_100113670 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v17 = [v16 imageWithSymbolConfiguration:qword_10011F6A8];

      v18 = *&v1[v5];
      if (v18)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      swift_once();
    }
  }

  else
  {
    v17 = 0;
    v18 = *&v1[v5];
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  [v18 setImage:v17 forState:0];
  v19 = *&v1[v5];
  if (v19)
  {
    [v19 addTarget:v1 action:"stopAction" forControlEvents:64];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1000B9E20()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v3 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = UIButton.init(configuration:primaryAction:)();
  v5 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  v6 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton] = v4;
  v7 = v4;

  v8 = [v7 layer];
  [v8 setCornerRadius:25.0];

  v9 = *&v1[v5];
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = *&v1[v5];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = *&v1[v5];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 mtOrange];
  v16 = [v15 colorWithAlphaComponent:0.35];

  [v14 setBackgroundColor:v16];
  v17 = *&v1[v5];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!*&v1[v5])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  [v18 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = objc_allocWithZone(BSUICAPackageView);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithPackageName:v23 inBundle:v21];

  v25 = objc_opt_self();
  if (!v24)
  {
    _StringGuts.grow(_:)(50);
    v50 = [v1 description];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54._countAndFlagsBits = 0xD000000000000030;
    v54._object = 0x80000001000D80F0;
    String.append(_:)(v54);
    v49 = String._bridgeToObjectiveC()();

    [v25 logInfo:{v49, v51, v53}];
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(30);
  v26 = [v1 description];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._object = 0x80000001000DA4B0;
  v30._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  [v25 logInfo:{v31, v27, v29}];

  v32 = *&v1[v5];
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = v24;
  [v32 addSubview:v33];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000D24B0;
  v35 = [v33 widthAnchor];
  v36 = [v35 constraintEqualToConstant:23.0];

  *(v34 + 32) = v36;
  v37 = [v33 heightAnchor];

  v38 = [v37 constraintEqualToConstant:23.0];
  *(v34 + 40) = v38;
  v39 = [v33 centerXAnchor];

  v40 = *&v1[v5];
  if (!v40)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = [v40 centerXAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];

  *(v34 + 48) = v42;
  v43 = [v33 centerYAnchor];

  v44 = *&v1[v5];
  if (v44)
  {
    v45 = objc_opt_self();
    v46 = [v44 centerYAnchor];
    v47 = [v43 constraintEqualToAnchor:v46];

    *(v34 + 56) = v47;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 activateConstraints:isa];

    v49 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
    *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage] = v24;
LABEL_13:

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1000BA4C8(void *a1)
{
  v2 = v1;
  sub_1000B9474(a1);
  v4 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost])
  {
    v5 = objc_allocWithZone(sub_1000032D4(&qword_1001197D8, &qword_1000D7710));
    v85 = sub_1000A9C68;
    v86 = 0;
    v87 = 0;
    v88 = a1;
    LOBYTE(v89) = 0;
    *&v5[*((swift_isaMask & *v5) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v6 = a1;
    v7 = UIHostingController.init(rootView:)();
    v8 = [v7 view];
    if (!v8)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [v7 view];
    if (!v10)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = v10;
    v12 = [v10 layer];

    [v12 setAllowsHitTesting:0];
    [v2 addChildViewController:v7];
    v13 = [v2 view];
    if (!v13)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v14 = v13;
    v15 = [v7 view];

    if (!v15)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    [v14 addSubview:v15];

    [v7 didMoveToParentViewController:v2];
    v16 = *&v2[v4];
    *&v2[v4] = v7;
  }

  v17 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost])
  {
LABEL_15:
    v41 = *&v2[v4];
    if (v41)
    {
      v42 = [v41 view];
      if (v42)
      {
        v43 = v42;
        v44 = *&v2[v17];
        if (v44)
        {
          v45 = [v44 view];
          if (v45)
          {
            v46 = v45;
            v47 = [v2 view];
            if (v47)
            {
              v48 = v47;
              v82 = a1;
              v83 = v4;
              v84 = [v47 SBUISA_systemApertureObstructedAreaLayoutGuide];

              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v49 = swift_allocObject();
              *(v49 + 16) = xmmword_1000D5170;
              v50 = [v46 bottomAnchor];
              v51 = [v2 view];
              if (v51)
              {
                v52 = v51;
                v53 = [v51 bottomAnchor];

                v54 = [v50 constraintEqualToAnchor:v53 constant:-21.0];
                *(v49 + 32) = v54;
                v55 = [v46 leadingAnchor];
                v56 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
                if (v56)
                {
                  v57 = [v56 trailingAnchor];
                  v58 = [v55 constraintGreaterThanOrEqualToAnchor:v57 constant:12.0];

                  *(v49 + 40) = v58;
                  v59 = [v43 leadingAnchor];
                  v60 = [v84 trailingAnchor];
                  v61 = [v59 constraintGreaterThanOrEqualToAnchor:v60];

                  *(v49 + 48) = v61;
                  v62 = [v43 leadingAnchor];
                  v63 = [v46 trailingAnchor];
                  v64 = [v62 constraintEqualToAnchor:v63 constant:5.0];

                  *(v49 + 56) = v64;
                  v65 = [v43 trailingAnchor];
                  v66 = [v2 view];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = objc_opt_self();
                    v69 = [v67 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                    v70 = [v69 trailingAnchor];
                    v71 = [v65 constraintEqualToAnchor:v70];

                    *(v49 + 64) = v71;
                    v72 = [v43 lastBaselineAnchor];
                    v73 = [v46 lastBaselineAnchor];
                    v74 = [v72 constraintEqualToAnchor:v73];

                    *(v49 + 72) = v74;
                    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v68 activateConstraints:isa];

                    [v46 setNeedsUpdateConstraints];
                    v76 = *&v2[v83];
                    if (v76)
                    {
                      v77 = v82;
                      v78 = v76;
                      v79 = dispatch thunk of UIHostingController.rootView.modify();
                      v81 = *(v80 + 24);
                      *(v80 + 24) = v77;

                      v79(&v85, 0);
                      return;
                    }

                    goto LABEL_33;
                  }

LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v18 = [a1 displayTitle];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v85 = v19;
  v86 = v21;
  sub_100025FB4();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (qword_100113690 != -1)
  {
    swift_once();
  }

  v29 = qword_10011F6C8;
  v30 = objc_allocWithZone(sub_1000032D4(&qword_1001197E8, &qword_1000D7718));
  v85 = v22;
  v86 = v24;
  v87 = v26 & 1;
  v88 = v28;
  v89 = v29;
  *(v30 + *((swift_isaMask & *v30) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();

  v31 = UIHostingController.init(rootView:)();
  v32 = [v31 view];
  if (!v32)
  {
    goto LABEL_36;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [v31 view];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = v34;
  v36 = [v34 layer];

  [v36 setAllowsHitTesting:0];
  [v2 addChildViewController:v31];
  v37 = [v2 view];
  if (!v37)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [v31 view];

  if (v39)
  {
    [v38 addSubview:v39];

    [v31 didMoveToParentViewController:v2];
    v40 = *&v2[v17];
    *&v2[v17] = v31;

    goto LABEL_15;
  }

LABEL_41:
  __break(1u);
}

void sub_1000BAD90(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(48);
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v112 = v6;
  v113 = v8;
  v9._object = 0x80000001000DC020;
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v9);
  v10 = [a1 timerIDString];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v4 logInfo:v15];

  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost])
  {
    if (qword_100113628 != -1)
    {
      swift_once();
    }

    v17 = qword_10011F500;
    v114 = type metadata accessor for TimerCoordinator();
    v115 = &off_100102388;
    v113 = v17;
    v18 = objc_opt_self();

    v19 = [v18 mtOrange];
    v20 = Color.init(uiColor:)();
    v21 = [v18 mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    v23 = static Color.white.getter();
    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v117 = &type metadata for StandardSessionUiConfig;
    v118 = &off_1001035E8;
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v22;
    v25[4] = v23;
    v25[5] = v24;
    v116 = v25;
    v112 = a1;
    v26 = objc_allocWithZone(sub_1000032D4(&qword_1001197B8, &qword_1000D76F0));
    *&v26[*((swift_isaMask & *v26) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000A4684(&v112, v111);
    v27 = a1;
    v28 = UIHostingController.init(rootView:)();
    sub_1000C0220(&v112);
    v29 = v28;
    v30 = [v29 view];
    if (!v30)
    {
      goto LABEL_38;
    }

    v31 = v30;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v2 addChildViewController:v29];
    v32 = [v2 view];
    if (!v32)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = v32;
    v34 = [v29 view];

    if (!v34)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    [v33 addSubview:v34];

    [v29 didMoveToParentViewController:v2];
    v35 = *&v2[v16];
    *&v2[v16] = v29;
  }

  v36 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost])
  {
LABEL_14:
    v49 = *&v2[v16];
    if (v49)
    {
      v50 = [v49 view];
      if (v50)
      {
        v51 = v50;
        v52 = *&v2[v36];
        if (v52)
        {
          v53 = [v52 view];
          if (v53)
          {
            v54 = v53;
            v55 = [v2 view];
            if (v55)
            {
              v56 = v55;
              v110 = [v55 SBUISA_systemApertureObstructedAreaLayoutGuide];

              v57 = [v2 view];
              if (v57)
              {
                v58 = v57;
                v109 = [v57 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                sub_1000032D4(&qword_100115480, &qword_1000D2510);
                v59 = swift_allocObject();
                *(v59 + 16) = xmmword_1000D59F0;
                v60 = [v51 leadingAnchor];
                v61 = [v2 view];
                if (v61)
                {
                  v62 = v61;
                  v63 = [v61 leadingAnchor];

                  v64 = [v60 constraintEqualToAnchor:v63 constant:16.0];
                  *(v59 + 32) = v64;
                  v65 = [v51 centerYAnchor];
                  v66 = [v2 view];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = [v66 centerYAnchor];

                    v69 = [v65 constraintEqualToAnchor:v68];
                    *(v59 + 40) = v69;
                    v70 = [v51 trailingAnchor];
                    v71 = [v110 leadingAnchor];
                    v72 = [v70 constraintEqualToAnchor:v71];

                    *(v59 + 48) = v72;
                    v112 = v59;
                    v73 = v109;
                    [v109 layoutFrame];
                    [v54 sizeThatFits:{1.79769313e308, CGRectGetHeight(v119)}];
                    v75 = v74;
                    v76 = [v2 view];
                    if (v76)
                    {
                      v77 = v76;
                      [v76 SBUISA_maximumAccessoryViewWidth];
                      v79 = v78;

                      if (v75 <= v79)
                      {
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1000D59F0;
                        v98 = [v54 leadingAnchor];
                        v82 = v110;
                        v99 = [v110 trailingAnchor];
                        v100 = [v98 constraintEqualToAnchor:v99];

                        *(inited + 32) = v100;
                        v101 = [v54 centerYAnchor];
                        v102 = [v51 centerYAnchor];
                        v103 = [v101 constraintEqualToAnchor:v102];

                        *(inited + 40) = v103;
                        v104 = [v54 trailingAnchor];
                        v105 = [v109 trailingAnchor];
                        v106 = [v104 constraintEqualToAnchor:v105];

                        *(inited + 48) = v106;
                        v96 = inited;
                        goto LABEL_27;
                      }

                      v80 = swift_initStackObject();
                      *(v80 + 16) = xmmword_1000D24B0;
                      v81 = [v54 topAnchor];
                      v82 = v110;
                      v83 = [v110 bottomAnchor];
                      v84 = [v81 constraintEqualToAnchor:v83];

                      *(v80 + 32) = v84;
                      v85 = [v54 leadingAnchor];
                      v86 = [v51 trailingAnchor];
                      v87 = [v85 constraintEqualToAnchor:v86 constant:12.0];

                      *(v80 + 40) = v87;
                      v88 = [v54 bottomAnchor];
                      v89 = [v2 view];
                      if (v89)
                      {
                        v90 = v89;
                        v91 = [v89 bottomAnchor];

                        v92 = [v88 constraintEqualToAnchor:v91 constant:-21.0];
                        *(v80 + 48) = v92;
                        v93 = [v54 trailingAnchor];
                        v73 = v109;
                        v94 = [v109 trailingAnchor];
                        v95 = [v93 constraintEqualToAnchor:v94];

                        *(v80 + 56) = v95;
                        v96 = v80;
LABEL_27:
                        sub_1000BB994(v96);
                        v107 = objc_opt_self();
                        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v107 activateConstraints:isa];

                        return;
                      }

                      goto LABEL_37;
                    }

LABEL_36:
                    __break(1u);
LABEL_37:
                    __break(1u);
LABEL_38:
                    __break(1u);
                    goto LABEL_39;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v37 = objc_allocWithZone(sub_1000032D4(&qword_1001197C0, &unk_1000D76F8));
  v112 = a1;
  *&v37[*((swift_isaMask & *v37) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v38 = a1;
  v39 = UIHostingController.init(rootView:)();
  v40 = [v39 view];
  if (!v40)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v41 = v40;
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [v39 view];
  if (!v42)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v42;
  v44 = [v42 layer];

  [v44 setAllowsHitTesting:0];
  [v2 addChildViewController:v39];
  v45 = [v2 view];
  if (!v45)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46 = v45;
  v47 = [v39 view];

  if (v47)
  {
    [v46 addSubview:v47];

    [v39 didMoveToParentViewController:v2];
    v48 = *&v2[v36];
    *&v2[v36] = v39;

    goto LABEL_14;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1000BB994(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000BFEF4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000BFF94(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1000BBA84(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 0x6E69766F6D657220;
  v6._object = 0xEA00000000002067;
  String.append(_:)(v6);
  v7 = [v4 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12 = String._bridgeToObjectiveC()();

  [v3 logInfo:v12];

  v17 = v4;
  v13 = [v17 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 superview];

  v16 = v17;
  if (v15)
  {

    v16 = [v17 view];
    if (v16)
    {
      [v16 removeFromSuperview];
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:

  [v17 removeFromParentViewController];
}

void sub_1000BBC60()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingLabelHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 didMoveToParentViewController:0];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedTimerAlertingControlsHost];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 didMoveToParentViewController:0];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;
}

void sub_1000BBDA8()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedLabelHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 didMoveToParentViewController:0];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_expandedCountdownHost];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      [v9 didMoveToParentViewController:0];
      [v0 removeChildViewController:v9];

      v12 = *&v0[v7];
      *&v0[v7] = 0;

      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton;
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_playPauseButton];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v0[v13];
    *&v0[v13] = 0;
  }

  v16 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton;
  v17 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_stopButton];
  if (v17)
  {
    [v17 removeFromSuperview];
    v18 = *&v0[v16];
    *&v0[v16] = 0;
  }
}

void sub_1000BBF38()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._object = 0x80000001000D8250;
  v7._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:{v8, v4, v6}];

  v9 = &v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v10 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *v9;
  v12 = qword_1001135F8;

  if (v12 != -1)
  {
    swift_once();
  }

  v50 = v11;
  v51 = v10;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v47);
  v13 = v49;
  if (v49)
  {
    if ([v49 state] == 2)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);
      v14 = [v1 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v47 = v15;
      v48 = v17;
      v18._countAndFlagsBits = 0x6E696D7573657220;
      v18._object = 0xEF72656D69742067;
      String.append(_:)(v18);
      v19 = String._bridgeToObjectiveC()();

      [v2 logInfo:v19];

      v20 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
      if (v20)
      {
        v21 = v20;
        v22 = String._bridgeToObjectiveC()();
        [v21 setState:v22];
      }

      if (qword_100113628 != -1)
      {
        swift_once();
      }

      v23 = [v13 timerIDString];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      sub_1000790AC(v24, v26);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v34 = [v1 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v47 = v35;
      v48 = v37;
      v38._countAndFlagsBits = 0x676E697375617020;
      v38._object = 0xEE0072656D697420;
      String.append(_:)(v38);
      v39 = String._bridgeToObjectiveC()();

      [v2 logInfo:v39];

      v40 = *&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_pausePlayPackage];
      if (v40)
      {
        v41 = v40;
        v42 = String._bridgeToObjectiveC()();
        [v41 setState:v42];
      }

      if (qword_100113628 != -1)
      {
        swift_once();
      }

      v43 = [v13 timerIDString];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      sub_100078B44(v44, v46);
    }
  }

  else
  {
LABEL_11:
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v27 = [v1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v47 = v28;
    v48 = v30;
    v31._countAndFlagsBits = 0xD000000000000022;
    v31._object = 0x80000001000DBFF0;
    String.append(_:)(v31);
    v32 = *(v9 + 1);
    v50 = *v9;
    v51 = v32;

    sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v13 = String._bridgeToObjectiveC()();

    [v2 logInfo:v13];
  }
}

void sub_1000BC4BC()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(32);
  v2 = [v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x80000001000DBFD0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v6);
  v7 = &v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v13 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];

  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  [v1 logInfo:{v9, v13, v14, v3, v5}];

  v10 = v7[1];
  if (v10)
  {
    v11 = *v7;
    v12 = qword_100113628;

    if (v12 != -1)
    {
      swift_once();
    }

    sub_100079614(v11, v10);
  }
}

void sub_1000BC698(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  _StringGuts.grow(_:)(21);
  v9 = [v3 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._object = 0x80000001000DC250;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInfo:{v14, v10, v12}];

  v19.receiver = v3;
  v19.super_class = type metadata accessor for TimerApertureElementController(0);
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v18[4] = sub_1000C03AC;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C1628;
  v18[3] = &unk_100103B20;
  v16 = _Block_copy(v18);
  v17 = v4;

  [a1 animateAlongsideTransition:v16 completion:0];
  _Block_release(v16);
}

void sub_1000BC870(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode;
  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_activeLayoutMode];
  v5 = objc_opt_self();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      _StringGuts.grow(_:)(31);
      v29 = [a2 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v72 = v30;
      v73 = v32;
      v33._object = 0x80000001000D9F40;
      v33._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v33);
      v34 = String._bridgeToObjectiveC()();

      [v5 logInfo:v34];

      sub_1000BBDA8();
      sub_1000BD41C();
      v35 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
      v36 = *(v35 + 40);
      if (v36)
      {
        [v36 invalidate];
        v37 = *(v35 + 40);
        *(v35 + 40) = 0;
      }

      v38 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
      if (v38)
      {
        [v38 setHidden:1];
      }

      v39 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
      if (v40)
      {

        [v40 setHidden:0];
      }

      return;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        _StringGuts.grow(_:)(30);
        v6 = [a2 description];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        v72 = v7;
        v73 = v9;
        v10._countAndFlagsBits = 0xD00000000000001CLL;
        v10._object = 0x80000001000D9F00;
        String.append(_:)(v10);
        v11 = String._bridgeToObjectiveC()();

        [v5 logInfo:v11];

        v12 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
        v13 = *(v12 + 40);
        if (v13)
        {
          [v13 invalidate];
          v14 = *(v12 + 40);
          *(v12 + 40) = 0;
        }

        v15 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
        v16 = *(v15 + 40);
        if (v16)
        {
          [v16 invalidate];
          v17 = *(v15 + 40);
          *(v15 + 40) = 0;
        }

        v18 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
        if (v18)
        {
          [v18 setHidden:1];
        }

        v19 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
        if (v19)
        {
          [v19 setHidden:1];
        }

        v20 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
        if (v20)
        {
          [v20 setHidden:1];
        }

        if (*&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
        {
          v21 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
          v22 = qword_1001135F8;

          if (v22 != -1)
          {
            swift_once();
          }

          AnyHashable.init<A>(_:)();
          dispatch thunk of DataStore.getEntry(for:)();
          sub_10004E3D4(&v72);
          if (v21)
          {
            if (*&a2[v3] == 4)
            {
              if ([v21 isFiring])
              {
                sub_1000BBDA8();
                sub_1000BAD90(v21);
              }

              else
              {
                sub_1000BBC60();
                sub_1000BA4C8(v21);
              }
            }
          }
        }

        return;
      }

      goto LABEL_48;
    }

    _StringGuts.grow(_:)(31);
    v41 = [a2 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v72 = v42;
    v73 = v44;
    v45._object = 0x80000001000D9F20;
    v45._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v45);
    v46 = String._bridgeToObjectiveC()();

    [v5 logInfo:v46];

    sub_1000BBDA8();
    sub_1000BD428();
    v47 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
    v48 = *(v47 + 40);
    if (v48)
    {
      [v48 invalidate];
      v49 = *(v47 + 40);
      *(v47 + 40) = 0;
    }

    v50 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_leadingView];
    if (v50)
    {
      [v50 setHidden:0];
    }

    v51 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
    if (v51)
    {
      [v51 setHidden:0];
    }

    v52 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalView];
    if (v52)
    {
      [v52 setHidden:1];
    }

    v71 = [objc_msgSend(a2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (!v71)
    {
      return;
    }

    if ([v71 isUserInitiated])
    {
      sub_1000BD124();
    }

LABEL_47:
    v58 = v71;
LABEL_53:

    return;
  }

  if (!v4)
  {
    _StringGuts.grow(_:)(31);
    v53 = [a2 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v72 = v54;
    v73 = v56;
    v57._object = 0x80000001000D9F60;
    v57._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v57);
    v71 = String._bridgeToObjectiveC()();

    [v5 logInfo:v71];
    goto LABEL_47;
  }

  if (v4 == 1)
  {
    _StringGuts.grow(_:)(32);
    v23 = [a2 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v72 = v24;
    v73 = v26;
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x80000001000D9EE0;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v5 logInfo:v28];

    sub_1000BBDA8();
    goto LABEL_49;
  }

LABEL_48:
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v59 = [a2 description];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0xD000000000000034;
  v64._object = 0x80000001000DC270;
  String.append(_:)(v64);
  v65 = String._bridgeToObjectiveC()();

  [v5 logInfo:v65];

LABEL_49:
  v66 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_compactCountdownAnimation];
  v67 = *(v66 + 40);
  if (v67)
  {
    [v67 invalidate];
    v68 = *(v66 + 40);
    *(v66 + 40) = 0;
  }

  v69 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_minimalCountdownAnimation];
  v70 = *(v69 + 40);
  if (v70)
  {
    [v70 invalidate];
    v58 = *(v69 + 40);
    *(v69 + 40) = 0;
    goto LABEL_53;
  }
}

void sub_1000BD124()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v27 = v4;
  v28 = v6;
  v7._object = 0x80000001000D9BB0;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8])
  {
    v9 = *&v0[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
    v10 = qword_1001135F8;

    if (v10 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(&v27);
    v11 = v9;
    if (v9)
    {
      if ([v9 isFiring])
      {
        v27 = 0;
        v28 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v12 = [v1 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v27 = v13;
        v28 = v15;
        v16._countAndFlagsBits = 0xD000000000000020;
        v16._object = 0x80000001000DBFA0;
        String.append(_:)(v16);
        v17 = [v11 timerIDString];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21._countAndFlagsBits = v18;
        v21._object = v20;
        String.append(_:)(v21);

        v22 = String._bridgeToObjectiveC()();

        [v2 logInfo:v22];

        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v23 = [v11 timerIDString];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        sub_100079E30(v24, v26);
      }
    }
  }
}

void sub_1000BD434()
{
  if (*(v0 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId);
    v2 = qword_1001135F8;

    if (v2 != -1)
    {
      swift_once();
    }

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v3);
    if (v1)
    {
      if ([v1 state] == 2)
      {
        sub_1000BF040();
      }

      else
      {
        sub_1000BE9EC();
      }
    }
  }
}

void sub_1000BD5A0(void *a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_voiceOverTimer])
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v11[4] = sub_1000BFEEC;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100082B6C;
    v11[3] = &unk_100103A80;
    v6 = _Block_copy(v11);
    v7 = v1;
    v8 = a1;

    v9 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:1.0];
    _Block_release(v6);
    v10 = *&v1[v2];
    *&v1[v2] = v9;
  }
}

uint64_t sub_1000BD6C4(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = *&a2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_trailingView];
  if (v10)
  {
    sub_10004F058(&v16 - v8);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v12 = v11;
    v13 = *(v4 + 8);
    v13(v7, v3);
    v13(v9, v3);
    sub_10008BEF0(v12);
    v14 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityLabel:v14];
  }

  [objc_msgSend(a2 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

void sub_1000BD894(uint64_t a1)
{
  sub_1000BF780(319, &qword_100119590, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000BD9C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
  if (swift_dynamicCast())
  {
    v58 = v9;
    v59 = v8;
    v60 = v5;

    v12 = objc_opt_self();
    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v13 = [v2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0xD000000000000033;
    v18._object = 0x80000001000DA400;
    String.append(_:)(v18);
    v19 = [v2 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = String._bridgeToObjectiveC()();

    [v12 logInfo:v24];

    v25 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId + 8];
    if (v25)
    {
      v26 = *&v2[OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_sessionId];
      v27 = qword_1001135F8;

      if (v27 != -1)
      {
        swift_once();
      }

      v67 = v26;
      v68 = v25;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();
      sub_10004E3D4(&aBlock);
      v28 = v67;
      if (v67)
      {
        aBlock = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        v29 = [v2 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        aBlock = v30;
        v62 = v32;
        v33._object = 0x80000001000DA460;
        v33._countAndFlagsBits = 0xD000000000000010;
        String.append(_:)(v33);
        v34 = String._bridgeToObjectiveC()();

        [v12 logInfo:v34];

        sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
        v57 = static OS_dispatch_queue.main.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = v2;
        *(v35 + 24) = v28;
        v65 = sub_1000BFDBC;
        v66 = v35;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_10004B270;
        v64 = &unk_100103990;
        v36 = _Block_copy(&aBlock);
        v37 = v2;
        v38 = v28;

        static DispatchQoS.unspecified.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_1000BFDFC(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000032D4(&unk_100115D90, qword_1000D3C00);
        sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v57;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);

        (*(v60 + 8))(v7, v4);
        (*(v58 + 8))(v11, v59);
        return;
      }
    }

    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v52 = [v2 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    aBlock = v53;
    v62 = v55;
    v56._countAndFlagsBits = 0xD000000000000011;
    v56._object = 0x80000001000DA440;
    String.append(_:)(v56);
    v51 = String._bridgeToObjectiveC()();

    [v12 logInfo:v51];
  }

  else
  {
    v40 = objc_opt_self();
    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v41 = [v2 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    aBlock = v42;
    v62 = v44;
    v45._countAndFlagsBits = 0xD000000000000027;
    v45._object = 0x80000001000DA3D0;
    String.append(_:)(v45);
    v46 = [v2 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50._countAndFlagsBits = v47;
    v50._object = v49;
    String.append(_:)(v50);

    v51 = String._bridgeToObjectiveC()();

    [v40 logInfo:v51];
  }
}

uint64_t sub_1000BE0EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_observerId);

  return v1;
}

uint64_t sub_1000BE12C()
{
  v1 = [v0 systemApertureElementContext];
  v4[4] = Frame.timestamp.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10004B270;
  v4[3] = &unk_1001039B8;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

id sub_1000BE408(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimerApertureAccessoryView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000BE460(unsigned __int8 a1)
{
  v2 = v1;
  v4 = 0xD000000000000013;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = objc_allocWithZone(BSUICAPackageView);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithPackageName:v8 inBundle:v6];

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 publishedObjectWithName:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
    if (*(&v32 + 1))
    {
      sub_10002BB3C(0, &qword_100119798, CAShapeLayer_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:
        v26 = objc_opt_self();
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        type metadata accessor for TimerAnimationCountdown(0);
        _print_unlocked<A, B>(_:_:)();
        v27._countAndFlagsBits = 0xD000000000000026;
        v27._object = 0x80000001000DBF40;
        String.append(_:)(v27);
        v14 = String._bridgeToObjectiveC()();

        [v26 logInfo:v14];
        goto LABEL_19;
      }

      v15 = String._bridgeToObjectiveC()();
      v16 = [v9 publishedObjectWithName:v15];

      if (v16)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        sub_10002BB3C(0, &qword_1001197A0, CALayer_ptr);
        if (swift_dynamicCast())
        {
          v17 = objc_opt_self();
          *&v33 = 0;
          *(&v33 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(43);
          type metadata accessor for TimerAnimationCountdown(0);
          _print_unlocked<A, B>(_:_:)();
          v18._countAndFlagsBits = 0xD000000000000029;
          v18._object = 0x80000001000DBF70;
          String.append(_:)(v18);
          v19 = String._bridgeToObjectiveC()();

          [v17 logInfo:v19];

          v20 = v2[2];
          v2[2] = v9;
          v21 = v9;

          v22 = v2[3];
          v2[3] = v30;
          v23 = v30;

          v24 = v2[4];
          v2[4] = v30;
          v14 = v30;

          if (a1 > 1u)
          {
            if (a1 != 2)
            {
              v25 = 0x80000001000D7DE0;
              goto LABEL_24;
            }
          }

          else if (a1)
          {
            v25 = 0xED00006465737561;
            v4 = 0x702D6F6E696D6F64;
LABEL_24:
            v29 = (v2 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
            *v29 = v4;
            v29[1] = v25;

            sub_1000BF2B0(0.0);

            goto LABEL_19;
          }

          v25 = 0xE600000000000000;
          v4 = 0x646573756170;
          goto LABEL_24;
        }

        goto LABEL_18;
      }
    }

    sub_10002D02C(&v33, &qword_100119790, &unk_1000D76E0);
    goto LABEL_18;
  }

  v12 = objc_opt_self();
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  type metadata accessor for TimerAnimationCountdown(0);
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 0xD00000000000002CLL;
  v13._object = 0x80000001000DBF10;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v12 logInfo:v14];
  v9 = 0;
LABEL_19:

  return v9;
}

void sub_1000BE9EC()
{
  v1 = v0;
  v2 = type metadata accessor for OpaqueAlarm(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = *(v1 + 40);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v11 = [objc_opt_self() displayLinkWithTarget:v1 selector:"updateCountdownAnimation"];
  v12 = *(v1 + 40);
  *(v1 + 40) = v11;
  v13 = v11;

  if (v13)
  {
    v14 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
    swift_beginAccess();
    sub_10002CFC4(v1 + v14, v8, &qword_100114D70, &unk_1000D20E0);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_10002D02C(v8, &qword_100114D70, &unk_1000D20E0);
    }

    else
    {
      sub_1000C02AC(v8, v5, type metadata accessor for OpaqueAlarm);
      sub_10002D02C(v8, &qword_100114D70, &unk_1000D20E0);
      v16 = sub_10008AEC0();
      sub_1000C0314(v5, type metadata accessor for OpaqueAlarm);
      if (v16 >= 0.0 && v16 < 10.0)
      {
        v15 = 30;
        goto LABEL_22;
      }

      if (v16 < 10.0 || v16 >= 45.0)
      {
        if (v16 >= 240.0 || v16 < 45.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = 5;
        }

        goto LABEL_22;
      }
    }

    v15 = 10;
LABEL_22:
    [v13 setPreferredFramesPerSecond:v15];
  }

  v20 = *(v1 + 40);
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 currentRunLoop];
    [v22 addToRunLoop:v23 forMode:NSRunLoopCommonModes];
  }
}

void sub_1000BECF4()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for OpaqueAlarm(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v1 + v9, v4, &qword_100114D70, &unk_1000D20E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002D02C(v4, &qword_100114D70, &unk_1000D20E0);
    v10 = objc_opt_self();
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v17 = v1;
    type metadata accessor for TimerAnimationCountdown(0);
    _print_unlocked<A, B>(_:_:)();
    v11._object = 0x80000001000DBEA0;
    v11._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    [v10 logInfo:v12];
  }

  else
  {
    sub_10004DF2C(v4, v8);
    if (sub_10008B160())
    {
      sub_10008AB30();
      sub_1000BF2B0(v13);
    }

    else
    {
      v14 = objc_opt_self();
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v17 = v1;
      type metadata accessor for TimerAnimationCountdown(0);
      _print_unlocked<A, B>(_:_:)();
      v15._countAndFlagsBits = 0xD000000000000036;
      v15._object = 0x80000001000DBED0;
      String.append(_:)(v15);
      v16 = String._bridgeToObjectiveC()();

      [v14 logInfo:v16];
    }

    sub_1000C0314(v8, type metadata accessor for OpaqueAlarm);
  }
}

void sub_1000BF040()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for OpaqueAlarm(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v11 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v1 + v11, v4, &qword_100114D70, &unk_1000D20E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002D02C(v4, &qword_100114D70, &unk_1000D20E0);
    v12 = objc_opt_self();
    v16[1] = 0;
    v16[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v16[0] = v1;
    type metadata accessor for TimerAnimationCountdown(0);
    _print_unlocked<A, B>(_:_:)();
    v13._object = 0x80000001000DBEA0;
    v13._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 logInfo:v14];
  }

  else
  {
    sub_10004DF2C(v4, v8);
    sub_10008AB30();
    sub_1000BF2B0(v15);
    sub_1000C0314(v8, type metadata accessor for OpaqueAlarm);
  }
}

void sub_1000BF2B0(double a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for OpaqueAlarm(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  if (v11)
  {
    [v11 setStrokeStart:a1 * 0.9299 + 0.07];
  }

  v12 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002CFC4(v2 + v12, v6, &qword_100114D70, &unk_1000D20E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002D02C(v6, &qword_100114D70, &unk_1000D20E0);
    v13 = v2[2];
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_10004DF2C(v6, v10);
  if ((sub_10008A09C() & 1) == 0)
  {
    sub_1000C0314(v10, type metadata accessor for OpaqueAlarm);
    v13 = v2[2];
    if (!v13)
    {
LABEL_6:
      [objc_opt_self() setDisableActions:1];
      v16 = v2[4];
      if (v16)
      {
        v17 = objc_opt_self();
        v18 = v16;
        [v17 radFromDeg:a1 * 342.0 + 18.0];
        CATransform3DMakeRotation(&v24, v19, 0.0, 0.0, 1.0);
        [v18 setTransform:&v24];
      }

      return;
    }

LABEL_5:
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    [v14 setState:v15];

    goto LABEL_6;
  }

  v20 = v2[2];
  if (v20)
  {
    v21 = v20;

    v22 = String._bridgeToObjectiveC()();

    [v21 setState:v22];
  }

  sub_1000C0314(v10, type metadata accessor for OpaqueAlarm);
}

uint64_t sub_1000BF5EC()
{
  sub_10002D02C(v0 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, &qword_100114D70, &unk_1000D20E0);

  return swift_deallocClassInstance();
}

void sub_1000BF6BC(uint64_t a1)
{
  sub_1000BF780(319, &unk_1001195F8, type metadata accessor for OpaqueAlarm);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000BF780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000BF7D4(void *a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (v5 == 1 && (!a1 || [a1 _backlightLuminance] != 1))
  {
    v9 = objc_opt_self();
    _StringGuts.grow(_:)(42);
    v13 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0x80000001000DBE70;
    v11 = 0xD000000000000028;
    goto LABEL_12;
  }

  v6 = [v2 traitCollection];
  v7 = [v6 _backlightLuminance];

  v8 = v7 == 1 || a1 == 0;
  if (!v8 && [a1 _backlightLuminance] == 1)
  {
    v9 = objc_opt_self();
    _StringGuts.grow(_:)(44);
    v10 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0xD00000000000002ALL;
    v12 = 0x80000001000DBE40;
LABEL_12:
    String.append(_:)(*&v11);
    v14 = String._bridgeToObjectiveC()();

    [v9 logInfo:v14];
  }
}

uint64_t sub_1000BFD7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000BFDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000BFDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BFE44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFE8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BFEF4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1000BFF94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10002DAD8(&qword_1001197D0, &qword_1001197C8, &qword_1000D7708, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000032D4(&qword_1001197C8, &qword_1000D7708);
            v9 = sub_1000C0148(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000C0148(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000C01C8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C01D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C0274()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C02AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C0314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C0374()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000C0524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C058C(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  _StringGuts.grow(_:)(61);
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v7._object = 0x80000001000DC360;
  String.append(_:)(v7);
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = String._bridgeToObjectiveC()();

  [v6 logInfo:v13];

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = objc_allocWithZone(UIWindow);
    v17 = a1;
    v18 = [v16 initWithWindowScene:v15];
    v19 = [objc_allocWithZone(UIViewController) init];
    v20 = [v19 view];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [objc_opt_self() redColor];
    [v21 setBackgroundColor:v22];

    [v18 setRootViewController:v19];
    [v18 makeKeyAndVisible];

    v23 = *(v3 + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(49);

    v24 = [a1 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = String._bridgeToObjectiveC()();

    [v6 logError:v29];
    v23 = v29;
  }
}

id sub_1000C0854()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
}

id sub_1000C0908()
{
  result = [objc_opt_self() configurationWithPointSize:6 weight:16.0];
  qword_10011F6A8 = result;
  return result;
}

uint64_t sub_1000C09B4()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7);
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_1000C0C50(v6);
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v12 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_10011F6C8 = v12;
  return result;
}

uint64_t sub_1000C0C50(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C0CDC(double a1, uint64_t a2, double (*a3)(uint64_t), uint64_t *a4)
{
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  a3(v7);
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  result = sub_1000C0C50(v9);
  *a4 = v11;
  return result;
}

uint64_t sub_1000C0EF8(CGFloat a1, uint64_t a2, uint64_t *a3)
{
  v5 = String._bridgeToObjectiveC()();
  CTFontCreateWithNameAndOptions(v5, a1, 0, 0x20000uLL);

  result = Font.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000C0FA0(double a1, uint64_t a2, double (*a3)(uint64_t), unsigned int *a4, uint64_t *a5)
{
  v8 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  a3(v9);
  v12 = *a4;
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = static Font.system(size:weight:design:)();
  result = sub_1000C0C50(v11);
  *a5 = v15;
  return result;
}

uint64_t sub_1000C10DC()
{
  result = Image.init(systemName:)();
  qword_10011F730 = result;
  return result;
}

uint64_t sub_1000C110C()
{
  result = Image.init(systemName:)();
  qword_10011F738 = result;
  return result;
}

uint64_t sub_1000C1158(uint64_t a1)
{
  result = static Animation.easeInOut(duration:)();
  qword_10011F748 = result;
  return result;
}

void sub_1000C1208(double a1, uint64_t a2, uint64_t *a3)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  v4 = Animation.delay(_:)();

  *a3 = v4;
}

void sub_1000C127C(uint64_t a1, uint64_t *a2, double a3)
{
  static Animation.easeInOut(duration:)();
  v4 = Animation.delay(_:)();

  *a2 = v4;
}

void sub_1000C1300()
{
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v0 = AnyTransition.combined(with:)();

  qword_10011F788 = v0;
}

uint64_t sub_1000C1380()
{
  sub_1000C15C4();
  result = VerticalAlignment.init(_:)();
  qword_10011F790 = result;
  return result;
}

void sub_1000C1410(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Material();
  sub_1000C1560(v3, a2);
  sub_10002D08C(v3, a2);
  type metadata accessor for TimerCompressedController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Material.coreMaterial(bundle:provider:)();
}

double sub_1000C14E0()
{
  xmmword_10011F7D0 = xmmword_1000D7770;
  unk_10011F7E0 = xmmword_1000D7780;
  xmmword_10011F7F0 = xmmword_1000D7790;
  unk_10011F800 = xmmword_1000D77A0;
  result = 0.0;
  xmmword_10011F810 = xmmword_1000D77B0;
  return result;
}

double sub_1000C1520()
{
  xmmword_10011F820 = xmmword_1000D77C0;
  *algn_10011F830 = xmmword_1000D77D0;
  xmmword_10011F840 = xmmword_1000D77E0;
  unk_10011F850 = xmmword_1000D77F0;
  result = 0.0;
  xmmword_10011F860 = xmmword_1000D77B0;
  return result;
}

uint64_t *sub_1000C1560(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000C15C4()
{
  result = qword_100119860;
  if (!qword_100119860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119860);
  }

  return result;
}

uint64_t sub_1000C1628(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

double sub_1000C1688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

id sub_1000C1C34()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor);
LABEL_8:
    v11 = v2;
    return v3;
  }

  result = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [result view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = [result bottomAnchor];

  result = *(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [result view];
  if (result)
  {
    v7 = result;
    v8 = [result topAnchor];

    v9 = [v6 constraintEqualToAnchor:v8];
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1000C1D5C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor];
LABEL_7:
    v12 = v2;
    return v3;
  }

  result = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = [result bottomAnchor];

  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

    v9 = [v8 bottomAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000C1E90()
{
  sub_1000C29F8();
  sub_1000C1EBC();

  sub_1000C3274();
}

void sub_1000C1EBC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView;
  if (*&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView])
  {
    goto LABEL_16;
  }

  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();

  v3 = ObservedObject.init(wrappedValue:)();
  v5 = v4;
  v6 = objc_allocWithZone(sub_1000032D4(&qword_100119A50, &qword_1000D7A48));
  *&v99.m11 = v3;
  v99.m12 = v5;
  *&v99.m13 = xmmword_1000D7900;
  *(v6 + *((swift_isaMask & *v6) + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = UIHostingController.init(rootView:)();
  v8 = *&v1[v2];
  *&v1[v2] = v7;
  v9 = v7;

  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!*&v1[v2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v1 addChildViewController:?];
  v11 = *&v1[v2];
  if (!v11)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v11 didMoveToParentViewController:v1];
  v12 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *&v1[v2];
  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  [v12 addSubview:v14];

  v16 = v12;
  v17 = [v1 view];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = v17;
  [v17 addSubview:v16];

  v19 = *&v1[v2];
  if (!v19)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = v20;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000D24C0;
  v23 = [v16 leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = v24;
  v26 = [v24 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v27 = [v26 trailingAnchor];
  v28 = [v23 constraintEqualToAnchor:v27];

  *(v22 + 32) = v28;
  v29 = [v16 trailingAnchor];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v22 + 40) = v33;
  v34 = [v16 topAnchor];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v22 + 48) = v38;
  v39 = [v16 bottomAnchor];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v41 bottomAnchor];

  v44 = [v39 constraintEqualToAnchor:v43];
  *(v22 + 56) = v44;
  v45 = [v21 leadingAnchor];
  v46 = [v16 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v22 + 64) = v47;
  v48 = [v21 trailingAnchor];
  v49 = [v16 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v22 + 72) = v50;
  v51 = [v21 topAnchor];
  v52 = [v16 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v22 + 80) = v53;
  v54 = [v21 bottomAnchor];
  v55 = [v16 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v22 + 88) = v56;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];

LABEL_16:
  if (*&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView])
  {
    return;
  }

  v58 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView];
  if (!v58)
  {
    return;
  }

  v59 = v58;
  v60 = [v1 view];
  if (!v60)
  {
    goto LABEL_29;
  }

  v61 = v60;
  [v60 addSubview:v59];

  v62 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  v63 = sub_1000C5FC0();
  if (v63)
  {
    v64 = v63;
    v65 = objc_opt_self();
    _StringGuts.grow(_:)(45);
    v66 = [v1 description];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70._object = 0x80000001000DC6B0;
    v70._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v70);
    v71 = String._bridgeToObjectiveC()();

    [v65 logInfo:{v71, v67, v69}];

    v72 = v64;
    [v59 addSubview:v72];
    [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v73 = objc_opt_self();
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1000D24B0;
    v75 = [v72 leadingAnchor];
    v76 = [v59 leadingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76 constant:-2.0];

    *(v74 + 32) = v77;
    v78 = [v72 trailingAnchor];

    v79 = [v59 trailingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v74 + 40) = v80;
    v81 = [v72 topAnchor];

    v82 = [v59 topAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v74 + 48) = v83;
    v84 = [v72 bottomAnchor];

    v85 = [v59 bottomAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    *(v74 + 56) = v86;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    v87 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v87];

    [objc_opt_self() setDisableActions:1];
    v88 = *(v62 + 32);
    if (v88)
    {
      v89 = objc_opt_self();
      v90 = v88;
      [v89 radFromDeg:357.0];
      CATransform3DMakeRotation(&v99, v91, 0.0, 0.0, 1.0);
      [v90 setTransform:&v99];
    }
  }

  else
  {
    v92 = objc_opt_self();
    _StringGuts.grow(_:)(53);
    v93 = [v1 description];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v97._countAndFlagsBits = v94;
    v97._object = v96;
    String.append(_:)(v97);

    v98._countAndFlagsBits = 0xD000000000000033;
    v98._object = 0x80000001000DC670;
    String.append(_:)(v98);
    v72 = String._bridgeToObjectiveC()();

    [v92 logInfo:v72];
  }
}

void sub_1000C29F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
  if (!*&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView])
  {
    v75 = &type metadata for ApertureConfig;
    v76 = &off_100101EB8;
    type metadata accessor for ObservableStopwatchModel(0);
    sub_10006548C();

    v73 = ObservedObject.init(wrappedValue:)();
    v74 = v3;
    v4 = objc_allocWithZone(sub_1000032D4(&unk_100119A40, &qword_1000D5228));
    *&v4[*((swift_isaMask & *v4) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000819D0(&v73, v72);
    v5 = UIHostingController.init(rootView:)();
    sub_100081A2C(&v73);
    v6 = v5;
    v7 = [v6 view];
    if (!v7)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v8 = v7;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [v6 view];
    if (!v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10 = v9;
    v11 = [v9 layer];

    [v11 setAllowsHitTesting:0];
    [v1 addChildViewController:v6];
    v12 = [v1 view];
    if (!v12)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = v12;
    v14 = [v6 view];

    if (!v14)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    [v13 addSubview:v14];

    [v6 didMoveToParentViewController:v1];
    v15 = *&v1[v2];
    *&v1[v2] = v6;
  }

  v16 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView;
  if (*&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView])
  {
LABEL_13:
    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 SBUISA_systemApertureObstructedAreaLayoutGuide];

      v33 = [v32 leadingAnchor];
      sub_100031224();

      v34 = [v1 view];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 SBUISA_systemApertureObstructedAreaLayoutGuide];

        sub_1000032D4(&qword_100115480, &qword_1000D2510);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1000D5170;
        v38 = *&v1[v2];
        if (v38)
        {
          v39 = [v38 view];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 leadingAnchor];

            v71 = v36;
            v42 = [v36 trailingAnchor];
            v43 = [v41 constraintEqualToAnchor:v42];

            *(v37 + 32) = v43;
            v44 = *&v1[v2];
            if (v44)
            {
              v45 = [v44 view];
              if (v45)
              {
                v46 = v45;
                v47 = [v45 trailingAnchor];

                v48 = [v1 view];
                if (v48)
                {
                  v49 = v48;
                  v50 = [v48 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                  v51 = [v50 trailingAnchor];
                  v52 = [v47 constraintEqualToAnchor:v51 constant:-1.0];

                  *(v37 + 40) = v52;
                  *(v37 + 48) = sub_1000C1C34();
                  v53 = *&v1[v16];
                  if (v53)
                  {
                    v54 = [v53 view];
                    if (v54)
                    {
                      v55 = v54;
                      v56 = [v54 leadingAnchor];

                      v57 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
                      if (v57)
                      {
                        v58 = [v57 trailingAnchor];
                        v59 = [v56 constraintEqualToAnchor:v58];

                        *(v37 + 56) = v59;
                        v60 = *&v1[v16];
                        if (v60)
                        {
                          v61 = [v60 view];
                          if (v61)
                          {
                            v62 = v61;
                            v63 = [v61 trailingAnchor];

                            v64 = [v1 view];
                            if (v64)
                            {
                              v65 = v64;
                              v66 = objc_opt_self();
                              v67 = [v65 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

                              v68 = [v67 trailingAnchor];
                              v69 = [v63 constraintEqualToAnchor:v68 constant:2.0];

                              *(v37 + 64) = v69;
                              *(v37 + 72) = sub_1000C1D5C();
                              sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v66 activateConstraints:isa];

                              return;
                            }

                            goto LABEL_39;
                          }

LABEL_38:
                          __break(1u);
LABEL_39:
                          __break(1u);
                          goto LABEL_40;
                        }

LABEL_37:
                        __break(1u);
                        goto LABEL_38;
                      }

LABEL_36:
                      __break(1u);
                      goto LABEL_37;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v75 = &type metadata for ApertureConfig;
  v76 = &off_100101EB8;
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();

  v73 = ObservedObject.init(wrappedValue:)();
  v74 = v17;
  v18 = objc_allocWithZone(sub_1000032D4(&unk_100117520, &unk_1000D5230));
  *&v18[*((swift_isaMask & *v18) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100081A80(&v73, v72);
  v19 = UIHostingController.init(rootView:)();
  sub_100081ADC(&v73);
  v20 = v19;
  v21 = [v20 view];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [v20 view];
  if (!v23)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = v23;
  v25 = [v23 layer];

  [v25 setAllowsHitTesting:0];
  [v1 addChildViewController:v20];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v27 = v26;
  v28 = [v20 view];

  if (v28)
  {
    [v27 addSubview:v28];

    [v20 didMoveToParentViewController:v1];
    v29 = *&v1[v16];
    *&v1[v16] = v20;

    goto LABEL_13;
  }

LABEL_47:
  __break(1u);
}

void sub_1000C3274()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      v6 = sub_1000C5FC0();
      if (v6)
      {
        v7 = v6;
        v8 = objc_opt_self();
        _StringGuts.grow(_:)(38);
        v9 = [v2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v10._object = 0x80000001000DC640;
        v10._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v10);
        v11 = String._bridgeToObjectiveC()();

        [v8 logInfo:v11];

        v12 = v7;
        [v3 addSubview:v12];
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        v13 = objc_opt_self();
        sub_1000032D4(&qword_100115480, &qword_1000D2510);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1000D24B0;
        v15 = [v12 leadingAnchor];
        v16 = [v3 leadingAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];

        *(v14 + 32) = v17;
        v18 = [v12 trailingAnchor];

        v19 = [v3 trailingAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];

        *(v14 + 40) = v20;
        v21 = [v12 topAnchor];

        v22 = [v3 topAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];

        *(v14 + 48) = v23;
        v24 = [v12 bottomAnchor];

        v25 = [v3 bottomAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];

        *(v14 + 56) = v26;
        sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v13 activateConstraints:isa];

        v3 = v12;
      }

      else
      {
        v27 = objc_opt_self();
        _StringGuts.grow(_:)(50);
        v28 = [v2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v29._countAndFlagsBits = 0xD000000000000030;
        v29._object = 0x80000001000DC600;
        String.append(_:)(v29);
        isa = String._bridgeToObjectiveC()();

        [v27 logInfo:isa];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C3700(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  _StringGuts.grow(_:)(21);
  v9 = [v3 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._object = 0x80000001000DC250;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInfo:{v14, v10, v12}];

  v19.receiver = v3;
  v19.super_class = type metadata accessor for StopwatchApertureController(0);
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v18[4] = sub_1000C64F4;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C1628;
  v18[3] = &unk_100103D60;
  v16 = _Block_copy(v18);
  v17 = v4;

  [a1 animateAlongsideTransition:v16 completion:0];
  _Block_release(v16);
}

void sub_1000C38D8(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v23 = objc_opt_self();
        _StringGuts.grow(_:)(32);
        v24 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = " other view state";
        v26 = 0xD00000000000001ELL;
LABEL_34:
        v42 = v25 | 0x8000000000000000;
        goto LABEL_35;
      }

LABEL_33:
      v23 = objc_opt_self();
      _StringGuts.grow(_:)(35);
      v43 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = "ionCoordinatorContext>8";
      v26 = 0xD000000000000021;
      goto LABEL_34;
    }

    v23 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v41 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = " transitioned to initial view";
LABEL_32:
    v42 = (v28 - 32) | 0x8000000000000000;
    v26 = 0xD00000000000001DLL;
LABEL_35:
    String.append(_:)(*&v26);
    v44 = String._bridgeToObjectiveC()();

    [v23 logInfo:v44];

    return;
  }

  if (v3 == 2)
  {
    v23 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v27 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = " transitioned to minimal view";
    goto LABEL_32;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      _StringGuts.grow(_:)(67);
      v4 = [a2 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0xD00000000000002FLL;
      v9._object = 0x80000001000DC700;
      String.append(_:)(v9);
      v10 = *&a2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch];
      if (v10)
      {
        v11 = objc_opt_self();
        [v10 state];
        type metadata accessor for MTStopwatchState(0);
        _print_unlocked<A, B>(_:_:)();
        v12._countAndFlagsBits = 0x6D2077656976202CLL;
        v12._object = 0xEE00203A6C65646FLL;
        String.append(_:)(v12);
        sub_1000032D4(&qword_100119A58, qword_1000D7A50);
        _print_unlocked<A, B>(_:_:)();
        v13 = String._bridgeToObjectiveC()();

        [v11 logInfo:v13];

        sub_1000C4010();
        v14 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
        if (v14)
        {
          v15 = [v14 view];
          if (v15)
          {
            v16 = v15;
            [v15 setHidden:0];

            v17 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView];
            if (v17)
            {
              v18 = [v17 view];
              if (v18)
              {
                v19 = v18;
                [v18 setHidden:0];

                v20 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView];
                if (v20)
                {
                  [v20 setHidden:1];
                }

                v21 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView];
                if (v21)
                {
                  [v21 setHidden:1];
                }

                v22 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView];
                if (v22)
                {
                  [v22 setHidden:1];
                }

                return;
              }

LABEL_46:
              __break(1u);
              return;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v29 = objc_opt_self();
  _StringGuts.grow(_:)(31);
  v30 = [a2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v31._object = 0x80000001000D9F20;
  v31._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  [v29 logInfo:v32];

  v33 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
  if (!v33)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = [v33 view];
  if (!v34)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v35 = v34;
  [v34 setHidden:1];

  v36 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView];
  if (!v36)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v38 = v37;
  [v37 setHidden:1];

  v39 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView];
  if (v39)
  {
    [v39 setHidden:0];
  }

  v40 = *&a2[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView];
  if (v40)
  {

    [v40 setHidden:0];
  }
}

void sub_1000C4010()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*&v47.a > 1)
  {
    v6 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
    v7 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
    if (v7)
    {
      v8 = [v7 view];
      if (v8)
      {
        v9 = v8;
        [v8 alpha];
        v11 = v10;

        if (v11 != 0.0)
        {
          return;
        }

        v12 = sub_1000C1C34();
        [v12 setConstant:1.0];

        v13 = sub_1000C1D5C();
        [v13 setConstant:4.0];

        v14 = swift_allocObject();
        *(v14 + 16) = v0;
        v15 = objc_allocWithZone(UIViewPropertyAnimator);
        *&v47.tx = sub_1000C64BC;
        *&v47.ty = v14;
        *&v47.a = _NSConcreteStackBlock;
        *&v47.b = 1107296256;
        *&v47.c = sub_10004B270;
        *&v47.d = &unk_100103C20;
        v16 = _Block_copy(&v47);
        v17 = v0;

        v18 = [v15 initWithDuration:v16 dampingRatio:0.5 animations:1.0];
        _Block_release(v16);
        [v18 startAnimation];

        v19 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
        v20 = String._bridgeToObjectiveC()();
        [v19 setName:v20];

        isa = Double._bridgeToObjectiveC()().super.super.isa;
        [v19 setValue:isa forKey:kCAFilterInputRadius];

        v22 = Bool._bridgeToObjectiveC()().super.super.isa;
        [v19 setValue:v22 forKey:kCAFilterInputNormalizeEdges];

        v23 = Bool._bridgeToObjectiveC()().super.super.isa;
        [v19 setValue:v23 forKey:kCAFilterInputHardEdges];

        v24 = String._bridgeToObjectiveC()();
        [v19 setValue:v24 forKey:kCAFilterInputQuality];

        v25 = String._bridgeToObjectiveC()();
        [v19 setValue:v25 forKey:kCAFilterInputIntermediateBitDepth];

        v26 = *&v0[v6];
        if (v26)
        {
          v27 = [v26 view];
          if (v27)
          {
            v28 = v27;
            v29 = [v27 layer];

            sub_1000032D4(&qword_100114138, &unk_1000D1420);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_1000D08B0;
            *(v30 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
            *(v30 + 32) = v19;
            v5 = v19;
            v31 = Array._bridgeToObjectiveC()().super.isa;

            [v29 setFilters:v31];

            v32 = *&v0[v6];
            if (v32)
            {
              v33 = [v32 view];
              if (v33)
              {
                v34 = v33;
                CGAffineTransformMakeScale(&v47, 0.9, 0.9);
                [v34 setTransform:&v47];

                v35 = swift_allocObject();
                *(v35 + 16) = v17;
                v36 = objc_allocWithZone(UIViewPropertyAnimator);
                *&v47.tx = sub_1000C64DC;
                *&v47.ty = v35;
                *&v47.a = _NSConcreteStackBlock;
                *&v47.b = 1107296256;
                *&v47.c = sub_10004B270;
                *&v47.d = &unk_100103C70;
                v37 = _Block_copy(&v47);
                v38 = v17;

                v39 = [v36 initWithDuration:v37 dampingRatio:0.4 animations:1.0];
                _Block_release(v37);
                [v39 startAnimationAfterDelay:0.06];

                v40 = objc_opt_self();
                v41 = swift_allocObject();
                *(v41 + 16) = v38;
                *&v47.tx = sub_1000C64E4;
                *&v47.ty = v41;
                *&v47.a = _NSConcreteStackBlock;
                *&v47.b = 1107296256;
                *&v47.c = sub_10004B270;
                *&v47.d = &unk_100103CC0;
                v42 = _Block_copy(&v47);
                v43 = v38;

                v44 = swift_allocObject();
                *(v44 + 16) = v43;
                *&v47.tx = sub_1000C64EC;
                *&v47.ty = v44;
                *&v47.a = _NSConcreteStackBlock;
                *&v47.b = 1107296256;
                *&v47.c = sub_1000C1688;
                *&v47.d = &unk_100103D10;
                v45 = _Block_copy(&v47);
                v46 = v43;

                [v40 _animateUsingSpringWithDampingRatio:0 response:v42 tracking:v45 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
                _Block_release(v45);
                _Block_release(v42);
                goto LABEL_13;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v1 = sub_1000C1C34();
  [v1 setConstant:2.0];

  v2 = sub_1000C1D5C();
  [v2 setConstant:1.0];

  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView];
  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  [v4 setAlpha:0.0];
LABEL_13:
}

void sub_1000C4774(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_1000C4814(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView;
  v3 = *(a1 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 setAlpha:1.0];

  v6 = *(a1 + v2);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = *&CGAffineTransformIdentity.c;
    v10[0] = *&CGAffineTransformIdentity.a;
    v10[1] = v9;
    v10[2] = *&CGAffineTransformIdentity.tx;
    [v7 setTransform:v10];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1000C48E0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 layer];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setValue:isa forKeyPath:v6];
}

void sub_1000C49B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  [v6 setFilters:0];
}

uint64_t sub_1000C4A50(char a1, char a2, double a3, double a4, long double a5, double a6)
{
  v29.receiver = v6;
  v29.super_class = type metadata accessor for StopwatchApertureController(0);
  objc_msgSendSuper2(&v29, "didUpdateCurrentInterval:adjustedCurrentInterval:totalInterval:adjustedTotalInterval:isStopwatchRunning:isStopwatchStopped:", a1 & 1, a2 & 1, a3, a4, a5, a6);
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D7910;
  v14 = *&v6[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  *(inited + 32) = v14;
  *(inited + 40) = *&v6[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation];
  v15 = 60.0;
  v16 = fmod(a5, 60.0);

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = 360.0 - v16 / v15 * 360.0;
    [objc_opt_self() setDisableActions:1];
    v17 = *(v14 + 32);
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      [v18 radFromDeg:v15];
      CATransform3DMakeRotation(&v27, v20, 0.0, 0.0, 1.0);
      v28 = v27;
      [v19 setTransform:&v27];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v21 = *(inited + 40);

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  [objc_opt_self() setDisableActions:1];
  v22 = *(v21 + 32);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    [v23 radFromDeg:v15];
    CATransform3DMakeRotation(&v27, v25, 0.0, 0.0, 1.0);
    v28 = v27;
    [v24 setTransform:&v27];
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_1000C4EA0(SEL *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for StopwatchApertureController(0);
  objc_msgSendSuper2(&v13, *a1);
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D7910;
  v4 = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation];
  *(inited + 32) = v4;
  *(inited + 40) = *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation];

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      [v6 setState:v7];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);

      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v9 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
  if (v9)
  {
LABEL_9:
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    [v10 setState:v11];
  }

LABEL_10:

  swift_setDeallocating();
  return swift_arrayDestroy();
}

char *sub_1000C50E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors) = 9;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole) = 2;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode) = 3;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode) = 4;
  v8 = [objc_opt_self() mtURLForSection:3];
  if (v8)
  {
    v9 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  sub_1000573D0(v7, v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL);
  v12 = (v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier);
  *v12 = 0xD000000000000015;
  v12[1] = 0x80000001000D7F20;
  v13 = (v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier);
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x80000001000DC6E0;
  v14 = SBUISystemApertureElementIdentifierTimer;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier) = SBUISystemApertureElementIdentifierTimer;
  v15 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_allocWithZone(ObjCClassFromMetadata);
  v18 = v14;
  *(v2 + v15) = [v17 init];
  v19 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *(v2 + v19) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v20 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *(v2 + v20) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *(v2 + v21) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor) = 0;
  *(v2 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor) = 0;
  v22 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v23 = swift_allocObject();
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0x404E000000000000;
  *(v2 + v22) = v23;
  v24 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0x404E000000000000;
  *(v2 + v24) = v25;
  return sub_10002DC6C(a1, a2);
}

id sub_1000C5430(void *a1)
{
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors] = 9;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode] = 4;
  v6 = [objc_opt_self() mtURLForSection:3];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  sub_1000573D0(v5, &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL]);
  v10 = &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier];
  *v10 = 0xD000000000000015;
  *(v10 + 1) = 0x80000001000D7F20;
  v11 = &v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier];
  *v11 = 0xD00000000000001ELL;
  *(v11 + 1) = 0x80000001000DC6E0;
  v12 = SBUISystemApertureElementIdentifierTimer;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v13 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_allocWithZone(ObjCClassFromMetadata);
  v16 = v12;
  *&v1[v13] = [v15 init];
  v17 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *&v1[v17] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *&v1[v18] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v19 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *&v1[v19] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor] = 0;
  v20 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0x404E000000000000;
  *&v1[v20] = v21;
  v22 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v23 = swift_allocObject();
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0x404E000000000000;
  *&v1[v22] = v23;
  v24 = type metadata accessor for StopwatchApertureController(0);
  v27.receiver = v1;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, "initWithCoder:", a1);

  if (v25)
  {
  }

  return v25;
}

id sub_1000C57D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_presentationBehaviors] = 9;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_maximumLayoutMode] = 4;
  v9 = [objc_opt_self() mtURLForSection:3];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1000573D0(v8, &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL]);
  v13 = &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier];
  *v13 = 0xD000000000000015;
  *(v13 + 1) = 0x80000001000D7F20;
  v14 = &v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_timerObserverIdentifier];
  *v14 = 0xD00000000000001ELL;
  *(v14 + 1) = 0x80000001000DC6E0;
  v15 = SBUISystemApertureElementIdentifierTimer;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v16 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_allocWithZone(ObjCClassFromMetadata);
  v19 = v15;
  *&v3[v16] = [v18 init];
  v20 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_trailingView;
  *&v3[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalView;
  *&v3[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v22 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_keyColor;
  *&v3[v22] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedLeadingView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedTrailingView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingLapView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_customTrailingTimeView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingLapViewBottomAnchor] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController____lazy_storage___customTrailingTimeViewBottomAnchor] = 0;
  v23 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_compressedAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0x404E000000000000;
  *&v3[v23] = v24;
  v25 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_minimalAnimation;
  v26 = swift_allocObject();
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0x404E000000000000;
  *&v3[v25] = v26;
  if (a2)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for StopwatchApertureController(0);
  v31.receiver = v3;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", v27, a3);

  return v29;
}

double sub_1000C5BD4()
{
  sub_10002D02C(v0 + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL, &unk_100119A20, &qword_1000D1DC0);

  return result;
}

id sub_1000C5D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopwatchApertureController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StopwatchApertureController(uint64_t a1)
{
  result = qword_1001198D0;
  if (!qword_1001198D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C5EDC(uint64_t a1)
{
  sub_100056DFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1000C5FC0()
{
  v1 = v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = objc_allocWithZone(BSUICAPackageView);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithPackageName:v5 inBundle:v3];

  if (!v6)
  {
    v9 = objc_opt_self();
    v26.m11 = 0.0;
    v26.m12 = -2.68156159e154;
    _StringGuts.grow(_:)(52);
    *&v28 = v1;
    type metadata accessor for StopwatchRunningAnimation();
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0xD000000000000032;
    v10._object = 0x80000001000DC590;
    String.append(_:)(v10);
    v11 = String._bridgeToObjectiveC()();

    [v9 logInfo:{v11, *&v26.m11}];
    v6 = 0;
    goto LABEL_12;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 publishedObjectWithName:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  *&v26.m11 = v28;
  *&v26.m13 = v29;
  if (!*(&v29 + 1))
  {
    sub_10002D02C(&v26, &qword_100119790, &unk_1000D76E0);
    goto LABEL_11;
  }

  sub_10002BB3C(0, &qword_1001197A0, CALayer_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v23 = objc_opt_self();
    v26.m11 = 0.0;
    v26.m12 = -2.68156159e154;
    _StringGuts.grow(_:)(40);
    *&v28 = v1;
    type metadata accessor for StopwatchRunningAnimation();
    _print_unlocked<A, B>(_:_:)();
    v24._countAndFlagsBits = 0xD000000000000026;
    v24._object = 0x80000001000DBF40;
    String.append(_:)(v24);
    v11 = String._bridgeToObjectiveC()();

    [v23 logInfo:v11];
    goto LABEL_12;
  }

  v12 = v27;
  v13 = objc_opt_self();
  v26.m11 = 0.0;
  v26.m12 = -2.68156159e154;
  _StringGuts.grow(_:)(33);
  *&v28 = v1;
  type metadata accessor for StopwatchRunningAnimation();
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x80000001000DC5D0;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  [v13 logInfo:{v15, *&v26.m11, *&v26.m13}];

  v16 = *(v1 + 16);
  *(v1 + 16) = v6;
  v17 = v6;

  v18 = *(v1 + 32);
  *(v1 + 32) = v12;
  v11 = v12;

  [objc_opt_self() setDisableActions:1];
  v19 = *(v1 + 32);
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = v19;
    [v20 radFromDeg:360.0];
    CATransform3DMakeRotation(&v26, v22, 0.0, 0.0, 1.0);
    [v21 setTransform:&v26];
  }

LABEL_12:

  return v6;
}

uint64_t sub_1000C6408()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C6484()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000C64C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(Swift::Double _, Swift::Bool padSingleLeadingZero)
{
  v2 = StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(padSingleLeadingZero, _);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}