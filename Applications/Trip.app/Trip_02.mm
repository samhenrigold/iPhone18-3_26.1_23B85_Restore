double sub_100037360(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return result;
}

double sub_100037380(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return result;
}

double sub_1000373A0(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return result;
}

void *sub_100037414()
{

  return v0;
}

uint64_t sub_100037464()
{
  sub_100037414();

  return _swift_deallocClassInstance(v0, 152, 7);
}

uint64_t sub_1000374BC(uint64_t a1)
{
  *(v1 + 16) = xmmword_100041FA0;
  *(v1 + 32) = xmmword_100041F30;
  *(v1 + 48) = xmmword_100041FB0;
  *(v1 + 64) = xmmword_100041FA0;
  *(v1 + 80) = static Color.primary.getter();
  *(v1 + 88) = 0x4038000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v5 = [v4 scaledFontForFont:v3];

  *(v1 + 96) = Font.init(_:)();
  v6 = [v2 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v8 = [v7 scaledFontForFont:v6];

  *(v1 + 104) = Font.init(_:)();
  v9 = [v2 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v10 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v11 = [v10 scaledFontForFont:v9];

  *(v1 + 112) = Font.init(_:)();
  *(v1 + 120) = static Color.primary.getter();
  v12 = [v2 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v14 = [v13 scaledFontForFont:v12];

  *(v1 + 128) = Font.init(_:)();
  v15 = [objc_opt_self() systemGrayColor];
  *(v1 + 136) = Color.init(uiColor:)();
  *(v1 + 144) = 0x4010000000000000;
  return v1;
}

uint64_t sub_100037758(double a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v5 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  a4(v6);
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_100037844(v8);
  return v10;
}

uint64_t sub_100037844(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000378FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003A310(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100037AE0()
{
  if (qword_10005A3B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100037B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005CEF8, &qword_1000421F0);
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - v3;
  v60 = sub_100003090(&qword_10005CF00, &qword_1000421F8);
  __chkstk_darwin(v60);
  v52 = &v44 - v4;
  v61 = sub_100003090(&qword_10005CF08, &qword_100042200);
  __chkstk_darwin(v61);
  v62 = &v44 - v5;
  v55 = sub_100003090(&qword_10005CF10, &qword_100042208);
  __chkstk_darwin(v55);
  v56 = &v44 - v6;
  v58 = sub_100003090(&qword_10005CF18, &qword_100042210);
  __chkstk_darwin(v58);
  v59 = &v44 - v7;
  v57 = sub_100003090(&qword_10005CF20, &qword_100042218);
  v49 = *(v57 - 8);
  __chkstk_darwin(v57);
  v48 = &v44 - v8;
  v9 = type metadata accessor for CAFUIAppPresentationMode();
  v53 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = type metadata accessor for LayoutConfiguration(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = sub_100003090(&qword_10005CF28, &qword_100042220);
  v63 = *(v20 - 8);
  v64 = v20;
  __chkstk_darwin(v20);
  v54 = &v44 - v21;
  type metadata accessor for TripsTabView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v67 >> 62))
  {
    v22 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_14:
    v38 = 1;
    return (*(v63 + 56))(a1, v38, 1, v64);
  }

  v39 = _CocoaArrayWrapper.endIndex.getter();

  if (!v39)
  {
    goto LABEL_14;
  }

LABEL_3:
  v44 = v17;
  v47 = a1;
  sub_1000378FC(v19);
  v23 = v53;
  v24 = *(v53 + 16);
  v24(v13, v19, v9);
  sub_10003A098(v19, type metadata accessor for LayoutConfiguration);
  v25 = (*(v23 + 88))(v13, v9);
  if (v25 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    type metadata accessor for TripEnvironment(0);
    sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment, &unk_100042654);
    StateObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v65 = v67;
    v66 = v68;
    __chkstk_darwin(v26);
    sub_100003090(&qword_10005CF58, &qword_1000422E0);
    sub_100039B5C();
    v27 = v48;
    TabView.init(selection:content:)();
    v28 = v49;
    v29 = v57;
    (*(v49 + 16))(v56, v27, v57);
    swift_storeEnumTagMultiPayload();
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218, &protocol conformance descriptor for TabView<A, B>);
    sub_1000398A4();
    v30 = v59;
    _ConditionalContent<>.init(storage:)();
    sub_100039954(v30, v62);
    swift_storeEnumTagMultiPayload();
    sub_1000399C4();
    v31 = v54;
    _ConditionalContent<>.init(storage:)();
    sub_100039A7C(v30);
    (*(v28 + 8))(v27, v29);
LABEL_12:
    a1 = v47;
    sub_100008944(v31, v47, &qword_10005CF28, &qword_100042220);
    v38 = 0;
    return (*(v63 + 56))(a1, v38, 1, v64);
  }

  if (v25 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v25 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v25 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = v52;
    if (v67)
    {
      type metadata accessor for TripView(0);
      sub_10003A048(&qword_10005CF50, type metadata accessor for TripView, &unk_100040360);
      v33 = v46;
      Carousel.init(model:content:)();
      v35 = v50;
      v34 = v51;
      (*(v50 + 32))(v32, v33, v51);
      v36 = 0;
      v31 = v54;
    }

    else
    {
      v36 = 1;
      v31 = v54;
      v35 = v50;
      v34 = v51;
    }

    (*(v35 + 56))(v32, v36, 1, v34);
    sub_100008DD0(v32, v56, &qword_10005CF00, &qword_1000421F8);
    swift_storeEnumTagMultiPayload();
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218, &protocol conformance descriptor for TabView<A, B>);
    sub_1000398A4();
    v37 = v59;
    _ConditionalContent<>.init(storage:)();
    sub_100039954(v37, v62);
    swift_storeEnumTagMultiPayload();
    sub_1000399C4();
    _ConditionalContent<>.init(storage:)();
    sub_100039A7C(v37);
    sub_100039AE4(v32);
    goto LABEL_12;
  }

  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v41._object = 0x8000000100043690;
  v41._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v41);
  v42 = v44;
  sub_1000378FC(v44);
  v43 = v45;
  v24(v45, v42, v9);
  sub_10003A098(v42, type metadata accessor for LayoutConfiguration);
  _print_unlocked<A, B>(_:_:)();
  (*(v53 + 8))(v43, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100038678(uint64_t a1)
{
  v2 = type metadata accessor for TripsTabView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100039DEC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10003A310(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TripsTabView);
  sub_100003090(&qword_10005B4B0, &qword_100040C28);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005CF70, &qword_1000422E8);
  sub_100003894(&qword_10005CF90, &qword_10005B4B0, &qword_100040C28, &protocol conformance descriptor for [A]);
  sub_100039BE0();
  sub_10003A048(&qword_10005CF98, type metadata accessor for CardModel, &unk_100041944);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000388C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for TripsTabView(0);
  v6 = *(v5 - 8);
  v58 = v5 - 8;
  v55 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripView(0);
  __chkstk_darwin(v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100003090(&qword_10005CF78, &qword_1000422F0);
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  __chkstk_darwin(v11);
  v53 = &v45 - v13;
  v48 = sub_100003090(&qword_10005A3D8, &qword_10003FAA8);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v59 = &v45 - v14;
  v15 = sub_100003090(&qword_10005CFA0, &qword_100042300);
  v50 = *(v15 - 8);
  v51 = v15;
  __chkstk_darwin(v15);
  v49 = &v45 - v16;
  v47 = sub_100003090(&qword_10005CF70, &qword_1000422E8);
  __chkstk_darwin(v47);
  v45 = &v45 - v17;
  v18 = *a1;
  *v10 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_10003A048(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

  v19 = EnvironmentObject.init()();
  v20 = (v10 + *(v8 + 20));
  *v20 = v19;
  v20[1] = v21;
  v22 = (v10 + *(v8 + 24));
  type metadata accessor for CardModel(0);
  sub_10003A048(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
  *v22 = ObservedObject.init(wrappedValue:)();
  v22[1] = v23;
  v24 = sub_100003090(&qword_10005CF80, &qword_1000422F8);
  v25 = sub_10003A048(&qword_10005CF50, type metadata accessor for TripView, &unk_100040360);
  v26 = sub_100003894(&qword_10005CF88, &qword_10005CF80, &qword_1000422F8, &protocol conformance descriptor for TupleView<A>);
  View.tabItem<A>(_:)();
  sub_10003A098(v10, type metadata accessor for TripView);
  v27 = v54;
  sub_100039DEC(a2, v54);
  v28 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10003A310(v27, v30 + v28, type metadata accessor for TripsTabView);
  *(v30 + v29) = v18;

  v60 = v8;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = v56;
  v32 = v53;
  View.onTapGesture(count:perform:)();

  (*(v57 + 8))(v32, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33 = v60;
  if (v60 >> 62)
  {
LABEL_19:
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  while (v34 != v35)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    v36 = static UUID.== infix(_:_:)();

    if (v36)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v35++, 1))
    {
      goto LABEL_18;
    }
  }

  v35 = 0;
LABEL_14:

  v38 = v49;
  (*(v46 + 32))(v49, v59, v48);
  v39 = &v38[*(sub_100003090(&qword_10005A3E0, &qword_10003FAB0) + 36)];
  *v39 = v35;
  v39[8] = 1;
  if (qword_10005A3B8 != -1)
  {
    swift_once();
  }

  v40 = qword_10005D638;
  v41 = static Edge.Set.all.getter();
  v42 = v45;
  (*(v50 + 32))(v45, v38, v51);
  v43 = v42 + *(v47 + 36);
  *v43 = v40;
  *(v43 + 8) = v41;
  sub_100008944(v42, v52, &qword_10005CF70, &qword_1000422E8);
}

uint64_t sub_100039058@<X0>(uint64_t a2@<X8>)
{
  v3 = Image.init(systemName:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000089B4();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = v7 & 1;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;

  sub_100025318(v4, v6, v8);

  sub_100008AB0(v4, v6, v8);
}

uint64_t sub_100039174(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TripsTabView(0);
  type metadata accessor for TripEnvironment(0);
  sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment, &unk_100042654);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 >> 62)
  {
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    v4 = static UUID.== infix(_:_:)();

    if (v4)
    {
      break;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_100039378@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_10003A048(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

  v3 = EnvironmentObject.init()();
  v5 = v4;
  v6 = type metadata accessor for TripView(0);
  v7 = (a2 + *(v6 + 20));
  *v7 = v3;
  v7[1] = v5;
  v8 = (a2 + *(v6 + 24));
  type metadata accessor for CardModel(0);
  sub_10003A048(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
  result = ObservedObject.init(wrappedValue:)();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t sub_1000394C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
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

uint64_t sub_1000395A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
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

uint64_t type metadata accessor for TripsTabView(uint64_t a1)
{
  result = qword_10005CEA0;
  if (!qword_10005CEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000396B4(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100039750(319);
    if (v2 <= 0x3F)
    {
      sub_1000397E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100039750(uint64_t a1)
{
  if (!qword_10005CEB0)
  {
    type metadata accessor for TripModel(255);
    sub_10003A048(&qword_10005AEA0, type metadata accessor for TripModel, &unk_100040C70);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005CEB0);
    }
  }
}

void sub_1000397E4(uint64_t a1)
{
  if (!qword_10005CEB8)
  {
    type metadata accessor for TripEnvironment(255);
    sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment, &unk_100042654);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005CEB8);
    }
  }
}

unint64_t sub_1000398A4()
{
  result = qword_10005CF38;
  if (!qword_10005CF38)
  {
    sub_1000036BC(&qword_10005CF00, &qword_1000421F8);
    sub_100003894(&qword_10005CF40, &qword_10005CEF8, &qword_1000421F0, &protocol conformance descriptor for Carousel<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF38);
  }

  return result;
}

uint64_t sub_100039954(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005CF18, &qword_100042210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000399C4()
{
  result = qword_10005CF48;
  if (!qword_10005CF48)
  {
    sub_1000036BC(&qword_10005CF18, &qword_100042210);
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218, &protocol conformance descriptor for TabView<A, B>);
    sub_1000398A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF48);
  }

  return result;
}

uint64_t sub_100039A7C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005CF18, &qword_100042210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039AE4(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005CF00, &qword_1000421F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039B5C()
{
  result = qword_10005CF60;
  if (!qword_10005CF60)
  {
    sub_1000036BC(&qword_10005CF58, &qword_1000422E0);
    sub_100039BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF60);
  }

  return result;
}

unint64_t sub_100039BE0()
{
  result = qword_10005CF68;
  if (!qword_10005CF68)
  {
    sub_1000036BC(&qword_10005CF70, &qword_1000422E8);
    sub_1000036BC(&qword_10005A3D8, &qword_10003FAA8);
    sub_1000036BC(&qword_10005CF78, &qword_1000422F0);
    type metadata accessor for TripView(255);
    sub_1000036BC(&qword_10005CF80, &qword_1000422F8);
    sub_10003A048(&qword_10005CF50, type metadata accessor for TripView, &unk_100040360);
    sub_100003894(&qword_10005CF88, &qword_10005CF80, &qword_1000422F8, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF68);
  }

  return result;
}

uint64_t sub_100039DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsTabView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039E50()
{
  v1 = type metadata accessor for TripsTabView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
  }

  sub_100011184(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TripsTabView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000388C0(a1, v6, a2);
}

uint64_t sub_10003A048(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003A098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003A0F8()
{
  v1 = type metadata accessor for TripsTabView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
  }

  sub_100011184(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10003A27C()
{
  v1 = *(type metadata accessor for TripsTabView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100039174(v0 + v2, v3);
}

uint64_t sub_10003A310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003A37C()
{
  result = qword_10005CFA8;
  if (!qword_10005CFA8)
  {
    sub_1000036BC(&qword_10005CFB0, &qword_100042398);
    sub_10003A400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFA8);
  }

  return result;
}

unint64_t sub_10003A400()
{
  result = qword_10005CFB8;
  if (!qword_10005CFB8)
  {
    sub_1000036BC(&qword_10005CF28, &qword_100042220);
    sub_1000399C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFB8);
  }

  return result;
}

uint64_t sub_10003A48C(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  v3 = *a1;
  v4 = 0x746E6F7A69726F68;
  v5 = 0xEF6B636174536C61;
  if (v3 != 1)
  {
    v4 = 0x6C61636974726576;
    v5 = 0xED00006B63617453;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953720684;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x746E6F7A69726F68;
  v9 = 0xEF6B636174536C61;
  if (*a2 != 1)
  {
    v8 = 0x6C61636974726576;
    v9 = 0xED00006B63617453;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1953720684;
  }

  if (*a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10003A5B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A66C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10003A70C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A7BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

unint64_t sub_10003A830@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003B53C(*a1);
  *a2 = result;
  return result;
}

void sub_10003A860(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF6B636174536C61;
  v5 = 0x746E6F7A69726F68;
  if (v2 != 1)
  {
    v5 = 0x6C61636974726576;
    v4 = 0xED00006B63617453;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003A91C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10003A988(uint64_t a1)
{
  v3 = sub_100003090(&qword_10005C388, &qword_100041B78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-v5];
  v7 = sub_100003090(&qword_10005D1B0, &qword_100042618);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v11 = OBJC_IVAR____TtC4Trip13TripAppConfig__layoutName;
  v20[15] = 0;
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC4Trip13TripAppConfig__infoCardHidden;
  v20[14] = 0;
  Published.init(initialValue:)();
  v13 = *(v4 + 32);
  v13(v1 + v12, v6, v3);
  v14 = OBJC_IVAR____TtC4Trip13TripAppConfig__measureLabelsHidden;
  v20[13] = 0;
  Published.init(initialValue:)();
  v13(v1 + v14, v6, v3);
  v15 = OBJC_IVAR____TtC4Trip13TripAppConfig__educationTextHidden;
  v20[12] = 1;
  Published.init(initialValue:)();
  v13(v1 + v15, v6, v3);
  *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter) = 0;
  v16 = OBJC_IVAR____TtC4Trip13TripAppConfig_configuration;
  v17 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v1 + v16, a1, v17);
  sub_10003AC40();
  (*(v18 + 8))(a1, v17);
  return v1;
}

void sub_10003AC40()
{
  v1 = v0;
  v2 = type metadata accessor for CAUAppUIConfiguration.Element();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = CAUAppUIConfiguration.Configuration.elementData.getter();
  (*(v3 + 104))(v5, enum case for CAUAppUIConfiguration.Element.trip_horizontalStack(_:), v2);
  if (*(v10 + 16) && (v11 = sub_10000E2CC(v5), (v12 & 1) != 0))
  {
    (*(v7 + 16))(v9, *(v10 + 56) + *(v7 + 72) * v11, v6);
    (*(v3 + 8))(v5, v2);

    CAUAppUIConfiguration.ElementData.stringValue.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    if (v14)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v17[15] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v17[14] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v17[13] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v17[12] = 0;

      static Published.subscript.setter();
      v15 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v15 setUnitsStyle:1];
      [v15 setAllowedUnits:224];
      v16 = *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter);
      *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter) = v15;
    }
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10003AFB4()
{
  v1 = OBJC_IVAR____TtC4Trip13TripAppConfig_configuration;
  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip13TripAppConfig__layoutName;
  v4 = sub_100003090(&qword_10005D1B0, &qword_100042618);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip13TripAppConfig__infoCardHidden;
  v6 = sub_100003090(&qword_10005C388, &qword_100041B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC4Trip13TripAppConfig__measureLabelsHidden, v6);
  v7(v0 + OBJC_IVAR____TtC4Trip13TripAppConfig__educationTextHidden, v6);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for TripAppConfig(uint64_t a1)
{
  result = qword_10005D008;
  if (!qword_10005D008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B198(uint64_t a1)
{
  type metadata accessor for CAUAppUIConfiguration.Configuration();
  if (v1 <= 0x3F)
  {
    sub_10002F478(319, &unk_10005D018, &type metadata for LayoutName);
    if (v2 <= 0x3F)
    {
      sub_10002F478(319, &unk_10005BCB8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10003B2DC()
{
  result = qword_10005D198;
  if (!qword_10005D198)
  {
    sub_1000036BC(&qword_10005D1A0, qword_1000423E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D198);
  }

  return result;
}

unint64_t sub_10003B344()
{
  result = qword_10005D1A8;
  if (!qword_10005D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D1A8);
  }

  return result;
}

uint64_t sub_10003B398@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TripAppConfig(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10003B43C(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_10003B4CC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10003B53C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100055D20, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for CAFUIAppPresentationMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v16(a4, a1, v12);
  v17 = type metadata accessor for LayoutConfiguration(0);
  v18 = a4 + *(v17 + 20);
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v16(v15, a1, v12);
  v19 = (*(v13 + 88))(v15, v12);
  if (v19 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    v20 = type metadata accessor for ConsoleMetrics();
    v21 = swift_allocObject();
    v22 = sub_100036D98(v21);
    v23 = &off_100056D40;
LABEL_8:
    v25 = (a4 + *(v17 + 24));
    v25[3] = v20;
    v25[4] = v23;
    *v25 = v22;
    return (*(v13 + 8))(a1, v12);
  }

  if (v19 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v19 == enum case for CAFUIAppPresentationMode.clusterPopover(_:))
  {
    v20 = type metadata accessor for ClusterMetrics();
    swift_allocObject();
    v22 = sub_10003707C();
    v23 = &off_100056C28;
    goto LABEL_8;
  }

  if (v19 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    v20 = type metadata accessor for WidgetMetrics();
    v24 = swift_allocObject();
    v22 = sub_1000374BC(v24);
    v23 = &off_100056B10;
    goto LABEL_8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10003B914(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10003B994(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003BA08()
{
  type metadata accessor for TripEnvironment(0);
  v0 = swift_allocObject();
  result = Published.init(initialValue:)();
  qword_10005D630 = v0;
  return result;
}

uint64_t sub_10003BA6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003BAE0()
{
  v1 = OBJC_IVAR____TtC4Trip15TripEnvironment__selectedTripIndex;
  v2 = sub_100003090(&qword_10005D350, &qword_1000426D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_10003BBB0(uint64_t a1)
{
  sub_10003BC40();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003BC40()
{
  if (!qword_10005D1F8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D1F8);
    }
  }
}

uint64_t sub_10003BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAFUIAppPresentationMode();
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

uint64_t sub_10003BD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CAFUIAppPresentationMode();
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

void sub_10003BE54(uint64_t a1)
{
  type metadata accessor for CAFUIAppPresentationMode();
  if (v1 <= 0x3F)
  {
    sub_10003BEF0(319);
    if (v2 <= 0x3F)
    {
      sub_10003BF48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003BEF0(uint64_t a1)
{
  if (!qword_10005D310)
  {
    type metadata accessor for CGSize(255);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_10005D310);
    }
  }
}

unint64_t sub_10003BF48()
{
  result = qword_10005D318;
  if (!qword_10005D318)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10005D318);
  }

  return result;
}

uint64_t sub_10003BFAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TripEnvironment(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t *NSNotificationName.ClusterEvent.unsafeMutableAddressor()
{
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.ClusterEvent;
}

uint64_t sub_10003C044()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  result = Color.init(_:)();
  qword_10005D638 = result;
  return result;
}

uint64_t sub_10003C084()
{
  v0 = type metadata accessor for CAFUIAppPresentationMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LayoutConfiguration(0);
  sub_10003C3BC(v4, qword_10005D358);
  v5 = sub_10003C384(v4, qword_10005D358);
  (*(v1 + 104))(v3, enum case for CAFUIAppPresentationMode.clusterDCA(_:), v0);
  type metadata accessor for CGSize(0);
  v7[0] = 0;
  v7[1] = 0;
  static Binding.constant(_:)();
  return sub_10003B680(v3, v7[2], v7[3], v5, *&v7[4], *&v7[5]);
}

uint64_t sub_10003C1B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10005A3C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = sub_10003C384(v2, qword_10005D358);

  return sub_10000ECD0(v3, a1);
}

uint64_t sub_10003C22C()
{
  sub_10000ED34();

  return EnvironmentValues.subscript.getter();
}

NSString sub_10003C274()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.ClusterEvent = result;
  return result;
}

id static NSNotificationName.ClusterEvent.getter()
{
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.ClusterEvent;

  return v1;
}

unint64_t sub_10003C330()
{
  result = qword_10005D370;
  if (!qword_10005D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D370);
  }

  return result;
}

uint64_t sub_10003C384(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10003C3BC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10003C420()
{
  sub_10003D3A0();
  result = NSString.init(stringLiteral:)();
  qword_10005D648 = result;
  return result;
}

void sub_10003C4F8(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v10 = a1;
    v5 = [v4 _FBSScene];
    v6 = [v5 settings];

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager);
      *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager) = 0;

      if (qword_10005A3D0 != -1)
      {
        swift_once();
      }

      [v4 _unregisterSceneActionsHandlerArray:qword_10005D648];
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager);
      *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager) = 0;
    }

    if (qword_10005A3D0 != -1)
    {
      swift_once();
    }

    [v10 _unregisterSceneActionsHandlerArray:qword_10005D648];
  }
}

id sub_10003C7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003C87C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

    sub_100034D00(0xD000000000000024, 0x8000000100043990, 0xD00000000000001FLL, 0x80000001000439C0, 24);
    return;
  }

  v11 = v10;
  v12 = a1;
  v13 = [a2 role];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v20 = [v11 _FBSScene];
  v21 = [v20 settings];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();

  v23 = *(v7 + 104);
  if (v22)
  {
    v23(v9, enum case for CAFUIAppPresentationMode.clusterDCA(_:), v6);
    v24 = objc_allocWithZone(type metadata accessor for TripWindowManager());
    v25 = v12;
    v26 = sub_100011E3C(v11, v9);

    v27 = *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager);
    *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager) = v26;

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100040BE0;
    *(v28 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v3];
    sub_100003090(&qword_10005D498, &qword_1000427F8);
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (qword_10005A3D0 != -1)
    {
      swift_once();
    }

    [v11 _registerSceneActionsHandlerArray:v29.super.isa forKey:qword_10005D648];
  }

  else
  {
    v23(v9, enum case for CAFUIAppPresentationMode.console(_:), v6);
    objc_allocWithZone(type metadata accessor for TripWindowManager());
    v30 = v12;
    v31 = sub_100011E3C(v11, v9);

    v29.super.isa = *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager);
    *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager) = v31;
  }

  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100040BE0;
  *(v32 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v3];
  sub_100003090(&qword_10005D498, &qword_1000427F8);
  v33.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_10005A3D0 != -1)
  {
    swift_once();
  }

  [v12 _registerSceneActionsHandlerArray:v33.super.isa forKey:qword_10005D648];
}

void sub_10003CD24(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      sub_100034D00(0xD000000000000020, 0x8000000100043960, 0xD00000000000001ALL, 0x8000000100043890, 62);
      v1 = [objc_opt_self() defaultCenter];
      if (qword_10005A3C8 != -1)
      {
        swift_once();
      }

      v2 = static NSNotificationName.ClusterEvent;
      sub_100003090(&qword_10005A950, &qword_100040048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003FA90;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for ClusterEventType;
      *(inited + 72) = 0;
      goto LABEL_22;
    }

    if (a1 == 2)
    {
      sub_100034D00(0xD00000000000001ELL, 0x8000000100043940, 0xD00000000000001ALL, 0x8000000100043890, 66);
      v1 = [objc_opt_self() defaultCenter];
      if (qword_10005A3C8 != -1)
      {
        swift_once();
      }

      v2 = static NSNotificationName.ClusterEvent;
      sub_100003090(&qword_10005A950, &qword_100040048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003FA90;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for ClusterEventType;
      *(inited + 72) = 1;
      goto LABEL_22;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        sub_100034D00(0xD000000000000022, 0x8000000100043910, 0xD00000000000001ALL, 0x8000000100043890, 70);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 2;
        goto LABEL_22;
      case 4:
        sub_100034D00(0xD000000000000024, 0x80000001000438E0, 0xD00000000000001ALL, 0x8000000100043890, 74);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 3;
        goto LABEL_22;
      case 5:
        sub_100034D00(0xD000000000000022, 0x80000001000438B0, 0xD00000000000001ALL, 0x8000000100043890, 78);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 4;
LABEL_22:
        sub_10000EDF0(inited);
        swift_setDeallocating();
        sub_100009C64(inited + 32);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v1 postNotificationName:v2 object:0 userInfo:isa];

        return;
    }
  }

  sub_100034D00(0xD000000000000021, 0x8000000100043860, 0xD00000000000001ALL, 0x8000000100043890, 82);
}

unint64_t sub_10003D3A0()
{
  result = qword_10005D488;
  if (!qword_10005D488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D488);
  }

  return result;
}

uint64_t sub_10003D428(int a1, int a2, int a3, int a4)
{
  if (qword_10005EF98 == -1)
  {
    if (qword_10005EFA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10003D8F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10005EFA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_10005EF90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10003D908();
    a3 = v10;
    a4 = v9;
    v8 = dword_10005EF80 < v11;
    if (dword_10005EF80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005EF84 > a3)
      {
        return 1;
      }

      if (dword_10005EF84 >= a3)
      {
        return dword_10005EF88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10005EF80 < a2;
  if (dword_10005EF80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10003D5BC(uint64_t result)
{
  v1 = qword_10005EFA0;
  if (qword_10005EFA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10005EFA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10005EF80, &dword_10005EF84, &dword_10005EF88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}