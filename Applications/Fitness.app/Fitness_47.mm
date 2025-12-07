NSString sub_100545E64()
{
  result = String._bridgeToObjectiveC()();
  qword_100925E00 = result;
  return result;
}

double sub_100545EF0(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E5718, &unk_1006E3CB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInteractive(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  sub_10054673C(v23, v9);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  sub_1005467AC(v9, v16 + v15);
  aBlock[4] = sub_10054681C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085FDA8;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v20);
  (*(v26 + 8))(v5, v27);

  return result;
}

void sub_100546404(uint64_t a1)
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1008DAD60 != -1)
  {
    swift_once();
  }

  v2 = qword_100925E00;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v1 postNotificationName:v2 object:Strong];
}

id sub_100546628(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrendsAvailabilityManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005466E0()
{
  result = qword_1008F2648;
  if (!qword_1008F2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2648);
  }

  return result;
}

uint64_t sub_10054673C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5718, &unk_1006E3CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005467AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5718, &unk_1006E3CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LoadTypeScrollView(uint64_t a1)
{
  result = qword_1008F26A8;
  if (!qword_1008F26A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005468C8(uint64_t a1)
{
  type metadata accessor for TrainingLoadViewModel();
  if (v1 <= 0x3F)
  {
    sub_1005469C4(319, &qword_1008F03A0, &type metadata accessor for TrainingLoadDataType, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1005469C4(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005469C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100546A44(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for ScrollIndicatorVisibility();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F26E8, &qword_1006F93A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  static Axis.Set.horizontal.getter();
  v17 = a2;
  v18 = a1;
  sub_100140278(&qword_1008F26F0, &qword_1006F93B0);
  sub_100548EEC();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100140278(&qword_1008E0960, &qword_1006F93C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v12 = static Axis.Set.vertical.getter();
  *(inited + 32) = v12;
  v13 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v13;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v12)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v13)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10014A6B0(&qword_1008F2710, &qword_1008F26E8, &qword_1006F93A8, &protocol conformance descriptor for ScrollView<A>);
  View.scrollIndicators(_:axes:)();
  (*(v4 + 8))(v6, v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100546D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100140278(&qword_1008F2718, &qword_1006F93C8);
  sub_100546DD0(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_100140278(&qword_1008F26F0, &qword_1006F93B0);
  v16 = a3 + *(result + 36);
  *v16 = a2;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_100546DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = a2;
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TypeScrollView = type metadata accessor for LoadTypeScrollView(0);
  v9 = TypeScrollView - 8;
  v33 = *(TypeScrollView - 8);
  __chkstk_darwin(TypeScrollView);
  v34 = v10;
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + *(v9 + 32);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {
    v31 = v14;

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v32 = v7;
    v22 = v4;
    v23 = v21;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v4 = v22;
    v7 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000A73A4(v18, 0);
    (*(v13 + 8))(v16, v31, v24);
    v19 = v37;
  }

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.viewModels.getter();

  v37 = ViewModel;
  swift_getKeyPath();
  sub_1005496D8(a1, v11, type metadata accessor for LoadTypeScrollView);
  (*(v5 + 16))(v7, v36, v4);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = (v34 + *(v5 + 80) + v26) & ~*(v5 + 80);
  v28 = swift_allocObject();
  sub_100548E00(v11, v28 + v26);
  (*(v5 + 32))(v28 + v27, v7, v4);
  sub_100140278(&qword_1008F09C8, &qword_1006F9400);
  sub_100140278(&qword_1008F2720, &qword_1006F9408);
  sub_10014A6B0(&qword_1008F09D0, &qword_1008F09C8, &qword_1006F9400, &protocol conformance descriptor for [A]);
  sub_100549620(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
  sub_100549088();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10054721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v125 = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v121 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v117 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v89 - v8;
  v124 = type metadata accessor for AccessibilityTraits();
  v118 = *(v124 - 8);
  v119 = v124 - 8;
  v111 = v118;
  __chkstk_darwin(v124 - 8);
  v123 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for AccessibilityChildBehavior();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ScrollViewProxy();
  v127 = *(v106 - 8);
  v107 = *(v127 + 64);
  __chkstk_darwin(v106);
  v104 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v126 = *(ViewModel - 8);
  v103 = *(v126 + 64);
  __chkstk_darwin(ViewModel);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TypeScrollView = type metadata accessor for LoadTypeScrollView(0);
  v14 = *(TypeScrollView - 8);
  v108 = TypeScrollView - 8;
  v101 = v14;
  v99 = *(v14 + 64);
  __chkstk_darwin(TypeScrollView - 8);
  v97 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&qword_1008F2748, &qword_1006F9420);
  v93 = v20;
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  v96 = sub_100140278(&qword_1008F2740, &qword_1006F9418);
  v105 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = &v89 - v23;
  v116 = sub_100140278(&qword_1008F27B8, &qword_1006F9460);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v95 = &v89 - v24;
  v25 = sub_100140278(&qword_1008F2738, &qword_1006F9410);
  __chkstk_darwin(v25 - 8);
  v120 = &v89 - v26;
  v91 = static VerticalAlignment.center.getter();
  LOBYTE(v128) = 0;
  sub_100547FEC(a1, v132);
  *&v130[7] = v132[0];
  *&v130[23] = v132[1];
  *&v130[39] = v132[2];
  *&v130[55] = v132[3];
  v90 = v128;
  (*(v17 + 104))(v19, enum case for Font.TextStyle.footnote(_:), v16);
  static Font.Weight.bold.getter();
  v89 = static Font.system(_:weight:)();
  (*(v17 + 8))(v19, v16);
  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v131 = 0;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v128) = 0;
  v44 = static Alignment.center.getter();
  v46 = v45;
  v47 = (v22 + *(v20 + 36));
  v92 = a1;
  v94 = a2;
  sub_100548424(v47);
  v48 = (v47 + *(sub_100140278(&qword_1008F27A0, &unk_1006F9450) + 36));
  *v48 = v44;
  v48[1] = v46;
  v49 = *&v130[16];
  *(v22 + 17) = *v130;
  *(v22 + 80) = *&v130[63];
  *(v22 + 88) = KeyPath;
  v50 = *&v130[32];
  *(v22 + 65) = *&v130[48];
  *(v22 + 49) = v50;
  *v22 = v91;
  *(v22 + 8) = 0x4010000000000000;
  *(v22 + 16) = v90;
  *(v22 + 33) = v49;
  *(v22 + 96) = v89;
  *(v22 + 104) = v19;
  *(v22 + 112) = v29;
  *(v22 + 120) = v31;
  *(v22 + 128) = v33;
  *(v22 + 136) = v35;
  *(v22 + 144) = 0;
  *(v22 + 152) = v17;
  *(v22 + 160) = v37;
  *(v22 + 168) = v39;
  *(v22 + 176) = v41;
  *(v22 + 184) = v43;
  *(v22 + 192) = 0;
  v51 = v97;
  sub_1005496D8(a2, v97, type metadata accessor for LoadTypeScrollView);
  v52 = v126;
  v53 = v100;
  v54 = ViewModel;
  (*(v126 + 16))(v100, a1, ViewModel);
  v55 = v127;
  v56 = v104;
  v57 = v106;
  (*(v127 + 16))(v104, v110, v106);
  v58 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v59 = (v99 + *(v52 + 80) + v58) & ~*(v52 + 80);
  v60 = (v103 + *(v55 + 80) + v59) & ~*(v55 + 80);
  v61 = swift_allocObject();
  sub_100548E00(v51, v61 + v58);
  (*(v126 + 32))(v61 + v59, v53, v54);
  v62 = v61 + v60;
  v63 = v111;
  (*(v127 + 32))(v62, v56, v57);
  v64 = sub_10054927C();
  v65 = v98;
  v66 = v93;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v22, &qword_1008F2748, &qword_1006F9420);
  v67 = v109;
  static AccessibilityChildBehavior.combine.getter();
  v128 = v66;
  v129 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v95;
  v70 = v96;
  View.accessibilityElement(children:)();
  (*(v112 + 8))(v67, v113);
  (*(v105 + 8))(v65, v70);
  v71 = v114;
  TrainingLoadViewModel.dataType.getter();
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  v72 = v117;
  Binding.wrappedValue.getter();
  v73 = v72;
  LOBYTE(v22) = static TrainingLoadDataType.== infix(_:_:)();
  v74 = *(v121 + 8);
  v75 = v73;
  v76 = DataType;
  v74(v75, DataType);
  v74(v71, v76);
  sub_100140278(&qword_1008F27C0, &qword_1006F9498);
  if (v22)
  {
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1006D1F70;
    static AccessibilityTraits.isSelected.getter();
  }

  else
  {
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1006D46C0;
  }

  static AccessibilityTraits.isButton.getter();
  v128 = v77;
  sub_100549620(&qword_1008F27C8, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100140278(&qword_1008F27D0, &qword_1006F94A0);
  sub_10014A6B0(&qword_1008F27D8, &qword_1008F27D0, &qword_1006F94A0, &protocol conformance descriptor for [A]);
  v78 = v123;
  v79 = v124;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v128 = v70;
  v129 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v80 = v120;
  v81 = v116;
  View.accessibilityAddTraits(_:)();
  (*(v63 + 8))(v78, v79);
  (*(v115 + 8))(v69, v81);
  v82 = sub_100140278(&qword_1008F2720, &qword_1006F9408);
  v83 = v125;
  v84 = v125 + *(v82 + 36);
  v85 = sub_100140278(&qword_1008F27B0, &qword_100703930);
  static ContentShapeKinds.accessibility.getter();
  v86 = enum case for RoundedCornerStyle.continuous(_:);
  v87 = type metadata accessor for RoundedCornerStyle();
  (*(*(v87 - 8) + 104))(v84, v86, v87);
  *(v84 + *(v85 + 36)) = 0;
  return sub_100015E80(v80, v83, &qword_1008F2738, &qword_1006F9410);
}

uint64_t sub_100547FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F2808, &qword_1006F94D0);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  View = TrainingLoadViewModel.localizedName()();
  v49[1] = sub_10000FCBC();
  v50 = Text.init<A>(_:)();
  v51 = v14;
  v16 = v15;
  v18 = v17;
  v53 = a1;
  TrainingLoadViewModel.dataType.getter();
  type metadata accessor for LoadTypeScrollView(0);
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.getter();
  LOBYTE(a1) = static TrainingLoadDataType.== infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v10, DataType);
  v19(v13, DataType);
  if (a1)
  {
    v20 = static Color.white.getter();
  }

  else
  {
    v21 = [objc_opt_self() secondaryLabelColor];
    v20 = Color.init(_:)();
  }

  View._countAndFlagsBits = v20;
  v22 = v50;
  v23 = Text.foregroundStyle<A>(_:)();
  v52 = v24;
  v26 = v25;
  v28 = v27;
  sub_10004642C(v22, v16, v18 & 1);

  TrainingLoadViewModel.loadBandToday()();
  Band = type metadata accessor for TrainingLoadBand();
  v30 = (*(*(Band - 8) + 48))(v6, 1, Band);
  sub_10000EA04(v6, &qword_1008F2808, &qword_1006F94D0);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (v30 != 1)
  {
    View = TrainingLoadViewModel.loadPercentageToday()();
    v35 = Text.init<A>(_:)();
    v37 = v36;
    v51 = v23;
    v39 = v38;
    LODWORD(v50) = v26;
    v40 = TrainingLoadViewModel.loadBandTodayColor()();
    v53 = v28;
    View._countAndFlagsBits = v40;
    v31 = Text.foregroundStyle<A>(_:)();
    v32 = v41;
    v43 = v42;
    v34 = v44;
    v45 = v39 & 1;
    v23 = v51;
    sub_10004642C(v35, v37, v45);
    v28 = v53;

    LOBYTE(v26) = v50;

    v33 = v43 & 1;
    sub_10006965C(v31, v32, v43 & 1);
  }

  v46 = v26 & 1;
  v47 = v52;
  sub_10006965C(v23, v52, v46);

  sub_1001E53F8(v31, v32, v33, v34);
  sub_1001E543C(v31, v32, v33, v34);
  LOBYTE(View._countAndFlagsBits) = v46;
  *a2 = v23;
  *(a2 + 8) = v47;
  *(a2 + 16) = v46;
  *(a2 + 24) = v28;
  *(a2 + 32) = v31;
  *(a2 + 40) = v32;
  *(a2 + 48) = v33;
  *(a2 + 56) = v34;
  sub_1001E543C(v31, v32, v33, v34);
  sub_10004642C(v23, v47, v46);
}

uint64_t sub_100548424@<X0>(void *a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for RoundedCornerStyle();
  v53 = *(v1 - 8);
  __chkstk_darwin(v1);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100140278(&qword_1008F27E0, &qword_1006F94A8);
  __chkstk_darwin(v58);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v49 - v5;
  v54 = sub_100140278(&qword_1008F27E8, &unk_1006F94B0);
  __chkstk_darwin(v54);
  v55 = &v49 - v6;
  v57 = sub_100140278(&qword_1008E2B20, &unk_1006EBF00);
  __chkstk_darwin(v57);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  DataType = type metadata accessor for TrainingLoadDataType();
  v16 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  TrainingLoadViewModel.dataType.getter();
  type metadata accessor for LoadTypeScrollView(0);
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.getter();
  v22 = static TrainingLoadDataType.== infix(_:_:)();
  v23 = *(v16 + 8);
  v23(v18, DataType);
  v23(v21, DataType);
  v24 = v53;
  v25 = *(v53 + 104);
  if (v22)
  {
    v25(v14, enum case for RoundedCornerStyle.continuous(_:), v1);
    v26 = [objc_opt_self() tertiarySystemBackgroundColor];
    v27 = Color.init(_:)();
    v28 = v57;
    *&v14[*(v57 + 52)] = v27;
    *&v14[*(v28 + 56)] = 256;
    sub_100549668(v14, v55);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F27F8, &qword_1008E2B20, &unk_1006EBF00, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10014A6B0(&qword_1008F2800, &qword_1008F27E0, &qword_1006F94A8, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v14, &qword_1008E2B20, &unk_1006EBF00);
  }

  else
  {
    v25(v11, enum case for RoundedCornerStyle.continuous(_:), v1);
    v30 = static Color.clear.getter();
    v31 = v57;
    *&v11[*(v57 + 52)] = v30;
    *&v11[*(v31 + 56)] = 256;
    v32 = [objc_opt_self() tertiarySystemBackgroundColor];
    v49 = Color.init(_:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    sub_100549668(v11, v8);
    v33 = v51;
    sub_1005496D8(v11, v51, &type metadata accessor for Capsule);
    v34 = v50;
    v25(v50, enum case for RoundedCornerStyle.circular(_:), v1);
    v35 = static RoundedCornerStyle.== infix(_:_:)();
    (*(v24 + 8))(v34, v1);
    v36 = v59;
    v37 = v61;
    v38 = COERCE_UNSIGNED_INT64(v59 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v35 & 1) == 0);
    v39 = v62;
    v40 = v63;
    v41 = v33 + *(v58 + 68);
    v42 = v41 + *(sub_100140278(&qword_1008F27F0, &unk_1006F94C0) + 36);
    sub_100549668(v8, v42);
    v43 = static Alignment.center.getter();
    v45 = v44;
    sub_10000EA04(v8, &qword_1008E2B20, &unk_1006EBF00);
    sub_10000EA04(v11, &qword_1008E2B20, &unk_1006EBF00);
    v46 = (v42 + *(sub_100140278(&qword_1008EA748, &qword_1006EBEF8) + 36));
    *v46 = v43;
    v46[1] = v45;
    *v41 = v38;
    v47 = v60;
    *(v41 + 8) = v36;
    *(v41 + 16) = v47;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = v40;
    *(v41 + 48) = v49;
    *(v41 + 56) = 256;
    v48 = v52;
    sub_100015E80(v33, v52, &qword_1008F27E0, &qword_1006F94A8);
    sub_10009D580(v48, v55);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F27F8, &qword_1008E2B20, &unk_1006EBF00, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10014A6B0(&qword_1008F2800, &qword_1008F27E0, &qword_1006F94A8, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v48, &qword_1008F27E0, &qword_1006F94A8);
  }
}

uint64_t sub_100548B3C()
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v1 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  TrainingLoadViewModel.dataType.getter();
  type metadata accessor for LoadTypeScrollView(0);
  (*(v1 + 16))(v3, v6, DataType);
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.setter();
  v7 = *(v1 + 8);
  v7(v6, DataType);
  TrainingLoadViewModel.dataType.getter();
  sub_100549620(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (v7)(v6, DataType);
}

uint64_t sub_100548D00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1005496D8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadTypeScrollView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100548E00(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100548E64;
  a2[1] = v7;
  return result;
}

uint64_t sub_100548E00(uint64_t a1, uint64_t a2)
{
  TypeScrollView = type metadata accessor for LoadTypeScrollView(0);
  (*(*(TypeScrollView - 8) + 32))(a2, a1, TypeScrollView);
  return a2;
}

uint64_t sub_100548E64(uint64_t a1)
{
  v3 = *(type metadata accessor for LoadTypeScrollView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100546A44(a1, v4);
}

unint64_t sub_100548EEC()
{
  result = qword_1008F26F8;
  if (!qword_1008F26F8)
  {
    sub_100141EEC(&qword_1008F26F0, &qword_1006F93B0);
    sub_10014A6B0(&qword_1008F2700, &qword_1008F2708, &qword_1006F93B8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F26F8);
  }

  return result;
}

uint64_t sub_100548FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LoadTypeScrollView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ScrollViewProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10054721C(a1, v2 + v6, v9, a2);
}

unint64_t sub_100549088()
{
  result = qword_1008F2728;
  if (!qword_1008F2728)
  {
    sub_100141EEC(&qword_1008F2720, &qword_1006F9408);
    sub_100549140();
    sub_10014A6B0(&qword_1008F27A8, &qword_1008F27B0, &qword_100703930, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2728);
  }

  return result;
}

unint64_t sub_100549140()
{
  result = qword_1008F2730;
  if (!qword_1008F2730)
  {
    sub_100141EEC(&qword_1008F2738, &qword_1006F9410);
    sub_100141EEC(&qword_1008F2740, &qword_1006F9418);
    sub_100141EEC(&qword_1008F2748, &qword_1006F9420);
    sub_10054927C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100549620(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2730);
  }

  return result;
}

unint64_t sub_10054927C()
{
  result = qword_1008F2750;
  if (!qword_1008F2750)
  {
    sub_100141EEC(&qword_1008F2748, &qword_1006F9420);
    sub_100549360(&qword_1008F2758, &qword_1008F2760, &qword_1006F9428, sub_1005493E4);
    sub_10014A6B0(&qword_1008F2798, &qword_1008F27A0, &unk_1006F9450, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2750);
  }

  return result;
}

uint64_t sub_100549360(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100549414()
{
  result = qword_1008F2778;
  if (!qword_1008F2778)
  {
    sub_100141EEC(&qword_1008F2780, &qword_1006F9438);
    sub_10014A6B0(&qword_1008F2788, &qword_1008F2790, &unk_1006F9440, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2778);
  }

  return result;
}

uint64_t sub_1005494F8()
{
  type metadata accessor for LoadTypeScrollView(0);
  type metadata accessor for TrainingLoadViewModel();
  type metadata accessor for ScrollViewProxy();

  return sub_100548B3C();
}

uint64_t sub_100549620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100549668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E2B20, &unk_1006EBF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005496D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100549740(void *a1, double a2)
{
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D4E70;
  *(v4 + 32) = CNContactThumbnailImageDataKey;
  v5 = CNContactThumbnailImageDataKey;
  if ([a1 isMe])
  {
    if (qword_1008DAD68 != -1)
    {
      swift_once();
    }

    v6 = qword_1008F2820;
    sub_100140278(&unk_1008E53F0, &qword_1006ED3B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v36 = 0;
    v8 = [v6 _ios_meContactWithKeysToFetch:isa error:&v36];

    v9 = v36;
    if (v8)
    {
LABEL_5:
      v10 = v9;
      v11 = v8;
      v12 = sub_100549ED0(v11, a2);

      return v12;
    }

LABEL_11:
    v18 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogActivity;
    v21 = os_log_type_enabled(HKLogActivity, v19);
    if (v21)
    {
      v22 = v20;
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10000AFDC(v24, v25, &v36);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = [a1 isMe];
      v28 = v27 == 0;
      if (v27)
      {
        v29 = 2123117;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = sub_10000AFDC(v29, v30, &v36);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_10000AFDC(v32, v33, &v36);

      *(v23 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v22, v19, "%s failed to fetch %scontact: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    v12 = sub_100549D50(v21, a2);

    return v12;
  }

  result = [a1 contact];
  if (result)
  {
    v14 = result;
    v15 = [result linkedContactStoreIdentifier];

    if (v15)
    {
      if (qword_1008DAD68 != -1)
      {
        swift_once();
      }

      v16 = qword_1008F2820;
      sub_100140278(&unk_1008E53F0, &qword_1006ED3B0);
      v17 = Array._bridgeToObjectiveC()().super.isa;

      v36 = 0;
      v8 = [v16 unifiedContactWithIdentifier:v15 keysToFetch:v17 error:&v36];

      v9 = v36;
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    return sub_100549D50(v35, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100549BB4()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_1008F2820 = result;
  return result;
}

void sub_100549BE8()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v0];

  qword_1008F2828 = v1;
}

id sub_100549CF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingAvatarProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100549D50(uint64_t a1, double a2)
{
  IsRightToLeft = FIUILocaleIsRightToLeft();
  v4 = objc_opt_self();
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 scopeWithPointSize:IsRightToLeft scale:0 rightToLeft:a2 style:{a2, v7}];
  if (qword_1008DAD70 != -1)
  {
    swift_once();
  }

  v9 = [qword_1008F2828 placeholderImageProvider];
  [v8 pointSize];
  v11 = v10;
  v13 = v12;
  [v8 scale];
  v15 = [v9 imageForSize:objc_msgSend(v8 scale:"avatarViewStyle") style:{v11, v13, v14}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

id sub_100549ED0(void *a1, double a2)
{
  IsRightToLeft = FIUILocaleIsRightToLeft();
  v5 = objc_opt_self();
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 scopeWithPointSize:IsRightToLeft scale:0 rightToLeft:a2 style:{a2, v8}];
  if (qword_1008DAD70 != -1)
  {
    swift_once();
  }

  v10 = qword_1008F2828;
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006D4E70;
  *(v11 + 32) = a1;
  sub_10054A054();
  v12 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v10 avatarImageForContacts:isa scope:v9];
  swift_unknownObjectRelease();

  return v14;
}

unint64_t sub_10054A054()
{
  result = qword_1008F8670;
  if (!qword_1008F8670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008F8670);
  }

  return result;
}

uint64_t sub_10054A0C8()
{
  v0 = sub_100140278(&qword_1008DC638, &qword_1006D7350);
  sub_100163368(v0, qword_100925E08);
  sub_10001AC90(v0, qword_100925E08);
  type metadata accessor for TrainingLoadTrackingTip(0);
  FIIsTinkerVegaOrFitnessJunior();
  sub_100140278(&qword_1008EBCD8, &unk_1006F95E0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10054A22C()
{
  v0 = sub_100140278(&qword_1008DC638, &qword_1006D7350);
  sub_100163368(v0, qword_100925E20);
  sub_10001AC90(v0, qword_100925E20);
  type metadata accessor for TrainingLoadTrackingTip(0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10054A2E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  LOBYTE(v2) = v6;
  v7 = Text.foregroundStyle<A>(_:)();
  sub_10004642C(v3, v5, v2 & 1);

  return v7;
}

uint64_t sub_10054A42C()
{
  v0 = sub_100140278(&qword_1008DC638, &qword_1006D7350);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DAD78 != -1)
  {
    swift_once();
  }

  v8 = sub_10001AC90(v0, qword_100925E08);
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_1008DAD80 != -1)
  {
    swift_once();
  }

  v11 = sub_10001AC90(v0, qword_100925E20);
  swift_beginAccess();
  v9(v3, v11, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v12 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v12;
}

uint64_t sub_10054A734@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v14 = a2;
  v4 = sub_100140278(&qword_1008EBC98, &unk_1006EDDA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_100140278(&qword_1008EBCA0, &unk_1006F95D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10014A6B0(&qword_1008EBCA8, &qword_1008EBCA0, &unk_1006F95D0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v15 = v14;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_100140278(&qword_1008EBCB0, &unk_1006EDDB0);
  a3[4] = sub_1003D9A14();
  sub_100005994(a3);
  sub_10014A6B0(&qword_1008EBCD0, &qword_1008EBC98, &unk_1006EDDA0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_10054AA78()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_100140278(&qword_1008EBCE0, &qword_1006EDDC0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1003D9D48(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_10054AC38@<X0>(uint64_t *a2@<X8>)
{
  sub_10054ACC8(&qword_1008EE7E8, &unk_1006F9570);
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10054ACC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrainingLoadTrackingTip(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10054AD1C()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(36);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._object = 0x8000000100748B30;
  v4._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v4);
  return 91;
}

unint64_t sub_10054ADA8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100140278(&qword_1008DD8E0, &unk_1006E56B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;

  *(inited + 32) = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v4;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v5 = sub_1002FC244(inited);
  swift_setDeallocating();
  sub_10054AE7C(inited + 32);
  return v5;
}

uint64_t sub_10054AE4C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10054AE7C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DD8E8, &unk_1006D6790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LoadDetailsChartView(uint64_t a1)
{
  result = qword_1008F2948;
  if (!qword_1008F2948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054AF58(uint64_t a1)
{
  type metadata accessor for TrainingLoadViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GregorianDayRange();
    if (v2 <= 0x3F)
    {
      sub_1001EA3F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10054B018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v191 = a2;
  v3 = sub_100140278(&qword_1008F0A00, &qword_1006F9700);
  __chkstk_darwin(v3 - 8);
  v189 = &v168 - v4;
  v5 = type metadata accessor for TrainingLoadChart.Configuration();
  __chkstk_darwin(v5 - 8);
  v187 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_100140278(&qword_1008F0A08, &qword_1006F5C70);
  __chkstk_darwin(v188);
  v190 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v199 = &v168 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v169 = *(v10 - 8);
  v170 = v10;
  __chkstk_darwin(v10);
  v168 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v185 = *(DataType - 8);
  v186 = DataType;
  __chkstk_darwin(DataType);
  v184 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v183 = &v168 - v15;
  v193 = type metadata accessor for Font.Leading();
  v200 = *(v193 - 8);
  __chkstk_darwin(v193);
  v192 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v17 - 8);
  *(&v197 + 1) = &v168 - v18;
  v19 = type metadata accessor for Font.TextStyle();
  v196 = *(v19 - 8);
  *&v197 = v19;
  __chkstk_darwin(v19);
  v195 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for AccessibilityTraits();
  v173 = *(v182 - 1);
  v175 = v173;
  __chkstk_darwin(v182);
  v181 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v172 - 8);
  __chkstk_darwin(v172);
  v24 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100140278(&qword_1008F2990, &qword_1006F9708);
  __chkstk_darwin(v25);
  v27 = &v168 - v26;
  v177 = sub_100140278(&qword_1008F2998, &qword_1006F9710);
  v179 = *(v177 - 8);
  __chkstk_darwin(v177);
  v29 = &v168 - v28;
  v30 = sub_100140278(&qword_1008F29A0, &qword_1006F9718);
  __chkstk_darwin(v30 - 8);
  v174 = &v168 - v31;
  v171 = sub_100140278(&qword_1008F29A8, &qword_1006F9720) - 8;
  __chkstk_darwin(v171);
  v176 = &v168 - v32;
  v180 = sub_100140278(&qword_1008F29B0, &qword_1006F9728) - 8;
  __chkstk_darwin(v180);
  v198 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v178 = &v168 - v35;
  __chkstk_darwin(v36);
  v201 = &v168 - v37;
  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v38 = sub_100140278(&qword_1008F29B8, &qword_1006F9730);
  sub_10054C6D4(a1, &v27[*(v38 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v39 = sub_10014A6B0(&qword_1008F29C0, &qword_1008F2990, &qword_1006F9708, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v172);
  sub_10000EA04(v27, &qword_1008F2990, &qword_1006F9708);
  sub_100140278(&qword_1008F27C0, &qword_1006F9498);
  v40 = v175;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1006D1F70;
  static AccessibilityTraits.isHeader.getter();
  static AccessibilityTraits.isButton.getter();
  *&v234 = v41;
  sub_10054D6C0();
  sub_100140278(&qword_1008F27D0, &qword_1006F94A0);
  sub_10014A6B0(&qword_1008F27D8, &qword_1008F27D0, &qword_1006F94A0, &protocol conformance descriptor for [A]);
  v42 = v181;
  v43 = v182;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v234 = v25;
  *(&v234 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v44 = v174;
  v45 = v177;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v42, v43);
  v46 = v29;
  v47 = v194;
  (*(v179 + 8))(v46, v45);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v176;
  sub_100015E80(v44, v176, &qword_1008F29A0, &qword_1006F9718);
  v49 = (v48 + *(v171 + 44));
  v50 = v273[7];
  v49[4] = v273[6];
  v49[5] = v50;
  v49[6] = v273[8];
  v51 = v273[3];
  *v49 = v273[2];
  v49[1] = v51;
  v52 = v273[5];
  v49[2] = v273[4];
  v49[3] = v52;
  LOBYTE(v41) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v48;
  v62 = v178;
  sub_100015E80(v61, v178, &qword_1008F29A8, &qword_1006F9720);
  v63 = v62 + *(v180 + 44);
  *v63 = v41;
  *(v63 + 8) = v54;
  *(v63 + 16) = v56;
  *(v63 + 24) = v58;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  sub_100015E80(v62, v201, &qword_1008F29B0, &qword_1006F9728);
  sub_10054CD58(v267);
  v65 = v195;
  v64 = v196;
  v66 = v197;
  (*(v196 + 104))(v195, enum case for Font.TextStyle.footnote(_:), v197);
  v67 = enum case for Font.Design.rounded(_:);
  v68 = type metadata accessor for Font.Design();
  v69 = *(v68 - 8);
  v70 = *(&v197 + 1);
  (*(v69 + 104))(*(&v197 + 1), v67, v68);
  (*(v69 + 56))(v70, 0, 1, v68);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v70, &qword_1008DC448, &qword_1006D48C0);
  (*(v64 + 8))(v65, v66);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v71 = enum case for Font.Leading.tight(_:);
  v72 = v200;
  v74 = v192;
  v73 = v193;
  v182 = *(v200 + 104);
  (v182)(v192, enum case for Font.Leading.tight(_:), v193);
  *(&v197 + 1) = Font.leading(_:)();

  v75 = *(v72 + 8);
  v200 = v72 + 8;
  v181 = v75;
  (v75)(v74, v73);
  *&v197 = swift_getKeyPath();
  v271 = v267[2];
  v272 = v267[3];
  v273[0] = v268[0];
  *(v273 + 9) = *(v268 + 9);
  v269 = v267[0];
  v270 = v267[1];
  LODWORD(v195) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  LOBYTE(v234) = 0;
  LODWORD(v196) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v183;
  TrainingLoadViewModel.dataType.getter();
  v93 = v184;
  v94 = v185;
  v95 = v186;
  (*(v185 + 104))(v184, enum case for TrainingLoadDataType.workout(_:), v186);
  LOBYTE(v74) = static TrainingLoadDataType.== infix(_:_:)();
  v96 = *(v94 + 8);
  v96(v93, v95);
  v96(v92, v95);
  if (v74)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v185 = v276;
    v186 = v274;
    v183 = v279;
    v184 = v278;
    LOBYTE(v286[0]) = 1;
    LOBYTE(v280) = v275;
    LOBYTE(v252) = v277;
    v97 = v47 + *(type metadata accessor for LoadDetailsChartView(0) + 28);
    v98 = *v97;
    if (*(v97 + 8) == 1)
    {
      *&v204 = *v97;
      v99 = v98;
    }

    else
    {

      v100 = static os_log_type_t.fault.getter();
      v101 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v101, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v102 = v168;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v103 = sub_1000A73A4(v98, 0);
      (*(v169 + 8))(v102, v170, v103);
      v99 = v204;
    }

    v104 = sub_10058483C(v47, v99);
    v106 = v105;

    *&v234 = v104;
    *(&v234 + 1) = v106;
    sub_10000FCBC();
    v107 = Text.init<A>(_:)();
    v109 = v108;
    v111 = v110;
    static Font.body.getter();
    v113 = v192;
    v112 = v193;
    (v182)(v192, v71, v193);
    Font.leading(_:)();

    (v181)(v113, v112);
    v114 = Text.font(_:)();
    v116 = v115;
    LOBYTE(v113) = v117;

    sub_10004642C(v107, v109, v111 & 1);

    v118 = [objc_opt_self() secondaryLabelColor];
    *&v234 = Color.init(_:)();
    v119 = Text.foregroundStyle<A>(_:)();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    sub_10004642C(v114, v116, v113 & 1);

    LOBYTE(v106) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v255 = v123 & 1;
    v254 = 0;
    LOBYTE(v116) = v286[0];
    LOBYTE(v114) = v280;
    *(&v225 + 1) = *v203;
    DWORD1(v225) = *&v203[3];
    DWORD1(v226) = *&v202[3];
    *(&v226 + 1) = *v202;
    LOBYTE(v113) = v252;
    *&v224 = v119;
    *(&v224 + 1) = v121;
    LOBYTE(v225) = v123 & 1;
    *(&v225 + 1) = v125;
    LOBYTE(v226) = v106;
    *(&v226 + 1) = v126;
    *&v227[0] = v127;
    *(&v227[0] + 1) = v128;
    *&v227[1] = v129;
    BYTE8(v227[1]) = 0;
    *(v232 + 9) = *(v227 + 9);
    v231 = v226;
    v232[0] = v227[0];
    v229 = v224;
    v230 = v225;
    *&v212 = v119;
    *(&v212 + 1) = v121;
    LOBYTE(v213) = v123 & 1;
    DWORD1(v213) = *&v203[3];
    *(&v213 + 1) = *v203;
    *(&v213 + 1) = v125;
    LOBYTE(v214) = v106;
    DWORD1(v214) = *&v202[3];
    *(&v214 + 1) = *v202;
    *(&v214 + 1) = v126;
    *&v215 = v127;
    *(&v215 + 1) = v128;
    *&v216 = v129;
    BYTE8(v216) = 0;
    sub_10001B104(&v224, &v234, &qword_1008DC4C0, &unk_1006D4960);
    sub_10000EA04(&v212, &qword_1008DC4C0, &unk_1006D4960);
    v239 = v230;
    v240 = v231;
    v241[0] = v232[0];
    v47 = v194;
    *(v241 + 9) = *(v232 + 9);
    *&v234 = 0;
    BYTE8(v234) = v116;
    *&v235 = v186;
    BYTE8(v235) = v114;
    *&v236 = v185;
    BYTE8(v236) = v113;
    *&v237 = v184;
    *(&v237 + 1) = v183;
    v238 = v229;
    ASFriendListDisplayMode.id.getter();
    v264 = v239;
    v265 = v240;
    v266[0] = v241[0];
    *(v266 + 9) = *(v241 + 9);
    v261 = v236;
    v262 = v237;
    v263 = v238;
    v259 = v234;
    v260 = v235;
  }

  else
  {
    sub_1002C458C(&v259);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v200 = v280;
  v192 = v284;
  v193 = v282;
  v186 = v285;
  v255 = 1;
  v254 = v281;
  v253 = v283;
  DetailsChartView = type metadata accessor for LoadDetailsChartView(0);
  v131 = v47 + *(DetailsChartView + 28);
  v132 = *v131;
  if (*(v131 + 8) == 1)
  {
    v252 = *v131;
    v133 = v132;
  }

  else
  {

    v134 = static os_log_type_t.fault.getter();
    v135 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v134, &_mh_execute_header, v135, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v136 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v137 = sub_1000A73A4(v132, 0);
    (*(v169 + 8))(v136, v170, v137);
    v133 = v252;
  }

  sub_1001DAAE8(v47 + *(DetailsChartView + 20), v47, v187);

  v138 = sub_100140278(&qword_1008F0A18, &qword_1006F5C80);
  (*(*(v138 - 8) + 56))(v189, 1, 1, v138);
  LOBYTE(v212) = 0;
  static Binding.constant(_:)();
  v139 = v199;
  TrainingLoadChart.init(configuration:selectedDay:inSelectionMode:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v140 = (v139 + *(v188 + 36));
  v141 = v286[1];
  *v140 = v286[0];
  v140[1] = v141;
  v140[2] = v286[2];
  v142 = v198;
  sub_10001B104(v201, v198, &qword_1008F29B0, &qword_1006F9728);
  v211[0] = v266[0];
  *(v211 + 9) = *(v266 + 9);
  v206 = v261;
  v207 = v262;
  v209 = v264;
  v210 = v265;
  v208 = v263;
  v204 = v259;
  v205 = v260;
  LODWORD(v188) = v255;
  LODWORD(v189) = v254;
  LODWORD(v194) = v253;
  v143 = v139;
  v144 = v190;
  sub_10001B104(v143, v190, &qword_1008F0A08, &qword_1006F5C70);
  v145 = v142;
  v146 = v191;
  sub_10001B104(v145, v191, &qword_1008F29B0, &qword_1006F9728);
  v147 = sub_100140278(&qword_1008F29C8, &qword_1006F9770);
  v148 = (v146 + v147[12]);
  v216 = v273[0];
  v217 = v273[1];
  v214 = v271;
  v215 = v272;
  v212 = v269;
  v213 = v270;
  v218 = v197;
  LOBYTE(v219) = v195;
  DWORD1(v219) = *(v256 + 3);
  *(&v219 + 1) = v256[0];
  *(&v219 + 1) = v77;
  *&v220 = v79;
  *(&v220 + 1) = v81;
  *&v221 = v83;
  BYTE8(v221) = 0;
  *(&v221 + 9) = *v258;
  HIDWORD(v221) = *&v258[3];
  LOBYTE(v222) = v196;
  DWORD1(v222) = *&v257[3];
  *(&v222 + 1) = *v257;
  *(&v222 + 1) = v85;
  *&v223[0] = v87;
  *(&v223[0] + 1) = v89;
  *&v223[1] = v91;
  BYTE8(v223[1]) = 0;
  v149 = v272;
  v148[2] = v271;
  v148[3] = v149;
  v150 = v213;
  *v148 = v212;
  v148[1] = v150;
  v151 = v217;
  v148[4] = v216;
  v148[5] = v151;
  v152 = v219;
  v148[6] = v218;
  v148[7] = v152;
  v153 = v220;
  v154 = v221;
  v155 = v222;
  v156 = v223[0];
  *(v148 + 185) = *(v223 + 9);
  v148[10] = v155;
  v148[11] = v156;
  v148[8] = v153;
  v148[9] = v154;
  v157 = (v146 + v147[16]);
  v227[3] = v210;
  v228[0] = v211[0];
  *(v228 + 9) = *(v211 + 9);
  v158 = v206;
  v159 = v207;
  v226 = v206;
  v227[0] = v207;
  v160 = v209;
  v161 = v208;
  v227[1] = v208;
  v227[2] = v209;
  v163 = v204;
  v162 = v205;
  v224 = v204;
  v225 = v205;
  v164 = v211[0];
  v157[6] = v210;
  v157[7] = v164;
  *(v157 + 121) = *(v211 + 9);
  v157[2] = v158;
  v157[3] = v159;
  v157[4] = v161;
  v157[5] = v160;
  *v157 = v163;
  v157[1] = v162;
  v165 = v146 + v147[20];
  *v165 = 0;
  *(v165 + 8) = v188;
  *(v165 + 16) = v200;
  *(v165 + 24) = v189;
  *(v165 + 32) = v193;
  *(v165 + 40) = v194;
  v166 = v186;
  *(v165 + 48) = v192;
  *(v165 + 56) = v166;
  sub_10001B104(v144, v146 + v147[24], &qword_1008F0A08, &qword_1006F5C70);
  sub_10001B104(&v212, &v234, &qword_1008F29D0, &qword_1006F9778);
  sub_10001B104(&v224, &v234, &qword_1008F29D8, &unk_1006F9780);
  sub_10000EA04(v199, &qword_1008F0A08, &qword_1006F5C70);
  sub_10000EA04(v201, &qword_1008F29B0, &qword_1006F9728);
  sub_10000EA04(v144, &qword_1008F0A08, &qword_1006F5C70);
  v232[2] = v209;
  v232[3] = v210;
  v233[0] = v211[0];
  *(v233 + 9) = *(v211 + 9);
  v231 = v206;
  v232[0] = v207;
  v232[1] = v208;
  v229 = v204;
  v230 = v205;
  sub_10000EA04(&v229, &qword_1008F29D8, &unk_1006F9780);
  v236 = v271;
  v237 = v272;
  v238 = v273[0];
  v239 = v273[1];
  v234 = v269;
  v235 = v270;
  v240 = v197;
  LOBYTE(v241[0]) = v195;
  DWORD1(v241[0]) = *(v256 + 3);
  *(v241 + 1) = v256[0];
  *(&v241[0] + 1) = v77;
  *&v241[1] = v79;
  *(&v241[1] + 1) = v81;
  v242 = v83;
  v243 = 0;
  *v244 = *v258;
  *&v244[3] = *&v258[3];
  v245 = v196;
  *v246 = *v257;
  *&v246[3] = *&v257[3];
  v247 = v85;
  v248 = v87;
  v249 = v89;
  v250 = v91;
  v251 = 0;
  sub_10000EA04(&v234, &qword_1008F29D0, &qword_1006F9778);
  return sub_10000EA04(v198, &qword_1008F29B0, &qword_1006F9728);
}

uint64_t sub_10054C6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v67 = sub_100140278(&qword_1008F29F0, &qword_1006F9798);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v60[-v3];
  v4 = sub_100140278(&qword_1008F29F8, &qword_1006F97A0);
  __chkstk_darwin(v4 - 8);
  v65 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v63 = &v60[-v7];
  v8 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v60[-v9];
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TrainingLoadViewModel.loadBandTodayLocalizedDescription()();
  static Font.title2.getter();
  (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v11);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v11);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  static Font.Weight.medium.getter();
  v20 = Text.fontWeight(_:)();
  v22 = v21;
  v24 = v23;
  sub_10004642C(v15, v17, v19 & 1);

  v25 = enum case for Font.Design.rounded(_:);
  v26 = type metadata accessor for Font.Design();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v10, v25, v26);
  (*(v27 + 56))(v10, 0, 1, v26);
  v28 = Text.fontDesign(_:)();
  v30 = v29;
  LOBYTE(v17) = v31;
  sub_10004642C(v20, v22, v24 & 1);

  sub_10000EA04(v10, &qword_1008DC448, &qword_1006D48C0);
  View = TrainingLoadViewModel.loadBandTodayColor()();
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  LODWORD(v36) = v35;
  v38 = v37;
  sub_10004642C(v28, v30, v17 & 1);
  v39 = v63;

  DetailsChartView = type metadata accessor for LoadDetailsChartView(0);
  v41 = 1;
  if (*(a1 + *(DetailsChartView + 24)) == 1)
  {
    v42 = Image.init(systemName:)();
    v43 = static Font.caption2.getter();
    KeyPath = swift_getKeyPath();
    View = v42;
    v69 = KeyPath;
    v70 = v43;
    sub_100140278(&qword_1008E2BE8, &unk_1006E1D00);
    sub_1002397DC();
    v61 = v36;
    v36 = v62;
    View.bold(_:)();

    LOBYTE(v42) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v36 + *(sub_100140278(&qword_1008F2A08, &qword_1006F97B0) + 36);
    *v53 = v42;
    *(v53 + 8) = v46;
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v52;
    *(v53 + 40) = 0;
    v54 = [objc_opt_self() secondaryLabelColor];
    *(v36 + *(v67 + 36)) = Color.init(_:)();
    v55 = v36;
    LOBYTE(v36) = v61;
    sub_100015E80(v55, v39, &qword_1008F29F0, &qword_1006F9798);
    v41 = 0;
  }

  (*(v64 + 56))(v39, v41, 1, v67);
  v56 = v65;
  sub_10001B104(v39, v65, &qword_1008F29F8, &qword_1006F97A0);
  v57 = v66;
  *v66 = v32;
  v57[1] = v34;
  *(v57 + 16) = v36 & 1;
  v57[3] = v38;
  v57[4] = 0x4024000000000000;
  *(v57 + 40) = 0;
  v58 = sub_100140278(&qword_1008F2A00, &qword_1006F97A8);
  sub_10001B104(v56, v57 + *(v58 + 64), &qword_1008F29F8, &qword_1006F97A0);
  sub_10006965C(v32, v34, v36 & 1);

  sub_10000EA04(v39, &qword_1008F29F8, &qword_1006F97A0);
  sub_10000EA04(v56, &qword_1008F29F8, &qword_1006F97A0);
  sub_10004642C(v32, v34, v36 & 1);
}

void *sub_10054CD58@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DayIndex();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v55);
  v7 = &v54 - v6;
  DataType = type metadata accessor for TrainingLoadDataType();
  v9 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100140278(&qword_1008F2808, &qword_1006F94D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - v16;
  TrainingLoadViewModel.loadBandToday()();
  Band = type metadata accessor for TrainingLoadBand();
  if ((*(*(Band - 8) + 48))(v17, 1, Band) == 1)
  {
    sub_10000EA04(v17, &qword_1008F2808, &qword_1006F94D0);
    TrainingLoadViewModel.dataType.getter();
    (*(v9 + 104))(v11, enum case for TrainingLoadDataType.workout(_:), DataType);
    v19 = static TrainingLoadDataType.== infix(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, DataType);
    result = (v20)(v14, DataType);
    v22 = 0;
    if ((v19 & 1) == 0)
    {
      v52 = 0;
      v53 = -1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      goto LABEL_9;
    }

    type metadata accessor for LoadDetailsChartView(0);
    GregorianDayRange.dayIndexRange.getter();
    v23 = v56;
    v25 = v57;
    v24 = v58;
    (*(v57 + 16))(v56, &v7[*(v55 + 36)], v58);
    sub_10000EA04(v7, &qword_1008E04A8, &unk_1006EA860);
    v26 = TrainingLoadViewModel.isPending(onDay:)();
    result = (*(v25 + 8))(v23, v24);
    if ((v26 & 1) == 0)
    {
      v52 = 0;
      v53 = -1;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v22 = 0;
      goto LABEL_9;
    }

    sub_100586548(v27);
    v28 = String.uppercased()();

    v69 = v28;
    sub_10000FCBC();
    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    v34 = Text.kerning(_:)();
    v36 = v35;
    v38 = v37;
    sub_10004642C(v29, v31, v33 & 1);

    v39 = [objc_opt_self() secondaryLabelColor];
    v69._countAndFlagsBits = Color.init(_:)();
    v40 = Text.foregroundStyle<A>(_:)();
    v42 = v41;
    v44 = v43;
    v58 = v45;
    sub_10004642C(v34, v36, v38 & 1);

    v78 = v44 & 1;
    v76 = 1;
    v64 = v40;
    v65 = v42;
    countAndFlagsBits = v44 & 1;
    *v67 = v77[0];
    *&v67[3] = *(v77 + 3);
    *&v67[15] = v60;
    *&v67[31] = v61;
    *&v67[47] = v62;
    *&v67[7] = v58;
    *&v67[63] = v63;
    v46 = 1;
  }

  else
  {
    sub_10000EA04(v17, &qword_1008F2808, &qword_1006F94D0);
    v47 = static VerticalAlignment.center.getter();
    LOBYTE(v69._countAndFlagsBits) = 0;
    sub_10054D370(&v60);
    *&v59[55] = v63;
    *&v59[39] = v62;
    *&v59[23] = v61;
    *&v59[7] = v60;
    *&v67[16] = *&v59[16];
    *&v67[32] = *&v59[32];
    *&v67[48] = *&v59[48];
    LOBYTE(v77[0]) = 0;
    v64 = v47;
    v65 = 0x4008000000000000;
    countAndFlagsBits = v69._countAndFlagsBits;
    *&v67[63] = *(&v63 + 1);
    *v67 = *v59;
    v46 = 0;
  }

  v68 = v46;
  sub_100140278(&qword_1008F29E0, &qword_1006F9790);
  sub_10014A6B0(&qword_1008F29E8, &qword_1008F29E0, &qword_1006F9790, &protocol conformance descriptor for HStack<A>);
  result = _ConditionalContent<>.init(storage:)();
  v22 = v69;
  v48 = v70;
  v49 = v71;
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v53 = v75;
LABEL_9:
  *a2 = v22;
  *(a2 + 16) = v48;
  *(a2 + 32) = v49;
  *(a2 + 48) = v50;
  *(a2 + 64) = v51;
  *(a2 + 80) = v52;
  *(a2 + 88) = v53;
  return result;
}

uint64_t sub_10054D370@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizationFeature();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = TrainingLoadViewModel.loadPercentageToday()();
  sub_10000FCBC();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  View._countAndFlagsBits = TrainingLoadViewModel.loadBandTodayColor()();
  v12 = Text.foregroundStyle<A>(_:)();
  v38 = v13;
  v39 = v12;
  HIDWORD(v37) = v14;
  v40 = v15;
  sub_10004642C(v7, v9, v11 & 1);

  (*(v4 + 104))(v6, enum case for LocalizationFeature.workout(_:), v3);
  v16 = static Localization.workoutUILocalizedString(_:feature:)();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  View._countAndFlagsBits = v16;
  View._object = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v24 = [objc_opt_self() secondaryLabelColor];
  View._countAndFlagsBits = Color.init(_:)();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10004642C(v19, v21, v23 & 1);

  v32 = BYTE4(v37) & 1;
  v41 = BYTE4(v37) & 1;
  LOBYTE(View._countAndFlagsBits) = BYTE4(v37) & 1;
  v43 = v29 & 1;
  v34 = v38;
  v33 = v39;
  *a1 = v39;
  *(a1 + 8) = v34;
  *(a1 + 16) = v32;
  *(a1 + 24) = v40;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v29 & 1;
  *(a1 + 56) = v31;
  v35 = v33;
  sub_10006965C(v33, v34, v32);

  sub_10006965C(v25, v27, v29 & 1);

  sub_10004642C(v25, v27, v29 & 1);

  sub_10004642C(v35, v34, v41);
}

uint64_t sub_10054D670@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008F2988, &qword_1006F96F8);
  return sub_10054B018(v2, a2 + *(v4 + 44));
}

unint64_t sub_10054D6C0()
{
  result = qword_1008F27C8;
  if (!qword_1008F27C8)
  {
    type metadata accessor for AccessibilityTraits();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F27C8);
  }

  return result;
}

void sub_10054D718()
{
  sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  v0 = UIFontTextStyleTitle3;
  v1 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  qword_1008F2A20 = v1;
}

void sub_10054D7B4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008F2A28 = v2;
}

void sub_10054D820()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 gradientLightColor];

    qword_1008F2A30 = v2;
  }

  else
  {
    __break(1u);
  }
}

UIColor *sub_10054D88C()
{
  result = sub_10013AA28();
  qword_1008F2A38 = result;
  return result;
}

char *sub_10054D8B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = UILabel.textAlignment(_:)();

  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];
  if (qword_1008DAD88 != -1)
  {
    swift_once();
  }

  v13 = UILabel.withFont(_:)();

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = UILabel.textAlignment(_:)();

  [v16 setLineBreakMode:0];
  [v16 setNumberOfLines:0];
  if (qword_1008DAD90 != -1)
  {
    swift_once();
  }

  v17 = UILabel.withFont(_:)();

  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = UILabel.withTextColor(_:)();

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v14] = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer;
  v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v20] = v21;
  v22 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar;
  v23 = [objc_allocWithZone(UIProgressView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v22] = v23;
  *&v5[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBarConstraints] = _swiftEmptyArrayStorage;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  v24 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar;
  v26 = *&v24[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar];
  v27 = qword_1008DAD98;
  v28 = v24;
  v29 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  [v29 setProgressTintColor:qword_1008F2A30];

  v30 = qword_1008DADA0;
  v31 = *&v24[v25];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTrackTintColor:qword_1008F2A38];

  v32 = [*&v24[v25] layer];
  [v32 setCornerRadius:2.0];

  v33 = [*&v24[v25] layer];
  [v33 setMasksToBounds:1];

  v34 = [v28 contentView];
  [v34 addSubview:*&v28[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer]];

  v35 = [v28 contentView];
  [v35 addSubview:*&v28[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel]];

  v36 = [v28 contentView];
  [v36 addSubview:*&v28[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel]];

  v37 = [v28 contentView];
  [v37 addSubview:*&v24[v25]];

  sub_10054DDD4();
  return v28;
}

void sub_10054DDD4()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v59.origin.x = v3;
  v59.origin.y = v5;
  v59.size.width = v7;
  v59.size.height = v9;
  Height = CGRectGetHeight(v59);
  v56 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006EE9A0;
  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer];
  v13 = [v12 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:Height * 0.13];
  *(v11 + 32) = v16;
  v17 = [v12 centerXAnchor];
  v18 = [v0 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v11 + 40) = v20;
  v21 = [v12 widthAnchor];
  v22 = [v0 contentView];
  v23 = [v22 widthAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 multiplier:0.76];
  *(v11 + 48) = v24;
  v25 = [v12 heightAnchor];
  v26 = [v12 widthAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:20.0];

  *(v11 + 56) = v27;
  v28 = *&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel];
  v29 = [v28 topAnchor];
  v30 = [v12 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:30.0];

  *(v11 + 64) = v31;
  v32 = [v28 leadingAnchor];
  v33 = [v0 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:16.0];
  *(v11 + 72) = v35;
  v36 = [v28 trailingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:-16.0];
  *(v11 + 80) = v39;
  v40 = *&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel];
  v41 = [v40 topAnchor];
  v42 = [v28 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:4.0];

  *(v11 + 88) = v43;
  v44 = [v40 leadingAnchor];
  v45 = [v0 contentView];
  v46 = [v45 leadingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:16.0];
  *(v11 + 96) = v47;
  v48 = [v40 trailingAnchor];
  v49 = [v0 contentView];
  v50 = [v49 trailingAnchor];

  v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];
  *(v11 + 104) = v51;
  v52 = [v40 bottomAnchor];
  v53 = [v0 contentView];
  v54 = [v53 bottomAnchor];

  v55 = [v52 constraintLessThanOrEqualToAnchor:v54 constant:-40.0];
  *(v11 + 112) = v55;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints:isa];
}

void sub_10054E448()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 4.0;
  }

  if (v3)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 2.0;
  }

  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D9810;
  v9 = [v6 topAnchor];
  v10 = [*&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel] bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:20.0];

  *(v8 + 32) = v11;
  v12 = [v6 centerXAnchor];
  v13 = [v0 contentView];
  v14 = [v13 centerXAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v8 + 40) = v15;
  v16 = [v6 widthAnchor];
  v17 = [v0 contentView];
  v18 = [v17 widthAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 multiplier:0.56];
  *(v8 + 48) = v19;
  v20 = [v6 heightAnchor];
  v21 = [v20 constraintEqualToConstant:v4];

  *(v8 + 56) = v21;
  v22 = [v6 bottomAnchor];
  v23 = [v0 contentView];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-40.0];
  *(v8 + 64) = v25;
  *&v0[OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBarConstraints] = v8;

  v26 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];
}

void sub_10054E810(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v38 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v38);
  v8 = type metadata accessor for LocalizedStringResource();
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 badgeConfigurationForAchievement:{a1, v9}];
  v13 = [a3 backSideIconImageForAchievement:a1];
  v14 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView;
  [*(v4 + OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView) setConfiguration:v12];
  [*(v4 + v14) setBadgeBacksideIcon:v13];
  v15 = [a2 localizedAttributedBacksideString];
  if (v15)
  {
    v16 = v15;
    v17 = [a2 localizedAttributedShortenedBacksideString];
    if (v17)
    {
      v18 = v17;
      [*(v4 + v14) setBadgeBacksideAttributedString:v16];
      v19 = *(v4 + v14);
      if (v19)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        v43 = sub_100192CBC;
        v44 = v20;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_10054EC2C;
        v42 = &unk_10085FF58;
        v21 = _Block_copy(&aBlock);
        v36[1] = v11;
        v37 = v12;
        v22 = v21;
        v23 = v19;
        v24 = v18;

        [v23 setShortenedBadgeBacksideStringProvider:v22];

        v25 = v22;
        v12 = v37;
        _Block_release(v25);

        goto LABEL_5;
      }
    }

    v26 = *(v4 + v14);
    if (v26)
    {
      goto LABEL_6;
    }

LABEL_12:
    v34 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v26 = *(v4 + v14);
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_6:
  v37 = v13;
  sub_100140278(&unk_1008F8F40, &unk_1006D50D0);
  v27 = v26;
  v28 = a1;
  LocalizedStringResource.init(stringLiteral:)();
  v29 = EntityProperty<>.init(title:)();
  v30 = v28;

  LOBYTE(aBlock) = [v30 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  aBlock = _swiftEmptyArrayStorage;
  sub_10033A70C();
  sub_100140278(&unk_1008F8F50, &unk_1006E9DF0);
  sub_10033A764();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  aBlock = v29;
  v40 = v30;
  v31 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_10007151C();
  v32 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();

  v33 = *(v4 + v14);
  if (v33)
  {
    [v33 setPaused:0];
    v34 = *(v4 + v14);
  }

  else
  {
    v34 = 0;
  }

  v13 = v37;
LABEL_13:
  v35 = v34;
  [v35 resizeBadgeForCurrentViewSize];
}

id sub_10054EC2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10054EC7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10054ED60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementTitleLabel;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = UILabel.textAlignment(_:)();

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  if (qword_1008DAD88 != -1)
  {
    swift_once();
  }

  v5 = UILabel.withFont(_:)();

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_achievementDescriptionLabel;
  v7 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = UILabel.textAlignment(_:)();

  [v8 setLineBreakMode:0];
  [v8 setNumberOfLines:0];
  if (qword_1008DAD90 != -1)
  {
    swift_once();
  }

  v9 = UILabel.withFont(_:)();

  v10 = [objc_opt_self() secondaryLabelColor];
  v11 = UILabel.withTextColor(_:)();

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v6) = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeViewContainer;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBar;
  v15 = [objc_allocWithZone(UIProgressView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v14) = v15;
  *(v1 + OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_badgeView) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp30TrophyCaseAwardDetailBadgeCell_progressBarConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ActivitySummaryItemView(uint64_t a1)
{
  result = qword_1008F2AF0;
  if (!qword_1008F2AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054F09C(uint64_t a1)
{
  sub_10026B61C(319);
  if (v1 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008F24B0, FIUIFormattingManager_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DayIndex();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10054F164()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:isa];

  [v4 setDateFormat:v8];
  qword_100925E38 = v4;
}

void *sub_10054F2C8@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static Alignment.bottomTrailing.getter();
  v7 = v6;
  sub_10054F3D8(v3, __src);
  memcpy(__dst, __src, 0x179uLL);
  memcpy(v19, __src, 0x179uLL);
  sub_10001B104(__dst, v17, &qword_1008F2B30, &qword_1006F9888);
  sub_10000EA04(v19, &qword_1008F2B30, &qword_1006F9888);
  memcpy(__src, __dst, 0x179uLL);
  LOBYTE(v3) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *a2 = v5;
  *(a2 + 8) = v7;
  result = memcpy((a2 + 16), __src, 0x179uLL);
  *(a2 + 400) = v3;
  *(a2 + 408) = v9;
  *(a2 + 416) = v11;
  *(a2 + 424) = v13;
  *(a2 + 432) = v15;
  *(a2 + 440) = 0;
  return result;
}

uint64_t sub_10054F3D8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v29 = a1;
  v30 = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = static VerticalAlignment.center.getter();
  v60 = 0;
  sub_10054FA60(v2, &v56);
  v68 = *&v57[80];
  v69[0] = *&v57[96];
  *(v69 + 9) = *&v57[105];
  v64 = *&v57[16];
  v65 = *&v57[32];
  v66 = *&v57[48];
  v67 = *&v57[64];
  v62 = v56;
  v63 = *v57;
  v70[5] = *&v57[64];
  v70[6] = *&v57[80];
  v71[0] = *&v57[96];
  *(v71 + 9) = *&v57[105];
  v70[2] = *&v57[16];
  v70[3] = *&v57[32];
  v70[4] = *&v57[48];
  v70[0] = v56;
  v70[1] = *v57;
  sub_10001B104(&v62, v36, &qword_1008F2B38, &qword_1006F9890);
  sub_10000EA04(v70, &qword_1008F2B38, &qword_1006F9890);
  *(&v59[5] + 7) = v67;
  *(&v59[6] + 7) = v68;
  *(&v59[7] + 7) = v69[0];
  v59[8] = *(v69 + 9);
  *(&v59[1] + 7) = v63;
  *(&v59[2] + 7) = v64;
  *(&v59[3] + 7) = v65;
  *(&v59[4] + 7) = v66;
  *(v59 + 7) = v62;
  v32 = v60;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v61[6] + 7) = *&v61[21];
  *(&v61[8] + 7) = *&v61[23];
  *(&v61[10] + 7) = *&v61[25];
  *(&v61[12] + 7) = *&v61[27];
  *(v61 + 7) = *&v61[15];
  *(&v61[2] + 7) = *&v61[17];
  *(&v61[4] + 7) = *&v61[19];
  sub_100550A34(v29, &v56);
  v7 = v56;
  v28 = *v57;
  v29 = *(&v56 + 1);
  v27 = *&v57[8];
  LOBYTE(v2) = v57[16];
  static Font.footnote.getter();
  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  v26 = Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v24 = KeyPath;
  v25 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *(&v36[12] + 1) = v59[5];
  *(&v36[14] + 1) = v59[6];
  *(&v36[16] + 1) = v59[7];
  *(&v36[18] + 1) = v59[8];
  *(&v36[4] + 1) = v59[1];
  *(&v36[6] + 1) = v59[2];
  *(&v36[8] + 1) = v59[3];
  *(&v36[10] + 1) = v59[4];
  *(&v36[2] + 1) = v59[0];
  *(&v36[32] + 1) = *&v61[12];
  *(&v36[28] + 1) = *&v61[8];
  *(&v36[30] + 1) = *&v61[10];
  *(&v36[20] + 1) = *v61;
  *(&v36[22] + 1) = *&v61[2];
  *(&v36[24] + 1) = *&v61[4];
  LOBYTE(v56) = v2;
  v36[0] = v31;
  v36[1] = 0x4020000000000000;
  LOBYTE(v36[2]) = v32;
  v36[34] = *(&v61[13] + 7);
  *(&v36[26] + 1) = *&v61[6];
  memcpy(v33, v36, 0x118uLL);
  v17 = v7;
  *&v37 = v7;
  v19 = v28;
  v18 = v29;
  *(&v37 + 1) = v29;
  *&v38 = v28;
  v20 = v27;
  *(&v38 + 1) = v27;
  LOBYTE(v39) = v2;
  *(&v39 + 1) = *v35;
  DWORD1(v39) = *&v35[3];
  *(&v39 + 1) = KeyPath;
  v21 = v26;
  *&v40 = v26;
  v22 = v25;
  BYTE8(v40) = v25;
  *(&v40 + 9) = *v34;
  HIDWORD(v40) = *&v34[3];
  *&v41 = v10;
  *(&v41 + 1) = v12;
  *&v42 = v14;
  *(&v42 + 1) = v16;
  v43 = 0;
  *&v33[344] = v41;
  *&v33[360] = v42;
  *&v33[312] = v39;
  *&v33[328] = v40;
  *&v33[280] = v37;
  *&v33[296] = v38;
  v33[376] = 0;
  memcpy(v30, v33, 0x179uLL);
  v44[0] = v17;
  v44[1] = v18;
  v44[2] = v19;
  v44[3] = v20;
  v45 = v2;
  *v46 = *v35;
  *&v46[3] = *&v35[3];
  v47 = v24;
  v48 = v21;
  v49 = v22;
  *v50 = *v34;
  *&v50[3] = *&v34[3];
  v51 = v10;
  v52 = v12;
  v53 = v14;
  v54 = v16;
  v55 = 0;
  sub_10001B104(v36, &v56, &qword_1008F2B40, &qword_1006F98C8);
  sub_10001B104(&v37, &v56, &qword_1008F2B48, &qword_1006F98D0);
  sub_10000EA04(v44, &qword_1008F2B48, &qword_1006F98D0);
  *&v57[81] = v59[5];
  *&v57[97] = v59[6];
  *&v57[113] = v59[7];
  *&v57[129] = v59[8];
  *&v57[17] = v59[1];
  *&v57[33] = v59[2];
  *&v57[49] = v59[3];
  *&v57[65] = v59[4];
  *&v57[1] = v59[0];
  *v58 = *&v61[12];
  *&v57[209] = *&v61[8];
  *&v57[225] = *&v61[10];
  *&v57[145] = *v61;
  *&v57[161] = *&v61[2];
  *&v57[177] = *&v61[4];
  *&v56 = v31;
  *(&v56 + 1) = 0x4020000000000000;
  v57[0] = v32;
  *&v58[15] = *(&v61[13] + 7);
  *&v57[193] = *&v61[6];
  return sub_10000EA04(&v56, &qword_1008F2B40, &qword_1006F98C8);
}

uint64_t sub_10054FA60@<X0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  v64 = a2;
  v63 = type metadata accessor for Font.Leading();
  v3 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1 && [v9 _wheelchairUse] == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_opt_self();
  v12 = v9;
  [v11 preferredActivityRingThicknessForDiameter:48.0];
  v14 = v13;
  [v11 preferredActivityRingInterspacingForDiameter:48.0];
  v16 = v15;
  v61 = v12;
  if (v9)
  {
    v17 = [v12 paused];
  }

  else
  {
    v17 = 0;
  }

  *&v18 = v14;
  *&v71 = v9;
  *&v19 = v16;
  BYTE8(v71) = v17;
  HIDWORD(v71) = 1111490560;
  *&v72 = __PAIR64__(v19, v18);
  WORD4(v72) = 2;
  BYTE10(v72) = 0;
  *(&v72 + 11) = v10;
  v73 = 0uLL;
  v74 = v9;
  v75 = v17;
  v76 = 1111490560;
  v77 = v18;
  v78 = v19;
  v79 = 2;
  v80 = 0;
  v81 = v10;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  sub_1004B7008(&v71, v70);
  sub_1004B7064(&v74);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v85 = v71;
  v86 = v72;
  v87 = v73;
  sub_100550054(v9, v8);
  v20 = Text.init(_:)();
  v62 = v9;
  v22 = v21;
  v24 = v23;
  static Font.title.getter();
  v25 = v63;
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v63);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v25);
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;

  sub_10004642C(v20, v22, v24 & 1);

  if (v62)
  {
    v31 = v61;
    if ([v61 paused])
    {
      v32 = static Color.white.getter();
    }

    else
    {
      sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
      isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
      v35 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
      v36 = v28;
      v37 = type metadata accessor for GradientColors();
      v38 = objc_allocWithZone(v37);
      *&v38[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
      *&v38[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v35;
      v66.receiver = v38;
      v66.super_class = v37;
      v39 = objc_msgSendSuper2(&v66, "init");
      v40 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
      v41 = type metadata accessor for MetricColors();
      v42 = objc_allocWithZone(v41);
      *&v42[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v39;
      *&v42[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v40;
      v65.receiver = v42;
      v65.super_class = v41;
      v28 = v36;
      v43 = objc_msgSendSuper2(&v65, "init");
      v44 = *(v43 + OBJC_IVAR____TtC10FitnessApp12MetricColors_text);

      v32 = Color.init(uiColor:)();
    }

    v33 = v32;
  }

  else
  {
    v33 = static Color.secondary.getter();
  }

  *&v70[0] = v33;
  v45 = Text.foregroundStyle<A>(_:)();
  v46 = v28;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10004642C(v26, v46, v30 & 1);

  v53 = v86;
  v54 = v87;
  v69[2] = v87;
  v69[3] = v88;
  v55 = v88;
  v69[4] = v89;
  v56 = v89;
  v69[5] = v90;
  v69[0] = v85;
  v69[1] = v86;
  v50 &= 1u;
  v68 = v50;
  v67 = 1;
  v57 = v64;
  *v64 = v85;
  v57[1] = v53;
  v58 = v90;
  v57[4] = v56;
  v57[5] = v58;
  v57[2] = v54;
  v57[3] = v55;
  *(v57 + 12) = v45;
  *(v57 + 13) = v48;
  *(v57 + 112) = v50;
  *(v57 + 15) = v52;
  *(v57 + 16) = 0;
  *(v57 + 136) = 1;
  sub_10001B104(v69, v70, &qword_1008E9C70, &unk_1006EA978);
  sub_10006965C(v45, v48, v50);

  sub_10004642C(v45, v48, v50);

  v70[2] = v87;
  v70[3] = v88;
  v70[4] = v89;
  v70[5] = v90;
  v70[0] = v85;
  v70[1] = v86;
  return sub_10000EA04(v70, &qword_1008E9C70, &unk_1006EA978);
}

void sub_100550054(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for LocalizationFeature();
  v78 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008EF8C8, &unk_1006F7030);
  __chkstk_darwin(v9 - 8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  v14 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v14 - 8);
  v16 = &v69 - v15;
  v17 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v76 = *(v20 - 8);
  v77 = v20;
  __chkstk_darwin(v20);
  v73 = &v69 - v21;
  v22 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v22 - 8);
  v80 = type metadata accessor for AttributedString();
  v75 = *(v80 - 8);
  *&v23 = __chkstk_darwin(v80).n128_u64[0];
  v79 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 8);
  v26 = [v25 unitManager];
  if (!v26)
  {
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v81 = [v26 userActiveEnergyBurnedUnit];

  if (a1)
  {
    v71 = v13;
    v28 = a1;
    if ([v28 paused])
    {
      v29 = objc_opt_self();
      v30 = [v28 activeEnergyBurned];
      v72 = a2;
      v31 = v30;
      [v30 doubleValueForUnit:v81];
      v33 = v32;

      v34 = [objc_allocWithZone(NSNumber) initWithDouble:v33];
      v35 = [v29 stringWithNumber:v34 decimalPrecision:1 roundingMode:1];

      if (v35)
      {
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v36;

        v37 = [v25 localizedShortActiveEnergyUnitString];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v82 = v39;
          v83 = v41;
          v69 = sub_10000FCBC();
          v42 = StringProtocol.localizedUppercase.getter();
          v44 = v43;

          v45 = [objc_opt_self() mainBundle];
          v46 = String._bridgeToObjectiveC()();
          v47 = [v45 localizedStringForKey:v46 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_1006D1F70;
          *(v48 + 56) = &type metadata for String;
          v49 = sub_10000A788();
          v50 = v70;
          *(v48 + 32) = v78;
          *(v48 + 40) = v50;
          *(v48 + 96) = &type metadata for String;
          *(v48 + 104) = v49;
          *(v48 + 64) = v49;
          *(v48 + 72) = v42;
          *(v48 + 80) = v44;

          String.init(format:_:)();

          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          v82 = v42;
          v83 = v44;
          v51 = type metadata accessor for Locale();
          (*(*(v51 - 8) + 56))(v16, 1, 1, v51);
          sub_10007BD90();
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v16, &qword_1008EB540, &unk_1006D5E20);

          if ((*(v76 + 48))(v19, 1, v77) == 1)
          {
            v52 = &qword_1008E1900;
            v53 = &unk_1006E8990;
            v54 = v19;
          }

          else
          {
            v62 = v73;
            sub_10007BE08(v19, v73);
            v63 = v71;
            static Text.Scale.secondary.getter();
            v64 = type metadata accessor for Text.Scale();
            (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
            sub_10014A6B0(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40, &protocol conformance descriptor for Range<A>);
            v65 = AttributedString.subscript.modify();
            sub_10001B104(v63, v74, &qword_1008EF8C8, &unk_1006F7030);
            sub_10007C248();
            AttributedSubstring.subscript.setter();
            sub_10000EA04(v63, &qword_1008EF8C8, &unk_1006F7030);
            v65(&v82, 0);
            v54 = v62;
            v52 = &qword_1008E1908;
            v53 = &unk_1006DFC40;
          }

          sub_10000EA04(v54, v52, v53);
          v66 = v72;
          v67 = [objc_opt_self() systemFontOfSize:UIFontSystemFontDesignRounded weight:20.0 design:UIFontWeightMedium];
          if (v67)
          {
            v82 = v67;
            sub_1001ED5AC();
            v68 = v79;
            AttributedString.subscript.setter();

            (*(v75 + 32))(v66, v68, v80);
            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    v55 = [v28 activeEnergyBurned];
    v56 = [v28 activeEnergyBurnedGoal];
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v57 = [objc_opt_self() systemFontOfSize:UIFontSystemFontDesignRounded weight:20.0 design:UIFontWeightMedium];
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = v57;
  v59 = sub_10021E444(v55, v56, v25, v57);

  if (v59)
  {
    AttributedString.init(_:)();
    v60 = v81;
  }

  else
  {
    v61 = v78;
    (*(v78 + 104))(v8, enum case for LocalizationFeature.workout(_:), v6);
    static Localization.workoutUILocalizedString(_:feature:)();
    (*(v61 + 8))(v8, v6);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
  }
}

double sub_100550A34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v71 = a1;
  v69 = a2;
  v2 = type metadata accessor for Calendar.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Calendar();
  v6 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = *(type metadata accessor for ActivitySummaryItemView(0) + 24);
  v16 = *(v3 + 104);
  v63 = enum case for Calendar.Identifier.gregorian(_:);
  v62 = v16;
  v16(v5);
  Calendar.init(identifier:)();
  v17 = *(v3 + 8);
  v64 = v5;
  v66 = v3 + 8;
  v67 = v2;
  v61 = v17;
  v17(v5, v2);
  v18 = v9;
  v65 = v15;
  DayIndex.startDate(in:)();
  v19 = *(v6 + 8);
  v20 = v68;
  v19(v8, v70);
  Date.init()();
  LOBYTE(v9) = Date.isSameDay(as:)();
  v21 = *(v20 + 1);
  v21(v11, v18);
  v21(v14, v18);
  if (v9)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v22 = Text.init(_:tableName:bundle:comment:)();
    v24 = v23;
    v26 = v25;
    v27 = [objc_opt_self() secondaryLabelColor];
    *&v77 = Color.init(_:)();
    v28 = Text.foregroundStyle<A>(_:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_10004642C(v22, v24, v26 & 1);

    v72 = v28;
    v73 = v30;
    v74 = v32 & 1;
    v75 = v34;
    v76 = 0;
  }

  else
  {
    v68 = v19;
    if (qword_1008DADA8 != -1)
    {
      swift_once();
    }

    v35 = qword_100925E38;
    v36 = v64;
    v37 = v67;
    v62(v64, v63, v67);
    Calendar.init(identifier:)();
    v61(v36, v37);
    DayIndex.startDate(in:)();
    v68(v8, v70);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21(v14, v18);
    v39 = [v35 stringFromDate:isa];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    *&v77 = v40;
    *(&v77 + 1) = v42;
    sub_10000FCBC();
    v43 = Text.init<A>(_:)();
    v45 = v44;
    v47 = v46;
    v48 = [objc_opt_self() secondaryLabelColor];
    *&v77 = Color.init(_:)();
    v49 = Text.foregroundStyle<A>(_:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_10004642C(v43, v45, v47 & 1);

    v72 = v49;
    v73 = v51;
    v74 = v53 & 1;
    v75 = v55;
    v76 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v77;
  v57 = v78;
  v58 = v79;
  v59 = v69;
  *v69 = v77;
  v59[1] = v57;
  *(v59 + 32) = v58;
  return result;
}

unint64_t sub_100551004()
{
  result = qword_1008F2B50;
  if (!qword_1008F2B50)
  {
    sub_100141EEC(&qword_1008F2B58, &qword_1006F98D8);
    sub_10014A6B0(&qword_1008F2B60, &qword_1008F2B68, qword_1006F98E0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2B50);
  }

  return result;
}

uint64_t type metadata accessor for CompetitionRowView(uint64_t a1)
{
  result = qword_1008F2BC8;
  if (!qword_1008F2BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100551130(uint64_t a1)
{
  sub_10055124C(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      sub_10055124C(319, &qword_1008E4A18, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10055124C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1005512CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CompetitionRowView(0);
  v12 = a1 + *(v11 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v39 = *(a1 + *(v11 + 20));

  sub_10005491C(v10);
  v16 = sub_10001DEC8(v10, v13, v14, v15);
  v17 = *(v5 + 8);
  v17(v10, v4);
  if (v16 > 1)
  {
    v19 = 0x402E000000000000;
    v20 = 0x4008000000000000;
  }

  else
  {
    sub_10005491C(v10);
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.xxLarge(_:), v4);
    v18 = static DynamicTypeSize.< infix(_:_:)();
    v17(v7, v4);
    v17(v10, v4);
    v19 = 0x4014000000000000;
    if (v18)
    {
      v20 = 0x4000000000000000;
    }

    else
    {
      v20 = 0x4014000000000000;
    }
  }

  v21 = static Edge.Set.all.getter();
  v22 = static HorizontalAlignment.leading.getter();
  v40[0] = 0;
  sub_100551724(a1, &v56);
  v50 = *&v57[80];
  v51 = *&v57[96];
  v52 = *&v57[112];
  v46 = *&v57[16];
  v47 = *&v57[32];
  v48 = *&v57[48];
  v49 = *&v57[64];
  v44 = v56;
  v45 = *v57;
  v53[6] = *&v57[80];
  v53[7] = *&v57[96];
  v53[8] = *&v57[112];
  v53[2] = *&v57[16];
  v53[3] = *&v57[32];
  v53[4] = *&v57[48];
  v53[5] = *&v57[64];
  v53[0] = v56;
  v53[1] = *v57;
  sub_10001B104(&v44, v54, &qword_1008F2C20, &qword_1006F9970);
  sub_10000EA04(v53, &qword_1008F2C20, &qword_1006F9970);
  *&v43[103] = v50;
  *&v43[87] = v49;
  *&v43[39] = v46;
  *&v43[23] = v45;
  *&v43[119] = v51;
  *&v43[135] = v52;
  *&v43[55] = v47;
  *&v43[71] = v48;
  *&v43[7] = v44;
  v23 = *&v43[80];
  *&v55[97] = *&v43[96];
  v24 = *&v43[96];
  *&v55[113] = *&v43[112];
  v25 = *&v43[112];
  *&v55[129] = *&v43[128];
  v26 = *&v43[16];
  *&v55[33] = *&v43[32];
  v27 = *&v43[32];
  *&v55[49] = *&v43[48];
  v28 = *&v43[48];
  *&v55[65] = *&v43[64];
  v29 = *&v43[64];
  *&v55[81] = *&v43[80];
  *&v55[1] = *v43;
  v30 = *v43;
  *&v55[17] = *&v43[16];
  *(&v41[4] + 7) = *&v55[48];
  *(&v41[3] + 7) = *&v55[32];
  *(&v41[7] + 7) = *&v55[96];
  *(&v41[8] + 7) = *&v55[112];
  v31 = v40[0];
  v54[0] = v22;
  v54[1] = 0;
  v55[0] = v40[0];
  *&v55[144] = *(&v52 + 1);
  *(&v41[9] + 7) = *&v55[128];
  *(&v41[10] + 7) = *(&v52 + 1);
  *(&v41[5] + 7) = *&v55[64];
  *(&v41[6] + 7) = *&v55[80];
  *(v41 + 7) = v22;
  *(&v41[1] + 7) = *v55;
  *(&v41[2] + 7) = *&v55[16];
  v32 = v41[6];
  *(a2 + 161) = v41[7];
  v33 = v41[9];
  *(a2 + 177) = v41[8];
  *(a2 + 193) = v33;
  *(a2 + 208) = *(&v41[9] + 15);
  v34 = v41[2];
  *(a2 + 97) = v41[3];
  v35 = v41[5];
  *(a2 + 113) = v41[4];
  *(a2 + 129) = v35;
  *(a2 + 145) = v32;
  v36 = v41[1];
  *(a2 + 49) = v41[0];
  *(a2 + 65) = v36;
  *(a2 + 81) = v34;
  *&v57[97] = v24;
  *&v57[113] = v25;
  v58[0] = *&v43[128];
  *&v57[33] = v27;
  *&v57[49] = v28;
  *&v57[65] = v29;
  *&v57[81] = v23;
  *&v57[1] = v30;
  v42 = 0;
  v40[168] = 0;
  *a2 = v39;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v19;
  *(a2 + 48) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v56 = v22;
  v57[0] = v31;
  *(v58 + 15) = *&v43[143];
  *&v57[17] = v26;

  sub_10001B104(v54, v40, &qword_1008F2C28, &qword_1006F9978);
  sub_10000EA04(&v56, &qword_1008F2C28, &qword_1006F9978);

  return result;
}

uint64_t sub_100551724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
  __chkstk_darwin(v3 - 8);
  v5 = &v69 - v4;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v69 - v10;
  v12 = sub_100551CA0();
  v74 = v5;
  if (v12)
  {
    v13 = type metadata accessor for CompetitionRowView(0);
    (*(v7 + 16))(v11, a1 + *(v13 + 24), v6);
    v14 = Text.init(_:)();
    v83 = v15;
    v84 = v14;
    v17 = v16;
    v80 = v18;
    v19 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    LOBYTE(v90) = v17 & 1;
    LOBYTE(v94[0]) = 0;
    v82 = v17 & 1;
    v81 = v19;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
  }

  v28 = type metadata accessor for CompetitionRowView(0);
  v29 = a1 + v28[7];
  v71 = *(v7 + 16);
  v71(v11, v29, v6);
  v30 = Text.init(_:)();
  v70 = v11;
  v31 = v30;
  v33 = v32;
  v73 = v7;
  v34 = v6;
  v36 = v35;
  v37 = *(a1 + v28[9]);
  *&v90 = v37;

  v38 = Text.foregroundStyle<A>(_:)();
  v75 = v39;
  v76 = v38;
  v72 = v40;
  v77 = v41;
  LOBYTE(v40) = v36 & 1;
  v42 = v34;
  v43 = v73;
  sub_10004642C(v31, v33, v40);

  v44 = v74;
  sub_10001B104(a1 + v28[8], v74, &unk_1008EE8E0, qword_1006E2D40);
  if ((*(v43 + 48))(v44, 1, v42) == 1)
  {
    sub_10000EA04(v44, &unk_1008EE8E0, qword_1006E2D40);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v49 = v78;
    (*(v43 + 32))(v78, v44, v42);
    v71(v70, v49, v42);
    v50 = Text.init(_:)();
    v52 = v51;
    v54 = v53;
    *&v90 = v37;

    v45 = Text.foregroundStyle<A>(_:)();
    v71 = v42;
    v46 = v55;
    LODWORD(v74) = v56;
    v57 = v43;
    v48 = v58;
    sub_10004642C(v50, v52, v54 & 1);

    (*(v57 + 8))(v78, v71);
    v47 = v74 & 1;
    sub_10006965C(v45, v46, v74 & 1);
  }

  *&v86 = v84;
  *(&v86 + 1) = v83;
  v59 = v80;
  *&v87 = v82;
  *(&v87 + 1) = v80;
  *&v88 = v81;
  *(&v88 + 1) = v21;
  *&v89[0] = v23;
  *(&v89[0] + 1) = v25;
  *&v89[1] = v27;
  BYTE8(v89[1]) = 0;
  v92 = v88;
  v93[0] = v89[0];
  *(v93 + 9) = *(v89 + 9);
  v90 = v86;
  v91 = v87;
  v60 = v72 & 1;
  v85 = v72 & 1;
  sub_10001B104(&v86, v94, &qword_1008F2C30, &qword_1006F9980);
  v62 = v75;
  v61 = v76;
  sub_10006965C(v76, v75, v60);
  v63 = v77;

  sub_1001E53F8(v45, v46, v47, v48);
  sub_1001E543C(v45, v46, v47, v48);
  v64 = v85;
  v65 = v93[0];
  v66 = v79;
  *(v79 + 32) = v92;
  *(v66 + 48) = v65;
  *(v66 + 64) = v93[1];
  v67 = v91;
  *v66 = v90;
  *(v66 + 16) = v67;
  *(v66 + 80) = v61;
  *(v66 + 88) = v62;
  *(v66 + 96) = v64;
  *(v66 + 104) = v63;
  *(v66 + 112) = v45;
  *(v66 + 120) = v46;
  *(v66 + 128) = v47;
  *(v66 + 136) = v48;
  sub_1001E543C(v45, v46, v47, v48);
  sub_10004642C(v61, v62, v60);

  v94[0] = v84;
  v94[1] = v83;
  v94[2] = v82;
  v94[3] = v59;
  v94[4] = v81;
  v94[5] = v21;
  v94[6] = v23;
  v94[7] = v25;
  v94[8] = v27;
  v95 = 0;
  return sub_10000EA04(v94, &qword_1008F2C30, &qword_1006F9980);
}

uint64_t sub_100551CA0()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  sub_10005491C(&v13 - v5);
  v7 = *(v1 + 104);
  v7(v3, enum case for DynamicTypeSize.xxLarge(_:), v0);
  sub_100552164();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    sub_10005491C(v6);
    v7(v3, enum case for DynamicTypeSize.xxxLarge(_:), v0);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v9(v3, v0);
    v9(v6, v0);
    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

double sub_100551E80@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static VerticalAlignment.center.getter();
  v31 = 0;
  sub_1005512CC(v3, &v16);
  v44 = v28;
  v45[0] = *v29;
  *(v45 + 9) = *&v29[9];
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v46[11] = v27;
  v46[12] = v28;
  v47[0] = *v29;
  *(v47 + 9) = *&v29[9];
  v46[8] = v24;
  v46[9] = v25;
  v46[10] = v26;
  v46[4] = v20;
  v46[5] = v21;
  v46[6] = v22;
  v46[7] = v23;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v46[3] = v19;
  sub_10001B104(&v32, &v15, &qword_1008F2C18, &qword_1006F9968);
  sub_10000EA04(v46, &qword_1008F2C18, &qword_1006F9968);
  *(&v30[11] + 7) = v43;
  *(&v30[12] + 7) = v44;
  *(&v30[13] + 7) = v45[0];
  v30[14] = *(v45 + 9);
  *(&v30[7] + 7) = v39;
  *(&v30[8] + 7) = v40;
  *(&v30[9] + 7) = v41;
  *(&v30[10] + 7) = v42;
  *(&v30[3] + 7) = v35;
  *(&v30[4] + 7) = v36;
  *(&v30[5] + 7) = v37;
  *(&v30[6] + 7) = v38;
  *(v30 + 7) = v32;
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  v6 = v30[10];
  *(a2 + 193) = v30[11];
  v7 = v30[13];
  *(a2 + 209) = v30[12];
  *(a2 + 225) = v7;
  *(a2 + 241) = v30[14];
  v8 = v30[6];
  *(a2 + 129) = v30[7];
  v9 = v30[9];
  *(a2 + 145) = v30[8];
  *(a2 + 161) = v9;
  *(a2 + 177) = v6;
  v10 = v30[2];
  *(a2 + 65) = v30[3];
  v11 = v30[5];
  *(a2 + 81) = v30[4];
  *(a2 + 97) = v11;
  *(a2 + 113) = v8;
  result = *v30;
  v13 = v30[1];
  *(a2 + 17) = v30[0];
  *(a2 + 33) = v13;
  v14 = v31;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 49) = v10;
  return result;
}

unint64_t sub_100552164()
{
  result = qword_1008EF298;
  if (!qword_1008EF298)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF298);
  }

  return result;
}

unint64_t sub_1005521BC()
{
  result = qword_1008F2C38;
  if (!qword_1008F2C38)
  {
    sub_100141EEC(&qword_1008F2C40, &qword_1006F9988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2C38);
  }

  return result;
}

Swift::Int sub_100552230()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005522FC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);

  return String.hash(into:)();
}

Swift::Int sub_1005523A8(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100552470(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100552524(v7, v9) & 1;
}

unint64_t sub_1005524D0()
{
  result = qword_1008F2C48;
  if (!qword_1008F2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2C48);
  }

  return result;
}

uint64_t sub_100552524(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || ((*(a1 + 49) ^ *(a2 + 49)) & 1) != 0)
  {
    return 0;
  }

  if (a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100552628()
{
  result = qword_1008F2C50;
  if (!qword_1008F2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2C50);
  }

  return result;
}

uint64_t sub_10055267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LocalizationFeature();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepingSampleDataType();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepingSampleAggregate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008F2C60, qword_1006F9B00);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  v21 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
  v33 = v2;
  v37 = v2;
  v38 = a1;
  sub_1004153A0(sub_1005545D0, v21, v20);

  sub_100554544(v20, v17);
  v22 = type metadata accessor for SleepingSampleBaselineComparison();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    sub_10000EA04(v17, &qword_1008F2C60, qword_1006F9B00);
LABEL_5:
    v27 = v34;
    (*(v6 + 104))(v8, enum case for LocalizationFeature.workout(_:), v34);
    static Localization.workoutUILocalizedString(_:feature:)();
    (*(v6 + 8))(v8, v27);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    return sub_10000EA04(v20, &qword_1008F2C60, qword_1006F9B00);
  }

  SleepingSampleBaselineComparison.aggregate.getter();
  (*(v23 + 8))(v17, v22);
  v24 = SleepingSampleAggregate.quantity.getter();
  (*(v12 + 8))(v14, v11);
  if (!v24)
  {
    goto LABEL_5;
  }

  v25 = v30;
  SleepingSampleViewModel.dataType.getter();
  v26 = SleepingSampleViewModel.preferredAggregateValueUnit.getter();
  HKQuantity.formattedAttributedValue(for:unit:)();

  (*(v31 + 8))(v25, v32);
  return sub_10000EA04(v20, &qword_1008F2C60, qword_1006F9B00);
}

uint64_t sub_100552AE8(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for SleepingSampleAggregate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008F2C60, qword_1006F9B00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  v14 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
  v20 = v2;
  v21 = a1;
  sub_1004153A0(sub_100554524, v14, v13);

  sub_100554544(v13, v10);
  v15 = type metadata accessor for SleepingSampleBaselineComparison();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10000EA04(v13, &qword_1008F2C60, qword_1006F9B00);
    sub_10000EA04(v10, &qword_1008F2C60, qword_1006F9B00);
  }

  else
  {
    SleepingSampleBaselineComparison.aggregate.getter();
    (*(v16 + 8))(v10, v15);
    v17 = SleepingSampleAggregate.quantity.getter();
    (*(v5 + 8))(v7, v4);
    sub_10000EA04(v13, &qword_1008F2C60, qword_1006F9B00);
    if (v17)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_100552D88@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for Color.RGBColorSpace();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v56 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DayIndex();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v47 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v47);
  v13 = &v44 - v12;
  v60 = type metadata accessor for GregorianDayRange();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_100140278(&qword_1008F2C58, &qword_1006F9AF8);
  __chkstk_darwin(v18 - 8);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = type metadata accessor for BaselineRelativeValue();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v61 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if ((v28 & 1) == 0)
  {
    *v20 = v27;
    v29 = &enum case for BaselineRelativeValue.determinate(_:);
    goto LABEL_5;
  }

  if (SleepingSampleBaselineComparison.isWarmupDay.getter())
  {
    v29 = &enum case for BaselineRelativeValue.indeterminate(_:);
LABEL_5:
    (*(v25 + 104))(v20, *v29, v24);
    (*(v25 + 56))(v20, 0, 1, v24);
    goto LABEL_7;
  }

  (*(v25 + 56))(v20, 1, 1, v24);
LABEL_7:
  sub_100553588(v20, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000EA04(v23, &qword_1008F2C58, &qword_1006F9AF8);
  }

  else
  {
    v45 = *(v25 + 32);
    v46 = v25 + 32;
    v45(v61, v23, v24);
    SleepingSampleViewModel.dayRange.getter();
    GregorianDayRange.dayIndexRange.getter();
    v30 = *(v63 + 8);
    v63 += 8;
    v30(v17, v60);
    SleepingSampleBaselineComparison.morningIndex.getter();
    sub_10055447C(&qword_1008E04C0, &protocol conformance descriptor for DayIndex, v31);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v32 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v59 + 8);
    v33(v11, v7);
    sub_10000EA04(v13, &qword_1008E04A8, &unk_1006EA860);
    if (v32)
    {
      v34 = v49;
      SleepingSampleBaselineComparison.morningIndex.getter();
      v35 = v48;
      SleepingSampleViewModel.dayRange.getter();
      v36 = v50;
      GregorianDayRange.gregorianCalendar.getter();
      v30(v35, v60);
      v37 = v55;
      DayIndex.startDate(in:)();
      (*(v51 + 8))(v36, v52);
      v33(v34, v7);
      SleepingSampleBaselineComparison.isOutOfRange.getter();
      (*(v53 + 104))(v56, enum case for Color.RGBColorSpace.displayP3(_:), v54);
      v40 = Color.init(_:red:green:blue:opacity:)();
      v41 = v62;
      v42 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
      v45((v41 + *(v42 + 20)), v61, v24);
      (*(v57 + 32))(v41, v37, v58);
      *(v41 + *(v42 + 24)) = v40;
      return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    }

    (*(v25 + 8))(v61, v24);
  }

  v38 = v62;
  v39 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  return (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
}

uint64_t sub_100553588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F2C58, &qword_1006F9AF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005535F8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  v16 = type metadata accessor for Calendar();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GregorianDayRange();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleViewModel.dayRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  (*(v6 + 8))(v8, v5);
  DayIndex.startDate(in:)();
  (*(v2 + 8))(v4, v16);
  v13 = Date.isSameDay(as:)();
  (*(v10 + 8))(v12, v9);
  return v13 & 1;
}

uint64_t sub_100553834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v27 = a2;
  v32 = type metadata accessor for Calendar();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GregorianDayRange();
  v26 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DayIndex();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  SleepingSampleBaselineComparison.morningIndex.getter();
  SleepingSampleViewModel.dayRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  v18 = *(v6 + 8);
  v25 = v6 + 8;
  v18(v8, v5);
  DayIndex.startDate(in:)();
  v19 = *(v34 + 8);
  v34 += 8;
  v20 = v32;
  v19(v4, v32);
  (*(v28 + 8))(v11, v29);
  SleepingSampleViewModel.dayRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  v18(v8, v26);
  DayIndex.startDate(in:)();
  v19(v4, v20);
  LOBYTE(v18) = Date.isSameDay(as:)();
  v21 = *(v30 + 8);
  v22 = v14;
  v23 = v31;
  v21(v22, v31);
  v21(v17, v23);
  return v18 & 1;
}

void *sub_100553BAC(uint64_t a1, int a2, __n128 a3)
{
  v83 = a2;
  v84 = a1;
  v81 = type metadata accessor for DayIndex();
  v85 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v66 - v6;
  v78 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v78);
  v79 = &v66 - v7;
  v8 = type metadata accessor for GregorianDayRange();
  v76 = *(v8 - 8);
  v77 = v8;
  __chkstk_darwin(v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E0600, qword_1006DBF90);
  __chkstk_darwin(v11 - 8);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v69 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = &v66 - v20;
  __chkstk_darwin(v21);
  v68 = &v66 - v22;
  __chkstk_darwin(v23);
  v67 = &v66 - v24;
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  __chkstk_darwin(v28);
  v30 = &v66 - v29;
  v31 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
  v89 = v3;
  v32 = sub_100666FD4(sub_100554430, v88, v31);

  v86 = v84;
  v87 = v3;
  v82 = v3;
  sub_1004158BC(sub_10055445C, v32, v15);
  v71 = 0;

  v33 = v17;
  v34 = *(v17 + 6);
  v73 = v16;
  v72 = v34;
  if (v34(v15, 1, v16) == 1)
  {
    sub_10000EA04(v15, &qword_1008E0600, qword_1006DBF90);
    v35 = _swiftEmptyArrayStorage;
    v36 = v17;
  }

  else
  {
    sub_1005544C0(v15, v30);
    sub_1002176B8(v30, v27);
    v35 = sub_1001A3728(0, 1, 1, _swiftEmptyArrayStorage);
    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1001A3728((v37 > 1), v38 + 1, 1, v35);
    }

    sub_10014C324(v30);
    v35[2] = v38 + 1;
    v36 = v33;
    sub_1005544C0(v27, v35 + ((v33[80] + 32) & ~v33[80]) + *(v33 + 9) * v38);
  }

  v39 = v82;
  SleepingSampleViewModel.dayRange.getter();
  v40 = v79;
  GregorianDayRange.dayIndexRange.getter();
  (*(v76 + 8))(v10, v77);
  v41 = v85;
  v43 = v80;
  v42 = v81;
  (*(v85 + 16))(v80, v40 + *(v78 + 36), v81);
  sub_10000EA04(v40, &qword_1008E04A8, &unk_1006EA860);
  sub_10055447C(&qword_1008E04B0, &protocol conformance descriptor for DayIndex, v44);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v41 + 8);
  v46 = v41 + 8;
  v47 = v48;
  v48(v43, v42);
  if (v45)
  {
LABEL_9:
    if (v83)
    {
      return v35;
    }

    goto LABEL_10;
  }

  v79 = v36;
  v49 = v74;
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v47(v49, v42);
  v50 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
  __chkstk_darwin(v50);
  *(&v66 - 2) = v39;
  v85 = v46;
  v51 = v42;
  v52 = sub_100666FD4(sub_1005545EC, (&v66 - 4), v50);

  __chkstk_darwin(v53);
  *(&v66 - 2) = v43;
  *(&v66 - 1) = v39;
  v54 = v75;
  sub_1004158BC(sub_1005545B4, v52, v75);

  v47(v43, v51);
  if (v72(v54, 1, v73) == 1)
  {
    sub_10000EA04(v54, &qword_1008E0600, qword_1006DBF90);
    v36 = v79;
    goto LABEL_9;
  }

  v60 = v67;
  sub_1005544C0(v54, v67);
  v61 = v68;
  sub_1002176B8(v60, v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v79;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1001A3728(0, v35[2] + 1, 1, v35);
  }

  v64 = v35[2];
  v63 = v35[3];
  if (v64 >= v63 >> 1)
  {
    v35 = sub_1001A3728((v63 > 1), v64 + 1, 1, v35);
  }

  sub_10014C324(v60);
  v35[2] = v64 + 1;
  sub_1005544C0(v61, v35 + ((v36[80] + 32) & ~v36[80]) + *(v36 + 9) * v64);
  if ((v83 & 1) == 0)
  {
LABEL_10:
    v55 = v35[2];
    if (v55)
    {
      v56 = (v36[80] + 32) & ~v36[80];
      v57 = v69;
      sub_1002176B8(v35 + v56 + *(v36 + 9) * (v55 - 1), v69);

      v58 = v57;
      v59 = v70;
      sub_1005544C0(v58, v70);
      sub_100140278(&qword_1008DF250, &qword_1006D9178);
      v35 = swift_allocObject();
      *(v35 + 1) = xmmword_1006D46C0;
      sub_1005544C0(v59, v35 + v56);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v35;
}

uint64_t sub_10055447C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005544C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100554544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F2C60, qword_1006F9B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100554604(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___CHWhatsNewViewController_buttonHandler];
  *v7 = a3;
  v7[1] = a4;
  v4[OBJC_IVAR___CHWhatsNewViewController_fitnessPlusAvailable] = a1;
  v4[OBJC_IVAR___CHWhatsNewViewController_workoutBuddySupported] = a2;
  v8 = objc_opt_self();
  sub_10000B210(a3, a4);
  v9 = [v8 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for WhatsNewViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithTitle:detailText:icon:contentLayout:", v11, 0, 0, 2);
  sub_1000245E0(a3, a4);

  return v12;
}

void sub_1005547D8()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DC990, &unk_1006FD480);
  __chkstk_darwin(v2 - 8);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30[-1] - v6;
  v8 = type metadata accessor for WhatsNewViewController();
  v31.receiver = v0;
  v31.super_class = v8;
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v12 = [v11 secondarySystemGroupedBackgroundColor];
    [v10 setBackgroundColor:v12];

    v13 = type metadata accessor for WorkoutFeatures();
    v30[3] = v13;
    v30[4] = sub_100043B08();
    v14 = sub_100005994(v30);
    (*(*(v13 - 8) + 104))(v14, enum case for WorkoutFeatures.Kahana(_:), v13);
    LOBYTE(v13) = isFeatureEnabled(_:)();
    sub_100005A40(v30);
    if ((v13 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      sub_100555360();
    }

    else
    {
      sub_100554C88();
    }

    v15 = [objc_opt_self() boldButton];
    [v15 addTarget:v1 action:"didTapContinueButton" forControlEvents:64];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    [v17 setTitle:v20 forState:0];
    UIButton.configuration.getter();
    v21 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v21 - 8) + 48))(v7, 1, v21))
    {
      sub_10015DEBC(v7, v4);
      UIButton.configuration.setter();

      sub_10015DF2C(v7);
    }

    else
    {
      v22 = [v11 blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v23 = [objc_opt_self() keyColors];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 nonGradientTextColor];

      [v17 setTintColor:v25];
      v26 = v17;
      v27 = String._bridgeToObjectiveC()();
      [v26 setAccessibilityIdentifier:v27];

      v28 = [v1 buttonTray];
      [v28 addButton:v26];

      [v1 setModalInPresentation:1];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100554C88()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedBehavior];
  if (!v2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isStandalonePhoneFitnessMode];

  v5 = &off_10083D328;
  if (!v4)
  {
    v5 = &off_10083D320;
  }

  v41 = [objc_opt_self() smm_systemImageNamed:*v5];
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v6 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v0 addBulletedListItemWithTitle:v9 description:v12 image:v41];
  if (*(v0 + OBJC_IVAR___CHWhatsNewViewController_fitnessPlusAvailable) == 1)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() smm_systemImageNamed:v13];

    v15 = [v6 mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 localizedStringForKey:v16 value:0 table:0];

    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    v18 = [v6 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    [v0 addBulletedListItemWithTitle:v17 description:v20 image:v14];
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = objc_opt_self();
  v40 = [v22 smm_systemImageNamed:v21];

  v23 = [v6 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = [v6 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  [v0 addBulletedListItemWithTitle:v25 description:v28 image:v40];
  v29 = [v1 sharedBehavior];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = [v29 isStandalonePhoneFitnessMode];

  if ((v31 & 1) == 0)
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = [v22 smm_systemImageNamed:v32];

    v34 = [v6 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    if (!v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();
    }

    v37 = [v6 mainBundle];
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 localizedStringForKey:v38 value:0 table:0];

    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();
    }

    [v0 addBulletedListItemWithTitle:v36 description:v39 image:v33];
  }
}

void sub_100555360()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    [v0 isStandalonePhoneFitnessMode];

    v2 = String._bridgeToObjectiveC()();
    v42 = objc_opt_self();
    v43 = [v42 smm_systemImageNamed:v2];

    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v8 = [v3 mainBundle];
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    [v44 addBulletedListItemWithTitle:v7 description:v11 image:v43];
    if (*(v44 + OBJC_IVAR___CHWhatsNewViewController_workoutBuddySupported) == 1)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [v42 smm_systemImageNamed:v12];

      v14 = [v3 mainBundle];
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = String._bridgeToObjectiveC()();
      }

      v18 = [v3 mainBundle];
      v19 = String._bridgeToObjectiveC()();
      v20 = String._bridgeToObjectiveC()();
      v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      [v44 addBulletedListItemWithTitle:v17 description:v21 image:v13];
    }

    v22 = String._bridgeToObjectiveC()();
    v41 = [v42 smm_systemImageNamed:v22];

    v23 = [v3 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = [v3 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [v44 addBulletedListItemWithTitle:v26 description:v30 image:v41];
    if (*(v44 + OBJC_IVAR___CHWhatsNewViewController_fitnessPlusAvailable) == 1)
    {
      v31 = String._bridgeToObjectiveC()();
      v32 = [v42 smm_systemImageNamed:v31];

      v33 = [v3 mainBundle];
      v34 = String._bridgeToObjectiveC()();
      v35 = String._bridgeToObjectiveC()();
      v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

      if (!v36)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = String._bridgeToObjectiveC()();
      }

      v37 = [v3 mainBundle];
      v38 = String._bridgeToObjectiveC()();
      v39 = String._bridgeToObjectiveC()();
      v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

      if (!v40)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = String._bridgeToObjectiveC()();
      }

      [v44 addBulletedListItemWithTitle:v36 description:v40 image:v32];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100555C2C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WhatsNewViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100555C98()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

uint64_t sub_100555D1C(uint64_t a1)
{
  result = static Font.body.getter();
  qword_1008F2CB0 = result;
  return result;
}

void sub_100555D3C()
{
  sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  v0 = UIFontDescriptorSystemDesignRounded;
  v1 = static UIFont.systemFont(ofSize:weight:design:)();

  qword_1008F2CB8 = v1;
}

uint64_t sub_100555DC0()
{
  v0 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.title(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = type metadata accessor for Font.Design();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  static Font.Weight.medium.getter();
  v11 = static Font.system(_:design:weight:)();
  sub_10000EA04(v2, &qword_1008DC448, &qword_1006D48C0);
  result = (*(v4 + 8))(v7, v3);
  qword_1008F2CC0 = v11;
  return result;
}

id sub_100555FC0()
{
  result = sub_100555FE0();
  qword_1008F2CC8 = result;
  return result;
}

id sub_100555FE0()
{
  sub_100140278(&qword_1008EC090, &qword_1006EE430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100140278(&qword_1008EC098, &qword_1006EE438);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  sub_100140278(&qword_1008EC0A0, &qword_1006EE440);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1006D1F70;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v2 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v4 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v2 + 40) = 38;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  v5 = UIFontDescriptorFeatureSettingsAttribute;
  v6 = v3;
  v7 = v4;
  v8 = sub_1004C9778(v2);
  swift_setDeallocating();
  sub_100140278(&qword_1008EC0A8, &qword_1006EE448);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(inited + 40) = v1;
  v9 = sub_1004C9D90(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008EC0B0, &qword_1006EE450);
  if (qword_1008DADC0 != -1)
  {
    swift_once();
  }

  v10 = qword_1008F2CB8;
  v11 = [qword_1008F2CB8 fontDescriptor];
  sub_100376848(v9);

  type metadata accessor for AttributeName(0);
  sub_10005FCBC(&qword_1008DBA98, type metadata accessor for AttributeName, &unk_1006D3C40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 fontDescriptorByAddingAttributes:isa];

  [v10 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

id sub_1005562E8()
{
  result = [objc_opt_self() fu_sausageFontOfSize:30.0];
  qword_1008F2CE0 = result;
  return result;
}

id sub_100556354()
{
  if (qword_1008DADD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1008F2CC8;
  qword_1008F2CF0 = qword_1008F2CC8;

  return v1;
}

void sub_1005563E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 size];
    [v1 size];
    [v1 size];
    [v1 size];
    v3.origin.x = 16.0;
    v3.origin.y = 16.0;
    v3.size.width = 40.0;
    v3.size.height = 40.0;
    CGRectGetWidth(v3);
    v4.origin.x = 16.0;
    v4.origin.y = 16.0;
    v4.size.width = 40.0;
    v4.size.height = 40.0;
    CGRectGetHeight(v4);
    CGRect.centered(in:)();
    [v1 drawInRect:?];
  }
}

id sub_1005564F0(id result)
{
  if (result)
  {
    return [result drawInRect:{16.0, 16.0, 40.0, 40.0}];
  }

  return result;
}

id sub_100556540@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008EF8C8, &unk_1006F7030);
  __chkstk_darwin(v2 - 8);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v45 - v5;
  v6 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v6 - 8);
  v51 = &v45 - v7;
  v8 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v54 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v50 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v45 - v11;
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  MindfulnessSessionViewModel.duration.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v14 = objc_opt_self();
  v53 = isa;
  v15 = [v14 stringWithNumber:isa decimalPrecision:1 roundingMode:6];
  v56 = a1;
  v52 = v10;
  if (v15)
  {
    v16 = v15;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xE100000000000000;
    v55 = 48;
  }

  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v19 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v57 = v29;
  v58 = v31;
  v49 = sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D1F70;
  *(v32 + 56) = &type metadata for String;
  v33 = sub_10000A788();
  *(v32 + 32) = v55;
  *(v32 + 40) = v18;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v33;
  *(v32 + 64) = v33;
  *(v32 + 72) = v23;
  *(v32 + 80) = v25;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  result = [objc_opt_self() fiui_meditationTeal];
  if (result)
  {

    v57 = Color.init(uiColor:)();
    sub_10005FAB0();
    AttributedString.subscript.setter();
    if (qword_1008DADC8 != -1)
    {
      swift_once();
    }

    v57 = qword_1008F2CC0;
    sub_10005F988();

    AttributedString.subscript.setter();
    v57 = v23;
    v58 = v25;
    v35 = type metadata accessor for Locale();
    v36 = v51;
    (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
    type metadata accessor for AttributedString();
    sub_10005FCBC(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    v37 = v52;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000EA04(v36, &qword_1008EB540, &unk_1006D5E20);

    if ((*(v50 + 48))(v37, 1, v54) == 1)
    {

      v38 = &qword_1008E1900;
      v39 = &unk_1006E8990;
      v40 = v37;
    }

    else
    {
      v41 = v46;
      sub_10007BE08(v37, v46);
      v42 = v48;
      static Text.Scale.secondary.getter();
      v43 = type metadata accessor for Text.Scale();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      sub_10007C0F0();
      v44 = AttributedString.subscript.modify();
      sub_10001B104(v42, v47, &qword_1008EF8C8, &unk_1006F7030);
      sub_10007C248();
      AttributedSubstring.subscript.setter();
      sub_10000EA04(v42, &qword_1008EF8C8, &unk_1006F7030);
      v44(&v57, 0);

      v38 = &qword_1008E1908;
      v39 = &unk_1006DFC40;
      v40 = v41;
    }

    return sub_10000EA04(v40, v38, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100556CA4(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR___CHMindfulnessSessionFormattingManager_fiuiFormattingManager);
  MindfulnessSessionViewModel.duration.getter();
  v3 = [v2 stringWithDuration:3 durationFormat:?];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    MindfulnessSessionViewModel.duration.getter();
    Double.write<A>(to:)();
  }

  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v6 = objc_opt_self();
  v7 = NSForegroundColorAttributeName;
  result = [v6 elapsedTimeColors];
  if (result)
  {
    v9 = result;
    v10 = [result nonGradientTextColor];

    v11 = sub_100140278(&qword_1008ECAC0, &unk_1006F9B80);
    *(inited + 40) = v10;
    *(inited + 64) = v11;
    *(inited + 72) = NSFontAttributeName;
    v12 = qword_1008DADE8;
    v13 = NSFontAttributeName;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = qword_1008F2CE0;
    *(inited + 104) = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
    *(inited + 80) = v14;
    v15 = v14;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730, &unk_1006D8460);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(NSAttributedString);
    v17 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithString:v17 attributes:isa];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100556F58(uint64_t a1, char a2, uint64_t a3, void (*a4)(id))
{
  if (a2)
  {
    v14 = 0;
    a4(0);
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:*&a1];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_100558F10(v9, v11);
    v14 = v12;

    v13 = v14;
    a4(v14);
  }
}

void sub_100557060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  MindfulnessSessionViewModel.uuid.getter();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  v13 = [v11 predicateForObjectWithUUID:isa];

  sub_1000059F8(0, &unk_1008E4060, HKCategoryType_ptr);
  v14 = HKCategoryType.init(_:)(HKCategoryTypeIdentifierMindfulSession).super.super.super.isa;
  v15 = *&v4[OBJC_IVAR___CHMindfulnessSessionFormattingManager_healthStore];
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v4;
  v16[5] = v15;
  v17 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = sub_100558F04;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DEE0;
  aBlock[3] = &unk_1008600F0;
  v18 = _Block_copy(aBlock);

  v19 = v4;
  v20 = v15;
  v21 = [v17 initWithSampleType:v14 predicate:v13 limit:1 sortDescriptors:0 resultsHandler:v18];

  _Block_release(v18);

  [v20 executeQuery:v21];
}

void sub_1005572C4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, void *a6, void *a7)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v21 = a2;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v21;
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_9:
    v23 = [objc_opt_self() mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_1005593A0();

    a4(v27);

    return;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(v11 + 16))
  {
    v12 = *(a2 + 32);
LABEL_7:
    v13 = v12;
    v14 = [objc_opt_self() predicateForSamplesAssociatedWithSample:v12];
    sub_1000059F8(0, &qword_1008F2D38, HKStateOfMindType_ptr);
    v15 = [swift_getObjCClassFromMetadata() stateOfMindType];
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = a4;
    v16[4] = a5;
    v17 = objc_allocWithZone(HKSampleQuery);
    aBlock[4] = sub_1005595C4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DEE0;
    aBlock[3] = &unk_100860140;
    v18 = _Block_copy(aBlock);
    v19 = a6;

    v20 = [v17 initWithSampleType:v15 predicate:v14 limit:1 sortDescriptors:0 resultsHandler:v18];

    _Block_release(v18);

    [a7 executeQuery:v20];

    return;
  }

  __break(1u);
}

void sub_1005575C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_4:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v7 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(a2 + 32);
    }

    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 valenceClassification];
      v12 = HKUILocalizedStringForValenceClassification();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = sub_1005593A0();

      v13 = v14;
      v8 = v14;
      goto LABEL_11;
    }

LABEL_10:
    v8 = 0;
  }

LABEL_11:
  v15 = v8;
  a5();
}

id sub_100557738(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MindfulnessSessionFormattingManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005577DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&unk_1008E9B20, &qword_1006DC6B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for Trainer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if (v11)
  {
    v12 = MindfulnessSessionViewModel.sourceRevision.getter();
    v13 = [v12 source];

    LOBYTE(v12) = [v13 _hasFirstPartyBundleID];
    if ((v12 & 1) == 0)
    {
      v14 = MindfulnessSessionViewModel.sourceRevision.getter();
      v15 = [v14 source];

      v16 = [v15 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v10 <= 1)
  {
    if (v10 <= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v10 == 2)
  {
LABEL_14:
    v17 = [objc_opt_self() mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];
    goto LABEL_15;
  }

  if (v10 != 3)
  {
LABEL_12:
    v20 = v10;
    v21 = static os_log_type_t.fault.getter();
    v22 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v21))
    {
      v23 = v22;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_10000AFDC(0xD000000000000020, 0x8000000100762B90, &v50);
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v23, v21, "%s found unexpected _HKPrivateMindfulnessType %ld; falling back to meditate", v24, 0x16u);
      sub_100005A40(v25);
    }

    goto LABEL_14;
  }

  sub_10001B104(a2, v5, &unk_1008E9B20, &qword_1006DC6B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EA04(v5, &unk_1008E9B20, &qword_1006DC6B0);
    v17 = [objc_opt_self() mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];
LABEL_15:
    v26 = v19;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_16;
  }

  (*(v7 + 32))(v9, v5, v6);
  v41 = [objc_opt_self() mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 localizedStringForKey:v42 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = Trainer.informalName.getter();
  if (!v45)
  {
    v44 = Trainer.name.getter();
  }

  v46 = v44;
  v47 = v45;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1006D46C0;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_10000A788();
  *(v48 + 32) = v46;
  *(v48 + 40) = v47;
  static String.localizedStringWithFormat(_:_:)();

  (*(v7 + 8))(v9, v6);
LABEL_16:
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v28 = objc_opt_self();
  v29 = NSForegroundColorAttributeName;
  v30 = [v28 labelColor];
  v31 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 40) = v30;
  *(inited + 64) = v31;
  *(inited + 72) = NSFontAttributeName;
  v32 = qword_1008DADB0;
  v33 = NSFontAttributeName;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_1008F2CA8;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
  *(inited + 80) = v34;
  v35 = v34;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v36 = objc_allocWithZone(NSAttributedString);
  v37 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = [v36 initWithString:v37 attributes:isa];

  return v39;
}

id sub_1005580BC(__n128 a1)
{
  MindfulnessSessionViewModel.duration.getter();
  v1.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  v2 = [objc_opt_self() stringWithNumber:v1.super.super.isa decimalPrecision:1 roundingMode:6];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 48;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = v10;
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v7 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();
  v18 = String._bridgeToObjectiveC()();

  sub_1000059F8(0, &qword_1008DB888, NSString_ptr);
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D1F70;
  *(v19 + 56) = &type metadata for String;
  v20 = sub_10000A788();
  *(v19 + 32) = v4;
  *(v19 + 40) = v6;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v20;
  *(v19 + 64) = v20;
  *(v19 + 72) = v12;
  *(v19 + 80) = v14;
  v21 = NSString.init(format:_:)();
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v23 = objc_opt_self();
  v24 = v21;
  v25 = NSForegroundColorAttributeName;
  v26 = [v23 fiui_meditationTeal];
  v27 = sub_100140278(&qword_1008ECAC0, &unk_1006F9B80);
  *(inited + 40) = v26;
  *(inited + 64) = v27;
  *(inited + 72) = NSFontAttributeName;
  v28 = qword_1008DADC0;
  v29 = NSFontAttributeName;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_1008F2CB8;
  *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  *(inited + 80) = v30;
  v31 = v30;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSMutableAttributedString);
  type metadata accessor for Key(0);
  sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = [v32 initWithString:v24 attributes:isa];

  v35 = [v24 rangeOfString:v11];
  v37 = v36;

  if (qword_1008DADD0 != -1)
  {
    swift_once();
  }

  [v34 addAttribute:v29 value:qword_1008F2CC8 range:{v35, v37, 2, 4}];

  return v34;
}

uint64_t sub_100558590(__n128 a1)
{
  v1 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if (v2)
  {
    v3 = MindfulnessSessionViewModel.sourceRevision.getter();
    v4 = [v3 source];

    LODWORD(v3) = [v4 _hasFirstPartyBundleID];
    if (!v3)
    {
      return 0;
    }

    return 0x656D2E656C707061;
  }

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x656D2E656C707061;
    }

    if (v1 == 3)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    if (!v1)
    {
      return 0x72622E656C707061;
    }

    if (v1 == 1)
    {
      return 0x65722E656C707061;
    }
  }

  v6 = v1;
  v7 = static os_log_type_t.fault.getter();
  v8 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_10000AFDC(0xD000000000000010, 0x8000000100762B50, &v12);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v9, v7, "%s found unexpected _HKPrivateMindfulnessType %ld; falling back to meditate", v10, 0x16u);
    sub_100005A40(v11);
  }

  return 0x656D2E656C707061;
}

id sub_1005587DC(__n128 a1)
{
  sub_100558590(a1);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() smm_systemImageNamed:v3];

  result = [objc_opt_self() fiui_meditationTeal];
  if (result)
  {
    v6 = result;

    v2 = [v4 imageWithTintColor:v6 renderingMode:1];

    return v2;
  }

  __break(1u);
  return result;
}

id sub_1005588A8(double a1)
{
  v2 = [objc_allocWithZone(CHWatchIconParameters) init];
  v3 = MindfulnessSessionViewModel.sourceRevision.getter();
  v4 = [v3 source];

  v5 = [v4 bundleIdentifier];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v2 setBundleID:v5];

  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  [v2 setPreferredAppStoreIconWidth:v8 * a1];
  [v2 setIconVariant2x:50];
  [v2 setIconVariant3x:50];
  return v2;
}

id sub_1005589F8(double a1)
{
  v2 = [objc_allocWithZone(CHPhoneIconParameters) init];
  v3 = MindfulnessSessionViewModel.sourceRevision.getter();
  v4 = [v3 source];

  v5 = [v4 bundleIdentifier];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v2 setBundleID:v5];

  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  [v2 setPreferredAppStoreIconWidth:v8 * a1];
  [v2 setAppIconFormat:2];
  return v2;
}

id sub_100558B34(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() timeDateFormatter];
  MindfulnessSessionViewModel.startDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = [v6 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MindfulnessSessionViewModel.endDate.getter();
  v13 = Date._bridgeToObjectiveC()().super.isa;
  v8(v5, v2);
  v14 = v6;
  v15 = [v6 stringFromDate:v13];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v36 = v10;
  v37 = v12;
  v19._countAndFlagsBits = 9666786;
  v19._object = 0xA300000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v16;
  v20._object = v18;
  String.append(_:)(v20);

  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v22 = objc_opt_self();
  v23 = NSForegroundColorAttributeName;
  v24 = [v22 secondaryLabelColor];
  v25 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSFontAttributeName;
  v26 = qword_1008DADE0;
  v27 = NSFontAttributeName;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1008F2CD8;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
  *(inited + 80) = v28;
  v29 = v28;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(NSAttributedString);
  v31 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithString:v31 attributes:v32];

  return v33;
}

void sub_100558F10(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v4 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = v10;
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_1000059F8(0, &qword_1008DB888, NSString_ptr);
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D1F70;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_10000A788();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v16;
  *(v15 + 64) = v16;
  *(v15 + 72) = v12;
  *(v15 + 80) = v14;

  v17 = NSString.init(format:_:)();
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v19 = objc_opt_self();
  v20 = v17;
  v21 = NSForegroundColorAttributeName;
  v22 = [v19 heartRateColors];

  if (v22)
  {

    v23 = [v22 nonGradientTextColor];

    v24 = sub_100140278(&qword_1008ECAC0, &unk_1006F9B80);
    *(inited + 40) = v23;
    *(inited + 64) = v24;
    *(inited + 72) = NSFontAttributeName;
    v25 = qword_1008DADF0;
    v26 = NSFontAttributeName;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = qword_1008F2CE8;
    *(inited + 104) = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
    *(inited + 80) = v27;
    v28 = v27;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730, &unk_1006D8460);
    swift_arrayDestroy();
    v29 = objc_allocWithZone(NSMutableAttributedString);
    type metadata accessor for Key(0);
    sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [v29 initWithString:v20 attributes:isa];

    v32 = [v20 rangeOfString:v11];
    v34 = v33;

    if (qword_1008DADF8 != -1)
    {
      swift_once();
    }

    [v31 addAttribute:v26 value:qword_1008F2CF0 range:{v32, v34, 2, 4}];
  }

  else
  {

    __break(1u);
  }
}

id sub_1005593A0()
{
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v1 = objc_opt_self();
  v2 = NSForegroundColorAttributeName;
  v3 = [v1 systemTealColor];
  v4 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 40) = v3;
  *(inited + 64) = v4;
  *(inited + 72) = NSFontAttributeName;
  v5 = qword_1008DAE00;
  v6 = NSFontAttributeName;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1008F2CF8;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
  *(inited + 80) = v7;
  v8 = v7;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(NSAttributedString);
  v10 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10005FCBC(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithString:v10 attributes:isa];

  return v12;
}

uint64_t sub_1005595D8(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MetricDetailViewModel(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_10000EA04(a1, &qword_1008DC408, &qword_1006D4870);
    v16 = sub_1004C53EC(a2, a3 & 1);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100492548();
        v20 = v24;
      }

      sub_10002B380(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for MetricDetailViewModel);
      sub_10056D018(v18, v20);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_10000EA04(v10, &qword_1008DC408, &qword_1006D4870);
  }

  else
  {
    sub_10002B380(a1, v15, type metadata accessor for MetricDetailViewModel);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_10048F680(v15, a2, a3 & 1, v21);
    *v3 = v24;
  }

  return result;
}

uint64_t sub_100559840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10048F7E4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for Date();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1004C577C(a2, a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1004927A0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for Date();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_10056E4C4(v11, v13, &type metadata accessor for Date, &qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for Date();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100559A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10048FCBC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_1004C5998(a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_100492AA8();
        v13 = v15;
      }

      sub_10056D39C(v11, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_100559B18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 1)
  {
    v5 = sub_1004C5AEC(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100492C0C();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);

      sub_10056D50C(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_10048FE1C(a1, a2, v16);
    v17 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100559CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000EA04(a1, &qword_1008E9A30, &unk_1006F50F0);
    v14 = sub_1004C5998(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100493614();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_10056DB70(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000EA04(v8, &qword_1008E9A30, &unk_1006F50F0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100490374(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_100559F2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_10000EA04(a1, &qword_1008E9A30, &unk_1006F50F0);
    sub_1004D902C(a2, v7);
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000EA04(v7, &qword_1008E9A30, &unk_1006F50F0);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100490170(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for IndexPath();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_10055A158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1004904DC(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for DateComponents();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1004C59D4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10049387C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for DateComponents();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_10056E4C4(v11, v13, &type metadata accessor for DateComponents, &qword_1008DF090, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for DateComponents();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10055A35C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TrendListMetric(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000EA04(a1, &qword_1008E3D18, &unk_1006E1370);
    v14 = sub_1004CD4B0(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1004938A4();
        v18 = v22;
      }

      sub_10002B380(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for TrendListMetric);
      sub_10056DD1C(v16, v18, type metadata accessor for TrendListMetric);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000EA04(v8, &qword_1008E3D18, &unk_1006E1370);
  }

  else
  {
    sub_10002B380(a1, v13, type metadata accessor for TrendListMetric);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1004906E0(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_10055A5C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008DC408, &qword_1006D4870);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MetricDetailViewModel(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000EA04(a1, &qword_1008DC408, &qword_1006D4870);
    v14 = sub_1004CD4B0(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100494048();
        v18 = v22;
      }

      sub_10002B380(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for MetricDetailViewModel);
      sub_10056DD1C(v16, v18, type metadata accessor for MetricDetailViewModel);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000EA04(v8, &qword_1008DC408, &qword_1006D4870);
  }

  else
  {
    sub_10002B380(a1, v13, type metadata accessor for MetricDetailViewModel);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100490C2C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_10055A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1001AA76C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1004910A8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000EA04(a1, &qword_1008E51F0, qword_1006D50E0);
    sub_10056CE04(a2, a3, v9);

    return sub_10000EA04(v9, &qword_1008E51F0, qword_1006D50E0);
  }

  return result;
}

uint64_t sub_10055A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100140278(&unk_1008E9B20, &qword_1006DC6B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Trainer();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_10000EA04(a1, &unk_1008E9B20, &qword_1006DC6B0);
    sub_10056CEA8(a2, a3, v9);

    return sub_10000EA04(v9, &unk_1008E9B20, &qword_1006DC6B0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1004911F8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_10055AAD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1004913C0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10005F9DC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100495684();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_10056E4C4(v11, v13, &type metadata accessor for UUID, &qword_1008E4E10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10055ACD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for WorkoutChartViewModel(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000EA04(a1, &qword_1008DD250, &qword_1006D63D0);
    v14 = sub_1004C63C4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100496138();
        v18 = v22;
      }

      sub_10002B380(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for WorkoutChartViewModel);
      sub_10056E8E8(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000EA04(v8, &qword_1008DD250, &qword_1006D63D0);
  }

  else
  {
    sub_10002B380(a1, v13, type metadata accessor for WorkoutChartViewModel);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100491CF0(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

double sub_10055AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10056CCD0(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000EA04(v10, &qword_1008E1760, &qword_1006D4490);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

uint64_t sub_10055B134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E9D88, HKHeartRateSummaryReading_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1000059F8(0, &qword_1008E9D88, HKHeartRateSummaryReading_ptr);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a4;
  v11 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_10055B230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008EE6F0, HKQuantitySample_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10055B2D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10055B348@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if (v12)
  {
    v13 = [v12 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v5 + 32);
    v14(v11, v7, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
    return (v14)(a2, v11, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4, v9);
    v16 = [*(v2 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = (*(v5 + 48))(v11, 1, v4);
    if (result != 1)
    {
      return sub_10000EA04(v11, &unk_1008F73A0, &unk_1006DB450);
    }
  }

  return result;
}

uint64_t sub_10055B568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if (v10)
  {
    v11 = [v10 endDate];
    if (v11)
    {
      v12 = v11;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    }

    else
    {
      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    sub_100015E80(v5, v9, &unk_1008F73A0, &unk_1006DB450);
    type metadata accessor for Date();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) != 1)
    {
      return (*(v14 + 32))(a1, v9, v13);
    }
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v15 = [*(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for Date();
  result = (*(*(v13 - 8) + 48))(v9, 1, v13);
  if (result != 1)
  {
    return sub_10000EA04(v9, &unk_1008F73A0, &unk_1006DB450);
  }

  return result;
}

uint64_t sub_10055B81C()
{

  v1 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore__chartData;
  v2 = sub_100140278(&qword_1008F2F00, &qword_1006F9CE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10055B920()
{
  sub_10055B81C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutChartDataStore(uint64_t a1)
{
  result = qword_1008F2D70;
  if (!qword_1008F2D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055B9CC(uint64_t a1)
{
  sub_10055BA9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10055BA9C(uint64_t a1)
{
  if (!qword_1008F2D80)
  {
    sub_100141EEC(&unk_1008F2D88, &qword_1007020F0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008F2D80);
    }
  }
}

uint64_t sub_10055BB00@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutChartDataStore(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10055BB40()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutChartDataElement(0);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v39 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  v49 = v14;
  if (v18)
  {
    v19 = sub_100655C20(v14, v15);
  }

  else
  {
    v19 = sub_1003AB20C(v14, v15);
  }

  v20 = v19;
  sub_10055B348(v17);
  v51 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
  v21 = v48;
  sub_10055B568(v48);
  v50 = v17;
  v22 = static Date.< infix(_:_:)();
  v52 = *(v11 + 8);
  v53 = v11 + 8;
  v52(v21, v49);
  v54 = v1;
  if (v22)
  {
    v23 = *(v11 + 16);
    v42 = v5 + 16;
    v43 = v23;
    v44 = v11 + 16;
    v41 = (v11 + 32);
    v47 = _swiftEmptyArrayStorage;
    v23(v21, v50, v49);
LABEL_8:
    result = DateInterval.init(start:duration:)();
    v29 = 0;
    v30 = v20[2];
    while (1)
    {
      if (v30 == v29)
      {
        goto LABEL_6;
      }

      if (v29 >= v20[2])
      {
        break;
      }

      (*(v5 + 16))(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29++, v4);
      v31 = DateInterval.intersects(_:)();
      result = (*(v5 + 8))(v7, v4);
      if (v31)
      {
        v33 = v45;
        sub_100560808(v50, v32);
        v34 = v40;
        *(v33 + *(v40 + 20)) = 0;
        *(v33 + *(v34 + 24)) = 0;
        *(v33 + *(v34 + 28)) = 0;
        v35 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001A1EB4(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1001A1EB4((v36 > 1), v37 + 1, 1, v35);
        }

        v35[2] = v37 + 1;
        v38 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v47 = v35;
        sub_10002B380(v45, v35 + v38 + *(v39 + 72) * v37, type metadata accessor for WorkoutChartDataElement);
LABEL_6:
        v24 = v50;
        v25 = v48;
        Date.addingTimeInterval(_:)();
        v26 = v49;
        v52(v24, v49);
        (*v41)(v24, v25, v26);
        (*(v5 + 8))(v46, v4);
        sub_10055B568(v25);
        v27 = static Date.< infix(_:_:)();
        v52(v25, v26);
        if ((v27 & 1) == 0)
        {
          goto LABEL_18;
        }

        v43(v25, v24, v26);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v26 = v49;
    v24 = v50;
LABEL_18:
    v52(v24, v26);

    *(v54 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData) = v47;
  }

  return result;
}

uint64_t sub_10055C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  sub_100140278(&qword_1008E1760, &qword_1006D4490);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10055C148, 0, 0);
}

uint64_t sub_10055C148()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = **(v0 + 96);
    v25 = type metadata accessor for TaskPriority();
    v4 = *(v25 - 8);
    v24 = *(v4 + 56);
    v23 = (v4 + 48);
    v22 = (v4 + 8);

    v5 = 32;
    v27 = v2;
    while (1)
    {
      v28 = v3;
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v2 + v5);
      v24(v8, 1, 1, v25);
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v11;
      *(v12 + 40) = v10;
      sub_10056CCD0(v8, v9);
      v14 = (*v23)(v9, 1, v25);
      v15 = *(v0 + 112);
      if (v14 == 1)
      {
        sub_10000EA04(*(v0 + 112), &qword_1008E1760, &qword_1006D4490);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v22)(v15, v25);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1006F9C40;
      *(v19 + 24) = v12;

      if (v17 | v16)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v17;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v6;
      *(v0 + 88) = v26;
      swift_task_create();

      sub_10000EA04(v7, &qword_1008E1760, &qword_1006D4490);
      ++v5;
      v2 = v27;
      v3 = v28 - 1;
      if (v28 == 1)
      {

        break;
      }
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10055C47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a4;
  return _swift_task_switch(sub_10055C4A0, 0, 0);
}

uint64_t sub_10055C4A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_10055C590;
    v3 = *(v0 + 64);

    return sub_10055C6A0(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10055C590()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10055C6A0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_10055C6C4, 0, 0);
}

uint64_t sub_10055C6C4()
{
  v1 = *(v0 + 32);
  if (v1 > 4)
  {
    if (*(v0 + 32) <= 7u)
    {
      if (v1 == 5)
      {
        v2 = &unk_100860320;
        v3 = &selRef_groundContactTimeSamplesForWorkout_workoutActivity_completion_;
        v4 = sub_10057102C;
      }

      else if (v1 == 6)
      {
        v2 = &unk_100860668;
        v3 = &selRef_strideLengthSamplesForWorkout_workoutActivity_completion_;
        v4 = sub_100571110;
      }

      else
      {
        v2 = &unk_1008606E0;
        v3 = &selRef_verticalOscillationSamplesForWorkout_workoutActivity_completion_;
        v4 = sub_100571128;
      }

LABEL_23:
      sub_10055E53C(v4, v2, v3);
      goto LABEL_24;
    }

    if (v1 != 8)
    {
      if (v1 != 9)
      {
        sub_1005669B0(10, &unk_1008601F0, sub_10056CDF8, &unk_100860208, &selRef_cadenceSamplesForWorkout_workoutActivity_completion_);
        goto LABEL_24;
      }

      v2 = &unk_1008605F0;
      v3 = &selRef_cyclingSpeedSamplesForWorkout_workoutActivity_completion_;
      v4 = sub_1005710F8;
      goto LABEL_23;
    }

    sub_10055E2F4(8);
LABEL_24:
    v7 = *(v0 + 8);

    return v7();
  }

  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      sub_10055E2F4(1);
    }

    else
    {
      sub_10055E1E8();
    }

    goto LABEL_24;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      sub_1005669B0(3, &unk_1008601F0, sub_10056CDF8, &unk_100860208, &selRef_cadenceSamplesForWorkout_workoutActivity_completion_);
    }

    else
    {
      sub_10055E3EC();
    }

    goto LABEL_24;
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100223AEC;

  return sub_10055C928();
}

uint64_t sub_10055C928()
{
  v1[26] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = sub_100140278(&qword_1008F2EE8, &unk_1006F9CB8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  v1[36] = v4;
  v1[37] = *(v4 - 8);
  v1[38] = swift_task_alloc();
  sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();

  return _swift_task_switch(sub_10055CBB8, 0, 0);
}

uint64_t sub_10055CBB8()
{
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_locationReadings);
  if ([v1 count] < 2)
  {
    goto LABEL_62;
  }

  v2 = [v1 allValidLocations];
  sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v4)
  {
    v125 = v0;
    if (i)
    {
      if (i >= 1)
      {
        v6 = 0;
        v7 = v0[42];
        v126 = v0[26];
        v119 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
        v121 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity;
        v8 = v3 & 0xC000000000000001;
        v123 = (v7 + 32);
        aBlock = (v7 + 56);
        v109 = (v7 + 48);
        v110 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
        v137 = (v7 + 8);
        v9 = &_swiftEmptyDictionarySingleton;
        v10 = &selRef_initWithLayer_;
        __asm { FMOV            V0.2D, #1.0 }

        v113 = *(&_Q0 + 1);
        v115 = i;
        v117 = v3;
        v114 = v3 & 0xC000000000000001;
        while (1)
        {
          if (v8)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(v3 + 8 * v6 + 32);
          }

          v17 = v16;
          [v16 v10[505]];
          if (v18 <= 0.0)
          {
          }

          else
          {
            v129 = v9;
            v131 = v17;
            v19 = [v17 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = v126;
            v21 = *(v126 + v121);
            v22 = v0[45];
            if (v21)
            {
              v23 = v0[44];
              v24 = v0[40];
              v25 = v0[41];
              v26 = [*(v126 + v121) startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = *v123;
              (*v123)(v24, v23, v25);
              v3 = *aBlock;
              (*aBlock)(v24, 0, 1, v25);
              v28 = v25;
              v20 = v126;
              v27(v22, v24, v28);
              v0 = v125;
            }

            else
            {
              v30 = v0[40];
              v29 = v0[41];
              v3 = *aBlock;
              (*aBlock)(v30, 1, 1, v29);
              v31 = [*(v126 + v110) startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              if ((*v109)(v30, 1, v29) != 1)
              {
                sub_10000EA04(v0[40], &unk_1008F73A0, &unk_1006DB450);
              }
            }

            v32 = v0[45];
            v33 = v0[41];
            Date.timeIntervalSince(_:)();
            v35 = v34;
            v36 = *v137;
            (*v137)(v32, v33);
            v37 = v35 / *(*(v20 + v119) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
            if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_71;
            }

            if (v37 <= -9.22337204e18)
            {
              goto LABEL_72;
            }

            if (v37 >= 9.22337204e18)
            {
              goto LABEL_73;
            }

            if (v21)
            {
              v39 = v0[43];
              v38 = v0[44];
              v40 = v0[41];
              v41 = v0[39];
              v42 = [v21 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v43 = *v123;
              (*v123)(v41, v38, v40);
              (v3)(v41, 0, 1, v40);
              v43(v39, v41, v40);
              v0 = v125;
              i = v115;
            }

            else
            {
              v44 = v0[41];
              v45 = v0[39];
              (v3)(v45, 1, 1, v44);
              v46 = [*(v20 + v110) startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              i = v115;
              if ((*v109)(v45, 1, v44) != 1)
              {
                sub_10000EA04(v0[39], &unk_1008F73A0, &unk_1006DB450);
              }
            }

            v47 = v0[46];
            v48 = v0[43];
            v49 = v0[41];
            Date.addingTimeInterval(_:)();
            v36(v48, v49);
            v36(v47, v49);
            if (*(v129 + 2) && (v51 = sub_1004C577C(v0[47], v50), (v52 & 1) != 0))
            {
              v53 = *(*(v129 + 7) + 8 * v51);
            }

            else
            {
              type metadata accessor for WorkoutDataBucket();
              v53 = swift_allocObject();
              *(v53 + 16) = 0;
              *(v53 + 24) = 0;
            }

            v3 = v117;
            v54 = v0[47];
            v55 = v0[41];
            [v131 altitude];
            v56.f64[1] = v113;
            v56.f64[0] = v57;
            *(v53 + 16) = vaddq_f64(v56, *(v53 + 16));

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_100491B10(v53, v54, isUniquelyReferenced_nonNull_native);

            v9 = v129;
            v36(v54, v55);
            v8 = v114;
            v10 = &selRef_initWithLayer_;
          }

          if (i == ++v6)
          {
            goto LABEL_30;
          }
        }
      }

      __break(1u);
      goto LABEL_76;
    }

    v9 = &_swiftEmptyDictionarySingleton;
LABEL_30:
    v0[48] = v9;

    v59 = *(v9 + 2);
    if (!v59)
    {
      break;
    }

    v3 = v0[42];
    v120 = v0[36];
    v122 = v0[37];
    v118 = v0[33];
    sub_100185C34(0, v59, 0);
    v60 = _swiftEmptyArrayStorage;
    v61 = v9 + 64;
    v62 = _HashTable.startBucket.getter();
    v63 = 0;
    v138 = *(v9 + 9);
    v124 = v3;
    v116 = v3 + 16;
    v109 = (v9 + 72);
    v111 = v59;
    v112 = v9 + 64;
    while ((v62 & 0x8000000000000000) == 0 && v62 < 1 << v9[32])
    {
      if ((*&v61[8 * (v62 >> 6)] & (1 << v62)) == 0)
      {
        goto LABEL_66;
      }

      if (v138 != *(v9 + 9))
      {
        goto LABEL_67;
      }

      v132 = v62 >> 6;
      v127 = v63;
      v67 = v0[41];
      v68 = v0[38];
      v69 = v9;
      aBlocka = v60;
      v71 = v0[34];
      v70 = v0[35];
      v72 = *(v124 + 16);
      v3 = v116;
      v72(v70, v69[6] + *(v124 + 72) * v62, v67);
      v73 = *(v69[7] + 8 * v62);
      (*(v124 + 32))(v71, v70, v67);
      *(v71 + *(v118 + 48)) = v73;
      v72(v68, v71, v67);
      v74 = *(v73 + 16) / *(v73 + 24);
      *(v68 + v120[5]) = v74;
      *(v68 + v120[6]) = v74;
      *(v68 + v120[7]) = v74;

      v75 = v71;
      v60 = aBlocka;
      sub_10000EA04(v75, &qword_1008F2EE8, &unk_1006F9CB8);
      v77 = aBlocka[2];
      v76 = aBlocka[3];
      if (v77 >= v76 >> 1)
      {
        sub_100185C34((v76 > 1), v77 + 1, 1);
        v60 = aBlocka;
      }

      v0 = v125;
      v78 = v125[38];
      v60[2] = v77 + 1;
      sub_10002B380(v78, v60 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v77, type metadata accessor for WorkoutChartDataElement);
      v64 = 1 << *(v69 + 32);
      if (v62 >= v64)
      {
        goto LABEL_68;
      }

      v61 = v112;
      v79 = *&v112[8 * v132];
      if ((v79 & (1 << v62)) == 0)
      {
        goto LABEL_69;
      }

      v9 = v69;
      if (v138 != *(v69 + 9))
      {
        goto LABEL_70;
      }

      v80 = v79 & (-2 << (v62 & 0x3F));
      if (v80)
      {
        v64 = __clz(__rbit64(v80)) | v62 & 0x7FFFFFFFFFFFFFC0;
        v65 = v111;
        v66 = v127;
      }

      else
      {
        v81 = v132 << 6;
        v65 = v111;
        v82 = &v109[v132];
        v83 = v132 + 1;
        v66 = v127;
        while (v83 < (v64 + 63) >> 6)
        {
          v84 = *v82++;
          v3 = v84;
          v81 += 64;
          ++v83;
          if (v84)
          {
            sub_100453590(v62, v138, 0);
            v64 = __clz(__rbit64(v3)) + v81;
            goto LABEL_33;
          }
        }

        sub_100453590(v62, v138, 0);
      }

LABEL_33:
      v63 = v66 + 1;
      v62 = v64;
      if (v63 == v65)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_50:
  v0[49] = v60;
  v85 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v4 = [v85 fiui_activityType];
  if (!v4)
  {
LABEL_76:
    __break(1u);
    return _swift_continuation_await(v4);
  }

  v86 = v4;
  v87 = [v4 isDownhillSnowSport];

  if (v87)
  {
    v88 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator);
    v0[2] = v0;
    v0[7] = v0 + 25;
    v0[3] = sub_10055D974;
    v89 = swift_continuation_init();
    v0[17] = sub_100140278(&qword_1008F2EF8, &unk_1006F9CC8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1005609A8;
    v0[13] = &unk_1008602F8;
    v0[14] = v89;
    [v88 downhillRunsForWorkout:v85 completion:v0 + 10];
    v4 = v0 + 2;

    return _swift_continuation_await(v4);
  }

  v90 = v0 + 18;
  v91 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if (v91)
  {
    v92 = [v91 fiui_elevationGain];
  }

  else
  {
    v92 = [v85 fiui_elevationGain];
  }

  v93 = v92;
  aBlockb = v90;
  if (v93)
  {
    v94 = [objc_opt_self() meterUnit];
    [v93 doubleValueForUnit:v94];
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v97 = v93 == 0;
  v130 = v93;
  v0 = v125;
  v98 = v125[49];
  v100 = v125[31];
  v99 = v125[32];
  v101 = v125[29];
  v133 = v125[30];
  v103 = v125[27];
  v102 = v125[28];
  v104 = v125[26];
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v128 = static OS_dispatch_queue.main.getter();
  v105 = swift_allocObject();
  *(v105 + 16) = v96;
  *(v105 + 24) = v97;
  *(v105 + 32) = v104;
  *(v105 + 40) = v98;
  v125[22] = sub_100571004;
  v125[23] = v105;
  v125[18] = _NSConcreteStackBlock;
  v125[19] = 1107296256;
  v125[20] = sub_1000449A8;
  v125[21] = &unk_1008602D0;
  v106 = _Block_copy(aBlockb);

  static DispatchQoS.unspecified.getter();
  v125[24] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v106);

  (*(v102 + 8))(v101, v103);
  (*(v100 + 8))(v99, v133);

LABEL_62:

  v107 = v0[1];

  return v107();
}

uint64_t sub_10055D974()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_10055DF20;
  }

  else
  {
    v2 = sub_10055DA84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10055DA84()
{
  v1 = v0[25];
  v2 = 0;
  if (!v1)
  {
    goto LABEL_15;
  }

  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v6;
    }

    while (v3 != v6);
  }

  else
  {
    v8 = (v1 + 32);
    do
    {
      v9 = *v8++;
      v10 = *(v9 + OBJC_IVAR___CHWorkoutDownhillRun_downhillRun);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

LABEL_13:

  type metadata accessor for DownhillRunsStats();
  swift_allocObject();
  DownhillRunsStats.init(downhillRuns:)();
  v11 = DownhillRunsStats.elevationDescended.getter();

  if (!v11)
  {
LABEL_15:
    v27 = 0;
    v14 = 1;
    goto LABEL_16;
  }

  v12 = [objc_opt_self() meterUnit];
  v27 = v11;
  [v11 doubleValueForUnit:v12];
  v2 = v13;

  v14 = 0;
LABEL_16:
  v15 = v0[49];
  v16 = v0[32];
  v25 = v0[31];
  v17 = v0[29];
  v26 = v0[30];
  v18 = v0[27];
  v19 = v0[28];
  v20 = v0[26];
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = v14;
  *(v21 + 32) = v20;
  *(v21 + 40) = v15;
  v0[22] = sub_100571004;
  v0[23] = v21;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000449A8;
  v0[21] = &unk_1008602D0;
  v22 = _Block_copy(v0 + 18);

  static DispatchQoS.unspecified.getter();
  v0[24] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v19 + 8))(v17, v18);
  (*(v25 + 8))(v16, v26);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10055DF20(uint64_t a1)
{
  swift_willThrow();

  v2 = v1[49];
  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[29];
  v14 = v1[30];
  v6 = v1[27];
  v7 = v1[28];
  v8 = v1[26];
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = v8;
  *(v9 + 40) = v2;
  v1[22] = sub_100571004;
  v1[23] = v9;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000449A8;
  v1[21] = &unk_1008602D0;
  v10 = _Block_copy(v1 + 18);

  static DispatchQoS.unspecified.getter();
  v1[24] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v3, v14);

  v11 = v1[1];

  return v11();
}

void sub_10055E1E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator);
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_100571044;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10055B134;
  v6[3] = &unk_100860398;
  v5 = _Block_copy(v6);

  [v1 heartRateDataForWorkout:v2 workoutActivity:v3 completion:v5];
  _Block_release(v5);
}

void sub_10055E2F4(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if (v3)
  {
    v4 = [v3 workoutConfiguration];
    [v4 activityType];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) workoutActivityType];
  }

  v5 = _HKWorkoutSpeedTypeForActivityType();
  if (v5)
  {

    v6 = &unk_1008604C0;
    v7 = &unk_1008604D8;
    v8 = &selRef_paceSamplesForWorkout_workoutActivity_completion_;
    v9 = sub_100571074;
  }

  else
  {
    v6 = &unk_100860560;
    v7 = &unk_100860578;
    v8 = &selRef_distanceSamplesForWorkout_workoutActivity_completion_;
    v9 = sub_100571084;
  }

  sub_1005669B0(v2, v6, v9, v7, v8);
}

void sub_10055E3EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator);
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v9[4] = sub_10057105C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10055B230;
  v9[3] = &unk_100860438;
  v8 = _Block_copy(v9);

  [v3 powerSamplesForWorkout:v4 workoutActivity:v5 completion:v8];
  _Block_release(v8);
}

void sub_10055E53C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator);
  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  v10 = swift_allocObject();
  swift_weakInit();
  v12[4] = a1;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10055B230;
  v12[3] = a2;
  v11 = _Block_copy(v12);

  [v7 *a3];
  _Block_release(v11);
}

void sub_10055E640(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutChartDataElement(0);
  __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v19))
    {
      v21 = v20;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_10000AFDC(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v19, "Error getting cadence: %s", v22, 0xCu);
      sub_100005A40(v23);
    }

    else
    {
    }
  }

  else
  {
    v56 = v15;
    v57 = v7;
    v27 = v16;
    v58 = v11;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (a1)
      {
        if (a1 >> 62)
        {
          v51 = Strong;
          v29 = _CocoaArrayWrapper.endIndex.getter();
          Strong = v51;
        }

        else
        {
          v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = v58;
        v31 = v13;
        if (v29)
        {
          v32 = Strong;

          v33 = sub_10057011C(a1, v32, v32);
          v55 = v32;

          if (v33)
          {
            v34 = swift_allocObject();
            v35 = *&v55[OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity];
            v53 = v9;
            if (!v35)
            {
              v35 = *&v55[OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout];
            }

            [v35 fiui_averageCadence];
            v36 = v59;
            v54 = v10;
            *(v34 + 16) = v37;
            if (v37 < 2.22044605e-16)
            {
              v38 = *(v33 + 16);
              if (v38)
              {
                v39 = v27;
                v52 = v34;
                v40 = *(v56 + 20);
                v41 = v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
                v42 = *(v39 + 72);
                v43 = 0.0;
                do
                {
                  sub_100169E98(v41, v18, type metadata accessor for WorkoutChartDataElement);
                  v44 = *&v18[v40];
                  sub_100169F24(v18, type metadata accessor for WorkoutChartDataElement);
                  v43 = v43 + v44;
                  v41 += v42;
                  --v38;
                }

                while (v38);
                v45 = v43 / *(v33 + 16);
                v30 = v58;
                v36 = v59;
                v34 = v52;
              }

              else
              {
                v45 = NAN;
              }

              *(v34 + 16) = v45;
            }

            sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
            v46 = v33;
            v47 = static OS_dispatch_queue.main.getter();
            v48 = swift_allocObject();
            *(v48 + 16) = v55;
            *(v48 + 24) = v34;
            *(v48 + 32) = v36;
            *(v48 + 40) = v46;
            aBlock[4] = sub_100570F8C;
            aBlock[5] = v48;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000449A8;
            aBlock[3] = &unk_100860280;
            v49 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100140278(&unk_1008E7F50, &qword_1006D8190);
            sub_10002621C();
            v50 = v53;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v49);

            (*(v57 + 8))(v50, v6);
            (*(v30 + 8))(v31, v54);
          }
        }
      }
    }
  }
}

uint64_t sub_10055ECAC(unint64_t a1, char *a2)
{
  v135 = a2;
  v3 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v3 - 8);
  v126 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v108 - v6;
  v8 = type metadata accessor for Date();
  v129 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  __chkstk_darwin(v13);
  v138 = &v108 - v14;
  __chkstk_darwin(v15);
  v17 = (&v108 - v16);
  __chkstk_darwin(v18);
  v112 = &v108 - v19;
  __chkstk_darwin(v20);
  v132 = &v108 - v21;
  v111 = type metadata accessor for DateInterval();
  v22 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100140278(&qword_1008F2EE8, &unk_1006F9CB8);
  __chkstk_darwin(v125);
  v124 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v123 = &v108 - v26;
  v122 = type metadata accessor for WorkoutChartDataElement(0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
  {
    if (result < 1)
    {
      goto LABEL_62;
    }

    v131 = v12;
    v119 = v7;
    v12 = 0;
    v128 = a1 & 0xC000000000000001;
    v118 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
    v117 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity;
    v109 = (v22 + 8);
    v114 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
    v130 = (v129 + 32);
    v134 = (v129 + 56);
    v113 = (v129 + 48);
    v137 = (v129 + 8);
    v30 = &_swiftEmptyDictionarySingleton;
    v108 = xmmword_1006D46C0;
    v115 = v17;
    v17 = &selRef_setNavigationBarHidden_animated_;
    v127 = result;
    v116 = a1;
    while (1)
    {
      v139 = v30;
      if (v128)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(a1 + 8 * v12 + 32);
      }

      v7 = v37;
      v38 = [v37 quantityType];
      v39 = [v38 aggregationStyle];

      *&v40 = 1.0;
      if (!v39)
      {
        v41 = v7;
        v42 = [v41 v17[352]];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = [v41 endDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v110;
        DateInterval.init(start:end:)();
        DateInterval.duration.getter();
        v136 = v45;
        (*v109)(v44, v111);
        v40 = v136;
        if (*&v136 <= 0.0)
        {
          v72 = static os_log_type_t.error.getter();
          v73 = HKLogWorkouts;
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v74 = swift_allocObject();
          *(v74 + 16) = v108;
          *(v74 + 56) = sub_1000059F8(0, &qword_1008EE6F0, HKQuantitySample_ptr);
          *(v74 + 64) = sub_100570F9C();
          *(v74 + 32) = v41;
          v75 = v41;
          v76 = v73;
          os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v76, "Cumulative sample missing duration, rejecting data: %@", 54, 2, v74);

          v30 = v139;
          goto LABEL_7;
        }
      }

      v136 = v40;
      v46 = [v7 v17[352]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = v135;
      v48 = *&v135[v117];
      if (v48)
      {
        v49 = [*&v135[v117] v17[352]];
        v50 = v132;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = v130;
        v51 = *v130;
        v52 = v119;
        (*v130)(v119, v50, v8);
        a1 = *v134;
        (*v134)(v52, 0, 1, v8);
        v53 = v131;
        (v51)(v131, v52, v8);
      }

      else
      {
        a1 = *v134;
        v54 = v119;
        (*v134)(v119, 1, 1, v8);
        v55 = [*&v47[v114] v17[352]];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        if ((*v113)(v54, 1, v8) != 1)
        {
          sub_10000EA04(v54, &unk_1008F73A0, &unk_1006DB450);
        }

        v53 = v131;
      }

      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *v137;
      (*v137)(v53, v8);
      v22 = v135;
      v59 = v57 / *(*&v135[v118] + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v59 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v59 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      if (v48)
      {
        v60 = [v48 startDate];
        v61 = v132;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = *v130;
        v63 = v126;
        (*v130)(v126, v61, v8);
        (a1)(v63, 0, 1, v8);
        v64 = v120;
        (v62)(v120, v63, v8);
        v65 = v115;
      }

      else
      {
        v66 = v126;
        (a1)(v126, 1, 1, v8);
        v67 = [*&v22[v114] startDate];
        v64 = v120;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = (*v113)(v66, 1, v8);
        v65 = v115;
        if (v68 != 1)
        {
          sub_10000EA04(v126, &unk_1008F73A0, &unk_1006DB450);
        }
      }

      Date.addingTimeInterval(_:)();
      v58(v64, v8);
      v58(v138, v8);
      a1 = v116;
      if (*(v139 + 2) && (v70 = sub_1004C577C(v65, v69), (v71 & 1) != 0))
      {
        v31 = *(*(v139 + 7) + 8 * v70);
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
      }

      v32 = [v7 quantity];
      [v32 _value];
      v133 = v33;

      *&v34.f64[0] = v133;
      *&v34.f64[1] = v136;
      *(v31 + 16) = vaddq_f64(v34, *(v31 + 16));
      v35 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v35;
      sub_100491B10(v31, v65, isUniquelyReferenced_nonNull_native);

      v30 = v140;
      v58(v65, v8);
      v17 = &selRef_setNavigationBarHidden_animated_;
LABEL_7:
      if (v127 == ++v12)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v30 = &_swiftEmptyDictionarySingleton;
LABEL_34:
  v77 = *(v30 + 2);
  v137 = _swiftEmptyArrayStorage;
  if (v77)
  {
    v140 = _swiftEmptyArrayStorage;
    sub_100185C34(0, v77, 0);
    v137 = v140;
    v78 = v30 + 64;
    result = _HashTable.startBucket.getter();
    v79 = result;
    v80 = 0;
    v138 = *(v30 + 9);
    v139 = v30;
    v134 = (v129 + 16);
    v135 = v30 + 64;
    v132 = v77;
    *&v133 = v129 + 32;
    v131 = v30 + 72;
    while ((v79 & 0x8000000000000000) == 0 && v79 < 1 << v30[32])
    {
      v83 = v79 >> 6;
      if ((*&v78[8 * (v79 >> 6)] & (1 << v79)) == 0)
      {
        goto LABEL_57;
      }

      if (v138 != *(v30 + 9))
      {
        goto LABEL_58;
      }

      *&v136 = v80;
      v84 = v129;
      v85 = *(v30 + 6) + *(v129 + 72) * v79;
      v86 = *(v129 + 16);
      v87 = v30;
      v88 = v28;
      v89 = v8;
      v90 = v123;
      v86(v123, v85, v89);
      v91 = *(*(v87 + 7) + 8 * v79);
      v92 = *(v84 + 32);
      v93 = v124;
      v94 = v90;
      v8 = v89;
      v28 = v88;
      v92(v124, v94, v8);
      *(v93 + *(v125 + 48)) = v91;
      v86(v88, v93, v8);
      v95 = *(v91 + 16) / *(v91 + 24);
      v96 = v122;
      *(v88 + *(v122 + 20)) = v95;
      *(v88 + *(v96 + 24)) = v95;
      *(v88 + *(v96 + 28)) = v95;

      sub_10000EA04(v93, &qword_1008F2EE8, &unk_1006F9CB8);
      v140 = v137;
      v98 = *(v137 + 2);
      v97 = *(v137 + 3);
      if (v98 >= v97 >> 1)
      {
        sub_100185C34((v97 > 1), v98 + 1, 1);
        v137 = v140;
      }

      v99 = v137;
      *(v137 + 2) = v98 + 1;
      result = sub_10002B380(v88, &v99[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v98], type metadata accessor for WorkoutChartDataElement);
      v30 = v139;
      v81 = 1 << v139[32];
      v78 = v135;
      if (v79 >= v81)
      {
        goto LABEL_59;
      }

      v100 = *&v135[8 * v83];
      if ((v100 & (1 << v79)) == 0)
      {
        goto LABEL_60;
      }

      if (v138 != *(v139 + 9))
      {
        goto LABEL_61;
      }

      v101 = v100 & (-2 << (v79 & 0x3F));
      if (v101)
      {
        v81 = __clz(__rbit64(v101)) | v79 & 0x7FFFFFFFFFFFFFC0;
        v82 = v132;
      }

      else
      {
        v102 = v83 << 6;
        v103 = v83 + 1;
        v82 = v132;
        v104 = &v131[8 * v83];
        while (v103 < (v81 + 63) >> 6)
        {
          v106 = *v104++;
          v105 = v106;
          v102 += 64;
          ++v103;
          if (v106)
          {
            result = sub_100453590(v79, v138, 0);
            v81 = __clz(__rbit64(v105)) + v102;
            goto LABEL_37;
          }
        }

        result = sub_100453590(v79, v138, 0);
      }

LABEL_37:
      v80 = v136 + 1;
      v79 = v81;
      if ((v136 + 1) == v82)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
LABEL_53:
    v107 = *(v137 + 2);

    if (!v107)
    {

      return 0;
    }

    return v137;
  }

  return result;
}

void sub_10055FAEC(uint64_t a1, char *a2, unsigned int a3, uint64_t a4)
{
  v111 = a4;
  v118 = a3;
  v114 = a1;
  v115 = a2;
  v5 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v5 - 8);
  v103 = &v98 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v121 = *(v7 - 8);
  v122 = v7;
  __chkstk_darwin(v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v98 - v11;
  __chkstk_darwin(v13);
  v120 = &v98 - v14;
  __chkstk_darwin(v15);
  v99 = &v98 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  __chkstk_darwin(v20);
  v100 = &v98 - v21;
  v22 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v22 - 8);
  v107 = &v98 - v23;
  v109 = type metadata accessor for Calendar();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v116 = v25;
  v117 = v26;
  __chkstk_darwin(v25);
  v119 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v98 - v29;
  v112 = type metadata accessor for WorkoutChartViewModel(0);
  v101 = *(v112 - 8);
  __chkstk_darwin(v112);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v102 = &v98 - v34;
  v35 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v36 = [objc_opt_self() mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v115;
  swift_beginAccess();
  v43 = sub_100197684(v39, v41, *(v42 + 2), 0, v118);

  v113 = v43;
  v115 = v30;
  v44 = v114;
  sub_10055B348(v30);
  sub_10055B568(v119);
  v106 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v110 = v35;

  UUID.init()();
  v45 = v112;
  v104 = *(v112 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v105;
  static Calendar.current.getter();
  v48 = v107;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v108 + 8))(v50, v109);
  *&v32[v104] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v54 = v45;
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v32[v52] = v53;
  v32[v45[5]] = v118;
  v55 = sub_1005D6184();
  v56 = &v32[v45[6]];
  *v56 = v55;
  v56[1] = v57;
  *&v32[v45[7]] = v113;
  v123[0] = v111;
  v58 = v111;

  sub_10056EDEC(v123);
  v59 = v45[13];
  *&v32[v45[8]] = v123[0];
  v32[v45[9]] = 0;
  v60 = v45[10];
  v61 = v116;
  v62 = *(v117 + 16);
  v62(&v32[v60], v115, v116);
  v62(&v32[v54[11]], v119, v61);
  *&v32[v54[12]] = v106;
  *&v32[v59] = 0;
  *&v32[v54[14]] = v110;
  v63 = *(v58 + 16);
  if (v63)
  {
    v64 = v58;
    v65 = v119;
    v66 = v117;
    v110 = v32;
    v67 = v64 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    sub_100169E98(v67, v19, type metadata accessor for WorkoutChartDataElement);
    if (v63 == 1)
    {
LABEL_3:
      v68 = v19;
      v69 = v100;
      sub_10002B380(v68, v100, type metadata accessor for WorkoutChartDataElement);
      v70 = *(v69 + *(v122 + 24));
      sub_100169F24(v69, type metadata accessor for WorkoutChartDataElement);
      v54 = v112;
      *&v110[*(v112 + 60)] = v70;
      sub_100169E98(v67, v120, type metadata accessor for WorkoutChartDataElement);
      v71 = v116;
      v72 = v66;
      v73 = v65;
      if (v63 == 1)
      {
LABEL_4:
        v74 = *(v72 + 8);
        v74(v73, v71);
        v74(v115, v71);
        v75 = v99;
        sub_10002B380(v120, v99, type metadata accessor for WorkoutChartDataElement);
        v76 = *(v75 + *(v122 + 28));
        sub_100169F24(v75, type metadata accessor for WorkoutChartDataElement);
        v77 = v110;
        goto LABEL_6;
      }

      v86 = 1;
      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        sub_100169E98(v67 + *(v121 + 72) * v86, v12, type metadata accessor for WorkoutChartDataElement);
        v88 = v120;
        if (*(v120 + *(v122 + 28)) >= *&v12[*(v122 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v120, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v88, type metadata accessor for WorkoutChartDataElement);
        }

        ++v86;
        v72 = v66;
        v73 = v65;
        if (v87 == v63)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v84 = 1;
      while (1)
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        sub_100169E98(v67 + *(v121 + 72) * v84, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v122 + 24)] >= *&v19[*(v122 + 24)])
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v19, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v19, type metadata accessor for WorkoutChartDataElement);
        }

        ++v84;
        if (v85 == v63)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  *&v32[v54[15]] = 0;
  v78 = v116;
  v79 = *(v117 + 8);
  v79(v119, v116);
  v79(v115, v78);
  v70 = 0.0;
  v76 = 0.0;
  v77 = v32;
LABEL_6:
  *(v77 + v54[16]) = v76;
  v80 = v76 - v70;
  v81 = v118;
  if (v118 > 4u)
  {
    if (v118 <= 7u)
    {
      if (v118 == 5 || v118 == 6)
      {
        if (v80 >= 50.0)
        {
          goto LABEL_47;
        }

        v82 = (v70 + v76) * 0.5;
        v83 = 25.0;
        goto LABEL_46;
      }

      if (v80 >= 200.0)
      {
        goto LABEL_47;
      }

      v82 = (v70 + v76) * 0.5;
      goto LABEL_44;
    }

    if (v118 - 8 >= 2)
    {
LABEL_28:
      if (v80 >= 10.0)
      {
        goto LABEL_47;
      }

      v82 = (v70 + v76) * 0.5;
      v83 = 5.0;
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  if (v118 <= 1u)
  {
    if (v118)
    {
LABEL_33:
      if (v80 >= 0.0)
      {
        goto LABEL_47;
      }

LABEL_34:
      v82 = (v70 + v76) * 0.5;
      if (v118 > 4u)
      {
        if (v118 <= 7u)
        {
          if (v118 == 5 || v118 == 6)
          {
            v83 = 25.0;
LABEL_46:
            v70 = v82 - v83;
            v76 = v83 + v82;
            v80 = v83 + v82 - (v82 - v83);
            goto LABEL_47;
          }

LABEL_44:
          v83 = 100.0;
          goto LABEL_46;
        }
      }

      else
      {
        v83 = 5.0;
        if (v118 - 2 < 3 || !v118)
        {
          goto LABEL_46;
        }
      }

      v83 = 0.0;
      goto LABEL_46;
    }
  }

  else if (v118 - 2 >= 2)
  {
    goto LABEL_28;
  }

  if (v80 < 10.0)
  {
    goto LABEL_34;
  }

LABEL_47:
  v89 = v80 / 44.0;
  *(v77 + v54[18]) = v89;
  v90 = v89 + v89;
  v91 = v70 - (v89 + v89);
  v92 = v76 + v90;
  if (v91 <= v92)
  {
    v93 = (v77 + v54[17]);
    *v93 = v91;
    v93[1] = v92;
    v94 = v102;
    sub_10002B380(v77, v102, type metadata accessor for WorkoutChartViewModel);
    v95 = v54;
    v96 = v103;
    sub_100169E98(v94, v103, type metadata accessor for WorkoutChartViewModel);
    (*(v101 + 56))(v96, 0, 1, v95);
    swift_getKeyPath();
    swift_getKeyPath();
    v97 = static Published.subscript.modify();
    sub_10055ACD8(v96, v81);
    v97(v123, 0);

    sub_100169F24(v94, type metadata accessor for WorkoutChartViewModel);
    return;
  }

LABEL_51:
  __break(1u);

  __break(1u);
}

uint64_t sub_100560808(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055B348(v6);
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v4 + 8);
  result = v9(v6, v3);
  v11 = v8 / *(*(v2 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
  if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    sub_10055B348(v6);
    Date.addingTimeInterval(_:)();
    return v9(v6, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005609A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100140278(&qword_1008EB640, &qword_1006D6730);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      type metadata accessor for DownhillRunBridge();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_100560A8C(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v121 = a4;
  v119 = a1;
  v6 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v6 - 8);
  v106 = &v97 - v7;
  v102 = type metadata accessor for WorkoutChartDataElement(0);
  v122 = *(v102 - 8);
  __chkstk_darwin(v102);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v97 - v11;
  __chkstk_darwin(v13);
  v100 = &v97 - v14;
  __chkstk_darwin(v15);
  v98 = &v97 - v16;
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  __chkstk_darwin(v20);
  v99 = &v97 - v21;
  v22 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v22 - 8);
  v110 = &v97 - v23;
  v24 = type metadata accessor for Calendar();
  v112 = *(v24 - 8);
  v113 = v24;
  __chkstk_darwin(v24);
  v111 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Date();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115 - 8);
  v120 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v97 - v28;
  v117 = type metadata accessor for WorkoutChartViewModel(0);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v105 = &v97 - v33;
  v101 = v19;
  if (a2)
  {
    v34 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_5;
  }

  v35 = [*(a3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) fiui_activityType];
  if (v35)
  {
    v36 = v35;
    [v35 isDownhillSnowSport];

    v37 = [objc_opt_self() mainBundle];
    v38 = String._bridgeToObjectiveC()();

    v39 = [v37 localizedStringForKey:v38 value:0 table:0];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v34 = sub_100197684(v40, v42, v119, 0, 2u);

LABEL_5:
    v118 = v34;
    sub_10055B348(v29);
    sub_10055B568(v120);
    v43 = *(a3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);
    v103 = a3;
    v44 = *(a3 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
    v108 = v43;

    v109 = v44;

    v119 = v29;
    v45 = v116;
    UUID.init()();
    v46 = v117;
    v107 = *(v117 + 76);
    v47 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    v48 = v111;
    static Calendar.current.getter();
    v49 = v110;
    static Locale.current.getter();
    v50 = type metadata accessor for Locale();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    Calendar.locale.setter();
    isa = Calendar._bridgeToObjectiveC()().super.isa;
    [v47 setCalendar:isa];

    [v47 setUnitsStyle:0];
    [v47 setZeroFormattingBehavior:0];
    [v47 setAllowedUnits:224];
    (*(v112 + 8))(v48, v113);
    *(v45 + v107) = v47;
    v52 = v46[20];
    v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v53 setZeroFormattingBehavior:1];
    [v53 setUnitsStyle:4];
    [v53 setAllowedUnits:224];
    *(v45 + v52) = v53;
    *(v45 + v46[5]) = 2;
    v54 = [objc_opt_self() mainBundle];
    v55 = String._bridgeToObjectiveC()();
    v56 = [v54 localizedStringForKey:v55 value:0 table:0];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = v46;
    v61 = (v45 + v46[6]);
    *v61 = v57;
    v61[1] = v59;
    *(v45 + v46[7]) = v118;
    v123[0] = v121;

    sub_10056EDEC(v123);
    v62 = v120;
    v63 = v46[13];
    *(v45 + v46[8]) = v123[0];
    *(v45 + v46[9]) = 0;
    v64 = v46[10];
    v66 = v114;
    v65 = v115;
    v67 = *(v114 + 16);
    v67(v45 + v64, v119, v115);
    v67(v45 + v60[11], v62, v65);
    *(v45 + v60[12]) = v108;
    *(v45 + v63) = 0;
    *(v45 + v60[14]) = v109;
    v68 = *(v121 + 16);
    if (v68)
    {
      v69 = v62;
      v70 = v121 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v71 = v101;
      sub_100169E98(v70, v101, type metadata accessor for WorkoutChartDataElement);
      v72 = v102;
      if (v68 == 1)
      {
LABEL_7:
        v73 = v99;
        sub_10002B380(v71, v99, type metadata accessor for WorkoutChartDataElement);
        v74 = *(v73 + *(v72 + 24));
        sub_100169F24(v73, type metadata accessor for WorkoutChartDataElement);
        v45 = v116;
        v60 = v117;
        *&v116[*(v117 + 60)] = v74;
        v75 = v100;
        sub_100169E98(v70, v100, type metadata accessor for WorkoutChartDataElement);
        if (v68 == 1)
        {
LABEL_8:
          v76 = v115;
          v77 = *(v114 + 8);
          v77(v69, v115);
          v77(v119, v76);
          v78 = v98;
          sub_10002B380(v75, v98, type metadata accessor for WorkoutChartDataElement);
          v79 = *(v78 + *(v72 + 28));
          sub_100169F24(v78, type metadata accessor for WorkoutChartDataElement);
          goto LABEL_10;
        }

        v95 = 1;
        while (1)
        {
          v96 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            break;
          }

          sub_100169E98(v70 + *(v122 + 72) * v95, v12, type metadata accessor for WorkoutChartDataElement);
          if (*(v75 + *(v72 + 28)) >= *&v12[*(v72 + 28)])
          {
            sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
          }

          else
          {
            sub_100169F24(v75, type metadata accessor for WorkoutChartDataElement);
            sub_10002B380(v12, v75, type metadata accessor for WorkoutChartDataElement);
          }

          ++v95;
          if (v96 == v68)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v93 = 1;
        while (1)
        {
          v94 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            break;
          }

          sub_100169E98(v70 + *(v122 + 72) * v93, v9, type metadata accessor for WorkoutChartDataElement);
          if (*&v9[*(v72 + 24)] >= *(v71 + *(v72 + 24)))
          {
            sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
          }

          else
          {
            sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
            sub_10002B380(v9, v71, type metadata accessor for WorkoutChartDataElement);
          }

          ++v93;
          if (v94 == v68)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(v45 + v60[15]) = 0;
    v80 = *(v66 + 8);
    v80(v62, v65);
    v80(v119, v65);
    v74 = 0.0;
    v79 = 0.0;
LABEL_10:
    *(v45 + v60[16]) = v79;
    v81 = (v74 + v79) * 0.5;
    v82 = v81 + -5.0;
    v83 = v81 + 5.0;
    if (v79 - v74 >= 10.0)
    {
      v84 = v74;
    }

    else
    {
      v84 = v82;
    }

    if (v79 - v74 >= 10.0)
    {
      v83 = v79;
    }

    v85 = (v83 - v84) / 44.0;
    *(v45 + v60[18]) = v85;
    v86 = v85 + v85;
    v87 = v84 - v86;
    v88 = v83 + v86;
    if (v87 <= v88)
    {
      v89 = (v45 + v60[17]);
      *v89 = v87;
      v89[1] = v88;
      v90 = v105;
      sub_10002B380(v45, v105, type metadata accessor for WorkoutChartViewModel);
      v91 = v106;
      sub_100169E98(v90, v106, type metadata accessor for WorkoutChartViewModel);
      (*(v104 + 56))(v91, 0, 1, v60);
      swift_getKeyPath();
      swift_getKeyPath();
      v92 = static Published.subscript.modify();
      sub_10055ACD8(v91, 2);
      v92(v123, 0);

      sub_100169F24(v90, type metadata accessor for WorkoutChartViewModel);
      return;
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(1u);

  __break(1u);
}

void sub_100561770(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v14 = static os_log_type_t.error.getter();
    v15 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v14))
    {
      v16 = v15;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_10000AFDC(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v16, v14, "Error getting ground contact time data: %s", v17, 0xCu);
      sub_100005A40(v18);
    }

    else
    {
    }

    return;
  }

  v50 = v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_26;
  }

  v49 = v13;
  v23 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_26:

    return;
  }

LABEL_25:
  v39 = v10;
  v40 = Strong;
  v24 = _CocoaArrayWrapper.endIndex.getter();
  Strong = v40;
  v10 = v39;
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_8:
  v42 = v23;
  v44 = v10;
  v45 = v8;
  v46 = v6;
  v47 = v5;
  v48 = Strong;
  Strong = sub_100561D08(a1, Strong);
  v43 = Strong;
  v8 = 0;
  v23 = a1 & 0xC000000000000001;
  v25 = 0.0;
  v10 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v5 = &selRef__setFont_;
  do
  {
    if (v23)
    {
      Strong = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      Strong = *(a1 + 8 * v8 + 32);
    }

    v26 = Strong;
    v6 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v27 = [Strong quantity];
    [v27 _value];
    v29 = v28;

    v25 = v25 + v29;
    ++v8;
  }

  while (v6 != v24);
  if (v42)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v47;
  v32 = v43;
  v33 = v25 / v30;
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = v48;
  *(v35 + 24) = v33;
  *(v35 + 32) = v32;
  aBlock[4] = sub_100571034;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100860370;
  v36 = _Block_copy(aBlock);

  v37 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  v38 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v46 + 1))(v38, v31);
  (v44[1])(v37, v50);
}

uint64_t sub_100561D08(unint64_t a1, uint64_t a2)
{
  v120 = a2;
  v3 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v3 - 8);
  v114 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v102 - v6;
  v8 = type metadata accessor for NSIndexSetIterator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v124 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v118 = type metadata accessor for WorkoutChartDataElement(0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v128 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Date();
  v116 = *(v133 - 8);
  __chkstk_darwin(v133);
  v16 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v102 - v18;
  __chkstk_darwin(v20);
  v132 = &v102 - v21;
  __chkstk_darwin(v22);
  v131 = &v102 - v23;
  __chkstk_darwin(v24);
  v127 = &v102 - v25;
  __chkstk_darwin(v26);
  v130 = &v102 - v27;
  v28 = sub_100140278(&qword_1008DD4C8, &qword_1006F4B10);
  __chkstk_darwin(v28 - 8);
  v129 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = (&v102 - v32);
  v136 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_79;
  }

  result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v119 = v13;
    v125 = v33;
    if (!result)
    {
      break;
    }

    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v103 = v9;
    v35 = 0;
    v126 = *(v120 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
    v106 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
    v113 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
    v112 = v31 & 0xC000000000000001;
    v115 = (v116 + 32);
    v123 = (v116 + 56);
    v105 = (v116 + 48);
    v33 = (v116 + 8);
    v104 = (v116 + 16);
    v36 = &selRef_setNavigationBarHidden_animated_;
    v109 = v31;
    v13 = v133;
    v111 = v16;
    v108 = v19;
    v107 = result;
    v110 = v7;
    while (1)
    {
      v121 = v35;
      v38 = v112 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v31 + 8 * v35 + 32);
      v39 = v38;
      v40 = [v38 v36[352]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = v39;
      if (v126)
      {
        v41 = [v126 v36[352]];
        v42 = v130;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = *v115;
        (*v115)(v7, v42, v133);
        v16 = *v123;
        (*v123)(v7, 0, 1, v133);
        v43(v19, v7, v133);
        v13 = v133;
      }

      else
      {
        v16 = *v123;
        (*v123)(v7, 1, 1, v13);
        v44 = [*(v120 + v106) v36[352]];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        if ((*v105)(v7, 1, v13) != 1)
        {
          sub_10000EA04(v7, &unk_1008F73A0, &unk_1006DB450);
        }
      }

      v9 = v132;
      Date.timeIntervalSince(_:)();
      v46 = v45;
      v47 = *v33;
      (*v33)(v19, v13);
      v48 = v46 / *(*(v120 + v113) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_72;
      }

      if (v48 >= 9.22337204e18)
      {
        goto LABEL_73;
      }

      if (v126)
      {
        v36 = &selRef_setNavigationBarHidden_animated_;
        v49 = [v126 startDate];
        v50 = v130;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v115;
        v51 = *v115;
        v52 = v114;
        (*v115)(v114, v50, v13);
        (v16)(v52, 0, 1, v13);
        v16 = v111;
        v51(v111, v52, v13);
      }

      else
      {
        v53 = v114;
        (v16)(v114, 1, 1, v13);
        v36 = &selRef_setNavigationBarHidden_animated_;
        v54 = [*(v120 + v106) startDate];
        v16 = v111;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        if ((*v105)(v53, 1, v13) != 1)
        {
          sub_10000EA04(v114, &unk_1008F73A0, &unk_1006DB450);
        }
      }

      v55 = v131;
      Date.addingTimeInterval(_:)();
      v47(v16, v13);
      v47(v132, v13);
      v56 = v122;
      v57 = [v122 quantity];
      [v57 _value];
      v59 = v58;

      v9 = v136;
      if (*(v136 + 2) && (v61 = sub_1004C577C(v55, v60), (v31 & 1) != 0))
      {
        v7 = v110;
        if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_76;
        }

        if (v59 <= -9.22337204e18)
        {
          goto LABEL_77;
        }

        if (v59 >= 9.22337204e18)
        {
          goto LABEL_78;
        }

        [*(*(v9 + 7) + 8 * v61) addIndex:v59];
      }

      else
      {
        (*v104)(v130, v55, v13);
        v7 = v110;
        if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_74;
        }

        if (v59 <= -9.22337204e18)
        {
          goto LABEL_75;
        }

        if (v59 >= 9.22337204e18)
        {
          __break(1u);
LABEL_32:
          v62 = v136;
          v7 = v124;
          v33 = v125;
          v13 = v119;
          v9 = v103;
          goto LABEL_34;
        }

        v37 = [objc_allocWithZone(NSMutableIndexSet) initWithIndex:v59];
        sub_100559840(v37, v130);
      }

      v35 = v121 + 1;

      v47(v131, v13);
      v31 = v109;
      v19 = v108;
      if (v107 == v35)
      {
        goto LABEL_32;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v101 = v31;
    result = _CocoaArrayWrapper.endIndex.getter();
    v31 = v101;
  }

  v62 = &_swiftEmptyDictionarySingleton;
  v7 = v124;
LABEL_34:
  v63 = *(v62 + 8);
  v123 = (v62 + 64);
  v64 = 1 << v62[32];
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v115 = ((v64 + 63) >> 6);
  v120 = v116 + 16;
  v131 = (v116 + 32);
  v126 = (v9 + 8);
  v122 = v62;

  v67 = 0;
  v132 = _swiftEmptyArrayStorage;
  v16 = &qword_1008DD4D0;
  v121 = v8;
  v68 = v123;
  if (!v66)
  {
LABEL_38:
    if (v115 <= (v67 + 1))
    {
      v70 = v67 + 1;
    }

    else
    {
      v70 = v115;
    }

    v9 = v70 - 1;
    while (1)
    {
      v69 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v69 >= v115)
      {
        v83 = v8;
        v100 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
        (*(*(v100 - 8) + 56))(v129, 1, 1, v100);
        v66 = 0;
        v67 = v9;
        goto LABEL_47;
      }

      v66 = v68[v69];
      ++v67;
      if (v66)
      {
        v67 = v69;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  while (1)
  {
    v69 = v67;
LABEL_46:
    v71 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v72 = v71 | (v69 << 6);
    v73 = v122;
    v74 = v116;
    v75 = v130;
    v76 = v133;
    (*(v116 + 16))(v130, *(v122 + 6) + *(v116 + 72) * v72, v133);
    v77 = *(v73[7] + 8 * v72);
    v78 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
    v79 = *(v78 + 48);
    v80 = *(v74 + 32);
    v81 = v129;
    v80(v129, v75, v76);
    *(v81 + v79) = v77;
    (*(*(v78 - 8) + 56))(v81, 0, 1, v78);
    v82 = v77;
    v7 = v124;
    v33 = v125;
    v83 = v121;
LABEL_47:
    sub_100015E80(v129, v33, &qword_1008DD4C8, &qword_1006F4B10);
    v84 = sub_100140278(&qword_1008DD4D0, &qword_1006F4B60);
    if ((*(*(v84 - 8) + 48))(v33, 1, v84) == 1)
    {
      break;
    }

    v19 = *(v33 + *(v84 + 48));
    v85 = *v131;
    (*v131)(v127, v33, v133);
    NSIndexSet.makeIterator()();
    sub_100045EF0(&qword_1008DD4D8, &type metadata accessor for NSIndexSetIterator, &protocol conformance descriptor for NSIndexSetIterator);
    v8 = v83;
    dispatch thunk of IteratorProtocol.next()();
    if (v135)
    {
      v86 = v13;
      v87 = *v126;
      (*v126)(v86, v83);
      v88 = 0.0;
    }

    else
    {
      v89 = v134;
      dispatch thunk of IteratorProtocol.next()();
      if ((v135 & 1) == 0)
      {
        do
        {
          if (v134 < v89)
          {
            v89 = v134;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v135 != 1);
      }

      v90 = v13;
      v87 = *v126;
      (*v126)(v90, v83);
      v88 = v89;
      v7 = v124;
    }

    NSIndexSet.makeIterator()();
    dispatch thunk of IteratorProtocol.next()();
    if (v135)
    {
      v87(v7, v83);
      v91 = 0.0;
    }

    else
    {
      v92 = v7;
      v93 = v134;
      dispatch thunk of IteratorProtocol.next()();
      if ((v135 & 1) == 0)
      {
        do
        {
          if (v93 <= v134)
          {
            v93 = v134;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v135 != 1);
      }

      v87(v92, v83);
      v91 = v93;
      v7 = v92;
    }

    v94 = v128;
    v85(v128, v127, v133);
    v95 = v118;
    *(v94 + *(v118 + 24)) = v88;
    *(v94 + *(v95 + 28)) = v91;
    *(v94 + *(v95 + 20)) = (v88 + v91) * 0.5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v119;
    v33 = v125;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v132 = sub_1001A1EB4(0, *(v132 + 2) + 1, 1, v132);
    }

    v98 = *(v132 + 2);
    v97 = *(v132 + 3);
    if (v98 >= v97 >> 1)
    {
      v132 = sub_1001A1EB4((v97 > 1), v98 + 1, 1, v132);
    }

    v99 = v132;
    *(v132 + 2) = v98 + 1;
    sub_10002B380(v128, &v99[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v98], type metadata accessor for WorkoutChartDataElement);
    v16 = &qword_1008DD4D0;
    v68 = v123;
    if (!v66)
    {
      goto LABEL_38;
    }
  }

  return v132;
}