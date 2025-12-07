unint64_t sub_1000242DC()
{
  result = qword_100219690;
  if (!qword_100219690)
  {
    sub_10000B3DC(&qword_100219698, &qword_1001AE650);
    sub_100024368();
    sub_10002449C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219690);
  }

  return result;
}

unint64_t sub_100024368()
{
  result = qword_1002196A0;
  if (!qword_1002196A0)
  {
    sub_10000B3DC(&qword_1002196A8, &qword_1001AE658);
    sub_1000243F4();
    sub_100024448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196A0);
  }

  return result;
}

unint64_t sub_1000243F4()
{
  result = qword_1002196B0;
  if (!qword_1002196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196B0);
  }

  return result;
}

unint64_t sub_100024448()
{
  result = qword_1002196B8;
  if (!qword_1002196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196B8);
  }

  return result;
}

unint64_t sub_10002449C()
{
  result = qword_1002196C0;
  if (!qword_1002196C0)
  {
    sub_10000B3DC(&qword_1002196C8, &qword_1001AE660);
    sub_100024528();
    sub_10002457C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196C0);
  }

  return result;
}

unint64_t sub_100024528()
{
  result = qword_1002196D0;
  if (!qword_1002196D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196D0);
  }

  return result;
}

unint64_t sub_10002457C()
{
  result = qword_1002196D8;
  if (!qword_1002196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002196D8);
  }

  return result;
}

uint64_t sub_1000245D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219668, &qword_1001AE638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10000D58C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1000248E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024954()
{
  result = qword_100219700;
  if (!qword_100219700)
  {
    sub_10000B3DC(&qword_1002196E0, &qword_1001AE670);
    sub_1000249E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219700);
  }

  return result;
}

unint64_t sub_1000249E0()
{
  result = qword_100219708;
  if (!qword_100219708)
  {
    sub_10000B3DC(&qword_100219668, &qword_1001AE638);
    sub_10000B3DC(&qword_100219670, &qword_1001AE640);
    sub_1000241CC();
    swift_getOpaqueTypeConformance2();
    sub_100024AD8(&qword_100218490, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219708);
  }

  return result;
}

uint64_t sub_100024AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024B20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100024B38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100024B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100024B9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100024C1C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100219730, &qword_1001AE730);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_100009F70(&qword_100219738, &qword_1001AE738);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if (*(v1 + 32) == 1)
  {
    v12 = static VerticalAlignment.top.getter();
  }

  else
  {
    v12 = static VerticalAlignment.center.getter();
  }

  *v7 = v12;
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v13 = sub_100009F70(&qword_100219740, &qword_1001AE740);
  sub_100024EE8(v1, &v7[*(v13 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v14 = sub_10000D1EC(&qword_100219748, &qword_100219730, &qword_1001AE730, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v4, v18);
  sub_10000D52C(v7, &qword_100219730, &qword_1001AE730);
  v20 = v5;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100024EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100009F70(&qword_100219750, &qword_1001AE748);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100009F70(&qword_100219758, &qword_1001AE750);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_100009F70(&qword_100219760, &qword_1001AE758);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  sub_10000D58C(a1 + 40, &v34 - v20, &qword_100219768, &qword_1001AE760);
  v22 = type metadata accessor for ArtistImage(0);
  v23 = *(v22 + 20);
  *&v21[v23] = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v24 = &v21[*(v22 + 24)];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v21[*(v16 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v25 = sub_100009F70(&qword_100219770, &qword_1001AE7D0);
  sub_1000252B8(a1, &v5[*(v25 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v12, &qword_100219750, &qword_1001AE748);
  v26 = &v12[*(v7 + 44)];
  v27 = v41;
  *(v26 + 4) = v40;
  *(v26 + 5) = v27;
  *(v26 + 6) = v42;
  v28 = v37;
  *v26 = v36;
  *(v26 + 1) = v28;
  v29 = v39;
  *(v26 + 2) = v38;
  *(v26 + 3) = v29;
  sub_10000F618(v12, v14, &qword_100219758, &qword_1001AE750);
  sub_10000D58C(v21, v19, &qword_100219760, &qword_1001AE758);
  v30 = v34;
  sub_10000D58C(v14, v34, &qword_100219758, &qword_1001AE750);
  v31 = v35;
  sub_10000D58C(v19, v35, &qword_100219760, &qword_1001AE758);
  v32 = sub_100009F70(&qword_100219778, &qword_1001AE7D8);
  sub_10000D58C(v30, v31 + *(v32 + 48), &qword_100219758, &qword_1001AE750);
  sub_10000D52C(v14, &qword_100219758, &qword_1001AE750);
  sub_10000D52C(v21, &qword_100219760, &qword_1001AE758);
  sub_10000D52C(v30, &qword_100219758, &qword_1001AE750);
  return sub_10000D52C(v19, &qword_100219760, &qword_1001AE758);
}

uint64_t sub_1000252B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_100219780, &qword_1001AE7E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100009F70(&qword_100219788, &qword_1001AE7E8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_100009F70(&qword_100219790, &qword_1001AE7F0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0x4000000000000000;
  v19[16] = 0;
  v20 = sub_100009F70(&qword_100219798, &qword_1001AE7F8);
  sub_1000256E4(a1, &v19[*(v20 + 44)]);
  if (*(a1 + 32) == 1)
  {
    v21 = LocalizedStringKey.init(stringLiteral:)();
    v39 = a2;
    v23 = v22;
    v25 = v24;
    v38 = v4;
    v27 = v26;
    v28 = static Edge.Set.bottom.getter();
    v37 = v7;
    v29 = v28;
    EdgeInsets.init(_all:)();
    v44 = 0;
    *&v40 = v21;
    *(&v40 + 1) = v23;
    LOBYTE(v41) = v25 & 1;
    *(&v41 + 1) = v27;
    LOBYTE(v42) = v29;
    *(&v42 + 1) = v30;
    *v43 = v31;
    *&v43[8] = v32;
    *&v43[16] = v33;
    v43[24] = 0;
    sub_100009F70(&qword_1002197A8, &qword_1001AE808);
    sub_100026F88();
    v34 = v37;
    a2 = v39;
    View.accessibilityIdentifier(_:)();
    v46[0] = *v43;
    *(v46 + 9) = *&v43[9];
    v45[1] = v41;
    v45[2] = v42;
    v45[0] = v40;
    sub_10000D52C(v45, &qword_1002197A8, &qword_1001AE808);
    sub_10000F618(v34, v13, &qword_100219780, &qword_1001AE7E0);
    (*(v5 + 56))(v13, 0, 1, v38);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_10000D58C(v19, v17, &qword_100219790, &qword_1001AE7F0);
  sub_10000D58C(v13, v11, &qword_100219788, &qword_1001AE7E8);
  sub_10000D58C(v17, a2, &qword_100219790, &qword_1001AE7F0);
  v35 = sub_100009F70(&qword_1002197A0, &qword_1001AE800);
  sub_10000D58C(v11, a2 + *(v35 + 48), &qword_100219788, &qword_1001AE7E8);
  sub_10000D52C(v13, &qword_100219788, &qword_1001AE7E8);
  sub_10000D52C(v19, &qword_100219790, &qword_1001AE7F0);
  sub_10000D52C(v11, &qword_100219788, &qword_1001AE7E8);
  return sub_10000D52C(v17, &qword_100219790, &qword_1001AE7F0);
}

uint64_t sub_1000256E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  v4 = __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_100009F70(&qword_1002197C8, &qword_1001AE818);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100009F70(&qword_1002197D0, &qword_1001AE820);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 8) = 0x4010000000000000;
  *(v10 + 16) = 0;
  v17 = sub_100009F70(&qword_1002197D8, &qword_1001AE828);
  sub_100025AA8(a1, (v10 + *(v17 + 44)));
  sub_10000D1EC(&qword_1002197E0, &qword_1002197C8, &qword_1001AE818, &protocol conformance descriptor for HStack<A>);
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v10, &qword_1002197C8, &qword_1001AE818);
  v18 = *a1;
  v19 = a1[1];
  v34 = v18;
  v35 = v19;
  sub_100027068();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v34 = v20;
  v35 = v22;
  v36 = v10 & 1;
  v37 = v25;
  v38 = KeyPath;
  v39 = 1;
  v40 = 0;
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v20, v22, v10 & 1);

  sub_10000D58C(v16, v14, &qword_1002197D0, &qword_1001AE820);
  v27 = v32;
  sub_10000D58C(v7, v32, &qword_1002197C0, &qword_1001AE810);
  v28 = v33;
  sub_10000D58C(v14, v33, &qword_1002197D0, &qword_1001AE820);
  v29 = sub_100009F70(&qword_100219810, &qword_1001AE870);
  sub_10000D58C(v27, v28 + *(v29 + 48), &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v7, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v16, &qword_1002197D0, &qword_1001AE820);
  sub_10000D52C(v27, &qword_1002197C0, &qword_1001AE810);
  return sub_10000D52C(v14, &qword_1002197D0, &qword_1001AE820);
}

uint64_t sub_100025AA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_100219818, &qword_1001AE878);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v44 = Image.init(systemName:)();
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v43 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v40 = objc_opt_self();
  v10 = [v40 secondaryLabelColor];
  v41 = Color.init(uiColor:)();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v46 = v11;
  v47 = v12;
  sub_100027068();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v38 = v19;
  v39 = v20;
  v22 = v21;

  sub_10000D60C(v13, v15, v17 & 1);

  v23 = &v9[*(sub_100009F70(&qword_100219820, &unk_1001AE8B0) + 36)];
  v24 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v25 = enum case for Text.Case.uppercase(_:);
  v26 = type metadata accessor for Text.Case();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23 + v24, v25, v26);
  (*(v27 + 56))(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  v28 = v38;
  *v9 = v18;
  *(v9 + 1) = v28;
  v9[16] = v22 & 1;
  v29 = v40;
  *(v9 + 3) = v39;
  v30 = [v29 secondaryLabelColor];
  *&v9[*(v5 + 44)] = Color.init(uiColor:)();
  v31 = v45;
  sub_10000D58C(v9, v45, &qword_100219818, &qword_1001AE878);
  v32 = v43;
  v34 = v41;
  v33 = KeyPath;
  *a2 = v44;
  a2[1] = v33;
  a2[2] = v32;
  a2[3] = v34;
  v35 = sub_100009F70(&qword_100219830, &qword_1001AE8F0);
  sub_10000D58C(v31, a2 + *(v35 + 48), &qword_100219818, &qword_1001AE878);

  sub_10000D52C(v9, &qword_100219818, &qword_1001AE878);
  sub_10000D52C(v31, &qword_100219818, &qword_1001AE878);
}

uint64_t type metadata accessor for ArtistImage(uint64_t a1)
{
  result = qword_100219898;
  if (!qword_100219898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025E94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D58C(v1, v23, &qword_100219768, &qword_1001AE760);
  v7 = v24;
  if (!v24)
  {
    sub_10000D52C(v23, &qword_100219768, &qword_1001AE760);
    v19 = type metadata accessor for URL();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  v8 = v25;
  v21 = sub_100028124(v23, v24);
  result = type metadata accessor for ArtistImage(0);
  v10 = v1 + *(result + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == 1)
  {
    v13 = *v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v13 = v22;
  }

  v15 = v13 * 56.0;
  if (COERCE__INT64(fabs(v13 * 56.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v16 = *&v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v16 = v22;
  }

  v18 = v16 * 56.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v18 < 9.22337204e18)
  {
    (*(v8 + 32))(v15, v18, v7, v8);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    return sub_100021498(v23);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10002626C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ArtistImage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v34[-v6 - 8];
  v8 = sub_100009F70(&qword_100219950, &qword_1001AEA50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34[-v10 - 8];
  sub_100025E94(v7);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_100027D08(v1, &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_100027EBC(&v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v13 + v12);
  sub_100009F70(&qword_100219958, &qword_1001AEA58);
  sub_100027FA0();
  AsyncImage.init(url:scale:transaction:content:)();
  sub_10000D1EC(&qword_100219998, &qword_100219950, &qword_1001AEA50, &protocol conformance descriptor for AsyncImage<A>);
  v14 = v33;
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (v14 + *(sub_100009F70(&qword_1002199A0, &qword_1001AEA78) + 36));
  v16 = v35;
  *v15 = *&v34[88];
  v15[1] = v16;
  v15[2] = v36;
  v17 = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = v37;
  LODWORD(v9) = v38;
  LODWORD(v7) = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = static Alignment.center.getter();
  v27 = v26;
  *&v43 = v18;
  *(&v43 + 1) = __PAIR64__(v7, v9);
  *&v44 = v19;
  *(&v44 + 1) = v20;
  *&v45 = v21;
  *(&v45 + 1) = v17 | 0x3DCCCCCD00000000;
  LOWORD(v46) = 256;
  *(&v46 + 1) = v22;
  *&v47 = v24;
  *(&v47 + 1) = v25;
  v48 = v26;
  v28 = sub_100009F70(&qword_1002199A8, &qword_1001AEA80);
  v29 = v33 + *(v28 + 36);
  v30 = v46;
  *(v29 + 32) = v45;
  *(v29 + 48) = v30;
  *(v29 + 64) = v47;
  *(v29 + 80) = v48;
  v31 = v44;
  *v29 = v43;
  *(v29 + 16) = v31;
  v49 = v18;
  v50 = v9;
  v51 = v7;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v17;
  v56 = 1036831949;
  v57 = 256;
  v58 = v22;
  v59 = v24;
  v60 = v25;
  v61 = v27;
  sub_10000D58C(&v43, v34, &qword_1002199B0, &qword_1001AEA88);
  return sub_10000D52C(&v49, &qword_1002199B0, &qword_1001AEA88);
}

double sub_10002669C@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncImagePhase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  if ((*(v10 + 88))(v12, v9) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v13 = Image.resizable(capInsets:resizingMode:)();
    (*(v6 + 8))(v8, v5);
    *&v39 = v13;
    WORD4(v39) = 256;
    sub_10002811C(&v39);
    v50 = v43;
    v51 = v44;
    v52[0] = v45[0];
    *(v52 + 9) = *(v45 + 9);
    v46 = v39;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    swift_retain_n();
    sub_100009F70(&qword_100219970, &qword_1001AEA60);
    sub_100009F70(&qword_100219990, &qword_1001AEA70);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990, &qword_1001AEA70, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();

    v50 = v36;
    v51 = v37;
    v52[0] = v38[0];
    *(v52 + 9) = *(v38 + 9);
    v46 = v32;
    v47 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    v16 = static Alignment.center.getter();
    v18 = v17;
    sub_100026B8C(&v46);
    v27 = v50;
    v28 = v51;
    v29 = *&v52[0];
    v23 = v46;
    v24 = v47;
    v25 = v48;
    v26 = v49;
    v30[0] = v46;
    v30[1] = v47;
    v30[2] = v48;
    v30[3] = v49;
    v30[4] = v50;
    v30[5] = v51;
    v31 = *&v52[0];
    sub_10000D58C(&v23, &v39, &qword_1002199B8, &unk_1001AEA90);
    sub_10000D52C(v30, &qword_1002199B8, &unk_1001AEA90);
    v37 = v27;
    v38[0] = v28;
    *&v38[1] = v29;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    *&v32 = v16;
    *(&v32 + 1) = v18;
    sub_100028110(&v32);
    v50 = v36;
    v51 = v37;
    v52[0] = v38[0];
    *(v52 + 9) = *(v38 + 9);
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    sub_100009F70(&qword_100219970, &qword_1001AEA60);
    sub_100009F70(&qword_100219990, &qword_1001AEA70);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990, &qword_1001AEA70, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v10 + 8))(v12, v9);
    v50 = v43;
    v51 = v44;
    v52[0] = v45[0];
    *(v52 + 9) = *(v45 + 9);
    v46 = v39;
    v47 = v40;
    v14 = v41;
    v15 = v42;
  }

  v48 = v14;
  v49 = v15;
  v19 = v51;
  a3[4] = v50;
  a3[5] = v19;
  a3[6] = v52[0];
  *(a3 + 105) = *(v52 + 9);
  v20 = v47;
  *a3 = v46;
  a3[1] = v20;
  result = *&v48;
  v22 = v49;
  a3[2] = v48;
  a3[3] = v22;
  return result;
}

double sub_100026B8C@<D0>(uint64_t a1@<X8>)
{
  v33 = type metadata accessor for Image.ResizingMode();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001ACB00;
  type metadata accessor for ArtistImage(0);
  sub_100024640(v11);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  v13 = static ColorScheme.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  v15 = objc_opt_self();
  v16 = &selRef_systemGray6Color;
  if ((v13 & 1) == 0)
  {
    v16 = &selRef_systemGray4Color;
  }

  v17 = [v15 *v16];
  *(v12 + 32) = Color.init(uiColor:)();
  v18 = objc_opt_self();
  v19 = [v18 systemGray5Color];
  *(v12 + 40) = Color.init(uiColor:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v20 = v34;
  Image.init(systemName:)();
  v21 = *(v2 + 104);
  v32 = v35;
  v31 = v36;
  v22 = v33;
  v21(v4, enum case for Image.ResizingMode.stretch(_:), v33);
  v23 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v22);
  v24 = [v18 tertiaryLabelColor];
  v25 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  *a1 = v20;
  *(a1 + 24) = v31;
  *(a1 + 8) = v32;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;
  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  *(a1 + 72) = v28;
  *(a1 + 80) = v29;
  result = v41[0];
  *(a1 + 88) = *v41;
  return result;
}

unint64_t sub_100026F88()
{
  result = qword_1002197B0;
  if (!qword_1002197B0)
  {
    sub_10000B3DC(&qword_1002197A8, &qword_1001AE808);
    sub_100027014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197B0);
  }

  return result;
}

unint64_t sub_100027014()
{
  result = qword_1002197B8;
  if (!qword_1002197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197B8);
  }

  return result;
}

unint64_t sub_100027068()
{
  result = qword_1002197E8;
  if (!qword_1002197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197E8);
  }

  return result;
}

uint64_t sub_1000270C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0x4008000000000000;
  *(a5 + 16) = 0;
  v6 = sub_100009F70(&qword_100219908, &qword_1001AEA00);
  sub_1000272D4(a5 + *(v6 + 44));
  v7 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a5 + *(sub_100009F70(&qword_100219910, &qword_1001AEA08) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a5 + *(sub_100009F70(&qword_100219918, &qword_1001AEA10) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = [objc_opt_self() secondarySystemBackgroundColor];
  v28 = Color.init(_:)();
  v29 = static Edge.Set.all.getter();
  v30 = a5 + *(sub_100009F70(&qword_100219920, &qword_1001AEA18) + 36);
  *v30 = v28;
  *(v30 + 8) = v29;
  v31 = (a5 + *(sub_100009F70(&qword_100219928, &unk_1001AEA20) + 36));
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #6.0 }

  *v31 = _Q0;
  result = sub_100009F70(&qword_100218928, &unk_1001ADC30);
  *&v31[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1000272D4@<X0>(uint64_t a5@<X8>)
{
  v34 = a5;
  v5 = sub_100009F70(&qword_100219930, &qword_1001AEA30);
  v6 = __chkstk_darwin(v5 - 8);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v32 - v8;
  v9 = Image.init(_:bundle:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v9;
  v36 = v41;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  sub_100009F70(&qword_100219938, &qword_1001AEA38);
  sub_100027C84();
  View.accessibilityHidden(_:)();

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_10000D60C(v10, v12, v14 & 1);

  v35 = static Color.blue.getter();
  v20 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10000D60C(v15, v17, v19 & 1);

  v28 = v32;
  v27 = v33;
  sub_10000D58C(v32, v33, &qword_100219930, &qword_1001AEA30);
  v29 = v34;
  sub_10000D58C(v27, v34, &qword_100219930, &qword_1001AEA30);
  v30 = v29 + *(sub_100009F70(&qword_100219948, &unk_1001AEA40) + 48);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24 & 1;
  *(v30 + 24) = v26;
  sub_10000D5FC(v20, v22, v24 & 1);

  sub_10000D52C(v28, &qword_100219930, &qword_1001AEA30);
  sub_10000D60C(v20, v22, v24 & 1);

  return sub_10000D52C(v27, &qword_100219930, &qword_1001AEA30);
}

unint64_t sub_10002764C()
{
  result = qword_1002197F8;
  if (!qword_1002197F8)
  {
    sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
    sub_10000D1EC(&qword_100219800, &qword_100219808, &qword_1001B26F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197F8);
  }

  return result;
}

uint64_t sub_100027714(uint64_t a1, int a2)
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

uint64_t sub_10002775C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000277C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10002789C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002794C(uint64_t a1)
{
  sub_1000279E8(319);
  if (v1 <= 0x3F)
  {
    sub_100027A4C(319);
    if (v2 <= 0x3F)
    {
      sub_100027AA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000279E8(uint64_t a1)
{
  if (!qword_1002198A8)
  {
    sub_10000B3DC(&qword_1002198B0, &qword_1001AE950);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002198A8);
    }
  }
}

void sub_100027A4C(uint64_t a1)
{
  if (!qword_1002198B8)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1002198B8);
    }
  }
}

void sub_100027AA4()
{
  if (!qword_1002198C0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002198C0);
    }
  }
}

unint64_t sub_100027AF8()
{
  result = qword_1002198F8;
  if (!qword_1002198F8)
  {
    sub_10000B3DC(&qword_100219900, qword_1001AE958);
    sub_10000B3DC(&qword_100219730, &qword_1001AE730);
    sub_10000D1EC(&qword_100219748, &qword_100219730, &qword_1001AE730, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002198F8);
  }

  return result;
}

unint64_t sub_100027BF4()
{
  result = qword_100218698;
  if (!qword_100218698)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218698);
  }

  return result;
}

unint64_t sub_100027C84()
{
  result = qword_100219940;
  if (!qword_100219940)
  {
    sub_10000B3DC(&qword_100219938, &qword_1001AEA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219940);
  }

  return result;
}

uint64_t sub_100027D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027D6C()
{
  v1 = type metadata accessor for ArtistImage(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100021498((v0 + v2));
  }

  v4 = *(v1 + 20);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_100027EB0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_100027EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100027F20@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ArtistImage(0);

  return sub_10002669C(a1, a2);
}

unint64_t sub_100027FA0()
{
  result = qword_100219960;
  if (!qword_100219960)
  {
    sub_10000B3DC(&qword_100219958, &qword_1001AEA58);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990, &qword_1001AEA70, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219960);
  }

  return result;
}

unint64_t sub_100028058()
{
  result = qword_100219968;
  if (!qword_100219968)
  {
    sub_10000B3DC(&qword_100219970, &qword_1001AEA60);
    sub_10000D1EC(&qword_100219978, &qword_100219980, &qword_1001AEA68, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219968);
  }

  return result;
}

void *sub_100028124(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002816C()
{
  result = qword_1002199C8;
  if (!qword_1002199C8)
  {
    sub_10000B3DC(&qword_100219928, &unk_1001AEA20);
    sub_100028224();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199C8);
  }

  return result;
}

unint64_t sub_100028224()
{
  result = qword_1002199D0;
  if (!qword_1002199D0)
  {
    sub_10000B3DC(&qword_100219920, &qword_1001AEA18);
    sub_1000282DC();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199D0);
  }

  return result;
}

unint64_t sub_1000282DC()
{
  result = qword_1002199D8;
  if (!qword_1002199D8)
  {
    sub_10000B3DC(&qword_100219918, &qword_1001AEA10);
    sub_100028368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199D8);
  }

  return result;
}

unint64_t sub_100028368()
{
  result = qword_1002199E0;
  if (!qword_1002199E0)
  {
    sub_10000B3DC(&qword_100219910, &qword_1001AEA08);
    sub_10000D1EC(&qword_1002199E8, &qword_1002199F0, &unk_1001AEAA0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199E0);
  }

  return result;
}

unint64_t sub_100028424()
{
  result = qword_1002199F8;
  if (!qword_1002199F8)
  {
    sub_10000B3DC(&qword_1002199A8, &qword_1001AEA80);
    sub_1000284DC();
    sub_10000D1EC(&qword_100219A18, &qword_1002199B0, &qword_1001AEA88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199F8);
  }

  return result;
}

unint64_t sub_1000284DC()
{
  result = qword_100219A00;
  if (!qword_100219A00)
  {
    sub_10000B3DC(&qword_1002199A0, &qword_1001AEA78);
    sub_100028568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A00);
  }

  return result;
}

unint64_t sub_100028568()
{
  result = qword_100219A08;
  if (!qword_100219A08)
  {
    sub_10000B3DC(&qword_100219A10, &qword_1001AEAB0);
    sub_10000D1EC(&qword_100219998, &qword_100219950, &qword_1001AEA50, &protocol conformance descriptor for AsyncImage<A>);
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A08);
  }

  return result;
}

uint64_t sub_100028668@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DesignTimeImage(0);
  __chkstk_darwin(v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  URL.init(string:)();
  v15 = type metadata accessor for URL();
  v32 = *(v15 - 8);
  v33 = v14;
  v16 = *(v32 + 48);
  v34 = v15;
  result = v16(v14, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    URL.init(string:)();
    result = (v16)(v12, 1, v34);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      v18 = *(v3 + 8);
      v30[1] = v3 + 8;
      v18(v5, v2);
      *v8 = ResourceID.init(_:)();
      v8[1] = v19;
      v21 = v6[6];
      v20 = v6[7];
      v22 = v6[5];
      v23 = v8;
      v32 = *(v32 + 32);
      v24 = v8 + v22;
      v25 = v34;
      (v32)(v24, v12, v34);
      *(v23 + v21) = 0;
      *(v23 + v20) = 0;
      UUID.init()();
      UUID.uuidString.getter();
      v18(v5, v2);
      v26 = ResourceID.init(_:)();
      v27 = v31;
      *v31 = v26;
      v27[1] = v28;
      v27[2] = 0x656C746954;
      v27[3] = 0xE500000000000000;
      v29 = type metadata accessor for DesignTimeVideo(0);
      (v32)(v27 + *(v29 + 24), v33, v25);
      return sub_100028E88(v23, v27 + *(v29 + 28));
    }
  }

  __break(1u);
  return result;
}

void sub_1000289B8(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v2 = type metadata accessor for DesignTimeVideo(0);
  type metadata accessor for URL();
  sub_100028EEC(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(v2 + 28);
  String.hash(into:)();
  v4 = type metadata accessor for DesignTimeImage(0);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v3 + *(v4 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_100028EEC(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(v4 + 28)));
}

uint64_t sub_100028B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100028BA4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100028BD4(uint64_t a1)
{
  *(a1 + 8) = sub_100028EEC(&qword_100219A70, type metadata accessor for DesignTimeVideo, &unk_1001AEB0C);
  result = sub_100028EEC(&qword_100219A78, type metadata accessor for DesignTimeVideo, &unk_1001AEAD4);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeVideo(uint64_t a1)
{
  result = qword_100219AE8;
  if (!qword_100219AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100028CA8()
{
  result = qword_100219A80;
  if (!qword_100219A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A80);
  }

  return result;
}

uint64_t sub_100028CFC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_100028D50()
{
  Hasher.init(_seed:)();
  sub_1000289B8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100028D94()
{
  Hasher.init(_seed:)();
  sub_1000289B8(v1);
  return Hasher._finalize()();
}

uint64_t sub_100028DD0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 28);

  return sub_100022244((a1 + v8), (a2 + v8));
}

uint64_t sub_100028E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100028F48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
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
      v13 = type metadata accessor for DesignTimeImage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100029080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
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
      v13 = type metadata accessor for DesignTimeImage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000291A4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DesignTimeImage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100029240(uint64_t a1)
{
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v1 = Font.weight(_:)();

  return v1;
}

uint64_t sub_100029280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityChildBehavior();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100009F70(&qword_100219BA8, &qword_1001AEC88);
  __chkstk_darwin(v45);
  v10 = &v43 - v9;
  v11 = sub_100009F70(&qword_100219BB0, &qword_1001AEC90);
  __chkstk_darwin(v11 - 8);
  v43 = &v43 - v12;
  v13 = sub_100009F70(&qword_100219BB8, &qword_1001AEC98);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v43 - v15;
  v47 = sub_100009F70(&qword_100219BC0, &qword_1001AECA0);
  __chkstk_darwin(v47);
  v17 = &v43 - v16;
  v48 = sub_100009F70(&qword_100219BC8, &qword_1001AECA8);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v43 - v18;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_100009F70(&qword_100219BD0, &qword_1001AECB0);
  sub_100029970(v2, *(a1 + 16), *(a1 + 24), &v10[*(v19 + 44)]);
  sub_100009F70(&qword_100219BD8, &qword_1001AECB8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001AEB90;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v56 = v20;
  sub_10002D994(&qword_100219BE0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100009F70(&qword_100219BE8, &qword_1001AECC0);
  sub_10000D1EC(&qword_100219BF0, &qword_100219BE8, &qword_1001AECC0, &protocol conformance descriptor for [A]);
  v21 = v5;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D1EC(&qword_100219BF8, &qword_100219BA8, &qword_1001AEC88, &protocol conformance descriptor for VStack<A>);
  v22 = v43;
  View.accessibilityAddTraits(_:)();
  (*(v6 + 8))(v8, v21);
  sub_10000D52C(v10, &qword_100219BA8, &qword_1001AEC88);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v44;
  sub_10000F618(v22, v44, &qword_100219BB0, &qword_1001AEC90);
  v24 = (v23 + *(v14 + 44));
  v25 = v61;
  v24[4] = v60;
  v24[5] = v25;
  v24[6] = v62;
  v26 = v57;
  *v24 = v56;
  v24[1] = v26;
  v27 = v59;
  v24[2] = v58;
  v24[3] = v27;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10000F618(v23, v17, &qword_100219BB8, &qword_1001AEC98);
  v36 = v47;
  v37 = &v17[*(v47 + 36)];
  *v37 = v20;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  v38 = v50;
  static AccessibilityChildBehavior.ignore.getter();
  v39 = sub_10002CC34();
  v40 = v46;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v38, v52);
  sub_10000D52C(v17, &qword_100219BC0, &qword_1001AECA0);
  v54 = v36;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  View.accessibilityIdentifier(_:)();
  return (*(v49 + 8))(v40, v41);
}

uint64_t sub_100029970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v52 = a4;
  v4 = sub_100009F70(&qword_100219C18, &qword_1001AECC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_100009F70(&qword_100219C20, &qword_1001AECD0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = sub_100009F70(&qword_100219C28, &qword_1001AECD8);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  Divider.init()();
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_100009F70(&qword_100219C30, &qword_1001AECE0) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v35 = &v23[*(v18 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v40 = sub_100009F70(&qword_100219C38, &qword_1001AECE8);
  sub_100029D5C(v49, v50, v51, &v6[*(v40 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v6, v14, &qword_100219C18, &qword_1001AECC8);
  v41 = &v14[*(v8 + 44)];
  v42 = v58;
  *(v41 + 4) = v57;
  *(v41 + 5) = v42;
  *(v41 + 6) = v59;
  v43 = v54;
  *v41 = v53;
  *(v41 + 1) = v43;
  v44 = v56;
  *(v41 + 2) = v55;
  *(v41 + 3) = v44;
  sub_10000F618(v14, v16, &qword_100219C20, &qword_1001AECD0);
  sub_10000D58C(v23, v21, &qword_100219C28, &qword_1001AECD8);
  sub_10000D58C(v16, v11, &qword_100219C20, &qword_1001AECD0);
  v45 = v52;
  sub_10000D58C(v21, v52, &qword_100219C28, &qword_1001AECD8);
  v46 = sub_100009F70(&qword_100219C40, &qword_1001AECF0);
  sub_10000D58C(v11, v45 + *(v46 + 48), &qword_100219C20, &qword_1001AECD0);
  sub_10000D52C(v16, &qword_100219C20, &qword_1001AECD0);
  sub_10000D52C(v23, &qword_100219C28, &qword_1001AECD8);
  sub_10000D52C(v11, &qword_100219C20, &qword_1001AECD0);
  return sub_10000D52C(v21, &qword_100219C28, &qword_1001AECD8);
}

uint64_t sub_100029D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v179 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v158 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityTraits();
  v153 = *(v9 - 8);
  v154 = v9;
  __chkstk_darwin(v9);
  v152 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = a2;
  v181 = a3;
  v12 = type metadata accessor for SetlistSongRowView(0, a2, a3, v11);
  v13 = *(v12 - 8);
  v146 = *(v13 + 64);
  __chkstk_darwin(v12);
  v164 = v144 - v14;
  v15 = sub_100009F70(&qword_100219C48, &qword_1001AECF8);
  v149 = *(v15 - 8);
  v150 = v15;
  __chkstk_darwin(v15);
  v147 = v144 - v16;
  v148 = sub_100009F70(&qword_100219C50, &qword_1001AED00);
  __chkstk_darwin(v148);
  v151 = v144 - v17;
  v156 = sub_100009F70(&qword_100219C58, &qword_1001AED08);
  __chkstk_darwin(v156);
  v157 = v144 - v18;
  v19 = sub_100009F70(&qword_100219C60, &qword_1001AED10);
  v176 = *(v19 - 8);
  v177 = v19;
  __chkstk_darwin(v19);
  v155 = v144 - v20;
  v163 = type metadata accessor for URL();
  v166 = *(v163 - 8);
  v21 = __chkstk_darwin(v163);
  v144[1] = v22;
  v145 = v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v165 = v144 - v23;
  v24 = sub_100009F70(&qword_100219C68, &qword_1001AED18);
  v25 = __chkstk_darwin(v24 - 8);
  v178 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v182 = v144 - v27;
  v28 = sub_100009F70(&qword_100219C70, &qword_1001AED20);
  __chkstk_darwin(v28 - 8);
  v169 = (v144 - v29);
  v168 = sub_100009F70(&qword_100219C78, &qword_1001AED28);
  __chkstk_darwin(v168);
  v172 = v144 - v30;
  v171 = sub_100009F70(&qword_100219C80, &unk_1001AED30);
  v31 = __chkstk_darwin(v171);
  v175 = v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v170 = v144 - v34;
  __chkstk_darwin(v33);
  v185 = v144 - v35;
  v36 = type metadata accessor for EnvironmentValues();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v41 = __chkstk_darwin(v40 - 8);
  v162 = v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = v144 - v43;
  v167 = sub_100009F70(&qword_100219C88, &qword_1001AED40);
  v45 = __chkstk_darwin(v167);
  v174 = v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v183 = v12;
  v184 = v144 - v48;
  v49 = *(v12 + 44);
  v173 = a1;
  v50 = a1 + v49;
  v51 = *v50;
  v52 = *(v50 + 8);
  if (v52 == 1)
  {
    v53 = *v50;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v51, 0);
    (*(v37 + 8))(v39, v36);
    v53 = *&v199;
  }

  v55 = v53 * 48.0;
  if (COERCE__INT64(fabs(v53 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v52)
  {
    v56 = *&v51;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v51, 0);
    (*(v37 + 8))(v39, v36);
    v56 = *&v199;
  }

  v58 = v56 * 48.0;
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v144[0] = v13;
  v59 = v58;
  v60 = v180;
  v61 = v181;
  v161 = type metadata accessor for SetlistSongRowViewModel(0, v180, v181, v47);
  v62 = v173;
  sub_1000447E0(v55, v59, v161, v44);
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = v61;
  sub_100009F70(&qword_100219C90, &qword_1001AED48);
  sub_10002CE4C();
  v64 = v184;
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = (v64 + *(sub_100009F70(&qword_100219D08, &qword_1001AED80) + 36));
  v66 = v187;
  *v65 = v186;
  v65[1] = v66;
  v65[2] = v188;
  v67 = static Alignment.center.getter();
  v69 = v68;
  v70 = v61;
  sub_10002B804(v62, v60, &v199, v61, v71);
  v72 = v199;
  v73 = v200;
  v74 = v64 + *(sub_100009F70(&qword_100219D10, &unk_1001AED88) + 36);
  *v74 = v72;
  v75 = v62;
  *(v74 + 16) = v73;
  *(v74 + 24) = v67;
  *(v74 + 32) = v69;
  if (static Solarium.isEnabled.getter())
  {
    v76 = 10.0;
  }

  else
  {
    v76 = 5.0;
  }

  v77 = (v64 + *(v167 + 36));
  v78 = *(type metadata accessor for RoundedRectangle() + 20);
  v79 = enum case for RoundedCornerStyle.continuous(_:);
  v80 = type metadata accessor for RoundedCornerStyle();
  (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
  *v77 = v76;
  v77[1] = v76;
  *(v77 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  v81 = static HorizontalAlignment.leading.getter();
  v82 = v169;
  *v169 = v81;
  *(v82 + 8) = 0x4008000000000000;
  *(v82 + 16) = 0;
  v83 = sub_100009F70(&qword_100219D18, &qword_1001AED98);
  sub_10002B8D4(v62, v60, v70, v82 + *(v83 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v84 = v172;
  sub_10000F618(v82, v172, &qword_100219C70, &qword_1001AED20);
  v85 = &v84[*(v168 + 36)];
  v86 = v194;
  *(v85 + 4) = v193;
  *(v85 + 5) = v86;
  *(v85 + 6) = v195;
  v87 = v190;
  *v85 = v189;
  *(v85 + 1) = v87;
  v88 = v192;
  *(v85 + 2) = v191;
  *(v85 + 3) = v88;
  LOBYTE(v82) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v84;
  v98 = v170;
  sub_10000F618(v97, v170, &qword_100219C78, &qword_1001AED28);
  v99 = v98 + *(v171 + 36);
  *v99 = v82;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  sub_10000F618(v98, v185, &qword_100219C80, &unk_1001AED30);
  if (*(v62 + *(v183 + 36)))
  {

    v101 = sub_1000452DC(v100);

    if (v101)
    {
      v102 = v162;
      sub_100044AD8(v161);
      v103 = v166;
      v104 = v163;
      if ((*(v166 + 48))(v102, 1, v163) != 1)
      {
        v172 = *(v103 + 32);
        v108 = v165;
        (v172)(v165, v102, v104);
        v109 = v144[0];
        (*(v144[0] + 16))(v164, v75, v183);
        v110 = v145;
        (*(v103 + 16))(v145, v108, v104);
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v112 = (v146 + *(v103 + 80) + v111) & ~*(v103 + 80);
        v113 = v104;
        v114 = swift_allocObject();
        v115 = v181;
        *(v114 + 16) = v180;
        *(v114 + 24) = v115;
        (*(v109 + 32))(v114 + v111, v164, v183);
        v116 = (v172)(v114 + v112, v110, v113);
        __chkstk_darwin(v116);
        sub_100009F70(&qword_100219D28, &qword_1001AEDA8);
        sub_10002D620();
        v117 = v147;
        Button.init(action:label:)();
        sub_100009F70(&qword_100219BD8, &qword_1001AECB8);
        v118 = v153;
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1001AEB90;
        static AccessibilityTraits.startsMediaSession.getter();
        *&v199 = v119;
        sub_10002D994(&qword_100219BE0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
        sub_100009F70(&qword_100219BE8, &qword_1001AECC0);
        sub_10000D1EC(&qword_100219BF0, &qword_100219BE8, &qword_1001AECC0, &protocol conformance descriptor for [A]);
        v120 = v152;
        v121 = v154;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10000D1EC(&qword_100219D58, &qword_100219C48, &qword_1001AECF8, &protocol conformance descriptor for Button<A>);
        v123 = v150;
        v122 = v151;
        View.accessibilityRemoveTraits(_:)();
        (*(v118 + 8))(v120, v121);
        (*(v149 + 8))(v117, v123);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v124 = (v122 + *(v148 + 36));
        v125 = v197;
        *v124 = v196;
        v124[1] = v125;
        v124[2] = v198;
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v126 = v157;
        sub_10000F618(v122, v157, &qword_100219C50, &qword_1001AED00);
        v127 = (v126 + *(v156 + 36));
        v128 = v204;
        v127[4] = v203;
        v127[5] = v128;
        v127[6] = v205;
        v129 = v200;
        *v127 = v199;
        v127[1] = v129;
        v130 = v202;
        v127[2] = v201;
        v127[3] = v130;
        v131 = v158;
        PlainButtonStyle.init()();
        sub_10002D794();
        sub_10002D994(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
        v132 = v155;
        v133 = v160;
        View.buttonStyle<A>(_:)();
        (*(v159 + 8))(v131, v133);
        sub_10000D52C(v126, &qword_100219C58, &qword_1001AED08);
        (*(v166 + 8))(v165, v113);
        v107 = v176;
        v134 = v177;
        (*(v176 + 32))(v182, v132, v177);
        v106 = v134;
        v105 = 0;
        goto LABEL_22;
      }

      sub_10000D52C(v102, qword_100218748, &unk_1001AD110);
    }

    v105 = 1;
    v107 = v176;
    v106 = v177;
LABEL_22:
    v135 = v182;
    (*(v107 + 56))(v182, v105, 1, v106);
    v136 = v184;
    v137 = v174;
    sub_10000D58C(v184, v174, &qword_100219C88, &qword_1001AED40);
    v138 = v185;
    v139 = v175;
    sub_10000D58C(v185, v175, &qword_100219C80, &unk_1001AED30);
    v140 = v178;
    sub_10000D58C(v135, v178, &qword_100219C68, &qword_1001AED18);
    v141 = v179;
    sub_10000D58C(v137, v179, &qword_100219C88, &qword_1001AED40);
    v142 = sub_100009F70(&qword_100219D20, &qword_1001AEDA0);
    sub_10000D58C(v139, v141 + *(v142 + 48), &qword_100219C80, &unk_1001AED30);
    sub_10000D58C(v140, v141 + *(v142 + 64), &qword_100219C68, &qword_1001AED18);
    sub_10000D52C(v135, &qword_100219C68, &qword_1001AED18);
    sub_10000D52C(v138, &qword_100219C80, &unk_1001AED30);
    sub_10000D52C(v136, &qword_100219C88, &qword_1001AED40);
    sub_10000D52C(v140, &qword_100219C68, &qword_1001AED18);
    sub_10000D52C(v139, &qword_100219C80, &unk_1001AED30);
    return sub_10000D52C(v137, &qword_100219C88, &qword_1001AED40);
  }

LABEL_29:
  type metadata accessor for RemoteViewConfiguration();
  sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v25[0] = a2;
  v29 = a4;
  v28 = sub_100009F70(&qword_100219CD0, &qword_1001AED60);
  __chkstk_darwin(v28);
  v6 = v25 - v5;
  v26 = sub_100009F70(&qword_100219DD0, &qword_1001AEEA0);
  __chkstk_darwin(v26);
  v8 = v25 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100009F70(&qword_100219CA8, &qword_1001AED50);
  __chkstk_darwin(v27);
  v14 = v25 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  if ((*(v16 + 88))(v18, v15) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *&v34 = v19;
    BYTE8(v34) = 1;
    sub_100009F70(&qword_100219CB8, &qword_1001AED58);
    sub_10002CFE4();
    View.accessibilityIdentifier(_:)();

    sub_10000D58C(v14, v8, &qword_100219CA8, &qword_1001AED50);
    swift_storeEnumTagMultiPayload();
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &qword_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &qword_1001AED60, sub_10002D0C4);
    _ConditionalContent<>.init(storage:)();

    return sub_10000D52C(v14, &qword_100219CA8, &qword_1001AED50);
  }

  else
  {
    if (qword_100218340 != -1)
    {
      swift_once();
    }

    v21 = qword_100230578;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_10002B784(&v34);
    *&v30 = v21;
    WORD4(v30) = 256;
    v31 = v34;
    *&v32 = v35;
    DWORD2(v32) = DWORD2(v35);
    *&v33 = v22;
    *(&v33 + 1) = v24;

    sub_100009F70(&qword_100219CE0, &qword_1001AED68);
    sub_10002D0C4();
    View.accessibilityIdentifier(_:)();
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_10000D52C(&v34, &qword_100219CE0, &qword_1001AED68);
    sub_10000D58C(v6, v8, &qword_100219CD0, &qword_1001AED60);
    swift_storeEnumTagMultiPayload();
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &qword_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &qword_1001AED60, sub_10002D0C4);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v6, &qword_100219CD0, &qword_1001AED60);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_10002B784@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  static Font.title3.getter();
  static Font.Weight.regular.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.quaternary.getter();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10002B804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for SetlistSongRowViewModel(0, a2, a4, a5);
  v8 = 0;
  result = 0;
  if (*(a1 + *(v7 + 40)) == 1)
  {
    if (qword_100218450 != -1)
    {
      swift_once();
    }

    v10 = qword_100230608;
    type metadata accessor for PlaybackViewModel(0);
    v8 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v8 + 16) = v10;
    result = swift_getKeyPath();
  }

  *a3 = v8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_10002B8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67[2] = a1;
  v79 = a4;
  v6 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  v7 = __chkstk_darwin(v6 - 8);
  v78 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v67 - v9;
  v10 = type metadata accessor for Text.Suffix();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v68 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_100219D88, &qword_1001AEDD8);
  v74 = *(v12 - 8);
  v75 = v12;
  __chkstk_darwin(v12);
  v73 = v67 - v13;
  v14 = sub_100009F70(&qword_100219D90, &qword_1001AEDE0);
  v15 = __chkstk_darwin(v14 - 8);
  v76 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = v67 - v17;
  v19 = type metadata accessor for SetlistSongRowViewModel(0, a2, a3, v18);
  *&v90 = sub_100044A20(v19);
  *(&v90 + 1) = v20;
  v69 = sub_100027068();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  v70 = v26;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v25 & 1;
  v109 = v25 & 1;
  v67[0] = a2;
  v67[1] = a3;
  v28 = sub_100029240(a2);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v110 = 0;
  *&v90 = v21;
  *(&v90 + 1) = v23;
  LOBYTE(v91) = v27;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v92 = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  *(&v91 + 1) = v70;
  *&v99 = KeyPath;
  *(&v99 + 1) = v28;
  *&v100 = v30;
  *(&v100 + 1) = 1;
  v101 = 0;
  v70 = v19;
  if (sub_100044A5C(v19))
  {
    v31 = sub_10002D1A8(v67[0]);
    v33 = v32;
    v35 = v34;
    v36 = v68;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10000D60C(v31, v33, v35 & 1);
  }

  else
  {
    v36 = v68;
    static Text.Suffix.none.getter();
  }

  v37 = sub_100009F70(&qword_100219D98, &qword_1001AEE48);
  v38 = sub_10002D9EC();
  v39 = v73;
  View.textSuffix(_:)();
  (*(v71 + 8))(v36, v72);
  v88[8] = v98;
  v88[9] = v99;
  v88[10] = v100;
  v89 = v101;
  v88[4] = v94;
  v88[5] = v95;
  v88[6] = v96;
  v88[7] = v97;
  v88[0] = v90;
  v88[1] = v91;
  v88[2] = v92;
  v88[3] = v93;
  sub_10000D52C(v88, &qword_100219D98, &qword_1001AEE48);
  v81 = v37;
  v82 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v75;
  View.accessibilityIdentifier(_:)();
  (*(v74 + 8))(v39, v40);
  v81 = sub_100044A9C(v70);
  v82 = v41;
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Font.footnote.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_10000D60C(v42, v44, v46 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v81 = qword_100230570;

  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_10000D60C(v47, v49, v51 & 1);

  v59 = swift_getKeyPath();
  v81 = v52;
  v82 = v54;
  v83 = v56 & 1;
  v84 = v58;
  v85 = v59;
  v86 = 1;
  v87 = 0;
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  v60 = v77;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v52, v54, v56 & 1);

  v61 = v80;
  v62 = v76;
  sub_10000D58C(v80, v76, &qword_100219D90, &qword_1001AEDE0);
  v63 = v78;
  sub_10000D58C(v60, v78, &qword_1002197C0, &qword_1001AE810);
  v64 = v79;
  sub_10000D58C(v62, v79, &qword_100219D90, &qword_1001AEDE0);
  v65 = sub_100009F70(&qword_100219DC8, &qword_1001AEE68);
  sub_10000D58C(v63, v64 + *(v65 + 48), &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v60, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v61, &qword_100219D90, &qword_1001AEDE0);
  sub_10000D52C(v63, &qword_1002197C0, &qword_1001AE810);
  return sub_10000D52C(v62, &qword_100219D90, &qword_1001AEDE0);
}

uint64_t sub_10002C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OpenURLAction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SetlistSongRowView(0, a3, a4, v11);
  sub_100023FD4(v10);
  OpenURLAction.callAsFunction(_:)();
  (*(v8 + 8))(v10, v7);
  if (*(a1 + *(v12 + 36)))
  {
    type metadata accessor for SetlistSongRowViewModel(0, a3, a4, v13);

    sub_100044B14(v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C204@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v22 = sub_100009F70(&qword_100219D80, &unk_1001AEDC8);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v22 - v9;
  v11 = sub_100009F70(&qword_100219D40, &unk_1001AEDB0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  *&v24 = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v15 = *(v2 + 8);
  v15(v7, v1);
  View.symbolVariant(_:)();
  v15(v5, v1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v14, v10, v22);
  v16 = &v14[*(v12 + 44)];
  v17 = v29;
  *(v16 + 4) = v28;
  *(v16 + 5) = v17;
  *(v16 + 6) = v30;
  v18 = v25;
  *v16 = v24;
  *(v16 + 1) = v18;
  v19 = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = v19;
  v20 = v23;
  sub_10000F618(v14, v23, &qword_100219D40, &unk_1001AEDB0);
  result = sub_100009F70(&qword_100219D28, &qword_1001AEDA8);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10002C50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for SetlistSongRowViewModel(0, a2, a3, a5);
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v11 = type metadata accessor for SetlistSongRowView(0, a2, a3, v10);
  v12 = (a4 + v11[9]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  *v12 = EnvironmentObject.init()();
  v12[1] = v13;
  v14 = v11[10];
  *(a4 + v14) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v11[11];
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

void sub_10002C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistSongRowViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      sub_10000E648(319);
      if (v6 <= 0x3F)
      {
        sub_100027AA4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002C720(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for OpenURLAction() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((v11 + 16) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *(a1 + 1);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_10002C964(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for OpenURLAction() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 16) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_10002CC34()
{
  result = qword_100219C00;
  if (!qword_100219C00)
  {
    sub_10000B3DC(&qword_100219BC0, &qword_1001AECA0);
    sub_10002CCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C00);
  }

  return result;
}

unint64_t sub_10002CCC0()
{
  result = qword_100219C08;
  if (!qword_100219C08)
  {
    sub_10000B3DC(&qword_100219BB8, &qword_1001AEC98);
    sub_10002CD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C08);
  }

  return result;
}

unint64_t sub_10002CD4C()
{
  result = qword_100219C10;
  if (!qword_100219C10)
  {
    sub_10000B3DC(&qword_100219BB0, &qword_1001AEC90);
    sub_10000D1EC(&qword_100219BF8, &qword_100219BA8, &qword_1001AEC88, &protocol conformance descriptor for VStack<A>);
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C10);
  }

  return result;
}

unint64_t sub_10002CE4C()
{
  result = qword_100219C98;
  if (!qword_100219C98)
  {
    sub_10000B3DC(&qword_100219C90, &qword_1001AED48);
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &qword_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &qword_1001AED60, sub_10002D0C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C98);
  }

  return result;
}

uint64_t sub_10002CF30(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002CFE4()
{
  result = qword_100219CB0;
  if (!qword_100219CB0)
  {
    sub_10000B3DC(&qword_100219CB8, &qword_1001AED58);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CB0);
  }

  return result;
}

unint64_t sub_10002D070()
{
  result = qword_100219CC0;
  if (!qword_100219CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CC0);
  }

  return result;
}

unint64_t sub_10002D0C4()
{
  result = qword_100219CD8;
  if (!qword_100219CD8)
  {
    sub_10000B3DC(&qword_100219CE0, &qword_1001AED68);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10000D1EC(&qword_100219CF8, &qword_100219D00, &qword_1001AED78, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CD8);
  }

  return result;
}

uint64_t sub_10002D1A8(uint64_t a1)
{
  sub_100027068();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Color.gray.getter();
  Color.opacity(_:)();

  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  sub_100029240(a1);
  v12 = Text.font(_:)();

  sub_10000D60C(v7, v9, v11 & 1);

  return v12;
}

uint64_t sub_10002D2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SetlistSongRowView(0, v5, v6, a4);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v18 = *(*(v7 - 8) + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v4 + v8;

  v14 = type metadata accessor for SetlistSongRowViewModel(0, v5, v6, v13);
  (*(*(v5 - 8) + 8))(v4 + v8 + *(v14 + 36), v5);

  v15 = *(v7 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for OpenURLAction();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  else
  {
  }

  sub_100027EB0(*(v12 + *(v7 + 44)), *(v12 + *(v7 + 44) + 8));
  (*(v10 + 8))(v4 + ((v8 + v18 + v11) & ~v11), v9);

  return swift_deallocObject();
}

uint64_t sub_10002D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SetlistSongRowView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_10002C058(v4 + v8, v11, v5, v6);
}

unint64_t sub_10002D620()
{
  result = qword_100219D30;
  if (!qword_100219D30)
  {
    sub_10000B3DC(&qword_100219D28, &qword_1001AEDA8);
    sub_10002D6D8();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D30);
  }

  return result;
}

unint64_t sub_10002D6D8()
{
  result = qword_100219D38;
  if (!qword_100219D38)
  {
    sub_10000B3DC(&qword_100219D40, &unk_1001AEDB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D38);
  }

  return result;
}

unint64_t sub_10002D794()
{
  result = qword_100219D60;
  if (!qword_100219D60)
  {
    sub_10000B3DC(&qword_100219C58, &qword_1001AED08);
    sub_10002D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D60);
  }

  return result;
}

unint64_t sub_10002D820()
{
  result = qword_100219D68;
  if (!qword_100219D68)
  {
    sub_10000B3DC(&qword_100219C50, &qword_1001AED00);
    sub_10002D8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D68);
  }

  return result;
}

unint64_t sub_10002D8AC()
{
  result = qword_100219D70;
  if (!qword_100219D70)
  {
    sub_10000B3DC(&qword_100219D78, &qword_1001AEDC0);
    sub_10000D1EC(&qword_100219D58, &qword_100219C48, &qword_1001AECF8, &protocol conformance descriptor for Button<A>);
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D70);
  }

  return result;
}

uint64_t sub_10002D994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002D9EC()
{
  result = qword_100219DA0;
  if (!qword_100219DA0)
  {
    sub_10000B3DC(&qword_100219D98, &qword_1001AEE48);
    sub_10002DAA4();
    sub_10000D1EC(&qword_100219800, &qword_100219808, &qword_1001B26F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DA0);
  }

  return result;
}

unint64_t sub_10002DAA4()
{
  result = qword_100219DA8;
  if (!qword_100219DA8)
  {
    sub_10000B3DC(&qword_100219DB0, &qword_1001AEE50);
    sub_10002DB5C();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DA8);
  }

  return result;
}

unint64_t sub_10002DB5C()
{
  result = qword_100219DB8;
  if (!qword_100219DB8)
  {
    sub_10000B3DC(&qword_100219DC0, &unk_1001AEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DB8);
  }

  return result;
}

unint64_t sub_10002DBEC()
{
  result = qword_100219DD8;
  if (!qword_100219DD8)
  {
    sub_10000B3DC(&qword_100219DE0, &qword_1001AEEA8);
    sub_10000B3DC(&qword_100219BC0, &qword_1001AECA0);
    sub_10002CC34();
    swift_getOpaqueTypeConformance2();
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DD8);
  }

  return result;
}

uint64_t sub_10002DCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 sub_10002DD08(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002DD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10002DD84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10002DDF4(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v1[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v1[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v1[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v1[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v1[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_10002DF6C()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_10002DF9C()
{
  Hasher.init(_seed:)();
  sub_10002DDF4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002DFE0()
{
  Hasher.init(_seed:)();
  sub_10002DDF4(v1);
  return Hasher._finalize()();
}

uint64_t sub_10002E01C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10002E650(v9, v10) & 1;
}

uint64_t sub_10002E080@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v2;
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_10002E868(v9, &v8);
}

Swift::Int sub_10002E0D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = v3;
    v4 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = v4;
    v9 = *(v0 + 56);
    v7 = v1;
    v8 = v2;
    Hasher._combine(_:)(1u);
    sub_10002DDF4(v6);
  }

  return Hasher._finalize()();
}

void sub_10002E1C4(uint64_t a1)
{
  v3 = *(v1 + 48);
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10002DDF4(a1);
  }
}

Swift::Int sub_10002E288()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = v3;
    v4 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = v4;
    v9 = *(v0 + 56);
    v7 = v1;
    v8 = v2;
    Hasher._combine(_:)(1u);
    sub_10002DDF4(v6);
  }

  return Hasher._finalize()();
}

uint64_t sub_10002E370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
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
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10002E8D8(v11, v13) & 1;
}

unint64_t sub_10002E3F8()
{
  result = qword_100219DE8;
  if (!qword_100219DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DE8);
  }

  return result;
}

unint64_t sub_10002E450()
{
  result = qword_100219DF0;
  if (!qword_100219DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF0);
  }

  return result;
}

unint64_t sub_10002E4A4(uint64_t a1)
{
  *(a1 + 8) = sub_10002E4D4();
  result = sub_10002E528();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002E4D4()
{
  result = qword_100219E40;
  if (!qword_100219E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E40);
  }

  return result;
}

unint64_t sub_10002E528()
{
  result = qword_100219E48;
  if (!qword_100219E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E48);
  }

  return result;
}

unint64_t sub_10002E57C(uint64_t a1)
{
  result = sub_10002E5A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E5A4()
{
  result = qword_100219E50;
  if (!qword_100219E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E50);
  }

  return result;
}

unint64_t sub_10002E5FC()
{
  result = qword_100219E58;
  if (!qword_100219E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E58);
  }

  return result;
}

uint64_t sub_10002E650(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10002E868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219E60, &qword_1001AF080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E8D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10002EB9C(), (static NSObject.== infix(_:_:)())))
  {
    v6 = *(a1 + 11);
    v51[2] = *(a1 + 9);
    v51[3] = v6;
    v7 = *(a1 + 15);
    v51[4] = *(a1 + 13);
    v51[5] = v7;
    v8 = *(a1 + 7);
    v51[0] = *(a1 + 5);
    v51[1] = v8;
    v9 = *(a2 + 88);
    v50[2] = *(a2 + 72);
    v50[3] = v9;
    v10 = *(a2 + 120);
    v50[4] = *(a2 + 104);
    v50[5] = v10;
    v11 = *(a2 + 56);
    v50[0] = *(a2 + 40);
    v50[1] = v11;
    v12 = v51[0];
    if (*(&v51[0] + 1) == 1)
    {
      if (*(&v50[0] + 1) == 1)
      {
        v13 = 1;
        *&v38 = *&v51[0];
        *(&v38 + 1) = 1;
        v14 = *(a1 + 9);
        v15 = *(a1 + 13);
        v41 = *(a1 + 11);
        v42 = v15;
        v43 = *(a1 + 15);
        v39 = *(a1 + 7);
        v40 = v14;
        sub_10002E868(v51, v52);
        sub_10002E868(v50, v52);
        v16 = &v38;
LABEL_20:
        sub_10000D52C(v16, &qword_100219E60, &qword_1001AF080);
        return v13 & 1;
      }
    }

    else if (*(&v50[0] + 1) != 1)
    {
      v31 = v50[0];
      v23 = *(a2 + 72);
      v24 = *(a2 + 104);
      v34 = *(a2 + 88);
      v35 = v24;
      v36 = *(a2 + 120);
      v32 = *(a2 + 56);
      v33 = v23;
      v42 = v24;
      v43 = v36;
      v40 = v23;
      v41 = v34;
      v38 = v50[0];
      v39 = v32;
      v25 = *(a1 + 7);
      v26 = *(a1 + 15);
      v27 = *(a1 + 11);
      v52[4] = *(a1 + 13);
      v52[5] = v26;
      v28 = *(a1 + 9);
      v52[1] = v25;
      v52[2] = v28;
      v52[3] = v27;
      v52[0] = v51[0];
      v13 = sub_10002E650(v52, &v38);
      sub_10002E868(v51, v37);
      sub_10002E868(v50, v37);
      sub_10000D52C(&v31, &qword_100219E60, &qword_1001AF080);
      v37[0] = v12;
      v29 = *(a1 + 9);
      v30 = *(a1 + 13);
      v37[3] = *(a1 + 11);
      v37[4] = v30;
      v37[5] = *(a1 + 15);
      v37[1] = *(a1 + 7);
      v37[2] = v29;
      v16 = v37;
      goto LABEL_20;
    }

    v38 = v51[0];
    v18 = *(a1 + 9);
    v19 = *(a1 + 13);
    v41 = *(a1 + 11);
    v42 = v19;
    v43 = *(a1 + 15);
    v39 = *(a1 + 7);
    v40 = v18;
    v44 = v50[0];
    v20 = *(a2 + 120);
    v21 = *(a2 + 88);
    v48 = *(a2 + 104);
    v49 = v20;
    v22 = *(a2 + 56);
    v46 = *(a2 + 72);
    v47 = v21;
    v45 = v22;
    sub_10002E868(v51, v52);
    sub_10002E868(v50, v52);
    sub_10000D52C(&v38, qword_100219E70, &qword_1001AF088);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_10002EB9C()
{
  result = qword_100219E68;
  if (!qword_100219E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100219E68);
  }

  return result;
}

__n128 sub_10002EBE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002EC04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10002EC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10002ECDC(void *a1)
{
  v2 = a1[11];
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for FilterViewModel.FilterConfiguration(319, v2, a1[13], v4);
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for LocalizedStringResource();
        if (v8 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v9 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002EEAC()
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  return *(v0 + 16);
}

uint64_t sub_10002EF20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002EEAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF78(char a1)
{
  v2 = *v1;
  v14 = *(v1 + 16);
  v3 = a1 & 1;
  v13 = a1;
  v4 = *(v2 + 80);
  v11 = *(v2 + 96);
  v12 = v4;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    v8 = v12;
    v10 = *(&v11 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v9 = v1;
    LOBYTE(v10) = v3;
    sub_10002F15C(v7, sub_100031DC4, &v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10002F234@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_10002F358(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10002F420()
{
  v0 = sub_100031780();

  return v0;
}

uint64_t sub_10002F458@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100031780();
  a1[1] = v2;
}

uint64_t sub_10002F498(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10002F4D8(v1, v2);
}

uint64_t sub_10002F4D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 128));
  v7 = v6[1];
  v18 = *v6;
  v19 = v7;
  v16 = a1;
  v17 = a2;
  v8 = *(v5 + 80);
  v14 = *(v5 + 96);
  v15 = v8;
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13[5] = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = a2;
    sub_10002F15C(v12, sub_100031CA0, v13, &type metadata for () + 8);
  }
}

uint64_t sub_10002F650()
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_10002F6D8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v15 = *(v1 + v3);
  v4 = a1 & 1;
  v14 = a1;
  v5 = *(v2 + 80);
  v12 = *(v2 + 96);
  v13 = v5;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(result);
    v9 = v13;
    v11 = *(&v12 + 1);
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v10 = v1;
    LOBYTE(v11) = v4;
    sub_10002F15C(v8, sub_100031D0C, &v9, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10002F838@<X0>(uint64_t a1@<X8>)
{
  v8 = *(*v1 + 88);
  v9 = *(*v1 + 104);
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  v4 = *(*v1 + 144);
  swift_beginAccess();
  v6 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v8, v9, v5);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_10002F9A8(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  swift_beginAccess();
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(v4 + 88), *(v4 + 104), v6);
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

uint64_t sub_10002FA84()
{
  v0 = sub_1000318B4();

  return v0;
}

uint64_t sub_10002FABC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 152));
  v7 = v6[1];
  v18 = *v6;
  v19 = v7;
  v16 = a1;
  v17 = a2;
  v8 = *(v5 + 80);
  v14 = *(v5 + 96);
  v15 = v8;
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13[5] = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = a2;
    sub_10002F15C(v12, sub_100031E9C, v13, &type metadata for () + 8);
  }
}

uint64_t sub_10002FC34()
{
  sub_100031940();
}

uint64_t sub_10002FC5C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 160);
  v6 = *(v2 + v5);
  v17 = a1;
  v18 = v6;
  v15 = *(v4 + 80);
  type metadata accessor for Array();
  v14 = *(v4 + 96);
  v16 = *(*(*(*(&v14 + 1) + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    v11 = v15;
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v12 = v2;
    v13 = a1;
    sub_10002F15C(v10, sub_100031BA4, &v11, &type metadata for () + 8);
  }
}

uint64_t sub_10002FE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - v8;
  if (sub_10002FF34(v7, v10, v11, v12))
  {
    sub_10002F838(v9);
    v13 = *(v9 + 2);
    v14 = *(v6 + 8);

    v14(v9, v5);
  }

  else
  {
    v13 = *(v4 + *(*v4 + 176));
  }

  return v13;
}

BOOL sub_10002FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v11 - v7);
  sub_10002F838(&v11 - v7);
  v9 = *v8;
  (*(v6 + 8))(v8, v5);
  return v9 > 0;
}

uint64_t sub_10003007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - v7);
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v26._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x80000001001BE650;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

  v13 = [v9 mainBundle];
  v27._object = 0xE000000000000000;
  v14._object = 0x80000001001BE680;
  v14._countAndFlagsBits = 0xD000000000000025;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v27)._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8, &qword_1001AF310);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001AEB90;
  sub_10002F838(v8);
  v18 = *v8;
  (*(v6 + 8))(v8, v5);
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  v19 = String.init(format:_:)();

  if (!sub_10002FF34(v20, v21, v22, v23))
  {
    v19 = countAndFlagsBits;
  }

  return v19;
}

uint64_t sub_1000302E0()
{
  v0 = sub_100031780();
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_10002FE08(v0, v1, v2, v3);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v5 = _ArrayProtocol.filter(_:)();
    return sub_10002FC5C(v5);
  }

  else
  {
    v7 = sub_10002FE08(v0, v1, v2, v3);

    return sub_10002FC5C(v7);
  }
}

uint64_t sub_1000303E0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 104);
  v3 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v14 - v6;
  (*(v2 + 88))(v3, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1001A699C(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v10;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v14[2] = v9;
  v14[3] = v11;
  v14[0] = sub_100031780();
  v14[1] = v12;
  sub_100027068();
  LOBYTE(v9) = StringProtocol.localizedStandardContains<A>(_:)();

  return v9 & 1;
}

uint64_t sub_1000305A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10002FE08(a1, a2, a3, a4);

  return sub_10002FC5C(v4);
}

void sub_1000305D8()
{
  sub_10002F4D8(0, 0xE000000000000000);
  sub_10002EF78(0);
  v0 = objc_opt_self();
  v2[4] = sub_10007F098;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_1001914E4;
  v2[3] = &unk_10020A9B8;
  v1 = _Block_copy(v2);
  [v0 animateWithDuration:0 delay:v1 options:0 animations:0.3 completion:0.0];
  _Block_release(v1);
}

uint64_t sub_1000306B8(char a1)
{
  if (a1)
  {
    v2 = (*(*(*v1 + 96) + 48))(*(*v1 + 80));
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  return sub_10002FABC(v2, v3);
}

uint64_t sub_100030744(uint64_t a1)
{
  v47 = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v52 = &v46 - v5;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 8);
  v9 = swift_getAssociatedTypeWitness();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 80);
  v17 = *(v2 + 96);
  v54 = v3;
  v18 = sub_1000319C8(v47, v16, v4, v17, v3);
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    (*(v13 + 16))(v15, v1 + *(*v1 + 216), v12);
    v19 = String.init(localized:)();
    v20 = v21;
  }

  v46 = v19;
  (*(v8 + 168))(v4, v8);
  v22 = v49;
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = sub_1000FB998(v22, v9, AssociatedConformanceWitness);
  v26 = v25;
  (*(v50 + 8))(v22, v51);
  (*(v48 + 8))(v11, v9);
  v58 = v24;
  v59 = v26;
  v27 = v52;
  (*(v54 + 88))(v4, v54);
  v28 = AssociatedTypeWitness;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = sub_1001A699C(v28, v29);
  v32 = v31;
  result = (*(v53 + 8))(v27, v28);
  v34 = 0;
  v60 = v30;
  v61 = v32;
  v62 = v46;
  v63 = v20;
  v35 = _swiftEmptyArrayStorage;
LABEL_4:
  if (v34 <= 3)
  {
    v36 = 3;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 + 1;
  v38 = 16 * v34 + 40;
  while (1)
  {
    if (v34 == 3)
    {
      sub_100009F70(&qword_100219F00, &qword_1001AF350);
      swift_arrayDestroy();
      v56 = v35;
      sub_100009F70(&qword_100219F08, &qword_1001AF358);
      sub_100031EF4();
      v45 = BidirectionalCollection<>.joined(separator:)();

      return v45;
    }

    if (v37 == ++v34)
    {
      break;
    }

    v39 = v38 + 16;
    v40 = *&v57[v38];
    v38 += 16;
    if (v40)
    {
      v41 = *(&v54 + v39);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016684C(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      v43 = *(v35 + 2);
      v42 = *(v35 + 3);
      if (v43 >= v42 >> 1)
      {
        result = sub_10016684C((v42 > 1), v43 + 1, 1, v35);
        v35 = result;
      }

      *(v35 + 2) = v43 + 1;
      v44 = &v35[16 * v43];
      *(v44 + 4) = v41;
      *(v44 + 5) = v40;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_100030CD0(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = *v5;
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001AD8A0;
  v13 = (*(*(v11 + 96) + 40))(*(v11 + 80));
  *(v12 + 56) = &type metadata for AnalyticsString;
  *(v12 + 64) = &off_10021CBD0;
  *(v12 + 32) = 0;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 96) = &type metadata for AnalyticsPageName;
  *(v12 + 104) = &off_10021CBA8;
  *(v12 + 72) = 9;
  *(v12 + 136) = &type metadata for AnalyticsModuleName;
  *(v12 + 144) = &off_10021CC30;
  *(v12 + 112) = a1;
  *(v12 + 176) = &type metadata for AnalyticsModuleAction;
  *(v12 + 184) = &off_10021CC08;
  *(v12 + 152) = a2;
  *(v12 + 160) = a3;
  *(v12 + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v30 = &type metadata for AnalyticsString;
  v31 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v28 = v15;
  v29 = v16;
  sub_1000109A4(a2, a3, a4);
  v33 = v12;
  v17 = *(v12 + 16);
  v18 = *(v12 + 24);

  if (v17 >= v18 >> 1)
  {
    v12 = sub_1001666DC((v18 > 1), v17 + 1, 1, v12);
    v33 = v12;
  }

  v19 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  sub_1000EB0D0(v17, v21, &v33, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v23 = String._bridgeToObjectiveC()();
  v24 = swift_allocObject();
  v24[2] = 0xD00000000000001ELL;
  v24[3] = 0x80000001001BDDE0;
  v24[4] = v12;
  v31 = sub_100010AAC;
  v32 = v24;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1000DCA40;
  v30 = &unk_10020A990;
  v25 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

uint64_t sub_100031018(uint64_t a1)
{
  v3 = (*(*(*v1 + 96) + 40))(*(*v1 + 80));
  sub_1000DCEDC(v3, v4, 9, a1);
}

uint64_t *sub_1000310B4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = *(*v0 + 144);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v3, *(v1 + 104), v6);
  (*(*(v7 - 8) + 8))(v0 + v5, v7);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 168));

  v8 = *(*v0 + 216);
  v9 = type metadata accessor for LocalizedStringResource();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 224);
  v11 = type metadata accessor for ObservationRegistrar();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1000313B0()
{
  sub_1000310B4();

  return swift_deallocClassInstance();
}

uint64_t sub_100031420(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100031470()
{

  return swift_deallocObject();
}

uint64_t sub_1000314B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000314C8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v12 = *(v4 + 80);
  v19 = *(v5 + 96);
  v20 = *(*(*(*(&v19 + 1) + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v13);
    *&v15 = v12;
    *(&v15 + 1) = v6;
    v16 = v19;
    *(&v19 - 2) = v15;
    *(&v19 - 1) = v16;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_10002F15C(v18, sub_100031D44, (&v19 - 2), &type metadata for () + 8);
  }
}

uint64_t sub_100031780()
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_10003180C(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v9 = *(*v1 + 80);
  v10 = v3;
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  sub_10002F15C(KeyPath, sub_100031C48, &v6, &type metadata for () + 8);
}

uint64_t sub_1000318B4()
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_100031940()
{
  KeyPath = swift_getKeyPath();
  sub_10002F0BC(KeyPath);

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_1000319C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a5 + 104))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t sub_100031B24@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100031940();
}

__n128 sub_100031B98(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100031BA4()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 160)) = *(v0 + 24);
}

uint64_t sub_100031CA0()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 128));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100031D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002EEAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031DEC@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t sub_100031E48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100031E9C()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 152));
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_100031EF4()
{
  result = qword_100219F10;
  if (!qword_100219F10)
  {
    sub_10000B3DC(&qword_100219F08, &qword_1001AF358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219F10);
  }

  return result;
}

int *sub_10003200C()
{
  v0 = sub_100009F70(&qword_100219FA8, &qword_1001AF3B8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v43 - v4;
  v56 = type metadata accessor for Song();
  v48 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Track();
  v60 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v43 - v10;
  v61 = sub_100009F70(&qword_100219FB0, &qword_1001AF3C0);
  __chkstk_darwin(v61);
  v12 = &v43 - v11;
  v13 = sub_100009F70(&qword_100219FB8, &qword_1001AF3C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_100009F70(&qword_100219FC0, &unk_1001AF3D0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  Playlist.tracks.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000D52C(v15, &qword_100219FB8, &qword_1001AF3C8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v43 = v17;
    (*(v17 + 16))(v20, v22, v16);
    sub_1000328A0(&qword_100219FC8, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v24 = *(v61 + 9);
    sub_1000328A0(&qword_100219FD0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v24] == v62[0])
    {
      v61 = _swiftEmptyArrayStorage;
    }

    else
    {
      v53 = (v60 + 4);
      v54 = (v60 + 2);
      v52 = (v60 + 11);
      v51 = enum case for Track.song(_:);
      v50 = (v48 + 56);
      v45 = (v60 + 1);
      v44 = (v60 + 12);
      v60 = (v48 + 32);
      v49 = (v48 + 48);
      v61 = _swiftEmptyArrayStorage;
      v46 = v7;
      v47 = v5;
      v55 = v16;
      do
      {
        v25 = v22;
        v26 = v5;
        v27 = v3;
        v28 = dispatch thunk of Collection.subscript.read();
        v29 = v57;
        (*v54)(v57);
        v28(v62, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v30 = v58;
        (*v53)(v58, v29, v7);
        v31 = (*v52)(v30, v7);
        if (v31 == v51)
        {
          (*v44)(v30, v7);
          v3 = v27;
          v32 = v30;
          v33 = v56;
          (*v60)(v27, v32, v56);
          (*v50)(v27, 0, 1, v33);
        }

        else
        {
          v3 = v27;
          v34 = v27;
          v35 = v56;
          (*v50)(v34, 1, 1, v56);
          v36 = v30;
          v33 = v35;
          (*v45)(v36, v7);
        }

        v5 = v26;
        sub_1000328F0(v3, v26);
        if ((*v49)(v26, 1, v33) == 1)
        {
          sub_10000D52C(v26, &qword_100219FA8, &qword_1001AF3B8);
          v22 = v25;
        }

        else
        {
          v37 = v3;
          v38 = *v60;
          (*v60)(v59, v26, v33);
          v22 = v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = v61;
          }

          else
          {
            v39 = sub_100166824(0, v61[2] + 1, 1, v61);
          }

          v41 = v39[2];
          v40 = v39[3];
          if (v41 >= v40 >> 1)
          {
            v39 = sub_100166824((v40 > 1), v41 + 1, 1, v39);
          }

          v39[2] = v41 + 1;
          v42 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v61 = v39;
          v38(v39 + v42 + *(v48 + 72) * v41, v59, v33);
          v3 = v37;
          v7 = v46;
          v5 = v47;
        }

        v16 = v55;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v12[v24] != v62[0]);
    }

    sub_10000D52C(v12, &qword_100219FB0, &qword_1001AF3C0);
    (*(v43 + 8))(v22, v16);
    return v61;
  }
}

uint64_t sub_1000327D4(uint64_t a1)
{
  *(a1 + 8) = sub_100032858(&qword_100219F98, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  result = sub_100032858(&qword_100219FA0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000328A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_100219FC0, &unk_1001AF3D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000328F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219FA8, &qword_1001AF3B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100032974()
{
  result = qword_100219FD8;
  if (!qword_100219FD8)
  {
    type metadata accessor for Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219FD8);
  }

  return result;
}

unint64_t sub_1000329D0()
{
  result = qword_100219FE0;
  if (!qword_100219FE0)
  {
    sub_10000B3DC(&qword_100219FE8, &unk_1001B0DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219FE0);
  }

  return result;
}

uint64_t sub_100032A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppleMusicFetcher();
  *(v3 + 16) = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100032B08;

  return sub_10018482C(a1, a2, a3);
}

uint64_t sub_100032B08()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100032C44, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100032C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032CA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032D3C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_100032E0C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100032EA4(uint64_t a1, int a2)
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

uint64_t sub_100032EEC(uint64_t result, int a2, int a3)
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

uint64_t sub_100032F58(uint64_t a1)
{
  v2 = sub_100032FE0(a1);
  v3 = v1 + 4;
  if (v2)
  {
    v3 = v1;
  }

  v4 = *v3;

  return v4;
}

BOOL sub_100032FE0(uint64_t a1)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t sub_100033050(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_10003311C(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000331E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 96) + 16))
  {
    return URL.appending(queryItems:)();
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

void sub_100033274(void *a1)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v5 = a1[2];
  v4 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + 104);
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 16;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001AF560;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001666DC(1, 5, 1, inited);
  v13 = v9;
  sub_1000109BC(&aBlock, v20);
  sub_1000EB0D0(4, v20, &v13, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001BDDE0;
  v11[4] = v9;
  v18 = sub_100010AAC;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020AB90;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1000334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = LocalizedStringKey.init(stringLiteral:)();
  *a7 = v13;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17 & 1;
  *(a7 + 24) = v19;
  *(a7 + 32) = result;
  *(a7 + 40) = v22;
  *(a7 + 48) = v21 & 1;
  *(a7 + 56) = v23;
  *(a7 + 64) = a1;
  *(a7 + 72) = a2;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t sub_1000335B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000335F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100033620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100033668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000336DC()
{

  return swift_deallocObject();
}

uint64_t sub_10003371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100033744(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[20] = v4;
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = sub_100033840;

  return sub_100033D7C(v4, a1);
}

uint64_t sub_100033840()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100033C58;
  }

  else
  {
    v2 = sub_100033954;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033954()
{
  v1 = [objc_allocWithZone(CLKWatchFaceLibrary) init];
  v0[23] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_100033AA0;
  v5 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_10021A1B0, &unk_1001AF650);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100034600;
  v0[13] = &unk_10020AC50;
  v0[14] = v5;
  [v1 addWatchFaceAtURL:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100033AA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100033CBC;
  }

  else
  {
    v2 = sub_100033BB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033BB0()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_100035A14(v2, "Failed to remove file at %s possibly does not exist", v7);
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100033C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033CBC(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  v5 = v1[19];
  v4 = v1[20];
  v6 = v1[18];
  swift_willThrow();

  sub_100035A14(v4, "Failed to remove file at %s possibly does not exist", v9);
  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100033D7C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100033E80, 0, 0);
}

uint64_t sub_100033E80()
{
  v1 = v0[5];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[11] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_100028124(v1, v3);
  (*(v4 + 40))(v3, v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100034068;
  v7 = v0[9];
  v6 = v0[10];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_100034068(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[9];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10003454C;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[14] = v9;
    v4[15] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_100034240;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100034240()
{
  v1 = *(v0 + 104);
  sub_1000357A8(*(v0 + 64));
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 88);
    (*(v0 + 112))(*(v0 + 80), *(v0 + 48));

LABEL_3:

    v4 = *(v0 + 8);
    goto LABEL_4;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v7, v2);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v0 + 16) = 0;
  LODWORD(v6) = [v9 copyItemAtURL:v12 toURL:v14 error:v0 + 16];

  v16 = *(v0 + 16);
  if (!v6)
  {
    v22 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = [v8 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    *(v0 + 24) = 0;
    v27 = [v23 removeItemAtURL:v25 error:v0 + 24];

    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v35 = *(v0 + 80);
    v30 = *(v0 + 48);
    v32 = *(v0 + 24);
    v31 = *(v0 + 32);
    if (v27)
    {
      swift_willThrow();
      v33 = v32;
    }

    else
    {
      v34 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v28(v31, v30);
    v28(v35, v30);
    goto LABEL_3;
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);
  v21 = v16;
  v17(v18, v20);

  v4 = *(v0 + 8);
LABEL_4:

  return v4();
}

uint64_t sub_10003454C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034600(uint64_t a1, void *a2)
{
  v3 = sub_100028124((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000346AC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000347D4, 0, 0);
}

uint64_t sub_1000347D4()
{
  v1 = v0[4];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[13] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_100028124(v1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000349E4;
  v7 = v0[11];
  v6 = v0[12];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_1000349E4(void *a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[11];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000356C8;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[16] = v9;
    v4[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_100034BBC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100034BBC()
{
  v71 = v0;
  v1 = *(v0 + 120);
  sub_1000357A8(*(v0 + 72));
  if (v1)
  {
    v2 = *(v0 + 104);
    (*(v0 + 128))(*(v0 + 96), *(v0 + 40));

LABEL_4:

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  sub_100028124(v3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 72);
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  URL.lastPathComponent.getter();
  v6(v10, v11);
  URL.appendingPathComponent(_:isDirectory:)();

  v6(v7, v11);
  v12 = objc_opt_self();
  *(v0 + 144) = v12;
  v13 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  *(v0 + 16) = 0;
  v20 = [v13 copyItemAtURL:v16 toURL:v18 error:v0 + 16];

  v21 = *(v0 + 16);
  if (!v20)
  {
    v25 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = [*(v0 + 144) defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    *(v0 + 24) = 0;
    v30 = [v26 removeItemAtURL:v28 error:v0 + 24];

    v31 = *(v0 + 24);
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v69 = *(v0 + 96);
    v34 = *(v0 + 80);
    v35 = *(v0 + 40);
    if (v30)
    {
      swift_willThrow();
      v36 = v31;
    }

    else
    {
      v37 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v32(v34, v35);
    v32(v69, v35);
    goto LABEL_4;
  }

  v22 = v21;
  v23 = Data.init(contentsOf:options:)();
  *(v0 + 152) = v23;
  *(v0 + 160) = v24;
  v38 = v23;
  v39 = v24;
  v40 = objc_allocWithZone(UIImage);
  sub_100035D5C(v38, v39);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v42 = [v40 initWithData:isa];
  *(v0 + 168) = v42;

  sub_100035DB0(v38, v39);
  if (!v42)
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 80);
    v46 = *(v0 + 48);
    v45 = *(v0 + 56);
    v47 = *(v0 + 40);
    v48 = type metadata accessor for Logger();
    sub_10001FDF4(v48, qword_100230610);
    (*(v46 + 16))(v45, v44, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 128);
    v53 = *(v0 + 56);
    v54 = *(v0 + 40);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v67 = v52;
      v56 = swift_slowAlloc();
      v70 = v56;
      *v55 = 136315138;
      sub_100035F10();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v49;
      v59 = v58;
      v67(v53, v54);
      v60 = sub_10005D4E8(v57, v59, &v70);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, log, v50, "Failed to create image from %s", v55, 0xCu);
      sub_100021498(v56);

      sub_100035DB0(v38, v39);
    }

    else
    {
      sub_100035DB0(v38, v39);

      v52(v53, v54);
    }

    v61 = *(v0 + 128);
    v62 = *(v0 + 96);
    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
    v65 = *(v0 + 40);
    sub_100035A14(v64, "Failed to delete wallpaper at %s", v66);

    v61(v64, v65);
    v61(v62, v65);

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  *v43 = v0;
  v43[1] = sub_100035270;

  return sub_100035F68(v42);
}

uint64_t sub_100035270()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000354E8;
  }

  else
  {
    v2 = sub_1000353B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000353B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  sub_100035DB0(v2, v1);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  sub_100035A14(v6, "Failed to delete wallpaper at %s", v10);

  v3(v6, v7);
  v3(v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000354E8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);

  sub_100035DB0(v2, v1);
  sub_100035A14(v3, "Failed to delete wallpaper at %s", v18);
  v4 = [*(v0 + 144) defaultManager];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  *(v0 + 24) = 0;
  v8 = [v4 removeItemAtURL:v6 error:v0 + 24];

  v9 = *(v0 + 24);
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);
  v19 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);
  if (v8)
  {
    swift_willThrow();
    v14 = v9;
  }

  else
  {
    v15 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10(v12, v13);
  v10(v19, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000356C8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000357A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  static URL.temporaryDirectory.getter();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 globallyUniqueString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v20 = 0;
  LOBYTE(v10) = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v20];

  v16 = v20;
  if (v10)
  {
    (*(v3 + 32))(a1, v8, v2);
    return v16;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v11)(v8, v2);
  }
}

void sub_100035A14(uint64_t a1, char *a2, ...)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v27 = 0;
  v12 = [v8 removeItemAtURL:v10 error:&v27];

  v13 = v27;
  if (v12)
  {

    v14 = v13;
  }

  else
  {
    v26 = v27;
    v15 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10001FDF4(v16, qword_100230610);
    (*(v5 + 16))(v7, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a2;
      v21 = v20;
      v27 = v20;
      *v19 = 136315138;
      sub_100035F10();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = sub_10005D4E8(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, v26, v19, 0xCu);
      sub_100021498(v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_100035D5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100035DB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100035E04(uint64_t a1)
{
  v1 = [objc_opt_self() creationRequestForAssetFromImage:a1];
}

uint64_t sub_100035E58(uint64_t a1, int a2, void *a3)
{
  v5 = sub_100028124((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

unint64_t sub_100035F10()
{
  result = qword_10021A1A8;
  if (!qword_10021A1A8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A1A8);
  }

  return result;
}

uint64_t sub_100035F88()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[18];
  v5 = [objc_opt_self() sharedPhotoLibrary];
  v1[19] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v1[14] = sub_100036380;
  v1[15] = v6;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001914E4;
  v1[13] = &unk_10020AC00;
  v7 = _Block_copy(v3);
  v1[20] = v7;
  v8 = v4;

  v1[2] = v1;
  v1[3] = sub_100036150;
  v9 = swift_continuation_init();
  v1[17] = sub_100009F70(&qword_10021A1B0, &unk_1001AF650);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100035E58;
  v1[13] = &unk_10020AC28;
  v1[14] = v9;
  [v5 performChanges:v7 completionHandler:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_100036150()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1000362CC;
  }

  else
  {
    v2 = sub_100036260;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100036260()
{
  v1 = *(v0 + 160);

  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000362CC(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  _Block_release(v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_100036348()
{

  return swift_deallocObject();
}

uint64_t sub_100036388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000363B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10003641C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100038A58(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_10003656C()
{
  v0 = sub_100038AB0();

  return v0;
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 152);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_100009F70(&qword_10021A250, &unk_1001AF798);
  v13 = *(v6 + 80);
  sub_100038B78();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_1000367D0(v11, sub_100031E9C, v12, &type metadata for () + 8);
  }
}

uint64_t sub_1000368A8()
{
  v1 = *(v0 + *(*v0 + 120));
  (*(*(*v0 + 88) + 104))(*(*v0 + 80), *(*v0 + 88));
  swift_getAssociatedTypeWitness();
  v2 = Array.count.getter();

  v3 = 4;
  if (v2 < 4)
  {
    v3 = v2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036994@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100036730(KeyPath);

  v4 = *(*v1 + 176);
  swift_beginAccess();
  return sub_100038CFC(v1 + v4, a1);
}

uint64_t sub_100036A44(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100038CFC(a1, &v6 - v3);
  return sub_100036AD8(v4);
}

uint64_t sub_100036AD8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = *(v4 + 176);
  swift_beginAccess();
  sub_100038CFC(v1 + v8, v7);
  v14[0] = *(v4 + 80);
  sub_100038D6C();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_10000D52C(v7, &qword_10021A248, &unk_1001AF750);
  if (v9)
  {
    swift_beginAccess();
    sub_100038E20(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_1000367D0(v12, sub_100038EC4, &v14[-2], &type metadata for () + 8);
  }

  return sub_10000D52C(a1, &qword_10021A248, &unk_1001AF750);
}

uint64_t sub_100036D00(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  sub_100038E20(a2, a1 + v4);
  return swift_endAccess();
}

char *sub_100036D78()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_1001AF670;
  (*(v1 + 104))(v3, enum case for GridItem.Size.flexible(_:), v0);
  GridItem.init(_:spacing:alignment:)();
  v7 = sub_1000368A8();
  return sub_1000F6B38(v6, v7);
}

BOOL sub_100036F38()
{
  v1 = v0;
  v2 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_10000D52C(v4, qword_100218748, &unk_1001AD110);
  return v6 != 1 && *(v1 + 40) != 0;
}

BOOL sub_1000370FC()
{
  v1 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_10000D52C(v3, qword_100218748, &unk_1001AD110);
  return v5;
}

uint64_t sub_10003722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 88))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a3, v14, 1, v16);
}

uint64_t sub_1000374A0()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_100037514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = swift_allocObject();
  sub_100037594(a1, a2, a3, a4, a5, v6);
  return v12;
}

char *sub_100037594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = *v6;
  v14 = &v6[*(*v6 + 128)];
  *v14 = LocalizedStringKey.init(stringLiteral:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  v18 = &v6[*(*v6 + 136)];
  *v18 = LocalizedStringKey.init(stringLiteral:)();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  v22 = &v6[*(*v6 + 144)];
  *v22 = LocalizedStringKey.init(stringLiteral:)();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  v26 = &v6[*(*v6 + 152)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v6[*(*v6 + 160)] = 0x4008000000000000;
  v27 = *(*v6 + 168);
  if (qword_100218450 != -1)
  {
    swift_once();
  }

  *&v6[v27] = qword_100230608;
  v28 = *(*v6 + 176);
  v29 = type metadata accessor for AttributedString();
  (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);

  ObservationRegistrar.init()();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  *(v6 + 5) = a4;
  (*(*(*(v13 + 80) - 8) + 32))(&v6[*(*v6 + 112)], a5);
  v6[*(*v6 + 120)] = a6 & 1;
  return v6;
}

uint64_t sub_100037854()
{
  sub_10004FF88();
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_1000378C4()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 80))(v2, v3);
}

void sub_100037930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + *(*v3 + 168));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100150C00(a1, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = v6[5];
  v10 = v6[6];
  sub_100028124(v6 + 2, v9);
  if ((*(v10 + 32))(v9, v10) == 2)
  {
    v11 = 19;
  }

  else
  {
    v12 = v6[5];
    v13 = v6[6];
    sub_100028124(v6 + 2, v12);
    if ((*(v13 + 32))(v12, v13) != 3)
    {
      return;
    }

    v11 = 20;
  }

  v14 = v3[2];
  v15 = v3[3];
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 13;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v11;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (*(a2 + 72))
  {
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v25 = v17;
  v26 = v18;

  sub_1000109A4(v11, 0, 3u);

  v19 = sub_1001666DC(1, 5, 1, inited);
  v23 = v19;
  sub_1000109BC(&aBlock, v30);
  sub_1000EB0D0(4, v30, &v23, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v20 = String._bridgeToObjectiveC()();
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001ELL;
  v21[3] = 0x80000001001BDDE0;
  v21[4] = v19;
  v28 = sub_100038F2C;
  v29 = v21;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000DCA40;
  v27 = &unk_10020ADA8;
  v22 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  sub_10000FCD8(v11, 0, 3u);
  _Block_release(v22);
}

uint64_t sub_100037CE0(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  type metadata accessor for AttributeContainer();
  v2[24] = swift_task_alloc();
  sub_100009F70(&qword_10021A248, &unk_1001AF750);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for AttributedString();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v5;
  v2[31] = v4;

  return _swift_task_switch(sub_100037E60, v5, v4);
}

uint64_t sub_100037E60()
{
  v0[32] = (*(*(v0[23] + 88) + 80))(*(v0[23] + 80));
  v0[33] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[34] = v3;
    sub_100192BD0(_swiftEmptyArrayStorage);
    type metadata accessor for DocumentReadingOptionKey(0);
    sub_100038EE0(&qword_1002189E0, type metadata accessor for DocumentReadingOptionKey, &unk_1001AD664);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[35] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000380D0;
    v5 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_10021A268, &qword_1001AF7B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10003846C;
    v0[13] = &unk_10020ADD0;
    v0[14] = v5;
    [v2 loadFromHTMLWithString:v3 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000380D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_100038354;
  }

  else
  {

    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_1000381E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000381E8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];

  v8 = v0[18];

  v9 = v8;
  AttributedString.init(_:)();
  v0[20] = v7;
  sub_100038CA8();

  AttributedString.subscript.setter();
  (*(v5 + 16))(v6, v3, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_100036AD8(v6);

  (*(v5 + 8))(v3, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100038354()
{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[25];
  v7 = v0[26];

  swift_willThrow();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v3 + 56))(v4, 0, 1, v7);
  sub_100036AD8(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003846C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_100028124((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      type metadata accessor for DocumentAttributeKey(0);
      sub_100038EE0(&qword_1002189D0, type metadata accessor for DocumentAttributeKey, &unk_1001AD624);
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v13 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

void sub_1000385A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 14;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_1000109A4(a1, a2, a3);

  v14 = sub_1001666DC(1, 5, 1, inited);
  v18 = v14;
  sub_1000109BC(&aBlock, v25);
  sub_1000EB0D0(4, v25, &v18, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v14;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_10020AD58;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

char *sub_100038828()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  sub_10000D52C(v0 + *(*v0 + 176), &qword_10021A248, &unk_1001AF750);
  v2 = *(*v0 + 184);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000389E8()
{
  sub_100038828();

  return swift_deallocClassInstance();
}

void sub_100038A58(uint64_t a1)
{
  if (!qword_10021A240)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10021A240);
    }
  }
}

uint64_t sub_100038AB0()
{
  KeyPath = swift_getKeyPath();
  sub_100036730(KeyPath);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_100038B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100038B6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100038B78()
{
  result = qword_10021A258;
  if (!qword_10021A258)
  {
    sub_10000B3DC(&qword_10021A250, &unk_1001AF798);
    sub_100038BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A258);
  }

  return result;
}

unint64_t sub_100038BFC()
{
  result = qword_10021A260;
  if (!qword_10021A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A260);
  }

  return result;
}

uint64_t sub_100038C50()
{

  return swift_deallocObject();
}

unint64_t sub_100038CA8()
{
  result = qword_10021A270;
  if (!qword_10021A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A270);
  }

  return result;
}

uint64_t sub_100038CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038D6C()
{
  result = qword_10021A278;
  if (!qword_10021A278)
  {
    sub_10000B3DC(&qword_10021A248, &unk_1001AF750);
    sub_100038EE0(qword_10021A280, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A278);
  }

  return result;
}

uint64_t sub_100038E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100038F44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v1;
  type metadata accessor for VenueEventViewModel(255, &v8);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    *&v8 = v2;
    sub_1000391A4(319);
    if (v5 <= 0x3F)
    {
      v11 = 0;
      *(&v8 + 1) = v4;
      sub_10000B304(319);
      if (v7 <= 0x3F)
      {
        v12 = 0;
        *&v9 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10003900C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1000390DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000391A4(uint64_t a1)
{
  if (!qword_10021A308)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10021A308);
    }
  }
}

uint64_t sub_100039288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002F650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000392E0(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for VenueEventViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_10003933C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for VenueEventViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_10003939C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v198 = *(a1 - 1);
  v196 = *(v198 + 64);
  v3 = __chkstk_darwin(a1);
  v185 = v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v195 = v155 - v6;
  v7 = *(v5 + 24);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v187 = *(v8 - 8);
  v188 = v8;
  __chkstk_darwin(v8);
  v184 = v155 - v9;
  v192 = type metadata accessor for NavigationPath();
  v193 = a1;
  *&v201 = a1[2];
  v183 = a1[4];
  type metadata accessor for VenueEventListHeader(255, v201, v183, v10);
  v11 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v226 = &protocol witness table for EmptyView;
  v227 = WitnessTable;
  v228 = &protocol witness table for EmptyView;
  v13 = swift_getWitnessTable();
  *&v218 = v11;
  *(&v218 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v191 = type metadata accessor for ModifiedContent();
  v190 = sub_10000B3DC(&qword_10021A318, &qword_1001AF8F8);
  v189 = sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
  v14 = type metadata accessor for Array();
  *&v200 = a1[5];
  v197 = *(*(v200 + 8) + 16);
  v194 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  v17 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v218 = v14;
  *(&v218 + 1) = AssociatedTypeWitness;
  *&v219 = v16;
  *(&v219 + 1) = v17;
  v220 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v19 = type metadata accessor for Section();
  v225 = sub_10004248C();
  v20 = swift_getWitnessTable();
  v222 = &protocol witness table for EmptyView;
  v223 = v20;
  v224 = &protocol witness table for EmptyView;
  v21 = swift_getWitnessTable();
  *&v218 = v19;
  *(&v218 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for TupleView();
  v23 = swift_getWitnessTable();
  *&v218 = &type metadata for Never;
  *(&v218 + 1) = v22;
  *&v219 = &protocol witness table for Never;
  *(&v219 + 1) = v23;
  v24 = type metadata accessor for List();
  v25 = type metadata accessor for PlainListStyle();
  v26 = swift_getWitnessTable();
  *&v218 = v24;
  *(&v218 + 1) = v25;
  *&v219 = v26;
  *(&v219 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v218 = v24;
  *(&v218 + 1) = v25;
  *&v219 = v26;
  *(&v219 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v218 = OpaqueTypeMetadata2;
  *(&v218 + 1) = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v218 = OpaqueTypeMetadata2;
  *(&v218 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v218 = v29;
  *(&v218 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v218 = v29;
  *(&v218 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  *&v218 = v31;
  *(&v218 + 1) = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  *&v218 = v31;
  *(&v218 + 1) = v32;
  v34 = swift_getOpaqueTypeConformance2();
  *&v218 = v33;
  *(&v218 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  *&v218 = v33;
  *(&v218 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  *&v218 = v35;
  *(&v218 + 1) = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  *&v218 = v35;
  *(&v218 + 1) = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_100027068();
  *&v218 = v37;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v38;
  *(&v219 + 1) = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  *&v218 = v37;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v38;
  *(&v219 + 1) = v39;
  v41 = swift_getOpaqueTypeConformance2();
  *&v218 = v40;
  *(&v218 + 1) = &type metadata for Bool;
  *&v219 = v41;
  *(&v219 + 1) = &protocol witness table for Bool;
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = sub_10000B3DC(&qword_10021A348, &qword_1001AF918);
  *&v218 = v40;
  *(&v218 + 1) = &type metadata for Bool;
  *&v219 = v41;
  *(&v219 + 1) = &protocol witness table for Bool;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_10000B3DC(&qword_10021A350, &qword_1001AF920);
  v46 = sub_100042650();
  *&v218 = v45;
  *(&v218 + 1) = v46;
  v47 = swift_getOpaqueTypeConformance2();
  *&v218 = v42;
  *(&v218 + 1) = v43;
  *&v219 = v44;
  *(&v219 + 1) = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  *&v218 = v42;
  *(&v218 + 1) = v43;
  *&v219 = v44;
  *(&v219 + 1) = v47;
  v49 = swift_getOpaqueTypeConformance2();
  *&v218 = v48;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v49;
  *(&v219 + 1) = v39;
  v50 = swift_getOpaqueTypeMetadata2();
  *&v218 = v48;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v49;
  *(&v219 + 1) = v39;
  v51 = swift_getOpaqueTypeConformance2();
  *&v218 = v48;
  *(&v218 + 1) = &type metadata for Solarium;
  *&v219 = v50;
  *(&v219 + 1) = v49;
  v220 = &protocol witness table for Solarium;
  v221 = v51;
  v160 = swift_getOpaqueTypeMetadata2();
  *&v218 = v48;
  *(&v218 + 1) = &type metadata for Solarium;
  *&v219 = v50;
  *(&v219 + 1) = v49;
  v220 = &protocol witness table for Solarium;
  v221 = v51;
  v159 = swift_getOpaqueTypeConformance2();
  v52 = type metadata accessor for NavigationStack();
  v165 = *(v52 - 8);
  __chkstk_darwin(v52);
  v156 = v155 - v53;
  v54 = sub_100042730();
  v55 = sub_100042784();
  v56 = v194;
  *&v218 = v194;
  *(&v218 + 1) = &type metadata for ArtistFetcher;
  v57 = v200;
  *&v219 = &type metadata for PromotionalPlaylistFetcher;
  *(&v219 + 1) = v200;
  v220 = v54;
  v221 = v55;
  v58 = type metadata accessor for MusicEventView(255, &v218);
  v189 = v58;
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  *&v218 = v52;
  *(&v218 + 1) = v56;
  v61 = v52;
  v157 = v59;
  v158 = v52;
  v62 = v56;
  *&v219 = v58;
  *(&v219 + 1) = v59;
  v63 = v59;
  v64 = v197;
  v220 = v197;
  v221 = v60;
  v155[1] = v60;
  v65 = swift_getOpaqueTypeMetadata2();
  v170 = *(v65 - 8);
  __chkstk_darwin(v65);
  v191 = v155 - v66;
  v68 = type metadata accessor for FilterView(255, v62, v57, v67);
  *&v218 = v61;
  *(&v218 + 1) = v62;
  v69 = v62;
  *&v219 = v189;
  *(&v219 + 1) = v63;
  v220 = v64;
  v221 = v60;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = swift_getWitnessTable();
  v163 = v70;
  v164 = v65;
  *&v218 = v65;
  *(&v218 + 1) = v68;
  v72 = v68;
  v161 = v68;
  v162 = v71;
  *&v219 = v70;
  *(&v219 + 1) = v71;
  v73 = v70;
  v74 = v71;
  v75 = swift_getOpaqueTypeMetadata2();
  v168 = v75;
  v174 = *(v75 - 8);
  __chkstk_darwin(v75);
  v192 = v155 - v76;
  *&v218 = v65;
  *(&v218 + 1) = v72;
  *&v219 = v73;
  *(&v219 + 1) = v74;
  v166 = swift_getOpaqueTypeConformance2();
  *&v218 = v75;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v166;
  *(&v219 + 1) = &protocol witness table for String;
  v171 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v169 = swift_getOpaqueTypeMetadata2();
  v175 = *(v169 - 8);
  __chkstk_darwin(v169);
  v190 = v155 - v77;
  v176 = type metadata accessor for ModifiedContent();
  v179 = *(v176 - 8);
  __chkstk_darwin(v176);
  v167 = v155 - v78;
  v177 = type metadata accessor for ModifiedContent();
  v180 = *(v177 - 8);
  __chkstk_darwin(v177);
  v172 = v155 - v79;
  type metadata accessor for AccessibilityAttachmentModifier();
  v80 = type metadata accessor for ModifiedContent();
  v81 = *(v80 - 8);
  v181 = v80;
  v182 = v81;
  v82 = __chkstk_darwin(v80);
  v173 = v155 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v178 = v155 - v84;
  *&v85 = v201;
  *(&v85 + 1) = v69;
  *&v86 = v183;
  *(&v86 + 1) = v200;
  v200 = v86;
  v201 = v85;
  v206 = v85;
  v207 = v86;
  v208 = v199;
  v87 = v156;
  NavigationStack.init<>(root:)();
  v88 = v193;
  v89 = sub_10003933C(v193);
  v91 = v90;
  v93 = v92;
  v204 = v201;
  v205 = v200;
  swift_getKeyPath();
  v215 = v89;
  v216 = v91;
  v217 = v93;
  v218 = v201;
  v219 = v200;
  type metadata accessor for VenueEventViewModel(255, &v218);
  type metadata accessor for Binding();
  v94 = v184;
  Binding.subscript.getter();

  v95 = swift_allocObject();
  v96 = v200;
  *(v95 + 16) = v201;
  *(v95 + 32) = v96;
  swift_checkMetadataState();
  v97 = v158;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v187 + 8))(v94, v188);
  (*(v165 + 8))(v87, v97);
  v98 = v199;
  v99 = sub_10003933C(v88);
  v101 = v100;
  v103 = v102;
  v202 = v201;
  v203 = v200;
  swift_getKeyPath();
  *&v218 = v99;
  *(&v218 + 1) = v101;
  *&v219 = v103;
  Binding.subscript.getter();

  v183 = v215;
  v165 = v216;
  LODWORD(v184) = v217;

  v104 = v198;
  v105 = v198 + 16;
  v106 = *(v198 + 16);
  v107 = v195;
  v106(v195, v98, v88);
  v108 = v106;
  v188 = v105;
  v197 = *(v104 + 80);
  v109 = (v197 + 48) & ~v197;
  v110 = swift_allocObject();
  v111 = v200;
  *(v110 + 16) = v201;
  *(v110 + 32) = v111;
  v112 = *(v104 + 32);
  v112(v110 + v109, v107, v88);
  v194 = v112;
  v198 = v104 + 32;
  v113 = v185;
  v108(v185, v199, v88);
  v189 = v108;
  v187 = v109;
  v114 = swift_allocObject();
  v115 = v200;
  *(v114 + 16) = v201;
  *(v114 + 32) = v115;
  v116 = v114 + v109;
  v117 = v88;
  v112(v116, v113, v88);
  swift_checkMetadataState();
  v118 = v191;
  v119 = v164;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v170 + 8))(v118, v119);
  v120 = v199;
  sub_1000392E0(v117);
  v121 = sub_100031780();
  v123 = v122;

  *&v218 = v121;
  *(&v218 + 1) = v123;
  v124 = v195;
  v108(v195, v120, v117);
  v125 = v187;
  v126 = swift_allocObject();
  v127 = v200;
  *(v126 + 16) = v201;
  *(v126 + 32) = v127;
  v194(v126 + v125, v124, v117);
  v128 = v168;
  v129 = v166;
  v130 = v192;
  View.onChange<A>(of:initial:_:)();

  (*(v174 + 8))(v130, v128);
  v131 = v195;
  v132 = v120;
  v133 = v193;
  v189(v195, v132, v193);
  v134 = v187;
  v135 = swift_allocObject();
  v136 = v200;
  *(v135 + 16) = v201;
  *(v135 + 32) = v136;
  v137 = v131;
  v194(v135 + v134, v131, v133);
  *&v218 = v128;
  *(&v218 + 1) = &type metadata for String;
  *&v219 = v129;
  *(&v219 + 1) = &protocol witness table for String;
  v138 = swift_getOpaqueTypeConformance2();
  v139 = v167;
  v140 = v169;
  v141 = v190;
  View.onAppear(perform:)();

  (*(v175 + 8))(v141, v140);
  v189(v137, v199, v133);
  v142 = swift_allocObject();
  v143 = v200;
  *(v142 + 16) = v201;
  *(v142 + 32) = v143;
  v194(v142 + v134, v137, v133);
  v213 = v138;
  v214 = &protocol witness table for _AppearanceActionModifier;
  v144 = v176;
  v145 = swift_getWitnessTable();
  v146 = v172;
  View.onDisappear(perform:)();

  (*(v179 + 8))(v139, v144);
  v211 = v145;
  v212 = &protocol witness table for _AppearanceActionModifier;
  v147 = v177;
  v148 = swift_getWitnessTable();
  v149 = v173;
  View.accessibilityIdentifier(_:)();
  (*(v180 + 8))(v146, v147);
  v150 = sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v209 = v148;
  v210 = v150;
  v151 = v181;
  swift_getWitnessTable();
  v152 = v178;
  sub_100157EFC();
  v153 = *(v182 + 8);
  v153(v149, v151);
  sub_100157EFC();
  return (v153)(v152, v151);
}

uint64_t sub_10003A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v205 = a1;
  v199 = a6;
  v211 = a2;
  v212 = a3;
  v201 = a2;
  v213 = a4;
  v214 = a5;
  v203 = a4;
  v204 = a5;
  v188 = type metadata accessor for VenueEventView(0, &v211);
  v198 = *(v188 - 8);
  v196 = *(v198 + 64);
  __chkstk_darwin(v188);
  v197 = &v130 - v9;
  v195 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScrollIndicatorVisibility();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v186 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for ScrollDismissesKeyboardMode();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v187 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for ContentMarginPlacement();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for PlainListStyle();
  v182 = *(v200 - 8);
  __chkstk_darwin(v200);
  v181 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader(255, a2, a4, v15);
  v16 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v221 = &protocol witness table for EmptyView;
  v222 = WitnessTable;
  v223 = &protocol witness table for EmptyView;
  v18 = swift_getWitnessTable();
  v211 = v16;
  v212 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v179 = type metadata accessor for ModifiedContent();
  v178 = sub_10000B3DC(&qword_10021A318, &qword_1001AF8F8);
  v177 = sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
  v19 = type metadata accessor for Array();
  v180 = v19;
  v202 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  v22 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v211 = v19;
  v212 = AssociatedTypeWitness;
  v213 = v21;
  v214 = v22;
  v215 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v24 = type metadata accessor for Section();
  v220 = sub_10004248C();
  v25 = swift_getWitnessTable();
  v217 = &protocol witness table for EmptyView;
  v218 = v25;
  v219 = &protocol witness table for EmptyView;
  v26 = swift_getWitnessTable();
  v211 = v24;
  v212 = v26;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v27 = type metadata accessor for TupleView();
  v145 = v27;
  v144 = swift_getWitnessTable();
  v211 = &type metadata for Never;
  v212 = v27;
  v213 = &protocol witness table for Never;
  v214 = v144;
  v28 = type metadata accessor for List();
  v147 = *(v28 - 8);
  __chkstk_darwin(v28);
  v141 = &v130 - v29;
  v30 = swift_getWitnessTable();
  v31 = v200;
  v211 = v28;
  v212 = v200;
  v213 = v30;
  v214 = &protocol witness table for PlainListStyle;
  v32 = v30;
  v137 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v136 = &v130 - v34;
  v211 = v28;
  v212 = v31;
  v213 = v32;
  v214 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v211 = OpaqueTypeMetadata2;
  v212 = OpaqueTypeConformance2;
  v36 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeMetadata2;
  v37 = OpaqueTypeConformance2;
  v133 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeMetadata2();
  v149 = *(v38 - 8);
  __chkstk_darwin(v38);
  v131 = &v130 - v39;
  v211 = v36;
  v212 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v138 = v38;
  v211 = v38;
  v212 = v40;
  v41 = v40;
  v139 = v40;
  v42 = swift_getOpaqueTypeMetadata2();
  v142 = *(v42 - 8);
  __chkstk_darwin(v42);
  v140 = &v130 - v43;
  v211 = v38;
  v212 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v211 = v42;
  v212 = v44;
  v45 = v42;
  v134 = v42;
  v46 = v44;
  v135 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v176 = *(v47 - 8);
  __chkstk_darwin(v47);
  v130 = &v130 - v48;
  v211 = v45;
  v212 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v211 = v47;
  v212 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v169 = *(v50 - 8);
  __chkstk_darwin(v50);
  v166 = &v130 - v51;
  v178 = v47;
  v211 = v47;
  v212 = v49;
  v163 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v211 = v50;
  v212 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v171 = *(v53 - 8);
  __chkstk_darwin(v53);
  v168 = &v130 - v54;
  v173 = v50;
  v211 = v50;
  v212 = v52;
  v158 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_100027068();
  v211 = v53;
  v212 = &type metadata for String;
  v213 = v55;
  v214 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v177 = *(v57 - 8);
  __chkstk_darwin(v57);
  v172 = &v130 - v58;
  v175 = v53;
  v211 = v53;
  v212 = &type metadata for String;
  v160 = v55;
  v213 = v55;
  v214 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v211 = v57;
  v212 = &type metadata for Bool;
  v213 = v59;
  v214 = &protocol witness table for Bool;
  v60 = swift_getOpaqueTypeMetadata2();
  v170 = *(v60 - 8);
  __chkstk_darwin(v60);
  v167 = &v130 - v61;
  v62 = sub_10000B3DC(&qword_10021A348, &qword_1001AF918);
  v179 = v57;
  v211 = v57;
  v212 = &type metadata for Bool;
  v165 = v59;
  v213 = v59;
  v214 = &protocol witness table for Bool;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_10000B3DC(&qword_10021A350, &qword_1001AF920);
  v65 = sub_100042650();
  v211 = v64;
  v212 = v65;
  v66 = swift_getOpaqueTypeConformance2();
  v211 = v60;
  v212 = v62;
  v213 = v63;
  v214 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v161 = *(v67 - 8);
  __chkstk_darwin(v67);
  v156 = &v130 - v68;
  v174 = v60;
  v211 = v60;
  v212 = v62;
  v162 = v62;
  v157 = v63;
  v213 = v63;
  v214 = v66;
  v153 = v66;
  v69 = swift_getOpaqueTypeConformance2();
  v211 = v67;
  v212 = &type metadata for String;
  v213 = v69;
  v214 = v56;
  v70 = swift_getOpaqueTypeMetadata2();
  v211 = v67;
  v212 = &type metadata for String;
  v213 = v69;
  v214 = v56;
  v159 = v56;
  v71 = swift_getOpaqueTypeConformance2();
  v164 = v67;
  v211 = v67;
  v212 = &type metadata for Solarium;
  v146 = v70;
  v213 = v70;
  v214 = v69;
  v155 = v69;
  v215 = &protocol witness table for Solarium;
  v216 = v71;
  v151 = v71;
  v154 = swift_getOpaqueTypeMetadata2();
  v152 = *(v154 - 8);
  v72 = __chkstk_darwin(v154);
  v148 = &v130 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v150 = &v130 - v74;
  v206 = v201;
  v207 = v202;
  v208 = v203;
  v209 = v204;
  v210 = v205;
  v75 = v141;
  List<>.init(content:)();
  v76 = v181;
  PlainListStyle.init()();
  v77 = v136;
  v78 = v200;
  View.listStyle<A>(_:)();
  (*(v182 + 8))(v76, v78);
  (*(v147 + 8))(v75, v28);
  static Edge.Set.top.getter();
  v79 = v183;
  static ContentMarginPlacement.automatic.getter();
  v80 = v131;
  v81 = v132;
  View.contentMargins(_:_:for:)();
  (*(v184 + 8))(v79, v185);
  (*(v143 + 8))(v77, v81);
  v82 = v188;
  v83 = v130;
  sub_1000392E0(v188);
  v84 = sub_100031940();

  v211 = v84;
  swift_checkMetadataState();
  swift_getWitnessTable();
  v85 = v186;
  Collection.isEmpty.getter();

  v86 = v140;
  v87 = v138;
  View.scrollDisabled(_:)();
  (*(v149 + 8))(v80, v87);
  v88 = v187;
  static ScrollDismissesKeyboardMode.immediately.getter();
  v89 = v134;
  View.scrollDismissesKeyboard(_:)();
  (*(v189 + 8))(v88, v190);
  (*(v142 + 8))(v86, v89);
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v80) = static Axis.Set.vertical.getter();
  *(inited + 32) = v80;
  v91 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v91;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v91)
  {
    Axis.Set.init(rawValue:)();
  }

  v92 = v166;
  v93 = v178;
  View.scrollIndicators(_:axes:)();
  (*(v191 + 8))(v85, v192);
  (*(v176 + 8))(v83, v93);
  v94 = v194;
  v95 = v193;
  v96 = v195;
  (*(v194 + 104))(v193, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v195);
  v97 = v168;
  v98 = v173;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v94 + 8))(v95, v96);
  (*(v169 + 8))(v92, v98);
  v99 = v82;
  v100 = v205;
  sub_1000392E0(v82);
  v101 = sub_1000318B4();
  v103 = v102;

  v211 = v101;
  v212 = v103;
  v104 = v172;
  v105 = v175;
  View.navigationTitle<A>(_:)();

  (*(v171 + 8))(v97, v105);
  v106 = v198;
  v107 = v197;
  (*(v198 + 16))(v197, v100, v82);
  v108 = (*(v106 + 80) + 48) & ~*(v106 + 80);
  v109 = swift_allocObject();
  v110 = v201;
  v111 = v202;
  *(v109 + 2) = v201;
  *(v109 + 3) = v111;
  v112 = v203;
  v113 = v204;
  *(v109 + 4) = v203;
  *(v109 + 5) = v113;
  (*(v106 + 32))(&v109[v108], v107, v99);
  v129 = &protocol witness table for Bool;
  v114 = v167;
  v115 = v179;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v116 = (*(v177 + 8))(v104, v115);
  __chkstk_darwin(v116);
  *(&v130 - 6) = v110;
  *(&v130 - 5) = v111;
  *(&v130 - 4) = v112;
  *(&v130 - 3) = v113;
  v129 = v205;
  v117 = v156;
  v118 = v174;
  View.toolbar<A>(content:)();
  (*(v170 + 8))(v114, v118);
  v119 = Solarium.init()();
  __chkstk_darwin(v119);
  *(&v130 - 6) = v110;
  *(&v130 - 5) = v111;
  *(&v130 - 4) = v112;
  *(&v130 - 3) = v113;
  v120 = swift_checkMetadataState();
  v121 = v151;
  v129 = v151;
  v122 = v148;
  v123 = v164;
  v124 = v155;
  View.staticIf<A, B>(_:then:)();
  (*(v161 + 8))(v117, v123);
  v211 = v123;
  v212 = &type metadata for Solarium;
  v213 = v120;
  v214 = v124;
  v215 = &protocol witness table for Solarium;
  v216 = v121;
  swift_getOpaqueTypeConformance2();
  v125 = v150;
  v126 = v154;
  sub_100157EFC();
  v127 = *(v152 + 8);
  v127(v122, v126);
  sub_100157EFC();
  return (v127)(v125, v126);
}

uint64_t sub_10003C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v141 = a5;
  v123 = a4;
  v124 = a1;
  v139 = a2;
  v137 = a6;
  v7 = sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
  v128 = type metadata accessor for Array();
  v140 = a3;
  swift_getAssociatedTypeWitness();
  *&v177 = sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  *(&v177 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ForEach();
  v9 = type metadata accessor for Section();
  v175 = sub_10004248C();
  v116 = v8;
  v172 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v113 = WitnessTable;
  v174 = &protocol witness table for EmptyView;
  *&v176 = v9;
  *(&v176 + 1) = swift_getWitnessTable();
  v115 = *(&v176 + 1);
  v127 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v120 = *(v12 - 8);
  __chkstk_darwin(v12);
  v119 = &v101 - v13;
  v109 = swift_checkMetadataState();
  v107 = *(v109 - 8);
  v14 = __chkstk_darwin(v109);
  v106 = &v101 - v15;
  v117 = OpaqueTypeMetadata2;
  v110 = *(OpaqueTypeMetadata2 - 8);
  v16 = __chkstk_darwin(v14);
  v108 = &v101 - v17;
  v121 = v11;
  v112 = *(v11 - 8);
  v18 = __chkstk_darwin(v16);
  v114 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v131 = &v101 - v21;
  v122 = v7;
  v118 = *(v7 - 8);
  v22 = __chkstk_darwin(v20);
  v111 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v101 - v24;
  v25 = sub_100009F70(&qword_10021A490, &qword_1001AFB48);
  v103 = *(v25 - 8);
  v104 = v25;
  __chkstk_darwin(v25);
  v102 = &v101 - v26;
  v27 = sub_100009F70(&qword_10021A318, &qword_1001AF8F8);
  __chkstk_darwin(v27);
  v105 = &v101 - v28;
  v132 = v29;
  v136 = v12;
  v30 = type metadata accessor for _ConditionalContent();
  v134 = *(v30 - 8);
  v135 = v30;
  v31 = __chkstk_darwin(v30);
  v133 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v144 = &v101 - v33;
  v34 = v139;
  v35 = v123;
  v126 = type metadata accessor for VenueEventListHeader(255, v139, v123, v36);
  v37 = type metadata accessor for Section();
  v130 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v101 - v38;
  v40 = swift_getWitnessTable();
  v169 = &protocol witness table for EmptyView;
  v170 = v40;
  v171 = &protocol witness table for EmptyView;
  v125 = swift_getWitnessTable();
  *&v176 = v37;
  *(&v176 + 1) = v125;
  v41 = swift_getOpaqueTypeMetadata2();
  v129 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v101 - v42;
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v44 = type metadata accessor for ModifiedContent();
  v142 = *(v44 - 8);
  v45 = __chkstk_darwin(v44);
  v47 = (&v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v143 = &v101 - v48;
  v150 = v34;
  v151 = v140;
  v49 = v35;
  v152 = v35;
  v153 = v141;
  v50 = v124;
  v154 = v124;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v51 = v125;
  View.listSectionSeparator(_:edges:)();
  (*(v130 + 8))(v39, v37);
  v176 = xmmword_1001AF860;
  v177 = xmmword_1001AF870;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v163 = v37;
  v164 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listRowInsets(_:)();
  v129[1](v43, v41);
  v53 = sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v167 = OpaqueTypeConformance2;
  v168 = v53;
  v125 = swift_getWitnessTable();
  sub_100157EFC();
  v54 = *(v142 + 8);
  v129 = v47;
  v130 = v44;
  v126 = v54;
  v127 = (v142 + 8);
  v54(v47, v44);
  v55 = v139;
  v56 = v140;
  v163 = v139;
  v164 = v140;
  v57 = v141;
  v165 = v49;
  v166 = v141;
  v58 = type metadata accessor for VenueEventView(0, &v163);
  sub_1000392E0(v58);
  v59 = sub_100031940();

  v163 = v59;
  swift_checkMetadataState();
  swift_getWitnessTable();
  LOBYTE(v39) = Collection.isEmpty.getter();

  v145 = v55;
  v146 = v56;
  v147 = v49;
  v148 = v57;
  v149 = v50;
  if (v39)
  {
    sub_100009F70(&qword_10021A4E0, &qword_1001AFB60);
    sub_100043328(&qword_10021A4D8, &qword_10021A4E0, &qword_1001AFB60, sub_10002DB5C);
    v60 = v102;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_10004365C();
    v61 = v104;
    v62 = v105;
    View.listSectionSeparator(_:edges:)();
    (*(v103 + 8))(v60, v61);
    v63 = v132;
    v64 = v62 + *(v132 + 36);
    *v64 = 0x4049000000000000;
    v65 = sub_100043568();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    *(v64 + 8) = 0;
    *(v64 + 32) = 0;
    v66 = v136;
    v67 = swift_getWitnessTable();
    sub_100061878(v62, v63, v66, v65, v67);
    sub_10000D52C(v62, &qword_10021A318, &qword_1001AF8F8);
  }

  else
  {
    sub_100009F70(&qword_10021A4A0, &qword_1001AFB50);
    sub_100043328(&qword_10021A4A8, &qword_10021A4A0, &qword_1001AFB50, sub_1000433DC);
    v68 = Section<>.init(content:)();
    __chkstk_darwin(v68);
    *(&v101 - 6) = v55;
    *(&v101 - 5) = v56;
    *(&v101 - 4) = v49;
    *(&v101 - 3) = v57;
    *(&v101 - 2) = v50;
    swift_checkMetadataState();
    v69 = v106;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v71 = v108;
    v70 = v109;
    v72 = v115;
    View.listSectionSeparator(_:edges:)();
    (*(v107 + 8))(v69, v70);
    static Edge.Set.top.getter();
    v163 = v70;
    v164 = v72;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v114;
    v75 = v117;
    View.padding(_:_:)();
    (*(v110 + 8))(v71, v75);
    v161 = v73;
    v162 = &protocol witness table for _PaddingLayout;
    v76 = v121;
    v77 = swift_getWitnessTable();
    v78 = v131;
    sub_100157EFC();
    v79 = v112;
    v141 = *(v112 + 8);
    v141(v74, v76);
    v80 = v118;
    v81 = v111;
    v82 = v122;
    (*(v118 + 16))(v111, v138, v122);
    v163 = v81;
    (*(v79 + 16))(v74, v78, v76);
    v164 = v74;
    v159 = v82;
    v160 = v76;
    v157 = sub_1000434AC();
    v158 = v77;
    v83 = v119;
    sub_100151024(&v163, 2uLL, &v159);
    v84 = v141;
    v141(v74, v76);
    v85 = *(v80 + 8);
    v85(v81, v82);
    v86 = sub_100043568();
    v87 = v136;
    v88 = swift_getWitnessTable();
    sub_100061970(v83, v132, v87, v86, v88);
    (*(v120 + 8))(v83, v87);
    v84(v131, v76);
    v85(v138, v82);
  }

  v89 = v143;
  v91 = v129;
  v90 = v130;
  (*(v142 + 16))(v129, v143, v130);
  v163 = v91;
  v93 = v133;
  v92 = v134;
  v94 = v144;
  v95 = v135;
  (*(v134 + 16))(v133, v144, v135);
  v164 = v93;
  v159 = v90;
  v160 = v95;
  v157 = v125;
  v96 = sub_100043568();
  v97 = swift_getWitnessTable();
  v155 = v96;
  v156 = v97;
  v158 = swift_getWitnessTable();
  sub_100151024(&v163, 2uLL, &v159);
  v98 = *(v92 + 8);
  v98(v94, v95);
  v99 = v126;
  v126(v89, v90);
  v98(v93, v95);
  return v99(v91, v90);
}

uint64_t sub_10003D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a6;
  v10 = *(a2 - 8);
  __chkstk_darwin(a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VenueEventListHeader(0, v13, v14, v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v26 - v20;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v22 = type metadata accessor for VenueEventView(0, v27);
  v23 = sub_1000392E0(v22);
  (*(v10 + 16))(v12, v23 + *(*v23 + 168), a2);

  sub_100186D70(v12, a2, v19, a4);
  swift_getWitnessTable();
  sub_100157EFC();
  v24 = *(v16 + 8);
  v24(v19, v15);
  sub_100157EFC();
  return (v24)(v21, v15);
}

uint64_t sub_10003D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v5 = type metadata accessor for VenueEventView(0, &v28);
  sub_1000392E0(v5);

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.Weight.semibold.getter();
  v11 = Text.fontWeight(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_10000D60C(v6, v8, v10 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v15 & 1;
  *&v19 = v11;
  *(&v19 + 1) = v13;
  LOBYTE(v20) = v15 & 1;
  *(&v20 + 1) = v17;
  sub_100009F70(&qword_100219DC0, &unk_1001AEE58);
  sub_10002DB5C();
  View.accessibilityIdentifier(_:)();
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  return sub_10000D52C(&v28, &qword_100219DC0, &unk_1001AEE58);
}

uint64_t sub_10003D720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v5 = type metadata accessor for VenueEventView(0, &v21);
  sub_1000392E0(v5);

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000D60C(v6, v8, v10 & 1);

  v18 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v21 = v11;
  v22 = v13;
  LOBYTE(v23) = v15 & 1;
  v24 = v17;
  v25 = KeyPath;
  v26 = v18;
  sub_100009F70(&qword_10021A4B8, &qword_1001AFB58);
  sub_1000433DC();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v11, v13, v15 & 1);
}

uint64_t sub_10003D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a4;
  v37 = a1;
  v38 = a5;
  v42 = a6;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v8 = type metadata accessor for VenueEventView(0, &v44);
  v9 = *(v8 - 8);
  v39 = *(v9 + 64);
  __chkstk_darwin(v8);
  v35 = v34 - v10;
  v11 = type metadata accessor for Array();
  v34[4] = v11;
  v34[0] = *(*(a5 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34[3] = AssociatedTypeWitness;
  v13 = sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  v34[2] = v13;
  WitnessTable = swift_getWitnessTable();
  v34[1] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v11;
  v45 = AssociatedTypeWitness;
  v46 = v13;
  v47 = WitnessTable;
  v48 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ForEach();
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v34 - v20;
  v22 = v8;
  v23 = v8;
  v24 = v37;
  sub_1000392E0(v23);
  v25 = sub_100031940();

  v44 = v25;
  v26 = v35;
  (*(v9 + 16))(v35, v24, v22);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = swift_allocObject();
  v29 = v41;
  *(v28 + 2) = v40;
  *(v28 + 3) = a3;
  v30 = v38;
  *(v28 + 4) = v29;
  *(v28 + 5) = v30;
  (*(v9 + 32))(&v28[v27], v26, v22);
  v31 = sub_10004248C();
  ForEach<>.init(_:content:)();
  v43 = v31;
  swift_getWitnessTable();
  sub_100157EFC();
  v32 = *(v36 + 8);
  v32(v19, v16);
  sub_100157EFC();
  return (v32)(v21, v16);
}

uint64_t sub_10003DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a6;
  v60 = a5;
  v59 = a3;
  v56 = a2;
  v70 = a7;
  v13 = type metadata accessor for PlainButtonStyle();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  v80 = a4;
  v81 = a5;
  v82 = a6;
  v19 = type metadata accessor for VenueEventView(0, &v79);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v53 - v22;
  v54 = &v53 - v22;
  v63 = sub_100009F70(&qword_10021A338, &qword_1001AF910);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v24;
  v25 = sub_100009F70(&qword_10021A4E8, &qword_1001AFB68);
  v26 = *(v25 - 8);
  v66 = v25;
  v67 = v26;
  __chkstk_darwin(v25);
  v62 = &v53 - v27;
  v28 = *(v20 + 16);
  v29 = v23;
  v30 = v19;
  v57 = v19;
  v28(v29, a2, v19);
  v53 = v17;
  v31 = a1;
  v32 = a4;
  (*(v17 + 16))(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v33 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v34 = (v21 + *(v17 + 80) + v33) & ~*(v17 + 80);
  v35 = swift_allocObject();
  v36 = v59;
  *(v35 + 2) = v59;
  *(v35 + 3) = v32;
  v37 = v60;
  v38 = v61;
  *(v35 + 4) = v60;
  *(v35 + 5) = v38;
  (*(v20 + 32))(&v35[v33], v54, v30);
  (*(v53 + 32))(&v35[v34], v55, v32);
  v71 = v36;
  v72 = v32;
  v73 = v37;
  v74 = v38;
  v75 = v31;
  v76 = v56;
  sub_100009F70(&qword_10021A4F0, &qword_1001AFB70);
  sub_100043C30();
  v39 = v58;
  Button.init(action:label:)();
  v40 = v65;
  PlainButtonStyle.init()();
  v41 = sub_10000D1EC(&qword_10021A340, &qword_10021A338, &qword_1001AF910, &protocol conformance descriptor for Button<A>);
  v42 = sub_100042608(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v43 = v62;
  v44 = v63;
  v45 = v68;
  View.buttonStyle<A>(_:)();
  v46 = v40;
  v47 = v45;
  (*(v69 + 8))(v46, v45);
  (*(v64 + 8))(v39, v44);
  sub_1000392E0(v57);
  v48 = sub_100030744(v31);
  v50 = v49;

  v77 = v48;
  v78 = v50;
  v79 = v44;
  v80 = v47;
  v81 = v41;
  v82 = v42;
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  v51 = v66;
  View.accessibilityLabel<A>(_:)();

  return (*(v67 + 8))(v43, v51);
}

uint64_t sub_10003E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v16 = type metadata accessor for VenueEventView(0, v20);
  sub_1000392E0(v16);
  v17 = *(a4 - 8);
  (*(v17 + 16))(v15, a2, a4);
  (*(v17 + 56))(v15, 0, 1, a4);
  sub_1000314C8(v15);
  (*(v13 + 8))(v15, v12);

  sub_1000392E0(v16);
  v18 = *(a1 + *(v16 + 56));
  if (v18)
  {

    sub_100030CD0(10, 13, 0, 3u, v18);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10003E4F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a3;
  v63 = a5;
  v64 = a2;
  v65 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedTypeWitness;
  v61 = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v55 = &v44 - v11;
  v57 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 8);
  v15 = swift_getAssociatedTypeWitness();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = swift_checkMetadataState();
  v67 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v50 = a6;
  v52 = *(a6 + 88);
  v49 = a1;
  v52(a4, a6);
  v23 = sub_1001A699C(v18, AssociatedConformanceWitness);
  v59 = v24;
  v60 = v23;
  v25 = *(v67 + 8);
  v67 += 8;
  v51 = v25;
  v25(v22, v18);
  (*(v14 + 168))(a4, v14);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v26 = v55;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = sub_1000FB998(v13, v15, v27);
  v58 = v29;
  (*(v56 + 8))(v13, v57);
  (*(v53 + 8))(v17, v15);
  v31 = v62;
  v30 = v63;
  *&v68 = v62;
  *(&v68 + 1) = a4;
  v32 = v50;
  *&v69 = v63;
  *(&v69 + 1) = v50;
  v33 = type metadata accessor for VenueEventView(0, &v68);
  sub_1000392E0(v33);
  v34 = sub_1000319C8(v49, v31, a4, v30, v32);

  v35 = v54;
  v52(a4, v32);
  sub_1001A6B08(v18, AssociatedConformanceWitness, v26);
  v36 = v61;
  v51(v35, v18);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v26, 1, v36) == 1)
  {
    (*(v45 + 8))(v26, v46);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    *(&v69 + 1) = v36;
    v70 = swift_getAssociatedConformanceWitness();
    v38 = sub_100043D3C(&v68);
    (*(v37 + 32))(v38, v26, v36);
  }

  *&v71[23] = v69;
  *&v71[7] = v68;
  v39 = *&v71[16];
  v40 = v65;
  *(v65 + 33) = *v71;
  *&v71[39] = v70;
  v41 = v59;
  *v40 = v60;
  *(v40 + 8) = v41;
  v42 = v58;
  *(v40 + 16) = v28;
  *(v40 + 24) = v42;
  *(v40 + 32) = v34 & 1;
  *(v40 + 49) = v39;
  result = *&v71[31];
  *(v40 + 64) = *&v71[31];
  *(v40 + 80) = 0;
  return result;
}

uint64_t sub_10003EB4C@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 > 0.0;
  return result;
}

uint64_t sub_10003EB80(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v8 = type metadata accessor for VenueEventView(0, v10);
  sub_1000392E0(v8);
  sub_1000306B8(v7);
}

uint64_t sub_10003EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a1;
  v141 = a6;
  v134 = sub_100009F70(&qword_10021A398, &qword_1001AFA48);
  __chkstk_darwin(v134);
  v133 = &v105 - v10;
  v140 = sub_100009F70(&qword_10021A378, &qword_1001AF930);
  v136 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v105 - v11;
  v131 = sub_100009F70(&qword_10021A3A0, &qword_1001AFA50);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v105 - v12;
  v130 = sub_100009F70(&qword_10021A3A8, &qword_1001AFA58);
  v120 = *(v130 - 8);
  __chkstk_darwin(v130);
  v119 = &v105 - v13;
  v14 = sub_100009F70(&qword_10021A3B0, &qword_1001AFA60);
  v15 = __chkstk_darwin(v14 - 8);
  v128 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v105 - v17;
  v127 = sub_100009F70(&qword_10021A3B8, &qword_1001AFA68);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v19 = &v105 - v18;
  v126 = sub_100009F70(&qword_10021A3C0, &qword_1001AFA70);
  v108 = *(v126 - 8);
  __chkstk_darwin(v126);
  v107 = &v105 - v20;
  v21 = sub_100009F70(&qword_10021A3C8, &qword_1001AFA78);
  v22 = __chkstk_darwin(v21 - 8);
  v124 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v148 = (&v105 - v24);
  v123 = sub_100009F70(&qword_10021A3D0, &qword_1001AFA80);
  v25 = *(v123 - 8);
  __chkstk_darwin(v123);
  v117 = &v105 - v26;
  v122 = sub_100009F70(&qword_10021A3D8, &qword_1001AFA88);
  v116 = *(v122 - 8);
  __chkstk_darwin(v122);
  v115 = &v105 - v27;
  v28 = sub_100009F70(&qword_10021A3E0, &qword_1001AFA90);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v147 = &v105 - v32;
  v112 = sub_100009F70(&qword_10021A3E8, &qword_1001AFA98);
  __chkstk_darwin(v112);
  v109 = &v105 - v33;
  v139 = sub_100009F70(&qword_10021A368, &qword_1001AF928);
  v114 = *(v139 - 8);
  __chkstk_darwin(v139);
  v113 = &v105 - v34;
  v111 = sub_100009F70(&qword_10021A3F0, &unk_1001B2A70);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v36 = &v105 - v35;
  v37 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v37 - 8);
  v143 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100009F70(&qword_10021A3F8, &qword_1001AFAA0);
  v39 = *(v118 - 8);
  __chkstk_darwin(v118);
  v41 = &v105 - v40;
  v138 = sub_100009F70(&qword_10021A350, &qword_1001AF920);
  __chkstk_darwin(v138);
  v137 = &v105 - v42;
  v144 = a2;
  v145 = a3;
  v150 = a2;
  v151 = a3;
  v146 = a4;
  v152 = a4;
  v153 = a5;
  v142 = type metadata accessor for VenueEventView(0, &v150);
  sub_1000392E0(v142);
  LOBYTE(a3) = sub_10002EEAC();

  if ((a3 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v60 = static ToolbarItemPlacement.principal.getter();
    v148 = &v105;
    __chkstk_darwin(v60);
    v62 = v144;
    v61 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v61;
    v63 = v146;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = a5;
    v64 = v149;
    *(&v105 - 2) = v149;
    sub_10004304C();
    ToolbarItem<>.init(placement:content:)();
    v65 = static ToolbarItemPlacement.topBarTrailing.getter();
    v148 = &v105;
    __chkstk_darwin(v65);
    *(&v105 - 6) = v62;
    *(&v105 - 5) = v61;
    *(&v105 - 4) = v63;
    *(&v105 - 3) = a5;
    *(&v105 - 2) = v64;
    sub_100009F70(&qword_100218930, &qword_1001B7CF0);
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    ToolbarItem<>.init(placement:content:)();
    v66 = *(v112 + 48);
    v67 = v109;
    (*(v39 + 16))(v109, v41, v118);
    v68 = v110;
    v69 = v111;
    (*(v110 + 16))(&v67[v66], v36, v111);
    v70 = v113;
    TupleToolbarContent.init(_:)();
    sub_10000D1EC(&qword_10021A360, &qword_10021A368, &qword_1001AF928, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_10000D1EC(&qword_10021A370, &qword_10021A378, &qword_1001AF930, &protocol conformance descriptor for TupleToolbarContent<A>);
    v71 = v137;
    v72 = v139;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    (*(v114 + 8))(v70, v72);
    (*(v68 + 8))(v36, v69);
    (*(v39 + 8))(v41, v118);
LABEL_19:
    sub_100042650();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_10000D52C(v71, &qword_10021A350, &qword_1001AF920);
  }

  v118 = v19;
  v43 = v142;
  v44 = v149;
  sub_1000392E0(v142);
  v45 = sub_100031F5C();

  if (v45)
  {
    v46 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v46);
    v47 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v47;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = a5;
    v106 = a5;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A440, &qword_1001AFAB8);
    v43 = v142;
    sub_100043328(&qword_10021A448, &qword_10021A440, &qword_1001AFAB8, sub_100042E48);
    v48 = v115;
    v44 = v149;
    ToolbarItem<>.init(placement:content:)();
    v49 = sub_10000D1EC(&qword_10021A400, &qword_10021A3D8, &qword_1001AFA88, &protocol conformance descriptor for ToolbarItem<A, B>);
    v50 = v117;
    v51 = v122;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v52 = v123;
    (*(v25 + 16))(v31, v50, v123);
    (*(v25 + 56))(v31, 0, 1, v52);
    v150 = v51;
    v151 = v49;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v31, &qword_10021A3E0, &qword_1001AFA90);
    (*(v25 + 8))(v50, v52);
    v53 = v48;
    v54 = v106;
    (*(v116 + 8))(v53, v51);
    v55 = v132;
  }

  else
  {
    (*(v25 + 56))(v31, 1, 1, v123);
    v56 = sub_10000D1EC(&qword_10021A400, &qword_10021A3D8, &qword_1001AFA88, &protocol conformance descriptor for ToolbarItem<A, B>);
    v150 = v122;
    v151 = v56;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v31, &qword_10021A3E0, &qword_1001AFA90);
    v55 = v132;
    v54 = a5;
  }

  sub_1000392E0(v43);
  v57 = sub_100030028();

  if ((v57 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v73 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v73);
    v74 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v74;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = v54;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A430, &qword_1001AFAB0);
    sub_100043328(&qword_10021A438, &qword_10021A430, &qword_1001AFAB0, sub_100042D0C);
    v75 = v107;
    v44 = v149;
    ToolbarItem<>.init(placement:content:)();
    v76 = sub_10000D1EC(&qword_10021A408, &qword_10021A3C0, &qword_1001AFA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    v77 = v118;
    v78 = v126;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v79 = v125;
    v80 = v124;
    v81 = v127;
    (*(v125 + 16))(v124, v77, v127);
    (*(v79 + 56))(v80, 0, 1, v81);
    v150 = v78;
    v151 = v76;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v80, &qword_10021A3C8, &qword_1001AFA78);
    (*(v79 + 8))(v77, v81);
    v82 = v78;
    v43 = v142;
    (*(v108 + 8))(v75, v82);
  }

  else
  {
    v58 = v124;
    (*(v125 + 56))(v124, 1, 1, v127);
    v59 = sub_10000D1EC(&qword_10021A408, &qword_10021A3C0, &qword_1001AFA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    v150 = v126;
    v151 = v59;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v58, &qword_10021A3C8, &qword_1001AFA78);
  }

  v83 = *(v44 + *(v43 + 56));
  if (v83)
  {
    if (*(v83 + 88) && (*(v83 + 80) & 1) != 0)
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {
        v85 = v128;
        (*(v129 + 56))(v128, 1, 1, v131);
        v86 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8, &qword_1001AFA58, &protocol conformance descriptor for ToolbarItem<A, B>);
        v150 = v130;
        v151 = v86;
        swift_getOpaqueTypeConformance2();
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_10000D52C(v85, &qword_10021A3B0, &qword_1001AFA60);
LABEL_18:
        v96 = v133;
        v97 = *(v134 + 48);
        v98 = *(v134 + 64);
        v99 = v147;
        sub_10000D58C(v147, v133, &qword_10021A3E0, &qword_1001AFA90);
        v100 = v148;
        sub_10000D58C(v148, v96 + v97, &qword_10021A3C8, &qword_1001AFA78);
        sub_10000D58C(v55, v96 + v98, &qword_10021A3B0, &qword_1001AFA60);
        v101 = v55;
        v102 = v135;
        TupleToolbarContent.init(_:)();
        sub_10000D1EC(&qword_10021A360, &qword_10021A368, &qword_1001AF928, &protocol conformance descriptor for TupleToolbarContent<A>);
        sub_10000D1EC(&qword_10021A370, &qword_10021A378, &qword_1001AF930, &protocol conformance descriptor for TupleToolbarContent<A>);
        v71 = v137;
        v103 = v140;
        static ToolbarContentBuilder.buildEither<A, B>(second:)();
        (*(v136 + 8))(v102, v103);
        sub_10000D52C(v101, &qword_10021A3B0, &qword_1001AFA60);
        sub_10000D52C(v100, &qword_10021A3C8, &qword_1001AFA78);
        sub_10000D52C(v99, &qword_10021A3E0, &qword_1001AFA90);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v87 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v87);
    v88 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v88;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = v54;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A418, &qword_1001AFAA8);
    sub_100042D0C();
    v89 = v119;
    ToolbarItem<>.init(placement:content:)();
    v90 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8, &qword_1001AFA58, &protocol conformance descriptor for ToolbarItem<A, B>);
    v91 = v121;
    v92 = v130;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v93 = v129;
    v94 = v128;
    v95 = v131;
    (*(v129 + 16))(v128, v91, v131);
    (*(v93 + 56))(v94, 0, 1, v95);
    v150 = v92;
    v151 = v90;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v94, &qword_10021A3B0, &qword_1001AFA60);
    (*(v93 + 8))(v91, v95);
    (*(v120 + 8))(v89, v92);
    goto LABEL_18;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100040220@<Q0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22.n128_u64[0] = a1;
  v22.n128_u64[1] = a2;
  v23 = a3;
  v24 = a4;
  v15 = type metadata accessor for VenueEventView(0, &v22);
  sub_10003933C(v15);
  swift_getKeyPath();
  v22.n128_u64[0] = a1;
  v22.n128_u64[1] = a2;
  v23 = a3;
  v24 = a4;
  type metadata accessor for VenueEventViewModel(255, &v22);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v18 = v22;
  v16 = v24;
  v17 = v23;

  sub_10003933C(v15);
  swift_getKeyPath();
  Binding.subscript.getter();

  v10 = sub_1000392E0(v15);
  v11 = (v10 + *(*v10 + 208));
  v13 = *v11;
  v12 = v11[1];

  result = v18;
  *a5 = v18;
  *(a5 + 16) = v17;
  *(a5 + 24) = v16;
  *(a5 + 32) = v19;
  *(a5 + 40) = v20;
  *(a5 + 48) = v21;
  *(a5 + 49) = v22.n128_u32[0];
  *(a5 + 52) = *(v22.n128_u32 + 3);
  *(a5 + 56) = v13;
  *(a5 + 64) = v12;
  return result;
}

uint64_t sub_10004041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v9 = type metadata accessor for VenueEventView(0, v25);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - v12;
  v14 = sub_1000392E0(v11);
  v15 = v14 + *(*v14 + 192);
  v21 = *v15;
  v20[3] = *(v15 + 16);

  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v23;
  *(v17 + 4) = v22;
  *(v17 + 5) = v18;
  (*(v10 + 32))(&v17[v16], v13, v9);
  return Button<>.init(_:action:)();
}

uint64_t sub_1000405E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100009F70(&qword_10021A458, &qword_1001AFAC0);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_1000406F0(a1, a2, a3, a4, a5, &v14 - v11);
  sub_100042E48();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v12, &qword_10021A458, &qword_1001AFAC0);
}

uint64_t sub_1000406F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_100009F70(&qword_10021A478, &qword_1001AFAD0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v45 = sub_100009F70(&qword_10021A488, &qword_1001AFB10);
  __chkstk_darwin(v45);
  v16 = &v38 - v15;
  v41 = a2;
  v42 = a3;
  v46 = a2;
  v47 = a3;
  v43 = a4;
  v44 = a5;
  v48 = a4;
  v49 = a5;
  v17 = type metadata accessor for VenueEventView(0, &v46);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  if (static Solarium.isEnabled.getter())
  {
    (*(v18 + 16))(v20, a1, v17);
    v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v22 = swift_allocObject();
    v23 = v42;
    *(v22 + 2) = v41;
    *(v22 + 3) = v23;
    v24 = v44;
    *(v22 + 4) = v43;
    *(v22 + 5) = v24;
    (*(v18 + 32))(&v22[v21], v20, v17);
    *v16 = 2;
    *(v16 + 1) = sub_1000447C4;
    *(v16 + 2) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_100042F58();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v26 = sub_1000392E0(v17);
    v30 = sub_10003007C(v26, v27, v28, v29);
    v39 = v12;
    v40 = a6;
    v31 = v30;
    v33 = v32;

    v46 = v31;
    v47 = v33;
    (*(v18 + 16))(v20, a1, v17);
    v34 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v35 = swift_allocObject();
    v36 = v42;
    *(v35 + 2) = v41;
    *(v35 + 3) = v36;
    v37 = v44;
    *(v35 + 4) = v43;
    *(v35 + 5) = v37;
    (*(v18 + 32))(&v35[v34], v20, v17);
    sub_100027068();
    Button<>.init<A>(_:action:)();
    *&v14[*(v39 + 36)] = static Color.blue.getter();
    sub_1000430E8(v14, v16);
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_100042F58();
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v14, &qword_10021A478, &qword_1001AFAD0);
  }
}

uint64_t sub_100040A94(uint64_t a1)
{
  sub_1000392E0(a1);
  sub_1000305D0();

  sub_1000392E0(a1);
  v3 = *(v1 + *(a1 + 56));
  if (v3)
  {

    sub_100030CD0(0, 14, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100040B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v11 = type metadata accessor for VenueEventView(0, &v21);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v12 + 32))(&v16[v15], v14, v11);
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  LOWORD(v21) = 1;
  v22 = sub_1000431F4;
  v23 = v16;
  v24 = KeyPath;
  v25 = v17;
  sub_100009F70(&qword_10021A418, &qword_1001AFAA8);
  sub_100042D0C();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100040D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v9);
  sub_1000392E0(v6);
  sub_1000305C8();

  sub_1000392E0(v6);
  v7 = *(a1 + *(v6 + 56));
  if (v7)
  {

    sub_100030CD0(0, 0, 0, 3u, v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100040E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a1;
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  type metadata accessor for VenueEventView(0, v24);
  sub_100024868(v17);
  v18 = *(v12 + 32);
  v18(v15, v17, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v18((v20 + v19), v15, v11);
  v21 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a6 = 0;
  *(a6 + 8) = sub_10004329C;
  *(a6 + 16) = v20;
  *(a6 + 24) = result;
  *(a6 + 32) = v21;
  return result;
}

uint64_t sub_10004101C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a6;
  v86 = a5;
  v85 = a3;
  v87 = a2;
  v88 = a1;
  v91 = a7;
  v90 = type metadata accessor for SearchFieldPlacement();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader(255, a3, a5, v11);
  v12 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v111 = &protocol witness table for EmptyView;
  v112 = WitnessTable;
  v113 = &protocol witness table for EmptyView;
  v14 = swift_getWitnessTable();
  v106 = v12;
  v107 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v83 = type metadata accessor for ModifiedContent();
  v82 = sub_10000B3DC(&qword_10021A318, &qword_1001AF8F8);
  v81 = sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
  v15 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  v18 = swift_getWitnessTable();
  v19 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = v15;
  v107 = AssociatedTypeWitness;
  v108 = v17;
  v109 = v18;
  v110 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v21 = type metadata accessor for Section();
  v105 = sub_10004248C();
  v22 = swift_getWitnessTable();
  v102 = &protocol witness table for EmptyView;
  v103 = v22;
  v104 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v106 = v21;
  v107 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable();
  v106 = &type metadata for Never;
  v107 = v24;
  v108 = &protocol witness table for Never;
  v109 = v25;
  v26 = type metadata accessor for List();
  v27 = type metadata accessor for PlainListStyle();
  v28 = swift_getWitnessTable();
  v106 = v26;
  v107 = v27;
  v108 = v28;
  v109 = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = v26;
  v107 = v27;
  v108 = v28;
  v109 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = OpaqueTypeMetadata2;
  v107 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v106 = OpaqueTypeMetadata2;
  v107 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v106 = v31;
  v107 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v106 = v31;
  v107 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v106 = v33;
  v107 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v106 = v33;
  v107 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v106 = v35;
  v107 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v106 = v35;
  v107 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v106 = v37;
  v107 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v106 = v37;
  v107 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_100027068();
  v106 = v39;
  v107 = &type metadata for String;
  v108 = v40;
  v109 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v106 = v39;
  v107 = &type metadata for String;
  v108 = v40;
  v109 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v106 = v42;
  v107 = &type metadata for Bool;
  v108 = v43;
  v109 = &protocol witness table for Bool;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = sub_10000B3DC(&qword_10021A348, &qword_1001AF918);
  v106 = v42;
  v107 = &type metadata for Bool;
  v108 = v43;
  v109 = &protocol witness table for Bool;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_10000B3DC(&qword_10021A350, &qword_1001AF920);
  v48 = sub_100042650();
  v106 = v47;
  v107 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v106 = v44;
  v107 = v45;
  v108 = v46;
  v109 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v106 = v44;
  v107 = v45;
  v108 = v46;
  v109 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v77 = v50;
  v106 = v50;
  v107 = &type metadata for String;
  v80 = v51;
  v108 = v51;
  v109 = v41;
  v83 = v41;
  v82 = swift_getOpaqueTypeMetadata2();
  v81 = *(v82 - 8);
  v52 = __chkstk_darwin(v82);
  v78 = &v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v79 = &v77 - v54;
  v55 = v85;
  v106 = v85;
  v107 = v19;
  v56 = v19;
  v57 = v86;
  v58 = v84;
  v108 = v86;
  v109 = v84;
  v59 = type metadata accessor for VenueEventView(0, &v106);
  v60 = sub_10003933C(v59);
  v62 = v61;
  v64 = v63;
  v93 = v55;
  v94 = v56;
  v95 = v57;
  v96 = v58;
  swift_getKeyPath();
  v99 = v60;
  v100 = v62;
  v101 = v64;
  v106 = v55;
  v107 = v56;
  v108 = v57;
  v109 = v58;
  type metadata accessor for VenueEventViewModel(255, &v106);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v85 = v108;
  v86 = v109;

  sub_1000392E0(v59);
  LOBYTE(v60) = sub_100030028();

  if (v60)
  {
    static SearchFieldPlacement.automatic.getter();
  }

  else
  {
    static SearchFieldPlacement.never.getter();
  }

  v65 = sub_1000392E0(v59);
  v66 = (v65 + *(*v65 + 208));
  v67 = *v66;
  v68 = v66[1];

  v97 = v67;
  v98 = v68;
  v69 = swift_checkMetadataState();
  v70 = v83;
  v71 = v80;
  v72 = v78;
  View.searchable<A>(text:placement:prompt:)();

  (*(v89 + 8))(v92, v90);
  v106 = v69;
  v107 = &type metadata for String;
  v108 = v71;
  v109 = v70;
  swift_getOpaqueTypeConformance2();
  v73 = v79;
  v74 = v82;
  sub_100157EFC();
  v75 = *(v81 + 8);
  v75(v72, v74);
  sub_100157EFC();
  return (v75)(v73, v74);
}

uint64_t sub_100041B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v30 = a1;
  v31 = a4;
  v6 = type metadata accessor for Optional();
  v7 = __chkstk_darwin(v6 - 8);
  v29 = &v28 - v8;
  v9 = *(a2 - 8);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100042730();
  v13 = sub_100042784();
  v32 = a2;
  v33 = &type metadata for ArtistFetcher;
  v34 = &type metadata for PromotionalPlaylistFetcher;
  v35 = a3;
  v36 = v12;
  v37 = v13;
  v14 = type metadata accessor for MusicEventView(0, &v32);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v32 = a2;
  v33 = &type metadata for ArtistFetcher;
  v34 = &type metadata for PromotionalPlaylistFetcher;
  v35 = a3;
  v36 = v12;
  v37 = v13;
  type metadata accessor for MusicEventViewModel(0, &v32);
  (*(v9 + 16))(v11, v30, a2);
  v21 = v29;
  (*(v9 + 56))(v29, 1, 1, a2);
  v24 = sub_1000B1CDC(v11, v21, v22, v23);
  KeyPath = swift_getKeyPath();
  sub_100061A68(v24, KeyPath, 0, v18);
  swift_getWitnessTable();
  sub_100157EFC();
  v26 = *(v15 + 8);
  v26(v18, v14);
  sub_100157EFC();
  return v26(v20, v14);
}

uint64_t sub_100041E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v29 = a6;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v8 = type metadata accessor for VenueEventView(0, v30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v13 = type metadata accessor for FilterView(0, a3, a5, v12);
  v26 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  (*(v9 + 16))(v11, v25, v8);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = a3;
  *(v20 + 4) = v21;
  *(v20 + 5) = a5;
  (*(v9 + 32))(&v20[v19], v11, v8);
  sub_10010C59C(a3, a5, v16, sub_100042B30, v20);
  swift_getWitnessTable();
  sub_100157EFC();
  v22 = *(v26 + 8);
  v22(v16, v13);
  sub_100157EFC();
  return (v22)(v18, v13);
}