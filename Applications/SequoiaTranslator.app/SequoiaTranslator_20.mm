uint64_t sub_10022BF08(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  v9 = static Published.subscript.setter();
  return a7(v9);
}

uint64_t sub_10022BF90()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A2CC(0, &qword_1003B9628, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10022D3E4(&qword_1003B9630, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100005AD4(&qword_1003B9638, &qword_1002E9A50);
  sub_1000A5708(&qword_1003B9640, &qword_1003B9638, &qword_1002E9A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003B9560 = result;
  return result;
}

void sub_10022C1F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setValue:isa forKey:v2];
}

void sub_10022C2E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10022C3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10022C4DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

id sub_10022C5E0()
{
  v1 = v0;
  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v2 = static NSUserDefaults.translationGroupDefaults.getter();
  static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 BOOLForKey:v3];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v4 = static NSUserDefaults.translationGroupDefaults.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 BOOLForKey:v5];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = static NSUserDefaults.translationGroupDefaults.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 BOOLForKey:v7];

  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v8 = static NSUserDefaults.translationGroupDefaults.getter();
  v9 = String._bridgeToObjectiveC()();
  LOBYTE(v7) = [v8 BOOLForKey:v9];

  swift_beginAccess();
  v16 = v7;
  Published.init(initialValue:)();
  swift_endAccess();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SharedTranslationOptions(0);
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = objc_opt_self();
  v12 = v10;
  result = [v11 sharedConnection];
  if (result)
  {
    v14 = result;
    [result registerObserver:v12];

    sub_10022D018();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10022C8DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTranslationOptions(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SharedTranslationOptions(uint64_t a1)
{
  result = qword_1003B95B0;
  if (!qword_1003B95B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022CA5C(uint64_t a1)
{
  sub_1000C1BC0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10022CAF0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharedTranslationOptions(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10022CBCC()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    oslog = v0;
    v1 = [v0 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced];
    byte_1003D2A90 = v1 == 1;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2890);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v1 == 1;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updated value for censoring profanity: %{BOOL,public}d", v5, 8u);
    }
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "MCProfileConnection cannot be established, can't check profanity filtering value", v8, 2u);
    }
  }
}

uint64_t sub_10022CDDC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = LanguagesService.autoDetectSpeechUnsupportedPairs.getter();
  v7 = [a1 canonicalIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10022B6B4(v8, v10, v6);

  v12 = LanguagesService.localeModalities.getter();
  if (v12)
  {
    v13 = [a1 sourceLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v15 = [v12 locale:isa supportsModality:1];

    LODWORD(v12) = v15 ^ 1;
  }

  v16 = LanguagesService.localeModalities.getter();
  if (v16)
  {
    v17 = v16;
    v18 = [a1 targetLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v20 = [v17 locale:v19 supportsModality:1];
  }

  else
  {
    v20 = 1;
  }

  return v20 & ~(v11 | v12) & 1;
}

double sub_10022D018()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9300 != -1)
  {
    swift_once();
  }

  v9[1] = qword_1003B9560;
  aBlock[4] = sub_10022CBCC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A260;
  v7 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10022D3E4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v10);

  return result;
}

double sub_10022D2E4()
{
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2890);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notified of MCProfileConnection setting change, rechecking profanity filtering", v3, 2u);
  }

  return sub_10022D018();
}

double sub_10022D3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10022D3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10022D508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10022D5F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SidebarButton(uint64_t a1)
{
  result = qword_1003B96A8;
  if (!qword_1003B96A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022D708(uint64_t a1)
{
  sub_10022D7C4(319);
  if (v1 <= 0x3F)
  {
    sub_1000A9B3C(319, &unk_1003B96C0, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_1000A9B3C(319, &qword_1003AC878, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10022D7C4(uint64_t a1)
{
  if (!qword_1003B96B8)
  {
    type metadata accessor for NavigationSplitViewVisibility();
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B96B8);
    }
  }
}

uint64_t sub_10022D838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v3 = sub_100005AD4(&qword_1003B23F0, &unk_1002D7900);
  __chkstk_darwin(v3 - 8);
  v108 = &v85 - v4;
  v109 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for NSNotificationCenter.Publisher();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationSplitViewVisibility();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100005AD4(&qword_1003AB5F8, &unk_1002DEBE0);
  __chkstk_darwin(v98);
  v119 = &v85 - v9;
  v118 = sub_100005AD4(&qword_1003B96F8, &qword_1002E9B70);
  __chkstk_darwin(v118);
  v11 = &v85 - v10;
  v12 = type metadata accessor for SidebarButton(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005AD4(&qword_1003B9700, &qword_1002E9B78);
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v117 = &v85 - v18;
  v95 = sub_100005AD4(&qword_1003B9708, &qword_1002E9B80);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v112 = &v85 - v19;
  v96 = sub_100005AD4(&qword_1003B9710, &qword_1002E9B88);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v85 - v20;
  v97 = sub_100005AD4(&qword_1003B9718, &qword_1002E9B90);
  __chkstk_darwin(v97);
  v99 = &v85 - v21;
  sub_10022EC70(v2, v16);
  v22 = *(v14 + 80);
  v23 = (v22 + 16) & ~v22;
  v113 = v23 + v15;
  v114 = v22;
  v24 = swift_allocObject();
  v115 = v23;
  sub_10022ECD8(v16, v24 + v23);
  v25 = (v2 + *(v13 + 28));
  v26 = *v25;
  v27 = v25[1];
  *&v128[0] = v26;
  *(&v128[0] + 1) = v27;
  sub_100005AD4(&qword_1003B9720, &qword_1002E9B98);
  State.wrappedValue.getter();
  v28 = v120;
  LOBYTE(v13) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v128[0]) = 0;
  LOBYTE(v23) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v127 = 0;
  *&v120 = sub_10022ED3C;
  *(&v120 + 1) = v24;
  LOWORD(v121) = 257;
  *(&v121 + 1) = v28;
  LOBYTE(v122) = v13;
  *(&v122 + 1) = v30;
  *&v123 = v32;
  *(&v123 + 1) = v34;
  *&v124 = v36;
  BYTE8(v124) = 0;
  LOBYTE(v125) = v23;
  *(&v125 + 1) = v37;
  *&v126[0] = v38;
  *(&v126[0] + 1) = v39;
  *&v126[1] = v40;
  BYTE8(v126[1]) = 0;
  v41 = enum case for DynamicTypeSize.large(_:);
  v42 = type metadata accessor for DynamicTypeSize();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v45 = v43 + 104;
  v44(v11, v41, v42);
  v46 = sub_10022F380(&qword_1003AB628, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v47 = v42;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v110 = v16;
  v111 = v2;
  v48 = sub_100005AD4(&qword_1003B9728, &qword_1002E9BA0);
  v89 = v46;
  v49 = v48;
  v50 = sub_10022ED9C();
  v87 = v44;
  v88 = v45;
  v51 = v50;
  v52 = sub_10001BAEC(&qword_1003B9770, &qword_1003B96F8, &qword_1002E9B70, &protocol conformance descriptor for PartialRangeFrom<A>);
  v86 = v49;
  View.dynamicTypeSize<A>(_:)();
  sub_100009EBC(v11, &qword_1003B96F8, &qword_1002E9B70);
  v128[4] = v124;
  v128[5] = v125;
  v129[0] = v126[0];
  *(v129 + 9) = *(v126 + 9);
  v128[0] = v120;
  v128[1] = v121;
  v128[2] = v122;
  v128[3] = v123;
  sub_100009EBC(v128, &qword_1003B9728, &qword_1002E9BA0);
  v87(v119, enum case for DynamicTypeSize.xxLarge(_:), v42);
  v47 = v42;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v120 = v86;
  *(&v120 + 1) = v118;
  *&v121 = v51;
  *(&v121 + 1) = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8, &unk_1002DEBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v119;
  v56 = v91;
  v57 = v98;
  v58 = v117;
  View.dynamicTypeSize<A>(_:)();
  sub_100009EBC(v55, &qword_1003AB5F8, &unk_1002DEBE0);
  (*(v90 + 8))(v58, v56);
  v59 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  *&v120 = v56;
  *(&v120 + 1) = v57;
  *&v121 = OpaqueTypeConformance2;
  *(&v121 + 1) = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  v62 = v92;
  v63 = v95;
  v64 = v112;
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  (*(v93 + 8))(v64, v63);
  *&v120 = v63;
  *(&v120 + 1) = v59;
  *&v121 = v60;
  *(&v121 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v65 = v99;
  v66 = v96;
  View.accessibilityIdentifier(_:)();
  (*(v94 + 8))(v62, v66);
  sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
  v67 = v100;
  v68 = v111;
  Binding.wrappedValue.getter();
  v69 = v68;
  v70 = v110;
  sub_10022EC70(v69, v110);
  v71 = swift_allocObject();
  sub_10022ECD8(v70, v71 + v115);
  sub_10022F0A0();
  sub_10022F380(&qword_1003B9780, &type metadata accessor for NavigationSplitViewVisibility, &protocol conformance descriptor for NavigationSplitViewVisibility);
  v72 = v102;
  View.onChange<A>(of:initial:_:)();

  (*(v101 + 8))(v67, v72);
  sub_10022F318(v65);
  v47 = [objc_opt_self() defaultCenter];
  if (qword_1003A92D0 != -1)
  {
LABEL_7:
    swift_once();
  }

  v73 = v103;
  NSNotificationCenter.publisher(for:object:)();

  v74 = v105;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_100026AA0();
  v75 = static OS_dispatch_queue.main.getter();
  *&v120 = v75;
  v76 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v77 = v108;
  (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
  v78 = sub_100005AD4(&qword_1003B9788, &qword_1002E9BC8);
  sub_10022F380(&qword_1003AE428, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10022F380(&qword_1003B2410, sub_100026AA0, &protocol conformance descriptor for OS_dispatch_queue);
  v79 = v116;
  v80 = v106;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009EBC(v77, &qword_1003B23F0, &unk_1002D7900);

  (*(v107 + 8))(v74, v109);
  (*(v104 + 8))(v73, v80);
  v81 = v110;
  sub_10022EC70(v111, v110);
  v82 = swift_allocObject();
  result = sub_10022ECD8(v81, v82 + v115);
  v84 = (v79 + *(v78 + 56));
  *v84 = sub_10022F4F4;
  v84[1] = v82;
  return result;
}

uint64_t sub_10022E59C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SidebarButton(0);
  v10 = (a1 + *(v9 + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v19) = *v10;
  v20 = v12;
  sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
  State.wrappedValue.getter();
  if ((v18 & 1) == 0)
  {
    LOBYTE(v19) = v11;
    v20 = v12;
    LOBYTE(v18) = 1;
    State.wrappedValue.setter();
    v13 = (a1 + *(v9 + 20));
    v14 = *v13;
    v15 = v13[1];
    v19 = v14;
    v20 = v15;
    v18 = 0;
    sub_100005AD4(&qword_1003B9720, &qword_1002E9B98);
    State.wrappedValue.setter();
  }

  static NavigationSplitViewVisibility.all.getter();
  (*(v3 + 16))(v6, v8, v2);
  sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

void sub_10022E788(char a1, char a2)
{
  v4 = a1 & 1;
  type metadata accessor for SidebarButton(0);
  sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
  State.wrappedValue.getter();
  if (v6 == v4)
  {
    State.wrappedValue.setter();
    if (a1 & 1) != 0 && (a2)
    {
      static Animation.easeIn(duration:)();
      Animation.delay(_:)();

      __chkstk_darwin(v5);
      withAnimation<A>(_:_:)();
    }

    else
    {
      sub_100005AD4(&qword_1003B9720, &qword_1002E9B98);
      State.wrappedValue.setter();
    }
  }
}

uint64_t sub_10022E938()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

void sub_10022E9B0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NavigationSplitViewVisibility.detailOnly.getter();
  v6 = static NavigationSplitViewVisibility.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  sub_10022E788(v6 & 1, 1);
}

uint64_t sub_10022EA9C()
{
  v0 = type metadata accessor for NavigationSplitViewVisibility();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
  Binding.wrappedValue.getter();
  static NavigationSplitViewVisibility.detailOnly.getter();
  v7 = static NavigationSplitViewVisibility.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_10022E788(v7 & 1, 1);
  return (v8)(v6, v0);
}

uint64_t sub_10022EBDC(uint64_t a1, char a2)
{
  type metadata accessor for SidebarButton(0);
  sub_100005AD4(&qword_1003B9720, &qword_1002E9B98);
  return State.wrappedValue.setter();
}

uint64_t sub_10022EC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022ECD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022ED3C()
{
  v1 = *(type metadata accessor for SidebarButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10022E59C(v2);
}

unint64_t sub_10022ED9C()
{
  result = qword_1003B9730;
  if (!qword_1003B9730)
  {
    sub_100005EA8(&qword_1003B9728, &qword_1002E9BA0);
    sub_10022EE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9730);
  }

  return result;
}

unint64_t sub_10022EE28()
{
  result = qword_1003B9738;
  if (!qword_1003B9738)
  {
    sub_100005EA8(&qword_1003B9740, &qword_1002E9BA8);
    sub_10022EEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9738);
  }

  return result;
}

unint64_t sub_10022EEB4()
{
  result = qword_1003B9748;
  if (!qword_1003B9748)
  {
    sub_100005EA8(&qword_1003B9750, &qword_1002E9BB0);
    sub_10022EF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9748);
  }

  return result;
}

unint64_t sub_10022EF40()
{
  result = qword_1003B9758;
  if (!qword_1003B9758)
  {
    sub_100005EA8(&qword_1003B9760, &unk_1002E9BB8);
    sub_10022EFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9758);
  }

  return result;
}

unint64_t sub_10022EFCC()
{
  result = qword_1003B9768;
  if (!qword_1003B9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9768);
  }

  return result;
}

void sub_10022F020(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SidebarButton(0);

  sub_10022E9B0(a1, a2);
}

unint64_t sub_10022F0A0()
{
  result = qword_1003B9778;
  if (!qword_1003B9778)
  {
    sub_100005EA8(&qword_1003B9718, &qword_1002E9B90);
    sub_100005EA8(&qword_1003B9708, &qword_1002E9B80);
    sub_100005EA8(&qword_1003A93D8, &unk_1002D3FC0);
    sub_100005EA8(&qword_1003B9700, &qword_1002E9B78);
    sub_100005EA8(&qword_1003AB5F8, &unk_1002DEBE0);
    sub_100005EA8(&qword_1003B9728, &qword_1002E9BA0);
    sub_100005EA8(&qword_1003B96F8, &qword_1002E9B70);
    sub_10022ED9C();
    sub_10001BAEC(&qword_1003B9770, &qword_1003B96F8, &qword_1002E9B70, &protocol conformance descriptor for PartialRangeFrom<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8, &unk_1002DEBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10022F380(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9778);
  }

  return result;
}

uint64_t sub_10022F318(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9718, &qword_1002E9B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022F380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10022F3C8()
{
  v1 = *(type metadata accessor for SidebarButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(sub_100005AD4(&qword_1003B9648, &unk_1002E9B00) + 32);
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10022F4F4()
{
  type metadata accessor for SidebarButton(0);

  return sub_10022EA9C();
}

uint64_t sub_10022F5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  static UIButton.Configuration.plain()();
  v14 = v13;
  UIButton.Configuration.image.setter();
  sub_10000A2CC(0, &qword_1003B0608, UIButton_ptr);
  (*(v5 + 16))(v8, v10, v4);
  sub_10000A2CC(0, &qword_1003A9940, UIAction_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = a3;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = UIButton.init(configuration:primaryAction:)();

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t sub_10022F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022F96C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10022F8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022F96C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10022F944(uint64_t a1)
{
  sub_10022F96C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10022F96C()
{
  result = qword_1003B9798;
  if (!qword_1003B9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9798);
  }

  return result;
}

uint64_t sub_10022F9C0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10022F9F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10022FA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10022FA40(uint64_t a1, int a2)
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

uint64_t sub_10022FA88(uint64_t result, int a2, int a3)
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

BOOL sub_10022FB08()
{
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.wrappedValue.getter();
  if (v3 == 6)
  {
    return 0;
  }

  v0 = v3 == 1;
  sub_10000A948(v2, v3);
  return v0;
}

uint64_t sub_10022FB80@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_100005AD4(&qword_1003B97A0, &unk_1002E9DF8);
  __chkstk_darwin(v2 - 8);
  v22 = &v22 - v3;
  v4 = sub_100005AD4(&qword_1003B9648, &unk_1002E9B00);
  __chkstk_darwin(v4 - 8);
  v5 = sub_100005AD4(&qword_1003B97A8, &qword_1002E9E08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100005AD4(&qword_1003B97B0, &qword_1002E9E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for ConversationContext(0);
  sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v25 = v1;
  v24 = v1;
  sub_100005AD4(&qword_1003B97B8, &qword_1002E9E40);
  sub_10023283C();
  sub_100232890();
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  v12 = v1[1];
  v28 = *v1;
  v29 = v12;
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.wrappedValue.getter();
  if (v27 == 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v27 == 1;
    sub_10000A948(v26, v27);
  }

  sub_100230A28(v13, v11);
  (*(v6 + 8))(v8, v5);
  if (sub_10022FB08())
  {
    v14 = enum case for ColorScheme.dark(_:);
    v15 = type metadata accessor for ColorScheme();
    v16 = *(v15 - 8);
    v17 = v22;
    (*(v16 + 104))(v22, v14, v15);
    (*(v16 + 56))(v17, 0, 1, v15);
  }

  else
  {
    v18 = type metadata accessor for ColorScheme();
    v17 = v22;
    (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  }

  v19 = sub_100005AD4(&qword_1003B98D0, &qword_1002E9EB8);
  v20 = v23;
  sub_100233100(v17, v23 + *(v19 + 36));
  return sub_100023BD4(v11, v20, &qword_1003B97B0, &qword_1002E9E10);
}

__n128 sub_10022FFF0@<Q0>(__n128 *a2@<X8>)
{
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.projectedValue.getter();
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100230050@<X0>(uint64_t x8_0@<X8>)
{
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.wrappedValue.getter();
  sub_1002300D8(v4, v5, x8_0);
  return sub_10000A948(v4, v5);
}

uint64_t sub_1002300D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = sub_100005AD4(&qword_1003B9908, &qword_1002E9ED8);
  __chkstk_darwin(v73);
  v8 = &v61 - v7;
  v74 = sub_100005AD4(&qword_1003B97D8, &qword_1002E9E48);
  __chkstk_darwin(v74);
  v66 = &v61 - v9;
  v10 = sub_100005AD4(&qword_1003B9910, &qword_1002E9EE0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v69 = sub_100005AD4(&qword_1003B97F8, &qword_1002E9E58);
  __chkstk_darwin(v69);
  v14 = &v61 - v13;
  v67 = sub_100005AD4(&qword_1003B9818, &qword_1002E9E68);
  __chkstk_darwin(v67);
  v16 = &v61 - v15;
  v72 = sub_100005AD4(&qword_1003B97E8, &qword_1002E9E50);
  v17 = __chkstk_darwin(v72);
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = &v61 - v19;
  v70 = a1;
  v71 = v3;
  sub_100231014(a1, a2, v3, v16);
  if (a2 == 1)
  {
    sub_10001F620(v16, v12, &qword_1003B9818, &qword_1002E9E68);
    swift_storeEnumTagMultiPayload();
    sub_100232A60();
    sub_100232BD0();
    v20 = v68;
    _ConditionalContent<>.init(storage:)();
    v21 = v16;
  }

  else
  {
    v22 = static VerticalAlignment.center.getter();
    v64 = v8;
    v23 = v22;
    v24 = static Color.clear.getter();
    v63 = v10;
    v25 = v24;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v79[6] = v105;
    *&v79[22] = v106;
    *&v79[38] = v107;
    HorizontalEdge.rawValue.getter();
    v26 = Edge.init(rawValue:)();
    v65 = a3;
    v27 = v26;
    v28 = static SafeAreaRegions.container.getter();
    LOBYTE(v93[0]) = 1;
    *&v80[0] = v25;
    WORD4(v80[0]) = 256;
    *(v80 + 10) = *v79;
    *(&v80[1] + 10) = *&v79[16];
    *(&v80[2] + 10) = *&v79[32];
    *(&v80[3] + 1) = *&v79[46];
    v81 = v28;
    LOBYTE(v82) = 1;
    BYTE1(v82) = v27;
    *(&v82 + 1) = v23;
    sub_10001F620(v16, v14, &qword_1003B9818, &qword_1002E9E68);
    v29 = &v14[*(sub_100005AD4(&qword_1003B9808, &qword_1002E9E60) + 36)];
    v30 = v80[3];
    *(v29 + 2) = v80[2];
    *(v29 + 3) = v30;
    v31 = v82;
    *(v29 + 4) = v81;
    *(v29 + 5) = v31;
    v32 = v80[1];
    *v29 = v80[0];
    *(v29 + 1) = v32;
    v83 = v25;
    v84 = 256;
    *&v87[14] = *&v79[46];
    v88 = v28;
    *v87 = *&v79[32];
    v86 = *&v79[16];
    v85 = *v79;
    v89 = 0;
    v90 = 1;
    v91 = v27;
    v92 = v23;
    sub_10001F620(v80, &v96, &qword_1003B98B0, &qword_1002E9EA0);
    sub_100009EBC(&v83, &qword_1003B98B0, &qword_1002E9EA0);
    v33 = static VerticalAlignment.center.getter();
    v34 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v77[6] = v108;
    *&v77[22] = v109;
    *&v77[38] = v110;
    HorizontalEdge.rawValue.getter();
    v35 = Edge.init(rawValue:)();
    v36 = static SafeAreaRegions.container.getter();
    *&v93[0] = v34;
    WORD4(v93[0]) = 256;
    v37 = *&v77[16];
    *(&v93[1] + 10) = *&v77[16];
    *(&v93[2] + 10) = *&v77[32];
    v38 = *v77;
    *(v93 + 10) = *v77;
    *(&v93[3] + 1) = *&v77[46];
    v94 = v36;
    LOBYTE(v95) = 1;
    BYTE1(v95) = v35;
    *(&v95 + 1) = v33;
    v62 = v16;
    v39 = &v14[*(v69 + 36)];
    v40 = v93[1];
    *v39 = v93[0];
    *(v39 + 1) = v40;
    v41 = v93[3];
    *(v39 + 2) = v93[2];
    *(v39 + 3) = v41;
    v42 = v95;
    *(v39 + 4) = v94;
    *(v39 + 5) = v42;
    *&v99[14] = *&v77[46];
    *v99 = *&v77[32];
    v98 = v37;
    v78 = 1;
    v96 = v34;
    *v97 = 256;
    *&v97[2] = v38;
    v100 = v36;
    v101 = 0;
    v102 = 1;
    v103 = v35;
    v104 = v33;
    v8 = v64;
    sub_10001F620(v93, &v76, &qword_1003B98B0, &qword_1002E9EA0);
    sub_100009EBC(&v96, &qword_1003B98B0, &qword_1002E9EA0);
    sub_10001F620(v14, v12, &qword_1003B97F8, &qword_1002E9E58);
    swift_storeEnumTagMultiPayload();
    sub_100232A60();
    sub_100232BD0();
    v20 = v68;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v14, &qword_1003B97F8, &qword_1002E9E58);
    v21 = v62;
  }

  sub_100009EBC(v21, &qword_1003B9818, &qword_1002E9E68);
  v43 = v75;
  sub_100023BD4(v20, v75, &qword_1003B97E8, &qword_1002E9E50);
  v44 = v70;
  if (a2 == 6)
  {
    v45 = 0;
  }

  else
  {
    v45 = v70;
  }

  if (a2 == 6)
  {
    v46 = 5;
  }

  else
  {
    v46 = a2;
  }

  v47 = v71[10];
  sub_100233170(v70, a2);
  v48 = sub_10022BD18(v45, v46, v47);
  sub_10000A948(v44, a2);
  if (v48)
  {
    type metadata accessor for ConversationContext(0);
    sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    v49 = v66;
    v50 = &v66[*(v74 + 36)];
    v43 = v75;
    EnvironmentObject.Wrapper.subscript.getter();

    v51 = type metadata accessor for SidebarButton(0);
    v52 = &v50[*(v51 + 20)];
    *&v93[0] = 0;
    State.init(wrappedValue:)();
    v53 = *v97;
    *v52 = v96;
    v52[1] = v53;
    v54 = &v50[*(v51 + 24)];
    LOBYTE(v93[0]) = 1;
    State.init(wrappedValue:)();
    v55 = *v97;
    *v54 = v96;
    *(v54 + 1) = v55;
    v56 = static Alignment.topLeading.getter();
    v58 = v57;
    v59 = &v50[*(sub_100005AD4(&qword_1003B98C0, &qword_1002E9EA8) + 36)];
    *v59 = v56;
    v59[1] = v58;
    sub_10001F620(v43, v49, &qword_1003B97E8, &qword_1002E9E50);
    sub_10001F620(v49, v8, &qword_1003B97D8, &qword_1002E9E48);
    swift_storeEnumTagMultiPayload();
    sub_10023291C();
    sub_1002329D4();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v49, &qword_1003B97D8, &qword_1002E9E48);
  }

  else
  {
    sub_10001F620(v43, v8, &qword_1003B97E8, &qword_1002E9E50);
    swift_storeEnumTagMultiPayload();
    sub_10023291C();
    sub_1002329D4();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_100009EBC(v43, &qword_1003B97E8, &qword_1002E9E50);
}

uint64_t sub_100230A28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = type metadata accessor for AutomaticNavigationSplitViewStyle();
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005AD4(&qword_1003B98D8, &qword_1002E9EC0);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v29 - v5;
  v32 = sub_100005AD4(&qword_1003B98E0, &qword_1002E9EC8);
  __chkstk_darwin(v32);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ProminentDetailNavigationSplitViewStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005AD4(&qword_1003B98E8, &qword_1002E9ED0);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  if (a1)
  {
    static NavigationSplitViewStyle<>.prominentDetail.getter();
    v16 = sub_100005AD4(&qword_1003B97A8, &qword_1002E9E08);
    v17 = sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8, &qword_1002E9E08, &protocol conformance descriptor for NavigationSplitView<A, B, C>);
    v18 = sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle, &protocol conformance descriptor for ProminentDetailNavigationSplitViewStyle);
    View.navigationSplitViewStyle<A>(_:)();
    (*(v10 + 8))(v12, v9);
    v19 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    v20 = sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle, &protocol conformance descriptor for AutomaticNavigationSplitViewStyle);
    v37 = v16;
    v38 = v34;
    v39 = v17;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    static NavigationSplitViewStyle<>.automatic.getter();
    v22 = sub_100005AD4(&qword_1003B97A8, &qword_1002E9E08);
    v23 = sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8, &qword_1002E9E08, &protocol conformance descriptor for NavigationSplitView<A, B, C>);
    v24 = sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle, &protocol conformance descriptor for AutomaticNavigationSplitViewStyle);
    v25 = v34;
    View.navigationSplitViewStyle<A>(_:)();
    (*(v30 + 8))(v4, v25);
    v26 = v31;
    v27 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v28 = sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle, &protocol conformance descriptor for ProminentDetailNavigationSplitViewStyle);
    v37 = v22;
    v38 = v9;
    v39 = v23;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v22;
    v38 = v25;
    v39 = v23;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v6, v27);
  }
}

uint64_t sub_100231014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v108 = a1;
  v136 = a4;
  v128 = sub_100005AD4(&qword_1003B9918, &qword_1002E9EE8);
  __chkstk_darwin(v128);
  v6 = &v105 - v5;
  v135 = sub_100005AD4(&qword_1003B9898, &qword_1002E9E98);
  __chkstk_darwin(v135);
  v130 = &v105 - v7;
  v129 = type metadata accessor for FavoritesDetailView(0);
  __chkstk_darwin(v129);
  v9 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for FavoritesView(0);
  __chkstk_darwin(v121);
  v11 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_100005AD4(&qword_1003B9920, &qword_1002E9EF0);
  __chkstk_darwin(v118);
  v119 = &v105 - v12;
  v127 = sub_100005AD4(&qword_1003B9878, &qword_1002E9E90);
  __chkstk_darwin(v127);
  v122 = &v105 - v13;
  v111 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ConversationView(0);
  __chkstk_darwin(v117);
  v16 = (&v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_100005AD4(&qword_1003B9928, &qword_1002E9EF8);
  v113 = *(v120 - 8);
  __chkstk_darwin(v120);
  v112 = &v105 - v17;
  v115 = sub_100005AD4(&qword_1003B9858, &qword_1002E9E88);
  __chkstk_darwin(v115);
  v19 = &v105 - v18;
  v116 = sub_100005AD4(&qword_1003B9930, &qword_1002E9F00);
  v107 = *(v116 - 8);
  __chkstk_darwin(v116);
  v106 = &v105 - v20;
  v132 = sub_100005AD4(&qword_1003B9938, &qword_1002E9F08);
  __chkstk_darwin(v132);
  v134 = &v105 - v21;
  v123 = sub_100005AD4(&qword_1003B9940, &qword_1002E9F10);
  __chkstk_darwin(v123);
  v125 = &v105 - v22;
  v23 = sub_100005AD4(&qword_1003B9948, &qword_1002E9F18);
  __chkstk_darwin(v23);
  v25 = &v105 - v24;
  v124 = sub_100005AD4(&qword_1003B9848, &qword_1002E9E80);
  __chkstk_darwin(v124);
  v114 = &v105 - v26;
  v133 = sub_100005AD4(&qword_1003B9838, &qword_1002E9E78);
  __chkstk_darwin(v133);
  v126 = &v105 - v27;
  v28 = type metadata accessor for TranslateContentView(0);
  v29 = __chkstk_darwin(v28);
  v32 = (&v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2)
  {
    if ((a2 - 5) < 2 || a2 == 3)
    {
      goto LABEL_14;
    }

    if (a2 != 4)
    {
LABEL_15:
      v99 = *(v131[8] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
      v101 = v131[6];
      v100 = v131[7];
      v102 = *(v131[9] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
      *(v9 + *(v129 + 36)) = swift_getKeyPath();
      sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
      swift_storeEnumTagMultiPayload();
      v103 = v108;
      *v9 = v108;
      v9[1] = a2;
      v9[2] = v101;
      v9[3] = v100;
      v9[4] = v99;
      v9[5] = v102;
      sub_1002331D8(v9, v6, type metadata accessor for FavoritesDetailView);
      swift_storeEnumTagMultiPayload();
      sub_100233170(v103, a2);
      sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView, &unk_1002DD7F0);

      v104 = v130;
      _ConditionalContent<>.init(storage:)();
      sub_10001F620(v104, v134, &qword_1003B9898, &qword_1002E9E98);
      swift_storeEnumTagMultiPayload();
      sub_100232CE0();
      sub_100233044();
      _ConditionalContent<>.init(storage:)();
      sub_100009EBC(v104, &qword_1003B9898, &qword_1002E9E98);
      v66 = type metadata accessor for FavoritesDetailView;
      v67 = v9;
      return sub_100233240(v67, v66);
    }

    v59 = *(v131[8] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
    v60 = *(v131[9] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
    v62 = v131[6];
    v61 = v131[7];
    *(v11 + *(v121 + 32)) = swift_getKeyPath();
    sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
    swift_storeEnumTagMultiPayload();
    *v11 = v62;
    v11[1] = v59;
    v11[2] = v60;
    v11[3] = v61;
    sub_1002331D8(v11, v119, type metadata accessor for FavoritesView);
    swift_storeEnumTagMultiPayload();
    v63 = sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView, &unk_1002DA650);

    *&v137 = v117;
    *(&v137 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView, &unk_1002DDCC8);
    v64 = v122;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v64, v125, &qword_1003B9878, &qword_1002E9E90);
    swift_storeEnumTagMultiPayload();
    sub_100232D6C();
    sub_100232F28();
    v65 = v126;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v64, &qword_1003B9878, &qword_1002E9E90);
    sub_10001F620(v65, v134, &qword_1003B9838, &qword_1002E9E78);
    swift_storeEnumTagMultiPayload();
    sub_100232CE0();
    sub_100233044();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v65, &qword_1003B9838, &qword_1002E9E78);
    v66 = type metadata accessor for FavoritesView;
    v67 = v11;
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v33 = v131[9];
          v34 = *&v33[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper];
          KeyPath = swift_getKeyPath();
          v36 = v117;
          *(v16 + *(v117 + 24)) = KeyPath;
          sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
          swift_storeEnumTagMultiPayload();
          *(v16 + v36[7]) = swift_getKeyPath();
          sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for SharedTranslationOptions(0);
          sub_100233190(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
          v37 = v33;

          *v16 = EnvironmentObject.init()();
          v16[1] = v38;
          type metadata accessor for SceneContext(0);
          sub_100233190(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
          v16[2] = EnvironmentObject.init()();
          v16[3] = v39;
          v40 = (v16 + v36[8]);
          type metadata accessor for ConversationViewModel(0);
          sub_100233190(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
          *v40 = ObservedObject.init(wrappedValue:)();
          v40[1] = v41;
          *(v16 + v36[9]) = v34;
          v42 = (v16 + v36[10]);
          type metadata accessor for LanguagesService();
          sub_100233190(&unk_1003ABC30, &type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
          *v42 = ObservedObject.init(wrappedValue:)();
          v42[1] = v43;
          v44 = (v16 + v36[11]);
          type metadata accessor for TranslationSession_RD(0);
          sub_100233190(&qword_1003AEF10, type metadata accessor for TranslationSession_RD, "ݷ\b");
          *v44 = ObservedObject.init(wrappedValue:)();
          v44[1] = v45;
          v46 = v16 + v36[12];
          LOBYTE(v140) = 0;
          State.init(wrappedValue:)();
          v47 = *(&v137 + 1);
          *v46 = v137;
          *(v46 + 1) = v47;
          v48 = v36[13];
          v140 = 0;
          State.init(wrappedValue:)();
          *(v16 + v48) = v137;
          v49 = v110;
          v50 = v109;
          v51 = v111;
          (*(v110 + 104))(v109, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v111);
          v52 = sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView, &unk_1002DA650);
          v53 = v112;
          View.navigationBarTitleDisplayMode(_:)();
          (*(v49 + 8))(v50, v51);
          sub_100233240(v16, type metadata accessor for ConversationView);
          v54 = v113;
          v55 = v120;
          (*(v113 + 16))(v119, v53, v120);
          swift_storeEnumTagMultiPayload();
          *&v137 = v36;
          *(&v137 + 1) = v52;
          swift_getOpaqueTypeConformance2();
          sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView, &unk_1002DDCC8);
          v56 = v122;
          _ConditionalContent<>.init(storage:)();
          sub_10001F620(v56, v125, &qword_1003B9878, &qword_1002E9E90);
          swift_storeEnumTagMultiPayload();
          sub_100232D6C();
          sub_100232F28();
          v57 = v126;
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v56, &qword_1003B9878, &qword_1002E9E90);
          sub_10001F620(v57, v134, &qword_1003B9838, &qword_1002E9E78);
          swift_storeEnumTagMultiPayload();
          sub_100232CE0();
          sub_100233044();
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v57, &qword_1003B9838, &qword_1002E9E78);
          return (*(v54 + 8))(v53, v55);
        }

        goto LABEL_15;
      }

      if (sub_100003688(v29, v30))
      {
        v138 = &type metadata for TranslateFeatures;
        v139 = sub_100009DF8();
        LOBYTE(v137) = 0;
        v80 = isFeatureEnabled(_:)();
        sub_100008664(&v137);
        if (v80)
        {
          sub_10011C1DC(v19);
          v81 = static SafeAreaRegions.all.getter();
          v82 = static Edge.Set.horizontal.getter();
          v83 = v115;
          v84 = &v19[*(v115 + 36)];
          *v84 = v81;
          v84[8] = v82;
          v85 = sub_100232E6C();
          v86 = v106;
          View.navigationBarHidden(_:)();
          sub_100009EBC(v19, &qword_1003B9858, &qword_1002E9E88);
          v87 = v107;
          v88 = v86;
          v89 = v116;
          (*(v107 + 16))(v25, v86, v116);
          swift_storeEnumTagMultiPayload();
          sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView, &unk_1002ED230);
          *&v137 = v83;
          *(&v137 + 1) = v85;
          swift_getOpaqueTypeConformance2();
          v90 = v114;
          _ConditionalContent<>.init(storage:)();
          sub_10001F620(v90, v125, &qword_1003B9848, &qword_1002E9E80);
          swift_storeEnumTagMultiPayload();
          sub_100232D6C();
          sub_100232F28();
          v91 = v126;
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v90, &qword_1003B9848, &qword_1002E9E80);
          sub_10001F620(v91, v134, &qword_1003B9838, &qword_1002E9E78);
          swift_storeEnumTagMultiPayload();
          sub_100232CE0();
          sub_100233044();
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v91, &qword_1003B9838, &qword_1002E9E78);
          return (*(v87 + 8))(v88, v89);
        }
      }

LABEL_14:
      LocalizedStringKey.init(stringLiteral:)();
      v92 = Text.init(_:tableName:bundle:comment:)();
      v94 = v93;
      *v6 = v92;
      *(v6 + 1) = v93;
      v96 = v95 & 1;
      v6[16] = v95 & 1;
      *(v6 + 3) = v97;
      swift_storeEnumTagMultiPayload();
      sub_100005B1C(v92, v94, v96);
      sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView, &unk_1002DD7F0);

      v98 = v130;
      _ConditionalContent<>.init(storage:)();
      sub_10001F620(v98, v134, &qword_1003B9898, &qword_1002E9E98);
      swift_storeEnumTagMultiPayload();
      sub_100232CE0();
      sub_100233044();
      _ConditionalContent<>.init(storage:)();
      sub_10002EA54(v92, v94, v96);

      return sub_100009EBC(v98, &qword_1003B9898, &qword_1002E9E98);
    }

    v69 = v131[6];
    v68 = v131[7];
    v70 = v131[9];
    type metadata accessor for ConversationContext(0);
    sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);

    v131 = v70;
    v71 = EnvironmentObject.init()();
    v73 = v72;
    *(v32 + v28[6]) = swift_getKeyPath();
    sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
    swift_storeEnumTagMultiPayload();
    *v32 = v71;
    v32[1] = v73;
    type metadata accessor for ComposeTranslationViewModel(0);
    sub_100233190(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
    v32[2] = ObservedObject.init(wrappedValue:)();
    v32[3] = v74;
    v75 = (v32 + v28[7]);
    type metadata accessor for SceneContext(0);
    sub_100233190(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    *v75 = EnvironmentObject.init()();
    v75[1] = v76;
    *(v32 + v28[8]) = v69;
    *(v32 + v28[9]) = v68;
    *(v32 + v28[10]) = v131;
    sub_1002331D8(v32, v25, type metadata accessor for TranslateContentView);
    swift_storeEnumTagMultiPayload();
    sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView, &unk_1002ED230);
    v77 = sub_100232E6C();
    *&v137 = v115;
    *(&v137 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    v78 = v114;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v78, v125, &qword_1003B9848, &qword_1002E9E80);
    swift_storeEnumTagMultiPayload();
    sub_100232D6C();
    sub_100232F28();
    v79 = v126;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v78, &qword_1003B9848, &qword_1002E9E80);
    sub_10001F620(v79, v134, &qword_1003B9838, &qword_1002E9E78);
    swift_storeEnumTagMultiPayload();
    sub_100232CE0();
    sub_100233044();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v79, &qword_1003B9838, &qword_1002E9E78);
    v66 = type metadata accessor for TranslateContentView;
    v67 = v32;
  }

  return sub_100233240(v67, v66);
}

unint64_t sub_10023283C()
{
  result = qword_1003B97C0;
  if (!qword_1003B97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97C0);
  }

  return result;
}

unint64_t sub_100232890()
{
  result = qword_1003B97C8;
  if (!qword_1003B97C8)
  {
    sub_100005EA8(&qword_1003B97B8, &qword_1002E9E40);
    sub_10023291C();
    sub_1002329D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97C8);
  }

  return result;
}

unint64_t sub_10023291C()
{
  result = qword_1003B97D0;
  if (!qword_1003B97D0)
  {
    sub_100005EA8(&qword_1003B97D8, &qword_1002E9E48);
    sub_1002329D4();
    sub_10001BAEC(&qword_1003B98B8, &qword_1003B98C0, &qword_1002E9EA8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97D0);
  }

  return result;
}

unint64_t sub_1002329D4()
{
  result = qword_1003B97E0;
  if (!qword_1003B97E0)
  {
    sub_100005EA8(&qword_1003B97E8, &qword_1002E9E50);
    sub_100232A60();
    sub_100232BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97E0);
  }

  return result;
}

unint64_t sub_100232A60()
{
  result = qword_1003B97F0;
  if (!qword_1003B97F0)
  {
    sub_100005EA8(&qword_1003B97F8, &qword_1002E9E58);
    sub_100232B18();
    sub_10001BAEC(&qword_1003B98A8, &qword_1003B98B0, &qword_1002E9EA0, &protocol conformance descriptor for _InsetViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97F0);
  }

  return result;
}

unint64_t sub_100232B18()
{
  result = qword_1003B9800;
  if (!qword_1003B9800)
  {
    sub_100005EA8(&qword_1003B9808, &qword_1002E9E60);
    sub_100232BD0();
    sub_10001BAEC(&qword_1003B98A8, &qword_1003B98B0, &qword_1002E9EA0, &protocol conformance descriptor for _InsetViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9800);
  }

  return result;
}

unint64_t sub_100232BD0()
{
  result = qword_1003B9810;
  if (!qword_1003B9810)
  {
    sub_100005EA8(&qword_1003B9818, &qword_1002E9E68);
    sub_100232C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9810);
  }

  return result;
}

unint64_t sub_100232C54()
{
  result = qword_1003B9820;
  if (!qword_1003B9820)
  {
    sub_100005EA8(&qword_1003B9828, &qword_1002E9E70);
    sub_100232CE0();
    sub_100233044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9820);
  }

  return result;
}

unint64_t sub_100232CE0()
{
  result = qword_1003B9830;
  if (!qword_1003B9830)
  {
    sub_100005EA8(&qword_1003B9838, &qword_1002E9E78);
    sub_100232D6C();
    sub_100232F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9830);
  }

  return result;
}

unint64_t sub_100232D6C()
{
  result = qword_1003B9840;
  if (!qword_1003B9840)
  {
    sub_100005EA8(&qword_1003B9848, &qword_1002E9E80);
    sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView, &unk_1002ED230);
    sub_100005EA8(&qword_1003B9858, &qword_1002E9E88);
    sub_100232E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9840);
  }

  return result;
}

unint64_t sub_100232E6C()
{
  result = qword_1003B9860;
  if (!qword_1003B9860)
  {
    sub_100005EA8(&qword_1003B9858, &qword_1002E9E88);
    sub_100233190(&qword_1003B9868, type metadata accessor for ImageTranslationView, &unk_1002DE430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9860);
  }

  return result;
}

unint64_t sub_100232F28()
{
  result = qword_1003B9870;
  if (!qword_1003B9870)
  {
    sub_100005EA8(&qword_1003B9878, &qword_1002E9E90);
    type metadata accessor for ConversationView(255);
    sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView, &unk_1002DA650);
    swift_getOpaqueTypeConformance2();
    sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView, &unk_1002DDCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9870);
  }

  return result;
}

unint64_t sub_100233044()
{
  result = qword_1003B9890;
  if (!qword_1003B9890)
  {
    sub_100005EA8(&qword_1003B9898, &qword_1002E9E98);
    sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView, &unk_1002DD7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9890);
  }

  return result;
}

uint64_t sub_100233100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B97A0, &unk_1002E9DF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100233170(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_100005B2C(a1, a2);
  }

  return a1;
}

uint64_t sub_100233190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002331D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100233240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002332A4()
{
  result = qword_1003B9950;
  if (!qword_1003B9950)
  {
    sub_100005EA8(&qword_1003B98D0, &qword_1002E9EB8);
    sub_10023335C();
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9950);
  }

  return result;
}

unint64_t sub_10023335C()
{
  result = qword_1003B9958;
  if (!qword_1003B9958)
  {
    sub_100005EA8(&qword_1003B97B0, &qword_1002E9E10);
    sub_100005EA8(&qword_1003B97A8, &qword_1002E9E08);
    type metadata accessor for ProminentDetailNavigationSplitViewStyle();
    sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8, &qword_1002E9E08, &protocol conformance descriptor for NavigationSplitView<A, B, C>);
    sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle, &protocol conformance descriptor for ProminentDetailNavigationSplitViewStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AutomaticNavigationSplitViewStyle();
    sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle, &protocol conformance descriptor for AutomaticNavigationSplitViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9958);
  }

  return result;
}

uint64_t sub_100233500(uint64_t a1, int a2)
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

uint64_t sub_100233548(uint64_t result, int a2, int a3)
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

uint64_t sub_1002335B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for SidebarListStyle();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003B9960, &qword_1002EA078);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = sub_100005AD4(&qword_1003B9968, &unk_1002EA080);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  v31 = a1;
  v32 = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.projectedValue.getter();
  v31 = v28;
  v32 = v29;
  v33 = v30;
  sub_100005AD4(&qword_1003B9970, &qword_1002EA090);
  sub_10000C564();
  sub_10001BAEC(&qword_1003B9978, &qword_1003B9970, &qword_1002EA090, &protocol conformance descriptor for TupleView<A>);
  List.init(selection:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_10001BAEC(&qword_1003B9980, &qword_1003B9960, &qword_1002EA078, &protocol conformance descriptor for List<A, B>);
  View.navigationTitle(_:)();

  (*(v14 + 8))(v16, v13);
  static Color.accentColor.getter();
  v20 = *(v17 + 36);
  static ListItemTint.fixed(_:)();

  v21 = type metadata accessor for ListItemTint();
  (*(*(v21 - 8) + 56))(&v19[v20], 0, 1, v21);
  SidebarListStyle.init()();
  sub_10023456C();
  v22 = v25;
  View.listStyle<A>(_:)();
  (*(v26 + 8))(v12, v22);
  return sub_100234694(v19);
}

uint64_t sub_100233970@<X0>(char *a1@<X8>)
{
  v49 = a1;
  v46 = type metadata accessor for FavoritesSideBarListView(0);
  v1 = __chkstk_darwin(v46);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v43 - v3;
  v5 = sub_100005AD4(&qword_1003B99A0, &qword_1002EA0A0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = sub_100005AD4(&qword_1003B99A8, &qword_1002EA0A8);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v53 = sub_100005AD4(&qword_1003B99B0, &qword_1002EA0B0);
  v50 = *(v53 - 8);
  v16 = __chkstk_darwin(v53);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v55 = 0uLL;
  sub_100005AD4(&qword_1003B99B8, &qword_1002EA0B8);
  sub_1002346FC();
  sub_10000C564();
  v51 = v19;
  v20 = NavigationLink<>.init<A>(value:label:)();
  if (sub_100003688(v20, v21) && (v56 = &type metadata for TranslateFeatures, v57 = sub_100009DF8(), LOBYTE(v55) = 0, v22 = isFeatureEnabled(_:)(), sub_100008664(&v55), (v22 & 1) != 0))
  {
    v55 = xmmword_1002D32F0;
    sub_100005AD4(&qword_1003ADA48, &unk_1002D8238);
    sub_10007ADB8();
    NavigationLink<>.init<A>(value:label:)();
    (*(v6 + 32))(v15, v10, v5);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v6 + 56);
  v45 = v15;
  v25 = v5;
  v24(v15, v23, 1, v5);
  v55 = xmmword_1002D3300;
  sub_100005AD4(&qword_1003ADA48, &unk_1002D8238);
  sub_10007ADB8();
  NavigationLink<>.init<A>(value:label:)();
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  type metadata accessor for PersistedTranslation();
  static PersistedTranslation.favoritedSortedByLocalePairAndCreationDateFetchRequest()();
  FetchRequest.init(fetchRequest:animation:)();
  v26 = *(v50 + 16);
  v27 = v52;
  v26(v52, v51, v53);
  v28 = v15;
  v29 = v47;
  sub_1002347BC(v28, v47);
  v43 = v4;
  v44 = v10;
  v30 = v10;
  v31 = *(v6 + 16);
  v32 = v48;
  v31(v48, v30, v25);
  sub_10023482C(v4, v54);
  v33 = v32;
  v34 = v49;
  v35 = v27;
  v36 = v53;
  v26(v49, v35, v53);
  v37 = sub_100005AD4(&qword_1003B99D8, &qword_1002EA0F8);
  v38 = v29;
  sub_1002347BC(v29, &v34[v37[12]]);
  v31(&v34[v37[16]], v33, v25);
  v39 = v54;
  sub_10023482C(v54, &v34[v37[20]]);
  sub_100234890(v43);
  v40 = *(v6 + 8);
  v40(v44, v25);
  sub_1002348EC(v45);
  v41 = *(v50 + 8);
  v41(v51, v36);
  sub_100234890(v39);
  v40(v33, v25);
  sub_1002348EC(v38);
  return (v41)(v52, v36);
}

uint64_t sub_100233F3C()
{
  v0 = sub_100005AD4(&qword_1003B99D0, &qword_1002EA0C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_100005AD4(&qword_1003B99E0, &unk_1002EA100);
  sub_100234954();
  Label.init(title:icon:)();
  sub_10001BAEC(&qword_1003B99C8, &qword_1003B99D0, &qword_1002EA0C0, &protocol conformance descriptor for Label<A, B>);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002340D8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100234150@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_100234290()
{
  v0 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002343F0()
{
  v0 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_10023456C()
{
  result = qword_1003B9988;
  if (!qword_1003B9988)
  {
    sub_100005EA8(&qword_1003B9968, &unk_1002EA080);
    sub_100005EA8(&qword_1003B9960, &qword_1002EA078);
    sub_10001BAEC(&qword_1003B9980, &qword_1003B9960, &qword_1002EA078, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B9990, &qword_1003B9998, &qword_1002EA098, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9988);
  }

  return result;
}

uint64_t sub_100234694(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9968, &unk_1002EA080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002346FC()
{
  result = qword_1003B99C0;
  if (!qword_1003B99C0)
  {
    sub_100005EA8(&qword_1003B99B8, &qword_1002EA0B8);
    sub_10001BAEC(&qword_1003B99C8, &qword_1003B99D0, &qword_1002EA0C0, &protocol conformance descriptor for Label<A, B>);
    sub_10001BBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B99C0);
  }

  return result;
}

uint64_t sub_1002347BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B99A8, &qword_1002EA0A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023482C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesSideBarListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100234890(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesSideBarListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002348EC(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B99A8, &qword_1002EA0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100234954()
{
  result = qword_1003B99E8;
  if (!qword_1003B99E8)
  {
    sub_100005EA8(&qword_1003B99E0, &unk_1002EA100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B99E8);
  }

  return result;
}

uint64_t sub_1002349D8()
{
  sub_100005EA8(&qword_1003B9968, &unk_1002EA080);
  type metadata accessor for SidebarListStyle();
  sub_10023456C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100234A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100234B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SingleOrPairSpeakButton(uint64_t a1)
{
  result = qword_1003B9A48;
  if (!qword_1003B9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100234C18(uint64_t a1)
{
  sub_100234E14(319);
  if (v1 <= 0x3F)
  {
    sub_10008217C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DeviceHelper(319);
      if (v3 <= 0x3F)
      {
        sub_10003E0E8(319);
        if (v4 <= 0x3F)
        {
          sub_100234EA8(319, &unk_1003AA478, &type metadata for AudioDevice, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_100234EA8(319, &unk_1003B9A60, &type metadata for Double, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_10002ACA4();
              if (v7 <= 0x3F)
              {
                sub_1001312D0(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Locale();
                  if (v9 <= 0x3F)
                  {
                    sub_100234EA8(319, &qword_1003AA470, &type metadata for AudioDevice, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_100234E14(uint64_t a1)
{
  if (!qword_1003B9A58)
  {
    type metadata accessor for SharedTranslationOptions(255);
    sub_100235DCC(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B9A58);
    }
  }
}

void sub_100234EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL sub_100234F14()
{
  v1 = *(v0 + 24);
  v2 = sub_1000B7FE0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v8[0]) != 1)
  {

    return 1;
  }

  v3 = sub_10022CDDC(v2);

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v8[3] = &type metadata for TranslateFeatures;
  v8[4] = sub_100009DF8();
  LOBYTE(v8[0]) = 8;
  v4 = isFeatureEnabled(_:)();
  sub_100008664(v8);
  if ((v4 & 1) != 0 && (v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v8[0] = v5, sub_100235DCC(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = v5 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v6 + 8)))
  {
    return (*(v6 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002350C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B9AF0, &qword_1002EA188);
  __chkstk_darwin(v4);
  v6 = &v81[-v5];
  v93 = type metadata accessor for LocalePairSpeakButtons(0);
  __chkstk_darwin(v93);
  v95 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_100005AD4(&qword_1003B9AF8, &qword_1002EA190);
  v8 = __chkstk_darwin(v94);
  v92 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v81[-v10];
  v12 = sub_100234F14();
  v13 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v12)
  {
    static Published.subscript.getter();

    v90 = v4;
    v91 = a2;
    v89 = v11;
    if (v97)
    {
      v14 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v14 = v97;
    }

    v88 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v87 = v97;
    v16 = *(a1 + 32);
    swift_getKeyPath();
    v17 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
    *&v97 = v16;
    v83 = sub_100235DCC(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    v84 = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v86 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
    swift_getKeyPath();
    *&v97 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v85 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v82 = v97;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v93;
    v19 = &v95[*(v93 + 32)];
    v20 = type metadata accessor for SpeakButtonConfiguration(0);
    static Published.subscript.getter();

    v21 = sub_1000B8D64();
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v13;
    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    *v19 = v82;
    v26 = &v19[v20[6]];
    *v26 = v21;
    v26[1] = v23;
    v27 = &v19[v20[7]];
    *v27 = sub_100091524;
    v27[1] = v24;
    v28 = &v19[v20[8]];
    *v28 = sub_100235E24;
    v28[1] = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v13;
    static Published.subscript.getter();

    LOBYTE(v19) = v97;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = &v95[*(v18 + 36)];
    static Published.subscript.getter();

    v31 = sub_1000B8B8C();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *v30 = v19;
    v36 = &v30[v20[6]];
    *v36 = v31;
    v36[1] = v33;
    v37 = &v30[v20[7]];
    *v37 = sub_100091548;
    v37[1] = v34;
    v38 = &v30[v20[8]];
    *v38 = sub_100235E4C;
    v38[1] = v35;
    swift_getKeyPath();
    *&v97 = v16;
    v39 = v29;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = (v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v99 = v40[2];
    v43 = v40[3];
    v44 = v40[4];
    v45 = v40[5];
    *(v102 + 9) = *(v40 + 89);
    v101 = v44;
    v102[0] = v45;
    v100 = v43;
    v97 = v41;
    v98 = v42;
    v46 = v87;
    v47 = v95;
    *v95 = v88;
    *(v47 + 1) = v46;
    *(v47 + 2) = v86;
    *(v47 + 8) = v85;
    v48 = v93;
    v49 = (v47 + *(v93 + 40));
    *v49 = sub_10009156C;
    v49[1] = v16;
    v50 = v48;
    v51 = (v47 + *(v48 + 44));
    v52 = v102[0];
    v51[4] = v101;
    v51[5] = v52;
    *(v51 + 89) = *(v102 + 9);
    v53 = v98;
    *v51 = v97;
    v51[1] = v53;
    v54 = v100;
    v51[2] = v99;
    v51[3] = v54;
    v55 = (v47 + *(v48 + 48));
    v96[14] = 0x4072C00000000000;
    sub_10001F620(&v97, v96, &qword_1003A93C8, &unk_1002D9A40);
    State.init(wrappedValue:)();
    v56 = v96[1];
    *v55 = v96[0];
    v55[1] = v56;
    *(v47 + *(v50 + 52)) = 0x4072000000000000;
    v57 = (v47 + *(v50 + 56));
    v58 = [objc_opt_self() mainBundle];
    v103._object = 0xE000000000000000;
    v59._object = 0x80000001002FB860;
    v59._countAndFlagsBits = 0xD000000000000017;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v103);

    *v57 = v61;
    LOBYTE(v58) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v92;
    sub_100235E74(v47, v92);
    v71 = &v70[*(v94 + 36)];
    *v71 = v58;
    *(v71 + 1) = v63;
    *(v71 + 2) = v65;
    *(v71 + 3) = v67;
    *(v71 + 4) = v69;
    v71[40] = 0;
    v72 = v70;
    v73 = v89;
    sub_100235ED8(v72, v89);
    sub_10001F620(v73, v6, &qword_1003B9AF8, &qword_1002EA190);
    swift_storeEnumTagMultiPayload();
    sub_100235D08();
    sub_1000917C0();
    _ConditionalContent<>.init(storage:)();
    return sub_100235F48(v73);
  }

  else
  {
    static Published.subscript.getter();

    if (v97)
    {
      v15 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v15 = v97;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v75 = v97;
    v76 = swift_allocObject();
    *(v76 + 16) = v13;
    v77 = swift_allocObject();
    *(v77 + 16) = v13;
    v78 = v13;
    v79 = sub_1000B8D64();
    *v6 = v15;
    v6[1] = v75;
    v6[2] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = _swiftEmptyArrayStorage;
    v6[32] = 0;
    *(v6 + 5) = sub_100235D00;
    *(v6 + 6) = v76;
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    *(v6 + 9) = sub_100091B0C;
    *(v6 + 10) = v77;
    *(v6 + 11) = v79;
    *(v6 + 12) = v80;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 193) = 0u;
    swift_storeEnumTagMultiPayload();
    sub_100235D08();
    sub_1000917C0();
    return _ConditionalContent<>.init(storage:)();
  }
}

void *sub_100235AC4(char a1, uint64_t a2, unsigned int a3)
{
  if (sub_1000BCD74())
  {
    return sub_1000C0C34(0, a3);
  }

  if (a1)
  {
    return sub_1000BCF40(a3, 0);
  }

  return sub_1000BE260(0, 0, 1);
}

void *sub_100235B30(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B8C90, &qword_1002D4850);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  UUID.init()();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_100091B8C(v4, a1 + v6);
  swift_endAccess();
  return sub_1000C0C34(0, 2u);
}

double sub_100235C30@<D0>(uint64_t a1@<X8>)
{
  sub_1002350C4(v1, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(sub_100005AD4(&qword_1003B9AE8, &qword_1002EA180) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_100235CC8()
{

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_100235D08()
{
  result = qword_1003B9B00;
  if (!qword_1003B9B00)
  {
    sub_100005EA8(&qword_1003B9AF8, &qword_1002EA190);
    sub_100235DCC(&qword_1003B9B08, type metadata accessor for LocalePairSpeakButtons, "1|\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B00);
  }

  return result;
}

uint64_t sub_100235DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100235E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePairSpeakButtons(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100235ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B9AF8, &qword_1002EA190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100235F48(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9AF8, &qword_1002EA190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100235FBC()
{
  result = qword_1003B9B10;
  if (!qword_1003B9B10)
  {
    sub_100005EA8(&qword_1003B9AE8, &qword_1002EA180);
    sub_100236048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B10);
  }

  return result;
}

unint64_t sub_100236048()
{
  result = qword_1003B9B18;
  if (!qword_1003B9B18)
  {
    sub_100005EA8(&qword_1003B9B20, &qword_1002EA3C0);
    sub_1002360CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B18);
  }

  return result;
}

unint64_t sub_1002360CC()
{
  result = qword_1003B9B28;
  if (!qword_1003B9B28)
  {
    sub_100005EA8(&qword_1003B9B30, &qword_1002EA3C8);
    sub_100235D08();
    sub_1000917C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B28);
  }

  return result;
}

uint64_t sub_10023616C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100236184(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10023619C(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1002361E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_100236228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002362CC@<Q0>(uint64_t a1@<X8>)
{
  v25 = v1[1];
  v26 = *v1;
  v24 = v1[2];
  v3 = *(v1 + 1);
  v23 = *(v1 + 2);
  v4 = *(v1 + 3);
  v22 = v1[32];
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v20 = *(v1 + 10);
  v21 = *(v1 + 5);
  v9 = *(v1 + 12);
  v27 = *(v1 + 11);
  v10 = *(v1 + 120);
  v11 = *(v1 + 136);
  v28 = *(v1 + 104);
  v29 = v10;
  v12 = *(v1 + 152);
  v13 = *(v1 + 168);
  *(v33 + 9) = *(v1 + 193);
  v14 = *(v1 + 184);
  v32 = v13;
  v33[0] = v14;
  v30 = v11;
  v31 = v12;

  sub_10001AD18(v6, v7);
  sub_1000DA0C8(&v28, v34);
  sub_10001AD18(v8, v20);

  sub_100005AD4(&qword_1003A93C8, &unk_1002D9A40);
  State.init(wrappedValue:)();
  *a1 = v26;
  *(a1 + 1) = v25;
  *(a1 + 2) = v24;
  *(a1 + 8) = v3;
  *(a1 + 16) = v23;
  *(a1 + 24) = v4;
  *(a1 + 32) = v22;
  *(a1 + 40) = v21;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  v15 = v30;
  *(a1 + 120) = v31;
  v16 = v33[0];
  *(a1 + 136) = v32;
  *(a1 + 152) = v16;
  *(a1 + 161) = *(v33 + 9);
  v17 = v29;
  *(a1 + 72) = v28;
  *(a1 + 88) = v17;
  *(a1 + 104) = v15;
  *(a1 + 184) = v8;
  *(a1 + 192) = v20;
  *(a1 + 200) = v27;
  *(a1 + 208) = v9;
  result = v34[4];
  v19 = v34[6];
  *(a1 + 296) = v34[5];
  *(a1 + 312) = v19;
  *(a1 + 328) = v35;
  *(a1 + 216) = v34[0];
  *(a1 + 232) = v34[1];
  *(a1 + 248) = v34[2];
  *(a1 + 264) = v34[3];
  *(a1 + 280) = result;
  return result;
}

unint64_t sub_1002364B0()
{
  result = qword_1003B9B38;
  if (!qword_1003B9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B38);
  }

  return result;
}

uint64_t sub_100236520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002365F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SpeakButtonConfiguration(uint64_t a1)
{
  result = qword_1003B9B98;
  if (!qword_1003B9B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236704(uint64_t a1)
{
  type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    sub_10002ACA4();
    if (v2 <= 0x3F)
    {
      sub_1001312D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002367C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_100236808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002368CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_100005AD4(&qword_1003B9BE0, &qword_1002EA6C8);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v29 = sub_100005AD4(&qword_1003B9BE8, &qword_1002EA6D0);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v28 - v6;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0x4018000000000000;
  v5[16] = 0;
  v8 = sub_100005AD4(&qword_1003B9BF0, &qword_1002EA6D8);
  sub_100236D78(v1, &v5[*(v8 + 44)]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v2, 0x150uLL);
  v10 = &v5[*(v3 + 36)];
  *v10 = sub_10023927C;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v11 = *(v2 + 296);
  v12 = *(v2 + 312);
  v13 = *(v2 + 264);
  v48 = *(v2 + 280);
  v49[0] = v11;
  v49[1] = v12;
  v50 = *(v2 + 328);
  v14 = *(v2 + 232);
  v44 = *(v2 + 216);
  v45 = v14;
  v46 = *(v2 + 248);
  v47 = v13;
  sub_100239284(v2, &v38);
  sub_100005AD4(&qword_1003AA520, &unk_1002EA6E0);
  State.wrappedValue.getter();
  v55 = v56[6];
  v56[0] = v57[0];
  *(v56 + 9) = *(v57 + 9);
  v51 = v56[2];
  v52 = v56[3];
  v53 = v56[4];
  v54 = v56[5];
  v15 = swift_allocObject();
  memcpy((v15 + 16), v2, 0x150uLL);
  sub_100239284(v2, &v38);
  v16 = sub_100005AD4(&qword_1003A93C8, &unk_1002D9A40);
  v17 = sub_1002392C4();
  v18 = sub_10001F344(&qword_1003AA508, sub_1000133B0, &protocol conformance descriptor for <A> A?);
  View.onChange<A>(of:initial:_:)();

  v48 = v55;
  v49[0] = v56[0];
  *(v49 + 9) = *(v56 + 9);
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v47 = v54;
  sub_100009EBC(&v44, &qword_1003A93C8, &unk_1002D9A40);
  sub_100009EBC(v5, &qword_1003B9BE0, &qword_1002EA6C8);
  v19 = *(v2 + 120);
  v20 = *(v2 + 152);
  v55 = *(v2 + 136);
  v56[0] = v20;
  *(v56 + 9) = *(v2 + 161);
  v21 = *(v2 + 88);
  v51 = *(v2 + 72);
  v52 = v21;
  v53 = *(v2 + 104);
  v54 = v19;
  v22 = *(v2 + 120);
  v23 = *(v2 + 152);
  v36 = *(v2 + 136);
  v37[0] = v23;
  *(v37 + 9) = *(v2 + 161);
  v24 = *(v2 + 88);
  v32 = *(v2 + 72);
  v33 = v24;
  v34 = *(v2 + 104);
  v35 = v22;
  v25 = swift_allocObject();
  memcpy((v25 + 16), v2, 0x150uLL);
  sub_100239284(v2, &v38);
  sub_10001F620(&v51, &v38, &qword_1003A93C8, &unk_1002D9A40);
  *&v38 = v3;
  *(&v38 + 1) = v16;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  View.onChange<A>(of:initial:_:)();

  v42 = v36;
  v43[0] = v37[0];
  *(v43 + 9) = *(v37 + 9);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  sub_100009EBC(&v38, &qword_1003A93C8, &unk_1002D9A40);
  return (*(v31 + 8))(v7, v26);
}

uint64_t sub_100236D78@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B9C10, &qword_1002EA6F8);
  v124 = *(v5 - 8);
  v125 = v5;
  __chkstk_darwin(v5);
  v105 = &v101 - v6;
  v7 = sub_100005AD4(&qword_1003B9C18, &unk_1002EA700);
  v8 = __chkstk_darwin(v7 - 8);
  v127 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v101 - v10;
  v11 = type metadata accessor for AccessibilityTraits();
  v120 = *(v11 - 8);
  v121 = v11;
  __chkstk_darwin(v11);
  v119 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003AE3D8, &unk_1002DCA70);
  __chkstk_darwin(v13 - 8);
  v108 = &v101 - v14;
  v131 = type metadata accessor for SpeakButtonStyle(0);
  __chkstk_darwin(v131);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ButtonMenuStyle();
  v123 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005AD4(&qword_1003B9C20, &qword_1002EA710);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  v23 = sub_100005AD4(&qword_1003B9C28, &qword_1002EA718);
  v24 = *(v23 - 8);
  v109 = v23;
  v110 = v24;
  __chkstk_darwin(v23);
  v107 = &v101 - v25;
  v26 = sub_100005AD4(&qword_1003B9C30, &qword_1002EA720);
  v112 = *(v26 - 8);
  v113 = v26;
  __chkstk_darwin(v26);
  v130 = &v101 - v27;
  v116 = sub_100005AD4(&qword_1003B9C38, &qword_1002EA728);
  v28 = __chkstk_darwin(v116);
  v111 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v114 = &v101 - v31;
  __chkstk_darwin(v30);
  v118 = &v101 - v32;
  v117 = sub_100005AD4(&qword_1003B9C40, &qword_1002EA730);
  v33 = __chkstk_darwin(v117);
  v122 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v115 = &v101 - v36;
  __chkstk_darwin(v35);
  v132 = &v101 - v37;
  v134 = a1;
  v133 = a1;
  v38 = swift_allocObject();
  memcpy((v38 + 16), a1, 0x150uLL);
  sub_100239284(a1, &v136);
  sub_100005AD4(&qword_1003B9C48, &qword_1002EA738);
  sub_1002394BC();
  Menu.init(content:label:primaryAction:)();
  ButtonMenuStyle.init()();
  v39 = sub_10001BAEC(&qword_1003B9C70, &qword_1003B9C20, &qword_1002EA710, &protocol conformance descriptor for Menu<A, B>);
  v40 = sub_1002396B0(&qword_1003B9C78, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
  v41 = v19;
  v106 = v19;
  v42 = v129;
  View.menuStyle<A>(_:)();
  v123[1](v18, v42);
  (*(v20 + 8))(v22, v41);
  v123 = a1;
  v139 = *a1;
  sub_10000A2CC(0, &qword_1003B1FC8, NSTimer_ptr);
  v43 = [objc_opt_self() mainRunLoop];
  v44 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v45 = v108;
  (*(*(v44 - 8) + 56))(v108, 1, 1, v44);
  v46 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100009EBC(v45, &qword_1003AE3D8, &unk_1002DCA70);
  *&v136 = v46;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1002396B0(&qword_1003B9C80, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v47 = ConnectablePublisher.autoconnect()();

  *&v16[*(v131 + 28)] = swift_getKeyPath();
  sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  swift_storeEnumTagMultiPayload();
  *v16 = v139;
  v135 = 0;
  State.init(wrappedValue:)();
  *(v16 + 8) = v136;
  v135 = v47;
  sub_100005AD4(&qword_1003B9C88, &qword_1002EA788);
  State.init(wrappedValue:)();
  v48 = *(&v136 + 1);
  *(v16 + 3) = v136;
  *(v16 + 4) = v48;
  *&v136 = v106;
  *(&v136 + 1) = v129;
  v137 = v39;
  v138 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_1002396B0(&qword_1003B9C90, type metadata accessor for SpeakButtonStyle, &unk_1002EA8B0);
  v51 = v109;
  v52 = v107;
  View.buttonStyle<A>(_:)();
  v53 = v51;
  sub_100239614(v16);
  (*(v110 + 8))(v52, v51);
  if (v139 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v55;
    v58 = v57;
    v129 = 0x74747542706F7473;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v59;
    v58 = v60;
    v129 = 0x75426E657473696CLL;
  }

  *&v136 = v53;
  *(&v136 + 1) = v131;
  v137 = OpaqueTypeConformance2;
  v138 = v50;
  swift_getOpaqueTypeConformance2();
  v61 = v111;
  v62 = v113;
  v63 = v130;
  View.accessibility(label:)();
  sub_10002EA54(v54, v56, v58 & 1);

  (*(v112 + 8))(v63, v62);
  v64 = v114;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_100009EBC(v61, &qword_1003B9C38, &qword_1002EA728);
  sub_100005AD4(&qword_1003AA880, &unk_1002D71D0);
  v65 = v120;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002D3160;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v136 = v66;
  sub_1002396B0(&qword_1003AA888, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100005AD4(&qword_1003AA890, &qword_1002D4630);
  sub_10001BAEC(&qword_1003AA898, &qword_1003AA890, &qword_1002D4630, &protocol conformance descriptor for [A]);
  v67 = v119;
  v68 = v121;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v69 = v118;
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v65 + 8))(v67, v68);
  sub_100009EBC(v64, &qword_1003B9C38, &qword_1002EA728);
  v70 = v123;
  LOBYTE(v68) = *(v123 + 1);
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = v68;
  v73 = v115;
  sub_100023BD4(v69, v115, &qword_1003B9C38, &qword_1002EA728);
  v74 = (v73 + *(v117 + 36));
  *v74 = KeyPath;
  v74[1] = sub_10005CDFC;
  v74[2] = v72;
  sub_100023BD4(v73, v132, &qword_1003B9C40, &qword_1002EA730);
  v75 = v70[3];
  if (v75)
  {
    *&v136 = v70[2];
    *(&v136 + 1) = v75;
    sub_10001F278();

    v76 = Text.init<A>(_:)();
    v78 = v77;
    *&v136 = v76;
    *(&v136 + 1) = v77;
    v80 = v79 & 1;
    LOBYTE(v137) = v79 & 1;
    v138 = v81;
    v83 = v102;
    v82 = v103;
    v84 = v104;
    (*(v103 + 104))(v102, enum case for DynamicTypeSize.small(_:), v104);
    v85 = v105;
    View.dynamicTypeSize(_:)();
    (*(v82 + 8))(v83, v84);
    sub_10002EA54(v76, v78, v80);

    v86 = static Font.caption.getter();
    v87 = swift_getKeyPath();
    v88 = (v85 + *(sub_100005AD4(&qword_1003B9CA0, &qword_1002EA7F8) + 36));
    *v88 = v87;
    v88[1] = v86;
    v89 = static Color.translateAccentColor.getter();
    v90 = swift_getKeyPath();
    v91 = v125;
    v92 = v126;
    v93 = (v85 + *(v125 + 36));
    *v93 = v90;
    v93[1] = v89;
    sub_100023BD4(v85, v92, &qword_1003B9C10, &qword_1002EA6F8);
    v94 = 0;
  }

  else
  {
    v91 = v125;
    v92 = v126;
    v94 = 1;
  }

  (*(v124 + 56))(v92, v94, 1, v91);
  v95 = v132;
  v96 = v122;
  sub_10001F620(v132, v122, &qword_1003B9C40, &qword_1002EA730);
  v97 = v127;
  sub_10001F620(v92, v127, &qword_1003B9C18, &unk_1002EA700);
  v98 = v128;
  sub_10001F620(v96, v128, &qword_1003B9C40, &qword_1002EA730);
  v99 = sub_100005AD4(&qword_1003B9C98, &qword_1002EA7C0);
  sub_10001F620(v97, v98 + *(v99 + 48), &qword_1003B9C18, &unk_1002EA700);
  sub_100009EBC(v92, &qword_1003B9C18, &unk_1002EA700);
  sub_100009EBC(v95, &qword_1003B9C40, &qword_1002EA730);
  sub_100009EBC(v97, &qword_1003B9C18, &unk_1002EA700);
  return sub_100009EBC(v96, &qword_1003B9C40, &qword_1002EA730);
}

uint64_t sub_100237DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InlinePickerStyle();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MenuOrder();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B9C60, &qword_1002EA748);
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v46 = sub_100005AD4(&qword_1003B9C58, &qword_1002EA740);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v35 - v11;
  v13 = sub_100005AD4(&qword_1003B9CA8, &qword_1002EA838);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = &v35 - v15;
  v16 = *(a1 + 296);
  v17 = *(a1 + 264);
  v69 = *(a1 + 280);
  v70 = v16;
  v18 = *(a1 + 296);
  v71 = *(a1 + 312);
  v19 = *(a1 + 232);
  v65 = *(a1 + 216);
  v66 = v19;
  v20 = *(a1 + 264);
  v67 = *(a1 + 248);
  v68 = v20;
  v72 = *(a1 + 328);
  v62 = v69;
  v63 = v18;
  v64[0] = *(a1 + 312);
  *&v64[1] = *(a1 + 328);
  v21 = *(a1 + 232);
  v58 = *(a1 + 216);
  v59 = v21;
  v60 = *(a1 + 248);
  v61 = v17;
  sub_100005AD4(&qword_1003AA520, &unk_1002EA6E0);
  State.wrappedValue.getter();
  if (!v74)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  sub_100009EBC(v73, &qword_1003A93C8, &unk_1002D9A40);
  if ((*(a1 + 2) & 1) == 0)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  v22 = LocalizedStringKey.init(stringLiteral:)();
  v38 = v23;
  v39 = v22;
  v36 = v24;
  v37 = v25;
  v55 = v69;
  v56 = v70;
  v57[0] = v71;
  *&v57[1] = v72;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v26 = State.projectedValue.getter();
  v35 = &v35;
  v55 = v62;
  v56 = v63;
  v57[0] = v64[0];
  *(v57 + 9) = *(v64 + 9);
  v51 = v58;
  v52 = v59;
  v53 = v60;
  v54 = v61;
  __chkstk_darwin(v26);
  sub_100005AD4(&qword_1003A93C8, &unk_1002D9A40);
  sub_100005AD4(&qword_1003B9CB0, qword_1002EA840);
  sub_10001F344(&qword_1003AA610, sub_10001F3BC, &protocol conformance descriptor for <A> A?);
  v40 = a2;
  sub_100239700();
  Picker<>.init(_:selection:content:)();
  static MenuOrder.fixed.getter();
  v27 = sub_10001BAEC(&qword_1003B9C68, &qword_1003B9C60, &qword_1002EA748, &protocol conformance descriptor for Picker<A, B, C>);
  v28 = v43;
  View.menuOrder(_:)();
  (*(v45 + 8))(v7, v47);
  (*(v42 + 8))(v10, v28);
  v29 = v48;
  InlinePickerStyle.init()();
  *&v51 = v28;
  *(&v51 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  v31 = v46;
  v32 = v50;
  View.pickerStyle<A>(_:)();
  (*(v49 + 8))(v29, v32);
  (*(v44 + 8))(v12, v31);
  v33 = v40;
  (*(v14 + 32))(v40, v30, v13);
  return (*(v14 + 56))(v33, 0, 1, v13);
}

uint64_t sub_1002383F0(uint64_t a1)
{
  swift_getKeyPath();

  sub_100005AD4(&qword_1003AA650, &qword_1002EA870);
  sub_100005AD4(&qword_1003B9CC0, &qword_1002EA878);
  sub_10001BAEC(&qword_1003AA648, &qword_1003AA650, &qword_1002EA870, &protocol conformance descriptor for [A]);
  sub_10001F3BC();
  sub_100005EA8(&qword_1003A93D8, &unk_1002D3FC0);
  sub_100005EA8(&qword_1003A93C8, &unk_1002D9A40);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  sub_10001F344(&qword_1003AA610, sub_10001F3BC, &protocol conformance descriptor for <A> A?);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002385C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  v8 = a1[5];
  v27 = a1[4];
  v28[0] = v8;
  *(v28 + 9) = *(a1 + 89);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v35[0] = v24;
  sub_10001F278();

  Label<>.init<A>(_:systemImage:)();
  v21 = v27;
  v22[0] = v28[0];
  *(v22 + 9) = *(v28 + 9);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v29 = v23;
  v30 = v24;
  *(v34 + 9) = *(v28 + 9);
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34[0] = v28[0];
  BYTE9(v34[1]) = 1;
  (*(v5 + 32))(a2, v7, v4);
  v11 = (a2 + *(sub_100005AD4(&qword_1003A93F8, &unk_1002EA880) + 36));
  v12 = v34[0];
  v11[4] = v33;
  v11[5] = v12;
  *(v11 + 90) = *(v34 + 10);
  v13 = v30;
  *v11 = v29;
  v11[1] = v13;
  v14 = v32;
  v11[2] = v31;
  v11[3] = v14;
  v35[0] = v17;
  v35[1] = v18;
  *&v36[9] = *(v22 + 9);
  v35[4] = v21;
  *v36 = v22[0];
  v35[2] = v19;
  v35[3] = v20;
  v37 = 1;
  sub_10001F5C4(&v23, v16);
  sub_10001F620(&v29, v16, &qword_1003A93D0, &unk_1002D1390);
  return sub_100009EBC(v35, &qword_1003A93D0, &unk_1002D1390);
}

uint64_t sub_1002387F4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 1) == 0 && (a1[1] & 1) == 0)
  {
  }

  result = Image.init(systemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_100238858(uint64_t a1)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v20 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v19 - v13;
  (*(a1 + 40))(v12);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v11, v7);
  aBlock[4] = sub_100023934;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A7F0;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002396B0(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0, &protocol conformance descriptor for [A]);
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v3, v17);
  (*(v22 + 8))(v6, v23);
  return (v19)(v14, v20);
}

uint64_t sub_100238C18(uint64_t result)
{
  v1 = *(result + 72);
  v2 = *(result + 120);
  v3 = *(result + 152);
  v26[4] = *(result + 136);
  v27[0] = v3;
  *(v27 + 9) = *(result + 161);
  v4 = *(result + 88);
  v26[0] = v1;
  v26[1] = v4;
  v26[2] = *(result + 104);
  v26[3] = v2;
  if (*(&v1 + 1))
  {
    v5 = *(result + 232);
    v21[0] = *(result + 216);
    v21[1] = v5;
    v6 = *(result + 248);
    v7 = *(result + 296);
    v8 = *(result + 264);
    v22 = *(result + 280);
    v23 = v7;
    v9 = *(result + 296);
    v24 = *(result + 312);
    v10 = *(result + 264);
    v21[2] = v6;
    v21[3] = v10;
    v25 = *(result + 328);
    v15 = v22;
    v16 = v9;
    v17 = *(result + 312);
    v18 = *(result + 328);
    v11 = *(result + 216);
    v12 = *(result + 232);
    v13 = *(result + 248);
    v14 = v8;
    sub_10001F620(v26, v19, &qword_1003A93C8, &unk_1002D9A40);
    sub_10001F620(v21, v19, &qword_1003AA520, &unk_1002EA6E0);
    sub_100005AD4(&qword_1003AA520, &unk_1002EA6E0);
    State.wrappedValue.setter();
    v19[4] = v15;
    v19[5] = v16;
    v19[6] = v17;
    v20 = v18;
    v19[0] = v11;
    v19[1] = v12;
    v19[2] = v13;
    v19[3] = v14;
    return sub_100009EBC(v19, &qword_1003AA520, &unk_1002EA6E0);
  }

  return result;
}

void *sub_100238D98(uint64_t a1)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 312);
  v4 = *(a1 + 264);
  v17 = *(a1 + 280);
  *v18 = v2;
  *&v18[16] = v3;
  v19 = *(a1 + 328);
  v5 = *(a1 + 232);
  v13 = *(a1 + 216);
  v14 = v5;
  v15 = *(a1 + 248);
  v16 = v4;
  sub_100005AD4(&qword_1003AA520, &unk_1002EA6E0);
  result = State.wrappedValue.getter();
  v7 = v21;
  if (v21)
  {
    v8 = v20;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v9)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v12 = sub_1002393BC;
    }

    else
    {
      v12 = nullsub_1;
    }

    *&v13 = v8;
    *(&v13 + 1) = v7;
    v16 = v24;
    v17 = v25;
    *v18 = v26[0];
    *&v18[9] = *(v26 + 9);
    v14 = v22;
    v15 = v23;
    sub_10001AD18(v9, v10);
    v12(&v13);

    return sub_100009EBC(&v20, &qword_1003A93C8, &unk_1002D9A40);
  }

  return result;
}

uint64_t sub_100238EEC(uint64_t a1)
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 72);
  v8 = *(a1 + 120);
  v9 = *(a1 + 152);
  v44[4] = *(a1 + 136);
  v45[0] = v9;
  *(v45 + 9) = *(a1 + 161);
  v10 = *(a1 + 88);
  v44[0] = v7;
  v44[1] = v10;
  v44[2] = *(a1 + 104);
  v44[3] = v8;
  if (*(&v7 + 1))
  {
    v11 = *(a1 + 232);
    v39[0] = *(a1 + 216);
    v39[1] = v11;
    v12 = *(a1 + 248);
    v13 = *(a1 + 296);
    v14 = *(a1 + 264);
    v40 = *(a1 + 280);
    v41 = v13;
    v15 = *(a1 + 296);
    v42 = *(a1 + 312);
    v16 = *(a1 + 264);
    v39[2] = v12;
    v39[3] = v16;
    v43 = *(a1 + 328);
    v33 = v40;
    v34 = v15;
    v35 = *(a1 + 312);
    v36 = *(a1 + 328);
    v17 = *(a1 + 232);
    v29 = *(a1 + 216);
    v30 = v17;
    v31 = *(a1 + 248);
    v32 = v14;
    v18 = *(a1 + 120);
    v19 = *(a1 + 152);
    v27[4] = *(a1 + 136);
    v28[0] = v19;
    *(v28 + 9) = *(a1 + 161);
    v20 = *(a1 + 88);
    v27[0] = *(a1 + 72);
    v27[1] = v20;
    v27[2] = *(a1 + 104);
    v27[3] = v18;
    sub_10001F620(v44, v37, &qword_1003A93C8, &unk_1002D9A40);
    sub_10001F620(v44, v37, &qword_1003A93C8, &unk_1002D9A40);
    sub_10001F620(v39, v37, &qword_1003AA520, &unk_1002EA6E0);
    sub_100005AD4(&qword_1003AA520, &unk_1002EA6E0);
    State.wrappedValue.setter();
    v37[4] = v33;
    v37[5] = v34;
    v37[6] = v35;
    v38 = v36;
    v37[0] = v29;
    v37[1] = v30;
    v37[2] = v31;
    v37[3] = v32;
    sub_100009EBC(v37, &qword_1003AA520, &unk_1002EA6E0);
    v21 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x495645445F57454ELL;
    v22._object = 0xEA00000000004543;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v46);

    v24 = String.init(format:_:)();
    v26 = v25;

    *&v29 = v24;
    *(&v29 + 1) = v26;
    (*(v3 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v2);
    sub_100091B30();
    Tip.invalidate(reason:)();
    sub_100009EBC(v44, &qword_1003A93C8, &unk_1002D9A40);
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

unint64_t sub_1002392C4()
{
  result = qword_1003B9BF8;
  if (!qword_1003B9BF8)
  {
    sub_100005EA8(&qword_1003B9BE0, &qword_1002EA6C8);
    sub_10001BAEC(&qword_1003B9C00, &qword_1003B9C08, &qword_1002EA6F0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9BF8);
  }

  return result;
}

uint64_t sub_100239384()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002393D4()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 240))
  {
  }

  return _swift_deallocObject(v0, 352);
}

unint64_t sub_1002394BC()
{
  result = qword_1003B9C50;
  if (!qword_1003B9C50)
  {
    sub_100005EA8(&qword_1003B9C48, &qword_1002EA738);
    sub_100005EA8(&qword_1003B9C58, &qword_1002EA740);
    type metadata accessor for InlinePickerStyle();
    sub_100005EA8(&qword_1003B9C60, &qword_1002EA748);
    sub_10001BAEC(&qword_1003B9C68, &qword_1003B9C60, &qword_1002EA748, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9C50);
  }

  return result;
}

uint64_t sub_100239614(uint64_t a1)
{
  v2 = type metadata accessor for SpeakButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100239698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002396B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100239700()
{
  result = qword_1003B9CB8;
  if (!qword_1003B9CB8)
  {
    sub_100005EA8(&qword_1003B9CB0, qword_1002EA840);
    sub_100005EA8(&qword_1003A93D8, &unk_1002D3FC0);
    sub_100005EA8(&qword_1003A93C8, &unk_1002D9A40);
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
    sub_10001F344(&qword_1003AA610, sub_10001F3BC, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9CB8);
  }

  return result;
}

uint64_t sub_100239850()
{
  sub_100005EA8(&qword_1003B9BE8, &qword_1002EA6D0);
  sub_100005EA8(&qword_1003A93C8, &unk_1002D9A40);
  sub_100005EA8(&qword_1003B9BE0, &qword_1002EA6C8);
  sub_1002392C4();
  sub_10001F344(&qword_1003AA508, sub_1000133B0, &protocol conformance descriptor for <A> A?);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100239970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100239A40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SpeakButtonStyle(uint64_t a1)
{
  result = qword_1003B9D20;
  if (!qword_1003B9D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100239B3C(uint64_t a1)
{
  sub_100239BE8();
  if (v1 <= 0x3F)
  {
    sub_100239C38(319);
    if (v2 <= 0x3F)
    {
      sub_100198638(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100239BE8()
{
  if (!qword_1003AEF18)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AEF18);
    }
  }
}

void sub_100239C38(uint64_t a1)
{
  if (!qword_1003B9D30)
  {
    sub_100005EA8(&qword_1003B9C88, &qword_1002EA788);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B9D30);
    }
  }
}

uint64_t sub_100239CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SpeakButtonStyle(0);
  sub_10001F620(v1 + *(v10 + 28), v9, &qword_1003B52A0, &unk_1002E4630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_100239EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SpeakButtonStyle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v9;
  v10 = sub_100005AD4(&qword_1003B9D68, &qword_1002EA8E8);
  sub_10023A0B4(v3, a1, a2 + *(v10 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (a2 + *(sub_100005AD4(&qword_1003B9D70, &qword_1002EA8F0) + 36));
  v12 = v21;
  *v11 = v20;
  v11[1] = v12;
  v11[2] = v22;
  *(a2 + *(sub_100005AD4(&qword_1003B9D78, &qword_1002EA8F8) + 36)) = 0;
  v13 = *(v3 + 32);
  v19[2] = *(v3 + 24);
  v19[3] = v13;
  sub_100005AD4(&qword_1003B9D80, &unk_1002EA900);
  State.wrappedValue.getter();
  v14 = v19[1];
  sub_10023B0FC(v3, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10023B28C(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  result = sub_100005AD4(&qword_1003B9D88, &unk_1002EA910);
  *(a2 + *(result + 52)) = v14;
  v18 = (a2 + *(result + 56));
  *v18 = sub_10023B2F0;
  v18[1] = v16;
  return result;
}

uint64_t sub_10023A0B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v118 = a3;
  v4 = type metadata accessor for DynamicTypeSize();
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin(v4);
  v115 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _Glass();
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = __chkstk_darwin(v6);
  v110 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = &v84 - v10;
  __chkstk_darwin(v9);
  v112 = &v84 - v11;
  v91 = type metadata accessor for ColorScheme();
  v12 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v84 - v16;
  v90 = type metadata accessor for ButtonStyleConfiguration.Label();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100005AD4(&qword_1003B9D90, &qword_1002EA920);
  __chkstk_darwin(v85);
  v88 = &v84 - v19;
  v87 = sub_100005AD4(&qword_1003B9D98, &qword_1002EA928);
  __chkstk_darwin(v87);
  v21 = &v84 - v20;
  v93 = sub_100005AD4(&qword_1003B9DA0, &qword_1002EA930);
  __chkstk_darwin(v93);
  v23 = &v84 - v22;
  v99 = sub_100005AD4(&qword_1003B9DA8, &qword_1002EA938);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v84 - v24;
  v92 = sub_100005AD4(&qword_1003B9DB0, &qword_1002EA940);
  __chkstk_darwin(v92);
  v103 = &v84 - v25;
  v105 = sub_100005AD4(&qword_1003B9DB8, &qword_1002EA948);
  __chkstk_darwin(v105);
  v107 = &v84 - v26;
  v106 = sub_100005AD4(&qword_1003B9DC0, &qword_1002EA950);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v84 - v27;
  v101 = sub_100005AD4(&qword_1003B9DC8, &qword_1002EA958);
  v28 = __chkstk_darwin(v101);
  v109 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v98 = &v84 - v31;
  __chkstk_darwin(v30);
  v108 = &v84 - v32;
  v33 = sub_100005AD4(&qword_1003B9DD0, &qword_1002EA960);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v84 - v35);
  v37 = sub_100005AD4(&qword_1003B9DD8, &qword_1002EA968);
  v38 = __chkstk_darwin(v37 - 8);
  v100 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v84 - v40;
  v42 = *a1 == 1;
  v95 = &v84 - v40;
  if (v42)
  {
    *v36 = static Alignment.center.getter();
    v36[1] = v43;
    v44 = sub_100005AD4(&qword_1003B9E20, &qword_1002EAA28);
    sub_10023AD8C(a1, v36 + *(v44 + 44));
    sub_100023BD4(v36, v41, &qword_1003B9DD0, &qword_1002EA960);
    (*(v34 + 56))(v41, 0, 1, v33);
  }

  else
  {
    (*(v34 + 56))(&v84 - v40, 1, 1, v33);
  }

  v45 = v86;
  ButtonStyleConfiguration.label.getter();
  sub_100239CB8(v17);
  v46 = v91;
  (*(v12 + 104))(v15, enum case for ColorScheme.dark(_:), v91);
  v47 = static ColorScheme.== infix(_:_:)();
  v48 = *(v12 + 8);
  v48(v15, v46);
  v48(v17, v46);
  if (v47)
  {
    v49 = static Color.black.getter();
  }

  else
  {
    v49 = static Color.white.getter();
  }

  v50 = v49;
  KeyPath = swift_getKeyPath();
  v52 = v88;
  (*(v89 + 32))(v88, v45, v90);
  v53 = (v52 + *(v85 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100023BD4(v52, v21, &qword_1003B9D90, &qword_1002EA920);
  v54 = &v21[*(v87 + 36)];
  v55 = v120;
  *v54 = v119;
  *(v54 + 1) = v55;
  *(v54 + 2) = v121;
  sub_100023BD4(v21, v23, &qword_1003B9D98, &qword_1002EA928);
  v23[*(v93 + 36)] = 0;
  v56 = v110;
  static _Glass.regular.getter();
  static Color.accentColor.getter();
  v57 = v111;
  _Glass.tintColor(_:)();

  v58 = v114;
  v59 = *(v113 + 8);
  v59(v56, v114);
  v60 = v112;
  _Glass.interactive(_:)();
  v59(v57, v58);
  sub_10023B384();
  sub_10013EF74();
  v61 = v96;
  View._glassEffect<A>(_:in:)();
  v59(v60, v58);
  sub_100009EBC(v23, &qword_1003B9DA0, &qword_1002EA930);
  static Font.title3.getter();
  v62 = Font.bold()();

  v63 = swift_getKeyPath();
  v64 = v103;
  (*(v97 + 32))(v103, v61, v99);
  v65 = (v64 + *(v92 + 36));
  *v65 = v63;
  v65[1] = v62;
  v66 = v107;
  v67 = &v107[*(v105 + 36)];
  v68 = *(sub_100005AD4(&qword_1003AB620, &qword_1002D5350) + 28);
  v69 = enum case for Image.Scale.large(_:);
  v70 = type metadata accessor for Image.Scale();
  (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
  *v67 = swift_getKeyPath();
  sub_100023BD4(v64, v66, &qword_1003B9DB0, &qword_1002EA940);
  v72 = v115;
  v71 = v116;
  v73 = v117;
  (*(v116 + 104))(v115, enum case for DynamicTypeSize.large(_:), v117);
  sub_10023B590();
  v74 = v102;
  View.dynamicTypeSize(_:)();
  (*(v71 + 8))(v72, v73);
  sub_100009EBC(v66, &qword_1003B9DB8, &qword_1002EA948);
  v75 = v98;
  (*(v104 + 32))(v98, v74, v106);
  v76 = (v75 + *(v101 + 36));
  *v76 = sub_100132E50;
  v76[1] = 0;
  v77 = v108;
  sub_100023BD4(v75, v108, &qword_1003B9DC8, &qword_1002EA958);
  v78 = v95;
  v79 = v100;
  sub_10001F620(v95, v100, &qword_1003B9DD8, &qword_1002EA968);
  v80 = v109;
  sub_10023B758(v77, v109);
  v81 = v118;
  sub_10001F620(v79, v118, &qword_1003B9DD8, &qword_1002EA968);
  v82 = sub_100005AD4(&qword_1003B9E18, &qword_1002EAA20);
  sub_10023B758(v80, v81 + *(v82 + 48));
  sub_100009EBC(v77, &qword_1003B9DC8, &qword_1002EA958);
  sub_100009EBC(v78, &qword_1003B9DD8, &qword_1002EA968);
  sub_100009EBC(v80, &qword_1003B9DC8, &qword_1002EA958);
  return sub_100009EBC(v79, &qword_1003B9DD8, &qword_1002EA968);
}

double sub_10023AD8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B9E28, &qword_1002EAA30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = static Color.accentColor.getter();
  v18 = *(a1 + 8);
  sub_100005AD4(&qword_1003AF578, &qword_1002DCD00);
  State.wrappedValue.getter();
  v11 = v17[1];
  static AnyTransition.identity.getter();
  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static AnyTransition.opacity.getter();
  AnyTransition.combined(with:)();

  v12 = static AnyTransition.asymmetric(insertion:removal:)();

  v13 = enum case for BlendMode.destinationOut(_:);
  v14 = type metadata accessor for BlendMode();
  (*(*(v14 - 8) + 104))(v9, v13, v14);
  sub_10001F620(v9, v7, &qword_1003B9E28, &qword_1002EAA30);
  *a2 = v10;
  *(a2 + 8) = 256;
  *(a2 + 16) = 0x3FB999999999999ALL;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  v15 = sub_100005AD4(&qword_1003B9E30, qword_1002EAA38);
  sub_10001F620(v7, a2 + *(v15 + 48), &qword_1003B9E28, &qword_1002EAA30);

  sub_100009EBC(v9, &qword_1003B9E28, &qword_1002EAA30);
  sub_100009EBC(v7, &qword_1003B9E28, &qword_1002EAA30);

  return result;
}

double sub_10023AFDC()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

void sub_10023B058(uint64_t a1)
{

  sub_100005AD4(&qword_1003AF578, &qword_1002DCD00);
  State.wrappedValue.getter();
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    State.wrappedValue.setter();
  }
}

uint64_t sub_10023B0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakButtonStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023B160()
{
  v1 = (type metadata accessor for SpeakButtonStyle(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[9];
  sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10023B28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10023B2F0()
{
  type metadata accessor for SpeakButtonStyle(0);

  return sub_10023AFDC();
}

unint64_t sub_10023B384()
{
  result = qword_1003B9DE0;
  if (!qword_1003B9DE0)
  {
    sub_100005EA8(&qword_1003B9DA0, &qword_1002EA930);
    sub_10023B43C();
    sub_10001BAEC(&qword_1003B9DF8, &qword_1003B9E00, &qword_1002EA9A8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DE0);
  }

  return result;
}

unint64_t sub_10023B43C()
{
  result = qword_1003B9DE8;
  if (!qword_1003B9DE8)
  {
    sub_100005EA8(&qword_1003B9D98, &qword_1002EA928);
    sub_10023B4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DE8);
  }

  return result;
}

unint64_t sub_10023B4C8()
{
  result = qword_1003B9DF0;
  if (!qword_1003B9DF0)
  {
    sub_100005EA8(&qword_1003B9D90, &qword_1002EA920);
    sub_100211C28();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DF0);
  }

  return result;
}

unint64_t sub_10023B590()
{
  result = qword_1003B9E08;
  if (!qword_1003B9E08)
  {
    sub_100005EA8(&qword_1003B9DB8, &qword_1002EA948);
    sub_10023B648();
    sub_10001BAEC(&qword_1003AB648, &qword_1003AB620, &qword_1002D5350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9E08);
  }

  return result;
}

unint64_t sub_10023B648()
{
  result = qword_1003B9E10;
  if (!qword_1003B9E10)
  {
    sub_100005EA8(&qword_1003B9DB0, &qword_1002EA940);
    sub_100005EA8(&qword_1003B9DA0, &qword_1002EA930);
    sub_10023B384();
    sub_10013EF74();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588, &unk_1002D4A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9E10);
  }

  return result;
}

uint64_t sub_10023B758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B9DC8, &qword_1002EA958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10023B80C()
{
  v9[3] = &type metadata for TranslateFeatures;
  v9[4] = sub_100009DF8();
  LOBYTE(v9[0]) = 10;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if (v1)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

    if (deviceSupportsPersonalTranslator)
    {
      goto LABEL_4;
    }

    result = _LTIsInternalInstall();
    if (!result)
    {
      return result;
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
LABEL_4:
      v5 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
      if (v5)
      {
        return [*(v5 + 48) enableStreamingSpeechTranslation];
      }
    }
  }

  return 0;
}

id sub_10023B92C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = 0;
  v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] = a1;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SpeechManager();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v13, "init");
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 addObserver:v9 selector:"handleAudioInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v11];

  return v9;
}

uint64_t sub_10023BA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v14;
  v8[9] = v15;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  v8[10] = swift_task_alloc();
  v9 = sub_100005AD4(&qword_1003B9F10, &qword_1002EAAC0);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_100005AD4(&qword_1003B9F18, &qword_1002EAAC8);
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = sub_100005AD4(&qword_1003B9F20, &qword_1002EAAD0);
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_10023BC7C, 0, 0);
}

uint64_t sub_10023BC7C()
{
  if ([*(v0 + 32) enableAirPodsOwnVAD])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = v2;
    sub_10001AD18(v1, v2);
    v5 = sub_100241400;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  v6 = *(v0 + 128);
  v19 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 96);
  v17 = *(v0 + 88);
  v18 = *(v0 + 112);
  v9 = *(v0 + 72);
  v16 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(*(v0 + 24) + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v16;
  *(v12 + 40) = v9;
  *(v12 + 48) = v5;
  *(v12 + 56) = v4;
  *(v12 + 64) = v10;
  (*(v8 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v17);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  AsyncThrowingStream.makeAsyncIterator()();
  (*(v19 + 8))(v6, v18);
  *(v0 + 176) = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_10023BEBC;
  v14 = *(v0 + 136);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 192, 0, 0, v14, v0 + 16);
}

uint64_t sub_10023BEBC()
{

  if (v0)
  {
    v1 = sub_10023C168;
  }

  else
  {
    v1 = sub_10023BFCC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10023BFCC()
{
  v1 = *(v0 + 192);
  if (*(v0 + 196))
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_10001ABE4(v2, v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(*(v0 + 24) + *(v0 + 176) + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6, v1);
      swift_unknownObjectRelease();
    }

    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_10023BEBC;
    v9 = *(v0 + 136);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 192, 0, 0, v9, v0 + 16);
  }
}

uint64_t sub_10023C168()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_10001ABE4(v0[20], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2890);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error while listening: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0, &unk_1002D3F10);
  }

  v11 = v0[10];
  v12 = v0[3];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v14 = v12;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v16[5] = v4;
  sub_10005E66C(0, 0, v11, &unk_1002EAAE0, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10023C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023C4A4, v7, v6);
}

uint64_t sub_10023C4A4()
{
  v1 = *(v0 + 24);

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_10023C574()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer))
  {

    sub_1002424F0();
    if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate) == 1)
    {
      sub_100241EC4(&v33);
      if (*(&v34 + 1))
      {
        sub_100051124(&v33, v36);
        sub_100051124((v35 + 8), v37 + 8);
        sub_100051124(v36, v32);
        sub_100051124((v37 + 8), &v30);
        v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v1 + 8);
          if (qword_1003A9280 != -1)
          {
            swift_once();
          }

          v3 = type metadata accessor for Logger();
          sub_1000078E8(v3, qword_1003D2890);
          v4 = Logger.logObject.getter();
          v5 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&_mh_execute_header, v4, v5, "Sending final result to delegate after swap", v6, 2u);
          }

          ObjectType = swift_getObjectType();
          (*(v2 + 40))(v32, &v30, ObjectType, v2);
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1003A9250 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_1000078E8(v25, qword_1003D2800);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "Cannot send result after swap because SpeechManagers's delegate doesn't exist", v28, 2u);
          }
        }

        sub_100008664(&v30);
        sub_100008664(v32);
        return;
      }

      sub_100009EBC(&v33, &unk_1003B9EA0, &unk_1002EAA90);
    }

    sub_100242908(&v30);
    if (v31)
    {
      sub_100051124(&v30, v32);
      sub_100031DD8(v32, &v33);
      sub_100242A64(v35 + 8);
      sub_100008664(v32);
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v36[0] = v33;
      v36[1] = v34;
      v11 = v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        if (qword_1003A9280 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000078E8(v13, qword_1003D2890);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Sending partial result to delegate after swap", v16, 2u);
        }

        v17 = swift_getObjectType();
        (*(v12 + 32))(v36, v37 + 8, v17, v12);
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000078E8(v21, qword_1003D2800);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Cannot send result after swap because SpeechManagers's delegate doesn't exist", v24, 2u);
        }
      }

      v18 = &qword_1003B9EB0;
      v19 = &qword_1002EAAA0;
      v20 = v36;
    }

    else
    {

      v18 = &unk_1003AECE0;
      v19 = &unk_1002DA2D0;
      v20 = &v30;
    }

    sub_100009EBC(v20, v18, v19);
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Cannot swap result locales because result container is nil", v10, 2u);
    }
  }
}

void sub_10023CB70()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10028DF68(v21), (v5 & 1) == 0))
  {

    sub_100078028(v21);
    return;
  }

  sub_10000A37C(*(v3 + 56) + 32 * v4, v22);
  sub_100078028(v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!v20)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2890);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_27;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Audio interruption ended";
    goto LABEL_26;
  }

  if (v20 != 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2890);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_27;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Audio interruption with unhandled type";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_27:

    return;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Audio interruption began", v9, 2u);
  }

  v10 = v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(0, 1, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
  if (v13)
  {
    [*(v13 + 48) endAudio];
  }

  sub_10020BB08();
}

id sub_10023CFE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpeechManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10023D0AC(void *a1, uint64_t a2)
{
  v3 = sub_100005AD4(&unk_1003B9EF0, &qword_1002E0D70);
  __chkstk_darwin(v3 - 8);
  v46 = &v42 - v4;
  v5 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9250 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v12 = sub_1000078E8(v47, qword_1003D2800);
  v13 = a1;
  v48 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44 = v7;
    v19 = v18;
    v49[0] = v18;
    *v17 = 67109634;
    *(v17 + 4) = [v13 isConfident];
    *(v17 + 8) = 1024;
    *(v17 + 10) = [v13 isFinal];

    *(v17 + 14) = 2082;
    v20 = [v13 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = Locale.ltIdentifier.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_10028D78C(v21, v23, v49);

    *(v17 + 16) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received LID result (confident: %{BOOL}d, final: %{BOOL}d): %{public}s", v17, 0x18u);
    sub_100008664(v19);
    v7 = v44;

    v5 = v43;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring result above, SpeechRequest's delegate doesn't exist", v31, 2u);
    }

    goto LABEL_16;
  }

  v26 = Strong;
  v27 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v29 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v32, "Ignoring result above, SpeechManagers's delegate doesn't exist", v33, 2u);
    }

LABEL_16:
    return;
  }

  if (!*&v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer])
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v47, qword_1003D2890);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot capture lid result because SpeechResultContainer is nil", v36, 2u);
    }

    goto LABEL_22;
  }

  v28 = *(v27 + 8);

  sub_100242154(v13);
  if (v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
  {

LABEL_22:
    swift_unknownObjectRelease();
    return;
  }

  v37 = v46;
  sub_100241818(v46);
  if ((*(v45 + 48))(v37, 1, v5) == 1)
  {

    swift_unknownObjectRelease();
    sub_100009EBC(v37, &unk_1003B9EF0, &qword_1002E0D70);
  }

  else
  {
    sub_10024122C(v37, v7);
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v47, qword_1003D2890);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Sending final LID result to delegate", v40, 2u);
    }

    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v7, v7[*(v5 + 48)], ObjectType, v28);

    swift_unknownObjectRelease();

    sub_100009EBC(v7, &qword_1003B3680, &qword_1002E0D78);
  }
}

uint64_t sub_10023D854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v21);
}

void sub_10023DB04(void *a1, void *a2)
{
  v49 = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000078E8(v7, qword_1003D2890);
  v9 = a1;
  v48 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v47 = v7;
    v13 = v12;
    v46 = swift_slowAlloc();
    *&v56[0] = v46;
    *v13 = 136446979;
    v14 = [v9 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Locale.ltIdentifier.getter();
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v18 = sub_10028D78C(v15, v17, v56);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    LODWORD(v18) = [v9 isStable];

    *(v13 + 14) = v18;
    *(v13 + 18) = 1024;
    LODWORD(v18) = [v9 isFinal];

    *(v13 + 20) = v18;
    *(v13 + 24) = 2085;
    v19 = [v9 bestTranscription];
    v20 = [v19 formattedString];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10028D78C(v21, v23, v56);

    *(v13 + 26) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received speech result (locale: %{public}s, isStable: %{BOOL}d, final: %{BOOL}d): %{sensitive}s", v13, 0x22u);
    swift_arrayDestroy();

    v7 = v47;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      if (([v9 isStable] & 1) != 0 || objc_msgSend(v9, "isFinal"))
      {
        v29 = *&v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
        if (v29)
        {

          sub_100240AD8(v9, v29);
          if (sub_10023B80C() & 1) != 0 || (v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_100242908(&v50);
            if (v51)
            {
              sub_100051124(&v50, v52);
              sub_100031DD8(v52, v53);
              sub_100242A64(v54 + 8);
              sub_100008664(v52);
              v57[0] = v54[0];
              v57[1] = v54[1];
              v57[2] = v55;
              v56[0] = v53[0];
              v56[1] = v53[1];
              sub_10001F620(v56, v53, &qword_1003B9EB0, &qword_1002EAAA0);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                v52[0] = v49;
                *v41 = 136315138;
                if (v55)
                {
                  v42 = 7562585;
                }

                else
                {
                  v42 = 28494;
                }

                if (v55)
                {
                  v43 = 0xE300000000000000;
                }

                else
                {
                  v43 = 0xE200000000000000;
                }

                sub_100009EBC(v53, &qword_1003B9EB0, &qword_1002EAAA0);
                v44 = sub_10028D78C(v42, v43, v52);

                *(v41 + 4) = v44;
                _os_log_impl(&_mh_execute_header, v39, v40, "Sending partial result to delegate. Partial translation is attached: %s", v41, 0xCu);
                sub_100008664(v49);
              }

              else
              {

                sub_100009EBC(v53, &qword_1003B9EB0, &qword_1002EAAA0);
              }

              ObjectType = swift_getObjectType();
              (*(v28 + 32))(v56, v57 + 8, ObjectType, v28);

              swift_unknownObjectRelease();

              sub_100009EBC(v56, &qword_1003B9EB0, &qword_1002EAAA0);
            }

            else
            {

              swift_unknownObjectRelease();

              sub_100009EBC(&v50, &unk_1003AECE0, &unk_1002DA2D0);
            }
          }

          return;
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Cannot capture speech recognition result because SpeechResultContainer is nil", v38, 2u);
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return;
    }

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v7, qword_1003D2800);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring result above, SpeechManagers's delegate doesn't exist", v35, 2u);
    }
  }

  else
  {
    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v7, qword_1003D2800);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v32, 2u);
    }
  }
}

void sub_10023E3AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v113 = v4;
  v114 = v5;
  v6 = __chkstk_darwin(v4);
  v110 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v109 = &v104 - v9;
  v10 = __chkstk_darwin(v8);
  v112 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v111 = &v104 - v13;
  __chkstk_darwin(v12);
  v15 = &v104 - v14;
  v16 = [a1 translations];
  sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10017A05C(v17);

  if (v18[2])
  {
    sub_100031DD8((v18 + 4), &v129);

    sub_1000085CC(&v129, *(&v130 + 1));
    v115 = dispatch thunk of FormattedString.formattedString.getter();
    v20 = v19;
    sub_100008664(&v129);
  }

  else
  {

    v115 = 0;
    v20 = 0;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_1000078E8(v21, qword_1003D2890);

  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v107 = v21;
    v27 = v26;
    v106 = swift_slowAlloc();
    *&v129 = v106;
    *v27 = 136446979;
    v28 = [v23 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = Locale.ltIdentifier.getter();
    v108 = a2;
    v31 = v30;
    (*(v114 + 8))(v15, v113);
    v32 = sub_10028D78C(v29, v31, &v129);

    *(v27 + 4) = v32;
    *(v27 + 12) = 1024;
    LODWORD(v32) = [v23 isFinal];

    *(v27 + 14) = v32;
    *(v27 + 18) = 2085;
    if (v20)
    {
      v33 = v115;
    }

    else
    {
      v33 = 7104878;
    }

    if (v20)
    {
      v34 = v20;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_10028D78C(v33, v34, &v129);

    *(v27 + 20) = v35;
    *(v27 + 28) = 1024;
    LODWORD(v35) = [v23 endOfUtterance];

    *(v27 + 30) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received translation result; locale: %{public}s; final: %{BOOL}d; formattedResult: %{sensitive}s; endOfUtterance: %{BOOL}d", v27, 0x22u);
    swift_arrayDestroy();

    v21 = v107;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *&v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
      if (!v41)
      {

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Cannot capture translation result because SpeechResultContainer is nil", v50, 2u);
        }

        goto LABEL_35;
      }

      if (v20)
      {
        if (!v115 && v20 == 0xE000000000000000)
        {

LABEL_38:
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Translation Result is empty, ignoring", v54, 2u);
          }

          swift_unknownObjectRelease();

          return;
        }

        v107 = *(v38 + 8);
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v51)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v107 = *(v38 + 8);
      }

      v108 = v22;
      v115 = v40;
      v55 = v41;
      if (![*(v41 + 48) enableMultiFieldInput])
      {
        goto LABEL_65;
      }

      v106 = v23;
      v56 = [v23 locale];
      v57 = v111;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v105 = Locale.identifier.getter();
      v59 = v58;
      v60 = v113;
      v62 = v114 + 8;
      v61 = *(v114 + 8);
      v61(v57, v113);
      v111 = v55;
      v63 = [*(v55 + 48) localePair];
      v64 = [v63 sourceLocale];

      v65 = v112;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = Locale.identifier.getter();
      v68 = v67;
      v114 = v62;
      v112 = v61;
      v61(v65, v60);
      if (v105 == v66 && v59 == v68)
      {

        v55 = v111;
        v23 = v106;
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v55 = v111;
        v23 = v106;
        if ((v69 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (*(v55 + 56) != 1)
      {
        goto LABEL_52;
      }

LABEL_47:
      v70 = [v23 locale];
      v71 = v109;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v105 = Locale.identifier.getter();
      v73 = v72;
      v74 = v113;
      v75 = v112;
      (v112)(v71, v113);
      v76 = [*(v55 + 48) localePair];
      v77 = [v76 targetLocale];

      v78 = v110;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = Locale.identifier.getter();
      v81 = v80;
      v75(v78, v74);
      if (v105 == v79 && v73 == v81)
      {

        v55 = v111;
        v23 = v106;
      }

      else
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v55 = v111;
        v23 = v106;
        if ((v82 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (*(v55 + 56) == 1)
      {
LABEL_52:
        sub_100242908(&v132);
        if (*(&v133 + 1))
        {
          sub_100051124(&v132, &v124);
          sub_100031DD8(&v124, &v129);
          sub_100242A64(&v131[8]);
          sub_100008664(&v124);
          sub_100051124(&v129, &v119);
          sub_100009EBC(&v131[8], &unk_1003B9EC0, &qword_1002D7480);
          if (*(&v120 + 1))
          {
            sub_100051124(&v119, &v124);
            sub_100242908(&v116);
            if (v117)
            {
              sub_100051124(&v116, v118);
              sub_100031DD8(v118, &v129);
              sub_100242A64(&v131[8]);
              sub_100008664(v118);
              v132 = *&v131[8];
              v133 = *&v131[24];
              v134 = *&v131[40];
              sub_100008664(&v129);
              if (*(&v133 + 1))
              {
                sub_100051124(&v132, &v119);
                sub_100241F90(&v129);
                if (!*(&v130 + 1))
                {
                  sub_100009EBC(&v129, &unk_1003B9EA0, &unk_1002EAA90);
                  ObjectType = swift_getObjectType();
                  (*(v107 + 40))(&v124, &v119, ObjectType);
                  sub_100008664(&v119);
                  sub_100008664(&v124);
                  goto LABEL_64;
                }

                sub_100008664(&v119);
                sub_100008664(&v124);
                v83 = &unk_1003B9EA0;
                v84 = &unk_1002EAA90;
                v85 = &v129;
LABEL_63:
                sub_100009EBC(v85, v83, v84);
LABEL_64:
                v86 = [v23 locale];
                static Locale._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1002426E8(v15);
                (v112)(v15, v113);
                sub_1002424F0();
                goto LABEL_65;
              }

              sub_100008664(&v124);
            }

            else
            {
              sub_100008664(&v124);
              sub_100009EBC(&v116, &unk_1003AECE0, &unk_1002DA2D0);
              v132 = 0u;
              v133 = 0u;
              v134 = 0;
            }

            v83 = &unk_1003B9EC0;
            v84 = &qword_1002D7480;
            v85 = &v132;
            goto LABEL_63;
          }
        }

        else
        {
          sub_100009EBC(&v132, &unk_1003AECE0, &unk_1002DA2D0);
          v119 = 0u;
          v120 = 0u;
          *&v121 = 0;
        }

        v83 = &unk_1003AECE0;
        v84 = &unk_1002DA2D0;
        v85 = &v119;
        goto LABEL_63;
      }

LABEL_65:
      sub_100240D94(v23, v55);
      sub_100241EC4(&v124);
      if (*(&v125 + 1))
      {
        sub_100051124(&v124, &v129);
        sub_100051124((&v126 + 8), &v131[8]);
        sub_100051124(&v129, &v119);
        sub_100051124(&v131[8], &v132);
        if (v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
        {
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&_mh_execute_header, v87, v88, "Received additional result after sending final result, not going to re-send final result.", v89, 2u);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 1;
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&_mh_execute_header, v90, v91, "Sending final result to delegate", v92, 2u);
          }

          v93 = swift_getObjectType();
          (*(v107 + 40))(&v119, &v132, v93);

          swift_unknownObjectRelease();
        }

        sub_100008664(&v132);
        sub_100008664(&v119);
        return;
      }

      sub_100009EBC(&v124, &unk_1003B9EA0, &unk_1002EAA90);
      if (v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
      {

LABEL_35:
        swift_unknownObjectRelease();
        return;
      }

      sub_100242908(&v132);
      if (!*(&v133 + 1))
      {

        swift_unknownObjectRelease();
        sub_100009EBC(&v132, &unk_1003AECE0, &unk_1002DA2D0);
        return;
      }

      sub_100051124(&v132, &v119);
      sub_100031DD8(&v119, &v124);
      sub_100242A64(&v126 + 8);
      sub_100008664(&v119);
      *v131 = v126;
      *&v131[16] = v127;
      *&v131[32] = v128;
      v129 = v124;
      v130 = v125;
      sub_10001F620(&v129, &v124, &qword_1003B9EB0, &qword_1002EAAA0);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v119 = v97;
        *v96 = 136315138;
        if (v128)
        {
          v98 = 7562585;
        }

        else
        {
          v98 = 28494;
        }

        if (v128)
        {
          v99 = 0xE300000000000000;
        }

        else
        {
          v99 = 0xE200000000000000;
        }

        sub_100009EBC(&v124, &qword_1003B9EB0, &qword_1002EAAA0);
        v100 = sub_10028D78C(v98, v99, &v119);

        *(v96 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v94, v95, "Sending partial result to delegate. Partial translation is attached: %s", v96, 0xCu);
        sub_100008664(v97);
      }

      else
      {

        sub_100009EBC(&v124, &qword_1003B9EB0, &qword_1002EAAA0);
      }

      if (sub_10023B80C())
      {
        sub_100241F90(&v119);
        if (*(&v120 + 1))
        {
          v126 = v121;
          v127 = v122;
          v128 = v123;
          v124 = v119;
          v125 = v120;
          v101 = swift_getObjectType();
          (*(v107 + 40))(&v124, &v126 + 8, v101);

          swift_unknownObjectRelease();
          sub_100009EBC(&v124, &qword_1003B9EB8, &qword_1002EAAA8);
LABEL_92:
          sub_100009EBC(&v129, &qword_1003B9EB0, &qword_1002EAAA0);
          return;
        }

        sub_100009EBC(&v119, &unk_1003B9EA0, &unk_1002EAA90);
      }

      v102 = swift_getObjectType();
      (*(v107 + 32))(&v129, &v131[8], v102);

      swift_unknownObjectRelease();
      goto LABEL_92;
    }

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v21, qword_1003D2800);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Ignoring result above, SpeechManagers's delegate doesn't exist", v47, 2u);
    }
  }

  else
  {

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v21, qword_1003D2800);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v44, 2u);
    }
  }
}

uint64_t sub_10023F5D8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1002411B0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A890;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_10023F898(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100005AD4(&unk_1003B9E90, &qword_1002D6650);
    sub_10000A2CC(0, &qword_1003A9A88, NSError_ptr);
    if (swift_dynamicCast())
    {
      v2 = qword_1003A9280;
      v3 = v24;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000078E8(v4, qword_1003D2890);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v5;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, v7, "Translation finished with error: %@", v8, 0xCu);
        sub_100009EBC(v9, &unk_1003AECA0, &unk_1002D3F10);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v13 + 8);
          swift_getObjectType();
          v15 = *(v14 + 48);
          v5 = v5;
          v15(v5);

          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        sub_1000078E8(v4, qword_1003D2800);
        v19 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v19, v22, "Ignoring result above, SpeechManagers's delegate doesn't exist", v23, 2u);
        }
      }

      else
      {

        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        sub_1000078E8(v4, qword_1003D2800);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v21, 2u);
        }
      }

      goto LABEL_24;
    }
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2890);
  v5 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v5, v17, "Translation finished without an error", v18, 2u);
  }

LABEL_24:
}

uint64_t sub_10023FD54()
{
  type metadata accessor for SensorServiceManager();
  swift_initStaticObject();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = sub_100227804(sub_100241420, v0);

  if (v1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2890);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error while launching sensor service for OVAD streaming state changes: %@", v6, 0xCu);
      sub_100009EBC(v7, &unk_1003AECA0, &unk_1002D3F10);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_10023FF28(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      sub_10023FFA8(a2);
    }

    else
    {
      sub_100240234(a1 & 1);
    }
  }
}

double sub_10023FFA8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2890);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "OVAD streaming failed with error: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0, &unk_1002D3F10);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  swift_errorRetain();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = a1;

  sub_10005E36C(0, 0, v4, &unk_1002EAAF8, v14);

  return result;
}

void sub_100240234(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2890);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "OVAD streaming state changed: %{BOOL}d", v10, 8u);
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v11 = qword_1003D2470;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a1 & 1;
  sub_10005E36C(0, 0, v6, &unk_1002EAB00, v14);

  if (a1)
  {
    sub_100018594();
  }

  *(v11 + 65) = a1 & 1;
  v15 = v2 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 56))(a1 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v18 updateOVADStreamingState:isa];
}

uint64_t sub_1002404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024058C, v7, v6);
}

uint64_t sub_10024058C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 48);
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 48))(v4, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_100240670(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_100240714(a1, a2);
    if (!v4)
    {
      if (a4)
      {
        a4(v10);
      }
    }
  }
}

uint64_t sub_100240714(uint64_t a1, unint64_t a2)
{
  if (qword_1003A92F0 != -1)
  {
    swift_once();
  }

  objc_sync_enter(qword_1003D29B0);
  if (!qword_1003D29A8 || (qword_1003D29A0 == a1 ? (v5 = qword_1003D29A8 == a2) : (v5 = 0), !v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2890);

    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10028D78C(a1, a2, &v22);
    *(v16 + 12) = 2080;
    v21[0] = qword_1003D29A0;
    v21[1] = qword_1003D29A8;

    sub_100005AD4(&qword_1003AA740, &unk_1002D42F0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10028D78C(v17, v18, &v22);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v15, "Not starting OVAD as session: %s does not match PTSession:%s", v16, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10028D78C(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting OVAD streaming state change handler for ovadSessionID: %s", v9, 0xCu);
    sub_100008664(v10);
  }

  sub_10023FD54();
  if (!v2)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_21:

      return objc_sync_exit(qword_1003D29B0);
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Enquing Tone and TTS for listening", v13, 2u);
LABEL_20:

    goto LABEL_21;
  }

  return objc_sync_exit(qword_1003D29B0);
}

uint64_t sub_100240AD8(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a2 + 64);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  swift_beginAccess();
  sub_10001F620(v10 + v11, v9, &qword_1003B5130, &unk_1002E4220);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = a1;
  sub_100009EBC(v9, &qword_1003B5130, &unk_1002E4220);
  if (v14 == 1)
  {
    Date.init()();
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_100081B28(v7, v10 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10028CCDC(0, v16[2] + 1, 1, v16);
    *(a2 + 24) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10028CCDC((v18 > 1), v19 + 1, 1, v16);
  }

  v23 = sub_10000A2CC(0, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr);
  v24 = sub_1000819A8(&qword_1003AED10, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr, &protocol conformance descriptor for _LTSpeechRecognitionResult);
  *&v22 = v15;
  v16[2] = v19 + 1;
  sub_100051124(&v22, &v16[5 * v19 + 4]);
  *(a2 + 24) = v16;
  return swift_endAccess();
}

uint64_t sub_100240D94(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a2 + 64);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation;
  swift_beginAccess();
  sub_10001F620(v10 + v11, v9, &qword_1003B5130, &unk_1002E4220);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = a1;
  sub_100009EBC(v9, &qword_1003B5130, &unk_1002E4220);
  if (v14 == 1)
  {
    Date.init()();
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_100081B28(v7, v10 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10028CD00(0, v16[2] + 1, 1, v16);
    *(a2 + 32) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10028CD00((v18 > 1), v19 + 1, 1, v16);
  }

  v23 = sub_10000A2CC(0, &unk_1003B9ED0, _LTTranslationResult_ptr);
  v24 = sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0, _LTTranslationResult_ptr, &protocol conformance descriptor for _LTTranslationResult);
  *&v22 = v15;
  v16[2] = v19 + 1;
  sub_100051124(&v22, &v16[5 * v19 + 4]);
  *(a2 + 32) = v16;
  return swift_endAccess();
}

uint64_t sub_100241138()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100241170()
{

  return _swift_deallocObject(v0, 32);
}

double sub_1002411B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002411E4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10024122C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002412B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002412F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10023C408(a1, v4, v5, v7, v6);
}

uint64_t sub_1002413B8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100241428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100241470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1002404F4(a1, v4, v5, v7, v6);
}

uint64_t sub_100241530()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_100241570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_1000183E0(a1, v4, v5, v6, v7);
}

Class sub_100241654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000A2CC(0, &qword_1003B2A60, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

double sub_100241708@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = a2 + 40 * v6 + 32;
  v8 = v6 + 1;
  while (--v8)
  {
    v7 -= 40;
    v9 = a1(v7);
    if (v3)
    {
      return result;
    }

    if (v9)
    {
      sub_100031DD8(v7, a3);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100241798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = _swiftEmptyArrayStorage;
  *(v2 + 56) = 0;
  *(v2 + 64) = [objc_allocWithZone(type metadata accessor for SpeechTranslationInstrumentation(0)) init];
  *(v2 + 72) = [objc_allocWithZone(_LTSpeechLIDLoggingRequest) init];
  *(v2 + 80) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return v2;
}

uint64_t sub_100241818@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = *(v1 + 48);
  if (![v10 autodetectLanguage] || (objc_msgSend(v10, "forceSourceLocale") & 1) != 0)
  {
    v11 = *(v1 + 56);
    v12 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
    v13 = *(v12 + 48);
    v14 = [v10 localePair];
    v15 = v14;
    if (v11 == 1)
    {
      v16 = [v14 targetLocale];
    }

    else
    {
      v16 = [v14 sourceLocale];
    }

    v17 = v16;

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    *(a1 + v13) = 1;
    v18 = *(*(v12 - 8) + 56);
    goto LABEL_7;
  }

  v23 = *(v1 + 16);
  if (!v23)
  {
    v33 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
    v18 = *(*(v33 - 8) + 56);
    v21 = v33;
    v19 = a1;
    v20 = 1;
    goto LABEL_8;
  }

  if (*(v1 + 56) != 1)
  {
    v12 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
    v34 = *(v12 + 48);
    v35 = v23;
    v36 = [v35 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v36) = [v35 isConfident];
    *(a1 + v34) = v36;
    v18 = *(*(v12 - 8) + 56);
LABEL_7:
    v19 = a1;
    v20 = 0;
    v21 = v12;
LABEL_8:

    return v18(v19, v20, 1, v21);
  }

  v57 = v1;
  v24 = v23;
  v25 = [v10 localePair];
  v59 = v24;
  v26 = [v24 dominantLanguage];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Locale._bridgeToObjectiveC()().super.isa;
  v58 = *(v4 + 8);
  v58(v7, v3);
  v28 = [v25 oppositeToLocale:isa];

  if (v28)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
    v30 = *(v29 + 48);
    (*(v4 + 16))(a1, v9, v3);
    v31 = v59;
    v32 = [v59 isConfident];

    v58(v9, v3);
    *(a1 + v30) = v32;
  }

  else
  {
    v37 = v59;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000078E8(v38, qword_1003D2890);
    v39 = v37;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v42 = 136446466;
      v43 = [v39 dominantLanguage];
      LODWORD(v57) = v41;
      v44 = v43;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = Locale.ltIdentifier.getter();
      v47 = v46;
      v58(v7, v3);
      v48 = sub_10028D78C(v45, v47, &v60);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = [v10 localePair];
      v50 = [v49 combinedLocaleIdentifier];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10028D78C(v51, v53, &v60);

      *(v42 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v40, v57, "Couldn't find locale opposite to speech request's locale pair. Given locale: %{public}s. Locale pair: %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    v29 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
    v55 = *(v29 + 48);
    v56 = [v39 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v56) = [v39 isConfident];
    *(a1 + v55) = v56;
  }

  return (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
}

double sub_100241EC4@<D0>(_OWORD *a1@<X8>)
{
  sub_100242F80(&v8);
  if (v9)
  {
    sub_100051124(&v8, v10);
    sub_100243314(&v6);
    if (v7)
    {
      sub_100051124(&v6, &v8);
      sub_10024378C(&v8);
      sub_100051124(v10, a1);
      sub_100051124(&v8, a1 + 40);
      return result;
    }

    sub_100008664(v10);
    v3 = &unk_1003B9EC0;
    v4 = &qword_1002D7480;
    v5 = &v6;
  }

  else
  {
    v3 = &unk_1003AECE0;
    v4 = &unk_1002DA2D0;
    v5 = &v8;
  }

  sub_100009EBC(v5, v3, v4);
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100241F90@<D0>(_OWORD *a2@<X8>)
{
  sub_100242908(&v5);
  if (v6)
  {
    sub_100051124(&v5, v7);
    sub_100031DD8(v7, &v8);
    sub_100242A64(&v10 + 8);
    sub_100008664(v7);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v13 = v8;
    v14 = v9;
    sub_10001F620(&v13, &v8, &qword_1003B9EB0, &qword_1002EAAA0);
    if (v12)
    {
      sub_100051124((&v10 + 8), v7);
      sub_100008664(&v8);
      sub_1000085CC(v7, v7[3]);
      if (dispatch thunk of TranslationResult.endOfUtterance.getter())
      {
        v10 = v15;
        v11 = v16;
        v12 = v17;
        v8 = v13;
        v9 = v14;
        sub_100051124(&v8, a2);
        sub_100031DD8(v7, a2 + 40);
        sub_100009EBC(&v10 + 8, &unk_1003B9EC0, &qword_1002D7480);
        sub_100008664(v7);
        return result;
      }

      sub_100009EBC(&v13, &qword_1003B9EB0, &qword_1002EAAA0);
      v4 = v7;
    }

    else
    {
      sub_100009EBC(&v13, &qword_1003B9EB0, &qword_1002EAAA0);
      sub_100009EBC(&v10 + 8, &unk_1003B9EC0, &qword_1002D7480);
      v4 = &v8;
    }

    sub_100008664(v4);
  }

  else
  {
    sub_100009EBC(&v5, &unk_1003AECE0, &unk_1002DA2D0);
  }

  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_100242154(void *a1)
{
  v27 = a1;
  v2 = sub_100005AD4(&unk_1003B9EF0, &qword_1002E0D70);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v28 = v1;
  v11 = *(v1 + 64);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID;
  swift_beginAccess();
  sub_10001F620(v11 + v12, v10, &qword_1003B5130, &unk_1002E4220);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_100009EBC(v10, &qword_1003B5130, &unk_1002E4220);
  if (v15 == 1)
  {
    Date.init()();
    (*(v14 + 56))(v8, 0, 1, v13);
    swift_beginAccess();
    sub_10003BD84(v8, v11 + v12, &qword_1003B5130, &unk_1002E4220);
    swift_endAccess();
  }

  v16 = v11;
  v17 = v28;
  sub_100241818(v4);
  v18 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
  v19 = (*(*(v18 - 8) + 48))(v4, 1, v18);
  sub_100009EBC(v4, &unk_1003B9EF0, &qword_1002E0D70);
  if (v19 != 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2890);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Only one LID result is expected. Something went wrong.", v23, 2u);
    }
  }

  v24 = v27;
  v25 = [v27 isConfident];
  *(v16 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lidTriggered) = v25 ^ 1;
  [*(v17 + 72) setLidResult:v24];
  v26 = *(v17 + 16);
  *(v17 + 16) = v24;
}

void sub_1002424F0()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (([v2 autodetectLanguage] & 1) != 0 || objc_msgSend(v2, "enableStreamingSpeechTranslation"))
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2890);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Swapping locales", v6, 2u);
    }

    *(v1 + 56) = (*(v1 + 56) & 1) == 0;
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Cannot swap results because swapping is only supported with autodetect or streaming speech", v9, 2u);
    }
  }
}

void sub_1002426E8(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_100244038(sub_10024432C);
  v3 = *(v1[3] + 16);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    sub_1002B59EC(v2, v3);
    swift_endAccess();
    swift_beginAccess();
    v1[4] = _swiftEmptyArrayStorage;

    v4 = v1[2];
    v1[2] = 0;
  }
}

uint64_t sub_1002427AC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v6 == Locale.identifier.getter() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100242920(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isEmpty()())
  {
    v7 = 0;
  }

  else
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    v7 = static Locale.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

double sub_100242A64@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = type metadata accessor for Locale();
  v4 = *(v30 - 8);
  v5 = __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v28 - v8;
  v9 = sub_100005AD4(&unk_1003B9EF0, &qword_1002E0D70);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_100241818(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009EBC(v11, &unk_1003B9EF0, &qword_1002E0D70);
  }

  else
  {
    sub_10024122C(v11, v18);
    v19 = [*(v1 + 48) localePair];
    sub_10001F620(v18, v16, &qword_1003B3680, &qword_1002E0D78);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v21 = v16;
    v22 = v30;
    v28 = *(v4 + 8);
    v28(v21, v30);
    v23 = [v19 oppositeToLocale:isa];

    if (v23)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v29;
      (*(v4 + 32))(v29, v7, v22);
      v25 = swift_beginAccess();
      v26 = *(v2 + 32);
      __chkstk_darwin(v25);
      *(&v28 - 2) = v24;

      sub_100241708(sub_1002442EC, v26, &v31);

      sub_100009EBC(v18, &qword_1003B3680, &qword_1002E0D78);
      if (v32)
      {
        sub_100051124(&v31, a1);
        v28(v24, v22);
        return result;
      }

      sub_100009EBC(&v31, &unk_1003B9EC0, &qword_1002D7480);
      v28(v24, v22);
    }

    else
    {
      sub_100009EBC(v18, &qword_1003B3680, &qword_1002E0D78);
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100242E70(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of TranslationResult.locale.getter();
  LOBYTE(a1) = static Locale.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

double sub_100242F98@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005AD4(&unk_1003B9EF0, &qword_1002E0D70);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = sub_100005AD4(&qword_1003B3680, &qword_1002E0D78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10];
  sub_100241818(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v12 = &unk_1003B9EF0;
    v13 = &qword_1002E0D70;
    v14 = v7;
  }

  else
  {
    sub_10024122C(v7, v11);
    v15 = swift_beginAccess();
    v16 = *(v2 + 24);
    __chkstk_darwin(v15);
    *&v18[-16] = v11;

    sub_100241708(a1, v16, &v19);

    if (v20)
    {
      sub_100051124(&v19, a2);
      sub_100009EBC(v11, &qword_1003B3680, &qword_1002E0D78);
      return result;
    }

    sub_100009EBC(&v19, &unk_1003AECE0, &unk_1002DA2D0);
    v12 = &qword_1003B3680;
    v13 = &qword_1002E0D78;
    v14 = v11;
  }

  sub_100009EBC(v14, v12, v13);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1002431D0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    v7 = static Locale.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100243314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  sub_100242F80(&v30);
  if (!v31)
  {
    result = sub_100009EBC(&v30, &unk_1003AECE0, &unk_1002DA2D0);
LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v28 = v13;
  v29 = a1;
  sub_100051124(&v30, v32);
  v14 = *(v1 + 48);
  v15 = [v14 localePair];
  sub_1000085CC(v32, v32[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v27 = *(v5 + 8);
  v27(v11, v4);
  v17 = [v15 oppositeToLocale:isa];

  if (!v17)
  {
    result = sub_100008664(v32);
    a1 = v29;
    goto LABEL_8;
  }

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v28;
  (*(v5 + 32))(v28, v8, v4);
  v19 = [v14 localePair];
  v20 = [v19 isPassthrough];

  if (v20)
  {
    swift_beginAccess();
    v21 = *(v2 + 32);
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_100031DD8(v21 + 40 * v22 - 8, v29);
    }

    else
    {
      v26 = v29;
      *(v29 + 32) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }
  }

  else
  {
    v24 = swift_beginAccess();
    v25 = *(v2 + 32);
    __chkstk_darwin(v24);
    *(&v27 - 2) = v18;

    sub_100241708(sub_1002442AC, v25, v29);
  }

  v27(v18, v4);
  return sub_100008664(v32);
}

uint64_t sub_100243648(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of TranslationResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of TranslationResult.locale.getter();
    v7 = static Locale.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10024378C(void *a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80))
  {
    return result;
  }

  v10 = 1;
  *(v1 + 80) = 1;
  v11 = *(v1 + 64);
  v58 = v1;
  v12 = *(v1 + 48);
  v13 = [v12 localePair];
  v14 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair] = v13;

  v15 = [v12 censorSpeech];
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_censorSpeech] = v15;
  sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
  v16 = static NSUserDefaults.translationGroupDefaults.getter();
  v17 = NSUserDefaults.onDeviceOnly.getter();

  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_onDeviceModeEnabled] = v17 & 1;
  sub_1000085CC(a1, a1[3]);
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_offline] = dispatch thunk of TranslationResult.isOffline.getter() & 1;
  sub_1000085CC(a1, a1[3]);
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lowQualityMT] = TranslationResult.isLowConfidence.getter() & 1;
  v56 = v12;
  v18 = [v12 localePair];
  v19 = a1[3];
  v57 = a1;
  sub_1000085CC(a1, v19);
  v20 = v59;
  dispatch thunk of TranslationResult.locale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v22 = v6;
  v54 = *(v7 + 8);
  v55 = v7 + 8;
  v54(v20, v6);
  v23 = [v18 oppositeToLocale:isa];

  if (v23)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  (*(v7 + 56))(v5, v10, 1, v6);
  v24 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10003BD84(v5, &v11[v24], &qword_1003AFCE0, &qword_1002D5B00);
  swift_endAccess();
  v25 = v57;
  sub_100031DD8(v57, aBlock);
  sub_100005AD4(&qword_1003AC710, &unk_1002E7640);
  sub_10000A2CC(0, &unk_1003B9ED0, _LTTranslationResult_ptr);
  v26 = swift_dynamicCast();
  v27 = v58;
  if (v26)
  {
    v28 = v61;
    v29 = [v61 translations];

    sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v31 = *(v30 + 32);
        }

        v28 = v31;

        v32 = [v28 statistics];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 inputTokenCount];
          *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputTokenCount] = v34;
          v35 = [v33 inputSubtokenCount];

          *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputSubtokenCount] = v35;
        }

        v36 = [v28 senses];
        sub_10000A2CC(0, &qword_1003AEE80, _LTTranslationSense_ptr);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v37 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
LABEL_14:
            if ((v37 & 0xC000000000000001) == 0)
            {
              if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v38 = *(v37 + 32);
              goto LABEL_17;
            }

LABEL_33:
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
            v39 = v38;

            v40 = [v39 isPhrasebookMatch];

            if (v40)
            {
              v41 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_nBestDisplay;
            }

            else
            {
              v41 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_senseDisambiguation;
            }

            v11[*v41] = 1;
            goto LABEL_26;
          }
        }

        else
        {
          result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_26;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

LABEL_26:
  v42 = String._bridgeToObjectiveC()();
  v43 = swift_allocObject();
  *(v43 + 16) = v11;
  aBlock[4] = sub_100244270;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_10038AA70;
  v44 = _Block_copy(aBlock);
  v45 = v11;

  AnalyticsSendEventLazy();
  _Block_release(v44);

  v46 = v56;
  result = [v56 autodetectLanguage];
  if (result)
  {
    result = [v46 forcedOfflineTranslation];
    if ((result & 1) == 0)
    {
      v47 = *(v27 + 72);
      v48 = [v46 uniqueID];
      if (!v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = String._bridgeToObjectiveC()();
      }

      [v47 setRequestID:v48];

      v49 = [v46 sessionID];
      [v47 setConversationID:v49];

      v50 = [v46 localePair];
      [v47 setLocalePair:v50];

      sub_1000085CC(v25, v25[3]);
      v51 = v59;
      dispatch thunk of TranslationResult.locale.getter();
      v52 = Locale._bridgeToObjectiveC()().super.isa;
      v54(v51, v22);
      [v47 setTargetLocale:v52];

      [v47 setSelectedLocale:0];
      return [*(v27 + 40) log:v47];
    }
  }

  return result;
}

id *sub_100243F90()
{

  return v0;
}

uint64_t sub_100243FE0()
{
  sub_100243F90();

  return swift_deallocClassInstance();
}

uint64_t sub_100244038(uint64_t (*a1)(uint64_t))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 9; ; i += 5)
    {
      result = a1(&v4[i - 5]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v17 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_100031DD8(&v4[i], v16);
          v12 = a1(v16);
          result = sub_100008664(v16);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_100031DD8(&v4[5 * v1 + 4], v16);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_100031DD8(&v4[i], v15);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_1000A3980(v4);
              }

              v14 = &v4[5 * v1];
              sub_100008664(v14 + 4);
              result = sub_100051124(v15, (v14 + 4));
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              sub_100008664(&v4[i]);
              result = sub_100051124(v16, &v4[i]);
              *v17 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 5;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_100244238()
{

  return _swift_deallocObject(v0, 24);
}

double sub_100244294(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100244364(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100005AD4(&qword_1003BA240, &qword_1002EB118);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100005AD4(&qword_1003BA248, &qword_1002EB120);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100005AD4(&qword_1003BA250, &qword_1002EB128);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000085CC(a1, a1[3]);
  sub_100247FA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100247FF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100248048();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100244620(void *a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003BA1A8, &unk_1002EAD50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000085CC(a1, a1[3]);
  sub_100247684();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2 & 1;
  sub_10024772C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10024476C(uint64_t a1)
{
  v2 = sub_100246FF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002447A8(uint64_t a1)
{
  v2 = sub_100246FF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002447E4(void *a1)
{
  v2 = sub_100005AD4(&qword_1003BA180, &qword_1002EAD40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000085CC(a1, a1[3]);
  sub_100246FF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002448F8(uint64_t a1)
{
  v2 = sub_100248048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244934(uint64_t a1)
{
  v2 = sub_100248048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244970()
{
  if (*v0)
  {
    return 0x436C6F72746E6F63;
  }

  else
  {
    return 0x75426E6F69746361;
  }
}

uint64_t sub_1002449C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x436C6F72746E6F63 && a2 == 0xED00007265746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100244AA8(uint64_t a1)
{
  v2 = sub_100247FA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244AE4(uint64_t a1)
{
  v2 = sub_100247FA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244B20(uint64_t a1)
{
  v2 = sub_100247FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244B5C(uint64_t a1)
{
  v2 = sub_100247FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244B98@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002470D8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100244C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724F656372756F73 && a2 == 0xEC0000006E696769)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100244C90(uint64_t a1)
{
  v2 = sub_100247684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244CCC(uint64_t a1)
{
  v2 = sub_100247684();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244D08@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100247514(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

id sub_100244D54()
{
  result = [objc_allocWithZone(type metadata accessor for SpeechTranslationActivityManager()) init];
  qword_1003D2A98 = result;
  return result;
}

void sub_100244DDC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityPresentationOptions();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100005AD4(&qword_1003BA1C8, &unk_1002EAD80);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  sub_1002455CC(0);
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v46 = sub_1000078E8(v13, qword_1003D2818);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Requesting begin activity", v16, 2u);
  }

  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_100246E9C();
  sub_100246EF4();
  sub_100246F4C();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_100005AD4(&qword_1003B5888, &qword_1002EAD90);
  v18 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002D3160;
  (*(v19 + 104))(v21 + v20, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v18);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.isActionButtonInitiated.setter();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  sub_100005AD4(&qword_1003BA1D0, &qword_1002EAD98);
  LOBYTE(v47) = a1 & 1;
  v22 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)();
  v41 = v4;
  v23 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity] = v22;

  v24 = v2;
  v25 = v2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v42 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47 = v39;
    *v29 = 136446210;
    v40 = v23;
    if (!*&v25[v23])
    {
      goto LABEL_12;
    }

    v30 = v24;
    v31 = Activity.id.getter();
    v33 = v32;

    v34 = v31;
    v24 = v30;
    v35 = sub_10028D78C(v34, v33, &v47);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requested an activity successfully [id: %{public}s]", v29, 0xCu);
    sub_100008664(v39);

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
    v23 = v40;
  }

  else
  {

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
  }

  if (*&v42[v23])
  {

    v36 = Activity.id.getter();
    v38 = v37;

    sub_100245C88(v36, v38);

    return;
  }

  __break(1u);
LABEL_12:

  __break(1u);
}

double sub_1002455CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003BA1C0, &qword_1002EAD78);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for ActivityState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v51 - v16;
  if (a1)
  {
    v54 = v4;
  }

  else
  {
    if (!*(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity))
    {
      return result;
    }

    v54 = v4;
  }

  dispatch thunk of Activity.activityState.getter();
  (*(v11 + 104))(v14, enum case for ActivityState.dismissed(_:), v10);
  sub_1001A4874();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v17, v10);
  if (v18)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2818);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v21, v22))
    {

      return result;
    }

    v23 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = Activity.id.getter();
    v26 = sub_10028D78C(v24, v25, &v56);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    dispatch thunk of Activity.activityState.getter();
    v27 = String.init<A>(describing:)();
    v29 = sub_10028D78C(v27, v28, &v56);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Skipping end activity [id: %s activityState: %s] ", v23, 0x16u);
    swift_arrayDestroy();

    goto LABEL_25;
  }

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000078E8(v30, qword_1003D2818);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = v2;
    v34 = v33;
    v52 = swift_slowAlloc();
    v56 = v52;
    *v34 = 136315394;
    v35 = Activity.id.getter();
    v37 = sub_10028D78C(v35, v36, &v56);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    dispatch thunk of Activity.activityState.getter();
    v38 = String.init<A>(describing:)();
    v40 = sub_10028D78C(v38, v39, &v56);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Requesting end activity [id: %s activityState: %s]", v34, 0x16u);
    swift_arrayDestroy();

    v2 = v53;
  }

  v41 = Activity.id.getter();
  sub_100246A78(v41, v42);

  v43 = sub_100005AD4(&qword_1003BA1C8, &unk_1002EAD80);
  (*(*(v43 - 8) + 56))(v9, 1, 1, v43);
  static ActivityUIDismissalPolicy.immediate.getter();
  dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
  (*(v55 + 8))(v6, v54);
  sub_100009EBC(v9, &qword_1003BA1C0, &qword_1002EAD78);
  v44 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  if (!*(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity))
  {
    Activity.id.getter();
    goto LABEL_21;
  }

  v45 = Activity.id.getter();
  v47 = v46;

  v48 = Activity.id.getter();
  if (!v47)
  {
LABEL_21:

    goto LABEL_25;
  }

  if (v45 == v48 && v47 == v49)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      return result;
    }
  }

  *(v2 + v44) = 0;
LABEL_25:

  return result;
}

void sub_100245C88(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v88 = type metadata accessor for ActivityState();
  v90 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v79 - v10;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion;
  v12 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 sessionIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

LABEL_10:
      if (qword_1003A9258 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D2818);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not taking assertion as it is non-nil", v23, 2u);
      }

      goto LABEL_45;
    }

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v85 = v3;
    v24 = type metadata accessor for Logger();
    sub_1000078E8(v24, qword_1003D2818);
    v25 = v13;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v84 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = v83;
      *v28 = 136446466;
      v29 = [v25 sessionIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v82) = v27;
      v32 = v31;

      v33 = sub_10028D78C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_10028D78C(a1, a2, aBlock);
      v34 = v84;
      _os_log_impl(&_mh_execute_header, v84, v82, "Releasing assertion for other activity [id: %{public}s] in favour of new assertion for activity [id: %{public}s]", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v35 = [v25 sessionIdentifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    sub_100246A78(v36, v38);

    v4 = v85;
    if (*(v5 + v11))
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a1;
  v40[4] = a2;
  v41 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1002477F8;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10024704C;
  aBlock[3] = &unk_10038AB68;
  v44 = _Block_copy(aBlock);

  v45 = [v41 initWithExplanation:v42 sessionIdentifier:v43 invalidationHandler:v44];
  _Block_release(v44);

  if ([v45 state] == 1)
  {
    v46 = *(v5 + v11);
    *(v5 + v11) = v45;
    v47 = v45;

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000078E8(v48, qword_1003D2818);

    v21 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v51 + 12) = 2050;
      *(v51 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v49, v50, "Assertion acquired [id: %{public}s, assertion state %{public}lu]", v51, 0x16u);
      sub_100008664(v52);
    }

    else
    {
    }

LABEL_45:

    return;
  }

  v53 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);
  if (!v53)
  {
LABEL_39:
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000078E8(v73, qword_1003D2818);

    v21 = v45;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v76 + 12) = 2050;
      *(v76 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v74, v75, "Acquire assertion FAIL [id:%{public}s, assertion state %{public}lu]", v76, 0x16u);
      sub_100008664(v77);
    }

    else
    {
    }

    sub_10024781C();
    swift_allocError();
    *v78 = 0;
    v78[1] = 0;
    v78[2] = 1;
    swift_willThrow();
    goto LABEL_45;
  }

  v82 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  v83 = v5;
  v85 = v4;

  v54 = Activity.id.getter();
  v81 = a1;
  if (v54 == a1 && v55 == a2)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
LABEL_38:

      a1 = v81;
      goto LABEL_39;
    }
  }

  v57 = v86;
  dispatch thunk of Activity.activityState.getter();
  v84 = v53;
  v58 = v90;
  v59 = v87;
  v60 = v88;
  v80 = *(v90 + 104);
  v80(v87, enum case for ActivityState.dismissed(_:), v88);
  v61 = static ActivityState.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v59, v60);
  v90 = v58 + 8;
  v62(v57, v60);
  if ((v61 & 1) == 0)
  {
    v63 = v86;
    dispatch thunk of Activity.activityState.getter();
    v64 = v87;
    v65 = v88;
    v80(v87, enum case for ActivityState.ended(_:), v88);
    v66 = static ActivityState.== infix(_:_:)();
    v62(v64, v65);
    v62(v63, v65);
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000078E8(v67, qword_1003D2818);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v83;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Assertion acquisition failed due to activity having already ended", v72, 2u);
  }

  *(v71 + v82) = 0;
}

double sub_100246734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v15 = a1;
  swift_errorRetain();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v13;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v15;
  v17[8] = a2;

  sub_10005E36C(0, 0, v11, &unk_1002EAD68, v17);

  return result;
}

uint64_t sub_1002468F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100246994, v10, v9);
}

uint64_t sub_100246994()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002479A4(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_100246A78(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion;
  v6 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion);
  if (v6)
  {
    oslog = v6;
    [oslog invalidate];
    v7 = *(v2 + v5);
    *(v2 + v5) = 0;

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2818);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Assertion Released [id: %{public}s]", v11, 0xCu);
      sub_100008664(v12);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2818);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not releasing assertion for session [id: %{public}s] since assertion is nil", v15, 0xCu);
      sub_100008664(v16);

      goto LABEL_10;
    }
  }
}

id sub_100246D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechTranslationActivityManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100246DEC()
{
  result = qword_1003BA150;
  if (!qword_1003BA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA150);
  }

  return result;
}

unint64_t sub_100246E44()
{
  result = qword_1003BA158;
  if (!qword_1003BA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA158);
  }

  return result;
}

unint64_t sub_100246E9C()
{
  result = qword_1003BA160;
  if (!qword_1003BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA160);
  }

  return result;
}

unint64_t sub_100246EF4()
{
  result = qword_1003BA168;
  if (!qword_1003BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA168);
  }

  return result;
}

unint64_t sub_100246F4C()
{
  result = qword_1003BA170;
  if (!qword_1003BA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA170);
  }

  return result;
}

unint64_t sub_100246FA4()
{
  result = qword_1003BA178;
  if (!qword_1003BA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA178);
  }

  return result;
}

unint64_t sub_100246FF8()
{
  result = qword_1003BA188;
  if (!qword_1003BA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA188);
  }

  return result;
}

void sub_10024704C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1002470D8(void *a1)
{
  v24 = sub_100005AD4(&qword_1003BA208, &qword_1002EB0F8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_100005AD4(&qword_1003BA210, &qword_1002EB100);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_100005AD4(&qword_1003BA218, &qword_1002EB108);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1000085CC(a1, a1[3]);
  sub_100247FA0();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100008664(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_100005AD4(&qword_1003BA228, &qword_1002EB110);
    *v18 = &type metadata for SpeechTranslationActivityAttributes.LiveActivitySourceOrigin;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100008664(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100247FF4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_100248048();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100008664(v26);
  return v27;
}

void *sub_100247514(void *a1)
{
  v3 = sub_100005AD4(&qword_1003BA190, &qword_1002EAD48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000085CC(a1, a1[3]);
  sub_100247684();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008664(a1);
  }

  else
  {
    sub_1002476D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100008664(a1);
  }

  return v7;
}

unint64_t sub_100247684()
{
  result = qword_1003BA198;
  if (!qword_1003BA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA198);
  }

  return result;
}

unint64_t sub_1002476D8()
{
  result = qword_1003BA1A0;
  if (!qword_1003BA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1A0);
  }

  return result;
}

unint64_t sub_10024772C()
{
  result = qword_1003BA1B0;
  if (!qword_1003BA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1B0);
  }

  return result;
}

uint64_t sub_100247780()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002477B8()
{

  return _swift_deallocObject(v0, 40);
}

double sub_100247804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10024781C()
{
  result = qword_1003BA1B8;
  if (!qword_1003BA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1B8);
  }

  return result;
}

uint64_t sub_100247870()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1002478C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001B16C;

  return sub_1002468F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1002479A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D2818);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = v16;
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10028D78C(v17, a2, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [id: %{public}s]", v15, 0xCu);
    sub_100008664(v21);
    a4 = v20;
    a5 = v19;
    a6 = v18;
  }

  if (a3 == 2)
  {
    v22 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v22 = 7;
  }

  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = a4;
  }

  sub_10024781C();
  swift_allocError();
  *v24 = a3;
  v24[1] = v23;
  v24[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Assertion invalidation reason: %@", v26, 0xCu);
    sub_100009EBC(v27, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }
}

uint64_t sub_100247D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100247D94()
{
  result = qword_1003BA1D8;
  if (!qword_1003BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1D8);
  }

  return result;
}

unint64_t sub_100247DEC()
{
  result = qword_1003BA1E0;
  if (!qword_1003BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1E0);
  }

  return result;
}

unint64_t sub_100247E44()
{
  result = qword_1003BA1E8;
  if (!qword_1003BA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1E8);
  }

  return result;
}

unint64_t sub_100247E9C()
{
  result = qword_1003BA1F0;
  if (!qword_1003BA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1F0);
  }

  return result;
}

unint64_t sub_100247EF4()
{
  result = qword_1003BA1F8;
  if (!qword_1003BA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1F8);
  }

  return result;
}

unint64_t sub_100247F4C()
{
  result = qword_1003BA200;
  if (!qword_1003BA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA200);
  }

  return result;
}

unint64_t sub_100247FA0()
{
  result = qword_1003BA220;
  if (!qword_1003BA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA220);
  }

  return result;
}

unint64_t sub_100247FF4()
{
  result = qword_1003BA230;
  if (!qword_1003BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA230);
  }

  return result;
}

unint64_t sub_100248048()
{
  result = qword_1003BA238;
  if (!qword_1003BA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA238);
  }

  return result;
}

unint64_t sub_1002480D0()
{
  result = qword_1003BA258;
  if (!qword_1003BA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA258);
  }

  return result;
}

unint64_t sub_100248128()
{
  result = qword_1003BA260;
  if (!qword_1003BA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA260);
  }

  return result;
}

unint64_t sub_100248180()
{
  result = qword_1003BA268;
  if (!qword_1003BA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA268);
  }

  return result;
}

unint64_t sub_1002481D8()
{
  result = qword_1003BA270;
  if (!qword_1003BA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA270);
  }

  return result;
}

unint64_t sub_100248230()
{
  result = qword_1003BA278;
  if (!qword_1003BA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA278);
  }

  return result;
}

unint64_t sub_100248288()
{
  result = qword_1003BA280;
  if (!qword_1003BA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA280);
  }

  return result;
}

unint64_t sub_1002482E0()
{
  result = qword_1003BA288;
  if (!qword_1003BA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA288);
  }

  return result;
}

double sub_100248398(uint64_t a1)
{
  v3 = type metadata accessor for LiveActivityView(0);
  __chkstk_darwin(v3 - 8);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode) = a1;
  if (a1 != 4 && v7 == 4)
  {
    dispatch thunk of UIHostingController.rootView.getter();
    v8 = v6[1];
    v11[2] = *v6;
    v11[3] = v8;
    sub_100005AD4(&qword_1003B3878, &unk_1002EB430);
    State.wrappedValue.getter();
    sub_1002495DC(v6, type metadata accessor for LiveActivityView);
    v9 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity;

    sub_10015C420(v10);

    *(v1 + v9) = 0;
  }

  return result;
}

char *sub_10024864C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for LiveActivityView(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_preferredLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_presentationBehaviors] = 8;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_maximumLayoutMode] = 4;
  v11 = &v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_associatedScenePersistenceIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_leadingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_trailingView;
  *&v4[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_minimalView;
  *&v4[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController;
  type metadata accessor for LiveActivityViewModel(0);
  swift_allocObject();
  v29 = sub_10015A1D8();
  State.init(wrappedValue:)();
  v17 = v31;
  *v10 = v30;
  v10[1] = v17;
  v18 = *(v8 + 28);
  *(v10 + v18) = swift_getKeyPath();
  sub_100005AD4(&qword_1003BA370, &unk_1002DFA90);
  swift_storeEnumTagMultiPayload();
  v19 = objc_allocWithZone(sub_100005AD4(&qword_1003BA378, &qword_1002EB498));
  *&v4[v16] = SecureHostingController.init(rootView:)();
  if (a2)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for SpeechTranslationApertureElementViewController();
  v28.receiver = v4;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v20, a3);

  v23 = qword_1003A9308;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1003D2A98;

  *&v24[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity] = *(v25 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);

  return v24;
}

void sub_100248998()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2);
  v44.receiver = v0;
  v44.super_class = type metadata accessor for SpeechTranslationApertureElementViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController];
  sub_100005AD4(&unk_1003BA350, qword_1002EB440);
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001A6C24(&qword_1003B5AB0, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_100005AD4(&unk_1003BA360, &unk_1002E4DA0);
  sub_1001A16AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  [v0 addChildViewController:v3];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v3 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v5 addSubview:v6];

  v8 = [v3 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v3 didMoveToParentViewController:v1];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002D53E0;
  v11 = [v3 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v10 + 32) = v17;
  v18 = [v3 view];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v10 + 40) = v24;
  v25 = [v3 view];
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v10 + 48) = v31;
  v32 = [v3 view];
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v10 + 56) = v39;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    sub_100005AD4(&qword_1003AFCD0, &unk_1002DC350);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1002D3160;
    *(v43 + 32) = type metadata accessor for UITraitBacklightLuminance();
    *(v43 + 40) = &protocol witness table for UITraitBacklightLuminance;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005AD4(&qword_1003AFCD8, &unk_1002DC360);
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    return;
  }

LABEL_25:
  __break(1u);
}