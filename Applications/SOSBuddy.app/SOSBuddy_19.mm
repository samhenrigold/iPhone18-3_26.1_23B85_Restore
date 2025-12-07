uint64_t sub_1001ACFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98, &unk_100285FE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  sub_100009274(&qword_10035EEA0, &unk_100359B30, &unk_10027DCF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50, &unk_10027C800);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98, &unk_100285FE0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AD2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100363F48, &qword_10028BD78);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_1003558E0, &qword_10028BD80);
  sub_100009274(&qword_100363F50, &qword_1003558E0, &qword_10028BD80, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50, &unk_10027C800);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100363F58, &qword_100363F48, &qword_10028BD78, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AD5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0, &unk_10027A950);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100009274(&qword_10035CF60, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50, &unk_10027C800);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0, &unk_10027A950, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AD8B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ADA6C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001ADB30(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1001ADBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_1001ADC48()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ADCE8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001ADD70(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ADE70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953391987;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x676E69646E6573;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1953391987;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69646E6573;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001ADF54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001ADFE8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001AE068(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001AE0F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AE89C(*a1);
  *a2 = result;
  return result;
}

void sub_1001AE128(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1953391987;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x676E69646E6573;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1001AE178(uint64_t a1)
{
  v11 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = 1953391987;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) != 1)
  {
    v3 = 1701736302;
  }

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x676E69646E6573;
  }

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 95;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage))
  {
    v8 = 76;
  }

  else
  {
    v8 = 67;
  }

  v9._countAndFlagsBits = v8;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  return v11;
}

double sub_1001AE2D8()
{

  return result;
}

uint64_t sub_1001AE320()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001AE4CC(void *a1)
{
  v2 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1001AE610(uint64_t a1, int a2)
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

uint64_t sub_1001AE658(uint64_t result, int a2, int a3)
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

unint64_t sub_1001AE6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364448;
  if (!qword_100364448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364448);
  }

  return result;
}

unint64_t sub_1001AE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364450;
  if (!qword_100364450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364450);
  }

  return result;
}

unint64_t sub_1001AE770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364458;
  if (!qword_100364458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364458);
  }

  return result;
}

uint64_t sub_1001AE854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001AE89C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003238F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001AE918@<X0>(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v3 + 72);
  v4 = *(v3 + 80);
  v6 = objc_opt_self();

  v7 = [v6 mainBundle];
  v14._object = 0x80000001002A2880;
  v8._object = 0x80000001002A2820;
  v9.value._object = 0x800000010029B460;
  v14._countAndFlagsBits = 0xD00000000000003BLL;
  v8._countAndFlagsBits = 0x1000000000000058;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v14);

  type metadata accessor for UIMetrics();
  sub_10003BDC8();
  result = EnvironmentObject.init()();
  a1->_countAndFlagsBits = result;
  a1->_object = v13;
  a1[1]._countAndFlagsBits = v5;
  a1[1]._object = v4;
  a1[2] = v11;
  return result;
}

uint64_t sub_1001AEA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001AEA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001AEAF0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v49 = type metadata accessor for KeyboardShortcut();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for GlassProminentButtonStyle();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000040A8(&qword_100364470, &qword_10028C290);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v41 - v6;
  v45 = sub_1000040A8(&qword_100364478, &qword_10028C298);
  __chkstk_darwin(v45);
  v9 = &v41 - v8;
  v51 = sub_1000040A8(&qword_100364480, &qword_10028C2A0);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v41 - v10;
  v52 = sub_1000040A8(&qword_100364488, &qword_10028C2A8);
  __chkstk_darwin(v52);
  v53 = &v41 - v11;
  v12 = *v2;
  if (*v2)
  {
    v13 = v12[9];
    v14 = v12[10];
    sub_1000088DC(v12 + 6, v13);
    v15 = (*(v14 + 32))(v56, v13, v14);
    __chkstk_darwin(v15);
    v54 = v2;

    sub_1000040A8(&qword_100364490, &qword_10028C2B0);
    sub_1001B0588(&qword_100364498, &qword_100364490, &qword_10028C2B0, sub_1001AF488);
    Button.init(action:label:)();
    GlassProminentButtonStyle.init()();
    sub_100009274(&qword_1003644A8, &qword_100364470, &qword_10028C290, &protocol conformance descriptor for Button<A>);
    sub_1001B06E0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v16 = v44;
    v17 = v43;
    View.buttonStyle<A>(_:)();
    (*(v41 + 8))(v5, v17);
    v18 = &v9[*(sub_1000040A8(&qword_1003644B0, &unk_10028C2B8) + 36)];
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    (*(v42 + 8))(v7, v16);
    *v18 = swift_getKeyPath();
    v19 = [objc_opt_self() darkGrayColor];
    v20 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *&v58 = v20;
    v22 = AnyShapeStyle.init<A>(_:)();
    v23 = &v9[*(v45 + 36)];
    *v23 = KeyPath;
    v23[1] = v22;
    v24 = v47;
    static KeyboardShortcut.defaultAction.getter();
    sub_1001B023C();
    v25 = v46;
    View.keyboardShortcut(_:)();
    (*(v48 + 8))(v24, v49);
    sub_100008FA0(v9, &qword_100364478, &qword_10028C298);
    v26 = *(*sub_1000088DC(v56, v57) + 216);
    v27 = *(*sub_1000088DC(v56, v57) + 216);
    static Alignment.center.getter();
    if (v26 > v27)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v29 = v53;
    v30 = (*(v50 + 32))(v53, v25, v51);
    v31 = (v29 + *(v52 + 36));
    v32 = v63;
    v31[4] = v62;
    v31[5] = v32;
    v31[6] = v64;
    v33 = v59;
    *v31 = v58;
    v31[1] = v33;
    v34 = v61;
    v31[2] = v60;
    v31[3] = v34;
    v35 = (v54[6])(v30);
    v37 = v36;
    v39 = v38;
    sub_1001B046C();
    View.accessibilityLabel(_:)();
    sub_1000317C4(v35, v37, v39 & 1);

    sub_100008FA0(v29, &qword_100364488, &qword_10028C2A8);
    return sub_100008964(v56);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF334(uint64_t a1)
{
  type metadata accessor for UIMetrics();
  sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

  v4 = EnvironmentObject.init()();
  sub_1001AF488(v4, v1, v2);
  View.accessibility(hidden:)();
}

unint64_t sub_1001AF488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003644A0;
  if (!qword_1003644A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644A0);
  }

  return result;
}

uint64_t sub_1001AF4DC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_1003644E0, &qword_10028C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1000040A8(&qword_1003644E8, &qword_10028C3E8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = *v1;
  if (*v1)
  {
    v13 = v12[9];
    v14 = v12[10];
    sub_1000088DC(v12 + 6, v13);
    (*(v14 + 32))(v28, v13, v14);
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v15 = sub_1000040A8(&qword_1003644F0, &qword_10028C3F0);
    sub_1001AF8B0(v1, &v8[*(v15 + 44)]);
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    v16 = Font.leading(_:)();

    (*(v3 + 8))(v5, v2);
    KeyPath = swift_getKeyPath();
    sub_100006C20(v8, v11, &qword_1003644E0, &qword_10028C3E0);
    v18 = &v11[*(sub_1000040A8(&qword_1003644F8, &qword_10028C428) + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    v19 = static Color.green.getter();
    sub_100008FA0(v8, &qword_1003644E0, &qword_10028C3E0);
    *&v11[*(v9 + 36)] = v19;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100008964(v28);
    v20 = v27;
    sub_10000CF4C(v11, v27, &qword_1003644E8, &qword_10028C3E8);
    result = sub_1000040A8(&qword_100364500, &unk_10028C430);
    v22 = (v20 + *(result + 36));
    v23 = v34;
    v22[4] = v33;
    v22[5] = v23;
    v22[6] = v35;
    v24 = v30;
    *v22 = v29;
    v22[1] = v24;
    v25 = v32;
    v22[2] = v31;
    v22[3] = v25;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v75 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v75);
  v86 = v71 - v3;
  v4 = sub_1000040A8(&qword_100364508, &qword_10028C440);
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v74 = v71 - v5;
  v72 = sub_1000040A8(&qword_100364510, &qword_10028C448);
  __chkstk_darwin(v72);
  v77 = v71 - v6;
  v76 = sub_1000040A8(&qword_100364518, &qword_10028C450);
  __chkstk_darwin(v76);
  v83 = v71 - v7;
  v81 = sub_1000040A8(&qword_100364520, &qword_10028C458);
  __chkstk_darwin(v81);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = v71 - v11;
  __chkstk_darwin(v12);
  v14 = v71 - v13;
  v15 = sub_1000040A8(&qword_1003584F8, &qword_10028C460);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v71 - v17);
  v19 = sub_1000040A8(&qword_100364528, &unk_10028C468);
  __chkstk_darwin(v19 - 8);
  v82 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = v71 - v22;
  v23 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  v24 = *(v23 + 112);

  v25 = v24;
  v26 = static UIContentSizeCategory.>= infix(_:_:)();

  v84 = v14;
  v85 = v9;
  if (v26)
  {
    v27 = (*(v16 + 56))(v87, 1, 1, v15);
  }

  else
  {
    v28 = *(v23 + 72);
    v29 = *(v23 + 80);
    sub_1000088DC((v23 + 48), v28);
    (*(v29 + 24))(&v88, v28, v29);
    v30 = sub_100008964(&v88);
    v31 = (a1[2])(v30);
    v32 = (v18 + *(v15 + 36));
    v33 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
    v34 = enum case for Image.Scale.medium(_:);
    v35 = type metadata accessor for Image.Scale();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    *v18 = v31;
    v36 = v87;
    sub_1001B0668(v18, v87);
    v27 = (*(v16 + 56))(v36, 0, 1, v15);
  }

  v37 = (a1[4])(v27);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = *(v23 + 112);
  v45 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  *&v88 = v37;
  *(&v88 + 1) = v39;
  LOBYTE(v89) = v41 & 1;
  *(&v89 + 1) = v43;
  *&v90 = KeyPath;
  *(&v90 + 1) = (v45 & 1) == 0;
  v91 = v45 & 1;
  v47 = enum case for DynamicTypeSize.accessibility2(_:);
  v48 = type metadata accessor for DynamicTypeSize();
  v49 = v86;
  (*(*(v48 - 8) + 104))(v86, v47, v48);
  sub_1001B06E0(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000040A8(&qword_100356CF8, &unk_10027A5B0);
  sub_10003F7B0();
  v71[1] = UIContentSizeCategoryAccessibilityExtraLarge;
  v71[0] = v23;
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  v50 = v74;
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v49, &qword_100354D60, &qword_100277B30);
  sub_1000317C4(v37, v39, v41 & 1);

  v51 = swift_getKeyPath();
  v52 = v77;
  (*(v78 + 32))(v77, v50, v79);
  v53 = v52 + *(v72 + 36);
  *v53 = v51;
  *(v53 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v83;
  sub_10000CF4C(v52, v83, &qword_100364510, &qword_10028C448);
  v55 = (v54 + *(v76 + 36));
  v56 = v89;
  *v55 = v88;
  v55[1] = v56;
  v55[2] = v90;
  v57 = *(v71[0] + 112);

  LOBYTE(v52) = static UIContentSizeCategory.>= infix(_:_:)();

  if (v52)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = swift_getKeyPath();
  v60 = v80;
  sub_10000CF4C(v54, v80, &qword_100364518, &qword_10028C450);
  v61 = v60 + *(v81 + 36);
  *v61 = v59;
  *(v61 + 8) = v58;
  v62 = v84;
  sub_10000CF4C(v60, v84, &qword_100364520, &qword_10028C458);
  v63 = v87;
  v64 = v82;
  sub_1001B0738(v87, v82);
  v65 = v85;
  sub_100006C20(v62, v85, &qword_100364520, &qword_10028C458);
  v66 = v73;
  *v73 = 0;
  *(v66 + 8) = 1;
  v67 = v66;
  v68 = sub_1000040A8(&qword_100364530, &qword_10028C538);
  sub_1001B0738(v64, v67 + v68[12]);
  sub_100006C20(v65, v67 + v68[16], &qword_100364520, &qword_10028C458);
  v69 = v67 + v68[20];
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_100008FA0(v62, &qword_100364520, &qword_10028C458);
  sub_100008FA0(v63, &qword_100364528, &unk_10028C468);
  sub_100008FA0(v65, &qword_100364520, &qword_10028C458);
  return sub_100008FA0(v64, &qword_100364528, &unk_10028C468);
}

unint64_t sub_1001B023C()
{
  result = qword_1003644B8;
  if (!qword_1003644B8)
  {
    sub_100008CF0(&qword_100364478, &qword_10028C298);
    sub_1001B02F4();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644B8);
  }

  return result;
}

unint64_t sub_1001B02F4()
{
  result = qword_1003644C0;
  if (!qword_1003644C0)
  {
    sub_100008CF0(&qword_1003644B0, &unk_10028C2B8);
    sub_100008CF0(&qword_100364470, &qword_10028C290);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100009274(&qword_1003644A8, &qword_100364470, &qword_10028C290, &protocol conformance descriptor for Button<A>);
    sub_1001B06E0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644C0);
  }

  return result;
}

unint64_t sub_1001B046C()
{
  result = qword_1003644C8;
  if (!qword_1003644C8)
  {
    sub_100008CF0(&qword_100364488, &qword_10028C2A8);
    sub_100008CF0(&qword_100364478, &qword_10028C298);
    sub_1001B023C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644C8);
  }

  return result;
}

uint64_t sub_1001B0588(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    sub_1001B06E0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B0668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003584F8, &qword_10028C460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B06E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B0738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100364528, &unk_10028C468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B07AC()
{
  result = qword_100364538;
  if (!qword_100364538)
  {
    sub_100008CF0(&qword_100364500, &unk_10028C430);
    sub_1001B0838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364538);
  }

  return result;
}

unint64_t sub_1001B0838()
{
  result = qword_100364540;
  if (!qword_100364540)
  {
    sub_100008CF0(&qword_1003644E8, &qword_10028C3E8);
    sub_1001B08F0();
    sub_100009274(&qword_100357798, &qword_1003577A0, &qword_10027B320, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364540);
  }

  return result;
}

unint64_t sub_1001B08F0()
{
  result = qword_100364548;
  if (!qword_100364548)
  {
    sub_100008CF0(&qword_1003644F8, &qword_10028C428);
    sub_100009274(&qword_100364550, &qword_1003644E0, &qword_10028C3E0, &protocol conformance descriptor for HStack<A>);
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364548);
  }

  return result;
}

uint64_t sub_1001B09D4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001B0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364608;
  if (!qword_100364608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364608);
  }

  return result;
}

unint64_t sub_1001B0C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001B0C68(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B0C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364610;
  if (!qword_100364610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364610);
  }

  return result;
}

uint64_t sub_1001B0CBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1001B0D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001B0DA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100364620, &qword_10028C780);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v35 = &v34 - v7;
  v43 = sub_1000040A8(&qword_100364628, &qword_10028C788);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v34 - v10;
  v34 = static HorizontalAlignment.center.getter();
  v51 = 0;
  v42 = a1;
  sub_1001B1420(a1, v49);
  v64 = *&v49[192];
  v65 = *&v49[208];
  v66[0] = *&v49[224];
  *(v66 + 9) = *&v49[233];
  v60 = *&v49[128];
  v61 = *&v49[144];
  v62 = *&v49[160];
  v63 = *&v49[176];
  v56 = *&v49[64];
  v57 = *&v49[80];
  v58 = *&v49[96];
  v59 = *&v49[112];
  v52 = *v49;
  v53 = *&v49[16];
  v54 = *&v49[32];
  v55 = *&v49[48];
  v67[12] = *&v49[192];
  v67[13] = *&v49[208];
  v68[0] = *&v49[224];
  *(v68 + 9) = *&v49[233];
  v67[8] = *&v49[128];
  v67[9] = *&v49[144];
  v67[10] = *&v49[160];
  v67[11] = *&v49[176];
  v67[4] = *&v49[64];
  v67[5] = *&v49[80];
  v67[6] = *&v49[96];
  v67[7] = *&v49[112];
  v67[0] = *v49;
  v67[1] = *&v49[16];
  v67[2] = *&v49[32];
  v67[3] = *&v49[48];
  sub_100006C20(&v52, v48, &qword_100364630, &qword_10028C790);
  sub_100008FA0(v67, &qword_100364630, &qword_10028C790);
  *(&v50[12] + 7) = v64;
  *(&v50[13] + 7) = v65;
  *(&v50[14] + 7) = v66[0];
  v50[15] = *(v66 + 9);
  *(&v50[8] + 7) = v60;
  *(&v50[9] + 7) = v61;
  *(&v50[10] + 7) = v62;
  *(&v50[11] + 7) = v63;
  *(&v50[4] + 7) = v56;
  *(&v50[5] + 7) = v57;
  *(&v50[6] + 7) = v58;
  *(&v50[7] + 7) = v59;
  *(v50 + 7) = v52;
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  v11 = v51;
  v12 = static SafeAreaRegions.all.getter();
  v13 = static SafeAreaRegions.keyboard.getter();
  static Edge.Set.horizontal.getter();
  v14 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v15 = Edge.Set.init(rawValue:)();
  *(&v48[32] + 1) = v50[15];
  *(&v48[26] + 1) = v50[12];
  *(&v48[28] + 1) = v50[13];
  *(&v48[30] + 1) = v50[14];
  *(&v48[18] + 1) = v50[8];
  *(&v48[20] + 1) = v50[9];
  *(&v48[22] + 1) = v50[10];
  *(&v48[24] + 1) = v50[11];
  *(&v48[10] + 1) = v50[4];
  *(&v48[12] + 1) = v50[5];
  *(&v48[14] + 1) = v50[6];
  *(&v48[16] + 1) = v50[7];
  *(&v48[2] + 1) = v50[0];
  *(&v48[4] + 1) = v50[1];
  *(&v48[6] + 1) = v50[2];
  v48[0] = v34;
  v48[1] = 0;
  LOBYTE(v48[2]) = v11;
  *(&v48[8] + 1) = v50[3];
  v48[35] = v12 & ~v13;
  LOBYTE(v48[36]) = v15;
  v17 = v36;
  v16 = v37;
  (*(v36 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v37);
  v18 = sub_1000040A8(&qword_100364638, &qword_10028C798);
  v19 = sub_1001B1A60();
  v20 = v35;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v5, v16);
  memcpy(v49, v48, sizeof(v49));
  sub_100008FA0(v49, &qword_100364638, &qword_10028C798);
  v48[0] = v18;
  v48[1] = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v45;
  v22 = v39;
  View.navigationBarBackButtonHidden(_:)();
  (*(v38 + 8))(v20, v22);
  v46 = *(v42 + 32);
  v47 = *(v42 + 48);
  sub_1000040A8(&qword_100363A18, &qword_1002903D0);
  State.projectedValue.getter();
  v23 = v48[0];
  v24 = v48[1];
  v25 = v48[2];
  LODWORD(v42) = LOBYTE(v48[3]);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = v43;
  v28(v40, v21, v43);
  v30 = v44;
  v28(v44, v27, v29);
  v31 = &v30[*(sub_1000040A8(&qword_100364658, &qword_10028C7B0) + 48)];
  *v31 = v23;
  *(v31 + 1) = v24;
  *(v31 + 2) = v25;
  v31[24] = v42;
  v32 = *(v26 + 8);

  v32(v45, v29);

  return (v32)(v27, v29);
}

uint64_t sub_1001B1420@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v76._object = 0x800000010029FB70;
  v6._object = 0x800000010029C8E0;
  v76._countAndFlagsBits = 0xD00000000000004ELL;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v76);

  v9 = [v4 mainBundle];
  v77._object = 0x80000001002A2420;
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x80000001002A23F0;
  v77._countAndFlagsBits = 0xD00000000000003FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v77);

  v66 = *(a1 + 32);
  *&v67 = *(a1 + 48);
  sub_1000040A8(&qword_100363A18, &qword_1002903D0);
  State.wrappedValue.getter();
  v13 = *&v64[0];
  type metadata accessor for UIMetrics();
  sub_1001B1CCC(&qword_100354D40, type metadata accessor for UIMetrics);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v49 = BYTE8(v64[0]);
  v17 = static Alignment.center.getter();
  v28 = v18;
  v29 = v17;
  sub_1001B187C(&v66);
  v58 = v74;
  v59[0] = *v75;
  *(v59 + 9) = *&v75[9];
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v60[8] = v74;
  v61[0] = *v75;
  *(v61 + 9) = *&v75[9];
  v60[4] = v70;
  v60[5] = v71;
  v60[6] = v72;
  v60[7] = v73;
  v60[0] = v66;
  v60[1] = v67;
  v60[2] = v68;
  v60[3] = v69;
  sub_100006C20(&v50, v64, &qword_100364660, &qword_10028C7B8);
  sub_100008FA0(v60, &qword_100364660, &qword_10028C7B8);
  v19 = v58;
  *v75 = v58;
  *&v75[16] = v59[0];
  *&v75[25] = *(v59 + 9);
  v71 = v54;
  v72 = v55;
  v74 = v57;
  v73 = v56;
  v67 = v50;
  v68 = v51;
  v70 = v53;
  v69 = v52;
  v20 = v49;
  *&v62[0] = v14;
  *(&v62[0] + 1) = v16;
  v62[1] = v8;
  *v63 = v12;
  *&v63[16] = v13;
  v63[24] = v49;
  v35 = v62[0];
  v36 = v8;
  *&v64[0] = v29;
  *(&v64[0] + 1) = v28;
  v64[1] = v50;
  v64[2] = v51;
  *v37 = v12;
  *&v37[9] = *&v63[9];
  v64[6] = v55;
  v64[4] = v53;
  v64[5] = v54;
  v64[3] = v52;
  *(v65 + 9) = *(v59 + 9);
  v65[0] = v59[0];
  v64[9] = v58;
  v64[7] = v56;
  v64[8] = v57;
  v47 = v58;
  v48[0] = v59[0];
  *(v48 + 9) = *(v65 + 9);
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v38 = v64[0];
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v42 = v53;
  a2[12] = v57;
  a2[13] = v19;
  a2[14] = v48[0];
  *(a2 + 233) = *(v48 + 9);
  v21 = v43;
  a2[8] = v42;
  a2[9] = v21;
  v22 = v45;
  a2[10] = v44;
  a2[11] = v22;
  v23 = v39;
  a2[4] = v38;
  a2[5] = v23;
  v24 = v41;
  a2[6] = v40;
  a2[7] = v24;
  v25 = v36;
  *a2 = v35;
  a2[1] = v25;
  v26 = *&v37[16];
  a2[2] = *v37;
  a2[3] = v26;
  *&v66 = v29;
  *(&v66 + 1) = v28;
  sub_1001A147C(v62, v30);
  sub_100006C20(v64, v30, &qword_100364668, &qword_10028C7C0);
  sub_100008FA0(&v66, &qword_100364668, &qword_10028C7C0);
  v30[0] = v14;
  v30[1] = v16;
  v31 = v8;
  v32 = v12;
  v33 = v13;
  v34 = v20;
  return sub_1001A14D8(v30);
}

uint64_t sub_1001B187C@<X0>(uint64_t a1@<X8>)
{
  sub_10021E0C8(&v11);
  v2 = static HorizontalAlignment.center.getter();
  type metadata accessor for BannerAppearanceModel(0);
  sub_1001B1CCC(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v3 = EnvironmentObject.init()();
  v4 = v15;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v5 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  v6 = v22;
  *a1 = v21;
  *(a1 + 16) = v6;
  v7 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v7;
  v20 = v18;
  LOBYTE(v28) = v18;
  v8 = v28;
  *(a1 + 64) = v4;
  *(a1 + 112) = v8;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = v3;
  *(a1 + 152) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  sub_1001B1D20(v19, v29);
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  return sub_1001B1D7C(v29);
}

uint64_t sub_1001B19F4@<X0>(char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  *a2 = static Alignment.center.getter();
  *(a2 + 1) = v5;
  v6 = sub_1000040A8(&qword_100364618, &qword_10028C778);
  return sub_1001B0DA4(v8, &a2[*(v6 + 44)]);
}

unint64_t sub_1001B1A60()
{
  result = qword_100364640;
  if (!qword_100364640)
  {
    sub_100008CF0(&qword_100364638, &qword_10028C798);
    sub_100009274(&qword_100364648, &qword_100364650, &unk_10028C7A0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364640);
  }

  return result;
}

uint64_t sub_1001B1B18@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = static Alignment.center.getter();
  if (a1)
  {
    v7 = v5;
    v8 = v6;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = static Edge.Set.all.getter();
    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0x4038000000000000;
    *(a3 + 24) = 9;
    *(a3 + 32) = xmmword_10028C6D0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0x4038000000000000;
    *(a3 + 64) = 9;
    *(a3 + 72) = 0x3FF0000000000000;
    *(a3 + 144) = v14;
    *(a3 + 160) = v15;
    *(a3 + 176) = v16;
    *(a3 + 80) = v10;
    *(a3 + 96) = v11;
    *(a3 + 112) = v12;
    *(a3 + 128) = v13;
    *(a3 + 192) = result;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 1;
  }

  else
  {
    type metadata accessor for BannerAppearanceModel(0);
    sub_1001B1CCC(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B1CCC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1001B1E44()
{
  result = qword_100364680;
  if (!qword_100364680)
  {
    sub_100008CF0(&qword_100364688, &qword_10028C868);
    sub_1001B1ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364680);
  }

  return result;
}

unint64_t sub_1001B1ED0()
{
  result = qword_100364690;
  if (!qword_100364690)
  {
    sub_100008CF0(&qword_100364698, &qword_10028C870);
    sub_100009274(&qword_1003646A0, &qword_1003646A8, &qword_10028C878, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364690);
  }

  return result;
}

uint64_t sub_1001B1F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1001B1FD0(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B205C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_1003646D0, &qword_10028C940);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_1000040A8(&qword_1003646D8, &qword_10028C948);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = *v2;
  if (*v2)
  {
    v56 = v8;
    v57 = a1;
    v12 = v11[9];
    v13 = v11[10];
    sub_1000088DC(v11 + 6, v12);
    (*(v13 + 48))(v94, v12, v13);
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = 0;
    v14 = sub_1000040A8(&qword_1003646E0, &qword_10028C950);
    sub_1001B2648(v2, &v6[*(v14 + 44)]);
    v15 = objc_opt_self();
    v16 = [v15 labelColor];
    v17 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v67 = v17;
    v19 = AnyShapeStyle.init<A>(_:)();
    v20 = &v6[*(sub_1000040A8(&qword_1003646E8, &qword_10028C988) + 36)];
    *v20 = KeyPath;
    v20[1] = v19;
    LOBYTE(v19) = static Edge.Set.horizontal.getter();
    v21 = &v6[*(sub_1000040A8(&qword_1003646F0, &qword_10028C990) + 36)];
    *v21 = v19;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    LOBYTE(v19) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v22 = &v6[*(v4 + 36)];
    *v22 = v19;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    *(v22 + 4) = v26;
    v22[40] = 0;
    v27 = &selRef_clearColor;
    if ((*(v2 + 113) & 1) == 0 && (*(v2 + 112) & 1) == 0)
    {
      v27 = &selRef_separatorColor;
    }

    v28 = [v15 *v27];
    v29 = Color.init(uiColor:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v30 = static Edge.Set.leading.getter();
    v91 = 1;
    v31 = static Edge.Set.leading.getter();
    v55 = v2;
    v32 = v31;
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v92 = 0;
    v41 = static Edge.Set.trailing.getter();
    v93 = 1;
    v42 = static Alignment.bottom.getter();
    v44 = v43;
    *&v66[7] = v62;
    *&v66[9] = v63;
    *&v66[11] = v64;
    *&v66[13] = v65;
    *&v66[1] = v59;
    *&v66[3] = v60;
    v66[0] = v29;
    *&v66[5] = v61;
    LOBYTE(v66[15]) = v30;
    memset(&v66[16], 0, 32);
    LOBYTE(v66[20]) = 1;
    LOBYTE(v66[21]) = v32;
    v66[22] = v34;
    v66[23] = v36;
    v66[24] = v38;
    v66[25] = v40;
    LOBYTE(v66[26]) = 0;
    LOBYTE(v66[27]) = v41;
    memset(&v66[28], 0, 32);
    LOBYTE(v66[32]) = 1;
    v66[33] = v42;
    v66[34] = v43;
    sub_10000CF4C(v6, v10, &qword_1003646D0, &qword_10028C940);
    memcpy(&v10[*(v56 + 36)], v66, 0x118uLL);
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v74 = v65;
    v68 = v59;
    v69 = v60;
    v67 = v29;
    v70 = v61;
    v75 = v30;
    v76 = 0u;
    v77 = 0u;
    v78 = 1;
    v79 = v32;
    v80 = v34;
    v81 = v36;
    v82 = v38;
    v83 = v40;
    v84 = 0;
    v85 = v41;
    v86 = 0u;
    v87 = 0u;
    v88 = 1;
    v89 = v42;
    v90 = v44;
    sub_100006C20(v66, v58, &qword_1003646F8, &qword_10028C998);
    v45 = sub_100008FA0(&v67, &qword_1003646F8, &qword_10028C998);
    v46 = *(v55 + 32);
    v58[0] = *(v55 + 24);
    v58[1] = v46;
    sub_100031770(v45, v47, v48);

    v49 = Text.init<A>(_:)();
    v51 = v50;
    v53 = v52;
    sub_1001B3798();
    View.accessibility(label:)();
    sub_1000317C4(v49, v51, v53 & 1);

    sub_100008FA0(v10, &qword_1003646D8, &qword_10028C948);
    return sub_100008964(v94);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B2648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000040A8(&qword_100364738, &qword_10028C9B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50[-v5];
  v53 = sub_1000040A8(&qword_100364740, &qword_10028C9B8);
  __chkstk_darwin(v53);
  v8 = &v50[-v7];
  v9 = sub_1000040A8(&qword_100364748, &qword_10028C9C0);
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  v12 = sub_1000040A8(&qword_100364750, &qword_10028C9C8);
  __chkstk_darwin(v12 - 8);
  v54 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v56 = &v50[-v15];
  v16 = *(a1 + 104);
  if (v16)
  {
    v17 = objc_allocWithZone(ISImageDescriptor);
    v18 = v16;
    v19 = [v17 initWithSize:36.0 scale:{36.0, 4.0}];
    v52 = a1;
    v20 = v19;
    v21 = v18;
    v22 = v20;
    AsyncIconImage.init<>(icon:descriptor:)();
    sub_100009274(&qword_100364760, &qword_100364738, &qword_10028C9B0, &protocol conformance descriptor for AsyncIconImage<A>);
    View.accessibilityHidden(_:)();
    (*(v4 + 8))(v6, v3);
    sub_100006C20(v8, v11, &qword_100364740, &qword_10028C9B8);
    swift_storeEnumTagMultiPayload();
    v23 = sub_1001B3A4C();
    sub_1001B3B7C(v23, v24, v25);
    a1 = v52;
    _ConditionalContent<>.init(storage:)();

    sub_100008FA0(v8, &qword_100364740, &qword_10028C9B8);
  }

  else
  {
    v26 = *(a1 + 16);
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    *v11 = EnvironmentObject.init()();
    *(v11 + 1) = v27;
    v11[16] = v26;
    swift_storeEnumTagMultiPayload();
    v28 = sub_1001B3A4C();
    sub_1001B3B7C(v28, v29, v30);
    _ConditionalContent<>.init(storage:)();
  }

  v31 = static HorizontalAlignment.leading.getter();
  v52 = v31;
  LOBYTE(v61[0]) = 1;
  sub_1001B2C44(a1, v32, v33, v58);
  *&v57[7] = v58[0];
  *&v57[23] = v58[1];
  *&v57[39] = v58[2];
  *&v57[55] = v58[3];
  v34 = v61[0];
  v53 = Image.init(_internalSystemName:)();
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  v35 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v51 = static HierarchicalShapeStyle.secondary.getter();
  v37 = v56;
  v38 = v54;
  sub_100006C20(v56, v54, &qword_100364750, &qword_10028C9C8);
  v39 = v55;
  sub_100006C20(v38, v55, &qword_100364750, &qword_10028C9C8);
  v40 = sub_1000040A8(&qword_100364770, &qword_10028CA00);
  v41 = v39 + v40[12];
  v59[0] = v31;
  v59[1] = 0;
  v60[0] = v34;
  *&v60[1] = *v57;
  *&v60[17] = *&v57[16];
  *&v60[33] = *&v57[32];
  *&v60[49] = *&v57[48];
  v42 = *&v57[63];
  *&v60[64] = *&v57[63];
  v43 = *v60;
  *v41 = v31;
  *(v41 + 16) = v43;
  v44 = *&v60[16];
  v45 = *&v60[32];
  v46 = *&v60[48];
  *(v41 + 80) = v42;
  *(v41 + 48) = v45;
  *(v41 + 64) = v46;
  *(v41 + 32) = v44;
  v47 = v39 + v40[16];
  *v47 = 0;
  *(v47 + 8) = 1;
  v48 = v39 + v40[20];
  *v48 = v53;
  *(v48 + 8) = KeyPath;
  *(v48 + 16) = v35;
  *(v48 + 24) = v51;
  sub_100006C20(v59, v61, &qword_100364778, &qword_10028CA08);

  sub_100008FA0(v37, &qword_100364750, &qword_10028C9C8);

  v61[0] = v52;
  v61[1] = 0;
  v62 = v34;
  v64 = *&v57[16];
  v65 = *&v57[32];
  *v66 = *&v57[48];
  *&v66[15] = *&v57[63];
  v63 = *v57;
  sub_100008FA0(v61, &qword_100364778, &qword_10028CA08);
  return sub_100008FA0(v38, &qword_100364750, &qword_10028C9C8);
}

double sub_1001B2C44@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100031770(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.callout.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_1000317C4(v5, v7, v9 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v36 = v16;
  v37 = v15;
  v35 = v17;
  v38 = v18;
  sub_1000317C4(v10, v12, v14 & 1);

  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v10) = v22;
  static Font.footnote.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  LOBYTE(v7) = v26;

  sub_1000317C4(v19, v21, v10 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1000317C4(v23, v25, v7 & 1);

  *a4 = v37;
  *(a4 + 8) = v36;
  *(a4 + 16) = v35 & 1;
  *(a4 + 24) = v38;
  *(a4 + 32) = v27;
  *(a4 + 40) = v29;
  *(a4 + 48) = v31 & 1;
  *(a4 + 56) = v33;
  sub_1001B3BD8(v37, v36, v35 & 1);

  sub_1001B3BD8(v27, v29, v31 & 1);

  sub_1000317C4(v27, v29, v31 & 1);

  sub_1000317C4(v37, v36, v35 & 1);

  return result;
}

uint64_t sub_1001B2F30@<X0>(void *a1@<X0>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v32 = a3;
  v37 = a4;
  v36 = sub_1000040A8(&qword_100364790, &qword_10028CA98);
  __chkstk_darwin(v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v31 - v8;
  v33 = sub_1000040A8(&qword_100364798, &qword_10028CAA0);
  __chkstk_darwin(v33);
  v35 = &v31 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000040A8(&qword_1003647A0, &unk_10028CAA8);
  __chkstk_darwin(v34);
  v15 = &v31 - v14;
  if (a1)
  {
    v17 = a1[9];
    v16 = a1[10];
    sub_1000088DC(a1 + 6, v17);
    (*(v16 + 48))(v48, v17, v16);
    v18 = sub_1001B3FB0(v32);
    if (v18)
    {
      v19 = v18;
      [objc_allocWithZone(UIImage) initWithCGImage:v18];
      Image.init(uiImage:)();
      (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
      v20 = Image.resizable(capInsets:resizingMode:)();

      (*(v11 + 8))(v13, v10);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v40[38] = v51;
      *&v40[22] = v50;
      *&v40[6] = v49;
      *&v39[2] = *v40;
      v41 = 1;
      v38 = v20;
      *v39 = 1;
      *&v39[18] = *&v40[16];
      *&v39[34] = *&v40[32];
      *&v39[48] = *(&v51 + 1);
      sub_1000040A8(&qword_1003647B8, &unk_10028CAB8);
      sub_1001B430C();
      View.accessibilityHidden(_:)();
      v44 = *&v39[16];
      v45 = *&v39[32];
      v46 = *&v39[48];
      v42 = v38;
      v43 = *v39;
      sub_100008FA0(&v42, &qword_1003647B8, &unk_10028CAB8);
      v21 = &qword_1003647A0;
      v22 = &unk_10028CAA8;
      sub_100006C20(v15, v35, &qword_1003647A0, &unk_10028CAA8);
      swift_storeEnumTagMultiPayload();
      sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
      sub_1001B4398();
      _ConditionalContent<>.init(storage:)();

      v23 = v15;
    }

    else
    {
      Image.init(decorative:bundle:)();
      (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
      v24 = Image.resizable(capInsets:resizingMode:)();

      (*(v11 + 8))(v13, v10);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      LOBYTE(v38) = 1;
      *&v47[6] = v42;
      *&v47[22] = v43;
      *&v47[38] = v44;
      v25 = &v6[*(v36 + 36)];
      v26 = *(type metadata accessor for RoundedRectangle() + 20);
      v27 = enum case for RoundedCornerStyle.continuous(_:);
      v28 = type metadata accessor for RoundedCornerStyle();
      (*(*(v28 - 8) + 104))(&v25->i8[v26], v27, v28);
      *v25 = vdupq_n_s64(0x401F333333333333uLL);
      *(v25->i16 + *(sub_1000040A8(&qword_10035FFF0, &qword_10028B650) + 36)) = 256;
      *v6 = v24;
      *(v6 + 1) = 0;
      *(v6 + 8) = 1;
      *(v6 + 18) = *v47;
      *(v6 + 34) = *&v47[16];
      *(v6 + 50) = *&v47[32];
      *(v6 + 8) = *&v47[46];
      v21 = &qword_100364790;
      v22 = &qword_10028CA98;
      v29 = v31;
      sub_10000CF4C(v6, v31, &qword_100364790, &qword_10028CA98);
      sub_100006C20(v29, v35, &qword_100364790, &qword_10028CA98);
      swift_storeEnumTagMultiPayload();
      sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
      sub_1001B4398();
      _ConditionalContent<>.init(storage:)();
      v23 = v29;
    }

    sub_100008FA0(v23, v21, v22);
    return sub_100008964(v48);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_1001B36A4()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:12];
  qword_1003646B0 = result;
  return result;
}

id sub_1001B36DC()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:13];
  qword_1003646B8 = result;
  return result;
}

id sub_1001B3714()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:0];
  qword_1003646C0 = result;
  return result;
}

id sub_1001B374C()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:11];
  qword_1003646C8 = result;
  return result;
}

unint64_t sub_1001B3798()
{
  result = qword_100364700;
  if (!qword_100364700)
  {
    sub_100008CF0(&qword_1003646D8, &qword_10028C948);
    sub_1001B3850();
    sub_100009274(&qword_100364730, &qword_1003646F8, &qword_10028C998, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364700);
  }

  return result;
}

unint64_t sub_1001B3850()
{
  result = qword_100364708;
  if (!qword_100364708)
  {
    sub_100008CF0(&qword_1003646D0, &qword_10028C940);
    sub_1001B38DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364708);
  }

  return result;
}

unint64_t sub_1001B38DC()
{
  result = qword_100364710;
  if (!qword_100364710)
  {
    sub_100008CF0(&qword_1003646F0, &qword_10028C990);
    sub_1001B3968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364710);
  }

  return result;
}

unint64_t sub_1001B3968()
{
  result = qword_100364718;
  if (!qword_100364718)
  {
    sub_100008CF0(&qword_1003646E8, &qword_10028C988);
    sub_100009274(&qword_100364720, &qword_100364728, &unk_10028C9A0, &protocol conformance descriptor for HStack<A>);
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364718);
  }

  return result;
}

unint64_t sub_1001B3A4C()
{
  result = qword_100364758;
  if (!qword_100364758)
  {
    sub_100008CF0(&qword_100364740, &qword_10028C9B8);
    sub_100009274(&qword_100364760, &qword_100364738, &qword_10028C9B0, &protocol conformance descriptor for AsyncIconImage<A>);
    sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364758);
  }

  return result;
}

uint64_t sub_1001B3B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001B3B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364768;
  if (!qword_100364768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364768);
  }

  return result;
}

void sub_1001B3BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001B3C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001B3D0C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = sub_1000040A8(&qword_100357468, &qword_100284930);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = String._bridgeToObjectiveC()();
  v13 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v10 + 8))(v8, v9);
  }

  v15 = [objc_allocWithZone(IFSymbol) initWithSymbolName:v11 bundleURL:v13];

  v16 = [objc_allocWithZone(IFGraphicSymbolDescriptor) init];
  [v16 setSize:{32.0, 32.0}];
  sub_1000ECBCC(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setSymbolColors:isa];

  sub_1000ECBCC(a4);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setEnclosureColors:v18];

  [v16 setRenderingMode:1];
  [v16 setShape:1];
  [v16 setAppearance:0];
  v19 = [v15 imageForGraphicSymbolDescriptor:v16];
  v20 = [v19 CGImage];

  return v20;
}

id sub_1001B3FB0(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      return result;
    }

    sub_1000040A8(&qword_1003681A0, qword_100281690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v12 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v13 = qword_100353B38;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1003646B0;
    *(v5 + 32) = qword_1003646B0;
    v16 = v15;
    v11 = 0x80000001002968F0;
    v10 = 0xD000000000000015;
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    sub_1000040A8(&qword_1003681A0, qword_100281690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v4 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v6 = qword_100353B40;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_1003646B8;
    *(v5 + 32) = qword_1003646B8;
    v9 = v8;
    v10 = 0xD000000000000019;
    v11 = 0x80000001002A2A60;
  }

  else
  {
    sub_1000040A8(&qword_1003681A0, qword_100281690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v17 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v18 = qword_100353B48;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_1003646C0;
    *(v5 + 32) = qword_1003646C0;
    v21 = v20;
    v10 = 7565171;
    v11 = 0xE300000000000000;
  }

  v22 = sub_1001B3D0C(v10, v11, inited, v5);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v22;
}

unint64_t sub_1001B430C()
{
  result = qword_1003647B0;
  if (!qword_1003647B0)
  {
    sub_100008CF0(&qword_1003647B8, &unk_10028CAB8);
    sub_10005D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647B0);
  }

  return result;
}

unint64_t sub_1001B4398()
{
  result = qword_1003647C0;
  if (!qword_1003647C0)
  {
    sub_100008CF0(&qword_100364790, &qword_10028CA98);
    sub_1001B430C();
    sub_100009274(&qword_100360008, &qword_10035FFF0, &qword_10028B650, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647C0);
  }

  return result;
}

unint64_t sub_1001B4454()
{
  result = qword_1003647C8;
  if (!qword_1003647C8)
  {
    sub_100008CF0(&qword_1003647D0, &qword_10028CAC8);
    sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
    sub_1001B4398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647C8);
  }

  return result;
}

id sub_1001B4520(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() effectWithStyle:a4];
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v6];
  [v7 setAlpha:a2];
  if (a1 <= 0.0)
  {
    v10 = v6;
    v6 = v7;
  }

  else
  {
    v8 = [v7 layer];
    [v8 setCornerRadius:a1];

    v9 = [v7 layer];
    [v9 setCornerCurve:kCACornerCurveContinuous];

    v10 = [v7 layer];
    [v10 setMasksToBounds:1];
  }

  return v7;
}

uint64_t sub_1001B467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B476C(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001B46E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B476C(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001B4744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001B476C(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001B476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003647D8;
  if (!qword_1003647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647D8);
  }

  return result;
}

uint64_t type metadata accessor for ConnectionAssistantBanner.Mode(uint64_t a1)
{
  result = qword_100364850;
  if (!qword_100364850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B486C(uint64_t a1)
{
  sub_1001B4908();
  if (v1 <= 0x3F)
  {
    sub_1001B4938();
    if (v2 <= 0x3F)
    {
      sub_1001B4980();
      if (v3 <= 0x3F)
      {
        sub_1001B49B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1001B4908()
{
  result = qword_100364860;
  if (!qword_100364860)
  {
    result = &type metadata for QuestionnairePolicy.QuestionnaireScope;
    atomic_store(&type metadata for QuestionnairePolicy.QuestionnaireScope, &qword_100364860);
  }

  return result;
}

void sub_1001B4938()
{
  if (!qword_100364868)
  {
    v0 = type metadata accessor for ConnectionClosed(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100364868);
    }
  }
}

ValueMetadata *sub_1001B4980()
{
  result = qword_100364870;
  if (!qword_100364870)
  {
    result = &type metadata for StewieState.OffReason;
    atomic_store(&type metadata for StewieState.OffReason, &qword_100364870);
  }

  return result;
}

void *sub_1001B49B0()
{
  result = qword_100364878;
  if (!qword_100364878)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100364878);
  }

  return result;
}

uint64_t sub_1001B49E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = sub_1000040A8(&qword_1003648A8, &qword_10028CC38);
  __chkstk_darwin(v19 - 8);
  v21 = &v29 - v20;
  v23 = *(v22 + 56);
  sub_10010BB20(a1, &v29 - v20);
  sub_10010BB20(a2, &v21[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_21;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_21;
      }

      sub_1001B4DC8(v21, type metadata accessor for ConnectionAssistantBanner.Mode);
      v25 = 1;
      return v25 & 1;
    }

    sub_10010BB20(v21, v9);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_21:
      sub_1001B4D60(v21);
      v25 = 0;
      return v25 & 1;
    }

    v26 = *v9;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10010BB20(v21, v15);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_10002B3E0(&v21[v23], v6);
          v25 = sub_1000ED23C();
          sub_1001B4DC8(v6, type metadata accessor for ConnectionClosed);
          sub_1001B4DC8(v15, type metadata accessor for ConnectionClosed);
LABEL_17:
          sub_1001B4DC8(v21, type metadata accessor for ConnectionAssistantBanner.Mode);
          return v25 & 1;
        }

        sub_1001B4DC8(v15, type metadata accessor for ConnectionClosed);
      }

      else
      {
        sub_10010BB20(v21, v12);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v25 = *v12 == v21[v23];
          goto LABEL_17;
        }
      }

      goto LABEL_21;
    }

    sub_10010BB20(v21, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_21;
    }

    v26 = *v18;
  }

  v27 = v26 ^ v21[v23];
  sub_1001B4DC8(v21, type metadata accessor for ConnectionAssistantBanner.Mode);
  v25 = v27 ^ 1;
  return v25 & 1;
}

uint64_t sub_1001B4D60(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003648A8, &qword_10028CC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B4DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001B4E28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1001B4E90(a2, *a1, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1001B4E90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (!v6)
  {
LABEL_33:
    v22 = 0;
    v13 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v12 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_67;
  }

  v8 = result;
  result = sub_1001921F0();
  if ((v9 & 1) == 0)
  {
    goto LABEL_63;
  }

  v10 = (*(v5 + 56) + 16 * result);
  v11 = *v10;
  if (v11 < 3)
  {
    v12 = *(v10 + 1);
    if (*(a2 + 32) <= 1u)
    {
      if (!*(a2 + 32))
      {
        if (v12)
        {
          v13 = *(a2 + 24);
          v73 = *(a2 + 16);
          v15 = *(a2 + 72);
          v14 = *(a2 + 80);
          v16 = *(v12 + 16);
          v12 = *(v12 + 24);
          v17 = *(*(v10 + 1) + 32);
          v18 = v17[2];
          v19 = v17[3];
          v21 = v17[6];
          v20 = v17[7];

          v22 = v73;
LABEL_66:
          v6 = 0;
          goto LABEL_67;
        }

        v22 = 0;
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v16 = 0;
        goto LABEL_64;
      }

      v42 = v8[1];
      v6 = *(v42 + 16);
      if (v6)
      {

        v43 = sub_1001921F0();
        if (v44)
        {
          v3 = *(*(v42 + 56) + 8 * v43);
          v24 = *(a2 + 144);
          if (!(v24 >> 62))
          {
            v45 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v45)
            {
              goto LABEL_74;
            }

            goto LABEL_32;
          }

          goto LABEL_73;
        }

LABEL_63:
        v22 = 0;
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v16 = 0;
        v12 = 0;
LABEL_64:
        v18 = 0;
        v19 = 0;
LABEL_65:
        v21 = 0;
        v20 = 0;
        goto LABEL_66;
      }

      goto LABEL_33;
    }

    if (*(a2 + 32) != 2)
    {
      goto LABEL_63;
    }

    v24 = *(a2 + 144);
    if (v24 >> 62)
    {
      goto LABEL_71;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
    v70 = a2;
    if (!v25)
    {

LABEL_61:
      v65 = v70[2];
      v13 = v70[3];
      v15 = v70[9];
      v14 = v70[10];
      goto LABEL_75;
    }

    if (v25 < 1)
    {
      __break(1u);
LABEL_73:
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (v45)
      {
LABEL_32:
        v46 = v45;
        v72 = v24 & 0xC000000000000001;
        v67 = v24 + 32;
        v68 = v24 & 0xFFFFFFFFFFFFFF8;
        v75 = v3 + 56;

        v47 = 0;
        v48 = _swiftEmptyArrayStorage;
        v69 = v46;
        while (1)
        {
          while (1)
          {
            if (v72)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v49 = __OFADD__(v47++, 1);
              if (v49)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v47 >= *(v68 + 16))
              {
                goto LABEL_70;
              }

              v8 = *(v67 + 8 * v47);

              v49 = __OFADD__(v47++, 1);
              if (v49)
              {
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                v25 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_13;
              }
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*(v3 + 16))
            {
              Hasher.init(_seed:)();
              String.hash(into:)();
              v59 = Hasher._finalize()();
              v60 = -1 << *(v3 + 32);
              v61 = v59 & ~v60;
              if ((*(v75 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
              {
                v62 = ~v60;
                do
                {
                  v63 = *(*(v3 + 48) + 8 * v61);
                  v64 = *(v63 + 16) == v8[2] && *(v63 + 24) == v8[3];
                  if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    goto LABEL_43;
                  }

                  v61 = (v61 + 1) & v62;
                }

                while (((*(v75 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0);
              }
            }

LABEL_34:

            if (v47 == v46)
            {
              goto LABEL_68;
            }
          }

          if ((__CocoaSet.contains(_:)() & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_43:
          v50 = v24;
          v51 = v8[4];
          v53 = *(v51 + 16);
          v52 = *(v51 + 24);

          v54 = a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_10017B338(0, *(v48 + 2) + 1, 1, v48);
          }

          v56 = *(v48 + 2);
          v55 = *(v48 + 3);
          v57 = v48;
          if (v56 >= v55 >> 1)
          {
            v57 = sub_10017B338((v55 > 1), v56 + 1, 1, v48);
          }

          *(v57 + 2) = v56 + 1;
          v48 = v57;
          v58 = &v57[16 * v56];
          *(v58 + 4) = v53;
          *(v58 + 5) = v52;

          a2 = v54;
          v24 = v50;
          v46 = v69;
          if (v47 == v69)
          {
LABEL_68:

            break;
          }
        }
      }

LABEL_74:
      v65 = *(a2 + 16);
      v13 = *(a2 + 24);
      v15 = *(a2 + 72);
      v14 = *(a2 + 80);
LABEL_75:

      sub_1000040A8(&qword_100355E30, &unk_10027A120);
      sub_1001B54F8();
      v18 = BidirectionalCollection<>.joined(separator:)();
      v19 = v66;

      v22 = v65;
      v16 = 0;
      v12 = 0;
      goto LABEL_65;
    }

    v26 = v8[3];
    v27 = v24 & 0xC000000000000001;

    v28 = 0;
    v29 = _swiftEmptyArrayStorage;
    v71 = v24 & 0xC000000000000001;
    v74 = v24;
    while (1)
    {
      if (v27)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!*(v26 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v30 = *(v24 + 8 * v28 + 32);

        if (!*(v26 + 16))
        {
          goto LABEL_16;
        }
      }

      v31 = sub_1001921F0();
      if (v32)
      {
        v33 = (*(v26 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = *(v30 + 32);
        v76 = *(v36 + 16);
        v77 = *(v36 + 24);

        v37._countAndFlagsBits = 8250;
        v37._object = 0xE200000000000000;
        String.append(_:)(v37);
        v38._countAndFlagsBits = v35;
        v38._object = v34;
        String.append(_:)(v38);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10017B338(0, *(v29 + 2) + 1, 1, v29);
        }

        v40 = *(v29 + 2);
        v39 = *(v29 + 3);
        if (v40 >= v39 >> 1)
        {
          v29 = sub_10017B338((v39 > 1), v40 + 1, 1, v29);
        }

        *(v29 + 2) = v40 + 1;
        v41 = &v29[16 * v40];
        *(v41 + 4) = v76;
        *(v41 + 5) = v77;
        v27 = v71;
        v24 = v74;
        goto LABEL_17;
      }

LABEL_16:

LABEL_17:
      if (v25 == ++v28)
      {
        goto LABEL_61;
      }
    }
  }

  if (v11 != 3)
  {
    goto LABEL_63;
  }

  v23 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 72);
  v14 = *(a2 + 80);

  v22 = v23;
  v16 = 0;
  v12 = 0;
  v18 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0xE000000000000000;
  v6 = 1;
LABEL_67:
  *a3 = v22;
  a3[1] = v13;
  a3[2] = v15;
  a3[3] = v14;
  a3[4] = v16;
  a3[5] = v12;
  a3[6] = v18;
  a3[7] = v19;
  a3[8] = v6;
  a3[9] = v21;
  a3[10] = v20;
  return result;
}

unint64_t sub_1001B54F8()
{
  result = qword_100356B78;
  if (!qword_100356B78)
  {
    sub_100008CF0(&qword_100355E30, &unk_10027A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B78);
  }

  return result;
}

uint64_t sub_1001B556C()
{
  sub_1000040A8(&qword_10035DBF0, &unk_1002902F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x800000010029C8A0;
  v2._object = 0x800000010029C880;
  v6._countAndFlagsBits = 0xD00000000000003ALL;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 512;
  return v0;
}

uint64_t sub_1001B577C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010029C8A0;
  v3._object = 0x800000010029C880;
  v9._countAndFlagsBits = 0xD00000000000003ALL;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

unint64_t sub_1001B58A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003648B0;
  if (!qword_1003648B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648B0);
  }

  return result;
}

unint64_t sub_1001B5944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001B596C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003648B8;
  if (!qword_1003648B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648B8);
  }

  return result;
}

void ConnectionAssistantSatellite.init(radius:angle:pointHeight:color:)(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  [a1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];

  v10.f64[0] = v15;
  v11.f64[0] = v13;
  v10.f64[1] = v14;
  v11.f64[1] = v12;
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  *(a2 + 32) = 1065353216;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 256;
}

void ConnectionAssistantSatellite.cone(camera:earth:)(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 145))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v7 = *(v3 + 144);
    v41 = *(v3 + 112);
    v42 = *(v3 + 128);
    v6 = *(v3 + 96);
    v16 = *(v3 + 56);
    v15 = *(v3 + 64);
    v5 = *(v3 + 48);
    v39 = a1[5];
    v40 = *(v3 + 80);
    v18 = __sincosf_stret(*(v3 + 4) * -0.5);
    v19 = vmulq_n_f32(v39, v18.__sinval);
    v20 = v19;
    v20.i32[3] = LODWORD(v18.__cosval);
    v21 = a1[7];
    v22 = vmulq_f32(v20, xmmword_100278430);
    v23 = vnegq_f32(v22);
    v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
    v25 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v21.f32, 1), vextq_s8(v24, v24, 8uLL), v21.f32[0]);
    v26 = vrev64q_s32(v22);
    v26.i32[0] = v23.i32[1];
    v26.i32[3] = v23.i32[2];
    v27 = vmlaq_laneq_f32(v25, v26, v21, 2);
    v28 = vnegq_f32(v27);
    v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
    v30 = vrev64q_s32(v27);
    v30.i32[0] = v28.i32[1];
    v30.i32[3] = v28.i32[2];
    v31 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v20, 3), v30, v19, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *v19.f32, 1), vextq_s8(v29, v29, 8uLL), v19.f32[0]));
    v37 = *v3;
    v38 = *v31.f32;
    v39.i32[0] = vmuls_lane_f32(*v3, v31, 2);
    *&v32 = ConnectionAssistantEarth.direction(for:)(v16, v15);
    v8 = 0;
    v33 = *(a2 + 68);
    v35 = v33 * (0.0 - v34);
    v36 = vmul_n_f32(v38, v37);
    *&v10 = vsub_f32(vmul_n_f32(vsub_f32(0, v32), v33), v36);
    *&v9 = v36;
    v11 = v40;
    v12 = v41;
    *(&v9 + 1) = v39.u32[0];
    *(&v10 + 2) = v35 - v39.f32[0];
    v13 = v42;
    HIDWORD(v10) = 0;
  }

  *a3 = v9;
  *(a3 + 16) = v10;
  *(a3 + 32) = v5;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v11;
  *(a3 + 64) = v6;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v12;
  *(a3 + 96) = v13;
  *(a3 + 112) = v7;
  *(a3 + 113) = v8;
}

double ConnectionAssistantSatellite.center(camera:earthCenter:)(float32x4_t *a1, float32x4_t a2)
{
  v19 = a1[5];
  v4 = __sincosf_stret(v2[1] * -0.5);
  v5 = vmulq_n_f32(v19, v4.__sinval);
  v6 = v5;
  v6.i32[3] = LODWORD(v4.__cosval);
  v7 = a1[7];
  v8 = vmulq_f32(v6, xmmword_100278430);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v7.f32, 1);
  v12 = vrev64q_s32(v8);
  v12.i32[0] = v9.i32[1];
  v12.i32[3] = v9.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(v11, vextq_s8(v10, v10, 8uLL), v7.f32[0]), v12, v7, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v5.f32, 1), vextq_s8(v15, v15, 8uLL), v5.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v6, 3), v17, v5, 2), v16), *v2), a2).u64[0];
  return result;
}

double ConnectionAssistantSatellite.model(projectedCenter:textureSize:camera:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(v4 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a3, v9, *(a3 + 16));
  __sincosf_stret(*(v4 + 4) * 0.5);
  simd_float4x4.init(_:)();
  if (v8)
  {
    v15 = v9 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = 1.0;
  v17 = 1.0;
  if (!v15)
  {
    v18 = v8 / v9;
    v16 = fminf(v18, 1.0);
    v17 = fmaxf(v18, 1.0);
  }

  *&v19 = 1.0 / v17;
  LODWORD(v20) = 0;
  *(&v20 + 1) = 1.0 / (1.0 / v16);
  v21 = vmulq_n_f32(v19, *&a4);
  v22 = vaddq_f32(vmlaq_f32(v19, 0, v20), 0);
  *&v23 = *&v19 * 0.0;
  v24 = vaddq_f32(vaddq_f32(v20, COERCE_UNSIGNED_INT(*&v19 * 0.0)), 0);
  v25 = vaddq_f32(vmlaq_f32(v23, 0, v20), xmmword_100278490);
  v26 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(v21, v20, *&a4, 1), 0), xmmword_1002784A0);
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v11.f32[0]), v24, *v11.f32, 1), v25, v11, 2), v26, v11, 3), (((v7 / (a2 / a1)) * 3.0) * 0.5) * v10), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v12.f32[0]), v24, *v12.f32, 1), v25, v12, 2), v26, v12, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v13.f32[0]), v24, *v13.f32, 1), v25, v13, 2), v26, v13, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v14.f32[0]), v24, *v14.f32, 1), v25, v14, 2), v26, v14, 3)).u64[0];
  return result;
}

uint64_t sub_1001B5F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1001B6104(v11, v13) & 1;
}

double ConnectionAssistantSatellite.direction(camera:)(float32x4_t *a1)
{
  v18 = a1[5];
  v3 = __sincosf_stret(*(v1 + 4) * -0.5);
  v4 = vmulq_n_f32(v18, v3.__sinval);
  v5 = v4;
  v5.i32[3] = LODWORD(v3.__cosval);
  v6 = a1[7];
  v7 = vmulq_f32(v5, xmmword_100278430);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v6.f32, 1);
  v11 = vrev64q_s32(v7);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vmlaq_laneq_f32(vmlaq_n_f32(v10, vextq_s8(v9, v9, 8uLL), v6.f32[0]), v11, v6, 2);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v4.f32, 1), vextq_s8(v14, v14, 8uLL), v4.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v5, 3), v16, v4, 2), v15).u64[0];
  return result;
}

uint64_t sub_1001B6070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s8SOSBuddy28ConnectionAssistantSatelliteV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1001B6104(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = vmovn_s32(vceqq_f32(*(a1 + 32), *(a2 + 32)));
  if ((v2.i16[0] & v2.i16[1] & 1) == 0 || (v2.i16[2] & v2.i16[3] & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  if (v3 & 1) != 0 || (v4)
  {
    return v3 & v4;
  }

  else
  {
    return _s8SOSBuddy23ConnectionAssistantConeV5PulseV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 64), *(a1 + 80), *(a2 + 64), *(a2 + 80));
  }
}

uint64_t _s8SOSBuddy28ConnectionAssistantSatelliteV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = vmovn_s32(vceqq_f32(*(a1 + 16), *(a2 + 16)));
  if ((v4.i16[0] & v4.i16[1] & 1) == 0 || (v4.i16[2] & v4.i16[3] & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 145) & *(a2 + 145);
  if ((*(a1 + 145) & 1) == 0 && (*(a2 + 145) & 1) == 0)
  {
    v19 = v2;
    v20 = v3;
    v6 = *(a2 + 128);
    v17[4] = *(a2 + 112);
    v17[5] = v6;
    v18 = *(a2 + 144);
    v7 = *(a2 + 64);
    v17[0] = *(a2 + 48);
    v17[1] = v7;
    v8 = *(a2 + 96);
    v17[2] = *(a2 + 80);
    v17[3] = v8;
    v9 = *(a1 + 64);
    v15[0] = *(a1 + 48);
    v15[1] = v9;
    v10 = *(a1 + 80);
    v11 = *(a1 + 96);
    v12 = *(a1 + 112);
    v13 = *(a1 + 128);
    v16 = *(a1 + 144);
    v15[4] = v12;
    v15[5] = v13;
    v15[2] = v10;
    v15[3] = v11;
    v5 = sub_1001B6104(v15, v17);
  }

  return v5 & 1;
}

__n128 sub_1001B62BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001B62F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 146))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B6310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
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

  *(result + 146) = v3;
  return result;
}

__n128 sub_1001B6374(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001B63A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 97))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B63C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
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

  *(result + 97) = v3;
  return result;
}

id sub_1001B6418@<X0>(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>)
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  result = [a1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v10.f64[0] = v15;
  v11.f64[0] = v13;
  v10.f64[1] = v14;
  v11.f64[1] = v12;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  *(a2 + 48) = 1065353216;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  return result;
}

double sub_1001B6514@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B66F8@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B68DC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B6AC0@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B6CA4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B6E88@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

double sub_1001B706C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[8] = 1;
  v12[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v8 = v15;
  *(a1 + 120) = v16;
  v9 = v18;
  *(a1 + 136) = v17;
  *(a1 + 152) = v9;
  *(a1 + 168) = v19;
  result = *&v13;
  v11 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v11;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 64) = 1;
  *(a1 + 104) = v8;
  return result;
}

void *sub_1001B7250@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_1000EA1BC() + 16);

  if (v2)
  {
    result = sub_1000EA1BC();
    if (!result[2])
    {
      __break(1u);
      return result;
    }

    static WelcomeAction.secondary(title:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_1001B7320@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x800000010029CA60;
  v4._object = 0x800000010029CA40;
  v13._countAndFlagsBits = 0xD00000000000003CLL;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x800000010029CA60;
  v7._object = 0x800000010029CA40;
  v14._countAndFlagsBits = 0xD00000000000003CLL;
  v7._countAndFlagsBits = 0xD000000000000019;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_1001B74A0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x800000010029C8A0;
  v4._object = 0x800000010029C880;
  v13._countAndFlagsBits = 0xD00000000000003ALL;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x800000010029C8A0;
  v7._object = 0x800000010029C880;
  v14._countAndFlagsBits = 0xD00000000000003ALL;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_1001B7620@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x80000001002A2C60;
  v4._countAndFlagsBits = 1954047310;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000050;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x80000001002A2C60;
  v7._countAndFlagsBits = 1954047310;
  v7._object = 0xE400000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000050;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

unint64_t sub_1001B77F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003648C0;
  if (!qword_1003648C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648C0);
  }

  return result;
}

unint64_t sub_1001B789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001B78C4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B78C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003648C8;
  if (!qword_1003648C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648C8);
  }

  return result;
}

uint64_t sub_1001B791C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001B7964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B79E0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = *(a1 + 17);
  v27 = *(a1 + 16);
  v70 = *(a1 + 24);
  *&v71 = *(a1 + 40);
  sub_1000040A8(&qword_1003648D8, &unk_10028D060);
  Binding.wrappedValue.getter();
  v4 = v61;
  *&v61 = 0;
  BYTE8(v61) = 1;
  sub_1000040A8(&qword_10035B6A8, &qword_1002874F0);
  State.init(wrappedValue:)();
  v5 = v70;
  v6 = BYTE8(v70);
  v25 = v71;
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.all.getter();
  LOBYTE(v70) = BYTE8(v70);
  if (*a1)
  {
    v24 = v8;
    v28 = v5;
    if (*(*a1 + 64) && (sub_100071A54() & 1) != 0)
    {
      v9 = static HorizontalAlignment.center.getter();
      LOBYTE(v51) = 1;
      sub_1001B7FA0(&v70);
      v33[0] = v73[0];
      *(v33 + 9) = *(v73 + 9);
      v31 = v71;
      v32 = v72;
      v30 = v70;
      v34[2] = v72;
      v35[0] = v73[0];
      *(v35 + 9) = *(v73 + 9);
      v34[0] = v70;
      v34[1] = v71;
      sub_100006C20(&v30, &v61, &qword_1003648F0, &unk_10028D080);
      sub_100008FA0(v34, &qword_1003648F0, &unk_10028D080);
      *&v29[23] = v31;
      *&v29[39] = v32;
      *&v29[55] = v33[0];
      *&v29[64] = *(v33 + 9);
      *&v29[7] = v30;
      v10 = v51;
      v20 = v51;
      v19 = static SafeAreaRegions.all.getter();
      v11 = static Edge.Set.all.getter();
      v61 = *(a1 + 48);
      *&v62 = *(a1 + 64);
      sub_1000040A8(&qword_100363A18, &qword_1002903D0);
      State.projectedValue.getter();
      v22 = v70;
      v23 = v71;
      v21 = BYTE8(v71);
      v36 = v9;
      v37[0] = v10;
      *&v37[1] = *v29;
      *&v37[17] = *&v29[16];
      *&v37[33] = *&v29[32];
      *&v37[49] = *&v29[48];
      *&v37[65] = *&v29[64];
      *&v37[88] = v19;
      v38 = v11;
      v53 = *&v37[16];
      v54 = *&v37[32];
      v51 = v9;
      v52 = *v37;
      LOBYTE(v58) = v11;
      v56 = *&v37[64];
      v57 = *&v37[80];
      v55 = *&v37[48];
      sub_100006C20(&v36, &v70, &qword_1003648F8, &qword_10028D090);
      *&v41[17] = *&v29[16];
      v42 = *&v29[32];
      v43 = *&v29[48];
      v44 = *&v29[64];
      v39 = v9;
      v40 = 0;
      v41[0] = v20;
      *&v41[1] = *v29;
      v45 = v19;
      v46 = v11;
      v5 = v28;
      sub_100008FA0(&v39, &qword_1003648F8, &qword_10028D090);
      v65 = v55;
      v66 = v56;
      v67 = v57;
      v61 = v51;
      v62 = v52;
      v63 = v53;
      v64 = v54;
      *&v68[8] = v22;
      *v68 = v58;
      *&v68[24] = v23;
      v69 = v21;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
      v75 = v67;
      v76 = *v68;
      v77 = *&v68[16];
      v78 = v69;
      v72 = v63;
      v73[0] = v64;
      v73[1] = v65;
      v74 = v66;
      v70 = v61;
      v71 = v62;
    }

    else
    {
      sub_1001B8338(&v70);
    }

    v67 = v75;
    *v68 = v76;
    *&v68[16] = v77;
    v63 = v72;
    v64 = v73[0];
    v65 = v73[1];
    v66 = v74;
    v61 = v70;
    v62 = v71;
    *&v36 = v5;
    BYTE8(v36) = v6;
    *(&v36 + 9) = v81[0];
    HIDWORD(v36) = *(v81 + 3);
    *v37 = v25;
    v37[8] = v27;
    v37[9] = v26;
    *&v37[10] = v79;
    *&v37[14] = v80;
    *&v37[16] = v4;
    *&v37[24] = v7;
    v49 = *&v37[16];
    v48 = *v37;
    v47 = v36;
    v51 = v70;
    v52 = v71;
    v55 = v73[1];
    v56 = v74;
    v53 = v72;
    v54 = v73[0];
    v59 = v77;
    v57 = v75;
    v58 = v76;
    *&v50[120] = v76;
    *&v50[104] = v75;
    *&v50[56] = v73[0];
    *&v50[40] = v72;
    *&v50[136] = v77;
    v69 = v78;
    v37[32] = v24;
    v50[0] = v24;
    v60 = v78;
    v50[152] = v78;
    *&v50[72] = v73[1];
    *&v50[88] = v74;
    *&v50[8] = v70;
    *&v50[24] = v71;
    v12 = *&v50[128];
    a2[10] = *&v50[112];
    a2[11] = v12;
    *(a2 + 185) = *&v50[137];
    v13 = *&v50[64];
    a2[6] = *&v50[48];
    a2[7] = v13;
    v14 = *&v50[96];
    a2[8] = *&v50[80];
    a2[9] = v14;
    v15 = *v50;
    a2[2] = v49;
    a2[3] = v15;
    v16 = *&v50[32];
    a2[4] = *&v50[16];
    a2[5] = v16;
    v17 = v48;
    *a2 = v47;
    a2[1] = v17;
    sub_100006C20(&v36, &v39, &qword_1003648E0, &qword_10028D070);
    sub_100006C20(&v51, &v39, &qword_1003648E8, &qword_10028D078);
    sub_100008FA0(&v61, &qword_1003648E8, &qword_10028D078);
    v39 = v28;
    LOBYTE(v40) = v6;
    *(&v40 + 1) = v81[0];
    HIDWORD(v40) = *(v81 + 3);
    *v41 = v25;
    v41[8] = v27;
    v41[9] = v26;
    *&v41[10] = v79;
    *&v41[14] = v80;
    *&v41[16] = v4;
    *&v41[24] = v7;
    v41[32] = v24;
    return sub_100008FA0(&v39, &qword_1003648E0, &qword_10028D070);
  }

  else
  {
    type metadata accessor for StewieModel(0);
    sub_1001B8358(&qword_1003561B8, type metadata accessor for StewieModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B7FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v31._object = 0x800000010029EED0;
  v4._object = 0x8000000100297040;
  v31._countAndFlagsBits = 0xD00000000000004DLL;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v31);

  v7 = [v2 mainBundle];
  v32._object = 0x80000001002A2DA0;
  v8.value._countAndFlagsBits = 0x5072656972726143;
  v8.value._object = 0xED00006E6F656769;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x80000001002A2D80;
  v32._countAndFlagsBits = 0xD00000000000003FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v32);

  sub_1000040A8(&qword_100363A18, &qword_1002903D0);
  State.wrappedValue.getter();
  v12 = v25;
  v13 = v26;
  type metadata accessor for UIMetrics();
  sub_1001B8358(&qword_100354D40, type metadata accessor for UIMetrics);
  v14 = EnvironmentObject.init()();
  v19[72] = v26;
  *&v20[0] = v14;
  *(&v20[0] + 1) = v15;
  v20[1] = v6;
  *v21 = v11;
  *&v21[16] = v25;
  v21[24] = v26;
  v22 = v20[0];
  v23 = v6;
  *v24 = v11;
  *&v24[9] = *&v21[9];
  v19[64] = 1;
  v16 = v20[0];
  v17 = *&v24[16];
  *(a1 + 32) = *v24;
  *(a1 + 48) = v17;
  *a1 = v16;
  *(a1 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v25 = v14;
  v26 = v15;
  v27 = v6;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  sub_1001A147C(v20, v19);
  return sub_1001A14D8(&v25);
}

__n128 sub_1001B81DC@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v28[2] = *(v2 + 32);
  v28[3] = v4;
  v29 = *(v2 + 64);
  v5 = *(v2 + 16);
  v28[0] = *v2;
  v28[1] = v5;
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_1001B79E0(v28, &v16);
  v40 = v26;
  v41[0] = v27[0];
  *(v41 + 9) = *(v27 + 9);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v30 = v16;
  v31 = v17;
  v42[10] = v26;
  v43[0] = v27[0];
  *(v43 + 9) = *(v27 + 9);
  v42[6] = v22;
  v42[7] = v23;
  v42[8] = v24;
  v42[9] = v25;
  v42[2] = v18;
  v42[3] = v19;
  v42[4] = v20;
  v42[5] = v21;
  v42[0] = v16;
  v42[1] = v17;
  sub_100006C20(&v30, &v15, &qword_1003648D0, &qword_10028D058);
  sub_100008FA0(v42, &qword_1003648D0, &qword_10028D058);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v41[0];
  *(a2 + 176) = v40;
  *(a2 + 192) = v9;
  *(a2 + 201) = *(v41 + 9);
  v10 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v10;
  v11 = v39;
  *(a2 + 144) = v38;
  *(a2 + 160) = v11;
  v12 = v33;
  *(a2 + 48) = v32;
  *(a2 + 64) = v12;
  v13 = v35;
  *(a2 + 80) = v34;
  *(a2 + 96) = v13;
  result = v31;
  *(a2 + 16) = v30;
  *(a2 + 32) = result;
  return result;
}

double sub_1001B8338(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001B8358(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1001B83B0()
{
  result = qword_100364900;
  if (!qword_100364900)
  {
    sub_100008CF0(&qword_100364908, &qword_10028D098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364900);
  }

  return result;
}

uint64_t sub_1001B8440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v21 = v1[1];
  v22 = v4;
  v20 = v1[2];
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v5[3] = v2[2];
  sub_100006C20(&v22, &v23, &qword_100357580, &unk_10027AEE0);
  sub_100006C20(&v21, &v23, &qword_100364910, &unk_10028D140);
  sub_100006C20(&v20, &v23, &qword_100360028, &unk_100287408);
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *&v14 = v7;
  *(&v14 + 1) = v9;
  v15 = sub_1001B86E8;
  v16 = 0;
  *&v17 = sub_1001B8F4C;
  *(&v17 + 1) = v5;
  v18 = v23;
  v19 = v24;
  sub_1000040A8(&qword_100364918, &qword_10028D150);
  sub_1001B8F54();
  View.navigationBarBackButtonHidden(_:)();
  v24 = sub_1001B86E8;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v23 = v14;
  sub_100008FA0(&v23, &qword_100364918, &qword_10028D150);
  v10 = swift_allocObject();
  v11 = v2[1];
  *(v10 + 1) = *v2;
  *(v10 + 2) = v11;
  *(v10 + 3) = v2[2];
  v12 = (a1 + *(sub_1000040A8(&qword_100364928, &unk_10028D158) + 36));
  *v12 = sub_1001B8FB8;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  sub_100006C20(&v22, &v14, &qword_100357580, &unk_10027AEE0);
  sub_100006C20(&v21, &v14, &qword_100364910, &unk_10028D140);
  return sub_100006C20(&v20, &v14, &qword_100360028, &unk_100287408);
}

double sub_1001B86E8@<D0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v26 = 0;
  sub_1001B8870(&v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[11] = v24;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v39[2] = v15;
  v39[3] = v16;
  sub_100006C20(&v27, &v12, &qword_100363A30, &unk_10028B460);
  sub_100008FA0(v39, &qword_100363A30, &unk_10028B460);
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[183] = v38;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v4 = *&v25[128];
  *(a2 + 161) = *&v25[144];
  v5 = *&v25[176];
  *(a2 + 177) = *&v25[160];
  *(a2 + 193) = v5;
  v6 = *&v25[64];
  *(a2 + 97) = *&v25[80];
  v7 = *&v25[112];
  *(a2 + 113) = *&v25[96];
  *(a2 + 129) = v7;
  *(a2 + 145) = v4;
  v8 = *v25;
  *(a2 + 33) = *&v25[16];
  result = *&v25[32];
  v10 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  *(a2 + 65) = v10;
  *(a2 + 81) = v6;
  v11 = v26;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 208) = *&v25[191];
  *(a2 + 17) = v8;
  return result;
}

uint64_t sub_1001B8870@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1001B8FC0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel, "\ts\n");
  v3 = EnvironmentObject.init()();
  v5 = v4;
  type metadata accessor for ConnectivityModel();
  sub_1001B8FC0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
  v6 = EnvironmentObject.init()();
  v8 = v7;
  type metadata accessor for GuidanceModel(0);
  sub_1001B8FC0(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
  v9 = EnvironmentObject.init()();
  v39 = v10;
  v40 = v9;
  type metadata accessor for OrientationModel();
  sub_1001B8FC0(&qword_10035B1B0, type metadata accessor for OrientationModel, "\ts\n");
  v11 = EnvironmentObject.init()();
  v37 = v12;
  v38 = v11;
  type metadata accessor for StewieModel(0);
  sub_1001B8FC0(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v36 = EnvironmentObject.init()();
  v43 = v13;
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v14 = EnvironmentObject.init()();
  v41 = v15;
  v42 = v14;
  v16 = EnvironmentObject.init()();
  v34 = v17;
  v35 = v16;
  v18 = EnvironmentObject.init()();
  v32 = v19;
  v33 = v18;
  type metadata accessor for GuidanceMessagesModel();
  sub_1001B8FC0(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
  v20 = EnvironmentObject.init()();
  v30 = v21;
  v31 = v20;
  v22 = EnvironmentObject.init()();
  *&v44 = v3;
  *(&v44 + 1) = v5;
  *&v45 = v6;
  *(&v45 + 1) = v8;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  *&v47 = v38;
  *(&v47 + 1) = v37;
  *&v48 = v36;
  *(&v48 + 1) = v43;
  *&v49 = v42;
  *(&v49 + 1) = v41;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = 0;
  v23 = v45;
  *a1 = v44;
  *(a1 + 16) = v23;
  v24 = v46;
  v25 = v47;
  v26 = v50;
  v27 = v48;
  *(a1 + 80) = v49;
  *(a1 + 96) = v26;
  *(a1 + 48) = v25;
  *(a1 + 64) = v27;
  *(a1 + 32) = v24;
  *(a1 + 112) = v35;
  *(a1 + 120) = v34;
  *(a1 + 128) = v33;
  *(a1 + 136) = v32;
  *(a1 + 144) = 32;
  *(a1 + 152) = 0xE100000000000000;
  *(a1 + 160) = v31;
  *(a1 + 168) = v30;
  *(a1 + 176) = v22;
  *(a1 + 184) = v28;
  sub_1000E091C(&v44, v51);
  v51[0] = v3;
  v51[1] = v5;
  v51[2] = v6;
  v51[3] = v8;
  v51[4] = v40;
  v51[5] = v39;
  v51[6] = v38;
  v51[7] = v37;
  v51[8] = v36;
  v51[9] = v43;
  v51[10] = v42;
  v51[11] = v41;
  v52 = 0;
  v53 = 0;
  return sub_1000E0978(v51);
}

double sub_1001B8BA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  sub_1001B8C28(a1, v9);
  v7 = v9[1];
  v8 = v9[0];
  v5 = static Edge.Set.top.getter();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = v7;
  *(a2 + 24) = v8;
  *(a2 + 56) = v5;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_1001B8C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    swift_beginAccess();
    sub_10003F3D8(v2 + 48, v11);
    if (v12[1])
    {
      sub_1000C6118(v12, v9);

      sub_10003F434(v11);
      v4 = v10 == 1 && *(v9[4] + 16) == 0;
      v7 = v9[0];
      v8 = v9[1];

      sub_1000C60E8(v9);

      if (v4)
      {
        type metadata accessor for AppEvents();
        sub_1001B8FC0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
        result = EnvironmentObject.init()();
      }

      else
      {

        result = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
      }
    }

    else
    {
      sub_10003F434(v11);
      result = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
    }

    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_1001B8FC0(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B8DDC(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    type metadata accessor for ConnectionModel(0);
    v5 = &qword_100354F88;
    v6 = type metadata accessor for ConnectionModel;
LABEL_11:
    v7 = v6;
    v8 = "\ts\n";
    goto LABEL_12;
  }

  v3 = *(*(v2 + 56) + 122);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    goto LABEL_6;
  }

  if (!a1[4])
  {
    type metadata accessor for QuestionnaireState();
    v5 = &qword_100354D50;
    v6 = type metadata accessor for QuestionnaireState;
    goto LABEL_11;
  }

  sub_1000BA248();

LABEL_6:
  if (*a1)
  {

    PassthroughSubject.send(_:)();
  }

  type metadata accessor for AppEvents();
  v5 = &qword_100354D48;
  v7 = type metadata accessor for AppEvents;
  v8 = "ɼ\t";
LABEL_12:
  sub_1001B8FC0(v5, v7, v8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_1001B8F54()
{
  result = qword_100364920;
  if (!qword_100364920)
  {
    sub_100008CF0(&qword_100364918, &qword_10028D150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364920);
  }

  return result;
}

uint64_t sub_1001B8FC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001B901C()
{
  result = qword_100364930;
  if (!qword_100364930)
  {
    sub_100008CF0(&qword_100364928, &unk_10028D158);
    sub_100008CF0(&qword_100364918, &qword_10028D150);
    sub_1001B8F54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364930);
  }

  return result;
}

uint64_t sub_1001B91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001B8FC0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B9284@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v9;
  a1[2] = sub_100114250;
  a1[3] = 0;
  a1[4] = sub_1001B9100;
  a1[5] = 0;
  a1[6] = sub_1001B9168;
  a1[7] = 0;
  a1[8] = sub_1001B93D0;
  a1[9] = v7;
  return result;
}

uint64_t sub_1001B9390()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B93E4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  *(v1 + 73) = sub_100071A54() & 1;
  result = sub_100071A54();
  *(v1 + 74) = result & 1;
  if (result)
  {
    if (!*(v1 + 24))
    {
      static DispatchTime.now()();
      v14 = *(v1 + 73);
      v40 = *(v1 + 64);
      v15 = *(v1 + 72);
      v38 = v14;
      LODWORD(v39) = v15;
      _s8SOSBuddy4DataCMa_0(0);
      v16 = swift_allocObject();
      v17 = v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
      *v17 = 0;
      *(v17 + 8) = 1;
      *(v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = 2;
      v18 = v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
      *(v18 + 32) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 40) = 1;
      *(v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = 2;
      v19 = *(v4 + 16);
      v20 = *(v1 + 32);
      v36 = *(v1 + 48);
      v37 = v20;
      v41 = v1;
      v19(v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp, v12, v3);
      *(v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startIsOriented) = v38;
      v21 = v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget;
      v22 = v36;
      *v21 = v37;
      *(v21 + 16) = v22;
      *(v21 + 32) = v40;
      *(v21 + 40) = v39;
      *(v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = 0;
      v23 = v16 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
      *v23 = 0;
      *(v23 + 8) = 1;
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000F53C(v24, qword_100381C68);
      v19(v9, v12, v3);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        LODWORD(v40) = v26;
        v28 = v27;
        v39 = swift_slowAlloc();
        v42 = v39;
        *v28 = 136315138;
        v19(v6, v9, v3);
        v29 = String.init<A>(describing:)();
        v31 = v30;
        v32 = *(v4 + 8);
        v32(v9, v3);
        v33 = sub_10017C9E8(v29, v31, &v42);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v25, v40, "SatelliteObstruction: started tracking at %s", v28, 0xCu);
        sub_100008964(v39);

        v32(v12, v3);
      }

      else
      {

        v35 = *(v4 + 8);
        v35(v9, v3);
        v35(v12, v3);
      }

      *(v41 + 24) = v16;
    }
  }

  else
  {
    if (*(v1 + 72) == 1)
    {
      v34 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
    }

    else
    {
      v34 = 0;
    }

    return sub_1001B9E64(v34 & 1);
  }

  return result;
}

void sub_1001B9848(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = *(a1 + 48);
  if (!v13)
  {
    if ((*(v1 + 74) & 1) == 0)
    {
LABEL_23:
      v22 = 0;
      goto LABEL_24;
    }

LABEL_5:
    v53 = v4;
    v4 = (v1 + 24);
    if (*(v1 + 24))
    {
      goto LABEL_14;
    }

    LODWORD(v51) = 0;
    v52 = 0;
    v16 = 1;
LABEL_29:

    static DispatchTime.now()();
    v23 = *(v1 + 73);
    v50 = *(v1 + 64);
    v24 = *(v1 + 72);
    v48 = v23;
    v49 = v24;
    _s8SOSBuddy4DataCMa_0(0);
    v14 = swift_allocObject();
    v25 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
    *v25 = 0;
    *(v25 + 8) = 1;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = 2;
    v26 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
    *(v26 + 32) = 0;
    *v26 = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 40) = 1;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = 2;
    v18 = v53[2];
    v27 = *(v1 + 32);
    v46 = *(v1 + 48);
    v47 = v27;
    (v18)(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp, v12, v3);
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startIsOriented) = v48;
    v28 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget;
    v29 = v46;
    *v28 = v47;
    *(v28 + 16) = v29;
    *(v28 + 32) = v50;
    *(v28 + 40) = v49;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = v51 & 1;
    v30 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
    *v30 = v52;
    *(v30 + 8) = v16;
    if (qword_100353A08 == -1)
    {
LABEL_30:
      v31 = type metadata accessor for Logger();
      sub_10000F53C(v31, qword_100381C68);
      (v18)(v9, v12, v3);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v51 = v32;
        v35 = v34;
        v52 = swift_slowAlloc();
        v54 = v52;
        *v35 = 136315138;
        (v18)(v6, v9, v3);
        v36 = String.init<A>(describing:)();
        LODWORD(v50) = v33;
        v38 = v37;
        v39 = v53[1];
        v39(v9, v3);
        v40 = sub_10017C9E8(v36, v38, &v54);

        v41 = v35;
        *(v35 + 4) = v40;
        v42 = v51;
        _os_log_impl(&_mh_execute_header, v51, v50, "SatelliteObstruction: started tracking at %s", v41, 0xCu);
        sub_100008964(v52);

        v39(v12, v3);
      }

      else
      {

        v43 = v53[1];
        v43(v9, v3);
        v43(v12, v3);
      }

      *v4 = v14;

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_30;
  }

  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  v16 = *(v13 + 64);
  if (sub_100071A54())
  {
    swift_bridgeObjectRetain_n();
    v17 = 1;
    goto LABEL_9;
  }

  v17 = *(v1 + 74);

  if (!v14)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

LABEL_9:
  v18 = sub_100071A54();

  if (v16)
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v21 = round(v15);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v21;
  if ((v17 & 1) == 0)
  {
LABEL_21:
    v22 = sub_100071A54();

LABEL_24:

    sub_1001B9E64(v22 & 1);
    return;
  }

LABEL_11:
  v53 = v4;
  v4 = (v1 + 24);
  v20 = *(v1 + 24);
  if (!v20)
  {
    v52 = v19;
    LODWORD(v51) = v18;
    goto LABEL_29;
  }

  if (v18 & 1) == 0 || (*(v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction))
  {
LABEL_14:

    return;
  }

  *(v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = 1;
  v44 = v19;

  v45 = v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
  *v45 = v44;
  *(v45 + 8) = v16;
}

uint64_t sub_1001B9E64(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 48);
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);
    if ((v6 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = *(v1 + 73);
    }

    v7 = v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
    *v7 = v3;
    *(v7 + 16) = v4;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = result & 1;

    v8 = sub_1001BA00C();

    sub_10017EEA8(2, v8);

    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1001B9F48()
{

  return swift_deallocClassInstance();
}

__n128 sub_1001B9FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v3;
  result = *(a1 + 25);
  *(v2 + 57) = result;
  return result;
}

unint64_t sub_1001BA00C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_100358320, &qword_10027C9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027A620;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  static DispatchTime.now()();
  v7 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() < v7)
  {
    v8 = DispatchTime.uptimeNanoseconds.getter();
    v9 = DispatchTime.uptimeNanoseconds.getter();
    v10 = *(v3 + 8);
    v3 += 8;
    v10(v5, v2);
    if (v8 >= v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  *(inited + 48) = UInt64._bridgeToObjectiveC()();
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  sub_100096C9C();
  *(inited + 72) = NSString.init(stringLiteral:)();
  strcpy((inited + 80), "prev_isOrient");
  *(inited + 94) = -4864;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001002A2FE0;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v11 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328, &unk_10027D7F0);
  swift_arrayDestroy();
  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget + 40) & 1) == 0)
  {
    v12 = *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget + 16);
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    result = sub_1001894D4(isa, 0x7461735F76657270, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
    v16 = round(v12 * 57.2957795);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        v17 = v31;
        v18 = Int64._bridgeToObjectiveC()().super.super.isa;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v31 = v17;
        sub_1001894D4(v18, 0x656C655F76657270, 0xEE006E6F69746176, v19);
        v11 = v31;
        goto LABEL_10;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_10:
  v20 = v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget + 40))
  {
    goto LABEL_16;
  }

  v21 = Int64._bridgeToObjectiveC()().super.super.isa;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v11;
  result = sub_1001894D4(v21, 0x7461735F74736F70, 0xEA00000000004449, v22);
  v11 = v31;
  if (*(v20 + 40))
  {
    goto LABEL_16;
  }

  v23 = round(*(v20 + 16) * 57.2957795);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v24 = Int64._bridgeToObjectiveC()().super.super.isa;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v11;
  sub_1001894D4(v24, 0x656C655F74736F70, 0xEE006E6F69746176, v25);
  v11 = v31;
LABEL_16:
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) != 2)
  {
    v26 = Bool._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    sub_1001894D4(v26, 0x4F73695F74736F70, 0xED0000746E656972, v27);
    v11 = v31;
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds + 8) & 1) == 0)
  {
    v28 = Int64._bridgeToObjectiveC()().super.super.isa;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    sub_1001894D4(v28, 0xD000000000000019, 0x80000001002A3000, v29);
    return v31;
  }

  return v11;
}

uint64_t sub_1001BA570()
{
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s8SOSBuddy4DataCMa_0(uint64_t a1)
{
  result = qword_100364B48;
  if (!qword_100364B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BA660(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
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

double sub_1001BA748@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = *(a1 + 64);
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      type metadata accessor for RoadsideAssistanceModel();
      sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      EnvironmentObject.init()();
      type metadata accessor for UIMetrics();
      sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
      v9 = EnvironmentObject.init()();
      v12 = sub_1001BB228(v9, v10, v11);
      sub_1001BB27C(v12, v13, v14);

      _ConditionalContent<>.init(storage:)();
      v31 = v34;
      v32 = v35;
      v33[0] = v36[0];
      v33[1] = 1;
LABEL_10:
      sub_1000040A8(&qword_100364CB0, &qword_10028D360);
      sub_1000040A8(&qword_100364CD0, &qword_10028D368);
      sub_1001BB068();
      sub_1001BB19C();
      _ConditionalContent<>.init(storage:)();
      sub_1000040A8(&qword_100364C90, &qword_10028D350);
      sub_1000040A8(&qword_100364C98, &qword_10028D358);
      sub_1001BAFDC();
      sub_1001BB2D0();
      _ConditionalContent<>.init(storage:)();

LABEL_15:

      v34 = v31;
      v35 = v32;
      *v36 = *v33;
      *&v36[10] = *&v33[10];
      goto LABEL_16;
    }

    if (v5 != 7)
    {
      v36[24] = 1;
      sub_1001BAF88(a1, a3, a4);
      _ConditionalContent<>.init(storage:)();
      goto LABEL_12;
    }

    type metadata accessor for RoadsideAssistanceModel();
    sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);

    EnvironmentObject.init()();
    type metadata accessor for UIMetrics();
    sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.init()();
    type metadata accessor for QuestionnaireState();
    sub_1001BB35C(&qword_100354D50, type metadata accessor for QuestionnaireState);
    v15 = EnvironmentObject.init()();
    sub_1001BAF88(v15, v16, v17);

    _ConditionalContent<>.init(storage:)();
    sub_1000040A8(&qword_100364C90, &qword_10028D350);
    sub_1000040A8(&qword_100364C98, &qword_10028D358);
    sub_1001BAFDC();
    sub_1001BB2D0();
    _ConditionalContent<>.init(storage:)();

LABEL_14:

    goto LABEL_15;
  }

  if (v5 - 1 >= 3)
  {
    if (!*(a1 + 64))
    {
      type metadata accessor for UIMetrics();
      sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
      EnvironmentObject.init()();
      v18 = State.init(wrappedValue:)();
      v21 = sub_1001BB0F4(v18, v19, v20);
      sub_1001BB148(v21, v22, v23);

      _ConditionalContent<>.init(storage:)();
      v31 = v34;
      v32 = v35;
      *v33 = v36[0];
      goto LABEL_10;
    }

    type metadata accessor for RoadsideAssistanceModel();
    sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);

    v24 = EnvironmentObject.init()();
    v27 = sub_1001BB228(v24, v25, v26);
    sub_1001BB27C(v27, v28, v29);

    _ConditionalContent<>.init(storage:)();
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    v33[1] = 1;
    sub_1000040A8(&qword_100364CB0, &qword_10028D360);
    sub_1000040A8(&qword_100364CD0, &qword_10028D368);
    sub_1001BB068();
    sub_1001BB19C();
    _ConditionalContent<>.init(storage:)();
    sub_1000040A8(&qword_100364C90, &qword_10028D350);
    sub_1000040A8(&qword_100364C98, &qword_10028D358);
    sub_1001BAFDC();
    sub_1001BB2D0();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_14;
  }

  v6 = sub_1001BB0F4(a1, a3, a4);
  sub_1001BB148(v6, v7, v8);

  _ConditionalContent<>.init(storage:)();
  sub_1000040A8(&qword_100364CB0, &qword_10028D360);
  sub_1000040A8(&qword_100364CD0, &qword_10028D368);
  sub_1001BB068();
  sub_1001BB19C();
  _ConditionalContent<>.init(storage:)();
LABEL_12:
  sub_1000040A8(&qword_100364C90, &qword_10028D350);
  sub_1000040A8(&qword_100364C98, &qword_10028D358);
  sub_1001BAFDC();
  sub_1001BB2D0();
  _ConditionalContent<>.init(storage:)();
LABEL_16:
  *a2 = v34;
  a2[1] = v35;
  a2[2] = *v36;
  result = *&v36[10];
  *(a2 + 42) = *&v36[10];
  return result;
}

unint64_t sub_1001BAF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364C88;
  if (!qword_100364C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364C88);
  }

  return result;
}

unint64_t sub_1001BAFDC()
{
  result = qword_100364CA0;
  if (!qword_100364CA0)
  {
    sub_100008CF0(&qword_100364C90, &qword_10028D350);
    sub_1001BB068();
    sub_1001BB19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CA0);
  }

  return result;
}

unint64_t sub_1001BB068()
{
  result = qword_100364CA8;
  if (!qword_100364CA8)
  {
    v1 = sub_100008CF0(&qword_100364CB0, &qword_10028D360);
    v6 = sub_1001BB0F4(v1, v2, v3);
    sub_1001BB148(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CA8);
  }

  return result;
}

unint64_t sub_1001BB0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364CB8;
  if (!qword_100364CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CB8);
  }

  return result;
}

unint64_t sub_1001BB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364CC0;
  if (!qword_100364CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CC0);
  }

  return result;
}

unint64_t sub_1001BB19C()
{
  result = qword_100364CC8;
  if (!qword_100364CC8)
  {
    v1 = sub_100008CF0(&qword_100364CD0, &qword_10028D368);
    v6 = sub_1001BB228(v1, v2, v3);
    sub_1001BB27C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CC8);
  }

  return result;
}

unint64_t sub_1001BB228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364CD8;
  if (!qword_100364CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CD8);
  }

  return result;
}

unint64_t sub_1001BB27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100364CE0;
  if (!qword_100364CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CE0);
  }

  return result;
}

unint64_t sub_1001BB2D0()
{
  result = qword_100364CE8;
  if (!qword_100364CE8)
  {
    v1 = sub_100008CF0(&qword_100364C98, &qword_10028D358);
    sub_1001BAF88(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CE8);
  }

  return result;
}

uint64_t sub_1001BB35C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1001BB3B4()
{
  result = qword_100364CF0;
  if (!qword_100364CF0)
  {
    sub_100008CF0(&qword_100364CF8, &unk_10028D370);
    sub_1001BAFDC();
    sub_1001BB2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CF0);
  }

  return result;
}

uint64_t sub_1001BB46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for ConnectionAssistantSessionBannerContentView(0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000040A8(&qword_100354F50, &qword_100277D40);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100364D00, &unk_10028D470);
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  if (a1)
  {
    if (sub_100071A54())
    {
      v28 = a3;
      v18 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
      swift_beginAccess();
      sub_100006C20(a1 + v18, v10, &qword_100354F50, &qword_100277D40);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_100008FA0(v10, &qword_100354F50, &qword_100277D40);
        v19 = 1;
      }

      else
      {
        sub_1001BB9F8(v10, v14, type metadata accessor for ConnectionAssistantBanner.Mode);
        sub_1001BD838(v14, v7 + *(v5 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
        type metadata accessor for AppEvents();
        sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
        *v7 = EnvironmentObject.init()();
        v7[1] = v22;
        type metadata accessor for BannerAppearanceModel(0);
        sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel, "\ts\n");
        v7[2] = EnvironmentObject.init()();
        v7[3] = v23;
        type metadata accessor for UIMetrics();
        sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v24 = EnvironmentObject.init()();
        v26 = v25;
        sub_1001C49F0(v14, type metadata accessor for ConnectionAssistantBanner.Mode);
        v7[4] = v24;
        v7[5] = v26;
        sub_1001BB9F8(v7, v17, type metadata accessor for ConnectionAssistantSessionBannerContentView);
        v19 = 0;
      }

      v27 = v28;
      (*(v29 + 56))(v17, v19, 1, v5);
      sub_10000CF4C(v17, v27, &qword_100364D00, &unk_10028D470);
      return (*(v30 + 56))(v27, 0, 1, v15);
    }

    else
    {
      v20 = *(v30 + 56);

      return v20(a3, 1, 1, v15);
    }
  }

  else
  {
    type metadata accessor for BannerAppearanceModel(0);
    sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BB9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BB9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBA74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1001BBB40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001BBBE4(uint64_t a1)
{
  sub_10007B2FC(319);
  if (v1 <= 0x3F)
  {
    sub_1001BBD08(319, &unk_100364D70, type metadata accessor for BannerAppearanceModel, &qword_100354F20, type metadata accessor for BannerAppearanceModel);
    if (v2 <= 0x3F)
    {
      sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ConnectionAssistantBanner.Mode(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001BBD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1001BB9B0(a4, a5, "\ts\n");
    v8 = type metadata accessor for EnvironmentObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1001BBDE0()
{
  result = qword_100364DB8;
  if (!qword_100364DB8)
  {
    sub_100008CF0(&qword_100364D00, &unk_10028D470);
    sub_1001BB9B0(&qword_100364DC0, type metadata accessor for ConnectionAssistantSessionBannerContentView, &unk_10028D4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364DB8);
  }

  return result;
}

uint64_t sub_1001BBEB0()
{
  v1 = sub_1000040A8(&qword_100364DC8, &qword_10028D508);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = *(v0 + 32);
  if (v5)
  {
    sub_1000089B0(v5 + 48, v10);
    v6 = v11;
    v7 = v12;
    sub_1000088DC(v10, v11);
    (*(v7 + 16))(v13, v6, v7);
    sub_100008964(v10);
    v8 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v8);
    v10[-2] = v0;
    v10[-1] = v13;
    sub_1000040A8(&qword_100364DD0, &qword_10028D510);
    sub_1001BD754();
    ScrollView.init(_:showsIndicators:content:)();
    sub_100009274(&qword_100364DF0, &qword_100364DC8, &qword_10028D508, &protocol conformance descriptor for ScrollView<A>);
    View.scrollDisabled(_:)();
    (*(v2 + 8))(v4, v1);
    return sub_100008964(v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BC114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ConnectionAssistantSessionBannerContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_1000040A8(&qword_100364DF8, &qword_10028D528);
  sub_1001BC29C(a1, a2, (a3 + *(v9 + 44)));
  sub_1001BD838(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectionAssistantSessionBannerContentView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1001BB9F8(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ConnectionAssistantSessionBannerContentView);
  v12 = static Alignment.center.getter();
  v14 = v13;
  result = sub_1000040A8(&qword_100364DD0, &qword_10028D510);
  v16 = (a3 + *(result + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_1001BDA1C;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v14;
  return result;
}

void *sub_1001BC29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v82 = a2;
  v86 = a3;
  v85 = sub_1000040A8(&qword_100364E00, &qword_10028D530);
  __chkstk_darwin(v85);
  v83 = &v73 - v4;
  v5 = type metadata accessor for CASessionBannerPossibleButtonView(0);
  __chkstk_darwin(v5);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v73 - v9;
  v11 = sub_1000040A8(&qword_100364E08, &qword_10028D538);
  __chkstk_darwin(v11 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  v84 = sub_1000040A8(&qword_100364E10, &qword_10028D540);
  __chkstk_darwin(v84);
  v18 = (&v73 - v17);
  v19 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = v22[20];
    v23 = v22[21];
    v26 = v22[22];
    v25 = v22[23];
    v27 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1001B49E4(a1 + v27, v21);
    sub_1001C49F0(v21, type metadata accessor for ConnectionAssistantBanner.Mode);
    if (v28)
    {
      type metadata accessor for ConnectivityModel();
      sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
      v29 = EnvironmentObject.init()();
      v82 = v30;
      v83 = v29;
      type metadata accessor for ConnectionModel(0);
      sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
      v31 = EnvironmentObject.init()();
      v80 = v32;
      v81 = v31;
      type metadata accessor for GeoLocationModel();
      sub_1001BB9B0(&qword_10035F1D0, type metadata accessor for GeoLocationModel, "\ts\n");
      v33 = EnvironmentObject.init()();
      v78 = v34;
      v79 = v33;
      type metadata accessor for GuidanceMessagesModel();
      sub_1001BB9B0(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
      v35 = EnvironmentObject.init()();
      v76 = v36;
      v77 = v35;
      type metadata accessor for GuidanceModel(0);
      sub_1001BB9B0(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
      v37 = EnvironmentObject.init()();
      v74 = v38;
      v75 = v37;
      type metadata accessor for PartnerModel();
      sub_1001BB9B0(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
      v73 = EnvironmentObject.init()();
      v40 = v39;
      type metadata accessor for StewieModel(0);
      sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
      v41 = EnvironmentObject.init()();
      v43 = v42;
      type metadata accessor for TimeZoneModel(0);
      sub_1001BB9B0(&qword_10035F220, type metadata accessor for TimeZoneModel, "\ts\n");
      v44 = EnvironmentObject.init()();
      v46 = v45;
      type metadata accessor for TryOutModel(0);
      sub_1001BB9B0(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
      v47 = EnvironmentObject.init()();
      v49 = v48;
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v50 = EnvironmentObject.init()();
      v51 = v82;
      *v18 = v83;
      *(v18 + 1) = v51;
      v52 = v80;
      *(v18 + 2) = v81;
      *(v18 + 3) = v52;
      v53 = v78;
      *(v18 + 4) = v79;
      *(v18 + 5) = v53;
      v54 = v76;
      *(v18 + 6) = v77;
      *(v18 + 7) = v54;
      v55 = v74;
      *(v18 + 8) = v75;
      *(v18 + 9) = v55;
      *(v18 + 10) = v73;
      *(v18 + 11) = v40;
      *(v18 + 12) = v41;
      *(v18 + 13) = v43;
      *(v18 + 14) = v44;
      *(v18 + 15) = v46;
      *(v18 + 16) = v47;
      *(v18 + 17) = v49;
      *(v18 + 18) = v50;
      *(v18 + 19) = v56;
      v18[20] = v24;
      v18[21] = v23;
      v18[22] = v26;
      v18[23] = v25;
      v57 = swift_storeEnumTagMultiPayload();
      sub_100158BDC(v57, v58, v59);
      sub_100009274(&qword_100364E28, &qword_100364E00, &qword_10028D530, &protocol conformance descriptor for TupleView<A>);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      *v16 = static VerticalAlignment.top.getter();
      *(v16 + 1) = 0;
      v16[16] = 0;
      v61 = sub_1000040A8(&qword_100364E18, &qword_10028D548);
      sub_1001BCB9C(a1, &v16[*(v61 + 44)], v24, v23, v26, v25);
      sub_1001BD838(a1 + v27, v10, type metadata accessor for ConnectionAssistantBanner.Mode);
      v62 = &v10[v5[5]];
      type metadata accessor for AppEvents();
      sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      *v62 = EnvironmentObject.init()();
      v62[1] = v63;
      v64 = &v10[v5[6]];
      type metadata accessor for StewieModel(0);
      sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
      *v64 = EnvironmentObject.init()();
      v64[1] = v65;
      v66 = &v10[v5[7]];
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      *v66 = EnvironmentObject.init()();
      v66[1] = v67;
      sub_100006C20(v16, v13, &qword_100364E08, &qword_10028D538);
      sub_1001BD838(v10, v7, type metadata accessor for CASessionBannerPossibleButtonView);
      v68 = v83;
      sub_100006C20(v13, v83, &qword_100364E08, &qword_10028D538);
      v69 = sub_1000040A8(&qword_100364E20, &qword_10028D550);
      sub_1001BD838(v7, v68 + *(v69 + 48), type metadata accessor for CASessionBannerPossibleButtonView);
      sub_1001C49F0(v7, type metadata accessor for CASessionBannerPossibleButtonView);
      sub_100008FA0(v13, &qword_100364E08, &qword_10028D538);
      sub_100006C20(v68, v18, &qword_100364E00, &qword_10028D530);
      v70 = swift_storeEnumTagMultiPayload();
      sub_100158BDC(v70, v71, v72);
      sub_100009274(&qword_100364E28, &qword_100364E00, &qword_10028D530, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v68, &qword_100364E00, &qword_10028D530);
      sub_1001C49F0(v10, type metadata accessor for CASessionBannerPossibleButtonView);
      return sub_100008FA0(v16, &qword_100364E08, &qword_10028D538);
    }
  }

  else
  {
    type metadata accessor for BannerAppearanceModel(0);
    sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BCB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v67 = a2;
  v65 = type metadata accessor for CASessionBannerStaticContentTrailingView(0) - 8;
  __chkstk_darwin(v65);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = (&v60 - v13);
  v14 = sub_1000040A8(&qword_100364E30, &qword_10028D558);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_1000040A8(&qword_100364E38, &qword_10028D560);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = sub_1000040A8(&qword_100364E40, &qword_10028D568);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v63 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v60 - v25;
  __chkstk_darwin(v27);
  v68 = &v60 - v28;
  v29 = sub_1000040A8(&qword_100364E48, &qword_10028D570);
  __chkstk_darwin(v29 - 8);
  v62 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v60 - v32;
  *v33 = static HorizontalAlignment.center.getter();
  *(v33 + 1) = 0;
  v33[16] = 1;
  v34 = &v33[*(sub_1000040A8(&qword_100364E50, &qword_10028D578) + 44)];
  v60 = v33;
  v61 = a1;
  sub_1001BD200(a1, v34);
  *v16 = static VerticalAlignment.top.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v35 = &v16[*(sub_1000040A8(&qword_100364E58, &qword_10028D580) + 44)];
  v36 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
  sub_1001BD838(a1 + v36, v35, type metadata accessor for ConnectionAssistantBanner.Mode);
  LOBYTE(a1) = static Edge.Set.top.getter();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetHeight(v76);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_1000040A8(&qword_100364E60, &qword_10028D588) + 36);
  *v45 = a1;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000CF4C(v16, v20, &qword_100364E30, &qword_10028D558);
  v46 = &v20[*(v18 + 44)];
  v47 = v74;
  *(v46 + 4) = v73;
  *(v46 + 5) = v47;
  *(v46 + 6) = v75;
  v48 = v70;
  *v46 = v69;
  *(v46 + 1) = v48;
  v49 = v72;
  *(v46 + 2) = v71;
  *(v46 + 3) = v49;
  LOBYTE(v16) = static Edge.Set.all.getter();
  sub_10000CF4C(v20, v26, &qword_100364E38, &qword_10028D560);
  v50 = &v26[*(v22 + 44)];
  *v50 = v16;
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  *(v50 + 24) = xmmword_10028D380;
  v50[40] = 0;
  v51 = v68;
  sub_10000CF4C(v26, v68, &qword_100364E40, &qword_10028D568);
  v52 = v64;
  sub_1001BD838(v61 + v36, v64 + *(v65 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  *v52 = EnvironmentObject.init()();
  v52[1] = v53;
  v54 = v62;
  sub_100006C20(v33, v62, &qword_100364E48, &qword_10028D570);
  v55 = v63;
  sub_100006C20(v51, v63, &qword_100364E40, &qword_10028D568);
  v56 = v66;
  sub_1001BD838(v52, v66, type metadata accessor for CASessionBannerStaticContentTrailingView);
  v57 = v67;
  sub_100006C20(v54, v67, &qword_100364E48, &qword_10028D570);
  v58 = sub_1000040A8(&qword_100364E68, &qword_10028D590);
  sub_100006C20(v55, v57 + *(v58 + 48), &qword_100364E40, &qword_10028D568);
  sub_1001BD838(v56, v57 + *(v58 + 64), type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_1001C49F0(v52, type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_100008FA0(v68, &qword_100364E40, &qword_10028D568);
  sub_100008FA0(v60, &qword_100364E48, &qword_10028D570);
  sub_1001C49F0(v56, type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_100008FA0(v55, &qword_100364E40, &qword_10028D568);
  return sub_100008FA0(v54, &qword_100364E48, &qword_10028D570);
}

uint64_t sub_1001BD200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CASessionBannerStaticContentLeadingView(0);
  __chkstk_darwin(v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v24[-v8];
  v10 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v24[-v14];
  v16 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
  sub_1001BD838(a1 + v16, v15, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1001C49F0(v15, type metadata accessor for ConnectionAssistantBanner.Mode);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_1001BD838(a1 + v16, v9 + *(v4 + 20), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  *v9 = EnvironmentObject.init()();
  v9[1] = v18;
  sub_1001BD838(a1 + v16, v12, type metadata accessor for ConnectionAssistantBanner.Mode);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19)
  {
    sub_1001C49F0(v12, type metadata accessor for ConnectionAssistantBanner.Mode);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1001BD838(v9, v6, type metadata accessor for CASessionBannerStaticContentLeadingView);
  *a2 = 0;
  *(a2 + 8) = v25;
  *(a2 + 9) = EnumCaseMultiPayload != 0;
  v21 = sub_1000040A8(&qword_100364E70, &qword_10028D598);
  sub_1001BD838(v6, a2 + *(v21 + 48), type metadata accessor for CASessionBannerStaticContentLeadingView);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = v20;
  *(v22 + 9) = v19 != 0;
  sub_1001C49F0(v9, type metadata accessor for CASessionBannerStaticContentLeadingView);
  return sub_1001C49F0(v6, type metadata accessor for CASessionBannerStaticContentLeadingView);
}

uint64_t sub_1001BD504(void *a1, double a2, double a3)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = ceil(a3);
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446466;
    v19 = a2;
    v20 = a3;
    type metadata accessor for CGSize(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v19 = a2;
    v20 = v6;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Banner content changed, size: %{public}s, reporting rounded: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*a1)
  {
    v19 = a2;
    v20 = v6;

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1001BD754()
{
  result = qword_100364DD8;
  if (!qword_100364DD8)
  {
    sub_100008CF0(&qword_100364DD0, &qword_10028D510);
    sub_100009274(&qword_100364DE0, &qword_100364DE8, &unk_10028D518, &protocol conformance descriptor for VStack<A>);
    sub_100009274(&qword_100360B30, &qword_100360B38, &qword_100288950, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364DD8);
  }

  return result;
}

uint64_t sub_1001BD838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BD8A0()
{
  v1 = (type metadata accessor for ConnectionAssistantSessionBannerContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ConnectionAssistantBanner.Mode(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001BDA1C(double a1, double a2)
{
  v5 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1001BD504(v6, a1, a2);
}

uint64_t sub_1001BDA94@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v81 = type metadata accessor for SymbolVariants();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000040A8(&qword_10035B5E0, &unk_1002831D0);
  __chkstk_darwin(v82);
  v80 = &v77 - v3;
  v87 = sub_1000040A8(&qword_1003651A8, &qword_10028D880);
  __chkstk_darwin(v87);
  v83 = (&v77 - v4);
  v89 = sub_1000040A8(&qword_1003651B0, &qword_10028D888);
  __chkstk_darwin(v89);
  v6 = (&v77 - v5);
  v85 = sub_1000040A8(&qword_1003651B8, &qword_10028D890);
  __chkstk_darwin(v85);
  v86 = &v77 - v7;
  v91 = sub_1000040A8(&qword_1003651C0, &qword_10028D898);
  __chkstk_darwin(v91);
  v88 = &v77 - v8;
  v84 = sub_1000040A8(&qword_1003651C8, &qword_10028D8A0);
  __chkstk_darwin(v84);
  v10 = &v77 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_1003651D0, &qword_10028D8A8);
  __chkstk_darwin(v14 - 8);
  v90 = &v77 - v15;
  v16 = *v1;
  if (*v1)
  {
    sub_1000089B0(v16 + 48, &v120);
    v17 = *(&v121 + 1);
    v18 = v122;
    sub_1000088DC(&v120, *(&v121 + 1));
    (*(v18 + 16))(v129, v17, v18);
    sub_100008964(&v120);
    v19 = type metadata accessor for CASessionBannerStaticContentLeadingView(0);
    sub_1001BD838(v1 + *(v19 + 20), v13, type metadata accessor for ConnectionAssistantBanner.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          sub_100159414(&v120);
          v108 = v126;
          v109 = v127;
          v110[0] = v128[0];
          *(v110 + 10) = *(v128 + 10);
          v104 = v122;
          v105 = v123;
          v106 = v124;
          v107 = v125;
          v102 = v120;
          v103 = v121;
          sub_1000040A8(&qword_100360E30, &unk_10028D8B0);
          sub_100159420();
          _ConditionalContent<>.init(storage:)();
          v72 = v118;
          v6[6] = v117;
          v6[7] = v72;
          v6[8] = v119[0];
          *(v6 + 138) = *(v119 + 10);
          v73 = v114;
          v6[2] = v113;
          v6[3] = v73;
          v74 = v116;
          v6[4] = v115;
          v6[5] = v74;
          v75 = v112;
          *v6 = v111;
          v6[1] = v75;
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_100360E40, &qword_100288BB0);
          sub_1001C5988();
          sub_1001597C0();
          v42 = v90;
          _ConditionalContent<>.init(storage:)();
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v54 = static HorizontalAlignment.leading.getter();
      v55 = v83;
      *v83 = v54;
      v55[1] = 0;
      *(v55 + 16) = 0;
      sub_1000089B0(v16 + 48, &v120);
      v56 = *(&v121 + 1);
      v57 = v122;
      sub_1000088DC(&v120, *(&v121 + 1));
      (*(v57 + 40))(v56, v57);
      v58 = static Font.largeTitle.getter();
      sub_1000040A8(&qword_100360EB0, &qword_10028D8E0);
      v59 = Image.init(systemName:)();
      KeyPath = swift_getKeyPath();
      *&v111 = v59;
      *(&v111 + 1) = KeyPath;
      *&v112 = v58;

      v61 = v78;
      static SymbolVariants.fill.getter();
      sub_1000040A8(&qword_100355050, &unk_100283230);
      sub_10000C700();
      v62 = v80;
      View.symbolVariant(_:)();
      (*(v79 + 8))(v61, v81);

      *(v62 + *(v82 + 36)) = static Color.green.getter();
      sub_1000A4A68();
      v63 = v83;
      View.accessibility(hidden:)();
      sub_100008FA0(v62, &qword_10035B5E0, &unk_1002831D0);

      sub_100008964(&v120);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v64 = (v63 + *(sub_1000040A8(&qword_100365208, &unk_10028D8D0) + 36));
      v65 = v125;
      v64[4] = v124;
      v64[5] = v65;
      v64[6] = v126;
      v66 = v121;
      *v64 = v120;
      v64[1] = v66;
      v67 = v123;
      v64[2] = v122;
      v64[3] = v67;
      v68 = static Edge.Set.all.getter();
      v69 = v86;
      v70 = v63 + *(v87 + 36);
      *v70 = v68;
      *(v70 + 8) = xmmword_10028D390;
      *(v70 + 24) = xmmword_10028D3A0;
      *(v70 + 40) = 0;
      v50 = &qword_10028D880;
      sub_100006C20(v63, v69, &qword_1003651A8, &qword_10028D880);
      swift_storeEnumTagMultiPayload();
      sub_1001C5A14();
      sub_1001C5B58();
      v71 = v88;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v71, v6, &qword_1003651C0, &qword_10028D898);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40, &qword_100288BB0);
      sub_1001C5988();
      sub_1001597C0();
      v42 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v71, &qword_1003651C0, &qword_10028D898);
      v52 = v63;
      v53 = &qword_1003651A8;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1001C49F0(v13, type metadata accessor for ConnectionClosed);
        }

LABEL_8:
        type metadata accessor for ConnectionClosedModel(0);
        sub_1001BB9B0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel, "\ts\n");
        v21 = EnvironmentObject.init()();
        v87 = v22;
        v88 = v21;
        type metadata accessor for ConnectivityModel();
        sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
        v23 = EnvironmentObject.init()();
        v85 = v24;
        v86 = v23;
        type metadata accessor for GuidanceModel(0);
        sub_1001BB9B0(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
        v25 = EnvironmentObject.init()();
        v27 = v26;
        type metadata accessor for OrientationModel();
        sub_1001BB9B0(&qword_10035B1B0, type metadata accessor for OrientationModel, "\ts\n");
        v28 = EnvironmentObject.init()();
        v30 = v29;
        type metadata accessor for StewieModel(0);
        sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
        v31 = EnvironmentObject.init()();
        v33 = v32;
        type metadata accessor for UIMetrics();
        sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v34 = EnvironmentObject.init()();
        v36 = v35;
        v37 = static Edge.Set.all.getter();
        LOBYTE(v111) = 0;
        *&v93 = v88;
        *(&v93 + 1) = v87;
        *&v94 = v86;
        *(&v94 + 1) = v85;
        *&v95 = v25;
        *(&v95 + 1) = v27;
        *&v96 = v28;
        *(&v96 + 1) = v30;
        *&v97 = v31;
        *(&v97 + 1) = v33;
        *&v98 = v34;
        *(&v98 + 1) = v36;
        LOBYTE(v99) = 2;
        v100 = 0;
        LOBYTE(v101[0]) = v37;
        DWORD1(v101[0]) = *(&v120 + 3);
        *(v101 + 1) = v120;
        *(v101 + 8) = xmmword_10028D390;
        *(&v101[1] + 8) = xmmword_10028D3A0;
        BYTE8(v101[2]) = 0;
        *(v128 + 9) = *(&v101[1] + 9);
        v127 = v101[0];
        v128[0] = v101[1];
        v120 = v93;
        v121 = v94;
        v125 = v98;
        v126 = v99;
        v123 = v96;
        v124 = v97;
        v122 = v95;
        sub_1001598D8(&v120);
        v108 = v126;
        v109 = v127;
        v110[0] = v128[0];
        *(v110 + 10) = *(v128 + 10);
        v104 = v122;
        v105 = v123;
        v106 = v124;
        v107 = v125;
        v102 = v120;
        v103 = v121;
        sub_100006C20(&v93, &v111, &qword_100360E30, &unk_10028D8B0);
        sub_1000040A8(&qword_100360E30, &unk_10028D8B0);
        sub_100159420();
        _ConditionalContent<>.init(storage:)();
        v38 = v118;
        v6[6] = v117;
        v6[7] = v38;
        v6[8] = v119[0];
        *(v6 + 138) = *(v119 + 10);
        v39 = v114;
        v6[2] = v113;
        v6[3] = v39;
        v40 = v116;
        v6[4] = v115;
        v6[5] = v40;
        v41 = v112;
        *v6 = v111;
        v6[1] = v41;
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_100360E40, &qword_100288BB0);
        sub_1001C5988();
        sub_1001597C0();
        v42 = v90;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v93, &qword_100360E30, &unk_10028D8B0);
LABEL_13:
        sub_10000CF4C(v42, v92, &qword_1003651D0, &qword_10028D8A8);
        return sub_100008964(v129);
      }

      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 0;
      v43 = sub_1000040A8(&qword_100360EB8, &unk_10028D920);
      sub_1001BE910(&v10[*(v43 + 44)]);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v44 = &v10[*(sub_1000040A8(&qword_1003651F0, &unk_10028D8C0) + 36)];
      v45 = v125;
      *(v44 + 4) = v124;
      *(v44 + 5) = v45;
      *(v44 + 6) = v126;
      v46 = v121;
      *v44 = v120;
      *(v44 + 1) = v46;
      v47 = v123;
      *(v44 + 2) = v122;
      *(v44 + 3) = v47;
      v48 = static Edge.Set.all.getter();
      v49 = &v10[*(v84 + 36)];
      *v49 = v48;
      *(v49 + 8) = xmmword_10028D390;
      *(v49 + 24) = xmmword_10028D3A0;
      v49[40] = 0;
      v50 = &qword_10028D8A0;
      sub_100006C20(v10, v86, &qword_1003651C8, &qword_10028D8A0);
      swift_storeEnumTagMultiPayload();
      sub_1001C5A14();
      sub_1001C5B58();
      v51 = v88;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v51, v6, &qword_1003651C0, &qword_10028D898);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40, &qword_100288BB0);
      sub_1001C5988();
      sub_1001597C0();
      v42 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v51, &qword_1003651C0, &qword_10028D898);
      v52 = v10;
      v53 = &qword_1003651C8;
    }

    sub_100008FA0(v52, v53, v50);
    goto LABEL_13;
  }

  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001BE910@<X0>(uint64_t a2@<X8>)
{
  v39 = a2;
  v2 = type metadata accessor for SymbolVariants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000040A8(&qword_10035D250, &qword_100288C10);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v29 = &v29 - v6;
  v37 = sub_1000040A8(&qword_100360EC0, &unk_10028D930);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v29 - v7;
  v34 = sub_1000040A8(&qword_10035D258, &qword_100283210) - 8;
  __chkstk_darwin(v34);
  v33 = &v29 - v8;
  v32 = sub_1000040A8(&qword_100360EC8, &unk_10028D940);
  __chkstk_darwin(v32);
  v30 = &v29 - v9;
  v10 = Image.init(_internalSystemName:)();
  v11 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v40 = v10;
  v41 = KeyPath;
  v42 = v11;
  static SymbolVariants.circle.getter();
  v13 = sub_1000040A8(&qword_100355050, &unk_100283230);
  v14 = sub_10000C700();
  View.symbolVariant(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);

  static SymbolVariants.fill.getter();
  v40 = v13;
  v41 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v31;
  v17 = v36;
  v18 = v29;
  View.symbolVariant(_:)();
  v15(v5, v2);
  (*(v38 + 8))(v18, v17);
  v19 = static Color.white.getter();
  v20 = static Color.red.getter();
  v21 = v33;
  (*(v35 + 32))(v33, v16, v37);
  v22 = (v21 + *(v34 + 44));
  *v22 = v19;
  v22[1] = v20;
  v23 = v30;
  v24 = &v30[*(v32 + 36)];
  v25 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
  v26 = enum case for Image.Scale.large(_:);
  v27 = type metadata accessor for Image.Scale();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  sub_10000CF4C(v21, v23, &qword_10035D258, &qword_100283210);
  sub_100159910();
  View.accessibility(hidden:)();
  return sub_100008FA0(v23, &qword_100360EC8, &unk_10028D940);
}

uint64_t sub_1001BEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for CASessionBannerConnectionClosedView(0);
  __chkstk_darwin(v3);
  v5 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000040A8(&qword_100365118, &qword_10028D830);
  __chkstk_darwin(v69);
  v72 = (&v65 - v9);
  v66 = sub_1000040A8(&qword_100365120, &qword_10028D838);
  __chkstk_darwin(v66);
  v11 = &v65 - v10;
  v12 = sub_1000040A8(&qword_100365128, &qword_10028D840);
  __chkstk_darwin(v12);
  v14 = (&v65 - v13);
  v67 = sub_1000040A8(&qword_100365130, &qword_10028D848);
  __chkstk_darwin(v67);
  v16 = &v65 - v15;
  v70 = sub_1000040A8(&qword_100365138, &qword_10028D850);
  __chkstk_darwin(v70);
  v68 = &v65 - v17;
  v18 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000040A8(&qword_100365140, &qword_10028D858);
  __chkstk_darwin(v21 - 8);
  v73 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v71 = &v65 - v24;
  sub_1001BD838(a1, v20, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      *v14 = EnvironmentObject.init()();
      v14[1] = v43;
      v44 = swift_storeEnumTagMultiPayload();
      sub_1001C5774(v44, v45, v46);
      sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView, &unk_10028DBF8);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100365130, &qword_10028D848);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365180, &qword_10028D868);
      sub_1001C56B8();
      sub_1001C57C8();
      v47 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100365130, &qword_10028D848);
LABEL_12:
      sub_100006C20(v47, v72, &qword_100365138, &qword_10028D850);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365150, &qword_10028D860);
      sub_1001C562C();
      sub_1001C58FC();
      v33 = v71;
      _ConditionalContent<>.init(storage:)();

      sub_100008FA0(v47, &qword_100365138, &qword_10028D850);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1001BB9F8(v20, v8, type metadata accessor for ConnectionClosed);
      sub_1001BD838(v8, v5 + *(v3 + 20), type metadata accessor for ConnectionClosed);
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      *v5 = EnvironmentObject.init()();
      v5[1] = v28;
      sub_1001BD838(v5, v14, type metadata accessor for CASessionBannerConnectionClosedView);
      v29 = swift_storeEnumTagMultiPayload();
      sub_1001C5774(v29, v30, v31);
      sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView, &unk_10028DBF8);
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100365130, &qword_10028D848);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365180, &qword_10028D868);
      sub_1001C56B8();
      sub_1001C57C8();
      v32 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100365130, &qword_10028D848);
      sub_100006C20(v32, v72, &qword_100365138, &qword_10028D850);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365150, &qword_10028D860);
      sub_1001C562C();
      sub_1001C58FC();
      v33 = v71;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v32, &qword_100365138, &qword_10028D850);
      sub_1001C49F0(v5, type metadata accessor for CASessionBannerConnectionClosedView);
      sub_1001C49F0(v8, type metadata accessor for ConnectionClosed);
      goto LABEL_14;
    }

    v52 = *v20;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v49 = EnvironmentObject.init()();
    *&v75 = v49;
    *(&v75 + 1) = v50;
    LOWORD(v76) = v52;
LABEL_11:
    v53 = sub_1001C5854(v49, v50, v51);
    sub_1001C58A8(v53, v54, v55);

    _ConditionalContent<>.init(storage:)();
    v56 = v79;
    v57 = BYTE1(v79);
    *v11 = v78;
    v11[16] = v56;
    v11[17] = v57;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365180, &qword_10028D868);
    sub_1001C56B8();
    sub_1001C57C8();
    v47 = v68;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v48 = *v20;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v49 = EnvironmentObject.init()();
    *&v75 = v49;
    *(&v75 + 1) = v50;
    LOBYTE(v76) = v48;
    BYTE1(v76) = 1;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for ConnectivityModel();
    sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
    v34 = EnvironmentObject.init()();
    v36 = v35;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v37 = EnvironmentObject.init()();
    *&v75 = v34;
    *(&v75 + 1) = v36;
    *&v76 = v37;
    *(&v76 + 1) = v38;
    v77 = 0;
    sub_1001C55D8(v37, v38, v39);

    _ConditionalContent<>.init(storage:)();
    v40 = v80;
    v41 = v79;
    v42 = v72;
    *v72 = v78;
    v42[1] = v41;
    *(v42 + 32) = v40;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365150, &qword_10028D860);
    sub_1001C562C();
    sub_1001C58FC();
    v33 = v71;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v77 = 1;
    sub_1001C55D8(EnumCaseMultiPayload, v26, v27);
    _ConditionalContent<>.init(storage:)();
    v58 = v80;
    v59 = v79;
    v60 = v72;
    *v72 = v78;
    v60[1] = v59;
    *(v60 + 32) = v58;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365150, &qword_10028D860);
    sub_1001C562C();
    sub_1001C58FC();
    v33 = v71;
    _ConditionalContent<>.init(storage:)();
  }

LABEL_14:
  v61 = v73;
  sub_100006C20(v33, v73, &qword_100365140, &qword_10028D858);
  v62 = v74;
  sub_100006C20(v61, v74, &qword_100365140, &qword_10028D858);
  v63 = v62 + *(sub_1000040A8(&qword_1003651A0, &unk_10028D870) + 48);
  *v63 = 0;
  *(v63 + 8) = 0;
  sub_100008FA0(v33, &qword_100365140, &qword_10028D858);
  return sub_100008FA0(v61, &qword_100365140, &qword_10028D858);
}

uint64_t sub_1001BF9B4@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000040A8(&qword_100365110, &qword_10028D828);
  return sub_1001BEDDC(v2, a2 + *(v4 + 44));
}

uint64_t sub_1001BFA04@<X0>(void *a1@<X8>)
{
  v81 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v1;
  v6 = *v1;
  if (*v1)
  {
    v82 = *v1;
    sub_1000089B0(v6 + 48, &v110);
    v7 = v113;
    v8 = v114;
    sub_1000088DC(&v110, v113);
    (*(v8 + 16))(v155, v7, v8);
    sub_100008964(&v110);
    v9 = [objc_opt_self() mainBundle];
    v156._object = 0x80000001002A0100;
    v10._object = 0x80000001002A00E0;
    v156._countAndFlagsBits = 0xD00000000000003DLL;
    v10._countAndFlagsBits = 0xD000000000000010;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v156);

    v110 = v12;
    v78 = sub_100031770(v13, v14, v15);
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    v89 = v21;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    LODWORD(v76) = enum case for Font.Leading.tight(_:);
    v22 = *(v3 + 104);
    v77 = v3 + 104;
    v79 = v22;
    v22(v5);
    Font.leading(_:)();
    v73 = v2;

    v23 = *(v3 + 8);
    v74 = v3 + 8;
    v75 = v23;
    v23(v5, v2);
    v24 = Text.font(_:)();
    v72 = v5;
    v26 = v25;
    LOBYTE(v8) = v27;

    sub_1000317C4(v16, v18, v20 & 1);

    v28 = v82;
    sub_1000089B0(v82 + 48, &v110);
    v29 = v113;
    v30 = v114;
    sub_1000088DC(&v110, v113);
    (*(v30 + 96))(v29, v30);
    v31 = Text.foregroundColor(_:)();
    v87 = v32;
    v88 = v31;
    LOBYTE(v29) = v33;
    v89 = v34;
    sub_1000317C4(v24, v26, v8 & 1);

    sub_100008964(&v110);
    KeyPath = swift_getKeyPath();
    v86 = swift_getKeyPath();
    v83 = v29 & 1;
    LOBYTE(v110._countAndFlagsBits) = v29 & 1;
    LOBYTE(v104) = 0;
    v84 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000089B0(v28 + 48, &v110);
    v35 = v113;
    v36 = v114;
    sub_1000088DC(&v110, v113);
    v37 = type metadata accessor for CASessionBannerConnectionClosedView(0);
    *&v104 = (*(v36 + 152))(&v80[*(v37 + 20)], v35, v36);
    *(&v104 + 1) = v38;
    v39 = Text.init<A>(_:)();
    v41 = v40;
    LOBYTE(v28) = v42;
    sub_100008964(&v110);
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v44 = v72;
    v43 = v73;
    v79(v72, v76, v73);
    Font.leading(_:)();

    v75(v44, v43);
    v45 = Text.font(_:)();
    v47 = v46;
    LOBYTE(v26) = v48;

    sub_1000317C4(v39, v41, v28 & 1);

    sub_1000089B0(v82 + 48, &v110);
    v49 = v113;
    v50 = v114;
    sub_1000088DC(&v110, v113);
    (*(v50 + 80))(v49, v50);
    v77 = Text.foregroundColor(_:)();
    v82 = v51;
    LOBYTE(v49) = v52;
    v54 = v53;
    v72 = v53;
    sub_1000317C4(v45, v47, v26 & 1);

    sub_100008964(&v110);
    v73 = swift_getKeyPath();
    v76 = swift_getKeyPath();
    LOBYTE(v110._countAndFlagsBits) = v49 & 1;
    LOBYTE(v26) = v49 & 1;
    v71 = v49 & 1;
    LOBYTE(v104) = 0;
    v55 = swift_getKeyPath();
    v70 = v55;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    type metadata accessor for ConnectionModel(0);
    sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
    v79 = EnvironmentObject.init()();
    v80 = v56;
    type metadata accessor for ConnectivityModel();
    sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
    v75 = EnvironmentObject.init()();
    v78 = v57;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v58 = EnvironmentObject.init()();
    v74 = v59;
    *&v98 = v88;
    *(&v98 + 1) = v87;
    LOBYTE(v99) = v83;
    *(&v99 + 1) = *v150;
    DWORD1(v99) = *&v150[3];
    *(&v99 + 1) = v89;
    *&v100 = KeyPath;
    *(&v100 + 1) = 2;
    LOBYTE(v101) = 0;
    *(&v101 + 1) = *v149;
    DWORD1(v101) = *&v149[3];
    *(&v101 + 1) = v86;
    LOBYTE(v102) = 0;
    *(&v102 + 1) = *v151;
    DWORD1(v102) = *&v151[3];
    *(&v102 + 1) = v84;
    *v103 = 0x3FE0000000000000;
    *&v103[8] = v152;
    *&v103[40] = v154;
    *&v103[24] = v153;
    v90[2] = v100;
    v90[3] = v101;
    v90[0] = v98;
    v90[1] = v99;
    v90[6] = *&v103[16];
    v90[7] = *&v103[32];
    v90[4] = v102;
    v90[5] = *v103;
    v60 = v77;
    *&v104 = v77;
    *(&v104 + 1) = v82;
    LOBYTE(v105) = v26;
    *(&v105 + 1) = *v147;
    DWORD1(v105) = *&v147[3];
    *(&v105 + 1) = v54;
    v61 = v73;
    *&v106 = v73;
    *(&v106 + 1) = 3;
    LOBYTE(v107) = 0;
    *(&v107 + 1) = *v146;
    DWORD1(v107) = *&v146[3];
    v62 = v76;
    *(&v107 + 1) = v76;
    LOBYTE(v108) = 0;
    DWORD1(v108) = *(v148 + 3);
    *(&v108 + 1) = v148[0];
    *(&v108 + 1) = v55;
    *v109 = 0x3FE0000000000000;
    *&v109[8] = v91;
    *&v109[24] = v92;
    *&v109[40] = v93;
    *&v109[56] = v94;
    *&v109[72] = v95;
    *&v109[88] = v96;
    *&v109[104] = v97;
    *(&v90[18] + 8) = *&v109[80];
    *(&v90[19] + 8) = *&v109[96];
    *(&v90[16] + 8) = *&v109[48];
    *(&v90[17] + 8) = *&v109[64];
    *(&v90[8] + 8) = v104;
    *(&v90[12] + 8) = v108;
    *(&v90[11] + 8) = v107;
    *(&v90[10] + 8) = v106;
    *(&v90[9] + 8) = v105;
    *(&v90[15] + 8) = *&v109[32];
    *(&v90[14] + 8) = *&v109[16];
    *(&v90[13] + 8) = *v109;
    *&v90[8] = *(&v154 + 1);
    *(&v90[20] + 1) = *(&v97 + 1);
    sub_100006C20(&v98, &v110, &qword_1003610D0, &qword_100289340);
    sub_100006C20(&v104, &v110, &qword_100360FC8, &unk_10028DDE0);

    v63 = v79;

    v64 = v75;

    sub_100008964(v155);
    v65 = v81;
    memcpy(v81, v90, 0x150uLL);
    v66 = v80;
    v65[42] = v63;
    v65[43] = v66;
    v67 = v78;
    v65[44] = v64;
    v65[45] = v67;
    v68 = v74;
    v65[46] = v58;
    v65[47] = v68;

    v126 = v94;
    v127 = v95;
    v128 = v96;
    v129 = v97;
    v123 = v91;
    v124 = v92;
    v110._countAndFlagsBits = v60;
    v110._object = v82;
    v111 = v71;
    *v112 = *v147;
    *&v112[3] = *&v147[3];
    v113 = v72;
    v114 = v61;
    v115 = 3;
    v116 = 0;
    *v117 = *v146;
    *&v117[3] = *&v146[3];
    v118 = v62;
    v119 = 0;
    *&v120[3] = *(v148 + 3);
    *v120 = v148[0];
    v121 = v70;
    v122 = 0x3FE0000000000000;
    v125 = v93;
    sub_100008FA0(&v110, &qword_100360FC8, &unk_10028DDE0);
    v130[0] = v88;
    v130[1] = v87;
    v131 = v83;
    *v132 = *v150;
    *&v132[3] = *&v150[3];
    v133 = v89;
    v134 = KeyPath;
    v135 = 2;
    v136 = 0;
    *v137 = *v149;
    *&v137[3] = *&v149[3];
    v138 = v86;
    v139 = 0;
    *&v140[3] = *&v151[3];
    *v140 = *v151;
    v141 = v84;
    v142 = 0x3FE0000000000000;
    v143 = v152;
    v144 = v153;
    v145 = v154;
    return sub_100008FA0(v130, &qword_1003610D0, &qword_100289340);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C0550@<X0>(void *a1@<X0>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v72) = a3;
  v73 = a4;
  v5 = type metadata accessor for Font.Leading();
  v82 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1[9];
    v8 = a1[10];
    sub_1000088DC(a1 + 6, v7);
    v9 = *(v8 + 16);
    swift_retain_n();
    v9(v148, v7, v8);
    v10 = [objc_opt_self() mainBundle];
    v149._object = 0x80000001002A0100;
    v11._object = 0x80000001002A00E0;
    v149._countAndFlagsBits = 0xD00000000000003DLL;
    v11._countAndFlagsBits = 0xD000000000000010;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v149);

    v103 = v13;
    v71 = sub_100031770(v14, v15, v16);
    v81 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v68 = enum case for Font.Leading.tight(_:);
    v21 = v82;
    v22 = *(v82 + 104);
    v69 = v82 + 104;
    v70 = v22;
    v23 = v77;
    v22(v77);
    Font.leading(_:)();

    v24 = *(v21 + 8);
    v82 = v21 + 8;
    v67 = v24;
    v24(v23, v5);
    LOBYTE(v23) = v20;
    v25 = v81;
    v26 = Text.font(_:)();
    v66 = v5;
    v27 = v26;
    v29 = v28;
    LOBYTE(v8) = v30;
    KeyPath = v31;

    sub_1000317C4(v25, v18, v23 & 1);

    v32 = a1[9];
    v33 = a1[10];
    sub_1000088DC(a1 + 6, v32);
    (*(v33 + 96))(v32, v33);
    v34 = Text.foregroundColor(_:)();
    v74 = v35;
    v75 = v34;
    LOBYTE(v32) = v36;
    v76 = v37;
    sub_1000317C4(v27, v29, v8 & 1);

    KeyPath = swift_getKeyPath();
    v81 = swift_getKeyPath();
    v78 = v32 & 1;
    LOBYTE(v103._countAndFlagsBits) = v32 & 1;
    LOBYTE(v97) = 0;
    v79 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();

    v38 = a1[9];
    v39 = a1[10];
    sub_1000088DC(a1 + 6, v38);
    v103._countAndFlagsBits = (*(v39 + 168))(v72, v38, v39);
    v103._object = v40;
    v41 = Text.init<A>(_:)();
    v43 = v42;
    LOBYTE(v32) = v44;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v45 = v77;
    v46 = v66;
    v70(v77, v68, v66);
    Font.leading(_:)();

    v67(v45, v46);
    v47 = Text.font(_:)();
    v49 = v48;
    LOBYTE(v39) = v50;
    v82 = v51;

    sub_1000317C4(v41, v43, v32 & 1);

    v52 = a1[9];
    v53 = a1[10];
    sub_1000088DC(a1 + 6, v52);
    (*(v53 + 80))(v52, v53);
    v54 = Text.foregroundColor(_:)();
    v56 = v55;
    LOBYTE(v53) = v57;
    v59 = v58;
    v72 = v58;
    sub_1000317C4(v47, v49, v39 & 1);

    v60 = swift_getKeyPath();
    v77 = v60;
    v61 = swift_getKeyPath();
    LOBYTE(v49) = v53 & 1;
    LOBYTE(v103._countAndFlagsBits) = v53 & 1;
    LOBYTE(v97) = 0;
    v82 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v91 = v75;
    *(&v91 + 1) = v74;
    LOBYTE(v92) = v78;
    *(&v92 + 1) = *v143;
    DWORD1(v92) = *&v143[3];
    *(&v92 + 1) = v76;
    *&v93 = KeyPath;
    *(&v93 + 1) = 2;
    LOBYTE(v94) = 0;
    *(&v94 + 1) = *v142;
    DWORD1(v94) = *&v142[3];
    *(&v94 + 1) = v81;
    LOBYTE(v95) = 0;
    DWORD1(v95) = *&v144[3];
    *(&v95 + 1) = *v144;
    *(&v95 + 1) = v79;
    *v96 = 0x3FE0000000000000;
    *&v96[40] = v147;
    *&v96[24] = v146;
    *&v96[8] = v145;
    v83[2] = v93;
    v83[3] = v94;
    v83[0] = v91;
    v83[1] = v92;
    v83[6] = *&v96[16];
    v83[7] = *&v96[32];
    v83[4] = v95;
    v83[5] = *v96;
    *&v97 = v54;
    v62 = v54;
    *(&v97 + 1) = v56;
    LOBYTE(v98) = v49;
    *(&v98 + 1) = *v140;
    DWORD1(v98) = *&v140[3];
    *(&v98 + 1) = v59;
    *&v99 = v60;
    *(&v99 + 1) = 3;
    LOBYTE(v100) = 0;
    *(&v100 + 1) = *v139;
    DWORD1(v100) = *&v139[3];
    *(&v100 + 1) = v61;
    LOBYTE(v101) = 0;
    DWORD1(v101) = *(v141 + 3);
    *(&v101 + 1) = v141[0];
    v63 = v82;
    *(&v101 + 1) = v82;
    *v102 = 0x3FE0000000000000;
    *&v102[8] = v84;
    *&v102[24] = v85;
    *&v102[40] = v86;
    *&v102[56] = v87;
    *&v102[72] = v88;
    *&v102[88] = v89;
    *&v102[104] = v90;
    *(&v83[18] + 8) = *&v102[80];
    *(&v83[19] + 8) = *&v102[96];
    *(&v83[16] + 8) = *&v102[48];
    *(&v83[17] + 8) = *&v102[64];
    *(&v83[8] + 8) = v97;
    *(&v83[12] + 8) = v101;
    *(&v83[11] + 8) = v100;
    *(&v83[10] + 8) = v99;
    *(&v83[9] + 8) = v98;
    *(&v83[15] + 8) = *&v102[32];
    *(&v83[14] + 8) = *&v102[16];
    *(&v83[13] + 8) = *v102;
    *&v83[8] = *(&v147 + 1);
    *(&v83[20] + 1) = *(&v90 + 1);
    sub_100006C20(&v91, &v103, &qword_1003610D0, &qword_100289340);
    sub_100006C20(&v97, &v103, &qword_100360FC8, &unk_10028DDE0);
    sub_100008964(v148);
    memcpy(v73, v83, 0x150uLL);
    v119 = v87;
    v120 = v88;
    v121 = v89;
    v122 = v90;
    v116 = v84;
    v117 = v85;
    v103._countAndFlagsBits = v62;
    v103._object = v56;
    v104 = v49;
    *v105 = *v140;
    *&v105[3] = *&v140[3];
    v106 = v72;
    v107 = v77;
    v108 = 3;
    v109 = 0;
    *v110 = *v139;
    *&v110[3] = *&v139[3];
    v111 = v61;
    v112 = 0;
    *&v113[3] = *(v141 + 3);
    *v113 = v141[0];
    v114 = v63;
    v115 = 0x3FE0000000000000;
    v118 = v86;
    sub_100008FA0(&v103, &qword_100360FC8, &unk_10028DDE0);
    v123[0] = v75;
    v123[1] = v74;
    v124 = v78;
    *v125 = *v143;
    *&v125[3] = *&v143[3];
    v126 = v76;
    v127 = KeyPath;
    v128 = 2;
    v129 = 0;
    *v130 = *v142;
    *&v130[3] = *&v142[3];
    v131 = v81;
    v132 = 0;
    *&v133[3] = *&v144[3];
    *v133 = *v144;
    v134 = v79;
    v135 = 0x3FE0000000000000;
    v136 = v145;
    v137 = v146;
    v138 = v147;
    return sub_100008FA0(v123, &qword_1003610D0, &qword_100289340);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C0F18@<X0>(void *a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v46 = type metadata accessor for Font.Leading();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1[9];
    v11 = a1[10];
    sub_1000088DC(a1 + 6, v10);
    v12 = *(v11 + 16);

    v12(v55, v10, v11);
    v13 = a1[9];
    v14 = a1[10];
    sub_1000088DC(a1 + 6, v13);
    *&v47 = (*(v14 + 216))(a3 & 1, v13, v14);
    *(&v47 + 1) = v15;
    sub_100031770(v47, v15, v16);
    v45 = Text.init<A>(_:)();
    v18 = v17;
    LOBYTE(v13) = v19;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v20 = v46;
    (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v46);
    Font.leading(_:)();

    (*(v7 + 8))(v9, v20);
    v21 = v13;
    v22 = v45;
    v23 = Text.font(_:)();
    v25 = v24;
    v27 = v26;
    v46 = v28;

    sub_1000317C4(v22, v18, v21 & 1);

    v29 = a1[9];
    v30 = a1[10];
    sub_1000088DC(a1 + 6, v29);
    (*(v30 + 80))(v29, v30);
    v31 = Text.foregroundColor(_:)();
    v33 = v32;
    LOBYTE(v18) = v34;
    v36 = v35;
    sub_1000317C4(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v38 = swift_getKeyPath();
    LOBYTE(v18) = v18 & 1;
    LOBYTE(v47) = v18;
    v54 = 0;
    v39 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v55);
    v41 = v49;
    *(a4 + 136) = v50;
    v42 = v52;
    *(a4 + 152) = v51;
    *(a4 + 168) = v42;
    *(a4 + 184) = v53;
    v43 = v48;
    *(a4 + 88) = v47;
    *(a4 + 104) = v43;
    *a4 = v31;
    *(a4 + 8) = v33;
    *(a4 + 16) = v18;
    *(a4 + 24) = v36;
    *(a4 + 32) = KeyPath;
    *(a4 + 40) = 3;
    *(a4 + 48) = 0;
    *(a4 + 56) = v38;
    *(a4 + 64) = 0;
    *(a4 + 72) = v39;
    *(a4 + 80) = 0x3FE0000000000000;
    *(a4 + 120) = v41;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C1350@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v46 = type metadata accessor for Font.Leading();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1[9];
    v8 = a1[10];
    sub_1000088DC(a1 + 6, v7);
    v9 = *(v8 + 16);

    v9(v55, v7, v8);
    v10 = [objc_opt_self() mainBundle];
    v56._object = 0x8000000100296DF0;
    v11._object = 0x8000000100296DC0;
    v56._countAndFlagsBits = 0xD000000000000067;
    v11._countAndFlagsBits = 0xD00000000000002FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v56);

    v47 = v13;
    sub_100031770(v14, v15, v16);
    v44 = Text.init<A>(_:)();
    v18 = v17;
    LOBYTE(v8) = v19;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v20 = v45;
    v21 = v46;
    (*(v45 + 104))(v6, enum case for Font.Leading.tight(_:), v46);
    Font.leading(_:)();

    (*(v20 + 8))(v6, v21);
    v22 = v8;
    v23 = v44;
    v24 = Text.font(_:)();
    v26 = v25;
    LOBYTE(v21) = v27;
    v46 = v28;

    sub_1000317C4(v23, v18, v22 & 1);

    v29 = a1[9];
    v30 = a1[10];
    sub_1000088DC(a1 + 6, v29);
    (*(v30 + 80))(v29, v30);
    v31 = Text.foregroundColor(_:)();
    v33 = v32;
    LOBYTE(v18) = v34;
    v36 = v35;
    sub_1000317C4(v24, v26, v21 & 1);

    KeyPath = swift_getKeyPath();
    v38 = swift_getKeyPath();
    LOBYTE(v18) = v18 & 1;
    LOBYTE(v47._countAndFlagsBits) = v18;
    v54 = 0;
    v39 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v55);
    v41 = v49;
    *(a3 + 136) = v50;
    v42 = v52;
    *(a3 + 152) = v51;
    *(a3 + 168) = v42;
    *(a3 + 184) = v53;
    v43 = v48;
    *(a3 + 88) = v47;
    *(a3 + 104) = v43;
    *a3 = v31;
    *(a3 + 8) = v33;
    *(a3 + 16) = v18;
    *(a3 + 24) = v36;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 3;
    *(a3 + 48) = 0;
    *(a3 + 56) = v38;
    *(a3 + 64) = 0;
    *(a3 + 72) = v39;
    *(a3 + 80) = 0x3FE0000000000000;
    *(a3 + 120) = v41;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C17DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v71 = a2;
  v8 = type metadata accessor for Font.Leading();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3[9];
    v12 = a3[10];
    sub_1000088DC(a3 + 6, v11);
    v13 = *(v12 + 16);

    v13(v127, v11, v12);
    if (a1)
    {
      v72 = a1;

      v14 = sub_1001DE5B8();
      v16 = v15;

      v101 = v14;
      v102 = v16;
      sub_100031770(v17, v18, v19);
      v20 = Text.init<A>(_:)();
      v70 = v21;
      v71 = v20;
      v23 = v22;
      static Font.footnote.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      v25 = v73;
      v24 = v74;
      (*(v73 + 104))(v10, enum case for Font.Leading.tight(_:), v74);
      Font.leading(_:)();

      (*(v25 + 8))(v10, v24);
      LOBYTE(v24) = v23;
      v27 = v70;
      v26 = v71;
      v28 = Text.font(_:)();
      v68 = v30;
      v69 = v29;
      v32 = v31;

      sub_1000317C4(v26, v27, v24 & 1);

      v33 = a3[9];
      v34 = a3[10];
      sub_1000088DC(a3 + 6, v33);
      (*(v34 + 128))(v72, v33, v34);

      v35 = v69;
      v64 = Text.foregroundColor(_:)();
      v73 = v36;
      v74 = v37;
      v39 = v38;
      sub_1000317C4(v28, v35, v32 & 1);

      KeyPath = swift_getKeyPath();
      v70 = KeyPath;
      v72 = swift_getKeyPath();
      LOBYTE(v33) = v39 & 1;
      v125 = v39 & 1;
      LODWORD(v69) = v39 & 1;
      v123 = 0;
      v62 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      type metadata accessor for GuidanceMessagesModel();
      sub_1001BB9B0(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
      v66 = EnvironmentObject.init()();
      v71 = v41;
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v42 = EnvironmentObject.init()();
      v68 = v43;
      type metadata accessor for ConnectionModel(0);
      sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
      v44 = EnvironmentObject.init()();
      v67 = v45;
      type metadata accessor for ConnectivityModel();
      sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
      v46 = EnvironmentObject.init()();
      v65 = v47;
      v48 = EnvironmentObject.init()();
      v63 = v49;
      v50 = v64;
      *&v82 = v64;
      *(&v82 + 1) = v73;
      LOBYTE(v83) = v33;
      *(&v83 + 1) = *v124;
      DWORD1(v83) = *&v124[3];
      *(&v83 + 1) = v74;
      *&v84 = KeyPath;
      *(&v84 + 1) = 2;
      LOBYTE(v85) = 0;
      *(&v85 + 1) = *v122;
      DWORD1(v85) = *&v122[3];
      *(&v85 + 1) = v72;
      LOBYTE(v86) = 0;
      *(&v86 + 1) = *v126;
      DWORD1(v86) = *&v126[3];
      v51 = v62;
      *(&v86 + 1) = v62;
      *v87 = 0x3FE0000000000000;
      *&v87[72] = v79;
      *&v87[56] = v78;
      *&v87[88] = v80;
      *&v87[104] = v81;
      *&v87[8] = v75;
      *&v87[24] = v76;
      *&v87[40] = v77;
      v88 = v82;
      v91 = v85;
      v92 = v86;
      v89 = v83;
      v90 = v84;
      v95 = *&v87[32];
      v96 = *&v87[48];
      v93 = *v87;
      v94 = *&v87[16];
      v100 = *(&v81 + 1);
      v98 = *&v87[80];
      v99 = *&v87[96];
      v97 = *&v87[64];
      sub_100006C20(&v82, &v101, &qword_100360FC8, &unk_10028DDE0);

      v52 = v66;

      sub_100008964(v127);
      v53 = v99;
      *(a5 + 160) = v98;
      *(a5 + 176) = v53;
      v54 = v100;
      v55 = v95;
      *(a5 + 96) = v94;
      *(a5 + 112) = v55;
      v56 = v97;
      *(a5 + 128) = v96;
      *(a5 + 144) = v56;
      v57 = v91;
      *(a5 + 32) = v90;
      *(a5 + 48) = v57;
      v58 = v93;
      *(a5 + 64) = v92;
      *(a5 + 80) = v58;
      v59 = v89;
      *a5 = v88;
      *(a5 + 16) = v59;
      *(a5 + 192) = v54;
      *(a5 + 200) = v52;
      *(a5 + 208) = v71;
      *(a5 + 216) = v42;
      v60 = v67;
      *(a5 + 224) = v68;
      *(a5 + 232) = v44;
      *(a5 + 240) = v60;
      *(a5 + 248) = v46;
      *(a5 + 256) = v65;
      *(a5 + 264) = v48;
      *(a5 + 272) = v63;

      v118 = v78;
      v119 = v79;
      v120 = v80;
      v121 = v81;
      v115 = v75;
      v116 = v76;
      v101 = v50;
      v102 = v73;
      v103 = v69;
      *v104 = *v124;
      *&v104[3] = *&v124[3];
      v105 = v74;
      v106 = v70;
      v107 = 2;
      v108 = 0;
      *v109 = *v122;
      *&v109[3] = *&v122[3];
      v110 = v72;
      v111 = 0;
      *&v112[3] = *&v126[3];
      *v112 = *v126;
      v113 = v51;
      v114 = 0x3FE0000000000000;
      v117 = v77;
      return sub_100008FA0(&v101, &qword_100360FC8, &unk_10028DDE0);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConnectivityModel();
  sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001C2004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000040A8(&qword_100361058, &qword_1002892C0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = (&v47 - v4);
  v5 = sub_1000040A8(&qword_100361060, &unk_1002892C8);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for TransmissionProgress(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_100361068, &qword_1002892D8);
  __chkstk_darwin(v13 - 8);
  v52 = &v47 - v14;
  v15 = v1[4];
  if (v15)
  {
    v16 = v15[9];
    v17 = v15[10];
    sub_1000088DC(v15 + 6, v16);
    v18 = *(v17 + 16);

    v18(v59, v16, v17);
    if (*v1)
    {

      sub_1001DDADC(v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_100008FA0(v9, &qword_100354FD8, &qword_100277EF0);
        v19 = v52;
        (*(v53 + 56))(v52, 1, 1, v54);
LABEL_12:
        sub_10000CF4C(v19, v55, &qword_100361068, &qword_1002892D8);
        return sub_100008964(v59);
      }

      v20 = v48;
      sub_1001BB9F8(v9, v48, type metadata accessor for TransmissionProgress);
      sub_1000089B0((v15 + 6), v56);

      v21 = v57;
      v22 = v58;
      sub_1000088DC(v56, v57);
      v23 = v1[2];
      if (v23)
      {
        v24 = (*(v22 + 144))(v20, *(*(v23 + 48) + 136), v21, v22);
        v26 = v25;
        sub_100008964(v56);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = static HorizontalAlignment.leading.getter();
          v29 = v47;
          *v47 = v28;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          v30 = sub_1000040A8(&qword_100361070, &qword_1002892E0);
          sub_1001C2630(v2, v20, v59, v24, v26, (v29 + *(v30 + 44)));

          v31 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = v29 + *(sub_1000040A8(&qword_100361078, &qword_1002892E8) + 36);
          *v40 = v31;
          *(v40 + 8) = v33;
          *(v40 + 16) = v35;
          *(v40 + 24) = v37;
          *(v40 + 32) = v39;
          *(v40 + 40) = 0;
          v41 = v51;
          *(v29 + *(v51 + 36)) = 256;
          v42 = v49;
          sub_10000CF4C(v29, v49, &qword_100361058, &qword_1002892C0);
          v43 = 0;
        }

        else
        {

          v43 = 1;
          v41 = v51;
          v42 = v49;
        }

        (*(v50 + 56))(v42, v43, 1, v41);
        v19 = v52;
        sub_10000CF4C(v42, v52, &qword_100361060, &unk_1002892C8);
        (*(v53 + 56))(v19, 0, 1, v54);
        sub_1001C49F0(v20, type metadata accessor for TransmissionProgress);
        goto LABEL_12;
      }

      type metadata accessor for ConnectivityModel();
      v45 = &qword_100354F78;
      v46 = type metadata accessor for ConnectivityModel;
    }

    else
    {
      type metadata accessor for ConnectionModel(0);
      v45 = &qword_100354F88;
      v46 = type metadata accessor for ConnectionModel;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    v45 = &qword_100354D40;
    v46 = type metadata accessor for UIMetrics;
  }

  sub_1001BB9B0(v45, v46, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void *sub_1001C2630@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *&v186 = a4;
  *(&v186 + 1) = a5;
  v174 = a2;
  v190 = a6;
  v184 = sub_1000040A8(&qword_100361080, &unk_1002892F0);
  __chkstk_darwin(v184);
  v180 = &v172 - v8;
  v9 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v175 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v172 - v10;
  v12 = sub_1000040A8(&qword_10035E908, &unk_100289300);
  v178 = *(v12 - 8);
  __chkstk_darwin(v12);
  v177 = &v172 - v13;
  v176 = sub_1000040A8(&qword_10035E910, &qword_1002851E0);
  __chkstk_darwin(v176);
  v179 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v172 - v16;
  __chkstk_darwin(v18);
  v185 = &v172 - v19;
  v187 = sub_1000040A8(&qword_100361088, &qword_100289310);
  __chkstk_darwin(v187);
  v21 = &v172 - v20;
  v181 = sub_1000040A8(&qword_100361090, &qword_100289318);
  __chkstk_darwin(v181);
  v182 = (&v172 - v22);
  v188 = sub_1000040A8(&qword_100361098, &qword_100289320);
  __chkstk_darwin(v188);
  v183 = &v172 - v23;
  v24 = type metadata accessor for Font.Leading();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v30 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a1[2];
  if (!v32)
  {
    type metadata accessor for ConnectivityModel();
    v170 = &qword_100354F78;
    v171 = type metadata accessor for ConnectivityModel;
    goto LABEL_10;
  }

  v33 = 1 << *(*(v32 + 48) + 136);
  v189 = v21;
  if ((v33 & 0x1D8) != 0)
  {
    v215 = v186;
    v34 = v26;
    v35 = v30;
    sub_100031770(v26, v27, v28);

    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    *(&v186 + 1) = v41;
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    (*(v25 + 104))(v35, enum case for Font.Leading.tight(_:), v34);
    Font.leading(_:)();

    (*(v25 + 8))(v35, v34);
    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    sub_1000317C4(v36, v38, v40 & 1);

    v47 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v48 = Text.foregroundColor(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_1000317C4(v42, v44, v46 & 1);

    KeyPath = swift_getKeyPath();
    v56 = swift_getKeyPath();
    LOBYTE(v215) = v52 & 1;
    LOBYTE(v213[0]) = 0;
    v57 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v215 = v48;
    *(&v215 + 1) = v50;
    LOBYTE(v216) = v52 & 1;
    *(&v216 + 1) = v54;
    *&v217 = KeyPath;
    *(&v217 + 1) = 1;
    LOBYTE(v218) = 0;
    *(&v218 + 1) = v56;
    LOBYTE(v219) = 0;
    *(&v219 + 1) = v57;
    *&v220 = 0x3FE0000000000000;
    WORD4(v222[1]) = 256;
    v58 = v222[0];
    v59 = v182;
    v182[6] = v221;
    v59[7] = v58;
    *(v59 + 122) = *(v222 + 10);
    v60 = v218;
    v59[2] = v217;
    v59[3] = v60;
    v61 = v220;
    v59[4] = v219;
    v59[5] = v61;
    v62 = v216;
    *v59 = v215;
    v59[1] = v62;
    swift_storeEnumTagMultiPayload();
    sub_100006C20(&v215, v213, &qword_1003610B0, &qword_100289338);
    sub_1000040A8(&qword_1003610B0, &qword_100289338);
    sub_100009274(&qword_1003610B8, &qword_100361080, &unk_1002892F0, &protocol conformance descriptor for TupleView<A>);
    sub_10015A674();
    v63 = v183;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v63, v189, &qword_100361098, &qword_100289320);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v215, &qword_1003610B0, &qword_100289338);
    v64 = v63;
    v65 = &qword_100361098;
    v66 = &qword_100289320;
    return sub_100008FA0(v64, v65, v66);
  }

  if ((v33 & 0x203) != 0)
  {
    v172 = v30;
    v173 = v26;
    v67 = type metadata accessor for TransmissionProgress(0);
    *&v215 = *(v174 + *(v67 + 28));
    BYTE8(v215) = 0;
    *&v213[0] = 0x4059000000000000;
    sub_100108848(v67, v68, v69);
    ProgressView.init<A>(value:total:)();
    v70 = a3[3];
    v71 = a3[4];
    v72 = sub_1000088DC(a3, v70);
    *(&v216 + 1) = v70;
    *&v217 = *(v71 + 8);
    v73 = sub_10007E56C(&v215);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    v74 = sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10010889C(v74, v75, v76);
    v77 = v177;
    View.progressViewStyle<A>(_:)();
    sub_1001088F0(&v215);
    (*(v175 + 8))(v11, v9);
    v79 = a3[3];
    v78 = a3[4];
    sub_1000088DC(a3, v79);
    (*(*(v78 + 8) + 8))(v79);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v178 + 32))(v17, v77, v12);
    v80 = &v17[*(v176 + 36)];
    v81 = v223[7];
    *(v80 + 4) = v223[6];
    *(v80 + 5) = v81;
    *(v80 + 6) = v223[8];
    v82 = v223[3];
    *v80 = v223[2];
    *(v80 + 1) = v82;
    v83 = v223[5];
    *(v80 + 2) = v223[4];
    *(v80 + 3) = v83;
    v84 = sub_10000CF4C(v17, v185, &qword_10035E910, &qword_1002851E0);
    v215 = v186;
    sub_100031770(v84, v85, v86);

    v87 = Text.init<A>(_:)();
    v89 = v88;
    LOBYTE(v71) = v90;
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v92 = v172;
    v91 = v173;
    (*(v25 + 104))(v172, enum case for Font.Leading.tight(_:), v173);
    Font.leading(_:)();

    (*(v25 + 8))(v92, v91);
    v93 = Text.font(_:)();
    v95 = v94;
    LOBYTE(v92) = v96;

    sub_1000317C4(v87, v89, v71 & 1);

    v97 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v98 = Text.foregroundColor(_:)();
    v100 = v99;
    LOBYTE(v71) = v101;
    v103 = v102;

    sub_1000317C4(v93, v95, v92 & 1);

    v104 = swift_getKeyPath();
    v105 = swift_getKeyPath();
    LOBYTE(v215) = v71 & 1;
    LOBYTE(v213[0]) = 0;
    v106 = swift_getKeyPath();
    v107 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    LOBYTE(v215) = 0;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v203[7] = v223[9];
    *&v203[23] = v223[10];
    *&v203[39] = v224;
    *&v204 = v98;
    *(&v204 + 1) = v100;
    LOBYTE(v205) = v71 & 1;
    *(&v205 + 1) = v103;
    *&v206 = v104;
    *(&v206 + 1) = 1;
    LOBYTE(v207) = 0;
    *(&v207 + 1) = v105;
    LOBYTE(v208) = 0;
    *(&v208 + 1) = v106;
    *&v209 = 0x3FE0000000000000;
    BYTE8(v209) = v107;
    *&v210 = v109;
    *(&v210 + 1) = v111;
    *&v211 = v113;
    *(&v211 + 1) = v115;
    LOBYTE(v212[0]) = 0;
    *(v212 + 1) = *v203;
    *(&v212[1] + 1) = *&v203[16];
    *(&v212[2] + 1) = *&v203[32];
    *&v212[3] = *(&v224 + 1);
    WORD4(v212[3]) = 256;
    v116 = v179;
    sub_100006C20(v185, v179, &qword_10035E910, &qword_1002851E0);
    v200 = v212[0];
    v201 = v212[1];
    v202[0] = v212[2];
    *(v202 + 10) = *(&v212[2] + 10);
    v196 = v208;
    v197 = v209;
    v198 = v210;
    v199 = v211;
    v192 = v204;
    v193 = v205;
    v194 = v206;
    v195 = v207;
    v117 = v180;
    sub_100006C20(v116, v180, &qword_10035E910, &qword_1002851E0);
    v118 = (v117 + *(sub_1000040A8(&qword_1003610A0, &qword_100289328) + 48));
    v119 = v200;
    v213[8] = v200;
    v213[9] = v201;
    v120 = v202[0];
    v214[0] = v202[0];
    *(v214 + 10) = *(v202 + 10);
    v121 = v196;
    v122 = v196;
    v213[4] = v196;
    v213[5] = v197;
    v123 = v198;
    v124 = v198;
    v213[6] = v198;
    v213[7] = v199;
    v125 = v192;
    v126 = v192;
    v213[0] = v192;
    v213[1] = v193;
    v213[2] = v194;
    v213[3] = v195;
    v127 = v201;
    v128 = v201;
    v118[8] = v200;
    v118[9] = v127;
    v118[10] = v120;
    *(v118 + 170) = *(v202 + 10);
    v129 = v197;
    v130 = v197;
    v118[4] = v121;
    v118[5] = v129;
    v131 = v199;
    v132 = v199;
    v118[6] = v123;
    v118[7] = v131;
    v133 = v193;
    v134 = v194;
    v135 = v193;
    v136 = v194;
    *v118 = v125;
    v118[1] = v133;
    v137 = v195;
    v138 = v195;
    v118[2] = v134;
    v118[3] = v137;
    v222[1] = v119;
    v222[2] = v128;
    v223[0] = v202[0];
    *(v223 + 10) = *(v202 + 10);
    v219 = v122;
    v220 = v130;
    v221 = v124;
    v222[0] = v132;
    v215 = v126;
    v216 = v135;
    v217 = v136;
    v218 = v138;
    sub_100006C20(&v204, v191, &qword_1003610A8, &qword_100289330);
    sub_100006C20(v213, v191, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(&v215, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(v116, &qword_10035E910, &qword_1002851E0);
    sub_100006C20(v117, v182, &qword_100361080, &unk_1002892F0);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_1003610B0, &qword_100289338);
    sub_100009274(&qword_1003610B8, &qword_100361080, &unk_1002892F0, &protocol conformance descriptor for TupleView<A>);
    sub_10015A674();
    v139 = v183;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v139, v189, &qword_100361098, &qword_100289320);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v204, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(v139, &qword_100361098, &qword_100289320);
    sub_100008FA0(v117, &qword_100361080, &unk_1002892F0);
    v64 = v185;
    v65 = &qword_10035E910;
    v66 = &qword_1002851E0;
    return sub_100008FA0(v64, v65, v66);
  }

  v215 = v186;
  sub_100031770(v26, v27, v28);

  v141 = Text.init<A>(_:)();
  v143 = v142;
  v145 = v144;
  v147 = a3[3];
  v146 = a3[4];
  sub_1000088DC(a3, v147);
  (*(*(v146 + 8) + 32))(v147);
  *&v186 = Text.font(_:)();
  *(&v186 + 1) = v148;
  v150 = v149;
  v152 = v151;

  sub_1000317C4(v141, v143, v145 & 1);

  v153 = v31[4];
  if (!v153)
  {
    while (1)
    {
      type metadata accessor for UIMetrics();
      v170 = &qword_100354D40;
      v171 = type metadata accessor for UIMetrics;
LABEL_10:
      sub_1001BB9B0(v170, v171, "\ts\n");
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  v154 = v153[9];
  v155 = v153[10];
  sub_1000088DC(v153 + 6, v154);
  (*(v155 + 128))(v32, v154, v155);

  v156 = v186;
  v157 = Text.foregroundColor(_:)();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  sub_1000317C4(v156, v150, v152 & 1);

  v164 = swift_getKeyPath();
  v165 = swift_getKeyPath();
  v166 = v161 & 1;
  LOBYTE(v213[0]) = v161 & 1;
  LOBYTE(v204) = 0;
  v167 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v168 = v216;
  v169 = v189;
  *(v189 + 88) = v215;
  *v169 = v157;
  *(v169 + 8) = v159;
  *(v169 + 16) = v166;
  *(v169 + 24) = v163;
  *(v169 + 32) = v164;
  *(v169 + 40) = 1;
  *(v169 + 48) = 0;
  *(v169 + 56) = v165;
  *(v169 + 64) = 0;
  *(v169 + 72) = v167;
  *(v169 + 80) = 0x3FE0000000000000;
  *(v169 + 104) = v168;
  *(v169 + 120) = v217;
  *(v169 + 136) = 256;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_1003610B0, &qword_100289338);
  sub_10015A78C();
  sub_10015A674();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001C38DC@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    sub_1000089B0(*v1 + 48, v7);
    v3 = v8;
    v4 = v9;
    sub_1000088DC(v7, v8);
    (*(v4 + 16))(v10, v3, v4);
    sub_100008964(v7);
    v5 = static HorizontalAlignment.center.getter();
    LOBYTE(v3) = static Edge.Set.all.getter();
    result = sub_100008964(v10);
    LOBYTE(v7[0]) = 1;
    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = v3;
    *(a1 + 32) = xmmword_10028D3A0;
    *(a1 + 48) = xmmword_10028D390;
    *(a1 + 64) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C3A04@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v3 = type metadata accessor for KeyboardShortcut();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BorderedButtonStyle();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CASessionBannerPossibleButtonView(0);
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v57 = sub_1000040A8(&qword_1003650C0, &qword_10028D798);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - v9;
  v58 = sub_1000040A8(&qword_1003650C8, &qword_10028D7A0);
  __chkstk_darwin(v58);
  v11 = &v54 - v10;
  v62 = sub_1000040A8(&qword_1003650D0, &qword_10028D7A8);
  __chkstk_darwin(v62);
  v64 = &v54 - v12;
  v13 = sub_1000040A8(&qword_1003650D8, &qword_10028D7B0);
  v68 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v54 - v14;
  v15 = sub_1000040A8(&qword_1003650E0, &unk_10028D7B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - v16;
  v18 = *(v2 + *(v7 + 28));
  if (!v18)
  {
    type metadata accessor for UIMetrics();
    v52 = &qword_100354D40;
    v53 = type metadata accessor for UIMetrics;
LABEL_11:
    sub_1001BB9B0(v52, v53, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000089B0(v18 + 48, v70);
  v20 = v71;
  v19 = v72;
  sub_1000088DC(v70, v71);
  (*(v19 + 16))(v73, v20, v19);
  sub_100008964(v70);
  v21 = *(v2 + *(v7 + 24));
  if (!v21)
  {
    type metadata accessor for StewieModel(0);
    v52 = &qword_1003561B8;
    v53 = type metadata accessor for StewieModel;
    goto LABEL_11;
  }

  v22 = v13;
  if (*(v21 + 64))
  {
    v23 = *(v21 + 121);
    v24 = sub_100071A54();
    v25 = 1;
    if (v24 & 1) != 0 && (v23)
    {
      sub_1001BD838(v2, &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CASessionBannerPossibleButtonView);
      v26 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v27 = swift_allocObject();
      v28 = sub_1001BB9F8(&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CASessionBannerPossibleButtonView);
      __chkstk_darwin(v28);
      sub_1001C52C8(v29, v30, v31);
      v32 = v55;
      Button.init(action:label:)();
      v33 = v59;
      BorderedButtonStyle.init()();
      sub_100009274(&qword_1003650F0, &qword_1003650C0, &qword_10028D798, &protocol conformance descriptor for Button<A>);
      sub_1001BB9B0(&qword_1003650F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
      v34 = v57;
      v35 = v61;
      View.buttonStyle<A>(_:)();
      (*(v60 + 8))(v33, v35);
      (*(v56 + 8))(v32, v34);
      v36 = &v11[*(v58 + 36)];
      sub_1000040A8(&qword_100357740, &qword_10027B2A0);
      static ButtonBorderShape.capsule.getter();
      *v36 = swift_getKeyPath();
      v37 = v65;
      static KeyboardShortcut.defaultAction.getter();
      sub_1001C5344();
      v38 = v64;
      View.keyboardShortcut(_:)();
      (*(v66 + 8))(v37, v67);
      sub_100008FA0(v11, &qword_1003650C8, &qword_10028D7A0);
      v39 = static Color.green.getter();
      KeyPath = swift_getKeyPath();
      v70[0] = v39;
      v41 = AnyShapeStyle.init<A>(_:)();
      v42 = (v38 + *(v62 + 36));
      *v42 = KeyPath;
      v42[1] = v41;
      LocalizedStringKey.init(stringLiteral:)();
      v43 = Text.init(_:tableName:bundle:comment:)();
      v45 = v44;
      v47 = v46;
      sub_1001C54C4();
      v48 = v63;
      View.accessibility(label:)();
      sub_1000317C4(v43, v45, v47 & 1);

      sub_100008FA0(v38, &qword_1003650D0, &qword_10028D7A8);
      v49 = static Edge.Set.all.getter();
      v50 = v48 + *(v22 + 36);
      *v50 = v49;
      *(v50 + 8) = xmmword_10028D3B0;
      *(v50 + 24) = xmmword_10028D3C0;
      *(v50 + 40) = 0;
      sub_10000CF4C(v48, v17, &qword_1003650D8, &qword_10028D7B0);
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  (*(v68 + 56))(v17, v25, 1, v22);
  sub_10000CF4C(v17, v69, &qword_1003650E0, &unk_10028D7B8);
  return sub_100008964(v73);
}

uint64_t sub_1001C42E8(uint64_t a1, __n128 a2)
{
  if (*(a1 + *(type metadata accessor for CASessionBannerPossibleButtonView(0) + 20)))
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C4418(uint64_t a1)
{
  v1 = static VerticalAlignment.center.getter();
  v28 = 1;
  sub_1001C4604(&v13);
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v29 = v13;
  v30 = v14;
  v36 = v18;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v17;
  v35[0] = v13;
  v35[1] = v14;
  sub_100006C20(&v29, &v4, &qword_100361018, qword_10028E420);
  sub_100008FA0(v35, &qword_100361018, qword_10028E420);
  *(&v27[2] + 7) = v31;
  *(&v27[3] + 7) = v32;
  *(&v27[4] + 7) = v33;
  *(&v27[5] + 7) = v34;
  *(v27 + 7) = v29;
  *(&v27[1] + 7) = v30;
  v2 = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v5[33] = v27[2];
  *&v5[49] = v27[3];
  *&v5[65] = v27[4];
  *&v5[80] = *(&v27[4] + 15);
  *&v5[1] = v27[0];
  v4 = v1;
  v5[0] = v2;
  *&v5[17] = v27[1];
  sub_1000040A8(&qword_1003652D8, &qword_10028DD40);
  sub_1001C61DC();
  View.accessibility(hidden:)();
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v19 = *&v5[80];
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *&v5[16];
  v16 = *&v5[32];
  v17 = *&v5[48];
  v18 = *&v5[64];
  v13 = v4;
  v14 = *v5;
  return sub_100008FA0(&v13, &qword_1003652D8, &qword_10028DD40);
}

uint64_t sub_1001C4604@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() mainBundle];
  v35._object = 0x80000001002A3030;
  v7._object = 0x80000001002A0080;
  v35._countAndFlagsBits = 0xD00000000000002CLL;
  v7._countAndFlagsBits = 0xD000000000000017;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v35);

  v33 = v9;
  sub_100031770(v10, v11, v12);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.title3.getter();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_1000317C4(v13, v15, v17 & 1);

  static Color.green.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;

  sub_1000317C4(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v15) = v15 & 1;
  LOBYTE(v33._countAndFlagsBits) = v15;
  v34 = 0;
  result = swift_getKeyPath();
  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v15;
  *(a1 + 24) = v28;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v30;
  *(a1 + 64) = 1;
  *(a1 + 72) = result;
  *(a1 + 80) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_1001C4928(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t sub_1001C49F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C4AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001C4B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1001C4C38(uint64_t a1)
{
  type metadata accessor for ConnectionAssistantBanner.Mode(319);
  if (v1 <= 0x3F)
  {
    sub_10007B2FC(319);
    if (v2 <= 0x3F)
    {
      sub_1001BBD08(319, &qword_100359818, type metadata accessor for StewieModel, &qword_1003561B8, type metadata accessor for StewieModel);
      if (v3 <= 0x3F)
      {
        sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001C4DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001C4E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001C4F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C4FDC()
{
  sub_100008CF0(&qword_100364DC8, &qword_10028D508);
  sub_100009274(&qword_100364DF0, &qword_100364DC8, &qword_10028D508, &protocol conformance descriptor for ScrollView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C50E4()
{
  v1 = *(type metadata accessor for CASessionBannerPossibleButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ConnectionAssistantBanner.Mode(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C5268()
{
  v1 = *(type metadata accessor for CASessionBannerPossibleButtonView(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1001C42E8(v3, v2);
}

unint64_t sub_1001C52C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003650E8;
  if (!qword_1003650E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003650E8);
  }

  return result;
}

unint64_t sub_1001C5344()
{
  result = qword_100365100;
  if (!qword_100365100)
  {
    sub_100008CF0(&qword_1003650C8, &qword_10028D7A0);
    sub_100008CF0(&qword_1003650C0, &qword_10028D798);
    type metadata accessor for BorderedButtonStyle();
    sub_100009274(&qword_1003650F0, &qword_1003650C0, &qword_10028D798, &protocol conformance descriptor for Button<A>);
    sub_1001BB9B0(&qword_1003650F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365100);
  }

  return result;
}

unint64_t sub_1001C54C4()
{
  result = qword_100365108;
  if (!qword_100365108)
  {
    sub_100008CF0(&qword_1003650D0, &qword_10028D7A8);
    sub_100008CF0(&qword_1003650C8, &qword_10028D7A0);
    sub_1001C5344();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365108);
  }

  return result;
}

unint64_t sub_1001C55D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365148;
  if (!qword_100365148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365148);
  }

  return result;
}

unint64_t sub_1001C562C()
{
  result = qword_100365158;
  if (!qword_100365158)
  {
    sub_100008CF0(&qword_100365138, &qword_10028D850);
    sub_1001C56B8();
    sub_1001C57C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365158);
  }

  return result;
}

unint64_t sub_1001C56B8()
{
  result = qword_100365160;
  if (!qword_100365160)
  {
    v1 = sub_100008CF0(&qword_100365130, &qword_10028D848);
    sub_1001C5774(v1, v2, v3);
    sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView, &unk_10028DBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365160);
  }

  return result;
}

unint64_t sub_1001C5774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365168;
  if (!qword_100365168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365168);
  }

  return result;
}

unint64_t sub_1001C57C8()
{
  result = qword_100365178;
  if (!qword_100365178)
  {
    v1 = sub_100008CF0(&qword_100365180, &qword_10028D868);
    v6 = sub_1001C5854(v1, v2, v3);
    sub_1001C58A8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365178);
  }

  return result;
}

unint64_t sub_1001C5854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365188;
  if (!qword_100365188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365188);
  }

  return result;
}

unint64_t sub_1001C58A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100365190;
  if (!qword_100365190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365190);
  }

  return result;
}

unint64_t sub_1001C58FC()
{
  result = qword_100365198;
  if (!qword_100365198)
  {
    v1 = sub_100008CF0(&qword_100365150, &qword_10028D860);
    sub_1001C55D8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365198);
  }

  return result;
}

unint64_t sub_1001C5988()
{
  result = qword_1003651D8;
  if (!qword_1003651D8)
  {
    sub_100008CF0(&qword_1003651C0, &qword_10028D898);
    sub_1001C5A14();
    sub_1001C5B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651D8);
  }

  return result;
}

unint64_t sub_1001C5A14()
{
  result = qword_1003651E0;
  if (!qword_1003651E0)
  {
    sub_100008CF0(&qword_1003651C8, &qword_10028D8A0);
    sub_1001C5AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651E0);
  }

  return result;
}

unint64_t sub_1001C5AA0()
{
  result = qword_1003651E8;
  if (!qword_1003651E8)
  {
    sub_100008CF0(&qword_1003651F0, &unk_10028D8C0);
    sub_100009274(&qword_100360E68, &qword_100360E70, &qword_100288BC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651E8);
  }

  return result;
}

unint64_t sub_1001C5B58()
{
  result = qword_1003651F8;
  if (!qword_1003651F8)
  {
    sub_100008CF0(&qword_1003651A8, &qword_10028D880);
    sub_1001C5BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651F8);
  }

  return result;
}

unint64_t sub_1001C5BE4()
{
  result = qword_100365200;
  if (!qword_100365200)
  {
    sub_100008CF0(&qword_100365208, &unk_10028D8D0);
    sub_100009274(&qword_100360E90, &qword_100360E98, &unk_100288BD0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365200);
  }

  return result;
}

uint64_t sub_1001C5D18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 2147483646)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = a4(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1001C5E00(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1001C5F14()
{
  result = qword_1003652A8;
  if (!qword_1003652A8)
  {
    sub_100008CF0(&qword_1003650D8, &qword_10028D7B0);
    sub_1001C5FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652A8);
  }

  return result;
}

unint64_t sub_1001C5FA0()
{
  result = qword_1003652B0;
  if (!qword_1003652B0)
  {
    sub_100008CF0(&qword_1003652B8, &qword_10028DB38);
    sub_1001C54C4();
    sub_1001BB9B0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652B0);
  }

  return result;
}

unint64_t sub_1001C60A8()
{
  result = qword_1003652D0;
  if (!qword_1003652D0)
  {
    sub_100008CF0(&qword_1003651D0, &qword_10028D8A8);
    sub_1001C5988();
    sub_1001597C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652D0);
  }

  return result;
}

unint64_t sub_1001C61DC()
{
  result = qword_1003652E0;
  if (!qword_1003652E0)
  {
    sub_100008CF0(&qword_1003652D8, &qword_10028DD40);
    sub_100009274(&qword_1003652E8, &qword_1003652F0, &qword_10028DD48, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652E0);
  }

  return result;
}

unint64_t sub_1001C62C0()
{
  result = qword_1003652F8;
  if (!qword_1003652F8)
  {
    sub_100008CF0(&qword_100365300, &qword_10028DE48);
    sub_1001C61DC();
    sub_1001BB9B0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652F8);
  }

  return result;
}

unint64_t sub_1001C63C4()
{
  result = qword_100365318;
  if (!qword_100365318)
  {
    sub_100008CF0(&qword_100360FC8, &unk_10028DDE0);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365318);
  }

  return result;
}

uint64_t sub_1001C6538(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1001C65F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v29 = a5;
  v9 = sub_1000040A8(&qword_100365340, &qword_10028DF58);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = sub_10013B7D8(v8, a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = sub_1000040A8(&qword_100365348, &qword_10028DF60);
  sub_1001C67D0(v13, v15, v17, v19, v8, a2, a3, a4, &v12[*(v20 + 44)]);

  v21 = static Edge.Set.all.getter();
  v22 = &v12[*(v10 + 44)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v29;
  sub_1001C78CC(v12, v29);
  v24 = v23 + *(sub_1000040A8(&qword_100365350, &qword_10028DF68) + 36);
  v25 = v35;
  *(v24 + 64) = v34;
  *(v24 + 80) = v25;
  *(v24 + 96) = v36;
  v26 = v31;
  *v24 = v30;
  *(v24 + 16) = v26;
  result = v33;
  *(v24 + 32) = v32;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_1001C67D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = a8;
  v71 = a7;
  v72 = a6;
  v70 = a5;
  v76 = a4;
  v82 = a3;
  v81 = a9;
  v80 = sub_1000040A8(&qword_100365358, &qword_10028DF70);
  __chkstk_darwin(v80);
  v75 = &v69[-v11];
  v12 = sub_1000040A8(&qword_100365360, &qword_10028DF78);
  __chkstk_darwin(v12 - 8);
  v74 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v69[-v15];
  v77 = sub_1000040A8(&qword_100365368, &qword_10028DF80);
  __chkstk_darwin(v77);
  v78 = &v69[-v17];
  v18 = sub_1000040A8(&qword_100365370, &qword_10028DF88);
  __chkstk_darwin(v18 - 8);
  v83 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v89 = &v69[-v21];
  v22 = sub_1000040A8(&qword_100365378, &qword_10028DF90);
  __chkstk_darwin(v22 - 8);
  v24 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v69[-v26];
  v95 = a1;
  v96 = a2;
  sub_100031770(v28, v29, v30);

  v31 = Text.init<A>(_:)();
  v33 = v32;
  v35 = v34;
  static Font.headline.getter();
  v87 = Text.font(_:)();
  v86 = v36;
  v38 = v37;
  v88 = v39;

  sub_1000317C4(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v79 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v84 = v38 & 1;
  LOBYTE(v95) = v38 & 1;
  LOBYTE(v90) = 0;
  *v27 = static HorizontalAlignment.center.getter();
  *(v27 + 1) = 0x4028000000000000;
  v27[16] = 0;
  sub_1000040A8(&qword_100365380, &unk_10028DFC8);
  v95 = v82;
  swift_getKeyPath();

  sub_1000040A8(&qword_100355E30, &unk_10027A120);
  sub_1000040A8(&qword_100356748, &unk_10027BF20);
  sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
  sub_100031AB8();
  v82 = v27;
  v48 = v76;
  ForEach<>.init(_:id:content:)();
  if (*(v48 + 16))
  {
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0x4028000000000000;
    v16[16] = 0;
    sub_1000040A8(&qword_100365388, &qword_10028DFF8);
    v95 = v48;
    swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = v70;
    v50 = v71;
    *(v49 + 24) = v72;
    *(v49 + 32) = v50;
    *(v49 + 40) = v73;

    sub_1000040A8(&qword_100365390, &qword_10028E020);
    sub_1000040A8(&qword_100365398, &qword_10028E028);
    v51 = sub_100009274(&qword_1003653A0, &qword_100365390, &qword_10028E020, &protocol conformance descriptor for [A]);
    sub_1001C7994(v51, v52, v53);
    sub_1001C79E8();
    ForEach<>.init(_:id:content:)();
    v54 = v74;
    sub_100006C20(v16, v74, &qword_100365360, &qword_10028DF78);
    v55 = v75;
    *v75 = 0x4032000000000000;
    *(v55 + 8) = 0;
    v56 = sub_1000040A8(&qword_1003653D8, &qword_10028E040);
    sub_100006C20(v54, v55 + *(v56 + 48), &qword_100365360, &qword_10028DF78);
    sub_100008FA0(v54, &qword_100365360, &qword_10028DF78);
    sub_100006C20(v55, v78, &qword_100365358, &qword_10028DF70);
    swift_storeEnumTagMultiPayload();
    sub_100009274(&qword_1003653E0, &qword_100365358, &qword_10028DF70, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(v55, &qword_100365358, &qword_10028DF70);
    sub_100008FA0(v16, &qword_100365360, &qword_10028DF78);
  }

  else
  {
    v57 = v78;
    *v78 = 0x4014000000000000;
    *(v57 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100009274(&qword_1003653E0, &qword_100365358, &qword_10028DF70, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
  }

  v58 = v82;
  sub_100006C20(v82, v24, &qword_100365378, &qword_10028DF90);
  v59 = v89;
  v60 = v83;
  sub_100006C20(v89, v83, &qword_100365370, &qword_10028DF88);
  *&v90 = v87;
  *(&v90 + 1) = v86;
  LOBYTE(v91) = v84;
  *(&v91 + 1) = *v112;
  DWORD1(v91) = *&v112[3];
  *(&v91 + 1) = v88;
  *&v92 = KeyPath;
  BYTE8(v92) = 1;
  HIDWORD(v92) = *&v111[3];
  *(&v92 + 9) = *v111;
  v61 = v79;
  LOBYTE(v93) = v79;
  DWORD1(v93) = *&v110[3];
  *(&v93 + 1) = *v110;
  *(&v93 + 1) = v41;
  *v94 = v43;
  *&v94[8] = v45;
  *&v94[16] = v47;
  v94[24] = 0;
  v62 = v91;
  v63 = v81;
  *v81 = v90;
  v63[1] = v62;
  v64 = v92;
  v65 = v93;
  v66 = *v94;
  *(v63 + 73) = *&v94[9];
  v63[3] = v65;
  v63[4] = v66;
  v63[2] = v64;
  *(v63 + 12) = 0x4018000000000000;
  *(v63 + 104) = 0;
  v67 = sub_1000040A8(&qword_1003653E8, &unk_10028E048);
  sub_100006C20(v24, v63 + *(v67 + 64), &qword_100365378, &qword_10028DF90);
  sub_100006C20(v60, v63 + *(v67 + 80), &qword_100365370, &qword_10028DF88);
  sub_100006C20(&v90, &v95, &qword_10035B600, &qword_100280C20);
  sub_100008FA0(v59, &qword_100365370, &qword_10028DF88);
  sub_100008FA0(v58, &qword_100365378, &qword_10028DF90);
  sub_100008FA0(v60, &qword_100365370, &qword_10028DF88);
  sub_100008FA0(v24, &qword_100365378, &qword_10028DF90);
  v95 = v87;
  v96 = v86;
  v97 = v84;
  *v98 = *v112;
  *&v98[3] = *&v112[3];
  v99 = v88;
  v100 = KeyPath;
  v101 = 1;
  *v102 = *v111;
  *&v102[3] = *&v111[3];
  v103 = v61;
  *v104 = *v110;
  *&v104[3] = *&v110[3];
  v105 = v41;
  v106 = v43;
  v107 = v45;
  v108 = v47;
  v109 = 0;
  return sub_100008FA0(&v95, &qword_10035B600, &qword_100280C20);
}

uint64_t sub_1001C7250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v31 = v8;
  v32 = v9;
  sub_100031770(v10, v11, v12);

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.subheadline.getter();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_1000317C4(v13, v15, v17 & 1);

  LODWORD(v31) = static HierarchicalShapeStyle.secondary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  sub_1000317C4(v18, v20, v22 & 1);

  result = swift_getKeyPath();
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_1001C7474@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v36 = a6;
  v11 = type metadata accessor for BorderedButtonStyle();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_1003653B8, &qword_10028E030);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = *a1;
  v20 = *(a1 + 1);
  v19 = *(a1 + 2);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v22 = v33;
  *(v21 + 24) = a3;
  *(v21 + 32) = v22;
  *(v21 + 40) = a5;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  *(v21 + 64) = v19;
  v37 = v18;
  v38 = v20;
  v39 = v19;

  sub_1000040A8(&qword_1003653F0, &qword_10028E058);
  sub_1001C7CBC();
  Button.init(action:label:)();
  v23 = &v17[*(v15 + 36)];
  sub_1000040A8(&qword_100357740, &qword_10027B2A0);
  static ButtonBorderShape.roundedRectangle.getter();
  *v23 = swift_getKeyPath();
  BorderedButtonStyle.init()();
  sub_1001C7AFC();
  sub_1001C7BE0(v24);
  v25 = v36;
  v26 = v34;
  View.buttonStyle<A>(_:)();
  (*(v35 + 8))(v14, v26);
  sub_100008FA0(v17, &qword_1003653B8, &qword_10028E030);
  v27 = [objc_opt_self() labelColor];
  v28 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v40 = v28;
  v30 = AnyShapeStyle.init<A>(_:)();
  result = sub_1000040A8(&qword_100365398, &qword_10028E028);
  v32 = (v25 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  return result;
}

void sub_1001C7768(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v20 = a2;
  *(&v20 + 1) = a3;
  sub_100031770(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v9 & 1;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v13 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v15 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  *(a4 + 96) = v24;
  *(a4 + 112) = v25;
  *(a4 + 128) = v26;
  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  *(a4 + 64) = v22;
  *(a4 + 80) = v23;
  *(a4 + 144) = KeyPath;
  *(a4 + 152) = v13;
  *(a4 + 160) = v15;
  *(a4 + 168) = v16;
  *(a4 + 176) = v17;
  *(a4 + 184) = v18;
  *(a4 + 192) = v19;
  *(a4 + 200) = 0;
}