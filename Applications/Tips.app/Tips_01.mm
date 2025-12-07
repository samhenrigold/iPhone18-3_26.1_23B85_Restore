__n128 sub_100037AC8@<Q0>(uint64_t *a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, double a4@<D0>)
{
  rect.origin.x = sub_100037FF4(a3, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = -v6;
  v17 = a1[3];
  v16 = a1[4];
  sub_10003A408(a1, v59);
  static Alignment.center.getter();
  *&v87 = v12;
  *(&v87 + 1) = v13;
  *&v88 = v14;
  *(&v88 + 1) = v17;
  *&v89 = v16;
  WORD4(v89) = 256;
  v90.n128_u64[0] = 0;
  v90.n128_f64[1] = v15;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v87;
  v63 = v88;
  v64 = v89;
  v65 = v90;
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v14;
  v27[3] = v17;
  v27[4] = v16;
  v28 = 256;
  v29 = 0;
  v30 = v15;
  sub_10001F808(&v87, v59, &qword_1000B38B8, &qword_100078F68);
  sub_10001F870(v27, &qword_1000B38B8, &qword_100078F68);
  v91.origin.x = rect.origin.x;
  v91.origin.y = v7;
  v91.size.width = v9;
  v91.size.height = v11;
  CGRectGetHeight(v91);
  static Alignment.center.getter();
  v39 = v70;
  v40 = v71;
  v41 = v72;
  v35 = v66;
  v36 = v67;
  v37 = v68;
  v38 = v69;
  v31 = v62;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  sub_10001F808(&v31, v59, &qword_1000B38C0, &qword_100078F70);
  _FrameLayout.init(width:height:alignment:)();
  v81 = v39;
  v82 = v40;
  v83 = v41;
  v77 = v35;
  v78 = v36;
  v80 = v38;
  v79 = v37;
  v73 = v31;
  v74 = v32;
  v76 = v34;
  v75 = v33;
  v42[8] = v70;
  v42[9] = v71;
  v42[10] = v72;
  v42[4] = v66;
  v42[5] = v67;
  v42[6] = v68;
  v42[7] = v69;
  v42[0] = v62;
  v42[1] = v63;
  v42[2] = v64;
  v42[3] = v65;
  sub_10001F870(v42, &qword_1000B38C0, &qword_100078F70);
  LOBYTE(v12) = static Edge.Set.leading.getter();
  v18 = static SafeAreaRegions.all.getter();
  v43[10] = v83;
  v43[11] = v84;
  v43[12] = v85;
  v43[13] = v86;
  v43[6] = v79;
  v43[7] = v80;
  v43[8] = v81;
  v43[9] = v82;
  v43[2] = v75;
  v43[3] = v76;
  v43[4] = v77;
  v43[5] = v78;
  v43[0] = v73;
  v43[1] = v74;
  v44[10] = v83;
  v44[11] = v84;
  v44[12] = v85;
  v44[13] = v86;
  v44[6] = v79;
  v44[7] = v80;
  v44[8] = v81;
  v44[9] = v82;
  v44[2] = v75;
  v44[3] = v76;
  v44[4] = v77;
  v44[5] = v78;
  v44[0] = v73;
  v44[1] = v74;
  sub_10001F808(v43, v59, &qword_1000B38C8, &qword_100078F78);
  sub_10001F870(v44, &qword_1000B38C8, &qword_100078F78);
  v55 = v83;
  v56 = v84;
  v57 = v85;
  *v58 = v86;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v45 = v73;
  v46 = v74;
  v59[10] = v83;
  v59[11] = v84;
  v59[12] = v85;
  v59[13] = v86;
  v59[6] = v79;
  v59[7] = v80;
  v59[8] = v81;
  v59[9] = v82;
  v59[2] = v75;
  v59[3] = v76;
  v59[4] = v77;
  v59[5] = v78;
  *&v58[16] = v18;
  v58[24] = v12;
  v59[0] = v73;
  v59[1] = v74;
  v60 = v18;
  v61 = v12;
  sub_10001F808(&v45, &rect.origin.y, &qword_1000B38D0, qword_100078F80);
  sub_10001F870(v59, &qword_1000B38D0, qword_100078F80);
  v19 = *v58;
  *(a2 + 192) = v57;
  *(a2 + 208) = v19;
  *(a2 + 217) = *&v58[9];
  v20 = v54;
  *(a2 + 128) = v53;
  *(a2 + 144) = v20;
  v21 = v56;
  *(a2 + 160) = v55;
  *(a2 + 176) = v21;
  v22 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v22;
  v23 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v23;
  v24 = v46;
  *a2 = v45;
  *(a2 + 16) = v24;
  result = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = result;
  return result;
}

double sub_100037FF4(uint64_t a1, double a2)
{
  v29[2] = a1;
  v3 = type metadata accessor for ElementVerticalMotion();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v29 - v8;
  v10 = type metadata accessor for NamedCoordinateSpace();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = *&v31;
  v31 = 1953720684;
  v32 = 0xE400000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v16 = v15;
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = v29[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = round(a2 - v14 - *&v31);
  type metadata accessor for TipListView(0);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);
  State.wrappedValue.getter();
  (*(v4 + 104))(v7, enum case for ElementVerticalMotion.up(_:), v3);
  v21 = static ElementVerticalMotion.== infix(_:_:)();
  v22 = *(v4 + 8);
  v22(v7, v3);
  v22(v9, v3);
  GeometryProxy.size.getter();
  v24 = fmax(round(v23), round(v18)) >= v20;
  if (v14 == 0.0)
  {
    v24 = 0;
  }

  if ((v24 & v21) != 0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v14 + v18;
  }

  if ([objc_opt_self() isPhoneUI])
  {
    v26 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = v31;
    if (v25 == 0.0)
    {
      v26 = 0;
    }
  }

  v27 = *(v19 + 32);
  LOBYTE(v31) = *(v19 + 24);
  v32 = v27;
  v30 = v26;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.setter();
  return v16;
}

double sub_1000383FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TipListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v31;
  v11 = [v31 gradient];

  if (v11)
  {
    v12 = v11;
    v29 = v12;
    static Array.colorsFromGradient(_:)();

    Gradient.init(colors:)();
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    sub_100038CB4(a1, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = a2;
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    sub_100038D1C(v9, v16 + v13);
    *(v16 + v14) = a3;
    v17 = v16 + v15;
    *(v17 + 32) = v33;
    v18 = v32;
    *v17 = v31;
    *(v17 + 16) = v18;
    sub_10001B4A4(&qword_1000B3898, &qword_100078F48);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100077C60;
    v20 = objc_opt_self();
    v21 = [v20 systemBackgroundColor];
    *(v19 + 32) = Color.init(_:)();
    v22 = [v20 systemBackgroundColor];
    v23 = [v22 colorWithAlphaComponent:0.0];

    *(v19 + 40) = Color.init(_:)();
    v24 = AnyGradient.init(colors:locations:interpolations:)();
    sub_100038CB4(a1, v9);
    a2 = v30;
    v25 = swift_allocObject();
    sub_100038D1C(v9, v25 + v13);
    *(v25 + v14) = a3;
    *(v25 + v15) = v24;
    v34 = sub_10003A138;
    v35 = v16;
    v36 = sub_10003A350;
    v37 = v25;
    v38 = 0;

    sub_10001B4A4(&qword_1000B3868, &qword_100078F30);
    sub_100039F04();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v34 = static Color.clear.getter();
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    sub_10001B4A4(&qword_1000B3868, &qword_100078F30);
    sub_100039F04();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v31;
  v27 = v32;
  v28 = v33;
  *a2 = v31;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  return result;
}

uint64_t sub_1000387F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_10001B4A4(&qword_1000B36F0, &qword_100078CB0);
  __chkstk_darwin(v8);
  v10 = (&v23 - v9);
  v11 = sub_10001B4A4(&qword_1000B36F8, &qword_100078CB8);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14.n128_f64[0] = sub_100037FF4(a1, a4);
  if (v15 <= 0.0)
  {
    v22 = *(v24 + 56);

    return v22(a3, 1, 1, v11, v14);
  }

  else
  {
    *v10 = static Alignment.center.getter();
    v10[1] = v16;
    v17 = sub_10001B4A4(&qword_1000B3700, &qword_100078CC0);
    sub_100038AA4(a2, v10 + *(v17 + 44), a4);
    v18 = (v10 + *(v8 + 36));
    v19 = *(sub_10001B4A4(&qword_1000B3708, &qword_100078CC8) + 28);
    v20 = type metadata accessor for Text.Case();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *v18 = swift_getKeyPath();
    static VerticalEdge.Set.all.getter();
    sub_10003987C();
    View.listRowSeparator(_:edges:)();
    sub_10001F870(v10, &qword_1000B36F0, &qword_100078CB0);
    (*(v24 + 32))(a3, v13, v11);
    return (*(v24 + 56))(a3, 0, 1, v11);
  }
}

uint64_t sub_100038AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_10001B4A4(&qword_1000B3730, qword_100078D08);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21[-1] - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v21[0];
  v13 = [v21[0] gradient];

  sub_1000383FC(a1, v21, a3);
  v14 = v21[0];
  v15 = v21[1];
  v16 = v21[2];
  v17 = v21[3];
  LOBYTE(v12) = v22;
  sub_10003474C(v11);
  sub_10001F808(v11, v9, &qword_1000B3730, qword_100078D08);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  v18 = sub_10001B4A4(&qword_1000B3738, &qword_100078D68);
  sub_10001F808(v9, a2 + *(v18 + 48), &qword_1000B3730, qword_100078D08);
  sub_100039968(v14, v15, v16, v17, v12);
  sub_10001F870(v11, &qword_1000B3730, qword_100078D08);
  sub_10001F870(v9, &qword_1000B3730, qword_100078D08);
  return sub_1000399A8(v14, v15, v16, v17, v12);
}

uint64_t sub_100038CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100038DE8()
{
  result = qword_1000B35E8;
  if (!qword_1000B35E8)
  {
    sub_10001E860(&qword_1000B35E0, &qword_100078A28);
    sub_100038EA4();
    sub_100038D98(&qword_1000B3620, type metadata accessor for ScrollVerticallyTestSupport, &unk_10007B7BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35E8);
  }

  return result;
}

unint64_t sub_100038EA4()
{
  result = qword_1000B35F0;
  if (!qword_1000B35F0)
  {
    sub_10001E860(&qword_1000B35F8, &qword_100078A78);
    sub_100038F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35F0);
  }

  return result;
}

unint64_t sub_100038F28()
{
  result = qword_1000B3600;
  if (!qword_1000B3600)
  {
    sub_10001E860(&qword_1000B3608, &qword_100078A80);
    sub_10001E860(&qword_1000B3610, &qword_100078A88);
    type metadata accessor for PlainListStyle();
    sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88, &protocol conformance descriptor for GeometryReader<A>);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3600);
  }

  return result;
}

uint64_t sub_100039088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TipListView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003912C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_100039198(uint64_t a1, void **a2)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100035444(a1, a2, v6);
}

unint64_t sub_100039218()
{
  result = qword_1000B3698;
  if (!qword_1000B3698)
  {
    sub_10001E860(&qword_1000B3660, &qword_100078AC8);
    sub_1000392D0();
    sub_10001E8B8(&qword_1000B36C8, &qword_1000B36D0, &qword_100078BD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3698);
  }

  return result;
}

unint64_t sub_1000392D0()
{
  result = qword_1000B36A0;
  if (!qword_1000B36A0)
  {
    sub_10001E860(&qword_1000B3658, &qword_100078AC0);
    sub_100039388();
    sub_10001E8B8(&qword_1000B36B8, &qword_1000B36C0, &qword_100078BC8, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36A0);
  }

  return result;
}

unint64_t sub_100039388()
{
  result = qword_1000B36A8;
  if (!qword_1000B36A8)
  {
    sub_10001E860(&qword_1000B3650, &qword_100078AB8);
    sub_10001E860(&qword_1000B3640, &qword_100078AA8);
    sub_10001E8B8(&qword_1000B3688, &qword_1000B3640, &qword_100078AA8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B36B0, &qword_1000B3690, &qword_100078B30, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36A8);
  }

  return result;
}

unint64_t sub_1000394B0()
{
  result = qword_1000B36D8;
  if (!qword_1000B36D8)
  {
    sub_10001E860(&qword_1000B31A8, &qword_100078BC0);
    sub_100039534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36D8);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_1000B36E0;
  if (!qword_1000B36E0)
  {
    sub_10001AC14(255, &qword_1000B30C8, TPSTip_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36E0);
  }

  return result;
}

uint64_t sub_1000395CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TipListView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_100039640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100039688()
{
  v1 = (type metadata accessor for TipListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[9];
  v7 = type metadata accessor for ElementVerticalMotion();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000397C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000387F4(a1, v2 + v6, a2, v7);
}

unint64_t sub_10003987C()
{
  result = qword_1000B3710;
  if (!qword_1000B3710)
  {
    sub_10001E860(&qword_1000B36F0, &qword_100078CB0);
    sub_10001E8B8(&qword_1000B3718, &qword_1000B3720, &qword_100078D00, &protocol conformance descriptor for ZStack<A>);
    sub_10001E8B8(&qword_1000B3728, &qword_1000B3708, &qword_100078CC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3710);
  }

  return result;
}

double sub_100039968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

uint64_t sub_1000399A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1000399E8(double a1, double a2)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = (*(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 16) + qword_1000B6EE8);
  *v6 = a1;
  v6[1] = a2;
  return sub_10004FF04();
}

unint64_t sub_100039A9C()
{
  result = qword_1000B3780;
  if (!qword_1000B3780)
  {
    sub_10001E860(&qword_1000B3748, &qword_100078D78);
    sub_10001E8B8(&qword_1000B3788, &qword_1000B3740, &qword_100078D70, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3780);
  }

  return result;
}

unint64_t sub_100039B74()
{
  result = qword_1000B37D8;
  if (!qword_1000B37D8)
  {
    sub_10001E860(&qword_1000B37D0, &qword_100078EE0);
    sub_100039C2C();
    sub_10001E8B8(&qword_1000B3850, &qword_1000B3858, &qword_100078F20, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37D8);
  }

  return result;
}

unint64_t sub_100039C2C()
{
  result = qword_1000B37E0;
  if (!qword_1000B37E0)
  {
    sub_10001E860(&qword_1000B37E8, &qword_100078EE8);
    sub_100039CE4();
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37E0);
  }

  return result;
}

unint64_t sub_100039CE4()
{
  result = qword_1000B37F0;
  if (!qword_1000B37F0)
  {
    sub_10001E860(&qword_1000B37F8, &qword_100078EF0);
    sub_100039DC8(&qword_1000B3800, &qword_1000B3808, &qword_100078EF8, sub_100039E4C);
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37F0);
  }

  return result;
}

uint64_t sub_100039DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100039E4C()
{
  result = qword_1000B3810;
  if (!qword_1000B3810)
  {
    sub_10001E860(&qword_1000B3818, &unk_100078F00);
    sub_10001E8B8(&qword_1000B3820, &qword_1000B3828, &qword_100079880, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3810);
  }

  return result;
}

unint64_t sub_100039F04()
{
  result = qword_1000B3870;
  if (!qword_1000B3870)
  {
    sub_10001E860(&qword_1000B3868, &qword_100078F30);
    sub_10001E8B8(&qword_1000B3878, &qword_1000B3880, &qword_100078F38, &protocol conformance descriptor for GeometryReader<A>);
    sub_10001E8B8(&qword_1000B3888, &qword_1000B3890, &qword_100078F40, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3870);
  }

  return result;
}

uint64_t sub_100039FE8()
{
  v1 = (type metadata accessor for TipListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[9];
  v7 = type metadata accessor for ElementVerticalMotion();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

double sub_10003A138@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7 + 16);
  v11[0] = *(v2 + v7);
  v11[1] = v9;
  v12 = *(v2 + v7 + 32);
  *&result = sub_100037AC8(v11, a1, a2, v8).n128_u64[0];
  return result;
}

uint64_t sub_10003A200()
{
  v1 = (type metadata accessor for TipListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[9];
  v7 = type metadata accessor for ElementVerticalMotion();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

double sub_10003A350@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1000376CC(v8, a1, a2, v7).n128_u64[0];
  return result;
}

unint64_t sub_10003A474()
{
  result = qword_1000B3908;
  if (!qword_1000B3908)
  {
    sub_10001E860(&qword_1000B38E0, &qword_100079068);
    sub_10003A500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3908);
  }

  return result;
}

unint64_t sub_10003A500()
{
  result = qword_1000B3910;
  if (!qword_1000B3910)
  {
    sub_10001E860(&qword_1000B3730, qword_100078D08);
    sub_10001E860(&qword_1000B3758, &qword_100078D88);
    sub_100039DC8(&qword_1000B3770, &qword_1000B3758, &qword_100078D88, sub_100039A6C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3910);
  }

  return result;
}

uint64_t sub_10003A5FC(double a1)
{
  v3 = *(type metadata accessor for TipListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100034CA0(v4, a1);
}

unint64_t sub_10003A66C()
{
  result = qword_1000B3928;
  if (!qword_1000B3928)
  {
    sub_10001E860(&qword_1000B38F8, &qword_100079080);
    sub_10003A6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3928);
  }

  return result;
}

unint64_t sub_10003A6F8()
{
  result = qword_1000B3930;
  if (!qword_1000B3930)
  {
    sub_10001E860(&qword_1000B38F0, &qword_100079078);
    sub_10003A7B0();
    sub_10001E8B8(&qword_1000B3970, &qword_1000B3978, qword_1000790B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3930);
  }

  return result;
}

unint64_t sub_10003A7B0()
{
  result = qword_1000B3938;
  if (!qword_1000B3938)
  {
    sub_10001E860(&qword_1000B38E8, &qword_100079070);
    sub_10003A868();
    sub_10001E8B8(&qword_1000B3960, &qword_1000B3968, &qword_1000790A8, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3938);
  }

  return result;
}

unint64_t sub_10003A868()
{
  result = qword_1000B3940;
  if (!qword_1000B3940)
  {
    sub_10001E860(&qword_1000B3920, &qword_100079098);
    sub_10001E8B8(&qword_1000B3948, &qword_1000B3918, &qword_100079090, &protocol conformance descriptor for IDView<A, B>);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3940);
  }

  return result;
}

uint64_t sub_10003A960()
{
  v1 = (type metadata accessor for TipListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for ElementVerticalMotion();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10003AA9C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100034E94(a1, v6, a2);
}

unint64_t sub_10003AB1C()
{
  result = qword_1000B3990;
  if (!qword_1000B3990)
  {
    sub_10001E860(&qword_1000B3980, &qword_1000790F8);
    type metadata accessor for ListItemDocumentView();
    sub_100038D98(&qword_1000B3998, &type metadata accessor for ListItemDocumentView, &protocol conformance descriptor for ListItemDocumentView);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3990);
  }

  return result;
}

unint64_t sub_10003AC38()
{
  result = qword_1000B39B8;
  if (!qword_1000B39B8)
  {
    sub_10001E860(&qword_1000B39C0, &qword_100079118);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B39B8);
  }

  return result;
}

uint64_t sub_10003AD60(uint64_t a1, int a2)
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

uint64_t sub_10003ADA8(uint64_t result, int a2, int a3)
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

uint64_t sub_10003AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v31 = a1;
  v34 = a3;
  v4 = type metadata accessor for AccessibilityTraits();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B39C8, &qword_1000791A8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v28 = sub_10001B4A4(&qword_1000B39D0, &qword_1000791B0);
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v27 - v13;
  v15 = sub_10001B4A4(&qword_1000B39D8, &qword_1000791B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_10001B4A4(&qword_1000B39E0, qword_1000791C0);
  sub_10003B234(v31, a2, &v11[*(v18 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v19 = sub_10001E8B8(&qword_1000B39E8, &qword_1000B39C8, &qword_1000791A8, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v30);
  sub_10001F870(v11, &qword_1000B39C8, &qword_1000791A8);
  v20 = v29;
  static AccessibilityTraits.isButton.getter();
  v35 = v9;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  View.accessibilityAddTraits(_:)();
  (*(v32 + 8))(v20, v33);
  (*(v12 + 8))(v14, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v35;
  if (v35)
  {
    v23 = 0x4030000000000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v34;
  sub_10003B898(v17, v34);
  result = sub_10001B4A4(&qword_1000B39F0, &qword_100079220);
  v26 = v24 + *(result + 36);
  *v26 = 0;
  *(v26 + 8) = v23;
  *(v26 + 16) = 0;
  *(v26 + 24) = v23;
  *(v26 + 32) = v22 ^ 1;
  return result;
}

uint64_t sub_10003B234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_10001B4A4(&qword_1000B39F8, &qword_100079228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_10001B4A4(&qword_1000B3A00, &qword_100079230);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = objc_allocWithZone(TPSGradient);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v15 initWithColorStrings:isa];

  v60 = a1;
  v61 = a2;
  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottomLeading.getter();
  sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
  sub_10003B910();
  TipGradientView.init(_:startPoint:endPoint:gradientView:)();
  sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228, &protocol conformance descriptor for TipGradientView<A>);
  View.accessibilityHidden(_:)();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v8) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v14[*(sub_10001B4A4(&qword_1000B3A20, &qword_100079248) + 36)];
  *v25 = v8;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v14[*(v10 + 44)];
  v27 = v14;
  v28 = v65;
  *v26 = v64;
  *(v26 + 1) = v28;
  *(v26 + 2) = v66;
  LocalizedStringKey.init(stringLiteral:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  LOBYTE(v5) = v32;
  static Color.primary.getter();
  v33 = Text.foregroundColor(_:)();
  v35 = v34;
  LOBYTE(v14) = v36;
  v57 = v37;

  sub_100023608(v29, v31, v5 & 1);

  LOBYTE(v5) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LOBYTE(v71[0]) = v14 & 1;
  LOBYTE(v67) = 0;
  v46 = v59;
  sub_10001F808(v27, v59, &qword_1000B3A00, &qword_100079230);
  v47 = v46;
  v48 = v58;
  sub_10001F808(v47, v58, &qword_1000B3A00, &qword_100079230);
  v49 = (v48 + *(sub_10001B4A4(&qword_1000B3A28, &qword_100079250) + 48));
  *&v67 = v33;
  *(&v67 + 1) = v35;
  v50 = v35;
  LOBYTE(v68) = v14 & 1;
  *(&v68 + 1) = *v63;
  DWORD1(v68) = *&v63[3];
  v51 = v57;
  *(&v68 + 1) = v57;
  LOBYTE(v69) = v5;
  *(&v69 + 1) = *v62;
  DWORD1(v69) = *&v62[3];
  *(&v69 + 1) = v39;
  *&v70[0] = v41;
  *(&v70[0] + 1) = v43;
  *&v70[1] = v45;
  BYTE8(v70[1]) = 0;
  v52 = v67;
  v53 = v68;
  *(v49 + 57) = *(v70 + 9);
  v54 = v70[0];
  v49[2] = v69;
  v49[3] = v54;
  *v49 = v52;
  v49[1] = v53;
  sub_10001F808(&v67, v71, &qword_1000B3A30, &unk_100079258);
  sub_10001F870(v27, &qword_1000B3A00, &qword_100079230);
  v71[0] = v33;
  v71[1] = v50;
  v72 = v14 & 1;
  *v73 = *v63;
  *&v73[3] = *&v63[3];
  v74 = v51;
  v75 = v5;
  *v76 = *v62;
  *&v76[3] = *&v62[3];
  v77 = v39;
  v78 = v41;
  v79 = v43;
  v80 = v45;
  v81 = 0;
  sub_10001F870(v71, &qword_1000B3A30, &unk_100079258);
  return sub_10001F870(v59, &qword_1000B3A00, &qword_100079230);
}

uint64_t sub_10003B764@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = Image.init(_internalSystemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10001F870(v4, &qword_1000B3030, &qword_100077D50);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_10003B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B39D8, &qword_1000791B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003B910()
{
  result = qword_1000B3A10;
  if (!qword_1000B3A10)
  {
    sub_10001E860(&qword_1000B3A08, &unk_100079238);
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A10);
  }

  return result;
}

unint64_t sub_10003B9D4()
{
  result = qword_1000B3A38;
  if (!qword_1000B3A38)
  {
    sub_10001E860(&qword_1000B39F0, &qword_100079220);
    sub_10003BA8C();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A38);
  }

  return result;
}

unint64_t sub_10003BA8C()
{
  result = qword_1000B3A40;
  if (!qword_1000B3A40)
  {
    sub_10001E860(&qword_1000B39D8, &qword_1000791B8);
    sub_10001E860(&qword_1000B39C8, &qword_1000791A8);
    sub_10001E8B8(&qword_1000B39E8, &qword_1000B39C8, &qword_1000791A8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10003BB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A40);
  }

  return result;
}

unint64_t sub_10003BB88()
{
  result = qword_1000B3A48;
  if (!qword_1000B3A48)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A48);
  }

  return result;
}

void TPSAppDelegate.buildMenu(with:)(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v21.receiver = v1;
  v21.super_class = TPSAppDelegate;
  objc_msgSendSuper2(&v21, "buildMenuWithBuilder:", a1);
  sub_10001AC14(0, &qword_1000B3A50, UIMenuSystem_ptr);
  swift_getObjectType();
  v5 = [a1 system];
  v6 = [objc_opt_self() mainSystem];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10001AC14(0, &qword_1000B3A58, UIKeyCommand_ptr);
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() _systemImageNamed:v8];

    v10 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_10001AC14(0, &qword_1000B3A60, UIMenu_ptr);
    sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1000792A0;
    *(preferredElementSize + 32) = v10;
    v12 = UIMenuFind;
    v13 = v10;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v22.value.super.isa = 0;
    v22.is_nil = UIMenuFind;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v22, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v19).super.super.isa;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000792A0;
    *(v16 + 32) = isa;
    sub_10001AC14(0, &qword_1000B3A68, UIMenuElement_ptr);
    v17 = isa;
    v18 = Array._bridgeToObjectiveC()().super.isa;

    [a1 replaceMenuForIdentifier:v12 withElements:v18];

    memset(v20, 0, 32);
    UIMenuBuilder.remove(command:propertyList:)();
    sub_1000243B4(v20);
    [a1 removeMenuForIdentifier:UIMenuFormat];
  }
}

NSString sub_10003C05C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B6EC0 = result;
  return result;
}

NSString sub_10003C090()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B6EC8 = result;
  return result;
}

void sub_10003C0C8()
{
  v1 = v0;
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 currentTip];
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = type metadata accessor for TPSSharingActivityItemSource();
  v12 = objc_allocWithZone(v11);
  v13 = sub_100066364(v10);

  sub_10001B4A4(&qword_1000B3A70, &qword_1000792C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100077E80;
  *(v14 + 56) = v11;
  *(v14 + 32) = v13;
  v36 = v13;
  v15 = v1;
  v16 = [v1 currentTip];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v17 = v16;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&aBlock = 0xD00000000000001ELL;
  *(&aBlock + 1) = 0x800000010008C2A0;
  v18 = [v17 variantID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  URL.init(string:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001F870(v4, &unk_1000B3380, &qword_100079940);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v39 = v5;
    v23 = sub_10001F7A4(&aBlock);
    (*(v6 + 16))(v23, v8, v5);
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      v14 = sub_10003C9F4((v24 > 1), v25 + 1, 1, v14);
    }

    (*(v6 + 8))(v8, v5);
    *(v14 + 16) = v25 + 1;
    sub_10003CD0C(&aBlock, (v14 + 32 * v25 + 32));
  }

  v26 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v26 initWithActivityItems:isa applicationActivities:0];

  sub_10003CB04();
  type metadata accessor for ActivityType(0);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v28 setExcludedActivityTypes:v29];

  v30 = [v28 popoverPresentationController];
  if (v30)
  {
    v31 = v30;
    v32 = [v15 shareBarButton];
    [v31 setSourceItem:v32];
  }

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = sub_10003CCEC;
  v41 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v38 = sub_10003C8BC;
  v39 = &unk_1000A3CC0;
  v34 = _Block_copy(&aBlock);

  [v28 setCompletionWithItemsHandler:v34];
  _Block_release(v34);
  [v15 presentViewController:v28 animated:1 completion:0];
}

id sub_10003C5BC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TipsLog();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    static TipsLog.analytics.getter();
    log(_:_:)();
    (*(v8 + 8))(v10, v7);
    if (a2)
    {
      if (!a1)
      {
        if (qword_1000B2B48 != -1)
        {
          swift_once();
        }

        a1 = qword_1000B6EC0;
      }
    }

    else
    {
      if (qword_1000B2B50 != -1)
      {
        swift_once();
      }

      a1 = qword_1000B6EC8;
    }

    v13 = a1;
    result = [v12 collectionID];
    if (result)
    {
      v14 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v12 currentTip];
      if (result)
      {
        v15 = result;
        v16 = [result correlationID];

        if (v16)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        result = [v12 currentTip];
        if (result)
        {
          v17 = result;
          v18 = [result identifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          type metadata accessor for TPSAnalyticsEventSharedTip();
          swift_allocObject();
          TPSAnalyticsEventSharedTip.init(collectionID:correlationID:tipID:appBundleID:)();
          dispatch thunk of TipsAnalyticsEvent.log()();
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10003C8BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

char *sub_10003C9F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001B4A4(&qword_1000B3A70, &qword_1000792C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003CB04()
{
  sub_10001B4A4(&qword_1000B3A78, &unk_1000792C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000792B0;
  *(v0 + 32) = UIActivityTypeAssignToContact;
  *(v0 + 40) = UIActivityTypePrint;
  *(v0 + 48) = UIActivityTypeSaveToCameraRoll;
  *(v0 + 56) = UIActivityTypeAddToReadingList;
  *(v0 + 64) = UIActivityTypePostToFlickr;
  *(v0 + 72) = UIActivityTypePostToVimeo;
  *(v0 + 80) = UIActivityTypePostToTencentWeibo;
  *(v0 + 88) = UIActivityTypeMarkupAsPDF;
  *(v0 + 96) = UIActivityTypeCollaborationInviteWithLink;
  *(v0 + 104) = UIActivityTypeCollaborationCopyLink;
  v1 = UIActivityTypeUserDefaults;
  v20 = UIActivityTypeUserDefaults;
  *(v0 + 112) = UIActivityTypeAddToHomeScreen;
  *(v0 + 120) = v1;
  v19 = UIActivityTypeCreateReminder;
  v2 = UIActivityTypeSaveToFiles;
  v21 = UIActivityTypeSaveToFiles;
  *(v0 + 128) = UIActivityTypeCreateReminder;
  *(v0 + 136) = v2;
  v22 = UIActivityTypeBoxInvite;
  *(v0 + 144) = UIActivityTypeBoxInvite;
  v3 = UIActivityTypeAssignToContact;
  v4 = UIActivityTypePrint;
  v5 = UIActivityTypeSaveToCameraRoll;
  v6 = UIActivityTypeAddToReadingList;
  v7 = UIActivityTypePostToFlickr;
  v8 = UIActivityTypePostToVimeo;
  v9 = UIActivityTypePostToTencentWeibo;
  v10 = UIActivityTypeMarkupAsPDF;
  v11 = UIActivityTypeCollaborationInviteWithLink;
  v12 = UIActivityTypeCollaborationCopyLink;
  v13 = UIActivityTypeAddToHomeScreen;
  v14 = v20;
  v15 = v19;
  v16 = v21;
  v17 = v22;
  return v0;
}

uint64_t sub_10003CCB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10003CCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

_OWORD *sub_10003CD0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10003CD1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_10003CD74(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v3];
}

uint64_t TPSTip.id.getter()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10003CE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001F808(v2, &v14 - v9, &qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_10003D03C(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10003D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B3A80, &qword_100079328);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003D1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B3A80, &qword_100079328);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ChecklistView(uint64_t a1)
{
  result = qword_1000B3AE0;
  if (!qword_1000B3AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D354(uint64_t a1)
{
  sub_10003D428(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10003D428(319, &qword_1000B3AF0, &type metadata accessor for DismissAction);
    if (v2 <= 0x3F)
    {
      sub_10003D47C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003D428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10003D47C(uint64_t a1)
{
  if (!qword_1000B3AF8)
  {
    type metadata accessor for ChecklistViewModel(255);
    sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B3AF8);
    }
  }
}

uint64_t sub_10003D52C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for ChecklistView(0);
  v62 = *(v2 - 8);
  v61 = *(v62 + 64);
  __chkstk_darwin(v2);
  v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InsetGroupedListStyle();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  __chkstk_darwin(v6);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_10001B4A4(&qword_1000B3B38, &qword_100079398);
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v47 = sub_10001B4A4(&qword_1000B3B40, &qword_1000793A0);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v16 = &v45 - v15;
  v49 = sub_10001B4A4(&qword_1000B3B48, &qword_1000793A8);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v45 - v17;
  v51 = sub_10001B4A4(&qword_1000B3B50, qword_1000793B0);
  __chkstk_darwin(v51);
  v19 = &v45 - v18;
  v52 = v1;
  type metadata accessor for ChecklistViewModel(0);
  sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  v20 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v64 = v67;
  v65 = v68;
  v66 = v69;
  v63 = v1;
  sub_10001B4A4(&qword_1000B3B58, &qword_100079400);
  sub_10001E8B8(&qword_1000B3B60, &qword_1000B3B58, &qword_100079400, &protocol conformance descriptor for TupleView<A>);
  List.init(selection:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();

  v21 = type metadata accessor for EntityIdentifier();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  v22 = sub_10001E8B8(&qword_1000B3B68, &qword_1000B3B38, &qword_100079398, &protocol conformance descriptor for List<A, B>);
  View.appEntityIdentifier(_:)();
  sub_10001F870(v11, &qword_1000B2F90, &qword_100077CF0);
  (*(v46 + 8))(v14, v12);
  static Edge.Set.top.getter();
  v67 = v12;
  v68 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v45;
  v25 = v47;
  View.listPadding(_:_:)();
  (*(v48 + 8))(v16, v25);
  v26 = v53;
  InsetGroupedListStyle.init()();
  v67 = v25;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v49;
  v28 = v54;
  View.listStyle<A>(_:)();
  (*(v55 + 8))(v26, v28);
  (*(v50 + 8))(v24, v27);
  v29 = v56;
  static ListSectionSpacing.custom(_:)();
  v30 = *(sub_10001B4A4(&qword_1000B3B70, &qword_100079450) + 36);
  v31 = v57;
  v32 = v58;
  (*(v57 + 16))(&v19[v30], v29, v58);
  v33 = v31;
  v34 = *(v31 + 56);
  v34(&v19[v30], 0, 1, v32);
  KeyPath = swift_getKeyPath();
  v36 = &v19[*(v51 + 36)];
  v37 = *(sub_10001B4A4(&qword_1000B3B78, &qword_100079488) + 28);
  (*(v33 + 32))(v36 + v37, v29, v32);
  v34(v36 + v37, 0, 1, v32);
  *v36 = KeyPath;
  v38 = [objc_opt_self() systemGroupedBackgroundColor];
  v67 = Color.init(_:)();
  sub_100040C04();
  v39 = v60;
  View.scrollContentBackground<A>(_:)();

  sub_10001F870(v19, &qword_1000B3B50, qword_1000793B0);
  v40 = v59;
  sub_100040E84(v52, v59);
  v41 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v42 = swift_allocObject();
  sub_100040EEC(v40, v42 + v41);
  result = sub_10001B4A4(&qword_1000B3BB0, qword_1000794A8);
  v44 = (v39 + *(result + 36));
  *v44 = sub_100040F50;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  return result;
}

uint64_t sub_10003DE98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for ChecklistView(0);
  v4 = v3 - 8;
  v89 = *(v3 - 8);
  v5 = *(v89 + 64);
  __chkstk_darwin(v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001B4A4(&qword_1000B3BC0, &qword_100079590);
  v90 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v80 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v71 - v10;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001B4A4(&qword_1000B3BC8, &qword_100079598);
  v18 = __chkstk_darwin(v17 - 8);
  v87 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v86 = &v71 - v21;
  v22 = __chkstk_darwin(v20);
  v83 = &v71 - v23;
  __chkstk_darwin(v22);
  v92 = &v71 - v24;
  v25 = sub_10001B4A4(&qword_1000B3BD0, &qword_1000795A0);
  v84 = *(v25 - 8);
  v85 = v25;
  v26 = __chkstk_darwin(v25);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v71 - v28;
  v93 = a1;
  sub_10001B4A4(&qword_1000B3BD8, &qword_1000795A8);
  sub_1000411C0();
  v91 = v29;
  Section<>.init(content:)();
  v30 = *(a1 + *(v4 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v30;
  static Published.subscript.getter();

  v31 = v94;
  v79 = v6;
  v78 = a1;
  v77 = v5;
  v76 = v13;
  v75 = v16;
  if (v94)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v72 = String.init(localized:table:bundle:locale:comment:)();
    v33 = v32;
    v94 = v31;
    KeyPath = swift_getKeyPath();
    sub_100040E84(a1, &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = v7;
    v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100040EEC(v6, v39 + v34);
    *(v39 + v35) = v31;
    v40 = v90;
    v41 = (v39 + v37);
    v7 = v36;
    *v41 = v72;
    v41[1] = v33;
    *(v39 + v38) = 0;

    sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
    sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8);
    sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0, &protocol conformance descriptor for [A]);
    sub_100041564();
    v42 = v74;
    ForEach<>.init(_:id:content:)();
    (*(v40 + 32))(v92, v42, v36);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v40 = v90;
  }

  v44 = *(v40 + 56);
  v45 = 1;
  v44(v92, v43, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = v94;
  if (v94)
  {
    KeyPath = v44;
    v74 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v76 = String.init(localized:table:bundle:locale:comment:)();
    v48 = v47;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v94)
    {

      v49 = 30.0;
    }

    else
    {
      v49 = 10.0;
    }

    v51 = v89;
    v52 = v77;
    v94 = v46;
    swift_getKeyPath();
    v53 = v79;
    sub_100040E84(v78, v79);
    v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v55 = (v52 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_100040EEC(v53, v57 + v54);
    *(v57 + v55) = v46;
    v58 = (v57 + v56);
    *v58 = v76;
    v58[1] = v48;
    *(v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

    sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
    sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8);
    sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0, &protocol conformance descriptor for [A]);
    sub_100041564();
    v59 = v80;
    ForEach<>.init(_:id:content:)();
    v50 = v83;
    v7 = v74;
    (*(v90 + 32))(v83, v59, v74);
    v45 = 0;
    v44 = KeyPath;
  }

  else
  {
    v50 = v83;
  }

  v44(v50, v45, 1, v7);
  v61 = v84;
  v60 = v85;
  v62 = *(v84 + 16);
  v63 = v82;
  v62(v82, v91, v85);
  v64 = v92;
  v65 = v86;
  sub_100041484(v92, v86);
  v66 = v87;
  sub_100041484(v50, v87);
  v67 = v88;
  v62(v88, v63, v60);
  v68 = sub_10001B4A4(&qword_1000B3C58, qword_1000796A0);
  sub_100041484(v65, &v67[*(v68 + 48)]);
  sub_100041484(v66, &v67[*(v68 + 64)]);
  sub_10001F870(v50, &qword_1000B3BC8, &qword_100079598);
  sub_10001F870(v64, &qword_1000B3BC8, &qword_100079598);
  v69 = *(v61 + 8);
  v69(v91, v60);
  sub_10001F870(v66, &qword_1000B3BC8, &qword_100079598);
  sub_10001F870(v65, &qword_1000B3BC8, &qword_100079598);
  return (v69)(v63, v60);
}

uint64_t sub_10003E8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&qword_1000B3C40, &unk_1000795D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_10001B4A4(&qword_1000B3C30, &qword_1000795D0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_10001B4A4(&qword_1000B3BF0, &qword_1000795B0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = sub_10001B4A4(&qword_1000B3D38, &qword_1000797B8);
  sub_10003F230(a1, &v6[*(v15 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v6, v10, &qword_1000B3C40, &unk_1000795D8);
  v16 = &v10[*(v8 + 44)];
  v17 = v48;
  *(v16 + 4) = v47;
  *(v16 + 5) = v17;
  *(v16 + 6) = v49;
  v18 = v44;
  *v16 = v43;
  *(v16 + 1) = v18;
  v19 = v46;
  *(v16 + 2) = v45;
  *(v16 + 3) = v19;
  LOBYTE(v6) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100023628(v10, v14, &qword_1000B3C30, &qword_1000795D0);
  v28 = &v14[*(sub_10001B4A4(&qword_1000B3C20, &qword_1000795C8) + 36)];
  *v28 = v6;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  v29 = &v14[*(sub_10001B4A4(&qword_1000B3C10, &qword_1000795C0) + 36)];
  *v29 = v6;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  LOBYTE(v6) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v14[*(sub_10001B4A4(&qword_1000B3C00, &qword_1000795B8) + 36)];
  *v38 = v6;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = &v14[*(v12 + 44)];
  v39[32] = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v42 = static Color.clear.getter();
  v40 = AnyView.init<A>(_:)();
  sub_100023628(v14, a2, &qword_1000B3BF0, &qword_1000795B0);
  result = sub_10001B4A4(&qword_1000B3BD8, &qword_1000795A8);
  *(a2 + *(result + 36)) = v40;
  return result;
}

uint64_t sub_10003EC30(uint64_t a1)
{
  v25 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChecklistView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_100040E84(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_100040EEC(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_100041104;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3D38;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100041C74(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v26);
}

void sub_10003F09C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ChecklistView(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v3 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }
}

uint64_t sub_10003F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001B4A4(&qword_1000B3D40, &qword_1000797C0);
  __chkstk_darwin(v5 - 8);
  v96 = v88 - v6;
  v92 = sub_10001B4A4(&qword_1000B3D48, &qword_1000797C8);
  v7 = __chkstk_darwin(v92);
  v94 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = v88 - v10;
  __chkstk_darwin(v9);
  v98 = v88 - v11;
  v12 = sub_10001B4A4(&qword_1000B3D50, &qword_1000797D0);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v99 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (v88 - v16);
  *v17 = static Alignment.center.getter();
  v17[1] = v18;
  v19 = sub_10001B4A4(&qword_1000B3D58, &qword_1000797D8);
  sub_10003FC00((v17 + *(v19 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = (v17 + *(sub_10001B4A4(&qword_1000B3D60, qword_1000797E0) + 36));
  v21 = v113;
  *v20 = v112;
  v20[1] = v21;
  v20[2] = v114;
  v22 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v23 = *(v13 + 44);
  v97 = v17;
  v24 = v17 + v23;
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = *(a1 + *(type metadata accessor for ChecklistView(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v88[1] = v29;
  static Published.subscript.getter();

  v30 = v103;
  if (v103)
  {
    v31 = [v103 title];

    if (v31)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      goto LABEL_6;
    }

    v30 = 0;
  }

  v33 = 0xE000000000000000;
LABEL_6:
  *&v103 = v30;
  *(&v103 + 1) = v33;
  v88[0] = sub_1000235B4();
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_100023608(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v111 = v43 & 1;
  *&v103 = v39;
  *(&v103 + 1) = v41;
  v104[0] = v43 & 1;
  *&v104[8] = v45;
  *&v104[16] = KeyPath;
  *&v104[24] = 0;
  v104[26] = 1;
  v47 = v89;
  static AccessibilityTraits.isHeader.getter();
  sub_10001B4A4(&qword_1000B3D68, &unk_100079870);
  sub_100042118();
  v48 = v96;
  View.accessibilityAddTraits(_:)();
  (*(v90 + 8))(v47, v91);
  v109 = v103;
  v110[0] = *v104;
  *(v110 + 11) = *&v104[11];
  sub_10001F870(&v109, &qword_1000B3D68, &unk_100079870);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v49 = v95;
  sub_100023628(v48, v95, &qword_1000B3D40, &qword_1000797C0);
  v50 = (v49 + *(v92 + 36));
  v51 = v120;
  v50[4] = v119;
  v50[5] = v51;
  v50[6] = v121;
  v52 = v116;
  *v50 = v115;
  v50[1] = v52;
  v53 = v118;
  v50[2] = v117;
  v50[3] = v53;
  sub_100023628(v49, v98, &qword_1000B3D48, &qword_1000797C8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v54 = v103;
  if (!v103)
  {
LABEL_10:
    v57 = 0xE000000000000000;
    goto LABEL_11;
  }

  v55 = [v103 text];

  if (!v55)
  {
    v54 = 0;
    goto LABEL_10;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

LABEL_11:
  *&v103 = v54;
  *(&v103 + 1) = v57;
  v58 = Text.init<A>(_:)();
  v60 = v59;
  v62 = v61;
  static Font.title2.getter();
  v63 = Text.font(_:)();
  v65 = v64;
  v67 = v66;

  sub_100023608(v58, v60, v62 & 1);

  LODWORD(v103) = static HierarchicalShapeStyle.secondary.getter();
  v91 = Text.foregroundStyle<A>(_:)();
  v92 = v68;
  v96 = v69;
  LOBYTE(v58) = v70;
  sub_100023608(v63, v65, v67 & 1);

  v95 = swift_getKeyPath();
  LOBYTE(v60) = v58 & 1;
  v107 = v58 & 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v108[3] + 5) = v122[3];
  *(&v108[4] + 5) = v122[4];
  *(&v108[5] + 5) = v122[5];
  *(&v108[6] + 5) = v122[6];
  *(v108 + 5) = v122[0];
  *(&v108[1] + 5) = v122[1];
  *(&v108[2] + 5) = v122[2];
  v71 = v99;
  sub_10001F808(v97, v99, &qword_1000B3D50, &qword_1000797D0);
  v72 = v98;
  v73 = v94;
  sub_10001F808(v98, v94, &qword_1000B3D48, &qword_1000797C8);
  v74 = v71;
  v75 = v93;
  sub_10001F808(v74, v93, &qword_1000B3D50, &qword_1000797D0);
  v76 = sub_10001B4A4(&qword_1000B3D78, &qword_100079888);
  sub_10001F808(v73, v75 + *(v76 + 48), &qword_1000B3D48, &qword_1000797C8);
  v77 = (v75 + *(v76 + 64));
  v79 = v91;
  v78 = v92;
  *&v100 = v91;
  *(&v100 + 1) = v96;
  LOBYTE(v101) = v60;
  *(&v101 + 1) = *v106;
  DWORD1(v101) = *&v106[3];
  *(&v101 + 1) = v92;
  *&v102[0] = v95;
  WORD4(v102[0]) = 0;
  BYTE10(v102[0]) = 1;
  *(v102 + 11) = v108[0];
  *(&v102[1] + 11) = v108[1];
  *(&v102[2] + 11) = v108[2];
  *(&v102[3] + 11) = v108[3];
  *(&v102[4] + 11) = v108[4];
  *(&v102[5] + 11) = v108[5];
  *(&v102[6] + 11) = v108[6];
  *(&v102[7] + 1) = *(&v108[6] + 13);
  v80 = v101;
  *v77 = v100;
  v77[1] = v80;
  v81 = v102[0];
  v82 = v102[1];
  v83 = v102[3];
  v77[4] = v102[2];
  v77[5] = v83;
  v77[2] = v81;
  v77[3] = v82;
  v84 = v102[4];
  v85 = v102[5];
  v86 = v102[7];
  v77[8] = v102[6];
  v77[9] = v86;
  v77[6] = v84;
  v77[7] = v85;
  sub_10001F808(&v100, &v103, &qword_1000B3D80, &qword_100079890);
  sub_10001F870(v72, &qword_1000B3D48, &qword_1000797C8);
  sub_10001F870(v97, &qword_1000B3D50, &qword_1000797D0);
  *&v104[91] = v108[4];
  *&v104[107] = v108[5];
  *v105 = v108[6];
  *&v104[27] = v108[0];
  *&v104[43] = v108[1];
  *&v104[59] = v108[2];
  *&v103 = v79;
  *(&v103 + 1) = v96;
  v104[0] = v60;
  *&v104[1] = *v106;
  *&v104[4] = *&v106[3];
  *&v104[8] = v78;
  *&v104[16] = v95;
  *&v104[24] = 0;
  v104[26] = 1;
  *&v105[13] = *(&v108[6] + 13);
  *&v104[75] = v108[3];
  sub_10001F870(&v103, &qword_1000B3D80, &qword_100079890);
  sub_10001F870(v73, &qword_1000B3D48, &qword_1000797C8);
  return sub_10001F870(v99, &qword_1000B3D50, &qword_1000797D0);
}

uint64_t sub_10003FC00@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for ImageResource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10001B4A4(&qword_1000B3D88, &qword_100079898);
  v5 = __chkstk_darwin(v29);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  sub_10003CE3C(&v29 - v14);
  (*(v10 + 104))(v13, enum case for ColorScheme.light(_:), v9);
  v16 = static ColorScheme.== infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = static Color.white.getter();
  }

  else
  {
    v19 = [objc_opt_self() tertiarySystemBackgroundColor];
    v18 = Color.init(_:)();
  }

  v20 = v18;
  if (qword_1000B2B90 != -1)
  {
    swift_once();
  }

  v21 = sub_1000421A4(v1, qword_1000B6F30);
  (*(v2 + 16))(v4, v21, v1);
  v32 = Image.init(_:)();
  View.accessibilityHidden(_:)();

  v22 = &v8[*(v29 + 36)];
  v23 = *(sub_10001B4A4(&qword_1000B3D90, &qword_1000798A0) + 28);
  static SymbolRenderingMode.multicolor.getter();
  v24 = type metadata accessor for SymbolRenderingMode();
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = swift_getKeyPath();
  v25 = v30;
  sub_10001F808(v8, v30, &qword_1000B3D88, &qword_100079898);
  v26 = v31;
  *v31 = v20;
  *(v26 + 4) = 256;
  v27 = sub_10001B4A4(&qword_1000B3D98, &qword_1000798D8);
  sub_10001F808(v25, v26 + *(v27 + 48), &qword_1000B3D88, &qword_100079898);

  sub_10001F870(v8, &qword_1000B3D88, &qword_100079898);
  sub_10001F870(v25, &qword_1000B3D88, &qword_100079898);
}

uint64_t sub_10004001C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v41 = a6;
  v10 = type metadata accessor for ListSectionSpacing();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10001B4A4(&qword_1000B3CA8, &qword_100079708);
  v14 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v36 - v15;
  v40 = sub_10001B4A4(&qword_1000B3C98, &qword_100079700);
  v17 = __chkstk_darwin(v40);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  v22 = *a1;
  v42 = a2;
  v43 = v22;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v35 = v22;
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v27 = v26;
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      sub_10004086C(v37, v38, v16);
      sub_100023628(v16, v19, &qword_1000B3CA8, &qword_100079708);
      (*(v14 + 56))(v19, 0, 1, v39);
LABEL_10:
      sub_100023628(v19, v21, &qword_1000B3C98, &qword_100079700);
      sub_10001B4A4(&qword_1000B3D08, &qword_100079738);
      sub_10004176C();
      sub_100041AA0();
      v29 = v41;
      Section<>.init(header:content:)();
      static ListSectionSpacing.custom(_:)();
      v30 = *(sub_10001B4A4(&qword_1000B3C78, &qword_1000796F0) + 36);
      (*(v11 + 16))(v29 + v30, v13, v10);
      v31 = *(v11 + 56);
      v31((v29 + v30), 0, 1, v10);
      KeyPath = swift_getKeyPath();
      v33 = (v29 + *(sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8) + 36));
      v34 = *(sub_10001B4A4(&qword_1000B3B78, &qword_100079488) + 28);
      (*(v11 + 32))(v33 + v34, v13, v10);
      result = v31(v33 + v34, 0, 1, v10);
      *v33 = KeyPath;
      return result;
    }

LABEL_9:
    (*(v14 + 56))(v19, 1, 1, v39);
    goto LABEL_10;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(a3 + 32);
    v25 = v22;
    v26 = v24;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double sub_10004044C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  v33 = type metadata accessor for AccessibilityTraits();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChecklistItemView(0);
  __chkstk_darwin(v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10001B4A4(&qword_1000B3D28, &qword_100079778);
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v28 - v13;
  v15 = *(a1 + *(type metadata accessor for ChecklistView(0) + 24) + 8);
  *v11 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v16 = v11 + v9[6];
  v34 = 0;
  v35 = 0;
  type metadata accessor for CGSize(0);
  v17 = v15;
  State.init(wrappedValue:)();
  v18 = v37;
  *v16 = v36;
  *(v16 + 2) = v18;
  v19 = (v11 + v9[5]);
  type metadata accessor for ChecklistViewModel(0);
  sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  *v19 = ObservedObject.init(wrappedValue:)();
  v19[1] = v20;
  v21 = v29;
  *(v11 + v9[7]) = v29;
  v22 = v21;
  static AccessibilityChildBehavior.combine.getter();
  v23 = sub_100041C74(&qword_1000B3D20, type metadata accessor for ChecklistItemView, &unk_10007A404);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v30);
  sub_100042060(v11);
  static AccessibilityTraits.isButton.getter();
  *&v36 = v9;
  *(&v36 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v28;
  View.accessibilityAddTraits(_:)();
  (*(v31 + 8))(v5, v33);
  (*(v12 + 8))(v14, v25);
  v26 = v24 + *(sub_10001B4A4(&qword_1000B3D08, &qword_100079738) + 36);
  *(v26 + 32) = 0;
  result = 0.0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  return result;
}

double sub_10004086C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Prominence();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  sub_1000235B4();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v40 = v11;
  v41 = v12;
  v15 = v14 & 1;
  v42 = v14 & 1;
  v43 = v16;
  (*(v8 + 104))(v10, enum case for Prominence.increased(_:), v7);
  View.headerProminence(_:)();
  (*(v8 + 8))(v10, v7);
  sub_100023608(v11, v13, v15);

  KeyPath = swift_getKeyPath();
  v18 = a3 + *(sub_10001B4A4(&qword_1000B3CE8, &qword_100079728) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a3 + *(sub_10001B4A4(&qword_1000B3CD8, &qword_100079720) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  v28 = a3 + *(sub_10001B4A4(&qword_1000B3CC8, &qword_100079718) + 36);
  *v28 = KeyPath;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a3 + *(sub_10001B4A4(&qword_1000B3CB8, &qword_100079710) + 36);
  *v37 = KeyPath;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = a3 + *(sub_10001B4A4(&qword_1000B3CA8, &qword_100079708) + 36);
  *(v38 + 32) = 0;
  result = 0.0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  return result;
}

uint64_t sub_100040B50@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100040C04()
{
  result = qword_1000B3B80;
  if (!qword_1000B3B80)
  {
    sub_10001E860(&qword_1000B3B50, qword_1000793B0);
    sub_100040CBC();
    sub_10001E8B8(&qword_1000B3BA0, &qword_1000B3B78, &qword_100079488, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B80);
  }

  return result;
}

unint64_t sub_100040CBC()
{
  result = qword_1000B3B88;
  if (!qword_1000B3B88)
  {
    sub_10001E860(&qword_1000B3B70, &qword_100079450);
    sub_10001E860(&qword_1000B3B48, &qword_1000793A8);
    type metadata accessor for InsetGroupedListStyle();
    sub_10001E860(&qword_1000B3B40, &qword_1000793A0);
    sub_10001E860(&qword_1000B3B38, &qword_100079398);
    sub_10001E8B8(&qword_1000B3B68, &qword_1000B3B38, &qword_100079398, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3B90, &qword_1000B3B98, &unk_100079490, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B88);
  }

  return result;
}

uint64_t sub_100040E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040F68()
{
  v1 = type metadata accessor for ChecklistView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004111C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChecklistView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_100041190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000411C0()
{
  result = qword_1000B3BE0;
  if (!qword_1000B3BE0)
  {
    sub_10001E860(&qword_1000B3BD8, &qword_1000795A8);
    sub_100041278();
    sub_10001E8B8(&qword_1000B3C48, &qword_1000B3C50, qword_1000795E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BE0);
  }

  return result;
}

unint64_t sub_100041278()
{
  result = qword_1000B3BE8;
  if (!qword_1000B3BE8)
  {
    sub_10001E860(&qword_1000B3BF0, &qword_1000795B0);
    sub_100041934(&qword_1000B3BF8, &qword_1000B3C00, &qword_1000795B8, sub_10004135C);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BE8);
  }

  return result;
}

unint64_t sub_1000413BC()
{
  result = qword_1000B3C28;
  if (!qword_1000B3C28)
  {
    sub_10001E860(&qword_1000B3C30, &qword_1000795D0);
    sub_10001E8B8(&qword_1000B3C38, &qword_1000B3C40, &unk_1000795D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C28);
  }

  return result;
}

uint64_t sub_100041484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B3BC8, &qword_100079598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000414F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v3];
}

unint64_t sub_100041564()
{
  result = qword_1000B3C68;
  if (!qword_1000B3C68)
  {
    sub_10001E860(&qword_1000B3C60, &qword_1000796E8);
    sub_10004161C();
    sub_10001E8B8(&qword_1000B3BA0, &qword_1000B3B78, &qword_100079488, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C68);
  }

  return result;
}

unint64_t sub_10004161C()
{
  result = qword_1000B3C70;
  if (!qword_1000B3C70)
  {
    sub_10001E860(&qword_1000B3C78, &qword_1000796F0);
    sub_1000416D4();
    sub_10001E8B8(&qword_1000B3B90, &qword_1000B3B98, &unk_100079490, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C70);
  }

  return result;
}

unint64_t sub_1000416D4()
{
  result = qword_1000B3C80;
  if (!qword_1000B3C80)
  {
    sub_10001E860(&qword_1000B3C88, &qword_1000796F8);
    sub_10004176C();
    sub_100041AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C80);
  }

  return result;
}

unint64_t sub_10004176C()
{
  result = qword_1000B3C90;
  if (!qword_1000B3C90)
  {
    sub_10001E860(&qword_1000B3C98, &qword_100079700);
    sub_1000417F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C90);
  }

  return result;
}

unint64_t sub_1000417F0()
{
  result = qword_1000B3CA0;
  if (!qword_1000B3CA0)
  {
    sub_10001E860(&qword_1000B3CA8, &qword_100079708);
    sub_100041934(&qword_1000B3CB0, &qword_1000B3CB8, &qword_100079710, sub_1000418D4);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3CA0);
  }

  return result;
}

uint64_t sub_100041934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000419B8()
{
  result = qword_1000B3CE0;
  if (!qword_1000B3CE0)
  {
    sub_10001E860(&qword_1000B3CE8, &qword_100079728);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3CF0, &qword_1000B3CF8, &qword_100079730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3CE0);
  }

  return result;
}

unint64_t sub_100041AA0()
{
  result = qword_1000B3D00;
  if (!qword_1000B3D00)
  {
    sub_10001E860(&qword_1000B3D08, &qword_100079738);
    sub_100041B58();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D00);
  }

  return result;
}

unint64_t sub_100041B58()
{
  result = qword_1000B3D10;
  if (!qword_1000B3D10)
  {
    sub_10001E860(&qword_1000B3D18, &qword_100079740);
    type metadata accessor for ChecklistItemView(255);
    sub_100041C74(&qword_1000B3D20, type metadata accessor for ChecklistItemView, &unk_10007A404);
    swift_getOpaqueTypeConformance2();
    sub_100041C74(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D10);
  }

  return result;
}

uint64_t sub_100041C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100041CBC()
{
  v1 = type metadata accessor for ChecklistView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041E88@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChecklistView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return sub_10004001C(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_100041F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10001B4A4(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_10001F808(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_100042060(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000420C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100042118()
{
  result = qword_1000B3D70;
  if (!qword_1000B3D70)
  {
    sub_10001E860(&qword_1000B3D68, &unk_100079870);
    sub_100039E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D70);
  }

  return result;
}

uint64_t sub_1000421A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100042240()
{
  result = qword_1000B3DA8;
  if (!qword_1000B3DA8)
  {
    sub_10001E860(&qword_1000B3BB0, qword_1000794A8);
    sub_10001E860(&qword_1000B3B50, qword_1000793B0);
    sub_100040C04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3DA8);
  }

  return result;
}

void sub_100042328()
{
  if (![v0 isSharedVariant])
  {
    return;
  }

  v1 = [v0 sharedTipAvailabilityView];
  if (!v1)
  {
    v2 = [v0 actionButton];
    if (v2)
    {
      v3 = v2;
      [v2 setEnabled:0];
    }

    [v0 deactivateBottomConstraints];
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v0 contentScrollView];
    [v5 addSubview:v4];

    v6 = [objc_allocWithZone(UIView) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_opt_self() opaqueSeparatorColor];
    [v6 setBackgroundColor:v7];

    [v4 addSubview:v6];
    v8 = [v6 heightAnchor];
    v9 = [v0 cellAppearance];
    [v9 displayScale];
    v11 = v10;

    v12 = [v8 constraintEqualToConstant:1.0 / v11];
    [v12 setActive:1];

    v13 = [v6 topAnchor];
    v14 = [v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setActive:1];
    v16 = [v6 leadingAnchor];
    v17 = [v4 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setActive:1];
    v70 = v6;
    v19 = [v6 trailingAnchor];
    v20 = [v4 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setActive:1];
    v22 = [v4 leadingAnchor];
    v23 = [v0 titleLabel];
    v24 = [v23 leadingAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [v4 trailingAnchor];
    v27 = [v0 titleLabel];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [v0 sharedTipAvailabilityTextView];
    if (v30)
    {
    }

    else
    {
      [v0 createAvailabilityTextView];
    }

    v31 = [v0 sharedTipAvailabilityTextView];
    p_ivar_base_size = (&ResourceBundleClass + 8);
    v33 = &selRef_setupSearchResultSelectedHandler;
    if (v31)
    {
      v34 = v31;
      [v4 addSubview:v34];
      v35 = [v34 leadingAnchor];
      v36 = [v4 leadingAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];

      [v37 setActive:1];
      v38 = [v34 trailingAnchor];

      v39 = [v4 trailingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];

      [v40 setActive:1];
      v41 = [v34 topAnchor];

      v42 = [v6 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:8.0];

      [v43 setActive:1];
      v44 = [v34 bottomAnchor];

      v45 = [v4 bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];

      v33 = &selRef_setupSearchResultSelectedHandler;
      [v46 setActive:1];

      p_ivar_base_size = &ResourceBundleClass.ivar_base_size;
    }

    v47 = p_ivar_base_size;
    v48 = [v0 footnoteTextView];
    v49 = v48;
    if (!v48)
    {
      v50 = [v0 tip];
      v51 = [v50 actions];

      if (!v51 || ((sub_10001AC14(0, &qword_1000B3F70, TPSURLAction_ptr), v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v51, v52 >> 62) ? (v53 = _CocoaArrayWrapper.endIndex.getter()) : (v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, !v53) || (v54 = [v0 actionButton]) == 0))
      {
        v55 = [v0 tip];
        v56 = [v55 containsLinks];

        if (v56)
        {
          v54 = [v0 contentTextView];
          if (!v54)
          {
LABEL_19:
            v71 = 0;
LABEL_23:
            v61 = [v4 bottomAnchor];
            v62 = [v0 contentScrollView];
            v63 = [v62 bottomAnchor];

            [v0 bottomPadding];
            v65 = [v61 *(v47 + 443)];

            [v0 setSharedTextViewBottomConstraint:v65];
            v66 = [v0 sharedTextViewBottomConstraint];
            if (v66)
            {
              LODWORD(v67) = 1144750080;
              v68 = v66;
              [v66 setPriority:v67];
            }

            v69 = [v0 sharedTextViewBottomConstraint];
            [v69 setActive:1];

            [v0 setSharedTipAvailabilityView:v4];
            [v0 setNeedsUpdateConstraints];

            v1 = v71;
            goto LABEL_26;
          }
        }

        else
        {
          v54 = [v0 contentLabel];
          if (!v54)
          {
            goto LABEL_19;
          }
        }
      }

      v49 = v54;
      v48 = 0;
    }

    v71 = v49;
    v57 = v48;
    v58 = [v4 v33[95]];
    v59 = [v71 bottomAnchor];
    v60 = [v58 *(v47 + 443)];

    [v60 setActive:1];
    goto LABEL_23;
  }

LABEL_26:
}

id sub_100042D64()
{
  v1 = [v0 sharedTipAvailabilityView];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];
    [v0 setSharedTipAvailabilityView:0];
  }

  v3 = [v0 sharedTextViewBottomConstraint];
  if (v3)
  {
    v4 = v3;
    [v3 setActive:0];
  }

  [v0 setSharedTextViewBottomConstraint:0];

  return [v0 setNeedsUpdateConstraints];
}

void sub_100042E70()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_allocWithZone(TPSTipContentTextView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setScrollEnabled:0];
  v41 = v4;
  [v41 _setInteractiveTextSelectionDisabled:1];
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v41 setBackgroundColor:v6];

  [v41 setEditable:0];
  v7 = objc_opt_self();
  v8 = [v7 footnoteFont];
  [v41 setFont:v8];

  [v41 setDataDetectorTypes:0];
  v9 = [v41 textContainer];
  [v9 setHeightTracksTextView:1];

  [v41 setDelegate:v0];
  [v41 setOpaque:1];

  [v41 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v10 = [v41 textContainer];

  [v10 setLineFragmentPadding:0.0];
  [v0 setSharedTipAvailabilityTextView:v41];
  v11 = [v0 appController];
  v12 = [v0 tip];
  v13 = [v11 hasLocalVariant:v12];

  if (v13)
  {
    v14 = [v7 footnoteBoldTextFont];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(NSTextAttachment) init];
      v17 = objc_opt_self();
      v18 = [v17 configurationWithFont:v15];
      v19 = [v5 linkColor];
      v20 = [v17 configurationWithHierarchicalColor:v19];

      v21 = [objc_opt_self() deviceSymbol];
      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v18];

      v23 = [v22 imageByApplyingSymbolConfiguration:v20];
      [v16 setImage:v23];

      sub_10001AC14(0, &unk_1000B3F60, NSMutableAttributedString_ptr);
      v40 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v24._countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      String.append(_:)(v24);

      sub_10001B4A4(&unk_1000B3F20, &qword_100079948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000798F0;
      *(inited + 32) = NSFontAttributeName;
      v26 = sub_10001AC14(0, &qword_1000B3F48, UIFont_ptr);
      *(inited + 40) = v15;
      *(inited + 64) = v26;
      *(inited + 72) = NSForegroundColorAttributeName;
      v27 = NSFontAttributeName;
      v28 = NSForegroundColorAttributeName;
      v29 = v15;
      v30 = [v5 linkColor];
      v31 = sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
      *(inited + 80) = v30;
      *(inited + 104) = v31;
      *(inited + 112) = NSLinkAttributeName;
      *(inited + 144) = &type metadata for String;
      *(inited + 120) = 35;
      *(inited + 128) = 0xE100000000000000;
      v32 = NSLinkAttributeName;
      sub_1000467C4(inited);
      swift_setDeallocating();
      sub_10001B4A4(&qword_1000B3F30, &qword_100079950);
      swift_arrayDestroy();
      v33 = objc_allocWithZone(NSAttributedString);
      v34 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100046B4C(&qword_1000B2C58, type metadata accessor for Key, &unk_100077B60);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v36 = [v33 initWithString:v34 attributes:isa];

      v37 = v40;
      [v40 appendAttributedString:v36];
      v38 = [v1 sharedTipAvailabilityTextView];
      if (v38)
      {
        v39 = v38;
        v37 = v40;
        [v39 setAttributedText:v37];
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [v0 processAvailabilityContent];
  }
}

void sub_1000436CC()
{
  v1 = [v0 contentLabelBottomConstraint];
  if (v1)
  {
    v2 = v1;
    [v1 setActive:0];
  }

  v3 = [v0 textViewBottomConstraint];
  if (v3)
  {
    v4 = v3;
    [v3 setActive:0];
  }

  v5 = [v0 actionButtonBottomConstraint];
  if (v5)
  {
    v6 = v5;
    [v5 setActive:0];
  }

  v7 = [v0 footnoteBottomConstraint];
  if (v7)
  {
    v8 = v7;
    [v7 setActive:0];
  }

  v9 = [v0 sharedTextViewBottomConstraint];
  if (v9)
  {
    v10 = v9;
    [v9 setActive:0];
  }
}

void sub_100043858()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AttributeContainer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v8 - 8);
  v86 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v10 - 8);
  v85 = &v73 - v11;
  v83 = type metadata accessor for AttributedString();
  v82 = *(v83 - 8);
  v12 = __chkstk_darwin(v83);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v88 = &v73 - v15;
  v16 = __chkstk_darwin(v14);
  v79 = &v73 - v17;
  __chkstk_darwin(v16);
  v81 = &v73 - v18;
  v19 = type metadata accessor for Locale();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  v21 = [v0 uniqueIdentifierForCurrentTip];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *&aBlock = v22;
  *(&aBlock + 1) = v24;

  v25._object = 0x800000010008C4A0;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);

  v26 = aBlock;
  type metadata accessor for AvailabilityContentParser();
  inited = swift_initStaticObject();
  v28 = inited;
  if (*(inited + 32) && (*(inited + 24) == v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    v29 = [v1 sharedTipAvailabilityTextView];
    if (v29)
    {
      v76 = v26;
      v74 = v4;
      v75 = v3;
      v77 = ObjectType;
      v78 = v29;
      [v78 setAttributedText:0];
      sub_100045194();
      sub_10001B4A4(&unk_1000B3F20, &qword_100079948);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_100077E80;
      *(v30 + 32) = NSForegroundColorAttributeName;
      v31 = objc_opt_self();
      v32 = NSForegroundColorAttributeName;
      v33 = [v31 tertiaryLabelColor];
      *(v30 + 64) = sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
      *(v30 + 40) = v33;
      v34 = sub_1000467C4(v30);
      swift_setDeallocating();
      sub_1000468EC(v30 + 32);
      v35 = [objc_opt_self() footnoteFont];
      if (v35)
      {
        v36 = v35;
        v98 = sub_10001AC14(0, &qword_1000B3F48, UIFont_ptr);
        *&aBlock = v36;
        sub_10003CD0C(&aBlock, v95);
        v37 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v34;
        sub_100045D9C(v95, NSFontAttributeName, isUniquelyReferenced_nonNull_native);

        v34 = v94;
      }

      v39 = [v1 tip];
      v40 = [v39 availabilityContent];

      if (v40)
      {
        v41 = v34;

        v42 = [v1 appController];
        v43 = [v1 tip];
        v44 = [v43 identifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = dispatch thunk of TPSUIAppController.availabilityMessageAttributedStringForIdentifier(_:)();

        if (v45)
        {

          swift_bridgeObjectRelease_n();
          v46 = v78;
          [v78 setAttributedText:v45];

          v47 = [v1 tip];
          v48 = [v47 identifier];

          if (!v48)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = String._bridgeToObjectiveC()();
          }

          [v46 setTipID:v48];
        }

        else
        {
          v51 = v78;

          v52 = [objc_allocWithZone(NSBlockOperation) init];
          v53 = v76;
          v28[3] = v76;
          v28[4] = *(&v26 + 1);

          sub_1000451E8();
          v54 = [objc_allocWithZone(TPSConstellationContentParser) init];
          v55 = [v1 traitCollection];
          [v54 setTraitCollection:v55];

          [v54 setDelegate:v1];
          v56 = v28[5];
          v28[5] = v54;
          v57 = v54;

          v58 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v59 = swift_allocObject();
          v59[2] = v58;
          v59[3] = v41;
          v59[4] = v53;
          v59[5] = *(&v26 + 1);
          v60 = v77;
          v59[6] = v51;
          v59[7] = v60;
          v99 = sub_1000469DC;
          v100 = v59;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v97 = sub_10002086C;
          v98 = &unk_1000A3E00;
          v61 = _Block_copy(&aBlock);
          v62 = v51;

          [v52 addExecutionBlock:v61];
          _Block_release(v61);
          v63 = [objc_opt_self() attributedStringOperationQueue];
          [v63 addOperation:v52];

          v64 = v28[2];
          v28[2] = v52;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v49 = type metadata accessor for URL();
        (*(*(v49 - 8) + 56))(v85, 1, 1, v49);
        (*(v87 + 104))(v89, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v90);
        (*(v92 + 104))(v91, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v93);
        AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
        v50 = v88;
        AttributedString.init(markdown:options:baseURL:)();
        v65 = v84;
        AttributeContainer.init(_:)();
        sub_100046B4C(&qword_1000B3F38, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
        v66 = v79;
        v67 = v83;
        AttributedStringProtocol.settingAttributes(_:)();
        (*(v74 + 8))(v65, v75);
        v68 = v82;
        v69 = *(v82 + 8);
        v69(v50, v67);
        v70 = v81;
        (*(v68 + 32))(v81, v66, v67);
        sub_10001AC14(0, &qword_1000B3F40, NSAttributedString_ptr);
        (*(v68 + 16))(v80, v70, v67);
        v71 = NSAttributedString.init(_:)();
        v72 = v78;
        [v78 setAttributedText:v71];

        v69(v70, v67);
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_100044554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = a6;
  v33 = a4;
  v34 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong tip];

    if (v17)
    {
      if (qword_1000B2BC8)
      {
        v31 = v9;
        v18 = qword_1000B2BC8;
        v19 = sub_100044934(v17, a2, &v37);

        if (v19)
        {
          sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
          v30 = static OS_dispatch_queue.main.getter();
          v20 = swift_allocObject();
          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v22 = swift_allocObject();
          v22[2] = v20;
          v22[3] = a3;
          v23 = v34;
          v22[4] = v33;
          v22[5] = v19;
          v24 = v32;
          v22[6] = v23;
          v22[7] = v24;
          aBlock[4] = sub_100046AB8;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002086C;
          aBlock[3] = &unk_1000A3E50;
          v25 = _Block_copy(aBlock);

          v26 = v19;
          v27 = v23;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100046B4C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
          sub_100046AE8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v28 = v30;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v25);
          (*(v31 + 8))(v11, v8);
          (*(v35 + 8))(v14, v12);
          v17 = v37;
        }

        else
        {
          v29 = v37;

          v17 = v29;
        }
      }
    }
  }
}

id sub_100044934(void *a1, uint64_t a2, id *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  result = [a1 availabilityContent];
  if (result)
  {
    v15 = result;
    v36 = a3;
    v16 = [a1 fullContentAssets];
    v17 = [v16 baseURL];

    if (v17)
    {
      v33 = v3;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 32))(v13, v11, v7);
      sub_100044ECC(a2);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [a1 identifier];
      if (!v18)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();
      }

      v34 = v7;
      v35 = v8;
      v20 = [a1 language];
      if (!v20)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();
      }

      URL._bridgeToObjectiveC()(v19);
      v22 = v21;
      v23 = [a1 assetFileInfoManager];
      v24 = v36;
      v37 = *v36;
      v25 = v37;
      LOBYTE(v30) = 1;
      v26 = isa;
      v27 = [v33 attributedStringForConstellationContent:v15 defaultAttributes:isa identifier:v18 language:v20 assetsBaseURL:v22 assetFileInfoManager:v23 supportsLinks:v30 error:&v37];

      (*(v35 + 8))(v13, v34);
      v28 = v37;
      v29 = v37;

      result = v27;
      *v24 = v28;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100044C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong tip];

    v10 = [v9 identifier];
    v11 = v10;
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12 && (v26 = a5, v13 = a4, v14 = v12, v15 = [v12 uniqueIdentifierForCurrentTip], v14, v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v18 = v17, v15, v19._countAndFlagsBits = v16, v19._object = v18, v20 = String.hasPrefix(_:)(v19), , v20))
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 appController];

        dispatch thunk of TPSUIAppController.updateAvailabilityMessageAttributedString(_:forIdentifier:)();
      }

      [v26 setAttributedText:v13];
      [v26 setTipID:v11];
    }

    else
    {
    }
  }

  v24 = qword_1000B2BB0;
  qword_1000B2BB0 = 0;

  qword_1000B2BB8 = 0;
  qword_1000B2BC0 = 0;
}

uint64_t sub_100044ECC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001B4A4(&qword_1000B3F58, &qword_100079968);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_100046A0C(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_10003CD0C((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_10003CD0C(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_10003CD0C(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
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
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_10003CD0C(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100045194()
{
  v1 = v0[2];
  if (v1)
  {
    [v1 cancel];
    v2 = v0[2];
  }

  else
  {
    v2 = 0;
  }

  v0[2] = 0;

  v0[3] = 0;
  v0[4] = 0;
}

void sub_1000451E8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    [v1 setDelegate:0];
    v1 = *(v0 + 40);
  }

  [v1 cancelAssetFetches];
  v2 = *(v0 + 40);
  *(v0 + 40) = 0;
}

uint64_t sub_10004523C()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_1000452A8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000453B4(a1, a2, v4);
}

unint64_t sub_100045320(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10004546C(a1, v2);
}

unint64_t sub_1000453B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10004546C(uint64_t a1, uint64_t a2)
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

Swift::Int sub_100045570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_100045814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10003CD0C(v22, v36);
      }

      else
      {
        sub_100046A0C(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_10003CD0C(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100045AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10003CD0C(v24, v34);
      }

      else
      {
        sub_100046A0C(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10003CD0C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100045D9C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100045320(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10004626C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100045814(v13, a3 & 1);
    v8 = sub_100045320(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10001F914(v19);

    return sub_10003CD0C(a1, v19);
  }

  else
  {
    sub_10004602C(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_100045EDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000452A8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000463EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100045AE4(v16, a4 & 1);
    v11 = sub_1000452A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10001F914(v22);

    return sub_10003CD0C(a1, v22);
  }

  else
  {
    sub_100046094(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10004602C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10003CD0C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100046094(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10003CD0C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_100046100()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10004626C()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100046A0C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10003CD0C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000463EC()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100046A0C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10003CD0C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100046590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000452A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100046694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F808(v4, &v13, &qword_1000B3F80, &qword_100079978);
      v5 = v13;
      v6 = v14;
      result = sub_1000452A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10003CD0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000467C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F808(v4, &v11, &qword_1000B3F30, &qword_100079950);
      v5 = v11;
      result = sub_100045320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003CD0C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1000468EC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3F30, &qword_100079950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046954()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004698C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1000469F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100046A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100046A68()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100046AE8()
{
  result = qword_1000B2D60;
  if (!qword_1000B2D60)
  {
    sub_10001E860(&qword_1000B2D58, &unk_100077D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2D60);
  }

  return result;
}

uint64_t sub_100046B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_100046BA8())()
{
  sub_100046F6C();
  EnvironmentValues.subscript.getter();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_100047008;
}

uint64_t _s7SwiftUI4ViewP4TipsE14onTipActionURL7performQry10Foundation0H0Vc_tF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_100046F44;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_10001E900(a1, a2);
  View.environment<A>(_:_:)();

  return sub_10001E970(v7, v6);
}

uint64_t sub_100046D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100046FC0;
    *(v4 + 24) = v3;
  }

  sub_10001E900(v1, v2);
  sub_100046F6C();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100046DDC(uint64_t *a1)
{
  sub_10001E860(&qword_1000B3F90, &qword_100079988);
  type metadata accessor for ModifiedContent();
  sub_100046E54();
  return swift_getWitnessTable();
}

unint64_t sub_100046E54()
{
  result = qword_1000B3F98;
  if (!qword_1000B3F98)
  {
    sub_10001E860(&qword_1000B3F90, &qword_100079988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3F98);
  }

  return result;
}

double sub_100046EB8@<D0>(_OWORD *a2@<X8>)
{
  sub_100046F6C();
  EnvironmentValues.subscript.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100046F0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100046F6C()
{
  result = qword_1000B3FA0;
  if (!qword_1000B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3FA0);
  }

  return result;
}

void sub_10004700C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v31 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TipsLog();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static TipsLog.default.getter();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    log(_:_:)();

LABEL_3:
    (*(v15 + 8))(v17, v14);
    goto LABEL_5;
  }

  if (!a1)
  {
    static TipsLog.default.getter();
    aBlock = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    aBlock = 0xD000000000000015;
    v35 = 0x800000010008C5A0;
    v29._countAndFlagsBits = a3;
    v29._object = v30;
    String.append(_:)(v29);
    log(_:_:)();

    goto LABEL_3;
  }

LABEL_5:
  sub_100047A7C();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = a1;
  *(v19 + 24) = v20;
  v38 = sub_100047AC8;
  v39 = v19;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10002086C;
  v37 = &unk_1000A3FB0;
  v21 = _Block_copy(&aBlock);
  v22 = a1;
  v23 = v20;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100047AD0();
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_100046AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v33 + 8))(v10, v8);
  (*(v11 + 8))(v13, v32);
  if (a1)
  {
    v24 = v22;
    v25 = [v24 identifier];
    if (!v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = String._bridgeToObjectiveC()();
    }

    v26 = objc_opt_self();
    v27 = [v24 correlationID];

    v28 = [v26 eventWithContentID:v25 collectionID:0 correlationID:v27 launchType:TPSAnalyticsLaunchTypeSharedTipModal];
    [v28 log];
  }
}

void sub_1000474D0(void *a1, void *a2)
{
  type metadata accessor for TPSSharedTipViewController();
  v4 = a1;
  v5 = sub_100023A6C(a1);
  v6 = [a2 appController];
  [v5 setAppController:v6];

  [v5 setDelegate:a2];
  v7 = v5;
  v8 = [a2 preferredUserInterfaceStyle];
  v9 = v8;
  if (a1)
  {
    if (sub_1000241D4(v8 == 2))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  [v7 setOverrideUserInterfaceStyle:v9];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = &v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  v12 = *&v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  v13 = *&v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed + 8];
  *v11 = sub_100047B60;
  v11[1] = v10;
  v14 = a2;
  sub_10001E970(v12, v13);
  v15 = [v14 tipsByCollectionViewController];
  [v15 setShouldHoldOffVideo:1];

  v16 = [v14 tipsByCollectionViewController];
  [v16 stopVideoForCurrentTip];

  v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v14;
  v22[4] = sub_100047BA8;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10002086C;
  v22[3] = &unk_1000A4028;
  v19 = _Block_copy(v22);
  v20 = v4;
  v21 = v14;

  [v21 presentViewController:v17 animated:1 completion:v19];
  _Block_release(v19);
}

void sub_100047764(int a1, id a2)
{
  [a2 updateShouldHoldOffVideo];
  v3 = [a2 tipsByCollectionViewController];
  [v3 continueVideoForCurrentTip];
}

void sub_1000477D8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a2 appController];
    [v4 logSharedTipDisplayed:v3 isEligible:0];
  }
}

void sub_100047858(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100047A18()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100047A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100047A7C()
{
  result = qword_1000B2D48;
  if (!qword_1000B2D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2D48);
  }

  return result;
}

unint64_t sub_100047AD0()
{
  result = qword_1000B2D50;
  if (!qword_1000B2D50)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2D50);
  }

  return result;
}

uint64_t sub_100047B28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047B68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047BC4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100047C44(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  static Published.subscript.setter();
  return sub_100024904();
}

id sub_100047D64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChecklistView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(type metadata accessor for ChecklistViewModel(0)) init];
  *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel] = v8;
  *v7 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v9 = *(v5 + 28);
  *(v7 + v9) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  swift_storeEnumTagMultiPayload();
  v10 = (v7 + *(v5 + 32));
  sub_1000489AC();
  v11 = v8;
  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v12;
  v13 = objc_allocWithZone(sub_10001B4A4(&qword_1000B3FE0, &unk_100079B60));
  *&v2[OBJC_IVAR___TPSChecklistViewController_hostingController] = UIHostingController.init(rootView:)();
  v14 = type metadata accessor for ChecklistViewController();
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

uint64_t sub_100047F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000480AC()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for ChecklistViewController();
  objc_msgSendSuper2(&v30, "loadView");
  v1 = OBJC_IVAR___TPSChecklistViewController_hostingController;
  v2 = [*&v0[OBJC_IVAR___TPSChecklistViewController_hostingController] view];
  if (v2)
  {
    v3 = v2;
    [v0 addChildViewController:*&v0[v1]];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100077BC0;
        v9 = [v3 leadingAnchor];
        v10 = [v0 view];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 leadingAnchor];

          v13 = [v9 constraintEqualToAnchor:v12];
          *(v8 + 32) = v13;
          v14 = [v3 topAnchor];
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v14 constraintEqualToAnchor:v17];
            *(v8 + 40) = v18;
            v19 = [v3 trailingAnchor];
            v20 = [v0 view];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 trailingAnchor];

              v23 = [v19 constraintEqualToAnchor:v22];
              *(v8 + 48) = v23;
              v24 = [v3 bottomAnchor];
              v25 = [v0 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 bottomAnchor];

                v28 = [v24 constraintEqualToAnchor:v27];
                *(v8 + 56) = v28;
                sub_100048828();
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v7 addConstraints:isa];

                [*&v0[v1] didMoveToParentViewController:v0];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1000485F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ChecklistViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", v3 & 1);
  v4 = *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 == 1)
  {
    *(v4 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = 0;
  }

  return result;
}

void sub_100048734()
{
  v1 = *(v0 + OBJC_IVAR___TPSChecklistViewController_hostingController);
}

id sub_100048774(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ChecklistViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100048828()
{
  result = qword_1000B2DB8;
  if (!qword_1000B2DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2DB8);
  }

  return result;
}

uint64_t sub_1000488BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_1000489AC()
{
  result = qword_1000B3B00;
  if (!qword_1000B3B00)
  {
    type metadata accessor for ChecklistViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B00);
  }

  return result;
}

id sub_100048A04(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChecklistView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel] = a1;
  *v7 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v8 = *(v5 + 28);
  *(v7 + v8) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  swift_storeEnumTagMultiPayload();
  v9 = (v7 + *(v5 + 32));
  type metadata accessor for ChecklistViewModel(0);
  sub_1000489AC();
  v10 = a1;
  *v9 = ObservedObject.init(wrappedValue:)();
  v9[1] = v11;
  v12 = objc_allocWithZone(sub_10001B4A4(&qword_1000B3FE0, &unk_100079B60));
  *&v2[OBJC_IVAR___TPSChecklistViewController_hostingController] = UIHostingController.init(rootView:)();
  v13 = type metadata accessor for ChecklistViewController();
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100048B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100048CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CollectionListItemView(uint64_t a1)
{
  result = qword_1000B4048;
  if (!qword_1000B4048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048E48(uint64_t a1)
{
  sub_100048F3C(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory);
  if (v1 <= 0x3F)
  {
    sub_100048F3C(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_10002076C(319);
      if (v3 <= 0x3F)
      {
        sub_1000203F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100048F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100048FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  __chkstk_darwin(v3 - 8);
  v44 = &v34 - v4;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B4098, &qword_100079BF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v35 = sub_10001B4A4(&qword_1000B40A0, &qword_100079BF8);
  v12 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = &v34 - v13;
  v39 = sub_10001B4A4(&qword_1000B40A8, &qword_100079C00);
  __chkstk_darwin(v39);
  v16 = &v34 - v15;
  v43 = sub_10001B4A4(&qword_1000B40B0, &qword_100079C08);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = &v34 - v17;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_10001B4A4(&qword_1000B40B8, qword_100079C10);
  sub_10004A1CC(v2, &v11[*(v18 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v19 = sub_10001E8B8(&qword_1000B40C0, &qword_1000B4098, &qword_100079BF0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v38);
  sub_10001F870(v11, &qword_1000B4098, &qword_100079BF0);
  v20 = v36;
  static AccessibilityTraits.isButton.getter();
  *&v46 = v9;
  *(&v46 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v35;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v20, v42);
  (*(v12 + 8))(v14, v21);
  v22 = (v34 + *(type metadata accessor for CollectionListItemView(0) + 28));
  v23 = *v22;
  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  v46 = v23;
  v47 = v25;
  v48 = v24;
  sub_100022F14();
  v26 = v44;
  AppEntity.fullyQualifiedIdentifier.getter();
  v27 = type metadata accessor for EntityIdentifier();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_10004AB88();
  v28 = v37;
  View.appEntityIdentifier(_:)();
  sub_10001F870(v26, &qword_1000B2F90, &qword_100077CF0);
  sub_10004ACFC(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v46;
  if (v46)
  {
    v30 = 0x4030000000000000;
  }

  else
  {
    v30 = 0;
  }

  v31 = v45;
  (*(v41 + 32))(v45, v28, v43);
  result = sub_10001B4A4(&qword_1000B40D0, &qword_100079C70);
  v33 = v31 + *(result + 36);
  *v33 = 0;
  *(v33 + 8) = v30;
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = v29 ^ 1;
  return result;
}

uint64_t sub_100049594()
{
  v1 = v0;
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = sub_10001B4A4(&qword_1000B41E0, &qword_100079DE8);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  type metadata accessor for TipsContentModel();
  v11 = static TipsContentModel.shared()();
  v12 = [*(v1 + *(type metadata accessor for CollectionListItemView(0) + 32)) tileAssets];
  v13 = type metadata accessor for ColorScheme();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = dispatch thunk of TipsContentModel.assetConfiguration(for:assets:updatedColorScheme:)();

  sub_10001F870(v10, &qword_1000B41E0, &qword_100079DE8);
  dispatch thunk of TipsContentModel.assetURL(for:type:)();
  if (v14)
  {
    v15 = [v14 cacheIdentifierForType:0];
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10001F808(v7, v5, &unk_1000B3380, &qword_100079940);
  RemoteImageView.init(identifier:url:isLoaded:placeholder:)();

  return sub_10001F870(v7, &unk_1000B3380, &qword_100079940);
}

uint64_t sub_100049828@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = Color.init(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100049870@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v62 = a3;
  v65 = sub_10001B4A4(&qword_1000B4180, &qword_100079CF8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v54 - v5;
  v6 = sub_10001B4A4(&qword_1000B4188, &unk_100079D00);
  v7 = __chkstk_darwin(v6 - 8);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v54 - v9;
  v10 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001B4A4(&qword_1000B4190, &qword_100079D10);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = sub_10001B4A4(&qword_1000B4198, &qword_100079D18);
  v22 = __chkstk_darwin(v21 - 8);
  v63 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v68 = &v54 - v24;
  v60 = v13;
  v59 = v14;
  if (a1)
  {
    v57 = Image.init(systemName:)();
    (*(v14 + 104))(v16, enum case for Font.TextStyle.footnote(_:), v13);
    v25 = type metadata accessor for Font.Design();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    static Font.system(_:design:weight:)();
    v58 = v3;
    sub_10001F870(v12, &qword_1000B3030, &qword_100077D50);
    (*(v14 + 8))(v16, v13);
    static Font.Weight.bold.getter();
    v56 = Font.weight(_:)();

    KeyPath = swift_getKeyPath();
    v54 = static Color.green.getter();
    v26 = swift_getKeyPath();
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v3 = &v20[*(v17 + 36)];
    v27 = *(sub_10001B4A4(&qword_1000B41C8, &qword_100079D98) + 28);
    v28 = a1;
    v29 = enum case for Image.Scale.large(_:);
    v30 = type metadata accessor for Image.Scale();
    v31 = v29;
    v32 = v68;
    (*(*(v30 - 8) + 104))(v3 + v27, v31, v30);
    *v3 = swift_getKeyPath();
    LOBYTE(v3) = v58;
    v33 = KeyPath;
    *v20 = v57;
    *(v20 + 1) = v33;
    *(v20 + 2) = v56;
    *(v20 + 3) = v26;
    *(v20 + 4) = v54;
    v34 = v76;
    *(v20 + 72) = v77;
    v35 = v75;
    *(v20 + 56) = v34;
    *(v20 + 40) = v35;
    sub_100023628(v20, v32, &qword_1000B4190, &qword_100079D10);
    v36 = v32;
    a1 = v28;
    (*(v18 + 56))(v36, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(&v54 - v24, 1, 1, v17);
  }

  if (v3)
  {
    v37 = Image.init(systemName:)();
    v38 = v59;
    v39 = v60;
    (*(v59 + 104))(v16, enum case for Font.TextStyle.footnote(_:), v60);
    v40 = type metadata accessor for Font.Design();
    (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    static Font.system(_:design:weight:)();
    sub_10001F870(v12, &qword_1000B3030, &qword_100077D50);
    (*(v38 + 8))(v16, v39);
    static Font.Weight.bold.getter();
    v41 = Font.weight(_:)();

    v42 = swift_getKeyPath();
    v43 = [objc_opt_self() tertiaryLabelColor];
    v44 = Color.init(_:)();
    v45 = swift_getKeyPath();
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v69 = v37;
    *(&v69 + 1) = v42;
    *&v70 = v41;
    *(&v70 + 1) = v45;
    *&v71 = v44;
    sub_10001B4A4(&qword_1000B41A8, &qword_100079D88);
    sub_10004B878();
    v46 = v61;
    View.accessibilityHidden(_:)();
    v78 = v72;
    v79 = v73;
    v80 = v74;
    v75 = v69;
    v76 = v70;
    v77 = v71;
    sub_10001F870(&v75, &qword_1000B41A8, &qword_100079D88);
    v47 = v66;
    sub_100023628(v46, v66, &qword_1000B4180, &qword_100079CF8);
    (*(v64 + 56))(v47, 0, 1, v65);
  }

  else
  {
    v47 = v66;
    (*(v64 + 56))(v66, 1, 1, v65);
    if ((a1 & 1) == 0)
    {
      LODWORD(v65) = 0;
      goto LABEL_9;
    }
  }

  LODWORD(v65) = 1;
LABEL_9:
  v48 = v68;
  v49 = v63;
  sub_10001F808(v68, v63, &qword_1000B4198, &qword_100079D18);
  v50 = v67;
  sub_10001F808(v47, v67, &qword_1000B4188, &unk_100079D00);
  v51 = v62;
  sub_10001F808(v49, v62, &qword_1000B4198, &qword_100079D18);
  v52 = sub_10001B4A4(&qword_1000B41A0, &qword_100079D20);
  sub_10001F808(v50, v51 + *(v52 + 48), &qword_1000B4188, &unk_100079D00);
  *(v51 + *(v52 + 64)) = v65;
  sub_10001F870(v47, &qword_1000B4188, &unk_100079D00);
  sub_10001F870(v48, &qword_1000B4198, &qword_100079D18);
  sub_10001F870(v50, &qword_1000B4188, &unk_100079D00);
  return sub_10001F870(v49, &qword_1000B4198, &qword_100079D18);
}

uint64_t sub_10004A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_10001B4A4(&qword_1000B40D8, &qword_100079C78);
  v4 = __chkstk_darwin(v3 - 8);
  v118 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v116 = (&v108 - v6);
  v122 = sub_10001B4A4(&qword_1000B40E0, &qword_100079C80);
  __chkstk_darwin(v122);
  v8 = &v108 - v7;
  v9 = sub_10001B4A4(&qword_1000B40E8, &qword_100079C88);
  __chkstk_darwin(v9 - 8);
  v120 = &v108 - v10;
  v11 = sub_10001B4A4(&qword_1000B40F0, &qword_100079C90);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v108 - v13;
  v15 = sub_10001B4A4(&qword_1000B40F8, &qword_100079C98);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v108 - v20;
  __chkstk_darwin(v19);
  v124 = &v108 - v22;
  v23 = sub_10001B4A4(&qword_1000B4100, &qword_100079CA0);
  __chkstk_darwin(v23 - 8);
  v25 = &v108 - v24;
  sub_10004AD6C(a1);
  v121 = a1;
  v115 = v25;
  sub_10004B108(a1, v25, v8);
  sub_10004B734(&qword_1000B4108, &qword_1000B40E0, &qword_100079C80, sub_10004B598);
  View.accessibilityHidden(_:)();
  sub_10001F870(v8, &qword_1000B40E0, &qword_100079C80);
  v26 = static Edge.Set.leading.getter();
  v27 = type metadata accessor for CollectionListItemView(0);
  v28 = *(a1 + *(v27 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100023628(v120, v14, &qword_1000B40E8, &qword_100079C88);
  v37 = &v14[*(v12 + 44)];
  *v37 = v26;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100023628(v14, v21, &qword_1000B40F0, &qword_100079C90);
  v38 = &v21[*(v16 + 44)];
  v39 = v150;
  *v38 = v149;
  *(v38 + 1) = v39;
  *(v38 + 2) = v151;
  sub_100023628(v21, v124, &qword_1000B40F8, &qword_100079C98);
  v40 = *(v121 + *(v27 + 32));
  v41 = [v28 titleFor:v40];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v135 = v42;
  v136 = v44;
  sub_1000235B4();
  v119 = Text.init<A>(_:)();
  v121 = v45;
  v122 = v46;
  LOBYTE(v42) = v47;
  LODWORD(v120) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v42 & 1;
  v57 = v28;
  v58 = v56;
  LOBYTE(v135) = v56;
  LOBYTE(v133[0]) = 0;
  if ([v28 shouldDisplayBadgeFor:v40])
  {
    v59 = [v28 tipCountFor:v40];
    v60 = objc_opt_self();
    v61 = [objc_allocWithZone(NSNumber) initWithInteger:v59];
    v62 = [v60 localizedStringFromNumber:v61 numberStyle:0];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v135 = v63;
    v136 = v65;
    v57 = v28;
    v66 = Text.init<A>(_:)();
    v68 = v67;
    v70 = v69;
    static Color.secondary.getter();
    v71 = Text.foregroundColor(_:)();
    v113 = v72;
    v114 = v71;
    v74 = v73;
    v112 = v75;

    sub_100023608(v66, v68, v70 & 1);

    LOBYTE(v66) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    LOBYTE(v135) = v74 & 1;
    LOBYTE(v133[0]) = 0;
    v84 = v74 & 1;
    v111 = v66;
  }

  else
  {
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v84 = 0;
    v77 = 0;
    v79 = 0;
    v81 = 0;
    v83 = 0;
  }

  v109 = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v85 = v135;
  v86 = [v57 shouldDisplayCheckmarkFor:v40];
  v87 = static VerticalAlignment.center.getter();
  v88 = v116;
  *v116 = v87;
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  v89 = sub_10001B4A4(&qword_1000B4168, &qword_100079CD8);
  sub_100049870(v86, v85, v88 + *(v89 + 44));
  v90 = v123;
  sub_10001F808(v124, v123, &qword_1000B40F8, &qword_100079C98);
  v91 = v118;
  sub_10001F808(v88, v118, &qword_1000B40D8, &qword_100079C78);
  v92 = v90;
  v93 = v117;
  sub_10001F808(v92, v117, &qword_1000B40F8, &qword_100079C98);
  v94 = sub_10001B4A4(&qword_1000B4170, &unk_100079CE0);
  v95 = (v93 + v94[12]);
  *&v125 = v119;
  *(&v125 + 1) = v121;
  v110 = v58;
  LOBYTE(v126) = v58;
  *(&v126 + 1) = *v148;
  DWORD1(v126) = *&v148[3];
  *(&v126 + 1) = v122;
  LOBYTE(v127) = v120;
  *(&v127 + 1) = *v147;
  DWORD1(v127) = *&v147[3];
  *(&v127 + 1) = v49;
  *&v128[0] = v51;
  *(&v128[0] + 1) = v53;
  *&v128[1] = v55;
  BYTE8(v128[1]) = 0;
  v96 = v125;
  v97 = v126;
  *(v95 + 57) = *(v128 + 9);
  v98 = v128[0];
  v95[2] = v127;
  v95[3] = v98;
  *v95 = v96;
  v95[1] = v97;
  v99 = v93 + v94[16];
  *v99 = 0;
  *(v99 + 8) = 1;
  v100 = (v93 + v94[20]);
  v102 = v113;
  v101 = v114;
  *&v129 = v114;
  *(&v129 + 1) = v113;
  *&v130 = v84;
  v104 = v111;
  v103 = v112;
  *(&v130 + 1) = v112;
  *&v131 = v111;
  *(&v131 + 1) = v77;
  *&v132[0] = v79;
  *(&v132[0] + 1) = v81;
  *&v132[1] = v83;
  BYTE8(v132[1]) = 0;
  v105 = v130;
  *v100 = v129;
  v100[1] = v105;
  v106 = v132[0];
  v100[2] = v131;
  v100[3] = v106;
  *(v100 + 57) = *(v132 + 9);
  sub_10001F808(v91, v93 + v94[24], &qword_1000B40D8, &qword_100079C78);
  sub_10001F808(&v125, &v135, &qword_1000B3A30, &unk_100079258);
  sub_10001F808(&v129, &v135, &qword_1000B4178, &qword_100079CF0);
  sub_10001F870(v88, &qword_1000B40D8, &qword_100079C78);
  sub_10001F870(v124, &qword_1000B40F8, &qword_100079C98);
  sub_10001F870(v91, &qword_1000B40D8, &qword_100079C78);
  v133[0] = v101;
  v133[1] = v102;
  v133[2] = v109;
  v133[3] = v103;
  v133[4] = v104;
  v133[5] = v77;
  v133[6] = v79;
  v133[7] = v81;
  v133[8] = v83;
  v134 = 0;
  sub_10001F870(v133, &qword_1000B4178, &qword_100079CF0);
  v135 = v119;
  v136 = v121;
  v137 = v110;
  *v138 = *v148;
  *&v138[3] = *&v148[3];
  v139 = v122;
  v140 = v120;
  *v141 = *v147;
  *&v141[3] = *&v147[3];
  v142 = v49;
  v143 = v51;
  v144 = v53;
  v145 = v55;
  v146 = 0;
  sub_10001F870(&v135, &qword_1000B3A30, &unk_100079258);
  sub_10001F870(v123, &qword_1000B40F8, &qword_100079C98);
  return sub_10001F870(v115, &qword_1000B4100, &qword_100079CA0);
}

unint64_t sub_10004AB88()
{
  result = qword_1000B40C8;
  if (!qword_1000B40C8)
  {
    sub_10001E860(&qword_1000B40A8, &qword_100079C00);
    sub_10001E860(&qword_1000B4098, &qword_100079BF0);
    sub_10001E8B8(&qword_1000B40C0, &qword_1000B4098, &qword_100079BF0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10004ACB4(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40C8);
  }

  return result;
}

uint64_t sub_10004ACB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004ACFC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B40A8, &qword_100079C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AD6C(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10001B4A4(&qword_1000B41D8, &unk_100079DD8);
  __chkstk_darwin(v5);
  v7 = (&v20 - v6);
  v8 = sub_10001B4A4(&qword_1000B4160, &qword_100079CC8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = [*(a1 + *(type metadata accessor for CollectionListItemView(0) + 32)) collectionAssets];
  if (v12 && (v13 = v12, v14 = [v12 symbolId], v13, v14))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Image.init(_internalSystemName:)();
    v16 = type metadata accessor for Font.Design();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = static Font.system(size:weight:design:)();
    sub_10001F870(v4, &qword_1000B3030, &qword_100077D50);
    KeyPath = swift_getKeyPath();
    *v7 = v15;
    v7[1] = KeyPath;
    v7[2] = v17;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8, &protocol conformance descriptor for RemoteImageView<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100049594();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8, &protocol conformance descriptor for RemoteImageView<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10004B108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v25 = a3;
  v24 = sub_10001B4A4(&qword_1000B4138, &qword_100079CB8);
  __chkstk_darwin(v24);
  v5 = &v21 - v4;
  v23 = sub_10001B4A4(&qword_1000B41D0, &qword_100079DD0);
  __chkstk_darwin(v23);
  v7 = &v21 - v6;
  v8 = sub_10001B4A4(&qword_1000B4128, &qword_100079CB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for CollectionListItemView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26 == 1)
  {
    v13 = [*(a1 + *(v12 + 32)) collectionAssets];
    v14 = [v13 gradient];

    __chkstk_darwin(v15);
    *(&v21 - 2) = v22;
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    sub_10001B4A4(&qword_1000B4100, &qword_100079CA0);
    sub_10004B734(&qword_1000B4140, &qword_1000B4100, &qword_100079CA0, sub_10004B7B0);
    TipGradientView.init(_:startPoint:endPoint:gradientView:)();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B650();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = [objc_opt_self() systemBlueColor];
    v18 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    sub_10001F808(v22, v5, &qword_1000B4100, &qword_100079CA0);
    v20 = &v5[*(v24 + 36)];
    *v20 = KeyPath;
    v20[1] = v18;
    sub_10001F808(v5, v7, &qword_1000B4138, &qword_100079CB8);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B650();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v5, &qword_1000B4138, &qword_100079CB8);
  }
}

unint64_t sub_10004B598()
{
  result = qword_1000B4110;
  if (!qword_1000B4110)
  {
    sub_10001E860(&qword_1000B4118, &qword_100079CA8);
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4110);
  }

  return result;
}

unint64_t sub_10004B650()
{
  result = qword_1000B4130;
  if (!qword_1000B4130)
  {
    sub_10001E860(&qword_1000B4138, &qword_100079CB8);
    sub_10004B734(&qword_1000B4140, &qword_1000B4100, &qword_100079CA0, sub_10004B7B0);
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4130);
  }

  return result;
}

uint64_t sub_10004B734(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004B7B0()
{
  result = qword_1000B4148;
  if (!qword_1000B4148)
  {
    sub_10001E860(&qword_1000B4150, &qword_100079CC0);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8, &protocol conformance descriptor for RemoteImageView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4148);
  }

  return result;
}

unint64_t sub_10004B878()
{
  result = qword_1000B41B0;
  if (!qword_1000B41B0)
  {
    sub_10001E860(&qword_1000B41A8, &qword_100079D88);
    sub_10004B904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41B0);
  }

  return result;
}

unint64_t sub_10004B904()
{
  result = qword_1000B41B8;
  if (!qword_1000B41B8)
  {
    sub_10001E860(&qword_1000B41C0, &qword_100079D90);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41B8);
  }

  return result;
}

uint64_t sub_10004BA04(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_10004BB04()
{
  result = qword_1000B41E8;
  if (!qword_1000B41E8)
  {
    sub_10001E860(&qword_1000B40D0, &qword_100079C70);
    sub_10001E860(&qword_1000B40A8, &qword_100079C00);
    sub_10004AB88();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41E8);
  }

  return result;
}

uint64_t sub_10004BC10()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v331 = *(v0 - 8);
  v332 = v0;
  __chkstk_darwin(v0);
  v330 = v291 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v329 = v291 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v327 = v291 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  v328 = v291 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for AppShortcutPhraseToken();
  v8 = *(v344 - 8);
  __chkstk_darwin(v344);
  v10 = v291 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001B4A4(&qword_1000B41F0, &qword_100079E48);
  v12 = __chkstk_darwin(v11);
  v326 = v291 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v325 = v291 - v15;
  v16 = __chkstk_darwin(v14);
  v321 = v291 - v17;
  v18 = __chkstk_darwin(v16);
  v319 = v291 - v19;
  v20 = __chkstk_darwin(v18);
  v318 = v291 - v21;
  v22 = __chkstk_darwin(v20);
  v317 = v291 - v23;
  v24 = __chkstk_darwin(v22);
  v316 = v291 - v25;
  v26 = __chkstk_darwin(v24);
  v315 = v291 - v27;
  v28 = __chkstk_darwin(v26);
  v314 = v291 - v29;
  v30 = __chkstk_darwin(v28);
  v313 = v291 - v31;
  v32 = __chkstk_darwin(v30);
  v312 = v291 - v33;
  v34 = __chkstk_darwin(v32);
  v311 = v291 - v35;
  v36 = __chkstk_darwin(v34);
  v310 = v291 - v37;
  v38 = __chkstk_darwin(v36);
  v309 = v291 - v39;
  v40 = __chkstk_darwin(v38);
  v308 = v291 - v41;
  v42 = __chkstk_darwin(v40);
  v307 = v291 - v43;
  v44 = __chkstk_darwin(v42);
  v306 = v291 - v45;
  v46 = __chkstk_darwin(v44);
  v305 = v291 - v47;
  v48 = __chkstk_darwin(v46);
  v304 = v291 - v49;
  v50 = __chkstk_darwin(v48);
  v303 = v291 - v51;
  v52 = __chkstk_darwin(v50);
  v302 = v291 - v53;
  v54 = __chkstk_darwin(v52);
  v301 = v291 - v55;
  v56 = __chkstk_darwin(v54);
  v300 = v291 - v57;
  v58 = __chkstk_darwin(v56);
  v299 = v291 - v59;
  v60 = __chkstk_darwin(v58);
  v298 = v291 - v61;
  v62 = __chkstk_darwin(v60);
  v297 = v291 - v63;
  v64 = __chkstk_darwin(v62);
  v296 = v291 - v65;
  v66 = __chkstk_darwin(v64);
  v295 = v291 - v67;
  v68 = __chkstk_darwin(v66);
  v294 = v291 - v69;
  v70 = __chkstk_darwin(v68);
  v293 = v291 - v71;
  v72 = __chkstk_darwin(v70);
  v292 = v291 - v73;
  v74 = __chkstk_darwin(v72);
  v291[1] = v291 - v75;
  __chkstk_darwin(v74);
  v324 = type metadata accessor for AppShortcut();
  v323 = *(v324 - 8);
  __chkstk_darwin(v324);
  v322 = v291 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_10005AB4C();
  sub_10001B4A4(&qword_1000B41F8, &qword_100079E50);
  v77 = *(sub_10001B4A4(&qword_1000B4200, &qword_100079E58) - 8);
  v337 = *(v77 + 72);
  v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v333 = 32 * v337;
  v79 = swift_allocObject();
  v320 = v79;
  *(v79 + 16) = xmmword_100079DF0;
  v80 = v79 + v78;
  v81 = sub_10004E77C();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v82._countAndFlagsBits = 0x206E65704FLL;
  v82._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v82);
  swift_getKeyPath();
  v338 = sub_10001B4A4(&qword_1000B4210, &qword_100079E88);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v83._countAndFlagsBits = 32;
  v83._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v83);
  v340 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v84 = *(v8 + 104);
  v342 = v8 + 104;
  v85 = v344;
  v84(v10);
  v341 = v84;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336 = *(v8 + 8);
  v336(v10, v85);
  v335 = v8 + 8;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v86);
  v339 = v80;
  v343 = v81;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v87._countAndFlagsBits = 0x206E65704FLL;
  v87._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v87);
  v334 = v10;
  v88 = v340;
  (v84)(v10, v340, v85);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v89 = v336;
  v336(v10, v85);
  v90._countAndFlagsBits = 0x2074756F626120;
  v90._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v90);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v91);
  v92 = v337;
  AppShortcutPhrase.init(stringInterpolation:)();
  v93 = 2 * v92;
  v94 = v92;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v95._countAndFlagsBits = 0x206E65704FLL;
  v95._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v95);
  v96 = v334;
  v97 = v344;
  v341(v334, v88, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v89(v96, v97);
  v98._countAndFlagsBits = 0x20726F6620;
  v98._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v98);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v99._countAndFlagsBits = 0;
  v99._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v99);
  AppShortcutPhrase.init(stringInterpolation:)();
  v292 = (v93 + v94);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v100._countAndFlagsBits = 0x20656D20776F6853;
  v100._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v100);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v101._countAndFlagsBits = 32;
  v101._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v101);
  v102 = v340;
  v103 = v344;
  v104 = v341;
  v341(v96, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v105 = v336;
  v336(v96, v103);
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v106);
  AppShortcutPhrase.init(stringInterpolation:)();
  v293 = (4 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v107._countAndFlagsBits = 0x20656D20776F6853;
  v107._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v107);
  v108 = v334;
  v109 = v344;
  v104(v334, v102, v344);
  v110 = v108;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v105(v108, v109);
  v111._countAndFlagsBits = 0x2074756F626120;
  v111._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v111);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v112);
  v113 = v293;
  AppShortcutPhrase.init(stringInterpolation:)();
  v294 = &v113[v337];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v114._countAndFlagsBits = 0x20656D20776F6853;
  v114._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v114);
  v115 = v110;
  v116 = v110;
  v117 = v344;
  v341(v116, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v105(v115, v117);
  v118._countAndFlagsBits = 0x20726F6620;
  v118._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v118);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v119);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v120._countAndFlagsBits = 0x20776F6853;
  v120._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v120);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v121._countAndFlagsBits = 32;
  v121._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v121);
  v122 = v115;
  v123 = v115;
  v124 = v340;
  v125 = v344;
  v126 = v341;
  v341(v123, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v127 = v125;
  v128 = v336;
  v336(v122, v127);
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v129);
  AppShortcutPhrase.init(stringInterpolation:)();
  v296 = (8 * v337);
  v295 = 7 * v337;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v130._countAndFlagsBits = 0x20776F6853;
  v130._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v130);
  v131 = v344;
  v126(v122, v124, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v132 = v122;
  v133 = v128;
  v128(v132, v131);
  v134._countAndFlagsBits = 0x2074756F626120;
  v134._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v134);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v135);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v136._countAndFlagsBits = 0x20776F6853;
  v136._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v136);
  v137 = v334;
  v138 = v344;
  v341(v334, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v133(v137, v138);
  v139._countAndFlagsBits = 0x20726F6620;
  v139._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v139);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v140);
  v141 = v296;
  AppShortcutPhrase.init(stringInterpolation:)();
  v142 = v337;
  v298 = &v141[v337];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v143._countAndFlagsBits = 0x20656D2065766947;
  v143._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v143);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v144._countAndFlagsBits = 32;
  v144._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v144);
  v145 = v334;
  v146 = v340;
  v147 = v341;
  v341(v334, v340, v138);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v148 = v336;
  v336(v145, v138);
  v149._countAndFlagsBits = 0;
  v149._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v149);
  v150 = v339;
  AppShortcutPhrase.init(stringInterpolation:)();
  v299 = (v150 + 10 * v142);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v151._countAndFlagsBits = 0x20656D2065766947;
  v151._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v151);
  v152 = v344;
  v147(v145, v146, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v148(v145, v152);
  v153._countAndFlagsBits = 0x2074756F626120;
  v153._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v153);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v154._countAndFlagsBits = 0;
  v154._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v154);
  AppShortcutPhrase.init(stringInterpolation:)();
  v155 = v339;
  v156 = v337;
  v300 = (v339 + 11 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v157._countAndFlagsBits = 0x20656D2065766947;
  v157._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v157);
  v158 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v158);
  v159._countAndFlagsBits = 0x20726F6620;
  v159._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v159);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v160._countAndFlagsBits = 0;
  v160._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v160);
  AppShortcutPhrase.init(stringInterpolation:)();
  v301 = (v155 + 12 * v156);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v161._countAndFlagsBits = 0x2065766947;
  v161._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v161);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v162._countAndFlagsBits = 32;
  v162._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v162);
  v163 = v340;
  v164 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v165 = v164;
  v166 = v336;
  v336(v145, v165);
  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v167);
  AppShortcutPhrase.init(stringInterpolation:)();
  v302 = (v339 + 13 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v168._countAndFlagsBits = 0x2065766947;
  v168._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v168);
  v169 = v163;
  v170 = v344;
  v171 = v341;
  v341(v145, v169, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v166(v145, v170);
  v172._countAndFlagsBits = 0x2074756F626120;
  v172._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v172);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v173._countAndFlagsBits = 0;
  v173._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v173);
  AppShortcutPhrase.init(stringInterpolation:)();
  v174 = v337;
  v303 = v339 + 14 * v337;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v175._countAndFlagsBits = 0x2065766947;
  v175._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v175);
  v176 = v344;
  v171(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v166(v145, v176);
  v177 = v166;
  v178._countAndFlagsBits = 0x20726F6620;
  v178._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v178);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v179._countAndFlagsBits = 0;
  v179._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v179);
  AppShortcutPhrase.init(stringInterpolation:)();
  v304 = (16 * v174);
  v303 = 15 * v174;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v180._countAndFlagsBits = 0x2077656956;
  v180._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v180);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v181._countAndFlagsBits = 32;
  v181._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v181);
  v182 = v340;
  v183 = v344;
  v184 = v341;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v177(v145, v183);
  v185._countAndFlagsBits = 0;
  v185._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v185);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v186._countAndFlagsBits = 0x2077656956;
  v186._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v186);
  v187 = v182;
  v188 = v344;
  v184(v145, v187, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v177(v145, v188);
  v189._countAndFlagsBits = 0x2074756F626120;
  v189._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v189);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v190._countAndFlagsBits = 0;
  v190._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v190);
  v191 = v304;
  AppShortcutPhrase.init(stringInterpolation:)();
  v192 = v337;
  v306 = &v191[v337];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v193._countAndFlagsBits = 0x2077656956;
  v193._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v193);
  v194 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v194);
  v195._countAndFlagsBits = 0x20726F6620;
  v195._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v195);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v196._countAndFlagsBits = 0;
  v196._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v196);
  v197 = v339;
  AppShortcutPhrase.init(stringInterpolation:)();
  v307 = (v197 + 18 * v192);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v198._countAndFlagsBits = 0x2079616C70736944;
  v198._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v198);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v199._countAndFlagsBits = 32;
  v199._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v199);
  v200 = v340;
  v201 = v344;
  v202 = v341;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v203 = v336;
  v336(v145, v201);
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v204);
  AppShortcutPhrase.init(stringInterpolation:)();
  v308 = (v339 + 19 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v205._countAndFlagsBits = 0x2079616C70736944;
  v205._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v205);
  v206 = v200;
  v207 = v200;
  v208 = v344;
  v202(v145, v206, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v203(v145, v208);
  v209._countAndFlagsBits = 0x2074756F626120;
  v209._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v209);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v210._countAndFlagsBits = 0;
  v210._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v210);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v211._countAndFlagsBits = 0x2079616C70736944;
  v211._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v211);
  v212 = v344;
  v202(v145, v207, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v212);
  v213._countAndFlagsBits = 0x20726F6620;
  v213._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v213);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v214._countAndFlagsBits = 0;
  v214._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v214);
  AppShortcutPhrase.init(stringInterpolation:)();
  v215 = v337;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v216._countAndFlagsBits = 0x206573776F7242;
  v216._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v216);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v217._countAndFlagsBits = 32;
  v217._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v217);
  v218 = v340;
  v219 = v344;
  v220 = v341;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v221 = v219;
  v222 = v336;
  v336(v145, v221);
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v223);
  AppShortcutPhrase.init(stringInterpolation:)();
  v311 = (v339 + 22 * v215);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v224._countAndFlagsBits = 0x206573776F7242;
  v224._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v224);
  v225 = v344;
  v220(v145, v218, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v222(v145, v225);
  v226 = v222;
  v227._countAndFlagsBits = 0x2074756F626120;
  v227._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v227);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v228._countAndFlagsBits = 0;
  v228._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v228);
  AppShortcutPhrase.init(stringInterpolation:)();
  v229 = v339;
  v230 = v337;
  v312 = (v339 + 23 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v231._countAndFlagsBits = 0x206573776F7242;
  v231._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v231);
  v232 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v226(v145, v232);
  v233._countAndFlagsBits = 0x20726F6620;
  v233._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v233);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v234._countAndFlagsBits = 0;
  v234._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v234);
  AppShortcutPhrase.init(stringInterpolation:)();
  v313 = (v229 + 24 * v230);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v235._countAndFlagsBits = 543515987;
  v235._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v235);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v236._countAndFlagsBits = 32;
  v236._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v236);
  v237 = v340;
  v238 = v344;
  v239 = v341;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v240 = v336;
  v336(v145, v238);
  v241._countAndFlagsBits = 0;
  v241._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v241);
  AppShortcutPhrase.init(stringInterpolation:)();
  v314 = (v339 + 25 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v242._countAndFlagsBits = 543515987;
  v242._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v242);
  v243 = v237;
  v244 = v344;
  v239(v145, v243, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v240(v145, v244);
  v245._countAndFlagsBits = 0x2074756F626120;
  v245._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v245);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v246._countAndFlagsBits = 0;
  v246._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v246);
  AppShortcutPhrase.init(stringInterpolation:)();
  v247 = v337;
  v248 = v339;
  v315 = (v339 + 26 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v249._countAndFlagsBits = 543515987;
  v249._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v249);
  v250 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v250);
  v251._countAndFlagsBits = 0x20726F6620;
  v251._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v251);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v252._countAndFlagsBits = 0;
  v252._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v252);
  AppShortcutPhrase.init(stringInterpolation:)();
  v316 = (v248 + 27 * v247);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v253._countAndFlagsBits = 0x6572612074616857;
  v253._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v253);
  v254 = v340;
  v255 = v344;
  v341(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v256 = v336;
  v336(v145, v255);
  v257._countAndFlagsBits = 0x20726F6620;
  v257._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v257);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v258._countAndFlagsBits = 0;
  v258._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v258);
  AppShortcutPhrase.init(stringInterpolation:)();
  v317 = (v339 + 28 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v259._object = 0xEE0020656D6F7320;
  v259._countAndFlagsBits = 0x6572612074616857;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v259);
  v260 = v254;
  v261 = v255;
  v262 = v255;
  v263 = v341;
  v341(v145, v260, v262);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v256(v145, v261);
  v264._countAndFlagsBits = 0x20726F6620;
  v264._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v264);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v265._countAndFlagsBits = 0;
  v265._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v265);
  AppShortcutPhrase.init(stringInterpolation:)();
  v266 = v339;
  v267 = v337;
  v318 = (v339 + 29 * v337);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v268._countAndFlagsBits = 0x656D206863616554;
  v268._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v268);
  v269 = v344;
  v263(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v269);
  v270._countAndFlagsBits = 0x20726F6620;
  v270._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v270);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v271._countAndFlagsBits = 0;
  v271._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v271);
  AppShortcutPhrase.init(stringInterpolation:)();
  v319 = (v266 + 30 * v267);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v272._countAndFlagsBits = 0x20656D206C6C6554;
  v272._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v272);
  v273 = v340;
  v274 = v344;
  v263(v145, v340, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v275 = v336;
  v336(v145, v274);
  v276._countAndFlagsBits = 0x2074756F626120;
  v276._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v276);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v277._countAndFlagsBits = 0;
  v277._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v277);
  AppShortcutPhrase.init(stringInterpolation:)();
  v337 = v333 - v337;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v278._countAndFlagsBits = 0;
  v278._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v278);
  v279 = v273;
  v280 = v344;
  v341(v145, v279, v344);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v275(v145, v280);
  v281._countAndFlagsBits = 0x2074756F626120;
  v281._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v281);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v282._countAndFlagsBits = 0;
  v282._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v282);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v283._countAndFlagsBits = 0;
  v283._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v283);
  v341(v145, v340, v280);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v336(v145, v280);
  v284._countAndFlagsBits = 0x20726F6620;
  v284._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v284);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v285._countAndFlagsBits = 0;
  v285._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v285);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v331 + 104))(v330, enum case for LocalizedStringResource.BundleDescription.main(_:), v332);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v286 = v322;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v287 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v323 + 8))(v286, v324);
  sub_10001B4A4(&qword_1000B4218, &unk_100079E90);
  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_100077E80;
  *(v288 + 32) = v287;
  v289 = static AppShortcutsBuilder.buildBlock(_:)();

  return v289;
}

unint64_t sub_10004E77C()
{
  result = qword_1000B4208;
  if (!qword_1000B4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4208);
  }

  return result;
}

uint64_t type metadata accessor for TipListViewModel(uint64_t a1)
{
  result = qword_1000B4270;
  if (!qword_1000B4270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004E820(uint64_t a1)
{
  sub_1000279AC(319, &qword_1000B3180, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_1000512C4(319);
    if (v2 <= 0x3F)
    {
      sub_100027958(319, &qword_1000B31A0, &qword_1000B31A8, &qword_100078BC0);
      if (v3 <= 0x3F)
      {
        sub_100027958(319, &qword_1000B42B0, &qword_1000B31F8, &qword_1000790F0);
        if (v4 <= 0x3F)
        {
          sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
          if (v5 <= 0x3F)
          {
            sub_1000279AC(319, &qword_1000B42B8, &type metadata for CGFloat);
            if (v6 <= 0x3F)
            {
              sub_100027958(319, &qword_1000B42C0, &unk_1000B42C8, &qword_100079F60);
              if (v7 <= 0x3F)
              {
                sub_1000279AC(319, &qword_1000B31C0, &type metadata for TipCollection);
                if (v8 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

double sub_10004EB10@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_10004EB90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  sub_10004F6A0();
}

id sub_10004EC80(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10004ED10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10004ED84(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  v7 = v5;
  static Published.subscript.setter();
  sub_10004EE18();
}

uint64_t sub_10004EE18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = [v5 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = [v5 title];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return static Published.subscript.setter();
}

id sub_10004EF9C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10004F02C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F0A0(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10004F114@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10004F194(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

Class sub_10004F208(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_10004F2CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F340(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10004F3D8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10004F458(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10004F4D0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10004F588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10004F5FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  sub_10004F6A0();
}

void sub_10004F6A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of SearchResultsViewModel.selectedIdentifier.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    v0 = [type metadata accessor for TPSUIAppController() sharedInstance];
    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 tipForIdentifier:v1];

    v3 = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    sub_100050A7C(v2, v3 & 1);
  }
}

double sub_10004F834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter();

  return v7;
}

double sub_10004F8C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10004F944(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return static Published.subscript.setter();
}

double sub_10004F9B8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10004FA38(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10004FAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004FB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

_BYTE *sub_10004FC34(_BYTE *result, uint64_t a2, uint64_t a3)
{
  result[qword_1000B6ED8] = a3;
  v3 = *&result[qword_1000B6EE0];
  if (v3)
  {
    v5 = *&result[qword_1000B6EE0 + 8];
    v6 = result;
    sub_10001E900(v3, v5);
    v3(a3);

    return sub_10001E970(v3, v5);
  }

  return result;
}

id sub_10004FCD0(uint64_t a1)
{
  if (*(a1 + qword_1000B6EE0))
  {
    v1 = *(a1 + qword_1000B6EE0 + 8);
    v4[4] = *(a1 + qword_1000B6EE0);
    v4[5] = v1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10004FD98;
    v4[3] = &unk_1000A4098;
    v2 = _Block_copy(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10004FD98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10004FDEC(char *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000514FC;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[qword_1000B6EE0];
  v8 = *&a1[qword_1000B6EE0];
  v9 = *&a1[qword_1000B6EE0 + 8];
  *v7 = v6;
  *(v7 + 1) = v4;
  v10 = a1;
  sub_10001E970(v8, v9);
}

void sub_10004FEAC(char *a1, double a2, double a3)
{
  v3 = &a1[qword_1000B6EE8];
  *v3 = a2;
  v3[1] = a3;
  v4 = a1;
  sub_10004FF04();
}

uint64_t sub_10004FF04()
{
  v1 = v0[qword_1000B6ED8];
  if ((((*&v0[qword_1000B6EE8 + 8] >= -5.0) ^ v1) & 1) == 0)
  {
    v2 = v1 ^ 1u;
    v0[qword_1000B6ED8] = v1 ^ 1;
    v3 = *&v0[qword_1000B6EE0];
    if (v3)
    {
      v4 = *&v0[qword_1000B6EE0 + 8];

      v3(v2);
      sub_10001E970(v3, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  return static Published.subscript.setter();
}

BOOL sub_100050000(void *a1)
{
  v1 = a1;
  v2 = sub_100050034();

  return v2;
}

BOOL sub_100050034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v6 identifier];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

BOOL sub_1000500FC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

id sub_1000501BC()
{
  v1 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  v60 = *(v1 - 8);
  v61 = v1;
  __chkstk_darwin(v1);
  v59 = &v43 - v2;
  v3 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v43 - v4;
  v5 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v43 - v6;
  v7 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v43 - v8;
  v49 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v43 - v9;
  v44 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v43 - v10;
  v12 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v47 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = qword_1000B4220;
  LOBYTE(v63) = 0;
  Published.init(initialValue:)();
  v21 = *(v17 + 32);
  v48 = v17 + 32;
  v21(&v0[v20], v19, v16);
  v22 = qword_1000B4228;
  v63 = [objc_allocWithZone(TPSCollection) init];
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v0[v22], v15, v12);
  v23 = qword_1000B4230;
  v63 = 0;
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  Published.init(initialValue:)();
  (*(v43 + 32))(&v0[v23], v11, v44);
  v24 = qword_1000B4238;
  v63 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
  v25 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(&v0[v24], v25, v49);
  v26 = qword_1000B4240;
  v63 = 0;
  v64 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  v27 = v50;
  Published.init(initialValue:)();
  (*(v51 + 32))(&v0[v26], v27, v52);
  v28 = qword_1000B4248;
  v63 = 0;
  v29 = v53;
  Published.init(initialValue:)();
  v30 = v55;
  v31 = *(v54 + 32);
  v31(&v0[v28], v29, v55);
  v32 = qword_1000B4250;
  v63 = 0;
  Published.init(initialValue:)();
  v31(&v0[v32], v29, v30);
  v33 = qword_1000B4258;
  v63 = 0;
  LOBYTE(v64) = 1;
  sub_10001B4A4(&unk_1000B42C8, &qword_100079F60);
  v34 = v56;
  Published.init(initialValue:)();
  (*(v57 + 32))(&v0[v33], v34, v58);
  v35 = qword_1000B4260;
  LOBYTE(v63) = 0;
  Published.init(initialValue:)();
  v21(&v0[v35], v19, v47);
  v36 = qword_1000B4268;
  v63 = *aEmpty;
  v64 = unk_1000B4C18;
  v65 = qword_1000B4C20;
  v66 = unk_1000B4C28;

  v37 = v59;
  Published.init(initialValue:)();
  (*(v60 + 32))(&v0[v36], v37, v61);
  v0[qword_1000B6ED0] = 0;
  v0[qword_1000B6ED8] = 0;
  v38 = &v0[qword_1000B6EE0];
  *v38 = 0;
  v38[1] = 0;
  v39 = &v0[qword_1000B6EE8];
  v40 = type metadata accessor for TipListViewModel(0);
  *v39 = 0;
  v39[1] = 0;
  v62.receiver = v0;
  v62.super_class = v40;
  v41 = objc_msgSendSuper2(&v62, "init");
  dispatch thunk of SearchResultsViewModel.supportsHighlight.setter();

  return v41;
}

void sub_1000509CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = a1;
  v5 = dispatch thunk of SearchResultsViewModel.tipActionHandler.getter();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v5(v4);

    sub_10001E970(v7, v8);
  }

  else
  {
  }
}

void sub_100050A7C(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12)
    {
      if (a1)
      {
        sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
        v10 = a1;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          return;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a1)
  {
    v6 = dispatch thunk of SearchResultsViewModel.tipActionHandler.getter();
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v6(a1);

      sub_10001E970(v8, v9);
    }

    else
    {
    }
  }
}

void sub_100050C2C(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_100050A7C(a3, a4);
}

uint64_t sub_100050CA0()
{
  v1 = qword_1000B4220;
  v2 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = qword_1000B4228;
  v5 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = qword_1000B4230;
  v7 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1000B4238;
  v9 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1000B4240;
  v11 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = qword_1000B4248;
  v13 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + qword_1000B4250, v13);
  v15 = qword_1000B4258;
  v16 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v3(v0 + qword_1000B4260, v2);
  v17 = qword_1000B4268;
  v18 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + qword_1000B6EE0);
  v20 = *(v0 + qword_1000B6EE0 + 8);

  return sub_10001E970(v19, v20);
}

id sub_100050F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipListViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100050FCC(uint64_t a1)
{
  v2 = qword_1000B4220;
  v3 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v5 = qword_1000B4228;
  v6 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = qword_1000B4230;
  v8 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = qword_1000B4238;
  v10 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  (*(*(v10 - 8) + 8))(a1 + v9, v10);
  v11 = qword_1000B4240;
  v12 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  (*(*(v12 - 8) + 8))(a1 + v11, v12);
  v13 = qword_1000B4248;
  v14 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v15 = *(*(v14 - 8) + 8);
  v15(a1 + v13, v14);
  v15(a1 + qword_1000B4250, v14);
  v16 = qword_1000B4258;
  v17 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  (*(*(v17 - 8) + 8))(a1 + v16, v17);
  v4(a1 + qword_1000B4260, v3);
  v18 = qword_1000B4268;
  v19 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  (*(*(v19 - 8) + 8))(a1 + v18, v19);
  v20 = *(a1 + qword_1000B6EE0);
  v21 = *(a1 + qword_1000B6EE0 + 8);

  return sub_10001E970(v20, v21);
}

void sub_1000512C4(uint64_t a1)
{
  if (!qword_1000B42A8)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B42A8);
    }
  }
}

double sub_10005133C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000513C8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000514C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100051514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000515A4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100051624(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  v4 = v2;
  static Published.subscript.setter();
  return sub_10004EE18();
}

double sub_1000516A4@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100051724(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10005184C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TipListView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TipListViewController_viewModel;
  v8 = [objc_allocWithZone(type metadata accessor for TipListViewModel(0)) init];
  *&v2[v7] = v8;
  v9 = v8;
  sub_100032D64(v6);
  v10 = objc_allocWithZone(sub_10001B4A4(&qword_1000B4340, &unk_10007A3E0));
  *&v2[OBJC_IVAR___TipListViewController_hostingController] = UIHostingController.init(rootView:)();
  v11 = type metadata accessor for TipListViewController();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1000519D4()
{
  v1 = *(v0 + OBJC_IVAR___TipListViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  return v4;
}

void sub_100051B04(uint64_t a1)
{
  v32.receiver = v1;
  v32.super_class = type metadata accessor for TipListViewController();
  objc_msgSendSuper2(&v32, "loadView");
  v2 = *&v1[OBJC_IVAR___TipListViewController_hostingController];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v1 addChildViewController:v2];
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview:v4];

      v7 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor:v7];

      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_100077BC0;
        v11 = [v4 leadingAnchor];
        v12 = [v1 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 leadingAnchor];

          v15 = [v11 constraintEqualToAnchor:v14];
          *(v10 + 32) = v15;
          v16 = [v4 topAnchor];
          v17 = [v1 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 topAnchor];

            v20 = [v16 constraintEqualToAnchor:v19];
            *(v10 + 40) = v20;
            v21 = [v4 trailingAnchor];
            v22 = [v1 view];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 trailingAnchor];

              v25 = [v21 constraintEqualToAnchor:v24];
              *(v10 + 48) = v25;
              v26 = [v4 bottomAnchor];
              v27 = [v1 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 bottomAnchor];

                v30 = [v26 constraintEqualToAnchor:v29];
                *(v10 + 56) = v30;
                sub_10001AC14(0, &qword_1000B2DB8, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v9 addConstraints:isa];

                [v2 didMoveToParentViewController:v1];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_100051F94(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for TipListViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 safeAreaInsets];
  v5 = v4;

  v6 = round(v5);
  v7 = OBJC_IVAR___TipListViewController_viewModel;
  v8 = *&v1[OBJC_IVAR___TipListViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  static Published.subscript.getter();

  if (v6 != v22)
  {
    v10 = *&v1[v7];
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v6;
    v11 = v10;
    static Published.subscript.setter();
  }

  v12 = *&v1[v7];
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static Published.subscript.getter();

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;

  if (v22 == v17)
  {
    v18 = v23;
  }

  else
  {
    v18 = 1;
  }

  if (v18 == 1)
  {
    v19 = *&v1[v7];
    v20 = [v1 view];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
      return;
    }

LABEL_14:
    __break(1u);
  }
}

BOOL sub_100052254()
{
  if (![objc_opt_self() isPhoneUI])
  {
    return 0;
  }

  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [v3 tintColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() whiteColor];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    v6 = v4;
LABEL_12:

    return 0;
  }

  sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
  v7 = static NSObject.== infix(_:_:)();

  return (v7 & 1) != 0;
}

void sub_1000523A8()
{
  v1 = *(v0 + OBJC_IVAR___TipListViewController_hostingController);
}

id sub_1000523E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TipListViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005249C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100052528(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1000525AC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TipListView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TipListViewController_viewModel;
  v8 = [objc_allocWithZone(type metadata accessor for TipListViewModel(0)) init];
  *&v2[v7] = v8;
  if (a1)
  {
    *&v2[v7] = a1;
    v9 = a1;

    v8 = *&v2[v7];
  }

  v10 = v8;
  sub_100032D64(v6);
  v11 = objc_allocWithZone(sub_10001B4A4(&qword_1000B4340, &unk_10007A3E0));
  *&v2[OBJC_IVAR___TipListViewController_hostingController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for TipListViewController();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
}

void sub_100052738(uint64_t a1)
{
  sub_100056DA0(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003D47C(319);
    if (v2 <= 0x3F)
    {
      sub_100056DA0(319, &unk_1000B43B0, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100024368();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_100052868@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001B4A4(&qword_1000B43E8, &qword_10007A458);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v26 - v6;
  sub_100052A10(v2, v26 - v6);
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v7[*(sub_10001B4A4(&qword_1000B43F0, &qword_10007A460) + 36)];
  *v16 = v2;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = &v7[*(v5 + 44)];
  *v17 = v2;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000552DC(v7, a1);
  v22 = a1 + *(sub_10001B4A4(&qword_1000B43F8, &qword_10007A468) + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_100052A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_10001B4A4(&qword_1000B4400, &qword_10007A470);
  __chkstk_darwin(v26);
  v4 = &v24 - v3;
  v24 = sub_10001B4A4(&qword_1000B4408, &qword_10007A478);
  __chkstk_darwin(v24);
  v6 = &v24 - v5;
  v25 = sub_10001B4A4(&qword_1000B4410, &qword_10007A480);
  __chkstk_darwin(v25);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ContentSizeCategory();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_1000561F8(&qword_1000B3D30, &qword_1000797B0, &type metadata accessor for ContentSizeCategory, &v24 - v14);
  (*(v10 + 104))(v13, enum case for ContentSizeCategory.accessibilityMedium(_:), v9);
  v16 = sub_1000563F8(v15, v13);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    *v8 = static VerticalAlignment.top.getter();
    *(v8 + 1) = 0x4026000000000000;
    v8[16] = 0;
    v18 = sub_10001B4A4(&qword_1000B4430, &qword_10007A490);
    sub_100052E58(a1, &v8[*(v18 + 44)]);
    v19 = &qword_1000B4410;
    v20 = &qword_10007A480;
    sub_10001F808(v8, v6, &qword_1000B4410, &qword_10007A480);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    v21 = v8;
  }

  else
  {
    *v4 = static HorizontalAlignment.leading.getter();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    v22 = sub_10001B4A4(&qword_1000B4418, &qword_10007A488);
    sub_100053BE0(a1, &v4[*(v22 + 44)]);
    v19 = &qword_1000B4400;
    v20 = &qword_10007A470;
    sub_10001F808(v4, v6, &qword_1000B4400, &qword_10007A470);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    v21 = v4;
  }

  return sub_10001F870(v21, v19, v20);
}

uint64_t sub_100052E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for ChecklistItemView(0);
  v4 = v3 - 8;
  v60 = *(v3 - 8);
  v59 = *(v60 + 64);
  __chkstk_darwin(v3);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10001B4A4(&qword_1000B4438, &qword_10007A498);
  __chkstk_darwin(v63);
  v55 = (&v54 - v6);
  v64 = sub_10001B4A4(&qword_1000B4440, &qword_10007A4A0);
  v62 = *(v64 - 8);
  v7 = __chkstk_darwin(v64);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v54 - v9;
  v10 = sub_10001B4A4(&qword_1000B4448, &qword_10007A4A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_10001B4A4(&qword_1000B4450, &qword_10007A4B0);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v56 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v54 - v18;
  __chkstk_darwin(v17);
  v66 = &v54 - v20;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = &v12[*(sub_10001B4A4(&qword_1000B4458, &qword_10007A4B8) + 44)];
  v22 = *(v4 + 28);
  v23 = a1;
  v54 = a1;
  v24 = *(a1 + v22 + 8);
  v25 = *(v23 + *(v4 + 36));
  *v21 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for ChecklistItemIcon(0);
  v27 = (v21 + *(v26 + 20));
  type metadata accessor for ChecklistViewModel(0);
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  v28 = v24;
  v29 = v25;
  *v27 = ObservedObject.init(wrappedValue:)();
  v27[1] = v30;
  *(v21 + *(v26 + 24)) = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v12, v19, &qword_1000B4448, &qword_10007A4A8);
  v31 = &v19[*(v14 + 44)];
  v32 = v72;
  *(v31 + 4) = v71;
  *(v31 + 5) = v32;
  *(v31 + 6) = v73;
  v33 = v68;
  *v31 = v67;
  *(v31 + 1) = v33;
  v34 = v70;
  *(v31 + 2) = v69;
  *(v31 + 3) = v34;
  v35 = v19;
  v36 = v66;
  sub_100023628(v35, v66, &qword_1000B4450, &qword_10007A4B0);
  v37 = static HorizontalAlignment.leading.getter();
  v38 = v55;
  *v55 = v37;
  *(v38 + 8) = 0x4000000000000000;
  *(v38 + 16) = 0;
  v39 = sub_10001B4A4(&qword_1000B4468, &unk_10007A4F8);
  v40 = v54;
  sub_1000534F4(v54, (v38 + *(v39 + 44)));
  v41 = v58;
  sub_100056918(v40, v58, type metadata accessor for ChecklistItemView);
  v42 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v43 = swift_allocObject();
  sub_10005685C(v41, v43 + v42);
  sub_10001E8B8(&qword_1000B4470, &qword_1000B4438, &qword_10007A498, &protocol conformance descriptor for VStack<A>);
  v44 = v57;
  View.readSize(onChange:)();

  sub_10001F870(v38, &qword_1000B4438, &qword_10007A498);
  v45 = v56;
  sub_10001F808(v36, v56, &qword_1000B4450, &qword_10007A4B0);
  v46 = v61;
  v47 = v62;
  v48 = *(v62 + 16);
  v49 = v64;
  v48(v61, v44, v64);
  v50 = v65;
  sub_10001F808(v45, v65, &qword_1000B4450, &qword_10007A4B0);
  v51 = sub_10001B4A4(&qword_1000B4478, &qword_10007A508);
  v48((v50 + *(v51 + 48)), v46, v49);
  v52 = *(v47 + 8);
  v52(v44, v49);
  sub_10001F870(v66, &qword_1000B4450, &qword_10007A4B0);
  v52(v46, v49);
  return sub_10001F870(v45, &qword_1000B4450, &qword_10007A4B0);
}

uint64_t sub_1000534F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ChecklistItemBody(0);
  v5 = (v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (v33 - v8);
  v10 = sub_10001B4A4(&qword_1000B4488, &qword_10007A518);
  v11 = __chkstk_darwin(v10 - 8);
  v35 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v33 - v13;
  v38 = static VerticalAlignment.firstTextLineCenter.getter();
  v40 = 0;
  sub_1000539C0(a1, &v51);
  v44 = v52[2];
  v45 = v52[3];
  v46[0] = v52[4];
  *(v46 + 13) = *(&v52[4] + 13);
  v41 = v51;
  v42 = v52[0];
  v43 = v52[1];
  v47[0] = v51;
  v47[1] = v52[0];
  v47[2] = v52[1];
  v47[3] = v52[2];
  v47[4] = v52[3];
  v48[0] = v52[4];
  *(v48 + 13) = *(&v52[4] + 13);
  sub_10001F808(&v41, &v49, &qword_1000B4490, &qword_10007A520);
  sub_10001F870(v47, &qword_1000B4490, &qword_10007A520);
  *(&v39[3] + 7) = v44;
  *(&v39[4] + 7) = v45;
  *(&v39[5] + 7) = v46[0];
  *(v39 + 7) = v41;
  *(&v39[1] + 7) = v42;
  *(&v39[6] + 4) = *(v46 + 13);
  *(&v39[2] + 7) = v43;
  v37 = v40;
  v15 = v14;
  v34 = v14;
  sub_1000548CC(a1);
  v16 = type metadata accessor for ChecklistItemView(0);
  v17 = *(a1 + v16[7]);
  v18 = *(a1 + v16[5] + 8);
  v19 = (a1 + v16[6]);
  v20 = *(v19 + 2);
  v51 = *v19;
  *&v52[0] = v20;
  v33[1] = v18;
  v21 = v17;
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  State.wrappedValue.getter();
  v22 = v49;
  *v9 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v23 = (v9 + v5[9]);
  v24 = (v9 + v5[7]);
  type metadata accessor for ChecklistViewModel(0);
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  *v24 = ObservedObject.init(wrappedValue:)();
  v24[1] = v25;
  *(v9 + v5[8]) = v21;
  *v23 = v22;
  v26 = v35;
  sub_10001F808(v15, v35, &qword_1000B4488, &qword_10007A518);
  v27 = v36;
  sub_100056918(v9, v36, type metadata accessor for ChecklistItemBody);
  *&v49 = v38;
  *(&v49 + 1) = 0x4010000000000000;
  LOBYTE(v50[0]) = v37;
  *(&v50[1] + 1) = v39[1];
  *(v50 + 1) = v39[0];
  *(&v50[5] + 13) = *(&v39[5] + 12);
  *(&v50[5] + 1) = v39[5];
  *(&v50[4] + 1) = v39[4];
  *(&v50[3] + 1) = v39[3];
  *(&v50[2] + 1) = v39[2];
  v28 = v50[2];
  a2[2] = v50[1];
  a2[3] = v28;
  *(a2 + 109) = *(&v50[5] + 13);
  v29 = v50[5];
  a2[5] = v50[4];
  a2[6] = v29;
  a2[4] = v50[3];
  v30 = v50[0];
  *a2 = v49;
  a2[1] = v30;
  v31 = sub_10001B4A4(&qword_1000B4498, &qword_10007A528);
  sub_10001F808(v26, a2 + *(v31 + 48), &qword_1000B4488, &qword_10007A518);
  sub_100056918(v27, a2 + *(v31 + 64), type metadata accessor for ChecklistItemBody);
  sub_10001F808(&v49, &v51, &qword_1000B44A0, &qword_10007A530);
  sub_100056980(v9);
  sub_10001F870(v34, &qword_1000B4488, &qword_10007A518);
  sub_100056980(v27);
  sub_10001F870(v26, &qword_1000B4488, &qword_10007A518);
  *(&v52[3] + 1) = v39[3];
  *(&v52[4] + 1) = v39[4];
  *(&v52[5] + 1) = v39[5];
  *(&v52[5] + 13) = *(&v39[5] + 12);
  *(v52 + 1) = v39[0];
  *(&v52[1] + 1) = v39[1];
  *&v51 = v38;
  *(&v51 + 1) = 0x4010000000000000;
  LOBYTE(v52[0]) = v37;
  *(&v52[2] + 1) = v39[2];
  return sub_10001F870(&v51, &qword_1000B44A0, &qword_10007A530);
}

uint64_t sub_1000539C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChecklistItemView(0);
  v5 = [*(a1 + *(v4 + 20) + 8) titleFor:*(a1 + *(v4 + 28))];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *&v35[0] = v6;
  *(&v35[0] + 1) = v8;
  sub_1000235B4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.headline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v26 = v17;
  v19 = v18;

  sub_100023608(v9, v11, v13 & 1);

  sub_10005504C(&v30);
  v20 = v30;
  v33[0] = v30;
  v21 = v31;
  v33[1] = v31;
  v22 = v32[0];
  v34[0] = v32[0];
  *&v28[6] = v30;
  *(v34 + 13) = *(v32 + 13);
  *&v28[22] = v31;
  *&v28[38] = v32[0];
  *&v28[51] = *(v32 + 13);
  v23 = *v28;
  *(a2 + 50) = *&v28[16];
  v24 = *&v28[48];
  *(a2 + 66) = *&v28[32];
  *(a2 + 82) = v24;
  v29 = v26 & 1;
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = 256;
  *(a2 + 97) = *&v28[63];
  *(a2 + 34) = v23;
  v35[0] = v20;
  v35[1] = v21;
  *v36 = v22;
  *&v36[13] = *(v32 + 13);
  sub_100056AA4(v14, v16, v26 & 1);

  sub_10001F808(v33, v27, &qword_1000B44F8, qword_10007A5E8);
  sub_10001F870(v35, &qword_1000B44F8, qword_10007A5E8);
  sub_100023608(v14, v16, v26 & 1);
}

uint64_t sub_100053BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ChecklistItemView(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10001B4A4(&qword_1000B4510, &qword_10007A650);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_10001B4A4(&qword_1000B4518, &qword_10007A658);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10001B4A4(&qword_1000B4520, &qword_10007A660);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  *v19 = static VerticalAlignment.top.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_10001B4A4(&qword_1000B4528, &qword_10007A668);
  sub_100054024(a1, &v19[*(v20 + 44)]);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v21 = sub_10001B4A4(&qword_1000B4530, &qword_10007A670);
  sub_100054418(a1, &v7[*(v21 + 44)]);
  sub_100056918(a1, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChecklistItemView);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_10005685C(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_10001E8B8(&qword_1000B4538, &qword_1000B4510, &qword_10007A650, &protocol conformance descriptor for VStack<A>);
  View.readSize(onChange:)();

  sub_10001F870(v7, &qword_1000B4510, &qword_10007A650);
  v30 = v17;
  sub_10001F808(v19, v17, &qword_1000B4520, &qword_10007A660);
  v24 = *(v9 + 16);
  v25 = v32;
  v24(v32, v13, v8);
  v26 = v33;
  sub_10001F808(v17, v33, &qword_1000B4520, &qword_10007A660);
  v27 = sub_10001B4A4(&qword_1000B4540, &qword_10007A678);
  v24((v26 + *(v27 + 48)), v25, v8);
  v28 = *(v9 + 8);
  v28(v13, v8);
  sub_10001F870(v19, &qword_1000B4520, &qword_10007A660);
  v28(v25, v8);
  return sub_10001F870(v30, &qword_1000B4520, &qword_10007A660);
}

uint64_t sub_100054024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_10001B4A4(&qword_1000B4448, &qword_10007A4A8);
  __chkstk_darwin(v3 - 8);
  v5 = v36 - v4;
  v6 = sub_10001B4A4(&qword_1000B4450, &qword_10007A4B0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v39 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v37 = v36 - v11;
  __chkstk_darwin(v10);
  v38 = v36 - v12;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = &v5[*(sub_10001B4A4(&qword_1000B4458, &qword_10007A4B8) + 44)];
  v14 = type metadata accessor for ChecklistItemView(0);
  v15 = *(v14 + 20);
  v36[1] = a1;
  v16 = *(a1 + v15 + 8);
  v17 = *(a1 + *(v14 + 28));
  *v13 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for ChecklistItemIcon(0);
  v19 = (v13 + *(v18 + 20));
  type metadata accessor for ChecklistViewModel(0);
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  v20 = v16;
  v21 = v17;
  *v19 = ObservedObject.init(wrappedValue:)();
  v19[1] = v22;
  *(v13 + *(v18 + 24)) = v21;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v37;
  sub_100023628(v5, v37, &qword_1000B4448, &qword_10007A4A8);
  v24 = (v23 + *(v7 + 44));
  v25 = *(&v47[7] + 8);
  v24[4] = *(&v47[6] + 8);
  v24[5] = v25;
  v24[6] = *(&v47[8] + 8);
  v26 = *(&v47[3] + 8);
  *v24 = *(&v47[2] + 8);
  v24[1] = v26;
  v27 = *(&v47[5] + 8);
  v24[2] = *(&v47[4] + 8);
  v24[3] = v27;
  v28 = v38;
  sub_100023628(v23, v38, &qword_1000B4450, &qword_10007A4B0);
  sub_10005504C(&v41);
  v29 = v39;
  sub_10001F808(v28, v39, &qword_1000B4450, &qword_10007A4B0);
  v30 = v40;
  sub_10001F808(v29, v40, &qword_1000B4450, &qword_10007A4B0);
  v31 = (v30 + *(sub_10001B4A4(&qword_1000B4550, &qword_10007A688) + 48));
  v32 = *(v43 + 13);
  *(v45 + 13) = *(v43 + 13);
  v33 = v42;
  v44[0] = v41;
  v44[1] = v42;
  v34 = v43[0];
  v45[0] = v43[0];
  *v31 = v41;
  v31[1] = v33;
  v31[2] = v34;
  *(v31 + 45) = v32;
  sub_10001F808(v44, v46, &qword_1000B44F8, qword_10007A5E8);
  sub_10001F870(v28, &qword_1000B4450, &qword_10007A4B0);
  v46[0] = v41;
  v46[1] = v42;
  v47[0] = v43[0];
  *(v47 + 13) = *(v43 + 13);
  sub_10001F870(v46, &qword_1000B44F8, qword_10007A5E8);
  return sub_10001F870(v29, &qword_1000B4450, &qword_10007A4B0);
}

uint64_t sub_100054418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for ChecklistItemBody(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v46 - v7);
  v9 = sub_10001B4A4(&qword_1000B4488, &qword_10007A518);
  v10 = __chkstk_darwin(v9 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v46 - v12;
  v13 = type metadata accessor for ChecklistItemView(0);
  v14 = *(a1 + v13[5] + 8);
  v48 = *(a1 + v13[7]);
  v15 = [v14 titleFor:?];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *&v58 = v16;
  *(&v58 + 1) = v18;
  sub_1000235B4();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v16) = v22;
  static Font.headline.getter();
  v23 = Text.font(_:)();
  v49 = v24;
  v50 = v23;
  v51 = v25;
  v52 = v26;

  sub_100023608(v19, v21, v16 & 1);

  v27 = v47;
  sub_1000548CC(a1);
  v28 = (a1 + v13[6]);
  v29 = *(v28 + 2);
  v58 = *v28;
  v59 = v29;
  v30 = v14;
  v31 = v48;
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  State.wrappedValue.getter();
  v32 = v56;
  v33 = v57;
  *v8 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v34 = (v8 + v4[9]);
  v35 = (v8 + v4[7]);
  type metadata accessor for ChecklistViewModel(0);
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel, &unk_100077F78);
  *v35 = ObservedObject.init(wrappedValue:)();
  v35[1] = v36;
  v37 = v4[8];
  v46 = v8;
  *(v8 + v37) = v31;
  *v34 = v32;
  v34[1] = v33;
  v38 = v27;
  v39 = v53;
  sub_10001F808(v27, v53, &qword_1000B4488, &qword_10007A518);
  v40 = v55;
  sub_100056918(v8, v55, type metadata accessor for ChecklistItemBody);
  v41 = v54;
  v42 = v49;
  v43 = v50;
  *v54 = v50;
  v41[1] = v42;
  LOBYTE(v31) = v51 & 1;
  *(v41 + 16) = v51 & 1;
  v41[3] = v52;
  *(v41 + 16) = 256;
  v44 = sub_10001B4A4(&qword_1000B4548, &qword_10007A680);
  sub_10001F808(v39, v41 + *(v44 + 48), &qword_1000B4488, &qword_10007A518);
  sub_100056918(v40, v41 + *(v44 + 64), type metadata accessor for ChecklistItemBody);
  sub_100056AA4(v43, v42, v31);

  sub_100056980(v46);
  sub_10001F870(v38, &qword_1000B4488, &qword_10007A518);
  sub_100056980(v40);
  sub_10001F870(v39, &qword_1000B4488, &qword_10007A518);
  sub_100023608(v43, v42, v31);
}

uint64_t sub_10005484C(uint64_t a1, double a2, double a3)
{
  type metadata accessor for ChecklistItemView(0);
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  return State.wrappedValue.setter();
}

uint64_t sub_1000548CC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B44A8, &qword_10007A538);
  __chkstk_darwin(v2);
  v4 = &v11 - v3;
  v5 = sub_10001B4A4(&qword_1000B44B0, &qword_10007A540);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for ChecklistItemView(0);
  if ([*(a1 + *(v8 + 20) + 8) isCompletedFor:*(a1 + *(v8 + 28))])
  {
    *v7 = static VerticalAlignment.firstTextLineCenter.getter();
    *(v7 + 1) = 0x4008000000000000;
    v7[16] = 0;
    v9 = sub_10001B4A4(&qword_1000B44D0, &unk_10007A550);
    sub_100054ACC(a1, &v7[*(v9 + 44)]);
    *&v7[*(v5 + 36)] = 256;
    sub_10001F808(v7, v4, &qword_1000B44B0, &qword_10007A540);
    swift_storeEnumTagMultiPayload();
    sub_1000569DC();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v7, &qword_1000B44B0, &qword_10007A540);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000569DC();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100054ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_10001B4A4(&qword_1000B3860, &qword_100078F28);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - v4;
  v6 = sub_10001B4A4(&qword_1000B44D8, &qword_10007A560);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = sub_10001B4A4(&qword_1000B44E0, &qword_10007A568);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_10001B4A4(&qword_1000B44E8, &qword_10007A570);
  v13 = __chkstk_darwin(v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v57 = &v56 - v18;
  v60 = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  v19 = type metadata accessor for ChecklistItemView(0);
  v20 = *(a1 + *(v19 + 20) + 8);
  v21 = *(a1 + *(v19 + 28));
  if ([v20 isSuggestedFor:v21])
  {
    v22 = [objc_opt_self() secondaryLabelColor];
    v23 = Color.init(_:)();
  }

  else
  {
    v23 = static Color.green.getter();
  }

  v24 = v23;
  sub_100023628(v5, v8, &qword_1000B3860, &qword_100078F28);
  *&v8[*(v6 + 36)] = v24;
  v25 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  sub_100023628(v8, v11, &qword_1000B44D8, &qword_10007A560);
  v27 = &v11[*(v9 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = &v17[*(v12 + 36)];
  v29 = *(sub_10001B4A4(&qword_1000B41C8, &qword_100079D98) + 28);
  v30 = enum case for Image.Scale.small(_:);
  v31 = type metadata accessor for Image.Scale();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  sub_100023628(v11, v17, &qword_1000B44E0, &qword_10007A568);
  v32 = v57;
  sub_100023628(v17, v57, &qword_1000B44E8, &qword_10007A570);
  v33 = [v20 subtitleFor:v21];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v60 = v34;
  v61 = v36;
  sub_1000235B4();
  v37 = Text.init<A>(_:)();
  v39 = v38;
  LOBYTE(v36) = v40;
  LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
  v41 = Text.foregroundStyle<A>(_:)();
  v43 = v42;
  v45 = v44;
  sub_100023608(v37, v39, v36 & 1);

  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  LOBYTE(v28) = v49;
  v51 = v50;

  sub_100023608(v41, v43, v45 & 1);

  v52 = v58;
  sub_10001F808(v32, v58, &qword_1000B44E8, &qword_10007A570);
  v53 = v59;
  sub_10001F808(v52, v59, &qword_1000B44E8, &qword_10007A570);
  v54 = v53 + *(sub_10001B4A4(&qword_1000B44F0, &qword_10007A5E0) + 48);
  *v54 = v46;
  *(v54 + 8) = v48;
  LOBYTE(v28) = v28 & 1;
  *(v54 + 16) = v28;
  *(v54 + 24) = v51;
  sub_100056AA4(v46, v48, v28);

  sub_10001F870(v32, &qword_1000B44E8, &qword_10007A570);
  sub_100023608(v46, v48, v28);

  return sub_10001F870(v52, &qword_1000B44E8, &qword_10007A570);
}

double sub_10005504C@<D0>(_OWORD *a2@<X8>)
{
  type metadata accessor for ChecklistItemView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    Image.init(systemName:)();
    static Font.footnote.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    swift_getKeyPath();
    static HierarchicalShapeStyle.tertiary.getter();

    sub_10001B4A4(&qword_1000B4500, &qword_10007A648);
    sub_10001E8B8(&qword_1000B4508, &qword_1000B4500, &qword_10007A648, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    v7 = v4;
    v8 = v5;
    *v9 = *v6;
    *&v9[13] = *&v6[13];
  }

  else
  {
    sub_10001B4A4(&qword_1000B4500, &qword_10007A648);
    sub_10001E8B8(&qword_1000B4508, &qword_1000B4500, &qword_10007A648, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = *v9;
  result = *&v9[13];
  *(a2 + 45) = *&v9[13];
  return result;
}

uint64_t sub_1000552DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B43E8, &qword_10007A458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005534C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v2 - 8);
  v48 = &v41 - v3;
  v43 = type metadata accessor for BackgroundProminence();
  v4 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = sub_10001B4A4(&qword_1000B3D88, &qword_100079898);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v44 = sub_10001B4A4(&qword_1000B46F0, &qword_10007A7B0);
  __chkstk_darwin(v44);
  v15 = &v41 - v14;
  v47 = sub_10001B4A4(&qword_1000B46F8, &unk_10007A7B8);
  __chkstk_darwin(v47);
  v45 = &v41 - v16;
  v17 = type metadata accessor for ChecklistItemIcon(0);
  v18 = *(v17 + 20);
  v19 = *(v17 + 24);
  v42 = v1;
  v20 = *(v1 + v19);
  v46 = *(v1 + v18 + 8);
  v21 = [v46 symbolIdentifierFor:v20];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = Image.init(_internalSystemName:)();
  View.accessibilityHidden(_:)();

  v22 = &v13[*(v11 + 44)];
  v23 = *(sub_10001B4A4(&qword_1000B3D90, &qword_1000798A0) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v24 = type metadata accessor for SymbolRenderingMode();
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = swift_getKeyPath();
  sub_1000561F8(&qword_1000B4460, &qword_10007A4F0, &type metadata accessor for BackgroundProminence, v9);
  static BackgroundProminence.increased.getter();
  LOBYTE(v22) = static BackgroundProminence.== infix(_:_:)();
  v25 = *(v4 + 8);
  v26 = v7;
  v27 = v43;
  v25(v26, v43);
  v25(v9, v27);
  if (v22)
  {
    LODWORD(v50) = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v50 = sub_1000294A0(v20);
  }

  v28 = AnyShapeStyle.init<A>(_:)();
  sub_100023628(v13, v15, &qword_1000B3D88, &qword_100079898);
  *&v15[*(v44 + 36)] = v28;
  static Font.Weight.semibold.getter();
  v29 = type metadata accessor for Font.Design();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  v31 = static Font.system(size:weight:design:)();
  sub_10001F870(v30, &qword_1000B3030, &qword_100077D50);
  KeyPath = swift_getKeyPath();
  v33 = v15;
  v34 = v45;
  sub_100023628(v33, v45, &qword_1000B46F0, &qword_10007A7B0);
  v35 = (v34 + *(v47 + 36));
  *v35 = KeyPath;
  v35[1] = v31;
  v36 = sub_10001B4A4(&qword_1000B4700, &qword_10007A7F8);
  v37 = v49;
  v38 = (v49 + *(v36 + 36));
  v39 = sub_10001B4A4(&qword_1000B41C8, &qword_100079D98);
  sub_100028528(v20, v38 + *(v39 + 28));
  *v38 = swift_getKeyPath();
  return sub_100023628(v34, v37, &qword_1000B46F8, &unk_10007A7B8);
}