uint64_t sub_1000A1324(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001577E0, &qword_100111D70);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  static VerticalAlignment.bottom.getter();
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_100020EE8(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_1000A155C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v79 = type metadata accessor for Color.RGBColorSpace();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v80 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for EnvironmentValues();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10003AE84(&qword_1001577E8, &qword_100111D78);
  __chkstk_darwin(v82);
  v81 = v76 - v9;
  v103 = sub_10003AE84(&qword_1001577F0, &qword_100111D80);
  __chkstk_darwin(v103);
  v83 = v76 - v10;
  v97 = sub_10003AE84(&qword_1001577F8, &unk_100111D88);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v104 = v76 - v11;
  v100 = sub_10003AE84(&qword_1001577E0, &qword_100111D70);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = v76 - v14;
  v105 = a2;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v76 - v17;
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = v76 - v25;
  v76[0] = a1;
  v27 = *a1;
  v84 = *(a1 + 8);
  v27(v24);
  static Font.footnote.getter();
  v102 = a3;
  v116 = a3;
  WitnessTable = swift_getWitnessTable();
  View.font(_:)();

  (*(v16 + 8))(v18, v15);
  v29 = sub_1000A274C();
  v114 = WitnessTable;
  v115 = v29;
  v30 = swift_getWitnessTable();
  v92 = v26;
  v85 = v30;
  sub_100020EE8(v22, v19, v30);
  v91 = v20;
  v31 = v20;
  v32 = v76[0];
  v33 = *(v31 + 8);
  v94 = v22;
  v93 = v19;
  v89 = v31 + 8;
  v87 = v33;
  v33(v22, v19);
  v122 = *(v32 + 24);
  v121 = *(v32 + 16);
  v34 = v121;
  LODWORD(a1) = v122;

  v35 = v34;
  v77 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v86;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v121, &qword_100154810, &qword_10010DF90);
    (*(v88 + 8))(v37, v90);
    v35 = *&v117[0];
  }

  v38 = *(v35 + 16);

  swift_getKeyPath();
  *&v117[0] = v38;
  v76[1] = sub_10001831C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Color.white.getter();
  v39 = *(v32 + 32);
  v120 = *(v32 + 40);
  v40 = *(v32 + 56);
  v118 = *(v32 + 48);
  v119 = v39;
  v41 = swift_allocObject();
  v42 = v102;
  *(v41 + 16) = v105;
  *(v41 + 24) = v42;
  v43 = *(v32 + 48);
  *(v41 + 64) = *(v32 + 32);
  *(v41 + 80) = v43;
  *(v41 + 96) = *(v32 + 64);
  v44 = *(v32 + 16);
  *(v41 + 32) = *v32;
  *(v41 + 48) = v44;
  (*(v78 + 104))(v80, enum case for Color.RGBColorSpace.sRGB(_:), v79);
  sub_100008E68(&v121, v117, &qword_100154810, &qword_10010DF90);

  v79 = v40;

  sub_100008E68(&v119, v117, &qword_1001556F0, &unk_10010D920);
  sub_100015064(&v118, v117);
  Color.init(_:white:opacity:)();
  v45 = v81;
  CalculateExpressionStackView.init(expression:textAlignment:textColor:rowCount:separatorColor:operationCallback:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = (v45 + *(v82 + 36));
  v47 = v117[1];
  *v46 = v117[0];
  v46[1] = v47;
  v46[2] = v117[2];
  sub_1000A27BC();
  v48 = v83;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v45, &qword_1001577E8, &qword_100111D78);
  v110 = sub_1000238F8();
  v111 = v49;
  LOBYTE(v112) = v50;
  LOBYTE(v109[0]) = 3;
  v51 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v52 = sub_1000A2878();
  v53 = sub_1000239A8();
  View.focused<A>(_:equals:)();

  sub_1000035CC(v48, &qword_1001577F0, &qword_100111D80);

  if ((v77 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v55 = v86;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v121, &qword_100154810, &qword_10010DF90);
    (*(v88 + 8))(v55, v90);
    v34 = v110;
  }

  v56 = *(v34 + 16);

  swift_getKeyPath();
  v110 = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = CalculateExpression.postfixStack.getter();

  v109[0] = v57;
  v58 = swift_allocObject();
  v59 = v102;
  *(v58 + 16) = v105;
  *(v58 + 24) = v59;
  v60 = *(v32 + 48);
  *(v58 + 64) = *(v32 + 32);
  *(v58 + 80) = v60;
  *(v58 + 96) = *(v32 + 64);
  v61 = *(v32 + 16);
  *(v58 + 32) = *v32;
  *(v58 + 48) = v61;
  sub_100008E68(&v121, &v110, &qword_100154810, &qword_10010DF90);

  sub_100008E68(&v119, &v110, &qword_1001556F0, &unk_10010D920);
  sub_100015064(&v118, &v110);
  v105 = sub_10003AE84(&qword_100157820, &qword_100111DC0);
  v110 = v103;
  v111 = v51;
  v112 = v52;
  v113 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_1000A2940();
  v64 = v96;
  v65 = v97;
  v66 = v104;
  View.onChange<A>(of:initial:_:)();

  (*(v95 + 8))(v66, v65);
  v67 = v94;
  v68 = v92;
  v69 = v93;
  (*(v91 + 16))(v94, v92, v93);
  v109[0] = v67;
  v70 = v99;
  v71 = v98;
  v72 = v100;
  (*(v99 + 16))(v98, v64, v100);
  v109[1] = v71;
  v110 = v65;
  v108[0] = v69;
  v108[1] = v72;
  v106 = v85;
  v111 = v105;
  v112 = OpaqueTypeConformance2;
  v113 = v63;
  v107 = swift_getOpaqueTypeConformance2();
  sub_100022AFC(v109, 2uLL, v108);
  v73 = *(v70 + 8);
  v73(v64, v72);
  v74 = v87;
  v87(v68, v69);
  v73(v71, v72);
  return v74(v67, v69);
}

double sub_1000A2308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v12 = *(a2 + 16);
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v12, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v7, v4);
  }

  sub_1000604CC(a1, 0);

  return result;
}

double sub_1000A2488(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v6 = *(a1 + 16);
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v13, &qword_100154810, &qword_10010DF90);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  swift_getKeyPath();
  v12 = v6;
  sub_10001831C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 11;
    v12 = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unint64_t sub_1000A274C()
{
  result = qword_100156378;
  if (!qword_100156378)
  {
    sub_10003AECC(&qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156378);
  }

  return result;
}

unint64_t sub_1000A27BC()
{
  result = qword_100157800;
  if (!qword_100157800)
  {
    sub_10003AECC(&qword_1001577E8, &qword_100111D78);
    sub_10001831C(&qword_100157808, &type metadata accessor for CalculateExpressionStackView, &protocol conformance descriptor for CalculateExpressionStackView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157800);
  }

  return result;
}

unint64_t sub_1000A2878()
{
  result = qword_100157810;
  if (!qword_100157810)
  {
    sub_10003AECC(&qword_1001577F0, &qword_100111D80);
    sub_1000A27BC();
    sub_10001831C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157810);
  }

  return result;
}

unint64_t sub_1000A2940()
{
  result = qword_100157828;
  if (!qword_100157828)
  {
    sub_10003AECC(&qword_100157820, &qword_100111DC0);
    sub_10001831C(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157828);
  }

  return result;
}

uint64_t sub_1000A29F4()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  v4 = [v1 applicationState];
  v5 = [v4 isRestricted];

  if (v5)
  {

    return 0;
  }

  v6 = [v3 applicationState];
  v7 = [v6 isInstalled];

  if (v7)
  {

    return 1;
  }

  else
  {
    v8 = [v3 applicationState];
    v9 = [v8 isPlaceholder];

    return v9;
  }
}

void sub_1000A2B44(uint64_t a1)
{
  sub_1000A2C20(319, &unk_100157940, type metadata accessor for CalculatorMDMRestrictionsManager);
  if (v1 <= 0x3F)
  {
    sub_1000A2C20(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LayoutDirection();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A2C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A2C74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v3 = sub_10003AE84(&qword_1001579F0, &qword_100111FC0);
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - v4;
  v5 = sub_10003AE84(&qword_1001579F8, &qword_100111FC8);
  __chkstk_darwin(v5 - 8);
  v80 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v75 - v8;
  v9 = sub_10003AE84(&qword_100157A00, &qword_100111FD0);
  __chkstk_darwin(v9 - 8);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v75 - v12;
  v77 = type metadata accessor for Divider();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v87 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v75 - v15;
  v84 = type metadata accessor for EnvironmentValues();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003AE84(&qword_100157A08, &qword_100111FD8);
  __chkstk_darwin(v17 - 8);
  v99 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v103 = &v75 - v20;
  v94 = type metadata accessor for InlinePickerStyle();
  v95 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ModeMenuView(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v89 = sub_10003AE84(&qword_100157A10, &qword_100111FE0);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v26 = &v75 - v25;
  v91 = sub_10003AE84(&qword_100157A18, &qword_100111FE8);
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v75 - v27;
  v28 = sub_10003AE84(&qword_100157A20, &qword_100111FF0);
  v97 = *(v28 - 8);
  v98 = v28;
  __chkstk_darwin(v28);
  v96 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v104 = &v75 - v31;
  sub_1000A75C8(a1, &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v33 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_1000A762C(&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  sub_1000A75C8(a1, &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = &protocol witness table for MainActor;
  v37 = a1;
  sub_1000A762C(&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v33);
  Binding.init(get:set:)();
  v110 = v106;
  v111 = v107;
  v112 = v108;
  v105 = a1;
  sub_10003AE84(&qword_100157A28, &qword_100111FF8);
  sub_1000083B8();
  sub_100004880(&qword_100157A38, &qword_100157A28, &qword_100111FF8, &protocol conformance descriptor for _TuplePickerContent<A, B>);
  Picker.init<A>(selection:content:label:)();
  v38 = v92;
  InlinePickerStyle.init()();
  v39 = sub_100004880(&qword_100157A40, &qword_100157A10, &qword_100111FE0, &protocol conformance descriptor for Picker<A, B, C>);
  v40 = v88;
  v41 = v89;
  v42 = v94;
  View.pickerStyle<A>(_:)();
  (*(v95 + 8))(v38, v42);
  (*(v90 + 8))(v26, v41);
  v106 = v41;
  v107 = v42;
  v108 = v39;
  v109 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v43 = v91;
  View.labelsHidden()();
  (*(v93 + 8))(v40, v43);
  v44 = *(v37 + 16);
  LOBYTE(v35) = *(v37 + 24);

  if ((v35 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v46 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v83 + 8))(v46, v84);
    v44 = v106;
  }

  swift_getKeyPath();
  v106 = v44;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v44 + 48);

  if (v47 == 2)
  {

    v48 = 1;
    v49 = v103;
  }

  else
  {
    v49 = v103;
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      v48 = 1;
    }

    else
    {
      v51 = v85;
      Divider.init()();
      v52 = v86;
      sub_10002CFB4(v86);
      v53 = v78;
      sub_1000A552C(v78);
      v54 = v76;
      v55 = *(v76 + 16);
      v56 = v87;
      v57 = v51;
      v58 = v77;
      v55(v87, v57, v77);
      v59 = v79;
      sub_100008E68(v52, v79, &qword_100157A00, &qword_100111FD0);
      v60 = v80;
      sub_100008E68(v53, v80, &qword_1001579F8, &qword_100111FC8);
      v61 = v81;
      v55(v81, v56, v58);
      v62 = sub_10003AE84(&qword_100157A48, &qword_100112000);
      sub_100008E68(v59, &v61[*(v62 + 48)], &qword_100157A00, &qword_100111FD0);
      sub_100008E68(v60, &v61[*(v62 + 64)], &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v53, &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v86, &qword_100157A00, &qword_100111FD0);
      v63 = *(v54 + 8);
      v63(v85, v58);
      sub_1000035CC(v60, &qword_1001579F8, &qword_100111FC8);
      sub_1000035CC(v59, &qword_100157A00, &qword_100111FD0);
      v63(v87, v58);
      v64 = v61;
      v49 = v103;
      sub_100035E70(v64, v103);
      v48 = 0;
    }
  }

  (*(v100 + 56))(v49, v48, 1, v101);
  v66 = v96;
  v65 = v97;
  v67 = *(v97 + 16);
  v68 = v104;
  v69 = v98;
  v67(v96, v104, v98);
  v70 = v99;
  sub_100008E68(v49, v99, &qword_100157A08, &qword_100111FD8);
  v71 = v102;
  v67(v102, v66, v69);
  v72 = sub_10003AE84(&qword_100157A50, &qword_100112008);
  sub_100008E68(v70, &v71[*(v72 + 48)], &qword_100157A08, &qword_100111FD8);
  sub_1000035CC(v49, &qword_100157A08, &qword_100111FD8);
  v73 = *(v65 + 8);
  v73(v68, v69);
  sub_1000035CC(v70, &qword_100157A08, &qword_100111FD8);
  return (v73)(v66, v69);
}

void sub_1000A3A18(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v12;
  }

  swift_getKeyPath();
  v12 = v8;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 48);

  *a2 = v10;
}

double sub_1000A3BE0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a4 + 16);
  v12 = *(a4 + 24);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v11 = v17;
  }

  swift_getKeyPath();
  v17 = v11;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v11 + 48);

  return sub_1000A3DB8(v14, v10);
}

double sub_1000A3DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v5 = type metadata accessor for ModeMenuView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for EnvironmentValues();
  __chkstk_darwin(v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x657061506874616DLL;
      v14 = 0xE900000000000072;
    }

    else
    {
      v13 = 0x6D6D6172676F7270;
      v14 = 0xEA00000000007265;
    }
  }

  else
  {
    if (a2)
    {
      v13 = 0x6669746E65696373;
    }

    else
    {
      v13 = 0x6369736162;
    }

    if (a2)
    {
      v14 = 0xEA00000000006369;
    }

    else
    {
      v14 = 0xE500000000000000;
    }
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v15 = 0xE900000000000072;
      if (v13 != 0x657061506874616DLL)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v15 = 0xEA00000000007265;
      if (v13 != 0x6D6D6172676F7270)
      {
        goto LABEL_25;
      }
    }
  }

  else if (a1)
  {
    v15 = 0xEA00000000006369;
    if (v13 != 0x6669746E65696373)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (v13 != 0x6369736162)
    {
      goto LABEL_25;
    }
  }

  if (v14 == v15)
  {

    return result;
  }

LABEL_25:
  v17 = v10;
  v40[0] = v9;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return result;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      LOBYTE(v41) = 0;
      v21 = SBSGetScreenLockStatus();
      if (v41 && v21)
      {
        sub_1000A75C8(v2, v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v23 = swift_allocObject();
        sub_1000A762C(v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
        sub_1000F7484(sub_1000A8130, v23);
      }

      else
      {
        return sub_1000A6B48();
      }
    }
  }

  else
  {
    if (!a2)
    {
      v19 = *(v2 + 24);

      if ((v19 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v20 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v12, v40[0]);
      }

      sub_1000560A8(0);
LABEL_31:

      return result;
    }

    v24 = *v2;
    v25 = v2;
    if (*(v2 + 8) == 1)
    {
      v26 = v24;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v28 = sub_100030EDC(v24, 0);
      (*(v17 + 8))(v12, v40[0], v28);
      v26 = v41;
    }

    swift_getKeyPath();
    v41 = v26;
    sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = v26[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

    if (v29 == 1)
    {
      v30 = *(v25 + 24);

      if ((v30 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v31 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v12, v40[0]);
      }

      sub_1000560A8(1);
    }

    else
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000048C8(v32, qword_100160D38);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Scientific mode disabled…", v35, 2u);
      }

      v36 = *(v25 + 16);
      v37 = *(v25 + 24);

      if ((v37 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v17 + 8))(v12, v40[0]);
        v36 = v41;
      }

      if (v36[49] == 4)
      {
        goto LABEL_31;
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v40[-2] = v36;
      LOBYTE(v40[-1]) = 4;
      v41 = v36;
      sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000A4628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_10003AE84(&qword_100157AA8, &qword_100112108);
  __chkstk_darwin(v3 - 8);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v52 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_100157AB0, &unk_100112110);
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v52 - v13;
  __chkstk_darwin(v14);
  v68 = &v52 - v15;
  v65 = sub_10003AE84(&qword_100157AB8, &qword_100115BB0);
  v69 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  LOBYTE(v70[0]) = 0;
  v23 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_1000083B8();
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
  v67 = v22;
  PickerOption.init(value:content:)();
  LOBYTE(v70[0]) = 1;
  v56 = v23;
  PickerOption.init(value:content:)();
  v24 = *a1;
  v55 = *(a1 + 8);
  v54 = v7;
  v53 = v9;
  if (v55 == 1)
  {
    v27 = v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v26 = sub_100030EDC(v24, 0);
    (*(v60 + 8))(v9, v7, v26);
    v27 = v70[0];
  }

  swift_getKeyPath();
  v70[0] = v27;
  v28 = sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004880(&qword_100157AC0, &qword_100157AB8, &qword_100115BB0, &protocol conformance descriptor for PickerOption<A, B>);
  v29 = 1;
  v30 = v65;
  PickerContent.disabled(_:)();
  v31 = *(v69 + 8);
  v69 += 8;
  v63 = v31;
  v31(v19, v30);
  v70[3] = &type metadata for NotesFeatureFlags;
  v70[4] = sub_10000840C();
  v32 = isFeatureEnabled(_:)();
  sub_100003F80(v70);
  if (v32)
  {
    v52 = v28;
    LOBYTE(v70[0]) = 2;
    v33 = v57;
    PickerOption.init(value:content:)();
    if (v55)
    {
      v34 = v24;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v35 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v36 = v53;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v37 = sub_100030EDC(v24, 0);
      (*(v60 + 8))(v36, v54, v37);
      v34 = v70[0];
    }

    v30 = v65;
    v38 = v66;
    v39 = v64;
    swift_getKeyPath();
    v70[0] = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = v58;
    PickerContent.disabled(_:)();
    v63(v33, v30);
    (*(v39 + 32))(v38, v40, v10);
    v29 = 0;
  }

  v41 = 1;
  v42 = v66;
  v43 = v29;
  v44 = v64;
  (*(v64 + 56))(v66, v43, 1, v10);
  v45 = v62;
  dispatch thunk of PickerContent._identifiedView.getter();
  v46 = sub_10003AE84(&qword_100157AC8, &qword_100112148);
  sub_100004880(&qword_100157AD0, &qword_100157AB0, &unk_100112110, &protocol conformance descriptor for _DisabledPickerContent<A>);
  dispatch thunk of PickerContent._identifiedView.getter();
  v47 = *(v46 + 64);
  v48 = v61;
  sub_100008E68(v42, v61, &qword_100157AA8, &qword_100112108);
  if ((*(v44 + 48))(v48, 1, v10) != 1)
  {
    v49 = v59;
    (*(v44 + 32))(v59, v48, v10);
    dispatch thunk of PickerContent._identifiedView.getter();
    (*(v44 + 8))(v49, v10);
    v41 = 0;
  }

  v50 = sub_10003AE84(&qword_100157AD8, &qword_100112150);
  (*(*(v50 - 8) + 56))(v45 + v47, v41, 1, v50);
  sub_1000035CC(v42, &qword_100157AA8, &qword_100112108);
  (*(v44 + 8))(v68, v10);
  return (v63)(v67, v30);
}

void sub_1000A4FB4(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73) == 1)
  {
    if (qword_1001543B0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543A8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

void sub_1000A5190(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543C0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543B8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

void sub_1000A5368(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543D0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1001543C8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
}

uint64_t sub_1000A54C4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A552C@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v82 = *(v1 - 8);
  v83 = v1;
  __chkstk_darwin(v1);
  v81 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003AE84(&qword_100157A58, &qword_100112010);
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v75 = &v69 - v4;
  v5 = sub_10003AE84(&qword_100157A60, &qword_100112018);
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v69 - v8;
  __chkstk_darwin(v9);
  v79 = &v69 - v10;
  v11 = type metadata accessor for Locale.LanguageCode();
  v86 = *(v11 - 8);
  __chkstk_darwin(v11);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10003AE84(&qword_100157A68, &unk_100112020);
  __chkstk_darwin(v85);
  v14 = &v69 - v13;
  v15 = type metadata accessor for Locale.Language();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v72 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v71 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v20 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  v26 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  __chkstk_darwin(v26 - 8);
  v84 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v69 - v29;
  __chkstk_darwin(v31);
  v33 = &v69 - v32;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v34 = sub_100003D58();
  v35 = [v34 locale];

  if (v35)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v18 + 56))(v22, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v22, 1, 1, v17);
  }

  sub_10000D5B8(v22, v25, &qword_100155210, &qword_100111700);
  v36 = (*(v18 + 48))(v25, 1, v17);
  v37 = v86;
  if (v36)
  {
    sub_1000035CC(v25, &qword_100155210, &qword_100111700);
    (*(v37 + 56))(v33, 1, 1, v11);
  }

  else
  {
    v38 = v71;
    (*(v18 + 16))(v71, v25, v17);
    sub_1000035CC(v25, &qword_100155210, &qword_100111700);
    v39 = v72;
    Locale.language.getter();
    (*(v18 + 8))(v38, v17);
    Locale.Language.languageCode.getter();
    (*(v73 + 8))(v39, v74);
  }

  Locale.LanguageCode.init(stringLiteral:)();
  (*(v37 + 56))(v30, 0, 1, v11);
  v40 = *(v85 + 48);
  sub_100008E68(v33, v14, &qword_100157A70, &unk_100112030);
  sub_100008E68(v30, &v14[v40], &qword_100157A70, &unk_100112030);
  v41 = *(v37 + 48);
  if (v41(v14, 1, v11) == 1)
  {
    sub_1000035CC(v30, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v33, &qword_100157A70, &unk_100112030);
    if (v41(&v14[v40], 1, v11) == 1)
    {
      sub_1000035CC(v14, &qword_100157A70, &unk_100112030);
LABEL_17:
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = &protocol witness table for MainActor;
      v52 = static MainActor.shared.getter();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = &protocol witness table for MainActor;
      Binding.init(get:set:)();
      sub_10003AE84(&qword_100156920, &qword_10010FAA0);
      sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
      v54 = v75;
      Toggle.init(isOn:label:)();
      LocalizedStringKey.init(stringLiteral:)();
      v55 = Text.init(_:tableName:bundle:comment:)();
      v57 = v56;
      v59 = v58;
      sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010, &protocol conformance descriptor for Toggle<A>);
      v60 = v77;
      v61 = v78;
      View.accessibilityLabel(_:)();
      sub_10000C6AC(v55, v57, v59 & 1);

      (*(v76 + 8))(v54, v60);
      sub_10003AE84(&qword_100157A80, &unk_100115410);
      v62 = v82;
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_10010DBE0;
      static AccessibilityTraits.isToggle.getter();
      static AccessibilityTraits.isButton.getter();
      v90 = v63;
      sub_100006608(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_10003AE84(&qword_100156A70, &qword_100112040);
      sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
      v64 = v81;
      v65 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v66 = v80;
      v45 = v88;
      ModifiedContent<>.accessibilityAddTraits(_:)();
      (*(v62 + 8))(v64, v65);
      sub_1000035CC(v61, &qword_100157A60, &qword_100112018);
      v67 = v79;
      ModifiedContent<>.accessibilityIdentifier(_:)();
      sub_1000035CC(v66, &qword_100157A60, &qword_100112018);
      v44 = v89;
      sub_10000D5B8(v67, v89, &qword_100157A60, &qword_100112018);
      v43 = 0;
      return (*(v87 + 56))(v44, v43, 1, v45);
    }

    goto LABEL_14;
  }

  v42 = v84;
  sub_100008E68(v14, v84, &qword_100157A70, &unk_100112030);
  if (v41(&v14[v40], 1, v11) == 1)
  {
    sub_1000035CC(v30, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v33, &qword_100157A70, &unk_100112030);
    (*(v37 + 8))(v42, v11);
LABEL_14:
    sub_1000035CC(v14, &qword_100157A68, &unk_100112020);
    goto LABEL_15;
  }

  v46 = v70;
  (*(v37 + 32))(v70, &v14[v40], v11);
  sub_100006608(&qword_100157A88, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
  v47 = v42;
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v37 + 8);
  v49(v46, v11);
  sub_1000035CC(v30, &qword_100157A70, &unk_100112030);
  sub_1000035CC(v33, &qword_100157A70, &unk_100112030);
  v49(v47, v11);
  sub_1000035CC(v14, &qword_100157A70, &unk_100112030);
  if (v48)
  {
    goto LABEL_17;
  }

LABEL_15:
  v43 = 1;
  v45 = v88;
  v44 = v89;
  return (*(v87 + 56))(v44, v43, 1, v45);
}

uint64_t sub_1000A6230@<X0>(uint64_t a5@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_1000A62A0(uint64_t a1)
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(a1 + *(type metadata accessor for ModeMenuView(0) + 28));
  (*(v3 + 104))(v5, enum case for Tips.InvalidationReason.actionPerformed(_:), v2);
  sub_10002DD60();

  Tip.invalidate(reason:)();
  (*(v3 + 8))(v5, v2);
}

double sub_1000A63D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a4;
  if (*(a4 + 8) == 1)
  {
    v12 = v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v14 = sub_100030EDC(v11, 0);
    (*(v7 + 8))(v9, v6, v14);
    v12 = v23;
  }

  swift_getKeyPath();
  v23 = v12;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v12[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed];

  if (v15 == 1)
  {
    v16 = static Animation.easeInOut.getter();
    __chkstk_darwin(v16);
    *(&v22 - 2) = a4;
    *(&v22 - 8) = v10;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);

    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v18 = v23;
    }

    if (v18[49] != 7)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v22 - 2) = v18;
      *(&v22 - 8) = 7;
      v23 = v18;
      sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_1000A67A4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_100009774(a2 & 1);
}

void sub_1000A690C(_BYTE *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_100006608(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v2 + 17);
}

void sub_1000A69E8(char *a1)
{
  v1 = *a1;
  if (qword_100154728 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  sub_1000F6270(v1);
}

uint64_t sub_1000A6AA4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1000A6B48()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  if (*(v1 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_100030EDC(v9, 0);
    (*(v6 + 8))(v8, v5, v12);
    v10 = v49;
  }

  swift_getKeyPath();
  v49 = v10;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v10[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed];

  if (v13 != 1)
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000048C8(v19, qword_100160D38);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Math Notes disabled…", v22, 2u);
    }

    v23 = v1[2];
    v24 = *(v1 + 24);

    if ((v24 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      v23 = v49;
    }

    if (v23[49] == 5)
    {
      goto LABEL_17;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v48 - 2) = v23;
    *(&v48 - 8) = 5;
    v49 = v23;
    sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    goto LABEL_27;
  }

  if ((sub_1000A29F4() & 1) == 0)
  {
    if (qword_100154390 != -1)
    {
      swift_once();
    }

    v26 = sub_1000048C8(v2, qword_1001608A8);
    sub_100008E68(v26, v4, &qword_100155078, &qword_10010DBA0);
    v27 = type metadata accessor for URL();
    v28 = (*(*(v27 - 8) + 48))(v4, 1, v27);
    sub_1000035CC(v4, &qword_100155078, &qword_10010DBA0);
    if (v28 == 1)
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000048C8(v29, qword_100160D38);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Invalid URL link attempting to prompt Notes app installation.", v32, 2u);
      }

      return result;
    }

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000048C8(v34, qword_100160D38);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Notes app not installed. Prompting installation…", v37, 2u);
    }

    v38 = v1[2];
    v39 = *(v1 + 24);

    if ((v39 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      v38 = v49;
    }

    if (v38[49] == 1)
    {
      goto LABEL_17;
    }

    v41 = swift_getKeyPath();
    __chkstk_darwin(v41);
    *(&v48 - 2) = v38;
    *(&v48 - 8) = 1;
    v49 = v38;
    sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
LABEL_27:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  v14 = objc_allocWithZone(LSApplicationRecord);
  v15 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
  if (v15)
  {
    v42 = v15;
    if (qword_100154380 != -1)
    {
      swift_once();
    }

    v43 = [qword_100154FD0 requiresPreflightForApplicationRecord:v42];

    if (v43)
    {
      v44 = v1[2];
      v45 = *(v1 + 24);

      if ((v45 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v46 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v6 + 8))(v8, v5);
        v44 = v49;
      }

      if (v44[49] != 2)
      {
        v47 = swift_getKeyPath();
        __chkstk_darwin(v47);
        *(&v48 - 2) = v44;
        *(&v48 - 8) = 2;
        v49 = v44;
        sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return result;
      }

LABEL_17:

      return result;
    }
  }

  v16 = *(v1 + 24);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_1000560A8(2);

  return result;
}

uint64_t sub_1000A75C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A762C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7690()
{
  v1 = *(type metadata accessor for ModeMenuView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A62A0(v2);
}

uint64_t sub_1000A76F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v53 = a3;
  v54 = type metadata accessor for AccessibilityTraits();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v51 = &v44[-v6];
  v46 = type metadata accessor for LocalizedStringResource();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_10003AE84(&qword_100157AE8, &qword_100112248);
  __chkstk_darwin(v49);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v44[-v13];
  __chkstk_darwin(v15);
  v48 = &v44[-v16];
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v17 = sub_10002866C(a2);
  v19 = v18;

  v55 = v17;
  v56 = v19;
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21 = 0xE500000000000000;
  v22 = 0x6369736162;
  v23 = 0xE900000000000072;
  v24 = 0x657061506874616DLL;
  if (BYTE1(a2) != 2)
  {
    v24 = 0x6D6D6172676F7270;
    v23 = 0xEA00000000007265;
  }

  if (BYTE1(a2))
  {
    v22 = 0x6669746E65696373;
    v25 = 0xEA00000000006369;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  if (BYTE1(a2) <= 1u)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if (BYTE1(a2) <= 1u)
  {
    v27 = v25;
  }

  else
  {
    v27 = v23;
  }

  v45 = a2;
  v28 = v27;
  String.append(_:)(*&v26);

  v29._object = 0x8000000100107510;
  v29._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v29);
  if ((a2 & 0x10000) != 0)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if ((a2 & 0x10000) != 0)
  {
    v21 = 0xE400000000000000;
  }

  v31 = v21;
  String.append(_:)(*&v30);

  sub_10003AE84(&qword_100157AF0, &unk_100112250);
  sub_100004880(&qword_100157AF8, &qword_100157AF0, &unk_100112250, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.accessibilityIdentifier(_:)();

  sub_100027C24(a2);
  LocalizedStringResource.key.getter();
  (*(v7 + 8))(v9, v46);
  LocalizedStringKey.init(_:)();
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  v36 = v35;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v32, v34, v36 & 1);

  sub_1000035CC(v11, &qword_100157AE8, &qword_100112248);
  sub_100029028(a2);
  v37 = v48;
  ModifiedContent<>.accessibilityHint(_:)();

  sub_1000035CC(v14, &qword_100157AE8, &qword_100112248);
  v38 = v50;
  if (v45 == 28)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isKeyboardKey.getter();
  }

  v40 = v51;
  v39 = v52;
  v41 = v38;
  v42 = v54;
  (*(v52 + 32))(v51, v41, v54);
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v39 + 8))(v40, v42);
  return sub_1000035CC(v37, &qword_100157AE8, &qword_100112248);
}

uint64_t sub_1000A7C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_1000A76F0(a1, v3 | (v2[1] << 8) | *v2, a2);
}

unint64_t sub_1000A7C68()
{
  result = qword_1001579C0;
  if (!qword_1001579C0)
  {
    sub_10003AECC(&qword_100157990, &unk_100111ED0);
    sub_1000A7CF4();
    sub_100015A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579C0);
  }

  return result;
}

unint64_t sub_1000A7CF4()
{
  result = qword_1001579C8;
  if (!qword_1001579C8)
  {
    sub_10003AECC(&qword_1001579B8, &qword_100111F20);
    sub_10003AECC(&qword_100157988, &qword_100111EC8);
    sub_10003AECC(&qword_100157980, &qword_100111EC0);
    sub_10003AECC(&qword_100157978, &qword_100111EB8);
    sub_100004880(&qword_1001579A8, &qword_100157978, &qword_100111EB8, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001579D0, &qword_1001579D8, &qword_100111F78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579C8);
  }

  return result;
}

void sub_1000A7E9C(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ModeMenuView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1000A3A18(v4, a1);
}

uint64_t sub_1000A7F40()
{
  v1 = (type metadata accessor for ModeMenuView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  sub_100030EDC(*(v0 + v2), *(v0 + v2 + 8));

  v3 = v1[8];
  v4 = type metadata accessor for LayoutDirection();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000A8068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ModeMenuView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

double sub_1000A8130(uint64_t a1)
{
  type metadata accessor for ModeMenuView(0);
  if (!a1)
  {
    return sub_1000A6B48();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeButtonAccessibilityModifiers(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeButtonAccessibilityModifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1000A82A0()
{
  result = qword_100157AE0;
  if (!qword_100157AE0)
  {
    sub_10003AECC(&qword_1001579E8, &unk_100111FB0);
    sub_10003AECC(&qword_100157990, &unk_100111ED0);
    sub_1000A7C68();
    swift_getOpaqueTypeConformance2();
    sub_100004880(qword_100157100, &qword_100157080, &qword_100110E08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157AE0);
  }

  return result;
}

uint64_t sub_1000A83AC(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  [a1 removeMenuForIdentifier:UIMenuFile];
  [a1 removeMenuForIdentifier:UIMenuFormat];
  [a1 removeMenuForIdentifier:UIMenuHide];
  [a1 removeMenuForIdentifier:UIMenuQuit];
  [a1 removeMenuForIdentifier:UIMenuFind];
  v5[4] = variable initialization expression of CalculatorHistoryRecordManager.recordsPendingAdd;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000A8534;
  v5[3] = &unk_10014C8E8;
  v3 = _Block_copy(v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuWindow fromChildrenBlock:v3];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

Class sub_1000A8534(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000A8660();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_1000A8624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000A8660()
{
  result = qword_100157BF8;
  if (!qword_100157BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100157BF8);
  }

  return result;
}

uint64_t sub_1000A86B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1000A8754(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_1000A87D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000ACA74(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_1000A8868()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1000A8918()
{
  v1 = v0;
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  if (v2)
  {

    return v2;
  }

  if (qword_1001546F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = qword_100160D68;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_1000ADDA4(v28);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    swift_getKeyPath();
    *&v28[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = [*(v1 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v13 = v22;
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v22 unitType] == 16)
        {
          goto LABEL_43;
        }

        ++v21;
        if (v23 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_47:

    __break(1u);
    return result;
  }

  v7 = v25;
  swift_getKeyPath();
  *&v28[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = [*(v1 + 16) categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_13:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (CalculateUnitCategory.id.getter() == v24 && v15 == v7)
    {

      goto LABEL_43;
    }

    v16 = v7;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      break;
    }

    ++v11;
    v7 = v16;
    if (v14 == v10)
    {
      goto LABEL_31;
    }
  }

LABEL_43:

  return v13;
}

id sub_1000A8DB8()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  if (v1)
  {

    return v1;
  }

  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = qword_100160D68;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (!*(&v22 + 1))
    {
      sub_1000ADDA4(v23);
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v6 = v20;
    v7 = sub_1000A8918();
    v8 = [v7 units];

    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_13:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (CalculateUnit.id.getter() == v19 && v15 == v6)
      {

        return v13;
      }

      v16 = v6;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        return v13;
      }

      ++v11;
      v6 = v16;
      if (v14 == v10)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_31:

LABEL_32:
  v18 = sub_1000A8918();
  v13 = [v18 preferredFromUnit];

  return v13;
}

id sub_1000A9128()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  if (v1)
  {

    return v1;
  }

  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = qword_100160D68;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (!*(&v22 + 1))
    {
      sub_1000ADDA4(v23);
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v6 = v20;
    v7 = sub_1000A8918();
    v8 = [v7 units];

    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_13:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (CalculateUnit.id.getter() == v19 && v15 == v6)
      {

        return v13;
      }

      v16 = v6;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        return v13;
      }

      ++v11;
      v6 = v16;
      if (v14 == v10)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_31:

LABEL_32:
  v18 = sub_1000A8918();
  v13 = [v18 preferredToUnit];

  return v13;
}

void *sub_1000A9498()
{
  type metadata accessor for CalculatorUnitConversionDataProvider(0);
  v0 = swift_allocObject();
  result = sub_1000AA71C();
  qword_100160D00 = v0;
  return result;
}

id sub_1000A94D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1000A95BC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1000050A0(0, &qword_100157CE8, CalculateUnitCollection_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_1000A9728()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    return v1;
  }

  v2 = v0;
  swift_getKeyPath();
  v46 = v0;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = [*(v0 + 16) categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = sub_10007746C(_swiftEmptyArrayStorage);
  if (v4 >> 62)
  {
LABEL_34:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v2;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_35:

    *(v39 + 24) = v1;

    return v1;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = v0;
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_5:
  v6 = 0;
  v2 = 0;
  v42 = v4 & 0xFFFFFFFFFFFFFF8;
  v43 = v4 & 0xC000000000000001;
  v40 = v5;
  v41 = v4;
  while (1)
  {
    if (v43)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v42 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v4 + 8 * v6 + 32);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v44 = v6 + 1;
    v11 = CalculateUnitCategory.id.getter();
    v45 = v12;
    v13 = [v10 units];
    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v14 >> 62))
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8);

      goto LABEL_14;
    }

    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_14:
    v46 = v15;
    sub_1000ACDBC(&v46);

    v4 = v46;
    v16 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v1;
    v18 = v11;
    v20 = sub_10007519C(v11, v45);
    v21 = v1[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_32;
    }

    v24 = v19;
    if (v1[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1000763D4();
        if (v24)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_100075CB8(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_10007519C(v18, v45);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

      v20 = v25;
      if (v24)
      {
LABEL_6:

        v1 = v46;
        v7 = v46[7] + 16 * v20;
        v8 = *v7;
        *v7 = v16;
        *(v7 + 8) = v4;

        goto LABEL_7;
      }
    }

    v1 = v46;
    v46[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v1[6] + 16 * v20);
    *v27 = v18;
    v27[1] = v45;
    v28 = (v1[7] + 16 * v20);
    *v28 = v16;
    v28[1] = v4;

    v29 = v1[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_33;
    }

    v1[2] = v31;
LABEL_7:
    ++v6;
    v4 = v41;
    if (v44 == v40)
    {
      goto LABEL_35;
    }
  }

  v33 = v32;
  v15 = sub_1000AC78C(v32, 0);

  sub_1000CE65C((v15 + 4), v33, v14);
  v34 = v11;
  v36 = v35;

  v37 = v36 == v33;
  v11 = v34;
  if (v37)
  {
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1000A9B60()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_1000A9C18@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);

  return result;
}

uint64_t sub_1000A9D04(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1000ABAEC(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_1000A9E4C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1000A9EF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_1000A9FAC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

void *sub_1000AA13C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1000AA1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000AA29C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void *sub_1000AA42C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1000AA4D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1000AA58C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void *sub_1000AA71C()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(CalculateUnitCollection) initWithLocales:0];
  v0[3] = 0;
  v29 = _swiftEmptyArrayStorage;
  v0[4] = _swiftEmptyArrayStorage;
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
  ObservationRegistrar.init()();
  v2 = sub_1000A8918();
  v3 = CalculateUnitCategory.id.getter();
  v30 = v4;

  swift_getKeyPath();
  *&v34[0] = v1;
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = [v1[2] categories];
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (CalculateUnitCategory.id.getter() == v3 && v12 == v30)
      {

LABEL_15:

        v14 = v10;
        sub_1000A9FAC(v10);
        v15 = sub_1000A8DB8();
        sub_1000AA29C(v15);
        v16 = sub_1000A9128();
        sub_1000AA58C(v16);

        goto LABEL_20;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_15;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

LABEL_20:
  if (qword_1001546F8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v17 = qword_100160D68;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 objectForKey:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34[0] = v32;
    v34[1] = v33;
    if (!*(&v33 + 1))
    {
      break;
    }

    sub_10003AE84(&qword_100157CF0, &qword_1001123B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return v1;
    }

    v20 = 0;
    *&v34[0] = _swiftEmptyArrayStorage;
    v21 = *(v31 + 16);
    v22 = v31 + 40;
LABEL_27:
    v23 = v22 + 16 * v20;
    while (1)
    {
      if (v21 == v20)
      {

        sub_1000A9D04(v29);
        return v1;
      }

      if (v20 >= *(v31 + 16))
      {
        break;
      }

      ++v20;
      v24 = v23 + 16;
      swift_getKeyPath();
      *&v32 = v1;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = v1[2];
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 findUnitWithName:{v26, v29}];

      v23 = v24;
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = *&v34[0];
        v22 = v31 + 40;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  sub_1000ADDA4(v34);
  return v1;
}

void sub_1000AABE0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
LABEL_44:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      goto LABEL_18;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = CalculateUnit.id.getter();
    v10 = v9;
    if (v8 == CalculateUnit.id.getter() && v10 == v11)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_17;
    }

    v13 = __OFADD__(v5++, 1);
    if (v13)
    {
      goto LABEL_43;
    }
  }

LABEL_17:

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = sub_1000A87D8(v5);
  swift_endAccess();

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_18:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v2 + 32);
  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 20)
    {
      goto LABEL_27;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 20)
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v2 + 32);
  if (v16 >> 62)
  {
    goto LABEL_52;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_22:
  v17 = sub_1000ADF3C();
  if (!v17)
  {
    v18 = *(v2 + 32);
    if (v18 >> 62)
    {
      goto LABEL_54;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = __OFSUB__(v19, 1);
    v20 = v19 - 1;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_56:
    __break(1u);
    return;
  }

  while (1)
  {

    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_27:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v2 + 32) >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
    }

    else
    {
      v21 = a1;
      sub_1000AE4E0(0, 0, v21, sub_1000D3634, sub_1000AE3B4);
      swift_endAccess();

      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      if (qword_1001546F8 == -1)
      {
        goto LABEL_29;
      }
    }

    swift_once();
LABEL_29:
    v22 = qword_100160D68;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v2 + 32);
    if (v2 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v23)
    {
      goto LABEL_41;
    }

    sub_1000ACC90(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_52:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_22;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v13 = __OFSUB__(v35, 1);
    v20 = v35 - 1;
    if (v13)
    {
      goto LABEL_56;
    }

LABEL_25:
    v17 = sub_1000A87D8(v20);
  }

  v37 = v22;
  v24 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v2 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = CalculateUnit.id.getter();
    v29 = v28;

    v31 = _swiftEmptyArrayStorage[2];
    v30 = _swiftEmptyArrayStorage[3];
    if (v31 >= v30 >> 1)
    {
      sub_1000ACC90((v30 > 1), v31 + 1, 1);
    }

    ++v24;
    _swiftEmptyArrayStorage[2] = v31 + 1;
    v32 = &_swiftEmptyArrayStorage[2 * v31];
    v32[4] = v27;
    v32[5] = v29;
  }

  while (v23 != v24);

  v22 = v37;
LABEL_41:
  isa = Array._bridgeToObjectiveC()().super.isa;

  v34 = String._bridgeToObjectiveC()();
  [v22 setObject:isa forKey:v34];
}

uint64_t sub_1000AB310@<X0>(uint64_t *a2@<X8>)
{
  result = CalculateUnit.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1000AB33C()
{
  swift_getKeyPath();
  sub_1000AE5E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v0 + 32) = _swiftEmptyArrayStorage;

  v3 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100160D68;
  v2 = String._bridgeToObjectiveC()();
  [v1 setURL:0 forKey:{v2, v3, v4}];
}

void sub_1000AB4DC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v47 = a1;
  v48 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return;
  }

  v3 = sub_1000A9728();
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = v3 + 8;
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v3[8];
  v11 = (v8 + 63) >> 6;
  v43 = v11;
  v44 = _swiftEmptyArrayStorage;
  v40 = v3 + 8;
  v41 = v3;
  while (v10)
  {
LABEL_13:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v46 = *(v4[7] + ((v5 << 10) | (16 * v13)));
    v14 = v46;
    v15 = *(&v46 + 1);

    v16 = String._bridgeToObjectiveC()();
    v45 = v14;
    v17 = [v14 contains:v16];

    if (v17)
    {
      v30 = v45;

      v29 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1000AC680(0, *(v44 + 2) + 1, 1, v44);
      }

      v32 = *(v44 + 2);
      v31 = *(v44 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v44 = sub_1000AC680((v31 > 1), v32 + 1, 1, v44);
      }

LABEL_44:

      v36 = v45;

      v11 = v43;
      v37 = v44;
      *(v44 + 2) = v33;
      v38 = &v37[16 * v32];
      *(v38 + 4) = v36;
      *(v38 + 5) = v29;
    }

    else
    {
      v49 = v46;
      __chkstk_darwin(v18);
      v39[2] = &v49;
      if (sub_1000ACB84(sub_1000AE1AC, v39, v44))
      {

        v11 = v43;
      }

      else
      {
        v42 = v6;
        *&v49 = _swiftEmptyArrayStorage;
        if (v15 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if (v19)
          {
LABEL_17:
            v20 = 0;
            *&v46 = v15 & 0xC000000000000001;
            v21 = v15 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v46)
              {
                v23 = v15;
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v20 >= *(v21 + 16))
                {
                  goto LABEL_48;
                }

                v23 = v15;
                v24 = *(v15 + 8 * v20 + 32);
              }

              v25 = v24;
              v26 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              v27 = String._bridgeToObjectiveC()();
              v28 = [v25 contains:v27];

              if (v28)
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v20;
              v22 = v26 == v19;
              v15 = v23;
            }

            while (!v22);
            v29 = v49;
            v7 = v40;
            v4 = v41;
            v6 = v42;
            if ((v49 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_17;
          }
        }

        v29 = _swiftEmptyArrayStorage;
        v6 = v42;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
        {
LABEL_36:
          if ((v29 & 0x4000000000000000) == 0)
          {
            if (*(v29 + 16))
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }
        }

LABEL_39:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_40:
          v34 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1000AC680(0, *(v44 + 2) + 1, 1, v44);
          }

          v32 = *(v44 + 2);
          v35 = *(v44 + 3);
          v33 = v32 + 1;
          if (v32 >= v35 >> 1)
          {
            v44 = sub_1000AC680((v35 > 1), v32 + 1, 1, v44);
          }

          goto LABEL_44;
        }

LABEL_38:

        v11 = v43;
      }
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = v7[v12];
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_13;
    }
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_1000AB910()
{

  v1 = OBJC_IVAR____TtC10Calculator36CalculatorUnitConversionDataProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorUnitConversionDataProvider(uint64_t a1)
{
  result = qword_100157C30;
  if (!qword_100157C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ABA30(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000ABAEC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000ABD3C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for SchemaV1.HistoryRecord(0);
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1000AE5E8(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB54);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000ABF50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100157D10, &qword_100112410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AC070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100154E38, &qword_100112400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AC17C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100157D18, &qword_100112418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10003AE84(&qword_100157D20, &qword_100112420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AC2B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100157D08, &qword_100112408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1000AC3A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_10003AE84(&qword_100156490, &qword_10010F550);
  v10 = *(type metadata accessor for Locale() - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Locale() - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000AC57C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100157CF8, &qword_1001123F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000AC680(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100157D00, &qword_1001123F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AC78C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1000AC814(uint64_t result, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_1000ABF50(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  sub_1000AC900(result, a2, 1, a3, a4, a5);
  *v5 = v7;
}

void sub_1000AC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = a5;
  v7 = a4;
  v13 = *v6;
  v14 = (v13 + 32 + 24 * a1);
  swift_arrayDestroy();
  v15 = __OFSUB__(a3, v9);
  v16 = a3 - v9;
  if (v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = *(v13 + 16);
  v15 = __OFSUB__(v17, a2);
  v18 = v17 - a2;
  if (v15)
  {
    goto LABEL_21;
  }

  v19 = &v14[3 * a3];
  v20 = (v13 + 32 + 24 * a2);
  if (v19 != v20 || v19 >= &v20[24 * v18])
  {
    memmove(v19, v20, 24 * v18);
  }

  v22 = *(v13 + 16);
  v15 = __OFADD__(v22, v16);
  v23 = v22 + v16;
  if (v15)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_13:
  if (a3 > 0)
  {
    *v14 = v7;
    v14[1] = v8;
    v14[2] = a6;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    sub_100048EE4(v7, v8);

    __break(1u);
    return;
  }

  sub_10004AA5C(v7, v8);
}

uint64_t sub_1000ACA74(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000ACAD8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000ACB84(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000ACC50(void *a1, int64_t a2, char a3)
{
  result = sub_10001B24C(a1, a2, a3, *v3, &qword_100157D28, &qword_100112428, &qword_100154E28, &unk_10010C590);
  *v3 = result;
  return result;
}

char *sub_1000ACC90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000ACCB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000ACCB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003AE84(&qword_100154E38, &qword_100112400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000ACDBC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000ADFB4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000ACE38(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1000ACE38(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000AD0C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000ACF4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000ACF4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 8 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = [v9 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10006345C();
      v12 = StringProtocol.localizedStandardCompare<A>(_:)();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 8;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v13;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD0C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v104 = result;
    while (1)
    {
      v11 = v9 + 1;
      v105 = v9;
      if (v9 + 1 < v8)
      {
        v12 = v9;
        v109 = v8;
        v100 = v10;
        v102 = v5;
        v13 = *(*v6 + 8 * v11);
        v106 = 8 * v9;
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = v13;
        v9 = v16;
        v18 = [v17 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = [v9 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v111 = StringProtocol.localizedStandardCompare<A>(_:)();

        v20 = v12 + 2;
        while (1)
        {
          v11 = v109;
          if (v109 == v20)
          {
            break;
          }

          v21 = *(v15 - 1);
          v9 = *v15;
          v22 = v21;
          v23 = [v9 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = [v22 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = StringProtocol.localizedStandardCompare<A>(_:)();

          ++v20;
          ++v15;
          if ((v111 == -1) == (v25 != -1))
          {
            v11 = (v20 - 1);
            break;
          }
        }

        v10 = v100;
        v5 = v102;
        v6 = a3;
        v7 = v104;
        v26 = v106;
        if (v111 == -1)
        {
          v27 = v105;
          if (v11 < v105)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v105 < v11)
          {
            v28 = 8 * v11 - 8;
            v29 = v11;
            do
            {
              if (v27 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v30 = *(v31 + v26);
                *(v31 + v26) = *(v31 + v28);
                *(v31 + v28) = v30;
              }

              ++v27;
              v28 -= 8;
              v26 += 8;
            }

            while (v27 < v29);
          }
        }
      }

      v32 = v6[1];
      if (v11 >= v32)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v11, v105))
      {
        goto LABEL_116;
      }

      if (v11 - v105 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v105, a4))
      {
        goto LABEL_117;
      }

      if (&v105[a4] >= v32)
      {
        v33 = v6[1];
      }

      else
      {
        v33 = &v105[a4];
      }

      if (v33 < v105)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v34 = v105;
      if (v11 != v33)
      {
        break;
      }

LABEL_37:
      if (v11 < v34)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000AC57C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        result = sub_1000AC57C((v46 > 1), v47 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v105;
      *(v49 + 5) = v11;
      v50 = *v7;
      if (!v50)
      {
        goto LABEL_125;
      }

      v9 = v11;
      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v10 + 4);
            v53 = *(v10 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_57:
            if (v55)
            {
              goto LABEL_104;
            }

            v68 = &v10[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_107;
            }

            v74 = &v10[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_111;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v78 = &v10[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_71:
          if (v73)
          {
            goto LABEL_106;
          }

          v81 = &v10[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_109;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_78:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v90 = *&v10[16 * v89 + 32];
          v91 = *&v10[16 * v51 + 40];
          sub_1000AD884((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000ADD08(v10);
          }

          if (v89 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v92 = &v10[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          result = sub_1000ADC7C(v51);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v10[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_102;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_105;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v67 >= v59)
        {
          v85 = &v10[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_112;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v104;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }

    v101 = v10;
    v103 = v5;
    v35 = *v6;
    v36 = *v6 + 8 * v11 - 8;
    v37 = &v105[-v11];
    v107 = v33;
    do
    {
      v110 = v36;
      v112 = v11;
      v38 = *(v35 + 8 * v11);
      v108 = v37;
      do
      {
        v39 = *v36;
        v9 = v38;
        v40 = v39;
        v41 = [v9 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v40 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v43 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v43 != -1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_121;
        }

        v44 = *v36;
        v38 = *(v36 + 8);
        *v36 = v38;
        *(v36 + 8) = v44;
        v36 -= 8;
      }

      while (!__CFADD__(v37++, 1));
      ++v11;
      v36 = v110 + 8;
      v37 = v108 - 1;
    }

    while ((v112 + 1) != v107);
    v11 = v107;
    v10 = v101;
    v5 = v103;
    v6 = a3;
    v7 = v104;
LABEL_36:
    v34 = v105;
    goto LABEL_37;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000ADD08(v10);
    v10 = result;
  }

  v93 = *(v10 + 2);
  if (v93 >= 2)
  {
    while (*v6)
    {
      v94 = v10;
      v10 = (v93 - 1);
      v95 = *&v94[16 * v93];
      v96 = *&v94[16 * v93 + 24];
      sub_1000AD884((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
      if (v5)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1000ADD08(v94);
      }

      if (v93 - 2 >= *(v94 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v94[16 * v93];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_1000ADC7C(v93 - 1);
      v10 = v94;
      v93 = *(v94 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1000AD884(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v44 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v39 = v5;
    }

    else
    {
      __srca = v15;
LABEL_25:
      v41 = v5;
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v27;
      do
      {
        v30 = v28;
        v31 = v28 + 1;
        v32 = *--v29;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v35 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v38 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v38 == -1)
        {
          v25 = v31 == v41;
          v4 = v30;
          if (!v25)
          {
            *v30 = *v42;
          }

          v15 = __srca;
          if (v44 <= __srca || (v5 = v42, v42 <= v6))
          {
            v39 = v42;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > __srca);
      v44 = v29;
      v39 = v41;
      v15 = __srca;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v44 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = v17;
        v21 = [v19 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v20 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10006345C();
        v23 = StringProtocol.localizedStandardCompare<A>(_:)();

        if (v23 != -1)
        {
          break;
        }

        v24 = v18;
        v5 = v18 + 1;
        if (v6 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v6;
        if (v15 < v44)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v24 = v15;
      v25 = v6 == v15++;
      v5 = v18;
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v24;
      goto LABEL_14;
    }

LABEL_35:
    v39 = v6;
  }

LABEL_38:
  if (v39 != v15 || v39 >= (v15 + ((v44 - v15 + (v44 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v39, v15, 8 * (v44 - v15));
  }

  return 1;
}

uint64_t sub_1000ADC7C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ADD08(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void (*sub_1000ADD1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000ADD9C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ADDA4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001551B8, &qword_10010E3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000ADE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

void sub_1000ADE44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1000ADE7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t (*sub_1000ADEB4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_1000ADF34;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000ADF3C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000ACA74(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ADFC8(uint64_t a1)
{
  v1 = CalculateUnitCategory.id.getter();
  v3 = v2;
  if (v1 == CalculateUnitCategory.id.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

void sub_1000AE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SchemaV1.HistoryRecord(0);
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_1000AE1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000050A0(0, &qword_1001564A8, UIApplicationShortcutItem_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AE2DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000D3634();

  return sub_1000AE1CC(v5, v3, 0);
}

char *sub_1000AE3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1000AE4E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

uint64_t sub_1000AE5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AE634()
{
  result = static Font.caption2.getter();
  qword_100160D08 = result;
  return result;
}

uint64_t sub_1000AE674(uint64_t a1)
{
  result = static Font.footnote.getter();
  qword_100160D18 = result;
  return result;
}

void sub_1000AE6B4(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  v4 = Font.bold()();

  *a3 = v4;
}

uint64_t sub_1000AE6FC()
{
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1000AE76C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double sub_1000AE80C(unsigned __int8 a1)
{
  if (sub_100006CE8(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AEB78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000AE8F0(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_1000AEB78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((sub_100006CE8(*(v1 + 16), a1) & 1) == 0)
  {
    if (a1 == 2)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        if (sub_100006CE8(*(v1 + 16), a1))
        {
          *(v1 + 16) = a1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000AEACC()
{
  v1 = OBJC_IVAR____TtC10Calculator25CalculatorKeypadViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1000AEB78()
{
  result = qword_100157410;
  if (!qword_100157410)
  {
    type metadata accessor for CalculatorKeypadViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157410);
  }

  return result;
}

void sub_1000AEC18(uint64_t a1)
{
  type metadata accessor for CalculatorLayout(319);
  if (v1 <= 0x3F)
  {
    sub_100091544(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CalculatorSizeClass(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000AED0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v69 = type metadata accessor for AccessibilityTraits();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorHistoryView(0);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10003AE84(&qword_100158060, &qword_1001125D8);
  __chkstk_darwin(v54);
  v13 = &v48 - v12;
  v59 = sub_10003AE84(&qword_100158068, &qword_1001125E0);
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v15 = &v48 - v14;
  v16 = sub_10003AE84(&qword_100158070, &qword_1001125E8);
  v57 = *(v16 - 8);
  v58 = v16;
  __chkstk_darwin(v16);
  v55 = &v48 - v17;
  v65 = sub_10003AE84(&qword_100158078, &qword_1001125F0);
  __chkstk_darwin(v65);
  v61 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v48 - v20;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v21 = sub_10003AE84(&qword_100158080, &qword_1001125F8);
  sub_1000AF7AC(v1, &v13[*(v21 + 44)]);
  v22 = *v1;
  v23 = *(v1 + 8);

  v70 = v22;
  v52 = v23;
  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v22 = v71;
  }

  v48 = v11;
  v49 = v9;
  v50 = v8;
  swift_getKeyPath();
  v71 = v22;
  v51 = sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v22 + 16);

  LOBYTE(v71) = v25;
  sub_1000B5984(v2, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v27 = swift_allocObject();
  sub_1000B59E8(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v28 = sub_100004880(&qword_100158088, &qword_100158060, &qword_1001125D8, &protocol conformance descriptor for VStack<A>);
  v29 = v54;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v13, &qword_100158060, &qword_1001125D8);
  v30 = v60;
  static AccessibilityChildBehavior.contain.getter();
  v71 = v29;
  v72 = &type metadata for Bool;
  v73 = v28;
  v74 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v55;
  v33 = v59;
  View.accessibilityElement(children:)();
  (*(v62 + 8))(v30, v63);
  (*(v56 + 8))(v15, v33);
  v71 = v33;
  v72 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v61;
  v35 = v58;
  View.accessibilityIdentifier(_:)();
  (*(v57 + 8))(v32, v35);
  v36 = _AXSAutomationEnabled();
  v37 = v66;
  v38 = v64;
  v39 = v70;
  if (!v36)
  {

    v40 = v39;
    if ((v52 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v42 = v48;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v49 + 8))(v42, v50);
      v40 = v71;
    }

    swift_getKeyPath();
    v71 = v40;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  ModifiedContent<>.accessibilityHidden(_:)();
  sub_1000035CC(v34, &qword_100158078, &qword_1001125F0);
  if (_AXSAutomationEnabled())
  {
    goto LABEL_12;
  }

  if ((v52 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v48;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v49 + 8))(v44, v50);
    v39 = v71;
  }

  swift_getKeyPath();
  v71 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v39 + 16);

  if (v45 != 1)
  {
LABEL_12:
    v71 = _swiftEmptyArrayStorage;
    sub_1000116C0(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v46 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    static AccessibilityTraits.isModal.getter();
    v46 = v69;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v37, v46);
  return sub_1000035CC(v38, &qword_100158078, &qword_1001125F0);
}

uint64_t sub_1000AF7AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v89 = a1;
  v94 = a2;
  v87 = sub_10003AE84(&qword_100158098, &qword_100112658);
  __chkstk_darwin(v87);
  v82 = &v76 - v2;
  v85 = sub_10003AE84(&qword_1001580A0, &qword_100112660);
  __chkstk_darwin(v85);
  v86 = &v76 - v3;
  v93 = sub_10003AE84(&qword_1001580A8, &qword_100112668);
  __chkstk_darwin(v93);
  v88 = &v76 - v4;
  v76 = sub_10003AE84(&qword_1001580B0, &qword_100112670);
  __chkstk_darwin(v76);
  v78 = &v76 - v5;
  v77 = sub_10003AE84(&qword_1001580B8, &qword_100112678);
  __chkstk_darwin(v77);
  v80 = &v76 - v6;
  v84 = sub_10003AE84(&qword_1001580C0, &qword_100112680);
  __chkstk_darwin(v84);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v76 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v83 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10003AE84(&qword_1001580C8, &qword_100112688);
  __chkstk_darwin(v90);
  v92 = &v76 - v13;
  v14 = sub_10003AE84(&qword_1001580D0, &qword_100112690);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v91 = sub_10003AE84(&qword_1001580D8, &qword_100112698);
  __chkstk_darwin(v91);
  v18 = &v76 - v17;
  v19 = sub_10003AE84(&qword_1001580E0, &qword_1001126A0);
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v22 = qword_100160D98;
  swift_getKeyPath();
  *&v97 = v22;
  sub_1000116C0(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v22 + 72) == 1)
  {
    v23 = v89;
    sub_1000B0608(1, v21);
    v24 = v23 + *(type metadata accessor for CalculatorHistoryView(0) + 40);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v95) = v25;
    v96 = v26;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.projectedValue.getter();
    v27 = *(&v97 + 1);
    v28 = v98;
    v29 = &v21[*(v19 + 36)];
    *v29 = v97;
    *(v29 + 1) = v27;
    v29[16] = v28;
    v30 = &qword_1001580E0;
    v31 = &qword_1001126A0;
    sub_100008E68(v21, v16, &qword_1001580E0, &qword_1001126A0);
    swift_storeEnumTagMultiPayload();
    sub_1000B65FC();
    _ConditionalContent<>.init(storage:)();
    v32 = &qword_1001580D8;
    v33 = &qword_100112698;
    sub_100008E68(v18, v92, &qword_1001580D8, &qword_100112698);
    swift_storeEnumTagMultiPayload();
    sub_1000B6570();
    sub_1000B6978();
    _ConditionalContent<>.init(storage:)();
    v34 = v18;
LABEL_12:
    sub_1000035CC(v34, v32, v33);
    v43 = v21;
    return sub_1000035CC(v43, v30, v31);
  }

  v35 = v89;
  v36 = *v89;
  v37 = *(v89 + 8);

  if ((v37 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v83 + 8))(v12, v10);
    v36 = v97;
  }

  swift_getKeyPath();
  *&v97 = v36;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v36 + 16);

  if ((v39 & 1) == 0)
  {
    v40 = v35 + *(type metadata accessor for CalculatorHistoryView(0) + 40);
    v41 = *v40;
    v42 = *(v40 + 1);
    LOBYTE(v97) = v41;
    *(&v97 + 1) = v42;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.wrappedValue.getter();
    if (v95 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1000B65FC();
      _ConditionalContent<>.init(storage:)();
      v30 = &qword_1001580D8;
      v31 = &qword_100112698;
      sub_100008E68(v18, v92, &qword_1001580D8, &qword_100112698);
      swift_storeEnumTagMultiPayload();
      sub_1000B6570();
      sub_1000B6978();
      _ConditionalContent<>.init(storage:)();
      v43 = v18;
      return sub_1000035CC(v43, v30, v31);
    }
  }

  v44 = v35[5];
  *&v97 = v35[4];
  *(&v97 + 1) = v44;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v45 = sub_10004C418();

  v46 = *(v45 + 16);

  swift_getKeyPath();
  *&v97 = v46;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v45) = *(v46 + 56);

  if (v45)
  {
    __chkstk_darwin(v47);
    sub_10003AE84(&qword_1001581B8, &qword_100112780);
    v48 = sub_10003AECC(&qword_1001581C0, &qword_100112788);
    v49 = sub_10003AECC(&qword_1001581C8, &qword_100112790);
    v50 = sub_1000B6A0C();
    v51 = sub_10003AECC(&qword_100158218, &qword_1001127B8);
    v52 = sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8, &protocol conformance descriptor for TupleToolbarContent<A>);
    *&v97 = v51;
    *(&v97 + 1) = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v97 = v48;
    *(&v97 + 1) = v49;
    *&v98 = v50;
    *(&v98 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v21 = v82;
    NavigationStack.init<>(root:)();
    v54 = v35 + *(type metadata accessor for CalculatorHistoryView(0) + 40);
    v55 = *v54;
    v56 = *(v54 + 1);
    LOBYTE(v95) = v55;
    v96 = v56;
    sub_10003AE84(&qword_1001553F0, &unk_10010D260);
    State.projectedValue.getter();
    v57 = *(&v97 + 1);
    v58 = v98;
    v59 = &v21[*(v87 + 36)];
    *v59 = v97;
    *(v59 + 1) = v57;
    v59[16] = v58;
    v30 = &qword_100158098;
    v31 = &qword_100112658;
    sub_100008E68(v21, v86, &qword_100158098, &qword_100112658);
    swift_storeEnumTagMultiPayload();
    sub_1000B6268();
    sub_1000B6464();
    v60 = v88;
    _ConditionalContent<>.init(storage:)();
    v32 = &qword_1001580A8;
    v33 = &qword_100112668;
    sub_100008E68(v60, v92, &qword_1001580A8, &qword_100112668);
    swift_storeEnumTagMultiPayload();
    sub_1000B6570();
    sub_1000B6978();
    _ConditionalContent<>.init(storage:)();
    v34 = v60;
    goto LABEL_12;
  }

  v62 = v78;
  ProgressView<>.init<>()();
  v63 = (v62 + *(v76 + 36));
  v64 = *(sub_10003AE84(&qword_1001580E8, &qword_100112700) + 28);
  v65 = enum case for ControlSize.small(_:);
  v66 = type metadata accessor for ControlSize();
  (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
  *v63 = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v67 = v80;
  sub_10000D5B8(v62, v80, &qword_1001580B0, &qword_100112670);
  v68 = (v67 + *(v77 + 36));
  v69 = v102;
  v68[4] = v101;
  v68[5] = v69;
  v68[6] = v103;
  v70 = v98;
  *v68 = v97;
  v68[1] = v70;
  v71 = v100;
  v68[2] = v99;
  v68[3] = v71;
  v72 = v79;
  sub_10000D5B8(v67, v79, &qword_1001580B8, &qword_100112678);
  v73 = (v72 + *(v84 + 36));
  *v73 = sub_1000B09B8;
  v73[1] = 0;
  v74 = v81;
  sub_10000D5B8(v72, v81, &qword_1001580C0, &qword_100112680);
  sub_100008E68(v74, v86, &qword_1001580C0, &qword_100112680);
  swift_storeEnumTagMultiPayload();
  sub_1000B6268();
  sub_1000B6464();
  v75 = v88;
  _ConditionalContent<>.init(storage:)();
  sub_100008E68(v75, v92, &qword_1001580A8, &qword_100112668);
  swift_storeEnumTagMultiPayload();
  sub_1000B6570();
  sub_1000B6978();
  _ConditionalContent<>.init(storage:)();
  sub_1000035CC(v75, &qword_1001580A8, &qword_100112668);
  return sub_1000035CC(v74, &qword_1001580C0, &qword_100112680);
}

uint64_t sub_1000B0608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v30 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100158178, &qword_100112758);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10003AE84(&qword_100158168, &qword_100112750);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10003AE84(&qword_100158150, &qword_100112748);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0x4014000000000000;
  v10[16] = 0;
  v17 = sub_10003AE84(&qword_100158228, &qword_1001127C0);
  sub_1000B3B10(a1, v3, &v10[*(v17 + 44)]);
  if (qword_1001545B8 != -1)
  {
    swift_once();
  }

  v18 = qword_100160BE0;
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(sub_10003AE84(&qword_100158188, &qword_100112760) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = swift_getKeyPath();
  v22 = &v10[*(v8 + 36)];
  *v22 = v21;
  v22[8] = 1;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v10, v13, &qword_100158178, &qword_100112758);
  v23 = &v13[*(v11 + 36)];
  v24 = v36;
  *(v23 + 4) = v35;
  *(v23 + 5) = v24;
  *(v23 + 6) = v37;
  v25 = v32;
  *v23 = v31;
  *(v23 + 1) = v25;
  v26 = v34;
  *(v23 + 2) = v33;
  *(v23 + 3) = v26;
  LOBYTE(v18) = static Edge.Set.all.getter();
  sub_10000D5B8(v13, v16, &qword_100158168, &qword_100112750);
  v27 = &v16[*(v14 + 36)];
  *v27 = v18;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  static AccessibilityChildBehavior.combine.getter();
  sub_1000B66C4();
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v30);
  return sub_1000035CC(v16, &qword_100158150, &qword_100112748);
}

void sub_1000B09E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v53 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  if (*a2 == 1)
  {
    v21 = *(a3 + 40);
    v65 = *(a3 + 32);
    v66 = v21;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v22 = sub_10004C418();

    Date.init()();
    (*(v6 + 56))(v20, 0, 1, v5);
    v23 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_1000B61F8(v20, v22 + v23);
    swift_endAccess();

    sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BDE0;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000100107700;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
    v26 = sub_100077104(inited, v25);
    swift_setDeallocating();
    sub_1000035CC(inited + 32, &qword_1001568C0, &qword_10010FA60);
    v27 = *(a3 + 24);

    if ((v27 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v12 + 8))(v14, v11);
    }

    v29 = sub_1000574F4(v26);

    sub_100062CB8(v29);
  }

  else
  {
    v58 = v8;
    v59 = &v53 - v19;
    v61 = v6;
    v30 = *(a3 + 16);
    v31 = *(a3 + 24);

    v60 = v30;
    v57 = v31;
    if ((v31 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v12 + 8))(v14, v11);
      v30 = v65;
    }

    v56 = v14;
    swift_getKeyPath();
    v65 = v30;
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v30 + 54) == 11)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v55 = v5;
      __chkstk_darwin(KeyPath);
      *(&v53 - 2) = v30;
      *(&v53 - 8) = 11;
      v65 = v30;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v5 = v55;
    }

    v35 = *(a3 + 40);
    v65 = *(a3 + 32);
    v34 = v65;
    v66 = v35;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    sub_10004C418();

    sub_10004EAC8();

    v65 = v34;
    v66 = v35;
    State.wrappedValue.getter();
    v36 = sub_10004C418();

    v37 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_100008E68(v36 + v37, v17, &qword_100154E10, &qword_10010C4C0);

    v38 = v61;
    if ((*(v61 + 48))(v17, 1, v5) == 1)
    {
      sub_1000035CC(v17, &qword_100154E10, &qword_10010C4C0);
      return;
    }

    v54 = v35;
    v55 = v34;
    (*(v38 + 32))(v62, v17, v5);
    sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10010DBE0;
    *(v39 + 32) = 0xD000000000000011;
    *(v39 + 40) = 0x8000000100107700;
    *(v39 + 48) = [objc_allocWithZone(NSNumber) initWithBool:0];
    *(v39 + 56) = 0x6E6F697461727564;
    *(v39 + 64) = 0xE800000000000000;
    v40 = v58;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v42 = v41;
    v43 = *(v38 + 8);
    v43(v40, v5);
    *(v39 + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v42];
    v45 = sub_100077104(v39, v44);
    swift_setDeallocating();
    sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
    swift_arrayDestroy();

    if ((v57 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v46 = v43;
      v47 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v43 = v46;
      v48 = v56;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v12 + 8))(v48, v11);
    }

    v49 = sub_1000574F4(v45);

    sub_100062CB8(v49);

    v63 = v55;
    v64 = v54;
    State.wrappedValue.getter();
    v50 = sub_10004C418();

    v43(v62, v5);
    v51 = v59;
    (*(v61 + 56))(v59, 1, 1, v5);
    v52 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
    swift_beginAccess();
    sub_1000B61F8(v51, v50 + v52);
    swift_endAccess();
  }
}

uint64_t sub_1000B13A8()
{
  v83 = sub_10003AE84(&qword_100158370, &qword_100112910);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v76 = &v61 - v2;
  v3 = sub_10003AE84(&qword_100158360, &qword_100112908);
  __chkstk_darwin(v3);
  v82 = &v61 - v4;
  v90 = sub_10003AE84(&qword_1001583B0, &qword_100112A48);
  __chkstk_darwin(v90);
  v91 = &v61 - v5;
  v87 = type metadata accessor for CalculatorHistoryView(0);
  v66 = *(v87 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v87);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v7 - 8);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10003AE84(&qword_100158350, &qword_100112900);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v61 - v9;
  v86 = sub_10003AE84(&qword_100158340, &qword_1001128F8);
  __chkstk_darwin(v86);
  v70 = &v61 - v10;
  v84 = sub_10003AE84(&qword_1001583B8, &qword_100112A50);
  __chkstk_darwin(v84);
  v85 = &v61 - v11;
  v75 = sub_10003AE84(&qword_100158330, &qword_1001128F0);
  __chkstk_darwin(v75);
  v62 = &v61 - v12;
  v64 = sub_10003AE84(&qword_1001583C0, &qword_100112A58);
  __chkstk_darwin(v64);
  v73 = &v61 - v13;
  v72 = sub_10003AE84(&qword_1001582E8, &qword_1001128D0);
  __chkstk_darwin(v72);
  v63 = &v61 - v14;
  v79 = sub_10003AE84(&qword_1001582D8, &qword_1001128C8);
  __chkstk_darwin(v79);
  v74 = &v61 - v15;
  v16 = type metadata accessor for EditMode();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10003AE84(&qword_1001582C8, &qword_1001128C0);
  __chkstk_darwin(v89);
  v80 = &v61 - v19;
  v20 = type metadata accessor for EnvironmentValues();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v88 = v1;
  v25 = *(v1 + 8);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v21 + 8))(v23, v20);
    v24 = v92;
  }

  swift_getKeyPath();
  v92 = v24;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v24 + 17);

  if (v27)
  {
    v28 = *(v88 + 40);
    v92 = *(v88 + 32);
    v93 = v28;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v29 = sub_10004C418();

    v30 = *(v29 + 16);

    swift_getKeyPath();
    v92 = v30;
    sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v31 = *(v30 + 48);

    v32 = *(v31 + 16);

    if (v32)
    {
      v33 = v76;
      EditButton.init()();
      KeyPath = swift_getKeyPath();
      v35 = v83;
      v36 = (v33 + *(v83 + 36));
      v37 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
      sub_10003AE84(&qword_100157F98, qword_100112550);
      State.projectedValue.getter();
      v38 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
      (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
      *v36 = KeyPath;
      v39 = v82;
      sub_10000D5B8(v33, v82, &qword_100158370, &qword_100112910);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v39 = v82;
      v35 = v83;
    }

    (*(v81 + 56))(v39, v40, 1, v35);
    v58 = &qword_100158360;
    v59 = &qword_100112908;
    sub_100008E68(v39, v91, &qword_100158360, &qword_100112908);
  }

  else
  {
    sub_10003AE84(&qword_100157F98, qword_100112550);
    v41 = v88;
    State.wrappedValue.getter();
    v42 = EditMode.isEditing.getter();
    (*(v77 + 8))(v18, v78);
    if (v42)
    {
      v43 = *(v41 + 40);
      v92 = *(v41 + 32);
      v93 = v43;
      sub_10003AE84(&qword_100158090, &qword_100112650);
      State.wrappedValue.getter();
      v44 = sub_10004C418();

      swift_getKeyPath();
      v92 = v44;
      sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v45 = *(v44 + 24);

      v46 = *(v45 + 16);

      v39 = v80;
      if (v46)
      {
        v47 = v63;
        sub_1000B2270(v63);
        v48 = &qword_1001582E8;
        v49 = &qword_1001128D0;
        sub_100008E68(v47, v73, &qword_1001582E8, &qword_1001128D0);
      }

      else
      {
        v47 = v62;
        sub_1000B27C4(v62);
        v48 = &qword_100158330;
        v49 = &qword_1001128F0;
        sub_100008E68(v47, v73, &qword_100158330, &qword_1001128F0);
      }

      swift_storeEnumTagMultiPayload();
      sub_1000B72A0(&qword_1001582E0, &qword_1001582E8, &qword_1001128D0, sub_1000B7354);
      sub_1000B72A0(&qword_100158328, &qword_100158330, &qword_1001128F0, sub_1000B740C);
      v54 = v74;
      _ConditionalContent<>.init(storage:)();
      sub_1000035CC(v47, v48, v49);
      v56 = &qword_1001582D8;
      v57 = &qword_1001128C8;
      sub_100008E68(v54, v85, &qword_1001582D8, &qword_1001128C8);
      swift_storeEnumTagMultiPayload();
      sub_1000B71BC();
      sub_1000B75D0();
    }

    else
    {
      static ButtonRole.close.getter();
      v50 = v68;
      sub_1000B5984(v41, v68);
      v51 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v52 = swift_allocObject();
      sub_1000B59E8(v50, v52 + v51);
      v53 = v67;
      Button<>.init(role:action:)();
      sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900, &protocol conformance descriptor for Button<A>);
      v54 = v70;
      v55 = v71;
      View.accessibilityIdentifier(_:)();
      (*(v69 + 8))(v53, v55);
      v56 = &qword_100158340;
      v57 = &qword_1001128F8;
      sub_100008E68(v54, v85, &qword_100158340, &qword_1001128F8);
      swift_storeEnumTagMultiPayload();
      sub_1000B71BC();
      sub_1000B75D0();
      v39 = v80;
    }

    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v54, v56, v57);
    v58 = &qword_1001582C8;
    v59 = &qword_1001128C0;
    sub_100008E68(v39, v91, &qword_1001582C8, &qword_1001128C0);
  }

  swift_storeEnumTagMultiPayload();
  sub_1000B7130();
  sub_1000B76B8();
  _ConditionalContent<>.init(storage:)();
  return sub_1000035CC(v39, v58, v59);
}

uint64_t sub_1000B2270@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for CalculatorHistoryView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = v6;
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  v43 = sub_10003AE84(&qword_1001582F8, &qword_1001128D8);
  __chkstk_darwin(v43);
  v12 = &v36[-v11];
  static ButtonRole.destructive.getter();
  v13 = type metadata accessor for ButtonRole();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_1000B5984(v2, v7);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1000B59E8(v7, v15 + v14);
  v45 = v2;
  Button.init(role:action:label:)();
  v16 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(sub_10003AE84(&qword_100158318, &qword_1001128E8) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = v2 + *(v4 + 40);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v46) = v20;
  v47 = v21;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v38 = v49;
  v39 = v48;
  v37 = v50;
  v22 = *(v2 + 32);
  v40 = *(v2 + 40);
  v41 = v22;
  v48 = v22;
  v49 = v40;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v23 = sub_10004C418();

  swift_getKeyPath();
  v48 = v23;
  sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v24 = *(v23 + 24);

  v25 = *(v24 + 16);

  sub_1000B5984(v2, v7);
  v26 = swift_allocObject();
  sub_1000B59E8(v7, v26 + v14);
  v27 = &v12[*(sub_10003AE84(&qword_100158308, &qword_1001128E0) + 36)];
  v28 = v38;
  *v27 = v39;
  *(v27 + 1) = v28;
  v27[16] = v37;
  *(v27 + 3) = v25;
  v27[32] = 0;
  *(v27 + 5) = sub_1000B796C;
  *(v27 + 6) = v26;
  v46 = v41;
  v47 = v40;
  State.wrappedValue.getter();
  v29 = sub_10004C418();

  swift_getKeyPath();
  v46 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v30 = *(v29 + 24);

  v31 = *(v30 + 16);

  LOBYTE(v30) = v31 == 0;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v34 = &v12[*(v43 + 36)];
  *v34 = v32;
  v34[1] = sub_1000296E4;
  v34[2] = v33;
  sub_1000B7354();
  View.accessibilityIdentifier(_:)();
  return sub_1000035CC(v12, &qword_1001582F8, &qword_1001128D8);
}

uint64_t sub_1000B27C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for CalculatorHistoryView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v28 = sub_10003AE84(&qword_100158308, &qword_1001128E0);
  __chkstk_darwin(v28);
  v11 = &v27 - v10;
  static ButtonRole.destructive.getter();
  v12 = type metadata accessor for ButtonRole();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_1000B5984(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1000B59E8(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  Button.init(role:action:label:)();
  v15 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(sub_10003AE84(&qword_100158318, &qword_1001128E8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = v2 + *(v4 + 44);
  v19 = *v18;
  v20 = *(v18 + 8);
  v33 = v19;
  v34 = v20;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v21 = v30;
  v22 = v31;
  v23 = v32;
  sub_1000B5984(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_1000B59E8(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v13);
  v25 = &v11[*(v28 + 36)];
  *v25 = v21;
  *(v25 + 1) = v22;
  v25[16] = v23;
  *(v25 + 3) = 0;
  v25[32] = 1;
  *(v25 + 5) = sub_1000B7934;
  *(v25 + 6) = v24;
  sub_1000B740C();
  View.accessibilityIdentifier(_:)();
  return sub_1000035CC(v11, &qword_100158308, &qword_1001128E0);
}

uint64_t sub_1000B2B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100158370, &qword_100112910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(v2 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    v33 = v2;
    v15 = v5;
    v16 = v4;
    v17 = v7;
    v18 = a1;
    v19 = v14;
    os_log(_:dso:log:_:_:)();

    a1 = v18;
    v7 = v17;
    v4 = v16;
    v5 = v15;
    v2 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v12 = v34;
  }

  swift_getKeyPath();
  v34 = v12;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v12 + 17);

  if ((v20 & 1) != 0 || (v21 = v2[5], v34 = v2[4], v35 = v21, sub_10003AE84(&qword_100158090, &qword_100112650), State.wrappedValue.getter(), v22 = sub_10004C418(), , v23 = *(v22 + 16), , , swift_getKeyPath(), v34 = v23, sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v24 = *(v23 + 48), , , v25 = *(v24 + 16), , !v25))
  {
    v30 = 1;
  }

  else
  {
    EditButton.init()();
    KeyPath = swift_getKeyPath();
    v27 = &v7[*(v4 + 36)];
    v28 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
    type metadata accessor for CalculatorHistoryView(0);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    State.projectedValue.getter();
    v29 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    (*(*(v29 - 8) + 56))(v27 + v28, 0, 1, v29);
    *v27 = KeyPath;
    sub_10000D5B8(v7, a1, &qword_100158370, &qword_100112910);
    v30 = 0;
  }

  return (*(v5 + 56))(a1, v30, 1, v4);
}

uint64_t sub_1000B2F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v58 = sub_10003AE84(&qword_100158398, &qword_100112920);
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v48 - v4;
  v5 = sub_10003AE84(&qword_100158330, &qword_1001128F0);
  __chkstk_darwin(v5 - 8);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v48 - v8;
  v9 = sub_10003AE84(&qword_1001582E8, &qword_1001128D0);
  v51 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = &v48 - v10;
  v11 = sub_10003AE84(&qword_1001583A0, &qword_100112928);
  __chkstk_darwin(v11 - 8);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for EditMode();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v23 = *(v2 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    v49 = v16;
    v25 = v9;
    v26 = v15;
    v27 = v2;
    v28 = v3;
    v29 = v24;
    os_log(_:dso:log:_:_:)();

    v3 = v28;
    v2 = v27;
    v15 = v26;
    v9 = v25;
    v16 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v21, v18);
    v22 = v60;
  }

  swift_getKeyPath();
  v60 = v22;
  sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v22 + 17);

  if (v30 == 1 && (type metadata accessor for CalculatorHistoryView(0), sub_10003AE84(&qword_100157F98, qword_100112550), v31 = v56, State.wrappedValue.getter(), v32 = EditMode.isEditing.getter(), (*(v57 + 8))(v31, v16), (v32 & 1) != 0))
  {
    v57 = v3;
    v33 = *(v2 + 40);
    v60 = *(v2 + 32);
    v61 = v33;
    sub_10003AE84(&qword_100158090, &qword_100112650);
    State.wrappedValue.getter();
    v34 = sub_10004C418();

    swift_getKeyPath();
    v60 = v34;
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v35 = *(v34 + 24);

    v36 = *(v35 + 16);

    if (v36)
    {
      v37 = v50;
      sub_1000B2270(v50);
      sub_10000D5B8(v37, v15, &qword_1001582E8, &qword_1001128D0);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    (*(v51 + 56))(v15, v38, 1, v9);
    v40 = v53;
    sub_1000B27C4(v53);
    v41 = v52;
    sub_100008E68(v15, v52, &qword_1001583A0, &qword_100112928);
    v42 = v15;
    v43 = v54;
    sub_100008E68(v40, v54, &qword_100158330, &qword_1001128F0);
    v44 = v55;
    sub_100008E68(v41, v55, &qword_1001583A0, &qword_100112928);
    v45 = sub_10003AE84(&qword_1001583A8, &unk_100112980);
    v46 = v44 + *(v45 + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_100008E68(v43, v44 + *(v45 + 64), &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v40, &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v42, &qword_1001583A0, &qword_100112928);
    sub_1000035CC(v43, &qword_100158330, &qword_1001128F0);
    sub_1000035CC(v41, &qword_1001583A0, &qword_100112928);
    sub_10000D5B8(v44, v59, &qword_100158398, &qword_100112920);
    v39 = 0;
    v3 = v57;
  }

  else
  {
    v39 = 1;
  }

  return (*(v3 + 56))(v59, v39, 1, v58);
}

uint64_t sub_1000B36C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = sub_10003AE84(&qword_100158290, &qword_100112898);
  __chkstk_darwin(v29);
  v27 = &v24 - v2;
  v30 = sub_10003AE84(&qword_100158298, &qword_1001128A0);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v24 - v3;
  v26 = sub_10003AE84(&qword_1001582A0, &qword_1001128A8);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10003AE84(&qword_1001582A8, &qword_1001128B0);
  v25 = *(v9 - 8);
  v10 = v25;
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v34 = v1;
  sub_10003AE84(&qword_1001582B0, &qword_1001128B8);
  sub_1000B70A4();
  v24 = v12;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarLeading.getter();
  v33 = v1;
  sub_10003AE84(&qword_100158360, &qword_100112908);
  sub_1000B76B8();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.bottomBar.getter();
  v32 = v1;
  sub_10003AE84(&qword_100158380, &qword_100112918);
  sub_1000B786C();
  ToolbarItemGroup.init(placement:content:)();
  v13 = *(v29 + 48);
  v14 = *(v29 + 64);
  v15 = *(v10 + 16);
  v16 = v27;
  v17 = v9;
  v15(v27, v12, v9);
  v18 = v7;
  v19 = v7;
  v20 = v26;
  (*(v5 + 16))(&v16[v13], v18, v26);
  v21 = v28;
  v22 = v30;
  (*(v28 + 16))(&v16[v14], v4, v30);
  TupleToolbarContent.init(_:)();
  (*(v21 + 8))(v4, v22);
  (*(v5 + 8))(v19, v20);
  return (*(v25 + 8))(v24, v17);
}

uint64_t sub_1000B3B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  LODWORD(v34) = a1;
  v36 = a3;
  v5 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v5 - 8);
  v35 = &v30 - v6;
  v7 = sub_10003AE84(&qword_100158230, &qword_100112830);
  __chkstk_darwin(v7 - 8);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  sub_1000B3F60(v4, &v49);
  v11 = *(&v49 + 1);
  v31 = v49;
  v12 = v50;
  v13 = BYTE2(v50);
  v33 = type metadata accessor for CalculatorHistoryView(0);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v32 = a2;
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v49) = v13;
  *&v44[5] = v46;
  *&v44[21] = v47;
  *&v44[37] = v48;
  LOBYTE(a2) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(v40 + 3) = *v44;
  *(&v40[1] + 3) = *&v44[16];
  v45 = 0;
  *&v39 = v31;
  *(&v39 + 1) = v11;
  LOWORD(v40[0]) = v12;
  BYTE2(v40[0]) = v13;
  *(&v40[2] + 3) = *&v44[32];
  *&v40[3] = *&v44[45];
  BYTE8(v40[3]) = a2;
  *&v41 = v14;
  *(&v41 + 1) = v15;
  *&v42 = v16;
  *(&v42 + 1) = v17;
  v43 = 0;
  sub_10003AE84(&qword_100158238, &qword_100112838);
  sub_1000B6D5C();
  v18 = v37;
  View.accessibilityHidden(_:)();
  v53 = v40[3];
  v54 = v41;
  v55 = v42;
  v56 = v43;
  v49 = v39;
  v50 = v40[0];
  v51 = v40[1];
  v52 = v40[2];
  sub_1000035CC(&v49, &qword_100158238, &qword_100112838);
  sub_1000B41BC(&v39);
  v19 = v39;
  v20 = *(&v40[0] + 1);
  v34 = *&v40[0];
  LOBYTE(v11) = v40[1];
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v21 = type metadata accessor for Font.Design();
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v23 = static Font.system(size:weight:design:)();
  sub_1000035CC(v22, &qword_1001567E0, &qword_10010F970);
  KeyPath = swift_getKeyPath();
  v25 = v38;
  sub_100008E68(v18, v38, &qword_100158230, &qword_100112830);
  v26 = v25;
  v27 = v36;
  sub_100008E68(v26, v36, &qword_100158230, &qword_100112830);
  v28 = v27 + *(sub_10003AE84(&qword_100158288, &qword_100112890) + 48);
  *v28 = v19;
  LOBYTE(v27) = v34;
  *(v28 + 16) = v34;
  *(v28 + 24) = v20;
  *(v28 + 32) = v11;
  *(v28 + 40) = KeyPath;
  *(v28 + 48) = v23;
  sub_1000B7000(v19, *(&v19 + 1), v27, v20);

  sub_1000035CC(v37, &qword_100158230, &qword_100112830);
  sub_1000B703C(v19, *(&v19 + 1), v27, v20);

  return sub_1000035CC(v38, &qword_100158230, &qword_100112830);
}

double sub_1000B3F60@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1001543F0 != -1)
    {
      swift_once();
    }

    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v8 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v14 = v8;
    v15 = 0;
    v16 = 1;
    v17 = 0;
  }

  else
  {
    if (qword_1001543E8 != -1)
    {
      swift_once();
    }

    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v14 = v9;
    v15 = 0;
    v16 = 1;
    v17 = 1;
  }

  sub_10003AE84(&qword_100158280, &unk_100113690);
  sub_1000B6F7C();
  _ConditionalContent<>.init(storage:)();
  result = *&v18;
  v11 = v19;
  v12 = v20;
  *a2 = v18;
  *(a2 + 16) = v11;
  *(a2 + 18) = v12;
  return result;
}

double sub_1000B41BC@<D0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000B42D4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001581C0, &qword_100112788);
  __chkstk_darwin(v2);
  v4 = &v8[-v3];
  sub_1000B4458(&v8[-v3]);
  v9 = a1;
  sub_10003AE84(&qword_1001581C8, &qword_100112790);
  sub_1000B6A0C();
  v5 = sub_10003AECC(&qword_100158218, &qword_1001127B8);
  v6 = sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v10 = v5;
  v11 = v6;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1000035CC(v4, &qword_1001581C0, &qword_100112788);
}

uint64_t sub_1000B4458@<X0>(void *a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for KeyEquivalent();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v64 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CalculatorHistoryView(0);
  v59 = *(v55 - 8);
  __chkstk_darwin(v55);
  v65 = v4;
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for EditMode();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorHistoryListView(0);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10003AE84(&qword_1001581F0, &qword_1001127A8);
  __chkstk_darwin(v74);
  v54 = &v53 - v9;
  v62 = sub_10003AE84(&qword_1001581E8, &qword_1001127A0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v53 - v10;
  v72 = sub_10003AE84(&qword_1001581E0, &qword_100112798);
  __chkstk_darwin(v72);
  v63 = &v53 - v11;
  v69 = sub_10003AE84(&qword_1001583C8, &qword_100112A60);
  __chkstk_darwin(v69);
  v70 = &v53 - v12;
  v71 = sub_10003AE84(&qword_1001583D0, &qword_100112A68);
  v13 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = &v53 - v14;
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v75 = v1;
  v76 = v17;
  v18 = v16;
  v77 = v16;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v19 = sub_10004C418();

  v20 = *(v19 + 16);

  swift_getKeyPath();
  v76 = v20;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v21 = *(v20 + 48);

  v22 = *(v21 + 16);

  if (v22)
  {
    type metadata accessor for CalculatorViewModel(0);
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    *v8 = Environment.init<A>(_:)();
    v8[8] = v23 & 1;
    type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
    sub_1000116C0(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &unk_10010E2D4);
    *(v8 + 2) = Environment.init<A>(_:)();
    v8[24] = v24 & 1;
    type metadata accessor for CalculatorHistoryViewModel(0);
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    *(v8 + 4) = Environment.init<A>(_:)();
    v8[40] = v25 & 1;
    type metadata accessor for CalculatorToolbarViewModel(0);
    sub_1000116C0(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
    *(v8 + 6) = Environment.init<A>(_:)();
    v8[56] = v26 & 1;
    v27 = *(v6 + 32);
    *&v8[v27] = swift_getKeyPath();
    sub_10003AE84(&qword_1001566B0, &qword_100112A70);
    swift_storeEnumTagMultiPayload();
    v76 = 0x4031000000000000;
    sub_1000103CC();
    ScaledMetric.init(wrappedValue:)();
    v76 = 0x4032000000000000;
    ScaledMetric.init(wrappedValue:)();
    v76 = 0x4037000000000000;
    ScaledMetric.init(wrappedValue:)();
    v76 = v17;
    v77 = v18;
    State.wrappedValue.getter();
    sub_10004C418();

    sub_1000116C0(&qword_100158200, type metadata accessor for CalculatorHistoryListView, &unk_10010F7C8);
    v28 = v54;
    View.environment<A>(_:)();

    sub_1000B799C(v8);
    KeyPath = swift_getKeyPath();
    v30 = (v28 + *(v74 + 36));
    v31 = *(sub_10003AE84(&qword_100158210, &qword_1001127B0) + 28);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    v32 = v75;
    State.projectedValue.getter();
    v33 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    (*(*(v33 - 8) + 56))(v30 + v31, 0, 1, v33);
    *v30 = KeyPath;
    v34 = v56;
    State.wrappedValue.getter();
    LOBYTE(KeyPath) = EditMode.isEditing.getter();
    (*(v57 + 8))(v34, v58);
    LOBYTE(v76) = KeyPath & 1;
    v35 = v66;
    sub_1000B5984(v32, v66);
    v36 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v37 = swift_allocObject();
    sub_1000B59E8(v35, v37 + v36);
    v38 = sub_1000B6BF4();
    v39 = v60;
    v40 = v74;
    View.onChange<A>(of:initial:_:)();

    sub_1000035CC(v28, &qword_1001581F0, &qword_1001127A8);
    v41 = v64;
    static KeyEquivalent.delete.getter();
    sub_1000B5984(v75, v35);
    v42 = swift_allocObject();
    sub_1000B59E8(v35, v42 + v36);
    v76 = v40;
    v77 = &type metadata for Bool;
    v78 = v38;
    v79 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v43 = v63;
    v44 = v62;
    View.onKeyPress(_:action:)();

    (*(v67 + 8))(v41, v68);
    (*(v61 + 8))(v39, v44);
    sub_1000B5984(v75, v35);
    v45 = swift_allocObject();
    sub_1000B59E8(v35, v45 + v36);
    v46 = (v43 + *(v72 + 36));
    *v46 = 0;
    v46[1] = 0;
    v46[2] = sub_1000B7B14;
    v46[3] = v45;
    sub_100008E68(v43, v70, &qword_1001581E0, &qword_100112798);
    swift_storeEnumTagMultiPayload();
    v47 = sub_10003AECC(&qword_100158150, &qword_100112748);
    v48 = sub_1000B66C4();
    v76 = v47;
    v77 = v48;
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000035CC(v43, &qword_1001581E0, &qword_100112798);
  }

  else
  {
    sub_1000B0608(0, v15);
    v50 = v71;
    (*(v13 + 16))(v70, v15, v71);
    swift_storeEnumTagMultiPayload();
    v51 = sub_10003AECC(&qword_100158150, &qword_100112748);
    v52 = sub_1000B66C4();
    v76 = v51;
    v77 = v52;
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v50);
  }
}

uint64_t sub_1000B50BC()
{
  v0 = sub_10003AE84(&qword_100158218, &qword_1001127B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000B36C8(&v5 - v2);
  sub_100004880(&qword_100158220, &qword_100158218, &qword_1001127B8, &protocol conformance descriptor for TupleToolbarContent<A>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000B51E0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156660, &qword_10010F7C0);
  __chkstk_darwin(v2 - 8);
  sub_100008E68(a1, &v5 - v3, &qword_100156660, &qword_10010F7C0);
  return EnvironmentValues.editMode.setter();
}

double sub_1000B5288(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v10 = v15;
    }

    swift_getKeyPath();
    v15 = v10;
    sub_1000116C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v10 + 54) != 11)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v14 - 2) = v10;
      *(&v14 - 8) = 11;
      v15 = v10;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000B54EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalculatorHistoryView(0);
  sub_10003AE84(&qword_100157F98, qword_100112550);
  State.wrappedValue.getter();
  v6 = EditMode.isEditing.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1000B564C();
    v7 = &enum case for KeyPress.Result.handled(_:);
  }

  else
  {
    v7 = &enum case for KeyPress.Result.ignored(_:);
  }

  v8 = *v7;
  v9 = type metadata accessor for KeyPress.Result();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_1000B564C()
{
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  sub_10004E228();

  type metadata accessor for CalculatorHistoryView(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5724(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = *(a1 + 40);
  v15[0] = *(a1 + 32);
  v15[1] = v9;
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  v10 = sub_10004C418();

  v11 = *(v10 + 16);

  swift_getKeyPath();
  v15[0] = v11;
  sub_1000116C0(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v12 = *(v11 + 48);

  v13 = *(v12 + 16);

  if (!v13)
  {
    (*(v3 + 104))(v8, enum case for EditMode.inactive(_:), v2);
    type metadata accessor for CalculatorHistoryView(0);
    (*(v3 + 16))(v5, v8, v2);
    sub_10003AE84(&qword_100157F98, qword_100112550);
    State.wrappedValue.setter();
    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_1000B5984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B59E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5A64(uint64_t a1)
{
  type metadata accessor for CalculatorHistoryView(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5AD8@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x28206574656C6544;
  v4._object = 0xE800000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  swift_getKeyPath();
  sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

double sub_1000B5CE4(uint64_t a1)
{
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  sub_10004E65C();

  return result;
}

uint64_t sub_1000B5D54(uint64_t a1)
{
  type metadata accessor for CalculatorHistoryView(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B5DC8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1000B5E48(uint64_t a1)
{
  sub_10003AE84(&qword_100158090, &qword_100112650);
  State.wrappedValue.getter();
  sub_10004C418();

  sub_100044EA4();
  sub_10004EAC8();

  return result;
}

double sub_1000B5EC0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  sub_10000362C();
  sub_100091C5C(0);

  return result;
}

double sub_1000B6050(uint64_t a1, uint64_t a2, char a3)
{

  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.wrappedValue.getter();
  if (v4 == 1)
  {
    Binding.wrappedValue.setter();
  }

  return result;
}

double sub_1000B6104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  v9 = sub_10003AE84(&qword_1001583E0, &qword_100112B08);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_10003AE84(&qword_1001583E8, &unk_100112B10) + 36));
  *v10 = sub_1000B7DEC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;

  return result;
}

uint64_t sub_1000B61F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B6268()
{
  result = qword_1001580F0;
  if (!qword_1001580F0)
  {
    sub_10003AECC(&qword_1001580C0, &qword_100112680);
    sub_1000B62F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001580F0);
  }

  return result;
}

unint64_t sub_1000B62F4()
{
  result = qword_1001580F8;
  if (!qword_1001580F8)
  {
    sub_10003AECC(&qword_1001580B8, &qword_100112678);
    sub_1000B6380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001580F8);
  }

  return result;
}

unint64_t sub_1000B6380()
{
  result = qword_100158100;
  if (!qword_100158100)
  {
    sub_10003AECC(&qword_1001580B0, &qword_100112670);
    sub_100004880(&qword_100158108, &qword_100158110, &qword_100112738, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100004880(&qword_100158118, &qword_1001580E8, &qword_100112700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158100);
  }

  return result;
}

unint64_t sub_1000B6464()
{
  result = qword_100158120;
  if (!qword_100158120)
  {
    sub_10003AECC(&qword_100158098, &qword_100112658);
    sub_100004880(&qword_100158128, &qword_100158130, &qword_100112740, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1000B651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158120);
  }

  return result;
}

unint64_t sub_1000B651C()
{
  result = qword_100158138;
  if (!qword_100158138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158138);
  }

  return result;
}

unint64_t sub_1000B6570()
{
  result = qword_100158140;
  if (!qword_100158140)
  {
    sub_10003AECC(&qword_1001580D8, &qword_100112698);
    sub_1000B65FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158140);
  }

  return result;
}

unint64_t sub_1000B65FC()
{
  result = qword_100158148;
  if (!qword_100158148)
  {
    sub_10003AECC(&qword_1001580E0, &qword_1001126A0);
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B66C4();
    swift_getOpaqueTypeConformance2();
    sub_1000B651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158148);
  }

  return result;
}

unint64_t sub_1000B66C4()
{
  result = qword_100158158;
  if (!qword_100158158)
  {
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B6750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158158);
  }

  return result;
}

unint64_t sub_1000B6750()
{
  result = qword_100158160;
  if (!qword_100158160)
  {
    sub_10003AECC(&qword_100158168, &qword_100112750);
    sub_1000B67DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158160);
  }

  return result;
}

unint64_t sub_1000B67DC()
{
  result = qword_100158170;
  if (!qword_100158170)
  {
    sub_10003AECC(&qword_100158178, &qword_100112758);
    sub_1000B6894();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158170);
  }

  return result;
}

unint64_t sub_1000B6894()
{
  result = qword_100158180;
  if (!qword_100158180)
  {
    sub_10003AECC(&qword_100158188, &qword_100112760);
    sub_100004880(&qword_100158190, &qword_100158198, &unk_100112768, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158180);
  }

  return result;
}

unint64_t sub_1000B6978()
{
  result = qword_1001581B0;
  if (!qword_1001581B0)
  {
    sub_10003AECC(&qword_1001580A8, &qword_100112668);
    sub_1000B6268();
    sub_1000B6464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581B0);
  }

  return result;
}

unint64_t sub_1000B6A0C()
{
  result = qword_1001581D0;
  if (!qword_1001581D0)
  {
    sub_10003AECC(&qword_1001581C0, &qword_100112788);
    sub_10003AECC(&qword_100158150, &qword_100112748);
    sub_1000B66C4();
    swift_getOpaqueTypeConformance2();
    sub_1000B6AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581D0);
  }

  return result;
}

unint64_t sub_1000B6AD4()
{
  result = qword_1001581D8;
  if (!qword_1001581D8)
  {
    sub_10003AECC(&qword_1001581E0, &qword_100112798);
    sub_10003AECC(&qword_1001581E8, &qword_1001127A0);
    sub_10003AECC(&qword_1001581F0, &qword_1001127A8);
    sub_1000B6BF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581D8);
  }

  return result;
}

unint64_t sub_1000B6BF4()
{
  result = qword_1001581F8;
  if (!qword_1001581F8)
  {
    sub_10003AECC(&qword_1001581F0, &qword_1001127A8);
    type metadata accessor for CalculatorHistoryListView(255);
    type metadata accessor for CalculatorHistoryViewModel(255);
    sub_1000116C0(&qword_100158200, type metadata accessor for CalculatorHistoryListView, &unk_10010F7C8);
    sub_1000116C0(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158208, &qword_100158210, &qword_1001127B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001581F8);
  }

  return result;
}

unint64_t sub_1000B6D5C()
{
  result = qword_100158240;
  if (!qword_100158240)
  {
    sub_10003AECC(&qword_100158238, &qword_100112838);
    sub_1000B6DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158240);
  }

  return result;
}

unint64_t sub_1000B6DE8()
{
  result = qword_100158248;
  if (!qword_100158248)
  {
    sub_10003AECC(&qword_100158250, &qword_100112840);
    sub_1000B6E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158248);
  }

  return result;
}

unint64_t sub_1000B6E74()
{
  result = qword_100158258;
  if (!qword_100158258)
  {
    sub_10003AECC(&qword_100158260, &qword_100112848);
    sub_1000B6EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158258);
  }

  return result;
}

unint64_t sub_1000B6EF8()
{
  result = qword_100158268;
  if (!qword_100158268)
  {
    sub_10003AECC(&qword_100158270, &unk_100112850);
    sub_1000B6F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158268);
  }

  return result;
}

unint64_t sub_1000B6F7C()
{
  result = qword_100158278;
  if (!qword_100158278)
  {
    sub_10003AECC(&qword_100158280, &unk_100113690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158278);
  }

  return result;
}

double sub_1000B7000(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10006564C(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1000B703C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10000C6AC(a1, a2, a3 & 1);
}

unint64_t sub_1000B70A4()
{
  result = qword_1001582B8;
  if (!qword_1001582B8)
  {
    sub_10003AECC(&qword_1001582B0, &qword_1001128B8);
    sub_1000B7130();
    sub_1000B76B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582B8);
  }

  return result;
}

unint64_t sub_1000B7130()
{
  result = qword_1001582C0;
  if (!qword_1001582C0)
  {
    sub_10003AECC(&qword_1001582C8, &qword_1001128C0);
    sub_1000B71BC();
    sub_1000B75D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582C0);
  }

  return result;
}

unint64_t sub_1000B71BC()
{
  result = qword_1001582D0;
  if (!qword_1001582D0)
  {
    sub_10003AECC(&qword_1001582D8, &qword_1001128C8);
    sub_1000B72A0(&qword_1001582E0, &qword_1001582E8, &qword_1001128D0, sub_1000B7354);
    sub_1000B72A0(&qword_100158328, &qword_100158330, &qword_1001128F0, sub_1000B740C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582D0);
  }

  return result;
}

uint64_t sub_1000B72A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7354()
{
  result = qword_1001582F0;
  if (!qword_1001582F0)
  {
    sub_10003AECC(&qword_1001582F8, &qword_1001128D8);
    sub_1000B740C();
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001582F0);
  }

  return result;
}

unint64_t sub_1000B740C()
{
  result = qword_100158300;
  if (!qword_100158300)
  {
    sub_10003AECC(&qword_100158308, &qword_1001128E0);
    sub_1000B7498();
    sub_1000B757C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158300);
  }

  return result;
}

unint64_t sub_1000B7498()
{
  result = qword_100158310;
  if (!qword_100158310)
  {
    sub_10003AECC(&qword_100158318, &qword_1001128E8);
    sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158310);
  }

  return result;
}

unint64_t sub_1000B757C()
{
  result = qword_100158320;
  if (!qword_100158320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158320);
  }

  return result;
}

unint64_t sub_1000B75D0()
{
  result = qword_100158338;
  if (!qword_100158338)
  {
    sub_10003AECC(&qword_100158340, &qword_1001128F8);
    sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900, &protocol conformance descriptor for Button<A>);
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158338);
  }

  return result;
}

unint64_t sub_1000B76B8()
{
  result = qword_100158358;
  if (!qword_100158358)
  {
    sub_10003AECC(&qword_100158360, &qword_100112908);
    sub_1000B773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158358);
  }

  return result;
}

unint64_t sub_1000B773C()
{
  result = qword_100158368;
  if (!qword_100158368)
  {
    sub_10003AECC(&qword_100158370, &qword_100112910);
    sub_1000116C0(&qword_100158378, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
    sub_100004880(&qword_100158208, &qword_100158210, &qword_1001127B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158368);
  }

  return result;
}

unint64_t sub_1000B786C()
{
  result = qword_100158388;
  if (!qword_100158388)
  {
    sub_10003AECC(&qword_100158380, &qword_100112918);
    sub_100004880(&qword_100158390, &qword_100158398, &qword_100112920, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158388);
  }

  return result;
}

uint64_t sub_1000B799C(uint64_t a1)
{
  v2 = type metadata accessor for CalculatorHistoryListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CalculatorHistoryView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1000B7AA4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CalculatorHistoryView(0);

  return sub_1000B54EC(a1);
}

uint64_t sub_1000B7B2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculatorHistoryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

__n128 sub_1000B7BA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B7BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000B7BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B7C4C()
{
  result = qword_1001583D8;
  if (!qword_1001583D8)
  {
    sub_10003AECC(&qword_100158078, &qword_1001125F0);
    sub_10003AECC(&qword_100158068, &qword_1001125E0);
    sub_10003AECC(&qword_100158060, &qword_1001125D8);
    sub_100004880(&qword_100158088, &qword_100158060, &qword_1001125D8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000116C0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001583D8);
  }

  return result;
}

unint64_t sub_1000B7DF8()
{
  result = qword_1001583F0;
  if (!qword_1001583F0)
  {
    sub_10003AECC(&qword_1001583E8, &unk_100112B10);
    sub_100004880(&qword_1001583F8, &qword_1001583E0, &qword_100112B08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001583F0);
  }

  return result;
}

__n128 sub_1000B7EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000B7ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000B7F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1000B7F84(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Solarium.isEnabled.getter() & 1) != 0 || (a1 & 1) == 0)
  {
    v24 = v2[56];
    v9 = *(v2 + 6);
    v23 = v9;
    v10 = v24;

    if ((v10 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v23, &qword_100154810, &qword_10010DF90);
      (*(v5 + 8))(v7, v4);
      v9 = v22;
    }

    swift_getKeyPath();
    v22 = v9;
    sub_1000B8F8C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v12 = *(v9 + 72);

    v13 = 0x1000000000000;
    if (!v2[6])
    {
      v13 = 0;
    }

    v14 = 0x10000000000;
    if (!v2[5])
    {
      v14 = 0;
    }

    v15 = &_mh_execute_header;
    if (!v2[4])
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if (!v2[3])
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if (!v2[2])
    {
      v17 = 0;
    }

    v18 = 256;
    if (!v2[1])
    {
      v18 = 0;
    }

    v19 = sub_100025D2C(v18 | *v2 | v17 | v16 | v15 | v14 | v13);
    v8 = sub_10002AD34(v19, v12);
  }

  else
  {
    return 1;
  }

  return v8;
}

unint64_t sub_1000B822C()
{
  result = qword_100158498;
  if (!qword_100158498)
  {
    sub_10003AECC(&qword_100158420, &qword_100112D18);
    sub_1000B82E4();
    sub_100004880(&qword_1001584F8, &qword_100158478, &unk_100112E30, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158498);
  }

  return result;
}

unint64_t sub_1000B82E4()
{
  result = qword_1001584A0;
  if (!qword_1001584A0)
  {
    sub_10003AECC(&qword_100158418, &qword_100112D10);
    sub_1000B839C();
    sub_100004880(&qword_1001584F0, &qword_100158468, &unk_100112E20, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584A0);
  }

  return result;
}

unint64_t sub_1000B839C()
{
  result = qword_1001584A8;
  if (!qword_1001584A8)
  {
    sub_10003AECC(&qword_100158410, &qword_100112D08);
    sub_100026BA8();
    sub_100004880(&qword_1001584E8, &qword_100158460, &qword_100115570, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584A8);
  }

  return result;
}

uint64_t sub_1000B8454(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0x1000000FFLL;
  if ((a1 & 0x1000000000000) != 0 || v2 == 0x100000003)
  {
    if (qword_100154518 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.swappableButtons))
    {
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_40;
      }

      if (qword_100154510 != -1)
      {
        swift_once();
      }

      if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
      {
        if (v1 <= 0x24u)
        {
          if (v1 == 9)
          {
            goto LABEL_59;
          }

          if (v1 != 31)
          {
            goto LABEL_44;
          }

LABEL_62:
          if (qword_100154658 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C80;
          return *v3;
        }

        if (v1 == 37 || v1 == 56)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_43;
        }

LABEL_40:
        if (qword_100154508 != -1)
        {
          swift_once();
        }

        if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
        {
          LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
        }

        else
        {
LABEL_43:
          if ((v1 & 0x10000FF) == 0x1000001 || v2 == 0x100000003)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_44:
      v4 = v1;
      if (v1 > 0x36u)
      {
        goto LABEL_48;
      }

      if (((1 << v1) & 0x400000003FF408) == 0)
      {
        if (((1 << v1) & 0x3E0) == 0)
        {
          if (((1 << v1) & 0x800000016) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_28;
        }

LABEL_59:
        if (qword_100154628 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C50;
        return *v3;
      }

LABEL_49:
      if (qword_100154640 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C68;
      return *v3;
    }
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_25;
  }

  if (qword_100154510 != -1)
  {
    swift_once();
  }

  if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
  {
    if (v1 > 0x24u)
    {
      if (v1 == 37 || v1 == 56)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v1 == 9)
      {
        goto LABEL_59;
      }

      if (v1 == 31)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (qword_100154508 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
    {
      LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
    }

    else
    {
LABEL_27:
      if ((v1 & 0x10000FF) == 0x1000001)
      {
        goto LABEL_28;
      }

      if (v2 == 0x100000003)
      {
        goto LABEL_62;
      }
    }
  }

  v4 = v1;
  if (v1 > 0x36u)
  {
    goto LABEL_48;
  }

  if (((1 << v1) & 0x400000003FFC08) != 0)
  {
    goto LABEL_49;
  }

  if (((1 << v1) & 0x3E0) != 0)
  {
    goto LABEL_59;
  }

  if (((1 << v1) & 0x20000000000016) == 0)
  {
LABEL_48:
    if ((v4 - 66) < 8)
    {
      goto LABEL_49;
    }

    if (v4 == 93)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

LABEL_28:
  if (qword_100154610 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C38;
  return *v3;
}