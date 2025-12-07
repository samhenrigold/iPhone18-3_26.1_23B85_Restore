uint64_t sub_100098D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v20 = a5;
  v21 = a6;
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = v20;
  v26 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v17 = *(v11 + 16);
  v17(v16, v13, v10);
  v18 = *(v11 + 8);
  v18(v13, v10);
  v17(v21, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_100098F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  (*(v13 + 16))(v10);
  v24 = *(v6 + 16);
  v25 = v12;
  v24(v12, v8, a2);
  v14 = *(v6 + 8);
  v14(v8, a2);
  v23 = static Color.clear.getter();
  v41 = *(a1 + 48);
  *&v42 = *(a1 + 64);
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.getter();
  v15 = *(v39 + 1);
  v41 = *(a1 + 48);
  *&v42 = *(a1 + 64);
  State.wrappedValue.getter();
  v16 = *(v39 + 1);
  static Alignment.center.getter();
  if (v15 > v16)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v22 = v14;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v14 = v22;
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v39[0] = v23;
  v19 = v25;
  v24(v8, v25, a2);
  v34 = v39[4];
  v35 = v39[5];
  v36 = v39[6];
  v37 = v40;
  v38[0] = v8;
  v30 = v39[0];
  v31 = v39[1];
  v32 = v39[2];
  v33 = v39[3];
  v38[1] = &v30;
  sub_10009A0B0(v39, &v41);
  v29[0] = a2;
  v29[1] = sub_1000040A8(&qword_10035B050, &unk_10027FA60);
  v27 = v26;
  v28 = sub_10009A120();
  sub_1000970F0(v38, 2uLL, v29);
  sub_10009A1A4(v39);
  v14(v19, a2);
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  sub_10009A1A4(&v41);
  return (v14)(v8, a2);
}

uint64_t sub_1000992C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  static Alignment.bottom.getter();
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = v21[0];
  v21[8] = a1;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  v18 = *(v11 + 16);
  v18(v16, v13, v10);
  v19 = *(v11 + 8);
  v19(v13, v10);
  v23 = 0;
  v24 = 1;
  v25[0] = &v23;
  v18(v13, v16, v10);
  v25[1] = v13;
  v22[0] = &type metadata for Spacer;
  v22[1] = v10;
  v21[10] = &protocol witness table for Spacer;
  v21[11] = WitnessTable;
  sub_1000970F0(v25, 2uLL, v22);
  v19(v16, v10);
  return (v19)(v13, v10);
}

uint64_t sub_100099570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a2;
  v50 = a4;
  v7 = a3;
  v57 = a6;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModifiedContent();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - v12;
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  v13 = type metadata accessor for ModifiedContent();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52 = &v47 - v16;
  __chkstk_darwin(v17);
  v54 = &v47 - v18;
  v79 = *(a1 + 3);
  v80 = a1[8];
  v62 = *(a1 + 3);
  v63 = a1[8];
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.getter();
  v19 = *(&v72 + 1);
  v62 = v79;
  v63 = v80;
  State.wrappedValue.getter();
  v20 = *(&v72 + 1);
  static Alignment.center.getter();
  if (v19 > v20)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v48 = v7;
    v22 = v13;
    v23 = v9;
    v24 = v11;
    v25 = a5;
    v26 = v21;
    os_log(_:dso:log:_:_:)();

    a5 = v25;
    v11 = v24;
    v9 = v23;
    v13 = v22;
    v7 = v48;
  }

  v27 = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (a1[4])(v27);
  static Edge.Set.bottom.getter();
  if (*a1)
  {
    v28 = qword_100353988;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = v51;
    v30 = v58;
    View.padding(_:_:)();
    (*(v9 + 8))(v30, v7);
    v31 = swift_allocObject();
    v33 = v49;
    v32 = v50;
    *(v31 + 16) = v49;
    *(v31 + 24) = v7;
    *(v31 + 32) = v32;
    *(v31 + 40) = a5;
    v34 = *(a1 + 3);
    *(v31 + 80) = *(a1 + 2);
    *(v31 + 96) = v34;
    *(v31 + 112) = a1[8];
    v35 = *(a1 + 1);
    *(v31 + 48) = *a1;
    *(v31 + 64) = v35;
    *&v62 = v33;
    *(&v62 + 1) = v7;
    v63 = v32;
    *&v64 = a5;
    v36 = type metadata accessor for AXConditionalContentWithPanelView(0, &v62);
    (*(*(v36 - 8) + 16))(&v62, a1, v36);
    type metadata accessor for CGSize(0);
    v71[4] = a5;
    v71[5] = &protocol witness table for _PaddingLayout;
    WitnessTable = swift_getWitnessTable();
    sub_100099F58(&qword_100356A00, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    v38 = v52;
    View.onGeometryChange<A>(of:do:)();

    (*(v53 + 8))(v29, v11);
    v39 = sub_100009274(&qword_10035B078, &qword_10035B060, &unk_10027FA70, &protocol conformance descriptor for _GeometryActionModifier<A>);
    v71[2] = WitnessTable;
    v71[3] = v39;
    v40 = swift_getWitnessTable();
    v41 = v56;
    v42 = *(v56 + 16);
    v43 = v54;
    v42(v54, v38, v13);
    v44 = *(v41 + 8);
    v44(v38, v13);
    v67 = v75;
    v68 = v76;
    v69 = v77;
    v70 = v78;
    v64 = v72;
    v65 = v73;
    *&v62 = 0;
    *(&v62 + 1) = 6;
    v63 = 0x3FF0000000000000;
    v66 = v74;
    v71[0] = &v62;
    v45 = v55;
    v42(v55, v43, v13);
    v71[1] = v45;
    v61[0] = sub_1000040A8(&qword_10035B058, &unk_100284E90);
    v61[1] = v13;
    v59 = sub_100099FA0();
    v60 = v40;
    sub_1000970F0(v71, 2uLL, v61);
    v44(v43, v13);
    return (v44)(v45, v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100099F58(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100099C9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136446210;
    *&v15 = v3;
    *(&v15 + 1) = v4;
    type metadata accessor for CGSize(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Floating panel size changed: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  v15 = *(a2 + 48);
  v16 = *(a2 + 64);
  v14[0] = v3;
  v14[1] = v4;
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  return State.wrappedValue.setter();
}

uint64_t sub_100099EF8()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100099F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100099FA0()
{
  result = qword_10035B080;
  if (!qword_10035B080)
  {
    v1 = sub_100008CF0(&qword_10035B058, &unk_100284E90);
    sub_10009A02C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B080);
  }

  return result;
}

unint64_t sub_10009A02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B088;
  if (!qword_10035B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B088);
  }

  return result;
}

uint64_t sub_10009A0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035B050, &unk_10027FA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009A120()
{
  result = qword_10035B090;
  if (!qword_10035B090)
  {
    sub_100008CF0(&qword_10035B050, &unk_10027FA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B090);
  }

  return result;
}

uint64_t sub_10009A1A4(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035B050, &unk_10027FA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A20C(uint64_t *a1)
{
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_10009A5B4(unsigned int a1, __n128 a2)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v3);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t sub_10009A6C4()
{
  sub_1000040A8(&qword_10035B160, &qword_10027FAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027FAA0;
  *(inited + 32) = 6579570;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = static Color.red.getter();
  *(inited + 56) = 0x65676E61726FLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = static Color.orange.getter();
  *(inited + 80) = 0x776F6C6C6579;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = static Color.yellow.getter();
  *(inited + 104) = 0x6E65657267;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = static Color.green.getter();
  *(inited + 128) = 1953393005;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = static Color.mint.getter();
  *(inited + 152) = 1818322292;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = static Color.teal.getter();
  *(inited + 176) = 1851881827;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = static Color.cyan.getter();
  *(inited + 200) = 1702194274;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 216) = static Color.blue.getter();
  *(inited + 224) = 0x6F6769646E69;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = static Color.indigo.getter();
  *(inited + 248) = 0x656C70727570;
  *(inited + 256) = 0xE600000000000000;
  *(inited + 264) = static Color.purple.getter();
  *(inited + 272) = 1802398064;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = static Color.pink.getter();
  *(inited + 296) = 0x6E776F7262;
  *(inited + 304) = 0xE500000000000000;
  *(inited + 312) = static Color.brown.getter();
  *(inited + 320) = 0x6574696877;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = static Color.white.getter();
  *(inited + 344) = 2036429415;
  *(inited + 352) = 0xE400000000000000;
  *(inited + 360) = static Color.gray.getter();
  *(inited + 368) = 0x6B63616C62;
  *(inited + 376) = 0xE500000000000000;
  *(inited + 384) = static Color.black.getter();
  *(inited + 392) = 0x7261656C63;
  *(inited + 400) = 0xE500000000000000;
  *(inited + 408) = static Color.clear.getter();
  *(inited + 416) = 0x7972616D697270;
  *(inited + 424) = 0xE700000000000000;
  *(inited + 432) = static Color.primary.getter();
  *(inited + 440) = 0x7261646E6F636573;
  *(inited + 448) = 0xE900000000000079;
  *(inited + 456) = static Color.secondary.getter();
  v1 = sub_1002568D0(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_10035B168, &qword_10027FAD8);
  result = swift_arrayDestroy();
  off_10035B140 = v1;
  return result;
}

uint64_t sub_10009A924()
{
  sub_1000040A8(&qword_10035B150, &qword_10027FAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027FAB0;
  *(inited + 32) = 0x72476D6574737973;
  *(inited + 40) = 0xEB00000000327961;
  v1 = objc_opt_self();
  *(inited + 48) = [v1 systemGray2Color];
  *(inited + 56) = 0x72476D6574737973;
  *(inited + 64) = 0xEB00000000337961;
  *(inited + 72) = [v1 systemGray3Color];
  *(inited + 80) = 0x72476D6574737973;
  *(inited + 88) = 0xEB00000000347961;
  *(inited + 96) = [v1 systemGray4Color];
  *(inited + 104) = 0x72476D6574737973;
  *(inited + 112) = 0xEB00000000357961;
  *(inited + 120) = [v1 systemGray5Color];
  *(inited + 128) = 0x72476D6574737973;
  *(inited + 136) = 0xEB00000000367961;
  *(inited + 144) = [v1 systemGray6Color];
  *(inited + 152) = 0x6C6562616CLL;
  *(inited + 160) = 0xE500000000000000;
  *(inited + 168) = [v1 labelColor];
  strcpy((inited + 176), "secondaryLabel");
  *(inited + 191) = -18;
  *(inited + 192) = [v1 secondaryLabelColor];
  strcpy((inited + 200), "tertiaryLabel");
  *(inited + 214) = -4864;
  *(inited + 216) = [v1 tertiaryLabelColor];
  *(inited + 224) = 0x616E726574617571;
  *(inited + 232) = 0xEF6C6562614C7972;
  *(inited + 240) = [v1 quaternaryLabelColor];
  *(inited + 248) = 1802398060;
  *(inited + 256) = 0xE400000000000000;
  *(inited + 264) = [v1 linkColor];
  *(inited + 272) = 0x6C6F686563616C70;
  *(inited + 280) = 0xEF74786554726564;
  *(inited + 288) = [v1 placeholderTextColor];
  *(inited + 296) = 0x6F74617261706573;
  *(inited + 304) = 0xE900000000000072;
  *(inited + 312) = [v1 separatorColor];
  *(inited + 320) = 0x655365757161706FLL;
  *(inited + 328) = 0xEF726F7461726170;
  *(inited + 336) = [v1 opaqueSeparatorColor];
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x800000010029AE40;
  *(inited + 360) = [v1 systemBackgroundColor];
  *(inited + 368) = 0xD000000000000019;
  *(inited + 376) = 0x800000010029AE60;
  *(inited + 384) = [v1 secondarySystemBackgroundColor];
  *(inited + 392) = 0xD000000000000018;
  *(inited + 400) = 0x800000010029AE80;
  *(inited + 408) = [v1 tertiarySystemBackgroundColor];
  *(inited + 416) = 0xD000000000000017;
  *(inited + 424) = 0x800000010029AEA0;
  *(inited + 432) = [v1 systemGroupedBackgroundColor];
  *(inited + 440) = 0xD000000000000020;
  *(inited + 448) = 0x800000010029AEC0;
  *(inited + 456) = [v1 secondarySystemGroupedBackgroundColor];
  *(inited + 464) = 0xD00000000000001FLL;
  *(inited + 472) = 0x800000010029AEF0;
  *(inited + 480) = [v1 tertiarySystemGroupedBackgroundColor];
  *(inited + 488) = 0x69466D6574737973;
  *(inited + 496) = 0xEA00000000006C6CLL;
  *(inited + 504) = [v1 systemFillColor];
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = 0x800000010029AF10;
  *(inited + 528) = [v1 secondarySystemFillColor];
  *(inited + 536) = 0xD000000000000012;
  *(inited + 544) = 0x800000010029AF30;
  *(inited + 552) = [v1 tertiarySystemFillColor];
  *(inited + 560) = 0xD000000000000014;
  *(inited + 568) = 0x800000010029AF50;
  *(inited + 576) = [v1 quaternarySystemFillColor];
  v2 = sub_1002569D4(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_10035B158, &qword_10027FAC8);
  result = swift_arrayDestroy();
  off_10035B148 = v2;
  return result;
}

uint64_t sub_10009AE94(uint64_t a1, uint64_t a2)
{
  if (qword_1003539B8 != -1)
  {
    swift_once();
  }

  if (*(off_10035B140 + 2))
  {
    sub_100186A08(a1, a2);
    if (v4)
    {
    }
  }

  if (qword_1003539C0 != -1)
  {
    swift_once();
  }

  v6 = off_10035B148;
  if (!*(off_10035B148 + 2))
  {
    return 0;
  }

  v7 = sub_100186A08(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v6[7] + 8 * v7);
  return Color.init(uiColor:)();
}

__n128 sub_10009AF88(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10009AFAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_10009B008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10009B0C8(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_10009B190(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000040A8(&qword_10035B188, &qword_10027FBB0);
  __chkstk_darwin(v90);
  v8 = &v87 - v7;
  v9 = sub_1000040A8(&qword_10035B190, &qword_10027FBB8);
  __chkstk_darwin(v9);
  v91 = &v87 - v10;
  v11 = sub_1000040A8(&qword_10035B198, &qword_10027FBC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v87 - v13;
  v15 = sub_1000040A8(&qword_10035B1A0, &qword_10027FBC8);
  __chkstk_darwin(v15);
  v98 = &v87 - v17;
  v18 = *v2;
  if (!*v2)
  {
LABEL_23:
    type metadata accessor for ConnectionClosedModel(0);
    sub_1000A1CD8(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_24;
  }

  v19 = v2[2];
  if (!v19)
  {
LABEL_24:
    type metadata accessor for ConnectivityModel();
    sub_1000A1CD8(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
LABEL_29:

    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_30;
  }

  v94 = v5;
  v100 = v2[4];
  if (!v100)
  {
    type metadata accessor for GuidanceModel(0);
    sub_1000A1CD8(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
LABEL_27:

    goto LABEL_29;
  }

  v20 = v2[6];
  if (!v20)
  {
    type metadata accessor for OrientationModel();
    sub_1000A1CD8(&qword_10035B1B0, type metadata accessor for OrientationModel, "\ts\n");
    swift_retain_n();
    goto LABEL_27;
  }

  v95 = v9;
  v99 = v14;
  v21 = v2[8];
  if (!v21)
  {
    type metadata accessor for StewieModel(0);
    sub_1000A1CD8(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    swift_retain_n();

    goto LABEL_29;
  }

  v88 = v4;
  v89 = v19;
  v96 = v12;
  v97 = v11;
  v87 = v16;
  v22 = v2[10];
  if (v22)
  {
    v23 = *(v2 + 96);
    type metadata accessor for RadarMetrics();
    v24 = swift_allocObject();
    *(v24 + 72) = xmmword_10027FAE0;
    *(v24 + 88) = 0x3FD0C152382D7365;
    *(v24 + 16) = v23;
    v25 = v89;
    *(v24 + 24) = v18;
    *(v24 + 32) = v25;
    *(v24 + 40) = v100;
    *(v24 + 48) = v20;
    *(v24 + 56) = v21;
    *(v24 + 64) = v22;
    swift_retain_n();

    sub_1000CCB08();
    v89 = static HorizontalAlignment.center.getter();
    v105 = 0;
    sub_10009BE2C(v24);
    memcpy(v108, v103, 0x3FAuLL);
    memcpy(v109, v103, 0x3FAuLL);
    sub_100006C20(v108, &v102, &qword_10035B1B8, &qword_10027FBD0);
    sub_100008FA0(v109, &qword_10035B1B8, &qword_10027FBD0);
    memcpy(&v104[7], v108, 0x3FAuLL);
    v26 = v105;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v106[54] = v103[3];
    *&v106[70] = v103[4];
    *&v106[86] = v103[5];
    *&v106[102] = v103[6];
    *&v106[6] = v103[0];
    *&v106[22] = v103[1];
    *&v106[38] = v103[2];
    v27 = static Edge.Set.all.getter();
    v107 = 0;
    KeyPath = swift_getKeyPath();
    v29 = &v8[*(v90 + 36)];
    v30 = *(sub_1000040A8(&qword_100358448, &qword_10027CBF0) + 28);
    v31 = enum case for LayoutDirection.leftToRight(_:);
    v32 = type metadata accessor for LayoutDirection();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = KeyPath;
    *v8 = v89;
    *(v8 + 1) = 0;
    v8[16] = v26;
    memcpy(v8 + 17, v104, 0x401uLL);
    v33 = *&v106[80];
    *(v8 + 1106) = *&v106[64];
    *(v8 + 1122) = v33;
    *(v8 + 1138) = *&v106[96];
    *(v8 + 144) = *&v106[110];
    v34 = *&v106[16];
    *(v8 + 1042) = *v106;
    *(v8 + 1058) = v34;
    v35 = *&v106[48];
    *(v8 + 1074) = *&v106[32];
    *(v8 + 1090) = v35;
    v8[1160] = v27;
    *(v8 + 1161) = *v101;
    *(v8 + 291) = *&v101[3];
    *(v8 + 73) = 0u;
    *(v8 + 74) = 0u;
    v8[1200] = 0;
    v36 = sub_1000CCE18();
    static UnitPoint.center.getter();
    v38 = v37;
    v40 = v39;
    v41 = v91;
    sub_10009FF1C(v8, v91);
    v42 = v95;
    v43 = (v41 + *(v95 + 36));
    *v43 = v36;
    v43[1] = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    v44 = v92;
    static AccessibilityChildBehavior.ignore.getter();
    v45 = sub_10009FF8C();
    View.accessibilityElement(children:)();
    (v93)[1](v44, v94);
    sub_100008FA0(v41, &qword_10035B190, &qword_10027FBB8);
    v93 = objc_opt_self();
    v46 = [v93 mainBundle];
    v47._countAndFlagsBits = 0xD000000000000014;
    v94 = 0x800000010029AF70;
    v110._object = 0x800000010029AF70;
    v47._object = 0x8000000100296910;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v110._countAndFlagsBits = 0xD000000000000027;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v110);

    v102 = v49;
    sub_100031770(v50, v51, v52);
    v53 = Text.init<A>(_:)();
    v55 = v54;
    LOBYTE(v29) = v56;
    v102._countAndFlagsBits = v42;
    v102._object = v45;
    swift_getOpaqueTypeConformance2();
    v57 = v97;
    v58 = v99;
    View.accessibility(label:)();
    sub_1000317C4(v53, v55, v29 & 1);

    (*(v96 + 8))(v58, v57);
    v59 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow;
    v60 = v100;
    v61 = *(v100 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
    if (v61 != 2 && (v61 & 1) != 0 || (v62 = *(v100 + 58), v62 != 2) && (v62 & 1) != 0)
    {

LABEL_13:

      v65 = [v93 mainBundle];
      v66._countAndFlagsBits = 0xD000000000000015;
      v111._object = v94;
      v66._object = 0x800000010029AFA0;
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      v111._countAndFlagsBits = 0xD000000000000027;
      v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v111);
      countAndFlagsBits = v68._countAndFlagsBits;
      object = v68._object;

LABEL_20:
      v102._countAndFlagsBits = countAndFlagsBits;
      v102._object = object;
      v80 = Text.init<A>(_:)();
      v82 = v81;
      v84 = v83;
      v85 = v98;
      ModifiedContent<>.accessibility(value:)();
      sub_1000317C4(v80, v82, v84 & 1);

      swift_setDeallocating();

      swift_deallocClassInstance();
      return sub_1000A0214(v85);
    }

    v63 = v100 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
    v64 = *(v100 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24);

    if (v64)
    {
      goto LABEL_13;
    }

    v71 = [v93 mainBundle];
    v112._object = v94;
    v72._countAndFlagsBits = 0x20676E6964616548;
    v72._object = 0xAE00B0C266302E25;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    v112._countAndFlagsBits = 0xD000000000000027;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v112);

    sub_1000040A8(&qword_100355E48, &unk_100279210);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100279160;
    v75 = *(v60 + v59);
    if (v75 != 2 && (v75 & 1) != 0 || (v76 = *(v60 + 58), v76 != 2) && (v76 & 1) != 0)
    {
    }

    else
    {
      v77 = *v63;
      v78 = *(v63 + 24);

      if ((v78 & 1) == 0)
      {
        *(v74 + 56) = &type metadata for Double;
        *(v74 + 64) = &protocol witness table for Double;
        *(v74 + 32) = v77 * 57.2957795;
        countAndFlagsBits = String.init(format:_:)();
        object = v79;

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_30:
  type metadata accessor for UIMetrics();
  sub_1000A1CD8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  swift_retain_n();

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10009BE2C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1000CEB9C(v11);
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_10009BFEC(v2);
  memcpy(__dst, v16, 0x3A2uLL);
  memcpy(v14, v16, 0x3A2uLL);
  sub_100006C20(__dst, __src, &qword_10035B208, &qword_10027FC30);
  sub_100008FA0(v14, &qword_10035B208, &qword_10027FC30);
  memcpy(&v16[2], __dst, 0x3A2uLL);
  v10[2] = v11[2];
  v10[3] = *v12;
  *(&v10[3] + 15) = *&v12[15];
  v10[0] = v11[0];
  v10[1] = v11[1];
  __src[0] = v5;
  __src[1] = v7;
  memcpy(&__src[2], __dst, 0x3A2uLL);
  memcpy(&v10[4] + 8, __src, 0x3B2uLL);
  memcpy(v4, v10, 0x3FAuLL);
  v16[0] = v5;
  v16[1] = v7;
  sub_100006C20(__src, v9, &qword_10035B210, &qword_10027FC38);
  return sub_100008FA0(v16, &qword_10035B210, &qword_10027FC38);
}

uint64_t sub_10009BFEC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v44 = static Color.clear.getter();
  v39 = *(v2 + 16) - 2;
  if (v39 < 3)
  {
    sub_1000CCB08();
    sub_1000CCB08();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v119[3] = *&v119[27];
  *&v119[11] = *&v119[35];
  *&v119[19] = *&v119[43];
  v43 = Namespace.wrappedValue.getter();
  v42 = static MatchedGeometryProperties.position.getter();
  static UnitPoint.top.getter();
  v6 = v5;
  v8 = v7;
  sub_1000CD53C(&v120);
  v115 = v130;
  v116 = v131;
  v117 = v132;
  v118 = v133;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v114 = v129;
  v107 = v122;
  v108 = v123;
  v109 = v124;
  v110 = v125;
  v105 = v120;
  v106 = v121;
  v151 = v130;
  v152 = v131;
  v153 = v132;
  v154 = v133;
  v147 = v126;
  v148 = v127;
  v149 = v128;
  v150 = v129;
  v143 = v122;
  v144 = v123;
  v145 = v124;
  v146 = v125;
  v141 = v120;
  v142 = v121;
  if (sub_1000A027C(&v141) == 1)
  {
    sub_1000A0294(__dst);
  }

  else
  {
    v52[10] = v151;
    v52[11] = v152;
    v52[12] = v153;
    v52[13] = v154;
    v52[6] = v147;
    v52[7] = v148;
    v52[8] = v149;
    v52[9] = v150;
    v52[2] = v143;
    v52[3] = v144;
    v52[4] = v145;
    v52[5] = v146;
    v52[0] = v141;
    v52[1] = v142;
    v46[10] = v115;
    v46[11] = v116;
    v46[12] = v117;
    v46[13] = v118;
    v46[6] = v111;
    v46[7] = v112;
    v46[8] = v113;
    v46[9] = v114;
    v46[2] = v107;
    v46[3] = v108;
    v46[4] = v109;
    v46[5] = v110;
    v46[0] = v105;
    v46[1] = v106;
    sub_1000A02F4(v46, __dst);
    v9 = Namespace.wrappedValue.getter();
    v10 = static MatchedGeometryProperties.position.getter();
    static UnitPoint.bottom.getter();
    v12 = v11;
    v14 = v13;
    v15 = v4;
    v16 = Namespace.wrappedValue.getter();
    v17 = static MatchedGeometryProperties.position.getter();
    static UnitPoint.top.getter();
    v19 = v18;
    v21 = v20;
    sub_100008FA0(&v120, &qword_10035B238, &unk_10027FC60);
    __src[10] = v52[10];
    __src[11] = v52[11];
    __src[12] = v52[12];
    __src[13] = v52[13];
    __src[6] = v52[6];
    __src[7] = v52[7];
    __src[8] = v52[8];
    __src[9] = v52[9];
    __src[2] = v52[2];
    __src[3] = v52[3];
    __src[4] = v52[4];
    __src[5] = v52[5];
    __src[0] = v52[0];
    __src[1] = v52[1];
    *&__src[14] = 0xD000000000000012;
    *(&__src[14] + 1) = 0x800000010029AFC0;
    *&__src[15] = v9;
    DWORD2(__src[15]) = v10;
    *&__src[16] = v12;
    *(&__src[16] + 1) = v14;
    LOBYTE(__src[17]) = 1;
    *(&__src[17] + 1) = 0x6F742D6B63617473;
    *&__src[18] = 0xE900000000000070;
    *(&__src[18] + 1) = v16;
    v4 = v15;
    LODWORD(__src[19]) = v17;
    *(&__src[19] + 1) = v19;
    *&__src[20] = v21;
    BYTE8(__src[20]) = 0;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    memcpy(__dst, __src, 0x149uLL);
  }

  sub_1000CF730(__src);
  v102 = __src[2];
  *v103 = __src[3];
  *&v103[10] = *(&__src[3] + 10);
  v101 = __src[1];
  v100 = __src[0];
  v22 = Namespace.wrappedValue.getter();
  v23 = static MatchedGeometryProperties.position.getter();
  static UnitPoint.center.getter();
  v25 = v24;
  v27 = v26;
  v41 = static Animation.easeIn.getter();
  if (v39 >= 3)
  {
    v28 = 145.0;
    v30 = 153.0;
  }

  else
  {
    v28 = dbl_100280A70[v39];
    sub_1000CCB08();
    v30 = v29 * 0.5;
  }

  sub_1000CDCEC(v134);
  v32 = v135;
  if (v135)
  {
    sub_1000CE214(v46, v31);
    *(v52 + 6) = v46[0];
    *(&v52[4] + 6) = v46[4];
    *(&v52[3] + 6) = v46[3];
    *(&v52[2] + 6) = v46[2];
    *(&v52[1] + 6) = v46[1];
    *(&v52[8] + 6) = *&v46[8];
    *(&v52[7] + 6) = v46[7];
    *(&v52[6] + 6) = v46[6];
    *(&v52[5] + 6) = v46[5];
    __src[0] = v134[0];
    __src[1] = v134[1];
    __src[2] = v134[2];
    *&__src[3] = v32;
    *(&__src[3] + 8) = v136;
    *(&__src[4] + 8) = v137;
    *(&__src[5] + 8) = v138[0];
    *(&__src[6] + 2) = *(v138 + 10);
    *(&__src[7] + 2) = v52[0];
    *(&__src[11] + 2) = v52[4];
    *(&__src[10] + 2) = v52[3];
    *(&__src[9] + 2) = v52[2];
    *(&__src[8] + 2) = v52[1];
    __src[15] = *(&v52[7] + 14);
    *(&__src[14] + 2) = v52[7];
    *(&__src[13] + 2) = v52[6];
    *(&__src[12] + 2) = v52[5];
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    v96 = __src[12];
    v97 = __src[13];
    v98 = __src[14];
    v99 = __src[15];
    v92 = __src[8];
    v93 = __src[9];
    v94 = __src[10];
    v95 = __src[11];
    v88 = __src[4];
    v89 = __src[5];
    v90 = __src[6];
    v91 = __src[7];
    v84 = __src[0];
    v85 = __src[1];
    v86 = __src[2];
    v87 = __src[3];
  }

  else
  {
    sub_1000A02CC(&v84);
  }

  sub_1000CF4F4(v139);
  v33 = v140;
  if ((v140 & 0xFF00) == 0x200)
  {
    v38 = 0u;
    v40 = 0u;
    v33 = 512;
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    v37 = v139[2];
    v38 = v139[3];
    v36 = v139[1];
    v40 = v139[0];
  }

  v34 = v28 - v30;
  memcpy(v46, __dst, 0x149uLL);
  v60[12] = v96;
  v60[13] = v97;
  v60[14] = v98;
  v60[15] = v99;
  v60[8] = v92;
  v60[9] = v93;
  v60[10] = v94;
  v60[11] = v95;
  v60[4] = v88;
  v60[5] = v89;
  v60[6] = v90;
  v60[7] = v91;
  v60[0] = v84;
  v60[1] = v85;
  v60[2] = v86;
  v60[3] = v87;
  *v47 = v44;
  *&v47[8] = 256;
  *&v47[56] = *&v119[23];
  *&v47[42] = *&v119[16];
  *&v47[26] = *&v119[8];
  *&v47[10] = *v119;
  *&v48 = 0x6F742D6B63617473;
  *(&v48 + 1) = 0xE900000000000070;
  *&v49 = v43;
  DWORD2(v49) = v42;
  *&v50 = v6;
  *(&v50 + 1) = v8;
  v51 = 1;
  v45[4] = v48;
  v45[5] = v49;
  v45[6] = v50;
  LOBYTE(v45[7]) = 1;
  v45[0] = *v47;
  v45[1] = *&v47[16];
  v45[2] = *&v47[32];
  v45[3] = *&v47[48];
  memcpy(v52, __dst, 0x149uLL);
  memcpy(&v45[7] + 8, __dst, 0x149uLL);
  v53[2] = v102;
  v53[3] = *v103;
  v53[4] = *&v103[16];
  v53[1] = v101;
  v53[0] = v100;
  *&v54 = 0xD000000000000012;
  *(&v54 + 1) = 0x800000010029AFC0;
  *&v55 = v22;
  DWORD2(v55) = v23;
  *&v56 = v25;
  *(&v56 + 1) = v27;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = v41;
  *(&v45[34] + 8) = v55;
  *(&v45[35] + 8) = v56;
  *(&v45[36] + 8) = v57;
  *(&v45[30] + 8) = v102;
  *(&v45[31] + 8) = *v103;
  *(&v45[32] + 8) = *&v103[16];
  *(&v45[33] + 8) = v54;
  *(&v45[28] + 8) = v100;
  *(&v45[29] + 8) = v101;
  v59[12] = v96;
  v59[13] = v97;
  v59[14] = v98;
  v59[15] = v99;
  v59[8] = v92;
  v59[9] = v93;
  v59[10] = v94;
  v59[11] = v95;
  v59[4] = v88;
  v59[5] = v89;
  v59[6] = v90;
  v59[7] = v91;
  v59[0] = v84;
  v59[1] = v85;
  v59[2] = v86;
  v59[3] = v87;
  v45[50] = v96;
  v45[51] = v97;
  v45[52] = v98;
  v45[53] = v99;
  v45[46] = v92;
  v45[47] = v93;
  v45[48] = v94;
  v45[49] = v95;
  v45[42] = v88;
  v45[43] = v89;
  v45[44] = v90;
  v45[45] = v91;
  v45[38] = v84;
  v45[39] = v85;
  v58 = v34;
  *(&v45[37] + 1) = v34;
  v45[40] = v86;
  v45[41] = v87;
  memcpy(v4, v45, 0x360uLL);
  *(v4 + 864) = v40;
  *(v4 + 880) = v36;
  *(v4 + 896) = v37;
  *(v4 + 912) = v38;
  *(v4 + 928) = v33;
  sub_100006C20(v47, __src, &qword_10035B218, &qword_10027FC40);
  sub_100006C20(v52, __src, &qword_10035B220, &qword_10027FC48);
  sub_100006C20(v53, __src, &qword_10035B228, &qword_10027FC50);
  sub_100006C20(v59, __src, &qword_10035B230, &qword_10027FC58);
  sub_100008FA0(v60, &qword_10035B230, &qword_10027FC58);
  v61[2] = v102;
  v61[3] = *v103;
  v61[4] = *&v103[16];
  v61[1] = v101;
  v61[0] = v100;
  v62 = 0xD000000000000012;
  v63 = 0x800000010029AFC0;
  v64 = v22;
  v65 = v23;
  v66 = v25;
  v67 = v27;
  v68 = 0;
  v69 = v41;
  v70 = v34;
  sub_100008FA0(v61, &qword_10035B228, &qword_10027FC50);
  memcpy(__src, v46, 0x149uLL);
  sub_100008FA0(__src, &qword_10035B220, &qword_10027FC48);
  v74 = *v119;
  v72 = v44;
  v73 = 256;
  v75 = *&v119[8];
  *v76 = *&v119[16];
  *&v76[14] = *&v119[23];
  v77 = 0x6F742D6B63617473;
  v78 = 0xE900000000000070;
  v79 = v43;
  v80 = v42;
  v81 = v6;
  v82 = v8;
  v83 = 1;
  return sub_100008FA0(&v72, &qword_10035B218, &qword_10027FC40);
}

void *sub_10009CB90@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(qword_100354AB8, &unk_100282D10);
  TimelineView.Context.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = a1[19];
  v70 = a1[18];
  v71 = v10;
  v11 = a1[21];
  v72 = a1[20];
  v73 = v11;
  v74 = *(a1 + 44);
  v12 = a1[15];
  v66 = a1[14];
  v67 = v12;
  v13 = a1[17];
  v68 = a1[16];
  v69 = v13;
  v14 = *&v66;
  v15 = v70;
  sub_1000A1EFC(&v66, v65);
  v16 = remainder(v9, v14);
  if (v16 < 0.0)
  {
    v17 = a1[11];
    v18 = a1[9];
    v61 = a1[10];
    v62 = v17;
    v19 = a1[11];
    v20 = a1[13];
    v63 = a1[12];
    v64 = v20;
    v21 = a1[7];
    v22 = a1[5];
    v23 = fabs(v14 * 0.5 + v16) / (v14 * 0.5);
    v57 = a1[6];
    v58 = v21;
    v24 = a1[7];
    v25 = a1[9];
    v59 = a1[8];
    v60 = v25;
    v26 = a1[3];
    v27 = a1[1];
    v53 = a1[2];
    v54 = v26;
    v28 = a1[3];
    v29 = a1[5];
    v55 = a1[4];
    v56 = v29;
    v30 = a1[1];
    v51 = *a1;
    v52 = v30;
    v50[10] = v61;
    v50[11] = v19;
    v31 = a1[13];
    v50[12] = v63;
    v50[13] = v31;
    v50[6] = v57;
    v50[7] = v24;
    v50[8] = v59;
    v50[9] = v18;
    v50[2] = v53;
    v50[3] = v28;
    v50[4] = v55;
    v50[5] = v22;
    v50[0] = v51;
    v50[1] = v27;
    v50[20] = v72;
    v50[21] = v73;
    *&v50[22] = v74;
    v50[17] = v69;
    v50[19] = v71;
    v50[18] = v70;
    v50[15] = v67;
    v50[16] = v68;
    v50[14] = v66;
    memcpy(v48, v50, 0x168uLL);
    *&v48[45] = v23;
    sub_1000A2168(v48);
    memcpy(v49, v48, 0x179uLL);
    sub_1000A02F4(&v51, v65);
LABEL_12:
    v44 = sub_1000040A8(&qword_10035B410, &qword_100280498);
    sub_1000A1DD8(v44, v45, v46);
    sub_1000A1E2C(&qword_10035B408, &qword_10035B410, &qword_100280498, sub_1000A1EA8);
    _ConditionalContent<>.init(storage:)();
    memcpy(v49, v65, 0x179uLL);
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    memcpy(v65, v49, 0x179uLL);
    return memcpy(a2, v65, 0x179uLL);
  }

  v32 = a1[11];
  v61 = a1[10];
  v62 = v32;
  v33 = a1[13];
  v63 = a1[12];
  v64 = v33;
  v34 = a1[7];
  v57 = a1[6];
  v58 = v34;
  v35 = a1[9];
  v59 = a1[8];
  v60 = v35;
  v36 = a1[3];
  v53 = a1[2];
  v54 = v36;
  v37 = a1[5];
  v55 = a1[4];
  v56 = v37;
  v38 = a1[1];
  v51 = *a1;
  v52 = v38;
  if ((BYTE8(v54) & 1) == 0)
  {
    v39 = v16;
    if (v15)
    {
      v40 = *&v54;
      sub_1000A02F4(&v51, v65);
      *&v41 = COERCE_DOUBLE(sub_1000A1FFC(v9, v14, v40));
      if (v42)
      {
        sub_1000A1F58(&v66);
        sub_1000A20D8(&v51);
        sub_1000A212C(v50);
LABEL_11:
        memcpy(v48, v50, 0x178uLL);
        sub_1000A1FF0(v48);
        memcpy(v49, v48, 0x179uLL);
        goto LABEL_12;
      }

      v43 = *&v41;
    }

    else
    {
      sub_1000A02F4(&v51, v65);
      v43 = 0.0;
    }

    v49[10] = v61;
    v49[11] = v62;
    v49[12] = v63;
    v49[13] = v64;
    v49[6] = v57;
    v49[7] = v58;
    v49[8] = v59;
    v49[9] = v60;
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v49[5] = v56;
    v49[0] = v51;
    v49[1] = v52;
    v49[20] = v72;
    v49[21] = v73;
    *&v49[22] = v74;
    v49[16] = v68;
    v49[17] = v69;
    v49[18] = v70;
    v49[19] = v71;
    v49[14] = v66;
    v49[15] = v67;
    memcpy(v65, v49, 0x168uLL);
    v65[45] = v39 / (v14 * 0.5);
    v65[46] = v43;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    memcpy(v50, v65, 0x178uLL);
    goto LABEL_11;
  }

  sub_1000A1F58(&v66);
  sub_1000A1FAC(v65);
  return memcpy(a2, v65, 0x179uLL);
}

uint64_t sub_10009D060@<X0>(double *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 25);
  v6 = *(a1 + 29);
  v5 = *(a1 + 30);
  v7 = *(a1 + 31);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  v10 = *(a1 + 35);
  v26 = *(a1 + 42);
  v11 = a1[45];
  sub_1000CC9A8(*(a1 + 32), v11);
  v13 = v12;
  v28 = v12;
  v52 = v9;
  sub_1000CC9A8(v10, v11);
  v15 = v14;
  sub_1000CC9A8(v8, v11);
  v17 = v16;
  sub_1000A2A3C(&v52, v73);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v44[7] = v45;
  *&v44[23] = v46;
  *&v44[39] = v47;
  sub_1000CC9A8(v6, v11);
  v19 = v18;
  v51 = v7;
  sub_1000CC9A8(v10, v11);
  v21 = v20;
  sub_1000CC9A8(v5, v11);
  v23 = v22;
  sub_1000A2A3C(&v51, v73);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v43[7] = v48;
  *&v43[23] = v49;
  *&v43[39] = v50;
  *&v53 = v4;
  *(&v53 + 1) = v26;
  *&v54 = a3;
  *(&v54 + 1) = v13;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = v9;
  LOWORD(v56) = 256;
  *(&v56 + 1) = v15;
  *v57 = v17;
  v57[8] = 0;
  *&v57[56] = *(&v47 + 1);
  *&v57[41] = *&v44[32];
  *&v57[25] = *&v44[16];
  *&v57[9] = *v44;
  v29 = v53;
  v30 = v54;
  v31 = *v57;
  v32 = *&v57[16];
  v33 = *&v57[32];
  v34 = *&v57[48];
  *&v58 = v4;
  *(&v58 + 1) = v26;
  *&v59 = a3;
  *(&v59 + 1) = v19;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v7;
  LOWORD(v61) = 256;
  *(&v61 + 1) = v21;
  *v62 = v23;
  v62[8] = 0;
  *&v62[56] = *(&v50 + 1);
  *&v62[41] = *&v43[32];
  *&v62[25] = *&v43[16];
  *&v62[9] = *v43;
  v37 = v60;
  v38 = v61;
  v35 = v58;
  v36 = v59;
  v41 = *&v62[32];
  v42 = *&v62[48];
  v39 = *v62;
  v40 = *&v62[16];
  v24 = v56;
  a2[2] = v55;
  a2[3] = v24;
  *a2 = v29;
  a2[1] = v30;
  a2[6] = v33;
  a2[7] = v34;
  a2[4] = v31;
  a2[5] = v32;
  a2[10] = v37;
  a2[11] = v38;
  a2[8] = v35;
  a2[9] = v36;
  a2[14] = v41;
  a2[15] = v42;
  a2[12] = v39;
  a2[13] = v40;
  v63[0] = v4;
  v63[1] = v26;
  *&v63[2] = a3;
  v63[3] = v19;
  v64 = 0;
  v65 = v7;
  v66 = 256;
  v67 = v21;
  v68 = v23;
  v69 = 0;
  v70 = *v43;
  v71 = *&v43[16];
  *v72 = *&v43[32];
  *&v72[15] = *(&v50 + 1);
  sub_100006C20(&v53, v73, &qword_10035B4F8, &qword_100280920);
  sub_100006C20(&v58, v73, &qword_10035B4F8, &qword_100280920);
  sub_100008FA0(v63, &qword_10035B4F8, &qword_100280920);
  v73[0] = v4;
  v73[1] = v26;
  *&v73[2] = a3;
  v73[3] = v28;
  v74 = 0;
  v75 = v9;
  v76 = 256;
  v77 = v15;
  v78 = v17;
  v79 = 0;
  v80 = *v44;
  v81 = *&v44[16];
  *v82 = *&v44[32];
  *&v82[15] = *(&v47 + 1);
  return sub_100008FA0(v73, &qword_10035B4F8, &qword_100280920);
}

double sub_10009D3F8@<D0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1000CC9A8(*&__dst[43], __dst[45]);
  v4 = v3;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_10009D060(__dst, &v18, v4);
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v51[12] = v30;
  v51[13] = v31;
  v51[14] = v32;
  v51[15] = v33;
  v51[8] = v26;
  v51[9] = v27;
  v51[10] = v28;
  v51[11] = v29;
  v51[4] = v22;
  v51[5] = v23;
  v51[6] = v24;
  v51[7] = v25;
  v51[0] = v18;
  v51[1] = v19;
  v51[2] = v20;
  v51[3] = v21;
  sub_100006C20(&v35, &v17, &qword_10035B4F0, &qword_100280918);
  sub_100008FA0(v51, &qword_10035B4F0, &qword_100280918);
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = v48;
  *(a1 + 208) = v47;
  *(a1 + 224) = v8;
  v9 = v50;
  *(a1 + 240) = v49;
  *(a1 + 256) = v9;
  v10 = v44;
  *(a1 + 144) = v43;
  *(a1 + 160) = v10;
  v11 = v46;
  *(a1 + 176) = v45;
  *(a1 + 192) = v11;
  v12 = v40;
  *(a1 + 80) = v39;
  *(a1 + 96) = v12;
  v13 = v42;
  *(a1 + 112) = v41;
  *(a1 + 128) = v13;
  v14 = v36;
  *(a1 + 16) = v35;
  *(a1 + 32) = v14;
  result = *&v37;
  v16 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v16;
  return result;
}

__n128 sub_10009D5A4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  v25 = *(v1 + 328);
  v26 = *(v1 + 200);
  v9 = *(v1 + 360);
  sub_1000CC9A8(*(v1 + 352), v9);
  v11 = v10;
  sub_1000CC9A8(v5, v9);
  v13 = v12;
  if (v4)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *(v1 + 368);
  static UnitPoint.bottom.getter();
  v17 = v16;
  v19 = v18;
  v29 = v8;
  sub_1000CC9A8(v6, v9);
  v21 = v20;
  sub_1000CC9A8(v7, v9);
  v23 = v22;
  sub_1000A2A3C(&v29, v28);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = v8;
  *(a1 + 88) = 256;
  *(a1 + 96) = v21;
  *(a1 + 104) = v23;
  *(a1 + 112) = 0;
  *(a1 + 113) = *v27;
  *(a1 + 129) = *&v27[16];
  result = *&v27[32];
  *(a1 + 145) = *&v27[32];
  *(a1 + 160) = *&v27[47];
  return result;
}

double sub_10009D724@<D0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *&result = sub_10009D5A4(a1).n128_u64[0];
  return result;
}

void sub_10009D770(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v8 = *(v6 + 8);
  if (v8 <= 0.0 || v8 >= 3.14159265 || CGRectIsNull(*&a3) || (v25.origin.x = a3, v25.origin.y = a4, v25.size.width = a5, v25.size.height = a6, CGRectIsInfinite(v25)))
  {
    Path.init()();
    v14 = v21;
    v13 = v23;
    v15 = v24;
  }

  else
  {
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    CGRectGetWidth(v26);
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    CGRectGetHeight(v27);
    v16 = *v6;
    v22 = *v6;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    Path.init()();
    __sincos_stret(v22);
    Path.move(to:)();
    v17 = *(v6 + 32);
    if (v17)
    {
      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    }

    else
    {
      Path.addLine(to:)();
    }

    Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    __sincos_stret(v16);
    if (v17)
    {
      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    }

    else
    {
      Path.addLine(to:)();
    }

    Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    Path.closeSubpath()();
    v13 = v19;
    v14 = v18;
    v15 = v20;
  }

  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15;
}

double sub_10009DAD0@<D0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v8 = v6[1];
  v13 = *v6;
  v14 = v8;
  v15 = *(v6 + 32);
  sub_10009D770(v11, a3, a4, a5, a6);
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v12;
  return result;
}

uint64_t (*sub_10009DB44(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1000A3228;
}

uint64_t sub_10009DBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A31C4(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009DC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A31C4(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009DC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000A31C4(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

double sub_10009DCE0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v3 = type metadata accessor for AnimationTimelineSchedule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  memcpy(v19, v2, 0x168uLL);
  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  v10 = swift_allocObject();
  memcpy((v10 + 16), v19, 0x168uLL);
  (*(v4 + 16))(v6, v9, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000A1C58;
  *(v11 + 24) = v10;
  sub_1000A1CA0(v19, v17);
  sub_1000040A8(&qword_10035B3E0, &qword_100280488);
  sub_1000A1CD8(&qword_100354AA0, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
  sub_1000A1E2C(&qword_10035B3E8, &qword_10035B3E0, &qword_100280488, sub_1000A1D20);
  v12 = v16;
  TimelineView<>.init(_:content:)();
  (*(v4 + 8))(v9, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (v12 + *(sub_1000040A8(&qword_10035B420, &unk_1002804A0) + 36));
  v14 = v17[1];
  *v13 = v17[0];
  v13[1] = v14;
  result = v18[0];
  v13[2] = *v18;
  return result;
}

uint64_t sub_10009DF94@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[11];
  v4[11] = a1[10];
  v4[12] = v5;
  v6 = a1[13];
  v4[13] = a1[12];
  v4[14] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[9];
  v4[9] = a1[8];
  v4[10] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  v10 = a1[5];
  v4[5] = a1[4];
  v4[6] = v10;
  v11 = a1[1];
  v4[1] = *a1;
  v4[2] = v11;
  v12 = swift_allocObject();
  v13 = a1[11];
  v12[11] = a1[10];
  v12[12] = v13;
  v14 = a1[13];
  v12[13] = a1[12];
  v12[14] = v14;
  v15 = a1[7];
  v12[7] = a1[6];
  v12[8] = v15;
  v16 = a1[9];
  v12[9] = a1[8];
  v12[10] = v16;
  v17 = a1[3];
  v12[3] = a1[2];
  v12[4] = v17;
  v18 = a1[5];
  v12[5] = a1[4];
  v12[6] = v18;
  v19 = a1[1];
  v12[1] = *a1;
  v12[2] = v19;
  __dst[0] = 0;
  sub_1000A0C68(a1, v36);
  sub_1000A0C68(a1, v36);
  State.init(wrappedValue:)();
  v20 = a1[9];
  v47 = a1[10];
  v21 = a1[10];
  v48 = a1[11];
  v22 = a1[11];
  v49 = a1[12];
  v50 = a1[13];
  v23 = a1[5];
  v43 = a1[6];
  v24 = a1[6];
  v44 = a1[7];
  v25 = a1[7];
  v45 = a1[8];
  v26 = a1[8];
  v46 = a1[9];
  v27 = a1[3];
  v39 = a1[2];
  v40 = v27;
  v41 = a1[4];
  v28 = a1[4];
  v42 = a1[5];
  v29 = a1[1];
  v37 = *a1;
  v38 = v29;
  v56 = v20;
  v57 = v21;
  v58 = v22;
  v52 = v23;
  v53 = v24;
  v54 = v25;
  v55 = v26;
  v30 = v36[0];
  v31 = v36[1];
  v59 = *(a1 + 24);
  v51 = v28;
  if (sub_1000A0CA0(&v51) == 1)
  {
    sub_1000A0CB8(v36);
  }

  else
  {
    __src[10] = v47;
    __src[11] = v48;
    __src[12] = v49;
    __src[13] = v50;
    __src[6] = v43;
    __src[7] = v44;
    __src[8] = v45;
    __src[9] = v46;
    __src[2] = v39;
    __src[3] = v40;
    __src[4] = v41;
    __src[5] = v42;
    __src[0] = v37;
    __src[1] = v38;
    __src[20] = v57;
    __src[21] = v58;
    *&__src[22] = v59;
    __src[16] = v53;
    __src[17] = v54;
    __src[18] = v55;
    __src[19] = v56;
    __src[14] = v51;
    __src[15] = v52;
    memcpy(__dst, __src, sizeof(__dst));
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    sub_1000A0C68(a1, v36);
    memcpy(v36, __dst, sizeof(v36));
  }

  memcpy(__dst, v36, sizeof(__dst));
  memcpy(__src, v36, 0x168uLL);
  *a2 = v30;
  *(a2 + 8) = v31;
  *(a2 + 16) = sub_1000A0BB0;
  *(a2 + 24) = v4;
  *(a2 + 32) = sub_1000A0C60;
  *(a2 + 40) = v12;
  memcpy((a2 + 48), v36, 0x168uLL);
  sub_100006C20(&v41, v33, &qword_10035B278, &qword_10027FF48);

  sub_100006C20(__src, v33, &qword_10035B280, &qword_10027FF50);
  sub_100008FA0(__dst, &qword_10035B280, &qword_10027FF50);
}

uint64_t sub_10009E304(uint64_t *a1)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *(a1 + 23);
  v27 = *(a1 + 21);
  v28 = v7;
  v29 = *(a1 + 25);
  v30 = a1[27];
  v8 = *(a1 + 15);
  v23 = *(a1 + 13);
  v24 = v8;
  v9 = *(a1 + 19);
  v25 = *(a1 + 17);
  v26 = v9;
  v10 = *(a1 + 7);
  v19 = *(a1 + 5);
  v20 = v10;
  v11 = *(a1 + 11);
  v21 = *(a1 + 9);
  v22 = v11;

  static UnitPoint.bottom.getter();
  RadialGradient.init(gradient:center:startRadius:endRadius:)();
  sub_1000A0C68(a1, __dst);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v14[3] = *&v14[27];
  *&v14[11] = *&v14[35];
  *&v14[19] = v15;
  __src[0] = v2;
  __src[1] = v4;
  __src[2] = v3;
  __src[3] = v6;
  __src[4] = v5;
  *&__src[21] = v27;
  *&__src[23] = v28;
  *&__src[25] = v29;
  __src[27] = v30;
  *&__src[13] = v23;
  *&__src[15] = v24;
  *&__src[17] = v25;
  *&__src[19] = v26;
  *&__src[5] = v19;
  *&__src[7] = v20;
  *&__src[9] = v21;
  *&__src[11] = v22;
  __src[28] = v5;
  *&__src[29] = v16;
  *&__src[31] = v17;
  __src[33] = v18;
  LOWORD(__src[34]) = 256;
  *(&__src[34] + 2) = *v14;
  *(&__src[36] + 2) = *&v14[8];
  *(&__src[38] + 2) = *&v14[16];
  __src[40] = *(&v15 + 1);
  sub_1000040A8(&qword_10035B288, &qword_10027FF58);
  sub_1000A0CF0();
  View.accessibility(hidden:)();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_100008FA0(__dst, &qword_10035B288, &qword_10027FF58);
}

void sub_10009E530(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v8 = *(v6 + 224);
  if (v8 <= 0.0 || v8 >= 3.14159265 || CGRectIsNull(*&a3) || (v23.origin.x = a3, v23.origin.y = a4, v23.size.width = a5, v23.size.height = a6, CGRectIsInfinite(v23)))
  {
    Path.init()();
    v14 = v20;
    v13 = v21;
    v15 = v22;
  }

  else
  {
    v16 = *(v6 + 200);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetWidth(v24);
    v25.origin.x = a3;
    v25.origin.y = a4;
    v25.size.width = a5;
    v25.size.height = a6;
    CGRectGetHeight(v25);
    Path.init()();
    Path.move(to:)();
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    __sincos_stret(v16);
    Path.addLine(to:)();
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    Path.closeSubpath()();
    v13 = v18;
    v14 = v17;
    v15 = v19;
  }

  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15;
}

double sub_10009E718@<D0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v8 = v6[13];
  v31 = v6[12];
  v32 = v8;
  v33 = *(v6 + 28);
  v9 = v6[9];
  v27 = v6[8];
  v28 = v9;
  v10 = v6[11];
  v29 = v6[10];
  v30 = v10;
  v11 = v6[5];
  v23 = v6[4];
  v24 = v11;
  v12 = v6[7];
  v25 = v6[6];
  v26 = v12;
  v13 = v6[1];
  v19 = *v6;
  v20 = v13;
  v14 = v6[3];
  v21 = v6[2];
  v22 = v14;
  sub_10009E530(v17, a3, a4, a5, a6);
  result = *v17;
  v16 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v16;
  *(a2 + 32) = v18;
  return result;
}

uint64_t (*sub_10009E7B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10009E838;
}

void sub_10009E83C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10009E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2170(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009E8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2170(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000A2170(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

void *sub_10009E99C@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[11];
  v17[10] = v2[10];
  v17[11] = v4;
  v5 = v2[13];
  v17[12] = v2[12];
  v17[13] = v5;
  v6 = v2[7];
  v17[6] = v2[6];
  v17[7] = v6;
  v7 = v2[9];
  v17[8] = v2[8];
  v17[9] = v7;
  v8 = v2[3];
  v17[2] = v2[2];
  v17[3] = v8;
  v9 = v2[5];
  v17[4] = v2[4];
  v17[5] = v9;
  v10 = v2[1];
  v17[0] = *v2;
  v17[1] = v10;
  v11 = static Alignment.center.getter();
  v13 = v12;
  sub_10009DF94(v17, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_100006C20(__dst, &v15, &qword_10035B270, &qword_10027FF40);
  sub_100008FA0(v19, &qword_10035B270, &qword_10027FF40);
  *a2 = v11;
  a2[1] = v13;
  return memcpy(a2 + 2, __dst, 0x198uLL);
}

double sub_10009EA8C@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_10009EB98(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_100006C20(__dst, v10, &qword_10035B248, &qword_10027FEF8);
  sub_100008FA0(v13, &qword_10035B248, &qword_10027FEF8);
  memcpy(__src, __dst, sizeof(__src));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v5;
  *(a2 + 8) = v7;
  memcpy((a2 + 16), __src, 0x1A0uLL);
  v8 = v10[1];
  *(a2 + 432) = v10[0];
  *(a2 + 448) = v8;
  result = *v11;
  *(a2 + 464) = v11[0];
  return result;
}

uint64_t sub_10009EB98@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v115 = *(a1 + 56);
  v4 = a1[5];
  v112 = a1[4];
  v113 = v4;
  v114 = a1[6];
  v5 = a1[1];
  v110[0] = *a1;
  v110[1] = v5;
  v6 = a1[3];
  v110[2] = a1[2];
  v111 = v6;
  v7 = a1[5];
  v97 = a1[4];
  v98 = v7;
  v99 = a1[6];
  LOWORD(v100) = *(a1 + 56);
  v8 = a1[1];
  v93 = *a1;
  v94 = v8;
  v9 = a1[3];
  v95 = a1[2];
  v96 = v9;
  if (v115 == 1)
  {
    LOBYTE(v67) = 0;
    BYTE2(v100) = 0;
  }

  else
  {
    LOBYTE(v67) = 1;
    BYTE2(v100) = 1;
  }

  v10 = sub_1000A0804(v110, &v81);
  v13 = sub_1000A0860(v10, v11, v12);
  sub_1000A08B4(v13, v14, v15);
  _ConditionalContent<>.init(storage:)();
  v16 = *(&v111 + 1);
  if (*(&v111 + 1))
  {
    v17 = *&v112 / 6.28318531;

    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    KeyPath = swift_getKeyPath();
    *&v93 = *&v110[0];

    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v19 = v93;
    static UnitPoint.center.getter();
    v21 = v20;
    v23 = v22;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    *&v81 = 0;
    *(&v81 + 1) = v17;
    v82 = v46;
    v83 = v47;
    *&v84 = v48;
    *(&v84 + 1) = KeyPath;
    *&v85 = v16;
    *(&v85 + 1) = v19;
    *&v86 = v21;
    *(&v86 + 1) = v23;
    v89 = v69;
    v88 = v68;
    v87 = v67;
    *&v90 = 0;
    *(&v90 + 1) = *(&v114 + 1);
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v93 = v81;
    v94 = v82;
  }

  else
  {
    sub_1000A0908(&v93);
  }

  v24 = *(a1 + 200);
  v25 = *(a1 + 232);
  v63[6] = *(a1 + 216);
  v63[7] = v25;
  v26 = *(a1 + 136);
  v27 = *(a1 + 168);
  v63[2] = *(a1 + 152);
  v63[3] = v27;
  v63[4] = *(a1 + 184);
  v63[5] = v24;
  v63[0] = *(a1 + 120);
  v63[1] = v26;
  v28 = *(a1 + 200);
  v29 = *(a1 + 232);
  v79[6] = *(a1 + 216);
  v79[7] = v29;
  v30 = *(a1 + 136);
  v31 = *(a1 + 168);
  v79[2] = *(a1 + 152);
  v79[3] = v31;
  v32 = *(a1 + 184);
  v79[5] = v28;
  v79[4] = v32;
  v33 = *(a1 + 120);
  v79[1] = v30;
  v79[0] = v33;
  v60 = v107;
  v61 = v108;
  v62[0] = *v109;
  v56 = v103;
  v57 = v104;
  v58 = v105;
  v59 = v106;
  v52 = v99;
  v53 = v100;
  v54 = v101;
  v55 = v102;
  v48 = v95;
  v49 = v96;
  v50 = v97;
  v51 = v98;
  v46 = v93;
  v47 = v94;
  v65[0] = v103;
  v65[1] = v104;
  v45[0] = v103;
  v45[1] = v104;
  v65[4] = v107;
  v65[5] = v108;
  v65[2] = v105;
  v65[3] = v106;
  v45[2] = v105;
  v45[3] = v106;
  v66[0] = *v109;
  v45[4] = v107;
  v45[5] = v108;
  v45[6] = *v109;
  v67 = v93;
  v68 = v94;
  v72 = v98;
  v71 = v97;
  v69 = v95;
  v70 = v96;
  v76 = v102;
  v75 = v101;
  v74 = v100;
  v73 = v99;
  *(&v45[16] + 8) = v102;
  *(&v45[13] + 8) = v99;
  *(&v45[14] + 8) = v100;
  v64 = *(a1 + 31);
  v80 = *(a1 + 31);
  *(v62 + 15) = *&v109[15];
  *(v66 + 15) = *&v109[15];
  *(&v45[6] + 15) = *&v109[15];
  *(&v45[15] + 8) = v101;
  *(&v45[9] + 8) = v95;
  *(&v45[10] + 8) = v96;
  *(&v45[11] + 8) = v97;
  *(&v45[12] + 8) = v98;
  *(&v45[7] + 8) = v93;
  *(&v45[8] + 8) = v94;
  v34 = *(a1 + 200);
  v35 = *(a1 + 232);
  v77[6] = *(a1 + 216);
  v77[7] = v35;
  v78 = *(a1 + 31);
  v36 = *(a1 + 136);
  v37 = *(a1 + 168);
  v77[2] = *(a1 + 152);
  v77[3] = v37;
  v38 = *(a1 + 184);
  v77[5] = v34;
  v77[4] = v38;
  v39 = *(a1 + 120);
  v77[1] = v36;
  v77[0] = v39;
  v40 = *(a1 + 200);
  v41 = *(a1 + 232);
  *(&v45[23] + 8) = *(a1 + 216);
  *(&v45[24] + 8) = v41;
  v42 = *(a1 + 136);
  v43 = *(a1 + 168);
  *(&v45[19] + 8) = *(a1 + 152);
  *(&v45[20] + 8) = v43;
  *(&v45[21] + 8) = *(a1 + 184);
  *(&v45[22] + 8) = v40;
  *(&v45[17] + 8) = *(a1 + 120);
  *(&v45[18] + 8) = v42;
  *(&v45[25] + 1) = *(a1 + 31);
  memcpy(a2, v45, 0x1A0uLL);
  sub_1000A0924(v63, &v81);
  sub_100006C20(v65, &v81, &qword_10035B260, &qword_10027FF00);
  sub_100006C20(&v67, &v81, &qword_10035B268, &qword_10027FF08);
  sub_1000A0980(v77, &v81);
  sub_1000A09B8(v79);
  v87 = v52;
  v88 = v53;
  v89 = v54;
  v90 = v55;
  v83 = v48;
  v84 = v49;
  v85 = v50;
  v86 = v51;
  v81 = v46;
  v82 = v47;
  sub_100008FA0(&v81, &qword_10035B268, &qword_10027FF08);
  v91[4] = v60;
  v91[5] = v61;
  v92[0] = v62[0];
  *(v92 + 15) = *(v62 + 15);
  v91[0] = v56;
  v91[1] = v57;
  v91[2] = v58;
  v91[3] = v59;
  return sub_100008FA0(v91, &qword_10035B260, &qword_10027FF00);
}

double sub_10009F1D0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 104);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v5 = static Alignment.center.getter();
  v7 = v6;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v3;
  *(a1 + 48) = 256;
  *(a1 + 56) = v5;
  *(a1 + 64) = v7;
  *(a1 + 72) = v14;
  *(a1 + 88) = v15;
  result = *&v16;
  *(a1 + 104) = v16;
  *(a1 + 120) = 0;
  *(a1 + 128) = v4;
  return result;
}

void sub_10009F330(uint64_t a1)
{
  v2 = *(v1 + 32);
  v7[0] = *v1;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  if (v2)
  {
    if (((360 / v2) & 0x8000000000000000) == 0)
    {
      v7[15] = 0.0;
      *&v7[16] = 360 / v2;
      swift_getKeyPath();
      v3 = swift_allocObject();
      *(v3 + 16) = v7[0];
      v4 = *(v1 + 80);
      *(v3 + 88) = *(v1 + 64);
      *(v3 + 104) = v4;
      *(v3 + 120) = *(v1 + 96);
      v5 = *(v1 + 16);
      *(v3 + 24) = *v1;
      *(v3 + 40) = v5;
      v6 = *(v1 + 48);
      *(v3 + 56) = *(v1 + 32);
      *(v3 + 136) = *(v1 + 112);
      *(v3 + 72) = v6;
      sub_1000A180C(v1, v7);
      sub_1000040A8(&qword_10035B370, &qword_100280450);
      sub_1000040A8(&qword_10035B378, &qword_100280458);
      sub_1000A1844();
      sub_1000A1924();
      ForEach<>.init(_:id:content:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_10009F4A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if ((*(a2 + 32) * *result) >> 64 == (*(a2 + 32) * *result) >> 63)
  {
    v6 = *(a2 + 96);
    v5 = *(a2 + 104);
    v7 = *(a2 + 48);
    *&v10 = a4;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v8 = __sincos_stret(*&v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v9[6] = v10;
    *&v9[22] = v11;
    *&v9[38] = v12;

    result = static Animation.linear.getter();
    *(a3 + 10) = *v9;
    *a3 = v7;
    *(a3 + 8) = 256;
    *(a3 + 26) = *&v9[16];
    *(a3 + 42) = *&v9[32];
    *(a3 + 56) = *(&v12 + 1);
    *(a3 + 64) = 0;
    *(a3 + 72) = v5;
    *(a3 + 80) = v6;
    *(a3 + 88) = v6 * v8.__cosval;
    *(a3 + 96) = v6 * v8.__sinval;
    *(a3 + 104) = result;
    *(a3 + 112) = v6 * v8.__cosval;
    *(a3 + 120) = v6 * v8.__sinval;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_10009F68C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 65);
  v7 = swift_allocObject();
  v13 = *(v1 + 16);
  v14 = *v1;
  v8 = __sincos_stret(*v1);
  v9 = vmuld_lane_f64(v8.__cosval, v14, 1);
  v10 = vmuld_lane_f64(v8.__sinval, v14, 1);
  *(v7 + 16) = v14;
  *(v7 + 32) = v13;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v5;
  *(v7 + 72) = *(v1 + 56);
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 81) = v6;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = static Animation.linear.getter();
  *a1 = v6 & 1;
  *(a1 + 8) = sub_1000A07FC;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0;
  result = v14;
  *(a1 + 88) = v14.f64[1];
  *(a1 + 80) = v5;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  return result;
}

__n128 sub_10009F838@<Q0>(uint64_t a1@<X8>)
{
  sub_1000040A8(&qword_10035B3D8, &qword_100280480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100279170;
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v24 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 44);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 88);
  v31 = *(v1 + 72);
  v32 = v13;
  v33 = *(v1 + 104);
  v14.n128_u64[1] = *(&v33 + 1);
  v14.n128_u64[0] = *(v1 + 120);
  v25 = v14;
  v26 = v4;
  v14.n128_u64[1] = *(v1 + 128);
  v23 = v14;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;

  Gradient.init(colors:)();
  static UnitPoint.center.getter();
  v27[0] = v5;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  AngularGradient.init(gradient:center:startAngle:endAngle:)();

  sub_1000A0980(v1, v27);
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = static Animation.linear.getter();
  v19 = v32;
  *(a1 + 72) = v31;
  *a1 = v5;
  *(a1 + 8) = v26;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v24;
  *(a1 + 40) = v8;
  *(a1 + 44) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 88) = v19;
  *(a1 + 104) = v33;
  *&v20 = v26;
  *(&v20 + 1) = v24;
  *(a1 + 136) = v20;
  *(a1 + 120) = v23;
  *(a1 + 152) = v8;
  *(a1 + 156) = v9;
  *(a1 + 160) = v10;
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  *(a1 + 216) = v30;
  v21 = v28;
  *(a1 + 200) = v29;
  *(a1 + 184) = v21;
  *(a1 + 224) = 256;
  *(a1 + 232) = v15;
  *(a1 + 240) = v17;
  *(a1 + 248) = 0;
  result = v25;
  *(a1 + 256) = v25.n128_u64[0];
  *(a1 + 264) = v18;
  *(a1 + 272) = v26;
  return result;
}

double sub_10009FA8C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v17 = v1[6];
  v18 = v3;
  v19 = v1[8];
  v4 = v1[3];
  v13 = v1[2];
  v14 = v4;
  v5 = v1[5];
  v15 = v1[4];
  v16 = v5;
  v6 = v1[1];
  v11 = *v1;
  v12 = v6;
  sub_1000A2A98(v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*sub_10009FB54(void *a1))(double *a1)
{
  a1[1] = v1;
  Angle.animatableData.getter();
  *a1 = v3;
  return sub_10009FBA0;
}

uint64_t sub_10009FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2DB8(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2DB8(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000A2DB8(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

uint64_t sub_10009FCE4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1000A1CD8(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel, "\ts\n");
  v3 = EnvironmentObject.init()();
  v19 = v4;
  v20 = v3;
  type metadata accessor for ConnectivityModel();
  sub_1000A1CD8(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
  v18 = EnvironmentObject.init()();
  v6 = v5;
  type metadata accessor for GuidanceModel(0);
  sub_1000A1CD8(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for OrientationModel();
  sub_1000A1CD8(&qword_10035B1B0, type metadata accessor for OrientationModel, "\ts\n");
  v10 = EnvironmentObject.init()();
  v12 = v11;
  type metadata accessor for StewieModel(0);
  sub_1000A1CD8(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v13 = EnvironmentObject.init()();
  v15 = v14;
  type metadata accessor for UIMetrics();
  sub_1000A1CD8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = result;
  *(a1 + 88) = v17;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_10009FF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035B188, &qword_10027FBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009FF8C()
{
  result = qword_10035B1C0;
  if (!qword_10035B1C0)
  {
    sub_100008CF0(&qword_10035B190, &qword_10027FBB8);
    sub_1000A0018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B1C0);
  }

  return result;
}

unint64_t sub_1000A0018()
{
  result = qword_10035B1C8;
  if (!qword_10035B1C8)
  {
    sub_100008CF0(&qword_10035B188, &qword_10027FBB0);
    sub_1000A00D0();
    sub_100009274(&qword_10035B200, &qword_100358448, &qword_10027CBF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B1C8);
  }

  return result;
}

unint64_t sub_1000A00D0()
{
  result = qword_10035B1D0;
  if (!qword_10035B1D0)
  {
    sub_100008CF0(&qword_10035B1D8, &qword_10027FC10);
    sub_1000A015C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B1D0);
  }

  return result;
}

unint64_t sub_1000A015C()
{
  result = qword_10035B1E0;
  if (!qword_10035B1E0)
  {
    sub_100008CF0(&qword_10035B1E8, &qword_10027FC18);
    sub_100009274(&qword_10035B1F0, &qword_10035B1F8, &unk_10027FC20, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B1E0);
  }

  return result;
}

uint64_t sub_1000A0214(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035B1A0, &qword_10027FBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A027C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1000A0294(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 313) = 0u;
  return result;
}

double sub_1000A02CC(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_1000A0360(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A0384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000A03D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000A0440(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1000A0484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A04CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A055C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000A0574(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1000A05B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1000A05F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A0684()
{
  result = qword_10035B240;
  if (!qword_10035B240)
  {
    sub_100008CF0(&qword_10035B1A0, &qword_10027FBC8);
    sub_100008CF0(&qword_10035B190, &qword_10027FBB8);
    sub_10009FF8C();
    swift_getOpaqueTypeConformance2();
    sub_1000A1CD8(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B240);
  }

  return result;
}

unint64_t sub_1000A0860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B250;
  if (!qword_10035B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B250);
  }

  return result;
}

unint64_t sub_1000A08B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B258;
  if (!qword_10035B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B258);
  }

  return result;
}

double sub_1000A0908(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1000A09E8@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, _BYTE *)@<X1>, void *a3@<X8>)
{
  v6 = sub_1000040A8(qword_100354AB8, &unk_100282D10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14[-v9];
  v11 = sub_1000040A8(&qword_10035B428, &qword_1002804B0);
  v13 = *(v11 - 8);
  result = (v11 - 8);
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v15, v10);
    (*(v7 + 8))(v10, v6);
    memcpy(v16, v15, 0x179uLL);
    memcpy(v17, v15, 0x179uLL);
    sub_100006C20(v16, v14, &qword_10035B3E0, &qword_100280488);
    sub_100008FA0(v17, &qword_10035B3E0, &qword_100280488);
    return memcpy(a3, v16, 0x179uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A0BBC()
{

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_1000A0CA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1000A0CB8(uint64_t a1)
{
  *(a1 + 352) = 0;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1000A0CF0()
{
  result = qword_10035B290;
  if (!qword_10035B290)
  {
    sub_100008CF0(&qword_10035B288, &qword_10027FF58);
    sub_100009274(&qword_10035B298, &qword_10035B2A0, &qword_10027FF60, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B290);
  }

  return result;
}

__n128 sub_1000A0DA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000A0DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000A0E24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A0E94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000A0ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A0F20(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1000A0F98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_1000A0FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A108C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1000A10D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1000A1120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A11AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B2A8;
  if (!qword_10035B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B2A8);
  }

  return result;
}

unint64_t sub_1000A1204()
{
  result = qword_10035B2B0;
  if (!qword_10035B2B0)
  {
    sub_100008CF0(&qword_10035B2B8, &qword_1002801B0);
    sub_1000A12E8(&qword_10035B2C0, &qword_10035B2C8, &qword_1002801B8, sub_1000A136C);
    sub_100009274(&qword_10035B308, &qword_10035B310, &qword_1002801D8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B2B0);
  }

  return result;
}

uint64_t sub_1000A12E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    v9 = a4();
    sub_1000A14B0(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A136C()
{
  result = qword_10035B2D0;
  if (!qword_10035B2D0)
  {
    sub_100008CF0(&qword_10035B2D8, &qword_1002801C0);
    sub_1000A13F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B2D0);
  }

  return result;
}

unint64_t sub_1000A13F8()
{
  result = qword_10035B2E0;
  if (!qword_10035B2E0)
  {
    sub_100008CF0(&qword_10035B2E8, &qword_1002801C8);
    sub_100009274(&qword_10035B2F0, &qword_10035B2F8, &qword_1002801D0, &unk_100282BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B2E0);
  }

  return result;
}

unint64_t sub_1000A14B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B300;
  if (!qword_10035B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B300);
  }

  return result;
}

unint64_t sub_1000A1508()
{
  result = qword_10035B318;
  if (!qword_10035B318)
  {
    sub_100008CF0(&qword_10035B320, &qword_1002801E0);
    sub_100009274(&qword_10035B328, &qword_10035B330, &qword_1002801E8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B318);
  }

  return result;
}

unint64_t sub_1000A164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B358;
  if (!qword_10035B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B358);
  }

  return result;
}

unint64_t sub_1000A16A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B360;
  if (!qword_10035B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B360);
  }

  return result;
}

unint64_t sub_1000A16FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B368;
  if (!qword_10035B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B368);
  }

  return result;
}

uint64_t sub_1000A17C0()
{

  return _swift_deallocObject(v0, 138, 7);
}

unint64_t sub_1000A1844()
{
  result = qword_10035B380;
  if (!qword_10035B380)
  {
    v1 = sub_100008CF0(&qword_10035B370, &qword_100280450);
    sub_1000A18D0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B380);
  }

  return result;
}

unint64_t sub_1000A18D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B388;
  if (!qword_10035B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B388);
  }

  return result;
}

unint64_t sub_1000A1924()
{
  result = qword_10035B390;
  if (!qword_10035B390)
  {
    sub_100008CF0(&qword_10035B378, &qword_100280458);
    sub_1000A12E8(&qword_10035B398, &qword_10035B3A0, &qword_100280460, sub_1000A1A08);
    sub_100009274(&qword_10035B308, &qword_10035B310, &qword_1002801D8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B390);
  }

  return result;
}

unint64_t sub_1000A1A08()
{
  result = qword_10035B3A8;
  if (!qword_10035B3A8)
  {
    sub_100008CF0(&qword_10035B3B0, &qword_100280468);
    sub_1000A1A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B3A8);
  }

  return result;
}

unint64_t sub_1000A1A94()
{
  result = qword_10035B3B8;
  if (!qword_10035B3B8)
  {
    sub_100008CF0(&qword_10035B3C0, &qword_100280470);
    sub_100009274(&qword_10035B3C8, &qword_10035B3D0, &qword_100280478, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B3B8);
  }

  return result;
}

uint64_t sub_1000A1B4C()
{

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 376, 7);
}

uint64_t sub_1000A1C60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A1CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A1D20()
{
  result = qword_10035B3F0;
  if (!qword_10035B3F0)
  {
    v1 = sub_100008CF0(&qword_10035B3F8, &qword_100280490);
    sub_1000A1DD8(v1, v2, v3);
    sub_1000A1E2C(&qword_10035B408, &qword_10035B410, &qword_100280498, sub_1000A1EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B3F0);
  }

  return result;
}

unint64_t sub_1000A1DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B400;
  if (!qword_10035B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B400);
  }

  return result;
}

uint64_t sub_1000A1E2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1000A1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B418;
  if (!qword_10035B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B418);
  }

  return result;
}

double sub_1000A1FAC(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 376) = -1;
  return result;
}

uint64_t sub_1000A1FFC(long double a1, long double a2, double a3)
{
  v6 = a1 - remainder(a1, a2) - a2 * 0.5;
  if ((byte_10035B180 & 1) == 0 && *&qword_10035B170 == v6)
  {
    return qword_10035B178;
  }

  if (a2 * 0.5 + a2 * 0.125 < a1 - v6)
  {
    return 0;
  }

  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  result = *&a3;
  qword_10035B170 = *&v6;
  qword_10035B178 = *&a3;
  byte_10035B180 = 0;
  return result;
}

double sub_1000A212C(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
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

unint64_t sub_1000A2170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B430;
  if (!qword_10035B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B430);
  }

  return result;
}

uint64_t sub_1000A21C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000A220C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A2288(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
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

uint64_t sub_1000A22D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A2388(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_1000A23D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A2484()
{
  result = qword_10035B438;
  if (!qword_10035B438)
  {
    sub_100008CF0(&qword_10035B440, &qword_100280738);
    sub_1000A2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B438);
  }

  return result;
}

unint64_t sub_1000A2510()
{
  result = qword_10035B448;
  if (!qword_10035B448)
  {
    sub_100008CF0(&qword_10035B450, &qword_100280740);
    sub_100009274(&qword_10035B458, &qword_10035B460, &qword_100280748, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B448);
  }

  return result;
}

unint64_t sub_1000A25CC()
{
  result = qword_10035B468;
  if (!qword_10035B468)
  {
    sub_100008CF0(&qword_10035B470, &qword_100280750);
    sub_1000A1924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B468);
  }

  return result;
}

unint64_t sub_1000A2654()
{
  result = qword_10035B478;
  if (!qword_10035B478)
  {
    sub_100008CF0(&qword_10035B480, &qword_100280758);
    sub_1000A270C();
    sub_100009274(&qword_10035B4A8, &qword_10035B4B0, &qword_100280770, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B478);
  }

  return result;
}

unint64_t sub_1000A270C()
{
  result = qword_10035B488;
  if (!qword_10035B488)
  {
    sub_100008CF0(&qword_10035B490, &qword_100280760);
    sub_100009274(&qword_10035B498, &qword_10035B4A0, &qword_100280768, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B488);
  }

  return result;
}

unint64_t sub_1000A27C8()
{
  result = qword_10035B4B8;
  if (!qword_10035B4B8)
  {
    sub_100008CF0(&qword_10035B420, &unk_1002804A0);
    sub_1000A2854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B4B8);
  }

  return result;
}

unint64_t sub_1000A2854()
{
  result = qword_10035B4C0;
  if (!qword_10035B4C0)
  {
    sub_100008CF0(&qword_10035B4C8, &qword_100280778);
    sub_1000A1E2C(&qword_10035B3E8, &qword_10035B3E0, &qword_100280488, sub_1000A1D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B4C0);
  }

  return result;
}

unint64_t sub_1000A2958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B4E0;
  if (!qword_10035B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B4E0);
  }

  return result;
}

unint64_t sub_1000A29B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B4E8;
  if (!qword_10035B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B4E8);
  }

  return result;
}

double sub_1000A2A98@<D0>(uint64_t a2@<X8>)
{
  Path.init()();
  v4 = *v2;
  v5 = v2[16] * 0.5;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  if ((static Angle.== infix(_:_:)() & 1) == 0)
  {
    v6 = v2[17];
    v7 = v6 < 0.0 ? -v6 : v2[17];
    if (v5 < v7)
    {
      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      __sincos_stret(v4);
      if (v6 <= 0.0)
      {
        Angle.animatableData.getter();
        Angle.animatableData.setter();
      }

      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      if (v6 <= 0.0)
      {
        Angle.animatableData.getter();
        Angle.animatableData.setter();
      }

      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      if (v5 >= v7)
      {
        Angle.animatableData.getter();
        Angle.animatableData.getter();
        Angle.animatableData.setter();
      }

      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      __sincos_stret(v6);
      Angle.animatableData.getter();
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      __sincos_stret(v6);
      Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
      Path.addLine(to:)();
      Path.move(to:)();
      Path.addLine(to:)();
    }
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_1000A2DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B500;
  if (!qword_10035B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B500);
  }

  return result;
}

uint64_t sub_1000A2E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000A2E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000A2F00()
{
  result = qword_10035B518;
  if (!qword_10035B518)
  {
    sub_100008CF0(&qword_10035B520, &qword_100280950);
    sub_1000A2F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B518);
  }

  return result;
}

unint64_t sub_1000A2F8C()
{
  result = qword_10035B528;
  if (!qword_10035B528)
  {
    sub_100008CF0(&qword_10035B530, &qword_100280958);
    sub_1000A3018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B528);
  }

  return result;
}

unint64_t sub_1000A3018()
{
  result = qword_10035B538;
  if (!qword_10035B538)
  {
    sub_100008CF0(&qword_10035B540, &qword_100280960);
    sub_100009274(&qword_10035B548, &qword_10035B550, &qword_100280968, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B538);
  }

  return result;
}

unint64_t sub_1000A3118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B568;
  if (!qword_10035B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B568);
  }

  return result;
}

unint64_t sub_1000A3170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B570;
  if (!qword_10035B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B570);
  }

  return result;
}

unint64_t sub_1000A31C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B578;
  if (!qword_10035B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B578);
  }

  return result;
}

void *sub_1000A3260(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (__OFADD__(*a1, v4))
  {
    __break(1u);
  }

  else
  {
    *a1 += v4;
  }

  return result;
}

uint64_t sub_1000A32B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000089B0(a2, v38);
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v8 = a1[3];
  v6[3] = a1[2];
  v6[4] = v8;
  sub_100008A18(v38, (v6 + 5));
  sub_1000089B0(a2, v37);
  v9 = swift_allocObject();
  sub_100008A18(v37, v9 + 16);
  v36 = a1[3];
  sub_1000A475C(a1, v33);
  sub_1000040A8(&qword_100356CA8, &qword_10027A4F0);
  State.wrappedValue.getter();
  type metadata accessor for UIMetrics();
  sub_1000A4838(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v10 = EnvironmentObject.init()();
  v12 = v11;
  type metadata accessor for CGSize(0);
  v36 = 0uLL;
  State.init(wrappedValue:)();
  v13 = *(a1 + 4);
  if (!v13)
  {
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  v14 = v33[0];
  v15 = v33[1];
  v16 = v33[2];
  sub_1000089B0(v13 + 48, v33);
  v17 = v34;
  v18 = v35;
  sub_1000088DC(v33, v34);
  v19 = *(a1 + 2);
  if (!v19)
  {
LABEL_8:
    type metadata accessor for StewieModel(0);
    sub_1000A4838(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v31 = v16;
  v32 = v12;
  if (*(v19 + 64))
  {
    v20 = *(v19 + 88);
  }

  else
  {
    v20 = 0;
  }

  v21 = (*(v18 + 184))(v20, v17, v18);
  v23 = v22;

  v24 = (a3 + *(sub_1000040A8(&qword_10035B580, &qword_100280B38) + 36));
  v25 = v24 + *(sub_1000040A8(&qword_10035B5A8, &unk_100282010) + 36);
  v26 = sub_1000040A8(&qword_10035B5B8, &qword_100280B60);
  v27 = *(v26 + 36);
  v28 = type metadata accessor for ToolbarItemPlacement();
  (*(*(v28 - 8) + 56))(&v25[v27], 1, 1, v28);
  *v25 = 1;
  v29 = &v25[*(v26 + 40)];
  *v29 = sub_1000A42F4;
  v29[1] = 0;
  *v24 = v21;
  v24[1] = v23;
  *a3 = v10;
  a3[1] = v32;
  a3[2] = sub_1000A47EC;
  a3[3] = v6;
  a3[4] = sub_1000A4830;
  a3[5] = v9;
  a3[6] = v14;
  a3[7] = v15;
  a3[8] = v31;
  return sub_100008964(v33);
}

double sub_1000A3624@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_10035B5D0, &qword_100280B98);
  sub_1000A36C0(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_10035B5D8, &qword_100280BA0) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_1000A36C0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SymbolVariants();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_10035B5E0, &unk_1002831D0);
  __chkstk_darwin(v9);
  v11 = &v83 - v10;
  v12 = sub_1000040A8(&qword_100354FC0, &qword_10027C1C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v83 - v13;
  v15 = sub_1000040A8(&qword_10035B5E8, &qword_100280BA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v83 - v16;
  v18 = sub_1000040A8(&qword_10035B5F0, &qword_100280BB0);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v25 = a1[2];
  if (v25)
  {
    v85 = v7;
    v86 = v6;
    v87 = v9;
    v88 = v21;
    v89 = v17;
    v90 = v24;
    v93 = &v83 - v22;
    v94 = a2;
    v91 = v23;
    v92 = a3;
    v26 = a1[4];
    if (v26)
    {
      v27 = (*(v25 + 64) != 0) & *(v25 + 120);
      v28 = v26[9];
      v29 = v26[10];
      sub_1000088DC(v26 + 6, v28);
      v30 = *(v29 + 40);
      swift_retain_n();
      v30(v28, v29);
      static Font.Weight.light.getter();
      v31 = enum case for Font.Design.default(_:);
      v32 = type metadata accessor for Font.Design();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v14, v31, v32);
      (*(v33 + 56))(v14, 0, 1, v32);
      v34 = static Font.system(size:weight:design:)();
      sub_100008FA0(v14, &qword_100354FC0, &qword_10027C1C0);
      LODWORD(v30) = v27;
      v35 = Image.init(systemName:)();
      KeyPath = swift_getKeyPath();
      *&v123 = v35;
      *(&v123 + 1) = KeyPath;
      *&v124 = v34;

      v37 = v84;
      static SymbolVariants.fill.getter();
      sub_1000040A8(&qword_100355050, &unk_100283230);
      sub_10000C700();
      View.symbolVariant(_:)();
      (*(v85 + 8))(v37, v86);

      *&v11[*(v87 + 36)] = static Color.green.getter();
      sub_1000A4A68();
      v38 = v89;
      View.accessibility(hidden:)();
      sub_100008FA0(v11, &qword_10035B5E0, &unk_1002831D0);

      sub_1000088DC(v94, v94[3]);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v39 = v90;
      sub_10000CF4C(v38, v90, &qword_10035B5E8, &qword_100280BA8);
      v40 = (v39 + *(v88 + 36));
      v41 = v128;
      v40[4] = v127;
      v40[5] = v41;
      v40[6] = v129;
      v42 = v124;
      *v40 = v123;
      v40[1] = v42;
      v43 = v126;
      v40[2] = v125;
      v40[3] = v43;
      sub_10000CF4C(v39, v93, &qword_10035B5F0, &qword_100280BB0);

      v44 = v26[9];
      v45 = v26[10];
      sub_1000088DC(v26 + 6, v44);
      *&v121[0] = (*(v45 + 216))(v30 ^ 1, v44, v45);
      *(&v121[0] + 1) = v46;
      sub_100031770(*&v121[0], v46, v47);
      v48 = Text.init<A>(_:)();
      v50 = v49;
      LOBYTE(v35) = v51;

      v52 = v26[9];
      v53 = v26[10];
      sub_1000088DC(v26 + 6, v52);
      (*(v53 + 72))(v52, v53);
      v54 = Text.font(_:)();
      v56 = v55;
      LOBYTE(v38) = v57;
      v90 = v58;
      sub_1000317C4(v48, v50, v35 & 1);

      v59 = v26[9];
      v60 = v26[10];
      sub_1000088DC(v26 + 6, v59);
      (*(v60 + 80))(v59, v60);
      v61 = Text.foregroundColor(_:)();
      v63 = v62;
      LOBYTE(v50) = v64;
      v66 = v65;
      sub_1000317C4(v54, v56, v38 & 1);

      v67 = swift_getKeyPath();
      v68 = sub_1000088DC(v94, v94[3]);
      v69 = *(*v68 + 184);
      v70 = *(*v68 + 192);
      v71 = *(*v68 + 200);
      v72 = *(*v68 + 208);
      v73 = static Edge.Set.all.getter();
      LOBYTE(v116) = v50 & 1;
      LOBYTE(v95) = 0;
      *&v100 = v61;
      *(&v100 + 1) = v63;
      LOBYTE(v101) = v50 & 1;
      *(&v101 + 1) = v66;
      *&v102 = v67;
      BYTE8(v102) = 1;
      LOBYTE(v103) = v73;
      *(&v103 + 1) = v69;
      *&v104[0] = v70;
      *(&v104[0] + 1) = v71;
      *&v104[1] = v72;
      BYTE8(v104[1]) = 0;
      v105[0] = v61;
      v105[1] = v63;
      v106 = v50 & 1;
      v107 = v66;
      v108 = v67;
      v109 = 1;
      v110 = v73;
      v111 = v69;
      v112 = v70;
      v113 = v71;
      v114 = v72;
      v115 = 0;
      sub_100006C20(&v100, v121, &qword_10035B600, &qword_100280C20);
      sub_100008FA0(v105, &qword_10035B600, &qword_100280C20);
      v74 = v93;
      v75 = v91;
      sub_1000A4B64(v93, v91);
      v97 = v102;
      v98 = v103;
      v99[0] = v104[0];
      *(v99 + 9) = *(v104 + 9);
      v95 = v100;
      v96 = v101;
      v76 = v92;
      sub_1000A4B64(v75, v92);
      v77 = (v76 + *(sub_1000040A8(&qword_10035B608, &qword_100280C28) + 48));
      v120[0] = v99[0];
      *(v120 + 9) = *(v99 + 9);
      v118 = v97;
      v119 = v98;
      v116 = v95;
      v117 = v96;
      sub_100006C20(&v116, v121, &qword_10035B600, &qword_100280C20);
      sub_100008FA0(v74, &qword_10035B5F0, &qword_100280BB0);
      v78 = v119;
      v77[2] = v118;
      v77[3] = v78;
      v77[4] = v120[0];
      *(v77 + 73) = *(v120 + 9);
      v79 = v117;
      *v77 = v116;
      v77[1] = v79;
      v121[2] = v97;
      v121[3] = v98;
      v122[0] = v99[0];
      *(v122 + 9) = *(v99 + 9);
      v121[0] = v95;
      v121[1] = v96;
      sub_100008FA0(v121, &qword_10035B600, &qword_100280C20);
      return sub_100008FA0(v75, &qword_10035B5F0, &qword_100280BB0);
    }

    type metadata accessor for UIMetrics();
    v81 = &qword_100354D40;
    v82 = type metadata accessor for UIMetrics;
  }

  else
  {
    type metadata accessor for StewieModel(0);
    v81 = &qword_1003561B8;
    v82 = type metadata accessor for StewieModel;
  }

  sub_1000A4838(v81, v82, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_1000A4048@<Q0>(uint64_t a2@<X8>)
{
  v21 = static HorizontalAlignment.center.getter();
  v22[208] = 0;
  type metadata accessor for AlertAppearanceModel();
  sub_1000A4838(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel, "\ts\n");
  v3 = EnvironmentObject.init()();
  v19 = v4;
  v20 = v3;
  type metadata accessor for AppEvents();
  sub_1000A4838(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v5 = EnvironmentObject.init()();
  v17 = v6;
  v18 = v5;
  type metadata accessor for RoadsideAssistanceModel();
  sub_1000A4838(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for StewieModel(0);
  sub_1000A4838(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v22[200] = 0;
  v23 = v21;
  v24.n128_u8[0] = 0;
  v24.n128_u64[1] = v20;
  *&v25 = v19;
  *(&v25 + 1) = v18;
  *&v26 = v17;
  *(&v26 + 1) = v7;
  *&v27 = v9;
  *(&v27 + 1) = EnvironmentObject.init()();
  *&v28 = v10;
  *(&v28 + 1) = swift_getKeyPath();
  LOBYTE(v29) = 0;
  BYTE8(v29) = static Edge.Set.top.getter();
  v30 = 0u;
  v31 = 0u;
  LOBYTE(v32) = 1;
  BYTE8(v32) = static Edge.Set.all.getter();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36[0] = v21;
  v36[1] = 0;
  v37 = 0;
  v38 = v20;
  v39 = v19;
  v40 = v18;
  v41 = v17;
  v42 = v7;
  v43 = __PAIR128__(*(&v27 + 1), v9);
  v44 = v28;
  v45 = 0;
  v46 = BYTE8(v29);
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v50 = BYTE8(v32);
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  sub_100006C20(&v23, v22, &qword_10035B5C8, &qword_100280B90);
  sub_100008FA0(v36, &qword_10035B5C8, &qword_100280B90);
  v11 = v34;
  *(a2 + 160) = v33;
  *(a2 + 176) = v11;
  *(a2 + 192) = v35;
  v12 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v12;
  v13 = v32;
  *(a2 + 128) = v31;
  *(a2 + 144) = v13;
  v14 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v14;
  v15 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v15;
  result = v24;
  *a2 = v23;
  *(a2 + 16) = result;
  return result;
}

void *sub_1000A42F4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1000A4838(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_1000A4838(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1000A4404@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v4 = v1[2];
  v5 = v1[3];
  v18 = v4;
  v19 = v5;
  if (v4)
  {
    v6 = *(v4 + 72);
    v7 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v6);
    v8 = (*(v7 + 32))(v15, v6, v7);
    __chkstk_darwin(v8);
    sub_1000040A8(&qword_10035B580, &qword_100280B38);
    sub_1000A45D0();
    NavigationStack.init<>(root:)();
    v9 = swift_allocObject();
    v10 = v17;
    *(v9 + 1) = v16;
    *(v9 + 2) = v10;
    v11 = v19;
    *(v9 + 3) = v18;
    *(v9 + 4) = v11;
    v12 = (a1 + *(sub_1000040A8(&qword_10035B5B0, &unk_100280B50) + 36));
    *v12 = sub_1000A4704;
    v12[1] = v9;
    sub_1000A475C(&v16, v14);
    return sub_100008964(v15);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000A4838(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A45D0()
{
  result = qword_10035B588;
  if (!qword_10035B588)
  {
    sub_100008CF0(&qword_10035B580, &qword_100280B38);
    sub_100009274(&qword_10035B590, &qword_10035B598, &unk_100280B40, &unk_10027FA10);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8, &unk_100282010, &unk_100284C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B588);
  }

  return result;
}

uint64_t sub_1000A46B4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A4794()
{

  sub_100008964((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000A47F8()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A4838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000A4880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_100026A14(a1, a2, a3);
  result = EnvironmentValues.subscript.getter();
  *a4 = v6;
  return result;
}

void *sub_1000A48D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_100026A14(a1, a2, a3);
  result = EnvironmentValues.subscript.getter();
  *a4 = v6;
  return result;
}

uint64_t sub_1000A49B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A49E4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000A4A68()
{
  result = qword_10035B5F8;
  if (!qword_10035B5F8)
  {
    sub_100008CF0(&qword_10035B5E0, &unk_1002831D0);
    sub_100008CF0(&qword_100355050, &unk_100283230);
    sub_10000C700();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357798, &qword_1003577A0, &qword_10027B320, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B5F8);
  }

  return result;
}

uint64_t sub_1000A4B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035B5F0, &qword_100280BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A4BE8()
{
  result = qword_10035B610;
  if (!qword_10035B610)
  {
    sub_100008CF0(&qword_10035B5B0, &unk_100280B50);
    sub_100009274(&qword_10035B618, &qword_10035B620, &qword_100280C50, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100009274(&qword_10035B628, &qword_10035B630, qword_100280C58, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B610);
  }

  return result;
}

double sub_1000A4CF8@<D0>(uint64_t a3@<X8>)
{
  v32 = a3;
  v4 = type metadata accessor for KeyboardShortcut();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassProminentButtonStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040A8(&qword_10035B648, &qword_100280D78);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_1000040A8(&qword_10035B650, &qword_100280D80);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;

  sub_1000040A8(&qword_100357710, &qword_10027B258);
  sub_1000503F8();
  Button.init(action:label:)();
  v16 = &v12[*(v10 + 36)];
  v17 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
  v18 = enum case for ControlSize.large(_:);
  v19 = type metadata accessor for ControlSize();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  GlassProminentButtonStyle.init()();
  sub_1000A5464();
  sub_1000A5548(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v20 = v32;
  v21 = &v15[*(v13 + 36)];
  sub_1000040A8(&qword_100357740, &qword_10027B2A0);
  static ButtonBorderShape.capsule.getter();
  sub_1000A5590(v12);
  *v21 = swift_getKeyPath();
  v22 = v33;
  static KeyboardShortcut.defaultAction.getter();
  sub_1000A5600();
  View.keyboardShortcut(_:)();
  (*(v34 + 8))(v22, v35);
  sub_1000A5744(v15);
  v23 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v36 = v23;
  v25 = AnyShapeStyle.init<A>(_:)();
  v26 = (v20 + *(sub_1000040A8(&qword_10035B678, &qword_100280E28) + 36));
  *v26 = KeyPath;
  v26[1] = v25;
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  v27 = 38.0 - *&qword_100381C20;
  v28 = static Edge.Set.all.getter();
  v29 = v20 + *(sub_1000040A8(&qword_10035B680, &qword_100280E30) + 36);
  *v29 = v28;
  result = 24.0;
  *(v29 + 8) = xmmword_100280CB0;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  return result;
}

__n128 sub_1000A5194@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v23._object = 0x800000010029B010;
  v3._countAndFlagsBits = 0x20749980E26E6F44;
  v3._object = 0xAC000000646E6553;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD00000000000004FLL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v23);

  sub_100031770(v6, v7, v8);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 96) = v20;
  *(a1 + 112) = v21;
  *(a1 + 128) = v22;
  *(a1 + 32) = v5;
  *(a1 + 48) = v17;
  result = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_1000A52FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = v2[9];
    v5 = v2[10];
    sub_1000088DC(v2 + 6, v4);
    (*(v5 + 24))(v10, v4, v5);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v6 = sub_1000040A8(&qword_10035B638, &qword_100280D68);
    sub_1000A4CF8(a1 + *(v6 + 44));
    v7 = static Edge.Set.all.getter();
    v8 = a1 + *(sub_1000040A8(&qword_10035B640, &qword_100280D70) + 36);
    *v8 = v7;
    *(v8 + 8) = xmmword_100277A70;
    *(v8 + 24) = xmmword_100277A70;
    *(v8 + 40) = 0;
    return sub_100008964(v10);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000A5548(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A5464()
{
  result = qword_10035B658;
  if (!qword_10035B658)
  {
    sub_100008CF0(&qword_10035B648, &qword_100280D78);
    sub_100009274(&qword_10035B660, &qword_10035B668, &unk_100280DB8, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B658);
  }

  return result;
}

uint64_t sub_1000A5548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A5590(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035B648, &qword_100280D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A5600()
{
  result = qword_10035B670;
  if (!qword_10035B670)
  {
    sub_100008CF0(&qword_10035B650, &qword_100280D80);
    sub_100008CF0(&qword_10035B648, &qword_100280D78);
    type metadata accessor for GlassProminentButtonStyle();
    sub_1000A5464();
    sub_1000A5548(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B670);
  }

  return result;
}

uint64_t sub_1000A5744(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035B650, &qword_100280D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A57B8()
{
  result = qword_10035B688;
  if (!qword_10035B688)
  {
    sub_100008CF0(&qword_10035B640, &qword_100280D70);
    sub_100009274(&qword_10035B690, &qword_10035B698, &qword_100280E38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreTelephonySPIAgent.SelectRoadsideProviderResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CoreTelephonySPIAgent.SelectRoadsideProviderResponse(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1000A59E4(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t sub_1000A5A6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v62 = a2;
  v68 = a3;
  v65 = sub_1000040A8(&qword_10035B718, &qword_100281040);
  __chkstk_darwin(v65);
  v66 = v56 - v4;
  v5 = sub_1000040A8(&qword_10035B720, &qword_100281048);
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = v56 - v6;
  v7 = sub_1000040A8(&qword_10035B728, &qword_100281050);
  __chkstk_darwin(v7);
  v9 = v56 - v8;
  v10 = sub_1000040A8(&qword_10035B6E0, &qword_100281020);
  __chkstk_darwin(v10);
  v12 = v56 - v11;
  v13 = sub_1000040A8(&qword_10035B6F0, &qword_100281028);
  __chkstk_darwin(v13);
  v15 = (v56 - v14);
  v63 = sub_1000040A8(&qword_10035B6C0, &qword_100281010);
  __chkstk_darwin(v63);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = v56 - v19;
  *v15 = static Alignment.center.getter();
  v15[1] = v20;
  v21 = sub_1000040A8(&qword_10035B730, &qword_100281058);
  sub_1000A6288(a1, (v15 + *(v21 + 44)));
  v22 = sub_100083AD0();
  sub_100084DCC(v22, v23);
  v67 = v5;
  if (v22 >> 62 == 1)
  {
    v58 = v17;
    v59 = v13;
    v56[1] = v7;
    v24 = sub_100083AD0();
    v26 = v25;
    if (v24 >> 62)
    {
      v27 = v10;
      if (v24 >> 62 == 1)
      {
        v57 = v24;
      }

      else
      {
        v57 = 0;
        v26 = 0;
      }
    }

    else
    {
      sub_100084DCC(v24, v25);
      v57 = 0;
      v26 = 0;
      v27 = v10;
    }

    type metadata accessor for StewieModel(0);
    sub_1000A745C(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    v29 = EnvironmentObject.init()();
    v31 = v30;
    type metadata accessor for AppEvents();
    sub_1000A745C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    v32 = EnvironmentObject.init()();
    v34 = v33;
    sub_100006C20(v15, v12, &qword_10035B6F0, &qword_100281028);
    v35 = &v12[*(v27 + 36)];
    *v35 = v29;
    v35[1] = v31;
    v35[2] = v32;
    v35[3] = v34;
    v35[4] = v57;
    v35[5] = v26;
    sub_100006C20(v12, v9, &qword_10035B6E0, &qword_100281020);
    swift_storeEnumTagMultiPayload();
    sub_1000A77E8();
    sub_100009274(&qword_10035B6E8, &qword_10035B6F0, &qword_100281028, &protocol conformance descriptor for ZStack<A>);
    v28 = v58;
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(v12, &qword_10035B6E0, &qword_100281020);
  }

  else
  {
    sub_100006C20(v15, v9, &qword_10035B6F0, &qword_100281028);
    swift_storeEnumTagMultiPayload();
    sub_1000A77E8();
    sub_100009274(&qword_10035B6E8, &qword_10035B6F0, &qword_100281028, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    v28 = v17;
  }

  sub_100008FA0(v15, &qword_10035B6F0, &qword_100281028);
  v36 = v64;
  v37 = sub_1000A78F4(v28, v64);
  if (v62 == 2)
  {
    sub_100006C20(v36, v66, &qword_10035B6C0, &qword_100281010);
    swift_storeEnumTagMultiPayload();
    v38 = sub_100008CF0(&qword_10035B6C8, &qword_100281018);
    v39 = sub_1000A7730();
    v40 = sub_100008CF0(&qword_10035B700, &qword_100281030);
    v41 = sub_100009274(&qword_10035B708, &qword_10035B700, &qword_100281030, &protocol conformance descriptor for ToolbarItem<A, B>);
    v69 = v40;
    v70 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v69 = v63;
    v70 = v38;
    v71 = v39;
    v72 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v37);
    LOBYTE(v56[-2]) = v43;
    v44 = sub_1000040A8(&qword_10035B6C8, &qword_100281018);
    v45 = sub_1000A7730();
    v46 = sub_100008CF0(&qword_10035B700, &qword_100281030);
    v47 = v66;
    v48 = v46;
    v49 = sub_100009274(&qword_10035B708, &qword_10035B700, &qword_100281030, &protocol conformance descriptor for ToolbarItem<A, B>);
    v69 = v48;
    v70 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v60;
    v52 = v63;
    View.toolbar<A>(content:)();
    v53 = v61;
    v54 = v67;
    (*(v61 + 16))(v47, v51, v67);
    swift_storeEnumTagMultiPayload();
    v69 = v52;
    v70 = v44;
    v71 = v45;
    v72 = v50;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v53 + 8))(v51, v54);
  }

  return sub_100008FA0(v36, &qword_10035B6C0, &qword_100281010);
}

uint64_t sub_1000A6288@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000040A8(&qword_10035B740, &qword_100281060);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = *(a1 + 32);
  if (!v11)
  {
    type metadata accessor for AppPropertiesModel();
    v49 = &qword_10035B6A0;
    v50 = type metadata accessor for AppPropertiesModel;
LABEL_26:
    sub_1000A745C(v49, v50, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v12 = *(v11 + 80);
  v55 = v8;
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = sub_1000841AC();
    if (sub_1000841AC() == 1)
    {
      v14 = sub_100083AD0();
      v17 = v14 != 0x8000000000000000 || v15 != 0;
      sub_100084DCC(v14, v15);
      if (v13 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = 0;
      if (v13 != 1)
      {
LABEL_12:
        v88._countAndFlagsBits = 0;
        static Binding.constant(_:)();
LABEL_17:
        object = v93._object;
        countAndFlagsBits = v93._countAndFlagsBits;
        v62 = v94;
        v53 = v13 == 1;
        type metadata accessor for StewieModel(0);
        sub_1000A745C(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
        v18 = EnvironmentObject.init()();
        v60 = v19;
        v61 = v18;
        v88._countAndFlagsBits = 0;
        LOBYTE(v88._object) = 1;
        sub_1000040A8(&qword_10035B6A8, &qword_1002874F0);
        State.init(wrappedValue:)();
        v20 = v93._countAndFlagsBits;
        v54 = v94;
        LOBYTE(v93._countAndFlagsBits) = v93._object;
        object_low = LOBYTE(v93._object);
        v59 = v20;
        v21 = 256;
        if (!v17)
        {
          v21 = 0;
        }

        v52 = v21;
        goto LABEL_20;
      }
    }

    v88 = *(a1 + 216);
    sub_1000040A8(&qword_100359C08, &qword_10027DE30);
    State.projectedValue.getter();
    goto LABEL_17;
  }

  if (!*a1)
  {
    type metadata accessor for AlertAppearanceModel();
    v49 = &qword_10035B5C0;
    v50 = type metadata accessor for AlertAppearanceModel;
    goto LABEL_26;
  }

  v60 = 0;
  v61 = 0;
  object = 0;
  countAndFlagsBits = 0;
  v62 = 0;
  object_low = 0;
  v59 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
LABEL_20:
  v22 = sub_1000841AC();
  v56 = v6;
  v57 = v4;
  if (v22 == 1)
  {
    sub_1000837B8(&v75);
    v90 = v77;
    v91 = v78;
    v92[0] = v79[0];
    *&v92[1] = *&v79[1];
    v88 = v75;
    v89 = v76;
    LOBYTE(v65._countAndFlagsBits) = 1;
    BYTE8(v92[1]) = 1;
  }

  else
  {
    LOBYTE(v75._countAndFlagsBits) = 0;
    BYTE8(v92[1]) = 0;
  }

  sub_1000040A8(&qword_10035B748, &qword_100281068);
  sub_1000A79C8();
  _ConditionalContent<>.init(storage:)();
  v88 = static HorizontalAlignment.center.getter();
  LOBYTE(v89) = 1;
  v23 = [objc_opt_self() mainBundle];
  v98._object = 0x800000010029A340;
  v24._object = 0x800000010029A320;
  v98._countAndFlagsBits = 0xD00000000000007ALL;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v98);

  v65 = v26;
  v80 = *(a1 + 176);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.projectedValue.getter();
  sub_1000040A8(&qword_10035B768, &qword_1002823E0);
  v27 = sub_100009274(&qword_10035B770, &qword_10035B768, &qword_1002823E0, &protocol conformance descriptor for VStack<A>);
  v30 = sub_100031770(v27, v28, v29);
  sub_1000A7AAC(v30, v31, v32);
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  v53 |= v52;
  v33 = v53;
  v67 = v95;
  v68 = v96;
  v69[0] = v97[0];
  *(v69 + 9) = *(v97 + 9);
  v65 = v93;
  v66 = v94;
  v34 = v55;
  v35 = v56;
  v36 = *(v55 + 16);
  v37 = v57;
  v36(v56, v10, v57);
  *&v70 = v61;
  *(&v70 + 1) = v60;
  *&v71 = v33;
  *(&v71 + 1) = countAndFlagsBits;
  *&v72 = object;
  *(&v72 + 1) = v62;
  *&v73 = v59;
  *(&v73 + 1) = object_low;
  v38 = v73;
  a2[2] = v72;
  a2[3] = v38;
  v39 = v71;
  *a2 = v70;
  a2[1] = v39;
  v40 = v65;
  v75 = v65;
  v76 = v66;
  *(v79 + 9) = *(v69 + 9);
  v42 = v68;
  v41 = v69[0];
  v78 = v68;
  v79[0] = v69[0];
  v43 = v67;
  v77 = v67;
  *(a2 + 88) = v66;
  v44 = a2;
  v45 = v54;
  v74 = v54;
  *(v44 + 8) = v54;
  *(v44 + 72) = v40;
  *(v44 + 145) = *(v69 + 9);
  *(v44 + 136) = v41;
  *(v44 + 120) = v42;
  *(v44 + 104) = v43;
  v46 = sub_1000040A8(&qword_10035B780, &qword_100281080);
  v36(v44 + *(v46 + 64), v35, v37);
  sub_100006C20(&v70, &v88, &qword_10035B788, &qword_100281088);
  sub_100006C20(&v75, &v88, &qword_10035B790, &unk_100281090);
  v47 = *(v34 + 8);
  v47(v10, v37);
  v47(v35, v37);
  v90 = v67;
  v91 = v68;
  v92[0] = v69[0];
  *(v92 + 9) = *(v69 + 9);
  v88 = v65;
  v89 = v66;
  sub_100008FA0(&v88, &qword_10035B790, &unk_100281090);
  *&v80 = v61;
  *(&v80 + 1) = v60;
  v81 = v53;
  v82 = countAndFlagsBits;
  v83 = object;
  v84 = v62;
  v85 = v59;
  v86 = object_low;
  v87 = v45;
  return sub_100008FA0(&v80, &qword_10035B788, &qword_100281088);
}

uint64_t sub_1000A69F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1000A745C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  result = EnvironmentObject.init()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 6;
  return result;
}

uint64_t sub_1000A6A70(char a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000040A8(&qword_10035B700, &qword_100281030);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = static ToolbarItemPlacement.navigationBarTrailing.getter();
  v11[16] = a1;
  sub_1000A7974(v7, v8, v9);
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_10035B708, &qword_10035B700, &qword_100281030, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

void *sub_1000A6C14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    type metadata accessor for AppEvents();
    sub_1000A745C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    v4 = EnvironmentObject.init()();
    v6 = v5;
    result = State.init(wrappedValue:)();
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v3 & 1;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t sub_1000A6CE0(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v13 = 0x800000010029B060;
    v3 = 0x656E6E6F63736944;
    v4 = 0xEA00000000007463;
    v5 = 0x5072656972726143;
    v6 = 0xED00006E6F656769;
    v7.super.isa = v2;
    v8 = 0;
    v9 = 0xE000000000000000;
    v10 = 0xD00000000000002ALL;
  }

  else
  {
    v13 = 0x800000010029B090;
    v3 = 0x6E6F4320706F7453;
    v4 = 0xEF676E697463656ELL;
    v10 = 0xD00000000000005ALL;
    v5 = 0x5072656972726143;
    v6 = 0xED00006E6F656769;
    v7.super.isa = v2;
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v7, *&v8, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000A6E18(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v10 = 0x800000010029B110;
    v3 = 0x800000010029B0F0;
    v4 = 0xD00000000000002ALL;
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v10 = 0x800000010029B160;
    v5 = 0xD00000000000001DLL;
    v3 = 0x800000010029B140;
    v4 = 0xD00000000000005ALL;
  }

  v6.value._countAndFlagsBits = 0x5072656972726143;
  v6.value._object = 0xED00006E6F656769;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v6, v2, v7, *&v4)._countAndFlagsBits;

  return countAndFlagsBits;
}

double sub_1000A6F2C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v29 = v1[12];
  v30 = v3;
  v31 = *(v1 + 28);
  v4 = v1[9];
  v25 = v1[8];
  v26 = v4;
  v5 = v1[11];
  v27 = v1[10];
  v28 = v5;
  v6 = v1[5];
  v21 = v1[4];
  v22 = v6;
  v7 = v1[7];
  v23 = v1[6];
  v24 = v7;
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  sub_1000842B8();
  sub_1000040A8(&qword_10035B6B0, &qword_100281008);
  sub_1000A75CC();
  NavigationStack.init<>(root:)();
  sub_10025BAF8(v14);
  v10 = (a1 + *(sub_1000040A8(&qword_10035B710, &qword_100281038) + 36));
  v11 = v14[1];
  *v10 = v14[0];
  v10[1] = v11;
  result = *&v15;
  v13 = v16;
  v10[2] = v15;
  v10[3] = v13;
  return result;
}

double sub_1000A7028@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AlertAppearanceModel();
  sub_1000A745C(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel, "\ts\n");
  v2 = EnvironmentObject.init()();
  v40 = v3;
  v41 = v2;
  type metadata accessor for AppEvents();
  sub_1000A745C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v4 = EnvironmentObject.init()();
  v38 = v5;
  v39 = v4;
  type metadata accessor for AppPropertiesModel();
  sub_1000A745C(&qword_10035B6A0, type metadata accessor for AppPropertiesModel, "\ts\n");
  v6 = EnvironmentObject.init()();
  v36 = v7;
  v37 = v6;
  type metadata accessor for ConnectivityModel();
  sub_1000A745C(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
  v8 = EnvironmentObject.init()();
  v34 = v9;
  v35 = v8;
  type metadata accessor for OffTheGridModel();
  sub_1000A745C(&qword_1003561C0, type metadata accessor for OffTheGridModel, "\ts\n");
  v10 = EnvironmentObject.init()();
  v32 = v11;
  v33 = v10;
  type metadata accessor for PartnerModel();
  sub_1000A745C(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
  v12 = EnvironmentObject.init()();
  v30 = v13;
  v31 = v12;
  type metadata accessor for StewieModel(0);
  sub_1000A745C(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v14 = EnvironmentObject.init()();
  v28 = v15;
  v29 = v14;
  type metadata accessor for SystemSettingsModel();
  sub_1000A745C(&qword_1003561B0, type metadata accessor for SystemSettingsModel, "\ts\n");
  v16 = EnvironmentObject.init()();
  v26 = v17;
  v27 = v16;
  type metadata accessor for TryOutModel(0);
  sub_1000A745C(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v18 = EnvironmentObject.init()();
  v20 = v19;
  type metadata accessor for UIMetrics();
  sub_1000A745C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v21 = EnvironmentObject.init()();
  v23 = v22;
  KeyPath = swift_getKeyPath();
  State.init(wrappedValue:)();
  sub_1000040A8(&qword_10035B6A8, &qword_1002874F0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v42;
  *a1 = v41;
  *(a1 + 8) = v40;
  *(a1 + 16) = v39;
  *(a1 + 24) = v38;
  *(a1 + 32) = v37;
  *(a1 + 40) = v36;
  *(a1 + 48) = v35;
  *(a1 + 56) = v34;
  *(a1 + 64) = v33;
  *(a1 + 72) = v32;
  *(a1 + 80) = v31;
  *(a1 + 88) = v30;
  *(a1 + 96) = v29;
  *(a1 + 104) = v28;
  *(a1 + 112) = v27;
  *(a1 + 120) = v26;
  *(a1 + 128) = v18;
  *(a1 + 136) = v20;
  *(a1 + 144) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = KeyPath;
  *(a1 + 168) = 0;
  *(a1 + 176) = LOBYTE(v42);
  *(a1 + 184) = v43;
  *(a1 + 192) = v42;
  *(a1 + 200) = v43;
  *(a1 + 208) = v44;
  *(a1 + 216) = v42;
  *(a1 + 224) = v43;
  return result;
}

uint64_t sub_1000A745C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A74AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 232))
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

uint64_t sub_1000A7508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000A75CC()
{
  result = qword_10035B6B8;
  if (!qword_10035B6B8)
  {
    sub_100008CF0(&qword_10035B6B0, &qword_100281008);
    sub_100008CF0(&qword_10035B6C0, &qword_100281010);
    sub_100008CF0(&qword_10035B6C8, &qword_100281018);
    sub_1000A7730();
    sub_100008CF0(&qword_10035B700, &qword_100281030);
    sub_100009274(&qword_10035B708, &qword_10035B700, &qword_100281030, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B6B8);
  }

  return result;
}

unint64_t sub_1000A7730()
{
  result = qword_10035B6D0;
  if (!qword_10035B6D0)
  {
    sub_100008CF0(&qword_10035B6C0, &qword_100281010);
    sub_1000A77E8();
    sub_100009274(&qword_10035B6E8, &qword_10035B6F0, &qword_100281028, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B6D0);
  }

  return result;
}

unint64_t sub_1000A77E8()
{
  result = qword_10035B6D8;
  if (!qword_10035B6D8)
  {
    sub_100008CF0(&qword_10035B6E0, &qword_100281020);
    v3 = sub_100009274(&qword_10035B6E8, &qword_10035B6F0, &qword_100281028, &protocol conformance descriptor for ZStack<A>);
    sub_1000A78A0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B6D8);
  }

  return result;
}

unint64_t sub_1000A78A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B6F8;
  if (!qword_10035B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B6F8);
  }

  return result;
}

uint64_t sub_1000A78F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035B6C0, &qword_100281010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A7974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B738;
  if (!qword_10035B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B738);
  }

  return result;
}

unint64_t sub_1000A79C8()
{
  result = qword_10035B750;
  if (!qword_10035B750)
  {
    sub_100008CF0(&qword_10035B748, &qword_100281068);
    sub_100009274(&qword_10035B758, &qword_10035B760, &unk_100281070, &unk_100286370);
    sub_100009274(&qword_100356BD8, &qword_100356BE0, qword_10028B900, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B750);
  }

  return result;
}

unint64_t sub_1000A7AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B778;
  if (!qword_10035B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B778);
  }

  return result;
}

unint64_t sub_1000A7B04()
{
  result = qword_10035B798;
  if (!qword_10035B798)
  {
    sub_100008CF0(&qword_10035B710, &qword_100281038);
    v3 = sub_100009274(&qword_10035B7A0, &qword_10035B7A8, &unk_1002810A0, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1000A7BBC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B798);
  }

  return result;
}

unint64_t sub_1000A7BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B7B0;
  if (!qword_10035B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B7B0);
  }

  return result;
}

unint64_t sub_1000A7C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B7B8;
  if (!qword_10035B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B7B8);
  }

  return result;
}

uint64_t sub_1000A7C88()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v0 - 8);
  v14 = v0;
  __chkstk_darwin(v0);
  v12 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x8000000100294A20;
    v6 = 0xD000000000000012;
  }

  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  v15 = v6;
  v16 = v8;

  v9._countAndFlagsBits = 0x456369747061482ELL;
  v9._object = 0xED0000656E69676ELL;
  String.append(_:)(v9);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000ACB68(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10035B7C0 = result;
  return result;
}

uint64_t sub_1000A7F94()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for HapticAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000A810C()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for HapticAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000A8288()
{
  sub_1000A810C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A82E0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_100353A68 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting HapticAgent", v15, 2u);
  }

  v19 = v4;
  v20 = v1;

  if (qword_1003539C8 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000ACC3C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032D1A8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000ACB68(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v20 + 8))(v3, v0);
  (*(v21 + 8))(v6, v19);

  return 1;
}

void sub_1000A8798(uint64_t a1)
{
  v1 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  if (v1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000A94A4();
    }
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381D88);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Haptic capabilities are not supported", v4, 2u);
    }
  }
}

uint64_t sub_1000A8910()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (qword_100353A68 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381D88);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Stopping HapticAgent", v17, 2u);
  }

  v22 = v6;
  v23 = v3;

  v18 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (qword_1003539C8 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1000ACC34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032D180;
  v20 = _Block_copy(aBlock);
  swift_retain_n();

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000ACB68(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v23 + 8))(v5, v2);
  (*(v24 + 8))(v8, v22);
}

void sub_1000A8DCC(uint64_t a1, uint64_t a2)
{
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136446466;
    type metadata accessor for HapticAgent();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;

    sub_1000040A8(&unk_10035BA30, &unk_1002812F0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%{public}s] hapticEngineState instance [%{public}s] will be destroyed upon capturing closure exit", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1000A8FD8(int a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381D88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v22 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    LOBYTE(v26) = a1;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "play core haptic: %{public}s", v12, 0xCu);
    sub_100008964(v13);
  }

  if (qword_1003539C8 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v22;
  aBlock[4] = sub_1000ACBE8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032D130;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000ACB68(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
}

uint64_t sub_1000A9424(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);

    if (v4)
    {
      sub_1000AAFC8(a2);
    }
  }

  return result;
}

void sub_1000A94A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003539C8 != -1)
  {
    swift_once();
  }

  v7 = qword_10035B7C0;
  *v6 = qword_10035B7C0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_100353A68 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381D88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting CHHapticEngine", v12, 2u);
  }

  v13 = objc_allocWithZone(CHHapticEngine);
  aBlock = 0;
  v14 = [v13 initAndReturnError:&aBlock];
  v15 = aBlock;
  if (v14)
  {
    v16 = v14;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v2;
    v36 = sub_1000ACA00;
    v37 = v18;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1001D2438;
    v35 = &unk_10032D068;
    v19 = _Block_copy(&aBlock);
    v20 = v15;

    [v16 setResetHandler:v19];
    _Block_release(v19);
    v36 = sub_1000A9DD4;
    v37 = 0;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000A9F54;
    v35 = &unk_10032D090;
    v21 = _Block_copy(&aBlock);
    [v16 setStoppedHandler:v21];
    _Block_release(v21);
    [v16 setAutoShutdownEnabled:1];
    type metadata accessor for HapticEngineState();
    swift_allocObject();
    v22 = sub_1000ACA08(v16);

    v1[2] = v22;
  }

  else
  {
    v23 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_10017C9E8(v28, v29, &aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create CHHapticEngine: %{public}s", v26, 0xCu);
      sub_100008964(v27);
    }

    else
    {
    }
  }
}

uint64_t sub_1000A99D0(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381D88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Reset handler invoked", v12, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = v6;
    v19 = v5;
    v20 = v2;
    swift_weakInit();
    if (qword_1003539C8 != -1)
    {
      swift_once();
    }

    v17[1] = qword_10035B7C0;
    Strong = swift_weakLoadStrong();
    v15 = swift_allocObject();
    *(v15 + 16) = Strong;
    aBlock[4] = sub_1000ACB40;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_10032D0E0;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_1000ACB68(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v20 + 8))(v4, v1);
    (*(v18 + 8))(v8, v19);
    swift_weakDestroy();
  }

  return result;
}

void sub_1000A9DD4(uint64_t a1)
{
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381D88);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for StoppedReason(0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Stop handler invoked: the engine stopped for reason: %{public}s", v3, 0xCu);
    sub_100008964(v4);
  }

  else
  {
  }
}

uint64_t sub_1000A9F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000A9FA8()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HapticEngineState deinit", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stopping engine", v8, 2u);
  }

  v9 = *(v1 + 16);
  v12[4] = sub_1000ABA00;
  v12[5] = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100243DD8;
  v12[3] = &unk_10032CFF0;
  v10 = _Block_copy(v12);
  [v9 stopWithCompletionHandler:v10];
  _Block_release(v10);

  return v1;
}

uint64_t sub_1000AA194()
{
  sub_1000A9FA8();

  return swift_deallocClassInstance();
}

double sub_1000AA1EC()
{
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v103 = v0;
  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381D88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "prepareEngine", v4, 2u);
  }

  sub_1000040A8(&qword_10035B9A0, &qword_1002812A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  v6 = CHHapticPatternKeyPattern;
  *(inited + 32) = CHHapticPatternKeyPattern;
  v104 = v6;
  sub_1000040A8(&qword_10035B9A8, &qword_1002812A8);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100279160;
  sub_1000040A8(&qword_10035B9B0, &qword_1002812B0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100279160;
  v8 = CHHapticPatternKeyEvent;
  *(v7 + 32) = CHHapticPatternKeyEvent;
  sub_1000040A8(&qword_10035B9B8, &qword_1002812B8);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1002811A0;
  v10 = CHHapticPatternKeyEventType;
  *(v9 + 32) = CHHapticPatternKeyEventType;
  v11 = CHHapticEventTypeHapticTransient;
  type metadata accessor for EventType(0);
  *(v9 + 40) = v11;
  v12 = CHHapticPatternKeyTime;
  *(v9 + 64) = v13;
  *(v9 + 72) = v12;
  *(v9 + 80) = 0x3F50624DD2F1A9FCLL;
  v14 = CHHapticPatternKeyEventDuration;
  *(v9 + 104) = &type metadata for Double;
  *(v9 + 112) = v14;
  *(v9 + 144) = &type metadata for Double;
  *(v9 + 120) = 0x3FF0000000000000;
  v15 = v104;
  v16 = v8;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v14;
  v21 = sub_100256AE4(v9);
  swift_setDeallocating();
  sub_1000040A8(&qword_10035B9C0, &qword_1002812C0);
  swift_arrayDestroy();
  *(v7 + 40) = v21;
  v22 = sub_100256C0C(v7);
  swift_setDeallocating();
  sub_100008FA0(v7 + 32, &qword_10035B9C8, &qword_1002812C8);
  *(v105 + 32) = v22;
  *(inited + 40) = v105;
  v106 = sub_100256C20(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_10035B9D0, &unk_1002812D0);
  v23 = CHHapticEventTypeHapticContinuous;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002811B0;
  v25 = CHHapticEventParameterIDHapticIntensity;
  v26 = objc_allocWithZone(CHHapticEventParameter);
  LODWORD(v27) = 1.0;
  *(v24 + 32) = [v26 initWithParameterID:v25 value:v27];
  v28 = CHHapticEventParameterIDHapticSharpness;
  v29 = objc_allocWithZone(CHHapticEventParameter);
  LODWORD(v30) = 1061997773;
  *(v24 + 40) = [v29 initWithParameterID:v28 value:v30];
  v31 = objc_allocWithZone(CHHapticEvent);
  sub_10001D630(0, &qword_10035B9E0, CHHapticEventParameter_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v31 initWithEventType:v23 parameters:isa relativeTime:0.0 duration:0.1];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1002811B0;
  v35 = objc_allocWithZone(CHHapticEventParameter);
  LODWORD(v36) = 0.5;
  *(v34 + 32) = [v35 initWithParameterID:v25 value:v36];
  v37 = objc_allocWithZone(CHHapticEventParameter);
  LODWORD(v38) = 1050253722;
  *(v34 + 40) = [v37 initWithParameterID:v28 value:v38];
  v39 = objc_allocWithZone(CHHapticEvent);
  v40 = Array._bridgeToObjectiveC()().super.isa;

  v41 = [v39 initWithEventType:v23 parameters:v40 relativeTime:0.15 duration:0.15];

  sub_100145AB8(v106);
  v43 = v42;

  v44 = objc_allocWithZone(CHHapticPattern);
  v45 = sub_1000AC6D8(v43);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1002811B0;
  *(v46 + 32) = v33;
  *(v46 + 40) = v41;
  v47 = objc_allocWithZone(CHHapticPattern);
  v48 = v33;
  v49 = v41;
  v50 = sub_1000AC7FC(v46, _swiftEmptyArrayStorage);
  sub_1000040A8(&qword_10035B9E8, &qword_1002812E0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1002811C0;
  *(v51 + 32) = 0;
  v52 = *(v103 + 16);
  v107 = 0;
  v53 = [v52 createPlayerWithPattern:? error:?];
  if (!v53)
  {
    v65 = v107;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_17;
  }

  *(v51 + 40) = v53;
  *(v51 + 48) = 1;
  v107 = 0;
  v54 = 0;
  v55 = [v52 createPlayerWithPattern:v50 error:&v107];
  v56 = v107;
  if (!v55)
  {
    v66 = v107;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_13;
  }

  *(v51 + 56) = v55;
  *(v51 + 64) = 2;
  v107 = 0;
  v57 = v56;
  v58 = [v52 createPlayerWithPattern:v50 error:&v107];
  v59 = v107;
  if (v58)
  {
    *(v51 + 72) = v58;
    *(v51 + 80) = 3;
    v107 = 0;
    v60 = v59;
    v61 = [v52 createPlayerWithPattern:v50 error:&v107];
    v62 = v107;
    if (v61)
    {
      *(v51 + 88) = v61;
      *(v51 + 96) = 4;
      v63 = v62;
      v64 = sub_1000ABC50(0, 0);
      if (v64)
      {
        *(v51 + 104) = v64;
      }

      else
      {
        v107 = 0;
        v77 = [v52 createPlayerWithPattern:v50 error:&v107];
        v78 = v107;
        if (!v77)
        {
          v98 = v107;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        *(v51 + 104) = v77;
        v79 = v78;
      }

      *(v51 + 112) = 5;
      v80 = sub_1000ABC50(0, 0);
      if (v80)
      {
        *(v51 + 120) = v80;
      }

      else
      {
        v107 = 0;
        v81 = [v52 createPlayerWithPattern:v50 error:&v107];
        v82 = v107;
        if (!v81)
        {
          v99 = v107;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        *(v51 + 120) = v81;
        v83 = v82;
      }

      *(v51 + 128) = 6;
      v84 = sub_1000ABC50(0, 0);
      if (v84)
      {
        *(v51 + 136) = v84;
      }

      else
      {
        v107 = 0;
        v85 = [v52 createPlayerWithPattern:v50 error:&v107];
        v86 = v107;
        if (!v85)
        {
          v100 = v107;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        *(v51 + 136) = v85;
        v87 = v86;
      }

      *(v51 + 144) = 7;
      v88 = sub_1000ABC50(0, 0);
      if (v88)
      {
        *(v51 + 152) = v88;
LABEL_34:
        *(v51 + 160) = 8;
        v92 = sub_1000ABC50(0, 0);
        if (v92)
        {
          v93 = v48;
          *(v51 + 168) = v92;
LABEL_38:
          v97 = sub_100256D24(v51);
          swift_setDeallocating();
          sub_1000040A8(&qword_10035B9F0, &qword_1002812E8);
          swift_arrayDestroy();

          *(v103 + 24) = v97;

          return result;
        }

        v107 = 0;
        v94 = [v52 createPlayerWithPattern:v50 error:&v107];
        v95 = v107;
        if (v94)
        {
          v93 = v48;
          *(v51 + 168) = v94;
          v96 = v95;
          goto LABEL_38;
        }

        v102 = v107;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v107 = 0;
      v89 = [v52 createPlayerWithPattern:v50 error:&v107];
      v90 = v107;
      if (v89)
      {
        *(v51 + 152) = v89;
        v91 = v90;
        goto LABEL_34;
      }

      v101 = v107;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v68 = v107;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = v107;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_17:
  *(v51 + 16) = 0;

  swift_errorRetain();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107 = v72;
    *v71 = 136446210;
    swift_errorRetain();
    sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
    v73 = String.init<A>(describing:)();
    v75 = sub_10017C9E8(v73, v74, &v107);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Failed to make players: %{public}s", v71, 0xCu);
    sub_100008964(v72);
  }

  else
  {
  }

  return result;
}

void sub_1000AAFC8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_1001921EC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = qword_100353A68;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381D88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v30 = v3;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Starting engine for %{public}s", v12, 0xCu);
      sub_100008964(v13);
    }

    v17 = *(v2 + 16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v18;
    *(v19 + 32) = v7;
    aBlock[4] = sub_1000AC9A4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100243DD8;
    aBlock[3] = &unk_10032CFC8;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v17 startWithCompletionHandler:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381D88);
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      v30 = v3;
      v25 = String.init<A>(describing:)();
      v27 = sub_10017C9E8(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, oslog, v22, "Requested player %{public}s does not exist", v23, 0xCu);
      sub_100008964(v24);
    }

    else
    {
    }
  }
}

void sub_1000AB388(void *a1, char a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381D88);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v8 = 136446466;
      v9 = String.init<A>(describing:)();
      v11 = sub_10017C9E8(v9, v10, v47);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      v46 = a1;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88, &qword_100278D50);
      v12 = String.init<A>(describing:)();
      v14 = sub_10017C9E8(v12, v13, v47);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to start engine for %{public}s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381D88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47[0] = v20;
      *v19 = 136446210;
      LOBYTE(v46) = a2;
      v21 = String.init<A>(describing:)();
      v23 = sub_10017C9E8(v21, v22, v47);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Engine started for %{public}s", v19, 0xCu);
      sub_100008964(v20);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v46 = 0;
      if ([a4 startAtTime:&v46 error:0.0])
      {
        v24 = v46;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v46 = v28;
          *v27 = 136446210;
          v29 = String.init<A>(describing:)();
          v31 = sub_10017C9E8(v29, v30, &v46);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "Player started for %{public}s", v27, 0xCu);
          sub_100008964(v28);
        }
      }

      else
      {
        v35 = v46;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v38 = 136446466;
          v39 = String.init<A>(describing:)();
          v41 = sub_10017C9E8(v39, v40, &v46);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2082;
          swift_errorRetain();
          sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
          v42 = String.init<A>(describing:)();
          v44 = sub_10017C9E8(v42, v43, &v46);

          *(v38 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v36, v37, "Failed to start player for %{public}s: %{public}s", v38, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "HapticEngineState is already destroyed, ignoring play request", v34, 2u);
      }
    }
  }
}

void sub_1000ABA00(uint64_t a1)
{
  if (a1)
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F53C(v1, qword_100381D88);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88, &qword_100278D50);
      v5 = String.init<A>(describing:)();
      v7 = sub_10017C9E8(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to stop engine: %{public}s", v3, 0xCu);
      sub_100008964(v4);

      return;
    }
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F53C(v8, qword_100381D88);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Engine stopped", v10, 2u);
    }
  }
}

id sub_1000ABC50(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v66 - v10;
  if (!a2)
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F53C(v26, qword_100381D88);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create player with nil filename", v29, 2u);
    goto LABEL_14;
  }

  v69 = v9;
  v12 = [objc_opt_self() mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (!v15)
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381D88);

    v27 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v31))
    {
      goto LABEL_15;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v72[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_10017C9E8(a1, a2, v72);
    _os_log_impl(&_mh_execute_header, v27, v31, "Failed to retrieve AHAP file: %s", v32, 0xCu);
    sub_100008964(v33);

LABEL_14:

LABEL_15:

    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v69 + 32))(v11, v7, v5);
  v16 = Data.init(contentsOf:options:)();
  v18 = v17;
  v19 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v71[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:1 error:v71];

  v22 = v71[0];
  if (!v21)
  {
    v34 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000F4E8(v16, v18);
LABEL_17:
    v35 = v69;
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000F53C(v36, qword_100381D88);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_10017C9E8(v41, v42, v72);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to create pattern player: %s", v39, 0xCu);
      sub_100008964(v40);
    }

    else
    {
    }

    (*(v35 + 8))(v11, v5);
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100048F80(v72, v71);
  sub_1000040A8(&unk_10035B990, &qword_100281298);
  if (!swift_dynamicCast())
  {
    v45 = v69;
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000F53C(v46, qword_100381D88);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to convert loaded dict into pattern dict", v49, 2u);
    }

    sub_10000F4E8(v16, v18);

    sub_100008964(v72);
    (*(v45 + 8))(v11, v5);
    return 0;
  }

  v23 = v2;
  v24 = v70;
  v25 = objc_allocWithZone(CHHapticPattern);
  v50 = sub_1000AC6D8(v24);
  v51 = *(v23 + 16);
  v71[0] = 0;
  v52 = v50;
  v53 = [v51 createAdvancedPlayerWithPattern:v50 error:v71];
  if (!v53)
  {
    v65 = v71[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000F4E8(v16, v18);

    sub_100008964(v72);
    goto LABEL_17;
  }

  v67 = v52;
  v68 = v53;
  v54 = qword_100353A68;
  v55 = v71[0];
  v56 = v69;
  if (v54 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_10000F53C(v57, qword_100381D88);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66 = v58;
    v62 = v61;
    v71[0] = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_10017C9E8(a1, a2, v71);
    v63 = v59;
    v64 = v66;
    _os_log_impl(&_mh_execute_header, v66, v63, "Created a player from AHAP file: %s", v60, 0xCu);
    sub_100008964(v62);

    sub_10000F4E8(v16, v18);
  }

  else
  {
    sub_10000F4E8(v16, v18);
  }

  sub_100008964(v72);
  (*(v56 + 8))(v11, v5);
  return v68;
}

uint64_t getEnumTagSinglePayload for HapticAgent.HapticType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HapticAgent.HapticType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AC684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035B988;
  if (!qword_10035B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035B988);
  }

  return result;
}

id sub_1000AC6D8(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_1000ACB68(&qword_100354A08, type metadata accessor for Key, &unk_10027788C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id sub_1000AC7FC(uint64_t a1, uint64_t a2)
{
  sub_10001D630(0, &qword_10035B9F8, CHHapticEvent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10001D630(0, &unk_10035BA00, CHHapticDynamicParameter_ptr);
  v4 = Array._bridgeToObjectiveC()().super.isa;

  v9 = 0;
  v5 = [v2 initWithEvents:isa parameters:v4 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1000AC92C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC964()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000AC9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000AC9C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ACA08(void *a1)
{
  v2 = v1;
  v4 = sub_100256D24(_swiftEmptyArrayStorage);
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  v5 = qword_100353A68;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381D88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HapticEngineState init", v10, 2u);
  }

  sub_1000AA1EC();
  return v2;
}

uint64_t sub_1000ACB08()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000ACB40()
{
  if (*(v0 + 16))
  {
    return sub_1000AA1EC();
  }

  return result;
}

uint64_t sub_1000ACB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ACBB0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000ACBF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ACC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000ACCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000ACD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v38 = a3;
  v37 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v37);
  v39 = &v36 - v3;
  v4 = type metadata accessor for KeyboardShortcut();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1000040A8(&qword_100357568, &unk_10027D930);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_1000040A8(&qword_10035BA40, &qword_100281470);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v17 = [objc_opt_self() mainBundle];
  v45._object = 0x800000010029B250;
  v18._countAndFlagsBits = 1701736260;
  v18._object = 0xE400000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD00000000000009DLL;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v45);

  v44 = v20;
  v21 = type metadata accessor for ButtonRole();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v40;
  *(v22 + 24) = v23;
  sub_100031770(v22, v24, v25);

  v26 = v14;
  v27 = v39;
  Button<>.init<A>(_:role:action:)();
  static KeyboardShortcut.defaultAction.getter();
  sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:)();
  (*(v42 + 8))(v6, v43);
  (*(v11 + 8))(v13, v10);
  v28 = [objc_opt_self() systemGray3Color];
  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v44._countAndFlagsBits = v29;
  v31 = AnyShapeStyle.init<A>(_:)();
  v32 = &v16[*(sub_1000040A8(&qword_10035BA48, &qword_1002814A8) + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  *&v16[*(v26 + 36)] = static Color.white.getter();
  v33 = enum case for DynamicTypeSize.xxLarge(_:);
  v34 = type metadata accessor for DynamicTypeSize();
  (*(*(v34 - 8) + 104))(v27, v33, v34);
  sub_1000AD640(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000AD3F8();
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10004CE78(v27);
    return sub_1000AD5D8(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD2B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000AD640(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD3B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000AD3F8()
{
  result = qword_10035BA50;
  if (!qword_10035BA50)
  {
    sub_100008CF0(&qword_10035BA40, &qword_100281470);
    sub_1000AD4B0();
    sub_100009274(&qword_100357798, &qword_1003577A0, &qword_10027B320, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BA50);
  }

  return result;
}

unint64_t sub_1000AD4B0()
{
  result = qword_10035BA58;
  if (!qword_10035BA58)
  {
    sub_100008CF0(&qword_10035BA48, &qword_1002814A8);
    sub_100008CF0(&qword_100357568, &unk_10027D930);
    sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BA58);
  }

  return result;
}

uint64_t sub_1000AD5D8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035BA40, &qword_100281470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AD640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AD688()
{
  sub_100008CF0(&qword_10035BA40, &qword_100281470);
  sub_100008CF0(&qword_100354D60, &qword_100277B30);
  sub_1000AD3F8();
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AD778@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v34, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v24 = 0;
    sub_1000AD954(v2, &v15);
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v33[0] = v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v33[4] = v19;
    v33[5] = v20;
    v33[6] = v21;
    v33[7] = v22;
    sub_100006C20(&v25, &v14, &qword_10035BA60, &unk_100281570);
    sub_100008FA0(v33, &qword_10035BA60, &unk_100281570);
    *&v23[71] = v29;
    *&v23[87] = v30;
    *&v23[103] = v31;
    *&v23[119] = v32;
    *&v23[7] = v25;
    *&v23[23] = v26;
    *&v23[39] = v27;
    *&v23[55] = v28;
    result = sub_100008964(v34);
    v9 = *&v23[64];
    *(a1 + 97) = *&v23[80];
    v10 = *&v23[112];
    *(a1 + 113) = *&v23[96];
    *(a1 + 129) = v10;
    v11 = *v23;
    *(a1 + 33) = *&v23[16];
    v12 = *&v23[48];
    *(a1 + 49) = *&v23[32];
    *(a1 + 65) = v12;
    *(a1 + 81) = v9;
    v13 = v24;
    *a1 = v7;
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = v13;
    *(a1 + 144) = *&v23[127];
    *(a1 + 17) = v11;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD954@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v45._object = 0x8000000100298AB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001002973D0;
  v7.value._object = 0x80000001002962C0;
  v45._countAndFlagsBits = 0xD00000000000004ALL;
  v7.value._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v45);

  type metadata accessor for OptionPresentation();
  v10 = swift_allocObject();
  v10[1] = v9;
  v10[3]._countAndFlagsBits = 0;
  v10[3]._object = 0;
  v10[4]._countAndFlagsBits = static Color.clear.getter();
  v10[2]._countAndFlagsBits = 0;
  v10[2]._object = 0;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  sub_1000381C4(a1, v32);
  type metadata accessor for UIMetrics();
  sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v29 = EnvironmentObject.init()();
  v30 = v14;
  v15 = [v4 mainBundle];
  v46._object = 0x8000000100298B00;
  v16._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0x80000001002962C0;
  v46._countAndFlagsBits = 0xD000000000000044;
  v16._object = 0xE900000000000079;
  v17.value._countAndFlagsBits = 0xD000000000000012;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v46);

  v32[0] = a1[4];
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  v20 = v40;
  v21 = swift_allocObject();
  v22 = a1[3];
  v21[3] = a1[2];
  v21[4] = v22;
  v21[5] = a1[4];
  v23 = a1[1];
  v21[1] = *a1;
  v21[2] = v23;
  sub_1000381C4(a1, v32);
  v24 = EnvironmentObject.init()();
  *&v40 = v24;
  *(&v40 + 1) = v25;
  v41 = v19;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  LOBYTE(v43) = v20;
  *(&v43 + 1) = *v39;
  DWORD1(v43) = *&v39[3];
  *(&v43 + 1) = sub_1000ADFAC;
  v44 = v21;
  *a2 = v29;
  *(a2 + 8) = v30;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v10;
  v26 = v40;
  *(a2 + 72) = v41;
  v27 = v43;
  *(a2 + 88) = v42;
  *(a2 + 104) = v27;
  *(a2 + 40) = sub_1000517F0;
  *(a2 + 48) = v11;
  *(a2 + 120) = v21;
  *(a2 + 56) = v26;
  *&v32[0] = v24;
  *(&v32[0] + 1) = v25;
  v32[1] = v19;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = v20;
  *&v36[3] = *&v39[3];
  *v36 = *v39;
  v37 = sub_1000ADFAC;
  v38 = v21;

  sub_1000517F8(&v40, v31);
  sub_100051854(v32);
}

uint64_t sub_1000ADCCC()
{
  if (*v0)
  {
    *&v5[0] = *(v0 + 32);

    PassthroughSubject.send(_:)();

    v7 = *(v0 + 64);
    v5[0] = *(v0 + 64);
    v8 = *(&v7 + 1);
    sub_100006C20(&v8, v6, &qword_100354AB0, &unk_1002779B0);
    sub_1000040A8(&qword_100354AA8, &qword_10027D640);
    State.wrappedValue.getter();
    if (v6[0])
    {

      return sub_100008FA0(&v7, &qword_100354AA8, &qword_10027D640);
    }

    else
    {
      v5[0] = v7;
      LOBYTE(v6[0]) = 1;
      State.wrappedValue.setter();
      sub_100008FA0(&v7, &qword_100354AA8, &qword_10027D640);

      v2 = swift_allocObject();
      v3 = *(v0 + 48);
      v2[3] = *(v0 + 32);
      v2[4] = v3;
      v2[5] = *(v0 + 64);
      v4 = *(v0 + 16);
      v2[1] = *v0;
      v2[2] = v4;
      v6[0] = sub_1000ADFD0;
      v6[1] = v2;
      sub_1000381C4(v0, v5);
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000518A8(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ADED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v6 = &type metadata for RecordedForkAnswer;
  LOWORD(v5) = 257;
  sub_1000C0AF0(v3, &v5);
  sub_100008FA0(&v5, &qword_1003577F8, &unk_10027B490);
  v5 = *(a2 + 64);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  return State.wrappedValue.setter();
}

unint64_t sub_1000ADFDC()
{
  result = qword_10035BA68;
  if (!qword_10035BA68)
  {
    sub_100008CF0(&unk_10035BA70, qword_100281580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BA68);
  }

  return result;
}

id sub_1000AE048()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v50);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource_locationAuthorizationChanged;
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  swift_allocObject();
  *&v0[v8] = PassthroughSubject.init()();
  v9 = OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource_locationReceived;
  sub_1000040A8(&qword_10035BB68, &unk_10028BD90);
  swift_allocObject();
  *&v0[v9] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager] = 0;
  v10 = &v0[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__lastLocationReceived];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v46 = objc_opt_self();
  v11 = [v46 mainBundle];
  v12 = [v11 bundleIdentifier];

  v47 = v1;
  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0x8000000100294A20;
    v13 = 0xD000000000000012;
  }

  v16 = sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  v56 = v13;
  v57 = v15;

  v17._countAndFlagsBits = 0xD000000000000019;
  v17._object = 0x800000010029B3D0;
  String.append(_:)(v17);

  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  v18 = sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  v45 = v18;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v20 = *(v54 + 104);
  v54 += 104;
  v20(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  v48 = v16;
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v47;
  *&v47[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__managerQueue] = v21;
  v23 = [v46 mainBundle];
  v24 = [v23 bundleIdentifier];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v27 = 0x8000000100294A20;
    v25 = 0xD000000000000012;
  }

  v56 = v25;
  v57 = v27;

  v28._countAndFlagsBits = 0xD00000000000001ALL;
  v28._object = 0x800000010029B3F0;
  String.append(_:)(v28);

  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20(v52, v19, v53);
  *&v22[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__callbackQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = type metadata accessor for GeoLocationSource();
  v55.receiver = v22;
  v55.super_class = v29;
  v30 = objc_msgSendSuper2(&v55, "init");
  v31 = qword_100353A10;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000F53C(v33, qword_100381C80);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56 = v37;
    *v36 = 136446210;
    v38 = v32;
    v39 = [v38 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10017C9E8(v40, v42, &v56);

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "init: %{public}s", v36, 0xCu);
    sub_100008964(v37);
  }

  else
  {
  }

  return v32;
}

id sub_1000AE6D4()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for GeoLocationSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1000AE944()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v25 = *(v1 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__managerQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *(v1 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__callbackQueue);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v24 = v15;
    aBlock[4] = sub_1000B076C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_10032D618;
    v18 = _Block_copy(aBlock);

    v19 = v16;
    v20 = v8;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v21 = v26;
    v23 = v5;
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v21 + 8))(v4, v2);
    (*(v6 + 8))(v20, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000AED50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(CLLocationManager);
    v6 = v4;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 initWithEffectiveBundlePath:v7 delegate:v6 onQueue:a2];

    if (v8)
    {
      [v8 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];
      v9 = *&v6[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager];
      *&v6[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager] = v8;
      v10 = v8;

      if (qword_100353A78 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381DB8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "CLLocationManager instance created", v14, 2u);
      }
    }

    else
    {
      if (qword_100353A78 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381DB8);
      v12 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v12, v16, "Failed to create CLLocationManager instance", v17, 2u);
      }

      v10 = v6;
    }
  }
}

uint64_t sub_1000AEFC0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v18[1] = *&v1[OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__managerQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    aBlock[4] = sub_1000B0714;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_10032D5C8;
    v16 = _Block_copy(aBlock);
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AF3C0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v19 = *(v9 - 8);
  v20 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381DB8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v8, v6);
  (*(v19 + 8))(v11, v20);
}

void sub_1000AF73C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager);

    [v5 *a2];
  }
}

void *sub_1000AF7BC(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000AF8D0(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__callbackQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    if (qword_100353A78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381DB8);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v3;
    v23 = v4;
    v24 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v41 = [v18 authorizationStatus];
    type metadata accessor for CLAuthorizationStatus(0);
    v25 = String.init<A>(describing:)();
    v27 = sub_10017C9E8(v25, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Location authorization received - %s", v21, 0xCu);
    sub_100008964(v24);
    v4 = v23;
    v3 = v36;
  }

  v28 = [v18 authorizationStatus];
  v29 = (v28 < 5) & (0x19u >> v28);
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v29;
  aBlock[4] = sub_1000AFF90;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032D4D8;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  v34 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v4 + 8))(v34, v3);
  return (*(v39 + 8))(v8, v40);
}

void *sub_1000AFE20(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000AFF20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AFF58()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_1000AFF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000AFFB4(unint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__callbackQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (!(a1 >> 62))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        swift_once();
LABEL_9:
        v41 = v10;
        v24 = type metadata accessor for Logger();
        sub_10000F53C(v24, qword_100381DB8);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v44 = v28;
          *v27 = 136315138;
          aBlock = *&v2;
          v46 = *&v3;
          type metadata accessor for CLLocationCoordinate2D(0);
          v29 = String.init<A>(describing:)();
          v31 = sub_10017C9E8(v29, v30, &v44);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "Location update received - %s", v27, 0xCu);
          sub_100008964(v28);
        }

        sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
        v32 = static OS_dispatch_queue.main.getter();
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v2;
        *(v34 + 32) = v3;
        v49 = sub_1000B0688;
        v50 = v34;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_1001D2438;
        v48 = &unk_10032D528;
        v35 = _Block_copy(&aBlock);

        v36 = v42;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70, &qword_100279D60);
        sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        (*(v43 + 8))(v8, v6);
        (*(v41 + 8))(v36, v9);
        return;
      }

      v19 = *(a1 + 32);
    }

    v20 = v19;
    [v19 coordinate];
    v2 = v21;
    v3 = v22;

    v23 = v4 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__lastLocationReceived;
    if ((*(v4 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__lastLocationReceived + 16) & 1) == 0 && *v23 == v2 && *(v23 + 8) == v3)
    {
      return;
    }

    *v23 = v2;
    *(v23 + 8) = v3;
    *(v23 + 16) = 0;
    if (qword_100353A78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_17:
  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000F53C(v37, qword_100381DB8);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Empty location update received", v40, 2u);
  }
}

uint64_t sub_1000B0650()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B06DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B0714()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy17GeoLocationSource__locationManager) = 0;
}

uint64_t sub_1000B072C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B07C0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v38._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000038;
  v2._object = 0x800000010029B990;
  v3.value._object = 0x800000010029B460;
  v38._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v38);

  v6 = [v0 mainBundle];
  v39._object = 0x800000010029BA00;
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010029B9D0;
  v8.value._object = 0x800000010029B460;
  v39._countAndFlagsBits = 0xD00000000000005ALL;
  v8.value._countAndFlagsBits = 0xD000000000000017;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v39);

  v34 = v5;
  v35 = v10;
  *&v36 = _swiftEmptyArrayStorage;
  type metadata accessor for BuiltInCondition();
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 4;
  type metadata accessor for NotCondition();
  v12 = swift_allocObject();
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100281610;
  *(v13 + 32) = v11;
  *(v12 + 16) = 2;
  *(v12 + 24) = v13;
  type metadata accessor for Question();
  v14 = swift_allocObject();
  v15 = v35;
  *(v14 + 72) = v34;
  *(v14 + 88) = v15;
  v16 = v37;
  *(v14 + 104) = v36;
  strcpy((v14 + 16), "EMERGENCY_FORK");
  *(v14 + 31) = -18;
  *(v14 + 32) = 3;
  *(v14 + 40) = _swiftEmptyArrayStorage;
  *(v14 + 48) = v12;
  *(v14 + 56) = &off_100321BB8;
  *(v14 + 64) = 3;
  *(v14 + 120) = v16;
  sub_1000B4E30(&v34, v33);
  v17 = sub_1000924D0(_swiftEmptyArrayStorage, &v34);
  *(v14 + 136) = v17;
  if (*(&v36 + 1))
  {
    v18 = v17;
    v33[0] = _swiftEmptyArrayStorage;
    v19 = *(v17 + 2);
    v20 = 0;
    v21 =  + 40;
    v22 = _swiftEmptyArrayStorage;
LABEL_3:
    v23 = (v21 + 16 * v20);
    while (1)
    {
      if (v19 == v20)
      {

        goto LABEL_12;
      }

      if (v20 >= *(v18 + 2))
      {
        break;
      }

      ++v20;
      v24 = *v23;
      v23 += 16;
      if (v24 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v33[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v14 + 144) = v22;
    v22 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {

      sub_1000B4E8C(&v34);
LABEL_16:
      v25 = 0;
LABEL_17:
      *(v14 + 152) = v25;
      return v14;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v34);

      goto LABEL_16;
    }
  }

  v27 = v37;
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_14;
  }

  v29 = v28;
  v30 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v25 = result;
    v32 = *(result + 16) == v27 && v22 == *(result + 24);
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v34);
      goto LABEL_17;
    }

    ++v30;
    if (v31 == v29)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}