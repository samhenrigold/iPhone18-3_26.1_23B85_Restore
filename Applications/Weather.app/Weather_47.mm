uint64_t sub_100503B50@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  type metadata accessor for AttributedString();
  sub_1000037C4();
  v46 = v5;
  v47 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_1000038CC();
  v10 = type metadata accessor for HomeAndWorkRefinementInput(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = type metadata accessor for Location();
  sub_1000037C4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  sub_100503FC8(a1, v14);
  v29 = sub_10022C350(&qword_100CA6650, &unk_100A3FAB0);
  if (sub_100024D10(v14, 1, v29) == 1)
  {
    sub_10050402C(v14);
    v30 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
    v31 = a2;
    v32 = 1;
  }

  else
  {
    v33 = *(v29 + 48);
    (*(v24 + 32))(v28, v14, v22);
    v44 = v15;
    (*(v17 + 32))(v21, v14 + v33, v15);
    if ([objc_opt_self() authorizationStatusForEntityType:0] == 3 && (v34 = objc_msgSend(objc_allocWithZone(CNContactStore), "init"), v35 = objc_msgSend(v34, "w_meContact"), v35, v34, v35))
    {
      v36 = v8;
      sub_100503288();
      v45 = 1;
    }

    else
    {
      v36 = v8;
      sub_100503140();
      v45 = 0;
    }

    v37 = [objc_opt_self() mainBundle];
    v48._object = 0x8000000100AD2790;
    v38._countAndFlagsBits = 0x736C6961746544;
    v38._object = 0xE700000000000000;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0xD00000000000002FLL;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v48);

    v41 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
    (*(v24 + 16))(a2 + v41[5], v28, v22);
    (*(v17 + 16))(a2 + v41[6], v21, v44);
    sub_1005034B0(v36, a2 + v41[7]);
    (*(v46 + 8))(v36, v47);
    (*(v17 + 8))(v21, v44);
    (*(v24 + 8))(v28, v22);
    *a2 = v40;
    *(&a2->_countAndFlagsBits + v41[8]) = v45;
    v31 = a2;
    v32 = 0;
    v30 = v41;
  }

  sub_10001B350(v31, v32, 1, v30);
  v42 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  return sub_10001B350(a2, 0, 1, v42);
}

uint64_t sub_100503FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050402C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAndWorkRefinementInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100504088()
{
  result = qword_100CC2700;
  if (!qword_100CC2700)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.UIKitAttributes.ForegroundColorAttribute, &type metadata for AttributeScopes.UIKitAttributes.ForegroundColorAttribute, v0, v1);
    atomic_store(result, &qword_100CC2700);
  }

  return result;
}

uint64_t sub_1005040DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100504124()
{
  result = qword_100CC2718;
  if (!qword_100CC2718)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.FoundationAttributes.LinkAttribute, &type metadata for AttributeScopes.FoundationAttributes.LinkAttribute, v0, v1);
    atomic_store(result, &qword_100CC2718);
  }

  return result;
}

unint64_t sub_100504178()
{
  result = qword_100CB8C08;
  if (!qword_100CB8C08)
  {
    v3 = sub_10022E824(&qword_100CB8BD0, &qword_100A4CFA0);
    result = swift_getWitnessTable(&protocol conformance descriptor for Range<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB8C08);
  }

  return result;
}

unint64_t sub_1005041DC()
{
  result = qword_100CC2720;
  if (!qword_100CC2720)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute, v0, v1);
    atomic_store(result, &qword_100CC2720);
  }

  return result;
}

uint64_t sub_100504230@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100035B30(v2 + 16, a1 + 24);

  sub_10022C350(&qword_100CA4A10, &qword_100A445E0);
  sub_1005042D4();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  return result;
}

unint64_t sub_1005042D4()
{
  result = qword_100CA4A18;
  if (!qword_100CA4A18)
  {
    v3 = sub_10022E824(&qword_100CA4A10, &qword_100A445E0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4A18);
  }

  return result;
}

void sub_100504360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  sub_1000302D8(v20 + *(v35 + 20), v34, &qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v36 + 32))(v24, v34);
  }

  else
  {
    v37 = static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v37, &_mh_execute_header, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  sub_10000536C();
}

uint64_t sub_100504528()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 24);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v10, &_mh_execute_header, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v13;
  }

  return v9 & 1;
}

void sub_100504664()
{
  sub_10000C778();
  v1 = v0;
  v60 = v2;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v58 = v4;
  v59 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v57 = v6 - v5;
  v49 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC2890, &qword_100A5B3B0);
  sub_1000037C4();
  v50 = v16;
  v51 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10022C350(&qword_100CC2898, &qword_100A5B3B8);
  sub_1000037C4();
  v52 = v21;
  v53 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  sub_10022C350(&qword_100CC28A0, &qword_100A5B3C0);
  sub_1000037C4();
  v54 = v26;
  v55 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  v47 = &v47 - v29;
  v56 = sub_10022C350(&qword_100CC28A8, &qword_100A5B3C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v30);
  v48 = &v47 - v31;
  sub_10050841C(v0, v15, type metadata accessor for DailyComponentForecastRowViewLargeText);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = swift_allocObject();
  sub_100508350(v15, v33 + v32);
  v61 = v0;
  sub_10022C350(&qword_100CC28B0, &qword_100A5B3D0);
  sub_100006F64(&qword_100CC28B8, &qword_100CC28B0, &qword_100A5B3D0, &protocol conformance descriptor for ViewThatFits<A>);
  Button.init(action:label:)();
  LOBYTE(v15) = *(v0 + *(v12 + 48));
  v34 = v49;
  sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.projectedValue.getter();
  sub_10050841C(v0, &v10[*(v34 + 24)], type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  *v10 = v15;
  v35 = sub_100006F64(&qword_100CC28C0, &qword_100CC2890, &qword_100A5B3B0, &protocol conformance descriptor for Button<A>);
  v36 = sub_10018E8BC(&qword_100CBB898, type metadata accessor for DailyForecastRowViewButtonStyle, byte_100A3AC78);
  v37 = v50;
  View.buttonStyle<A>(_:)();
  sub_10018EA58(v10);
  (*(v51 + 8))(v20, v37);
  v38 = v57;
  static AccessibilityChildBehavior.ignore.getter();
  v62 = v37;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v47;
  v41 = v52;
  View.accessibilityElement(children:)();
  (*(v58 + 8))(v38, v59);
  (*(v53 + 8))(v25, v41);
  v62 = v41;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v48;
  v43 = v54;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v55 + 8))(v40, v43);
  v44 = (v1 + *(type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0) + 76));
  v46 = *v44;
  v45 = v44[1];
  v62 = v46;
  v63 = v45;
  sub_10002D5A4();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000180EC(v42, &qword_100CC28A8, &qword_100A5B3C8);
  sub_10000536C();
}

uint64_t sub_100504C78(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  v6 = *(a1 + v5[8]);
  v7 = (a1 + v5[16]);
  v9 = *v7;
  v8 = v7[1];
  v22 = v9;
  v23 = v8;
  sub_10022C350(&qword_100CBB930, &qword_100A511D8);
  State.wrappedValue.getter();
  v10 = v21[2];
  v11 = v21[3];
  v12 = v21[4];
  v13 = v21[5];

  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = v12;
  v24.size.height = v13;
  v25 = CGRectInset(v24, -*(a1 + v5[9]), 0.0);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 16))(v4, a1, v18);
  sub_10001B350(v4, 0, 1, v18);
  v6(0, v4, x, y, width, height);
  return sub_1000180EC(v4, &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_100504E30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  *a2 = static Axis.Set.horizontal.getter();
  v4 = sub_10022C350(&qword_100CC28C8, &qword_100A5B3D8);
  return sub_100504EDC(a1, &a2[*(v4 + 44)]);
}

uint64_t sub_100504EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_10022C350(&qword_100CC28D0, &qword_100A5B3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  v10 = sub_10022C350(&qword_100CC28D8, &qword_100A5B3E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v42[-v11];
  v13 = sub_10022C350(&qword_100CC28E0, &qword_100A5B3F0);
  __chkstk_darwin(v13);
  v15 = &v42[-v14];
  v43 = sub_10022C350(&qword_100CC28E8, &qword_100A5B3F8);
  __chkstk_darwin(v43);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v42[-v19];
  __chkstk_darwin(v21);
  v23 = &v42[-v22];
  *v12 = static VerticalAlignment.lastTextBaseline.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v24 = &v12[*(sub_10022C350(&qword_100CC28F0, &unk_100A5B400) + 44)];
  v44 = a1;
  sub_10050541C(a1, v24);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v12, v15, &qword_100CC28D8, &qword_100A5B3E8);
  memcpy(&v15[*(v13 + 36)], __src, 0x70uLL);
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v26 = static Edge.Set.top.getter();
  *(inited + 32) = v26;
  v27 = static Edge.Set.bottom.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10011C0F0(v15, v20, &qword_100CC28E0, &qword_100A5B3F0);
  v37 = &v20[*(v43 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_10011C0F0(v20, v23, &qword_100CC28E8, &qword_100A5B3F8);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v38 = sub_10022C350(&qword_100CC28F8, &qword_100A5B410);
  sub_100506C24(v44, &v9[*(v38 + 44)]);
  sub_1000302D8(v23, v17, &qword_100CC28E8, &qword_100A5B3F8);
  sub_1000302D8(v9, v6, &qword_100CC28D0, &qword_100A5B3E0);
  v39 = v45;
  sub_1000302D8(v17, v45, &qword_100CC28E8, &qword_100A5B3F8);
  v40 = sub_10022C350(&qword_100CC2900, &qword_100A5B418);
  sub_1000302D8(v6, v39 + *(v40 + 48), &qword_100CC28D0, &qword_100A5B3E0);
  sub_1000180EC(v9, &qword_100CC28D0, &qword_100A5B3E0);
  sub_1000180EC(v23, &qword_100CC28E8, &qword_100A5B3F8);
  sub_1000180EC(v6, &qword_100CC28D0, &qword_100A5B3E0);
  return sub_1000180EC(v17, &qword_100CC28E8, &qword_100A5B3F8);
}

uint64_t sub_10050541C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_10022C350(&qword_100CC2908, &qword_100A5B420);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v31 - v7;
  v8 = sub_10022C350(&qword_100CC29A0, &qword_100A5B530);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CC29A8, &qword_100A5B538);
  __chkstk_darwin(v11 - 8);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_100505908();
  v16 = v42;
  v34 = v44;
  v39 = v45;
  v40 = v43;
  v37 = v47;
  v38 = v46;
  type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v51 + 6) = *(&v51[3] + 14);
  *(&v51[1] + 6) = *(&v51[4] + 14);
  *(&v51[2] + 6) = *(&v51[5] + 14);
  v17 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (*(a1 + *(v17 + 40) + 8) || *(a1 + *(v17 + 52)) == 1)
  {
    *v10 = static VerticalAlignment.lastTextBaseline.getter();
    *(v10 + 1) = 0x4024000000000000;
    v10[16] = 0;
    v18 = sub_10022C350(&qword_100CC29C0, &qword_100A5B550);
    sub_100505D2C(a1, &v10[*(v18 + 44)]);
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v19 = &v10[*(v8 + 36)];
    v20 = *(&v51[7] + 14);
    *v19 = *(&v51[6] + 14);
    *(v19 + 1) = v20;
    *(v19 + 2) = *(&v51[8] + 14);
    v21 = v10;
    v22 = v15;
    sub_10011C0F0(v21, v15, &qword_100CC29A0, &qword_100A5B530);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22 = v15;
  }

  sub_10001B350(v22, v23, 1, v8);
  v24 = v36;
  sub_1005067B4(1, v36, 1.0);
  v25 = v33;
  sub_1000302D8(v22, v33, &qword_100CC29A8, &qword_100A5B538);
  sub_1000302D8(v24, v5, &qword_100CC2908, &qword_100A5B420);
  v41[0] = v16;
  v41[1] = v40;
  v26 = v34;
  LOBYTE(v41[2]) = v34;
  v41[3] = v39;
  LOBYTE(v41[4]) = v38;
  BYTE1(v41[4]) = v37;
  *(&v41[4] + 2) = v51[0];
  *(&v41[6] + 2) = v51[1];
  *(&v41[8] + 2) = v51[2];
  v41[10] = *(&v51[2] + 14);
  v32 = v16;
  v27 = v35;
  memcpy(v35, v41, 0x58uLL);
  v27[11] = 0x4020000000000000;
  *(v27 + 96) = 0;
  v28 = sub_10022C350(&qword_100CC29B0, &qword_100A5B540);
  sub_1000302D8(v25, v27 + v28[16], &qword_100CC29A8, &qword_100A5B538);
  v29 = v27 + v28[20];
  *v29 = 0x4020000000000000;
  v29[8] = 0;
  sub_1000302D8(v5, v27 + v28[24], &qword_100CC2908, &qword_100A5B420);
  sub_1000302D8(v41, &v42, &qword_100CC29B8, &qword_100A5B548);
  sub_1000180EC(v24, &qword_100CC2908, &qword_100A5B420);
  sub_1000180EC(v22, &qword_100CC29A8, &qword_100A5B538);
  sub_1000180EC(v5, &qword_100CC2908, &qword_100A5B420);
  sub_1000180EC(v25, &qword_100CC29A8, &qword_100A5B538);
  v42 = v32;
  v43 = v40;
  v44 = v26;
  v45 = v39;
  v46 = v38;
  v47 = v37;
  v48 = v51[0];
  v49 = v51[1];
  *v50 = v51[2];
  *&v50[14] = *(&v51[2] + 14);
  return sub_1000180EC(&v42, &qword_100CC29B8, &qword_100A5B548);
}

void sub_100505908()
{
  sub_10000C778();
  v1 = v0;
  v56 = v2;
  v3 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v3 - 8);
  sub_100003848();
  v55 = v4;
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v49 = v9;
  v50 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = (v1 + *(type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0) + 20));
  v21 = v20[1];
  v57 = *v20;
  v58 = v21;
  sub_10002D5A4();

  v22 = Text.init<A>(_:)();
  v52 = v23;
  v53 = v22;
  v25 = v24;
  v54 = v26;
  v27 = *(v15 + 104);
  v27(v19, enum case for Font.TextStyle.title3(_:), v13);
  static Font.Weight.medium.getter();
  v51 = static Font.system(_:weight:)();
  v28 = *(v15 + 8);
  v28(v19, v13);
  v27(v19, enum case for Font.TextStyle.body(_:), v13);
  static Font.Weight.medium.getter();
  v29 = static Font.system(_:weight:)();
  v28(v19, v13);
  v30 = v1 + *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 28);
  v31 = *v30;
  if (*(v30 + 8) != 1)
  {

    v32 = static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v32, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v49 + 8))(v12, v50);
    LOBYTE(v31) = v57;
  }

  v34 = enum case for Font.Leading.tight(_:);
  v35 = type metadata accessor for Font.Leading();
  sub_1000037E8();
  (*(v36 + 104))(v7, v34, v35);
  sub_10001B350(v7, 0, 1, v35);
  v37 = v55;
  sub_1000302D8(v7, v55, &qword_100CACFF0, &unk_100A48000);
  v38 = v51;

  sub_1001C987C(v38, v29, v31 & 1, v37);
  v39 = v53;
  v40 = v7;
  v41 = v52;
  v42 = Text.font(_:)();
  v44 = v43;
  LODWORD(v50) = v45;
  v55 = v46;

  sub_10010CD64(v39, v41, v25 & 1);

  sub_1000180EC(v40, &qword_100CACFF0, &unk_100A48000);
  v47 = v56;
  *v56 = v42;
  v47[1] = v44;
  *(v47 + 16) = v50 & 1;
  v47[3] = v55;
  *(v47 + 16) = 257;
  sub_10000536C();
}

uint64_t sub_100505D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10022C350(&qword_100CBB910, &qword_100A5B450);
  __chkstk_darwin(v10);
  v12 = (&v37 - v11);
  v13 = sub_10022C350(&qword_100CC2930, &qword_100A5B458);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v43 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (*(a1 + *(v43 + 40) + 8))
  {
    v38 = v4;

    Image.init(systemName:)();
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v19 = type metadata accessor for Image.TemplateRenderingMode();
    sub_10001B350(v9, 0, 1, v19);
    v41 = Image.renderingMode(_:)();

    sub_1000180EC(v9, &qword_100CBB908, &unk_100A511B0);
    v40 = static Font.title3.getter();
    v39 = static Font.body.getter();
    v20 = a1 + *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 28);
    v21 = *v20;
    LODWORD(v20) = *(v20 + 8);
    v42 = a1;
    if (v20 != 1)
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v21, 0);
      (*(v38 + 8))(v6, v3);
      LOBYTE(v21) = v45;
    }

    v23 = (v12 + *(v10 + 36));
    v24 = type metadata accessor for FontWithSmallVariantModifier(0);
    v25 = *(v24 + 24);
    v26 = enum case for Font.Leading.tight(_:);
    v27 = type metadata accessor for Font.Leading();
    (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
    sub_10001B350(v23 + v25, 0, 1, v27);
    v28 = v39;
    *v23 = v40;
    v23[1] = v28;
    *(v23 + *(v24 + 28)) = v21 & 1;
    *v12 = v41;
    sub_10011C0F0(v12, v18, &qword_100CBB910, &qword_100A5B450);
    v29 = 0;
    a1 = v42;
  }

  else
  {
    v29 = 1;
  }

  sub_10001B350(v18, v29, 1, v10);
  if (*(a1 + *(v43 + 52)) == 1)
  {
    sub_100506230();
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v33 = v48;
    sub_10010CD54(v45, v46, v47);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  sub_1000302D8(v18, v15, &qword_100CC2930, &qword_100A5B458);
  v34 = v44;
  sub_1000302D8(v15, v44, &qword_100CC2930, &qword_100A5B458);
  v35 = (v34 + *(sub_10022C350(&qword_100CC29C8, &qword_100A5B558) + 48));
  sub_100148118(v30, v31, v32, v33);
  sub_10014A53C(v30, v31, v32, v33);
  *v35 = v30;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v33;
  sub_1000180EC(v18, &qword_100CC2930, &qword_100A5B458);
  sub_10014A53C(v30, v31, v32, v33);
  return sub_1000180EC(v15, &qword_100CC2930, &qword_100A5B458);
}

void sub_100506230()
{
  sub_10000C778();
  v85 = v1;
  type metadata accessor for ColorSchemeContrast();
  sub_1000037C4();
  v83 = v3;
  v84 = v2;
  __chkstk_darwin(v2);
  sub_100003848();
  v81 = v4;
  __chkstk_darwin(v5);
  v80 = &v72 - v6;
  v7 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v7 - 8);
  sub_100003848();
  v79 = v8;
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v73 = v13;
  v74 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v86 = Double.formattedPercent(roundToNearestPercent:)(1);
  sub_10002D5A4();
  v24 = Text.init<A>(_:)();
  v76 = v25;
  v77 = v24;
  v27 = v26;
  v78 = v28;
  v29 = *(v19 + 104);
  v29(v23, enum case for Font.TextStyle.caption(_:), v17);
  static Font.Weight.medium.getter();
  v75 = static Font.system(_:weight:)();
  v30 = *(v19 + 8);
  v30(v23, v17);
  v29(v23, enum case for Font.TextStyle.body(_:), v17);
  static Font.Weight.medium.getter();
  v31 = static Font.system(_:weight:)();
  v30(v23, v17);
  v32 = *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 28);
  v82 = v0;
  v33 = v0 + v32;
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    v35 = static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v35, &_mh_execute_header, v36, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v34, 0);
    (*(v73 + 8))(v16, v74);
    LOBYTE(v34) = v86._countAndFlagsBits;
  }

  v37 = enum case for Font.Leading.tight(_:);
  v38 = type metadata accessor for Font.Leading();
  sub_1000037E8();
  (*(v39 + 104))(v11, v37, v38);
  sub_10001B350(v11, 0, 1, v38);
  v40 = v79;
  sub_1000302D8(v11, v79, &qword_100CACFF0, &unk_100A48000);
  v41 = v75;

  sub_1001C987C(v41, v31, v34 & 1, v40);
  v42 = v77;
  v43 = v11;
  v44 = v76;
  v74 = Text.font(_:)();
  v46 = v45;
  v48 = v47;
  v79 = v49;

  sub_10010CD64(v42, v44, v27 & 1);

  v50 = sub_1000180EC(v43, &qword_100CACFF0, &unk_100A48000);
  v51 = v80;
  sub_100504360(v50, v52, v53, v54, v55, v56, v57, v58, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v60 = v83;
  v59 = v84;
  v61 = v81;
  (*(v83 + 104))(v81, enum case for ColorSchemeContrast.increased(_:), v84);
  LOBYTE(v40) = static ColorSchemeContrast.== infix(_:_:)();
  v62 = *(v60 + 8);
  v62(v61, v59);
  v62(v51, v59);
  if (v40)
  {
    Color.init(hue:saturation:brightness:opacity:)();
  }

  else
  {
    static Color.cyan.getter();
  }

  v63 = v74;
  v64 = Text.foregroundColor(_:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_10010CD64(v63, v46, v48 & 1);

  v71 = v85;
  *v85 = v64;
  v71[1] = v66;
  *(v71 + 16) = v68 & 1;
  v71[3] = v70;
  sub_10000536C();
}

void *sub_1005067B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v5 = a1;
  v38 = a2;
  v7 = type metadata accessor for EnvironmentValues();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CC2940, &qword_100A5B470);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  *v16 = static VerticalAlignment.lastTextBaseline.getter();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v17 = &v16[*(sub_10022C350(&qword_100CC2948, &qword_100A5B478) + 44)];
  v37 = v5;
  sub_1005074F4(v4, v5, v17, a3);
  v18 = *(v11 + 104);
  v18(v13, enum case for Font.TextStyle.title3(_:), v10);
  static Font.Weight.medium.getter();
  v36 = static Font.system(_:weight:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v18(v13, enum case for Font.TextStyle.body(_:), v10);
  static Font.Weight.medium.getter();
  v20 = static Font.system(_:weight:)();
  v19(v13, v10);
  v21 = v4 + *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 28);
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v22, 0);
    (*(v34 + 8))(v9, v35);
    LOBYTE(v22) = __src[0];
  }

  v24 = &v16[*(sub_10022C350(&qword_100CC2950, &qword_100A5B480) + 36)];
  v25 = type metadata accessor for FontWithSmallVariantModifier(0);
  v26 = *(v25 + 24);
  v27 = enum case for Font.Leading.tight(_:);
  v28 = type metadata accessor for Font.Leading();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  sub_10001B350(v24 + v26, 0, 1, v28);
  *v24 = v36;
  v24[1] = v20;
  *(v24 + *(v25 + 28)) = v22 & 1;
  KeyPath = swift_getKeyPath();
  v30 = &v16[*(v14 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = 1;
  v30[16] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v38;
  sub_10011C0F0(v16, v38, &qword_100CC2940, &qword_100A5B470);
  v32 = sub_10022C350(&qword_100CC2908, &qword_100A5B420);
  return memcpy((v31 + *(v32 + 36)), __src, 0x70uLL);
}

uint64_t sub_100506C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CC2908, &qword_100A5B420);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10022C350(&qword_100CC2910, &qword_100A5B428);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10022C350(&qword_100CC2918, &qword_100A5B430);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  sub_100505908();
  v19 = v36;
  v35 = v37;
  v20 = v39;
  v33 = v40;
  v34 = v38;
  v32 = v41;
  v21 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (*(a1 + *(v21 + 40) + 8) || *(a1 + *(v21 + 52)) == 1)
  {
    *v12 = static VerticalAlignment.lastTextBaseline.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v22 = sub_10022C350(&qword_100CC2928, &unk_100A5B440);
    sub_100506FDC(a1, &v12[*(v22 + 44)]);
    sub_10011C0F0(v12, v18, &qword_100CC2910, &qword_100A5B428);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10001B350(v18, v23, 1, v10);
  sub_1005067B4(0, v9, 0.5);
  sub_1000302D8(v18, v15, &qword_100CC2918, &qword_100A5B430);
  v30 = v15;
  sub_1000302D8(v9, v6, &qword_100CC2908, &qword_100A5B420);
  v31 = v9;
  *a2 = 0x4020000000000000;
  *(a2 + 8) = 0;
  v24 = v35;
  *(a2 + 16) = v19;
  *(a2 + 24) = v24;
  v25 = v33;
  v26 = v34;
  *(a2 + 32) = v34;
  *(a2 + 40) = v20;
  *(a2 + 48) = v25;
  *(a2 + 49) = v32;
  v27 = sub_10022C350(&qword_100CC2920, &qword_100A5B438);
  sub_1000302D8(v15, a2 + v27[16], &qword_100CC2918, &qword_100A5B430);
  sub_1000302D8(v6, a2 + v27[20], &qword_100CC2908, &qword_100A5B420);
  v28 = a2 + v27[24];
  *v28 = 0x4020000000000000;
  *(v28 + 8) = 0;
  sub_10010CD54(v19, v24, v26);

  sub_1000180EC(v31, &qword_100CC2908, &qword_100A5B420);
  sub_1000180EC(v18, &qword_100CC2918, &qword_100A5B430);
  sub_1000180EC(v6, &qword_100CC2908, &qword_100A5B420);
  sub_1000180EC(v30, &qword_100CC2918, &qword_100A5B430);
  sub_10010CD64(v19, v24, v26);
}

uint64_t sub_100506FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_10022C350(&qword_100CBB910, &qword_100A5B450);
  __chkstk_darwin(v10);
  v12 = (&v39 - v11);
  v13 = sub_10022C350(&qword_100CC2930, &qword_100A5B458);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v45 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (*(a1 + *(v45 + 40) + 8))
  {
    v40 = v4;

    Image.init(systemName:)();
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v19 = type metadata accessor for Image.TemplateRenderingMode();
    sub_10001B350(v9, 0, 1, v19);
    v43 = Image.renderingMode(_:)();

    sub_1000180EC(v9, &qword_100CBB908, &unk_100A511B0);
    v42 = static Font.title3.getter();
    v41 = static Font.body.getter();
    v20 = a1 + *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) + 28);
    v21 = *v20;
    LODWORD(v20) = *(v20 + 8);
    v44 = a1;
    if (v20 != 1)
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v21, 0);
      (*(v40 + 8))(v6, v3);
      LOBYTE(v21) = v47;
    }

    v23 = (v12 + *(v10 + 36));
    v24 = type metadata accessor for FontWithSmallVariantModifier(0);
    v25 = *(v24 + 24);
    v26 = enum case for Font.Leading.tight(_:);
    v27 = type metadata accessor for Font.Leading();
    (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
    sub_10001B350(v23 + v25, 0, 1, v27);
    v28 = v41;
    *v23 = v42;
    v23[1] = v28;
    *(v23 + *(v24 + 28)) = v21 & 1;
    *v12 = v43;
    sub_10011C0F0(v12, v18, &qword_100CBB910, &qword_100A5B450);
    v29 = 0;
    a1 = v44;
  }

  else
  {
    v29 = 1;
  }

  sub_10001B350(v18, v29, 1, v10);
  if (*(a1 + *(v45 + 52)) == 1)
  {
    sub_100506230();
    v30 = v47;
    v31 = v48;
    v32 = v49;
    v33 = v50;
    sub_10010CD54(v47, v48, v49);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  sub_1000302D8(v18, v15, &qword_100CC2930, &qword_100A5B458);
  v34 = v46;
  sub_1000302D8(v15, v46, &qword_100CC2930, &qword_100A5B458);
  v35 = sub_10022C350(&qword_100CC2938, &unk_100A5B460);
  v36 = (v34 + *(v35 + 48));
  *v36 = v30;
  v36[1] = v31;
  v36[2] = v32;
  v36[3] = v33;
  v37 = v34 + *(v35 + 64);
  sub_100148118(v30, v31, v32, v33);
  sub_10014A53C(v30, v31, v32, v33);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1000180EC(v18, &qword_100CC2930, &qword_100A5B458);
  sub_10014A53C(v30, v31, v32, v33);
  return sub_1000180EC(v15, &qword_100CC2930, &qword_100A5B458);
}

uint64_t sub_1005074F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v159 = a2;
  v161 = a1;
  v154 = a3;
  v151 = sub_10022C350(&qword_100CC2958, &qword_100A5B4B8);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v158 = &v120 - v5;
  v149 = sub_10022C350(&qword_100CC2960, &qword_100A5B4C0);
  __chkstk_darwin(v149);
  v153 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v148 = &v120 - v8;
  __chkstk_darwin(v9);
  v152 = &v120 - v10;
  v141 = type metadata accessor for ColorSchemeContrast();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v134 = &v120 - v13;
  v156 = type metadata accessor for WeatherFormatPlaceholder();
  v160 = *(v156 - 8);
  v14 = v160;
  __chkstk_darwin(v156);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v155 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v120 - v22;
  v24 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v24 - 8);
  v122 = sub_10022C350(&qword_100CC2968, &qword_100A5B4C8) - 8;
  __chkstk_darwin(v122);
  v121 = &v120 - v25;
  v128 = sub_10022C350(&qword_100CC2970, &qword_100A5B4D0);
  __chkstk_darwin(v128);
  v126 = &v120 - v26;
  v140 = sub_10022C350(&qword_100CC2978, &qword_100A5B4D8);
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v120 - v27;
  v135 = sub_10022C350(&qword_100CC2980, &qword_100A5B4E0);
  __chkstk_darwin(v135);
  v147 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v133 = &v120 - v30;
  __chkstk_darwin(v31);
  v157 = &v120 - v32;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 14924;
  v33._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
  v132 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v146 = *(v132 + 32);
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v34 = *(v18 + 8);
  v144 = v23;
  v34(v23, v17);
  v35 = v14 + 104;
  v36 = *(v14 + 104);
  v37 = v16;
  HIDWORD(v130) = enum case for WeatherFormatPlaceholder.none(_:);
  v38 = v156;
  v131 = v35;
  v129 = v36;
  v36(v16);
  v125 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v39 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v40 = sub_10018E8BC(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v127 = v39;
  v124 = v40;
  v41 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v43 = v42;

  v44 = *(v160 + 8);
  v146 = v37;
  v160 += 8;
  v123 = v44;
  v44(v37, v38);
  v45 = v20;
  v46 = v121;
  v142 = v45;
  v145 = v18 + 8;
  v143 = v34;
  (v34)();
  v47._countAndFlagsBits = v41;
  v47._object = v43;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
  v49 = LocalizedStringKey.init(stringInterpolation:)();
  v53 = Text.init(_:tableName:bundle:comment:)(v49, v51, v50 & 1, v52, 0, 0, 0, "The day's low temperature, used for large text daily forecast row", 65, 2);
  v55 = v54;
  LOBYTE(v43) = v56;
  v58 = v57;
  KeyPath = swift_getKeyPath();
  v60 = *(v122 + 44);
  v61 = enum case for BlendMode.plusLighter(_:);
  v62 = type metadata accessor for BlendMode();
  v63 = (*(*(v62 - 8) + 104))(v46 + v60, v61, v62);
  *v46 = v53;
  *(v46 + 8) = v55;
  *(v46 + 16) = v43 & 1;
  *(v46 + 24) = v58;
  *(v46 + 32) = KeyPath;
  *(v46 + 40) = a4;
  v64 = v134;
  sub_100504360(v63, v65, v66, v67, v68, v69, v70, v71, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v72 = v139;
  v73 = v137;
  v74 = v141;
  (*(v139 + 104))(v137, enum case for ColorSchemeContrast.increased(_:), v141);
  v75 = v73;
  LOBYTE(v73) = static ColorSchemeContrast.== infix(_:_:)();
  v76 = *(v72 + 8);
  v76(v75, v74);
  v76(v64, v74);
  v77 = 1.0;
  if ((v73 & 1) == 0)
  {
    if (sub_100504528())
    {
      v77 = 1.0;
    }

    else
    {
      v77 = 0.27;
    }
  }

  v78 = v126;
  sub_10011C0F0(v46, v126, &qword_100CC2968, &qword_100A5B4C8);
  *(v78 + *(v128 + 36)) = v77;
  sub_100508478();
  v79 = v136;
  View.monospacedDigit()();
  sub_1000180EC(v78, &qword_100CC2970, &qword_100A5B4D0);
  v80 = v159;
  if (v159)
  {
    type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  }

  LODWORD(v139) = ~v80;
  static Alignment.center.getter();
  LODWORD(v141) = (v80 & 1) == 0;
  _FrameLayout.init(width:height:alignment:)();
  v81 = v133;
  (*(v138 + 32))(v133, v79, v140);
  v82 = (v81 + *(v135 + 36));
  v83 = v163;
  *v82 = v162;
  v82[1] = v83;
  v82[2] = v164;
  sub_10011C0F0(v81, v157, &qword_100CC2980, &qword_100A5B4E0);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v84._countAndFlagsBits = 14920;
  v84._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v84);
  v85 = v144;
  static WeatherFormatStyle<>.weather.getter();
  v86 = v142;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v87 = v155;
  v88 = v143;
  v143(v85, v155);
  v89 = v146;
  v90 = v156;
  v129(v146, HIDWORD(v130), v156);
  static UnitManager.standard.getter();
  v91 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v93 = v92;

  v123(v89, v90);
  v88(v86, v87);
  v94._countAndFlagsBits = v91;
  v94._object = v93;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v94);

  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v95);
  v96 = LocalizedStringKey.init(stringInterpolation:)();
  LOWORD(v119) = 2;
  v100 = Text.init(_:tableName:bundle:comment:)(v96, v98, v97 & 1, v99, 0, 0, 0, "The day's high temperature, used for large text daily forecast row", 66, v119);
  v102 = v101;
  LOBYTE(v91) = v103;
  v105 = v104;
  v106 = swift_getKeyPath();
  *&v165 = v100;
  *(&v165 + 1) = v102;
  LOBYTE(v166) = v91 & 1;
  *(&v166 + 1) = v105;
  *&v167 = v106;
  *(&v167 + 1) = a4;
  sub_10022C350(&qword_100CB91D8, &qword_100A4DA90);
  sub_10043721C();
  View.monospacedDigit()();
  sub_10010CD64(v100, v102, v91 & 1);

  if ((v139 & 1) == 0)
  {
    type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  }

  static Alignment.center.getter();
  v107 = v141;
  _FrameLayout.init(width:height:alignment:)();
  v108 = v148;
  (*(v150 + 32))(v148, v158, v151);
  v109 = (v108 + *(v149 + 36));
  v110 = v166;
  *v109 = v165;
  v109[1] = v110;
  v109[2] = v167;
  v111 = v152;
  sub_10011C0F0(v108, v152, &qword_100CC2960, &qword_100A5B4C0);
  v112 = v157;
  v113 = v147;
  sub_1000302D8(v157, v147, &qword_100CC2980, &qword_100A5B4E0);
  v114 = v153;
  sub_1000302D8(v111, v153, &qword_100CC2960, &qword_100A5B4C0);
  v115 = v154;
  sub_1000302D8(v113, v154, &qword_100CC2980, &qword_100A5B4E0);
  v116 = sub_10022C350(&qword_100CC2998, &qword_100A5B528);
  sub_1000302D8(v114, v115 + *(v116 + 48), &qword_100CC2960, &qword_100A5B4C0);
  v117 = v115 + *(v116 + 64);
  *v117 = 0;
  *(v117 + 8) = v107;
  *(v117 + 9) = v159 & 1;
  sub_1000180EC(v111, &qword_100CC2960, &qword_100A5B4C0);
  sub_1000180EC(v112, &qword_100CC2980, &qword_100A5B4E0);
  sub_1000180EC(v114, &qword_100CC2960, &qword_100A5B4C0);
  return sub_1000180EC(v113, &qword_100CC2980, &qword_100A5B4E0);
}

uint64_t sub_100508350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyComponentForecastRowViewLargeText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005083B4()
{
  v1 = *(type metadata accessor for DailyComponentForecastRowViewLargeText(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100504C78(v2);
}

uint64_t sub_10050841C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_100508478()
{
  result = qword_100CC2988;
  if (!qword_100CC2988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2970, &qword_100A5B4D0);
    v4[0] = sub_100508504();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2988);
  }

  return result;
}

unint64_t sub_100508504()
{
  result = qword_100CC2990;
  if (!qword_100CC2990)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2968, &qword_100A5B4C8);
    v4[0] = sub_10043721C();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2990);
  }

  return result;
}

unint64_t sub_100508590()
{
  result = qword_100CC29D0;
  if (!qword_100CC29D0)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CC28A8, &qword_100A5B3C8);
    v4 = sub_10022E824(&qword_100CC2898, &qword_100A5B3B8);
    sub_10022E824(&qword_100CC2890, &qword_100A5B3B0);
    type metadata accessor for DailyForecastRowViewButtonStyle(255);
    v5[4] = sub_100006F64(&qword_100CC28C0, &qword_100CC2890, &qword_100A5B3B0, &protocol conformance descriptor for Button<A>);
    v5[5] = sub_10018E8BC(&qword_100CBB898, type metadata accessor for DailyForecastRowViewButtonStyle, byte_100A3AC78);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_10018E8BC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CC29D0);
  }

  return result;
}

uint64_t sub_100508748@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));

  sub_10022C350(&qword_100CA4D00, &qword_100A2EF78);
  sub_1005087DC();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005087DC()
{
  result = qword_100CA4D08;
  if (!qword_100CA4D08)
  {
    v3 = sub_10022E824(&qword_100CA4D00, &qword_100A2EF78);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4D08);
  }

  return result;
}

uint64_t sub_100508840(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1005088B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v56);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  __chkstk_darwin(v9 - 8);
  v63 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v48 - v15;
  v16 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  __chkstk_darwin(v16);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v48 - v19;
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  __chkstk_darwin(v23);
  v69 = &v48 - v24;
  __chkstk_darwin(v25);
  v66 = &v48 - v27;
  v50 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v26 + 72);
    v65 = (v12 + 16);
    v61 = (v12 + 8);
    v62 = v16;
    v30 = v28 + v29 * (a3 - 1);
    v57 = -v29;
    v58 = v28;
    v31 = a1 - a3;
    v49 = v29;
    v32 = v28 + v29 * a3;
    v60 = v22;
    while (2)
    {
      v53 = v30;
      v54 = a3;
      v51 = v32;
      v52 = v31;
      do
      {
        v33 = v66;
        sub_10011C770(v32, v66, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011C770(v30, v69, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011C770(v33, v22, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v34 = v55;
          sub_100509B1C(v22, v55, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
          v35 = *v65;
          (*v65)(v68, v34 + *(v56 + 52), v11);
          v36 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
        }

        else
        {
          v34 = v63;
          sub_100509B1C(v22, v63, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
          v35 = *v65;
          (*v65)(v68, v34, v11);
          v36 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
        }

        sub_10011E508(v34, v36);
        v37 = v64;
        sub_10011C770(v69, v67, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v41 = v55;
          sub_100509B1C(v67, v55, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
          v35(v64, v41 + *(v56 + 52), v11);
          v39 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
          v40 = v41;
          v37 = v64;
        }

        else
        {
          v38 = v63;
          sub_100509B1C(v67, v63, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
          v35(v37, v38, v11);
          v39 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
          v40 = v38;
        }

        sub_10011E508(v40, v39);
        v22 = v60;
        v42 = v68;
        v43 = static Date.< infix(_:_:)();
        v44 = v37;
        v45 = *v61;
        (*v61)(v44, v11);
        v45(v42, v11);
        sub_10011E508(v69, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        sub_10011E508(v66, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        if ((v43 & 1) == 0)
        {
          break;
        }

        if (!v58)
        {
          __break(1u);
          return;
        }

        v46 = v59;
        sub_100509B1C(v32, v59, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        swift_arrayInitWithTakeFrontToBack();
        sub_100509B1C(v46, v30, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
        v30 += v57;
        v32 += v57;
      }

      while (!__CFADD__(v31++, 1));
      a3 = v54 + 1;
      v30 = v53 + v49;
      v31 = v52 - 1;
      v32 = v51 + v49;
      if (v54 + 1 != v50)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100508EC4(unint64_t a1, _BYTE *a2, unint64_t a3, _BYTE *a4)
{
  v104 = a3;
  v102 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v102);
  v101 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  __chkstk_darwin(v8 - 8);
  v108 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date();
  v111 = *(v10 - 8);
  __chkstk_darwin(v10);
  v94 = &v93[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v105 = &v93[-v13];
  __chkstk_darwin(v14);
  v16 = &v93[-v15];
  __chkstk_darwin(v17);
  v110 = &v93[-v18];
  v114 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  __chkstk_darwin(v114);
  v99 = &v93[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v100 = &v93[-v21];
  __chkstk_darwin(v22);
  v24 = &v93[-v23];
  __chkstk_darwin(v25);
  v103 = &v93[-v26];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  __chkstk_darwin(v30);
  v32 = &v93[-v31];
  __chkstk_darwin(v33);
  v113 = &v93[-v34];
  __chkstk_darwin(v35);
  v109 = &v93[-v36];
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_77;
  }

  v40 = v104 - a2;
  if (v104 - a2 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_78;
  }

  v117 = a1;
  v116 = a4;
  v112 = (v111 + 16);
  v106 = v10;
  v107 = (v111 + 8);
  if (&a2[-a1] / v38 >= v40 / v38)
  {
    v59 = v40 / v38;
    sub_1006A07BC(a2, v40 / v38, a4);
    v60 = a2;
    v61 = &a4[v59 * v38];
    v62 = -v38;
    v63 = v61;
    v96 = a4;
    v64 = v104;
    v95 = a1;
    v97 = v24;
    v65 = v94;
    v98 = v62;
LABEL_44:
    v109 = &v60[v62];
    v66 = v64;
    v67 = v63;
    v68 = v63;
    v111 = v60;
    v104 = v63;
    while (1)
    {
      if (v61 <= a4)
      {
        v117 = v60;
        v115 = v67;
        goto LABEL_75;
      }

      if (v60 <= a1)
      {
        break;
      }

      v110 = v66;
      v94 = v67;
      v69 = v98;
      v113 = v61;
      v70 = &v61[v98];
      v71 = v103;
      sub_10011C770(&v61[v98], v103, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011C770(v109, v24, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011C770(v71, v100, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v73 = v99;
        if (EnumCaseMultiPayload == 1)
        {
          v74 = v108;
          sub_100509B1C(v100, v108, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
          v75 = *v112;
          (*v112)(v105, v74, v10);
          v76 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
        }

        else
        {
          v74 = v101;
          sub_100509B1C(v100, v101, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
          v75 = *v112;
          (*v112)(v105, &v74[*(v102 + 52)], v10);
          v76 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
        }

        sub_10011E508(v74, v76);
      }

      else
      {
        v77 = v108;
        sub_100509B1C(v100, v108, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
        v75 = *v112;
        (*v112)(v105, v77, v10);
        sub_10011E508(v77, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
        v73 = v99;
      }

      sub_10011C770(v24, v73, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v78 = v101;
        sub_100509B1C(v73, v101, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
        v75(v65, &v78[*(v102 + 52)], v10);
        v79 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
      }

      else
      {
        v78 = v108;
        sub_100509B1C(v73, v108, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
        v75(v65, v78, v10);
        v79 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
      }

      sub_10011E508(v78, v79);
      v80 = v110;
      v81 = &v110[v69];
      v82 = v105;
      v83 = static Date.< infix(_:_:)();
      v84 = v65;
      v85 = v83;
      v86 = *v107;
      v87 = v84;
      (*v107)(v84, v10);
      v86(v82, v10);
      v24 = v97;
      sub_10011E508(v97, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011E508(v103, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      if (v85)
      {
        v89 = v80 < v111 || v81 >= v111;
        a4 = v96;
        v64 = v81;
        a1 = v95;
        if (v89)
        {
          v90 = v109;
          swift_arrayInitWithTakeFrontToBack();
          v60 = v90;
          v63 = v94;
          v10 = v106;
          v65 = v87;
          v62 = v98;
          v61 = v113;
        }

        else
        {
          v63 = v94;
          v91 = v109;
          v60 = v109;
          v10 = v106;
          v65 = v87;
          v62 = v98;
          v61 = v113;
          if (v80 != v111)
          {
            v92 = v94;
            swift_arrayInitWithTakeBackToFront();
            v61 = v113;
            v60 = v91;
            v63 = v92;
          }
        }

        goto LABEL_44;
      }

      v88 = v80 < v113 || v81 >= v113;
      a4 = v96;
      a1 = v95;
      if (v88)
      {
        swift_arrayInitWithTakeFrontToBack();
        v66 = v81;
        v61 = v70;
        v67 = v70;
        v60 = v111;
        v10 = v106;
        v65 = v87;
        v68 = v104;
      }

      else
      {
        v67 = v70;
        v66 = v81;
        v61 = v70;
        v60 = v111;
        v10 = v106;
        v65 = v87;
        v68 = v104;
        if (v113 != v80)
        {
          swift_arrayInitWithTakeBackToFront();
          v60 = v111;
          v66 = v81;
          v61 = v70;
          v67 = v70;
        }
      }
    }

    v117 = v60;
    v115 = v68;
  }

  else
  {
    sub_1006A07BC(a1, &a2[-a1] / v38, a4);
    v42 = a2;
    v103 = &a4[&a2[-a1] / v38 * v38];
    v115 = v103;
    v99 = v32;
    v100 = v29;
    v105 = v38;
    while (a4 < v103 && v42 < v104)
    {
      v111 = v42;
      v44 = v109;
      sub_10011C770(v42, v109, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011C770(a4, v113, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011C770(v44, v32, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v45 = v101;
        sub_100509B1C(v32, v101, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
        v46 = *v112;
        (*v112)(v110, &v45[*(v102 + 52)], v10);
        v47 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
      }

      else
      {
        v45 = v108;
        sub_100509B1C(v32, v108, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
        v46 = *v112;
        (*v112)(v110, v45, v10);
        v47 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
      }

      sub_10011E508(v45, v47);
      sub_10011C770(v113, v29, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      v48 = a4;
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v49 = v101;
        sub_100509B1C(v29, v101, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
        v46(v16, &v49[*(v102 + 52)], v10);
        v50 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
      }

      else
      {
        v49 = v108;
        sub_100509B1C(v29, v108, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel);
        v46(v16, v49, v10);
        v50 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel;
      }

      sub_10011E508(v49, v50);
      v51 = v110;
      v52 = static Date.< infix(_:_:)();
      v53 = *v107;
      (*v107)(v16, v10);
      v53(v51, v10);
      sub_10011E508(v113, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      sub_10011E508(v109, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
      if (v52)
      {
        v54 = &v105[v111];
        v55 = a1 < v111 || a1 >= v54;
        a4 = v48;
        v32 = v99;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v42 = v54;
          v10 = v106;
          v29 = v100;
        }

        else
        {
          v10 = v106;
          v29 = v100;
          if (a1 != v111)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v42 = v54;
        }

        v57 = v105;
      }

      else
      {
        v56 = v48;
        v57 = v105;
        a4 = &v105[v56];
        v58 = a1 < v56 || a1 >= a4;
        v32 = v99;
        if (v58)
        {
          swift_arrayInitWithTakeFrontToBack();
          v10 = v106;
          v29 = v100;
        }

        else
        {
          v10 = v106;
          v29 = v100;
          if (a1 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v116 = a4;
        v42 = v111;
      }

      a1 += v57;
      v117 = a1;
    }
  }

LABEL_75:
  sub_100308FEC(&v117, &v116, &v115);
}

uint64_t sub_100509B1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100509BE4(uint64_t a1)
{
  v1 = type metadata accessor for MoonDetailViewModel.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100509C64(uint64_t a1)
{
  type metadata accessor for MoonDetailSelectedDate(319);
  if (v1 <= 0x3F)
  {
    sub_100007760();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MoonViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MoonScrubberHeaderViewModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for OverviewTableViewModel();
          if (v5 <= 0x3F)
          {
            sub_100509E48(319, &unk_100CBA5F8, type metadata accessor for MoonCompactOverviewTableViewModel, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ConditionDetailPlatterViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_100509E48(319, &qword_100CB27C8, type metadata accessor for ConditionDetailPlatterViewModel, &type metadata accessor for Array);
                if (v8 <= 0x3F)
                {
                  sub_100509E48(319, &qword_100CAA070, type metadata accessor for DetailComponentContainerViewModel, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Location();
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

void sub_100509E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100509EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailViewModel.Model(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for MoonDetailViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CC2CA0, &qword_100A5B778);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v19 = *(v18 + 56);
  sub_10050A858(a1, &v23 - v16);
  sub_10050A858(a2, &v17[v19]);
  sub_1000038B4(v17, 1, v4);
  if (!v21)
  {
    sub_10050A858(v17, v13);
    sub_1000038B4(&v17[v19], 1, v4);
    if (!v21)
    {
      sub_10050A914(&v17[v19], v8, type metadata accessor for MoonDetailViewModel.Model);
      v20 = sub_10050A0B4(v13, v8);
      sub_10050A8BC(v8, type metadata accessor for MoonDetailViewModel.Model);
      sub_10050A8BC(v13, type metadata accessor for MoonDetailViewModel.Model);
      sub_100010238();
      return v20 & 1;
    }

    sub_10050A8BC(v13, type metadata accessor for MoonDetailViewModel.Model);
LABEL_9:
    sub_1000180EC(v17, &qword_100CC2CA0, &qword_100A5B778);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000038B4(&v17[v19], 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_100010238();
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10050A0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v90 = (v7 - v6);
  v8 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  v12 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v91 = &v88 - v14;
  v15 = type metadata accessor for MoonCompactOverviewTableViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CBA588, &qword_100A97960);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = sub_10022C350(&qword_100CC2CA8, &qword_100A5B788);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v88 - v26;
  if ((sub_10070B2E4(a1, a2) & 1) == 0)
  {
    goto LABEL_44;
  }

  v28 = type metadata accessor for MoonDetailViewModel.Model(0);
  v29 = v28[5];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v30 == *v32 && v31 == v32[1];
  if (!v33)
  {
    v89 = v24;
    v34 = v15;
    v35 = v27;
    v36 = v23;
    v37 = v19;
    v38 = a1;
    v39 = a2;
    v40 = v12;
    v41 = v4;
    v42 = v11;
    v43 = v28;
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = v43;
    v11 = v42;
    v4 = v41;
    v12 = v40;
    a2 = v39;
    a1 = v38;
    v19 = v37;
    v23 = v36;
    v27 = v35;
    v15 = v34;
    v24 = v89;
    if ((v44 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v45 = v28[6];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_44;
    }

    v89 = v11;
    if (*v46 != *v48 || v47 != v49)
    {
      v51 = v28;
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v51;
      if ((v52 & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v89 = v11;
    if (v49)
    {
LABEL_44:
      v86 = 0;
      return v86 & 1;
    }
  }

  v53 = sub_100003C48(v28[7]);
  v55 = v54;
  if ((sub_1009D02F4(v53, v56) & 1) == 0)
  {
    goto LABEL_44;
  }

  v57 = sub_100003C48(v55[8]);
  if (!sub_1009D0204(v57, v58))
  {
    goto LABEL_44;
  }

  sub_100003C48(v55[9]);
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v88 = v55;
  v59 = v55[10];
  v60 = *(v24 + 48);
  v61 = v59;
  sub_100035AD0(a1 + v59, v27, &qword_100CBA588, &qword_100A97960);
  sub_100035AD0(a2 + v61, &v27[v60], &qword_100CBA588, &qword_100A97960);
  sub_1000038B4(v27, 1, v15);
  if (v33)
  {
    sub_1000038B4(&v27[v60], 1, v15);
    v62 = v89;
    if (v33)
    {
      sub_1000180EC(v27, &qword_100CBA588, &qword_100A97960);
      goto LABEL_30;
    }

LABEL_27:
    v65 = &qword_100CC2CA8;
    v66 = &qword_100A5B788;
    v67 = v27;
LABEL_28:
    sub_1000180EC(v67, v65, v66);
    goto LABEL_44;
  }

  sub_100035AD0(v27, v23, &qword_100CBA588, &qword_100A97960);
  v63 = v60;
  sub_1000038B4(&v27[v60], 1, v15);
  v62 = v89;
  if (v64)
  {
    sub_10050A8BC(v23, type metadata accessor for MoonCompactOverviewTableViewModel);
    goto LABEL_27;
  }

  sub_10050A914(&v27[v63], v19, type metadata accessor for MoonCompactOverviewTableViewModel);
  v68 = sub_100446B78(v23, v19);
  sub_10050A8BC(v19, type metadata accessor for MoonCompactOverviewTableViewModel);
  sub_10050A8BC(v23, type metadata accessor for MoonCompactOverviewTableViewModel);
  sub_1000180EC(v27, &qword_100CBA588, &qword_100A97960);
  if (!v68)
  {
    goto LABEL_44;
  }

LABEL_30:
  v69 = v88;
  v70 = sub_100003C48(v88[11]);
  if ((sub_100954420(v70, v71) & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1009E99F0(*(a1 + *(v69 + 48)), *(a2 + *(v69 + 48)), v72, v73, v74, v75, v76, v77, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  if ((v78 & 1) == 0)
  {
    goto LABEL_44;
  }

  v79 = *(v69 + 52);
  v80 = *(v12 + 48);
  v81 = v91;
  sub_100035AD0(a1 + v79, v91, &qword_100CA7188, &qword_100A35360);
  sub_100035AD0(a2 + v79, v81 + v80, &qword_100CA7188, &qword_100A35360);
  sub_1000038B4(v81, 1, v4);
  if (v33)
  {
    sub_1000038B4(v81 + v80, 1, v4);
    if (v33)
    {
      sub_1000180EC(v81, &qword_100CA7188, &qword_100A35360);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_100035AD0(v81, v62, &qword_100CA7188, &qword_100A35360);
  sub_1000038B4(v81 + v80, 1, v4);
  if (v82)
  {
    sub_10050A8BC(v62, type metadata accessor for DetailComponentContainerViewModel);
LABEL_40:
    v65 = &qword_100CAA958;
    v66 = &qword_100A5B780;
    v67 = v81;
    goto LABEL_28;
  }

  v83 = v90;
  sub_10050A914(v81 + v80, v90, type metadata accessor for DetailComponentContainerViewModel);
  v84 = sub_100428860(v62, v83);
  sub_10050A8BC(v83, type metadata accessor for DetailComponentContainerViewModel);
  sub_10050A8BC(v62, type metadata accessor for DetailComponentContainerViewModel);
  sub_1000180EC(v81, &qword_100CA7188, &qword_100A35360);
  if ((v84 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v85 = v88;
  sub_100003C48(v88[14]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v86 = *(a1 + *(v85 + 60)) ^ *(a2 + *(v85 + 60)) ^ 1;
  return v86 & 1;
}

uint64_t sub_10050A704@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC2CB0, &unk_100A5B790);
  a1[4] = sub_10050A974();
  sub_100042FB0(a1);
  type metadata accessor for MoonDetailViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10050A7CC(uint64_t a1)
{
  sub_10050A9D8(&qword_100CC2CC0, byte_100A5B6F8);

  return ShortDescribable.description.getter();
}

uint64_t sub_10050A858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050A8BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10050A914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10050A974()
{
  result = qword_100CC2CB8;
  if (!qword_100CC2CB8)
  {
    v3 = sub_10022E824(&qword_100CC2CB0, &unk_100A5B790);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC2CB8);
  }

  return result;
}

uint64_t sub_10050A9D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MoonDetailViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10050AA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10050AAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10050AA44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10050AB14(uint64_t a1)
{
  v2 = sub_10050B15C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050AB50(uint64_t a1)
{
  v2 = sub_10050B15C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050AB90@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC2D60, &qword_100A5B888);
  a1[4] = sub_10050B0F8();
  sub_100042FB0(a1);
  type metadata accessor for VFXTestViewState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10050AC40(void *a1)
{
  v2 = sub_10022C350(&qword_100CC2D90, &qword_100A5B898);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10050B15C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WeatherCondition();
  sub_10001EF10();
  sub_10050B1B0(v8, v9, &protocol conformance descriptor for WeatherCondition);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10050AD9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v22 = v5;
  __chkstk_darwin(v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC2D78, &qword_100A5B890);
  sub_1000037C4();
  v23 = v9;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for VFXTestViewState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10050B15C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_10001EF10();
    sub_10050B1B0(v18, v19, &protocol conformance descriptor for WeatherCondition);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1004C03F0(v15, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10050B014(uint64_t a1)
{
  sub_10050B1B0(&qword_100CC2D70, type metadata accessor for VFXTestViewState, aM_48);

  return ShortDescribable.description.getter();
}

unint64_t sub_10050B0F8()
{
  result = qword_100CC2D68;
  if (!qword_100CC2D68)
  {
    v3 = sub_10022E824(&qword_100CC2D60, &qword_100A5B888);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC2D68);
  }

  return result;
}

unint64_t sub_10050B15C()
{
  result = qword_100CC2D80;
  if (!qword_100CC2D80)
  {
    result = swift_getWitnessTable(byte_100A5B964, &type metadata for VFXTestViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC2D80);
  }

  return result;
}

uint64_t sub_10050B1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VFXTestViewState.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10050B2A8()
{
  result = qword_100CC2DA0;
  if (!qword_100CC2DA0)
  {
    result = swift_getWitnessTable(byte_100A5B93C, &type metadata for VFXTestViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC2DA0);
  }

  return result;
}

unint64_t sub_10050B300()
{
  result = qword_100CC2DA8;
  if (!qword_100CC2DA8)
  {
    result = swift_getWitnessTable("5", &type metadata for VFXTestViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC2DA8);
  }

  return result;
}

unint64_t sub_10050B358()
{
  result = qword_100CC2DB0;
  if (!qword_100CC2DB0)
  {
    result = swift_getWitnessTable(byte_100A5B8D4, &type metadata for VFXTestViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC2DB0);
  }

  return result;
}

uint64_t sub_10050B3D0(uint64_t a1)
{
  type metadata accessor for OpenURLAction();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.openURL.setter();
}

void sub_10050B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  type metadata accessor for ReportWeatherContentView(0);
  sub_100095588();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v34 + 32))(v23, v33);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v26 + 8))(v30, v24);
  }

  sub_10000536C();
}

void sub_10050B654()
{
  sub_10000C778();
  v16[1] = v1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CC2E50, &qword_100A5BAB0);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = v16 - v13;
  v17 = v0;
  sub_10022C350(&qword_100CC2E58, &qword_100A5BAB8);
  sub_100513FAC(&unk_100CC2E60);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  sub_100513FAC(v15);
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v14, v9);
  sub_10000536C();
}

uint64_t sub_10050B850@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v93 = a2;
  v2 = sub_10022C350(&qword_100CB5DA8, &qword_100A495D0);
  __chkstk_darwin(v2 - 8);
  v94 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v78 - v5;
  v6 = sub_10022C350(&qword_100CB5DA0, &qword_100A495C8);
  __chkstk_darwin(v6 - 8);
  v92 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v78 - v9;
  v84 = type metadata accessor for AccessibilityChildBehavior();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CC2E70, &qword_100A5BAC0);
  v79 = *(v11 - 8);
  v80 = v11;
  __chkstk_darwin(v11);
  v78 = &v78 - v12;
  v87 = sub_10022C350(&qword_100CC2E78, &unk_100A5BAC8);
  __chkstk_darwin(v87);
  v83 = &v78 - v13;
  v14 = sub_10022C350(&qword_100CB5D98, &qword_100A495C0);
  __chkstk_darwin(v14 - 8);
  v89 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v78 - v17;
  v18 = sub_10022C350(&qword_100CB5D90, &qword_100A495B8);
  __chkstk_darwin(v18 - 8);
  v101 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = &v78 - v21;
  v22 = sub_10022C350(&qword_100CB5D88, &qword_100A495B0);
  __chkstk_darwin(v22 - 8);
  v99 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v78 - v25;
  v26 = sub_10022C350(&qword_100CC2E80, &unk_100A5BAD8);
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v97 = sub_10022C350(&qword_100CB5D78, &qword_100A495A0);
  v88 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v78 - v31;
  sub_10050D0CC(v28);
  v33 = sub_10022E824(&qword_100CC2E88, &unk_100A5BAE8);
  v34 = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
  v35 = sub_10022E824(&qword_100CC2E90, &qword_100A5BAF8);
  v36 = sub_10022E824(&qword_100CC2E98, &unk_100A5BB00);
  v37 = sub_100513FAC(&unk_100CC2EA0);
  v105[0] = v36;
  v105[1] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105[0] = &type metadata for Solarium;
  v105[1] = &protocol witness table for Solarium;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_100510EE8();
  v105[0] = v33;
  v105[1] = v34;
  v105[2] = v35;
  v105[3] = OpaqueTypeConformance2;
  v105[4] = v39;
  v105[5] = v40;
  swift_getOpaqueTypeConformance2();
  v95 = v32;
  Section<>.init(header:content:)();
  v41 = v86;
  v42 = *(v86 + 1);
  v85 = *v86;
  v43 = *(v86 + 2);
  v105[0] = v85;
  v105[1] = v42;
  v105[2] = v43;
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.projectedValue.getter();
  v44 = v104[0];
  v45 = v104[1];
  v46 = v104[2];
  swift_getKeyPath();
  v103[0] = v44;
  v103[1] = v45;
  v103[2] = v46;
  Binding.subscript.getter();
  v47 = v43;
  v48 = v42;
  v49 = v85;

  memcpy(v105, v104, 0xD2uLL);

  sub_10050C4E0();
  v50 = v41;
  sub_10050C7DC();
  v104[0] = v49;
  v104[1] = v48;
  v104[2] = v47;
  Binding.wrappedValue.getter();
  v52 = *(v103[0] + 264);
  v51 = *(v103[0] + 272);

  if (v51)
  {
    v104[0] = v49;
    v104[1] = v48;
    v104[2] = v47;
    Binding.wrappedValue.getter();
    v54 = *(v103[0] + 280);
    v53 = *(v103[0] + 288);

    if (v53)
    {
      v104[0] = v52;
      v104[1] = v51;
      v104[2] = v54;
      v104[3] = v53;
      __chkstk_darwin(v55);
      *(&v78 - 2) = v50;

      sub_10022C350(&qword_100CC2EB0, &qword_100A5BB40);
      sub_10051106C();
      sub_1005110C0();
      v56 = v78;
      Section<>.init(header:content:)();
      v57 = v81;
      static AccessibilityChildBehavior.contain.getter();
      sub_10051398C(&unk_100CC2EE0);
      v58 = v83;
      v59 = v80;
      View.accessibilityElement(children:)();
      (*(v82 + 8))(v57, v84);
      (*(v79 + 8))(v56, v59);
      v60 = v87;
      v61 = &v58[*(v87 + 36)];
      type metadata accessor for AutomationInfoProperty(0);
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AutomationInfo(0);
      swift_storeEnumTagMultiPayload();
      *v61 = 0;
      *(v61 + 1) = 0xE000000000000000;
      KeyPath = swift_getKeyPath();

      *(v61 + 2) = KeyPath;
      v61[24] = 0;
      v63 = v100;
      sub_1001F6818();
      v64 = 0;
    }

    else
    {

      v64 = 1;
      v63 = v100;
      v60 = v87;
    }
  }

  else
  {
    v63 = v100;
    v60 = v87;
    v64 = 1;
  }

  sub_10001B350(v63, v64, 1, v60);
  v65 = v90;
  sub_10050CAC4();
  v66 = v91;
  sub_10050CD90();
  v67 = v88;
  v68 = v96;
  (*(v88 + 16))(v96, v95, v97);
  v103[27] = v68;
  memcpy(v103, v105, 0xD2uLL);
  v103[28] = v103;
  v69 = v99;
  sub_100095588();
  v103[29] = v69;
  v70 = v98;
  v71 = v101;
  sub_100095588();
  v103[30] = v71;
  v72 = v89;
  sub_100095588();
  v103[31] = v72;
  v73 = v92;
  sub_100095588();
  v103[32] = v73;
  v74 = v94;
  sub_100095588();
  v103[33] = v74;
  sub_1003E8B34();
  sub_1000180EC(v66, &qword_100CB5DA8, &qword_100A495D0);
  sub_1000180EC(v65, &qword_100CB5DA0, &qword_100A495C8);
  sub_1000180EC(v100, &qword_100CB5D98, &qword_100A495C0);
  sub_1000180EC(v70, &qword_100CB5D90, &qword_100A495B8);
  sub_1000180EC(v102, &qword_100CB5D88, &qword_100A495B0);
  v75 = *(v67 + 8);
  v76 = v97;
  v75(v95, v97);
  sub_1000180EC(v74, &qword_100CB5DA8, &qword_100A495D0);
  sub_1000180EC(v73, &qword_100CB5DA0, &qword_100A495C8);
  sub_1000180EC(v72, &qword_100CB5D98, &qword_100A495C0);
  sub_1000180EC(v101, &qword_100CB5D90, &qword_100A495B8);
  sub_1000180EC(v99, &qword_100CB5D88, &qword_100A495B0);
  memcpy(v104, v103, 0xD2uLL);
  sub_100511010(v104);
  return (v75)(v96, v76);
}

uint64_t sub_10050C494(void *__src)
{
  memcpy(__dst, __src, 0xC2uLL);
  sub_1002DD184(__dst, &v2);
  return sub_1002D83F4(__dst);
}

void sub_10050C4E0()
{
  sub_10000C778();
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_10002475C();
  sub_1000037C4();
  v20 = v5;
  v21 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_1000200F8();
  v19 = sub_10022C350(&qword_100CC30E8, &qword_100A5BE00);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100014230();
  v7 = [objc_opt_self() mainBundle];
  v24._object = 0x8000000100AD2C20;
  sub_1000080F4();
  v24._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v10, v11, v24);
  sub_1000285E0();

  sub_100018488();
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();
  v13 = *(v23 + 216);
  v12 = *(v23 + 224);

  v22[0] = v2;
  v22[1] = 0x8000000100AD2C20;
  v22[2] = v13;
  v22[3] = v12;
  sub_10022C350(&qword_100CC30F0, &qword_100A5BE08);
  sub_10051106C();
  sub_100513808();
  sub_10004E634(v22, sub_100513800, v14, &type metadata for SectionHeader);
  static AccessibilityChildBehavior.contain.getter();
  sub_10051398C(&unk_100CC3118);
  sub_100074AE8();
  View.accessibilityElement(children:)();
  (*(v20 + 8))(v1, v21);
  v15 = sub_100051E78();
  v16(v15, v19);
  type metadata accessor for AutomationCellInfo(0);
  *v0 = 0;
  v0[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_10000EAE8();
  sub_10022C350(&qword_100CB5D88, &qword_100A495B0);
  v17 = sub_100069614();
  sub_10001C448(v17);
  sub_1001C9E84(v0);
  sub_100037B50();
  KeyPath = swift_getKeyPath();
  sub_100022C9C(KeyPath);
  sub_10000536C();
}

void sub_10050C7DC()
{
  sub_10000C778();
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_10002475C();
  sub_1000037C4();
  v20 = v5;
  v21 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_1000200F8();
  v19 = sub_10022C350(&qword_100CC3080, &qword_100A5BD80);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100014230();
  v7 = [objc_opt_self() mainBundle];
  v24._object = 0x8000000100AD2B70;
  sub_1000080F4();
  v24._countAndFlagsBits = 0xD000000000000048;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v10, v11, v24);
  sub_1000285E0();

  sub_100018488();
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();
  v13 = *(v23 + 240);
  v12 = *(v23 + 248);

  v22[0] = v2;
  v22[1] = 0x8000000100AD2B70;
  v22[2] = v13;
  v22[3] = v12;
  sub_10022C350(&qword_100CC3088, &qword_100A5BD88);
  sub_10051106C();
  sub_1005134E8();
  sub_10004E634(v22, sub_1005134E0, v14, &type metadata for SectionHeader);
  static AccessibilityChildBehavior.contain.getter();
  sub_10051398C(&unk_100CC30B0);
  sub_100074AE8();
  View.accessibilityElement(children:)();
  (*(v20 + 8))(v1, v21);
  v15 = sub_100051E78();
  v16(v15, v19);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  sub_10000EAE8();
  sub_10022C350(&qword_100CB5D90, &qword_100A495B8);
  v17 = sub_100069614();
  sub_10001C448(v17);
  sub_1001C9E84(v0);
  sub_100037B50();
  KeyPath = swift_getKeyPath();
  sub_100022C9C(KeyPath);
  sub_10000536C();
}

void sub_10050CAC4()
{
  sub_10000C778();
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v16 = sub_10002475C();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000200F8();
  v6 = sub_10022C350(&qword_100CC3018, &qword_100A5BCC0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014230();
  v8 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100AD2B30;
  v9._object = 0x8000000100AD2B10;
  v18._countAndFlagsBits = 0xD00000000000003FLL;
  v9._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v18);
  sub_1000285E0();

  v17[0] = 0x8000000100AD2B30;
  v17[1] = "s the weather could feel like";
  v17[2] = 0;
  v17[3] = 0;
  sub_10022C350(&qword_100CC3020, &qword_100A5BCC8);
  sub_10051106C();
  sub_100513070();
  sub_10004E634(v17, sub_100513068, v11, &type metadata for SectionHeader);
  static AccessibilityChildBehavior.contain.getter();
  sub_10051398C(&unk_100CC3040);
  sub_100074AE8();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v1, v16);
  v12 = sub_100051E78();
  v13(v12, v6);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  sub_10000EAE8();
  sub_10022C350(&qword_100CB5DA0, &qword_100A495C8);
  v14 = sub_100069614();
  sub_10001C448(v14);
  sub_1001C9E84(v0);
  sub_100037B50();
  KeyPath = swift_getKeyPath();
  sub_100022C9C(KeyPath);
  sub_10000536C();
}

void sub_10050CD90()
{
  sub_10000C778();
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v17 = sub_10002475C();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000200F8();
  v6 = sub_10022C350(&qword_100CC2F20, &qword_100A5BC28);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014230();
  v8 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100AD2AD0;
  sub_1000080F4();
  v18._countAndFlagsBits = 0xD00000000000003DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v11, v12, v18);
  sub_1000285E0();

  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.projectedValue.getter();
  sub_10022C350(&qword_100CC2F28, &qword_100A5BC30);
  sub_10051106C();
  sub_100513E20(&unk_100CC2F30);
  sub_1005128D8();
  Section<>.init(header:footer:content:)();
  static AccessibilityChildBehavior.contain.getter();
  sub_10051292C();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v1, v17);
  v13 = sub_100051E78();
  v14(v13, v6);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CB5DA8, &qword_100A495D0);
  v15 = sub_100069614();
  sub_10001C448(v15);
  sub_1001C9E84(v0);
  sub_100037B50();
  KeyPath = swift_getKeyPath();
  sub_100022C9C(KeyPath);
  sub_10000536C();
}

uint64_t sub_10050D0CC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v15 = sub_10022C350(&qword_100CC2E88, &unk_100A5BAE8);
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - v6;
  v8 = static HorizontalAlignment.leading.getter();
  v21 = 0;
  sub_10050D450(__src);
  memcpy(v22, __src, sizeof(v22));
  memcpy(v23, __src, sizeof(v23));
  sub_100095588();
  sub_1000180EC(v23, &qword_100CC3150, &qword_100A5BE80);
  memcpy(&v20[7], v22, 0x70uLL);
  v19[0] = v8;
  v19[1] = 0;
  LOBYTE(v19[2]) = v21;
  memcpy(&v19[2] + 1, v20, 0x77uLL);
  static Edge.Set.horizontal.getter();
  v9 = sub_10022C350(&qword_100CC2E98, &unk_100A5BB00);
  v10 = sub_100513FAC(&unk_100CC2EA0);
  View.listRowInsets(_:_:)();
  memcpy(__src, v19, 0x88uLL);
  sub_1000180EC(__src, &qword_100CC2E98, &unk_100A5BB00);
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  sub_10022C350(&qword_100CC2E90, &qword_100A5BAF8);
  v19[0] = v9;
  v19[1] = v10;
  swift_getOpaqueTypeConformance2();
  v19[0] = &type metadata for Solarium;
  v19[1] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100510EE8();
  v12 = v15;
  v11 = v16;
  View.staticIf<A, B>(_:then:)();
  (*(v17 + 8))(v4, v11);
  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_10050D450@<X0>(uint64_t a1@<X8>)
{
  v1 = LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)(v1, v3, v2 & 1, v4, 0, 0, 0, "The report weather introduction string", 38, 2);
  v7 = v6;
  v9 = v8;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10010CD64(v5, v7, v9 & 1);

  static Color.primary.getter();
  v15 = Text.foregroundColor(_:)();
  v52 = v16;
  v53 = v15;
  v18 = v17;
  v54 = v19;

  sub_10010CD64(v10, v12, v14 & 1);

  v51 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v18 & 1;
  LOBYTE(v60[0]) = 0;
  v29 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v50) = 2;
  v33 = Text.init(_:tableName:bundle:comment:)(v29, v31, v30 & 1, v32, 0, 0, 0, "Describing that apple collects your feedback and location but is not associated with your Apple Account", 103, v50);
  v35 = v34;
  LOBYTE(v12) = v36;
  static Font.footnote.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;

  sub_10010CD64(v33, v35, v12 & 1);

  static Color.secondary.getter();
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_10010CD64(v37, v39, v41 & 1);

  __src[0] = v53;
  __src[1] = v52;
  LOBYTE(__src[2]) = v28;
  __src[3] = v54;
  LOBYTE(__src[4]) = v51;
  __src[5] = v21;
  __src[6] = v23;
  __src[7] = v25;
  __src[8] = v27;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(a1, __dst, 0x50uLL);
  *(a1 + 80) = v42;
  *(a1 + 88) = v44;
  *(a1 + 96) = v46 & 1;
  *(a1 + 104) = v48;
  sub_100095588();
  sub_10010CD54(v42, v44, v46 & 1);

  sub_10010CD64(v42, v44, v46 & 1);

  v60[0] = v53;
  v60[1] = v52;
  v61 = v28;
  *v62 = *v57;
  *&v62[3] = *&v57[3];
  v63 = v54;
  v64 = v51;
  *v65 = *v56;
  *&v65[3] = *&v56[3];
  v66 = v21;
  v67 = v23;
  v68 = v25;
  v69 = v27;
  v70 = 0;
  return sub_1000180EC(v60, &qword_100CA6438, &qword_100A31270);
}

uint64_t sub_10050D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_10022C350(&qword_100CC2E90, &qword_100A5BAF8) + 36));
  v5 = *(sub_10022C350(&qword_100CA5510, &qword_100A2F8D0) + 28);
  v6 = type metadata accessor for Text.Case();
  sub_10001B350(v4 + v5, 1, 1, v6);
  *v4 = swift_getKeyPath();
  v7 = sub_10022C350(&qword_100CC2E88, &unk_100A5BAE8);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_10050D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC3108, &qword_100A5BE18);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = sub_10022C350(&qword_100CC3100, &qword_100A5BE10);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v34 = v15;
  v35 = v14;
  v32[3] = v16;
  v33 = v17;
  v42 = *a1;
  v43 = *(a1 + 8);
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.projectedValue.getter();
  v18 = v48;
  v19 = v49;
  v20 = v50;
  swift_getKeyPath();
  v42 = v18;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  Binding.subscript.getter();

  v21 = v48;
  v22 = v49;
  v23 = v50;

  v45 = v21;
  v46 = v22;
  v47 = v23;
  sub_10022C350(&qword_100CC3120, &qword_100A5BE48);
  sub_100513A0C();
  sub_100513A60();
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  v24 = sub_100513FAC(&unk_100CC3110);
  v25 = v39;
  View.pickerStyle<A>(_:)();
  (*(v40 + 8))(v6, v25);
  (*(v36 + 8))(v9, v7);
  v42 = v7;
  *&v43 = v25;
  *(&v43 + 1) = v24;
  v44 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v26 = v41;
  v27 = v37;
  View.labelsHidden()();
  (*(v38 + 8))(v13, v27);
  v28 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CC30F0, &qword_100A5BE08);
  v31 = (v26 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v28;
  return result;
}

uint64_t sub_10050DCA4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10022C350(&qword_100CC3138, qword_100A5E050);
  sub_10022C350(&qword_100CC3140, &unk_100A5BE70);
  sub_100513FAC(&unk_100CC3148);
  sub_100513A0C();
  sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_100513FAC(&qword_100CAF788);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10050DE28@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  LOBYTE(a1) = *a1;
  v10[48] = a1;
  v10[16] = a1;
  Label.init(title:icon:)();
  (*(v5 + 32))(a2, v7, v4);
  result = sub_10022C350(&qword_100CA2D00, &qword_100A2C448);
  v9 = (a2 + *(result + 36));
  *v9 = a1;
  v9[1] = 1;
  return result;
}

uint64_t sub_10050DF8C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  Image.init(systemName:)();
  static Image.TemplateRenderingMode.macSafeOriginal.getter();
  v6 = type metadata accessor for Image.TemplateRenderingMode();
  sub_10001B350(v5, 0, 1, v6);
  v7 = Image.renderingMode(_:)();

  result = sub_1000180EC(v5, &qword_100CBB908, &unk_100A511B0);
  *a2 = v7;
  return result;
}

uint64_t sub_10050E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC30A0, &qword_100A5BD98);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = sub_10022C350(&qword_100CC3098, &qword_100A5BD90);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v34 = v15;
  v35 = v14;
  v32[3] = v16;
  v33 = v17;
  v42 = *a1;
  v43 = *(a1 + 8);
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.projectedValue.getter();
  v18 = v48;
  v19 = v49;
  v20 = v50;
  swift_getKeyPath();
  v42 = v18;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  Binding.subscript.getter();

  v21 = v48;
  v22 = v49;
  v23 = v50;

  v45 = v21;
  v46 = v22;
  v47 = v23;
  sub_10022C350(&qword_100CC30B8, &qword_100A5BDC8);
  sub_10051366C();
  sub_1005136C0();
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  v24 = sub_100513FAC(&unk_100CC30A8);
  v25 = v39;
  View.pickerStyle<A>(_:)();
  (*(v40 + 8))(v6, v25);
  (*(v36 + 8))(v9, v7);
  v42 = v7;
  *&v43 = v25;
  *(&v43 + 1) = v24;
  v44 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v26 = v41;
  v27 = v37;
  View.labelsHidden()();
  (*(v38 + 8))(v13, v27);
  v28 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CC3088, &qword_100A5BD88);
  v31 = (v26 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v28;
  return result;
}

uint64_t sub_10050E4DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10022C350(&qword_100CC30D0, &qword_100A5BDE8);
  sub_10022C350(&qword_100CC30D8, &unk_100A5BDF0);
  sub_100513FAC(&unk_100CC30E0);
  sub_10051366C();
  sub_10022E824(&qword_100CA2D08, &qword_100A2C450);
  sub_100513FAC(&unk_100CC2F00);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10050E69C@<X0>(uint64_t *a2@<X8>)
{
  v3 = Image.init(systemName:)();
  result = static Color.white.getter();
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_10050E71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC2ED0, &unk_100A5BB50);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = sub_10022C350(&qword_100CC2EC8, &qword_100A5BB48);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v34 = v15;
  v35 = v14;
  v32[3] = v16;
  v33 = v17;
  v42 = *a1;
  v43 = *(a1 + 8);
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.projectedValue.getter();
  v18 = v48;
  v19 = v49;
  v20 = v50;
  swift_getKeyPath();
  v42 = v18;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  Binding.subscript.getter();

  v21 = v48;
  v22 = v49;
  v23 = v50;

  v45 = v21;
  v46 = v22;
  v47 = v23;
  sub_10022C350(&qword_100CC2EE8, &unk_100A5BBB0);
  sub_100512658();
  sub_1005126AC();
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  v24 = sub_100513FAC(&unk_100CC2ED8);
  v25 = v39;
  View.pickerStyle<A>(_:)();
  (*(v40 + 8))(v6, v25);
  (*(v36 + 8))(v9, v7);
  v42 = v7;
  *&v43 = v25;
  *(&v43 + 1) = v24;
  v44 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v26 = v41;
  v27 = v37;
  View.labelsHidden()();
  (*(v38 + 8))(v13, v27);
  v28 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CC2EB0, &qword_100A5BB40);
  v31 = (v26 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v28;
  return result;
}

uint64_t sub_10050EB28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10022C350(&qword_100CC2F08, &qword_100A5BC10);
  sub_10022C350(&qword_100CC2F10, &unk_100A5BC18);
  sub_100513FAC(&unk_100CC2F18);
  sub_100512658();
  sub_10022E824(&qword_100CA2D08, &qword_100A2C450);
  sub_100513FAC(&unk_100CC2F00);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

void sub_10050ECE8()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CA2D08, &qword_100A2C450);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100014230();
  v13 = *v6;
  sub_10022C350(&qword_100CAF6F8, &unk_100A4A210);
  sub_10035B9E4();
  Label.init(title:icon:)();
  (*(v11 + 32))(v8, v0, v9);
  v14 = (v8 + *(sub_10022C350(v4, v2) + 36));
  *v14 = v13;
  v14[1] = 1;
  sub_10000536C();
}

uint64_t sub_10050EE30@<X0>(uint64_t *a2@<X8>)
{
  v3 = Image.init(systemName:)();
  result = static Color.white.getter();
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_10050EE7C(uint64_t a1)
{
  v1 = type metadata accessor for ReportWeatherContentView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v7[1] = &off_100C44140;
  swift_getKeyPath();
  sub_100512AB0();
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100512B08(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_10022C350(&qword_100CC3048, &qword_100A5BCF0);
  sub_10022C350(&qword_100CC3038, &qword_100A5BCD0);
  sub_100513FAC(&unk_100CC3050);
  sub_1005131A0();
  sub_100513FAC(&unk_100CC3030);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10050F080(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *a1;
  sub_100512AB0();
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100512B08(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + v8 + v6) = v7;
  v11[16] = v7;
  v12 = a2;
  sub_10022C350(&qword_100CC3060, &qword_100A5BCF8);
  sub_100513FAC(&unk_100CC3068);
  return Button.init(action:label:)();
}

uint64_t sub_10050F224(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();

  sub_10069A2F8();
  v7 = v6;

  v16 = v3;
  v17 = v4;
  v18 = v5;

  Binding.wrappedValue.getter();
  v13 = *(v14 + 304);

  if (v7)
  {
    sub_1008AF4D0();
  }

  else
  {
    sub_1006A15EC(&v15, a2, v8);
  }

  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1002D5FFC();
    v11 = v10;

    v9 = v11;
  }

  *(v9 + 304) = v13;

  Binding.wrappedValue.setter();
}

uint64_t sub_10050F3D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10022C350(&qword_100CC3070, &unk_100A5BD00);
  return sub_10050F43C(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_10050F43C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = a1;
  v34 = a3;
  v5 = type metadata accessor for Font.TextStyle();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = v4;
  v36 = v4;
  v35 = &v30 - v12;
  Label.init(title:icon:)();
  v38 = *a2;
  v39 = *(a2 + 1);
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();

  sub_10069A2F8();
  v14 = v13;

  v15 = 0;
  v16 = 0;
  KeyPath = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v14)
  {
    v16 = Image.init(systemName:)();
    v22 = v30;
    v21 = v31;
    (*(v30 + 104))(v7, enum case for Font.TextStyle.body(_:), v31);
    static Font.Weight.semibold.getter();
    v18 = static Font.system(_:weight:)();
    (*(v22 + 8))(v7, v21);
    KeyPath = swift_getKeyPath();
    v20 = static Color.blue.getter();
    v19 = swift_getKeyPath();

    v15 = 1;
  }

  v31 = v18;
  v32 = v9;
  v23 = *(v9 + 16);
  v24 = v33;
  v23(v33, v35, v8);
  v25 = v34;
  v23(v34, v24, v8);
  v26 = &v25[*(sub_10022C350(&qword_100CC3078, &qword_100A5BD10) + 48)];
  v27 = v31;
  sub_100513400(0, v15, v16);
  sub_100513470(0, v15, v16);
  *v26 = 0;
  *(v26 + 1) = v15;
  *(v26 + 2) = v16;
  *(v26 + 3) = KeyPath;
  *(v26 + 4) = v27;
  *(v26 + 5) = v19;
  *(v26 + 6) = v20;
  v28 = *(v32 + 8);
  v28(v35, v8);
  sub_100513470(0, v15, v16);
  return (v28)(v24, v8);
}

uint64_t sub_10050F850@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10050F8AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_10054206C(v2);
  if (v7)
  {
    Image.init(_:bundle:)();
  }

  else
  {
    Image.init(systemName:)();
  }

  v8 = v2;
  v9 = type metadata accessor for Image.TemplateRenderingMode();
  v10 = &enum case for Image.TemplateRenderingMode.template(_:);
  if (v8 >= 5)
  {
    v10 = &enum case for Image.TemplateRenderingMode.original(_:);
  }

  (*(*(v9 - 8) + 104))(v6, *v10, v9);
  type metadata accessor for Image.TemplateRenderingMode();
  sub_10001B350(v6, 0, 1, v9);
  v11 = Image.renderingMode(_:)();

  result = sub_1000180EC(v6, &qword_100CBB908, &unk_100A511B0);
  *a2 = v11;
  return result;
}

double sub_10050F9FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GridItem.Size();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for GridItem();
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10050B484(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v24 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v13 + 8))(v15, v12);
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  *v8 = xmmword_100A3C980;
  (*(v6 + 104))(v8, enum case for GridItem.Size.flexible(_:), v5);
  GridItem.init(_:spacing:alignment:)();
  sub_1008EFA4C(v11, v25);
  v34 = v25;
  v35 = a1;
  static HorizontalAlignment.center.getter();
  LODWORD(v37) = 0;
  sub_1001C8034(&qword_100CC0058);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022C350(&qword_100CC2F88, &qword_100A5BC58);
  sub_100512A00();
  v26 = v31;
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v37 = static Color.clear.getter();
  v27 = AnyView.init<A>(_:)();
  *(v26 + *(sub_10022C350(&qword_100CC2F40, &qword_100A5BC38) + 36)) = v27;
  v28 = v26 + *(sub_10022C350(&qword_100CC2F28, &qword_100A5BC30) + 36);
  *(v28 + 32) = 0;
  result = 0.0;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  return result;
}

uint64_t sub_10050FD98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReportWeatherContentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v9 = xmmword_100A5B9C0;
  swift_getKeyPath();
  sub_100512AB0();
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_100512B08(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10022C350(&qword_100CBD760, &unk_100A6AE90);
  sub_10022C350(&qword_100CC2FA0, &qword_100A5BC60);
  sub_100512BF0();
  sub_100513FAC(&unk_100CC2F98);
  return ForEach<>.init(_:id:content:)();
}

void sub_10050FF6C(unint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v87 = a2;
  v7 = type metadata accessor for PlainButtonStyle();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityTraits();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReportWeatherContentView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CC2FB8, &qword_100A5BC80);
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  v90 = sub_10022C350(&qword_100CC2FC0, &qword_100A5BC88);
  __chkstk_darwin(v90);
  v19 = &v72 - v18;
  v20 = sub_10022C350(&qword_100CC2FC8, &qword_100A5BC90);
  __chkstk_darwin(v20 - 8);
  v82 = &v72 - v21;
  v83 = sub_10022C350(&qword_100CC2FD0, &qword_100A5BC98);
  __chkstk_darwin(v83);
  v79 = &v72 - v22;
  v23 = sub_10022C350(&qword_100CC2FD8, &unk_100A5BCA0);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  v29 = *a1;
  if (*a1 > 7)
  {
    __break(1u);
  }

  else
  {
    v73 = &v72 - v26;
    v74 = v28;
    v75 = v27;
    v76 = v25;
    v77 = v7;
    v78 = a4;
    v30 = *(&off_100C44168 + v29 + 32);
    sub_100512AB0();
    v31 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v32 = v31 + v13;
    v33 = swift_allocObject();
    v34 = sub_100512B08(v14, v33 + v31);
    *(v33 + v32) = v30;
    __chkstk_darwin(v34);
    *(&v72 - 16) = v30;
    *(&v72 - 1) = a3;
    sub_10022C350(&qword_100CC2FE0, &unk_100A9E560);
    sub_100512CF4();
    v72 = v17;
    Button.init(action:label:)();
    v36 = *a3;
    v35 = *(a3 + 1);
    v37 = *(a3 + 2);
    v91 = *a3;
    v92 = v35;
    v93 = v37;
    sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
    Binding.wrappedValue.getter();

    sub_10069A4AC();
    v39 = v38;

    if (v39)
    {
      v40 = static Color.blue.getter();
    }

    else
    {
      v41 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      v40 = Color.init(_:)();
    }

    v42 = v40;
    v43 = static Edge.Set.all.getter();
    (*(v80 + 32))(v19, v72, v81);
    v44 = &v19[*(v90 + 36)];
    *v44 = v42;
    v44[8] = v43;
    v91 = v36;
    v92 = v35;
    v93 = v37;
    Binding.wrappedValue.getter();

    sub_10069A4AC();
    v46 = v45;

    if (v46)
    {
      v47 = v84;
      static AccessibilityTraits.isSelected.getter();
      v48 = v77;
      v49 = v86;
    }

    else
    {
      v91 = _swiftEmptyArrayStorage;
      sub_1001C8034(&qword_100CB3368);
      sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
      sub_100513FAC(&qword_100CB3370);
      v47 = v84;
      v49 = v86;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v48 = v77;
    }

    v50 = (v87 != 1) | v29 & 1 | (v29 == 0);
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 0x4028000000000000;
    }

    sub_100512DAC();
    v52 = v82;
    View.accessibilityAddTraits(_:)();
    (*(v85 + 8))(v47, v49);
    sub_1000180EC(v19, &qword_100CC2FC0, &qword_100A5BC88);
    v53 = v79;
    v54 = &v79[*(v83 + 36)];
    v55 = *(type metadata accessor for RoundedRectangle() + 20);
    v56 = enum case for RoundedCornerStyle.continuous(_:);
    v57 = type metadata accessor for RoundedCornerStyle();
    (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
    __asm { FMOV            V0.2D, #10.0 }

    *v54 = _Q0;
    *&v54[*(sub_10022C350(&qword_100CB34E0, &qword_100A5BCB0) + 36)] = 256;
    sub_100512E90(v52, v53);
    v63 = v88;
    PlainButtonStyle.init()();
    sub_100512F00();
    sub_1001C8034(&qword_100CB0848);
    v64 = v73;
    View.buttonStyle<A>(_:)();
    (*(v89 + 8))(v63, v48);
    sub_1000180EC(v53, &qword_100CC2FD0, &qword_100A5BC98);
    v66 = v74;
    v65 = v75;
    v67 = *(v75 + 16);
    v68 = v76;
    v67(v74, v64, v76);
    v69 = v78;
    *v78 = v51;
    *(v69 + 8) = 0;
    *(v69 + 9) = v50;
    v70 = sub_10022C350(&qword_100CC3010, &qword_100A5BCB8);
    v67(v69 + *(v70 + 48), v66, v68);
    v71 = *(v65 + 8);
    v71(v64, v68);
    v71(v66, v68);
  }
}

uint64_t sub_100510898(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();

  sub_10069A4AC();
  v7 = v6;

  if (v7)
  {
    v20 = v3;
    v21 = v4;
    v22 = v5;

    Binding.wrappedValue.getter();
    v18 = *(v19 + 312);

    sub_1008AF6D8();
    v8 = v18;
    v9 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1002D5FFC();
      v11 = v10;

LABEL_8:
      v9 = v11;
    }
  }

  else
  {
    v20 = v3;
    v21 = v4;
    v22 = v5;
    Binding.wrappedValue.getter();
    v8 = *(v16 + 312);

    sub_1006A17B0(&v20, a2);
    v20 = v3;
    v21 = v4;
    v22 = v5;
    Binding.wrappedValue.getter();

    sub_100542178(a2);
    sub_10069A4AC();
    v13 = v12;

    if (v13)
    {
      sub_1008AF6D8();
    }

    v20 = v3;
    v21 = v4;
    v22 = v5;

    Binding.wrappedValue.getter();
    v9 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1002D5FFC();
      v11 = v14;

      goto LABEL_8;
    }
  }

  *(v9 + 312) = v8;

  Binding.wrappedValue.setter();
}

void *sub_100510AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = sub_100542198(a1);
  __src[1] = v5;
  sub_10002D5A4();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  __src[0] = *a2;
  *&__src[1] = *(a2 + 8);
  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();

  sub_10069A4AC();
  LOBYTE(a2) = v11;

  if (a2)
  {
    static Font.Weight.semibold.getter();
  }

  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10010CD64(v6, v8, v10 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  result = memcpy((a3 + 32), __src, 0x70uLL);
  *(a3 + 144) = 0;
  return result;
}

uint64_t sub_100510C98()
{
  sub_100003A00();
  type metadata accessor for ReportWeatherView(0);
  sub_1009880C4();
  sub_1009880C4();
  v0 = sub_1003C4094(v2, v3);
  sub_10026AD10(v3);
  sub_10026AD10(v2);
  return v0 & 1;
}

uint64_t type metadata accessor for ReportWeatherContentView(uint64_t a1)
{
  result = qword_100CC2E10;
  if (!qword_100CC2E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100510D98(uint64_t a1)
{
  sub_100510E1C();
  if (v1 <= 0x3F)
  {
    sub_100510E6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100510E1C()
{
  if (!qword_100CC2E20)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC2E20);
    }
  }
}

void sub_100510E6C(uint64_t a1)
{
  if (!qword_100CB64B8)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB64B8);
    }
  }
}

unint64_t sub_100510EE8()
{
  result = qword_100CC2EA8;
  if (!qword_100CC2EA8)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CC2E90, &qword_100A5BAF8);
    v4[2] = sub_10022E824(&qword_100CC2E98, &unk_100A5BB00);
    v4[3] = sub_100513FAC(&unk_100CC2EA0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100513FAC(&qword_100CA5508);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2EA8);
  }

  return result;
}

unint64_t sub_10051106C()
{
  result = qword_100CC2EB8;
  if (!qword_100CC2EB8)
  {
    result = swift_getWitnessTable(byte_100A5BF90, &type metadata for SectionHeader, v0, v1);
    atomic_store(result, &qword_100CC2EB8);
  }

  return result;
}

unint64_t sub_1005110C0()
{
  result = qword_100CC2EC0;
  if (!qword_100CC2EC0)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CC2EB0, &qword_100A5BB40);
    v4 = sub_10022E824(&qword_100CC2EC8, &qword_100A5BB48);
    sub_10022E824(&qword_100CC2ED0, &unk_100A5BB50);
    type metadata accessor for InlinePickerStyle();
    v5[4] = sub_100513FAC(&unk_100CC2ED8);
    v5[5] = &protocol witness table for InlinePickerStyle;
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100513FAC(&qword_100CE0FF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CC2EC0);
  }

  return result;
}

uint64_t sub_100511244@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_10022C350(&qword_100CB8BD0, &qword_100A4CFA0);
  __chkstk_darwin(v45);
  v44 = &v42 - v2;
  v3 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v51 = type metadata accessor for AttributeContainer();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AttributedString.Runs.Index();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs.Run();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v57 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v42 - v12;
  v13 = type metadata accessor for AttributedString.Runs();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CC26F8, &unk_100A5B2C0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v21 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  AttributedString.init(localized:bundle:linkA:linkB:)();
  v59[0] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_100513F58();
  AttributedString.subscript.setter();
  v46 = a1;
  v22 = v9;
  AttributedString.runs.getter();
  (*(v14 + 16))(v20, v16, v13);
  v23 = *(v18 + 44);
  v24 = v13;
  v25 = sub_1001C8034(&qword_100CC2708);
  dispatch thunk of Collection.startIndex.getter();
  (*(v14 + 8))(v16, v24);
  ++v54;
  v49 = (v47 + 4);
  v50 = (v47 + 2);
  v26 = v25;
  ++v47;
  ++v48;
  v42 = v22;
  v43 = v5;
  v52 = v23;
  while (1)
  {
    v27 = v55;
    dispatch thunk of Collection.endIndex.getter();
    sub_1001C8034(&qword_100CC2710);
    v28 = v26;
    v29 = v24;
    v30 = v56;
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v54)(v27, v30);
    if (v31)
    {
      break;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v53;
    (*v50)(v53);
    v32(v59, 0);
    v34 = v29;
    dispatch thunk of Collection.formIndex(after:)();
    v35 = v57;
    (*v49)(v57, v33, v22);
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    AttributeContainer.subscript.getter();
    (*v48)(v7, v51);
    v36 = type metadata accessor for URL();
    LODWORD(v32) = sub_100024D10(v5, 1, v36);
    sub_1000180EC(v5, &qword_100CB3AB0, &unk_100A2FB80);
    v26 = v28;
    if (v32 != 1)
    {
      v37 = v44;
      AttributedString.Runs.Run.range.getter();
      v38 = static Color.blue.getter();
      sub_100513FAC(&qword_100CB8C08);
      v39 = AttributedString.subscript.modify();
      v58 = v38;
      v35 = v57;
      sub_1005041DC();
      AttributedSubstring.subscript.setter();
      v39(v59, 0);
      v40 = v37;
      v22 = v42;
      v5 = v43;
      sub_1000180EC(v40, &qword_100CB8BD0, &qword_100A4CFA0);
    }

    (*v47)(v35, v22);
    v24 = v34;
  }

  return sub_1000180EC(v20, &qword_100CC26F8, &unk_100A5B2C0);
}

uint64_t sub_1005119F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for AccessibilityActionKind();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CC3180, &qword_100A5BFF8);
  v34 = v13;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  sub_100511244(v12);
  v16 = Text.init(_:)();
  v32 = v17;
  v33 = v16;
  v19 = v18;
  v31 = v20;
  v38 = static Color.clear.getter();
  v30 = AnyView.init<A>(_:)();
  v21 = v19 & 1;
  v40 = v19 & 1;
  v39 = 0;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v24 = &v15[*(v13 + 36)];
  sub_10022C350(&qword_100CA5500, &qword_100A5C030);

  OpenURLAction.init(handler:)();
  *v24 = KeyPath;
  v25 = v32;
  *v15 = v33;
  *(v15 + 1) = v25;
  v15[16] = v21;
  v26 = v30;
  *(v15 + 3) = v31;
  *(v15 + 4) = v26;
  *(v15 + 40) = xmmword_100A5B9D0;
  *(v15 + 56) = xmmword_100A5B9E0;
  v15[72] = 0;
  static AccessibilityActionKind.default.getter();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = a3;
  sub_100513D3C();

  View.accessibilityAction(_:_:)();

  (*(v36 + 8))(v9, v37);
  return sub_1000180EC(v15, &qword_100CC3180, &qword_100A5BFF8);
}

uint64_t sub_100511D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();
  v4 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1002D5FFC();
    v6 = v5;

    v4 = v6;
  }

  *(v4 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView) = 1;
  Binding.wrappedValue.setter();

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100511E24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
  Binding.wrappedValue.getter();
  v3 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1002D5FFC();
    v5 = v4;

    v3 = v5;
  }

  *(v3 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView) = 1;
  Binding.wrappedValue.setter();
}

void sub_100511F20()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v22 = v8;
  v21 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = static HorizontalAlignment.leading.getter();
  v25 = 1;
  sub_1005121DC(v7, v5, v3, v1, v26);
  *&v24[7] = v26[0];
  *&v24[23] = v26[1];
  *&v24[39] = v26[2];
  *&v24[55] = v26[3];
  v23[0] = v14;
  v23[1] = 0;
  LOBYTE(v23[2]) = v25;
  memcpy(&v23[2] + 1, v24, 0x47uLL);
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  sub_10022C350(&qword_100CC3158, &qword_100A5BFE0);
  sub_10022C350(&qword_100CC3160, &qword_100A5BFE8);
  sub_100513FAC(&unk_100CC3168);
  v27[0] = &type metadata for Solarium;
  v27[1] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100513BF8();
  v15 = v22;
  v16 = v21;
  View.staticIf<A, B>(_:then:)();
  (*(v10 + 8))(v13, v16);
  memcpy(v27, v23, 0x58uLL);
  sub_1000180EC(v27, &qword_100CC3158, &qword_100A5BFE0);
  v17 = (v15 + *(sub_10022C350(&qword_100CC3178, &qword_100A5BFF0) + 36));
  v18 = *(sub_10022C350(&qword_100CA5510, &qword_100A2F8D0) + 28);
  v19 = type metadata accessor for Text.Case();
  sub_10001B350(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  sub_10000536C();
}

uint64_t sub_1005121DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v63 = a2;
  v11 = sub_10002D5A4();

  v56 = v11;
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v54 = *(v8 + 104);
  v55 = v8 + 104;
  v54(v10, enum case for Font.TextStyle.title3(_:), v7);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  v17 = *(v8 + 8);
  v58 = v8 + 8;
  v59 = v7;
  v53 = v17;
  v17(v10, v7);
  v18 = Text.font(_:)();
  v20 = v19;
  LOBYTE(v8) = v21;

  sub_10010CD64(v12, v14, v16 & 1);

  static Color.white.getter();
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  LODWORD(v26) = v25;
  v28 = v27;

  sub_10010CD64(v18, v20, v8 & 1);

  if (v60)
  {
    v62 = v57;
    v63 = v60;

    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    LODWORD(v57) = v26;
    v34 = v59;
    v54(v10, enum case for Font.TextStyle.subheadline(_:), v59);
    static Font.Weight.regular.getter();
    static Font.system(_:weight:)();
    v53(v10, v34);
    v26 = Text.font(_:)();
    v59 = v22;
    v60 = v28;
    v36 = v35;
    v38 = v37;
    v58 = v24;

    sub_10010CD64(v29, v31, v33 & 1);

    static Color.gray.getter();
    v39 = Text.foregroundColor(_:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = v38 & 1;
    v47 = v26;
    LOBYTE(v26) = v57;
    v48 = v36;
    v22 = v59;
    v28 = v60;
    sub_10010CD64(v47, v48, v46);
    v24 = v58;

    v49 = v43 & 1;
    sub_10010CD54(v39, v41, v49);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v49 = 0;
    v45 = 0;
  }

  LOBYTE(v62) = v26 & 1;
  sub_10010CD54(v22, v24, v26 & 1);

  sub_100148118(v39, v41, v49, v45);
  sub_10014A53C(v39, v41, v49, v45);
  v50 = v61;
  *v61 = v22;
  v50[1] = v24;
  *(v50 + 16) = v26 & 1;
  v50[3] = v28;
  v50[4] = v39;
  v50[5] = v41;
  v50[6] = v49;
  v50[7] = v45;
  sub_10014A53C(v39, v41, v49, v45);
  sub_10010CD64(v22, v24, v26 & 1);
}

uint64_t sub_1005125C8@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x58uLL);
  *(a2 + 88) = xmmword_100A5B9F0;
  *(a2 + 104) = xmmword_100A5BA00;
  *(a2 + 120) = 0;
  return sub_100095588();
}

unint64_t sub_100512658()
{
  result = qword_100CC2EF0;
  if (!qword_100CC2EF0)
  {
    result = swift_getWitnessTable(aQ_54, &unk_100C5D210, v0, v1);
    atomic_store(result, &qword_100CC2EF0);
  }

  return result;
}

unint64_t sub_1005126AC()
{
  result = qword_100CC2EF8;
  if (!qword_100CC2EF8)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = sub_10022E824(&qword_100CC2EE8, &unk_100A5BBB0);
    v4[1] = sub_10022E824(&qword_100CA2D08, &qword_100A2C450);
    v4[2] = &unk_100C5D210;
    v4[3] = sub_100513FAC(&unk_100CC2F00);
    v4[4] = sub_100512658();
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC2EF8);
  }

  return result;
}

unint64_t sub_1005127F4()
{
  result = qword_100CC2F38;
  if (!qword_100CC2F38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2F40, &qword_100A5BC38);
    v4[0] = sub_100513FAC(&unk_100CC2F48);
    v4[1] = sub_100513FAC(&qword_100CC2F58);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2F38);
  }

  return result;
}

unint64_t sub_1005128D8()
{
  result = qword_100CC2F78;
  if (!qword_100CC2F78)
  {
    result = swift_getWitnessTable(asc_100A5BF40, &type metadata for SubmitFeedbackView, v0, v1);
    atomic_store(result, &qword_100CC2F78);
  }

  return result;
}

unint64_t sub_10051292C()
{
  result = qword_100CC2F80;
  if (!qword_100CC2F80)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CC2F20, &qword_100A5BC28);
    v4[0] = sub_10051106C();
    v4[1] = sub_100513E20(&unk_100CC2F30);
    v4[2] = sub_1005128D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC2F80);
  }

  return result;
}

unint64_t sub_100512A00()
{
  result = qword_100CC2F90;
  if (!qword_100CC2F90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC2F88, &qword_100A5BC58);
    v4[0] = sub_100513FAC(&unk_100CC2F98);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC2F90);
  }

  return result;
}

uint64_t sub_100512AB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100512B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100512B6C(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ReportWeatherContentView(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_10050FF6C(a1, v6, v7, a2);
}

unint64_t sub_100512BF0()
{
  result = qword_100CC2FA8;
  if (!qword_100CC2FA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBD760, &unk_100A6AE90);
    v4[0] = &protocol witness table for Int;
    v4[1] = sub_100512C7C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v3, v4);
    atomic_store(result, &qword_100CC2FA8);
  }

  return result;
}

unint64_t sub_100512C7C()
{
  result = qword_100CC2FB0;
  if (!qword_100CC2FB0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_100CC2FB0);
  }

  return result;
}

unint64_t sub_100512CF4()
{
  result = qword_100CC2FE8;
  if (!qword_100CC2FE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2FE0, &unk_100A9E560);
    v4[0] = sub_1003F04CC();
    v4[1] = sub_100513FAC(&qword_100CBDD58);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2FE8);
  }

  return result;
}

unint64_t sub_100512DAC()
{
  result = qword_100CC2FF0;
  if (!qword_100CC2FF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2FC0, &qword_100A5BC88);
    v4[0] = sub_100513FAC(&unk_100CC2FF8);
    v4[1] = sub_100513FAC(&qword_100CC0538);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC2FF0);
  }

  return result;
}

uint64_t sub_100512E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC2FC8, &qword_100A5BC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100512F00()
{
  result = qword_100CC3000;
  if (!qword_100CC3000)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC2FD0, &qword_100A5BC98);
    v4[0] = sub_100512FE4(&unk_100CC3008);
    v4[1] = sub_100513FAC(&qword_100CB80A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC3000);
  }

  return result;
}

unint64_t sub_100512FE4(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_1000138FC(0, v4, v5);
    v2();
    v6 = sub_1001C8034(&qword_100CE1750);
    result = sub_1000043E8(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100513070()
{
  result = qword_100CC3028;
  if (!qword_100CC3028)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC3020, &qword_100A5BCC8);
    v4[0] = sub_100513FAC(&unk_100CC3030);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC3028);
  }

  return result;
}

uint64_t sub_100513120(char *a1)
{
  v3 = *(type metadata accessor for ReportWeatherContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10050F080(a1, v4);
}

unint64_t sub_1005131A0()
{
  result = qword_100CC3058;
  if (!qword_100CC3058)
  {
    result = swift_getWitnessTable(byte_100A5E8D8, &unk_100C5D180, v0, v1);
    atomic_store(result, &qword_100CC3058);
  }

  return result;
}

uint64_t sub_1005131F4()
{
  type metadata accessor for ReportWeatherContentView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100513328(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ReportWeatherContentView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t sub_100513400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100513470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1005134E8()
{
  result = qword_100CC3090;
  if (!qword_100CC3090)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CC3088, &qword_100A5BD88);
    v4 = sub_10022E824(&qword_100CC3098, &qword_100A5BD90);
    sub_10022E824(&qword_100CC30A0, &qword_100A5BD98);
    type metadata accessor for InlinePickerStyle();
    v5[4] = sub_100513FAC(&unk_100CC30A8);
    v5[5] = &protocol witness table for InlinePickerStyle;
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100513FAC(&qword_100CE0FF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CC3090);
  }

  return result;
}

unint64_t sub_10051366C()
{
  result = qword_100CC30C0;
  if (!qword_100CC30C0)
  {
    result = swift_getWitnessTable(byte_100A5E958, &unk_100C5D2A0, v0, v1);
    atomic_store(result, &qword_100CC30C0);
  }

  return result;
}

unint64_t sub_1005136C0()
{
  result = qword_100CC30C8;
  if (!qword_100CC30C8)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = sub_10022E824(&qword_100CC30B8, &qword_100A5BDC8);
    v4[1] = sub_10022E824(&qword_100CA2D08, &qword_100A2C450);
    v4[2] = &unk_100C5D2A0;
    v4[3] = sub_100513FAC(&unk_100CC2F00);
    v4[4] = sub_10051366C();
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC30C8);
  }

  return result;
}

unint64_t sub_100513808()
{
  result = qword_100CC30F8;
  if (!qword_100CC30F8)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CC30F0, &qword_100A5BE08);
    v4 = sub_10022E824(&qword_100CC3100, &qword_100A5BE10);
    sub_10022E824(&qword_100CC3108, &qword_100A5BE18);
    type metadata accessor for InlinePickerStyle();
    v5[4] = sub_100513FAC(&unk_100CC3110);
    v5[5] = &protocol witness table for InlinePickerStyle;
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100513FAC(&qword_100CE0FF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CC30F8);
  }

  return result;
}

unint64_t sub_10051398C(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v6 = sub_1000138FC(0, v4, v5);
    v7[0] = sub_10051106C();
    v7[1] = v2();
    v7[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v6, v7);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100513A0C()
{
  result = qword_100CC3128;
  if (!qword_100CC3128)
  {
    result = swift_getWitnessTable(byte_100A5E998, &unk_100C5D330, v0, v1);
    atomic_store(result, &qword_100CC3128);
  }

  return result;
}

unint64_t sub_100513A60()
{
  result = qword_100CC3130;
  if (!qword_100CC3130)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = sub_10022E824(&qword_100CC3120, &qword_100A5BE48);
    v4[1] = sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
    v4[2] = &unk_100C5D330;
    v4[3] = sub_100513FAC(&qword_100CAF788);
    v4[4] = sub_100513A0C();
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC3130);
  }

  return result;
}

unint64_t sub_100513BF8()
{
  result = qword_100CC3170;
  if (!qword_100CC3170)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC3160, &qword_100A5BFE8);
    v4[0] = sub_100513FAC(&unk_100CC3168);
    v4[1] = sub_100513FAC(&qword_100CC2F68);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC3170);
  }

  return result;
}

uint64_t sub_100513CE8()
{

  return swift_deallocObject();
}

unint64_t sub_100513D3C()
{
  result = qword_100CC3188;
  if (!qword_100CC3188)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC3180, &qword_100A5BFF8);
    v4[0] = sub_100513E20(&unk_100CC3190);
    v4[1] = sub_100513FAC(&qword_100CA54F8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC3188);
  }

  return result;
}

unint64_t sub_100513E20(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    sub_1000138FC(0, v4, v5);
    v2();
    v6 = sub_100513FAC(&qword_100CC2F68);
    result = sub_1000043E8(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100513EA0()
{
  result = qword_100CC31A0;
  if (!qword_100CC31A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC31A8, &unk_100A5C040);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100513FAC(&qword_100CC2F58);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC31A0);
  }

  return result;
}

unint64_t sub_100513F58()
{
  result = qword_100CC31B0;
  if (!qword_100CC31B0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.UIKitAttributes.FontAttribute, &type metadata for AttributeScopes.UIKitAttributes.FontAttribute, v0, v1);
    atomic_store(result, &qword_100CC31B0);
  }

  return result;
}

unint64_t sub_100513FAC(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v6 = sub_1000138FC(0, v4, v5);
    result = swift_getWitnessTable(v2, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100513FE4()
{
  result = qword_100CC31B8;
  if (!qword_100CC31B8)
  {
    v4[14] = v0;
    v4[15] = v1;
    v3 = sub_10022E824(&qword_100CC3178, &qword_100A5BFF0);
    v4[2] = sub_10022E824(&qword_100CC3158, &qword_100A5BFE0);
    v4[3] = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v4[4] = sub_10022E824(&qword_100CC3160, &qword_100A5BFE8);
    v4[5] = sub_100513FAC(&unk_100CC3168);
    v4[6] = swift_getOpaqueTypeConformance2();
    v4[7] = sub_100513BF8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100513FAC(&qword_100CA5508);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC31B8);
  }

  return result;
}

uint64_t sub_10051419C(char a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  *(v5 - v4) = a1;
  type metadata accessor for ModalViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v8, v7);
  sub_1000180EC(v11, &unk_100CD81B0, &unk_100A3B000);
  sub_10001EF28();
  return sub_10004F7D8(v6, v9);
}

uint64_t sub_100514284()
{
  sub_1000161C0((v0 + 104), *(v0 + 128));
  swift_allocObject();
  swift_weakInit();

  sub_10001849C();
  dispatch thunk of NotificationAuthorizationManagerType.requestAuthorization(_:)();
}

uint64_t sub_100514320(uint64_t result, uint64_t a2)
{
  if (result)
  {

    asyncMain(block:)();
  }

  return result;
}

uint64_t sub_100514380(uint64_t a1)
{
  v1 = type metadata accessor for MainAction(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v11 = *(v2 + 72);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v27 = v10;
    v26 = v12 + 2 * v11;
    v13 = swift_allocObject();
    v25 = xmmword_100A2D320;
    *(v13 + 16) = xmmword_100A2D320;
    v28 = v12;
    type metadata accessor for NotificationsOptInAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB1AB8, &unk_100A42080);
    static NotificationSubscription.Location.current.getter();
    static NotificationSubscription.Kind.all.getter();
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    v14 = swift_storeEnumTagMultiPayload();
    v33 = v13;
    (*(v9 + 16))(v29, v14);
    v15 = v29[0];
    v16 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_100181720(v15 + v16, v7, type metadata accessor for EnvironmentState);

    v17 = v7[2];
    sub_10004F7D8(v7, type metadata accessor for EnvironmentState);
    if (v17 > 3 || v17 == 2)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v25;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      static PredictedLocationsNotificationSubscription.Kind.severe.getter();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10018E468(v19);
    }

    *v4 = 3;
    type metadata accessor for ModalViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v20 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v20 = v23;
    }

    v21 = *(v20 + 16);
    if (v21 >= *(v20 + 24) >> 1)
    {
      sub_10004FF70();
      v20 = v24;
    }

    *(v20 + 16) = v21 + 1;
    sub_1000CA208(v4, v20 + v28 + v21 * v11);
    v22 = *(v9 + 48);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_10006D53C(v31, v29);
    v29[5] = v20;
    v30 = 0;
    sub_10004F1B0(v29, v22);

    sub_1000180EC(v29, &qword_100CA3510, &unk_100A2D540);
    return sub_1000180EC(v31, &unk_100CD81B0, &unk_100A3B000);
  }

  return result;
}

uint64_t sub_1005147B0(char a1)
{
  if (a1 == 2)
  {
    sub_1000207D4((v1 + 104));
    dispatch thunk of NotificationAuthorizationManagerType.requestAuthorization()();
  }

  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  sub_100003DDC();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3BBA0;
  type metadata accessor for NotificationsOptInAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CB1AB8, &unk_100A42080);
  static NotificationSubscription.Location.current.getter();
  static NotificationSubscription.Kind.severe.getter();
  type metadata accessor for NotificationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v6 + v5 + 2 * v3) = 0;
  type metadata accessor for ModalViewAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  v7 = swift_storeEnumTagMultiPayload();
  v15 = sub_1000087C0(v7, v8, v9, v10, v11, v12, v13, v14, v24, *v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v34);
  sub_100028614(v15, v16, v17, v18, v19, v20, v21, v22, v25, *v26, v27, v28, v29, v30, v6, v32);
  sub_1000180EC(v26, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v33, &unk_100CD81B0, &unk_100A3B000);
}

void sub_100514984()
{
  sub_10000C778();
  v33 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v36 = v1;
  __chkstk_darwin(v2);
  sub_1000038E4();
  v32 = v3;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v34 = v5;
  v35 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchTime();
  v31 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  *(v19 - v18) = 4;
  type metadata accessor for ModalViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_10004F034(v20, &v37, v21, v22);
  sub_1000180EC(&v37, &unk_100CD81B0, &unk_100A3B000);
  sub_10001EF28();
  sub_10004F7D8(v20, v23);
  sub_100040690();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v13, v9);
  v39 = sub_1005169E4;
  v40 = v0;
  *&v37 = _NSConcreteStackBlock;
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_1000742F0;
  *(&v38 + 1) = &unk_100C5C118;
  v26 = _Block_copy(&v37);

  static DispatchQoS.unspecified.getter();
  *&v37 = _swiftEmptyArrayStorage;
  sub_10001480C();
  sub_1000673FC(v27, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v29 = v32;
  v30 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v36 + 8))(v29, v30);
  (*(v34 + 8))(v8, v35);
  v25(v16, v31);
  sub_10000536C();
}

uint64_t sub_100514D6C(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v6, v5);
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  return sub_10004F7D8(v4, type metadata accessor for MainAction);
}

void sub_100514E68()
{
  sub_10000C778();
  v115 = v3;
  v120 = v4;
  v121 = v5;
  v116 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v117 = v7;
  v106 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v105 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v104 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v102 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v108 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v100 = v14;
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100031618();
  __chkstk_darwin(v16);
  v18 = sub_100003918(v99 - v17);
  v19 = type metadata accessor for EnvironmentState(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = sub_100003918(v21);
  v112 = type metadata accessor for NotificationsOptInState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v111 = v24;
  v25 = sub_10022C350(&qword_100CC32A0, &unk_100A5C140);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000115E8();
  v118 = type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v113 = v27;
  __chkstk_darwin(v28);
  sub_1000038E4();
  v119 = v29;
  v30 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = v99 - v32;
  v34 = type metadata accessor for LocationsState(0);
  v35 = v34 - 8;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v38 = v37 - v36;
  v39 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100003C38();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  sub_100024778();
  v47();
  v48 = v122[0];
  sub_100013924();
  sub_100181720(v48 + v49, v38, v50);

  v51 = *(v38 + *(v35 + 48));

  sub_100017964();
  sub_100879FB8(v120, v121, v51);

  if (sub_100024D10(v33, 1, v39) == 1)
  {
    v52 = &unk_100CE2F20;
    v53 = &unk_100A2D7D0;
    v54 = v33;
LABEL_5:
    sub_1000180EC(v54, v52, v53);
    goto LABEL_20;
  }

  (*(v41 + 32))(v0, v33, v39);
  (*(v41 + 16))(v45, v0, v39);
  NotificationSubscription.Location.init(_:)();
  v55 = v118;
  v56 = v0;
  if (sub_100024D10(v2, 1, v118) == 1)
  {
    (*(v41 + 8))(v0, v39);
    v52 = &qword_100CC32A0;
    v53 = &unk_100A5C140;
    v54 = v2;
    goto LABEL_5;
  }

  v120 = v41;
  v121 = v39;
  v57 = v113;
  v58 = sub_10003A21C();
  v60 = v59(v58);
  v61 = v110;
  v110(v122, v60);
  v62 = sub_100049894(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v63 = v111;
  sub_100181720(v62, v111, v64);

  v65 = v63[*(v112 + 64)];
  sub_10004E654();
  v67 = sub_10004F7D8(v63, v66);
  v68 = v114;
  v112 = v56;
  if ((v65 & 1) == 0)
  {
    v61(v122, v67);
    v69 = v122[0];
    sub_100024198();
    v70 = sub_100074AFC();
    v1 = v109;
    sub_100181720(v70, v109, v71);

    sub_100069630();
    if (v69 != 2)
    {
      LocationModel.kind.getter();
      v72 = Location.Identifier.Kind.rawValue.getter();
      v1 = v73;
      v74 = Location.Identifier.Kind.rawValue.getter();
      if (v72 == v74 && v1 == v75)
      {
      }

      else
      {
        v77 = sub_1000115F8(v74);

        if ((v77 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      sub_1000207D4((v68 + 64));
      dispatch thunk of LocationManagerType.requestAlwaysAuthorization()();
      sub_100040690();
      v110 = static OS_dispatch_queue.main.getter();
      v78 = v99[1];
      static DispatchTime.now()();
      + infix(_:_:)();
      v111 = *(v100 + 8);
      (v111)(v78, v108);
      sub_1000285F0();
      sub_100004418(COERCE_DOUBLE(1107296256));
      v122[2] = v79;
      v122[3] = &unk_100C5C140;
      v80 = _Block_copy(v122);

      v63 = v101;
      static DispatchQoS.unspecified.getter();
      v122[0] = _swiftEmptyArrayStorage;
      sub_10001480C();
      sub_1000673FC(v81, v82, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_1000743E8();
      v83 = v103;
      v84 = v106;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v56 = v107;
      v1 = v110;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v80);

      sub_10000E73C();
      v85(v83, v84);
      sub_10000E73C();
      v86(v63, v104);
      (v111)(v56, v108);
    }
  }

LABEL_16:
  if (v115)
  {
    sub_10022C350(&qword_100CB1AB8, &unk_100A42080);
    v87 = sub_10000CBBC();
    v88(v87);
    static NotificationSubscription.Kind.precipitation.getter();
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    sub_10001161C(v56);
    sub_10001997C();
    sub_10001849C();
    sub_10004F034(v89, v90, v91, v92);
    sub_1000180EC(v122, &unk_100CD81B0, &unk_100A3B000);
    sub_10001EF28();
    sub_10004F7D8(v56, v93);
    (*(v57 + 8))(v63, v55);
  }

  else
  {
    sub_10022C350(&qword_100CB1AB0, &unk_100A5C150);
    sub_1000214D8();
    static NotificationSubscription.Kind.precipitation.getter();
    type metadata accessor for NotificationsAction(0);
    sub_100022CAC();
    swift_storeEnumTagMultiPayload();
    sub_10001161C(v63);
    sub_10001997C();
    sub_10001849C();
    sub_10004F034(v94, v95, v96, v97);
    sub_1000180EC(v122, &unk_100CD81B0, &unk_100A3B000);
    sub_10001EF28();
    sub_10004F7D8(v63, v98);
    (*(v57 + 8))(v1, v55);
  }

  (*(v120 + 8))(v112, v121);
LABEL_20:
  sub_10000536C();
}

void sub_1005157A8()
{
  sub_10000C778();
  v117 = v3;
  v122 = v4;
  v123 = v5;
  v118 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v119 = v7;
  v107 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v106 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v105 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v104[3] = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v109 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v111 = v14;
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100031618();
  __chkstk_darwin(v16);
  v18 = sub_100003918(v104 - v17);
  v19 = type metadata accessor for EnvironmentState(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = sub_100003918(v21);
  v114 = type metadata accessor for NotificationsOptInState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v113 = v24;
  v25 = sub_10022C350(&qword_100CC32A0, &unk_100A5C140);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000115E8();
  v120 = type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v115 = v27;
  __chkstk_darwin(v28);
  sub_1000038E4();
  v121 = v29;
  v30 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = v104 - v32;
  v34 = type metadata accessor for LocationsState(0);
  v35 = v34 - 8;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v38 = v37 - v36;
  v39 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100003C38();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  sub_100024778();
  v47();
  v48 = v124[0];
  sub_100013924();
  sub_100181720(v48 + v49, v38, v50);
  v51 = v39;

  v52 = *(v38 + *(v35 + 48));

  sub_100017964();
  sub_100879FB8(v122, v123, v52);

  if (sub_100024D10(v33, 1, v39) == 1)
  {
    v53 = &unk_100CE2F20;
    v54 = &unk_100A2D7D0;
    v55 = v33;
LABEL_5:
    sub_1000180EC(v55, v53, v54);
    goto LABEL_20;
  }

  (*(v41 + 32))(v0, v33, v39);
  (*(v41 + 16))(v45, v0, v39);
  NotificationSubscription.Location.init(_:)();
  v56 = v120;
  v57 = v0;
  if (sub_100024D10(v2, 1, v120) == 1)
  {
    (*(v41 + 8))(v0, v51);
    v53 = &qword_100CC32A0;
    v54 = &unk_100A5C140;
    v55 = v2;
    goto LABEL_5;
  }

  v123 = v51;
  v58 = v115;
  v59 = sub_10003A21C();
  v61 = v60(v59);
  v62 = v112;
  v112(v124, v61);
  v63 = sub_100049894(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v64 = v113;
  sub_100181720(v63, v113, v65);

  v66 = *(v64 + *(v114 + 64));
  sub_10004E654();
  v68 = sub_10004F7D8(v64, v67);
  v69 = v116;
  if ((v66 & 1) == 0)
  {
    v62(v124, v68);
    v70 = v124[0];
    sub_100024198();
    v71 = sub_100074AFC();
    v1 = v110;
    sub_100181720(v71, v110, v72);

    sub_100069630();
    if (v70 != 2)
    {
      LocationModel.kind.getter();
      v73 = Location.Identifier.Kind.rawValue.getter();
      v1 = v74;
      v75 = Location.Identifier.Kind.rawValue.getter();
      if (v73 == v75 && v1 == v76)
      {
      }

      else
      {
        v78 = sub_1000115F8(v75);

        if ((v78 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      sub_1000207D4((v69 + 64));
      dispatch thunk of LocationManagerType.requestAlwaysAuthorization()();
      sub_100040690();
      v114 = static OS_dispatch_queue.main.getter();
      v79 = v104[1];
      static DispatchTime.now()();
      + infix(_:_:)();
      sub_10000E73C();
      v111 = v80;
      v122 = v81;
      v81(v79, v109);
      sub_1000285F0();
      sub_100004418(COERCE_DOUBLE(1107296256));
      v124[2] = v82;
      v124[3] = &unk_100C5C168;
      v83 = _Block_copy(v124);

      v84 = v104[2];
      static DispatchQoS.unspecified.getter();
      v124[0] = _swiftEmptyArrayStorage;
      sub_10001480C();
      sub_1000673FC(v85, v86, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_1000743E8();
      v62 = v104[4];
      v113 = v41;
      v87 = v57;
      v88 = v107;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v64 = v108;
      v1 = v114;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v83);

      sub_10000E73C();
      v89 = v88;
      v57 = v87;
      v41 = v113;
      v90(v62, v89);
      sub_10000E73C();
      v91(v84, v105);
      v122(v64, v109);
    }
  }

LABEL_16:
  sub_1000207D4((v69 + 104));
  dispatch thunk of NotificationAuthorizationManagerType.requestAuthorization()();
  if (v117)
  {
    sub_10022C350(&qword_100CB1AB8, &unk_100A42080);
    v92 = sub_10000CBBC();
    v93(v92);
    static NotificationSubscription.Kind.severe.getter();
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    sub_10001161C(v64);
    sub_10001997C();
    sub_10001849C();
    sub_10004F034(v94, v95, v96, v97);
    sub_1000180EC(v124, &unk_100CD81B0, &unk_100A3B000);
    sub_10001EF28();
    sub_10004F7D8(v64, v98);
    (*(v58 + 8))(v62, v56);
  }

  else
  {
    sub_10022C350(&qword_100CB1AB0, &unk_100A5C150);
    sub_1000214D8();
    static NotificationSubscription.Kind.severe.getter();
    type metadata accessor for NotificationsAction(0);
    sub_100022CAC();
    swift_storeEnumTagMultiPayload();
    sub_10001161C(v62);
    sub_10001997C();
    sub_10001849C();
    sub_10004F034(v99, v100, v101, v102);
    sub_1000180EC(v124, &unk_100CD81B0, &unk_100A3B000);
    sub_10001EF28();
    sub_10004F7D8(v62, v103);
    (*(v58 + 8))(v1, v56);
  }

  (*(v41 + 8))(v57, v123);
LABEL_20:
  sub_10000536C();
}

uint64_t sub_100516118(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(v4 - v3) = 5;
  type metadata accessor for ModalViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v5, v8, v7, v6);
  sub_1000180EC(v11, &unk_100CD81B0, &unk_100A3B000);
  sub_10001EF28();
  return sub_10004F7D8(v5, v9);
}

uint64_t sub_1005161F0(char a1)
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  sub_100003DDC();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2D320;
  static PredictedLocationsNotificationSubscription.Kind.severe.getter();
  type metadata accessor for NotificationsAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  v2 = swift_storeEnumTagMultiPayload();
  v10 = sub_1000087C0(v2, v3, v4, v5, v6, v7, v8, v9, v19, *v21, v22, v23, v24, v25, v26, v27, v28[0], v28[1], v29);
  sub_100028614(v10, v11, v12, v13, v14, v15, v16, v17, v20, *v21, v22, v23, v24, v25, v1, v27);
  sub_1000180EC(v21, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v28, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_10051635C()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  result = sub_1008CA570(1);
  if (result)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    type metadata accessor for ListViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10000FE08();
    sub_10004F034(v4, v8, v7, v6);
    sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
    sub_10001EF28();
    return sub_10004F7D8(v4, v9);
  }

  return result;
}

void sub_10051644C()
{
  sub_10000C778();
  v2 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = type metadata accessor for URL();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for NotificationsConfiguration();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_1000115E8();
  v18 = type metadata accessor for AppConfigurationState(v17);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  (*(v0 + 16))(&v36);
  sub_100181720(v36 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v22, type metadata accessor for AppConfigurationState);

  AppConfiguration.notifications.getter();
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v23 + 8))(v22);
  NotificationsConfiguration.learnMoreURL.getter();
  v25 = v24;
  (*(v15 + 8))(v1, v13);
  if (v25)
  {
    URL.init(string:)();

    if (sub_100024D10(v5, 1, v6) != 1)
    {
      (*(v8 + 32))(v12, v5, v6);
      v30 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1000673FC(&qword_100CA3040, type metadata accessor for OpenExternalURLOptionsKey, aM_29);
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v30 openURL:v33 options:isa completionHandler:0];

      (*(v8 + 8))(v12, v6);
      goto LABEL_10;
    }

    sub_1000180EC(v5, &qword_100CB3AB0, &unk_100A2FB80);
  }

  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000703C(v26, qword_100D90B38);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "App configuration has not specified a valid notifications support page URL", v29, 2u);
  }

LABEL_10:
  sub_10000536C();
}

void *sub_100516880()
{

  sub_100006F14(v0 + 8);
  sub_100006F14(v0 + 13);

  sub_100006F14(v0 + 19);
  sub_100006F14(v0 + 24);
  return v0;
}

uint64_t sub_1005168E4()
{
  sub_100516880();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AveragesDetailViewModel(uint64_t a1)
{
  result = qword_100CC3318;
  if (!qword_100CC3318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100516A68(uint64_t a1)
{
  sub_100516B10(319, &qword_100CC3328, &type metadata for AveragesKind);
  if (v1 <= 0x3F)
  {
    sub_100516B10(319, &qword_100CC3330, &type metadata for AveragesDetailViewModel.Condition);
    if (v2 <= 0x3F)
    {
      sub_100516B78(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100516B10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100516B78(uint64_t a1)
{
  if (!qword_100CC3338)
  {
    type metadata accessor for Location();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC3338);
    }
  }
}

uint64_t sub_100516BF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100516C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100516CBC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100AD2EF0;
  v1._countAndFlagsBits = 0x7365676172657641;
  v2._object = 0x8000000100AD2ED0;
  v5._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0xE800000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100516D7C()
{
  type metadata accessor for AveragesDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100517BDC(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = *v3 >= 0;

      v5 = &qword_100CC3380;
      v6 = &unk_100A5C2B0;
      goto LABEL_4;
    case 3u:

      v4 = v3[96];
      v7 = (sub_10022C350(&qword_100CC3378, &unk_100A66C40) + 64);
      break;
    default:
      v4 = *v3;
      v5 = &qword_100CC3388;
      v6 = &qword_100A66B30;
LABEL_4:
      v7 = (sub_10022C350(v5, v6) + 48);
      break;
  }

  v8 = *v7;
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v9 + 8))(&v3[v8]);
  return v4;
}

uint64_t sub_100516F00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AveragesDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100517BDC(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:

      v7 = &qword_100CC3380;
      v8 = &unk_100A5C2B0;
      goto LABEL_4;
    case 3u:

      v9 = (sub_10022C350(&qword_100CC3378, &unk_100A66C40) + 64);
      break;
    default:
      v7 = &qword_100CC3388;
      v8 = &qword_100A66B30;
LABEL_4:
      v9 = (sub_10022C350(v7, v8) + 48);
      break;
  }

  v10 = *v9;
  type metadata accessor for Location();
  sub_1000037E8();
  return (*(v11 + 32))(a1, &v6[v10]);
}

uint64_t sub_10051707C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetailType();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_100516D7C();
  v15 = &enum case for DetailType.precipitationAverages(_:);
  if ((v14 & 1) == 0)
  {
    v15 = &enum case for DetailType.temperatureAverages(_:);
  }

  (*(v6 + 104))(v10, *v15, v4);
  v16 = *(v6 + 32);
  v16(v13, v10, v4);
  v17 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  sub_100516F00(a2 + *(v17 + 20));
  sub_100517CFC(a1);
  v18 = *(v17 + 24);
  v19 = enum case for DetailViewOrigin.component(_:);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v20 + 104))(a2 + v18, v19);
  return v16(a2, v13, v4);
}

uint64_t sub_100517214(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v88 = a1;
  v90 = type metadata accessor for Location();
  sub_1000037C4();
  v91 = v2;
  __chkstk_darwin(v3);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v7);
  v9 = v84 - v8;
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  v13 = v84 - v12;
  __chkstk_darwin(v14);
  v16 = v84 - v15;
  type metadata accessor for AveragesDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = (v18 - v19);
  __chkstk_darwin(v21);
  v23 = v84 - v22;
  __chkstk_darwin(v24);
  v26 = v84 - v25;
  __chkstk_darwin(v27);
  v29 = v84 - v28;
  v30 = sub_10022C350(&qword_100CC3370, &unk_100A5C2A0);
  __chkstk_darwin(v30 - 8);
  v32 = v84 - v31;
  v34 = v84 + *(v33 + 56) - v31;
  sub_100517BDC(v88, v84 - v31);
  sub_100517BDC(v89, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100517BDC(v32, v26);
      v62 = *(sub_10022C350(&qword_100CC3388, &qword_100A66B30) + 48);
      sub_100005FDC();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100010260();
        v37 = &v26[v62];
        goto LABEL_17;
      }

      LODWORD(v89) = *v26;
      v63 = *v34;
      v64 = v91;
      v65 = *(v91 + 32);
      v66 = &v26[v62];
      v67 = v84[0];
      v68 = v90;
      v65(v84[0], v66, v90);
      v65(v9, &v34[v62], v68);
      if (v89 != v63)
      {
        v69 = *(v64 + 8);
        v69(v9, v68);
        v69(v67, v68);
        goto LABEL_23;
      }

      v47 = static Location.== infix(_:_:)();
      v80 = *(v64 + 8);
      v80(v9, v68);
      v80(v67, v68);
      goto LABEL_29;
    case 2u:
      sub_100517BDC(v32, v23);
      v38 = *v23;
      v39 = *(sub_10022C350(&qword_100CC3380, &unk_100A5C2B0) + 48);
      sub_100005FDC();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_100010260();
        v70(&v23[v39], v90);

        goto LABEL_18;
      }

      v40 = *v34;
      v41 = v91;
      v42 = *(v91 + 32);
      v43 = &v23[v39];
      v44 = v85;
      v45 = v90;
      v42(v85, v43, v90);
      v42(v84[1], &v34[v39], v45);
      if (sub_100517A00(v38, v40))
      {
        v46 = v44;
        v47 = static Location.== infix(_:_:)();

        v48 = *(v41 + 8);
        v49 = sub_100005FDC();
        v48(v49);
        (v48)(v46, v45);
        goto LABEL_29;
      }

      v78 = *(v41 + 8);
      v79 = sub_100005FDC();
      v78(v79);
      (v78)(v44, v45);
      goto LABEL_23;
    case 3u:
      sub_100517BDC(v32, v20);
      memcpy(__dst, v20, sizeof(__dst));
      v50 = v20[96];
      v51 = *(sub_10022C350(&qword_100CC3378, &unk_100A66C40) + 64);
      sub_100005FDC();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_100010260();
        v71(&v20[v51], v90);
        sub_100517C40(__dst);
        goto LABEL_18;
      }

      memcpy(v93, v34, sizeof(v93));
      v52 = v34[96];
      v53 = v91;
      v54 = *(v91 + 32);
      v55 = &v20[v51];
      v56 = v87;
      v57 = v90;
      v54(v87, v55, v90);
      v58 = &v34[v51];
      v59 = v86;
      v54(v86, v58, v57);
      v60 = sub_1005F7E98(__dst, v93);
      sub_100517C40(__dst);
      sub_100517C40(v93);
      if ((v60 & 1) == 0 || v50 != v52)
      {
        v61 = *(v53 + 8);
        v61(v59, v57);
        v61(v56, v57);
        goto LABEL_23;
      }

      v47 = static Location.== infix(_:_:)();
      v82 = *(v53 + 8);
      v82(v59, v57);
      v82(v56, v57);
      goto LABEL_29;
    default:
      sub_100517BDC(v32, v29);
      v35 = *(sub_10022C350(&qword_100CC3388, &qword_100A66B30) + 48);
      sub_100005FDC();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100010260();
        v37 = &v29[v35];
LABEL_17:
        v36(v37, v90);
LABEL_18:
        sub_100517C94(v32);
        goto LABEL_24;
      }

      LODWORD(v89) = *v29;
      v72 = *v34;
      v73 = v91;
      v74 = *(v91 + 32);
      v75 = &v29[v35];
      v76 = v90;
      v74(v16, v75, v90);
      v74(v13, &v34[v35], v76);
      if (v89 != v72)
      {
        v77 = *(v73 + 8);
        v77(v13, v76);
        v77(v16, v76);
LABEL_23:
        sub_100517CFC(v32);
LABEL_24:
        v47 = 0;
        return v47 & 1;
      }

      v47 = static Location.== infix(_:_:)();
      v81 = *(v73 + 8);
      v81(v13, v76);
      v81(v16, v76);
LABEL_29:
      sub_100517CFC(v32);
      return v47 & 1;
  }
}

uint64_t sub_100517A88@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC3390, &unk_100A5C2C0);
  a1[4] = sub_100517D58();
  sub_100042FB0(a1);
  type metadata accessor for AveragesDetailViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100517B50(uint64_t a1)
{
  sub_100517DBC(&qword_100CC33A0, asc_100A5C21C);

  return ShortDescribable.description.getter();
}

uint64_t sub_100517BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100517C94(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC3370, &unk_100A5C2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100517CFC(uint64_t a1)
{
  v2 = type metadata accessor for AveragesDetailViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100517D58()
{
  result = qword_100CC3398;
  if (!qword_100CC3398)
  {
    v3 = sub_10022E824(&qword_100CC3390, &unk_100A5C2C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC3398);
  }

  return result;
}

uint64_t sub_100517DBC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AveragesDetailViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100517E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for NewsComponentPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for NewsArticleComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  sub_10051A570(v3, v15, type metadata accessor for NewsComponentPosition);
  v23 = (v7 + 104);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    sub_1000087E4();
    sub_10051A628(v15, v19, v29);
    (*v23)(v11, enum case for ArticlePlacementLocation.trend(_:), v5);
    sub_100747D24(a1, v11);
    v30 = sub_100024798();
    v31(v30);
    if (v23)
    {
      sub_1000087E4();
      v28 = v19;
      goto LABEL_6;
    }

    sub_100022CB8();
    v35 = v19;
LABEL_9:
    sub_10051A5D0(v35, v34);
    v33 = 1;
    v32 = v38;
    return sub_10001B350(v32, v33, 1, v16);
  }

  sub_1000087E4();
  sub_10051A628(v15, v22, v24);
  (*v23)(v11, enum case for ArticlePlacementLocation.severe(_:), v5);
  sub_100747D24(a1, v11);
  v25 = sub_100024798();
  v26(v25);
  if ((v23 & 1) == 0)
  {
    sub_100022CB8();
    v35 = v22;
    goto LABEL_9;
  }

  sub_1000087E4();
  v28 = v22;
LABEL_6:
  v32 = v38;
  sub_10051A628(v28, v38, v27);
  v33 = 0;
  return sub_10001B350(v32, v33, 1, v16);
}

uint64_t sub_100518090()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.news.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10051818C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v199 = a2;
  v197 = a1;
  v203 = type metadata accessor for NewsArticle(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v206 = (v7 - v6);
  v205 = type metadata accessor for Article();
  sub_1000037C4();
  v194 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v204 = (v11 - v10);
  v200 = type metadata accessor for ArticleModel(0);
  sub_1000037C4();
  v208 = v12;
  __chkstk_darwin(v13);
  v195 = &v178[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v196 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v192 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v202 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v207 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v198 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v201 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v190 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v31 = &v178[-v30];
  __chkstk_darwin(v32);
  v34 = &v178[-v33];
  __chkstk_darwin(v35);
  v191 = &v178[-v36];
  v37 = sub_10022C350(&qword_100CC3448, &unk_100A5C330);
  __chkstk_darwin(v37 - 8);
  v39 = &v178[-v38];
  v40 = type metadata accessor for NewsComponentPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  v45 = type metadata accessor for NewsConfiguration();
  sub_1000037C4();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_1000037D8();
  v51 = v50 - v49;
  v193 = v3;
  sub_100518090();
  v52 = NewsConfiguration.enabled.getter();
  (*(v47 + 8))(v51, v45);
  if (v52)
  {
    if (!v199[2])
    {
      goto LABEL_5;
    }

    sub_10051901C(v197, v199, v39);
    if (sub_100024D10(v39, 1, v40) == 1)
    {
      sub_1000180EC(v39, &qword_100CC3448, &unk_100A5C330);
LABEL_5:
      v181 = v40;
      v182 = a3;
      v53 = sub_10022C350(&qword_100CC3450, &unk_100A65E60);
      v54 = type metadata accessor for ArticlePlacementLocation();
      sub_1000037C4();
      v56 = v55;
      v58 = *(v55 + 80);
      v59 = (v58 + 32) & ~v58;
      v187 = *(v57 + 72);
      v183 = v58;
      v186 = v53;
      v60 = swift_allocObject();
      v180 = xmmword_100A2C3F0;
      *(v60 + 16) = xmmword_100A2C3F0;
      v61 = *(v56 + 104);
      v185 = v59;
      v179 = enum case for ArticlePlacementLocation.severe(_:);
      v189 = v54;
      v188 = v56 + 104;
      v184 = v61;
      v61(v60 + v59);
      sub_1009D76D8(v60);
      v63 = v62;
      swift_setDeallocating();
      sub_1005C1D78();
      v64 = *(v63 + 16);
      if (v64)
      {
        sub_10001393C();
        v199 = (v63 + v65);
        v66 = (v194 + 32);
        while (1)
        {
          if (v59 >= *(v63 + 16))
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          sub_100074B18();
          sub_10051A570(v67, v34, v68);
          sub_10051A570(v34, v31, v60);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100010270();
            v69 = v206;
            sub_10051A628(v31, v206, v70);
            sub_10000CBD8();
            sub_10001C478();
            sub_10051A5D0(v69, v71);
          }

          else
          {
            (*v66)(v204, v31, v205);
            Article.phenomena.getter();
            v72 = sub_10001798C();
            v73(v72);
          }

          v74 = *(v60 + 16);

          if (!v74)
          {
            break;
          }

          ++v59;
          sub_10001EF40();
          sub_10051A5D0(v34, v75);
          if (v64 == v59)
          {
            goto LABEL_13;
          }
        }

        sub_100005FE8();
        v160 = v191;
        sub_10051A628(v34, v191, v161);
        v162 = sub_10006965C();
        sub_100519B60(v162, v163);
LABEL_52:
        sub_10001EF40();
        sub_10051A5D0(v160, v167);
        v128 = v60;
        v129 = 0;
        goto LABEL_62;
      }

LABEL_13:

      v77 = v185;
      v60 = sub_10003C558(v76, v185 + v187);
      *(v60 + 16) = v180;
      v78 = enum case for ArticlePlacementLocation.trend(_:);
      v184(v60 + v77, enum case for ArticlePlacementLocation.trend(_:), v189);
      sub_1009D76D8(v60);
      v80 = v79;
      swift_setDeallocating();
      sub_1005C1D78();
      v81 = *(v80 + 16);
      if (v81)
      {
        sub_10001393C();
        v82 = (v194 + 32);
        while (v59 < *(v80 + 16))
        {
          sub_100074B18();
          v83 = v201;
          sub_10051A570(v84, v201, v85);
          v86 = v83;
          v87 = v198;
          sub_10051A570(v86, v198, v60);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100010270();
            v88 = v87;
            v89 = v206;
            sub_10051A628(v88, v206, v90);
            sub_10000CBD8();
            sub_10001C478();
            sub_10051A5D0(v89, v91);
          }

          else
          {
            (*v82)(v204, v87, v205);
            Article.phenomena.getter();
            v92 = sub_10001798C();
            v93(v92);
          }

          v94 = *(v60 + 16);

          if (!v94)
          {

            sub_100005FE8();
            v160 = v190;
            sub_10051A628(v201, v190, v164);
            v165 = sub_10006965C();
            sub_100519F84(v165, v166);
            goto LABEL_52;
          }

          ++v59;
          sub_10001EF40();
          sub_10051A5D0(v201, v95);
          if (v81 == v59)
          {
            goto LABEL_21;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        sub_1000498B0(&qword_100CA2780);
        goto LABEL_59;
      }

LABEL_21:

      v97 = v187;
      v98 = v185;
      v99 = sub_10003C558(v96, v185 + 2 * v187);
      *(v99 + 16) = xmmword_100A2D320;
      v100 = v99 + v98;
      v101 = v78;
      v102 = v189;
      v59 = v188;
      v103 = v184;
      v184(v100, v101, v189);
      v103(v100 + v97, v179, v102);
      sub_1009D76D8(v99);
      v105 = v104;
      swift_setDeallocating();
      v106 = v99;
      sub_1005C1D78();
      v107 = 0;
      v108 = *(v105 + 16);
      v201 = (v194 + 32);
      v109 = (v194 + 8);
      v199 = _swiftEmptyArrayStorage;
      v110 = v202;
      while (v108 != v107)
      {
        if (v107 >= *(v105 + 16))
        {
          __break(1u);
          goto LABEL_65;
        }

        v111 = v207;
        v59 = *(v208 + 72);
        sub_100028634();
        sub_10051A570(v112, v111, v113);
        sub_10051A570(v111, v110, v106);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100010270();
          v114 = v206;
          sub_10051A628(v110, v206, v115);
          v106 = *(v114 + *(v203 + 11));

          sub_10001C478();
          sub_10051A5D0(v114, v116);
        }

        else
        {
          v118 = v204;
          v117 = v205;
          (*v201)(v204, v202, v205);
          v106 = Article.phenomena.getter();
          v119 = v118;
          v110 = v202;
          (*v109)(v119, v117);
        }

        v120 = v106[2];

        if (v120)
        {
          sub_100005FE8();
          sub_10051A628(v207, v192, v122);
          v106 = v199;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v210 = v106;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1006A78D4();
            v106 = v210;
          }

          v124 = v106[2];
          v125 = (v124 + 1);
          if (v124 >= v106[3] >> 1)
          {
            v199 = (v124 + 1);
            sub_1006A78D4();
            v125 = v199;
            v106 = v210;
          }

          ++v107;
          v106[2] = v125;
          v199 = v106;
          sub_100005FE8();
          sub_10051A628(v192, v126, v127);
        }

        else
        {
          sub_10001EF40();
          sub_10051A5D0(v207, v121);
          ++v107;
        }
      }

      v130 = v199;
      v131 = &qword_100CA2000;
      if (v199[2])
      {
        if (qword_100CA2780 != -1)
        {
          sub_1000498B0(&qword_100CA2780);
        }

        v132 = type metadata accessor for Logger();
        sub_10000703C(v132, qword_100D90CD8);

        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v210 = v203;
          v207 = v135;
          *v135 = 136315138;
          v136 = v130[2];
          if (v136)
          {
            LODWORD(v198) = v134;
            v202 = v133;
            v209 = _swiftEmptyArrayStorage;
            v137 = &v209;
            sub_10000369C(0, v136, 0);
            v138 = v209;
            v139 = v130 + ((*(v208 + 80) + 32) & ~*(v208 + 80));
            v140 = *(v208 + 72);
            do
            {
              sub_100028634();
              v142 = v141;
              sub_10051A570(v139, v141, v143);
              v144 = v137;
              v145 = v195;
              sub_10051A570(v142, v195, v144);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_10001EF40();
                sub_10051A5D0(v142, v146);
                sub_100010270();
                v147 = v145;
                v137 = v206;
                sub_10051A628(v147, v206, v148);
                v150 = *v137;
                v149 = v137[1];

                sub_10001C478();
                v152 = v137;
              }

              else
              {
                v153 = v145;
                v137 = v204;
                v154 = v205;
                (*v201)(v204, v153, v205);
                v150 = Article.id.getter();
                v149 = v155;
                (*v109)(v137, v154);
                sub_10001EF40();
                v152 = v142;
              }

              sub_10051A5D0(v152, v151);
              v209 = v138;
              v157 = v138[2];
              v156 = v138[3];
              if (v157 >= v156 >> 1)
              {
                v137 = &v209;
                sub_10000369C((v156 > 1), v157 + 1, 1);
                v138 = v209;
              }

              v138[2] = v157 + 1;
              v158 = &v138[2 * v157];
              v158[4] = v150;
              v158[5] = v149;
              v139 += v140;
              --v136;
            }

            while (v136);

            v59 = v182;
            v131 = &qword_100CA2000;
            v133 = v202;
            LOBYTE(v134) = v198;
          }

          else
          {

            v59 = v182;
          }

          v168 = Array.description.getter();
          v170 = v169;

          v171 = sub_100078694(v168, v170, &v210);

          v172 = v207;
          *(v207 + 1) = v171;
          _os_log_impl(&_mh_execute_header, v133, v134, "NewsArticleComponentFactory - Articles with phenomena but no matching alert are hidden. articles=%s", v172, 0xCu);
          sub_100006F14(v203);

LABEL_58:
          if (v131[240] != -1)
          {
            goto LABEL_67;
          }

LABEL_59:
          v173 = type metadata accessor for Logger();
          sub_10000703C(v173, qword_100D90CD8);
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v174, v175, "NewsArticleComponentFactory - No eligible articles found", v176, 2u);
          }

          v128 = v59;
          v129 = 1;
LABEL_62:
          v159 = v181;
          return sub_10001B350(v128, v129, 1, v159);
        }
      }

      else
      {
      }

      v59 = v182;
      goto LABEL_58;
    }

    sub_10051A628(v39, v44, type metadata accessor for NewsComponentPosition);
    sub_10051A628(v44, a3, type metadata accessor for NewsComponentPosition);
    v128 = a3;
    v129 = 0;
  }

  else
  {
    v128 = a3;
    v129 = 1;
  }

  v159 = v40;
  return sub_10001B350(v128, v129, 1, v159);
}

uint64_t sub_10051901C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a1;
  v80 = a3;
  v102 = type metadata accessor for WeatherAlert.Prominence();
  v4 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UUID();
  v6 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC3458, &unk_100A5C340);
  __chkstk_darwin(v8 - 8);
  v106 = &v79 - v9;
  v105 = type metadata accessor for ArticleModel(0);
  __chkstk_darwin(v105);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v79 - v12;
  __chkstk_darwin(v13);
  v104 = &v79 - v14;
  v15 = type metadata accessor for WeatherAlert();
  __chkstk_darwin(v15);
  v96 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v79 - v18;
  v21 = *(a2 + 16);
  if (!v21)
  {
LABEL_14:
    v70 = type metadata accessor for NewsComponentPosition(0);
    return sub_10001B350(v80, 1, 1, v70);
  }

  v111 = 0;
  v23 = *(v19 + 16);
  v22 = v19 + 16;
  v108 = v23;
  v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v82 = (v6 + 8);
  v93 = (v4 + 88);
  v90 = (v4 + 8);
  v100 = enum case for ArticlePlacementLocation.severe(_:);
  v99 = enum case for ArticlePlacementLocation.trend(_:);
  v92 = enum case for WeatherAlert.Prominence.high(_:);
  v91 = enum case for WeatherAlert.Prominence.low(_:);
  v109 = v22;
  v97 = *(v22 + 56);
  *(&v25 + 1) = 4;
  v98 = xmmword_100A2D320;
  *&v25 = 136315650;
  v81 = v25;
  v110 = &v79 - v18;
  v103 = (v22 - 8);
  v83 = v15;
  while (1)
  {
    v108(v20, v24, v15);
    sub_10022C350(&qword_100CC3450, &unk_100A65E60);
    v26 = type metadata accessor for ArticlePlacementLocation();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v98;
    v31 = v30 + v29;
    v32 = *(v27 + 104);
    v32(v31, v100, v26);
    v33 = (v32)(v31 + v28, v99, v26);
    __chkstk_darwin(v33);
    *(&v79 - 2) = v20;
    sub_1009D76D8(v30);
    v35 = v34;
    swift_setDeallocating();
    sub_1005C1D78();
    v36 = v106;
    v37 = v111;
    sub_1008DBFB4(sub_10051A688, (&v79 - 4), v35);
    v111 = v37;

    if (sub_100024D10(v36, 1, v105) == 1)
    {
      sub_1000180EC(v36, &qword_100CC3458, &unk_100A5C340);
      v20 = v110;
      (*v103)(v110, v15);
      goto LABEL_13;
    }

    v38 = v104;
    sub_10051A628(v36, v104, type metadata accessor for ArticleModel);
    if (qword_100CA2780 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_10000703C(v39, qword_100D90CD8);
    v41 = v94;
    sub_10051A570(v38, v94, type metadata accessor for ArticleModel);
    v42 = v95;
    sub_10051A570(v38, v95, type metadata accessor for ArticleModel);
    v43 = v96;
    v108(v96, v110, v15);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v112[0] = v88;
      *v46 = v81;
      v87 = v45;
      v47 = sub_1005A7C4C();
      v86 = v44;
      v49 = v48;
      sub_10051A5D0(v41, type metadata accessor for ArticleModel);
      v50 = sub_100078694(v47, v49, v112);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      sub_1005A7DF8();
      v89 = v40;
      v51 = v85;
      v52 = Array.description.getter();
      v53 = v42;
      v55 = v54;

      v56 = v83;
      sub_10051A5D0(v53, type metadata accessor for ArticleModel);
      v57 = sub_100078694(v52, v55, v112);

      *(v46 + 14) = v57;
      *(v46 + 22) = 2080;
      v58 = v84;
      v59 = v96;
      WeatherAlert.id.getter();
      sub_10051A690();
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*v82)(v58, v51);
      v63 = *v103;
      v64 = v59;
      v15 = v56;
      (*v103)(v64, v56);
      v65 = sub_100078694(v60, v62, v112);

      *(v46 + 24) = v65;
      v66 = v86;
      _os_log_impl(&_mh_execute_header, v86, v87, "NewsArticleComponentFactory - Matched article %s with article.alertIds=%s for alert %s", v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v67 = v42;
      v63 = *v103;
      (*v103)(v43, v15);
      sub_10051A5D0(v67, type metadata accessor for ArticleModel);
      sub_10051A5D0(v41, type metadata accessor for ArticleModel);
    }

    v68 = v101;
    v20 = v110;
    WeatherAlert.prominence.getter();
    v69 = (*v93)(v68, v102);
    if (v69 == v92)
    {
      break;
    }

    if (v69 == v91)
    {
      v72 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v72, v75, "NewsArticleComponentFactory - Placing matched article above1x1s", v76, 2u);
      }

      goto LABEL_20;
    }

    sub_10051A5D0(v104, type metadata accessor for ArticleModel);
    (*v90)(v101, v102);
    v63(v20, v15);
LABEL_13:
    v24 += v97;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "NewsArticleComponentFactory - Placing matched article belowSevereAlert", v74, 2u);
  }

LABEL_20:

  v77 = v80;
  sub_10051A628(v104, v80, type metadata accessor for ArticleModel);
  *(v77 + *(type metadata accessor for NewsArticleComponent(0) + 20)) = 0;
  v78 = type metadata accessor for NewsComponentPosition(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v77, 0, 1, v78);
  return (v63)(v20, v15);
}

uint64_t sub_100519B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = type metadata accessor for NewsConfiguration.SeverePlacement();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for NewsConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  if (qword_100CA2780 != -1)
  {
    swift_once();
  }

  v30 = v7;
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90CD8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v16;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v17 = 136315138;
    sub_100518090();
    NewsConfiguration.severePlacement.getter();
    v18 = v30;
    (*(v30 + 8))(v12, v6);
    v19 = String.init<A>(describing:)();
    v21 = sub_100078694(v19, v20, &v35);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "NewsArticleComponentFactory - Severe article with no phenomenon found, placing at newsConfiguration.severePlacement=%s", v17, 0xCu);
    sub_100006F14(v28);

    a2 = v29;
  }

  else
  {

    v18 = v30;
  }

  sub_100518090();
  v22 = v32;
  NewsConfiguration.severePlacement.getter();
  (*(v18 + 8))(v9, v6);
  v23 = v33;
  v24 = (*(v33 + 88))(v22, v34);
  if (v24 == enum case for NewsConfiguration.SeverePlacement.aboveDailyForecast(_:))
  {
    sub_10051A570(v31, a2, type metadata accessor for ArticleModel);
    *(a2 + *(type metadata accessor for NewsArticleComponent(0) + 20)) = 0;
    type metadata accessor for NewsComponentPosition(0);
    return swift_storeEnumTagMultiPayload();
  }

  v25 = v24;
  v26 = enum case for NewsConfiguration.SeverePlacement.belowSevereAlert(_:);
  sub_10051A570(v31, a2, type metadata accessor for ArticleModel);
  *(a2 + *(type metadata accessor for NewsArticleComponent(0) + 20)) = 0;
  type metadata accessor for NewsComponentPosition(0);
  if (v25 == v26)
  {
    return swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return (*(v23 + 8))(v22, v34);
}

uint64_t sub_100519F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = type metadata accessor for NewsConfiguration.TrendingPlacement();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for NewsConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  if (qword_100CA2780 != -1)
  {
    swift_once();
  }

  v30 = v7;
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90CD8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v16;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v17 = 136315138;
    sub_100518090();
    NewsConfiguration.trendingPlacement.getter();
    v18 = v30;
    (*(v30 + 8))(v12, v6);
    v19 = String.init<A>(describing:)();
    v21 = sub_100078694(v19, v20, &v35);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "NewsArticleComponentFactory - Trend article with no phenomenon found, placing at newsConfiguration.trendPlacement=%s", v17, 0xCu);
    sub_100006F14(v28);

    a2 = v29;
  }

  else
  {

    v18 = v30;
  }

  sub_100518090();
  v22 = v31;
  NewsConfiguration.trendingPlacement.getter();
  (*(v18 + 8))(v9, v6);
  v23 = v33;
  v24 = (*(v33 + 88))(v22, v34);
  if (v24 == enum case for NewsConfiguration.TrendingPlacement.aboveAirQuality(_:) || (v25 = v24, v24 == enum case for NewsConfiguration.TrendingPlacement.belowMap(_:)))
  {
    sub_10051A570(v32, a2, type metadata accessor for ArticleModel);
    *(a2 + *(type metadata accessor for NewsArticleComponent(0) + 20)) = 0;
    type metadata accessor for NewsComponentPosition(0);
    return swift_storeEnumTagMultiPayload();
  }

  v26 = enum case for NewsConfiguration.TrendingPlacement.belowVisibilityAndPressure(_:);
  sub_10051A570(v32, a2, type metadata accessor for ArticleModel);
  *(a2 + *(type metadata accessor for NewsArticleComponent(0) + 20)) = 0;
  type metadata accessor for NewsComponentPosition(0);
  if (v25 == v26)
  {
    return swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return (*(v23 + 8))(v22, v34);
}

BOOL sub_10051A404()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005A7DF8();
  WeatherAlert.id.getter();
  v8 = v3;
  v5 = sub_100745910(sub_10051A6E8, v7, v4);

  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t type metadata accessor for NewsComponentPosition(uint64_t a1)
{
  result = qword_100CC34D0;
  if (!qword_100CC34D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051A570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10051A5D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10051A628(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10051A690()
{
  result = qword_100CADB98;
  if (!qword_100CADB98)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_100CADB98);
  }

  return result;
}

uint64_t sub_10051A708(uint64_t a1)
{
  result = type metadata accessor for NewsArticleComponent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10051A770()
{
  result = qword_100CC35C0;
  if (!qword_100CC35C0)
  {
    v3 = type metadata accessor for ViewState(255);
    result = swift_getWitnessTable(byte_100A89D4C, v3, v0, v1);
    atomic_store(result, &qword_100CC35C0);
  }

  return result;
}

uint64_t sub_10051A7F0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a2, a3, a4);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a1, v7, 1, v8);
}

uint64_t sub_10051A8C0()
{
  sub_1001AF5DC();

  return swift_deallocClassInstance();
}

uint64_t sub_10051A9D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_10051AA34()
{
  sub_10000E8AC();
  sub_100022CE8();
  v21 = v2;
  v20 = sub_10022C350(&qword_100CC37A0, &qword_100A5C588);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = v1 + 64;
  sub_100004448();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v22 = v1;

  v12 = 0;
  while (v9)
  {
    v23 = v0;
    v13 = v12;
LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = v22;
    v17 = *(v22 + 48);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v18 + 16))(v5, v17 + *(v18 + 72) * v15);
    *&v5[*(v20 + 48)] = *(*(v16 + 56) + 8 * v15);

    v21(v5);
    v0 = v23;
    sub_1000180EC(v5, &qword_100CC37A0, &qword_100A5C588);
    if (v23)
    {
LABEL_9:

      sub_10000C8F4();
      return;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_9;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v23 = v0;
      v12 = v13;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_10051AC1C()
{
  sub_10000E8AC();
  sub_100022CE8();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  do
  {
    if (v6 == v4)
    {
      break;
    }

    v7 = *(sub_10022C350(&qword_100CAC4D8, &unk_100A3B420) - 8);
    v3(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4++);
  }

  while (!v0);
  sub_10000C8F4();
}

uint64_t sub_10051ACEC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

uint64_t (*sub_10051AD40(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for SavedLocation() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_10051AE5C()
{
  sub_10000E8AC();
  v32 = v1;
  v33 = v2;
  v3 = v0;
  v5 = v4;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v28 = sub_10022C350(v7, v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v27 = &v27 - v10;
  v11 = v5 + 64;
  sub_100004448();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v34 = v5;

  v17 = 0;
  while (v14)
  {
    v35 = v3;
    v18 = v17;
LABEL_8:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v34;
    v22 = *(v34 + 48);
    type metadata accessor for Date();
    sub_1000037E8();
    v24 = v27;
    (*(v23 + 16))(v27, v22 + *(v23 + 72) * v20);
    v25 = *(v21 + 56);
    v26 = v32(0);
    sub_100050CF0(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v28 + 48), v33);
    v29(v24);
    v3 = v35;
    sub_1000180EC(v24, v30, v31);
    if (v35)
    {
LABEL_9:

      sub_10000C8F4();
      return;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      goto LABEL_9;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v35 = v3;
      v17 = v18;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_10051B020(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_10022C350(&qword_100CC3788, &qword_100A5C580);
  __chkstk_darwin(v8 - 8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v19[-v13];
  v15 = *a1;
  swift_beginAccess();
  sub_100035AD0(v6 + v15, v14, &qword_100CC3788, &qword_100A5C580);
  v16 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v14, 1, v16) == 1)
  {
    sub_1000180EC(v14, &qword_100CC3788, &qword_100A5C580);
    static Settings.VFX.animatedBackgrounds.getter();
    a2();

    sub_10051B37C(&qword_100CC3790, type metadata accessor for WeatherConditionBackgroundStoreObserver, byte_100A5C520);
    Configurable.setting<A>(_:)();

    sub_100003B20();
    (*(v17 + 16))(v11, a3, v16);
    sub_10001B350(v11, 0, 1, v16);
    swift_beginAccess();
    sub_10051B3C4(v11, v6 + v15);
    swift_endAccess();
  }

  else
  {
    sub_100003B20();
    (*(v18 + 32))(a3, v14, v16);
  }
}

uint64_t sub_10051B284()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___locationAnimationKind, &qword_100CC3788, &qword_100A5C580);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver____lazy_storage___listAnimationKind, &qword_100CC3788, &qword_100A5C580);
  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_weatherConditionBackgroundTimeDataFactory));

  return v0;
}

uint64_t sub_10051B31C()
{
  sub_10051B284();

  return swift_deallocClassInstance();
}

uint64_t sub_10051B37C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10051B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC3788, &qword_100A5C580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051B43C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10051B47C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10051B4E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100AD32A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000020 && 0x8000000100AD32C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000100AD32F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000020 && 0x8000000100AD3310 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000100AD3340 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10051B724(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      return result;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_10051B804(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[10] == a2[10] && a1[11] == a2[11];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[12] == a2[12] && a1[13] == a2[13])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10051B92C(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC37B8, &qword_100A5C688);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10051C6EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v33 = 0;
  sub_100008828(v11, v12, &v33);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v32 = 1;
    sub_100008828(v13, v14, &v32);
    v15 = v3[4];
    v16 = v3[5];
    v31 = 2;
    sub_100008828(v15, v16, &v31);
    v17 = v3[6];
    v18 = v3[7];
    v30 = 3;
    sub_100008828(v17, v18, &v30);
    v19 = v3[8];
    v20 = v3[9];
    v29 = 4;
    sub_100008828(v19, v20, &v29);
    v21 = v3[10];
    v22 = v3[11];
    v28 = 5;
    sub_100008828(v21, v22, &v28);
    v23 = v3[12];
    v24 = v3[13];
    v27 = 6;
    sub_100008828(v23, v24, &v27);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10051BAF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CC37A8, &qword_100A5C680);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10051C6EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v33 = sub_10001EF70(1);
  v37 = v14;
  v30 = sub_10001EF70(2);
  v31 = v11;
  v36 = v15;
  v16 = sub_10001EF70(3);
  v32 = v17;
  v29 = v16;
  v28 = sub_10001EF70(4);
  v35 = v18;
  v27 = sub_10001EF70(5);
  v34 = v19;
  v40 = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  (*(v7 + 8))(v10, v5);
  __src[0] = v31;
  __src[1] = v13;
  __src[2] = v33;
  __src[3] = v37;
  __src[4] = v30;
  v23 = v36;
  __src[5] = v36;
  __src[6] = v29;
  v24 = v32;
  __src[7] = v32;
  __src[8] = v28;
  v25 = v35;
  __src[9] = v35;
  __src[10] = v27;
  __src[11] = v34;
  __src[12] = v20;
  __src[13] = v22;
  sub_100428584(__src, v39);
  sub_100006F14(a1);
  v39[0] = v31;
  v39[1] = v13;
  v39[2] = v33;
  v39[3] = v37;
  v39[4] = v30;
  v39[5] = v23;
  v39[6] = v29;
  v39[7] = v24;
  v39[8] = v28;
  v39[9] = v25;
  v39[10] = v27;
  v39[11] = v34;
  v39[12] = v20;
  v39[13] = v22;
  sub_100428500(v39);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_10051BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10051B4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10051BFD0(uint64_t a1)
{
  v2 = sub_10051C6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051C00C(uint64_t a1)
{
  v2 = sub_10051C6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10051C048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10051BAF8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_10051C0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = objc_opt_self();

  v70 = a6;

  v18 = [v17 mainBundle];
  v71._object = 0x8000000100AD3270;
  sub_1000080F4();
  v71._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v21, v22, v71);

  v23 = sub_10002D5A4();
  v24 = sub_1000199A8();
  v26 = sub_100006030(v24, v25);
  v28 = v27;
  v67 = a4;

  sub_100109810();
  v30 = v29;
  v31 = *(v29 + 16);
  if (v31 >= *(v29 + 24) >> 1)
  {
    sub_100022CF8();
    v30 = v61;
  }

  *(v30 + 16) = v31 + 1;
  v32 = v30 + 16 * v31;
  *(v32 + 32) = v26;
  *(v32 + 40) = v28;
  v33 = [v17 mainBundle];
  v72._object = 0x8000000100AD3270;
  sub_1000080F4();
  v72._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v36, v37, v72);

  v38 = sub_1000199A8();
  v40 = sub_100006030(v38, v39);
  v42 = v41;

  v43 = *(v30 + 16);
  if (v43 >= *(v30 + 24) >> 1)
  {
    sub_100022CF8();
    v30 = v62;
  }

  *(v30 + 16) = v43 + 1;
  v44 = v30 + 16 * v43;
  *(v44 + 32) = v40;
  *(v44 + 40) = v42;
  v45 = [v17 mainBundle];
  v73._object = 0x8000000100AD3270;
  sub_100003CD0();
  sub_100003F1C();
  v73._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v48, v49, v73);

  v50 = sub_1000199A8();
  v52 = sub_100006030(v50, v51);
  v54 = v53;

  v55 = *(v30 + 16);
  if (v55 >= *(v30 + 24) >> 1)
  {
    sub_100109810();
    v30 = v63;
  }

  *(v30 + 16) = v55 + 1;
  v56 = v30 + 16 * v55;
  *(v56 + 32) = v52;
  *(v56 + 40) = v54;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v57 = BidirectionalCollection<>.joined(separator:)();
  v59 = v58;

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = v67;
  a9[4] = a5;
  a9[5] = v70;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = a12;
  a9[11] = a13;
  a9[12] = v57;
  a9[13] = v59;
  return result;
}

void *sub_10051C484()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v30._object = 0x8000000100AD3180;
  sub_1000080F4();
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v4, v5, v30);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = 24;
  v28 = static String.localizedStringWithFormat(_:_:)();
  v8 = v7;

  v9 = sub_100074B5C();
  v31._object = v1;
  sub_100003CD0();
  sub_100003F1C();
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v12, v13, v31);

  v15 = [v0 mainBundle];
  v32._object = v1;
  sub_100003CD0();
  sub_100003F1C();
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v18, v19, v32);

  v21 = sub_100074B5C();
  v33._object = v1;
  sub_100003CD0();
  sub_100003F1C();
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v24, v25, v33);

  sub_10051C0B0(1835212848, 0xE400000000000000, 1835212848, 0xE400000000000000, v28, v8, v14._countAndFlagsBits, v14._object, __src, v20._countAndFlagsBits, v20._object, v26._countAndFlagsBits, v26._object);
  return memcpy(&unk_100D90370, __src, 0x70uLL);
}

unint64_t sub_10051C6EC()
{
  result = qword_100CC37B0;
  if (!qword_100CC37B0)
  {
    result = swift_getWitnessTable(byte_100A5C754, &type metadata for PrecipitationTotalComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC37B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalComponentViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10051C820()
{
  result = qword_100CC37C0;
  if (!qword_100CC37C0)
  {
    result = swift_getWitnessTable(byte_100A5C72C, &type metadata for PrecipitationTotalComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC37C0);
  }

  return result;
}

unint64_t sub_10051C878()
{
  result = qword_100CC37C8;
  if (!qword_100CC37C8)
  {
    result = swift_getWitnessTable(aE_47, &type metadata for PrecipitationTotalComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC37C8);
  }

  return result;
}

unint64_t sub_10051C8D0()
{
  result = qword_100CC37D0[0];
  if (!qword_100CC37D0[0])
  {
    result = swift_getWitnessTable(asc_100A5C6C4, &type metadata for PrecipitationTotalComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, qword_100CC37D0);
  }

  return result;
}

uint64_t sub_10051C924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10051C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v33 = *(a1 + 24);
  v6 = v33;
  v7 = sub_10001C4A8();
  swift_getWitnessTable(v7, v5, &v33);
  sub_10000381C();
  v8 = type metadata accessor for ZStack();
  sub_10022E824(&qword_100CBE348, &unk_100A55B80);
  sub_10000381C();
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for StaticIf();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  Solarium.init()();
  v28 = v4;
  v29 = v6;
  v30 = v2;
  v26[4] = v4;
  v26[5] = v6;
  v27 = v2;
  v17 = sub_10001EF94();
  WitnessTable = swift_getWitnessTable(v17, v8);
  v19 = sub_100082E44();
  v32[0] = WitnessTable;
  v32[1] = v19;
  v20 = sub_100007E30();
  v25 = swift_getWitnessTable(v20, v9, v32);
  StaticIf<>.init(_:then:else:)();
  v31[0] = &protocol witness table for Solarium;
  v31[1] = v25;
  v31[2] = v6;
  v21 = sub_100006058();
  v22 = swift_getWitnessTable(v21, v10, v31);
  sub_1000833D8(v13, v10, v22);
  v23 = *(v11 + 8);
  v23(v13, v10);
  sub_1000833D8(v16, v10, v22);
  return (v23)(v16, v10);
}

uint64_t sub_10051CC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = type metadata accessor for Optional();
  v32 = a3;
  v24[1] = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v32);
  v8 = type metadata accessor for ZStack();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  sub_10022E824(&qword_100CBE348, &unk_100A55B80);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v24 - v16;
  v27 = a2;
  v28 = a3;
  v29 = a1;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  type metadata accessor for HiddenDuringNonInteractiveResize(0, a2, a3, v18);
  v31 = sub_10051D1E0() & 1;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ZStack<A>, v8);
  sub_1000A203C(&v31, v8, &type metadata for Bool, WitnessTable, v14);
  (*(v25 + 8))(v10, v8);
  v20 = sub_100082E44();
  v30[0] = WitnessTable;
  v30[1] = v20;
  v21 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v30);
  sub_1000833D8(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_1000833D8(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t sub_10051CF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  type metadata accessor for HiddenDuringNonInteractiveResize(0, a2, a3, v20);
  if (sub_10051D1E0())
  {
    (*(a1 + 32))();
    sub_1000833D8(v9, a2, a3);
    v28 = v14;
    v21 = a3;
    v22 = *(v7 + 8);
    v22(v9, a2);
    sub_1000833D8(v12, a2, v21);
    v22(v12, a2);
    a3 = v21;
    v14 = v28;
    (*(v7 + 32))(v16, v9, a2);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10001B350(v16, v23, 1, a2);
  sub_1003E7FD4(v16, v19);
  v24 = *(v14 + 8);
  v24(v16, v13);
  v30 = a3;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v13, &v30);
  sub_1000833D8(v19, v13, WitnessTable);
  return (v24)(v19, v13);
}

uint64_t sub_10051D1E0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v0 + 24);
  v5 = v0[2];
  v15 = v5;
  if (v16 == 1)
  {
    if (v5 == 2 || !v5)
    {
LABEL_9:
      LOBYTE(v9) = 1;
      return v9 & 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(&v15, &qword_100CC3858, &qword_100A5C918);
    v7 = *(v2 + 8);
    v7(v4, v1);
    if (v13 == 2)
    {
      goto LABEL_9;
    }

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(&v15, &qword_100CC3858, &qword_100A5C918);
    v7(v4, v1);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v0 + 8);
  v9 = *v0;
  v13 = v9;
  if (v14 != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(&v13, &qword_100CB91B8, &qword_100A4DA50);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_10051D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v12 + 32))(v9);
  sub_1000833D8(v7, a2, a3);
  v13 = *(v5 + 8);
  v13(v7, a2);
  sub_1000833D8(v11, a2, a3);
  return (v13)(v11, a2);
}

uint64_t sub_10051D67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = type metadata accessor for URL();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for PresetAppState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = Data.init(contentsOf:options:)();
  v14 = v13;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10051E370(&qword_100CC38F8, type metadata accessor for PresetAppState, asc_100A5C958);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v5 + 8))(a1, v16);

  sub_10030F778(v12, v14);
  sub_10051E254(v11, a2, type metadata accessor for PresetAppState);
  return sub_10001B350(a2, 0, 1, v7);
}

uint64_t sub_10051DA78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00657461745373;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000100AD3360 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10051DB98(char a1)
{
  if (!a1)
  {
    return 1701669236;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_10051DBF8(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC3910, &qword_100A5C988);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_10051E200();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for PresetAppState(0);
    LOBYTE(v18) = 1;
    type metadata accessor for LocationsState(0);
    sub_10001C4C0();
    sub_10051E370(v12, v13, aY_39);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + *(v11 + 24));
    v15 = v14[3];
    v18 = *v14;
    v19 = *(v14 + 1);
    v20 = v15;
    v17[15] = 2;
    sub_1002DD624();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10051DDF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v32 = sub_10022C350(&qword_100CC3900, &qword_100A5C980);
  sub_1000037C4();
  v30 = v7;
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PresetAppState(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  sub_1000161C0(a1, a1[3]);
  sub_10051E200();
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100006F14(a1);
  }

  v17 = a1;
  v18 = v30;
  LOBYTE(v34) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v15;
  *v15 = v19;
  LOBYTE(v34) = 1;
  sub_10001C4C0();
  sub_10051E370(v20, v21, aA_17);
  v22 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v33;
  sub_10051E254(v22, v33 + *(v11 + 20), type metadata accessor for LocationsState);
  v37 = 2;
  sub_1002DE1B4();
  v24 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v10, v24);
  v25 = v36;
  v26 = v23 + *(v11 + 24);
  *v26 = v34;
  *(v26 + 8) = v35;
  *(v26 + 24) = v25;
  sub_10051E2B4(v23, v29);
  sub_100006F14(v17);
  return sub_10051E318(v23, type metadata accessor for PresetAppState);
}

uint64_t sub_10051E130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10051DA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10051E158(uint64_t a1)
{
  v2 = sub_10051E200();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051E194(uint64_t a1)
{
  v2 = sub_10051E200();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10051E200()
{
  result = qword_100CC3908;
  if (!qword_100CC3908)
  {
    result = swift_getWitnessTable(byte_100A5CA54, &type metadata for PresetAppState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC3908);
  }

  return result;
}

uint64_t sub_10051E254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10051E2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresetAppState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051E318(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10051E370(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PresetAppState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10051E498()
{
  result = qword_100CC3918;
  if (!qword_100CC3918)
  {
    result = swift_getWitnessTable(byte_100A5CA2C, &type metadata for PresetAppState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC3918);
  }

  return result;
}

unint64_t sub_10051E4F0()
{
  result = qword_100CC3920;
  if (!qword_100CC3920)
  {
    result = swift_getWitnessTable(aE_48, &type metadata for PresetAppState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC3920);
  }

  return result;
}

unint64_t sub_10051E548()
{
  result = qword_100CC3928;
  if (!qword_100CC3928)
  {
    result = swift_getWitnessTable(asc_100A5C9C4, &type metadata for PresetAppState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC3928);
  }

  return result;
}

uint64_t type metadata accessor for PredictedLocationNotificationsDebugView(uint64_t a1)
{
  result = qword_100CC3A60;
  if (!qword_100CC3A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10051E658(uint64_t a1)
{
  sub_10051E7A4(319, &qword_100CC3A70, &type metadata for Bool, &protocol witness table for Bool);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10051E7A4(319, &qword_100CC3A78, &type metadata for Int, &protocol witness table for Int);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_10051E7A4(319, &unk_100CC3A80, &type metadata for Double, &protocol witness table for Double);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for PredictedLocationsScheduleStore();
      if (v7 <= 0x3F)
      {
        sub_100081C98();
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = sub_10051E7F4();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10051E7A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for UISettingProperty();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10051E7F4()
{
  result = qword_100CABB40;
  if (!qword_100CABB40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CABB40);
  }

  return result;
}

void sub_10051E86C()
{
  sub_10000C778();
  v1 = v0;
  v19[1] = v2;
  v3 = type metadata accessor for PredictedLocationNotificationsDebugView(0);
  v4 = sub_100003AE8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v9 = sub_10022C350(&qword_100CC3AC8, &qword_100A5CE68);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = v19 - v11;
  v20 = v0;
  sub_10022C350(&qword_100CC3AD0, &unk_100A5CE70);
  sub_100006F64(&qword_100CC3AD8, &qword_100CC3AD0, &unk_100A5CE70, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v13 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1005219CC(v1, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_100521A30(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = &v12[*(v9 + 56)];
  *v16 = sub_100521A94;
  v16[1] = v15;
  sub_10000579C();
  sub_100006F64(v17, &qword_100CC3AC8, &qword_100A5CE68, v18);
  View.navigationTitle(_:)();
  sub_100018144(v12, &qword_100CC3AC8, &qword_100A5CE68);
  sub_10000536C();
}

uint64_t sub_10051EAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v80 = sub_10022C350(&qword_100CB5D38, &qword_100A5CE80);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v76 = &v69 - v5;
  v81 = sub_10022C350(&qword_100CC3AE8, &unk_100A5CE88);
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v71 = &v69 - v6;
  v7 = sub_10022C350(&qword_100CB5D30, &unk_100A49560);
  __chkstk_darwin(v7 - 8);
  v96 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v69 - v10;
  v74 = sub_10022C350(&qword_100CC3AF0, &qword_100A5CE98);
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v69 - v11;
  v12 = sub_10022C350(&qword_100CB5D28, &unk_100A5CEA0);
  __chkstk_darwin(v12 - 8);
  v95 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v69 - v15;
  v94 = sub_10022C350(&qword_100CB5D20, &unk_100A49550);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v90 = &v69 - v18;
  v86 = (sub_10022C350(&qword_100CB5D18, &unk_100A5CEB0) - 8);
  __chkstk_darwin(v86);
  v91 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v97 = sub_10022C350(&qword_100CB5D10, &unk_100A49540);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  v88 = sub_10022C350(&qword_100CB5D00, &qword_100A49530);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v69 - v29;
  *&v103 = 0xD000000000000013;
  *(&v103 + 1) = 0x8000000100AD33C0;
  LOBYTE(v104) = 0;
  v105 = _swiftEmptyArrayStorage;
  v109 = 0xD000000000000051;
  v110 = 0x8000000100AD33E0;
  v111 = 0;
  v112 = _swiftEmptyArrayStorage;
  v102 = a1;
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  v83 = v30;
  Section<>.init(header:footer:content:)();
  *&v103 = 0xD000000000000011;
  *(&v103 + 1) = 0x8000000100AD3440;
  LOBYTE(v104) = 0;
  v105 = _swiftEmptyArrayStorage;
  v109 = 0xD0000000000000C1;
  v110 = 0x8000000100AD3460;
  v111 = 0;
  v112 = _swiftEmptyArrayStorage;
  v101 = a1;
  sub_10022C350(&qword_100CC3AF8, &qword_100A5CEC0);
  sub_100006F64(&qword_100CC3B00, &qword_100CC3AF8, &qword_100A5CEC0, &protocol conformance descriptor for TupleView<A>);
  v84 = v26;
  Section<>.init(header:footer:content:)();
  v103 = xmmword_100A5CD80;
  LOBYTE(v104) = 0;
  v105 = _swiftEmptyArrayStorage;
  v100 = a1;
  sub_10022C350(&qword_100CC3B08, &unk_100A5CEC8);
  sub_100006F64(&qword_100CC3B10, &qword_100CC3B08, &unk_100A5CEC8, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v31 = (a1 + *(type metadata accessor for PredictedLocationNotificationsDebugView(0) + 36));
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v103) = v32;
  *(&v103 + 1) = v33;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v34 = *(v86 + 15);
  v86 = v22;
  v22[v34] = v109;
  v103 = xmmword_100A5CD90;
  LOBYTE(v104) = 0;
  v105 = _swiftEmptyArrayStorage;
  v99 = a1;
  v35 = sub_10022C350(&qword_100CB66A0, &qword_100A4A060);
  sub_100006F64(&qword_100CB6698, &qword_100CB66A0, &qword_100A4A060, &protocol conformance descriptor for Toggle<A>);
  v73 = v35;
  Section<>.init(header:content:)();
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  v36 = UISettingProperty.wrappedValue.getter();
  if (v103 == 1)
  {
    *&v103 = 0xD00000000000001ALL;
    *(&v103 + 1) = 0x8000000100AD35E0;
    LOBYTE(v104) = 0;
    v105 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v36);
    sub_10022C350(&qword_100CC3B28, &qword_100A5CEE0);
    sub_100521B30();
    v37 = v69;
    Section<>.init(header:content:)();
    v38 = v92;
    v39 = v74;
    (*(v70 + 32))(v92, v37, v74);
    v40 = 0;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    v40 = 1;
    v41 = v92;
    v42 = v74;
  }

  v43 = 1;
  sub_10001B350(v41, v40, 1, v42);
  v44 = UISettingProperty.wrappedValue.getter();
  if (v103 == 1)
  {
    *&v103 = 0xD00000000000001ELL;
    *(&v103 + 1) = 0x8000000100AD35C0;
    LOBYTE(v104) = 0;
    v105 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v44);
    sub_10022C350(&qword_100CC3B18, &qword_100A5CED8);
    sub_100006F64(&qword_100CC3B20, &qword_100CC3B18, &qword_100A5CED8, &protocol conformance descriptor for Stepper<A>);
    v45 = v71;
    Section<>.init(header:content:)();
    (*(v72 + 32))(v82, v45, v81);
    v43 = 0;
  }

  v46 = v82;
  v47 = sub_10001B350(v82, v43, 1, v81);
  v103 = xmmword_100A5CDA0;
  LOBYTE(v104) = 0;
  v105 = _swiftEmptyArrayStorage;
  v109 = 0xD000000000000084;
  v110 = 0x8000000100AD3530;
  v111 = 0;
  v112 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v47);
  v48 = v76;
  Section<>.init(header:footer:content:)();
  v49 = v85;
  (*(v87 + 16))(v85, v83, v88);
  *&v103 = v49;
  v50 = v89;
  (*(v98 + 16))(v89, v84, v97);
  *(&v103 + 1) = v50;
  v51 = v91;
  sub_100035AD0(v86, v91, &qword_100CB5D18, &unk_100A5CEB0);
  v104 = v51;
  v52 = v75;
  v53 = v93;
  v54 = v90;
  v55 = v94;
  (*(v75 + 16))(v93, v90, v94);
  v105 = v53;
  v56 = v92;
  v57 = v95;
  sub_100035AD0(v92, v95, &qword_100CB5D28, &unk_100A5CEA0);
  v106 = v57;
  v58 = v46;
  v59 = v96;
  sub_100035AD0(v46, v96, &qword_100CB5D30, &unk_100A49560);
  v107 = v59;
  v60 = v79;
  v61 = v78;
  v62 = v80;
  (*(v79 + 16))(v78, v48, v80);
  v108 = v61;
  sub_1003E8C74();
  v63 = *(v60 + 8);
  v63(v48, v62);
  sub_100018144(v58, &qword_100CB5D30, &unk_100A49560);
  sub_100018144(v56, &qword_100CB5D28, &unk_100A5CEA0);
  v64 = *(v52 + 8);
  v64(v54, v55);
  sub_100018144(v86, &qword_100CB5D18, &unk_100A5CEB0);
  v65 = *(v98 + 8);
  v98 += 8;
  v65(v84, v97);
  v66 = *(v87 + 8);
  v67 = v88;
  v66(v83, v88);
  v63(v61, v62);
  sub_100018144(v96, &qword_100CB5D30, &unk_100A49560);
  sub_100018144(v95, &qword_100CB5D28, &unk_100A5CEA0);
  v64(v93, v94);
  sub_100018144(v91, &qword_100CB5D18, &unk_100A5CEB0);
  v65(v89, v97);
  return (v66)(v85, v67);
}

uint64_t sub_10051FA8C(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationNotificationsDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1005219CC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100521A30(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

uint64_t sub_10051FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10051FCAC, v7, v6);
}

uint64_t sub_10051FCAC()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000FA14(&_mh_execute_header, v3, v4, "Debug setting will send notifications for predicted locations");
    sub_100007E54();
  }

  v5 = sub_100013954();
  v6(v5);
  v7 = type metadata accessor for PredictedLocationNotificationsDebugView(0);
  sub_100022D1C(v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_100006070(v8);
  sub_10002C7FC();

  return dispatch thunk of PredictedLocationsServiceProxyType.sendNotificationsForPredictedLocations()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10051FDB0()
{
  sub_10000C7E4();
  v3 = v2;
  sub_10003C594();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1005223AC;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_10051FEC0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10051FEC0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10051FF28(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x8000000100AD36B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10051FF58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v3 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for PredictedLocationNotificationsDebugView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v32 = &v31 - v13;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_1005219CC(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_100521A30(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  Button.init(action:label:)();
  static ButtonRole.destructive.getter();
  v22 = type metadata accessor for ButtonRole();
  sub_10001B350(v5, 0, 1, v22);
  sub_1005219CC(v31, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_100521A30(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20);
  Button.init(role:action:label:)();
  v24 = *(v10 + 16);
  v25 = v32;
  v24(v32, v19, v9);
  v26 = v33;
  v24(v33, v16, v9);
  v27 = v34;
  v24(v34, v25, v9);
  v28 = sub_10022C350(&qword_100CC3B88, &unk_100A5CF20);
  v24(&v27[*(v28 + 48)], v26, v9);
  v29 = *(v10 + 8);
  v29(v16, v9);
  v29(v19, v9);
  v29(v26, v9);
  return (v29)(v25, v9);
}

uint64_t sub_100520354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100520448, v7, v6);
}

uint64_t sub_100520448()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocationNotifications.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000054A4(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000FA14(&_mh_execute_header, v3, v4, "Debug setting will schedule refresh of predicted locations");
    sub_100007E54();
  }

  v5 = sub_100013954();
  v6(v5);
  v7 = type metadata accessor for PredictedLocationNotificationsDebugView(0);
  sub_100022D1C(v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_100006070(v8);
  sub_10002C7FC();

  return dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForNotifications()(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10052054C()
{
  sub_10000C7E4();
  v3 = v2;
  sub_10003C594();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;

  if (v0)
  {
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);

  return _swift_task_switch(sub_1005223AC, v7, v8);
}